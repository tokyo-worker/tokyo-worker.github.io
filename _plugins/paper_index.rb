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

  def key_of(surname, year)
    "#{norm(surname.to_s.split(/\s+/).last)}-#{year}"
  end

  # 「**ラベル**：本文」(同じ行)と、「**ラベル**」だけの行の次の段落、の両方に対応。
  # labels は優先順。最初に見つかったものを返す。
  def grab(content, *labels)
    labels.each do |label|
      l = Regexp.escape(label)
      m = content.match(/\*\*#{l}\*\*[ \t]*[:：][ \t]*(\S.*?)(?:\n[ \t]*\n|\z)/m) ||
          content.match(/^\*\*#{l}\*\*[ \t]*\n[ \t]*\n(.+?)(?:\n[ \t]*\n|\z)/m)
      return m[1].strip.gsub(/\s*\n\s*/, ' ') if m
    end
    nil
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

  def parse_ref(line)
    m = REF_LINE_RE.match(line)
    return nil unless m

    surname = first_surname(m[:authors])
    return nil if surname.empty?

    year = m[:year].to_i
    { key: key_of(surname, year), label: "#{surname} (#{year})".delete('"') }
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
    "#{s} (#{meta[:year]})".delete('"').gsub('&', '&amp;')
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
      post.data['paper_summary']  = post.data['paper_summary'] || grab(post.content, '論文の内容', '何を扱う本か', '何を扱う論文か')
      post.data['paper_position'] = post.data['paper_position'] || grab(post.content, '本記事の位置づけ')
    end
    by_key.each_value { |arr| arr.sort_by!(&:url) }

    # --- 3: 文献リストの自動リンク -------------------------------------
    cited_by = {}.compare_by_identity
    edges = Set.new
    ext_labels = {}
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

    mermaid = nil
    unless shown.empty?
      lines = ['graph LR']
      externals = []
      node_keys.each do |k|
        if by_key.key?(k)
          lines << "  #{node_id(k)}[\"#{node_label(metas[by_key[k].first])}\"]"
        else
          lines << "  #{node_id(k)}([\"#{ext_labels[k]}\"])"
          externals << node_id(k)
        end
      end
      shown.each { |f, t| lines << "  #{node_id(f)} --> #{node_id(t)}" }
      node_keys.each do |k|
        lines << "  click #{node_id(k)} href \"#{base}#{by_key[k].first.url}\"" if by_key.key?(k)
      end
      lines << '  classDef ext fill:none,stroke-dasharray:4 3'
      lines << "  class #{externals.join(',')} ext" unless externals.empty?
      mermaid = lines.join("\n")
    end

    site.data['paper_graph'] = { 'mermaid' => mermaid, 'nodes' => node_keys.size, 'edges' => shown.size }
  end
end

Jekyll::Hooks.register :site, :post_read do |site|
  PaperIndex.build(site)
rescue StandardError => e
  Jekyll.logger.warn 'paper_index:', "#{e.class}: #{e.message}"
end
