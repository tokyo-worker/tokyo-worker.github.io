---
layout: post
title: "Emmanuel Farhi, Matteo Maggiori(2016) \"A Model of the International Monetary System\"：数理モデル"
date: 2026-10-20 00:00:00 +0900
categories: [国際金融, 国際通貨システム]
math: true
---

{% raw %}
# A Model of the International Monetary System：数理モデル
### Hegemon（単独の準備資産発行国）・限定コミットメント・信認危機・多極化の早見表

> **この記事について**　本記事は、Emmanuel Farhi と Matteo Maggiori の論文 "A Model of the International Monetary System"（NBER Working Paper No. 22295、2016年5月、同年12月改訂）の背景にある数理モデルだけを取り出した早見表です。論文は、準備資産の需要と供給、為替制度、国際通貨制度という三つの要素を一つの均衡モデルにまとめ、Triffin のジレンマ、Nurkse の多極化不安定論、Keynes の準備資産不足による不況論を同じ枠組みで説明します。本記事では歴史的な議論や解釈は最小限にし、式・前提・記号・導出を原論文のまま（簡略化せず）整理します。原論文が結果のみを示す式の中間導出は本記事が補い、「（補）」と記します。

---

## 目次

- [1. 数理モデル](#sec1)
- [2. 説明できる現象](#sec2)
- [3. 整理している点](#sec3)
- [4. モデルの対象外](#sec4)
- [付録：導出手順](#appendix)

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間・資産**

時点は $t=0,1$ の2期。主体は Hegemon 国（準備資産の発行国）と RoW（Rest of the World：競争的な国際投資家の集合）。財は1種類で、$t=0$ の初期保有は Hegemon が $w$、RoW が $w^{\ast}$。資産は、供給が完全弾力的な危険資産と、Hegemon だけが自国通貨建てで発行する名目債。RoW は債券を空売りできない（均衡では買い手なので制約は効かない）。

**A1 状態と危険資産収益**

$t=1$ の状態は $H$ と $L$。$L$（災害）の確率は $\lambda\in(0,1)$。危険資産の実質収益は $R^{r}_H\gt1$（状態 $H$）、$R^{r}_L\lt1$（状態 $L$）。$\bar R^{r}=E[R^{r}]$、$\sigma^2=\mathrm{Var}(R^{r})$。危険資産を一つにするのは単純化で、多段階の危険度を持つ資産に一般化もできる。

**A2 選好**

RoW の代表的個人は $t=0$ に消費せず、$t=1$ の消費について平均分散選好 $U^{\ast}(C_1^{\ast})=E[C_1^{\ast}]-\gamma\mathrm{Var}[C_1^{\ast}]$（$\gamma\gt0$）を持つ。Hegemon の代表的個人は危険中立で $U(C_0,C_1)=C_0+\delta E[C_1]$、$\delta=1/\bar R^{r}$（消費時点に無差別）。$\gamma$ は危険回避度そのものというより、RoW が準備資産を求める度合いの代理変数としても読める。

**A3 切り下げと為替**

$t=1$ に不確実性が解消した後、Hegemon は為替の変化率 $e$ を選ぶ（$e\lt1$ が切り下げ）。選べる値は $e\in\{e_H,e_L\}$、$e_H=1$、$e_L=R^{r}_L/R^{r}_H\lt1$。切り下げは災害状態でのみ可能で、実施すると効用費用 $\tau(1-e_L)\gt0$ を負う（$1-e_L$ での規格化は記法上のもの）。債券の事後実質収益は $Re$、$R=\tilde R/\Pi^{\ast}$（$\tilde R$：Hegemon 通貨の名目利回り、$\Pi^{\ast}$：RoW のインフレ率、確定的）。以下では $\Pi^{\ast}=1$ とする（ZLB を除き一般性を失わない）。$e_L=R^{r}_L/R^{r}_H$ により、危険な Hegemon 債は危険資産の完全代替になる。切り下げは部分デフォルトと同型（名目硬直性を入れる 1.7 以降は同型でなくなる）。

**A4 Calvo タイミング（信認危機）**

決定は $t=0^{-}$（Hegemon が債務量 $b$ と危険資産投資 $s$ を決める）、$t=0^{+}$（サンスポットが実現し、金利 $R$ が決まり、RoW がポートフォリオを組む）、$t=1$（災害後に Hegemon が $e$ を選ぶ）の順。$b$ は金利 $R$ が決まる前に固定され、後から調整できない。このため投資家の期待に応じた複数均衡が生じる。期待演算子は $E^{+}[\cdot]$（$t=0^{+}$）、$E^{s}[\cdot]$（安全サンスポット条件付き）、$E^{r}[\cdot]$（危険サンスポット条件付き）、$E^{-}[\cdot]$（$t=0^{-}$、サンスポット実現前）。

**A5 均衡選択**

複数均衡の領域ではサンスポットで選ぶ。崩壊均衡が選ばれる確率を $\alpha(b)$ とする。

> 原論文の設定文は、サンスポット $s$（安全）の確率を $\alpha$ と書いているが、式(16)以降は $\alpha$ を崩壊（危険）均衡の確率として使っている。本記事は後者に統一する。

**A6 正則条件**

$$
\left\{\begin{aligned}
&\underbrace{\bar R^{r}-2\gamma w^{\ast}\sigma^2\gt0}_{\text{価格が正（自由処分）}}\\
&\underbrace{\tau\le\bar R^{r}w^{\ast}}_{\text{完全保険不能}\ (\overline b\le w^{\ast})}\\
&\underbrace{R^{r}_H\gt1\gt R^{r}_L,\quad \lambda\in(0,1),\quad \gamma\gt0,\quad\tau\gt0}_{\text{符号条件}}
\end{aligned}\right.\tag{1}
$$

> 第1式を外すと、債券の価格が負になり、正の支払いを持つ資産に負の価格が付く裁定が生じる。第2式を外すと、Hegemon が RoW に完全な保険を提供でき、限定コミットメントが効かなくなる。無裁定の十分条件は $\bar R^{r}-2\gamma w^{\ast}\sigma^2\gt1$（付録 A.7）。

**記号の統一について**　原論文は $\eta$ を二つの意味（評判喪失確率、私的発行コスト）、$\hat\gamma$ を二つの意味（私的発行、流動性）、$\omega$ を二つの意味（流動性係数、特異的リスク）で使っている。本記事では、評判喪失確率は $\eta$、私的発行コストは $\theta$、私的発行の修正係数は $\gamma_p$、特異的リスクは $\zeta_i$ と書き分ける。

| 記号・項目 | 意味 |
|---|---|
| $w,\ w^{\ast}$ | Hegemon、RoW の $t=0$ の初期保有 |
| $R^{r}_H,\ R^{r}_L$ | 危険資産の収益（状態 $H$、$L$） |
| $\bar R^{r},\ \sigma^2$ | 危険資産収益の平均、分散 |
| $\lambda$ | 災害（状態 $L$）の確率 |
| $\gamma$ | RoW の危険回避度（準備資産需要の代理） |
| $\delta$ | Hegemon の時間選好率、$\delta=1/\bar R^{r}$ |
| $e,\ e_L$ | 為替変化率、災害時の切り下げ水準（$e_L=R^{r}_L/R^{r}_H$） |
| $\tau$ | 切り下げの費用（コミットメントの強さ） |
| $\alpha(b)$ | 崩壊均衡が選ばれる確率 |
| $R,\ R^s(b)$ | 債券の実質利回り、安全債の利回り |

---

### 1.1 RoW の需要

**RoW のポートフォリオ問題**（$t=0^{+}$）

$$
\max_{b,\,C_1^{\ast}}\ E^{+}[C_1^{\ast}]-\gamma\mathrm{Var}^{+}(C_1^{\ast}),\qquad
\text{s.t. }\ w^{\ast}=s^{\ast}+b,\ \ s^{\ast}\ge0,\ \ b\ge0,\ \ s^{\ast}R^{r}+bRe=C_1^{\ast}\tag{2}
$$

> $s^{\ast}$：危険資産への投資、$b$：Hegemon 債への投資。

**安全債の需要曲線**（債務が安全と期待される場合）

$$
R^{s}(b)=\underbrace{\bar R^{r}}_{\text{危険資産の期待収益}}-\underbrace{2\gamma(w^{\ast}-b)\sigma^2}_{\text{安全性プレミアム}}\tag{3}
$$

> 金利は $b$ について増加、$\gamma$・$\sigma^2$・$w^{\ast}$ について減少。傾きは $R^{s\prime}(b)=2\gamma\sigma^2$。

**危険債の需要**（債務が危険と期待される場合）

$$
R=R^{r}_H,\qquad E^{r}[Re]=\bar R^{r}\tag{4}
$$

> 危険な債券は危険資産の完全代替で、需要は金利 $R^{r}_H$ で無限弾力的。後ろ曲がりの需要を与える第2根は経済的理由で除外する（付録 A.2）。

| 記号・項目 | 意味 |
|---|---|
| $b$ | Hegemon 債への投資量（Hegemon の対外安全債務、$b$ は RoW 保有分） |
| $s^{\ast}$ | RoW の危険資産への投資 |
| $C_1^{\ast}$ | RoW の $t=1$ の消費 |
| $E^{+},\mathrm{Var}^{+}$ | $t=0^{+}$ での期待値、分散 |

---

### 1.2 Hegemon の発行問題

**Hegemon の問題**（$t=0^{-}$）

$$
\max_{s,\,b,\,C_0,\,C_1}\ E^{-}\bigl[C_0+\delta\bigl(C_1-\tau(1-e)\bigr)\bigr],\quad
\text{s.t. }\ w-C_0=s-b,\ \ sR^{r}-bR(b)e=C_1,\ \ b\ge0,\ s\ge0\tag{5}
$$

**簡約形**

$$
\max_{b\ge0}\ \underbrace{b\bigl(\bar R^{r}-E^{-}[R(b)e]\bigr)}_{\text{RoW からの期待移転}}-\underbrace{E^{-}[\tau(1-e)]}_{\text{期待切り下げ費用}}\tag{6}
$$

> Hegemon は、債務の売却代金を危険資産に投資して $t=1$ に消費することと、$t=0$ に消費することが無差別なので、$b\bar R^{r}$ の項が現れる。債務発行が金利と将来の切り下げ誘因に与える影響を、すべて織り込んでいる。

| 記号・項目 | 意味 |
|---|---|
| $s$ | Hegemon の危険資産への投資 |
| $C_0,\ C_1$ | Hegemon の消費 |
| $E^{-}$ | $t=0^{-}$（サンスポット実現前）の期待値 |

---

### 1.3 完全コミットメント均衡（基準点）

**問題**（$\tau\to\infty$、すなわち $e=1$ で債務は常に安全）

$$
\max_{b\ge0}\ V^{FC}(b)=\underbrace{b}_{\text{発行量}}\cdot\underbrace{\bigl(\bar R^{r}-R^{s}(b)\bigr)}_{\text{安全性プレミアム}}\tag{7}
$$

**1階条件**（Lerner 公式）

$$
\bar R^{r}-R^{s}(b)-bR^{s\prime}(b)=0\tag{8}
$$

$$
\frac{\bar R^{r}-R^{s}(b)}{R^{s}(b)}=\frac{bR^{s\prime}(b)}{R^{s}(b)}
$$

> 独占者が需要の弾力性に応じたマークアップで発行する形。

**需要曲線を代入した条件**

$$
b=\frac{1}{2\gamma}\cdot\frac{\bar R^{r}-R^{s}(b)}{\sigma^2}\ \ge0\tag{9}
$$

**命題1：完全コミットメント均衡**

$$
\boxed{\ R^{s}(b^{FC})=\bar R^{r}-\gamma\sigma^2w^{\ast},\qquad b^{FC}=\frac12w^{\ast},\qquad b^{FC}\bigl(\bar R^{r}-R^{s}(b^{FC})\bigr)=\underbrace{\tfrac12\gamma\sigma^2w^{\ast2}}_{\text{exorbitant privilege}}\ }\tag{10}
$$

**補題1：完全競争均衡**（Hegemon が金利を所与とする場合）

$$
R^{s}(b)=\bar R^{r},\qquad b=w^{\ast}\tag{11}
$$

> 完全競争では RoW は完全に保険され、安全性プレミアムはゼロ。$b^{FC}$ は $\gamma,\sigma^2$ に依存しない（水準を上げる効果と弾力性を下げる効果が相殺する）。

| 記号・項目 | 意味 |
|---|---|
| $V^{FC}(b)$ | 完全コミットメント下の Hegemon の価値（期待移転） |
| $b^{FC}$ | 完全コミットメント下の発行量 |
| exorbitant privilege | 独占レント $b^{FC}(\bar R^{r}-R^{s}(b^{FC}))$ |

---

### 1.4 限定コミットメント：切り下げ判断と3ゾーン

**災害後の事後問題**（$t=1$）

$$
\max_{C_1,\ e\in\{1,e_L\}}\ C_1-\tau(1-e),\qquad\text{s.t. }\ sR^{r}_L-bRe=C_1\tag{12}
$$

**切り下げの閾値則**（$bR(1-e_L)\gt\tau(1-e_L)$ を整理）

$$
bR\gt\tau\ \Longleftrightarrow\ \text{切り下げる}\tag{13}
$$

**ゾーンの境界**

$$
\underline b=\frac{\tau}{R^{r}_H}\tag{14}
$$

$$
\overline b=\frac{-\bar R^{r}+2w^{\ast}\gamma\sigma^2+\sqrt{\bigl(\bar R^{r}-2w^{\ast}\gamma\sigma^2\bigr)^2+8\gamma\sigma^2\tau}}{4\gamma\sigma^2}\tag{15}
$$

> $\underline b$：$R=R^{r}_H$ でも切り下げない上限。$\overline b$：不等式 $b\bigl(\bar R^{r}-2\gamma(w^{\ast}-b)\sigma^2\bigr)\le\tau$ の正の根。正則条件(1)の下で $\underline b\le\overline b\le w^{\ast}$。

**補題2：IMS の3ゾーン**

| ゾーン | 発行量 $b$ | 均衡 | 金利 | 安全性プレミアム |
|---|---|---|---|---|
| Safety | $[0,\underline b]$ | 安全均衡のみ（切り下げない） | $R^{s}(b)=\bar R^{r}-2\gamma(w^{\ast}-b)\sigma^2$ | $2\gamma(w^{\ast}-b)\sigma^2\gt0$ |
| Instability | $(\underline b,\overline b]$ | 安全均衡と崩壊均衡の2つ | 安全：$R^{s}(b)$、崩壊：$R^{r}_H$ | 安全：正、崩壊：0 |
| Collapse | $(\overline b,w^{\ast}]$ | 崩壊均衡のみ（災害で必ず切り下げ） | $R^{r}_H$ | 0 |

| 記号・項目 | 意味 |
|---|---|
| $\underline b$ | Safety ゾーンの上限（安全債務容量） |
| $\overline b$ | Instability ゾーンの上限 |
| $\tau$ | 切り下げ費用（コミットメント） |

---

### 1.5 Hegemon の最適発行と Triffin ジレンマ

**均衡選択関数**

$$
\alpha(b)=\begin{cases}0,&b\in[0,\underline b]\\ \alpha,&b\in(\underline b,\overline b]\\ 1,&b\in(\overline b,w^{\ast}]\end{cases}\tag{16}
$$

**Hegemon の価値関数**

$$
\max_{b\ge0}\ V(b)=\bigl(1-\alpha(b)\bigr)\underbrace{V^{FC}(b)}_{\text{期待移転}}-\alpha(b)\underbrace{\lambda\tau(1-e_L)}_{\text{期待切り下げ費用}}\tag{17}
$$

> $V^{FC}(b)\ge V(b)$（等号は $b\in[0,\underline b]$ のみ）。$V$ は $\underline b$（$\alpha\in(0,1)$ のとき）と $\overline b$ で不連続、他では2回連続微分可能。

**命題2：限定コミットメント均衡**（$b^{I}:=\min\{b^{FC},\overline b\}$）

$$
b^{\mathrm{opt}}=\begin{cases}b^{FC},&b^{FC}\le\underline b\quad\text{（Safety ゾーン内）}\\[2pt]\underset{b\in\{\underline b,\ b^{I}\}}{\arg\max}\ V(b),&b^{FC}\gt\underline b\quad\text{（Triffin ジレンマ）}\end{cases}\tag{18}
$$

> 第2行は、場合2（$b^{FC}\in(\underline b,\overline b]$）では $\underline b$ か $b^{FC}$、場合3（$b^{FC}\gt\overline b$）では $\underline b$ か $\overline b$ のうち、純期待レントが大きい方を選ぶという意味。どの場合も Hegemon は正の純期待独占レント（exorbitant privilege）を得る。

**Triffin マージンの条件**

$$
b^{FC}=\tfrac12w^{\ast}\ \gt\ \underline b=\frac{\tau}{R^{r}_H}\tag{19}
$$

> RoW の準備資産需要 $w^{\ast}$ が Hegemon の安全債務容量 $\tau$ に比べて大きいと成立。$w^{\ast}$ の増加、または $\tau$ の低下で発動する。

**切り替え確率**（$\alpha^{\ast}_m\in(0,1)$）

$$
\bigl(1-\alpha^{\ast}_m\bigr)V^{FC}(b^{I})-\alpha^{\ast}_m\lambda\tau(1-e_L)=V^{FC}(\underline b),\qquad
b^{\mathrm{opt}}=\underline b\ \Longleftrightarrow\ \alpha\gt\alpha^{\ast}_m\tag{20}
$$

> $V(\underline b)=V^{FC}(\underline b)$ は $\alpha$ に依存しない。$V(b^{I})$ は $\alpha$ について連続・単調減少。

| 記号・項目 | 意味 |
|---|---|
| $V(b)$ | 限定コミットメント下の Hegemon の純期待独占レント |
| $b^{I}$ | Instability ゾーン内の局所最適点 $\min\{b^{FC},\overline b\}$ |
| $b^{\mathrm{opt}}$ | 命題2の最適発行量 |
| $\alpha^{\ast}_m$ | Hegemon が $\underline b$ と $b^{I}$ で無差別になる崩壊確率 |

---

### 1.6 厚生分析：量とリスクの二次元

**折れ線形（1つの折れ点）の需要曲線**（折れ点は $\underline b$）

$$
R^{s}(b)=\bar R^{r}-\underbrace{2\gamma(w^{\ast}-b)\sigma^2}_{\text{線形部分}}-\underbrace{2\gamma_L(\underline b-b)\mathbf 1_{\{b\le\underline b\}}}_{\text{流動性（凸性）}},\qquad \gamma_L\gt0\tag{21}
$$

> 正則条件：$\bar R^{r}-2\gamma w^{\ast}\sigma^2-2\gamma_L\underline b\gt0$。$\gamma_L=0$ で線形に戻る。$b\gt\underline b$ では式(3)と同じ。

**この需要曲線を生む RoW の効用**（債券効用型の流動性）

$$
\max_{b,\,C_1^{\ast}}\ E^{+}[C_1^{\ast}]-\gamma\mathrm{Var}^{+}(C_1^{\ast})-\gamma_L\Bigl(\underline b-\min\{b,\underline b\}\,\mathbf 1_{\{E^{+}[e]=1\}}\Bigr)^2\tag{22}
$$

> 債務が安全（$E^{+}[e]=1$）のとき $b\le\underline b$ に流動性便益が生じ、危険なら $b=0$ のときの損失 $\gamma_L\underline b^2$ を被る。

**RoW の期待効用＝需要曲線の下の面積**

$$
V_{RoW}(b)=V_{RoW}(0)+\bigl(1-\alpha(b)\bigr)\int_{R^{s}(0)}^{R^{s}(b)}b(\tilde R^{s})\,d\tilde R^{s}\tag{23}
$$

> $b(R^{s})$ は需要の逆関数。(補題A.1)。$V_{RoW}(0)=w^{\ast}\bar R^{r}-\gamma\sigma^2w^{\ast2}-\gamma_L\underline b^2$。純期待独占レント $V(b)$ は、$R^{s}$ に式(21)を用いた式(17)。

**切り替え確率の定義**（社会厚生 $W(b)=V(b)+V_{RoW}(b)$）

$$
\left\{\begin{aligned}
&V_{RoW}(\underline b)=V_{RoW}(b^{I})\ \text{が }\alpha=\alpha^{\ast}_{RoW}\text{ で成立}\\
&W(\underline b)=W(b^{I})\ \text{が }\alpha=\alpha^{\ast}_{TOT}\text{ で成立}
\end{aligned}\right.\tag{24}
$$

**命題3：Hegemon の過剰発行**

$$
\begin{aligned}
&\gamma_L=0:&&\alpha^{\ast}_m\lt\alpha^{\ast}_{TOT}\lt\alpha^{\ast}_{RoW}\\
&\gamma_L\in[\eta_0\bar\gamma_L(\tau),\bar\gamma_L(\tau)],\ \tau\text{ 十分小}:&&\alpha^{\ast}_m\gt\alpha^{\ast}_{TOT}\gt\alpha^{\ast}_{RoW}
\end{aligned}\tag{25}
$$

> $\eta_0\in(0,1]$ は任意。$\bar\gamma_L(\tau)=\gamma\sigma^2\bigl(w^{\ast}R^{r}_H/\tau-2\bigr)$。線形需要では、$\alpha\in(\alpha^{\ast}_m,\alpha^{\ast}_{RoW})$ で RoW から見て過少発行、$\alpha\in(\alpha^{\ast}_m,\alpha^{\ast}_{TOT})$ で社会的に過少発行。凸性が十分なら不等号が逆転し、$\alpha\in(\alpha^{\ast}_{RoW},\alpha^{\ast}_m)$ で RoW から見て過剰発行、$\alpha\in(\alpha^{\ast}_{TOT},\alpha^{\ast}_m)$ で社会的に過剰発行になる。

**過少・過剰発行の定義**（量の次元）

| 判定 | 定義 |
|---|---|
| RoW から見て過剰発行 | $b^{\ast}_{RoW}(\alpha)\lt b^{\ast}_m(\alpha)$ |
| RoW から見て過少発行 | $b^{\ast}_{RoW}(\alpha)\gt b^{\ast}_m(\alpha)$ |
| 社会厚生で見た過剰・過少 | $b^{\ast}_{TOT}(\alpha)$ について同様 |
| $\gamma_L=0$ のとき | $b^{\ast}_m(\alpha)\lt b^{\ast}_{TOT}(\alpha)\lt b^{\ast}_{RoW}(\alpha)\ \ \forall\alpha\in[0,1]$ |

> $b^{\ast}_m(\alpha)$、$b^{\ast}_{RoW}(\alpha)$、$b^{\ast}_{TOT}(\alpha)$ は、それぞれ Hegemon の純期待レント、RoW の期待効用、社会厚生を最大にする発行量。

**Spence の品質独占との対応**

| 独占理論 | 本モデル |
|---|---|
| 財 | Hegemon が供給する資産 |
| 数量 $q$ | 発行量 $b$ |
| 品質 $z\in\{s,r\}$ | 安全（$s$）か危険（$r$）か。確率 $1-\alpha(b)$、$\alpha(b)$ で決まる |
| 価格 $P(q,z)$ | リスクプレミアム：$z=s$ で $\bar R^{r}-R^{s}(b)$、$z=r$ で 0 |
| 費用 $C(q,z)$ | $z=s$ で 0、$z=r$ で $\lambda\tau(1-e_L)$（期待費用 $\alpha(b)\lambda\tau(1-e_L)$） |

> $R^{s}(b)$ が凹（リスクプレミアムが凸）なほど過剰発行しやすい。RoW 個人は、自らの選択が Hegemon の事後の切り下げと事前の発行に与える外部性を内部化しない。

| 記号・項目 | 意味 |
|---|---|
| $\gamma_L$ | 流動性選好の係数（折れ線の凸性） |
| $V_{RoW}(b)$ | RoW の事前期待効用 |
| $W(b)$ | 社会厚生（$V+V_{RoW}$） |
| $\alpha^{\ast}_{RoW},\ \alpha^{\ast}_{TOT}$ | RoW、社会厚生が $\underline b$ と $b^{I}$ で無差別になる崩壊確率 |
| $\mathbf 1_{\{\cdot\}}$ | 指示関数 |

---

### 1.7 名目硬直性：変動相場と ZLB

**生産と投資可能な富**

RoW に単位質量の競争的企業があり、$t=0,1$ に労働1単位から財1単位を生産する。労働は $\bar L$ まで無負担で供給され、それを超えると大きな不効用を伴う（$\bar L$ が自然産出水準）。生産は $t=0^{+}$（サンスポット実現後）と $t=1$ に行う。投資可能な富は $w^{\ast}=w^{\ast e}+w^{\ast\ell}$（$w^{\ast e}$：初期保有、$w^{\ast\ell}$：労働所得）。

$$
R^{s}(b;w^{\ast\ell})=\bar R^{r}-2\gamma\sigma^2\bigl(w^{\ast e}+w^{\ast\ell}-b\bigr)\tag{26}
$$

> 名目硬直性がなければ実質賃金は1で $w^{\ast\ell}=\bar L$（完全雇用）となり、$w^{\ast}=w^{\ast e}+\bar L$ の基本モデルと一致する。このとき負の安全金利は Fisher 方程式 $R^{s}=\tilde R^{\ast}/\Pi^{\ast}$ のインフレで実現できるが、名目硬直性の下では不可能になる。

**名目硬直性と金融政策**

財価格は伸縮的、賃金は RoW 通貨建てで完全に硬直（$\bar w^{\ast}=1$）。均衡価格 $p^{\ast}=1$、インフレ $\Pi^{\ast}=1$、実質労働所得 $w^{\ast\ell}=\ell$（産出 $\ell$ は需要で決まる）。$t=1$ は完全雇用を選ぶ。RoW の金融政策は切断 Taylor ルール：

$$
\tilde R^{\ast}=1+\phi\max\{-(\bar L-\ell),\,0\},\qquad \phi\uparrow\infty\tag{27}
$$

> 極限では「$\ell=\bar L$ かつ $\tilde R^{\ast}\ge1$」または「$\ell\lt\bar L$ かつ $\tilde R^{\ast}=1$（ZLB）」のいずれか。Hegemon 通貨の名目金利は、減価が期待されなければ $\tilde R=\tilde R^{\ast}$（インフレ0）、減価が期待されれば $\tilde R=R^{r}_H$（インフレ $(1-e_L)/e_L$）。

> 原論文は両方の場合を「減価が期待される場合」と書いているが、前者は「期待されない場合」の誤記と判断した。

**ZLB の閾値**（完全コミットメント）

$$
b^{ZLB}=\frac{1-\bar R^{r}+2\gamma\sigma^2\bigl(w^{\ast e}+\bar L\bigr)}{2\gamma\sigma^2}\tag{28}
$$

> $b^{ZLB}\gt0\Leftrightarrow R^{s}(0;\bar L)\lt1$（以降これを仮定）。ZLB が効くのは $b\lt b^{ZLB}$ のときに限る。$b\ge b^{ZLB}$ では $\tilde R^{\ast}=R^{s}(b;\bar L)$ で完全雇用。

**ZLB が効くときの産出の決定**

$$
R^{s}(b;\ell)=1\tag{29}
$$

**財市場での同値表現**（Keynes 型 AS–AD 図）

$$
AS(\ell)=w^{\ast e}+\ell,\qquad AD(\ell)=\underbrace{b}_{\text{準備資産供給}}+\underbrace{\frac{\bar R^{r}-\tilde R^{\ast}}{2\gamma\sigma^2}}_{\text{RoWの危険資産投資}},\qquad AS(\ell)=AD(\ell)\tag{30}
$$

> 準備資産の供給 $b$ は AD を正にシフトさせる。ZLB で金利が下げられないとき、$b$ の減少は $\ell$ の減少を招く。完全コミットメントの Hegemon は ZLB が効かない $b^{FC}_{ZLB}\gt b^{ZLB}$ を選ぶ（$b\lt b^{ZLB}$ では金利を上げずに発行を増やせる）。

**限定コミットメントでの Instability ゾーンの上限**

$$
\overline b^{ZLB}=\min\{\overline b,\ \tau\}\tag{31}
$$

> $\overline b$ は式(15)で $w^{\ast}=w^{\ast e}+\bar L$ としたもの。$\underline b=\tau/R^{r}_H$ は安全金利に依存しないので不変。

**命題4：変動相場と ZLB**

| 配置 | Hegemon の選択 | 産出 |
|---|---|---|
| $b^{ZLB}\lt\underline b$（ZLB 閾値が Safety 内） | Safety で発行なら $b\in[b^{ZLB},\underline b]$ | 完全雇用（$\ell=\bar L$） |
|  | Instability で発行 | 債務が安全なら完全雇用。危険なら ZLB が効き $\ell\lt\bar L$（$R^{s}(0;\ell)=1$） |
| $b^{ZLB}\gt\overline b^{ZLB}$（ZLB 閾値が Collapse 内） | $\overline b^{ZLB}$ か $\underline b$ のうち純期待レントが大きい方 | どちらでも ZLB が効き $\ell\lt\bar L$。危険ならより深い不況（$R^{s}(b;\ell)=1$ より $R^{s}(0;\ell)=1$ の方が $\ell$ が低い） |

| 記号・項目 | 意味 |
|---|---|
| $w^{\ast e},\ w^{\ast\ell}$ | RoW の初期保有、労働所得 |
| $\bar L,\ \ell$ | 自然産出水準、実際の産出（利用された労働） |
| $\phi$ | Taylor ルールの反応係数（極限 $\phi\uparrow\infty$） |
| $\tilde R^{\ast}$ | RoW 通貨建ての名目金利 |
| $b^{ZLB}$ | ZLB が効かなくなる発行量の閾値 |
| $\overline b^{ZLB}$ | ZLB を考慮した Instability ゾーンの上限 |

---

### 1.8 金本位制（gold-exchange standard）

**金の導入**

金は $t=1$ に実質配当 $D$ を確実に払う資産（供給は無限小）。金は安全なので無リスク債と同じ率で割り引かれる。RoW 通貨建ての金の名目価格：

$$
p^{G}=\frac{D}{\tilde R^{\ast}}\tag{32}
$$

**金平価の維持**（Taylor ルールの代わり）

$$
\tilde R^{\ast}=\bar R^{G}\gt1,\qquad \bar R^{G}=\frac{D}{\bar p^{G}}\tag{33}
$$

> 金価格 $\bar p^{G}$ が全通貨で一定。金価格が低いほど高金利（金融引き締め）。金平価が金融政策のスタンスを決めるので、国内の安定化の余地がない。

**産出の決定**

$$
R^{s}(b;\ell)=\bar R^{G}\ \ (\text{債務が安全と期待}),\qquad R^{s}(0;\ell)=\bar R^{G}\ \ (\text{それ以外})\tag{34}
$$

> 債務が危険ならその収益は $R=R^{r}_H$。準備資産需要は $\bar R^{G}$ で完全弾力的になり、$b$ の変化は金利ではなく産出で調整される。

**完全雇用閾値と Instability の上限**

$$
b^{G}=\frac{\bar R^{G}-\bar R^{r}+2\gamma\sigma^2\bigl(w^{\ast e}+\bar w^{\ast}\bar L\bigr)}{2\gamma\sigma^2},\qquad \overline b^{G}=\min\Bigl\{b^{G},\ \frac{\tau}{\bar R^{G}}\Bigr\}\tag{35}
$$

> $b^{G}\gt0$ となる母数制約を仮定する。$\bar w^{\ast}=1$ なので $\bar w^{\ast}\bar L=\bar L$。$\underline b$ は基本モデルと同じ。

**命題5：金本位制の下の Hegemon**

| Hegemon の発行 | 産出 |
|---|---|
| $\underline b$ で発行 | $b^{G}\gt\underline b$ なら不況（$\ell\lt\bar L$）、そうでなければ好況（$\ell\gt\bar L$） |
| $\overline b^{G}$ で発行、債務が安全 | $b^{G}\gt\overline b^{G}$ なら不況、そうでなければ好況 |
| $\overline b^{G}$ で発行、債務が危険 | $b^{G}$ に関わらず不況 |

> どの場合も $b^{G}$ が高いほど不況は深く（好況は浅く）なる。Hegemon は $\underline b$ か $\overline b^{G}$ のうち期待独占レントの大きい方を選ぶ。需要が完全弾力的なため、ゾーン内でも間でも発行の誘因が強まる。全通貨が同率で金に対し切り下げる（$\bar p^{G\prime}\gt\bar p^{G}$）と $\bar R^{G\prime}\lt\bar R^{G}$、$b^{G\prime}\lt b^{G}$ となり、同じ発行量で景気が刺激される。

| 記号・項目 | 意味 |
|---|---|
| $D$ | 金の実質配当 |
| $p^{G},\ \bar p^{G}$ | 金の名目価格、固定された金平価 |
| $\bar R^{G}$ | 金平価で決まる名目（＝実質）金利 |
| $b^{G}$ | 金平価と完全雇用が両立する準備資産量 |
| $\overline b^{G}$ | 金本位下の Instability ゾーンの上限 |

---

### 1.9 支出切り替え効果と切り下げの誘因

**Hegemon の非貿易財**

Hegemon に非貿易財部門を導入する。単位質量の競争的企業が労働1単位から1単位を生産し、Hegemon 通貨建ての硬直賃金 $\bar w$ で雇う（価格 $p_{NT}=\bar w$）。労働は $\bar L$ まで無負担で、超過に大きな不効用（$\bar L$ が自然産出）。1期あたり効用は $C_t+\nu_t(C_{NT,t})$（$\nu_t$ は狭義増加・狭義凹・滑らか、時点・状態に依存してよい）。為替水準 $E_t$ は $E_0=1$、$E_1=e$。

$$
\bar wE_t=\nu_t'(C_{NT,t}),\qquad C_{NT,t}(E)=\nu_t'^{-1}(E\bar w),\qquad Y_{NT,t}=C_{NT,t}=C_{NT,t}(E_t)\tag{36}
$$

> $C_{NT,t}(E)$ は $E$ の減少関数なので、切り下げ（$E\downarrow$）は非貿易財の産出を増やす。

**切り下げ費用の修正**（$C_{NT,1}(e_L)\le\bar L$ のとき）

$$
\tilde\tau=\tau-\underbrace{\frac{\nu_1\bigl(C_{NT,1}(e_L)\bigr)-\nu_1\bigl(C_{NT,1}(1)\bigr)}{1-e_L}}_{\text{産出刺激の便益}}\ \lt\ \tau\tag{37}
$$

> 切り下げの便益が増えるため、モデルは $\tau$ を $\tilde\tau$ に置き換えた基本モデルと同型。変動相場と金本位制の両方に当てはまる。賃金が伸縮的なら $\tilde\tau=\tau$（産出は常に $\bar L$）。不況が深いと、Hegemon がコミットを試みない自明な均衡もありうるが、本文は「コミットを試み、Instability ゾーンで不利な期待のときにだけ失敗する」場合に限る。

| 記号・項目 | 意味 |
|---|---|
| $\bar w$ | Hegemon の硬直賃金（Hegemon 通貨建て） |
| $\nu_t,\ C_{NT,t}$ | 非貿易財の効用関数、消費 |
| $E_t$ | $t$ 期の為替水準（$E_0=1,\ E_1=e$） |
| $\tilde\tau$ | 修正後の切り下げ費用 |

---

### 1.10 多極化モデル

**設定**

$n$ 個の対称な準備資産発行国が、自国通貨建てで準備資産を Cournot 競争で発行する。災害状態は全発行国で共通（グローバルな災害）。安全な債務同士、危険な債務同士は互いに完全代替。

**完全コミットメント**

$$
R^{s}(b_i,b_{-i})=\bar R^{r}-2\gamma\sigma^2\bigl(w^{\ast}-b_i-b_{-i}\bigr)\tag{38}
$$

> $b_i$：国 $i$ の発行量、$b_{-i}$：他の $n-1$ 国の合計。$\partial R^{s}/\partial b_i=2\gamma\sigma^2$。

$$
b_i=\frac12\bigl(w^{\ast}-b_{-i}\bigr)\ \ge0\tag{39}
$$

$$
b_i^{FC}=\frac{1}{n+1}w^{\ast},\qquad B_n^{FC}=\frac{n}{n+1}w^{\ast},\qquad R^{s}\bigl(B_n^{FC}\bigr)=\bar R^{r}-\frac{2}{n+1}\gamma\sigma^2w^{\ast}\tag{40}
$$

> 均衡は一意で対称。$n\to\infty$ で $B_n^{FC}\to w^{\ast}$、$R^{s}\to\bar R^{r}$（レントは消え、RoW は完全保険）。総発行量は $n/(n+1)$ で増えるので、効果の大半は最初の数社の参入による。

**限定コミットメント**

Safety ゾーン $[0,\underline b]$ は均衡金利に依存しないので競争の影響を受けない。

$$
\frac{w^{\ast}}{n+1}\le\underline b=\frac{\tau}{R^{r}_H}\tag{41}
$$

> （補）式(40)の $b_i^{FC}$ が Safety ゾーンに収まる条件。$n$ が十分大きく成立するとき、均衡は完全コミットメントと一致する。小さい $n$ の効果は不確実（利益は $n$ について U 字型になりうる）。

**Nurkse 不安定性：2国（duopoly）$i\in\{1,2\}$ の2つの配置**

| 配置 | 期待の設定 | 結果 |
|---|---|---|
| 配置1 | 国 $i$ に最も有利な期待 $\alpha_i=0$、他方に最も不利な期待 $\alpha_{-i}=1$ | 上限 $\overline b_i$ と $\underline b_{-i}$ を容量制約とする非対称容量の Cournot 競争。Hegemon が $\alpha=0$ に直面する場合に比べ、総発行量が減る |
| 配置2 | $t=0^{+}$ に一方がランダムに有利な期待（$\alpha=0$）、他方が不利な期待（$\alpha=1$）。各国は $\alpha_i=0.5$ の Hegemon として行動 | 下記の2ケース |

**配置2のケース**

| ケース | 条件 | 結果 |
|---|---|---|
| (a) 需要が非常に高い | 真の Hegemon が $\alpha=0.5$ でも $\overline b$ を選ぶ | 両国が $\overline b$ を発行する均衡が必ず存在し、総発行は2倍。ただし各国債は確率0.5でしか安全でなく、有効な安全資産の総量は同じ。かつ必ずどちらか一方が崩壊し、社会厚生は低下 |
| (b) 需要が中程度 | 真の Hegemon は $\alpha=0$ で $\overline b$、$\alpha=0.5$ で $\underline b$ を選ぶ | 各国の発行が $\underline b$ 以下へ飛び、$2\underline b\lt\overline b$ なら総発行も減りうる（不安定性は増えなくても厚生は低下） |

> 多極化が不安定かどうかは均衡選択に依存する（原論文は「複数の均衡結果がありうる」と述べるにとどまる）。

| 記号・項目 | 意味 |
|---|---|
| $n$ | 発行国の数 |
| $b_i,\ b_{-i}$ | 国 $i$ の発行量、他国の合計 |
| $b_i^{FC},\ B_n^{FC}$ | 個別・総発行量（完全コミットメント） |
| $\alpha_i$ | 国 $i$ が直面する崩壊確率 |
| $\overline b_i,\ \underline b_i$ | 国 $i$ の Instability・Safety ゾーンの上限（対称なら共通） |

---

### 1.11 無限期間：評判・franchise value・競争

**設定**

時間は離散・無限期間。発行国は無限期間生きる危険中立で、時間選好率 $\delta\in(0,1)$、$\delta^{-1}=\bar R^{r}$。RoW は1期だけ生きる世代重複で、若年は毎期 $w^{\ast}$ を受け取り、債券と危険技術に投資する（平均分散選好）。外生の費用は $\tau=0$。災害は毎期 i.i.d. に確率 $\lambda$ で起きる。期内のタイミングは1期モデルと同じ。

**トリガー戦略**

安全債に有利な金利（$R^{s}_{t-1}(b_i)\lt R^{r}_H$）の下で切り下げた発行国は、確率 $\eta$ で永久に悪い継続均衡（切り下げが期待され、実際に起きる。$z\gt t$ で $R^{s}_z(b_i)=R^{r}_H$）に移る。すでに $R=R^{r}_H$ に直面している発行国の切り下げは罰されない。戦略は金利と過去の切り下げに依存してよいが、発行量の履歴には依存しない。

**Hegemon の franchise value**（崩壊均衡の確率 $\alpha(b)$）

$$
V^{\infty}(b)=\sum_{z\gt t}\delta^{z-t}\,b\bigl(1-\alpha(b)\bigr)E^{s}_t\bigl[\bar R^{r}-R^{z}e\bigr]=\underbrace{b\bigl(1-\alpha(b)\bigr)}_{\text{安全な発行量}}\cdot\underbrace{\frac{\bar R^{r}-R^{s}(b)}{\bar R^{r}-1}}_{\text{割引レント}}\tag{42}
$$

**切り下げしない条件**（長期費用 $\eta V^{\infty}(b)$ ≥ 短期便益 $bR^{s}(b)(1-e_L)$）

$$
\eta\,b\bigl(1-\alpha(b)\bigr)\frac{\bar R^{r}-R^{s}(b)}{\bar R^{r}-1}\ \ge\ bR^{s}(b)(1-e_L)\tag{43}
$$

**安全債の発行上限**（需要曲線 $R^{s}(b)=\bar R^{r}-2\gamma\sigma^2(w^{\ast}-b)$ を代入）

$$
\overline b^{\infty}_{\alpha}=w^{\ast}-\frac{\bar R^{r}\bigl(\bar R^{r}-1\bigr)}{2\gamma\sigma^2\left[\dfrac{\eta(1-\alpha)}{1-e_L}+\bar R^{r}-1\right]}\tag{44}
$$

> $\overline b^{\infty}_{\alpha=0}\gt0$ で有限、$\overline b^{\infty}_{\alpha=1}=0$（原論文の主張。（補）正則条件(1)の下で式(44)は $\alpha=1$ で負になり、許される $b$ は 0 のみ）、$\partial\overline b^{\infty}_{\alpha}/\partial\alpha\lt0$。

**Hegemon の問題と発行量**

$$
\max_{b\in[0,\overline b^{\infty}_{\alpha}]}\ (1-\alpha)\,b\,\frac{\bar R^{r}-R^{s}(b)}{\bar R^{r}-1}=\frac{1-\alpha}{\bar R^{r}-1}V^{FC}(b),\qquad b^{\mathrm{opt}}=\min\bigl\{b^{FC},\ \overline b^{\infty}_{\alpha}\bigr\}\tag{45}
$$

> 原論文は右辺を $(1-\alpha)V^{FC}(b)$ と書くが、定義(7)との整合のため定数因子 $1/(\bar R^{r}-1)$ を明記した（最大化点は同じ）。

**多極化：franchise value の侵食**（$\alpha=0$）

$$
b_i=\min\Bigl\{b_i^{FC}(b_{-i}),\ \overline b^{\infty}(b_{-i})\Bigr\},\qquad
\overline b^{\infty}(b_{-i})=w^{\ast}-b_{-i}-\frac{\bar R^{r}\bigl(\bar R^{r}-1\bigr)}{2\gamma\sigma^2\left[\dfrac{\eta}{1-e_L}+\bar R^{r}-1\right]}\tag{46}
$$

> $\partial\overline b^{\infty}/\partial b_{-i}=-1\lt-1/2=\partial b^{FC}_i/\partial b_{-i}$。上限は完全コミットメントの最適反応より急に下がる。

**対称均衡（全発行国が上限で発行）**

$$
\overline b^{\infty}_n=\frac1n\left[w^{\ast}-\frac{\bar R^{r}\bigl(\bar R^{r}-1\bigr)}{2\gamma\sigma^2\left[\dfrac{\eta}{1-e_L}+\bar R^{r}-1\right]}\right]=\frac{\overline b^{\infty}_1}{n}\tag{47}
$$

> $\overline b^{\infty}_1\lt w^{\ast}/2=b^{FC}$ に制限する。

**命題A.4（競争と franchise value の侵食）**

$\alpha=0$ で、Hegemon が最大の信用できる発行量 $\overline b^{\infty}_1$ を選ぶなら、競争は総発行量を増やさない。$n\to\infty$ でも完全競争に収束せず、総発行量は $\overline b^{\infty}_1$ のまま、レントは全発行国で等分される。

> 個別発行量と個別利潤が $1/n$ に比例し、切り下げの短期便益（発行量に比例）と長期費用（利潤に比例）が同率で減るため。

**Nurkse 不安定性と franchise value**（命題A.5）

2国で、毎期ランダムに一方が有利な期待（$\alpha=0$）、他方が不利な期待に直面する（i.i.d.）。真の Hegemon は常に $\alpha=0$。各国は $\alpha_i=0.5$ の Hegemon として行動する。有利な期待の国が切り下げない条件：

$$
\frac12\eta\,b\,\frac{\bar R^{r}-R^{s}(b)}{\bar R^{r}-1}\ \ge\ bR^{s}(b)(1-e_L)\tag{48}
$$

> 上限は $\overline b^{\infty}_{\alpha=0.5}$（式(44)で $\alpha=0.5$）。各国の問題：$\max_{b_i\in[0,\overline b^{\infty}_{\alpha=0.5}]}\tfrac12 b_i\bigl(\bar R^{r}-R^{s}(b_i)\bigr)/(\bar R^{r}-1)=\tfrac12V^{FC}(b_i)$、$R^{s}(b)=\bar R^{r}-2\gamma\sigma^2(w^{\ast}-b)$。最適発行は $\min\{b^{FC},\overline b^{\infty}_{\alpha=0.5}\}$。$\overline b^{\infty}_{\alpha=0.5}\lt b^{FC}$ なら、2国目の参入と協調問題で有効な準備資産の総量が減る。

| 記号・項目 | 意味 |
|---|---|
| $\eta$ | 切り下げ後に評判（レント）を永久に失う確率 |
| $V^{\infty}(b)$ | 無限期間の franchise value |
| $\overline b^{\infty}_{\alpha},\ \overline b^{\infty}_n$ | 信用できる発行上限（Hegemon、$n$ 国の対称均衡） |
| $\delta$ | 時間選好率（$\delta^{-1}=\bar R^{r}$） |

---

### 1.12 私的発行と第三国発行

**国内の私的発行者**

Hegemon 国内に質量 $\mu$ の私的発行者がいて、各自が準備通貨建てで債務を1単位発行できる。発行コスト $\theta$ は $[0,\xi]$ に一様分布。総発行量を $b_T$、限界発行者の閾値を $\bar\theta=\bar R^{r}-R^{s}(b_T)\in[0,\xi]$ とする。

$$
b_T=b+\frac{\mu}{\xi}\bigl(\bar R^{r}-R^{s}(b_T)\bigr)=\frac{b+\dfrac{\mu}{\xi}2\gamma\sigma^2w^{\ast}}{1+\dfrac{\mu}{\xi}2\gamma\sigma^2}\tag{49}
$$

**公的発行 $b$ に対する需要曲線**

$$
\hat R^{s}(b)=\bar R^{r}-2\gamma_p\sigma^2\bigl(w^{\ast}-b\bigr),\qquad \gamma_p=\frac{\gamma}{1+2(\mu/\xi)\gamma\sigma^2}\tag{50}
$$

> 私的発行は需要曲線を平らにし（より弾力的）、政府の独占力を弱めるが消さない。Hegemon が私的発行者の厚生を考慮しなければ、問題は $\gamma$ を $\gamma_p$ に置き換えた基本モデルと同型。考慮するなら（参入コスト控除前）$b,\gamma$ を $b_T,\gamma_p$ に置き換えたものと同型。資本規制がある場合は私的発行は無関係（同一の配分）。

**私的発行者の参入コスト控除後の目的関数**

$$
V(b_T)=2\gamma\sigma^2b_T\bigl(w^{\ast}-b_T\bigr)-\frac{\mu}{\xi}\cdot\frac{\bigl[2\gamma\sigma^2(w^{\ast}-b_T)\bigr]^2}{2}\tag{51}
$$

**第三国の小さな発行者**（Hegemon 国外、均衡価格に影響しない）

実質資源 $\kappa$ を $t=0$ に調達し、効用関数 $U$ を持つ。Hegemon 通貨で発行するのは次のときに限る。

$$
-\kappa R^{s}(b)\ \gt\ CE^{-}\bigl[-\kappa R^{r}\bigr],\qquad CE^{-}[x]=U^{-1}\bigl(E^{-}[U(x)]\bigr)\tag{52}
$$

> $R^{s}(b)$ が低いほど、$R^{r}$ が高く変動が大きいほど、$U$ の危険回避が強いほど、準備通貨建てで発行しやすい（原罪を持つ国が準備通貨で借りる理由）。均衡価格は無裁定（命題A.3）を仮定。

| 記号・項目 | 意味 |
|---|---|
| $\mu,\ \xi$ | 私的発行者の質量、発行コストの上限 |
| $\theta,\ \bar\theta$ | 私的発行コスト、限界発行者の閾値 |
| $b_T$ | 公的・私的を合わせた総発行量 |
| $\gamma_p$ | 私的発行を織り込んだ修正係数 |
| $\kappa,\ U$ | 第三国発行者の調達額、効用関数 |
| $CE^{-}$ | 確実性等価 |

---

### 1.13 流動性とネットワーク効果

**RoW の効用に準備資産の効用を加える**（債務が安全なときのみ）

$$
E^{+}[C_1^{\ast}]-\gamma\mathrm{Var}^{+}(C_1^{\ast})+\bigl(B^{\top}\omega+B^{\top}\Omega B\bigr)\mathbf 1_{\{E^{+}[e]=1\}},\qquad B=(b,\ \tilde b)^{\top}\tag{53}
$$

> $b$：個人の保有、$\tilde b$：集計保有。$\omega$ は $2\times1$ ベクトル、$\Omega$ は $2\times2$ 行列。仮定：$\omega_1\ge0$、$\Omega_{11}\le0$（限界流動性便益は正で逓減）、$\Omega_{12}=\Omega_{21}\ge0$（集計保有で限界便益が増加）、$\Omega_{11}+\Omega_{12}\lt\gamma\sigma^2$（需要が右上がり）。

**個人のポートフォリオの最適条件**

$$
R^{s}(b)=\bar R^{r}-2\gamma\sigma^2\bigl(w^{\ast}-b\bigr)-\omega_1-2\Omega_{11}b-\bigl(\Omega_{12}+\Omega_{21}\bigr)\tilde b\tag{54}
$$

**均衡 $b=\tilde b$ での需要曲線**

$$
R^{s}(b)=\bar R^{r}-2\gamma\sigma^2w^{\ast}-\omega_1+2\bigl(\gamma\sigma^2-\Omega_{11}-\Omega_{12}\bigr)b=\bar R^{r}-2\hat\gamma\sigma^2\bigl(\hat w^{\ast}-b\bigr)\tag{55}
$$

$$
\hat\gamma=\gamma-\frac{\Omega_{11}+\Omega_{12}}{\sigma^2},\qquad \hat w^{\ast}=\frac{\gamma}{\hat\gamma}w^{\ast}+\frac{\omega_1}{2\hat\gamma\sigma^2}
$$

> 流動性・ネットワーク効果は、$w^{\ast},\gamma$ を $\hat w^{\ast},\hat\gamma$ に置き換えた基本モデルと同型。$\omega_1$ の増加は $R^{s}$ の水準を下げる。$\Omega_{11}$ が小さい（逓減が強い）と水準と傾きが上がり、$\Omega_{12}$ の増加は水準と傾きを下げる。$\omega_1,\Omega_{12}$ の増加は発行量と exorbitant privilege を増やす。$\gamma$ は制度制約・規制・金融摩擦など準備需要全般の代理変数とも読める。

| 記号・項目 | 意味 |
|---|---|
| $B=(b,\tilde b)^{\top}$ | 個人保有、集計保有 |
| $\omega,\ \Omega$ | 流動性便益の1次・2次の係数 |
| $\hat\gamma,\ \hat w^{\ast}$ | 再規格化された係数、富 |

---

### 1.14 多極世界での Hegemon の内生的出現

**財政能力**

2国 $i\in\{1,2\}$。財政能力は公的資金の社会的費用 $\varphi_i\gt1$（返済 $bR$ に資源 $bR\varphi$ が必要）。$\varphi_1\lt\varphi_2$、$\varphi_2-\varphi_1\lt\epsilon$（$\epsilon$ は任意に小さい）。$\alpha_i=0$（協調問題なし）、$\tau$ は十分大きく完全コミットメントが Collapse ゾーン外。1.13 の流動性・ネットワーク効果を導入し、国別の需要曲線は

$$
R^{s}_i(b_i;b_{-i})=\bar R^{r}-2\gamma\sigma^2\bigl(w^{\ast}-(b_i+b_{-i})\bigr)-\omega_1-2\Omega_{11}(b_i+b_{-i})-(\Omega_{12}+\Omega_{21})b_i\tag{56}
$$

**均衡発行量の差**

$$
b_1-b_2=\frac{\bar R^{r}\left(\dfrac{1}{\varphi_1}-\dfrac{1}{\varphi_2}\right)}{2\bigl(\gamma\sigma^2-\Omega_{11}-\Omega_{12}-\Omega_{21}\bigr)}\tag{57}
$$

> $\gamma\sigma^2-\Omega_{11}-\Omega_{12}-\Omega_{21}\gt0$ を仮定。財政能力の大きい国の発行が多く（$b_1\gt b_2$）、差はネットワーク効果 $\Omega_{12}+\Omega_{21}\gt0$ による乗数（分母の縮小）で増幅される。

**評判**

$\tau_1\gt\tau_2$、$\alpha_i=1$（深刻な協調問題）。両国とも Safety ゾーン内で発行し、$\underline b_1=\tau_1/R^{r}_H\gt\underline b_2=\tau_2/R^{r}_H$。容量制約 $\underline b_i$ を持つ Cournot 複占で、制約の大きい国1の発行が多い。

**IMS と IPS（価格付け通貨）**

財価格が国1の通貨で完全に硬直（Gopinath の International Price System）。国1通貨建ての債務の実質収益は常に安全で、国1は事実上完全コミットメントを得る。国2は限定コミットメントのまま $\alpha_2=1$。容量制約 $\underline b_2$ を持つ国2と無制約の国1の Cournot 競争と同型で、国1の発行が国2より（場合によってははるかに）多い。

**内生的参入と自然独占**

事前段階で、潜在的発行国が固定費用 $K$ を払うと評判（切り下げ費用）が $0$ から $\tau$ に上がる。$K$ を払わなければ切り下げ費用は 0 で、債務は危険と期待され準備資産を発行できない。$K$ を払えば $\tau$ を持ち、レントを得る。参入後の発行国あたりレントは参入数と協調問題（均衡選択）に依存し、総レントが小さいと参入が維持できず自然独占になる。参入で協調問題が悪化するとこの傾向が強まる。

| 記号・項目 | 意味 |
|---|---|
| $\varphi_i$ | 国 $i$ の公的資金の社会的費用（財政能力の逆指標） |
| $\epsilon$ | $\varphi_2-\varphi_1$ の上限 |
| $\tau_i,\ \underline b_i$ | 国 $i$ の評判（切り下げ費用）、Safety ゾーンの上限 |
| $K$ | 評判を $0$ から $\tau$ に高める固定費用 |

---

### 1.15 リスク分担と LoLR（Triffin ジレンマの緩和）

**特異的リスクと危険回避度**

RoW の各国は特異的な背景リスク $\zeta_i$ を持つ。消費の分散が閾値を超えると、投資家は分散に限界的に $\bar\gamma$ のペナルティを課し（$\gamma\lt\bar\gamma$）、予備的貯蓄を簡約形で表す。$\zeta_i$ の分散は、全貯蓄を準備資産に回しても分散が閾値を超えるほど大きい一方、特異的リスクがなければ準備資産がなくても閾値を下回る。十分なリスク分担があれば限界的な危険回避度は $\gamma$ に下がり、準備資産需要が減る。

**$b$ と $b^{FC}$ の利潤**（$\underline b\lt b^{FC}\lt\overline b(\gamma)$ が $\gamma$ の両水準で成り立つとする）

$$
\mathcal P\bigl(b^{FC}\bigr)=\bigl(1-\alpha\bigr)b^{FC}\,2\gamma\sigma^2\bigl(w^{\ast}-b^{FC}\bigr)-\alpha\lambda\tau(1-e_L),\qquad
\mathcal P\bigl(\underline b\bigr)=\underline b\,2\gamma\sigma^2\bigl(w^{\ast}-\underline b\bigr)\tag{58}
$$

> $\gamma$ が $\bar\gamma$ から $\gamma$ に下がると、$\mathcal P(b^{FC})$ の低下は $\mathcal P(\underline b)$ の低下より大きい。リスク分担が進むと Safety ゾーンでの発行が相対的に魅力的になり、Triffin ジレンマが緩和される。

| 記号・項目 | 意味 |
|---|---|
| $\zeta_i$ | RoW 各国の特異的背景リスク |
| $\bar\gamma,\ \gamma$ | 分散が閾値超のとき、閾値以下のときの危険回避度（$\gamma\lt\bar\gamma$） |
| $\mathcal P(b)$ | 発行量 $b$ の期待純レント |

---

### 1.16 主要帰結

**主要式**（基本モデル）

$$
\boxed{\begin{aligned}
R^{s}(b)&=\underbrace{\bar R^{r}-2\gamma(w^{\ast}-b)\sigma^2}_{\text{安全債の需要}}\\
b^{FC}&=\underbrace{\tfrac12w^{\ast}}_{\text{完全コミット発行}},\quad \underline b=\underbrace{\tau/R^{r}_H}_{\text{安全債務容量}}\\
V(b)&=\underbrace{(1-\alpha(b))\,b\bigl(\bar R^{r}-R^{s}(b)\bigr)}_{\text{期待移転}}-\underbrace{\alpha(b)\lambda\tau(1-e_L)}_{\text{期待費用}}\\
b^{\mathrm{opt}}&\in\bigl\{\underline b,\ \min\{b^{FC},\overline b\}\bigr\}\quad(b^{FC}\gt\underline b\text{ のとき})
\end{aligned}}\tag{59}
$$

**比較静学・特殊ケース**

| 変化・ケース | 結果 | 符号・式 |
|---|---|---|
| $w^{\ast}$ の増加（準備資産需要↑） | Triffin マージンが発動しやすい | 式(19)：$w^{\ast}/2\gt\tau/R^{r}_H$ |
| $\tau$ の低下（安全債務容量↓） | Safety ゾーンが縮小し、Triffin マージンが発動 | $\underline b=\tau/R^{r}_H$ |
| $\alpha$ の上昇（不利な期待） | Instability ゾーンでの発行が不利になる | $\alpha\gt\alpha^{\ast}_m$ で $b^{\mathrm{opt}}=\underline b$ |
| 完全競争（$n\to\infty$、完全コミット） | レント消滅、RoW は完全保険 | $B_n^{FC}\to w^{\ast}$、$R^{s}\to\bar R^{r}$ |
| $\gamma_L=0$（線形需要） | 過少発行 | $\alpha^{\ast}_m\lt\alpha^{\ast}_{TOT}\lt\alpha^{\ast}_{RoW}$ |
| $\gamma_L$ が十分大（凸需要）、$\tau$ 小 | 過剰発行 | $\alpha^{\ast}_m\gt\alpha^{\ast}_{TOT}\gt\alpha^{\ast}_{RoW}$ |
| ZLB／金本位（需要が完全弾力的） | 発行誘因↑、不況は準備資産不足と $b^{ZLB}$（$b^{G}$）の高さで深まる | 式(29)、式(34) |
| 切り下げで非貿易財産出を刺激 | 切り下げ費用が実質的に低下 | 式(37)：$\tilde\tau\lt\tau$ |
| 参入による franchise value の侵食 | 総発行量が増えない | 式(47)：$\overline b^{\infty}_n=\overline b^{\infty}_1/n$ |
| 財政能力の差 | ネットワーク効果で増幅 | 式(57) |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| Triffin のジレンマ | 準備資産需要 $w^{\ast}$ が安全債務容量 $\tau$ に比べて大きいと、Hegemon は $\underline b$（安全）か $b^{I}$（危険）の選択に直面する（式(18)、(19)） |
| exorbitant privilege | 安全性プレミアムと発行量の積が純粋な独占レント。$\tfrac12\gamma\sigma^2w^{\ast2}$（式(10)） |
| 準備資産の過剰発行 | 需要曲線が凸だと、Hegemon は RoW の限界内余剰の毀損を内部化せず、社会的に過剰発行しうる（式(25)） |
| 金本位制の不況・Keynes の警告 | 金平価が金利を固定し、準備資産の不足が産出の低下になる（式(34)、命題5） |
| ZLB 下の準備資産不足 | 金本位制と同型の構造で、ZLB では $b$ の減少が産出の減少を招く（式(29)、(30)） |
| 1930年代・1970年代の切り下げ | 信認危機（外的要因）と財政・景気（内的要因：$\tilde\tau\lt\tau$）の両方（式(37)） |
| 多極化の利益（Eichengreen） | 完全コミットでは競争が総発行を増やしレントを消す（式(40)） |
| Nurkse の多極化不安定論 | 協調問題が発行国の期待を非対称にし、総発行・厚生が下がりうる（1.10 の配置1・2） |
| 競争による franchise value の侵食 | 参入で個別レントが減り、コミットが弱まり、総発行が増えない（式(47)） |
| 準備通貨建て借入（原罪） | 第三国の発行者が低金利の準備通貨を選ぶ（式(52)） |
| 通貨間の格差の増幅 | 財政能力・ネットワーク効果の差が発行量の差に増幅される（式(57)） |

## 3. 整理している点 {#sec3}

- **危険な外部債務の指標**：切り下げの脆弱性は、純対外債務ではなく Hegemon の対外総債務 $b$（公的・私的の合計）に結びつく。外的問題（Triffin）と財政問題が一つの式で結びつく。
- **同じ構造が為替制度を超えて現れる**：金本位制、変動相場の ZLB、通常の変動相場のいずれでも、Triffin ジレンマと準備資産の不足を同じ枠組みで整理する。
- **量とリスクの二次元**：発行量の選択が、同時に危機リスクの選択になる。過少か過剰かの判定は、需要曲線の形と均衡選択の確率に依存する。

## 4. 対象外の現象 {#sec4}

- 通貨危機のタイミングの予測。危機は自己実現的なサンスポットで選ばれ、確率 $\alpha$ は外生。
- 準備通貨の将来の優位の予測。多極化は不安定にも安定にもなりうる（均衡選択に依存）。
- 1期モデルの切り下げ費用 $\tau$ は外生。無限期間の拡張（1.11）では franchise value として基礎づけられるが、それは特定のトリガー戦略の下での解釈に限る。
- 切り下げが 2 値（$e\in\{1,e_L\}$）の単純化。ヘッジ資産（$e_H\gt1,\ e_L\lt1$）の構成は扱わない。
- 切り下げ以外の財政的負担（インフレ以外の手段）、公的債務の返済構造、満期構造。
- 他の準備資産需要の要因（国防・為替防衛など）。本モデルは危険回避・流動性の代理変数 $\gamma$ に集約している。

---

## 付録：導出手順 {#appendix}

原論文が結果のみを示す式の中間 Step は本記事が補った。補った箇所には「（補）」と付す。

### A.0 構造図

```
前提 A1〜A6、式(1)
   │
   ├─ RoW の需要 ……………………… 式(2) → 式(3)、式(4)      [A.2]
   ├─ Hegemon の問題 ………………… 式(5) → 式(6)                      [A.3]
   │      │
   │      ├─ 完全コミットメント ……… 式(7)〜(11)                        [A.4]
   │      └─ 限定コミットメント
   │             ├─ 切り下げ判断・3ゾーン … 式(12)〜(15)                  [A.5]
   │             ├─ 最適発行・Triffin ……… 式(16)〜(20)               [A.6]
   │             ├─ 無裁定条件 ……………… 式(60)、(61)                   [A.7]
   │             └─ 厚生・過剰発行 ………… 式(21)〜(25)、(62)〜(64) [A.8]
   ├─ 名目硬直性 ZLB ………………… 式(26)〜(31)、(65)       [A.9]
   ├─ 金本位制 ………………………… 式(32)〜(35)                         [A.10]
   ├─ 支出切り替え …………………… 式(36)、(37)                              [A.11]
   ├─ 多極化 …………………………… 式(38)〜(41)、(66)       [A.12]
   ├─ 無限期間・評判 ………………… 式(42)〜(48)                  [A.13]
   ├─ 私的発行・第三国発行 …………… 式(49)〜(52)                  [A.14]
   ├─ 流動性・ネットワーク …………… 式(53)〜(55)                   [A.15]
   └─ 財政能力・リスク分担 …………… 式(56)、(57)、(58)   [A.16]
```

### A.1 使う道具

**T1 平均分散問題の1階条件**

$C=w^{\ast}R^{r}+b(Re-R^{r})$ の期待値は $b$ の1次式、分散は各資産の分散・共分散の2次形式。$b$ で微分して $0$ とおく。

**T2 独占の1階条件（Lerner 公式）**

$\max_b\ b\,P(b)$ の条件は $P(b)+bP'(b)=0$（$P$ は価格、ここではプレミアム $\bar R^{r}-R^{s}(b)$）。

**T3 2次方程式の正の根**

$ab^2+cb-d\le0$（$a,d\gt0$）の上限は $b=\bigl(-c+\sqrt{c^2+4ad}\bigr)/(2a)$。

**T4 閾値則による比較**

2つの選択肢の利得の差が正かどうかで選ぶ。差を共通因子（$1-e_L\gt0$）で割っても向きは変わらない。

**T5 包絡線定理と需要曲線の下の面積**

最適化後の価値関数 $v(p)=\max_x\{px+\Phi(x)\}$ の微分は $v'(p)=x^{\ast}(p)$。積分で価値は需要曲線の下の面積に等しい。

**T6 等比級数**

$\sum_{k\ge1}\delta^k=\delta/(1-\delta)$。$\delta=1/\bar R^{r}$ なら $1/(\bar R^{r}-1)$。

**T7 2状態の完全市場と確率的割引因子**

資産2つ・状態2つなら割引因子 $M$ は一意で、無裁定は $M\gt0$ と同値。

**T8 Cournot 最適反応**

利得 $b_i\bigl(\bar R^{r}-R^{s}\bigr)$ の1階条件から最適反応を得る。対称均衡に代入して $b_i$ を解く。

**T9 1次近似（$\tau\downarrow0$）**

$\underline b,\overline b=O(\tau)$ なので、$O(\tau^2)$ の項は無視して比較する。

---

### A.2 RoW の需要曲線（式(3)、(4)）

**Step 1　制約の代入**

$s^{\ast}=w^{\ast}-b$ を $C_1^{\ast}=s^{\ast}R^{r}+bRe$ に入れる。

$$
C_1^{\ast}=w^{\ast}R^{r}+b\bigl(Re-R^{r}\bigr)
$$

**Step 2　期待値と分散**（道具 T1）

$\bar e=E^{+}[e]$、$\sigma_e$ を $e$ の標準偏差（原論文は $\mathrm{Var}^{+}(e)$ と書くが、以下の使い方は標準偏差）とする。$e$ が変動するとき $e=R^{r}/R^{r}_H$ なので $R^{r}$ と完全に正相関で、$\mathrm{Cov}(R^{r},e)=\sigma\sigma_e$。

$$
E^{+}[C_1^{\ast}]=w^{\ast}\bar R^{r}+b\bigl(R\bar e-\bar R^{r}\bigr),\qquad
\mathrm{Var}^{+}(C_1^{\ast})=(w^{\ast}-b)^2\sigma^2+b^2R^2\sigma_e^2+2(w^{\ast}-b)bR\sigma\sigma_e
$$

**Step 3　$b$ で微分して $0$ とおく**

$$
R\bar e-\bar R^{r}=\gamma\Bigl[2b\bigl(R^2\sigma_e^2+\sigma^2-2R\sigma\sigma_e\bigr)+2w^{\ast}R\sigma\sigma_e-2w^{\ast}\sigma^2\Bigr]
$$

**Step 4　安全な場合**（$\bar e=1,\ \sigma_e=0$）→ 式(3)

$$
R^{s}(b)=\bar R^{r}+\gamma\bigl(2b\sigma^2-2w^{\ast}\sigma^2\bigr)=\bar R^{r}-2\gamma(w^{\ast}-b)\sigma^2
$$

**Step 5　危険な場合**（$\bar e=\bar R^{r}/R^{r}_H,\ \sigma_e=\sigma/R^{r}_H$）→ 式(4)

$x=R/R^{r}_H-1$ とおくと、Step 3 は $\bar R^{r}x=\gamma\sigma^2\bigl[2bx^2+2w^{\ast}x\bigr]$。解は2つ。

$$
x=0\ \ (R=R^{r}_H),\qquad x=\frac{\bar R^{r}/(2\gamma\sigma^2)-w^{\ast}}{b}\ \ \Bigl(R=R^{r}_H\bigl[1+x\bigr]\Bigr)
$$

> 第2根は $R$ が高いほど需要が減る後ろ曲がりの需要を与えるので除外する。第1根が $R=R^{r}_H$（危険資産の完全代替で需要は不定）。

**確認**

$\sigma\to0$ なら、安全債のプレミアム $2\gamma(w^{\ast}-b)\sigma^2\to0$ で $R^{s}\to\bar R^{r}$（リスクがなければ裁定で収益が等しくなる）。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(2)、平均分散選好 |
| 使う道具 | T1 |
| 結果 | 式(3)、式(4) |

---

### A.3 Hegemon の簡約形（式(6)）

**Step 1　制約の代入**

$C_0=w-s+b$、$C_1=sR^{r}-bRe$ を目的関数に入れる。

$$
E^{-}\bigl[C_0+\delta\bigl(C_1-\tau(1-e)\bigr)\bigr]=w-s+b+\delta\Bigl(s\bar R^{r}-bE^{-}[Re]-E^{-}[\tau(1-e)]\Bigr)
$$

**Step 2　$\delta=1/\bar R^{r}$ の適用**

$-s+\delta s\bar R^{r}=0$ なので、$s$ は目的関数から消える（危険資産への投資と $t=0$ の消費が無差別）。

$$
=w+\delta\Bigl[\bigl(\bar R^{r}\,b-bE^{-}[Re]\bigr)-E^{-}[\tau(1-e)]\Bigr]
$$

（$b=\delta\bar R^{r}b$ を使った。）

**Step 3　定数と正の因子を落とす**

$w$ は定数、$\delta\gt0$ は最大化点を変えない。→ 式(6)。

**確認**

完全コミットメント（$e=1$、$R=R^{s}(b)$）では、式(6)は $b(\bar R^{r}-R^{s}(b))$ となり、式(7)と一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(5)、$\delta=1/\bar R^{r}$ |
| 使う道具 | 制約の代入 |
| 結果 | 式(6) |

---

### A.4 完全コミットメント均衡（式(7)〜(11)）

**Step 1　目的関数**

$e=1$ で債務は安全、$R=R^{s}(b)$。式(6)は式(7)の $V^{FC}(b)=b(\bar R^{r}-R^{s}(b))$ になる。

**Step 2　1階条件**（道具 T2）→ 式(8)

$$
\frac{d}{db}\Bigl[b\bigl(\bar R^{r}-R^{s}(b)\bigr)\Bigr]=\bar R^{r}-R^{s}(b)-bR^{s\prime}(b)=0
$$

**Step 3　傾きの代入**

式(3)から $R^{s\prime}(b)=2\gamma\sigma^2$。式(8)に入れて $2\gamma\sigma^2$ で割る。→ 式(9)

$$
b=\frac{1}{2\gamma}\cdot\frac{\bar R^{r}-R^{s}(b)}{\sigma^2}
$$

**Step 4　$b$ を解く**

$\bar R^{r}-R^{s}(b)=2\gamma(w^{\ast}-b)\sigma^2$ を Step 3 に代入すると $b=w^{\ast}-b$。

$$
b^{FC}=\tfrac12w^{\ast}
$$

（2階条件：$V^{FC\prime\prime}=-4\gamma\sigma^2\lt0$）

**Step 5　金利とレント**

$$
R^{s}(b^{FC})=\bar R^{r}-2\gamma\cdot\tfrac12w^{\ast}\sigma^2=\bar R^{r}-\gamma\sigma^2w^{\ast},\qquad
b^{FC}\bigl(\bar R^{r}-R^{s}(b^{FC})\bigr)=\tfrac12w^{\ast}\cdot\gamma\sigma^2w^{\ast}=\tfrac12\gamma\sigma^2w^{\ast2}
$$

→ 式(10)

**Step 6　完全競争**

Hegemon が金利を所与とすると、危険中立なので期待収益が等しくなる：$\bar R^{r}-R^{s}(b)=0$。式(3)から $2\gamma(w^{\ast}-b)\sigma^2=0$、すなわち $b=w^{\ast}$。→ 式(11)

**確認**

$n=1$ の多極化均衡（式(40)）は $b^{FC}=w^{\ast}/2$ で、本節と一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(3)、式(7) |
| 使う道具 | T2 |
| 結果 | 式(9)、式(10)、式(11) |

---

### A.5 切り下げ判断と3ゾーン（式(12)〜(15)）

**Step 1　2つの選択肢の利得**（道具 T4）

災害状態で、切り下げる（$e=e_L$）と切り下げない（$e=1$）の利得：

$$
sR^{r}_L-bRe_L-\tau(1-e_L)\quad\text{と}\quad sR^{r}_L-bR
$$

**Step 2　差を取る**

切り下げの利得が大きいための条件：$bR-bRe_L\gt\tau(1-e_L)$、すなわち $bR(1-e_L)\gt\tau(1-e_L)$。$1-e_L\gt0$ で割る（不等号の向きは不変）。→ 式(13)

$$
bR\gt\tau
$$

**Step 3　崩壊均衡の存在条件**

崩壊均衡では $R=R^{r}_H$。自己整合的に切り下げが選ばれる条件は $bR^{r}_H\gt\tau$、すなわち $b\gt\tau/R^{r}_H$。→ 式(14)

**Step 4　安全均衡の存在条件**

安全均衡では $R=R^{s}(b)$。切り下げない条件は $bR^{s}(b)\le\tau$。式(3)を入れる。

$$
b\bigl(\bar R^{r}-2\gamma(w^{\ast}-b)\sigma^2\bigr)\le\tau\ \Longleftrightarrow\ 2\gamma\sigma^2b^2+\bigl(\bar R^{r}-2\gamma\sigma^2w^{\ast}\bigr)b-\tau\le0
$$

**Step 5　2次不等式の上限**（道具 T3）

$a=2\gamma\sigma^2\gt0$、$c=\bar R^{r}-2\gamma\sigma^2w^{\ast}$、$d=\tau\gt0$。正の根：

$$
\overline b=\frac{-\bar R^{r}+2w^{\ast}\gamma\sigma^2+\sqrt{\bigl(\bar R^{r}-2w^{\ast}\gamma\sigma^2\bigr)^2+8\gamma\sigma^2\tau}}{4\gamma\sigma^2}
$$

→ 式(15)

**Step 6　順序の確認**（補）

$b\le\overline b$ で $R^{s}(b)\lt\bar R^{r}\lt R^{r}_H$ なので、$b=\underline b$ では $\underline bR^{s}(\underline b)\lt\underline bR^{r}_H=\tau$。よって $\underline b$ は Step 4 の不等式を満たし、$\underline b\le\overline b$。また $b=w^{\ast}$ で $R^{s}=\bar R^{r}$、$w^{\ast}\bar R^{r}\ge\tau$（式(1)第2式）なので $\overline b\le w^{\ast}$。

**Step 7　ゾーンの組み立て**

Safety ゾーン（$b\le\underline b$）は安全均衡のみ、Instability（$\underline b\lt b\le\overline b$）は両方、Collapse（$b\gt\overline b$）は崩壊均衡のみ。→ 補題2の表。

**確認**

$\tau\to0$ で $\overline b\to0$、$\underline b\to0$（全ゾーンが縮む）。$\tau=\bar R^{r}w^{\ast}$ で $\overline b=w^{\ast}$（（補）$b=w^{\ast}$ が2次式の根）。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(12)、式(3)、式(1) |
| 使う道具 | T3、T4 |
| 結果 | 式(13)、式(14)、式(15) |

---

### A.6 Hegemon の最適発行（式(16)〜(20)）

**Step 1　価値関数**

均衡選択 $\alpha(b)$（式(16)）の下で、式(6)は $V(b)=(1-\alpha(b))V^{FC}(b)-\alpha(b)\lambda\tau(1-e_L)$。崩壊均衡では $R=R^{r}_H$ で $E^{r}[Re]=\bar R^{r}$ なので移転は 0、費用は災害（確率 $\lambda$）でのみ。→ 式(17)

**Step 2　Collapse ゾーンは選ばない**

$V(0)=0$ だが、$b\in(\overline b,w^{\ast}]$ では $V(b)=-\lambda\tau(1-e_L)\lt0$。

**Step 3　$b^{FC}\le\underline b$ の場合**

Safety ゾーンで $V=V^{FC}$、$V^{FC}\ge V$ なので $b^{FC}$ が全体の最大。→ 式(18)第1行

**Step 4　$b^{FC}\gt\underline b$ の場合**

(i) Safety ゾーンでは $V=V^{FC}$ は狭義凹で最大点 $b^{FC}$ が $\underline b$ より右にあるので、$[0,\underline b]$ 内の局所最大は $\underline b$。

(ii) Instability ゾーンでは $\tilde V(b)=(1-\alpha)V^{FC}(b)-\alpha\lambda\tau(1-e_L)=aV^{FC}(b)+c$（$a=1-\alpha\gt0$、$c\lt0$）。$\tilde V$ は狭義凹で最大点は $V^{FC}$ と同じ。よって局所最大は $b^{I}=\min\{b^{FC},\overline b\}$。

(iii) 両者のうち価値の大きい方を選ぶ。→ 式(18)第2行

**Step 5　Triffin 条件**

$b^{FC}\gt\underline b$ に式(10)、式(14)を入れて $w^{\ast}/2\gt\tau/R^{r}_H$。→ 式(19)

**Step 6　切り替え確率の存在と一意性**

$V(\underline b)=V^{FC}(\underline b)$ は $\alpha$ に依存しない。$V(b^{I})=(1-\alpha)V^{FC}(b^{I})-\alpha\lambda\tau(1-e_L)$ は $\alpha$ について連続・単調減少。$\alpha=0$ では $V^{FC}(b^{I})\gt V^{FC}(\underline b)$（$\underline b\lt b^{I}\le b^{FC}$ で $V^{FC}$ は増加）、$\alpha=1$ では $-\lambda\tau(1-e_L)\lt0\lt V(\underline b)$。よって交点が $(0,1)$ に1つ。→ 式(20)

**Step 7　exorbitant privilege の正値性**

$E^{-}[Re]=(1-\alpha(b))R^{s}(b)+\alpha(b)\bar R^{r}$。最適な $b\lt w^{\ast}$ で $R^{s}(b)\lt\bar R^{r}$、かつ $\alpha(b)\lt1$ なので $E^{-}[Re]\lt\bar R^{r}$。したがって式(6)の第1項は正の移転で、純期待レントは正（命題2末尾）。

**確認**

$\tau\to\infty$（完全コミットメント）では $\underline b\to\infty$ で $b^{FC}\le\underline b$ となり、式(18)は $b^{FC}$ を与え、式(10)に一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(16)、式(7)、式(14)、式(15) |
| 使う道具 | T4、$V^{FC}$ の狭義凹性 |
| 結果 | 式(17)、式(18)、式(19)、式(20) |

---

### A.7 無裁定条件（命題A.2、A.3）

**Step 1　割引因子の一意性**（道具 T7）

2状態、資産は安全債と危険資産の2つで市場は完全。割引因子 $M=(M_H,M_L)$ は一意。完全コミットメントの金利を $R^{s}=R^{s}(b^{FC})$ として

$$
E[M]R^{s}=1,\qquad E[MR^{r}]=1
$$

**Step 2　解く**

$a=(1-\lambda)M_H$、$c=\lambda M_L$ とおくと、$a+c=1/R^{s}$、$aR^{r}_H+cR^{r}_L=1$。

$$
M_H=\frac{1}{1-\lambda}\cdot\frac{R^{s}-R^{r}_L}{R^{s}\bigl(R^{r}_H-R^{r}_L\bigr)},\qquad
M_L=\frac{1}{\lambda}\cdot\frac{R^{r}_H-R^{s}}{R^{s}\bigl(R^{r}_H-R^{r}_L\bigr)}
$$

**Step 3　$M\gt0$ の条件**

$M_L\gt0\Leftrightarrow R^{s}\lt R^{r}_H$（常に成立：$\bar R^{r}\lt R^{r}_H$）。$M_H\gt0\Leftrightarrow R^{s}\gt R^{r}_L$。$\bar R^{r}-R^{r}_L=(1-\lambda)(R^{r}_H-R^{r}_L)$ と $R^{s}(b^{FC})=\bar R^{r}-\gamma\sigma^2w^{\ast}$ から：

$$
R^{r}_H\gt R^{s}(b^{FC})\gt R^{r}_L\ \Longleftrightarrow\ \gamma w^{\ast}\sigma^2\lt\bigl(R^{r}_H-R^{r}_L\bigr)(1-\lambda)\tag{60}
$$

**Step 4　限定コミットメント**（命題A.3）

安全債の均衡発行量を $b^{\mathrm{opt}}$ として同様に、

$$
2\gamma\sigma^2\bigl(w^{\ast}-b^{\mathrm{opt}}\bigr)\lt\bigl(R^{r}_H-R^{r}_L\bigr)(1-\lambda)\tag{61}
$$

> $b^{\mathrm{opt}}=b^{FC}$ なら式(60)と同じ。$b^{\mathrm{opt}}=\underline b$ なら式(60)より緩く、$b^{\mathrm{opt}}=\overline b$ なら厳しい。十分条件は $\bar R^{r}-2\gamma w^{\ast}\sigma^2\gt1$。

**確認**

式(1)第1式（$\bar R^{r}-2\gamma w^{\ast}\sigma^2\gt0$）だけでは式(60)を保証しない。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(10)、式(3) |
| 使う道具 | T7 |
| 結果 | 式(60)、式(61) |

---

### A.8 厚生と過剰発行（式(21)〜(25)）

**Step 1　流動性項を含む RoW の問題と需要**（折れ線需要）

式(22)の効用で、安全債の期待の下、$s^{\ast}=w^{\ast}-b$ として

$$
\Phi(s^{\ast})=s^{\ast}\bar R^{r}-\gamma\sigma^2s^{\ast2}-\gamma_L\bigl(\underline b-w^{\ast}+s^{\ast}\bigr)^2\mathbf 1_{\{w^{\ast}-s^{\ast}\le\underline b\}},\qquad \max\ bR^{s}+\Phi(s^{\ast})\ \ \text{s.t. }s^{\ast}+b=w^{\ast}
$$

最適条件は $R^{s}=\Phi'(s^{\ast})$。$\Phi'(s^{\ast})$ を計算して $s^{\ast}=w^{\ast}-b$ に戻すと、

$$
R^{s}=\bar R^{r}-2\gamma\sigma^2(w^{\ast}-b)-2\gamma_L(\underline b-b)\mathbf 1_{\{b\le\underline b\}}
$$

→ 式(21)。逆関数は

$$
b(R^{s})=\frac{R^{s}-\bar R^{r}+2\gamma\sigma^2w^{\ast}+2\gamma_L\underline b\,\mathbf 1_{\{b\le\underline b\}}}{2\gamma\sigma^2+2\gamma_L\mathbf 1_{\{b\le\underline b\}}}\tag{62}
$$

> 原論文の分母は $2\gamma_L\underline b\,\mathbf 1$ と読めるが、$R^{s}-\bar R^{r}+2\gamma\sigma^2w^{\ast}+2\gamma_L\underline b=(2\gamma\sigma^2+2\gamma_L)b$ から分母は $2\gamma\sigma^2+2\gamma_L\mathbf 1$ とした（後続の $\tau\downarrow0$ 展開とも整合）。

**Step 2　RoW の価値と需要曲線の下の面積**（補題A.1、道具 T5）

安全債のとき $v^{s}(R^{s})=bR^{s}+\Phi(w^{\ast}-b)$（$b=b(R^{s})$）。

$$
v^{s\prime}(R^{s})=b+b'R^{s}-\Phi'(w^{\ast}-b)\,b'=b(R^{s})\qquad(\because R^{s}=\Phi'(w^{\ast}-b))
$$

$R^{s}(0)=\bar R^{r}-2\gamma\sigma^2w^{\ast}-2\gamma_L\underline b$（$b=0$）で積分。$b=0$ のとき $v^{s}(R^{s}(0))=w^{\ast}\bar R^{r}-\gamma\sigma^2w^{\ast2}-\gamma_L\underline b^2$。

**Step 3　危険債と事前の期待効用**

危険債（$R=R^{r}_H$）のときも同じ値 $V_{RoW}(0)=w^{\ast}\bar R^{r}-\gamma\sigma^2w^{\ast2}-\gamma_L\underline b^2$。サンスポット実現前の期待効用は $(1-\alpha(b))v^{s}+\alpha(b)V_{RoW}(0)$。→ 式(23)

**Step 4　線形需要（$\gamma_L=0$）での面積**

$b(R^{s})=(R^{s}-R^{s}(0))/(2\gamma\sigma^2)$ なので $\int_{R^{s}(0)}^{R^{s}(b)}b\,d\tilde R=(R^{s}(b)-R^{s}(0))^2/(4\gamma\sigma^2)=\gamma\sigma^2b^2$。

$$
V_{RoW}(b)=V_{RoW}(0)+(1-\alpha)\gamma\sigma^2b^2
$$

**Step 5　RoW の切り替え確率**（線形）

$\underline b$（$\alpha=0$）と $b^{I}$ の期待効用を等しくする。→ 式(24)第1式

$$
\bigl(1-\alpha^{\ast}_{RoW}\bigr)\bigl(b^{I}\bigr)^2=\underline b^2\ \ \Longrightarrow\ \ 1-\alpha^{\ast}_{RoW}=\Bigl(\frac{\underline b}{b^{I}}\Bigr)^2
$$

**Step 6　Hegemon の切り替え確率**（線形）

式(20)に $V^{FC}(b)=2\gamma\sigma^2(w^{\ast}-b)b$ を入れ、$b^{I}$ で割る。

$$
1-\alpha^{\ast}_m=\frac{w^{\ast}-\underline b}{w^{\ast}-b^{I}}\cdot\frac{\underline b}{b^{I}}+\frac{\alpha^{\ast}_m\lambda\tau(1-e_L)}{2\gamma\sigma^2b^{I}(w^{\ast}-b^{I})}\ \gt\ \frac{\underline b}{b^{I}}\ \gt\ \Bigl(\frac{\underline b}{b^{I}}\Bigr)^2=1-\alpha^{\ast}_{RoW}
$$

（$\underline b\lt b^{I}\lt w^{\ast}$ なので第1項の係数 $(w^{\ast}-\underline b)/(w^{\ast}-b^{I})\gt1$、第2項は正）。よって $\alpha^{\ast}_m\lt\alpha^{\ast}_{RoW}$。

**Step 7　社会厚生の切り替え確率**

$\alpha$ について、差 $V(b^{I})-V(\underline b)$ と $V_{RoW}(b^{I})-V_{RoW}(\underline b)$ はどちらも $\alpha$ の線形減少関数。和の根は、それぞれの根 $\alpha^{\ast}_m$、$\alpha^{\ast}_{RoW}$ の、傾きを重みとする（正の重みの）凸結合。したがって $\alpha^{\ast}_m\lt\alpha^{\ast}_{TOT}\lt\alpha^{\ast}_{RoW}$。→ 式(25)第1行

**Step 8　凸需要での条件**（$b^{FC}\gt\underline b$ のうち、Safety ゾーン内部に発行しないための上限）

Safety ゾーンで $V(b)=b\bigl[2\gamma\sigma^2(w^{\ast}-b)+2\gamma_L(\underline b-b)\bigr]$、$V'(b)=2\gamma\sigma^2(w^{\ast}-2b)+2\gamma_L(\underline b-2b)$、$V''=-4\gamma\sigma^2-4\gamma_L\lt0$。$V'(0)\gt0$ なので $V'(\underline b)\gt0$ なら $[0,\underline b]$ で単調増加。

$$
V'(\underline b)=2\gamma\sigma^2(w^{\ast}-2\underline b)-2\gamma_L\underline b\gt0\ \Longleftrightarrow\ \gamma_L\lt\gamma\sigma^2\Bigl(\frac{w^{\ast}}{\underline b}-2\Bigr)
$$

右辺を $\bar\gamma_L(\tau)=\gamma\sigma^2\bigl(w^{\ast}R^{r}_H/\tau-2\bigr)$ とおく。

**Step 9　$\tau\downarrow0$ の1次近似**（道具 T9）

$\gamma_L=\bar\gamma_L(\tau)$（$\eta_0=1$）で、$\underline b=\tau/R^{r}_H$、$\overline b=\tau/(\bar R^{r}-2w^{\ast}\gamma\sigma^2)+O(\tau^2)$、$b^{I}=\overline b$。Hegemon の価値：

$$
V(\underline b)=\frac{2\gamma\sigma^2w^{\ast}}{R^{r}_H}\tau+O(\tau^2),\qquad V(\overline b)=(1-\alpha)\frac{2\gamma\sigma^2w^{\ast}}{\bar R^{r}-2w^{\ast}\gamma\sigma^2}\tau-\alpha\lambda(1-e_L)\tau+O(\tau^2)
$$

等置して $\alpha$ を解く（$\tau$ の1次の係数で）。

$$
\lim_{\tau\downarrow0}\alpha^{\ast}_m=\frac{\dfrac{2\gamma\sigma^2w^{\ast}}{\bar R^{r}-2w^{\ast}\gamma\sigma^2}-\dfrac{2\gamma\sigma^2w^{\ast}}{R^{r}_H}}{\dfrac{2\gamma\sigma^2w^{\ast}}{\bar R^{r}-2w^{\ast}\gamma\sigma^2}+\lambda(1-e_L)}\in(0,1)\tag{63}
$$

> $\bar R^{r}-2w^{\ast}\gamma\sigma^2\lt R^{r}_H$ なので分子は正。

**Step 10　RoW の切り替え確率の極限**

$\gamma_L=\bar\gamma_L(\tau)$ では $2\gamma\sigma^2+2\bar\gamma_L=2\gamma\sigma^2w^{\ast}R^{r}_H/\tau$。$b$ は $R^{s}(0)$ で 0、$\underline b$ で $\underline b$ に達する線形（傾きの逆数が上記）なので、面積は

$$
V_{RoW}(\underline b)-V_{RoW}(0)=\tfrac12\underline b\bigl(R^{s}(\underline b)-R^{s}(0)\bigr)=\frac{\gamma\sigma^2w^{\ast}}{R^{r}_H}\tau
$$

$(\underline b,\overline b]$ の面積は幅 $O(\tau)$、高さ $O(\tau)$ で $O(\tau^2)$。よって $V_{RoW}(\overline b,\alpha)-V_{RoW}(\underline b)=-\alpha\dfrac{\gamma\sigma^2w^{\ast}}{R^{r}_H}\tau+O(\tau^2)$ で、

$$
\alpha^{\ast}_{RoW}(\tau)=O(\tau),\qquad \lim_{\tau\downarrow0}\alpha^{\ast}_{RoW}=0\tag{64}
$$

**Step 11　結論**

式(63)と式(64)より $\alpha^{\ast}_{RoW}\lt\alpha^{\ast}_m$。Step 7 と同様に $\alpha^{\ast}_{TOT}$ はその間。→ 式(25)第2行（$\eta_0\lt1$ への一般化は原論文が「同様」としている）

**確認**

$\gamma_L=0$ では Step 4–7 が式(25)第1行を与える。$\gamma_L\to\bar\gamma_L(\tau)$ で、Step 8 の不等式が等号になり、Safety ゾーン端で $V'(\underline b)=0$。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(21)、式(17)、式(20) |
| 使う道具 | T5、T9、2次式の比較 |
| 結果 | 式(62)、式(23)、式(24)、式(25)、式(63)、式(64) |

---

### A.9 ZLB（式(26)〜(31)）

**Step 1　需要曲線**

$w^{\ast}=w^{\ast e}+w^{\ast\ell}$ を式(3)に代入。→ 式(26)

**Step 2　ZLB 閾値**

完全雇用（$\ell=\bar L$、$w^{\ast\ell}=\bar L$）での安全金利が 1 を下回る条件：$R^{s}(b;\bar L)\lt1$。

$$
\bar R^{r}-2\gamma\sigma^2\bigl(w^{\ast e}+\bar L-b\bigr)\lt1\ \Longleftrightarrow\ b\lt\frac{1-\bar R^{r}+2\gamma\sigma^2(w^{\ast e}+\bar L)}{2\gamma\sigma^2}=b^{ZLB}
$$

→ 式(28)。$b^{ZLB}\gt0\Leftrightarrow R^{s}(0;\bar L)\lt1$。

**Step 3　ZLB が効くときの産出**

$R^{s}(b;\ell)=1$（名目金利が 1 で下げられない）。式(26)から

$$
\bar R^{r}-2\gamma\sigma^2\bigl(w^{\ast e}+\ell-b\bigr)=1\ \Longrightarrow\ \ell=b+\frac{\bar R^{r}-1}{2\gamma\sigma^2}-w^{\ast e}
$$

→ 式(29)の解。（補）Step 2 の $b^{ZLB}$ と比べると

$$
\ell-\bar L=b-b^{ZLB}\tag{65}
$$

> $b\lt b^{ZLB}$ なら $\ell\lt\bar L$（不況）。危険債（$b=0$）なら $\ell-\bar L=-b^{ZLB}$。金本位制でも同様に $\ell-\bar L=b-b^{G}$（A.10）。

**Step 4　財市場での表現**

$R^{s}(b;\ell)=\tilde R^{\ast}$ を $w^{\ast e}+\ell$ について解く。

$$
w^{\ast e}+\ell=b+\frac{\bar R^{r}-\tilde R^{\ast}}{2\gamma\sigma^2}
$$

左辺が $AS(\ell)$、右辺が $AD(\ell)$（$b$：Hegemon 側の需要、第2項：RoW の危険資産投資 $s^{\ast}=(\bar R^{r}-\tilde R^{\ast})/(2\gamma\sigma^2)$）。→ 式(30)

**Step 5　Instability ゾーンの上限**

ZLB では $R=1$ なので切り下げない条件は $b\cdot1\le\tau$、つまり $b\le\tau$。ZLB でない領域では式(15)（$w^{\ast}=w^{\ast e}+\bar L$）。ZLB でない領域の $\overline b$ では $\tau=\overline bR^{s}(\overline b)\ge\overline b$（$R^{s}\ge1$）なので $\overline b\le\tau$。ZLB 内では $R^{s}(b;\bar L)\lt1$ で $\overline b\gt\tau$。よって

$$
\overline b^{ZLB}=\min\{\overline b,\tau\}
$$

→ 式(31)

**確認**

$b=b^{ZLB}$ で式(65)は $\ell=\bar L$ となり、完全雇用（ZLB が効かない領域との境界）と連続的につながる。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(3)、式(27) |
| 使う道具 | 1次方程式を解く、T3 |
| 結果 | 式(26)、式(28)、式(29)、式(65)、式(30)、式(31) |

---

### A.10 金本位制（式(32)〜(35)）

**Step 1　金の価格**

金は $t=1$ に $D$ を確実に払い、安全なので $\tilde R^{\ast}$ で割り引く。価格水準が 1 なので $p^{G}=D/\tilde R^{\ast}$。→ 式(32)

**Step 2　金平価と金利**

$p^{G}=\bar p^{G}$ を固定すると $\tilde R^{\ast}=D/\bar p^{G}=\bar R^{G}$。→ 式(33)

**Step 3　産出**

債務が安全なら無裁定で $R^{s}(b;\ell)=\bar R^{G}$、危険なら安全債が 0 なので $R^{s}(0;\ell)=\bar R^{G}$。→ 式(34)。式(26)から

$$
\ell=b+\frac{\bar R^{r}-\bar R^{G}}{2\gamma\sigma^2}-w^{\ast e}
$$

**Step 4　完全雇用閾値**

$\ell=\bar L$ とおいて $b$ を解く（（補）$\bar w^{\ast}=1$ のとき労働所得は $\ell$）。

$$
b^{G}=\frac{\bar R^{G}-\bar R^{r}+2\gamma\sigma^2\bigl(w^{\ast e}+\bar w^{\ast}\bar L\bigr)}{2\gamma\sigma^2}
$$

> Step 3 と合わせて $\ell-\bar L=b-b^{G}$。$b\lt b^{G}$ なら不況、$b\gt b^{G}$ なら好況。危険債（$b=0$）なら $b^{G}\gt0$ より不況（命題5の3行目）。

**Step 5　上限**

切り下げない条件 $bR\le\tau$ に $R=\bar R^{G}$ を入れて $b\le\tau/\bar R^{G}$。完全雇用との小さい方：

$$
\overline b^{G}=\min\Bigl\{b^{G},\ \frac{\tau}{\bar R^{G}}\Bigr\}
$$

→ 式(35)

**Step 6　金に対する一斉切り下げ**

$\bar p^{G\prime}\gt\bar p^{G}$ なら $\bar R^{G\prime}=D/\bar p^{G\prime}\lt\bar R^{G}$、よって $b^{G\prime}\lt b^{G}$。同じ $b$ で $\ell-\bar L=b-b^{G\prime}$ が大きくなり、景気が刺激される。

**確認**

$\bar R^{G}=1$ とおくと $b^{G}=b^{ZLB}$ となり、金本位制は ZLB の特殊ケースと一致する（金利を 1 に固定する点で同じ）。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(26)、金平価 |
| 使う道具 | 1次方程式、T4 |
| 結果 | 式(32)、式(33)、式(34)、式(35) |

---

### A.11 支出切り替え（式(36)、(37)）

**Step 1　非貿易財の最適条件**

効用 $C_t+\nu_t(C_{NT,t})$ で、非貿易財の（RoW 通貨建て）価格は $\bar wE_t$。限界効用と価格の一致：$\nu_t'(C_{NT,t})=\bar wE_t$。逆関数で $C_{NT,t}(E)=\nu_t'^{-1}(E\bar w)$。$\nu_t$ が狭義凹なので $\nu_t'$ は減少、$C_{NT,t}(E)$ は $E$ の減少関数。→ 式(36)

**Step 2　災害後の事後問題の利得**

切り下げる場合の利得に、産出刺激の便益を加える。切り下げの利得が大きい条件：

$$
bR(1-e_L)-\tau(1-e_L)+\bigl[\nu_1\bigl(C_{NT,1}(e_L)\bigr)-\nu_1\bigl(C_{NT,1}(1)\bigr)\bigr]\gt0
$$

**Step 3　$1-e_L$ で割る**

$$
bR\gt\tau-\frac{\nu_1\bigl(C_{NT,1}(e_L)\bigr)-\nu_1\bigl(C_{NT,1}(1)\bigr)}{1-e_L}=\tilde\tau
$$

$C_{NT,1}(e_L)\gt C_{NT,1}(1)$ で $\nu_1$ は増加なので、分数は正、$\tilde\tau\lt\tau$。→ 式(37)。式(13)の $\tau$ が $\tilde\tau$ に置き換わった形なので、モデルは基本モデルと同型。

**確認**

賃金が伸縮的なら産出は常に $\bar L$ で、$C_{NT,1}(e_L)=C_{NT,1}(1)=\bar L$、分数は 0 で $\tilde\tau=\tau$。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(13)、非貿易財の効用 |
| 使う道具 | T4 |
| 結果 | 式(36)、式(37) |

---

### A.12 多極化（式(38)〜(41)）

**Step 1　需要曲線と傾き**

国 $i$ の債務は他国の安全債と完全代替なので、価格は総発行 $b_i+b_{-i}$ に依存。式(3)の $b$ を $b_i+b_{-i}$ に置き換える。→ 式(38)。$\partial R^{s}/\partial b_i=2\gamma\sigma^2$。

**Step 2　最適反応**（道具 T8）

国 $i$ の利得 $b_i\bigl(\bar R^{r}-R^{s}\bigr)=2\gamma\sigma^2b_i(w^{\ast}-b_i-b_{-i})$ を $b_i$ で微分して 0：

$$
w^{\ast}-2b_i-b_{-i}=0\ \Longrightarrow\ b_i=\tfrac12\bigl(w^{\ast}-b_{-i}\bigr)
$$

→ 式(39)

**Step 3　対称均衡**

$b_{-i}=(n-1)b_i$ を入れる：$2b_i+(n-1)b_i=w^{\ast}$、$b_i=w^{\ast}/(n+1)$。総量 $B=nb_i$、金利は $w^{\ast}-B=w^{\ast}/(n+1)$ から

$$
R^{s}\bigl(B_n^{FC}\bigr)=\bar R^{r}-2\gamma\sigma^2\frac{w^{\ast}}{n+1}
$$

→ 式(40)。（均衡の一意性：式(39)の最適反応は傾き $-1/2$ の線形で、$n$ 国の連立は一意解。）

**Step 4　発行国あたりレント**（補）

$$
b_i^{FC}\bigl(\bar R^{r}-R^{s}(B_n^{FC})\bigr)=\frac{w^{\ast}}{n+1}\cdot\frac{2\gamma\sigma^2w^{\ast}}{n+1}=\frac{2\gamma\sigma^2w^{\ast2}}{(n+1)^2}\tag{66}
$$

> $n=1$ で $\tfrac12\gamma\sigma^2w^{\ast2}$（式(10)）、$n\to\infty$ で 0（レント消滅）。

**Step 5　限定コミットメント**

Safety ゾーン $[0,\underline b]$ は式(14)で金利に依存せず、競争で不変。Step 3 の $b_i^{FC}$ がこのゾーンに入る条件：

$$
\frac{w^{\ast}}{n+1}\le\frac{\tau}{R^{r}_H}
$$

→ 式(41)。成立するとき、各国が $b_i^{FC}$ を選び（$V\le V^{FC}$ なので逸脱の利益はない）、均衡は完全コミットメントと一致する。

**Step 6　Nurkse 配置2・ケース(a)の厚生**

（ケース(a)）両国が $\overline b$ を発行し、各国債は確率 0.5 で安全。有効な安全資産の総量 $2\times0.5\,\overline b=\overline b$ は真の Hegemon が確実に安全に発行する量と同じ。さらに災害時にどちらか一方が必ず切り下げるので、費用は発生し厚生は下がる（原論文の議論）。

**確認**

$n=1$ で式(40)は $b=w^{\ast}/2$、$R^{s}=\bar R^{r}-\gamma\sigma^2w^{\ast}$ となり、式(10)に一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(3)、式(14) |
| 使う道具 | T2、T8 |
| 結果 | 式(38)、式(39)、式(40)、式(66)、式(41) |

---

### A.13 無限期間・評判（式(42)〜(48)）

**Step 1　franchise value**（道具 T6）

毎期の安全な期待レントは $b(1-\alpha(b))\bigl(\bar R^{r}-R^{s}(b)\bigr)$。割引して合計：

$$
V^{\infty}(b)=\sum_{k\ge1}\delta^{k}\,b(1-\alpha)\bigl(\bar R^{r}-R^{s}\bigr)=b(1-\alpha)\bigl(\bar R^{r}-R^{s}\bigr)\cdot\frac{1}{\bar R^{r}-1}
$$

→ 式(42)

**Step 2　切り下げしない条件**

切り下げの長期費用は確率 $\eta$ で $V^{\infty}$ を失うので $\eta V^{\infty}(b)$。短期便益は $bR^{s}(b)(1-e_L)$。長期費用 ≥ 短期便益。→ 式(43)

**Step 3　$b$ を消して整理**

$b\gt0$ で割り、$P=\bar R^{r}-R^{s}=2\gamma\sigma^2(w^{\ast}-b)$、$R^{s}=\bar R^{r}-P$ を入れる。

$$
\frac{\eta(1-\alpha)P}{\bar R^{r}-1}\ge\bigl(\bar R^{r}-P\bigr)(1-e_L)\ \Longleftrightarrow\ P\Bigl[\frac{\eta(1-\alpha)}{\bar R^{r}-1}+(1-e_L)\Bigr]\ge\bar R^{r}(1-e_L)
$$

**Step 4　$b$ について解く**

両辺に $(\bar R^{r}-1)/(1-e_L)$ を掛け（正）、$P=2\gamma\sigma^2(w^{\ast}-b)$ を使う。

$$
2\gamma\sigma^2(w^{\ast}-b)\Bigl[\frac{\eta(1-\alpha)}{1-e_L}+\bar R^{r}-1\Bigr]\ge\bar R^{r}\bigl(\bar R^{r}-1\bigr)
$$

$b$ の上限として式(44)を得る。

**Step 5　$\alpha$ への依存**

$\alpha$ が大きいと括弧内が小さくなり、右辺の項が大きくなるので $\overline b^{\infty}_{\alpha}$ は減少。$\alpha=1$ のとき括弧内は $\bar R^{r}-1$ で $\overline b^{\infty}=w^{\ast}-\bar R^{r}/(2\gamma\sigma^2)$。式(1)第1式（$\bar R^{r}\gt2\gamma\sigma^2w^{\ast}$）の下でこれは負なので、許される $b$ は 0 のみ（原論文の $\overline b^{\infty}_{\alpha=1}=0$）。

**Step 6　Hegemon の問題**

式(42)より目的は $(1-\alpha)b(\bar R^{r}-R^{s})/(\bar R^{r}-1)=(1-\alpha)V^{FC}(b)/(\bar R^{r}-1)$（定数倍）。制約 $b\le\overline b^{\infty}_{\alpha}$ の下で、凹関数 $V^{FC}$ の最大点 $b^{FC}$ か上限の小さい方。→ 式(45)

**Step 7　多極化の上限**（$\alpha=0$）

Step 3–4 で $w^{\ast}$ を $w^{\ast}-b_{-i}$ に置き換える（価格が総発行に依存）。→ 式(46)。$\partial\overline b^{\infty}/\partial b_{-i}=-1$、$\partial b^{FC}_i/\partial b_{-i}=-1/2$。

**Step 8　対称均衡**

全国が上限で発行：$b=w^{\ast}-(n-1)b-X$（$X$ は式(46)の最後の分数）。$nb=w^{\ast}-X$ より

$$
\overline b^{\infty}_n=\frac{w^{\ast}-X}{n}=\frac{\overline b^{\infty}_1}{n}
$$

→ 式(47)。総量 $n\overline b^{\infty}_n=\overline b^{\infty}_1$ は $n$ に依存しない（命題A.4）。

**Step 9　Nurkse 不安定性**（命題A.5）

有利な期待は確率 0.5 でしか来ないので、franchise value は半分：Step 2 の左辺に $1/2$ が掛かる。→ 式(48)。Step 3–4 で $\eta(1-\alpha)$ が $\eta/2$ に変わるのは $\alpha=0.5$ と同じ。上限は $\overline b^{\infty}_{\alpha=0.5}$、各国の問題は $\tfrac12V^{FC}(b_i)/(\bar R^{r}-1)$ の最大化なので $\min\{b^{FC},\overline b^{\infty}_{\alpha=0.5}\}$。

**確認**

$\eta\to\infty$（罰が十分重い）で括弧内が大きくなり、$\overline b^{\infty}_{\alpha}\to w^{\ast}$。$b^{FC}$ が上限を下回り、完全コミットメントに近づく。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(3)、トリガー戦略 |
| 使う道具 | T6、不等式の変形（正の因子で割る） |
| 結果 | 式(42)、式(43)、式(44)、式(45)、式(46)、式(47)、式(48) |

---

### A.14 私的発行・第三国発行（式(49)〜(52)）

**Step 1　限界発行者**

発行コスト $\theta\sim U[0,\xi]$。発行の便益は $\bar R^{r}-R^{s}(b_T)$（プレミアム）なので、$\theta\le\bar\theta=\bar R^{r}-R^{s}(b_T)$ の私的発行者が発行する。質量 $\mu$ なので私的発行は $(\mu/\xi)\bar\theta$。

**Step 2　総発行量**

$$
b_T=b+\frac{\mu}{\xi}\bigl(\bar R^{r}-R^{s}(b_T)\bigr),\qquad \bar R^{r}-R^{s}(b_T)=2\gamma\sigma^2(w^{\ast}-b_T)
$$

$k=(\mu/\xi)2\gamma\sigma^2$ として $b_T=b+k(w^{\ast}-b_T)$。$b_T$ について解く。→ 式(49)

$$
b_T=\frac{b+kw^{\ast}}{1+k}
$$

**Step 3　公的発行に対する需要**

$w^{\ast}-b_T=(w^{\ast}-b)/(1+k)$ を式(3)の $R^{s}(b_T)=\bar R^{r}-2\gamma\sigma^2(w^{\ast}-b_T)$ に入れる。

$$
\hat R^{s}(b)=\bar R^{r}-\frac{2\gamma\sigma^2}{1+k}(w^{\ast}-b)=\bar R^{r}-2\gamma_p\sigma^2(w^{\ast}-b),\quad\gamma_p=\frac{\gamma}{1+2(\mu/\xi)\gamma\sigma^2}
$$

→ 式(50)。$\gamma_p\lt\gamma$ で傾きが緩やか（より弾力的）。

**Step 4　参入コスト**（補）

私的発行者の総参入コストは $\mu\int_0^{\bar\theta}\theta\,d\theta/\xi=\mu\bar\theta^2/(2\xi)$。$\bar\theta=2\gamma\sigma^2(w^{\ast}-b_T)$ を入れ、Hegemon の移転 $b_T\bar\theta$ から引く。→ 式(51)

**Step 5　第三国の小発行者**

準備通貨建て：安全債なので返済額は $-\kappa R^{s}(b)$（確実）。危険な通貨建て：返済額 $-\kappa R^{r}$ の確実性等価 $CE^{-}[-\kappa R^{r}]=U^{-1}(E^{-}[U(-\kappa R^{r})])$。前者が高いとき準備通貨で発行する。→ 式(52)

**確認**

$\mu\to0$（私的発行者なし）で $k\to0$、$b_T=b$、$\gamma_p=\gamma$ となり、式(3)に戻る。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(3)、一様分布の発行コスト |
| 使う道具 | 1次方程式、確実性等価 |
| 結果 | 式(49)、式(50)、式(51)、式(52) |

---

### A.15 流動性・ネットワーク効果（式(53)〜(55)）

**Step 1　$b$ での微分**

式(53)（安全のとき）の $b$ に関する微分で、$\tilde b$ は所与：

$$
\frac{\partial}{\partial b}\bigl(B^{\top}\omega+B^{\top}\Omega B\bigr)=\omega_1+2\Omega_{11}b+(\Omega_{12}+\Omega_{21})\tilde b
$$

**Step 2　最適条件**

目的 $bR^{s}+(w^{\ast}-b)\bar R^{r}-\gamma\sigma^2(w^{\ast}-b)^2+B^{\top}\omega+B^{\top}\Omega B$ を $b$ で微分して 0：

$$
R^{s}-\bar R^{r}+2\gamma\sigma^2(w^{\ast}-b)+\omega_1+2\Omega_{11}b+(\Omega_{12}+\Omega_{21})\tilde b=0
$$

→ 式(54)

**Step 3　集計条件**

$b=\tilde b$、$\Omega_{12}=\Omega_{21}$ を使う。

$$
R^{s}(b)=\bar R^{r}-2\gamma\sigma^2w^{\ast}-\omega_1+2\bigl(\gamma\sigma^2-\Omega_{11}-\Omega_{12}\bigr)b
$$

**Step 4　基本形への変換**

$2\hat\gamma\sigma^2=2(\gamma\sigma^2-\Omega_{11}-\Omega_{12})$ より $\hat\gamma=\gamma-(\Omega_{11}+\Omega_{12})/\sigma^2$。切片の条件 $2\hat\gamma\sigma^2\hat w^{\ast}=2\gamma\sigma^2w^{\ast}+\omega_1$ から $\hat w^{\ast}=\dfrac{\gamma}{\hat\gamma}w^{\ast}+\dfrac{\omega_1}{2\hat\gamma\sigma^2}$。→ 式(55)

**確認**

$\omega_1=0$、$\Omega=0$ で $\hat\gamma=\gamma$、$\hat w^{\ast}=w^{\ast}$ となり、式(3)に戻る。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(53)、仮定 $\omega_1\ge0$、$\Omega_{11}\le0$、$\Omega_{12}=\Omega_{21}\ge0$ |
| 使う道具 | T1、集計条件 |
| 結果 | 式(54)、式(55) |

---

### A.16 財政能力の差・リスク分担（式(56)〜(58)）

**Step 1　国別の需要曲線**

式(54)を、2国の準備通貨 $i$ について総保有 $b_i+b_{-i}$ とネットワーク項 $b_i$ で書き、$\tilde b_i=b_i$ を代入。→ 式(56)

**Step 2　各国の目的関数**（補）

返済に $\varphi_i$ 倍の資源が要るので、$\delta=1/\bar R^{r}$ の危険中立の発行国の価値は $b_i\bigl(\bar R^{r}-\varphi_iR^{s}_i\bigr)/\bar R^{r}$。（この目的関数は原論文に明示がなく、式(57)と整合するよう補ったもの。）

**Step 3　1階条件**

$m=\gamma\sigma^2-\Omega_{11}-\Omega_{12}$（$\Omega_{12}=\Omega_{21}$）とおくと $\partial R^{s}_i/\partial b_i=2m$。

$$
\bar R^{r}-\varphi_iR^{s}_i-\varphi_ib_i\cdot2m=0
$$

**Step 4　国1と国2の差**

$\varphi_i$ で割って差を取る：

$$
\bar R^{r}\Bigl(\frac1{\varphi_1}-\frac1{\varphi_2}\Bigr)=\bigl(R^{s}_1-R^{s}_2\bigr)+2m(b_1-b_2)
$$

需要曲線の差から $R^{s}_1-R^{s}_2=-(\Omega_{12}+\Omega_{21})(b_1-b_2)$。

$$
\bar R^{r}\Bigl(\frac1{\varphi_1}-\frac1{\varphi_2}\Bigr)=\bigl(2m-\Omega_{12}-\Omega_{21}\bigr)(b_1-b_2)=2\bigl(\gamma\sigma^2-\Omega_{11}-\Omega_{12}-\Omega_{21}\bigr)(b_1-b_2)
$$

$\gamma\sigma^2-\Omega_{11}-\Omega_{12}-\Omega_{21}\gt0$ で割る。→ 式(57)

**Step 5　リスク分担**

$\underline b\lt b^{FC}\lt\overline b(\gamma)$ が $\gamma$ の両水準で成り立つとする。$b^{FC}$ の利潤は $(1-\alpha)b^{FC}2\gamma\sigma^2(w^{\ast}-b^{FC})-\alpha\lambda\tau(1-e_L)$、$\underline b$ の利潤は $\underline b\,2\gamma\sigma^2(w^{\ast}-\underline b)$。→ 式(58)

両者を $\gamma$ で微分した係数は、$(1-\alpha)b^{FC}\,2\sigma^2(w^{\ast}-b^{FC})$ と $\underline b\,2\sigma^2(w^{\ast}-\underline b)$。（補）前者が大きければ（$\alpha$ が小さい場合など）、$\bar\gamma\to\gamma$ の低下で $b^{FC}$ の利潤の方が大きく減る。原論文はこれを「$b^{FC}$ の利潤の低下の方が大きい」と述べる（係数の大小比較は本記事が補った条件）。

**確認**

$\Omega_{12}=\Omega_{21}=0$（ネットワーク効果なし）で乗数が消え、$b_1-b_2=\bar R^{r}(1/\varphi_1-1/\varphi_2)/\bigl(2(\gamma\sigma^2-\Omega_{11})\bigr)$ となる。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(54)、式(17) |
| 使う道具 | T1、T8 |
| 結果 | 式(56)、式(57)、式(58) |

---

**© 2016 Emmanuel Farhi and Matteo Maggiori. All rights reserved.** 本記事は、NBER Working Paper No. 22295 "A Model of the International Monetary System"（2016年5月、同12月改訂）の数理モデルを整理したものであり、原論文の著作権は著者に帰属します。
{% endraw %}
