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

