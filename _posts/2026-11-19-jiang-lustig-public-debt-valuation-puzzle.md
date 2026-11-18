---
layout: post
title: "Jiang, Lustig, Van Nieuwerburgh & Xiaolan (2024) \"The U.S. Public Debt Valuation Puzzle\"、Econometrica: 数理モデル"
date: 2026-11-19 00:00:00 +0900
categories: [金融, 財政]
math: true
---

{% raw %}
# Jiang, Lustig, Van Nieuwerburgh & Xiaolan (2024) "The U.S. Public Debt Valuation Puzzle"、Econometrica: 数理モデル
### 国債ポートフォリオの市場価値は、基礎的財政収支の「リスク調整後」の割引現在価値と等しいはずである：その等式と、税収・歳出請求権の価格づけ

---

## 目次

- [0. 論文の紹介](#sec0)
- [1. 数理モデル](#sec1)
- [2. 説明できる現象](#sec2)
- [3. 整理している点](#sec3)
- [4. モデルの対象外](#sec4)
- [5. 主要文献・関連論文](#sec5)
- [付録：導出手順](#appendix)

---

## 0. 論文の紹介 {#sec0}

**書誌**：Jiang, Z., Lustig, H., Van Nieuwerburgh, S., & Xiaolan, M. Z., "The U.S. Public Debt Valuation Puzzle," *Econometrica*, Vol. 92, No. 4 (July 2024), pp. 1309–1347.

**論文リンク**：
- 無料で全文を読める版（いずれも出版版ではなく、著者ドラフトまたはワーキングペーパー。内容が出版版と異なる）：
  - NBER会議サイトに載る2020年6月25日版のドラフト：https://conference.nber.org/conf_papers/f136177/f136177.pdf （会議用の著者ドラフト。リンク切れや公開状況の変更がありうる）
  - NBER Working Paper No. 26583：http://www.nber.org/papers/w26583.pdf （2019年12月版を含む。全文を無料で読めるかは時期や閲覧環境で異なりうる）
  - SSRN（2019年10月10日版、2024年5月17日改訂）：https://ssrn.com/abstract=3333517 （全文の閲覧条件は確認していない）
- 公式版（出版社・DOI）：https://doi.org/10.3982/ECTA20497 （*Econometrica*。閲覧に契約や所属機関経由のアクセスが必要な場合がある）
- 書誌データベース（RePEc/EconPapers、書誌情報のみ）：https://econpapers.repec.org/RePEc:wly:emetrp:v:92:y:2024:i:4:p:1309-1347

**論文の内容**：政府の予算制約と無裁定から、米国債ポートフォリオ全体の市場価値は、基礎的財政収支（税収−歳出）の確率割引現在価値に等しくなければならない。著者らは、税収・歳出の対GDP比に共和分を課したVARで将来のキャッシュフローを、国債と株式の価格を再現するアフィン型の確率割引ファクターで割引率を表し、収支請求権の価値を評価する。税収は景気順行的、歳出は景気逆行的であり、長期にはどちらもGDPと同じリスクを負うため割引率が高くなり、収支請求権の価値は国債の市場価値を大きく下回る（2020年ドラフトでは平均でGDP比287%の乖離）。この乖離は、バブル、コンビニエンスイールド、緊縮の予想、市場分断のいずれでも解消されないと論じている。

**本記事の位置づけ**：この記事は、この論文の背景にある数理モデルについての記事です。対象は、無裁定から導く価値等式とリスクプレミアム等価、長期の割引率、共和分を課した財政キャッシュフローのVAR、アフィン型の確率割引ファクター、税収・歳出請求権の価格、コンビニエンスイールドと緊縮確率の逆算までの式です。実証結果の数値は、モデルの主要帰結の確認に必要な範囲にとどめ、提供された2020年4月28日付ドラフトに基づくため、出版版と式や数値が異なる場合があります。

**式番号の対応**：本記事の式番号と、原論文（2020年4月28日付ドラフト）の式番号の対応は次のとおり。「—」は原論文に式番号がない式（本文または付録の途中の式）を表す。

| 本記事 | 原論文 | 本記事 | 原論文 | 本記事 | 原論文 |
|---|---|---|---|---|---|
| (1) | — （付録A、予算制約） | (16) | (A.16), (A.25) | (31) | (15), (16) |
| (2) | — （2.1節、債券価格） | (17) | — （付録D.1） | (32) | — （付録B.4.1, B.4.2） |
| (3) | — （付録A、横断性条件） | (18) | (7) | (33) | (A.17)–(A.19) |
| (4) | (1) | (19) | — （付録B.2、命題7） | (34) | (A.20), (A.21) |
| (5) | — （2.1節） | (20) | (A.7), (A.8) | (35) | (A.22), (A.23) |
| (6) | (2) | (21) | (8), (9) | (36) | (A.24) |
| (7) | — （2.2節） | (22) | — （付録B.2） | (37) | (A.26)–(A.28) |
| (8) | (3) | (23) | (A.5), (A.6) | (38) | (A.29) |
| (9) | 命題3 | (24) | (A.9), (A.10) | (39) | — （6.2節） |
| (10) | 系1 | (25) | (A.11), (A.12) | (40) | (17) |
| (11) | — （付録A、デフォルト） | (26) | (A.13) | (41) | — （6.2節） |
| (12) | (4) | (27) | (10), (11) | (42) | — （6.2節） |
| (13) | (5) | (28) | (A.14), (A.15) | (43) | — （6.2節） |
| (14) | (6) | (29) | — （付録B.3.2） | (44) | — （6.3節） |
| (15) | — （4.1.2節） | (30) | (13), (14) | (45)以降 | 本記事による整理・導出 |

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間・情報構造**

離散時間・年次（標本は1947〜2019年）。政府は毎期、基礎的収支（税収−歳出）と債務の満期到来・新規発行を通じて予算制約を満たす。債券投資家の評価は確率割引ファクター（SDF）で表す。時点 $$t$$ の情報は状態ベクトル $$z_t$$ に含まれる。1.1〜1.3節の式は名目値で、名目を表す上付きのドル記号を省く（原論文付録Aと同じ約束）。1.5節以降は、名目と実質を区別するため、原論文に合わせて名目の変数に上付きのドル記号を付ける（ただし式(9)と式(10)の長期利回りには、原論文どおり最初から付ける）。

**A1　無裁定（SDFの存在）**

すべての債券・株式の価格を整合的に与えるSDF $$M_{t,t+h}$$ が存在する。SDFの一意性（完備市場）は要らない。外すと、債務の価格を将来余剰の割引価値と結び付ける根拠がなくなる。

**A2　横断性条件（TVC）**

債務の市場価値の成長がSDFによる割引に追い付かない。式(3)で書く。外すと、合理的な政府債務バブルを許し、価値等式が成り立たない。

**A3　政府の予算制約**

毎期、基礎的赤字と満期到来債務の合計が、新規発行額に等しい。式(1)で書く。債券はゼロクーポン債（ストリップ）に分解して扱う。

**A4　デフォルトの扱い**

デフォルトがあっても、債券価格にデフォルトを織り込めば同じ予算制約が成り立つ。簡単のため、全額デフォルト・回収ゼロを扱う（原論文は一般性を失わないとする）。

**A5　キャッシュフローの長期性質（共和分）**

税収と歳出はGDPと共和分の関係にある。対GDP比 $$\log\tau_t$$, $$\log g_t$$ は水準で定常。共和分係数は $$(1,-1)$$ に先験的に固定する。外すと、ショックが永続化して歳出請求権は安全に、税収請求権は危険になる。

**A6　キャッシュフローの短期性質（景気循環性）**

歳出は景気逆行的（不況時に増える）、税収は景気順行的（不況時に減る）。VARの誤差共分散行列で、税収対GDP比の成長率ショックはGDP成長率ショックと正に、歳出対GDP比の成長率ショックは負に相関する。

**A7　財政政策は所与**

税収と歳出は最適化の結果ではなく、状態変数に依存する過程としてデータから推定する。

**A8　ガウス型VAR(1)**

状態ベクトルは同分散のガウス型1次VARに従う。式(14)。

**A9　指数アフィンSDF**

名目SDFは条件付き対数正規で、価格リスクは状態の線形関数。式(18)。リスクの価格がつく源泉は、状態ベクトルの構造ショック $$\varepsilon_{t+1}$$。

**A10　推定上の制約**

（i）対数SDFの標準偏差にグッドディール境界を課す（年次シャープ・レシオが3を超えると罰則）。（ii）名目・実質の非常に長い満期（50〜1000年）の利回りが安定し、名目利回りが実質利回りを長期期待インフレ以上に上回る（インフレ・リスクプレミアムが弱く正）。（iii）長期の歳出（税収）請求権の価値比率は、歳出（税収）への正のショックで上昇する。

**A11　コンビニエンスイールド（1.7節のみ）**

国債は全満期で一様のコンビニエンスイールド $$\lambda_t$$ を持つ。外すと、満期ごとに異なる $$\lambda$$ が必要になる。

| 記号・項目 | 意味 |
|---|---|
| $$t$$ | 時点（年） |
| $$H$$ | 国債の最大満期 |
| $$z_t$$ | 状態ベクトル（1.4節で定義） |

### 1.1 予算制約・債務の市場価値・価値等式（命題1）

**政府の予算制約**

$$
\underbrace{G_t-T_t}_{\text{基礎的赤字}}+\underbrace{Q_{t-1,1}}_{\text{満期到来債務}}=\underbrace{\sum_{h=1}^{H}\left(Q_{t,h}-Q_{t-1,h+1}\right)P_t(h)}_{\text{新規発行額}}\tag{1}
$$

> 原論文付録Aでは債券残高を $$Q^{h}_{t}$$ と書く。本記事は本文の記法 $$Q_{t,h}$$（時点 $$t$$ に残る、$$t+h$$ に支払う額面）に統一する。$$t-1$$ 期に満期 $$h+1$$ で残る債券は $$t$$ 期に満期 $$h$$ となる。

**債券価格とSDF**

$$
P_t(h)=\mathbb{E}_t\left[M_{t,t+h}\right]=\mathbb{E}_t\left[M_{t+1}P_{t+1}(h-1)\right],\qquad M_{t,t+h}=\prod_{k=0}^{h}M_{t+k},\quad P_t(0)=1,\ M_t=1\tag{2}
$$

> $$M_{t,t}=M_t=1$$、$$M_{t,t+1}=M_{t+1}$$ とする約束は原論文のとおり。

**横断性条件**

$$
\lim_{J\to\infty}\mathbb{E}_t\left[M_{t,t+J}\underbrace{\sum_{h=1}^{H}Q_{t+J,h}P_{t+J}(h)}_{\text{遠い将来の債務価値}}\right]=0\tag{3}
$$

> 本文では $$\mathbb{E}_t\left[M_{t,t+T}D_{t+T}\right]\to0$$（$$T\to\infty$$）と書かれ、付録では上の形で書かれる。バブルの排除を意味する。

**価値等式（命題1）**

$$
\underbrace{D_t}_{\text{国債の市場価値}}\equiv\sum_{h=0}^{H}\underbrace{P_t(h)}_{\text{ゼロ債価格}}\underbrace{Q_{t-1,h+1}}_{\text{額面残高}}=\underbrace{\mathbb{E}_t\left[\sum_{j=0}^{\infty}M_{t,t+j}\left(T_{t+j}-G_{t+j}\right)\right]}_{\text{余剰の割引現在価値}}\equiv\underbrace{P^{T}_t}_{\text{税収請求権}}-\underbrace{P^{G}_t}_{\text{歳出請求権}}\tag{4}
$$

$$
P^{T}_t=\mathbb{E}_t\left[\sum_{j=0}^{\infty}M_{t,t+j}T_{t+j}\right],\qquad P^{G}_t=\mathbb{E}_t\left[\sum_{j=0}^{\infty}M_{t,t+j}G_{t+j}\right]\tag{5}
$$

> 添字 $$h=0$$ の項は、今期に満期が来る債務 $$Q_{t-1,1}$$（$$P_t(0)=1$$）。$$P^{T}_t$$, $$P^{G}_t$$ は今期の支払いを含む（cum-dividend）価値。証明はSDFの存在だけを使い、一意性は使わない。

**共分散による分解**

$$
D_t=\underbrace{\sum_{j=0}^{\infty}P_t(j)\,\mathbb{E}_t\left[S_{t+j}\right]}_{\text{リスク中立のPDV}}+\underbrace{\sum_{j=0}^{\infty}\mathrm{Cov}_t\left(M_{t,t+j},T_{t+j}\right)}_{\text{税収の共分散項}}-\underbrace{\sum_{j=0}^{\infty}\mathrm{Cov}_t\left(M_{t,t+j},G_{t+j}\right)}_{\text{歳出の共分散項}}\tag{6}
$$

> SDFが一定なら共分散項は消え、第1項だけが残る。税収が好況（$$M$$ が低い）で高ければ第2項は負、歳出が不況（$$M$$ が高い）で高ければ第3項は正。両方が成り立つと、2つの共分散項の差は負となり、政府の債務余力を下げる。

| 記号・項目 | 意味 |
|---|---|
| $$G_t$$ | 利払い前の名目政府支出（歳出） |
| $$T_t$$ | 名目税収 |
| $$S_t$$ | 名目基礎的収支、$$S_t=T_t-G_t$$ |
| $$P_t(h)$$ | 時点 $$t$$ に満期 $$h$$（$$t+h$$ に1ドルを払う）ゼロクーポン債の価格 |
| $$Q_{t,h}$$ | 時点 $$t$$ に残る、$$t+h$$ に支払う債務の額面 |
| $$Q_{t-1,1}$$ | 今期（$$t$$）に満期が来る債務の総額 |
| $$M_{t,t+h}$$ | $$h$$ 期間の累積SDF |
| $$D_t$$ | 国債ポートフォリオ（今期支払いを含む）の市場価値 |
| $$P^{T}_t,\ P^{G}_t$$ | 税収請求権・歳出請求権の（今期支払いを含む）価値 |
| $$\mathrm{Cov}_t$$ | 時点 $$t$$ で条件付けた共分散 |

### 1.2 リスクプレミアム等価（命題2）と長期の割引率（命題3・系1）

**保有期間収益率**

$$
R^{D}_{t+1}=\frac{\sum_{h=1}^{\infty}P_{t+1}(h-1)\,Q_{t,h}}{\sum_{h=1}^{\infty}P_{t}(h)\,Q_{t,h}},\qquad R^{T}_{t+1}=\frac{P^{T}_{t+1}}{P^{T}_t-T_t},\qquad R^{G}_{t+1}=\frac{P^{G}_{t+1}}{P^{G}_t-G_t}\tag{7}
$$

**リスクプレミアム等価（命題2）**

$$
\mathbb{E}_t\left[R^{D}_{t+1}\right]=\underbrace{\frac{P^{T}_t-T_t}{D_t-S_t}}_{\text{税収側の重み}}\mathbb{E}_t\left[R^{T}_{t+1}\right]-\underbrace{\frac{P^{G}_t-G_t}{D_t-S_t}}_{\text{歳出側の重み}}\mathbb{E}_t\left[R^{G}_{t+1}\right]\tag{8}
$$

> $$D_t-S_t=\left(P^{T}_t-T_t\right)-\left(P^{G}_t-G_t\right)$$ が成り立つ。国債の割引率は、税収請求権と歳出請求権の割引率の差を重み付けしたもの。リスクフリー金利を引くと期待超過収益（リスクプレミアム）の関係になる。

**長期の割引率（命題3）**

$$
\lim_{j\to\infty}\mathbb{E}_t\left[r^{G,j}_{t,t+j}\right]=y^{\$}_t(\infty),\qquad \lim_{j\to\infty}\mathbb{E}_t\left[r^{T,j}_{t,t+j}\right]=y^{\$}_t(\infty)\tag{9}
$$

> 条件は「$$\log G$$ と $$\log T$$ が（決定的トレンドを除いて）水準で定常」。このとき長期の歳出・税収ストリップは長期債の利回りで割り引ける。ただしこの条件は、GDPや消費にも永続ショックがないことを意味し、長期債が最もリスクの高い資産になってしまうため、非現実的だと原論文は述べる。

**GDPと共和分する場合（系1）**

$$
\lim_{j\to\infty}\mathbb{E}_t\left[r^{G,j}_{t,t+j}\right]=\lim_{j\to\infty}\mathbb{E}_t\left[r^{T,j}_{t,t+j}\right]=\underbrace{\mathbb{E}_t\left[r^{GDP,\infty}_{t,t+n}\right]}_{\text{長期GDPストリップ}}\gg\underbrace{y^{\$}_t(\infty)}_{\text{長期債利回り}}\tag{10}
$$

> 条件は「$$\log(G/GDP)$$ と $$\log(T/GDP)$$ が水準で定常」。GDPの請求権は、レバレッジのない株式に近い。SDFに大きな永続成分があれば、その割引率は長期債利回りを大きく上回る。

**短期と長期のまとめ**

| 満期 | 内容 |
|---|---|
| 短期（約1〜3年） | $$\mathbb{E}_t\left[R^{T,j}_{t,t+j}-R^{f}_t\right]\gt\mathbb{E}_t\left[R^{G,j}_{t,t+j}-R^{f}_t\right]$$。税収は景気順行的、歳出は景気逆行的なので、国債投資家は「より危険な請求権を買い、より安全な請求権を売る」ことになる |
| 長期（$$j\to\infty$$） | 共和分があれば歳出・税収ストリップの割引率は互いに、またGDPストリップに収束する（式(10)） |
| 合わせた予測 | $$\mathbb{E}_t\left[R^{D}_{t+1}-R^{f}_t\right]\gt\mathbb{E}_t\left[R^{T}_{t+1}-R^{f}_t\right]\gt\mathbb{E}_t\left[R^{G}_{t+1}-R^{f}_t\right]$$（原論文の「理論の予測」） |

| 記号・項目 | 意味 |
|---|---|
| $$R^{D}_{t+1},\ R^{T}_{t+1},\ R^{G}_{t+1}$$ | 国債ポートフォリオ・税収請求権・歳出請求権の（総）収益率 |
| $$R^{f}_t$$ | リスクフリー（短期）総収益率 |
| $$R^{T,j}_{t,t+j},\ R^{G,j}_{t,t+j}$$ | $$t+j$$ にだけ $$T_{t+j}$$（または $$G_{t+j}$$）を払うストリップの保有期間総収益率 |
| $$r^{T,j}_{t,t+j},\ r^{G,j}_{t,t+j},\ r^{GDP,\infty}_{t,t+n}$$ | 対応する対数収益率（GDPストリップは $$n\to\infty$$） |
| $$y^{\$}_t(\infty)$$ | 時点 $$t$$ の無限満期の名目国債利回り |

### 1.3 インフレ・デフォルトと測度可能性制約（命題4・系2）

**デフォルトがある場合の債券価格**

$$
P_t(h)=\mathbb{E}_t\left[M_{t,t+h}\left(1-\chi_{t,t+h}\right)\right]\tag{11}
$$

> $$\chi_{t,t+h}$$ は $$t$$ から $$t+h$$ の間にデフォルトが起きるときに1となる指標変数。予算制約は債務を債務価値で裏付ける形のままなので、価値等式(4)の構造は変わらない（付録A.3）。インフレは、価値等式が名目でも実質でも成り立つ事前の関係なので、等式を破らない（ブレークイーブン・インフレ率が低く、国債の平均デュレーションが約4年と短い、という実証的な議論は2章に記す）。

**測度可能性制約（命題4）**

$$
\frac{\partial D_t}{\partial z_t}=\sum_{h=0}^{H}Q_{t-1,h+1}\frac{\partial P_t(h)}{\partial z_t}=\frac{\partial P^{T}_t}{\partial z_t}-\frac{\partial P^{G}_t}{\partial z_t}\tag{12}
$$

**1期の安全債だけを発行する場合（系2）**

$$
\frac{\partial P^{T}_t}{\partial z_t}-\frac{\partial P^{G}_t}{\partial z_t}=0\tag{13}
$$

> 1期債の価格は $$P_t(0)=1$$ で一定なので、前期に発行した債務の価値は状態変数に依存しない。式(13)が成り立つときに限り、将来余剰を1期のリスクフリー金利で割り引いてよい。$$z_t$$ は一般の状態変数。

| 記号・項目 | 意味 |
|---|---|
| $$\chi_{t,t+h}$$ | $$t$$ から $$t+h$$ の間のデフォルトを表す指標（デフォルトで1） |
| $$z_t$$ | 状態変数（一般形。具体的には1.4節の状態ベクトル） |

### 1.4 財政キャッシュフローの動学（VARと共和分）

**状態ベクトルのVAR**

$$
z_t=\underbrace{\Psi z_{t-1}}_{\text{予測可能な部分}}+u_t=\Psi z_{t-1}+\underbrace{\Sigma^{1/2}\varepsilon_t}_{\text{構造ショック}},\qquad u_t\sim\text{i.i.d. }N(0,\Sigma),\quad\varepsilon_t\sim\text{i.i.d. }N(0,I)\tag{14}
$$

> $$\Sigma=\Sigma^{1/2}\left(\Sigma^{1/2}\right)^{\top}$$ はコレスキー分解（$$\Sigma^{1/2}$$ は対角とその下に非零要素を持つ）。各状態変数のショックは、自分の構造ショックと、VARで前に並ぶ変数の構造ショックの線形結合になる。$$z_t$$ は各変数を標本平均からの偏差にしたもの。

| 位置 | 変数 | 平均 | 内容 |
|---|---|---|---|
| 1 | $$\pi_t$$ | $$\pi_0$$ | 対数インフレ率 |
| 2 | $$x_t$$ | $$x_0$$ | 対数実質GDP成長率 |
| 3 | $$y^{\$}_t(1)$$ | $$y^{\$}_0(1)$$ | 対数1年名目利回り |
| 4 | $$yspr^{\$}_t$$ | $$yspr^{\$}_0$$ | 対数5年−1年名目利回りスプレッド |
| 5 | $$pd_t$$ | $$\overline{pd}$$ | 対数株価配当比率 |
| 6 | $$\Delta d_t$$ | $$\mu_d$$ | 対数配当成長率 |
| 7 | $$\Delta\log\tau_t$$ | $$\mu_\tau$$ | 対数税収対GDP比の成長率 |
| 8 | $$\Delta\log g_t$$ | $$\mu_g$$ | 対数歳出対GDP比の成長率 |
| 9 | $$\log\tau_t$$ | $$\log\tau_0$$ | 対数税収対GDP比（水準） |
| 10 | $$\log g_t$$ | $$\log g_0$$ | 対数歳出対GDP比（水準） |

> $$e_\pi,\ e_x,\ e_{y1},\ e_{yspr},\ e_{pd},\ e_{\mathrm{div}},\ e_{\Delta\tau},\ e_{\Delta g},\ e_\tau,\ e_g$$ は、それぞれ上表の1〜10番目の要素を選ぶ選択ベクトル（原論文は $$e_{\mathrm{div}}$$ を $$e_{divm}$$、$$e_{y1}$$ を付録で $$e_{yn}$$ と書く。いずれも同じ要素を指すと読める。本記事による補足）。

**共和分を課した水準の構成**

$$
\log\tau_t=\log\tau_1+\sum_{k=1}^{t}\left(\Delta\log\tau_k-\hat\mu_\tau\right),\qquad \log g_t=\log g_1+\sum_{k=1}^{t}\left(\Delta\log g_k-\hat\mu_g\right)\tag{15}
$$

> 共和分係数を $$(1,-1)$$ に課すと、税収対GDP比・歳出対GDP比の無条件成長率は0でなければならない（$$\mu^{\tau}_0=\mu^{g}_0=0$$）。標本平均 $$\hat\mu_\tau=-0.7\%$$、$$\hat\mu_g=0.2\%$$ を除いてから水準を積み上げる。$$\log g_1$$ は1947年の実績値。$$\log\tau_1$$ は、平均の対数余剰対GDP比が調整前データと一致するように選ぶ（1947年の実績値からの軽微な調整）。

**名目の税収・歳出の成長率**

$$
\begin{aligned}
\Delta\log G_{t+1}&=\Delta\log g_{t+1}+x_{t+1}+\pi_{t+1}=x_0+\pi_0+\mu^{g}_0+\left(e_{\Delta g}+e_x+e_\pi\right)^{\top}z_{t+1}\\
\Delta\log T_{t+1}&=\Delta\log\tau_{t+1}+x_{t+1}+\pi_{t+1}=x_0+\pi_0+\mu^{\tau}_0+\left(e_{\Delta\tau}+e_x+e_\pi\right)^{\top}z_{t+1}
\end{aligned}\tag{16}
$$

**VARの最後の2行（独立のショックを持たない）**

$$
\begin{aligned}
\log\tau_t-\log\tau_0&=\left(e_{\Delta\tau}^{\top}\Psi+e_{\tau}^{\top}\right)z_{t-1}+e_{\Delta\tau}^{\top}\Sigma^{1/2}\varepsilon_t\\
\log g_t-\log g_0&=\left(e_{\Delta g}^{\top}\Psi+e_{g}^{\top}\right)z_{t-1}+e_{\Delta g}^{\top}\Sigma^{1/2}\varepsilon_t
\end{aligned}\tag{17}
$$

> $$\Psi$$ の9・10行目と $$\Sigma^{1/2}$$ の9・10列目は、7・8行目から決まる。$$\Sigma^{1/2}$$ の最後の2列は0。VARの最初の8本の式をOLSで推定し、$$\Psi$$ に推定値が0に近い要素のゼロ制約は課さない。

| 推定結果（原論文表3） | 値と意味 |
|---|---|
| $$\Psi[7,9]$$ | $$-0.568$$（精度よく推定）。税収対GDP比の水準が高いほど、翌年の成長率が下がる（自己の平均回帰） |
| $$\Psi[8,10]$$ | $$-0.265$$（精度よく推定）。歳出対GDP比の平均回帰 |
| $$\Psi[7,10]$$ | $$0.181$$（精度よく推定）。歳出が高いと税収が追随して増える方向（期待どおりの符号） |
| $$\Psi[8,9]$$ | $$0.100$$（精度は低い）。同様に税収が高いと歳出が増える方向 |

| 記号・項目 | 意味 |
|---|---|
| $$\Psi$$ | $$10\times10$$ のVAR係数行列（コンパニオン行列） |
| $$\Sigma$$, $$\Sigma^{1/2}$$ | 誤差の共分散行列と、そのコレスキー因子 |
| $$\varepsilon_t$$ | 構造ショック（標準正規、独立） |
| $$\tau_t,\ g_t$$ | 税収対GDP比、歳出対GDP比。$$\tau_t=T_t/GDP_t$$、$$g_t=G_t/GDP_t$$ |
| $$\hat\mu_\tau,\ \hat\mu_g$$ | 標本平均の成長率（$$-0.7\%$$、$$0.2\%$$） |

### 1.5 確率割引ファクター（SDF）と債券・株式の価格

**SDF**

$$
\underbrace{m^{\$}_{t+1}}_{\text{対数名目SDF}}=-y^{\$}_t(1)\underbrace{-\tfrac12\Lambda_t^{\top}\Lambda_t}_{\text{Jensen補正}}\underbrace{-\Lambda_t^{\top}\varepsilon_{t+1}}_{\text{リスク価格×ショック}},\qquad \Lambda_t=\Lambda_0+\Lambda_1z_t,\qquad M_{t+1}=\exp\left(m^{\$}_{t+1}+\pi_{t+1}\right)\tag{18}
$$

> 名目SDFは $$M^{\$}_{t+1}=\exp\left(m^{\$}_{t+1}\right)$$。実質SDFは $$M_{t+1}=\exp\left(m_{t+1}\right)=\exp\left(m^{\$}_{t+1}+\pi_{t+1}\right)$$ で、これも条件付きガウス型。$$\Lambda_0$$ は平均のリスク価格、$$\Lambda_1$$ はリスクプレミアムの時間変動を決める。

**名目債券の利回り（アフィン）**

$$
y^{\$}_t(h)=-\frac{A^{\$}(h)}{h}-\frac{B^{\$}(h)^{\top}}{h}z_t\tag{19}
$$

$$
\begin{aligned}
A^{\$}(h+1)&=-y^{\$}_0(1)+A^{\$}(h)+\tfrac12B^{\$}(h)^{\top}\Sigma B^{\$}(h)-B^{\$}(h)^{\top}\Sigma^{1/2}\Lambda_0\\
B^{\$}(h+1)^{\top}&=B^{\$}(h)^{\top}\Psi-e_{y1}^{\top}-B^{\$}(h)^{\top}\Sigma^{1/2}\Lambda_1
\end{aligned}\tag{20}
$$

> 初期条件は $$A^{\$}(0)=0$$、$$B^{\$}(0)=\mathbf{0}$$。実質債券の利回りも同様にアフィン。

**傾きの整合条件**

$$
-\frac{A^{\$}(20)}{20}=y^{\$}_0(1)+yspr^{\$}_0=y^{\$}_0(20),\qquad -\frac{B^{\$}(20)}{20}=e_{y1}+e_{yspr}\tag{21}
$$

> 原論文のまま。VARの傾き変数が5年−1年スプレッドであることから、満期の「20」は「5」の誤記の可能性がある（本記事による注。出版版で確認を推奨）。この条件は $$N+1$$ 個の制約となり、$$\Lambda_0$$ の第4要素と $$\Lambda_1$$ の第4行を決める。

**債券のリスクプレミアム**

$$
\underbrace{\mathbb{E}_t\left[r^{b,\$}_{t+1}(h)\right]-y^{\$}_t(1)+\tfrac12\mathbb{V}_t\left[r^{b,\$}_{t+1}(h)\right]}_{\text{Jensen補正後の超過収益}}=-\mathrm{Cov}_t\left(m^{\$}_{t+1},r^{b,\$}_{t+1}(h)\right)=\underbrace{B^{\$}(h)^{\top}\Sigma^{1/2}\Lambda_t}_{\text{リスク量×リスク価格}},\quad r^{b,\$}_{t+1}(h)=\log P^{\$}_{t+1}(h)-\log P^{\$}_t(h+1)\tag{22}
$$

**実質短期金利**

$$
y_t(1)=y_0(1)+\left[e_{y1}^{\top}-e_\pi^{\top}\Psi+e_\pi^{\top}\Sigma^{1/2}\Lambda_1\right]z_t,\qquad y_0(1)\equiv y^{\$}_0(1)-\pi_0-\tfrac12e_\pi^{\top}\Sigma e_\pi+e_\pi^{\top}\Sigma^{1/2}\Lambda_0\tag{23}
$$

> 実質短期利回りは、名目短期利回りから、期待インフレ率、Jensen調整、インフレ・リスクプレミアムを引いたもの。

**実質債券の利回り**

$$
\begin{aligned}
A(h+1)&=-y_0(1)+A(h)+\tfrac12B(h)^{\top}\Sigma B(h)-B(h)^{\top}\Sigma^{1/2}\left(\Lambda_0-\left(\Sigma^{1/2}\right)^{\top}e_\pi\right)\\
B(h+1)^{\top}&=-e_{y1}^{\top}+\left(e_\pi+B(h)\right)^{\top}\left(\Psi-\Sigma^{1/2}\Lambda_1\right)
\end{aligned}\tag{24}
$$

> $$h=0$$ から出発すると、式(23)の実質短期金利に戻る。

**株式の対数収益率の線形化**

$$
r^{m}_{t+1}=\kappa^{m}_0+\Delta d^{m}_{t+1}+\kappa^{m}_1pd^{m}_{t+1}-pd^{m}_t,\quad \kappa^{m}_1=\frac{e^{\overline{pd}}}{e^{\overline{pd}}+1},\quad \kappa^{m}_0=\log\left(e^{\overline{pd}}+1\right)-\frac{e^{\overline{pd}}}{e^{\overline{pd}}+1}\overline{pd},\quad r^{m}_0=\mu^{m}+\kappa^{m}_0-\overline{pd}\left(1-\kappa^{m}_1\right)\tag{25}
$$

> 状態ベクトルの要素から、$$pd^{m}_t=\overline{pd}+e_{pd}^{\top}z_t$$、$$\Delta d^{m}_t=\mu^{m}+e_{\mathrm{div}}^{\top}z_t$$。$$\kappa^m_1\lt1$$。

**株式プレミアムの条件**

$$
\begin{aligned}
&\underbrace{r^{m}_0+\pi_0-y^{\$}_0(1)+\left[\left(e_{\mathrm{div}}+\kappa^{m}_1e_{pd}+e_\pi\right)^{\top}\Psi-e_{pd}^{\top}-e_{y1}^{\top}\right]z_t+\tfrac12\left(e_{\mathrm{div}}+\kappa^{m}_1e_{pd}+e_\pi\right)^{\top}\Sigma\left(e_{\mathrm{div}}+\kappa^{m}_1e_{pd}+e_\pi\right)}_{\text{VARが示す株式プレミアム}}\\
&\quad=\underbrace{\left(e_{\mathrm{div}}+\kappa^{m}_1e_{pd}+e_\pi\right)^{\top}\Sigma^{1/2}\Lambda_t}_{\text{モデルの株式プレミアム}}
\end{aligned}\tag{26}
$$

> 左辺は $$\mathbb{E}_t\left[r^{m,\$}_{t+1}\right]-y^{\$}_t(1)+\tfrac12\mathbb{V}_t\left[r^{m,\$}_{t+1}\right]$$、右辺は $$-\mathrm{Cov}_t\left(m^{\$}_{t+1},r^{m,\$}_{t+1}\right)$$。この条件が $$\Lambda_0$$ の第6要素と $$\Lambda_1$$ の第6行を決める。

**価格配当比率と配当ストリップ**

$$
PD^{m}_t=\sum_{h=0}^{\infty}PD^{m}_t(h),\qquad \exp\left(\overline{pd}+e_{pd}^{\top}z_t\right)=\sum_{h=0}^{\infty}\exp\left(A^{m}(h)+B^{m}(h)^{\top}z_t\right)\tag{27}
$$

$$
\begin{aligned}
A^{m}(h+1)&=A^{m}(h)+\mu^{m}-y_0(1)+\tfrac12\left(e_{\mathrm{div}}+B^{m}(h)\right)^{\top}\Sigma\left(e_{\mathrm{div}}+B^{m}(h)\right)-\left(e_{\mathrm{div}}+B^{m}(h)\right)^{\top}\Sigma^{1/2}\left(\Lambda_0-\left(\Sigma^{1/2}\right)^{\top}e_\pi\right)\\
B^{m}(h+1)^{\top}&=\left(e_{\mathrm{div}}+e_\pi+B^{m}(h)\right)^{\top}\Psi-e_{y1}^{\top}-\left(e_{\mathrm{div}}+e_\pi+B^{m}(h)\right)^{\top}\Sigma^{1/2}\Lambda_1
\end{aligned}\tag{28}
$$

> 初期条件は $$A^{m}_0=0$$、$$B^{m}_0=\mathbf{0}$$。ストリップの対数価格配当比率は $$pd^{m}_t(h)=\log PD^{m}_t(h)=A^{m}(h)+B^{m}(h)^{\top}z_t$$。式(27)の右の等式は株式の価格配当比率に課す制約で、推定に $$T$$ 個の過剰識別制約を加える。

**配当ストリップのリスクプレミアム**

$$
\mathbb{E}_t\left[r^{d,\$}_{t+1}(h)\right]-y^{\$}_t(1)+\tfrac12\mathbb{V}_t\left[r^{d,\$}_{t+1}(h)\right]=-\mathrm{Cov}_t\left(m^{\$}_{t+1},r^{d,\$}_{t+1}(h)\right)=\left(e_{\mathrm{div}}+e_\pi+B^{m}(h)\right)^{\top}\Sigma^{1/2}\Lambda_t\tag{29}
$$

| 推定の識別 | 内容 |
|---|---|
| 名目短期金利 | 自動的に一致する（リスク価格のパラメータを識別しない） |
| 名目の傾き | 式(21)。$$\Lambda_0$$ の第4要素、$$\Lambda_1$$ の第4行 |
| 満期2・10・20・30年の名目利回り | 各年 $$t=1,\cdots,T$$ で一致させる。$$T\times4$$ 個のモーメントに対し、$$\Lambda_0$$ の第3要素と $$\Lambda_1$$ の第3行の2要素の3個のパラメータ（$$T\times4-3$$ 個の過剰識別）。30年利回りに重みを追加 |
| 満期5・7・10・20・30年の実質利回り | より短い標本（$$T_2$$ 年）で $$T_2\times5$$ 個の過剰識別制約。30年に重みを追加 |
| 株式 | 式(26)が $$\Lambda_0$$ の第6要素と $$\Lambda_1$$ の第6行を決める。式(27)の制約が $$T$$ 個を追加 |

| 記号・項目 | 意味 |
|---|---|
| $$m^{\$}_{t+1}$$ | 対数名目SDF |
| $$\Lambda_t,\ \Lambda_0,\ \Lambda_1$$ | $$N\times1$$ の市場リスク価格、その平均、状態への感応度行列（$$N=10$$） |
| $$A^{\$}(h),\ B^{\$}(h)$$ | 名目ゼロ債の対数価格（利回り）の係数（スカラーとベクトル） |
| $$A(h),\ B(h)$$ | 実質ゼロ債の係数 |
| $$r^{b,\$}_{t+1}(h)$$ | 名目ゼロ債の1期間対数収益率 |
| $$r^{m}_{t+1}$$, $$r^{m,\$}_{t+1}$$ | 株式の実質・名目の対数収益率 |
| $$\kappa^{m}_0,\ \kappa^{m}_1$$ | 線形化の定数 |
| $$PD^{m}_t(h)$$, $$A^{m}(h)$$, $$B^{m}(h)$$ | 配当ストリップの価格配当比率と対数価格配当比率の係数 |
| $$\mu^{m}$$ | 実質配当成長率の無条件平均（$$\mu_d$$ と同じ量） |
| $$\mathbb{V}_t$$ | 条件付き分散 |

### 1.6 政府キャッシュフロー請求権の価格（命題5）

**価格配当比率（命題5・Part a）**

$$
PD^{T}_t=\frac{P^{T}_t}{T_t}=\sum_{h=0}^{\infty}\exp\left(A^{\tau}(h)+B^{\tau}(h)^{\top}z_t\right),\qquad PD^{G}_t=\frac{P^{G}_t}{G_t}=\sum_{h=0}^{\infty}\exp\left(A^{g}(h)+B^{g}(h)^{\top}z_t\right)\tag{30}
$$

**リスクプレミアム（命題5・Part b）**

$$
\begin{aligned}
\mathbb{E}_t\left[r^{T}_{t+1}\right]-y^{\$}_t(1)+\text{Jensen}&=\underbrace{\left(e_{\Delta\tau}+e_x+e_\pi+\kappa^{\tau}_1\bar B_\tau\right)^{\top}}_{\text{税収請求権のリスク量}}\Sigma^{1/2}\left(\Lambda_0+\Lambda_1z_t\right)\\
\mathbb{E}_t\left[r^{G}_{t+1}\right]-y^{\$}_t(1)+\text{Jensen}&=\underbrace{\left(e_{\Delta g}+e_x+e_\pi+\kappa^{g}_1\bar B_g\right)^{\top}}_{\text{歳出請求権のリスク量}}\Sigma^{1/2}\left(\Lambda_0+\Lambda_1z_t\right)
\end{aligned}\tag{31}
$$

> 右辺は請求権の収益率とSDFの共分散。これを大きく左右するのが、すべての税収・歳出ストリップの状態変数への感応度を集約した $$\bar B_\tau$$, $$\bar B_g$$。

**歳出ストリップの再帰式**

$$
\begin{aligned}
A^{g}(h+1)&=-y^{\$}_0(1)+\mu^{g}+x_0+\pi_0+A^{g}(h)+\tfrac12\left(e_{\Delta g}+e_x+e_\pi+B^{g}(h)\right)^{\top}\Sigma\left(e_{\Delta g}+e_x+e_\pi+B^{g}(h)\right)\\
&\quad-\left(e_{\Delta g}+e_x+e_\pi+B^{g}(h)\right)^{\top}\Sigma^{1/2}\Lambda_0\\
B^{g}(h+1)^{\top}&=\left(e_{\Delta g}+e_x+e_\pi+B^{g}(h)\right)^{\top}\Psi-e_{y1}^{\top}-\left(e_{\Delta g}+e_x+e_\pi+B^{g}(h)\right)^{\top}\Sigma^{1/2}\Lambda_1
\end{aligned}\tag{32}
$$

> 税収ストリップは、$$g,\ e_{\Delta g},\ \mu^{g}$$ を $$\tau,\ e_{\Delta\tau},\ \mu^{\tau}$$ に置き換えた同じ形の式で与えられる（原論文は歳出で示し、税収は「同様」とする）。初期条件 $$A^{g}(0)=0$$、$$B^{g}(0)=\mathbf{0}$$ は、式(30)の和が $$h=0$$ から始まること（現在の支払いが比率1）から置く（本記事による補足）。

**歳出請求権の対数収益率の線形化**

$$
r^{g}_{t+1}=\kappa^{g}_0+\Delta\log G_{t+1}+\kappa^{g}_1p^{g}_{t+1}-p^{g}_t,\quad p^{g}_t\equiv\log\frac{P^{G,ex}_t}{G_t}=\log\left(\frac{P^{G}_t}{G_t}-1\right),\quad \kappa^{g}_1=\frac{e^{\overline{pg}}}{e^{\overline{pg}}+1},\quad \kappa^{g}_0=\log\left(e^{\overline{pg}}+1\right)-\frac{e^{\overline{pg}}}{e^{\overline{pg}}+1}\overline{pg}\tag{33}
$$

> 無条件平均は $$r^{g}_0=x_0+\pi_0+\kappa^{g}_0-\overline{pg}\left(1-\kappa^{g}_1\right)$$（式(16)で $$\mu^{g}_0=0$$）。$$\overline{pg}$$ は $$p^{g}_t$$ の長期平均で、式(30)を $$z_t=0$$ で評価して得る。

**価格配当比率のアフィン性と収益率**

$$
p^{g}_t=\overline{pg}+\bar B_g^{\top}z_t,\qquad r^{g}_{t+1}=\underbrace{r^{g}_0}_{\text{平均収益率}}+\underbrace{\left(e_{\Delta g}+e_x+e_\pi+\kappa^{g}_1\bar B_g\right)^{\top}z_{t+1}}_{\text{ショックへの感応}}-\bar B_g^{\top}z_t\tag{34}
$$

**オイラー方程式から得る2つの条件**

$$
\begin{aligned}
r^{g}_0-y^{\$}_0(1)+\text{Jensen}&=\left(e_{\Delta g}+e_x+e_\pi+\kappa^{g}_1\bar B_g\right)^{\top}\Sigma^{1/2}\Lambda_0\\
\left(e_{\Delta g}+e_x+e_\pi+\kappa^{g}_1\bar B_g\right)^{\top}\Psi-\bar B_g^{\top}-e_{y1}^{\top}&=\left(e_{\Delta g}+e_x+e_\pi+\kappa^{g}_1\bar B_g\right)^{\top}\Sigma^{1/2}\Lambda_1
\end{aligned}\tag{35}
$$

> 第1式が無条件のリスクプレミアム、第2式が時間変動部分。Jensen項は $$\tfrac12\left(e_{\Delta g}+e_x+e_\pi+\kappa^{g}_1\bar B_g\right)^{\top}\Sigma\left(e_{\Delta g}+e_x+e_\pi+\kappa^{g}_1\bar B_g\right)$$。

**感応度ベクトルの解**

$$
\bar B_g=\left(I-\kappa^{g}_1\left(\Psi-\Sigma^{1/2}\Lambda_1\right)^{\top}\right)^{-1}\left[\left(\Psi-\Sigma^{1/2}\Lambda_1\right)^{\top}\left(e_{\Delta g}+e_x+e_\pi\right)-e_{y1}\right]\tag{36}
$$

**税収請求権（同じ構造）**

$$
\begin{aligned}
p^{\tau}_t&=\log\frac{P^{T,ex}_t}{T_t}=\log\left(\frac{P^{T}_t}{T_t}-1\right)=\overline{p}^{\tau}+\bar B_\tau^{\top}z_t\\
r^{\tau}_{t+1}&=r^{\tau}_0+\left(e_{\Delta\tau}+e_x+e_\pi+\kappa^{\tau}_1\bar B_\tau\right)^{\top}z_{t+1}-\bar B_\tau^{\top}z_t,\qquad r^{\tau}_0=x_0+\pi_0+\kappa^{\tau}_0-\overline{p}^{\tau}\left(1-\kappa^{\tau}_1\right)\\
r^{\tau}_0-y^{\$}_0(1)+\text{Jensen}&=\left(e_{\Delta\tau}+e_x+e_\pi+\kappa^{\tau}_1\bar B_\tau\right)^{\top}\Sigma^{1/2}\Lambda_0
\end{aligned}\tag{37}
$$

> 原論文付録は $$\bar B_\tau$$ を $$B_\tau$$ と書くが、本文式(15)に合わせて $$\bar B_\tau$$ とする。$$\bar B_\tau$$ は式(36)で $$g\to\tau$$ と置き換えた式で決まる（本記事による補足）。式(37)の右辺の $$r^{\tau}$$ は、本文の $$r^{T}$$ と同じ量（税収請求権の対数収益率）。

**測度可能性制約のアフィン形**

$$
\tau_t\sum_{h=0}^{\infty}PD^{\tau}_t(h)\left(e_{\Delta\tau}^{\top}\Sigma^{1/2}+B^{\tau}(h)^{\top}\right)-g_t\sum_{h=0}^{\infty}PD^{g}_t(h)\left(e_{\Delta g}^{\top}\Sigma^{1/2}+B^{g}(h)^{\top}\right)=\sum_{h=0}^{H}\frac{Q_{t-1,h+1}}{GDP_t}P^{\$}_t(h)B^{\$}(h)^{\top}\tag{38}
$$

> 式(12)をアフィン構造で書き直した結果として、原論文付録Fが示す式（導出は原論文に示されておらず、本記事も補わない）。$$PD^{\tau}_t(h)=\exp\left(A^{\tau}(h)+B^{\tau}(h)^{\top}z_t\right)$$ は税収ストリップの価格配当比率、$$PD^{g}_t(h)$$ も同様。両辺をGDPで割っている。1期のリスクフリー債だけのときは右辺が0（式(13)の特殊ケース）。左辺は8変数のベクトルで、各成分は「その状態変数が変化したときの債務価値の変化」と読める。

| 記号・項目 | 意味 |
|---|---|
| $$PD^{T}_t,\ PD^{G}_t$$ | 税収・歳出請求権の（今期を含む）価格配当比率 |
| $$A^{\tau}(h),\ B^{\tau}(h),\ A^{g}(h),\ B^{g}(h)$$ | 税収・歳出ストリップの対数価格配当比率の係数 |
| $$r^{T}_{t+1},\ r^{G}_{t+1}$$ | 税収・歳出請求権の対数収益率（本文の記法。付録では $$r^{\tau}$$, $$r^{g}$$） |
| $$p^{g}_t,\ p^{\tau}_t$$ | 今期の支払いを除いた（ex-dividend）請求権の対数価格配当比率 |
| $$\overline{pg},\ \overline{p}^{\tau}$$ | その長期平均 |
| $$\kappa^{g}_0,\ \kappa^{g}_1,\ \kappa^{\tau}_0,\ \kappa^{\tau}_1$$ | 線形化の定数（$$\kappa_1\lt1$$） |
| $$\bar B_g,\ \bar B_\tau$$ | 全ストリップの状態変数への感応度を集約したベクトル |
| $$r^{g}_0,\ r^{\tau}_0$$ | 歳出・税収請求権の無条件平均の対数収益率（名目割引率） |
| Jensen | Jensen調整項（対数収益率の分散の半分に相当する補正） |

### 1.7 コンビニエンスイールドとシニョリッジ（命題6）

**コンビニエンスイールドを含むオイラー方程式**

$$
e^{-\lambda_t}=\mathbb{E}_t\left[M_{t+1}\frac{P_{t+1}(h)}{P_t(h+1)}\right]\tag{39}
$$

> $$\lambda_t$$ は、投資家が国債に対して手放してもよいと考える期待収益率（リスク中立測度の下）。全満期で一様と仮定する（A11）。

**価値等式の拡張（命題6）**

$$
\mathbb{E}_t\left[\sum_{j=0}^{\infty}M_{t,t+j}\left(T_{t+j}-G_{t+j}+\underbrace{\left(1-e^{-\lambda_{t+j}}\right)\sum_{h=1}^{H}Q_{t+j,h}P_{t+j}(h)}_{\text{シニョリッジ収入}}\right)\right]=\sum_{h=0}^{H}Q_{t-1,h+1}P_t(h)\tag{40}
$$

> TVCが成り立つとき、債務の価値は将来の余剰と、将来のシニョリッジ収入の割引現在価値の合計に等しい。$$\lambda_t=0$$ なら式(4)に戻る。左辺の $$\sum_{h=1}^{H}Q_{t+j,h}P_{t+j}(h)$$ は $$t+j$$ 期末の（今期支払い後の）債務価値。

**税収の拡張として書き直す**

$$
\mathbb{E}_t\left[\sum_{j=0}^{\infty}M_{t,t+j}T_{t+j}K_{t+j}\right]-\mathbb{E}_t\left[\sum_{j=0}^{\infty}M_{t,t+j}G_{t+j}\right]=\sum_{h=0}^{H}Q_{t-1,h+1}P_t(h),\qquad K_{t+j}=1+\frac{\left(1-e^{-\lambda_{t+j}}\right)\sum_{h=1}^{H}Q_{t+j,h}P_{t+j}(h)}{T_{t+j}}\tag{41}
$$

> 原論文は右辺の和の上限を $$K$$ と書く（最大満期のこと。本記事は $$H$$ に統一）。

**$$K_t$$ を状態に加える**

$$
\tilde z_t=\left[z_t^{\top},\ \Delta\log K_t\right]^{\top},\qquad \Delta\log K_{t+1}=e_k^{\top}\tilde z_{t+1},\qquad \mathbb{E}_t\left[\sum_{j=0}^{\infty}M_{t,t+j}T_{t+j}K_{t+j}\right]=T_tK_t\cdot PD^{k}_t\tag{42}
$$

> $$\log K_t$$ は定常なので $$\Delta\log K_t$$ の無条件平均は0。$$PD^{k}_t$$ は拡張した状態 $$\tilde z_t$$ の関数で、命題5と同じ方法で価格づけする。

**パズルを解消するのに必要なシニョリッジ（反実仮想）**

$$
T_t\tilde K_t\widetilde{PD}^{k}_t-G_tP^{G}_t=\sum_{h=0}^{H}Q_{t-1,h+1}P_t(h)\tag{43}
$$

> VARとリスク価格のパラメータを固定し、$$\log K_t$$ を $$\log\tilde K_t$$ に置き換えて、この式を $$\log\tilde K_t$$ について解く（$$\log\tilde K_t$$ は $$\tilde K_t$$ と $$\widetilde{PD}^{k}_t$$ の両方に入る。このとき $$\tilde z_t$$ の最後の要素は $$\Delta\log\tilde K_t$$）。原論文は左辺の第2項を $$G_tP^{G}_t$$ と印刷するが、式(5)の定義では $$P^{G}_t$$ が既に $$G$$ を含むため、$$G_t$$ は重複と読める（本記事による注）。

| 記号・項目 | 意味 |
|---|---|
| $$\lambda_t$$ | コンビニエンスイールド（全満期で一様） |
| $$\left(1-e^{-\lambda_t}\right)D_t$$ | シニョリッジ収入（コンビニエンスから得る追加収入） |
| $$K_t$$ | 税収に対するシニョリッジの上乗せ倍率 |
| $$\tilde z_t,\ e_k$$ | 拡張した状態ベクトルと、その最後の要素の選択ベクトル |
| $$PD^{k}_t$$ | $$T_tK_t$$ を支払いとする請求権の価格配当比率 |
| $$\tilde K_t,\ \widetilde{PD}^{k}_t$$ | 反実仮想の倍率と、それに対応する価格配当比率 |

### 1.8 緊縮（ペソ事象）の逆算と、その他の代替説明

**緊縮の確率の逆算**

$$
\frac{D_t}{GDP_t}=\tau_tPD^{T}_t-\left(1-\phi_t\right)g_tPD^{G}_t-\phi_t\,\ell\,g_tPD^{G}_t\tag{44}
$$

> 歳出削減を、対数歳出対GDP比のショックの標準偏差の2倍（$$2\times3.93\%=8\%$$ のGDP）で永続的と仮定する。長期平均の歳出対GDP比 $$g_0$$ は、標本平均の11.0%から3%に下がる。事象が起きると $$\log g_t$$ と $$g_0$$ が $$\ell=\log(.08/.11)$$ だけ下がり、それ以降の状態変数は基準VARに従う。事象自体にはリスク価格がつかない（$$\Lambda_t$$ は変えない）。毎期の $$\phi_t$$ について解く。原論文のまま掲げるが、$$g_0$$ が3%に下がるという記述と $$\ell=\log(.08/.11)$$（8%への低下に相当）は整合しない（本記事による注。出版版で確認を推奨）。

**その他の代替説明の定式化**

| 説明 | 定式化・方法 |
|---|---|
| バブル・裁定の限界 | 式(3)の横断性条件の違反として表現。付録Hの「国債に対する逆張り」戦略（全株式を買い、全国債を売る）の純キャッシュフローは、配当から株式の純発行を引き、国債の利払いを引き、国債の純発行を足したもの（1ドルあたり）で、毎年ゼロコストで実行する |
| 政府の他の資産・負債 | 政府資産（GDP比8.8%、2018年）を差し引いた純債務で評価。社会保障局の収支は、2020〜2029年に毎年GDP比0.7%の赤字へ転じる見込み |
| 市場分断 | 株式のリスク要因を落とし、債券の価格だけを再現するSDFで同じ評価を行う（式(26)・(27)を使わない） |
| FRB・外国人の非弾力的な需要 | FRB・外国人への支払いを除いた債券保有者の純支払いで景気順行性を確認（ドル加重収益率と時間加重収益率の差など） |

| 記号・項目 | 意味 |
|---|---|
| $$\phi_t$$ | 緊縮（歳出の恒久的削減）の確率 |
| $$\ell$$ | 緊縮時の対数歳出対GDP比の下方シフト |

### 1.9 主要帰結

**主要式**

$$
\boxed{\begin{aligned}
\text{①}\quad D_t&=\underbrace{P^{T}_t-P^{G}_t}_{\text{収支請求権の価値}}=\mathbb{E}_t\left[\sum_{j=0}^{\infty}M_{t,t+j}S_{t+j}\right]\\
\text{②}\quad D_t&=\underbrace{\sum_{j=0}^{\infty}P_t(j)\,\mathbb{E}_t\left[S_{t+j}\right]}_{\text{リスク中立のPDV}}+\underbrace{\sum_{j=0}^{\infty}\mathrm{Cov}_t\left(M_{t,t+j},T_{t+j}\right)-\sum_{j=0}^{\infty}\mathrm{Cov}_t\left(M_{t,t+j},G_{t+j}\right)}_{\text{共分散項（リスク）}}\\
\text{③}\quad \mathbb{E}_t\left[R^{D}_{t+1}\right]&=\frac{P^{T}_t-T_t}{D_t-S_t}\mathbb{E}_t\left[R^{T}_{t+1}\right]-\frac{P^{G}_t-G_t}{D_t-S_t}\mathbb{E}_t\left[R^{G}_{t+1}\right]\\
\text{④}\quad \lim_{j\to\infty}\mathbb{E}_t\left[r^{G,j}_{t,t+j}\right]&=\lim_{j\to\infty}\mathbb{E}_t\left[r^{T,j}_{t,t+j}\right]=\mathbb{E}_t\left[r^{GDP,\infty}_{t,t+n}\right]\gg y^{\$}_t(\infty)\\
\text{⑤}\quad \mathbb{E}_t\left[r^{T}_{t+1}\right]-y^{\$}_t(1)+\text{Jensen}&=\left(e_{\Delta\tau}+e_x+e_\pi+\kappa^{\tau}_1\bar B_\tau\right)^{\top}\Sigma^{1/2}\left(\Lambda_0+\Lambda_1z_t\right)\\
\mathbb{E}_t\left[r^{G}_{t+1}\right]-y^{\$}_t(1)+\text{Jensen}&=\left(e_{\Delta g}+e_x+e_\pi+\kappa^{g}_1\bar B_g\right)^{\top}\Sigma^{1/2}\left(\Lambda_0+\Lambda_1z_t\right)\\
\text{⑥}\quad \frac{\partial D_t}{\partial z_t}&=\sum_{h=0}^{H}Q_{t-1,h+1}\frac{\partial P_t(h)}{\partial z_t}=\frac{\partial P^{T}_t}{\partial z_t}-\frac{\partial P^{G}_t}{\partial z_t}
\end{aligned}}\tag{45}
$$

> ①〜⑥は、順に式(4)、(6)、(8)、(10)、(31)、(12)のまとめ。

**主要式の読み方**

**ひと目で言うと**：国債の市場価値は、無裁定の下では「税収請求権の価値−歳出請求権の価値」に等しい（①）。税収は不況で落ち、歳出は不況で増えるので、この請求権はリスクが高く、割引率はリスクフリー金利より高い（②③⑤）。長期にはどちらもGDPと共和分するため、割引率は長期債利回りを大きく上回る（④）。その結果、収支請求権の価値は国債の市場価値を大きく下回り、これが「価値パズル」である。リスクフリー債だけを発行する場合には、請求権の価値が状態に反応しないという制約（⑥）も満たさない。

**① 価値等式**

$$
D_t=P^{T}_t-P^{G}_t=\mathbb{E}_t\left[\sum_{j=0}^{\infty}M_{t,t+j}S_{t+j}\right]
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$D_t$$ | 国債ポートフォリオの市場価値 | 観察できる左辺。債券1本ずつではなく全債務を束ねた価値（式(4)） |
| $$P^{T}_t$$ | 税収請求権の価値 | 将来の全税収をSDFで割り引いた価値。税収が景気順行的でリスクが高く、価値は低め（式(5)） |
| $$P^{G}_t$$ | 歳出請求権の価値 | 歳出が景気逆行的で安全に近く、価値は高め（式(5)） |
| $$M_{t,t+j}$$ | 累積SDF | 割引率にリスクが入る。リスクフリー金利ではない（式(2)） |
| 横断性条件 | 遠い将来の債務価値の割引値が0 | 成り立たないとバブルを許し、等式が崩れる（式(3)） |

**意味**：国債の市場価値は、将来の基礎的収支を（リスク込みの）SDFで割り引いた価値と等しくなければならない。

**結論へのつながり**：論文の出発点であり、データで国債の価値が収支請求権の価値を上回ることが「価値パズル」の定義になる（式(4)、(5)）。

**② 共分散分解**

$$
D_t=\sum_{j=0}^{\infty}P_t(j)\,\mathbb{E}_t\left[S_{t+j}\right]+\sum_{j=0}^{\infty}\mathrm{Cov}_t\left(M_{t,t+j},T_{t+j}\right)-\sum_{j=0}^{\infty}\mathrm{Cov}_t\left(M_{t,t+j},G_{t+j}\right)
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$\sum_{j}P_t(j)\mathbb{E}_t\left[S_{t+j}\right]$$ | リスク中立のPDV | リスクフリーの債券価格で期待余剰を割り引いた値。SDFが一定なら、これだけが残る（式(6)）。標本の平均基礎的収支がほぼ0のため、ほぼ0 |
| $$\sum_{j}\mathrm{Cov}_t\left(M_{t,t+j},T_{t+j}\right)$$ | 税収の共分散項 | 税収が好況（$$M$$ 低）で高いと負。債務余力を下げる |
| $$-\sum_{j}\mathrm{Cov}_t\left(M_{t,t+j},G_{t+j}\right)$$ | 歳出の共分散項 | 歳出が不況（$$M$$ 高）で高いと、この項は負の符号がつく前の共分散が正、全体としては負の寄与。両方が成り立つと2項の和は負 |

**意味**：債務を支える力は、期待余剰のリスク中立の価値から、景気循環との共分散（リスク）の分だけ減る。

**結論へのつながり**：リスク中立の第1項がほぼ0なので、GDP比287%の乖離は、すべて共分散項（税収と歳出のリスクの違い）から生じる（式(6)）。

**③ リスクプレミアム等価**

$$
\mathbb{E}_t\left[R^{D}_{t+1}\right]=\frac{P^{T}_t-T_t}{D_t-S_t}\mathbb{E}_t\left[R^{T}_{t+1}\right]-\frac{P^{G}_t-G_t}{D_t-S_t}\mathbb{E}_t\left[R^{G}_{t+1}\right]
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$\mathbb{E}_t\left[R^{D}_{t+1}\right]$$ | 国債ポートフォリオの期待収益率 | 観察される収益率の対応物。標本で超過収益は平均1.11%（式(7)） |
| $$\mathbb{E}_t\left[R^{T}_{t+1}\right]$$ | 税収請求権の期待収益率 | 税収が景気順行的で、プレミアムが高い（式(31)） |
| $$\mathbb{E}_t\left[R^{G}_{t+1}\right]$$ | 歳出請求権の期待収益率 | 歳出が景気逆行的で、プレミアムが低いか負（式(31)） |
| 重み | $$\left(P^{T}_t-T_t\right)/\left(D_t-S_t\right)$$ など | 国債は税収請求権を買い、歳出請求権を売る位置。重みの差は $$D_t-S_t$$ に等しい（式(8)） |

**意味**：国債の割引率は、税収請求権の割引率から歳出請求権の割引率を（重み付きで）引いたもの。

**結論へのつながり**：税収の方が歳出より危険なら、国債の期待収益は両請求権のどちらよりも高くなるべきだが、観察される超過収益は低すぎる。これが「リスクプレミアム・パズル」（式(8)、(10)）。

**④ 長期の割引率**

$$
\lim_{j\to\infty}\mathbb{E}_t\left[r^{G,j}_{t,t+j}\right]=\lim_{j\to\infty}\mathbb{E}_t\left[r^{T,j}_{t,t+j}\right]=\mathbb{E}_t\left[r^{GDP,\infty}_{t,t+n}\right]\gg y^{\$}_t(\infty)
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$\lim\mathbb{E}_t\left[r^{G,j}_{t,t+j}\right]$$ | 長期歳出ストリップの期待対数収益率 | 歳出対GDP比が定常なら、GDPストリップと同じに収束（式(10)） |
| $$\lim\mathbb{E}_t\left[r^{T,j}_{t,t+j}\right]$$ | 長期税収ストリップの期待対数収益率 | 同上 |
| $$\mathbb{E}_t\left[r^{GDP,\infty}_{t,t+n}\right]$$ | 長期GDPストリップの期待対数収益率 | レバレッジのない株式に近い。SDFに大きな永続成分があると高い |
| $$y^{\$}_t(\infty)$$ | 無限満期の名目国債利回り | 共和分がなければ割引率はこの値になる（式(9)）。外すと歳出・税収の割引率が過小評価される |

**意味**：税収・歳出は長期にGDPと同じリスクを負い、その割引率は長期債の利回りではなく、GDP（株式に近い資産）の期待収益に近い。

**結論へのつながり**：長期の収支請求権をリスクフリー曲線で割り引くという従来の方法は不適切で、国債の価値に対して収支請求権の価値が小さくなる（式(9)、(10)）。

**⑤ 税収・歳出請求権のリスクプレミアム**

$$
\mathbb{E}_t\left[r^{T}_{t+1}\right]-y^{\$}_t(1)+\text{Jensen}=\left(e_{\Delta\tau}+e_x+e_\pi+\kappa^{\tau}_1\bar B_\tau\right)^{\top}\Sigma^{1/2}\left(\Lambda_0+\Lambda_1z_t\right)
$$

$$
\mathbb{E}_t\left[r^{G}_{t+1}\right]-y^{\$}_t(1)+\text{Jensen}=\left(e_{\Delta g}+e_x+e_\pi+\kappa^{g}_1\bar B_g\right)^{\top}\Sigma^{1/2}\left(\Lambda_0+\Lambda_1z_t\right)
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$e_{\Delta\tau}+e_x+e_\pi$$ | 名目税収成長率のショック感応度 | 式(16)から。対GDP比の成長、実質GDP成長、インフレの3つに分解される |
| $$\kappa^{\tau}_1\bar B_\tau$$ | 全ストリップの長期感応度 | 価格配当比率を通じた将来キャッシュフロー全体への感応度（式(36)、(37)） |
| $$\Sigma^{1/2}$$ | 構造ショックの負荷 | 状態ショックの相関を表す。税収ショックとGDPショックが正相関で、歳出は負相関 |
| $$\Lambda_0+\Lambda_1z_t$$ | 市場リスク価格 | 時間変動する（式(18)）。景気後退期に高まる |

**意味**：請求権のリスクプレミアムは、その収益率がSDFのショックとどれだけ共分散するか（リスク量×リスク価格）で決まる。

**結論へのつながり**：税収請求権のプレミアムが高く、歳出請求権のプレミアムが低い（5年満期の平均で $$0.21\%$$ 対 $$-1.83\%$$）。共和分を外すと、税収が5.86%、歳出が$$-1.89\%$$ と開き、収束しない（式(31)）。

**⑥ 測度可能性制約**

$$
\frac{\partial D_t}{\partial z_t}=\sum_{h=0}^{H}Q_{t-1,h+1}\frac{\partial P_t(h)}{\partial z_t}=\frac{\partial P^{T}_t}{\partial z_t}-\frac{\partial P^{G}_t}{\partial z_t}
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$\partial D_t/\partial z_t$$ | 債務価値の状態への反応 | 債券ポートフォリオの価格が状態に反応する度合い |
| $$Q_{t-1,h+1}\,\partial P_t(h)/\partial z_t$$ | 各満期の債券の反応 | 1期債（$$h=0$$）の価格は一定で反応が0（式(13)の根拠） |
| $$\partial P^{T}_t/\partial z_t-\partial P^{G}_t/\partial z_t$$ | 収支請求権の価値の反応 | 状態変数（GDPなど）の変化で収支請求権の価値は大きく動く |

**意味**：債務の価値は、収支請求権の価値と同じだけ、すべての状態変数に反応しなければならない。

**結論へのつながり**：リスクフリーの1期債だけなら右辺が0でなければならないが、データでは大幅に違反する（GDPと同程度の大きさ）。国債の価値が財政ニュースに反応しなさすぎる、という「過度な平滑性」を示す（式(12)、(13)、(38)）。

**主要式のつながり**

```
予算制約 (1) ──┐
横断性条件 (3) ─┴─▶ ① 価値等式 (4)(5) ─────▶ ② 共分散分解 (6)
                        │                          （乖離はすべて共分散項から）
                        ├─▶ ③ リスクプレミアム等価 (8) ─┐
                        │                                 ├─▶ 国債の期待収益は高いはず
共和分 (15)(17) ───────▶ ④ 長期の割引率 (10) ───────────┘    （観察は1.11%：リスクプレミアム・パズル）
                        │
VAR (14) + SDF (18) ───▶ ⑤ 税収・歳出請求権のプレミアム (31) ─▶ PD比 (30) ─▶ 収支請求権の価値 P^T − P^G
                        │                                         （国債価値 D_t を大幅に下回る：価値パズル）
                        └─▶ ⑥ 測度可能性 (12)(13)(38) ─▶ 1期債では大幅に違反
```

**比較静学・特殊ケース**

| 変化 | 結果 | 符号・式 |
|---|---|---|
| SDFが一定（リスク中立） | 共分散項が消え、$$D_t$$ はリスク中立のPDVだけになる | 式(6) |
| 税収・歳出の期待収益率が同じ | 国債・税収・歳出のリスクプレミアムが一致 | 式(8) |
| 税収請求権の方がリスキー | 国債のプレミアムは、税収・歳出請求権のどちらよりも高い | 式(8)、(10) |
| 共和分を課す（$$(1,-1)$$） | 税収・歳出・GDPの長期割引率が収束し、国債のリスクが低下 | 式(10) |
| 共和分を外す | 歳出請求権は安全に、税収請求権は危険になる（5.86%対$$-1.89\%$$）。長期のプレミアムが収束しない | 式(10)との対比 |
| コンビニエンスイールド $$\lambda$$ の上昇 | シニョリッジ収入は増えるが、安全金利も上がり割引率が上がるため、現在価値はほぼ不変 | 式(40)、(41) |
| 緊縮の確率 $$\phi_t$$ の逆算 | 平均25.8%、標本末期で約60%が必要 | 式(44) |
| 税収を景気逆行的にする（税率を逆循環に） | 税収請求権が安全になり、国債のリスクと期待収益が下がる。現実の税制とは逆 | 式(8) |

**主要な数値（2020年4月28日付ドラフト、1947〜2019年の標本）**

| 量 | 値 |
|---|---|
| 国債の市場価値 $$D_t/GDP_t$$ の平均 | 0.38 |
| 収支請求権の価値 $$\left(P^{T}_t-P^{G}_t\right)/GDP_t$$ の平均 | $$-2.49$$ |
| 乖離（価値パズル） | 平均で2.87（GDP比287%）。直近10年で急拡大 |
| 価格配当比率 $$PD^{T}$$、$$PD^{G}$$ の平均 | 103.01、125.54 |
| 平均の名目割引率 $$r^{\tau}_0$$、$$r^{g}_0$$ | 7.20%、7.03%（名目GDP成長率 $$x_0+\pi_0=6.2\%$$、1年名目金利 $$y^{\$}_0(1)=4.5\%$$ より高い） |
| 5年満期の平均リスクプレミアム（税収・歳出） | 0.21%、$$-1.83\%$$ |
| 国債ポートフォリオの超過収益 $$R^{D}-R^{f}$$ の平均 | 1.11%（平均デュレーション3.62年） |
| 平均のコンビニエンスイールド | 0.60%（シニョリッジ収入はGDP比0.20%、その現在価値はGDP比15.50%） |
| 乖離を解消するのに必要なシニョリッジ | 税収の24.16%（直近20年は47.86%超）。実際は1.90% |
| 緊縮の確率 | 平均25.8%、標本末期で約60% |

> 数値は版により異なる。2019年12月版のNBER Working Paper（No. 26583）の概要には、乖離が平均でGDP比192%と書かれている（Web検索で確認）。
