# tokyo-worker.github.io

**Random Thoughts on Economics from a Non‑Expert**

経済(学)について思う事をつぶやきます。

---

## 概要

マクロ経済学を中心とした勉強ノートのサイトです。
[al-folio](https://github.com/alshedivat/al-folio) のデザインスタイルをベースに構築しています。

## 記事

- RBCモデル（政府部門入り）
- ニューケインジアン（NK）モデル
- Can Deficits Finance Themselves?
- 「What about Japan?」論文解説

## ローカル開発

```bash
bundle install
bundle exec jekyll serve
```

[http://localhost:4000](http://localhost:4000) でプレビューできます。

## デプロイ

`main` ブランチへ push すると GitHub Actions で自動ビルド・デプロイされます。

## 論文群ガイド（ナビゲート記事）

関連する論文記事を「論文群」にまとめ、群ごとに `/guides/<id>/` のナビゲート記事を自動で作ります。

| 何が | どこで決まる | 更新 |
|---|---|---|
| 論文群の名前・問い・入口の論文・初期メンバー | `_data/paper_groups.yml` | 手で編集 |
| 関連論文ツリー、論文カード、共通文献（次に記事化すべき文献）、隣接する群 | 各記事の「主要文献・関連論文」から `_plugins/paper_guides.rb` が生成 | ビルドのたびに自動 |
| 共通の設例（Theoretical Minimum） | `_guides/<id>.md`（任意） | 手で追加（作り方は `ガイド記事_設例テンプレート_v1.md`） |
| ヘッダーの「論文著者名リスト」ドロップダウン、ホームの「論文の内容」 | `_includes/header.html`、`_layouts/home.html` | 自動 |

**新しい記事を追加したとき**：記事を `_posts/` に置いて push するだけで、ガイドのツリー・カードに載ります。群の割り当ては次の順で自動で決まります。

1. 記事の front matter の `paper_group: <id>`（あれば最優先）
2. `paper_groups.yml` の `members` に書かれた記事
3. 「主要文献・関連論文」の引用関係（直接の引用、共通文献）とキーワードの一致が最も多い群
4. どれにも当たらなければ `fallback: true` の群（`other`）

**すべての記事は必ずどれかのガイドに載ります**（上の4で必ず決まる）。自動で入った記事は、ガイドで「自動分類」バッジが付き、`/guides/` の一覧に「要確認」として出ます。内容を見て、よければ `paper_groups.yml` の `members` に追記すると確定します。ビルド後に `scripts/check_guide_coverage.py` が全記事のリンクを検査し（GitHub Actions に組み込み済み）、漏れがあればデプロイを止めます。

**新しい論文群を作る**：`paper_groups.yml` に1ブロック足す（`id`、`order`、`title`、`short`、`question`、`summary`、`keywords`、`entry`、`members`）。`_ftpl` のような別コレクションは、どれかの群の `collections:` に書きます（書き忘れるとビルドログに警告が出ます）。

**記事に5Cを書くと**（テンプレート v10）：0章の「読解の手がかり（5C）」が、ガイドの論文カードに自動で表示されます。書かれていない既存記事はそのままで問題ありません。
