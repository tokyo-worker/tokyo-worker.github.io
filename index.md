---
layout: home
author_profile: false
title: "Macro Economics Notes"
---

# Macro Economics Notes

マクロ経済学・資産価格理論・財政理論に関する研究ノート。

主なテーマ：

- RBC
- DSGE
- Fiscal Theory of the Price Level (FTPL)
- Government Debt
- Asset Pricing
- Martingale Pricing
- Sovereign Risk

---

# 最新記事

{% for post in site.posts limit:5 %}

## [{{ post.title }}]({{ post.url }})

- 投稿日: {{ post.date | date: "%Y-%m-%d" }}

{{ post.excerpt }}

---

{% endfor %}

# カテゴリ

- [Categories](/categories/)
- [Tags](/tags/)
- [Archive](/archive/)
- [About](/about/)
