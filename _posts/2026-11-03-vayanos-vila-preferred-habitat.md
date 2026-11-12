---
layout: post
title: "Vayanos & Vila (2009) \"A Preferred-Habitat Model of the Term Structure of Interest Rates\"、NBER Working Paper 15487: 数理モデル"
date: 2026-11-03 00:00:00 +0900
categories: [ファイナンス, 債券・期間構造]
math: true
---

{% raw %}
# Vayanos & Vila (2009) "A Preferred-Habitat Model of the Term Structure of Interest Rates"、NBER Working Paper 15487: 数理モデル
### 選好ハビタット（満期クライアンテル）とリスク回避的裁定者による期間構造モデル

---

## 論文の紹介

本記事は、Dimitri Vayanos（ロンドン・スクール・オブ・エコノミクス）と Jean-Luc Vila（Bank of America Merrill Lynch、論文執筆当時）による論文 "A Preferred-Habitat Model of the Term Structure of Interest Rates"（NBER Working Paper 15487、2009年11月。刊行版は *Econometrica* 89(1), 2021）を紹介し、**その背景にある数理モデルを早見表としてまとめた記事**です。論文の文章解説ではなく、モデルの式・前提・記号・導出の整理を目的としています。

**論文リンク**：
- 無料で全文を読める版：<https://researchonline.lse.ac.uk/id/eprint/106509/> （LSE Research Online にあるオープンアクセスの刊行版（Econometrica 掲載版、CC BY）。PDFは同ページから取得できる）
- 無料で読める別の版：<https://www.nber.org/papers/w15487> （NBER ワーキングペーパー版（Working Paper 15487、2009年11月）。本記事が参照した版）
- 公式版（出版社・DOI）：<https://doi.org/10.3982/ECTA17440> （Econometrica, 89(1), 77–112（2021））

**論文の問い。** 標準理論では、満期 $T$ の金利は代表的個人の時点 $0$ と $T$ の間の消費の代替で決まります。これに対し Culbertson (1957) と Modigliani–Sutch (1966) の「選好ハビタット説」は、特定の満期を好む投資家クライアンテル（長期債の年金基金など）が存在し、その満期に局所的な需給ショックが金利を動かすと主張します。ただし、この説は形式的なモデルを欠き、無裁定と矛盾するという印象も持たれていました。

**動機となる事例。** 2000年1月、米財務省は長期債の買戻し（リバースオークション）を発表しました。3週間以内に30年債利回りは58bp低下しましたが、5年債は9bpの低下にとどまり、2年債は9bp上昇しました。長期満期に局所的な供給ショックだったと考えると説明しやすい現象です。

**論文のモデル。** 連続時間で、短期金利は外生的な平均回帰（Ornstein–Uhlenbeck）過程に従います。満期 $\tau$ ごとにクライアンテルがあり、同じ満期のゼロクーポン債だけを、利回りの増加関数として需要します。全満期に投資できるリスク回避的な裁定者が、平均分散目的でこれらの需要を吸収します。均衡の金利は状態変数のアフィン関数になります。

**主な結果。** 裁定者が無裁定を保つため、需要ショックの効果は因子のリスク価格を通じてのみ現れ、元のショックとは大きく異なる形になります。また、債券リスクプレミアムは期間構造の傾きと正の関係で符号を変えます（Fama–Bliss の結果）。フォワード金利は予想短期金利に過小反応します。裁定者のリスク回避度が高いと、短期金利ショックに対して長期フォワード金利が逆方向に動きます。金融政策の波及はキャリートレードを行う裁定者の資本に依存します。

**本記事の範囲。** 本記事は2009年のワーキングペーパー版（添付PDF）に基づきます。式番号は本文から付録まで通して振り直しました（原論文の番号は引き継いでいません）。命題・補題・系の番号は原論文のままです。

---

## 目次

