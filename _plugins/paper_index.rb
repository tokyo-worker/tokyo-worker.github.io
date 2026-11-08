# frozen_string_literal: true

# paper_index.rb
#
# 記事(_posts)から次を自動で作る Jekyll プラグイン。記事側の編集は不要。
#   1. タイトル「著者 (年) "題名"」から、著者順一覧用のメタ情報を付与
#        paper_authors / paper_year / paper_surname / paper_sort
#   2. 本文の「**論文の内容**：」「**本記事の位置づけ**：」を抜き出して付与
#        paper_summary / paper_position
#   3. 「主要文献・関連論文」節の各文献が本サイト内の記事に該当すれば、
#        その行の末尾に記事へのリンクを自動で追記し、
#        参照された側の記事には「この論文を参照している記事」を追記
#   4. 引用関係を Mermaid の図として site.data['paper_graph'] に保存
#
# 記事の front matter で上書きしたいとき(任意):
#   paper: false            # 論文記事として扱わない
#   paper_authors: "Gerald A. Feltham & James A. Ohlson"
#   paper_year: 1995
#   paper_surname: "van Uem" # 著者順の見出しに使う姓
#   paper_summary: "..."   # 一覧に出す「論文の内容」を手で指定(本文からの自動抽出より優先)
#   paper_position: "..."  # 同「本記事の位置づけ」

require 'set'

