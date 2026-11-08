---
layout: default
title: 論文著者名リスト
permalink: /papers/
description: 論文の数理モデル紹介記事を筆頭著者の姓順に、その他の記事を日付順に並べた一覧
---
{::nomarkdown}
{% assign papers = site.posts | where_exp: "p", "p.paper_sort" | sort: "paper_sort" %}
{% assign others = site.posts | where_exp: "p", "p.paper_sort == nil" %}
{% assign surnames = papers | map: "paper_surname" | uniq %}
<style>
.pl-author { margin-top: 2rem; padding-bottom: .2rem; border-bottom: 1px solid var(--global-divider-color); font-size: 1.25rem; }
.pl-item { margin: 1rem 0 1.6rem; }
.pl-item h4 { font-size: 1.05rem; margin: .2rem 0; }
.pl-meta { font-size: .85rem; color: var(--global-text-color-light); }
.pl-field { margin: .45rem 0; padding-left: .8rem; border-left: 3px solid var(--global-divider-color); font-size: .93rem; }
.pl-field p { margin: .1rem 0; }
.pl-label { display: block; font-size: .78rem; font-weight: 700; color: var(--global-text-color-light); }
.pl-others { list-style: none; padding-left: 0; }
.pl-others li { margin: .4rem 0; }
</style>

<h2 class="mb-3">論文著者名リスト</h2>
<p class="text-muted">
論文の数理モデル紹介 {{ papers.size }} 本(筆頭著者の姓の ABC 順)と、その他の記事 {{ others.size }} 本(日付の新しい順)です。
論文どうしのつながりは <a href="{{ '/paper-tree/' | relative_url }}">関連論文ツリー</a> で見られます。
</p>

<p><strong>著者索引:</strong>
{% for s in surnames %}<a href="#a-{{ s | slugify }}">{{ s }}</a>{% unless forloop.last %} · {% endunless %}{% endfor %}
&nbsp;|&nbsp; <a href="#others">その他の記事</a></p>

<h3 class="mt-5">論文の数理モデル紹介</h3>
{% assign current = "" %}
{% for p in papers %}
{% if p.paper_surname != current %}
{% assign current = p.paper_surname %}
<h4 class="pl-author" id="a-{{ p.paper_surname | slugify }}">{{ p.paper_surname }}</h4>
{% endif %}
<div class="pl-item">
<h4><a href="{{ p.url | relative_url }}">{{ p.title | escape }}</a></h4>
<div class="pl-meta">{{ p.date | date: "%Y年%m月%d日" }}{% for cat in p.categories %} <span class="badge badge-primary-custom">{{ cat }}</span>{% endfor %}</div>
{% if p.paper_summary %}<div class="pl-field"><span class="pl-label">論文の内容</span>{{ p.paper_summary | markdownify }}</div>{% endif %}
{% if p.paper_position %}<div class="pl-field"><span class="pl-label">本記事の位置づけ</span>{{ p.paper_position | markdownify }}</div>{% endif %}
</div>
{% endfor %}

<h3 class="mt-5" id="others">その他の記事(日付順)</h3>
<ul class="pl-others">
{% for p in others %}
<li><span class="pl-meta">{{ p.date | date: "%Y年%m月%d日" }}</span>&nbsp; <a href="{{ p.url | relative_url }}">{{ p.title | escape }}</a>{% for cat in p.categories %} <span class="badge badge-primary-custom">{{ cat }}</span>{% endfor %}</li>
{% endfor %}
</ul>

<script>
// 要約中の数式を KaTeX で描画する(記事ページと同じ方式)
document.addEventListener('DOMContentLoaded', function () {
  if (typeof katex === 'undefined') return;
  document.querySelectorAll('script[type^="math/tex"]').forEach(function (el) {
    var display = el.type.indexOf('mode=display') !== -1;
    var node = document.createElement(display ? 'div' : 'span');
    katex.render(el.textContent, node, { throwOnError: false, displayMode: display });
    el.parentNode.replaceChild(node, el);
  });
  if (typeof renderMathInElement !== 'undefined') {
    renderMathInElement(document.body, {
      delimiters: [
        { left: '$$', right: '$$', display: true },
        { left: '\\(', right: '\\)', display: false },
        { left: '\\[', right: '\\]', display: true }
      ],
      throwOnError: false
    });
  }
});
</script>
{:/nomarkdown}