- [1. 数理モデル](#sec1)
- [2. 説明できる現象](#sec2)
- [3. 整理している点](#sec3)
- [4. モデルの対象外](#sec4)
- [5. 主要文献・関連論文](#sec5)
- [付録：導出手順](#appendix)

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間・情報構造**

連続時間 $t\in[0,\infty)$。時点 $t$ の期間構造は、満期 $\tau\in(0,T]$ のゼロクーポン債の連続体で、すべて供給ゼロです。満期 $\tau$ の債券は時点 $t+\tau$ に1ドルを支払います。主体は選好ハビタット投資家と裁定者の2種です。不確実性は互いに独立なブラウン運動 $B_{r,t}$、$B_{\beta,k,t}$（$k=1,\dots,K$）が担い、均衡価格は状態変数のアフィン関数と予想して検証します。

**A1 外生的な短期金利**

短期金利 $r_t$ は外生で、平均回帰過程に従う（式(3)）。中央銀行やマクロ環境による決定は扱いません。

**A2 極端な満期クライアンテル**

満期 $\tau$ のクライアンテルは、同じ満期 $\tau$ のゼロクーポン債だけを需要します。外すと、投資家も裁定に参加し、各クライアンテルのポートフォリオが債券の連続体になります。質的な結論は保たれるものの、分析は複雑になります。

**A3 弾力的なドル需要**

需要は利回りの増加関数で線形、係数 $\alpha(\tau)\gt0$ 以外に制約はありません（式(4)）。外すと（非弾力的な需要）、裁定者の保有が $r_t$ に依存しなくなり、リスクプレミアムの時間変動と符号反転が消えます。

**A4 需要ファクター**

購入閾値は定数と $K$ 個の需要ファクターの線形結合で、各ファクターは互いに独立な平均回帰過程に従います（式(5)、(6)）。関数 $\theta_k(\tau)$ には制約を課しません。

**A5 裁定者の平均分散選好**

裁定者は瞬間的な富の変化について平均分散目的を最大化し、リスク回避係数 $a$ は定数です（式(7)、(8)）。$a$ を定数とすることで富効果を捨象しています。$a=0$ のとき期待仮説（EH）が成立し、需要ショックの効果は消えます。

**A6 市場清算**

債券は供給ゼロなので、裁定者の保有は投資家の保有と逆符号です: $x_{t,\tau}=-y_{t,\tau}$。

**A7 正則条件**

$\overline r,\kappa_r,\sigma_r\gt0$、$\kappa_{\beta,k},\sigma_{\beta,k}\gt0$、$\alpha(\tau)\gt0$、初期条件 $A_r(0)=A_\beta(0)=C(0)=0$（$P_{t,0}=1$ に対応）。

**参照点：裁定者がいない場合**

投資家のみなら、市場清算（供給ゼロ）より $R_{t,\tau}=\beta_{t,\tau}$ となり、各満期の金利は他の満期と無関係に決まります（極端な市場分断）。

### 1.1 債券価格・スポットレート・フォワードレート

**定義**

$$
R_{t,\tau}=\underbrace{-\frac{\log(P_{t,\tau})}{\tau}}_{\text{スポットレート}}\tag{1}
$$

$$
f_{t,\tau-\Delta\tau,\tau}=\underbrace{-\frac{\log\left(\dfrac{P_{t,\tau}}{P_{t,\tau-\Delta\tau}}\right)}{\Delta\tau}}_{\text{フォワードレート}}\tag{2}
$$

> 短期金利 $r_t$ は $\tau\to0$ での $R_{t,\tau}$ の極限です。瞬間フォワードレートは式(23)で定義します。

| 記号・項目 | 意味 |
|---|---|
| $P_{t,\tau}$ | 時点 $t$ における満期 $\tau$ の債券価格 |
| $R_{t,\tau}$ | 満期 $\tau$ のスポットレート |
| $f_{t,\tau-\Delta\tau,\tau}$ | 満期 $\tau-\Delta\tau$ と $\tau$ の間のフォワードレート |
| $T$ | 最長満期 |

### 1.2 短期金利

**Ornstein–Uhlenbeck 過程**

$$
dr_t=\underbrace{\kappa_r(\overline r-r_t)dt}_{\text{平均回帰}}+\underbrace{\sigma_r dB_{r,t}}_{\text{ショック}}\tag{3}
$$

> $(\overline r,\kappa_r,\sigma_r)$ は正の定数。$r_t$ の動きが債券価格 $P_{t,\tau}$ に与える影響が分析の焦点です。

| 記号・項目 | 意味 |
|---|---|
| $\overline r$ | 短期金利の長期平均（真の測度） |
| $\kappa_r$ | 平均回帰速度（真の測度） |
| $\sigma_r$ | 短期金利のボラティリティ |
| $B_{r,t}$ | 短期金利のブラウン運動 |

### 1.3 選好ハビタット投資家の需要

**ドル需要**

$$
y_{t,\tau}=\underbrace{\alpha(\tau)\tau}_{\text{弾力性}}\bigl(\underbrace{R_{t,\tau}}_{\text{利回り}}-\underbrace{\beta_{t,\tau}}_{\text{購入閾値}}\bigr)\tag{4}
$$

**購入閾値の構造**

$$
\beta_{t,\tau}=\underbrace{\overline\beta}_{\text{定数}}+\sum_{k=1}^{K}\underbrace{\theta_k(\tau)}_{\text{位置関数}}\underbrace{\beta_{k,t}}_{\text{需要因子}}\tag{5}
$$

**需要因子の動学**

$$
d\beta_{k,t}=\underbrace{-\kappa_{\beta,k}\beta_{k,t}dt}_{\text{平均回帰}}+\underbrace{\sigma_{\beta,k}dB_{\beta,k,t}}_{\text{ショック}}\tag{6}
$$

> $\theta_k(\tau)$ が $\tau$ に依存しなければ、$\beta_{k,t}$ の変化は全満期に等しく効き、平行シフトになります。$\theta_k(\tau)$ が特定の満期でピークを持てば、その満期に局所的な需要ショックと解釈できます。$\beta_{k,t}$ の増加は需要の減少を表します（$\theta_k\gt0$ のとき）。付録Bで、$\beta_{k,t}$ を非債券投資（不動産など）の収益と解釈します。

| 記号・項目 | 意味 |
|---|---|
| $y_{t,\tau}$ | 満期 $\tau$ のクライアンテルの債券需要（時点 $t$ のドル建て） |
| $\alpha(\tau)$ | 需要の弾力性を決める正の関数 |
| $\beta_{t,\tau}$ | 購入閾値（私的技術の収益）。需要がゼロになる利回り |
| $\overline\beta$ | 閾値の定数部分 |
| $\beta_{k,t}$ | 第 $k$ 需要リスクファクター |
| $\theta_k(\tau)$ | 裁定者不在時に因子 $k$ が各満期へ及ぼす影響の形 |
| $\kappa_{\beta,k},\sigma_{\beta,k}$ | 需要因子の平均回帰速度・ボラティリティ（正） |
| $B_{\beta,k,t}$ | 需要因子のブラウン運動（$B_{r,t}$ および他の因子と独立） |

### 1.4 裁定者

**予算制約**

$$
dW_t=\Bigl(W_t-\underbrace{\int_0^Tx_{t,\tau}d\tau}_{\text{債券投資額}}\Bigr)\underbrace{r_tdt}_{\text{短期運用}}+\underbrace{\int_0^Tx_{t,\tau}\frac{dP_{t,\tau}}{P_{t,\tau}}}_{\text{債券収益}}\tag{7}
$$

**最適化問題**

$$
\max_{\{x_{t,\tau}\}_{\tau\in(0,T]}}\Bigl[\underbrace{E_t(dW_t)}_{\text{平均}}-\frac{a}{2}\underbrace{Var_t(dW_t)}_{\text{分散}}\Bigr]\tag{8}
$$

> 裁定者の保有は均衡でリスクを伴い、収益はリスクプレミアムから生じます（無リスク裁定の機会は存在しません）。平均分散選好は、各世代が無限小の期間だけ生きる重複世代の解釈で正当化できます。

| 記号・項目 | 意味 |
|---|---|
| $W_t$ | 裁定者の富 |
| $x_{t,\tau}$ | 裁定者の満期 $\tau$ 債への投資額（ドル） |
| $a$ | 裁定者のリスク回避係数 |

### 1.5 1ファクターモデル（$K=0$）の均衡

**アフィン予想**

$$
P_{t,\tau}=\exp\{-[\underbrace{A_r(\tau)r_t}_{\text{金利感応度}}+\underbrace{C(\tau)}_{\text{定数項}}]\}\tag{9}
$$

**債券の瞬間収益**

$$
\frac{dP_{t,\tau}}{P_{t,\tau}}=\underbrace{\mu_{t,\tau}dt}_{\text{期待収益}}-\underbrace{A_r(\tau)\sigma_rdB_{r,t}}_{\text{リスク}}\tag{10}
$$

$$
\mu_{t,\tau}\equiv\underbrace{A_r'(\tau)r_t+C'(\tau)}_{\text{満期の経過}}-\underbrace{A_r(\tau)\kappa_r(\overline r-r_t)}_{\text{ドリフト}}+\underbrace{\tfrac12A_r(\tau)^2\sigma_r^2}_{\text{伊藤補正}}\tag{11}
$$

**補題1：裁定者の一階条件**

$$
\underbrace{\mu_{t,\tau}-r_t}_{\text{期待超過収益}}=\underbrace{A_r(\tau)}_{\text{リスク量}}\underbrace{\lambda_{r,t}}_{\text{リスク価格}}\tag{12}
$$

$$
\lambda_{r,t}\equiv a\sigma_r^2\int_0^Tx_{t,\tau}A_r(\tau)d\tau\tag{13}
$$

> 式(12)は無裁定のみから従います（リスクが短期金利感応度 $A_r(\tau)$ だけで測られるため、単位リスクあたりの超過収益は全債券で共通）。式(13)は裁定者が限界的なリスク1単位に要求する補償で、ポートフォリオの感応度 $\int x A_r\,d\tau$ に比例します。

**市場清算と $\lambda_{r,t}$**

$$
\lambda_{r,t}=-a\sigma_r^2\int_0^Ty_{t,\tau}A_r(\tau)d\tau=a\sigma_r^2\int_0^T\underbrace{\alpha(\tau)\bigl[\overline\beta\tau-(A_r(\tau)r_t+C(\tau))\bigr]}_{\text{裁定者の保有}}A_r(\tau)d\tau\tag{14}
$$

> 第2の等号は式(1)、(4)、(5)、(9)、$K=0$ から従います。式(14)より $\lambda_{r,t}$ は $r_t$ のアフィンかつ減少関数です。

**$A_r$ の満たす方程式（$r_t$ の係数）**

$$
A_r'(\tau)+\kappa_rA_r(\tau)-1=-a\sigma_r^2A_r(\tau)\int_0^T\alpha(u)A_r(u)^2du\tag{15}
$$

> 係数 $\int\alpha A_r^2$ が $A_r$ に依存する点が通常の線形ODEと異なり、固定点問題を含みます。

**命題1：$A_r,C$ の解**

$$
A_r(\tau)=\frac{1-e^{-\kappa_r^{\ast}\tau}}{\kappa_r^{\ast}}\tag{16}
$$

$$
C(\tau)=\kappa_r^{\ast}\overline r^{\ast}\int_0^\tau A_r(u)du-\frac{\sigma_r^2}{2}\int_0^\tau A_r(u)^2du\tag{17}
$$

$$
\kappa_r^{\ast}=\kappa_r+a\sigma_r^2\int_0^T\alpha(\tau)A_r(\tau)^2d\tau\tag{18}
$$

$$
\overline r^{\ast}\equiv\overline r+\frac{(\overline\beta-\overline r)a\sigma_r^2\displaystyle\int_0^T\alpha(\tau)\tau A_r(\tau)d\tau+\dfrac{a\sigma_r^4}{2}\displaystyle\int_0^T\alpha(\tau)\Bigl[\int_0^\tau A_r(u)^2du\Bigr]A_r(\tau)d\tau}{\kappa_r^{\ast}\Bigl[1+a\sigma_r^2\displaystyle\int_0^T\alpha(\tau)\Bigl[\int_0^\tau A_r(u)du\Bigr]A_r(\tau)d\tau\Bigr]}\tag{19}
$$

> $\kappa_r^{\ast}$ は式(18)の一意解です。式(16)、(17)はヴァシチェック（Vasicek 1977）の標準形です。

**リスク中立測度での短期金利**

$$
dr_t=\underbrace{\kappa_r^{\ast}(\overline r^{\ast}-r_t)dt}_{\text{リスク中立ドリフト}}+\sigma_rd\hat B_{r,t}\tag{20}
$$

> リスク中立でも OU 過程で、長期平均 $\overline r^{\ast}$・回帰速度 $\kappa_r^{\ast}$ が真の値 $(\overline r,\kappa_r)$ と異なります。$a=0$ なら一致します。

| 記号・項目 | 意味 |
|---|---|
| $A_r(\tau),C(\tau)$ | 債券価格のアフィン係数（$A_r(0)=C(0)=0$） |
| $\mu_{t,\tau}$ | 瞬間期待収益 |
| $\lambda_{r,t}$ | 短期金利リスクの市場価格 |
| $\kappa_r^{\ast},\overline r^{\ast}$ | リスク中立測度での平均回帰速度・長期平均 |
| $\hat B_{r,t}$ | リスク中立測度下のブラウン運動 |

### 1.6 1ファクターモデルのリスクプレミアムとフォワード金利

**Fama–Bliss 回帰**

$$
\underbrace{\frac1{\Delta\tau}\log\Bigl(\frac{P_{t+\Delta\tau,\tau-\Delta\tau}}{P_{t,\tau}}\Bigr)-R_{t,\Delta\tau}}_{\text{債券の超過収益}}=\alpha_{FB}+\gamma_{FB}\underbrace{(f_{t,\tau-\Delta\tau,\tau}-R_{t,\Delta\tau})}_{\text{傾き}}+\epsilon_{t+\Delta\tau}\tag{21}
$$

**命題2：プレミアムと傾きの正の関係**

$$
\gamma_{FB}=\underbrace{\frac{\kappa_r^{\ast}-\kappa_r}{\kappa_r^{\ast}}}_{\Delta\tau\to0,\ \forall\tau}\gt0\tag{22}
$$

**瞬間フォワードレート**

$$
f_{t,\tau}\equiv\lim_{\Delta\tau\to0}f_{t,\tau-\Delta\tau,\tau}=-\frac{\partial\log(P_{t,\tau})}{\partial\tau}=A_r'(\tau)r_t+C'(\tau)\tag{23}
$$

**命題3：フォワード金利の過小反応**

$$
\begin{aligned}
\frac{\partial E_t(r_{t+\tau})}{\partial r_t}&=\underbrace{e^{-\kappa_r\tau}}_{\text{予想短期金利}}\\
\frac{\partial f_{t,\tau}}{\partial r_t}&=\underbrace{e^{-\kappa_r^{\ast}\tau}}_{\text{フォワード金利}}\lt e^{-\kappa_r\tau}
\end{aligned}\tag{24}
$$

**系1：リスク回避度の比較静学**

$$
\frac{\partial\kappa_r^{\ast}}{\partial a}\gt0\tag{25}
$$

> 系1：$a$ が大きいほど $\gamma_{FB}=1-\kappa_r/\kappa_r^{\ast}$ は大きく（傾きとプレミアムの関係が強まる）、$e^{-\kappa_r^{\ast}\tau}$ は小さく（過小反応が強まる）なります。$a=0$ なら EH が成立し、プレミアムはゼロ、フォワード金利は予想短期金利に1対1で反応します。

> 直感：短期金利が高いと、裁定者は債券を空売りして短期で運用します（ロールアップ取引）。債券は短期金利より低い期待収益を提供し、プレミアムは負になります。短期金利が低いと逆（ロールダウン取引）で、プレミアムは正になります。裁定者の保有が短期金利に依存するのは、投資家需要が利回りに弾力的だからです（A3）。

| 記号・項目 | 意味 |
|---|---|
| $\alpha_{FB},\gamma_{FB}$ | Fama–Bliss 回帰の定数・傾き係数 |
| $\epsilon_{t+\Delta\tau}$ | 回帰の誤差項 |
| $f_{t,\tau}$ | 満期 $\tau$ の瞬間フォワードレート |
| $E_t(r_{t+\tau})$ | 時点 $t$ での $t+\tau$ 時点の短期金利の期待値 |

### 1.7 2ファクターモデル（$K=1$）の均衡

> 需要ファクターが1つのとき、添字 $k$ を省略して $\beta_t,\theta(\tau),\kappa_\beta,\sigma_\beta$ と書きます。

**アフィン予想**

$$
P_{t,\tau}=\exp\{-[\underbrace{A_r(\tau)r_t}_{\text{短期金利}}+\underbrace{A_\beta(\tau)\beta_t}_{\text{需要}}+\underbrace{C(\tau)}_{\text{定数項}}]\}\tag{26}
$$

**債券の瞬間収益**

$$
\frac{dP_{t,\tau}}{P_{t,\tau}}=\mu_{t,\tau}dt-\underbrace{A_r(\tau)\sigma_rdB_{r,t}}_{\text{短期金利リスク}}-\underbrace{A_\beta(\tau)\sigma_\beta dB_{\beta,t}}_{\text{需要リスク}}\tag{27}
$$

$$
\mu_{t,\tau}\equiv A_r'(\tau)r_t+A_\beta'(\tau)\beta_t+C'(\tau)-A_r(\tau)\kappa_r(\overline r-r_t)+A_\beta(\tau)\kappa_\beta\beta_t+\tfrac12A_r(\tau)^2\sigma_r^2+\tfrac12A_\beta(\tau)^2\sigma_\beta^2\tag{28}
$$

**補題2：一階条件**

$$
\underbrace{\mu_{t,\tau}-r_t}_{\text{期待超過収益}}=A_r(\tau)\underbrace{\lambda_{r,t}}_{\text{短期金利のリスク価格}}+A_\beta(\tau)\underbrace{\lambda_{\beta,t}}_{\text{需要のリスク価格}}\tag{29}
$$

$$
\lambda_{r,t}\equiv a\sigma_r^2\int_0^Tx_{t,\tau}A_r(\tau)d\tau\tag{30}
$$

$$
\lambda_{\beta,t}\equiv a\sigma_\beta^2\int_0^Tx_{t,\tau}A_\beta(\tau)d\tau\tag{31}
$$

> 式(29)は式(12)の2ファクター版で、無裁定のみから従います。$\lambda_{r,t},\lambda_{\beta,t}$ は裁定者ポートフォリオとの共分散に対して線形・増加で、均衡では $(r_t,\beta_t)$ のアフィン関数になります。

**$A_r,A_\beta$ の満たす連立ODE（$r_t,\beta_t$ の係数）**

$$
A_r'(\tau)+\kappa_rA_r(\tau)-1=A_r(\tau)M_{1,1}+A_\beta(\tau)M_{1,2}\tag{32}
$$

$$
A_\beta'(\tau)+\kappa_\beta A_\beta(\tau)=A_r(\tau)M_{2,1}+A_\beta(\tau)M_{2,2}\tag{33}
$$

$$
M\equiv a\begin{bmatrix}-\sigma_r^2\displaystyle\int_0^T\alpha(\tau)A_r(\tau)^2d\tau&-\sigma_\beta^2\displaystyle\int_0^T\alpha(\tau)A_r(\tau)A_\beta(\tau)d\tau\\[2mm]\sigma_r^2\displaystyle\int_0^T\alpha(\tau)[\tau\theta(\tau)-A_\beta(\tau)]A_r(\tau)d\tau&\sigma_\beta^2\displaystyle\int_0^T\alpha(\tau)[\tau\theta(\tau)-A_\beta(\tau)]A_\beta(\tau)d\tau\end{bmatrix}\tag{34}
$$

**命題4：$A_r,A_\beta$ の解**

$$
A_r(\tau)=\frac{1-e^{-\nu_1\tau}}{\nu_1}+\gamma_r\Bigl(\frac{1-e^{-\nu_2\tau}}{\nu_2}-\frac{1-e^{-\nu_1\tau}}{\nu_1}\Bigr)\tag{35}
$$

$$
A_\beta(\tau)=\gamma_\beta\Bigl(\frac{1-e^{-\nu_2\tau}}{\nu_2}-\frac{1-e^{-\nu_1\tau}}{\nu_1}\Bigr)\tag{36}
$$

> スカラー $(\nu_1,\nu_2,\gamma_r,\gamma_\beta)$ は下の4本の非線形連立方程式の解です。1ファクターのような単純な閉形式解はありません。

**補助関数（定義）**

$$
\begin{aligned}
F(\nu,\nu')&\equiv\int_0^T\alpha(\tau)\frac{1-e^{-\nu\tau}}{\nu}\frac{1-e^{-\nu'\tau}}{\nu'}d\tau,\\
\hat F(\nu,\nu')&\equiv F(\nu,\nu')-F(\nu,\nu),\\
\hat{\hat F}(\nu,\nu')&\equiv F(\nu,\nu)+F(\nu',\nu')-2F(\nu,\nu'),\\
G(\nu)&\equiv\int_0^T\alpha(\tau)\tau\theta(\tau)\frac{1-e^{-\nu\tau}}{\nu}d\tau,\\
\hat G(\nu,\nu')&\equiv G(\nu')-G(\nu)
\end{aligned}
$$

**$(\nu_1,\nu_2,\gamma_r,\gamma_\beta)$ を決める連立方程式**

$$
\nu_1+\gamma_r(\nu_2-\nu_1)-\kappa_r-a\sigma_r^2\Bigl[F(\nu_1,\nu_1)+2\gamma_r\hat F(\nu_1,\nu_2)+\gamma_r^2\hat{\hat F}(\nu_1,\nu_2)\Bigr]=0\tag{37}
$$

$$
\gamma_r(1-\gamma_r)(\nu_1-\nu_2)+a\sigma_\beta^2\gamma_\beta^2\Bigl[\hat F(\nu_1,\nu_2)+\gamma_r\hat{\hat F}(\nu_1,\nu_2)\Bigr]=0\tag{38}
$$

$$
\gamma_\beta(\nu_1-\nu_2)-a\sigma_r^2\Bigl[G(\nu_1)+\gamma_r\hat G(\nu_1,\nu_2)-\gamma_\beta\bigl[\hat F(\nu_1,\nu_2)+\gamma_r\hat{\hat F}(\nu_1,\nu_2)\bigr]\Bigr]=0\tag{39}
$$

$$
\kappa_\beta-\nu_2-\gamma_r(\nu_1-\nu_2)-a\sigma_\beta^2\gamma_\beta\Bigl[\hat G(\nu_1,\nu_2)-\gamma_\beta\hat{\hat F}(\nu_1,\nu_2)\Bigr]=0\tag{40}
$$

**定数項 $C(\tau)$**

$$
C(\tau)=z_r\int_0^\tau A_r(u)du+z_\beta\int_0^\tau A_\beta(u)du-\frac{\sigma_r^2}{2}\int_0^\tau A_r(u)^2du-\frac{\sigma_\beta^2}{2}\int_0^\tau A_\beta(u)^2du\tag{41}
$$

$$
z_r\equiv\kappa_r\overline r+a\sigma_r^2\int_0^T\alpha(\tau)[\overline\beta\tau-C(\tau)]A_r(\tau)d\tau,\qquad z_\beta\equiv a\sigma_\beta^2\int_0^T\alpha(\tau)[\overline\beta\tau-C(\tau)]A_\beta(\tau)d\tau\tag{42}
$$

> 式(41)を式(42)に代入すると、$(z_r,z_\beta)$ は線形連立方程式の解として求まります。

**命題5：$a\approx0$ と $a\approx\infty$ での漸近挙動**

$$
a\approx0:\quad(\nu_1,\nu_2,\gamma_r,\gamma_\beta)\approx(\kappa_r,\ \kappa_\beta,\ a^3\underline c_r,\ a\underline c_\beta)\tag{43}
$$

$$
\underline c_\beta\equiv\frac{\sigma_r^2G(\kappa_r)}{\kappa_r-\kappa_\beta}\tag{44}
$$

$$
\underline c_r\equiv-\frac{\sigma_\beta^2\underline c_\beta^{\,2}\hat F(\kappa_r,\kappa_\beta)}{\kappa_r-\kappa_\beta}\tag{45}
$$

$$
a\approx\infty:\quad(\nu_1,\nu_2,\gamma_r,\gamma_\beta)\approx(a^{1/3}\overline n_1,\ \overline\nu_2,\ a^{-1/3}\overline c_r,\ \overline\gamma_\beta)\tag{46}
$$

$$
\frac{\displaystyle\int_0^T\alpha(\tau)\tau\theta(\tau)\frac{1-e^{-\overline\nu_2\tau}}{\overline\nu_2}d\tau}{\displaystyle\int_0^T\alpha(\tau)\tau\theta(\tau)d\tau}=\frac{\displaystyle\int_0^T\alpha(\tau)\Bigl(\frac{1-e^{-\overline\nu_2\tau}}{\overline\nu_2}\Bigr)^2d\tau}{\displaystyle\int_0^T\alpha(\tau)\frac{1-e^{-\overline\nu_2\tau}}{\overline\nu_2}d\tau}\quad(\overline\nu_2\text{ の決定式})\tag{47}
$$

$$
\overline n_1\equiv\sigma_r^{2/3}\left[\int_0^T\alpha(\tau)d\tau-\frac{\Bigl[\displaystyle\int_0^T\alpha(\tau)\frac{1-e^{-\overline\nu_2\tau}}{\overline\nu_2}d\tau\Bigr]^2}{\displaystyle\int_0^T\alpha(\tau)\Bigl(\frac{1-e^{-\overline\nu_2\tau}}{\overline\nu_2}\Bigr)^2d\tau}\right]^{1/3}\gt0\tag{48}
$$

$$
\overline c_r\equiv-\frac1{\overline n_1}\frac{\displaystyle\int_0^T\alpha(\tau)\frac{1-e^{-\overline\nu_2\tau}}{\overline\nu_2}d\tau}{\displaystyle\int_0^T\alpha(\tau)\Bigl(\frac{1-e^{-\overline\nu_2\tau}}{\overline\nu_2}\Bigr)^2d\tau}\lt0\tag{49}
$$

$$
\overline\gamma_\beta\equiv\frac{\displaystyle\int_0^T\alpha(\tau)\tau\theta(\tau)\frac{1-e^{-\overline\nu_2\tau}}{\overline\nu_2}d\tau}{\displaystyle\int_0^T\alpha(\tau)\Bigl(\frac{1-e^{-\overline\nu_2\tau}}{\overline\nu_2}\Bigr)^2d\tau}\tag{50}
$$

> $\overline\nu_2$ は式(47)の解で、存在が示されています（付録A.8）。式(48)、(49)の符号はコーシー＝シュワルツの不等式から従います。

| 記号・項目 | 意味 |
|---|---|
| $A_\beta(\tau)$ | 需要因子 $\beta_t$ に対する債券価格の感応度 |
| $\lambda_{\beta,t}$ | 需要リスクの市場価格 |
| $M$ | リスク中立測度を決める $2\times2$ 行列（固定点問題の係数） |
| $\nu_1,\nu_2$ | 対角化で得られる指数の減衰率 |
| $\gamma_r,\gamma_\beta$ | 2つの指数項の混合係数 |
| $F,\hat F,\hat{\hat F},G,\hat G$ | 式(37)〜(40)の補助積分関数 |
| $z_r,z_\beta$ | $C(\tau)$ の係数 |
| $\underline c_r,\underline c_\beta$ | $a\approx0$ の展開係数 |
| $\overline n_1,\overline\nu_2,\overline c_r,\overline\gamma_\beta$ | $a\approx\infty$ の極限定数 |

### 1.8 2ファクターモデルの期間構造の動き

**瞬間フォワードレート**

$$
f_{t,\tau}=-\frac{\partial\log(P_{t,\tau})}{\partial\tau}=\underbrace{A_r'(\tau)r_t}_{\text{短期金利の効果}}+\underbrace{A_\beta'(\tau)\beta_t}_{\text{需要の効果}}+C'(\tau)\tag{51}
$$

> 短期金利ショックの効果は $A_r'(\tau)$、需要ショックの効果は $A_\beta'(\tau)$ で測られます。

**$a\approx0$（裁定者がほぼリスク中立）**

$$
A_r'(\tau)\approx e^{-\kappa_r\tau}\tag{52}
$$

$$
A_\beta'(\tau)\approx\underbrace{\frac{a\sigma_r^2\displaystyle\int_0^T\alpha(\tau)\tau\theta(\tau)\frac{1-e^{-\kappa_r\tau}}{\kappa_r}d\tau}{\kappa_r-\kappa_\beta}}_{\text{大きさ（}\theta\text{に依存）}}\underbrace{\bigl(e^{-\kappa_\beta\tau}-e^{-\kappa_r\tau}\bigr)}_{\text{満期方向の形（}\theta\text{に非依存）}}\tag{53}
$$

> 需要ショックの積分は、裁定者が買うポートフォリオの「デュレーション」（短期金利感応度 $(1-e^{-\kappa_r\tau})/\kappa_r$ の加重和）です。$\theta(\tau)$ は効果の大きさだけを決め、どの満期で最大かは決めません。$\theta\gt0$ なら $A_\beta'(\tau)\gt0$ が全 $\tau$ で成り立ちます。形 $(e^{-\kappa_\beta\tau}-e^{-\kappa_r\tau})/(\kappa_r-\kappa_\beta)$ は山形で、$\tau=0$ と $\tau=\infty$ でゼロです。

**$a\approx\infty$（裁定者が極めてリスク回避的）**

$$
A_r'(\tau)\approx\underbrace{e^{-a^{1/3}\overline n_1\tau}}_{\text{過小反応}}+\underbrace{a^{-1/3}\overline c_re^{-\overline\nu_2\tau}}_{\text{逆方向（}\overline c_r\lt0\text{）}}\tag{54}
$$

$$
A_\beta'(\tau)\approx\underbrace{\frac{\displaystyle\int_0^T\alpha(\tau)\tau\theta(\tau)\frac{1-e^{-\overline\nu_2\tau}}{\overline\nu_2}d\tau}{\displaystyle\int_0^T\alpha(\tau)\Bigl(\frac{1-e^{-\overline\nu_2\tau}}{\overline\nu_2}\Bigr)^2d\tau}}_{\overline\gamma_\beta}\bigl(e^{-\overline\nu_2\tau}-e^{-a^{1/3}\overline n_1\tau}\bigr)\tag{55}
$$

**系2**：$a\approx\infty$ のとき、短期金利ショックは短期満期のフォワード金利を同方向に、長期満期のフォワード金利を逆方向に動かします。スポットレートも同じパターンです。

**需要ショックのポジションとリスクエクスポージャー**

$$
\frac{\partial x_{t,\tau}}{\partial\beta_t}=\underbrace{\alpha(\tau)[\tau\theta(\tau)-A_\beta(\tau)]}_{\text{需要ショックで買う額}}\tag{56}
$$

$$
\int_0^T\alpha(\tau)[\tau\theta(\tau)-A_\beta(\tau)]A_r(\tau)d\tau\tag{57}
$$

$$
\int_0^T\alpha(\tau)[\tau\theta(\tau)-A_\beta(\tau)]A_\beta(\tau)d\tau\tag{58}
$$

> 式(57)、(58)は、需要ショックで形成されるポジションの $r_t$、$\beta_t$ に対するエクスポージャーです。$a\approx\infty$ では裁定者はこれらをゼロにしようとします。因子が多数あれば $\tau\theta(\tau)-A_\beta(\tau)=0$（全満期で保有ゼロ、効果が $\theta(\tau)$ に一致）が自然な予想ですが、因子が2つだけなので成り立ちません。$A_\beta(\tau)$ は2つの指数関数のアフィン関数に制約され、$\theta(\tau)$ は $\overline\nu_2$ を通じて満期方向の形に影響します。

**命題6**（$a\approx\infty$）：正の関数族 $\{\theta(\tau,x)\}_{x\in(\underline x,\overline x)}$ が次の2条件を満たすとします。

- $\theta_x(\tau,x)/\theta(\tau,x)$ が $\tau$ について増加（$x$ が大きいほど長期にウェイトが移る）。
- 任意の $\epsilon\gt0$ で、$x\to\underline x$ のとき $\int_\epsilon^T\alpha\tau\theta\,d\tau\big/\int_0^T\alpha\tau\theta\,d\tau\to0$、$x\to\overline x$ のとき $\int_0^{T-\epsilon}\alpha\tau\theta\,d\tau\big/\int_0^T\alpha\tau\theta\,d\tau\to0$（$\theta$ は $x\to\underline x$ で $\tau=0$、$x\to\overline x$ で $\tau=T$ に全ウェイト）。

このとき、ある $x^{\ast}\in(\underline x,\overline x)$ が存在し、$x\lt x^{\ast}$ なら $A_\beta'(\tau)$ は $[0,T]$ で増加後に減少、$x\gt x^{\ast}$ なら $[0,T]$ で増加します。

**系3（選好ハビタット）**：需要の減少は、瞬間フォワード金利とスポットレートの期間構造を押し上げます。

| 状況 | 需要ショックの位置 $\theta(\tau)$ の効果 |
|---|---|
| $a\approx0$ | 効果の大きさにのみ影響。満期間の相対的な大きさは不変 |
| $a\approx\infty$ | 大きさと満期間の相対的な大きさの両方に影響。位置が長期へ動くと、効果が最大となる満期が中期から長期へ移る |

**数値例（原論文脚注25のパラメータ化）**

| 設定 | 値 |
|---|---|
| 最長満期 | $T=30$ 年 |
| 平均回帰・拡散 | $\kappa_r=\kappa_\beta=0.15$、$\sigma_r=\sigma_\beta=0.02$（半減期 $\log2/0.15=4.62$ 年、年率標準偏差2%） |
| 位置関数 | $\theta(\tau)=1$（裁定者不在なら全満期に同じ効果） |
| 弾力性 | $\alpha(\tau)=\alpha e^{-0.1\tau}$、$a\alpha=1.5$ |
| 第1主成分の説明率 | 94.61%（満期間でフラット、$0.44r_t+\beta_t$ の加重平均） |
| 短期金利ショックの説明率 | 1年債 99.92%、5年債 92.20%、10年債 65.22%、20年債 18.50%、30年債 4.79% |

> 第1主成分がフラットでも、短期金利と需要の役割は満期で大きく異なります。主成分を経済的ファクターと同一視すると誤解を招きます。

| 記号・項目 | 意味 |
|---|---|
| $A_r'(\tau),A_\beta'(\tau)$ | 短期金利・需要の単位ショックに対するフォワード金利の反応 |
| $x^{\ast}$ | 命題6での形状の切り替わり点 |
| $\theta(\tau,x)$ | パラメータ $x$ で位置が移動する $\theta$ の族 |

### 1.9 2ファクターモデルの債券リスクプレミアム

**リスク価格の偏微分**

$$
\begin{aligned}
\frac{\partial\lambda_{r,t}}{\partial r_t}&=M_{1,1},&\frac{\partial\lambda_{r,t}}{\partial\beta_t}&=M_{2,1},\\
\frac{\partial\lambda_{\beta,t}}{\partial r_t}&=M_{1,2},&\frac{\partial\lambda_{\beta,t}}{\partial\beta_t}&=M_{2,2}
\end{aligned}\tag{59}
$$

**命題7**（$\theta(\tau)\gt0$、$a\approx0$ または $a\approx\infty$）

$$
\underbrace{\frac{\partial(\mu_{t,\tau}-r_t)}{\partial r_t}\lt0}_{\text{短期金利が高いと負}},\qquad\underbrace{\frac{\partial(\mu_{t,\tau}-r_t)}{\partial\beta_t}\gt0}_{\text{需要が弱いと正}},\qquad\mu_{t,\tau}-r_t\text{ は }(r_t,\beta_t)\text{ のアフィン関数}\tag{60}
$$

> 市場価格 $\lambda_{r,t},\lambda_{\beta,t}$ も $r_t$ について減少、$\beta_t$ について増加で、ともにアフィンです。

**命題8**（$a\approx0$ または $a\approx\infty$、$\Delta\tau\to0$）：Fama–Bliss回帰係数 $\gamma_{FB}$ は正で、$\sigma_\beta^2/\sigma_r^2$ の増加関数です。1ファクターでは $\gamma_{FB}=(\kappa_r^{\ast}-\kappa_r)/\kappa_r^{\ast}\in(0,1)$ ですが、需要ファクターがあると $\gamma_{FB}$ は大きくなり、ゼロから1より大きい値まで動きます。

> 直感：需要は傾きにプレミアムの変化を通してのみ影響します。短期金利が下がると、現在の短期金利が予想将来の短期金利を下回るので傾きが上がります（プレミアムの変化が不要）。したがって、傾きの上昇は需要起因のときほど大きなプレミアム上昇を予測します。

**Campbell–Shiller 回帰**

$$
\underbrace{R_{t+\Delta\tau,\tau-\Delta\tau}-R_{t,\tau}}_{\text{長期金利の変化}}=\alpha_{CS}+\gamma_{CS}\underbrace{\frac{\Delta\tau}{\tau-\Delta\tau}(R_{t,\tau}-R_{t,\Delta\tau})}_{\text{正規化した傾き}}+\epsilon_{t+\Delta\tau}\tag{61}
$$

**命題9**（$a\approx0$ または $a\approx\infty$、$\Delta\tau\to0$）

$$
\gamma_{CS}\lt1\tag{62}
$$

| 状況 | $\gamma_{CS}$ の性質 |
|---|---|
| $a\approx0$ | 1に近く、$\tau$ について増加 |
| $a\approx\infty$ | 負になり得て、$\tau$ について減少（需要ファクターが長期債のプレミアムを強く変動させるため） |

**因子が相関する場合**（瞬間相関 $\rho=$ corr$(dB_{r,t},dB_{\beta,t})$）

$$
\lambda_{r,t}\equiv a\sigma_r^2\int_0^Tx_{t,\tau}[A_r(\tau)+\rho A_\beta(\tau)]d\tau\tag{63}
$$

$$
\lambda_{\beta,t}\equiv a\sigma_\beta^2\int_0^Tx_{t,\tau}[\rho A_r(\tau)+A_\beta(\tau)]d\tau\tag{64}
$$

> 式(63)、(64)は補題2の一般化です。計算は複雑になりますが、$a\approx0$（短期金利が支配的リスク）と $a\approx\infty$（各因子への感応度をゼロにする）の結果は変わりません。

| 記号・項目 | 意味 |
|---|---|
| $\alpha_{CS},\gamma_{CS}$ | Campbell–Shiller 回帰の定数・傾き係数 |
| $\rho$ | 短期金利と需要ファクターの相関 |
| $M_{i,j}$ | 式(34)の行列の成分 |

### 1.10 多ファクターモデル（需要ファクター $K\gt1$）

**アフィン予想**

$$
P_{t,\tau}=\exp\Bigl\{-\Bigl[\underbrace{A_r(\tau)r_t}_{\text{短期金利}}+\underbrace{\sum_{k=1}^KA_{\beta,k}(\tau)\beta_{k,t}}_{\text{需要因子}}+C(\tau)\Bigr]\Bigr\}\tag{65}
$$

**補題3：一階条件**

$$
\mu_{t,\tau}-r_t=A_r(\tau)\lambda_{r,t}+\sum_{k=1}^KA_{\beta,k}(\tau)\lambda_{\beta,k,t}\tag{66}
$$

$$
\lambda_{r,t}\equiv a\sigma_r^2\int_0^Tx_{t,\tau}A_r(\tau)d\tau\tag{67}
$$

$$
\lambda_{\beta,k,t}\equiv a\sigma_{\beta,k}^2\int_0^Tx_{t,\tau}A_{\beta,k}(\tau)d\tau\tag{68}
$$

$$
\mu_{t,\tau}\equiv A_r'(\tau)r_t+\sum_{k=1}^KA_{\beta,k}'(\tau)\beta_{k,t}+C'(\tau)-A_r(\tau)\kappa_r(\overline r-r_t)+\sum_{k=1}^KA_{\beta,k}(\tau)\kappa_{\beta,k}\beta_{k,t}+\tfrac12A_r(\tau)^2\sigma_r^2+\tfrac12\sum_{k=1}^KA_{\beta,k}(\tau)^2\sigma_{\beta,k}^2\tag{69}
$$

> 式(66)は式(12)、(29)の多ファクター版で、無裁定のみから従います。式(68)の分散は因子ごとの $\sigma_{\beta,k}^2$ です（原論文の式(45)は $\sigma_\beta^2$ と表記されていますが、付録の導出式(A.69)に合わせて $\sigma_{\beta,k}^2$ としました）。

**命題10：解の形**

$$
A_r(\tau)=\frac{1-e^{-\nu_1\tau}}{\nu_1}+\sum_{l=1}^K\gamma_{r,l}\Bigl(\frac{1-e^{-\nu_{l+1}\tau}}{\nu_{l+1}}-\frac{1-e^{-\nu_1\tau}}{\nu_1}\Bigr)\tag{70}
$$

$$
A_{\beta,k}(\tau)=\sum_{l=1}^K\gamma_{\beta,k,l}\Bigl(\frac{1-e^{-\nu_{l+1}\tau}}{\nu_{l+1}}-\frac{1-e^{-\nu_1\tau}}{\nu_1}\Bigr)\tag{71}
$$

**連立ODEの係数行列**

$$
\begin{aligned}
M_{1,1}&\equiv-\sigma_r^2\int_0^T\alpha(\tau)A_r(\tau)^2d\tau,&M_{1,l+1}&\equiv-\sigma_{\beta,l}^2\int_0^T\alpha(\tau)A_r(\tau)A_{\beta,l}(\tau)d\tau,\\
M_{k+1,1}&\equiv\sigma_r^2\int_0^T\alpha(\tau)[\tau\theta_k(\tau)-A_{\beta,k}(\tau)]A_r(\tau)d\tau,&M_{k+1,l+1}&\equiv\sigma_{\beta,l}^2\int_0^T\alpha(\tau)[\tau\theta_k(\tau)-A_{\beta,k}(\tau)]A_{\beta,l}(\tau)d\tau
\end{aligned}\tag{72}
$$

$$
A_r'(\tau)+\kappa_rA_r(\tau)-1=A_r(\tau)M_{1,1}+\sum_{l=1}^KA_{\beta,l}(\tau)M_{1,l+1}\tag{73}
$$

$$
A_{\beta,k}'(\tau)+\kappa_{\beta,k}A_{\beta,k}(\tau)=A_r(\tau)M_{k+1,1}+\sum_{l=1}^KA_{\beta,l}(\tau)M_{k+1,l+1}\tag{74}
$$

> 式(72)の $\sigma^2_{\beta,l}$ は、式(68)で因子ごとの分散を用いたことと整合する書き方です（原論文は $\sigma_\beta^2$ と表記）。

**未知数 $\{\nu_l\}_{l=1,..,K+1},\{\gamma_{r,l}\}_{l=1,..,K},\{\gamma_{\beta,k,l}\}_{k,l=1,..,K}$ を決める $(K+1)^2$ 本の非線形方程式**

$$
\Bigl(1-\sum_{l=1}^K\gamma_{r,l}\Bigr)(\nu_1-\kappa_r+M_{1,1})-\sum_{l,l'=1}^K\gamma_{\beta,l',l}M_{1,l'+1}=0\tag{75}
$$

$$
\gamma_{r,l}(\nu_{l+1}-\kappa_r+M_{1,1})+\sum_{l'=1}^K\gamma_{\beta,l',l}M_{1,l'+1}=0\tag{76}
$$

$$
\Bigl(\sum_{l=1}^K\gamma_{\beta,k,l}\Bigr)(\nu_1-\kappa_{\beta,k})-\Bigl(1-\sum_{l=1}^K\gamma_{r,l}\Bigr)M_{k+1,1}+\sum_{l,l'=1}^K\gamma_{\beta,l',l}M_{k+1,l'+1}=0\tag{77}
$$

$$
-\gamma_{\beta,k,l}(\nu_{l+1}-\kappa_{\beta,k})-\gamma_{r,l}M_{k+1,1}-\sum_{l'=1}^K\gamma_{\beta,l',l}M_{k+1,l'+1}=0\tag{78}
$$

**定数項 $C(\tau)$**

$$
C(\tau)=z_r\int_0^\tau A_r(u)du+\sum_{k=1}^Kz_{\beta,k}\int_0^\tau A_{\beta,k}(u)du-\frac{\sigma_r^2}{2}\int_0^\tau A_r(u)^2du-\sum_{k=1}^K\frac{\sigma_{\beta,k}^2}{2}\int_0^\tau A_{\beta,k}(u)^2du\tag{79}
$$

$$
z_r\equiv\kappa_r\overline r+a\sigma_r^2\int_0^T\alpha(\tau)[\overline\beta\tau-C(\tau)]A_r(\tau)d\tau,\qquad z_{\beta,k}\equiv a\sigma_{\beta,k}^2\int_0^T\alpha(\tau)[\overline\beta\tau-C(\tau)]A_{\beta,k}(\tau)d\tau\tag{80}
$$

**$a\approx0$：需要ファクター $k$ のショック**

$$
A_{\beta,k}'(\tau)\approx\frac{a\sigma_r^2\displaystyle\int_0^T\alpha(\tau)\tau\theta_k(\tau)\frac{1-e^{-\kappa_r\tau}}{\kappa_r}d\tau}{\kappa_r-\kappa_{\beta,k}}\bigl(e^{-\kappa_{\beta,k}\tau}-e^{-\kappa_r\tau}\bigr)\tag{81}
$$

> 式(53)と添字 $k$ を除いて同形です。ショックの位置は効果の大きさを決めますが、満期間の相対的な大きさは決めません。例えば短期と長期の因子 $(k_s,k_\ell)$ を考えると、$k_\ell$ のショックは裁定者の長期債保有を変えるため、デュレーションへの寄与が大きく、短期金利リスク価格に対する影響が大きくなります。ただし $k_\ell$ の平均回帰が速ければ（$\kappa_{\beta,k_\ell}\gt\kappa_{\beta,k_s}$）、$\lambda_{r,t}$ への効果は短命で、長期満期への相対的な効果は小さくなります。つまり**相対的な効果を決めるのはショックの位置ではなく平均回帰速度**です。

**$a\approx\infty$**：システムは $K$ 本の方程式（需要因子ごとに1本、未知数は $\{\nu_l\}_{l=2,\dots,K+1}$ の極限値）に簡約されます。因子が多数あれば需要効果は発生した満期に局所化する、という予想（未証明）が原論文で述べられています。

**数値例（原論文 図1：3ファクター）**

| 設定 | 内容 |
|---|---|
| 需要因子 | 因子1（$k_s$）は5年満期、因子2（$k_\ell$）は20年満期（$\theta_k$ はディラック型） |
| パラメータ | $T=30$、$\alpha(\tau)=\alpha e^{-0.1\tau}$。$a\approx\infty$ では $(\kappa_r,\kappa_{\beta,k},\sigma_r,\sigma_{\beta,k})$ は効かない |
| 2ファクター版（因子1つだけ） | 需要減少で全フォワード金利が上昇。$k_s$ は短期で、$k_\ell$ は長期で効果が大きい |
| 3ファクター版 | 需要減少でも上昇するのは $k_s$ で約7年満期まで、$k_\ell$ で3年満期以上。効果がより局所的になる |

> 3ファクターで一部のフォワード金利が下がるのは、裁定者のヘッジのためです。5年債の需要減少を受けて5年債を買った裁定者は他の満期を空売りしてヘッジします。20年債の需要が増える（$k_\ell$）リスクに対して露出が残るため、十分に長い満期の債券を買ってヘッジし、対応するフォワード金利を押し下げます。

| 記号・項目 | 意味 |
|---|---|
| $A_{\beta,k}(\tau)$ | 需要因子 $k$ に対する債券価格の感応度 |
| $\lambda_{\beta,k,t}$ | 需要因子 $k$ の市場リスク価格 |
| $\nu_l$ | $l=1,\dots,K+1$ の減衰率 |
| $\gamma_{r,l},\gamma_{\beta,k,l}$ | 混合係数 |
| $M_{i,j}$ | $(K+1)\times(K+1)$ 行列の成分 |
| $z_r,z_{\beta,k}$ | $C(\tau)$ の係数 |
| $k_s,k_\ell$ | 短期・長期満期に位置する需要因子 |

### 1.11 投資家需要のミクロ的基礎（付録B）

**設定**

満期の長さ $T$ だけ生きる重複世代の投資家と、無限小期間 $dt$ だけ生きる裁定者がいます。財は2種類で、財1は消費・債券交換が可能、財2は財1から生産でき、消費はできるが交換できません。債券は財1で支払われます。投資家は生まれた時点で財1を $W$ だけ受け取り、債券への投資と私的技術（財1を投じ、生涯の末に財2を得る）を選びます。時点 $0$ に生まれた投資家について、時点 $t\lt T$ に債券 $\tau$ を $\hat y_{t,\tau}$ 単位保有し、私的技術に財1を $dc_t$ 単位投じます。この投資は時点 $T$ に $e^{\hat\beta_t(T-t)}dc_t$ 単位の財2を生みます。

**私的技術の収益**

$$
\hat\beta_t=\underbrace{\beta_{t,T-t}}_{\text{式(5)}}+\underbrace{\eta_t}_{\text{投資家固有のノイズ}}\tag{82}
$$

$$
d\eta_t=-\kappa_\eta\eta_tdt+\sigma_\eta dB_{\eta,t}\tag{83}
$$

> $\eta_t$ は世代内で平均されて消えるノイズで、$(\kappa_\eta,\sigma_\eta)$ は正の定数、$B_{\eta,t}$ は他のすべての不確実性と独立です。

**予算制約（満期 $T$ の債券をニュメレールとする）**

$$
d\hat W_t=\int_0^T\hat y_{t,\tau}\,d\Bigl(\frac{P_{t,\tau}}{P_{t,T-t}}\Bigr)d\tau-\frac{dc_t}{P_{t,T-t}}\tag{84}
$$

**効用と max–min 問題**

$$
u(C_T)+\int_0^Te^{\hat\beta_t(T-t)}dc_t\tag{85}
$$

$$
\max_{\hat y_{t,\tau},c_t}\ \min_{r_t,\beta_t,\eta_t}\Bigl[u(C_T)+\int_0^Te^{\hat\beta_t(T-t)}dc_t\Bigr],\qquad C_T=\hat W_T\tag{86}
$$

> $u$ は財1の消費 $C_T$ の増加凹関数、財2の効用はその消費量に等しい。最小化は $(r_t,\beta_t,\eta_t)$ の標本経路についての最悪ケース（max–min、無限リスク回避）です。

**命題B.1**（無裁定、すなわち式(66)が成り立つとき）

$$
\hat y_{t,T-t}=(u')^{-1}\Bigl[P_{t,T-t}e^{\hat\beta_t(T-t)}\Bigr]\tag{87}
$$

> 投資家は時点 $T$ に満期を迎える債券だけを保有します（またはそれを複製するポートフォリオ）。ゆえに各世代が特定の満期のクライアンテルになります。

**CARA 効用 $u(C_T)=-e^{-C_T}$ のときの需要**

$$
\hat y_{t,T-t}=-\log\bigl(e^{\hat\beta_t(T-t)}P_{t,T-t}\bigr)=(T-t)(R_{t,T-t}-\hat\beta_t),\qquad y_{t,T-t}=(T-t)(R_{t,T-t}-\beta_{t,T-t})\tag{88}
$$

> 世代平均の需要は式(4)の形で、$\alpha(\tau)=1$ に対応します。ただし式(88)は債券の「単位数」の需要で、式(4)は「ドル建て」の需要です。

### 1.12 線形生成過程を用いた変形モデル（付録B）

> ドル建ての需要（式(4)）とOU短期金利の組み合わせでアフィン均衡が得られます。それに対して、投資家の最適化から導く「単位建て」の需要を式のまま均衡決定に用いるため、短期金利に Gabaix (2009) の線形生成過程を仮定した変形モデルです（簡単のため $K=0$）。

**短期金利（線形生成過程）**

$$
dr_t=(\kappa_r+\overline r-r_t)(\overline r-r_t)dt+dN_{r,t}\tag{89}
$$

> $N_{r,t}$ はマルチンゲールで、$r_t$ がある上限 $\hat r\in(\overline r,\overline r+\kappa_r)$ を超えず、瞬間分散が定数 $\sigma_r^2$ となる必要があります。この2条件はブラウン運動では同時に満たせず、ジャンプ成分を加えることで満たします。

**効用関数と投資家保有（時点 $t$）**

$u(C_T)=gC_T-\tfrac12C_T^2$（$C_T\le g$）、$u(C_T)=g^2/2$（$C_T\gt g$）、$g$ は正の定数。命題B.1より、投資家は債券（満期 $T$）を

$$
g-e^{(\overline\beta+\eta_t)(T-t)}P_{t,T-t}\tag{90}
$$

単位保有します。世代平均の需要は

$$
y_{t,T-t}=g-f(T-t)P_{t,T-t}\tag{91}
$$

$$
f(\tau)\equiv e^{\overline\beta\tau+\frac12\Sigma_\eta^2\tau^2}\tag{92}
$$

> $\Sigma_\eta^2$ は $\eta_t$ の世代内分散で、時間を通じて定常値に等しいと置きます。$P_{t,T-t}\gt0$ は無裁定と債券の正の支払から従います。

**アフィン予想と債券収益（価格水準が $r_t$ のアフィン関数）**

$$
P_{t,\tau}=C(\tau)-A_r(\tau)r_t\tag{93}
$$

$$
dP_{t,\tau}=\mu_{t,\tau}dt-A_r(\tau)dN_{r,t}\tag{94}
$$

$$
\mu_{t,\tau}\equiv-\bigl[C'(\tau)-A_r'(\tau)r_t\bigr]-A_r(\tau)(\kappa_r+\overline r-r_t)(\overline r-r_t)\tag{95}
$$

**裁定者の予算制約（債券の単位数 $x_{t,\tau}$ ）**

$$
dW_t=\Bigl(W_t-\int_0^Tx_{t,\tau}P_{t,\tau}d\tau\Bigr)r_tdt+\int_0^Tx_{t,\tau}dP_{t,\tau}\tag{96}
$$

**一階条件**

$$
\mu_{t,\tau}-r_tP_{t,\tau}=A_r(\tau)\lambda_{r,t}\tag{97}
$$

$$
\lambda_{r,t}=-a\sigma_r^2\int_0^Ty_{t,\tau}A_r(\tau)d\tau=a\sigma_r^2\int_0^T\bigl[f(\tau)[C(\tau)-A_r(\tau)r_t]-g\bigr]A_r(\tau)d\tau\tag{98}
$$

> $\lambda_{r,t}$ の定義は式(13)と同じです（$x$ を単位数として読む）。第2の等号は式(91)、(93)から従います。

**$r_t$ のアフィン方程式**

$$
-\bigl[C'(\tau)-A_r'(\tau)r_t\bigr]-A_r(\tau)(\kappa_r+\overline r-r_t)(\overline r-r_t)-r_t[C(\tau)-A_r(\tau)r_t]=A_r(\tau)a\sigma_r^2\int_0^T\bigl[f(\tau)[C(\tau)-A_r(\tau)r_t]-g\bigr]A_r(\tau)d\tau\tag{99}
$$

> 式(99)は $r_t$ についてアフィンです。$r_t$ の係数と定数項をそれぞれゼロとおくと、$A_r(\tau),C(\tau)$ についての2本の線形ODEが得られます。

| 記号・項目 | 意味 |
|---|---|
| $\hat y_{t,\tau}$ | 投資家の債券保有量（単位数） |
| $dc_t$ | 私的技術への投資 |
| $\hat\beta_t,\eta_t$ | 私的技術の収益、投資家固有ノイズ |
| $\kappa_\eta,\sigma_\eta,\Sigma_\eta^2$ | ノイズの平均回帰速度・ボラティリティ・世代内分散 |
| $u$ | 財1の消費の効用 |
| $g$ | 2次効用の正の定数 |
| $f(\tau)$ | 世代平均需要の係数 |
| $N_{r,t}$ | 短期金利のマルチンゲール（ジャンプを含む） |
| $\hat r$ | 短期金利の上限（$\hat r\in(\overline r,\overline r+\kappa_r)$） |

### 1.13 主要帰結

**主要式（1ファクター）**

$$
\boxed{\begin{aligned}A_r(\tau)&=\underbrace{\frac{1-e^{-\kappa_r^{\ast}\tau}}{\kappa_r^{\ast}}}_{\text{ヴァシチェック型}},\quad\kappa_r^{\ast}=\underbrace{\kappa_r+a\sigma_r^2\int_0^T\alpha A_r^2d\tau}_{\text{裁定者のリスク回避で上昇}}\\\gamma_{FB}&=\underbrace{\frac{\kappa_r^{\ast}-\kappa_r}{\kappa_r^{\ast}}}_{\text{プレミアムと傾きの関係}},\qquad\frac{\partial f_{t,\tau}}{\partial r_t}=\underbrace{e^{-\kappa_r^{\ast}\tau}}_{\text{過小反応}}\end{aligned}}\tag{100}
$$

#### 主要式（1ファクター）の読み方

**ひと目で言うと**：債券価格の短期金利への感応度 $A_r$ は、裁定者がリスクを嫌うほど、リスク中立測度での平均回帰速度 $\kappa_r^{\ast}$ が速まった形になる。その結果、(i) 傾きが急なほど債券の超過収益が高く（Fama–Bliss）、(ii) フォワード金利は予想短期金利より小さくしか動かない（過小反応）。$a=0$ なら、どちらも消えて期待仮説（EH）に戻る。

**① 債券価格の短期金利感応度（ヴァシチェック型）**

$$
A_r(\tau)=\frac{1-e^{-\kappa_r^{\ast}\tau}}{\kappa_r^{\ast}}
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $A_r(\tau)$ | 満期 $\tau$ の債券価格の短期金利感応度 | 式(9)より $\log P_{t,\tau}=-[A_r r_t+C]$。$r_t$ が1上がると $\log P$ が $A_r$ だけ下がる（デュレーションに相当） |
| $1-e^{-\kappa_r^{\ast}\tau}$ | 満期が延びるほど1に近づく項 | $\tau$ が小さいうちは $A_r\approx\tau$（満期に比例）で、$\tau$ が大きいと $A_r\to1/\kappa_r^{\ast}$ で頭打ちになる。短期金利の影響が平均回帰で薄れるためである |
| $\kappa_r^{\ast}$ | リスク中立測度での平均回帰速度 | 式(20)の $dr_t=\kappa_r^{\ast}(\overline r^{\ast}-r_t)dt+\sigma_r d\hat B_{r,t}$ の係数。真の値 $\kappa_r$ とは異なる。②で決まる |

**意味**：形は Vasicek (1977) と同じ（式(16)）だが、回帰速度が真の値 $\kappa_r$ ではなく $\kappa_r^{\ast}$ に置き換わっている。債券は、短期金利が速く戻る世界の債券として値付けされる。
**結論へのつながり**：選好ハビタット投資家の需要と裁定者のリスク回避は、$A_r$ の中身ではなく $\kappa_r^{\ast}$ の値を通じて価格に入る。③④はいずれも、この $\kappa_r^{\ast}$ と $\kappa_r$ の差から出てくる。

**② リスク中立測度の平均回帰速度（固定点）**

$$
\kappa_r^{\ast}=\kappa_r+a\sigma_r^2\int_0^T\alpha(\tau)A_r(\tau)^2d\tau
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $\kappa_r$ | 真の測度での平均回帰速度 | 式(3)の短期金利過程の係数。$a=0$ のとき $\kappa_r^{\ast}=\kappa_r$ になる |
| $a\sigma_r^2$ | 裁定者のリスク回避度 × 短期金利の分散 | 式(13)のリスク価格 $\lambda_{r,t}$ の係数。リスクを嫌うほど、またリスクが大きいほど追加項が大きくなる |
| $\alpha(\tau)$ | 満期 $\tau$ の投資家需要の弾力性 | 式(4)。需要が利回りに敏感なほど、裁定者の保有が $r_t$ に連動して変わる（A3） |
| $A_r(\tau)^2$ | 短期金利リスク量の2乗 | 保有の $r_t$ への反応が $-\alpha A_r$（式(14)）、リスク量が $A_r$ なので、掛けて $\alpha A_r^2$ になる |
| $\int_0^T d\tau$ | 全満期の合計 | 裁定者は全満期の債券を保有するので、全満期の寄与を足し上げる |
| 固定点 | 右辺の $A_r$ が $\kappa_r^{\ast}$ に依存 | 式(15)のとおり、$A_r$ を決める方程式の係数が $A_r$ 自身を含む。$\kappa_r^{\ast}$ は式(18)の一意解 |

**意味**：追加項 $a\sigma_r^2\int\alpha A_r^2d\tau$ は、リスク価格 $\lambda_{r,t}$ が $r_t$ の減少関数であること（式(14)）の大きさそのものである。短期金利が上がると、裁定者が債券を空売りして要求する補償が下がり、リスク中立測度では $r_t$ の戻りが速く見える。$\alpha\gt0$ なので $\kappa_r^{\ast}\gt\kappa_r$、$a$ が大きいほど差が広がる（式(25)）。
**結論へのつながり**：$a=0$ では $\kappa_r^{\ast}=\kappa_r$ となり、プレミアムはゼロ、需要ショックの効果もない。裁定者のリスク回避と投資家需要の弾力性の両方があって初めて、③の符号反転や④の過小反応が生じる。

**③ プレミアムと傾きの関係（Fama–Bliss）**

$$
\gamma_{FB}=\frac{\kappa_r^{\ast}-\kappa_r}{\kappa_r^{\ast}}
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $\gamma_{FB}$ | 式(21)の Fama–Bliss 回帰の傾き係数 | フォワード金利と短期金利の差（傾き）が1上がったとき、債券の超過収益が平均でいくら上がるかを表す |
| $\kappa_r^{\ast}-\kappa_r$ | 裁定者のリスク回避による回帰速度の上昇分 | 短期金利に対する期待超過収益の感応度の大きさ。分子はプレミアム側の動きに対応する |
| $\kappa_r^{\ast}$（分母） | 傾きの感応度を決める回帰速度 | 傾きの $r_t$ への反応が $-\kappa_r^{\ast}A_r$ になるため（式(23)、(16)） |
| 値の範囲 | $0\lt\gamma_{FB}\lt1$ | $\kappa_r^{\ast}\gt\kappa_r$ より正。$a=0$ で0、$a\to\infty$ で1に近づく |
| $\Delta\tau\to0,\ \forall\tau$ | 満期によらない | 式(22)は任意の $\tau$ で成り立つ |

**意味**：傾きの変化のうち、プレミアムの変化で説明される割合が $\gamma_{FB}=1-\kappa_r/\kappa_r^{\ast}$ である。傾きが急（短期金利が低い）ときほど、債券の期待超過収益は高くなる。式(12)、(14)、(18)、(23)から、$r_t$ への感応度の比として導ける（本記事による補足）。
**結論へのつながり**：論文が説明する Fama–Bliss の結果（プレミアムと傾きの正の関係、短期金利が高いとプレミアムが負）を、裁定者のキャリートレードだけで再現する。EH では $\gamma_{FB}=0$ なので、$\gamma_{FB}\gt0$ は EH の棄却に対応する。

**④ フォワード金利の過小反応**

$$
\frac{\partial f_{t,\tau}}{\partial r_t}=e^{-\kappa_r^{\ast}\tau}
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $f_{t,\tau}$ | 満期 $\tau$ の瞬間フォワードレート | 式(23)より $f_{t,\tau}=A_r'(\tau)r_t+C'(\tau)$。$r_t$ への感応度は $A_r'(\tau)$ |
| $A_r'(\tau)$ | ①の $A_r$ を $\tau$ で微分したもの | ①より $e^{-\kappa_r^{\ast}\tau}$。これが $\partial f/\partial r_t$ になる |
| $e^{-\kappa_r^{\ast}\tau}$ | 短期金利ショックが満期 $\tau$ のフォワード金利に残る割合 | 比較の基準は予想短期金利の反応 $\partial E_t(r_{t+\tau})/\partial r_t=e^{-\kappa_r\tau}$（式(24)）。$\kappa_r^{\ast}\gt\kappa_r$ なので $e^{-\kappa_r^{\ast}\tau}\lt e^{-\kappa_r\tau}$ |

**意味**：短期金利が動いても、フォワード金利は予想短期金利ほどには動かない。差は $a$ が大きいほど広がる（式(25)）。
**結論へのつながり**：EH ではフォワード金利と予想短期金利が1対1で動くので、過小反応は EH からのずれである。情報はキャリートレードを通じてのみ織り込まれ、その規模は裁定者のリスク回避で制限される。これが、リスク回避度の高い（資本の乏しい）裁定者のもとで金融政策の波及が弱まることにつながる。

**1ファクターの式のつながり**

```
a, σ_r, α(τ) ──→ ② κ*_r = κ_r + aσ²∫αA²  （固定点）
                      ├─→ ① A_r = (1−e^{−κ*τ})/κ*   （ヴァシチェック型の価格）
                      ├─→ ③ γ_FB = (κ*−κ_r)/κ* ∈ (0,1)  （プレミアムと傾き）
                      └─→ ④ ∂f/∂r = e^{−κ*τ} < e^{−κ_rτ}  （過小反応）
a = 0 ──→ κ* = κ_r ──→ ③ = 0、④ = e^{−κ_rτ}（EH）
```

**主要式（2ファクター）**

$$
\boxed{\begin{aligned}a\approx0:&\ A_r'\approx e^{-\kappa_r\tau},\ A_\beta'\approx\underbrace{\frac{a\sigma_r^2\int\alpha\tau\theta\frac{1-e^{-\kappa_r\tau}}{\kappa_r}d\tau}{\kappa_r-\kappa_\beta}}_{\text{大きさ}}\underbrace{(e^{-\kappa_\beta\tau}-e^{-\kappa_r\tau})}_{\text{形}}\\a\approx\infty:&\ A_r'\approx e^{-a^{1/3}\overline n_1\tau}+a^{-1/3}\overline c_re^{-\overline\nu_2\tau},\ A_\beta'\approx\overline\gamma_\beta\bigl(e^{-\overline\nu_2\tau}-e^{-a^{1/3}\overline n_1\tau}\bigr)\end{aligned}}\tag{101}
$$

#### 主要式（2ファクター）の読み方

**ひと目で言うと**：短期金利 $r_t$ のほかに、特定の満期への需要の変動 $\beta_t$ があるとき、裁定者は需要ショックを全満期のフォワード金利に波及させる。波及の形は、裁定者のリスク回避度 $a$ で変わる。$a\approx0$ では、$\theta(\tau)$（需要ショックが働く満期）は効果の大きさだけを決める。$a\approx\infty$ では、効果の形にも効き、短期金利ショックは長期フォワード金利を逆方向に動かす。

**① $a\approx0$：短期金利ショックへの反応**

$$
A_r'\approx e^{-\kappa_r\tau}
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $A_r'(\tau)$ | 短期金利ショックに対するフォワード金利の反応 | 式(51)の $f_{t,\tau}=A_r'r_t+A_\beta'\beta_t+C'$ の第1項の係数 |
| $e^{-\kappa_r\tau}$ | 予想短期金利の反応と同じ減衰 | 式(24)で見た $\partial E_t(r_{t+\tau})/\partial r_t$ と同じ形。式(35)の $\gamma_r\approx a^3\underline c_r$ が無視でき、$A_r$ が $\nu_1=\kappa_r$ の1項に近づくため |

**意味**：裁定者がほぼリスク中立なら、フォワード金利は予想短期金利をそのまま映す。
**結論へのつながり**：これが EH に近い基準の反応である。③との差が、リスク回避度の効果を示す。

**② $a\approx0$：需要ショックへの反応（大きさ × 形）**

$$
A_\beta'\approx\frac{a\sigma_r^2\int\alpha\tau\theta\frac{1-e^{-\kappa_r\tau}}{\kappa_r}d\tau}{\kappa_r-\kappa_\beta}\cdot\bigl(e^{-\kappa_\beta\tau}-e^{-\kappa_r\tau}\bigr)
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $A_\beta'(\tau)$ | 需要因子 $\beta_t$ の上昇に対するフォワード金利の反応 | $\theta\gt0$ なら全満期で正。需要の減少が期間構造を押し上げる |
| $a\sigma_r^2$ | リスク回避度 × 短期金利の分散 | 効果が $a$ に比例する。$a=0$ では需要ショックの効果は消える |
| $\alpha(\tau)\tau\theta(\tau)$ | 需要ショックで裁定者が買う額 | 式(56)で、$A_\beta$ が小さいときの近似。投資家の需要が減る分を、裁定者が引き取る |
| $\dfrac{1-e^{-\kappa_r\tau}}{\kappa_r}$ | 短期金利への感応度（$a\approx0$ の $A_r$） | 積分全体は、裁定者が買うポートフォリオの「デュレーション」になる。需要ショックは、この短期金利リスクを通じて価格に効く |
| $\dfrac{1}{\kappa_r-\kappa_\beta}$ | 形の正規化係数 | 後ろの括弧と合わせて、符号によらず正の山形になる |
| $e^{-\kappa_\beta\tau}-e^{-\kappa_r\tau}$ | 満期方向の形 | $\tau=0$ と $\tau=\infty$ でゼロの山形。$\theta$ に依存しない |

**意味**：需要ショックの効果は「大きさ（$\theta$ に依存）」×「形（$\theta$ に依存しない）」に分かれる。$\theta$ が特定の満期に偏っていても、フォワード金利の効果は全満期にわたる同じ山形になる。
**結論へのつながり**：需要ショックは局所的に起きても、無裁定を保つ裁定者を通じて全満期へ波及する。選好ハビタット的な「満期ごとの局所性」は、$a\approx0$ では現れない（命題5）。

**③ $a\approx\infty$：短期金利ショックへの反応（過小反応と逆方向）**

$$
A_r'\approx e^{-a^{1/3}\overline n_1\tau}+a^{-1/3}\overline c_re^{-\overline\nu_2\tau}
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $e^{-a^{1/3}\overline n_1\tau}$ | 速く減衰する項 | $\overline n_1\gt0$（式(48)）。$a$ が大きいと短期満期でしか効かず、過小反応が強まる（1ファクターの $e^{-\kappa_r^{\ast}\tau}$ と同じ働き） |
| $\overline c_r$ | 逆方向の項の係数 | 式(49)より負（コーシー＝シュワルツの不等式から従う）。式(46)で $\gamma_r\approx a^{-1/3}\overline c_r$ |
| $a^{-1/3}$ | 逆方向の項の大きさ | $a$ が大きいほど小さくなるが、第1項が消えた長期満期では、これが支配する |
| $e^{-\overline\nu_2\tau}$ | 長期側の形 | $\overline\nu_2$ は式(47)で決まる。需要ファクターの減衰を反映する |

**意味**：短期金利が上がると、短期満期のフォワード金利は同方向に動くが、長期満期のフォワード金利は逆方向に（小さく）動く。
**結論へのつながり**：系2の結論である。裁定者は需要リスクをヘッジするため、バタフライ取引で長期債を買う。そのため、短期金利ショックが長期フォワード金利を逆に動かす。①との対比で、リスク回避の効果が分かる。

**④ $a\approx\infty$：需要ショックへの反応**

$$
A_\beta'\approx\overline\gamma_\beta\bigl(e^{-\overline\nu_2\tau}-e^{-a^{1/3}\overline n_1\tau}\bigr)
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $\overline\gamma_\beta$ | 効果の大きさ | 式(50)。分子は $\alpha\tau\theta$ を $\overline\nu_2$ でのデュレーションで加重した積分、分母は $\alpha$ を同じデュレーションの2乗で加重した積分。$\theta\gt0$ なら正 |
| $e^{-\overline\nu_2\tau}$ | 長期側の形 | $\overline\nu_2$ は式(47)で、$\theta(\tau)$ の満期方向の形から決まる。$a\approx0$ と違い、$\theta$ が効果の形にも影響する |
| $e^{-a^{1/3}\overline n_1\tau}$ | 短期満期でだけ効く項 | $\tau=0$ で $A_\beta'(0)=0$ を満たすための立ち上がり。それ以降は速く消える |

**意味**：$a\approx\infty$ では、$\theta$ が効果の大きさだけでなく満期方向の形も決める。需要ショックの位置が長期寄りだと、効果が最大になる満期が中期から長期へ移る（命題6）。
**結論へのつながり**：需要の減少は、全満期のフォワード金利を押し上げる（系3、選好ハビタット）。裁定者のリスク回避度が高いほど、需要ショックの局所性が強まる。ただし、因子が2つだけなので、完全には局所化しない。

**2ファクターの式のつながり**

```
a ≈ 0 ：① 短期金利 → e^{−κ_r τ}（EH 並み）
        ② 需要   → 大きさ(θ) × 形(θに依らない山形)
                        ↓  リスク回避度 a を上げる
a ≈ ∞ ：③ 短期金利 → 短期は同方向（過小反応）＋長期は逆方向（バタフライ）
        ④ 需要   → 大きさ γ̄_β ＋ 形も θ に依存（ν̄₂ 経由）
```

**比較静学・特殊ケース**

| 変化・ケース | 結果 | 符号・式 |
|---|---|---|
| $a=0$ | EH が成立。プレミアムゼロ、需要ショックの効果なし | $\kappa_r^{\ast}=\kappa_r$、$\overline r^{\ast}=\overline r$、$\gamma_{FB}=0$ |
| $a$ の上昇（1ファクター） | 過小反応が強まり、プレミアム–傾き関係が強まる | $\partial\kappa_r^{\ast}/\partial a\gt0$、式(25) |
| $a\to\infty$（1ファクター） | $\gamma_{FB}$ は1に近づく | $\gamma_{FB}\to1$ |
| 短期金利 $r_t$ の上昇 | 債券プレミアムは低下（裁定者がロールアップ取引で空売り） | $\partial(\mu-r)/\partial r_t\lt0$、式(60) |
| 需要因子 $\beta_t$ の上昇（需要減） | プレミアムは上昇、フォワード金利は全満期で上昇 | $\partial(\mu-r)/\partial\beta_t\gt0$、$A_\beta'\gt0$ |
| $a\approx\infty$、短期金利ショック | 長期フォワード金利は逆方向に動く（バタフライ取引） | $\overline c_r\lt0$、式(54) |
| 需要ファクターの追加（$a\approx\infty$） | 需要効果がより局所的になる | 図1（数値例） |
| $\sigma_\beta^2/\sigma_r^2$ の上昇 | $\gamma_{FB}$ は上昇 | 命題8 |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 2000〜2002年の米財務省の長期債買戻し（30年債 $-58$bp、5年債 $-9$bp、2年債 $+9$bp） | 長期満期に局所的な供給ショック。需要因子 $\beta_t$ の位置 $\theta(\tau)$ が長期にあり、裁定者を通じて他の満期にも波及するが、効果は満期間で異なる |
| 債券リスクプレミアムの符号反転（Fama–Bliss 1987） | 短期金利が高いと裁定者は債券を空売り（プレミアム負）、低いと買い（正）。命題2、8 |
| フォワード金利の予想短期金利への過小反応 | 情報はキャリートレードを通じてのみ織り込まれ、その規模はリスク回避で制限される。命題3、系1 |
| 長期金利変化の予測可能性（Campbell–Shiller 1991） | $\gamma_{CS}\lt1$、$a$ が大きいと負で $\tau$ について減少。命題9 |
| 需要ショックの非局所的な波及 | 無裁定により需要効果はリスク価格を通じる。$a\approx0$ では位置が効果の大きさのみを決める。命題5、系3 |
| 短期金利ショックに対する長期フォワード金利の逆方向反応 | 裁定者がバタフライ取引（需要リスクをヘッジするため長期債を買う）。系2 |
| 金融政策の波及の強弱 | 裁定者が資本不足でリスク回避度が高いと波及が弱く、フォワード金利は予想短期金利に過小反応。系1 |
| 金融政策による裁定者への期待的な富の移転 | 低い短期金利・右上がりの期間構造はプレミアム正の形で裁定者に利益を与える。$a$ が大きいほど大きい |
| 主成分と経済的ファクターのずれ | 第1主成分が満期間でフラットでも、短期金利と需要の役割は満期ごとに大きく異なる（数値例） |
| 英国2004年年金改革後の長期金利低下（論文脚注13） | 年金基金の長期債需要は弾力的（購入閾値が時間変動）で、非債券投資への代替も生じる。A3 の弾力性の重要性を示す事例 |
| Cochrane–Piazzesi（2005）の山形（テント形）予測因子 | 需要の減少による山形の期間構造がプレミアム上昇を予測する可能性（示唆。較正は将来課題） |

## 3. 整理している点 {#sec3}

- **需要効果と無裁定の両立**：裁定者が期間構造を無裁定に保つ一方、リスク回避的なので需要ショックは価格に効きます。需要の効果は因子のリスク価格を通じてのみ現れるため、元のショックとは大きく異なり得ます。
- **限定的な裁定の精緻化**：裁定の限界は需要ショックが価格に効く理由を説明しますが、限定的な裁定でも無リスク裁定機会を排除するので、需要効果の満期間の形に厳しい制約を課します。リスク因子が多いほど制約は緩み、選好ハビタット的な局所性が現れます。
- **キャリートレードによる統合**：リスクプレミアム、フォワード金利の過小反応、金融政策の波及を、裁定者のキャリートレードとそのリスク回避度という1つの機構で整理します。

## 4. 対象外の現象 {#sec4}

- 定量的な較正・構造推定、およびそれに基づく政策評価（中央銀行の買入や財務省の発行の効果）は将来課題とされています。
- 実質金利と名目金利の区別、インフレ、関連するリスクファクターの特定は扱いません。
- 短期金利の内生的決定（中央銀行の政策反応やマクロ環境）は扱わず、$r_t$ は外生です。
- 因子が相関する場合は結論の不変性が主張されるのみで、完全な解析は示されません。また $a$ が中間的な値のときは閉形式がなく、解が複素数になり振動する場合があることが指摘されるのみです（詳細は将来課題）。
- 需要因子が多数のとき需要効果が完全に局所化する、という予想は証明されていません。
- 長期保有者が満期間で代替する状況は扱いません（A2 の極端な仮定）。
- 裁定者の富効果は捨象されています（$a$ は定数）。富効果は経験的含意を論じる際に非形式的に言及されるのみです。
- 政府債務の最適な満期構成・発行政策は、本モデルの範囲外（別の論文の主題）です。

## 5. 主要文献・関連論文 {#sec5}

- **[金字塔的論文]** Culbertson, J. M. (1957). The Term Structure of Interest Rates. *Quarterly Journal of Economics*, 71(4), 485–517.
  - **位置づけ**: 満期ごとの市場が分断されうるとする選好ハビタット（市場分断）説の古典。本論文が形式化する対象。
- **[金字塔的論文]** Modigliani, F., & Sutch, R. (1966). Innovations in Interest Rate Policy. *American Economic Review*, 56(1/2), 178–197.
  - **位置づけ**: 選好ハビタット説を提唱し、投資家の満期選好と金融政策の効果を論じた基礎文献。本論文の直接の理論的出発点。
- **[技術的基盤]** Vasicek, O. (1977). An Equilibrium Characterization of the Term Structure. *Journal of Financial Economics*, 5(2), 177–188.
  - **位置づけ**: OU型短期金利から債券価格のアフィン式を導いた古典。本モデルの式(16)、(17)はリスク中立測度でこの形に一致する。
- **[発展・実証]** Greenwood, R., & Vayanos, D. (2014). Bond Supply and Excess Bond Returns. *Review of Financial Studies*, 27(3), 663–713.
  - **位置づけ**: 本モデルの拡張で、国債の平均満期（供給）が超過収益を予測することを理論と実証で示した。
- **[刊行版]** Vayanos, D., & Vila, J.-L. (2021). A Preferred-Habitat Model of the Term Structure of Interest Rates. *Econometrica*, 89(1), 77–112.
  - **位置づけ**: 本記事が基づくワーキングペーパー（2009年）の刊行版。内容に差異がある可能性があるため、引用時は刊行版を確認されたい。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
前提 A1–A7
 ├─ 式(1)(2)  利回り・フォワード
 ├─ 式(3)–(6) 短期金利 r_t、需要 y_{t,τ}、需要因子 β_{k,t}
 └─ 式(7)(8)  裁定者の予算制約と平均分散問題
        │ 伊藤の補題 T1、一階条件 T2
        ▼
 [K=0]  式(9)–(11) → 補題1 式(12)(13)
        │ 市場清算 x=-y → 式(14) → 係数比較 T3
        ▼
        式(15)(18) 固定点 → 命題1 式(16)(17)(19)(20)
        ├─ 命題2 式(22) / 命題3 式(24) / 系1 式(25)
 [K=1]  式(26)–(28) → 補題2 式(29)–(31)
        │ 係数比較 → 式(32)–(34) → 対角化 T6
        ▼
        命題4 式(35)–(42) → 命題5 式(43)–(50)（スケーリング T9）
        ├─ 式(51)–(55)、系2、命題6、系3
        └─ 命題7 式(60) / 命題8 / 命題9 式(62)
 [K≥1]  式(65)–(69) → 補題3 式(66)–(68) → 命題10 式(70)–(80)
 付録B  式(82)–(88) 需要の導出、式(89)–(99) 変形モデル
```

### A.1 使う道具

**T1　伊藤の補題（固定満期日の債券）**

満期日が固定された債券の残存満期 $\tau$ は時間とともに減るので $\partial\tau/\partial t=-1$ です。$f(t,r_t,\tau_t)$ の微分には $-\partial_\tau f\,dt$ の項が加わります。

**T2　平均分散目的の点ごとの最大化**

目的関数が $x_{t,\tau}$ について線形項と2乗項（$\bigl(\int xA\bigr)^2$）の和なので、各 $\tau$ について $x_{t,\tau}$ で汎関数微分してゼロとおけば一階条件が得られます。

**T3　アフィン恒等式の係数比較**

$r_t$（および $\beta_t$）について恒等的に成り立つアフィン式は、各変数の係数と定数項がそれぞれゼロです。

**T4　一階線形ODE**

$A'+\kappa A=1$、$A(0)=0$ の解は $A(\tau)=(1-e^{-\kappa\tau})/\kappa$。

**T5　OU過程の性質**

$E_t(r_{t+\tau})=(1-e^{-\kappa_r\tau})\overline r+e^{-\kappa_r\tau}r_t$、定常分散 $\mathrm{Var}(r_t)=\sigma_r^2/(2\kappa_r)$、$\mathrm{Cov}(r_{t+\Delta\tau},r_t)=\mathrm{Var}(r_t)e^{-\kappa_r\Delta\tau}$。

**T6　$2\times2$ 行列の対角化**

$\mathrm{diag}(\kappa_r,\kappa_\beta)-M=P^{-1}\mathrm{diag}(\nu_1,\nu_2)P$ とおいてODEを分離。

**T7　回帰係数**

$\gamma=\mathrm{Cov}(\text{被説明},\text{説明})/\mathrm{Var}(\text{説明})$。定数項は共分散・分散に寄与しません。

**T8　コーシー＝シュワルツの不等式**

$\bigl(\int\alpha f\bigr)^2\le\int\alpha\cdot\int\alpha f^2$（$\alpha\gt0$）。

**T9　漸近展開**

$a\to0$ は $(\gamma_r,\gamma_\beta)=(a^3c_r,ac_\beta)$、$a\to\infty$ は $(\nu_1,\gamma_r)=(a^{1/3}n_1,a^{-1/3}c_r)$ とスケーリングして、主要項の方程式を取り出します。

### A.2 補題1（式(9)〜(13)）の導出

**Step 1　伊藤の補題（T1）**

式(9)より（$\tau$ は残存満期、$d\tau=-dt$）

$$
d\log P_{t,\tau}=-\bigl[A_r(\tau)dr_t-A_r'(\tau)r_tdt-C'(\tau)dt\bigr],\qquad(dr_t)^2=\sigma_r^2dt
$$

$dP/P=d\log P+\tfrac12(d\log P)^2$ に代入すると、$dt$ の係数が式(11)、ブラウン運動の係数が $-A_r\sigma_r$ になります。→ 式(10)、(11)

**Step 2　予算制約に代入**

式(10)を式(7)に代入し、$W_tr_t-r_t\int x\,d\tau+\int x\mu\,d\tau$ をまとめると

$$
dW_t=\Bigl[W_tr_t+\int_0^Tx_{t,\tau}(\mu_{t,\tau}-r_t)d\tau\Bigr]dt-\Bigl[\int_0^Tx_{t,\tau}A_r(\tau)d\tau\Bigr]\sigma_rdB_{r,t}
$$

**Step 3　目的関数**

$E_t(dW_t)$ と $Var_t(dW_t)=\bigl(\int xA_r\bigr)^2\sigma_r^2dt$ を式(8)に入れると（共通因子 $dt$ を除く）

$$
\max_{\{x_{t,\tau}\}}\Bigl[W_tr_t+\int_0^Tx_{t,\tau}(\mu_{t,\tau}-r_t)d\tau-\frac{a\sigma_r^2}{2}\Bigl(\int_0^Tx_{t,\tau}A_r(\tau)d\tau\Bigr)^2\Bigr]\tag{102}
$$

**Step 4　一階条件（T2）**

各 $\tau$ で $x_{t,\tau}$ について微分してゼロとおくと $\mu_{t,\tau}-r_t-a\sigma_r^2A_r(\tau)\int_0^Tx_{t,\tau}A_r(\tau)d\tau=0$。→ 式(12)、(13)

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(3)、(7)、(8)、(9) |
| 道具 | T1、T2 |

**確認**：$a=0$ なら式(12)は $\mu_{t,\tau}=r_t$（期待収益が短期金利に等しい）で、EH に対応します。

### A.3 命題1（式(14)〜(20)）の導出

**Step 1　市場清算**

$x_{t,\tau}=-y_{t,\tau}$ を式(13)に代入し、式(1)、(4)、(5)、(9)（$K=0$）より $y_{t,\tau}=\alpha(\tau)[\tau R_{t,\tau}-\overline\beta\tau]=\alpha(\tau)[A_r(\tau)r_t+C(\tau)-\overline\beta\tau]$。→ 式(14)

**Step 2　式(11)と式(14)を式(12)に代入**

$$
A_r'(\tau)r_t+C'(\tau)-A_r(\tau)\kappa_r(\overline r-r_t)+\tfrac12A_r(\tau)^2\sigma_r^2-r_t=A_r(\tau)a\sigma_r^2\int_0^T\alpha(u)\bigl[\overline\beta u-(A_r(u)r_t+C(u))\bigr]A_r(u)du\tag{103}
$$

**Step 3　$r_t$ の係数（T3）**

左辺の $r_t$ の係数は $A_r'+\kappa_rA_r-1$、右辺は $-a\sigma_r^2A_r\int\alpha A_r^2$。→ 式(15)

**Step 4　定数項（T3）**

$$
C'(\tau)-\kappa_r\overline rA_r(\tau)+\tfrac12\sigma_r^2A_r(\tau)^2=a\sigma_r^2A_r(\tau)\int_0^T\alpha(u)[\overline\beta u-C(u)]A_r(u)du\tag{104}
$$

**Step 5　$A_r$ の解（T4）**

$\kappa_r^{\ast}\equiv\kappa_r+a\sigma_r^2\int\alpha A_r^2$ とおくと式(15)は $A_r'+\kappa_r^{\ast}A_r=1$、$A_r(0)=0$ で、解は式(16)。自己整合の条件が式(18)です。一意性：式(16)より $A_r$ は $\kappa_r^{\ast}$ について減少するので、$\int\alpha A_r^2\gt0$ も $\kappa_r^{\ast}$ について減少します。式(18)は左辺が $\kappa_r^{\ast}$ について増加、右辺が減少なので、解は一意です。→ 式(16)、(18)

**Step 6　$C$ の解**

$z_r\equiv\kappa_r\overline r+a\sigma_r^2\int\alpha[\overline\beta u-C(u)]A_r\,du$ とおくと式(104)は $C'=z_rA_r-\tfrac12\sigma_r^2A_r^2$、$C(0)=0$。積分して

$$
C(\tau)=z_r\int_0^\tau A_r(u)du-\frac{\sigma_r^2}{2}\int_0^\tau A_r(u)^2du,\qquad z_r=\kappa_r\overline r+a\sigma_r^2\int_0^T\alpha(\tau)[\overline\beta\tau-C(\tau)]A_r(\tau)d\tau\tag{105}
$$

**Step 7　$z_r$ の閉形式**

式(105)の $C$ を $z_r$ の定義に代入して $z_r$ について解くと

$$
z_r=\frac{\kappa_r\overline r+a\sigma_r^2\overline\beta\displaystyle\int_0^T\alpha\tau A_r\,d\tau+\dfrac{a\sigma_r^4}{2}\displaystyle\int_0^T\alpha\Bigl[\int_0^\tau A_r(u)^2du\Bigr]A_r\,d\tau}{1+a\sigma_r^2\displaystyle\int_0^T\alpha\Bigl[\int_0^\tau A_r(u)du\Bigr]A_r\,d\tau}\tag{106}
$$

**Step 8　$z_r=\kappa_r^{\ast}\overline r^{\ast}$ の確認**

式(16)より

$$
\tau-A_r(\tau)=\kappa_r^{\ast}\int_0^\tau A_r(u)du\tag{107}
$$

式(18)より $\kappa_r=\kappa_r^{\ast}-a\sigma_r^2\int\alpha A_r^2$ なので

$$
\kappa_r+a\sigma_r^2\int_0^T\alpha\tau A_r\,d\tau=\kappa_r^{\ast}+a\sigma_r^2\int_0^T\alpha(\tau-A_r)A_r\,d\tau=\kappa_r^{\ast}\Bigl[1+a\sigma_r^2\int_0^T\alpha\Bigl[\int_0^\tau A_r(u)du\Bigr]A_r\,d\tau\Bigr]\tag{108}
$$

式(108)より、式(106)の分子 $\kappa_r\overline r+a\sigma_r^2\overline\beta\int\alpha\tau A_r$ は $\overline r(\kappa_r+a\sigma_r^2\int\alpha\tau A_r)+(\overline\beta-\overline r)a\sigma_r^2\int\alpha\tau A_r$ と書けます。これを式(106)に使うと $z_r=\kappa_r^{\ast}\overline r^{\ast}$（$\overline r^{\ast}$ は式(19)）です。→ 式(17)、(19)

**Step 9　リスク中立動学**

式(103)の右辺は、式(18)と $z_r$ の定義より $A_r(\tau)[z_r-\kappa_r\overline r-r_t(\kappa_r^{\ast}-\kappa_r)]$ です。両辺を整理し $z_r=\kappa_r^{\ast}\overline r^{\ast}$ を使うと

$$
A_r'(\tau)r_t+C'(\tau)-A_r(\tau)\kappa_r^{\ast}(\overline r^{\ast}-r_t)+\tfrac12A_r(\tau)^2\sigma_r^2-r_t=0\tag{109}
$$

これは $dr_t=\kappa_r^{\ast}(\overline r^{\ast}-r_t)dt+\sigma_rd\hat B_{r,t}$ の下での割引債価格のPDEです。→ 式(20)

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(1)、(4)、(5)、(9)、(11)、(12)、(13) |
| 道具 | T3、T4（固定点の一意性） |

**確認**：$a=0$ なら $\kappa_r^{\ast}=\kappa_r$、式(19)で $\overline r^{\ast}=\overline r$ となり、通常のヴァシチェックに一致します。

### A.4 命題2（式(22)）の導出

**Step 1　被説明変数・説明変数**

式(1)、(2)、(9)より、被説明変数は

$$
\tfrac1{\Delta\tau}\bigl[A_r(\tau)r_t+C(\tau)-[A_r(\tau-\Delta\tau)r_{t+\Delta\tau}+C(\tau-\Delta\tau)]-[A_r(\Delta\tau)r_t+C(\Delta\tau)]\bigr]
$$

説明変数は同じ形で $r_{t+\Delta\tau}$ を $r_t$ に置き換えたものです。

**Step 2　回帰係数（T7）**

定数項は消え、

$$
\gamma_{FB}=\frac{\mathrm{Cov}\bigl[[A_r(\tau)-A_r(\Delta\tau)]r_t-A_r(\tau-\Delta\tau)r_{t+\Delta\tau},\ [A_r(\tau)-A_r(\tau-\Delta\tau)-A_r(\Delta\tau)]r_t\bigr]}{\mathrm{Var}\bigl[[A_r(\tau)-A_r(\tau-\Delta\tau)-A_r(\Delta\tau)]r_t\bigr]}\tag{110}
$$

**Step 3　OU過程の共分散（T5）**

$$
\mathrm{Cov}(r_{t+\Delta\tau},r_t)=\mathrm{Var}(r_t)e^{-\kappa_r\Delta\tau}\tag{111}
$$

式(111)を式(110)に代入すると

$$
\gamma_{FB}=\frac{A_r(\tau)-A_r(\tau-\Delta\tau)e^{-\kappa_r\Delta\tau}-A_r(\Delta\tau)}{A_r(\tau)-A_r(\tau-\Delta\tau)-A_r(\Delta\tau)}\tag{112}
$$

**Step 4　$\Delta\tau\to0$**

式(16)より $A_r(\Delta\tau)/\Delta\tau\to1$、$A_r(\tau-\Delta\tau)\approx A_r(\tau)-A_r'(\tau)\Delta\tau$、$e^{-\kappa_r\Delta\tau}\approx1-\kappa_r\Delta\tau$。分子は $\Delta\tau[A_r'+\kappa_rA_r-1]$、分母は $\Delta\tau[A_r'-1]$ なので

$$
\gamma_{FB}\to\frac{A_r'(\tau)+\kappa_rA_r(\tau)-1}{A_r'(\tau)-1}=\frac{(\kappa_r^{\ast}-\kappa_r)A_r(\tau)}{\kappa_r^{\ast}A_r(\tau)}=\frac{\kappa_r^{\ast}-\kappa_r}{\kappa_r^{\ast}}\tag{113}
$$

第2の等号は、式(15)と式(18)より $A_r'+\kappa_rA_r-1=-(\kappa_r^{\ast}-\kappa_r)A_r$、式(16)より $A_r'-1=-\kappa_r^{\ast}A_r$ となることから従います。$a\gt0$ のとき $\kappa_r^{\ast}\gt\kappa_r$ なので正です。→ 式(22)

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(1)、(2)、(9)、(15)、(16)、(18) |
| 道具 | T5、T7 |

**確認**：$a=0$ なら $\kappa_r^{\ast}=\kappa_r$ で $\gamma_{FB}=0$（EH では超過収益が傾きと無関係）。

### A.5 命題3、系1（式(24)、(25)）の導出

**Step 1　フォワード金利の感応度**

式(23)より $\partial f_{t,\tau}/\partial r_t=A_r'(\tau)$、式(16)より $A_r'(\tau)=e^{-\kappa_r^{\ast}\tau}$。

**Step 2　予想短期金利の感応度（T5）**

$\partial E_t(r_{t+\tau})/\partial r_t=e^{-\kappa_r\tau}$。$\kappa_r^{\ast}\gt\kappa_r$ より $e^{-\kappa_r^{\ast}\tau}\lt e^{-\kappa_r\tau}$。→ 式(24)

**Step 3　系1**

式(18)の左辺は $\kappa_r^{\ast}$ について増加、右辺は $\kappa_r^{\ast}$ について減少し $a$ について増加です。ゆえに $\kappa_r^{\ast}$ は $a$ の増加関数です。→ 式(25)。$\gamma_{FB}=1-\kappa_r/\kappa_r^{\ast}$ は $a$ について増加し、$e^{-\kappa_r^{\ast}\tau}$ は減少します。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(16)、(18)、(23) |
| 道具 | T5、陰関数の単調性 |

**確認**：$a\to\infty$ で $\kappa_r^{\ast}\to\infty$ なら、$\gamma_{FB}\to1$、$\partial f/\partial r_t\to0$（長期フォワードは短期金利に反応しない）。

### A.6 補題2（式(26)〜(31)）の導出

**Step 1　伊藤の補題（T1）**

式(26)と式(3)、(6)から、$d\log P_{t,\tau}=-[A_r\,dr_t+A_\beta\,d\beta_t-A_r'r_tdt-A_\beta'\beta_tdt-C'dt]$、$dr_t$ と $d\beta_t$ は独立なので $(d\log P)^2=(A_r^2\sigma_r^2+A_\beta^2\sigma_\beta^2)dt$。→ 式(27)、(28)

**Step 2　予算制約と目的関数**

式(27)を式(7)に代入し、補題1と同様に整理すると、式(8)は

$$
\max_{\{x_{t,\tau}\}}\Bigl[\int_0^Tx_{t,\tau}(\mu_{t,\tau}-r_t)d\tau-\frac{a\sigma_r^2}{2}\Bigl(\int_0^Tx_{t,\tau}A_r(\tau)d\tau\Bigr)^2-\frac{a\sigma_\beta^2}{2}\Bigl(\int_0^Tx_{t,\tau}A_\beta(\tau)d\tau\Bigr)^2\Bigr]\tag{114}
$$

（定数項 $W_tr_t$ は省略）。

**Step 3　一階条件（T2）**

各 $\tau$ で微分してゼロとおくと式(29)〜(31)。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(3)、(6)、(7)、(8)、(26) |
| 道具 | T1、T2 |

**確認**：$\sigma_\beta\to0$ で $A_\beta$ の項が消え、補題1に一致します。

### A.7 命題4（式(35)〜(42)）の導出

**Step 1　市場清算（$x=-y$）**

式(1)、(4)、(5)、(26)、$K=1$ より、$y_{t,\tau}=\alpha(\tau)[A_r(\tau)r_t+A_\beta(\tau)\beta_t+C(\tau)-(\overline\beta+\theta(\tau)\beta_t)\tau]$ です。これを式(30)、(31)に代入すると

$$
\begin{aligned}
\lambda_{r,t}&=a\sigma_r^2\int_0^T\alpha(\tau)\bigl[(\overline\beta+\theta(\tau)\beta_t)\tau-[A_r(\tau)r_t+A_\beta(\tau)\beta_t+C(\tau)]\bigr]A_r(\tau)d\tau,\\
\lambda_{\beta,t}&=a\sigma_\beta^2\int_0^T\alpha(\tau)\bigl[(\overline\beta+\theta(\tau)\beta_t)\tau-[A_r(\tau)r_t+A_\beta(\tau)\beta_t+C(\tau)]\bigr]A_\beta(\tau)d\tau
\end{aligned}\tag{115}
$$

**Step 2　式(28)、(115)を式(29)に代入**

$(r_t,\beta_t)$ についてアフィンな式が得られます（式(28)の左辺 $-r_t$ を含む）。

$$
\begin{aligned}
&A_r'r_t+A_\beta'\beta_t+C'-A_r\kappa_r(\overline r-r_t)+A_\beta\kappa_\beta\beta_t+\tfrac12A_r^2\sigma_r^2+\tfrac12A_\beta^2\sigma_\beta^2-r_t\\
&=A_r\lambda_{r,t}+A_\beta\lambda_{\beta,t}
\end{aligned}\tag{116}
$$

**Step 3　線形項（T3）**

$r_t$ の係数が式(32)、$\beta_t$ の係数が式(33)で、$M$ は式(34)です。$r_t$ の係数は右辺で $-\sigma_r^2a\int\alpha A_r\cdot A_r$ と $-\sigma_\beta^2a\int\alpha A_\beta A_r$ の和から $M_{1,1}A_r+M_{1,2}A_\beta$ になります。$\beta_t$ の係数は $[\theta\tau-A_\beta]$ を含む項から $M_{2,1}A_r+M_{2,2}A_\beta$ になります。→ 式(32)〜(34)

**Step 4　定数項（T3）**

$$
C'-\kappa_r\overline rA_r+\tfrac12\sigma_r^2A_r^2+\tfrac12\sigma_\beta^2A_\beta^2=a\sigma_r^2A_r\int_0^T\alpha[\overline\beta\tau-C]A_r\,d\tau+a\sigma_\beta^2A_\beta\int_0^T\alpha[\overline\beta\tau-C]A_\beta\,d\tau\tag{117}
$$

初期条件は $A_r(0)=A_\beta(0)=C(0)=0$。

**Step 5　対角化（T6）**

$$
\begin{bmatrix}\kappa_r&0\\0&\kappa_\beta\end{bmatrix}-M\equiv P^{-1}\begin{bmatrix}\nu_1&0\\0&\nu_2\end{bmatrix}P\tag{118}
$$

式(32)、(33)は $\frac{d}{d\tau}(A_r,A_\beta)^{\top}+(\mathrm{diag}(\kappa_r,\kappa_\beta)-M)(A_r,A_\beta)^{\top}=(1,0)^{\top}$ なので、左から $P$ を掛けると

$$
P\begin{bmatrix}A_r'(\tau)\\A_\beta'(\tau)\end{bmatrix}+\begin{bmatrix}\nu_1&0\\0&\nu_2\end{bmatrix}P\begin{bmatrix}A_r(\tau)\\A_\beta(\tau)\end{bmatrix}-P\begin{bmatrix}1\\0\end{bmatrix}=0\tag{119}
$$

**Step 6　解（T4）**

$s_i(\tau)\equiv(1-e^{-\nu_i\tau})/\nu_i$ とおくと、初期条件のもとで

$$
P\begin{bmatrix}A_r\\A_\beta\end{bmatrix}=\begin{bmatrix}s_1&0\\0&s_2\end{bmatrix}P\begin{bmatrix}1\\0\end{bmatrix}\ \Rightarrow\ \begin{bmatrix}A_r\\A_\beta\end{bmatrix}=s_1\begin{bmatrix}1\\0\end{bmatrix}+(s_2-s_1)P^{-1}\begin{bmatrix}0&0\\0&1\end{bmatrix}P\begin{bmatrix}1\\0\end{bmatrix}\tag{120}
$$

$(\gamma_r,\gamma_\beta)^{\top}\equiv P^{-1}\mathrm{diag}(0,1)P(1,0)^{\top}$ とおけば式(35)、(36)の形です。→ 式(35)、(36)

**Step 7　スカラーを決める**

式(35)、(36)から $A_r=(1-\gamma_r)s_1+\gamma_rs_2$、$A_\beta=\gamma_\beta(s_2-s_1)$、$s_i'=1-\nu_is_i$ です。これらを式(32)、(33)に代入し、$s_1,s_2$ の係数を比較すると

$$
\begin{aligned}
(1-\gamma_r)(\nu_1-\kappa_r+M_{1,1})-\gamma_\beta M_{1,2}&=0,\\
\gamma_r(\nu_2-\kappa_r+M_{1,1})+\gamma_\beta M_{1,2}&=0
\end{aligned}\tag{121}
$$

$$
\begin{aligned}
\gamma_\beta(\nu_1-\kappa_\beta+M_{2,2})-(1-\gamma_r)M_{2,1}&=0,\\
-\gamma_\beta(\nu_2-\kappa_\beta+M_{2,2})-\gamma_rM_{2,1}&=0
\end{aligned}\tag{122}
$$

**Step 8　同値な形へ**

式(121)の2式の和と、第2式に和から得た関係を使うと

$$
\begin{aligned}
\nu_1+\gamma_r(\nu_2-\nu_1)-\kappa_r+M_{1,1}&=0,\\
\gamma_r(1-\gamma_r)(\nu_1-\nu_2)-\gamma_\beta M_{1,2}&=0
\end{aligned}\tag{123}
$$

式(122)の2式の和と、第2式に和から得た関係を使うと（$\gamma_\beta\neq0$ で割る）

$$
\begin{aligned}
\gamma_\beta(\nu_1-\nu_2)-M_{2,1}&=0,\\
\kappa_\beta-\nu_2-\gamma_r(\nu_1-\nu_2)-M_{2,2}&=0
\end{aligned}\tag{124}
$$

**Step 9　$M$ を $F,G$ で表す**

式(35)、(36)より $A_r=s_1+\gamma_r(s_2-s_1)$、$A_\beta=\gamma_\beta(s_2-s_1)$。補助関数の定義（1.7節）から $\int\alpha s_1(s_2-s_1)=\hat F(\nu_1,\nu_2)$、$\int\alpha(s_2-s_1)^2=\hat{\hat F}(\nu_1,\nu_2)$、$\int\alpha\tau\theta s_1=G(\nu_1)$、$\int\alpha\tau\theta(s_2-s_1)=\hat G(\nu_1,\nu_2)$ なので

$$
\begin{aligned}
M_{1,1}&=-a\sigma_r^2\bigl[F(\nu_1,\nu_1)+2\gamma_r\hat F+\gamma_r^2\hat{\hat F}\bigr],\\
M_{1,2}&=-a\sigma_\beta^2\gamma_\beta\bigl[\hat F+\gamma_r\hat{\hat F}\bigr],\\
M_{2,1}&=a\sigma_r^2\bigl[G(\nu_1)+\gamma_r\hat G-\gamma_\beta(\hat F+\gamma_r\hat{\hat F})\bigr],\\
M_{2,2}&=a\sigma_\beta^2\gamma_\beta\bigl[\hat G-\gamma_\beta\hat{\hat F}\bigr]
\end{aligned}\tag{125}
$$

式(125)を式(123)、(124)に代入すると式(37)〜(40)です。→ 式(37)〜(40)

**Step 10　定数項**

式(117)から $C'=z_rA_r+z_\beta A_\beta-\tfrac12\sigma_r^2A_r^2-\tfrac12\sigma_\beta^2A_\beta^2$（$z_r,z_\beta$ は式(42)）。$C(0)=0$ で積分すると式(41)。式(41)を式(42)に代入すると $(z_r,z_\beta)$ の線形連立方程式になります。→ 式(41)、(42)

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(1)、(4)、(5)、(26)〜(31) |
| 道具 | T3、T4、T6 |

**確認**：$\sigma_\beta\to0$ なら式(40)（$\nu_2=\kappa_\beta$ を含む形）は $A_\beta$ を決めず、$\gamma_\beta=0$ で式(35)は $\gamma_r=0$ に対し式(16)に一致します。

### A.8 命題5（式(43)〜(50)）の導出

**Step 1　$a\approx0$ のスケーリング（T9）**

$(\gamma_r,\gamma_\beta)=(a^3c_r,ac_\beta)$ を式(37)〜(40)に代入し、式(38)を $a^3$、式(39)を $a$ で割ると

$$
\begin{aligned}
&\nu_1+a^3c_r(\nu_2-\nu_1)-\kappa_r-a\sigma_r^2\bigl[F(\nu_1,\nu_1)+2a^3c_r\hat F+a^6c_r^2\hat{\hat F}\bigr]=0,\\
&c_r(1-a^3c_r)(\nu_1-\nu_2)+\sigma_\beta^2c_\beta^2\bigl[\hat F+a^3c_r\hat{\hat F}\bigr]=0,\\
&c_\beta(\nu_1-\nu_2)-\sigma_r^2\bigl[G(\nu_1)+a^3c_r\hat G-ac_\beta\bigl[\hat F+a^3c_r\hat{\hat F}\bigr]\bigr]=0,\\
&\kappa_\beta-\nu_2-a^3c_r(\nu_1-\nu_2)-a^2\sigma_\beta^2c_\beta\bigl[\hat G-ac_\beta\hat{\hat F}\bigr]=0
\end{aligned}\tag{126}
$$

**Step 2　$a=0$ の解**

$a=0$ で第1式から $\nu_1=\kappa_r$、第4式から $\nu_2=\kappa_\beta$。第3式から $c_\beta=\sigma_r^2G(\kappa_r)/(\kappa_r-\kappa_\beta)$、第2式から $c_r=-\sigma_\beta^2c_\beta^2\hat F(\kappa_r,\kappa_\beta)/(\kappa_r-\kappa_\beta)$。→ 式(43)〜(45)

**Step 3　$a\approx\infty$ のスケーリング（T9）**

$(\nu_1,\gamma_r)=(a^{1/3}n_1,a^{-1/3}c_r)$ を式(37)〜(40)に代入し、式(37)を $a^{1/3}$、式(38)を $a^{2/3}$、式(39)を $a^{2/3}$、式(40)を $a$ で割ると

$$
\begin{aligned}
&n_1+a^{-2/3}c_r(\nu_2-a^{1/3}n_1)-a^{-1/3}\kappa_r-a^{2/3}\sigma_r^2\Bigl[F(a^{1/3}n_1,a^{1/3}n_1)+2a^{-1/3}c_r\hat F(a^{1/3}n_1,\nu_2)+a^{-2/3}c_r^2\hat{\hat F}(a^{1/3}n_1,\nu_2)\Bigr]=0,\\
&a^{-1}c_r(1-a^{-1/3}c_r)(a^{1/3}n_1-\nu_2)+a^{1/3}\sigma_\beta^2\gamma_\beta^2\Bigl[\hat F+a^{-1/3}c_r\hat{\hat F}\Bigr]=0,\\
&a^{-2/3}\gamma_\beta(a^{1/3}n_1-\nu_2)-a^{1/3}\sigma_r^2\Bigl[G(a^{1/3}n_1)+a^{-1/3}c_r\hat G-\gamma_\beta\bigl[\hat F+a^{-1/3}c_r\hat{\hat F}\bigr]\Bigr]=0,\\
&a^{-1}\bigl[\kappa_\beta-\nu_2-a^{-1/3}c_r(a^{1/3}n_1-\nu_2)\bigr]-\sigma_\beta^2\gamma_\beta\bigl[\hat G-\gamma_\beta\hat{\hat F}\bigr]=0
\end{aligned}\tag{127}
$$

**Step 4　極限（$\nu_1$ が大きいときの積分の評価）**

$$
\lim_{a\to\infty}a^{2/3}F(a^{1/3}n_1,a^{1/3}n_1)=\frac1{n_1^2}\int_0^T\alpha\,d\tau,\quad\lim_{a\to\infty}a^{1/3}F(a^{1/3}n_1,\nu_2)=\frac1{n_1}\int_0^T\alpha\frac{1-e^{-\nu_2\tau}}{\nu_2}d\tau,\quad\lim_{a\to\infty}a^{1/3}G(a^{1/3}n_1)=\frac1{n_1}\int_0^T\alpha\tau\theta\,d\tau\tag{128}
$$

**Step 5　$a=\infty$ の方程式**

$s_2=(1-e^{-\nu_2\tau})/\nu_2$ と書くと、式(127)の極限は

$$
\begin{aligned}
&n_1-\sigma_r^2\Bigl[\frac1{n_1^2}\int\alpha+2c_r\frac1{n_1}\int\alpha s_2+c_r^2\int\alpha s_2^2\Bigr]=0,\qquad\frac1{n_1}\int\alpha s_2+c_r\int\alpha s_2^2=0,\\
&\frac1{n_1}\int\alpha\tau\theta+c_r\int\alpha\tau\theta s_2-\gamma_\beta\Bigl[\frac1{n_1}\int\alpha s_2+c_r\int\alpha s_2^2\Bigr]=0,\qquad\int\alpha\tau\theta s_2-\gamma_\beta\int\alpha s_2^2=0
\end{aligned}\tag{129}
$$

**Step 6　$c_r,\gamma_\beta,\overline\nu_2,\overline n_1$**

第2式から $c_r=-\frac1{n_1}\int\alpha s_2/\int\alpha s_2^2$（式(49)）、第4式から $\gamma_\beta=\int\alpha\tau\theta s_2/\int\alpha s_2^2$（式(50)）。第2式を第3式に使うとブラケットが消え $\frac1{n_1}\int\alpha\tau\theta+c_r\int\alpha\tau\theta s_2=0$、これに式(49)を代入して整理すると式(47)。第1式に第2式を使うと括弧内が $\frac1{n_1^2}\bigl[\int\alpha-(\int\alpha s_2)^2/\int\alpha s_2^2\bigr]$ になり、$n_1^3=\sigma_r^2[\cdots]$ すなわち式(48)です。→ 式(46)〜(50)

**Step 7　$\overline\nu_2$ の存在と符号**

$\nu_2\to+\infty$ のとき、式(47)の左辺は $\frac1{\nu_2}\bigl[1+o(1/\nu_2)\bigr]$、右辺は $\frac1{\nu_2}\bigl[1-\frac{\alpha(0)}{\nu_2\int\alpha}+o(1/\nu_2)\bigr]$ で、左辺が右辺を上回ります。$\nu_2\to-\infty$ のとき

$$
\text{左辺}=\frac{e^{-\nu_2T}}{\nu_2^2}\frac{\alpha(T)T\theta(T)}{\int_0^T\alpha\tau\theta\,d\tau}+o\Bigl(\frac1{\nu_2^2}\Bigr),\qquad\text{右辺}=\frac{e^{-\nu_2T}}{-2\nu_2}+o\Bigl(\frac1{\nu_2}\Bigr)\tag{130}
$$

で、左辺が右辺を下回ります。ゆえに連続性から解 $\overline\nu_2$ が存在します。式(48)の括弧内は T8 より正で $\overline n_1\gt0$、式(49)より $\overline c_r\lt0$ です。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(37)〜(40) |
| 道具 | T8、T9 |

**確認**：$a=0$ のとき $\gamma_r=\gamma_\beta=0$ となり式(35)は $\nu_1=\kappa_r$ の1ファクター形になります。

### A.9 式(51)〜(55)、系2、命題6、系3の導出

**Step 1　フォワード金利（式(51)）**

式(2)の極限と式(26)から $f_{t,\tau}=-\partial\log P/\partial\tau=A_r'r_t+A_\beta'\beta_t+C'$。

**Step 2　式(52)〜(55)**

式(35)、(36)より $A_r'=e^{-\nu_1\tau}(1-\gamma_r)+\gamma_re^{-\nu_2\tau}$、$A_\beta'=\gamma_\beta(e^{-\nu_2\tau}-e^{-\nu_1\tau})$。$a\approx0$（式(43)）で $\nu_1\to\kappa_r$、$\gamma_r=O(a^3)$ なので式(52)、$\gamma_\beta=a\underline c_\beta$ と式(44)から式(53)。$a\approx\infty$（式(46)）で $(1-\gamma_r)\approx1$ から式(54)、$\gamma_\beta\to\overline\gamma_\beta$ から式(55)。→ 式(52)〜(55)

**Step 3　系2（符号の切り替え）**

$$
A_r'(\tau)=e^{-\nu_1\tau}(1-\gamma_r)\Bigl[1+\frac{\gamma_r}{1-\gamma_r}e^{(\nu_1-\nu_2)\tau}\Bigr]\tag{131}
$$

$a\approx\infty$ で括弧の外は正。括弧内は $\tau\lt\tau_r$ で正、$\tau\gt\tau_r$ で負で、

$$
\tau_r\equiv\frac{\log\bigl(-\frac{1-\gamma_r}{\gamma_r}\bigr)}{\nu_1-\nu_2}\approx\frac{\log\bigl(-a^{1/3}/\overline c_r\bigr)}{a^{1/3}\overline n_1}\tag{132}
$$

$\tau_r\approx0$ で $\tau_r\in[0,T]$。スポットレートへの効果 $A_r(\tau)/\tau$ は $A_r$ と同符号で、$A_r(\tau)=\int_0^\tau A_r'$ は「正」または「正から負」。式(46)、(49)より

$$
A_r(T)\approx a^{-1/3}\Bigl(\frac1{\overline n_1}+\overline c_r\frac{1-e^{-\overline\nu_2T}}{\overline\nu_2}\Bigr)=\frac{a^{-1/3}\displaystyle\int_0^T\alpha\,s_2(\tau)\bigl[s_2(\tau)-s_2(T)\bigr]d\tau}{\overline n_1\displaystyle\int_0^T\alpha\,s_2(\tau)^2d\tau}\lt0\tag{133}
$$

（$s_2(\tau)=(1-e^{-\overline\nu_2\tau})/\overline\nu_2$ は $\tau$ について増加で、$s_2(\tau)\lt s_2(T)$、$\alpha\gt0$。）ゆえに $A_r(\tau)$ は正から負に変わります。→ 系2

**Step 4　命題6：$\overline\nu_2$ は $x$ について減少**

$\overline\nu_2$ は式(47)の解で、これは次のように書けます。

$$
\frac{\displaystyle\int_0^T\alpha\tau\theta(\tau,x)\frac{1-e^{-\nu_2\tau}}{\nu_2}d\tau}{\displaystyle\int_0^T\alpha\tau\theta(\tau,x)d\tau}-\frac{\displaystyle\int_0^T\alpha\Bigl(\frac{1-e^{-\nu_2\tau}}{\nu_2}\Bigr)^2d\tau}{\displaystyle\int_0^T\alpha\frac{1-e^{-\nu_2\tau}}{\nu_2}d\tau}=0\tag{134}
$$

左辺は $\nu_2\to-\infty$ で負、$\nu_2\to\infty$ で正。$x$ について増加なら解は減少です。$x$ での微分は、$\phi(\tau)\equiv\alpha\tau\theta(\tau,x)$、$f(\tau)\equiv(1-e^{-\nu_2\tau})/\nu_2$ として、次の式と同符号です。

$$
\int_{0\le\tau_1\le\tau_2\le T}\phi(\tau_1)\phi(\tau_2)\Bigl[\frac{\theta_x(\tau_2,x)}{\theta(\tau_2,x)}-\frac{\theta_x(\tau_1,x)}{\theta(\tau_1,x)}\Bigr][f(\tau_2)-f(\tau_1)]d\tau_1d\tau_2\gt0\tag{135}
$$

（$\theta_x/\theta$ と $f$ がともに $\tau$ について増加）。

**Step 5　極限と $x^{\ast}$**

$x\to\underline x$ では $\int_0^T\alpha\tau\theta f\big/\int_0^T\alpha\tau\theta\to0$ なので、任意の有限な $\nu_2$ で式(134)の左辺は負です。$x\to\overline x$ では同比は $(1-e^{-\nu_2T})/\nu_2$ に収束し、左辺は正です。したがって $\overline\nu_2$ は $x\to\underline x$ で $+\infty$、$x\to\overline x$ で $-\infty$ に向かい、$\overline\nu_2\gt0$（$x\lt x^{\ast}$）と $\overline\nu_2\lt0$（$x\gt x^{\ast}$）を分ける $x^{\ast}\in(\underline x,\overline x)$ が存在します。

**Step 6　$A_\beta'$ の形状**

式(55)より $A_\beta'$ は $\overline\nu_2\gt0$ なら増加後減少、$\overline\nu_2\lt0$ なら増加です。前者の極大点は

$$
\frac{\log\nu_1-\log\overline\nu_2}{\nu_1-\overline\nu_2}\approx\frac{\log(a^{1/3}\overline n_1)-\log\overline\nu_2}{a^{1/3}\overline n_1-\overline\nu_2}\approx\frac{\log(a^{1/3})}{a^{1/3}\overline n_1}\tag{136}
$$

で $(0,T)$ に入ります。→ 命題6

**Step 7　系3**

$A_\beta'\gt0$（式(53)、(55)）から全満期で瞬間フォワードが上昇、$A_\beta(\tau)=\int_0^\tau A_\beta'\gt0$ からスポットレートも上昇。残りは式(53)、(55)、命題6。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(35)、(36)、(43)〜(50) |
| 道具 | T8、T9 |

**確認**：式(55)で $\overline\nu_2\to$ 大のとき $A_\beta'\to\overline\gamma_\beta e^{-\overline\nu_2\tau}$ となり、需要効果は短期に集中。

### A.10 命題7（式(59)、(60)）の導出

**Step 1　リスク価格の偏微分**

式(115)と式(34)を比べると

$$
\begin{aligned}
\frac{\partial\lambda_{r,t}}{\partial r_t}&=-a\sigma_r^2\int_0^T\alpha A_r^2\,d\tau=M_{1,1}\lt0,&\frac{\partial\lambda_{r,t}}{\partial\beta_t}&=a\sigma_r^2\int_0^T\alpha[\tau\theta-A_\beta]A_r\,d\tau=M_{2,1},\\
\frac{\partial\lambda_{\beta,t}}{\partial r_t}&=-a\sigma_\beta^2\int_0^T\alpha A_rA_\beta\,d\tau=M_{1,2},&\frac{\partial\lambda_{\beta,t}}{\partial\beta_t}&=a\sigma_\beta^2\int_0^T\alpha[\tau\theta-A_\beta]A_\beta\,d\tau=M_{2,2}
\end{aligned}\tag{137}
$$

→ 式(59)

**Step 2　$a\approx0$**

$$
A_r(\tau)=\frac{1-e^{-\kappa_r\tau}}{\kappa_r}+o(1),\qquad A_\beta(\tau)=a\underline c_\beta\Bigl(\frac{1-e^{-\kappa_\beta\tau}}{\kappa_\beta}-\frac{1-e^{-\kappa_r\tau}}{\kappa_r}\Bigr)+o(a)\gt0\tag{138}
$$

（$(1-e^{-\kappa\tau})/\kappa$ は $\kappa$ について減少するので、$(\cdot)/(\kappa_r-\kappa_\beta)\gt0$）。$\theta\gt0$ と $A_\beta=O(a)$ より $\tau\theta-A_\beta\gt0$ なので、$M_{1,2}\lt0$、$M_{2,1}\gt0$、$M_{2,2}\gt0$。

**Step 3　$a\approx\infty$**

式(124)、(123)（$M_{1,2}=\gamma_r(1-\gamma_r)(\nu_1-\nu_2)/\gamma_\beta$、$M_{2,1}=\gamma_\beta(\nu_1-\nu_2)$、$M_{2,2}=\kappa_\beta-\nu_2-\gamma_r(\nu_1-\nu_2)$）と式(46)から

$$
M_{1,2}=\frac{\overline c_r\overline n_1}{\overline\gamma_\beta}+o(1),\quad M_{2,1}=a^{1/3}\overline\gamma_\beta\overline n_1+o(a^{1/3}),\quad M_{2,2}=\kappa_\beta-\overline\nu_2-\overline c_r\overline n_1+o(1)=\kappa_\beta+\overline\nu_2\Biggl[\frac{\int_0^T\alpha(1-e^{-\overline\nu_2\tau})d\tau}{\int_0^T\alpha(1-e^{-\overline\nu_2\tau})^2d\tau}-1\Biggr]+o(1)\tag{139}
$$

$\theta\gt0$ なら式(50)より $\overline\gamma_\beta\gt0$。$\overline n_1\gt0$、$\overline c_r\lt0$ から $M_{1,2}\lt0$、$M_{2,1}\gt0$。$M_{2,2}\gt0$ は、$\overline\nu_2\gt0$ なら括弧内が正、$\overline\nu_2\lt0$ なら括弧内が負で、$\overline\nu_2\times[\cdot]\gt0$ のためです。

**Step 4　リスクプレミアムの偏微分**

$a\approx0$：式(29)のプレミアム $A_r\lambda_r+A_\beta\lambda_\beta$ は $A_r,A_\beta\gt0$ と式(59)の符号（$\lambda$ が $r_t$ に減少、$\beta_t$ に増加）から、$r_t$ について減少、$\beta_t$ について増加。$a\approx\infty$：式(28)より

$$
\frac{\partial(\mu_{t,\tau}-r_t)}{\partial r_t}=A_r'+\kappa_rA_r-1=-1+o(1)\lt0,\qquad\frac{\partial(\mu_{t,\tau}-r_t)}{\partial\beta_t}=A_\beta'+\kappa_\beta A_\beta=\overline\gamma_\beta\Bigl(e^{-\overline\nu_2\tau}+\kappa_\beta\frac{1-e^{-\overline\nu_2\tau}}{\overline\nu_2}\Bigr)+o(1)\gt0\tag{140}
$$

→ 式(60)

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(28)、(34)、(38)〜(40)、(44)、(46)〜(50)、(115) |
| 道具 | T9、符号の評価 |

**確認**：$a\approx0$ でも $\mu-r$ が $(r_t,\beta_t)$ のアフィン関数であることは、$\lambda$ がアフィンなことから従います。

### A.11 命題8の導出

**Step 1　$\Delta\tau\to0$ の極限**

命題2と同様に（T5、T7）、$A_r(\Delta\tau)\approx\Delta\tau$、$A_\beta(\Delta\tau)\approx0$、$\mathrm{Var}(r_t)=\sigma_r^2/(2\kappa_r)$、$\mathrm{Var}(\beta_t)=\sigma_\beta^2/(2\kappa_\beta)$ を用いると、共通因子 $1/2$ が消えて

$$
\gamma_{FB}\to\frac{[A_r'+\kappa_rA_r-1][A_r'-1]\dfrac{\sigma_r^2}{\kappa_r}+\bigl[A_\beta'+\kappa_\beta A_\beta\bigr]A_\beta'\dfrac{\sigma_\beta^2}{\kappa_\beta}}{[A_r'-1]^2\dfrac{\sigma_r^2}{\kappa_r}+A_\beta'^2\dfrac{\sigma_\beta^2}{\kappa_\beta}}\tag{141}
$$

**Step 2　$a\approx0$**

式(35)、(36)、(43)、(44)より $A_r'+\kappa_rA_r-1\approx(\kappa_r-\nu_1)s_1$、$A_r'-1\approx-\nu_1s_1$ なので第1項は $(\nu_1-\kappa_r)/\nu_1$。第2項は $A_\beta'+\kappa_\beta A_\beta\approx a\underline c_\beta(\kappa_r-\kappa_\beta)(1-e^{-\kappa_r\tau})/\kappa_r$ と式(53)から

$$
\gamma_{FB}=\frac{\nu_1-\kappa_r}{\nu_1}+\frac{a^2\underline c_\beta^{\,2}(\kappa_r-\kappa_\beta)\bigl(e^{-\kappa_\beta\tau}-e^{-\kappa_r\tau}\bigr)\dfrac{\sigma_\beta^2}{\kappa_\beta}}{(1-e^{-\kappa_r\tau})\sigma_r^2}+o(a^2)\tag{142}
$$

式(37)と式(43)より $\nu_1-\kappa_r$ は $a$ のオーダーで正、かつ $\sigma_\beta^2$ に $a^3$ まで依存しません。第2項は正で $\sigma_\beta^2$ について増加なので、$\gamma_{FB}$ は正で $\sigma_\beta^2$ について増加します。

> 原論文の対応式は、分母が $(1-e^{-\kappa_r\tau})\sigma_r^2/\kappa_r$ と表示されており（OCR由来の可能性もあります）、上の導出と $\kappa_r$ の因子の位置が異なって見えます。本稿では導出した形を採用します。符号と $\sigma_\beta^2$ への依存という結論は変わりません。

**Step 3　$a\approx\infty$**

式(140)と式(54)から $A_r'\to0$、$A_r\to0$ なので、

$$
\gamma_{FB}=\frac{\dfrac{\sigma_r^2}{\kappa_r}+\overline\gamma_\beta^2\Bigl(e^{-\overline\nu_2\tau}+\kappa_\beta\dfrac{1-e^{-\overline\nu_2\tau}}{\overline\nu_2}\Bigr)e^{-\overline\nu_2\tau}\dfrac{\sigma_\beta^2}{\kappa_\beta}}{\dfrac{\sigma_r^2}{\kappa_r}+\overline\gamma_\beta^2e^{-2\overline\nu_2\tau}\dfrac{\sigma_\beta^2}{\kappa_\beta}}+o(1)\tag{143}
$$

$X=\sigma_r^2/\kappa_r$、$Y=\overline\gamma_\beta^2e^{-2\overline\nu_2\tau}\sigma_\beta^2/\kappa_\beta$、$b=1+\kappa_\beta s_2e^{\overline\nu_2\tau}\gt1$ とおくと $\gamma_{FB}=(X+bY)/(X+Y)$ で、$Y$（したがって $\sigma_\beta^2$）について増加し、$\gt1$ です（符号は正）。→ 命題8

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(36)〜(40)、(46)、(53)、(54) |
| 道具 | T5、T7 |

**確認**：$\sigma_\beta^2\to0$ なら式(141)は1ファクターの $\gamma_{FB}$ に一致します。

### A.12 命題9の導出

**Step 1　$\Delta\tau\to0$ の極限**

$R_{t,\tau}=[A_r(\tau)r_t+A_\beta(\tau)\beta_t+C(\tau)]/\tau$。$\Delta\tau\to0$ で $A_r(\Delta\tau)/\Delta\tau\to1$、$A_\beta(\Delta\tau)/\Delta\tau\to0$ と、$A(\tau-\Delta\tau)/(\tau-\Delta\tau)\approx A/\tau-\Delta\tau(A'/\tau-A/\tau^2)$ を使い、T5、T7 を適用すると

$$
\gamma_{CS}\to1-\frac{[A_r'+\kappa_rA_r-1]\Bigl[\dfrac{A_r}{\tau}-1\Bigr]\dfrac{\sigma_r^2}{\kappa_r}+\bigl[A_\beta'+\kappa_\beta A_\beta\bigr]\dfrac{A_\beta}{\tau}\dfrac{\sigma_\beta^2}{\kappa_\beta}}{\Bigl[\dfrac{A_r}{\tau}-1\Bigr]^2\dfrac{\sigma_r^2}{\kappa_r}+\Bigl[\dfrac{A_\beta}{\tau}\Bigr]^2\dfrac{\sigma_\beta^2}{\kappa_\beta}}\tag{144}
$$

**Step 2　$a\approx0$**

式(35)、(36)より、第2項は $\dfrac{(\kappa_r-\nu_1)s_1}{s_1/\tau-1}$ に比例する形になり

$$
\gamma_{CS}=1-\frac{(\nu_1-\kappa_r)(1-e^{-\kappa_r\tau})}{\kappa_r\Bigl(1-\dfrac{1-e^{-\kappa_r\tau}}{\kappa_r\tau}\Bigr)}+o(a)\tag{145}
$$

$\nu_1-\kappa_r$ は $a$ のオーダーで正なので、$\gamma_{CS}$ は1より小さく1に近い。$x=\kappa_r\tau$ として $\gamma_{CS}$ が $\tau$ について増加することは

$$
f(x)\equiv\frac{1-\dfrac{1-e^{-x}}{x}}{1-e^{-x}},\qquad g(x)\equiv1-e^{-x}-xe^{-x/2}\tag{146}
$$

について、$f'(x)$ が $g(x)$ と同符号（$f'\propto(1-e^{-x})^2-x^2e^{-x}=g(x)\bigl(1-e^{-x}+xe^{-x/2}\bigr)$）、$g'(x)=e^{-x/2}[e^{-x/2}-1+x/2]\gt0$、$g(0)=0$ から $g\gt0$、よって $f$ は増加です。

**Step 3　$a\approx\infty$**

式(140)、(54)より

$$
\gamma_{CS}=1-\frac{\dfrac{\sigma_r^2}{\kappa_r}+\overline\gamma_\beta^2\Bigl(e^{-\overline\nu_2\tau}+\kappa_\beta\dfrac{1-e^{-\overline\nu_2\tau}}{\overline\nu_2}\Bigr)\dfrac{1-e^{-\overline\nu_2\tau}}{\overline\nu_2\tau}\dfrac{\sigma_\beta^2}{\kappa_\beta}}{\dfrac{\sigma_r^2}{\kappa_r}+\overline\gamma_\beta^2\Bigl(\dfrac{1-e^{-\overline\nu_2\tau}}{\overline\nu_2\tau}\Bigr)^2\dfrac{\sigma_\beta^2}{\kappa_\beta}}+o(1)\tag{147}
$$

第2項は正なので $\gamma_{CS}\lt1$。$\overline\nu_2\lt0$（命題6より $\theta$ が長期にウェイトを置くとき）のとき、$\tau\to\infty$ で第2項は $\infty$ に発散するので、$\gamma_{CS}$ は大きな $\tau$ で負かつ $\tau$ について減少します。→ 命題9

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(35)、(36)、(54)、(140)、(145) |
| 道具 | T5、T7 |

**確認**：$\sigma_\beta^2\to0$ なら式(144)は1ファクターの $\gamma_{CS}$ に一致し、EH（$\nu_1=\kappa_r$）なら $\gamma_{CS}=1$。

### A.13 補題3、命題10（式(65)〜(81)）の導出

**Step 1　伊藤の補題（T1）**

式(65)、(3)、(6)から（$dB_{r,t}$ と $dB_{\beta,k,t}$ は互いに独立）

$$
\frac{dP_{t,\tau}}{P_{t,\tau}}=\mu_{t,\tau}dt-A_r(\tau)\sigma_rdB_{r,t}-\sum_{k=1}^KA_{\beta,k}(\tau)\sigma_{\beta,k}dB_{\beta,k,t}\tag{148}
$$

$\mu_{t,\tau}$ は式(69)。→ 式(69)

**Step 2　目的関数と一階条件（T2）**

補題1、2と同様に式(8)は

$$
\max_{\{x_{t,\tau}\}}\Bigl[\int_0^Tx_{t,\tau}(\mu_{t,\tau}-r_t)d\tau-\frac{a\sigma_r^2}{2}\Bigl(\int_0^Tx_{t,\tau}A_r\,d\tau\Bigr)^2-\frac a2\sum_{k=1}^K\sigma_{\beta,k}^2\Bigl(\int_0^Tx_{t,\tau}A_{\beta,k}\,d\tau\Bigr)^2\Bigr]\tag{149}
$$

となり、各 $\tau$ で微分してゼロとおくと式(66)〜(68)。→ 式(66)〜(68)

**Step 3　市場清算と係数比較（T3）**

$x=-y$ を式(67)、(68)に代入し、式(69)とともに式(66)に入れると $(r_t,\beta_{1,t},\dots,\beta_{K,t})$ についてアフィンな式を得ます。$r_t$ の係数が式(73)、$\beta_{k,t}$ の係数が式(74)で、係数行列は式(72)です。定数項が $C$ の方程式（命題4の式(117)の $K$ 因子版）で、$C(0)=0$ で積分すると式(79)、(80)です。→ 式(72)〜(74)、(79)、(80)

**Step 4　解の形**

命題4と同じ議論（$(K+1)\times(K+1)$ 行列の対角化と $A(0)=0$）で、解は $s_l(\tau)=(1-e^{-\nu_l\tau})/\nu_l$ の線形結合になり、式(70)、(71)の形です。

**Step 5　スカラーを決める**

$A_r=(1-\sum_l\gamma_{r,l})s_1+\sum_l\gamma_{r,l}s_{l+1}$、$A_{\beta,k}=-\bigl(\sum_l\gamma_{\beta,k,l}\bigr)s_1+\sum_l\gamma_{\beta,k,l}s_{l+1}$ と $s_l'=1-\nu_ls_l$ を式(73)、(74)に入れ、$s_1$ および $s_{l+1}$（$l=1,\dots,K$）の係数を比較します。式(73)の $s_1$ の係数が式(75)、$s_{l+1}$ の係数が式(76)、式(74)の $s_1$ の係数が式(77)、$s_{l+1}$ の係数が式(78)です。→ 式(75)〜(78)

**Step 6　$a\approx0$（式(81)）**

命題5と同様に、$\nu_1\to\kappa_r$、$\nu_{k+1}\to\kappa_{\beta,k}$、$\gamma_{\beta,k,k}\to a\,\underline c_{\beta,k}$ を得て、式(53)の議論を因子 $k$ ごとに繰り返すと式(81)。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(65)、(72)〜(74) |
| 道具 | T1〜T4、T6、T9 |

**確認**：$K=1$ で式(70)、(71)は式(35)、(36)、式(75)〜(78)は式(37)〜(40)に一致します。

### A.14 付録B（式(82)〜(99)）の導出

**Step 1　予算制約の書き換え**

式(84)の積分項を、$\int_0^T\hat y_{t,\tau}d\bigl(P_{t,\tau}/P_{t,T-t}\bigr)d\tau\equiv\mu_{\hat y,t}dt+\sigma_{\hat y,t}dB_t$（$B_t'=(B_{r,t},B_{\beta,1,t},\dots,B_{\beta,K,t})$）、$\hat c_t\equiv c_t/P_{t,T-t}$ と定義すると

$$
d\hat W_t=\mu_{\hat y,t}dt+\sigma_{\hat y,t}dB_t-d\hat c_t\tag{150}
$$

**Step 2　最適化問題**

式(150)を $0$ から $T$ まで積分し、$C_T=\hat W_T$、$z_t\equiv P_{t,T-t}e^{\hat\beta_t(T-t)}$ を使うと、式(86)は

$$
\max_{\hat y_{t,\tau},c_s}\ \min_{r_t,\beta_t,\eta_t}\Bigl[u\Bigl(\hat W_0+\int_0^T\mu_{\hat y,t}dt+\int_0^T\sigma_{\hat y,t}dB_t-\int_0^Td\hat c_t\Bigr)+\int_0^Tz_td\hat c_t\Bigr]\tag{151}
$$

**Step 3　最悪ケースの $z_t$**

$\eta_t$ は他の不確実性と独立で任意の値を取れるので、$(r_t,\beta_t)$ の任意の標本経路と正の定数 $g$ に対し、$t\gt0$ で $z_t=g$ となる標本経路が（$t\gt\epsilon$ で $\epsilon$ を任意に小さくとれる意味で）存在します。$g=u'(\hat W_0-d\hat c_0)$ とし、$u$ の凹性を使うと（$d\hat c_0$ は $t=0$ のアトム、$\int_{0^+}$ はアトムを除く積分）

$$
\min_{r_t,\beta_t,\eta_t}[\cdots]\le\min_{r_t,\beta_t}\Bigl[u(\hat W_0-d\hat c_0)+u'(\hat W_0-d\hat c_0)\Bigl(\int_0^T\mu_{\hat y,t}dt+\int_0^T\sigma_{\hat y,t}dB_t\Bigr)+z_0d\hat c_0\Bigr]\tag{152}
$$

**Step 4　$\sigma_{\hat y,t}=0$ と $\mu_{\hat y,t}=0$**

$\sigma_{\hat y,t}\ne0$ ならブラウン運動の無限変動のため式(152)の最小値は $-\infty$。したがって $\sigma_{\hat y,t}=0$、すなわち投資家は満期 $T$ の債券だけ（またはその複製ポートフォリオ）を保有します。無裁定（式(66)）より $\mu_{\hat y,t}=0$ です。

**Step 5　一階条件**

式(152)から

$$
\max_{\hat y_{t,\tau},c_t}\min[\cdots]\le\max_{d\hat c_0}\bigl[u(\hat W_0-d\hat c_0)+z_0d\hat c_0\bigr]\tag{153}
$$

$y_{t,\tau}=0$（$\tau\ne T-t$）、$d\hat c_t=0$（$t\gt0$）とすると逆向きの不等式も成り立つので、式(153)は等号です。最適な $d\hat c_0$ は

$$
u'(\hat W_0-d\hat c_0)=z_0\tag{154}
$$

$\hat W_0-d\hat c_0$ が時点0に保有する満期 $T$ の債券の単位数なので、式(87)（$t=0$）を得ます。$t\gt0$ も同じ議論です。→ 式(87)

**Step 6　CARA 効用（式(88)）**

$u(C_T)=-e^{-C_T}$ なら $(u')^{-1}[z]=-\log z$。式(1)より $-\log P_{t,T-t}=(T-t)R_{t,T-t}$ なので

$$
\hat y_{t,T-t}=-\log\bigl(e^{\hat\beta_t(T-t)}P_{t,T-t}\bigr)=(T-t)(R_{t,T-t}-\hat\beta_t)
$$

$\eta_t$ は世代内で平均されて消えるので、平均需要は式(88)。→ 式(88)

**Step 7　2次効用（式(90)〜(92)）**

$C_T\le g$ で $u'(C)=g-C$ なので $(u')^{-1}[z]=g-z$。$K=0$ では $\beta_{t,T-t}=\overline\beta$ なので、保有は $g-e^{(\overline\beta+\eta_t)(T-t)}P_{t,T-t}$（式(90)）。$\eta_t$ が正規分布するとして世代内平均をとると、$E[e^{\eta_t(T-t)}]=e^{\frac12\Sigma_\eta^2(T-t)^2}$ なので式(91)、(92)。→ 式(90)〜(92)

**Step 8　変形モデルの均衡（式(93)〜(99)）**

式(89)、(93)と $\partial\tau/\partial t=-1$ より $dP_{t,\tau}=[-(C'-A_r'r_t)-A_r(\kappa_r+\overline r-r_t)(\overline r-r_t)]dt-A_rdN_{r,t}$（式(94)、(95)）。式(96)の裁定者の問題の一階条件は、補題1と同様に（目的関数 $\int x(\mu-r_tP)d\tau-\tfrac{a\sigma_r^2}{2}(\int xA_r)^2$）式(97)。$x=-y$ と式(91)、(93)から式(98)。式(95)、(98)を式(97)に代入すると式(99)で、$r_t$ のアフィン式として係数比較（T3）すると、$A_r(\tau),C(\tau)$ についての2本の線形ODEが得られます。→ 式(93)〜(99)

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(5)、(66)、(82)〜(86)、(89)、(93) |
| 道具 | T1〜T3、凹関数の接線不等式、max–min の評価 |

**確認**：式(88)の需要は式(4)で $\alpha(\tau)=1$ とした形（ただし単位数建て）。式(90)で $g$ を十分大きくとれば、投資家の保有は $g$ から指数項を引いた形で、利回りに対して減少する需要（価格について線形・減少）になります。

### A.15 著者について

**Dimitri Vayanos**
- **アカデミックな経歴**: ロンドン・スクール・オブ・エコノミクス（LSE）ファイナンス学科教授（論文の著者情報による）。MITで経済学の博士号を取得し、MITスローン経営大学院を経てLSEに移ったと広く知られています。LSEのPaul Woolley Centre（資本市場の機能不全の研究センター）を主導しており、論文は同センターの財政支援に謝辞を述べています。
- **主要な研究分野**: 資産価格理論、裁定の限界（limits to arbitrage）、市場流動性、債券・期間構造、金融市場の摩擦。
- **評判・学術的貢献**: NBER研究員・CEPR研究員（論文の著者情報による）。代表的業績に Gromb & Vayanos (2002, *Journal of Financial Economics*)、Greenwood & Vayanos (2014, *Review of Financial Studies*)、本論文の刊行版 Vayanos & Vila (2021, *Econometrica*) があります。受賞歴・役職の詳細は所属機関の公式ページで確認されたい（本稿では確実な範囲のみ記載しました）。

**Jean-Luc Vila**
- **アカデミックな経歴**: 論文執筆時（2009年）の所属は Bank of America Merrill Lynch（ロンドン）（論文の著者情報による）。学位などの詳細は元資料に記載がなく、本稿では記述しません。
- **主要な研究分野**: 金利・期間構造、債券市場の理論と実務（実務家としての立場からの研究）。
- **評判・学術的貢献**: 本論文を Vayanos と共著で発表し、その刊行版（*Econometrica* 2021）の共著者でもあります。詳細な経歴・受賞歴は元資料にないため断定を避けます。

---

**© 2009 Dimitri Vayanos and Jean-Luc Vila**（原論文：NBER Working Paper 15487、All rights reserved）。本記事は原論文の数理モデルの整理であり、原論文の著作権は著者に帰属します。
{% endraw %}