module PaperIndex
  SEP        = /\s+and\s+|\s*[&＆、・–—;]\s*/
  PARTICLES  = %w[van von de der den del della di le la].freeze
  TITLE_RE   = /\A(?<authors>[\p{Latin}\s.,&＆、・'’\-–—]+?)\s*[（(](?<year>\d{4})[）)]/
  REFS_RE    = /^##[^\n]*主要文献・関連論文[^\n]*\n(?<body>.*?)(?=^##\s|^(?:\* \* \*|\*\*\*|---+)[ \t]*$|\z)/m
  REF_LINE_RE = /\A[-*+]\s+(?:\*\*\[[^\]]*\]\*\*\s*)?(?<authors>[^()（）]*?)\s*[（(](?<year>\d{4})[a-z]?[）)]/

  module_function

  # アクセント除去・小文字化・英字のみ
  def norm(str)
    str.to_s.unicode_normalize(:nfd).gsub(/\p{Mn}/, '').downcase.gsub(/[^a-z]/, '')
  end

  # 筆頭著者の姓。"Roy, A. D." も "Gerald A. Feltham" も扱う
  def first_surname(authors)
    first = authors.to_s.split(SEP).first.to_s.strip
    first = first.split(',').first.to_s.strip if first.include?(',')
    tokens = first.split(/\s+/)
    name = tokens.last.to_s
    name = "#{tokens[-2]} #{name}" if tokens.size >= 3 && PARTICLES.include?(tokens[-2].downcase)
    name.sub(/\.\z/, '')
  end

  # タイトルの著者部分から、共著者を含む全員の姓を順に取り出す
  def author_surnames(authors)
    authors.to_s.split(/\s*,\s*and\s+|\s+and\s+|\s*[&＆、・–—;,]\s*/).map do |name|
      tokens = name.strip.split(/\s+/)
      next nil if tokens.empty?

      n = tokens.last.sub(/\.\z/, '')
      n = "#{tokens[-2]} #{n}" if tokens.size >= 3 && PARTICLES.include?(tokens[-2].downcase)
      n
    end.compact.reject(&:empty?)
  end

  def key_of(surname, year)
    "#{norm(surname.to_s.split(/\s+/).last)}-#{year}"
  end

  SUMMARY_LABELS  = %w[論文の内容 論文の内容（要約） 論文の概要 論文の問いと主張 論文の問い 論文について
                       論文の紹介 論文の主張 どんな論文か 何を扱う本か 何を扱う論文か].freeze
  POSITION_LABELS = %w[本記事の位置づけ この記事の位置づけ 本記事の範囲 この記事について 本記事について].freeze
  POSITION_START  = /\A(?:\*\*)?(?:本記事|この記事|本稿)(?:は|では|の位置づけ)/
  STOP_LINE       = /\A\s*(?:\*\*|[-*+]\s|\||#|---|\{%)/

  # 本文の前処理: 引用記号の除去、[cite: n] の除去、行ごとの配列化
  def plain_lines(text)
    text.to_s.gsub(/\s*\[cite:[^\]]*\]/, '').lines.map { |l| l.chomp.sub(/\A\s*>\s?/, '').rstrip }
  end

  # 導入部のテキスト: 副題と最初の区切りの間 + 「論文の紹介」等の見出しの節
  def intro_lines(content)
    body = content.sub(/\A\s*\{%\s*raw\s*%\}/, '')
    pre = body[/\A.*?(?=^##\s|^---\s*$)/m].to_s
    sec = body[/^##\s[^\n]*(?:論文の紹介|この論文について|この記事で扱う論文|紹介する論文|この記事について|論文について|^0\.|0\.\s|はじめに|概要)[^\n]*\n(.*?)(?=^##\s|\z)/m, 1].to_s
    plain_lines("#{pre}\n#{sec}")
  end

  # 「**ラベル**：本文」「**ラベル。**本文」「**ラベル**」+次の段落、のどれにも対応
  def labeled(lines, labels)
    labels.each do |label|
      re = /\*\*#{Regexp.escape(label)}[。.：:]?\*\*[ \t　]*[：:。.]?[ \t　]*(.*)\z/
      lines.each_with_index do |line, idx|
        m = re.match(line)
        next unless m

        parts = m[1].to_s.strip.empty? ? [] : [m[1].strip]
        k = idx + 1
        k += 1 while k < lines.size && lines[k].strip.empty? && parts.empty?
        if parts.empty? && k < lines.size && lines[k] =~ /\A\s*[-*+]\s+/
          # ラベルの次が箇条書きなら、項目をつなげて要約とする(書誌・リンクの項目は除く)
          while k < lines.size && (lines[k] =~ /\A\s*[-*+]\s+/ || lines[k].strip.empty?)
            item = lines[k].sub(/\A\s*[-*+]\s+/, '').strip
            parts << item unless item.empty? || item =~ /\A\*\*(?:書誌|論文リンク)\*\*/
            k += 1
            break if k < lines.size && lines[k].strip.empty? && lines[k + 1].to_s !~ /\A\s*[-*+]\s+/
          end
          text = parts.join(' ').strip
          return cap(text, 520) unless text.empty?
          next
        end
        while k < lines.size && !lines[k].strip.empty? && lines[k] !~ STOP_LINE
          parts << lines[k].strip
          k += 1
        end
        text = parts.join(' ').strip
        return text unless text.empty?
      end
    end
    nil
  end

  # 「Kenneth J. Arrow and Mordecai Kurz, *Title*, ...」のような書誌行か
  def bibliographic?(text)
    text =~ /\A[A-Za-z.,&\s\-’']+\*[^*]+\*/ ? true : false
  end

  def cap(text, max)
    return text if text.length <= max

    cut = text[0, max][/\A.*。/m]
    cut && cut.length > max / 2 ? cut : "#{text[0, max - 1]}…"
  end

  # ラベルがない記事向けの推定: 導入部の段落から拾う
  def guess_summary(lines)
    lines.each do |l|
      t = l.strip
      next if t.empty? || t =~ STOP_LINE || t =~ POSITION_START || t =~ /\A\*\*[^*]+\*\*[：:。.]?\s*\z/ || bibliographic?(t)
      next unless t.include?('。') && t.length >= 40

      return cap(t, 520)
    end
    nil
  end

  def guess_position(lines)
    lines.each do |l|
      t = l.strip
      next unless t =~ POSITION_START || t =~ /\A\*\*(?:本記事|この記事)/

      return cap(t, 300)
    end
    nil
  end

  def subtitle_of(content)
    content.sub(/\A\s*\{%\s*raw\s*%\}/, '')[/^###\s+(.+)$/, 1].to_s.strip
  end

  # 返り値: [要約, 位置づけ, 要約の取得元, 位置づけの取得元]
  def extract_intro(content)
    lines = intro_lines(content)
    sum = labeled(lines, SUMMARY_LABELS)
    sum_src = 'label'
    if sum.nil?
      sum = guess_summary(lines)
      sum_src = 'guess'
    end
    if sum.nil?
      sub = subtitle_of(content)
      sum = sub.empty? ? nil : sub
      sum_src = sum ? 'subtitle' : 'none'
    end
    pos = labeled(lines, POSITION_LABELS)
    pos_src = 'label'
    if pos.nil?
      pos = guess_position(lines)
      pos_src = pos ? 'guess' : 'none'
    end
    [sum, pos, sum_src, pos_src]
  end

  def paper_meta(post)
    return nil if post.data['paper'] == false

    authors = post.data['paper_authors']
    year = post.data['paper_year']
    if authors.nil? || year.nil?
      m = TITLE_RE.match(post.data['title'].to_s)
      return nil unless m

      authors ||= m[:authors].strip
      year ||= m[:year].to_i
    end
    surname = post.data['paper_surname'] || first_surname(authors)
    return nil if surname.to_s.empty?

    { authors: authors.to_s, year: year.to_i, surname: surname.to_s }
  end

  # 文献行の「(年).」の後ろから論文(書籍)タイトルを取り出す
  def ref_title(rest)
    rest = rest.to_s.sub(/\A[a-z]?[）)][.,\s]*/, '').strip
    t = if rest.start_with?('*')
          rest[/\A\*+([^*]+)\*+/, 1]
        elsif rest =~ /\A["“](.+?)["”]/
          Regexp.last_match(1)
        else
          rest[/\A(.+?)(?:\.\s|\.\z|\s\*|\z)/m, 1]
        end
    clean_text(t)
  end

  # Mermaid のラベルに入れても壊れない文字だけにする
  def clean_text(str)
    str.to_s.gsub(/[\\"“”<>`*\[\]{}|]/, '').gsub(/\s+/, ' ').strip
  end

  def shorten(str, max = 56)
    str = str.to_s
    str.length > max ? "#{str[0, max - 1].rstrip}…" : str
  end

  # 記事タイトル中の「論文タイトル」(引用符で囲まれた部分)
  def title_of_post(post)
    m = post.data['title'].to_s.match(/["“](.+?)["”]/)
    clean_text(post.data['paper_title'] || (m && m[1]))
  end

  def parse_ref(line)
    m = REF_LINE_RE.match(line)
    return nil unless m

    surname = first_surname(m[:authors])
    return nil if surname.empty?

    year = m[:year].to_i
    { key: key_of(surname, year), label: "#{surname} (#{year})".delete('"'),
      title: ref_title(line[m.end(0) - 1..]) }
  end

  def year_of(key)
    key[/\d{4}\z/].to_i
  end

  def node_id(key)
    "n_#{key.tr('-', '_')}"
  end

  def node_label(meta)
    s = meta[:authors]
    s = "#{meta[:surname]} et al." if s.length > 28
    "#{s} (#{meta[:year]})".delete('"')
  end

  def md_escape(text)
    text.to_s.gsub(/([\[\]])/) { "\\#{Regexp.last_match(1)}" }
  end

  def build(site)
    base = site.config['baseurl'].to_s
    posts = site.posts.docs
    by_key = {}
    metas = {}.compare_by_identity

    # --- 1, 2: メタ情報 -------------------------------------------------
    posts.each do |post|
      meta = paper_meta(post)
      next unless meta

      meta[:key] = key_of(meta[:surname], meta[:year])
      metas[post] = meta
      (by_key[meta[:key]] ||= []) << post
      post.data['paper_authors']  = meta[:authors]
      post.data['paper_year']     = meta[:year]
      post.data['paper_surname']  = meta[:surname]
      post.data['paper_sort']     = format('%<s>s|%<y>04d|%<u>s',
                                           s: norm(meta[:surname].split(/\s+/).last),
                                           y: meta[:year], u: post.url)
      sum, pos, sum_src, pos_src = extract_intro(post.content)
      post.data['paper_summary']  ||= sum
      post.data['paper_position'] ||= pos
      post.data['paper_summary_src']  = post.data['paper_summary'].equal?(sum) ? sum_src : 'frontmatter'
      post.data['paper_position_src'] = post.data['paper_position'].equal?(pos) ? pos_src : 'frontmatter'
      post.data['paper_coauthors'] = author_surnames(meta[:authors])
    end
    by_key.each_value { |arr| arr.sort_by!(&:url) }

    # --- 3: 文献リストの自動リンク -------------------------------------
    cited_by = {}.compare_by_identity
    edges = Set.new
    ext_labels = {}
    ext_titles = {}
    pending = []

    posts.each do |post|
      m = REFS_RE.match(post.content)
      next unless m

      citing = metas[post]
      new_body = m[:body].lines.map do |line|
        ref = parse_ref(line)
        next line unless ref

        if citing && ref[:key] != citing[:key]
          # 文献欄には後続の発展論文も載るので、向きは常に「古い → 新しい」にそろえる
          a = ref[:key]
          b = citing[:key]
          a, b = b, a if year_of(a) > year_of(b)
          edges << [a, b]
          ext_labels[ref[:key]] ||= ref[:label]
          ext_titles[ref[:key]] ||= ref[:title]
        end
        targets = by_key.fetch(ref[:key], []).reject { |t| t.equal?(post) }
        next line if targets.empty?

        targets.each do |t|
          list = (cited_by[t] ||= [])
          list << post unless list.include?(post)
        end
        links = if targets.size == 1
                  "[本サイトの記事](#{base}#{targets.first.url})"
                else
                  targets.each_with_index.map { |t, i| "[記事#{i + 1}](#{base}#{t.url})" }.join(' ')
                end
        nl = line.end_with?("\n") ? "\n" : ''
        "#{line.chomp} → #{links}#{nl}"
      end.join
      pending << [post, m, new_body]
    end

    pending.each do |post, m, new_body|
      back = cited_by.fetch(post, [])
      tail = "\n\n"
      unless back.empty?
        items = back.sort_by(&:url).map { |b| "[#{md_escape(b.data['title'])}](#{base}#{b.url})" }
        tail = "\n\n> この論文を参照している本サイトの記事：#{items.join('、')}\n\n"
      end
      content = post.content
      post.content = content[0...m.begin(:body)] + new_body.rstrip + tail + content[m.end(:body)..]
    end

    # --- 4: 関連論文の図(古い --> 新しい) -------------------------------
    citers = Hash.new { |h, k| h[k] = Set.new }
    edges.each do |a, b|
      citers[a] << b
      citers[b] << a
    end
    # 本サイトに記事がない文献は、2本以上の記事から挙げられているものだけ描く
    shown = edges.select do |a, b|
      [a, b].all? { |k| by_key.key?(k) || citers[k].size >= 2 }
    end
    node_keys = shown.flat_map { |e| e }.uniq.sort_by { |k| [year_of(k), k] }

    build_graph = lambda do |with_titles|
      lines = ['graph LR']
      externals = []
      node_keys.each do |k|
        if by_key.key?(k)
          first = by_key[k].first
          label = node_label(metas[first])
          t = shorten(title_of_post(first))
          label += "<br/>#{t}" if with_titles && !t.empty?
          lines << "  #{node_id(k)}[\"#{label}\"]"
        else
          label = ext_labels[k].to_s
          t = shorten(ext_titles[k])
          label += "<br/>#{t}" if with_titles && !t.empty?
          lines << "  #{node_id(k)}([\"#{label}\"])"
          externals << node_id(k)
        end
      end
      shown.each { |f, t| lines << "  #{node_id(f)} --> #{node_id(t)}" }
      node_keys.each do |k|
        next unless by_key.key?(k)

        first = by_key[k].first
        tip = clean_text("#{node_label(metas[first])} #{title_of_post(first)}")
        lines << "  click #{node_id(k)} href \"#{base}#{first.url}\" \"#{tip}\""
      end
      lines << '  classDef ext fill:none,stroke-dasharray:4 3'
      lines << "  class #{externals.join(',')} ext" unless externals.empty?
      lines.join("\n")
    end

    plain = shown.empty? ? nil : build_graph.call(false)
    titled = shown.empty? ? nil : build_graph.call(true)


    # --- 5: 著者索引(共著者も含む) -------------------------------------
    groups = {}
    metas.each do |post, meta|
      names = post.data['paper_coauthors']
      names = [meta[:surname]] if names.nil? || names.empty?
      names = names.dup
      names[0] = meta[:surname] # 筆頭著者は front matter の指定を優先
      names.each_with_index do |name, i|
        gk = norm(name.split(/\s+/).last)
        next if gk.empty?

        g = (groups[gk] ||= { 'surname' => name, 'sort' => gk, 'items' => [] })
        g['items'] << { 'post' => post, 'primary' => i.zero?, 'first_surname' => meta[:surname], 'first_sort' => norm(meta[:surname].split(/\s+/).last),
                        'year' => meta[:year], 'authors' => meta[:authors] }
      end
    end
    groups.each_value do |g|
      # 筆頭著者として載る名前表記を優先して見出しにする
      prim = g['items'].find { |it| it['primary'] }
      g['surname'] = prim['first_surname'] if prim
      g['items'].sort_by! { |it| [it['year'], it['post'].url] }
    end
    site.data['paper_index'] = groups.values.sort_by { |g| g['sort'] }

    site.data['paper_graph'] = { 'mermaid' => plain, 'mermaid_titles' => titled, 'nodes' => node_keys.size, 'edges' => shown.size }
  end
end

Jekyll::Hooks.register :site, :post_read do |site|
  PaperIndex.build(site)
rescue StandardError => e
  Jekyll.logger.warn 'paper_index:', "#{e.class}: #{e.message}"
end
