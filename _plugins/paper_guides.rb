# frozen_string_literal: true

# paper_guides.rb
#
# 「論文群ナビゲート記事(How to Read a Paper 型のガイド)」を自動生成する Jekyll プラグイン。
# paper_index.rb(著者一覧・引用グラフ)が作った生データ PaperIndex::RAW を使う。
# 記事側の編集は不要。_data/paper_groups.yml を読み、ビルドのたびに次をやり直す。
#
#   1. すべての記事を、必ずどれか1つの論文群に割り当てる
#        front matter の paper_group > paper_groups.yml の members > 引用関係とキーワードで自動 > fallback 群
#   2. 論文群ごとのガイド /guides/<id>/ を作る
#        関連論文ツリー(Mermaid)、論文カード、共通文献(次に記事化すべき候補)、隣接する群など
#        長い読み物(共通の設例など)は _guides/<id>.md があれば本文として差し込む
#   3. 各記事に所属する群の情報を付ける(post.guide_id / guide_title / guide_url / guide_auto)
#      ホーム用の「論文の内容」(card_summary)も全記事に付ける
#
# 実行順: Generator は post_read フックの後に走るので、paper_index.rb の処理が終わった後に動く。

require 'set'
require_relative 'paper_index'

module PaperGuides
  PI = PaperIndex

  module_function

  def basename_of(post)
    File.basename(post.path.to_s, '.*')
  end

  def slug_of(post)
    basename_of(post).sub(/\A\d{4}-\d{2}-\d{2}-/, '')
  end

  # members / entry に書かれた名前から記事を引く(完全なファイル名 > slug)
  def resolve(name, by_basename, by_slug)
    name = name.to_s.strip
    return by_basename[name] if by_basename.key?(name)

    list = by_slug[name] || []
    return list.first if list.size == 1

    if list.size > 1
      Jekyll.logger.warn 'paper_guides:', "'#{name}' が複数の記事に当たります。日付付きで書いてください: #{list.map { |p| basename_of(p) }.join(', ')}"
    else
      Jekyll.logger.warn 'paper_guides:', "paper_groups.yml の '#{name}' に当たる記事がありません"
    end
    nil
  end

  def text_for_keywords(post)
    [post.data['title'], Array(post.data['categories']).join(' '), Array(post.data['tags']).join(' ')].join(' ')
  end

  def cap_text(text, max)
    t = text.to_s.strip
    return t if t.length <= max

    cut = t[0, max][/\A.*。/m]
    cut && cut.length > max / 2 ? cut : "#{t[0, max - 1]}…"
  end

  # テンプレートv10の「読解の手がかり(5C)」ブロックを読む。
  #   - **Category**：…  / **Correctness（鍵となる仮定）**：… のような箇条書き(各1行)
  # 書かれていない記事(v9以前)は空配列を返す。
  FIVE_C_RE = /\A\s*[-*+]\s+\*\*(Category|Context|Correctness|Contributions|Clarity)([^*]*)\*\*\s*[：:]\s*(.+?)\s*\z/.freeze
  FIVE_C_ORDER = %w[Category Context Correctness Contributions Clarity].freeze

  def five_c(content)
    found = {}
    content.to_s.each_line do |line|
      m = FIVE_C_RE.match(line.chomp)
      next unless m

      found[m[1]] ||= { 'label' => "#{m[1]}#{m[2]}".strip, 'text' => cap_text(m[3], 240) }
    end
    FIVE_C_ORDER.map { |k| found[k] }.compact
  end

  # ホーム用「論文の内容」: 論文記事は paper_summary、それ以外は description > 導入部の推定
  def card_summary(post)
    s = post.data['paper_summary']
    return s if s && !s.to_s.strip.empty?

    d = post.data['description']
    return d.to_s if d && !d.to_s.strip.empty?
    return nil if post.path.to_s.end_with?('.html')

    sum, _pos, src, _ps = PI.extract_intro(post.content)
    return nil if sum.nil? || sum.to_s.strip.empty? || src == 'none'

    cap_text(sum, 420)
  rescue StandardError
    nil
  end

  # ------------------------------------------------------------------
  # 1. 記事 -> 論文群
  # ------------------------------------------------------------------
  def assign_groups(groups, posts, raw)
    gmap = groups.to_h { |g| [g['id'], g] }
    fallback = groups.find { |g| g['fallback'] } || groups.last
    by_basename = {}
    by_slug = Hash.new { |h, k| h[k] = [] }
    posts.each do |p|
      by_basename[basename_of(p)] = p
      by_slug[slug_of(p)] << p
    end

    primary = {}.compare_by_identity   # post => gid
    auto    = {}.compare_by_identity   # post => true/false
    extra   = Hash.new { |h, k| h[k] = [] }.compare_by_identity

    # (a) front matter
    posts.each do |p|
      gid = p.data['paper_group'].to_s
      next if gid.empty?

      if gmap.key?(gid)
        primary[p] = gid
        auto[p] = false
      else
        Jekyll.logger.warn 'paper_guides:', "#{basename_of(p)} の paper_group '#{gid}' は paper_groups.yml にありません"
      end
    end
    # (b) paper_groups.yml の members / also
    groups.each do |g|
      Array(g['members']).each do |m|
        p = resolve(m, by_basename, by_slug)
        next unless p

        if primary.key?(p) && primary[p] != g['id']
          next # front matter を優先
        end
        Jekyll.logger.warn 'paper_guides:', "#{basename_of(p)} が複数の群の members に載っています(#{primary[p]} と #{g['id']})" if primary.key?(p) && primary[p] != g['id']
        primary[p] = g['id']
        auto[p] = false
      end
      Array(g['also']).each do |m|
        p = resolve(m, by_basename, by_slug)
        extra[p] << g['id'] if p && !extra[p].include?(g['id'])
      end
    end

    # (c) 残りは引用関係とキーワードで自動分類
    metas = raw[:metas] || {}
    post_refs = raw[:post_refs] || {}
    keyof = {}.compare_by_identity
    refset = {}.compare_by_identity
    posts.each do |p|
      keyof[p] = metas[p] && metas[p][:key]
      refset[p] = Set.new((post_refs[p] || []).map { |r| r[:key] })
    end
    kw = groups.to_h do |g|
      [g['id'], Array(g['keywords']).map { |k| Regexp.new(Regexp.escape(k.to_s), Regexp::IGNORECASE) }]
    end

    score_for = lambda do |p|
      sc = Hash.new(0)
      posts.each do |q|
        next if q.equal?(p) || !primary.key?(q)

        s = 0
        s += 5 if keyof[p] && keyof[p] == keyof[q]                         # 同じ論文の連載記事
        s += 3 if keyof[q] && refset[p].include?(keyof[q])                 # p が q を引用
        s += 3 if keyof[p] && refset[q].include?(keyof[p])                 # q が p を引用
        shared = (refset[p] & refset[q]).size                              # 共通文献
        s += [shared, 3].min
        sc[primary[q]] += s if s.positive?
      end
      text = text_for_keywords(p)
      groups.each { |g| kw[g['id']].each { |re| sc[g['id']] += 1 if re.match?(text) } }
      sc.delete(fallback['id']) # fallback は得点では選ばない
      sc
    end

    remaining = posts.reject { |p| primary.key?(p) }
    6.times do
      break if remaining.empty?

      progressed = false
      remaining.dup.each do |p|
        sc = score_for.call(p)
        next if sc.empty?

        gid = sc.max_by { |id, v| [v, -gmap[id]['order'].to_i] }.first
        primary[p] = gid
        auto[p] = true
        remaining.delete(p)
        progressed = true
      end
      break unless progressed
    end
    remaining.each do |p|
      primary[p] = fallback['id']
      auto[p] = true
    end

    [primary, auto, extra]
  end

  # ------------------------------------------------------------------
  # 2. 群ごとのデータ
  # ------------------------------------------------------------------
  def post_sort_key(post, metas)
    m = metas[post]
    m ? [0, m[:year], post.url] : [1, post.date.year, post.url]
  end

  def build_guides(site, groups, posts, primary, auto, extra, raw)
    metas = raw[:metas] || {}
    by_key = raw[:by_key] || {}
    edges = raw[:edges] || []
    post_refs = raw[:post_refs] || {}
    ext_labels = raw[:ext_labels] || {}
    ext_titles = raw[:ext_titles] || {}
    base = site.config['baseurl'].to_s
    gmap = groups.to_h { |g| [g['id'], g] }

    by_basename = {}
    by_slug = Hash.new { |h, k| h[k] = [] }
    posts.each do |p|
      by_basename[basename_of(p)] = p
      by_slug[slug_of(p)] << p
    end

    group_of_key = {}
    by_key.each { |k, arr| group_of_key[k] = primary[arr.first] }

    refset = {}.compare_by_identity
    posts.each { |p| refset[p] = Set.new((post_refs[p] || []).map { |r| r[:key] }) }

    # 群間のつながり(隣接する群の計算用)
    cross = Hash.new { |h, k| h[k] = Hash.new(0) }
    edges.each do |a, b|
      ga = group_of_key[a]
      gb = group_of_key[b]
      next if ga.nil? || gb.nil? || ga == gb

      cross[ga][gb] += 1
      cross[gb][ga] += 1
    end

    guides = []
    groups.sort_by { |g| g['order'].to_i }.each do |g|
      gid = g['id']
      members = posts.select { |p| primary[p].equal?(gid) || primary[p] == gid }
      extras  = posts.select { |p| extra[p].include?(gid) && primary[p] != gid }
      members.sort_by! { |p| post_sort_key(p, metas) }
      papers = members.select { |p| metas[p] }
      notes  = members.reject { |p| metas[p] }

      member_keys = papers.map { |p| metas[p][:key] }.uniq
      keyset = member_keys.to_set

      # --- 入口の論文 ---
      entry = Array(g['entry']).map do |e|
        post = resolve(e['post'], by_basename, by_slug)
        post ? { 'post' => post, 'why' => e['why'].to_s, 'in_group' => primary[post] == gid } : nil
      end.compact
      entry_keys = entry.map { |e| metas[e['post']] && metas[e['post']][:key] }.compact.to_set

      # --- 群内の引用関係(古い→新しい) ---
      inner = edges.select { |a, b| keyset.include?(a) && keyset.include?(b) }
      out_deg = Hash.new(0)
      in_deg = Hash.new(0)
      inner.each { |a, b| out_deg[a] += 1; in_deg[b] += 1 }
      year_of = ->(k) { PI.year_of(k) }
      roots = member_keys.select { |k| out_deg[k].positive? }
                         .sort_by { |k| [-out_deg[k], year_of.call(k)] }.first(3)
      frontier = member_keys.select { |k| in_deg[k].positive? && out_deg[k].zero? }
                            .sort_by { |k| [-year_of.call(k), k] }.first(3)
      pick = ->(k) { (by_key[k] || []).find { |q| primary[q] == gid } || (by_key[k] || []).first }
      label_of = lambda do |k|
        first = pick.call(k)
        first && metas[first] ? { 'label' => PI.node_label(metas[first]), 'post' => first, 'url' => first.url } : { 'label' => k }
      end

      # --- 共通文献(この群の2本以上が挙げているのに、サイトに記事がないもの) ---
      ext_count = Hash.new { |h, k| h[k] = [] }
      papers.each do |p|
        (post_refs[p] || []).each do |r|
          next if by_key.key?(r[:key]) || r[:key] == metas[p][:key]

          ext_count[r[:key]] << p unless ext_count[r[:key]].include?(p)
        end
      end
      shared_refs = ext_count.select { |_k, v| v.size >= 2 }.map do |k, v|
        { 'label' => ext_labels[k].to_s.empty? ? k : ext_labels[k], 'title' => ext_titles[k].to_s,
          'count' => v.size, 'citing' => v.map { |p| metas[p][:surname] + ' (' + metas[p][:year].to_s + ')' }.uniq }
      end.sort_by { |h| [-h['count'], h['label']] }.first(12)
      shared_keys = ext_count.select { |_k, v| v.size >= 2 }.keys.to_set

      # --- 繰り返し登場する著者 ---
      author_count = Hash.new(0)
      papers.each do |p|
        (p.data['paper_coauthors'] || [metas[p][:surname]]).uniq.each { |n| author_count[n] += 1 }
      end
      repeat_authors = author_count.select { |_n, c| c >= 2 }.sort_by { |n, c| [-c, n] }.first(8)
                                   .map { |n, c| { 'name' => n, 'count' => c } }

      # --- 論文カード ---
      cards = members.map do |p|
        m = metas[p]
        key = m && m[:key]
        cites = []
        cited_by = []
        if key
          refset[p].each do |rk|
            next if rk == key

            (by_key[rk] || []).each { |q| cites << q unless q.equal?(p) || cites.include?(q) }
          end
          posts.each do |q|
            next if q.equal?(p) || !refset[q].include?(key) || (metas[q] && metas[q][:key] == key)

            cited_by << q
          end
        end
        link = lambda do |q|
          { 'title' => (metas[q] ? PI.node_label(metas[q]) : q.data['title']).to_s, 'url' => q.url,
            'group' => primary[q], 'full_title' => q.data['title'].to_s }
        end
        { 'post' => p, 'is_paper' => !m.nil?, 'year' => m && m[:year], 'authors' => m && m[:authors],
          'auto' => auto[p] ? true : false,
          'is_entry' => key ? entry_keys.include?(key) : entry.any? { |e| e['post'].equal?(p) },
          'cites' => cites.map(&link).uniq, 'cited_by' => cited_by.sort_by(&:url).map(&link).uniq,
          'summary' => p.data['card_summary'], 'position' => p.data['paper_position'],
          'five_c' => m ? five_c(p.content) : [] }
      end

      # --- Mermaid ---
      cross_nodes = Set.new
      edges.each do |a, b|
        [[a, b], [b, a]].each do |x, y|
          next unless keyset.include?(x) && !keyset.include?(y) && by_key.key?(y) && primary[by_key[y].first] != gid

          cross_nodes << y
        end
      end
      node_set = (member_keys + shared_keys.to_a.select { |k| edges.any? { |a, b| (a == k && keyset.include?(b)) || (b == k && keyset.include?(a)) } } + cross_nodes.to_a).uniq
      node_set = node_set.sort_by { |k| [year_of.call(k), k] }
      shown_edges = edges.select { |a, b| node_set.include?(a) && node_set.include?(b) && (keyset.include?(a) || keyset.include?(b)) }

      build_mermaid = lambda do |with_titles|
        lines = ['graph LR']
        ext_ids = []
        xg_ids = []
        node_set.each do |k|
          if by_key.key?(k)
            first = pick.call(k)
            label = PI.node_label(metas[first])
            t = PI.shorten(PI.title_of_post(first))
            label += "<br/>#{t}" if with_titles && !t.empty?
            if cross_nodes.include?(k)
              gs = gmap[primary[first]]
              label += "<br/>〔#{PI.clean_text(gs && gs['short'])}〕"
              xg_ids << PI.node_id(k)
            end
            lines << "  #{PI.node_id(k)}[\"#{label}\"]"
          else
            label = ext_labels[k].to_s.empty? ? k : ext_labels[k].to_s
            t = PI.shorten(ext_titles[k])
            label += "<br/>#{t}" if with_titles && !t.empty?
            lines << "  #{PI.node_id(k)}([\"#{label}\"])"
            ext_ids << PI.node_id(k)
          end
        end
        shown_edges.each { |a, b| lines << "  #{PI.node_id(a)} --> #{PI.node_id(b)}" }
        node_set.each do |k|
          next unless by_key.key?(k)

          first = pick.call(k)
          tip = PI.clean_text("#{PI.node_label(metas[first])} #{PI.title_of_post(first)}")
          lines << "  click #{PI.node_id(k)} href \"#{base}#{first.url}\" \"#{tip}\""
        end
        lines << '  classDef ext fill:none,stroke-dasharray:4 3'
        lines << '  classDef xg fill:#f3f3f3,stroke:#aaa,stroke-dasharray:2 2,color:#666'
        lines << '  classDef entry stroke:#B509AC,stroke-width:3px'
        lines << "  class #{ext_ids.join(',')} ext" unless ext_ids.empty?
        lines << "  class #{xg_ids.join(',')} xg" unless xg_ids.empty?
        ents = entry_keys.select { |k| node_set.include?(k) }.map { |k| PI.node_id(k) }
        lines << "  class #{ents.join(',')} entry" unless ents.empty?
        lines.join("\n")
      end
      mermaid = papers.empty? ? nil : build_mermaid.call(false)
      mermaid_titles = papers.empty? ? nil : build_mermaid.call(true)

      # --- 隣接する群 ---
      neighbors = cross[gid].sort_by { |_id, c| -c }.first(3).map do |id, c|
        { 'id' => id, 'title' => gmap[id]['short'] || gmap[id]['title'], 'url' => "/guides/#{id}/", 'count' => c }
      end

      series = []
      Array(g['collections']).each do |cname|
        col = site.collections[cname.to_s]
        unless col
          Jekyll.logger.warn 'paper_guides:', "paper_groups.yml の collections '#{cname}' が _config.yml にありません"
          next
        end
        col.docs.sort_by { |d| [d.data['order'].to_i, d.url] }.each do |d|
          series << { 'title' => d.data['title'].to_s, 'url' => d.url, 'collection' => cname.to_s, 'doc' => d }
        end
      end

      body_path = File.join(site.source, '_guides', "#{gid}.md")
      guides << {
        'id' => gid, 'order' => g['order'], 'title' => g['title'], 'short' => g['short'] || g['title'],
        'question' => g['question'], 'summary' => g['summary'], 'fallback' => g['fallback'] ? true : false,
        'url' => "/guides/#{gid}/",
        'entry' => entry, 'members' => members, 'extras' => extras,
        'papers_count' => papers.size, 'notes_count' => notes.size, 'count' => members.size,
        'series' => series, 'series_count' => series.size,
        'auto_count' => members.count { |p| auto[p] },
        'cards' => cards,
        'roots' => roots.map(&label_of), 'frontier' => frontier.map(&label_of),
        'shared_refs' => shared_refs, 'repeat_authors' => repeat_authors, 'neighbors' => neighbors,
        'mermaid' => mermaid, 'mermaid_titles' => mermaid_titles,
        'nodes' => node_set.size, 'edges' => shown_edges.size,
        'has_body' => File.exist?(body_path), 'body_path' => body_path
      }
    end
    guides
  end

  def generate(site)
    raw = PaperIndex::RAW
    groups = site.data['paper_groups']
    return unless groups.is_a?(Array) && !groups.empty?

    posts = site.posts.docs
    posts.each { |p| p.data['card_summary'] = card_summary(p) }
    primary, auto, extra = assign_groups(groups, posts, raw)
    guides = build_guides(site, groups, posts, primary, auto, extra, raw)
    gmap = guides.to_h { |g| [g['id'], g] }
    base = site.config['baseurl'].to_s

    # --- 記事側のメタ情報 ---
    posts.each do |p|
      g = gmap[primary[p]]
      p.data['guide_id'] = g['id']
      p.data['guide_title'] = g['title']
      p.data['guide_short'] = g['short']
      p.data['guide_url'] = g['url']
      p.data['guide_auto'] = auto[p] ? true : false
      p.data['also_guides'] = (extra[p] || []).map { |id| { 'id' => id, 'short' => gmap[id]['short'], 'url' => gmap[id]['url'] } }
    end

    guides.each do |g|
      g['series'].each do |it|
        d = it['doc']
        d.data['guide_id'] = g['id']
        d.data['guide_title'] = g['title']
        d.data['guide_short'] = g['short']
        d.data['guide_url'] = g['url']
        d.data['guide_auto'] = false
        d.data['also_guides'] = []
      end
    end

    # --- 不変条件の確認: すべての記事がどれかのガイドに載っている ---
    listed = Set.new
    guides.each { |g| g['members'].each { |p| listed << p.url } }
    missing = posts.reject { |p| listed.include?(p.url) }
    Jekyll.logger.warn 'paper_guides:', "ガイドに載っていない記事があります: #{missing.map(&:url).join(', ')}" unless missing.empty?
    autos = posts.select { |p| auto[p] }
    unless autos.empty?
      Jekyll.logger.info 'paper_guides:', "自動分類された記事 #{autos.size} 本(確認して paper_groups.yml の members に追記すると確定します):"
      autos.each { |p| Jekyll.logger.info '', "  #{basename_of(p)} -> #{primary[p]}" }
    end

    # --- 一覧用データとページ ---
    # 連載の文書(doc)は Liquid に渡す必要がないので、データからは外す
    guides.each { |g| g['series'] = g['series'].map { |it| it.reject { |k, _| k == 'doc' } } }
    # 連載コレクションの文書が、どのガイドにも載っていない場合は警告(群の collections に追加する)
    site.collections.each do |cname, col|
      next if %w[posts drafts].include?(cname)

      covered = guides.flat_map { |g| g['series'] }.select { |it| it['collection'] == cname }.map { |it| it['url'] }
      miss = col.docs.reject { |d| covered.include?(d.url) }
      Jekyll.logger.warn 'paper_guides:', "コレクション #{cname} の #{miss.size} 本がどのガイドにも載っていません(paper_groups.yml の collections に追加してください)" unless miss.empty?
    end
    site.data['guides'] = guides.map { |g| g.reject { |k, _| k == 'body_path' } }
    site.data['guide_stats'] = { 'posts' => posts.size, 'listed' => listed.size, 'auto' => autos.size,
                                 'auto_posts' => autos }

    guides.each do |g|
      page = Jekyll::PageWithoutAFile.new(site, site.source, File.join('guides', g['id']), 'index.md')
      body = g['has_body'] ? File.read(g['body_path'], encoding: 'utf-8').gsub("\r\n", "\n") : ''
      page.content = body.empty? ? '' : "{% raw %}\n#{body}\n{% endraw %}\n"
      page.data['layout'] = 'guide'
      page.data['title'] = "#{g['short']}：論文群ガイド"
      page.data['description'] = g['question']
      page.data['guide'] = g.reject { |k, _| k == 'body_path' }
      page.data['sitemap'] = true
      site.pages << page
    end
    Jekyll.logger.info 'paper_guides:', "ガイド #{guides.size} 本を生成(記事 #{posts.size} 本中 #{listed.size} 本が載っています)"
  end
end

module Jekyll
  class PaperGuidesGenerator < Generator
    safe true
    priority :low

    def generate(site)
      PaperGuides.generate(site)
    rescue StandardError => e
      Jekyll.logger.warn 'paper_guides:', "#{e.class}: #{e.message}"
      Jekyll.logger.warn '', e.backtrace.first(6).join("\n")
    end
  end
end
