---
layout: default
title: 関連論文ツリー
permalink: /paper-tree/
description: 各記事の「主要文献・関連論文」から自動生成した、論文どうしのつながり
---
{::nomarkdown}
{% assign g = site.data.paper_graph %}
<h2 class="mb-3">関連論文ツリー</h2>
<p class="text-muted">
各記事の「主要文献・関連論文」から自動で作った図です。矢印は<strong>古い論文 → 新しい論文</strong>の向きです。
実線の四角は本サイトに記事がある論文(クリックで記事へ)、点線の丸は記事はないが複数の記事から挙げられている文献です。
<a href="{{ '/papers/' | relative_url }}">論文著者名リストへ戻る</a>
</p>
{% if g.mermaid %}
<p class="text-muted small">論文 {{ g.nodes }} 件、つながり {{ g.edges }} 本</p>
<div style="overflow-x:auto">
<pre class="paper-graph">
{{ g.mermaid }}
</pre>
</div>
<script>
// レイアウト側の mermaid 設定(クリック無効)と干渉しないよう、専用クラスで自前に描画する
window.addEventListener('load', function () {
  if (typeof mermaid === 'undefined') return;
  mermaid.initialize({ startOnLoad: false, securityLevel: 'loose', theme: 'neutral' });
  mermaid.run({ querySelector: '.paper-graph' });
});
</script>
{% else %}
<p>まだ図にできるつながりがありません。</p>
{% endif %}
{:/nomarkdown}
