---
layout: post
title: "Fama (1970) \"Efficient Capital Markets: A Review of Theory and Empirical Work\"、The Journal of Finance: 数理モデル"
date: 2026-11-06 00:00:00 +0900
categories: [金融理論, 市場の効率性]
math: true
---

{% raw %}
# Fama (1970) "Efficient Capital Markets: A Review of Theory and Empirical Work"、The Journal of Finance: 数理モデル
### 期待収益（フェアゲーム）モデルとその特殊ケース・検定モデルの数理早見表

---

## 目次

- [0. 論文の紹介](#sec0)
- [1. 数理モデル](#sec1)
- [2. 説明できる現象](#sec2)
- [3. モデルが整理している点](#sec3)
- [4. 対象外の現象](#sec4)
- [5. 主要文献・関連論文](#sec5)
- [付録：導出手順](#appendix)

---

## 0. 論文の紹介 {#sec0}

**書誌**：Eugene F. Fama, "Efficient Capital Markets: A Review of Theory and Empirical Work," *The Journal of Finance*, Vol. 25, No. 2 (May 1970), pp. 383–417.（シカゴ大学。Econometric Society との Joint Session 論文）

**論文の内容**：効率的市場（価格が利用可能な情報を「完全に反映」する市場）に関する理論と実証研究のレビュー論文です。「完全に反映」という定義のままでは検証可能な含意がないため、まず市場均衡の条件を期待収益で表す「期待収益（フェアゲーム）モデル」として定式化し、その特殊ケースとして劣マルチンゲール、ランダムウォークを位置づけます。実証は、情報集合の広がりに応じて弱形式・半強形式・強形式の順に整理されます。結論は、強形式に少数の例外（取引所のスペシャリスト、企業内部者）があるものの、効率的市場モデルは概ね成り立つ、というものです。

**本記事の位置づけ**：この記事は、この論文の背景にある数理モデルについての記事です。論文の理論部（II節）の式と、実証部（III節）が検定の土台に使う統計モデル・均衡モデル（系列共分散、国債の期待収益、Sharpe–Lintner モデル、市場モデル、残差分析、投資信託の評価基準）の式を、簡易化せず原文のまま整理しました。実証結果の数値は、モデルの主要帰結の確認に必要な範囲にとどめます。

**式番号の対応**：本記事は式番号を通し番号で付け直しています。原論文との対応は次のとおりです。

| 本記事 | 原論文 | 本記事 | 原論文 | 本記事 | 原論文 |
|---|---|---|---|---|---|
| (1)–(5) | (1)–(5) | (20) | (10) | (28) | (14) |
| (9) | (6) | (24) | (11) | (29) | (15) |
| (10) | (7) | (26) | (12) | (30) | (16) |
| (11) | (8) | (27) | (13) | (31) | (17) |
| (15) | (9) | (36) | (18) | (37) | (19) |

上記以外の式は、原論文では番号なしの式または脚注の式です。

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間**

n 種類の証券 $$j=1,\ldots,n$$ が、離散時点 $$t$$ で取引されます。$$p_{jt}$$ は証券 $$j$$ の時点 $$t$$ の価格、$$p_{j,t+1}$$ は時点 $$t+1$$ の価格（途中の現金収入は再投資したものとして扱う）です。チルダ（$$\tilde{\ }$$）は、時点 $$t$$ で確率変数であることを表します。

**情報集合 $$\Phi_t$$**

$$\Phi_t$$ は、時点 $$t$$ の価格に「完全に反映されている」と想定する情報の集合を表す一般記号です。どの情報を入れるかで、検定の種類が決まります。

**H1　市場均衡の条件は期待収益で記述できる**

均衡期待収益は、$$\Phi_t$$ を条件とする「リスク」の関数と考えます。理論ごとに違うのは、リスクの定義だけです。外すと式(1)が使えず、検証可能な含意が出ません。論文は、期待値が分布の要約指標の一つにすぎず、検定結果はこの仮定の妥当性と市場の効率性の同時仮説に依存すると明記しています。

**H2　$$\Phi_t$$ は均衡期待収益の形成に完全に利用される**

式(1)が条件付き期待値の形をしていることが、この仮定を表します。フェアゲームの性質は、H1・H2 の「帰結」であり、モデルの定義そのものではありません（原論文脚注2）。

**情報集合の三区分**（記号は本記事で補った）

$$\Phi_t^{\text{weak}}\subset\Phi_t^{\text{semi}}\subset\Phi_t^{\text{strong}}$$

- 弱形式：過去の価格（収益）の履歴のみ。$$\Phi_t^{\text{weak}}=\{r_{j,t},r_{j,t-1},\ldots\}$$
- 半強形式：明白に公開されている情報（株式分割、決算発表など）を含む。
- 強形式：特定の投資家・集団が独占的に持つ情報を含む、利用可能なすべての情報。

**効率性の十分条件（必要条件ではない）**

(i) 証券取引に取引費用がない、(ii) 利用可能な情報が全参加者に無費用で入手できる、(iii) 現在の情報が現在価格と将来価格分布に持つ含意について全員が一致している。この3つがそろえば効率的です。ただし十分条件にすぎず、一部が崩れても直ちに非効率にはなりません。

**分散の存在**

式(24)は分散・共分散を使います。原論文は、無限分散の安定分布への拡張が Fama の別報告 [12] にあると言及するだけで、式は示していません。

### 1.1 期待収益（フェアゲーム）モデル

**期待収益モデル**

$$
\underbrace{E(\tilde p_{j,t+1}\mid\Phi_t)}_{\text{期待将来価格}}=\bigl[1+\underbrace{E(\tilde r_{j,t+1}\mid\Phi_t)}_{\text{均衡期待収益}}\bigr]\underbrace{p_{jt}}_{\text{現在価格}}\tag{1}
$$

> 市場均衡の条件を期待収益で表した一般形。期待収益の中身（リスクの定義）は個別の理論が与える。

**超過市場価値とフェアゲーム**

$$
\underbrace{x_{j,t+1}}_{\text{超過市場価値}}=\underbrace{p_{j,t+1}}_{\text{観測価格}}-\underbrace{E(p_{j,t+1}\mid\Phi_t)}_{\text{予想価格}}\tag{2}
$$

$$
\underbrace{E(\tilde x_{j,t+1}\mid\Phi_t)=0}_{\text{フェアゲーム}}\tag{3}
$$

$$
\underbrace{z_{j,t+1}}_{\text{超過収益}}=\underbrace{r_{j,t+1}}_{\text{観測収益}}-\underbrace{E(\tilde r_{j,t+1}\mid\Phi_t)}_{\text{予想収益}}\tag{4}
$$

$$
\underbrace{E(\tilde z_{j,t+1}\mid\Phi_t)=0}_{\text{フェアゲーム}}\tag{5}
$$

> 系列 $$\{x_{jt}\}$$、$$\{z_{jt}\}$$ は、情報系列 $$\{\Phi_t\}$$ に関してフェアゲームである（定義）。

**取引システムと期待超過価値**

$$
\alpha(\Phi_t)=\bigl[\underbrace{\alpha_1(\Phi_t)}_{\text{証券1への投資額}},\ \alpha_2(\Phi_t),\ \ldots,\ \alpha_n(\Phi_t)\bigr]\tag{6}
$$

$$
V_{t+1}=\sum_{j=1}^{n}\underbrace{\alpha_j(\Phi_t)}_{\text{投資額}}\bigl[\underbrace{r_{j,t+1}-E(\tilde r_{j,t+1}\mid\Phi_t)}_{\text{超過収益}}\bigr]\tag{7}
$$

$$
E(\tilde V_{t+1}\mid\Phi_t)=\sum_{j=1}^{n}\alpha_j(\Phi_t)\underbrace{E(\tilde z_{j,t+1}\mid\Phi_t)}_{=0}=\underbrace{0}_{\text{期待超過価値ゼロ}}\tag{8}
$$

> $$\Phi_t$$ だけに基づく取引システムは、均衡期待利潤を超える期待利潤を持てない。これが検証可能な含意。

| 記号・項目 | 意味 |
|---|---|
| $$E(\cdot\mid\Phi_t)$$ | 情報 $$\Phi_t$$ を条件とする期待値 |
| $$p_{jt}$$, $$p_{j,t+1}$$ | 証券 $$j$$ の時点 $$t$$、$$t+1$$ の価格 |
| $$r_{j,t+1}$$ | 1期間収益率 $$(p_{j,t+1}-p_{jt})/p_{jt}$$ |
| $$\Phi_t$$ | 時点 $$t$$ の価格に完全に反映されている情報の集合 |
| $$x_{j,t+1}$$ | 超過市場価値（観測価格と予想価格の差） |
| $$z_{j,t+1}$$ | 均衡期待収益を超える超過収益 |
| $$\alpha_j(\Phi_t)$$ | $$\Phi_t$$ に基づく取引システムが、時点 $$t$$ に証券 $$j$$ へ投じる資金額 |
| $$V_{t+1}$$ | 取引システムが時点 $$t+1$$ に生む超過市場価値の合計 |
| $$n$$ | 利用可能な証券の数 |

### 1.2 劣マルチンゲールモデル

**劣マルチンゲール**

$$
\underbrace{E(\tilde p_{j,t+1}\mid\Phi_t)}_{\text{期待将来価格}}\ \ge\ \underbrace{p_{jt}}_{\text{現在価格}}\qquad\text{すなわち}\qquad\underbrace{E(\tilde r_{j,t+1}\mid\Phi_t)}_{\text{期待収益}}\ \ge\ 0\tag{9}
$$

> すべての $$t$$ と $$\Phi_t$$ について成り立つと仮定する。等号なら価格はマルチンゲール（期待収益・期待価格変化がゼロ）。2つの表現の同値は $$p_{jt}>0$$ を使う（補足）。
> 含意：「1証券と現金」の機械的売買ルール（証券を保有、空売り、現金保有のどれかを $$\Phi_t$$ で決める）は、期間中ずっと買持ちする方針を期待利潤で上回れない。
> 注意：一般の期待収益モデルでは、現金保有（収益ゼロ）が証券保有より高い期待収益になり得る（均衡期待収益が負の場合。原論文脚注3）。

| 記号・項目 | 意味 |
|---|---|
| 劣マルチンゲール | 期待将来価格が現在価格以上である価格系列 |
| マルチンゲール | (9) が等号で成り立つ価格系列 |
| 1証券と現金のルール | 個別証券について、保有・空売り・現金保有を決める売買ルール |

### 1.3 ランダムウォークモデル

**収益分布の不変性**

$$
\underbrace{f(r_{j,t+1}\mid\Phi_t)}_{\text{条件付き分布}}=\underbrace{f(r_{j,t+1})}_{\text{周辺分布}}\tag{10}
$$

> 逐次の収益が独立で、同一分布に従う。密度関数 $$f$$ はすべての $$t$$ で同一。

**期待収益が一定の場合（(1)に制限を課す）**

$$
\underbrace{E(\tilde r_{j,t+1}\mid\Phi_t)}_{\text{条件付き期待収益}}=\underbrace{E(\tilde r_{j,t+1})}_{\text{無条件期待収益}}\tag{11}
$$

> (11) は平均が $$\Phi_t$$ に独立であることだけを述べる。(10) は分布全体が $$\Phi_t$$ に独立であることを述べる。ランダムウォークは、フェアゲームモデルに収益分布の時間不変性という環境の仮定を加えた特殊ケース。
> 用語：厳密には、価格変化が独立同一分布のとき「ドリフト付きランダムウォーク」（期待価格変化が非ゼロでもよい）。収益が独立同一分布なら、価格変化の分布は価格水準に依存する（原論文脚注4）。
> ランダムウォーク文献では $$\Phi_t$$ は過去の収益履歴 $$r_{j,t},r_{j,t-1},\ldots$$ のみ。過去情報が無価値という主張ではなく、過去収益の順序が将来分布の評価に無関係という主張（原論文脚注5）。

| 記号・項目 | 意味 |
|---|---|
| $$f(\cdot)$$ | 1期間収益の密度関数 |
| $$f(r_{j,t+1}\mid\Phi_t)$$ | $$\Phi_t$$ を条件とする収益の密度関数 |

### 1.4 系列共分散と非線形従属

**フェアゲーム変数の系列共分散**

$$
E(\tilde x_{t+\tau}\tilde x_t)=\int_{x_t}x_t\,E(\tilde x_{t+\tau}\mid x_t)\,f(x_t)\,dx_t\tag{12}
$$

$$
\underbrace{E(\tilde x_{t+\tau}\mid x_t)=0}_{\text{フェアゲームの帰結}}\tag{13}
$$

> $$x_t$$ がフェアゲームなら、全ラグで系列共分散はゼロ。すなわちフェアゲーム変数の観測値は線形独立。

**部分情報集合でもフェアゲーム**

$$\Phi_t=(\Phi'_t,\Phi''_t)$$ とする。

$$
E(\tilde x_{t+1}\mid\Phi'_t)=\int_{\Phi''_t}\int_{x_{t+1}}x_{t+1}\,dF(x_{t+1},\Phi''_t\mid\Phi'_t)=\int_{\Phi''_t}\Bigl[\underbrace{\int_{x_{t+1}}x_{t+1}\,dF(x_{t+1}\mid\Phi'_t,\Phi''_t)}_{=E(\tilde x_{t+1}\mid\Phi_t)=0}\Bigr]dF(\Phi''_t\mid\Phi'_t)=0\tag{14}
$$

> $$\Phi'_t\subset\Phi_t$$ であれば、$$E(\tilde x_{t+1}\mid\Phi_t)=0$$ から $$E(\tilde x_{t+1}\mid\Phi'_t)=0$$ が従う。

**弱形式検定のフェアゲーム変数**

$$
z_{j,t}=r_{j,t}-E(\tilde r_{j,t}\mid r_{j,t-1},r_{j,t-2},\ldots)\tag{15}
$$

$$
\mathrm{cov}(\tilde r_{j,t+1},\tilde r_{jt})=E\bigl([\tilde r_{j,t+1}-E(\tilde r_{j,t+1})][\tilde r_{jt}-E(\tilde r_{jt})]\bigr)=\int_{r_{jt}}[r_{jt}-E(\tilde r_{jt})]\bigl[\underbrace{E(\tilde r_{j,t+1}\mid r_{jt})}_{\text{条件付き期待}}-\underbrace{E(\tilde r_{j,t+1})}_{\text{無条件期待}}\bigr]f(r_{jt})\,dr_{jt}\tag{16}
$$

> (15) がフェアゲームでも、$$E(\tilde r_{j,t+1}\mid r_{jt})=E(\tilde r_{j,t+1})$$ は導かれない。したがって1期間収益の系列共分散がゼロとは限らない。ランダムウォーク文献は期待収益の定常性を仮定するため、この点が顕在化しない。

**非線形従属の反例**

変数 $$x$$ が $$+1$$ か $$-1$$ のいずれかをとる3期間の過程：

| $$x_t$$ | $$x_{t+1}$$ | | $$x_{t+2}$$ |
|---|---|---|---|
| + | + | → | + |
| + | − | → | − |
| − | + | → | − |
| − | − | → | + |

$$
x_{t+2}=\mathrm{sign}(x_t x_{t+1})\tag{17}
$$

各事象が等確率のとき、

$$
E(\tilde x_{t+2}\mid x_{t+1})=E(\tilde x_{t+2}\mid x_t)=E(\tilde x_{t+1}\mid x_t)=E(\tilde x_{t+2})=E(\tilde x_{t+1})=E(\tilde x_t)=0,\qquad E(\tilde x_{t+2}\mid x_{t+1},x_t)\ne 0\tag{18}
$$

$$
\underbrace{E(\tilde x_t\tilde x_{t+1}\cdots\tilde x_{t+\tau})=0}_{\text{フェアゲームなら全ての }\tau\text{ で成立}}\tag{19}
$$

> (18) では対の系列共分散がすべてゼロだが、$$(x_{t+1},x_t)$$ を使えば正の期待利潤の「システム」が作れるのでフェアゲームではない。ゼロの系列共分散はフェアゲームと整合的だが、それを意味しない。
> 補足（原論文脚注11）：1期間収益の水準がマルチンゲール $$E(\tilde r_{j,t+1}\mid r_{jt},r_{j,t-1},\ldots)=r_{jt}$$ なら、逐次収益の共分散は非ゼロ（収益の差分は無相関）。

| 記号・項目 | 意味 |
|---|---|
| $$\tau$$ | ラグ（系列共分散の時間差） |
| $$f(\cdot)$$ | 密度関数 |
| $$F(\cdot\mid\cdot)$$ | 条件付き分布関数（Stieltjes 積分で用いる） |
| $$\Phi'_t,\Phi''_t$$ | $$\Phi_t$$ を2つに分けた部分情報（$$\Phi'_t$$ は $$\Phi_t$$ の部分集合） |
| $$\mathrm{cov}(\cdot,\cdot)$$ | 共分散 |
| $$\mathrm{sign}(\cdot)$$ | 符号関数 |

### 1.5 国債市場での期待収益（期間構造理論）

**フェアゲーム変数**

$$
z_{jt}=r_{jt}-E(\tilde r_{jt}\mid\Phi_{t-1})\tag{20}
$$

**フォワード金利と流動性プレミアム**

$$
r_{jt}=\underbrace{E(\tilde r_{0,t+j-1}\mid\Phi_t)}_{\text{将来スポット金利の期待}}+\underbrace{L_{jt}}_{\text{流動性プレミアム}}\tag{21}
$$

**条件付き期待収益（3つの期間構造理論に共通の形）**

$$
E(\tilde r_{jt}\mid\Phi_{t-1})=\underbrace{r_{j+1,t-1}}_{\text{前期に観測された金利}}+\underbrace{E(\tilde L_{jt}\mid\Phi_{t-1})}_{\text{予想される今期のプレミアム}}-\underbrace{L_{j+1,t-1}}_{\text{前期のプレミアム}}\tag{22}
$$

**純粋期待仮説（$$L$$ がすべてゼロ）**

$$
E(\tilde r_{jt}\mid\Phi_{t-1})=r_{j+1,t-1}\tag{23}
$$

> 3つの理論（Lutz の純粋期待仮説と2つの市場分断仮説。後者の一つが Hicks・Kessel の流動性選好仮説）の違いは流動性プレミアムの値の付け方だけ。流動性選好仮説では、金利変動リスクを負担する見返りとして $$L_{jt}$$ は常に正。$$L_{jt}$$ は一般には正にも負にもなり得る。

| 記号・項目 | 意味 |
|---|---|
| $$r_{jt}$$ | 時点 $$t$$ に期間構造から観測される、時点 $$t+j-1$$ 開始の1週間貸付の金利（「フォワード」金利） |
| $$r_{j+1,t-1}$$ | 同じ貸付について時点 $$t-1$$ に観測される金利 |
| $$r_{0,t+j-1}$$ | 時点 $$t+j-1$$ のスポット金利 |
| $$L_{jt}$$ | $$r_{jt}$$ に含まれる流動性プレミアム |

### 1.6 多証券の期待収益モデル（Sharpe–Lintner）

**Sharpe–Lintner の期待収益**

$$
E(\tilde r_{j,t+1}\mid\Phi_t)=\underbrace{r_{f,t+1}}_{\text{無リスク金利}}+\Bigl[\underbrace{\frac{E(\tilde r_{m,t+1}\mid\Phi_t)-r_{f,t+1}}{\sigma(\tilde r_{m,t+1}\mid\Phi_t)}}_{\text{リスクの市場価格}}\Bigr]\underbrace{\frac{\mathrm{cov}(\tilde r_{j,t+1},\tilde r_{m,t+1}\mid\Phi_t)}{\sigma(\tilde r_{m,t+1}\mid\Phi_t)}}_{\text{市場ポートフォリオの標準偏差への寄与}}\tag{24}
$$

**寄与度の合計**（原論文脚注26）

$$
\sum_{j}\frac{\mathrm{cov}(\tilde r_{j,t+1},\tilde r_{m,t+1}\mid\Phi_t)}{\sigma(\tilde r_{m,t+1}\mid\Phi_t)}=\sigma(\tilde r_{m,t+1}\mid\Phi_t)\tag{25}
$$

> 期待収益は、無リスク金利にリスクプレミアム（リスクの市場価格×個別証券のリスク量）を加えたもの。(24) は1期間モデルとして導かれ、多期間への正当化は Fama [11]。
> (25) は原論文の表記どおり。成立には、$$m$$ の構成比（時価総額ウェイト）による加重和が暗黙に必要（本記事での補足）。

| 記号・項目 | 意味 |
|---|---|
| $$r_{f,t+1}$$ | 時点 $$t$$ から $$t+1$$ までの、名目で無リスクな資産の収益率 |
| $$r_{m,t+1}$$ | 市場ポートフォリオ $$m$$（全投資資産を、発行済み総市場価値に比例して保有）の収益率 |
| $$\sigma^2(\tilde r_{m,t+1}\mid\Phi_t)$$ | $$m$$ の収益の分散 |
| $$\sigma(\cdot)$$ | 標準偏差（分散の平方根） |

### 1.7 市場モデルと Sharpe–Lintner モデルの関係

**市場モデル**（Markowitz 提案、FFJR・Blume が検定）

$$
\tilde r_{j,t+1}=\underbrace{\alpha_j}_{\text{切片}}+\underbrace{\beta_j}_{\text{傾き}}\tilde r_{M,t+1}+\underbrace{\tilde u_{j,t+1}}_{\text{攪乱項}}\tag{26}
$$

$$
E(\tilde r_{j,t+1})=\alpha_j+\beta_j E(\tilde r_{M,t+1})\tag{27}
$$

> 検定で確認された性質：(i) 推定値 $$\hat\alpha_j,\hat\beta_j$$ が長期にわたりほぼ一定、(ii) $$r_{M,t+1}$$ と推定残差 $$\hat u_{j,t+1}$$ がほぼ系列独立、(iii) $$\hat u_{j,t+1}$$ が $$r_{M,t+1}$$ と独立。

**Sharpe–Lintner モデルの書き換え**

$$
E(\tilde r_{j,t+1}\mid\Phi_t)=\underbrace{\alpha_j(\Phi_t)}_{\text{切片}}+\underbrace{\beta_j(\Phi_t)}_{\text{ベータ}}E(\tilde r_{m,t+1}\mid\Phi_t)\tag{28}
$$

$$
\alpha_j(\Phi_t)=r_{f,t+1}\bigl[1-\beta_j(\Phi_t)\bigr]\tag{29}
$$

$$
\beta_j(\Phi_t)=\frac{\mathrm{cov}(\tilde r_{j,t+1},\tilde r_{m,t+1}\mid\Phi_t)}{\sigma^2(\tilde r_{m,t+1}\mid\Phi_t)}\tag{30}
$$

**欠けているリンク（切片の整合性）**

$$
\hat\alpha_j\cong r_f\bigl(1-\hat\beta_j\bigr)\tag{31}
$$

**最小二乗推定値と Blume のウェルスレラティブ**（原論文脚注27）

$$
\hat\alpha_j=\bar r_{j,t}-\hat\beta_j\bar r_{M,t}\tag{32}
$$

$$
\hat\alpha'_j=\bar R_{jt}-\hat\beta_j\bar R_{Mt}=1+\bar r_{jt}-\hat\beta_j(1+\bar r_{Mt})=1-\hat\beta_j+\hat\alpha_j\tag{33}
$$

> (28) を (26)・(27) に帰着させる単純化：(30) の共分散と分散が全ての $$t,\Phi_t$$ で同じなら $$\beta_j(\Phi_t)$$ は (26) の $$\beta_j$$ に対応し、その最小二乗推定値は (30) の標本版（標本共分散と標本分散の比）。さらに $$r_{f,t+1}$$ が一定で、$$m$$ の収益が代表的な指数 $$M$$ の収益で近似できれば、(27) と (24) はほぼ等しくなる。
> 月次データでは $$\hat\alpha_j$$ が 0 に近いことは (31) と整合的。ただし (29) からは $$r_f$$ の変動に伴う $$\alpha_j$$ の非定常性が予想される。(26) は収益生成過程の統計的記述にすぎず、他の均衡期待収益モデルとも整合的であり得る。
> Blume は $$R_{jt}=1+r_{jt}$$、$$R_{Mt}=1+r_{Mt}$$ に市場モデルを当てはめる。$$\hat\beta_j$$ は同じ値になり、切片は (33)。ほぼ全証券で $$\hat\alpha'_j+\hat\beta_j\cong 1$$ すなわち $$\hat\alpha_j\cong 0$$。

| 記号・項目 | 意味 |
|---|---|
| $$r_{M,t+1}$$ | 市場指数 $$M$$ の月次収益（$$m$$ の代理変数） |
| $$\alpha_j,\beta_j$$ | 市場モデルの証券ごとのパラメータ |
| $$\tilde u_{j,t+1}$$ | 攪乱項 |
| $$\alpha_j(\Phi_t),\beta_j(\Phi_t)$$ | (28)–(30) で定まる、$$\Phi_t$$ に依存するパラメータ |
| $$\hat\alpha_j,\hat\beta_j$$ | 最小二乗推定値 |
| $$\bar r_{j,t},\bar r_{M,t}$$ | 標本平均収益 |
| $$R_{jt},R_{Mt}$$ | ウェルスレラティブ（$$1+$$ 収益率） |
| $$\hat\alpha'_j$$ | ウェルスレラティブに当てはめた場合の切片推定値 |

### 1.8 公開情報への価格調整の検定（残差分析）

**平均残差と累積平均残差**（FFJR の株式分割研究）

$$
u_m=\sum_{j=1}^{N}\frac{\hat u_{jm}}{N}\tag{34}
$$

$$
U_m=\sum_{k=-29}^{m}u_k\tag{35}
$$

> 分割の効力発生月を月 $$0$$、直後を月 $$1$$、直前を月 $$-1$$ とする。$$u_m$$ は分割株の市場との通常関係からの平均乖離、$$U_m$$ は月 $$-29$$ から月 $$m$$ までの累積乖離。
> $$u_m^+,u_m^-,U_m^+,U_m^-$$ は、分割後の配当が「増加」($$+$$)・「減少」($$-$$) したグループの平均・累積平均残差。「増加」は、分割後1年の配当の変化率が NYSE 全体のそれを上回る場合で、「減少」は逆。標本は 1927–59 年の NYSE の分割 940 件（5対4以上、分割前後 12 か月以上上場）、$$-29\le m\le 30$$。
> 検定の考え方：市場が分割の情報を即座に価格に反映すれば、分割後の $$U_m$$ は動かない。

| 記号・項目 | 意味 |
|---|---|
| $$\hat u_{jm}$$ | 証券 $$j$$ の月 $$m$$（分割月基準）の市場モデル回帰残差 |
| $$N$$ | 分割（証券）の件数 |
| $$u_m$$ | 月 $$m$$ の平均残差 |
| $$U_m$$ | 月 $$-29$$ から月 $$m$$ までの累積平均残差 |
| $$m,k$$ | 分割月基準の月の添字 |

### 1.9 投資信託の評価基準（Jensen）

**事前の期待収益（Sharpe–Lintner、(28)–(30) より）**

$$
E(\tilde r_{j,t+1}\mid\Phi_t)=r_{f,t+1}\bigl[1-\beta_j(\Phi_t)\bigr]+E(\tilde r_{m,t+1}\mid\Phi_t)\beta_j(\Phi_t)\tag{36}
$$

**事後の基準**（市場ポートフォリオの期待収益を実現収益で置き換える）

$$
E(\tilde r_{j,t+1}\mid\Phi_t,r_{m,t+1})=\underbrace{r_{f,t+1}\bigl[1-\beta_j(\Phi_t)\bigr]}_{\text{無リスク部分}}+\underbrace{r_{m,t+1}\beta_j(\Phi_t)}_{\text{市場連動部分}}\tag{37}
$$

> (37) は、$$\Phi_t$$ と $$r_{m,t+1}$$ を所与とする期待収益が、リスク $$\beta_j(\Phi_t)$$ の線形関数であることを示す（原論文の Figure 2、「市場線」）。実現収益とリスクの組が市場線より上なら期待以上、下なら期待以下の成績。

**事後の基準が成り立つ仮定**（原論文脚注31）

$$
\begin{aligned}
\tilde r_{j,t+1}&=r_{f,t+1}\bigl[1-\beta_j(\Phi_t)\bigr]+r_{m,t+1}\beta_j(\Phi_t)+\tilde u_{j,t+1}\\
E(\tilde u_{j,t+1}\mid r_{m,t+1})&=0\quad\text{（全ての }r_{m,t+1}\text{ について）}
\end{aligned}\tag{38}
$$

**市場線：無リスク資産と市場ポートフォリオの混合**

$$
r_{c,t+1}=\underbrace{\alpha}_{\text{無リスク資産の比率}}r_{f,t+1}+\underbrace{(1-\alpha)}_{\text{市場ポートフォリオの比率}}r_{m,t+1}\tag{39}
$$

$$
\beta_c(\Phi_t)=\frac{\mathrm{cov}(\tilde r_{c,t+1},\tilde r_{m,t+1}\mid\Phi_t)}{\sigma^2(\tilde r_{m,t+1}\mid\Phi_t)}=\frac{\mathrm{cov}\bigl((1-\alpha)\tilde r_{m,t+1},\tilde r_{m,t+1}\mid\Phi_t\bigr)}{\sigma^2(\tilde r_{m,t+1}\mid\Phi_t)}=\underbrace{1-\alpha}_{\text{混合比率で決まるリスク}}\tag{40}
$$

> $$1\ge\alpha\ge 0$$ は市場線の $$r_{f,t+1}$$ から $$m$$ までの部分、$$\alpha\lt 0$$ は貸借同一金利で借入れる場合の $$m$$ を超える延長部分。市場線は、価格が全情報を反映すると考える投資家のナイーブな戦略の結果を表し、投資信託の成績はこの戦略との比較で測る。

| 記号・項目 | 意味 |
|---|---|
| $$j$$（この節） | 評価対象の資産・ポートフォリオ（投資信託） |
| $$c$$ | 無リスク資産と $$m$$ の単純な混合ポートフォリオ |
| $$\alpha$$ | $$c$$ における無リスク資産への投資比率 |
| $$\beta_c(\Phi_t)$$ | 混合ポートフォリオのリスク |
| $$r_{c,t+1}$$ | 混合ポートフォリオの収益率 |

### 1.10 主要帰結

**主要式**

$$
\boxed{\begin{aligned}
&\underbrace{E(\tilde p_{j,t+1}\mid\Phi_t)=\bigl[1+E(\tilde r_{j,t+1}\mid\Phi_t)\bigr]p_{jt}}_{\text{期待収益モデル}}\ \Rightarrow\ \underbrace{E(\tilde z_{j,t+1}\mid\Phi_t)=0,\ \ E(\tilde V_{t+1}\mid\Phi_t)=0}_{\text{フェアゲーム}}\\
&\underbrace{E(\tilde r_{j,t+1}\mid\Phi_t)\ge 0}_{\text{劣マルチンゲール}}\ \ \underbrace{f(r_{j,t+1}\mid\Phi_t)=f(r_{j,t+1})}_{\text{ランダムウォーク}}\\
&\underbrace{E(\tilde r_{j,t+1}\mid\Phi_t)=r_{f,t+1}\bigl[1-\beta_j(\Phi_t)\bigr]+E(\tilde r_{m,t+1}\mid\Phi_t)\beta_j(\Phi_t)}_{\text{Sharpe–Lintner モデル}}
\end{aligned}}\tag{41}
$$

**モデル間の関係**

| 関係 | 内容 | 式 |
|---|---|---|
| ランダムウォーク → フェアゲーム | 収益分布が不変なら期待収益は $$\Phi_t$$ に独立で、フェアゲームの特殊ケース | (10), (11) |
| マルチンゲール → 劣マルチンゲール → フェアゲーム | 期待収益ゼロは非負の特殊ケース、非負は一般の期待収益モデルの特殊ケース | (9) |
| フェアゲーム → 線形独立 | $$x_t$$ の系列共分散はゼロ。ただし1期間収益の系列共分散は一般にはゼロでない | (13), (16) |
| 部分情報への遺伝 | $$\Phi_t$$ に関するフェアゲームは、その部分集合 $$\Phi'_t$$ に関してもフェアゲーム | (14) |

**比較静学・特殊ケース**

| 変化 | 結果 | 符号・式 |
|---|---|---|
| 全証券の均衡期待収益をゼロにする | 価格がマルチンゲール | (9) で等号 |
| 期待収益が非負 | 「1証券と現金」ルールは買持ちを上回れない | (9) |
| 期待収益が時間不変 | 平均が $$\Phi_t$$ に独立 | (11) |
| 流動性プレミアムがすべてゼロ | 純粋期待仮説 | (23) |
| 流動性選好（$$L_{jt}\gt 0$$） | $$E(\tilde r_{jt}\mid\Phi_{t-1})$$ に正のプレミアム項 | (22) |
| ベータ $$\beta_j$$ の上昇 | 期待収益は $$E(\tilde r_{m,t+1}\mid\Phi_t)-r_{f,t+1}$$ の割合で増加 | (36) |
| 無リスク資産比率 $$\alpha$$ の上昇 | $$\beta_c=1-\alpha$$ が低下。$$\alpha=1$$ で $$r_f$$、$$\alpha=0$$ で $$m$$、$$\alpha\lt 0$$ で $$\beta_c\gt 1$$ | (39), (40) |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 逐次収益の系列相関がほぼゼロ | フェアゲームは $$x_t$$ の系列共分散がゼロを意味する (13)。ただし1期間収益の系列共分散は一般にゼロでないため、論文はそれを近似として扱う (16) |
| 過去の価格に基づく売買ルール（フィルター等）が買持ちに勝てない | 期待収益が非負なら、$$\Phi_t$$ のみに基づく「1証券と現金」ルールは買持ちを期待利潤で上回れない (9) |
| 日次の大きな変動の後に大きな変動が続く（符号はランダム） | 重要な情報は即座には正確に評価されないが、最初の調整が不偏であれば、期待収益モデル（劣マルチンゲール）は反証されない |
| 取引ごとの価格変化に過剰な反転傾向がある | 指値注文と成行注文の仕組み由来の従属であり、利益の出る取引ルールを生まないので、フェアゲームの反証ではない（ランダムウォークの反証にはなる） |
| 株式分割の価格調整 | 分割は将来配当への信号として織り込まれ、分割月の終わりまでに価格に反映される。累積平均残差は分割後に純粋な上下動をしない |
| 決算発表・大口の売出し・新規発行 | 同じ残差分析で、情報は発表前後の短期間に価格へ反映される（半強形式と整合的） |
| 投資信託の成績が市場線を下回る | (37) の市場線を基準にすると、手数料・費用を差し引く前後のいずれでも、投資信託全体が特別な情報を持つ証拠は得られない |
| 強形式の例外 | スペシャリストが未執行の指値注文という情報を独占して利益を得る。企業内部者が自社情報を独占している |

## 3. モデルが整理している点 {#sec3}

- **効率性の検証は同時仮説**：「価格が情報を完全に反映する」という定義は、均衡期待収益のモデル (1) と組み合わせて初めて検証可能になる。検定結果は、効率性と、期待収益モデルの妥当性の両方に依存する。
- **モデルの階層**：ランダムウォーク ⊂ フェアゲーム、マルチンゲール ⊂ 劣マルチンゲール ⊂ フェアゲームという包含関係で、早期のランダムウォーク文献を一般化し、独立性の仮説と効率性の仮説を切り分ける。
- **情報集合による検定の三区分**：$$\Phi_t$$ に何を入れるか（過去価格のみ、公開情報、独占的情報を含む全情報）で弱形式・半強形式・強形式に分け、効率性がどの情報水準で崩れるかを特定できる。

## 4. 対象外の現象 {#sec4}

- 均衡期待収益を決める「リスク」の定義は、特定の理論を主張しない。Sharpe–Lintner モデルは具体例の一つ。
- 価格水準が「正しい」ことや、価格が情報を即座に完全に反映することは主張しない。強形式は文字どおりには成立しないと明言され、乖離の重要度を測る規範的ベンチマークとして位置づけられる。
- ゼロの系列共分散から線形独立以外の性質（非線形従属がないこと）は導かれない (17)–(19)。
- 取引費用、情報の非対称、投資家間の意見の不一致が非効率の原因になることを断定しない。論文は、それらが非効率の「潜在的な源泉」にとどまると述べる。
- 価格変化の分布形（正規か、非正規の安定分布か）は、このモデルでは特定しない。論文は III 節で実証的に論じるが、ここでは扱わない。
- 1970 年時点までの実証結果の評価は、本記事では扱わない。その後の研究による修正は対象外。

## 5. 主要文献・関連論文 {#sec5}

- **[基礎となった金字塔的論文]** Samuelson, P. A. (1965). Proof that properly anticipated prices fluctuate randomly. *Industrial Management Review*, 6(2), 41–49.
  - **位置づけ**: 先物価格などの適切に予想された価格がランダムに変動することを厳密に示し、効率的市場とフェアゲームの関係を定式化した先駆的論文。本論文が「フェアゲーム」モデルの出発点として明示的に引用する。
- **[基礎となった関連論文]** Mandelbrot, B. (1966). Forecasts of future prices, unbiased markets, and martingale models. *The Journal of Business*, 39(1), 242–255.
  - **位置づけ**: 不偏な市場とマルチンゲールモデルの関係を論じ、期待収益モデルの理論的基礎を Samuelson とともに与えた。
- **[モデルの均衡理論]** Sharpe, W. F. (1964). Capital asset prices: A theory of market equilibrium under conditions of risk. *The Journal of Finance*, 19(3), 425–442.
  - **位置づけ**: 式(24)の Sharpe–Lintner 期待収益モデルの出典。本論文は、完全に展開された唯一の均衡期待収益理論として扱う。
- **[批判的発展]** Grossman, S. J., & Stiglitz, J. E. (1980). On the impossibility of informationally efficient markets. *The American Economic Review*, 70(3), 393–408.
  - **位置づけ**: 情報収集に費用がかかるなら、価格が情報を完全に反映する市場は不可能であることを示した。本論文の「十分条件」の議論に対する代表的な理論的批判。
- **[著者自身による再検討]** Fama, E. F. (1991). Efficient capital markets: II. *The Journal of Finance*, 46(5), 1575–1617.
  - **位置づけ**: 本論文の続編。収益の予測可能性、イベントスタディ、プライベート情報の検定という区分に改め、結合仮説問題を強調してレビューを更新した。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
H1, H2 ──→ (1) 期待収益モデル
             ├─→ (2)(3)(4)(5) フェアゲーム ──→ (6)(7)(8) 取引システム
             ├─→ (9) 劣マルチンゲール（「1証券と現金」ルール）
             └─→ (10)(11) ランダムウォーク
(3) ──→ (12)(13) 系列共分散ゼロ ──→ (14) 部分情報集合
(5) ──→ (15)(16) 弱形式 ──→ (17)(18)(19) 非線形従属の反例
(1)+(20)(21) ──→ (22)(23) 国債の期待収益
(24) ──→ (28)(29)(30) ←─ (26)(27) 市場モデル ──→ (31)(32)(33)
(26) ──→ (34)(35) 残差分析
(28)(29) ──→ (36) ──→ (37) ←─ (38) ──→ (39)(40) 市場線
```

### A.1 使う道具

**T1　繰り返し期待値の法則**

$$\Phi\subset\Phi'$$ のとき、$$E\bigl(E(\tilde Y\mid\Phi')\mid\Phi\bigr)=E(\tilde Y\mid\Phi)$$。$$\Phi$$ を省くと、$$E\bigl(E(\tilde Y\mid\tilde X)\bigr)=E(\tilde Y)$$。

**T2　情報で確定する量の外出し**

$$\Phi_t$$ で確定している量 $$a(\Phi_t)$$ について、$$E\bigl(a(\Phi_t)\tilde Y\mid\Phi_t\bigr)=a(\Phi_t)E(\tilde Y\mid\Phi_t)$$。期待値の線形性も併用する。

**T3　共分散の積分表示**

$$\mathrm{cov}(\tilde X,\tilde Y)=E\bigl([\tilde X-E(\tilde X)][\tilde Y-E(\tilde Y)]\bigr)$$。$$\mathrm{cov}(a,\tilde Y)=0$$（$$a$$ は定数）、$$\mathrm{cov}(a\tilde X,\tilde Y)=a\,\mathrm{cov}(\tilde X,\tilde Y)$$。

**T4　最小二乗の傾きと切片**

単回帰 $$y=\alpha+\beta x+u$$ の推定値は、$$\hat\beta=\widehat{\mathrm{cov}}(x,y)/\widehat{\mathrm{var}}(x)$$、$$\hat\alpha=\bar y-\hat\beta\bar x$$。$$x,y$$ に定数を加えても $$\hat\beta$$ は変わらない。

### A.2 フェアゲームの性質 ((2)–(9))

**Step 1　(3) の導出（T2）**

(2) の両辺に $$E(\cdot\mid\Phi_t)$$ をとる。$$E(p_{j,t+1}\mid\Phi_t)$$ は $$\Phi_t$$ で確定している量なので、T2 により $$E\bigl(E(p_{j,t+1}\mid\Phi_t)\mid\Phi_t\bigr)=E(p_{j,t+1}\mid\Phi_t)$$。

$$E(\tilde x_{j,t+1}\mid\Phi_t)=E(\tilde p_{j,t+1}\mid\Phi_t)-E(\tilde p_{j,t+1}\mid\Phi_t)=0\quad\to\text{式(3)}$$

**Step 2　(5) の導出**

(4) について Step 1 と同じ操作をする。

$$E(\tilde z_{j,t+1}\mid\Phi_t)=E(\tilde r_{j,t+1}\mid\Phi_t)-E(\tilde r_{j,t+1}\mid\Phi_t)=0\quad\to\text{式(5)}$$

**Step 3　(3) と (5) の関係**

(1) と $$r_{j,t+1}=(p_{j,t+1}-p_{jt})/p_{jt}$$ を (2) に代入する。

$$x_{j,t+1}=p_{j,t+1}-\bigl[1+E(\tilde r_{j,t+1}\mid\Phi_t)\bigr]p_{jt}=p_{jt}\bigl[r_{j,t+1}-E(\tilde r_{j,t+1}\mid\Phi_t)\bigr]=p_{jt}\,z_{j,t+1}$$

$$p_{jt}\gt 0$$ は $$\Phi_t$$ で確定しているので、(3) と (5) は同値。

**Step 4　取引システムの期待超過価値（T2）**

$$\alpha_j(\Phi_t)$$ は $$\Phi_t$$ で確定する量。(7) の期待値をとる。

$$E(\tilde V_{t+1}\mid\Phi_t)=\sum_{j=1}^{n}\alpha_j(\Phi_t)E(\tilde z_{j,t+1}\mid\Phi_t)=0\quad\to\text{式(8)}$$

**Step 5　劣マルチンゲールと買持ち**

「1証券と現金」ルールの時点 $$t$$ のポジションを $$s_t(\Phi_t)\in\{1,0,-1\}$$（保有・現金・空売り）とする。期待収益は $$s_t\,E(\tilde r_{j,t+1}\mid\Phi_t)$$。(9) より $$E(\tilde r_{j,t+1}\mid\Phi_t)\ge 0$$ で、$$s_t\le 1$$ なので（非負の数を掛けても不等号の向きは変わらない）：

$$s_t\,E(\tilde r_{j,t+1}\mid\Phi_t)\ \le\ E(\tilde r_{j,t+1}\mid\Phi_t)$$

右辺が買持ち（$$s_t\equiv 1$$）の期待収益。

**確認**

全証券の均衡期待収益がゼロなら、(1) から $$E(\tilde p_{j,t+1}\mid\Phi_t)=p_{jt}$$ で、$$x_{j,t+1}=p_{j,t+1}-p_{jt}$$。価格変化そのものがフェアゲームになる（マルチンゲール）。

| 入力・使う道具 | 内容 |
|---|---|
| (1), (2), (4) | 定義式 |
| T2 | 情報で確定する量の外出し |
| 補足 | $$p_{jt}\gt 0$$ を使用 |

### A.3 系列共分散と反例 ((12)–(19))

**Step 1　(12) の導出（T1）**

$$E(\tilde x_{t+\tau}\tilde x_t)=E\bigl(E(\tilde x_{t+\tau}\tilde x_t\mid x_t)\bigr)=E\bigl(x_t\,E(\tilde x_{t+\tau}\mid x_t)\bigr)=\int_{x_t}x_t\,E(\tilde x_{t+\tau}\mid x_t)\,f(x_t)\,dx_t\quad\to\text{式(12)}$$

**Step 2　部分情報集合のフェアゲーム (14)**

$$\Phi_t=(\Phi'_t,\Phi''_t)$$ とし、同時分布を条件付き分布の積に分解する（Stieltjes 積分の繰り返し積分）。

$$E(\tilde x_{t+1}\mid\Phi'_t)=\int_{\Phi''_t}\Bigl[\int_{x_{t+1}}x_{t+1}\,dF(x_{t+1}\mid\Phi'_t,\Phi''_t)\Bigr]dF(\Phi''_t\mid\Phi'_t)$$

角括弧の中は $$E(\tilde x_{t+1}\mid\Phi_t)$$ で、(3) によりゼロ。したがって全体もゼロ $$\to$$ 式(14)。

**Step 3　(13) の導出**

$$x_t$$ は時点 $$t$$ の情報の一部で、部分集合 $$\Phi'_t=\{x_t\}$$ にあたる。$$\tau=1$$ は Step 2 から直接得られる。$$\tau\ge 2$$ は、情報集合が時間とともに拡大する（$$\Phi_t\subset\Phi_{t+1}$$、補足：原論文は明示せず）ことを使って T1 を繰り返す。

$$E(\tilde x_{t+\tau}\mid\Phi_t)=E\bigl(E(\tilde x_{t+\tau}\mid\Phi_{t+\tau-1})\mid\Phi_t\bigr)=0$$

これと Step 2 から $$E(\tilde x_{t+\tau}\mid x_t)=0\to$$ 式(13)。

**Step 4　系列共分散**

(13) を (12) に代入すると $$E(\tilde x_{t+\tau}\tilde x_t)=0$$。フェアゲーム変数の無条件期待値もゼロ（T1）なので、系列共分散は全ラグでゼロ。

**Step 5　1期間収益の共分散 (16)**

T3 の定義から、

$$\mathrm{cov}(\tilde r_{j,t+1},\tilde r_{jt})=\int_{r_{jt}}[r_{jt}-E(\tilde r_{jt})]\,E\bigl(\tilde r_{j,t+1}-E(\tilde r_{j,t+1})\mid r_{jt}\bigr)f(r_{jt})\,dr_{jt}\quad\to\text{式(16)}$$

(15) は $$z_{j,t}$$ の条件付き期待値がゼロであることを述べるだけで、$$E(\tilde r_{j,t+1}\mid r_{jt})=E(\tilde r_{j,t+1})$$ は導かれない。よって (16) の右辺は一般にゼロにならない。

**Step 6　反例 (17)–(19) の検算**

4つの $$(x_t,x_{t+1})$$ の組が各 $$1/4$$ の確率で、(17) により $$x_{t+2}$$ が決まる。

- $$E(\tilde x_{t+2}\mid x_t=+)=\tfrac12(+1)+\tfrac12(-1)=0$$。$$x_t=-$$ でも同様に 0。
- $$E(\tilde x_{t+2}\mid x_{t+1})$$ と $$E(\tilde x_{t+1}\mid x_t)$$ も同様に 0。
- 対の積：$$E(\tilde x_t\tilde x_{t+2})=E(\tilde x_t^2\tilde x_{t+1})=E(\tilde x_{t+1})=0$$（$$x_t^2=1$$ を使う）。$$E(\tilde x_{t+1}\tilde x_{t+2})=E(\tilde x_t)=0$$、$$E(\tilde x_t\tilde x_{t+1})=0$$。対の系列共分散はすべてゼロ。
- しかし $$(x_t,x_{t+1})=(+,+)$$ のとき $$x_{t+2}=+1$$ なので $$E(\tilde x_{t+2}\mid x_{t+1},x_t)\ne 0\to$$ 式(18)。
- 3つの積：$$E(\tilde x_t\tilde x_{t+1}\tilde x_{t+2})=E(\tilde x_t^2\tilde x_{t+1}^2)=1\ne 0$$。(19) が成り立たないので、フェアゲームではない。

**Step 7　脚注11の例**

$$E(\tilde r_{j,t+1}\mid r_{jt},\ldots)=r_{jt}$$ とし、定常で $$E(\tilde r_{j,t+1})=E(\tilde r_{jt})=\mu$$ とする。(16) より

$$\mathrm{cov}(\tilde r_{j,t+1},\tilde r_{jt})=\int(r_{jt}-\mu)(r_{jt}-\mu)f(r_{jt})\,dr_{jt}=\mathrm{var}(\tilde r_{jt})\gt 0$$

一方、差分 $$\tilde r_{j,t+1}-r_{jt}$$ の条件付き期待値はゼロなので無相関。

**確認**

(17) の過程は、$$x_t$$ が単独ではフェアゲームのように振る舞うが、同時にはフェアゲームでない。ゼロの共分散だけでは検定が不十分であることを示す。

| 入力・使う道具 | 内容 |
|---|---|
| (3), (5) | フェアゲームの定義 |
| T1 | 繰り返し期待値の法則 |
| T3 | 共分散の積分表示 |
| 補足 | 情報集合の拡大 $$\Phi_t\subset\Phi_{t+1}$$ |

### A.4 国債の期待収益 ((20)–(23))

**Step 1　時点 $$t-1$$ の金利に (21) を適用**

時点 $$t-1$$ に観測される、時点 $$(t-1)+(j+1)-1=t+j-1$$ 開始の貸付の金利：

$$r_{j+1,t-1}=E(\tilde r_{0,t+j-1}\mid\Phi_{t-1})+L_{j+1,t-1}$$

**Step 2　時点 $$t$$ の金利に (21) を適用し、$$E(\cdot\mid\Phi_{t-1})$$ をとる**

$$\tilde r_{jt}=E(\tilde r_{0,t+j-1}\mid\Phi_t)+\tilde L_{jt}$$ の両辺に $$E(\cdot\mid\Phi_{t-1})$$ をとり、T1（$$\Phi_{t-1}\subset\Phi_t$$）を使う。

$$E(\tilde r_{jt}\mid\Phi_{t-1})=E(\tilde r_{0,t+j-1}\mid\Phi_{t-1})+E(\tilde L_{jt}\mid\Phi_{t-1})$$

**Step 3　Step 1 を代入**

$$E(\tilde r_{0,t+j-1}\mid\Phi_{t-1})=r_{j+1,t-1}-L_{j+1,t-1}$$ を代入して、

$$E(\tilde r_{jt}\mid\Phi_{t-1})=r_{j+1,t-1}+E(\tilde L_{jt}\mid\Phi_{t-1})-L_{j+1,t-1}\quad\to\text{式(22)}$$

**Step 4　純粋期待仮説**

$$L\equiv 0$$ なら (22) の第2・3項は消える。

$$E(\tilde r_{jt}\mid\Phi_{t-1})=r_{j+1,t-1}\quad\to\text{式(23)}$$

**確認**

流動性選好仮説（$$L\gt 0$$）で、プレミアムが時間不変（$$E(\tilde L_{jt}\mid\Phi_{t-1})=L_{j+1,t-1}$$）なら、(22) は (23) と一致する。

| 入力・使う道具 | 内容 |
|---|---|
| (21) | フォワード金利の分解 |
| T1 | 繰り返し期待値の法則 |

### A.5 Sharpe–Lintner モデルと市場モデル ((24)–(33))

**Step 1　(24) の整理**

リスクの市場価格に、個別証券のリスク量を掛ける。

$$\frac{E(\tilde r_{m,t+1}\mid\Phi_t)-r_{f,t+1}}{\sigma(\tilde r_{m,t+1}\mid\Phi_t)}\cdot\frac{\mathrm{cov}(\tilde r_{j,t+1},\tilde r_{m,t+1}\mid\Phi_t)}{\sigma(\tilde r_{m,t+1}\mid\Phi_t)}=\bigl[E(\tilde r_{m,t+1}\mid\Phi_t)-r_{f,t+1}\bigr]\beta_j(\Phi_t)$$

ここで $$\beta_j(\Phi_t)=\mathrm{cov}/\sigma^2\to$$ 式(30)。

**Step 2　展開（(28)(29)）**

$$E(\tilde r_{j,t+1}\mid\Phi_t)=r_{f,t+1}+\beta_j(\Phi_t)E(\tilde r_{m,t+1}\mid\Phi_t)-\beta_j(\Phi_t)r_{f,t+1}=\underbrace{r_{f,t+1}\bigl[1-\beta_j(\Phi_t)\bigr]}_{\alpha_j(\Phi_t)}+\beta_j(\Phi_t)E(\tilde r_{m,t+1}\mid\Phi_t)$$

$$r_{f,t+1}$$ が $$\Phi_t$$ に含まれる（確定している）ことを使った $$\to$$ 式(28), (29)。

**Step 3　(28) から (27) への帰着**

(30) の共分散・分散が全ての $$t,\Phi_t$$ で同じなら $$\beta_j(\Phi_t)=\beta_j$$（定数）。$$r_{f,t+1}$$ が一定なら $$\alpha_j(\Phi_t)=\alpha_j$$。$$m$$ の収益を指数 $$M$$ の収益で近似する。(26) の期待値をとり、攪乱項の平均がゼロ（補足：標準的な仮定。原論文は「ランダムな攪乱項」とのみ述べる）とすれば、

$$E(\tilde r_{j,t+1})=\alpha_j+\beta_jE(\tilde r_{M,t+1})\quad\to\text{式(27)}$$

**Step 4　最小二乗推定値（T4）**

$$\hat\beta_j=\widehat{\mathrm{cov}}(r_j,r_M)/\widehat{\mathrm{var}}(r_M)$$ は (30) の標本版。切片は $$\hat\alpha_j=\bar r_{j,t}-\hat\beta_j\bar r_{M,t}\to$$ 式(32)。

**Step 5　(31) の導出**

(28) が (27) に帰着するとき、(29) から $$\alpha_j=r_f(1-\beta_j)$$。推定値でも成り立つなら $$\hat\alpha_j\cong r_f(1-\hat\beta_j)\to$$ 式(31)。

**Step 6　Blume のウェルスレラティブ（T4）**

$$R=1+r$$ に回帰しても、$$x,y$$ に定数を加えるだけなので $$\hat\beta_j$$ は不変（T4）。切片は、

$$\hat\alpha'_j=\bar R_{jt}-\hat\beta_j\bar R_{Mt}=1+\bar r_{jt}-\hat\beta_j(1+\bar r_{Mt})=1-\hat\beta_j+(\bar r_{jt}-\hat\beta_j\bar r_{Mt})=1-\hat\beta_j+\hat\alpha_j\quad\to\text{式(33)}$$

したがって $$\hat\alpha'_j+\hat\beta_j\cong 1\Leftrightarrow\hat\alpha_j\cong 0$$。

**Step 7　寄与度の合計 (25)**

市場ポートフォリオのウェイトを $$w_j$$（時価総額比、本記事での補足）とすると、$$\tilde r_m=\sum_j w_j\tilde r_j$$ で、

$$\sum_j w_j\,\mathrm{cov}(\tilde r_j,\tilde r_m\mid\Phi_t)=\mathrm{cov}\Bigl(\sum_j w_j\tilde r_j,\tilde r_m\mid\Phi_t\Bigr)=\sigma^2(\tilde r_m\mid\Phi_t)$$

両辺を $$\sigma(\tilde r_m\mid\Phi_t)$$ で割ると $$\sigma(\tilde r_m\mid\Phi_t)\to$$ 式(25)。

**確認**

$$j=m$$ のとき $$\beta_m=\mathrm{cov}(\tilde r_m,\tilde r_m)/\sigma^2=1$$。(29) から $$\alpha_m=0$$、(28) は $$E(\tilde r_m\mid\Phi_t)=E(\tilde r_m\mid\Phi_t)$$ と一致する。

| 入力・使う道具 | 内容 |
|---|---|
| (24) | Sharpe–Lintner モデル |
| T3, T4 | 共分散、最小二乗 |
| 補足 | 攪乱項の平均ゼロ、時価ウェイト $$w_j$$ |

### A.6 残差分析 ((34)–(35))

**Step 1　定義**

各分割 $$j$$ について、市場モデル (26) の回帰残差 $$\hat u_{jm}$$ を、分割月を基準とした月 $$m$$ で定義する。分割 $$N$$ 件で平均すると (34)。

**Step 2　累積**

月 $$-29$$ から月 $$m$$ まで足し上げると (35)。$$U_m=U_{m-1}+u_m$$（再帰的な関係）。

**Step 3　グループ分け**

$$u_m^+,u_m^-,U_m^+,U_m^-$$ は、分割後の配当が「増加」($$+$$)・「減少」($$-$$) の分割だけで同じ計算をする。

**確認**

全ての残差が 0（市場との通常関係どおり）なら $$U_m\equiv 0$$。$$U_m$$ の傾きが、市場との通常関係からの乖離を表す。

| 入力・使う道具 | 内容 |
|---|---|
| (26) | 市場モデルの残差 |

### A.7 投資信託の評価基準 ((36)–(40))

**Step 1　(36) の導出**

(28) に (29) を代入する。

$$E(\tilde r_{j,t+1}\mid\Phi_t)=r_{f,t+1}\bigl[1-\beta_j(\Phi_t)\bigr]+E(\tilde r_{m,t+1}\mid\Phi_t)\beta_j(\Phi_t)\quad\to\text{式(36)}$$

**Step 2　事後の基準 (37)**

(38) の仮定のもと、$$\Phi_t$$ と $$r_{m,t+1}$$ を所与として期待値をとる。$$r_{f,t+1}$$ と $$\beta_j(\Phi_t)$$ は $$\Phi_t$$ で確定、$$r_{m,t+1}$$ は所与（T2）、攪乱項は $$E(\tilde u_{j,t+1}\mid r_{m,t+1})=0$$（補足：$$\Phi_t$$ も条件に含めて成り立つものとして使う）。

$$E(\tilde r_{j,t+1}\mid\Phi_t,r_{m,t+1})=r_{f,t+1}\bigl[1-\beta_j(\Phi_t)\bigr]+r_{m,t+1}\beta_j(\Phi_t)\quad\to\text{式(37)}$$

**Step 3　混合ポートフォリオのリスク (40)（T3）**

$$r_{f,t+1}$$ は名目で無リスク（確定値）なので $$\mathrm{cov}(\alpha r_{f,t+1},\tilde r_{m,t+1})=0$$（T3）。

$$\mathrm{cov}(\tilde r_{c,t+1},\tilde r_{m,t+1}\mid\Phi_t)=(1-\alpha)\sigma^2(\tilde r_{m,t+1}\mid\Phi_t)\ \Rightarrow\ \beta_c(\Phi_t)=1-\alpha\quad\to\text{式(40)}$$

**Step 4　市場線の方程式**

$$\alpha=1-\beta_c$$ を (39) に代入する。

$$r_{c,t+1}=(1-\beta_c)r_{f,t+1}+\beta_c r_{m,t+1}=r_{f,t+1}+\beta_c\bigl(r_{m,t+1}-r_{f,t+1}\bigr)$$

$$\beta$$ の線形関数で、切片 $$r_{f,t+1}$$、傾き $$r_{m,t+1}-r_{f,t+1}$$。$$\beta=1$$ で $$r_{m,t+1}$$ を通る。これは (37) と同じ直線で、市場線は (37) の軌跡。

**Step 5　評価の読み方**

実現した $$(\beta_j,r_{j,t+1})$$ が市場線より上ならリスクに見合う以上の成績、下なら以下。

**確認**

$$\alpha=1$$ なら $$\beta_c=0$$、$$r_c=r_f$$。$$\alpha=0$$ なら $$\beta_c=1$$、$$r_c=r_m$$。$$\alpha\lt 0$$（借入）なら $$\beta_c\gt 1$$ で、市場線を $$m$$ の右上に延長した部分。

| 入力・使う道具 | 内容 |
|---|---|
| (28), (29) | Sharpe–Lintner の書き換え |
| (38) | 事後の仮定（収益生成過程） |
| T2, T3 | 外出し、共分散 |

### A.8 著者について

**Eugene F. Fama（ユージン・F・ファーマ）**
- **アカデミックな経歴**: 1939 年生まれ（米国）。タフツ大学を卒業（学士）。シカゴ大学で MBA（1963）と Ph.D.（1964）を取得し、以後、同大学ブース・スクール・オブ・ビジネス（Booth School of Business）で教鞭をとる。Robert R. McCormick Distinguished Service Professor of Finance。本論文は、シカゴ大学所属の時期に発表された。
- **主要な研究分野**: 資産価格理論、市場の効率性、実証ファイナンス、企業財務。
- **評判・学術的貢献**: 効率的市場仮説の確立と実証で知られ、2013 年にノーベル経済学賞（資産価格の実証分析）を Lars Peter Hansen、Robert J. Shiller とともに受賞。Fama–MacBeth 回帰（1973）、Fama–French の3ファクターモデル（1993）・5ファクターモデル（2015）など、実証資産価格理論の標準的な手法を生み出した。アメリカ金融学会（American Finance Association）の会長も務めた（1981）。

---

**© 1970 Eugene F. Fama**（原論文）。本記事は原論文の数理モデルを整理した解説であり、原論文の権利は原著者・出版社に帰属します。
{% endraw %}
