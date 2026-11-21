#!/usr/bin/env python3
"""ビルド後のチェック: すべての記事が、いずれかの論文群ガイドからリンクされているか。

使い方:  python3 scripts/check_guide_coverage.py [_site]
漏れがあれば終了コード1で終わる(GitHub Actions のビルドが止まる)。
プラグイン(_plugins/paper_guides.rb)が必ず群に割り当てるので、通常は常に通る。
通らないときは、プラグインのエラー(ビルドログの 'paper_guides:' の警告)を確認する。
"""
import glob
import os
import re
import sys
from html import unescape

site = sys.argv[1] if len(sys.argv) > 1 else "_site"

# 記事の URL: _site の中の /YYYY/MM/DD/slug/ 形式のページ(sitemap に載らない記事も拾うため、ディレクトリを走査する)
def is_redirect(path):
    # jekyll-redirect-from が作る旧URLのスタブは対象外
    head = open(path, encoding="utf-8", errors="replace").read(2000)
    return 'http-equiv="refresh"' in head or "Redirecting" in head


posts = []
patterns = [
    os.path.join(site, "[0-9][0-9][0-9][0-9]", "[0-9][0-9]", "[0-9][0-9]", "*", "index.html"),  # _posts
    os.path.join(site, "ftpl", "*", "index.html"),                                                 # _ftpl 連載
]
for pat in patterns:
    for f in glob.glob(pat):
        if is_redirect(f):
            continue
        rel = os.path.relpath(os.path.dirname(f), site).replace(os.sep, "/")
        posts.append("/" + rel + "/")
posts = sorted(set(posts))

linked = set()
guides = glob.glob(os.path.join(site, "guides", "*", "index.html"))
for g in guides:
    html = open(g, encoding="utf-8").read()
    # Mermaid の図の中のリンクではなく、カードのリンク(<a href>)で数える
    for h in re.findall(r'<a href="([^"]+)"', html):
        linked.add(unescape(h))

missing = [p for p in posts if p not in linked]
print(f"記事 {len(posts)} 本 / ガイド {len(guides)} 本 / ガイドからリンクされている記事 {len(posts) - len(missing)} 本")
if not guides:
    print("ERROR: ガイドが1本も生成されていません")
    sys.exit(1)
if missing:
    print("ERROR: どのガイドからもリンクされていない記事:")
    for p in missing:
        print("  ", p)
    sys.exit(1)
print("OK: すべての記事がいずれかの論文群ガイドからリンクされています")
