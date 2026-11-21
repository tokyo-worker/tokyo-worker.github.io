---
layout: default
title: 論文群ガイド
permalink: /guides/
description: 関連する論文記事を群にまとめ、系譜ツリー・読む順番・各記事への入口を示すナビゲート記事の一覧
---
{::nomarkdown}
{% assign gs = site.data.guides %}
{% assign st = site.data.guide_stats %}
<h2 class="mb-3">論文群ガイド</h2>
<p class="text-muted">
関連する論文の記事を<strong>論文群</strong>にまとめ、群ごとに「関連論文ツリー」「読む順番(How to Read a Paper の3パス法とサーベイの手順)」「各記事への入口」を示すナビゲート記事です。
記事を追加すると、各ガイドのツリー・カード・共通文献は<strong>ビルド時に自動で更新</strong>されます。すべての記事は必ずどれかのガイドに載ります
(現在 {{ st.listed }} / {{ st.posts }} 本)。
個別の論文を探すときは <a href="{{ '/papers/' | relative_url }}">論文著者名リスト</a>、全体のつながりは <a href="{{ '/paper-tree/' | relative_url }}">関連論文ツリー</a> へ。
</p>

<div class="guide-index">
{% for g in gs %}
<div class="guide-card">
  <h4 class="guide-card-title"><a href="{{ g.url | relative_url }}">{{ g.title | escape }}</a></h4>
  <div class="guide-card-meta">
    <span class="badge badge-light">記事 {{ g.count }} 本</span>
    {% if g.papers_count > 0 %}<span class="badge badge-light">論文 {{ g.papers_count }}</span>{% endif %}
    {% if g.has_body %}<span class="badge badge-primary-custom">共通の設例あり</span>{% endif %}
    {% if g.auto_count > 0 %}<span class="badge badge-warning">自動分類 {{ g.auto_count }}</span>{% endif %}
  </div>
  <p class="mb-1"><strong>問い</strong>：{{ g.question | escape }}</p>
  <p class="small text-muted mb-0">{{ g.summary | escape }}</p>
</div>
{% endfor %}
</div>

{% if st.auto > 0 %}
<h3 class="mt-5">自動分類された記事(要確認)</h3>
<p class="text-muted small">引用関係・キーワードから自動で群に入れた記事です。内容を確認して、よければ <code>_data/paper_groups.yml</code> の該当群の <code>members</code> に追記してください。</p>
<ul>
{% for p in st.auto_posts %}<li><a href="{{ p.url | relative_url }}">{{ p.title | escape }}</a> → <a href="{{ p.guide_url | relative_url }}">{{ p.guide_short | escape }}</a></li>{% endfor %}
</ul>
{% endif %}
{:/nomarkdown}
