---
layout: default
title: 関連論文ツリー
permalink: /paper-tree/
description: 各記事の「主要文献・関連論文」から自動生成した、論文どうしのつながり
---
{::nomarkdown}
{% assign g = site.data.paper_graph %}
<style>
.pg-controls { display: flex; flex-wrap: wrap; gap: 1.2rem; align-items: center; margin: .8rem 0; font-size: .95rem; }
.pg-controls label { margin: 0; cursor: pointer; }
.pg-controls select { margin-left: .3rem; }
.pg-wrap { overflow: auto; max-height: 80vh; border: 1px solid var(--global-divider-color); border-radius: 6px; padding: .5rem; }
.pg-wrap svg { max-width: none !important; height: auto; }
</style>
<h2 class="mb-3">関連論文ツリー</h2>
<p class="text-muted">
各記事の「主要文献・関連論文」から自動で作った図です。矢印は<strong>古い論文 → 新しい論文</strong>の向きです。
実線の四角は本サイトに記事がある論文(クリックで記事へ。マウスを乗せると論文タイトルが出ます)、点線の丸は記事はないが複数の記事から挙げられている文献です。
図が大きいときは、枠の中を横・縦にスクロールしてください。
<a href="{{ '/papers/' | relative_url }}">論文著者名リストへ戻る</a>
</p>
{% if g.mermaid %}
<p class="text-muted small">論文 {{ g.nodes }} 件、つながり {{ g.edges }} 本</p>
<div class="pg-controls">
<label><input type="checkbox" id="pg-titles"> 論文タイトルも表示する</label>
<label>文字の大きさ
<select id="pg-size">
<option value="13">小</option>
<option value="15" selected>標準</option>
<option value="18">大</option>
<option value="22">特大</option>
</select></label>
</div>
<div class="pg-wrap" id="pg-wrap"><p class="text-muted">図を読み込み中…</p></div>
<script type="text/plain" id="pg-src-plain">
{{ g.mermaid }}
</script>
<script type="text/plain" id="pg-src-titles">
{{ g.mermaid_titles }}
</script>
<script>
// レイアウト側の mermaid 設定と干渉しないよう、専用に自前で描画する
window.addEventListener('load', function () {
  if (typeof mermaid === 'undefined') {
    document.getElementById('pg-wrap').textContent = '図の描画ライブラリを読み込めませんでした。';
    return;
  }
  var wrap = document.getElementById('pg-wrap');
  var seq = 0;
  async function draw() {
    var withTitles = document.getElementById('pg-titles').checked;
    var size = document.getElementById('pg-size').value;
    var src = document.getElementById(withTitles ? 'pg-src-titles' : 'pg-src-plain').textContent.trim();
    mermaid.initialize({
      startOnLoad: false,
      securityLevel: 'loose',
      theme: 'neutral',
      themeVariables: { fontSize: size + 'px', fontFamily: "'Roboto','Noto Sans JP',sans-serif" },
      flowchart: { useMaxWidth: false, htmlLabels: true, wrappingWidth: 260, nodeSpacing: 40, rankSpacing: 80 }
    });
    try {
      var out = await mermaid.render('pg-svg-' + (++seq), src);
      wrap.innerHTML = out.svg;
      if (out.bindFunctions) out.bindFunctions(wrap);
    } catch (e) {
      wrap.textContent = '図を描画できませんでした: ' + e.message;
    }
  }
  document.getElementById('pg-titles').addEventListener('change', draw);
  document.getElementById('pg-size').addEventListener('change', draw);
  draw();
});
</script>
{% else %}
<p>まだ図にできるつながりがありません。</p>
{% endif %}
{:/nomarkdown}
