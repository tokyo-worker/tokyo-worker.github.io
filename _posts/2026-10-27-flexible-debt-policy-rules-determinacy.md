---
layout: post
title: "柔軟な債務政策ルールと均衡決定性（小国開放経済）：数理モデル"
date: 2026-10-27 00:00:00 +0900
categories: [経済学, マクロ経済学]
math: true
---

{% raw %}
# 柔軟な債務政策ルールと均衡決定性（小国開放経済）：数理モデル
### Morimoto & Takizawa (2026) "Flexible debt policy rules and equilibrium determinacy in a small open economy" の理論モデル早見表

---

## 論文の紹介

**対象論文**：Keiichi Morimoto（明治大学）、Reo Takizawa（全国銀行協会）, "Flexible debt policy rules and equilibrium determinacy in a small open economy"（2026年4月24日版）。

この論文は、公共資本を含む内生成長の小国開放経済モデル（Morimoto et al. 2017）に、債務比率の目標からの乖離だけでなく成長率にも反応する「柔軟な債務目標ルール」を導入し、均衡の局所的な決定性を分析しています。あわせて、EU 26か国の四半期パネルデータで、現実の債務運営が厳格なルールよりも景気対応的な運営に近いかを検証しています。論文の主な結果は次の3点です。

- 循環的な柔軟性は、厳格な債務ルールでの決定性の閾値を一対一でずらす。十分に景気対応的（反循環的）な運営は、厳格なルールでは複数均衡になる債務目標のもとで局所的な一意性を回復する。
- 決定性が回復した局面の移行過程は、典型的には回転的（振動的）になる。厳格なルールの場合は非振動的である。
- データは、機械的な厳格ルールよりも景気対応的な債務運営を支持する。

**この記事は、その論文の背景にある数理モデルを整理したものです。** 論文の式は簡略化せず、そのままの形で並べています（式番号は本記事で振り直しました）。論文本文の議論、図、文献紹介は最小限にとどめ、前提・式・記号・導出を中心にしています。なお、論文で衝突している記号（付録の $L, S, B, C, E$ など）は、本記事では別の記号に改称しています（付録A.8の記号表を参照）。

---

## 目次

- [1. 数理モデル](#sec1)
- [2. 説明できる現象](#sec2)
- [3. モデルが整理している点](#sec3)
- [4. モデルの対象外](#sec4)
- [付録：導出手順](#appendix)

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間・情報構造**

連続時間 $t\in[0,+\infty)$、無限期間。最終財は1種類で、自由に貿易される。同質な家計の連続体（代表的家計）、完全競争の企業、政府、外国が登場する。確率的な要素はなく、家計の消費 $C_t$ だけがジャンプできる決定論的モデルである。

**A1 国際資本移動**

民間資本は国際的に自由に移動できる。労働と公共資本は移動できない。世界利子率 $r$ は外生で一定。外すと、後述の $x$ と $\omega$ が定数にならず、産出が公共資本に比例する構造（産出が先決変数になること）が成り立たない。

**A2 生産技術**

生産関数は $Y_t=F(K_t,K_{g,t}L_t)$ で、$F$ は標準的な新古典派の性質を満たす（Futagami et al. 1993）。この形により、公共資本 $K_{g,t}$ が労働の効率を高め、内生成長が生じる。

**A3 家計**

代表的家計は労働を1単位非弾力的に供給し、総所得に一定税率 $\tau$ の所得税を払う。純資産 $A_t$ は負でもよい（負なら海外に対する純債務者）。no-Ponzi条件を課す。

**A4 政府**

所得税と国債発行で支出を賄い、支出はすべて公共資本の蓄積に使う。債務比率は次節の柔軟な債務ルールに従って動かし、政府支出の対GDP比 $g_t$ は政府予算制約を満たすように内生的に決まる（追加の支出ルールではない）。税率を調整する体制（$\tau_t$ を動かし $g_t$ を一定にする場合）は、この論文では扱わない。

**A5 先決変数とジャンプ変数**

$K_{g,t}$ は先決変数で、産出 $Y_t$ は $K_{g,t}$ に比例するため先決である。$A_t,B_t$ も先決なので、比率変数 $b_t,a_t$ は先決、$c_t$ はジャンプ変数となる。

**A6 正則条件**

$\rho\gt0$、$\sigma\gt0$、$\phi\gt0$、$\psi\in\mathbb R$、$\bar b\gt0$。定常成長が正であること $(1-\tau)r\gt\rho$。横断性条件 $\rho\gt(1-\sigma)\gamma^{\ast}$。実行可能性 $c^{\ast}\gt0$。線形化が正則であること $k_g+\psi-\bar b\neq0$。政府の支払能力条件 $\gamma^{\ast}\lt r$。

**A7 対数効用（命題1の条件）**

解析的な決定性の定理は $\sigma=1$ のときに示される。他のパラメータは自由なままである。

| 記号・項目 | 意味 |
|---|---|
| $\rho$ | 時間選好率 |
| $\sigma$ | 異時点間の代替弾力性の逆数 |
| $\tau$ | 所得税率（一定） |
| $r$ | 世界利子率（外生・一定） |
| $\delta_g$ | 公共資本の減耗率 |
| $\phi$ | 債務比率が目標へ戻る調整速度 |
| $\psi$ | 景気対応の強さ（柔軟性）。$\psi\gt0$ で反循環的、$\psi\lt0$ で順循環的、$\psi=0$ で厳格ルール |
| $\bar b$ | 長期の債務比率目標 |

### 1.1 家計

**生涯効用**

$$
U_0=\int_{0}^{+\infty}\underbrace{e^{-\rho t}}_{\text{割引}}\ \underbrace{\frac{C_t^{1-\sigma}-1}{1-\sigma}}_{\text{CRRA効用}}\,dt\tag{1}
$$

> $\sigma=1$ のときは $U_0=\int_0^{+\infty}e^{-\rho t}\ln C_t\,dt$ とする。

**フロー予算制約**

$$
\underbrace{\dot A_t}_{\text{資産の変化}}=\underbrace{(1-\tau)}_{\text{税引後}}\bigl(\underbrace{rA_t}_{\text{資産収益}}+\underbrace{w_t}_{\text{賃金}}\bigr)-\underbrace{C_t}_{\text{消費}}\tag{2}
$$

**no-Ponzi条件**

$$
\lim_{T\to+\infty}e^{-(1-\tau)rT}A_T\ \ge\ 0\tag{3}
$$

**オイラー方程式**

$$
\underbrace{\frac{\dot C_t}{C_t}}_{\text{消費成長率}}=\frac{1}{\sigma}\Bigl[\underbrace{(1-\tau)r}_{\text{税引後収益率}}-\underbrace{\rho}_{\text{時間選好率}}\Bigr]\tag{4}
$$

**横断性条件**

$$
\lim_{T\to+\infty}e^{-(1-\tau)rT}A_T=0\tag{5}
$$

> $A_t$ は負でもよい。$r$ は外生なので、消費成長率は一定になる。

| 記号・項目 | 意味 |
|---|---|
| $C_t$ | 消費 |
| $A_t$ | 家計の純資産（負なら純債務） |
| $w_t$ | 賃金率 |
| $U_0$ | 生涯効用 |

### 1.2 企業

**生産関数（集約形）**

$$
Y_t=F(K_t,K_{g,t}L_t)=\underbrace{f(x_t)}_{\text{集約生産関数}}K_{g,t}L_t,\qquad x_t\equiv\frac{K_t}{K_{g,t}L_t},\quad f(x)\equiv F(x,1)\tag{6}
$$

**利潤最大化条件**

$$
r=\underbrace{f'(x_t)}_{\text{資本の限界生産性}}\tag{7}
$$

$$
w_t=\omega K_{g,t},\qquad \omega\equiv\underbrace{f(x)-f'(x)x}_{\text{労働の限界生産性}/K_g}\tag{8}
$$

**公共資本・産出比率**

$$
k_g\equiv\frac{K_{g,t}}{Y_t}=\underbrace{\frac{1}{f(x)}}_{\text{定数}}\tag{9}
$$

> $r$ が一定なので (7) より $x_t=x$、したがって $\omega_t=\omega$ も定数になる。家計の労働供給は1単位なので $L_t=1$ であり、$Y_t=f(x)K_{g,t}$ となる。

| 記号・項目 | 意味 |
|---|---|
| $K_t$ | 民間資本 |
| $K_{g,t}$ | 公共資本 |
| $L_t$ | 労働投入 |
| $Y_t$ | 産出 |
| $x_t,\ x$ | 民間資本と公共資本×労働の比（定数 $x$） |
| $f(\cdot)$ | 集約生産関数 |
| $\omega$ | 賃金を決める定数 |
| $k_g$ | 公共資本・産出比率 |

### 1.3 政府と債務ルール

**政府の予算制約**

$$
\underbrace{rB_t}_{\text{利払い}}+\underbrace{G_t}_{\text{支出}}=\underbrace{\dot B_t}_{\text{国債発行}}+\underbrace{\tau(rA_t+w_t)}_{\text{税収}}\tag{10}
$$

**公共資本の蓄積**

$$
\dot K_{g,t}=\underbrace{G_t}_{\text{公共投資}}-\underbrace{\delta_gK_{g,t}}_{\text{減耗}}\tag{11}
$$

**柔軟な債務政策ルール**

$$
\underbrace{\dot b_t}_{\text{債務比率の変化}}=-\underbrace{\phi(b_t-\bar b)}_{\text{目標への直接調整}}-\underbrace{\psi(\gamma_t-\gamma^{\ast})}_{\text{景気への反応}},\qquad b_t\equiv\frac{B_t}{Y_t},\quad\gamma_t\equiv\frac{\dot Y_t}{Y_t}\tag{12}
$$

**政府支出比率**

$$
g_t\equiv\frac{G_t}{Y_t}=\underbrace{(\gamma_t+\delta_g)k_g}_{\text{公共資本の成長に必要な投資}}\tag{13}
$$

> $\psi=0$ が Morimoto et al. (2017) の厳格な債務ルール。$\psi\gt0$ なら成長率が下がったとき（$\gamma_t\lt\gamma^{\ast}$）に追加の債務発行が起こる（反循環的）。$\psi\lt0$ なら逆に順循環的。(12) は $\psi$ に関わらず長期目標 $\bar b$ を保つ。政府は支払能力条件 $\lim_{T\to+\infty}e^{-rT}B_T\le0$ も満たす（定常で $\gamma^{\ast}\lt r$ なら成立）。

| 記号・項目 | 意味 |
|---|---|
| $B_t$ | 政府債務残高 |
| $G_t$ | 政府支出 |
| $b_t$ | 債務の対GDP比 |
| $\gamma_t$ | 産出成長率 |
| $\gamma^{\ast}$ | 定常成長率（式(18)） |
| $g_t$ | 政府支出の対GDP比 |

### 1.4 3次元動学システム

比率変数を $a_t\equiv A_t/Y_t$、$c_t\equiv C_t/Y_t$ と定義する。

**成長率の関数**

$$
\gamma_t=\underbrace{\frac{\tau(ra_t+\omega k_g)-rb_t-\phi(b_t-\bar b)+\psi\gamma^{\ast}-\delta_gk_g}{k_g+\psi-b_t}}_{\equiv\ \gamma(a_t,b_t)}\tag{14}
$$

**縮約された動学システム**

$$
\dot b_t=-\phi(b_t-\bar b)-\psi\bigl(\gamma(a_t,b_t)-\gamma^{\ast}\bigr)\tag{15}
$$

$$
\dot a_t=\bigl[(1-\tau)r-\gamma(a_t,b_t)\bigr]a_t-c_t+\underbrace{(1-\tau)\omega k_g}_{\text{税引後賃金所得}/Y}\tag{16}
$$

$$
\dot c_t=\Bigl[\underbrace{\frac{(1-\tau)r-\rho}{\sigma}}_{\gamma^{\ast}}-\gamma(a_t,b_t)\Bigr]c_t\tag{17}
$$

> (14) は $k_g+\psi-b_t\neq0$ のとき定義できる。局所分析では $q\equiv k_g+\psi-\bar b\neq0$ が必要で、$\psi=\bar b-k_g$ は特異点（線形化が正則でない）となる。基準値では $\psi=\bar b-k_g\approx0.35285$。状態は先決の $(b_t,a_t)$ とジャンプ変数 $c_t$ である。

| 記号・項目 | 意味 |
|---|---|
| $a_t$ | 純資産の対GDP比 |
| $c_t$ | 消費の対GDP比 |
| $\gamma(a,b)$ | 成長率を $(a,b)$ で表す関数 |
| $q$ | $k_g+\psi-\bar b$（(14) の分母の定常値） |

### 1.5 定常状態

**定常成長率**

$$
\gamma^{\ast}=\underbrace{\frac{(1-\tau)r-\rho}{\sigma}}_{\text{(17)で}\dot c=0}\tag{18}
$$

**純資産比率の定常値**（債務比率の定常値は $b=\bar b$）

$$
a^{\ast}=\frac{(\gamma^{\ast}-\tau\omega+\delta_g)k_g+\underbrace{(r-\gamma^{\ast})\bar b}_{\text{債務目標の効果}}}{\tau r}\tag{19}
$$

**消費比率の定常値**

$$
c^{\ast}=\frac{\bigl[(1-\tau)r-\gamma^{\ast}\bigr](r-\gamma^{\ast})\bar b+\bigl\{\gamma^{\ast}\tau\omega+\bigl[(1-\tau)r-\gamma^{\ast}\bigr](\gamma^{\ast}+\delta_g)\bigr\}k_g}{\tau r}\tag{20}
$$

> 定常状態 $(\bar b,a^{\ast},c^{\ast})$ は $\psi$ に依存しない。$\psi$ は移行過程だけに影響し、長期の債務目標は変わらない。$(1-\tau)r\gt\rho$ が必要。横断性条件は $\rho\gt(1-\sigma)\gamma^{\ast}$、すなわち $\sigma\gt1-\rho/\{(1-\tau)r\}$ と同値で、このとき $(1-\tau)r\gt\gamma^{\ast}$ も成り立つ。(19)(20) が実行可能な経路を表すのは $c^{\ast}\gt0$ のとき。$a^{\ast}$ は負でもよい。

| 記号・項目 | 意味 |
|---|---|
| $\gamma^{\ast}$ | 定常成長率 |
| $a^{\ast}$ | 定常の純資産比率 |
| $c^{\ast}$ | 定常の消費比率 |

### 1.6 局所線形化

**線形化されたシステム**

$$
\begin{pmatrix}\dot b_t\\ \dot a_t\\ \dot c_t\end{pmatrix}
=\underbrace{\begin{pmatrix}
-\phi-\psi\gamma_2 & -\psi\gamma_1 & 0\\
-\gamma_2a^{\ast} & (1-\tau)r-\gamma^{\ast}-\gamma_1a^{\ast} & -1\\
-\gamma_2c^{\ast} & -\gamma_1c^{\ast} & 0
\end{pmatrix}}_{\equiv\ M\ （ヤコビ行列）}
\begin{pmatrix}b_t-\bar b\\ a_t-a^{\ast}\\ c_t-c^{\ast}\end{pmatrix}\tag{21}
$$

**成長率関数の偏微分（定常値）**

$$
\gamma_1\equiv\frac{\partial\gamma}{\partial a}=\underbrace{\frac{\tau r}{k_g+\psi-\bar b}}_{\text{資産の影響}},\qquad
\gamma_2\equiv\frac{\partial\gamma}{\partial b}=\underbrace{\frac{-(r+\phi)+\gamma^{\ast}}{k_g+\psi-\bar b}}_{\text{債務の影響}}\tag{22}
$$

> $\sigma=1$ のとき $M$ の $(2,2)$ 成分は $\rho-\gamma_1a^{\ast}$ に簡単になる。$M$ の固有値のうち、実部が負のもの（安定根）の数が、2個の先決変数に対して足りるかどうかで、決定性が決まる（Blanchard-Kahn）。

| 記号・項目 | 意味 |
|---|---|
| $M$ | 線形化システムの係数行列 |
| $\gamma_1,\gamma_2$ | $\gamma(a,b)$ の $a$, $b$ による偏微分（定常値） |

### 1.7 決定性の閾値（$\sigma=1$）

**補助記号**

$$
\begin{aligned}
\Gamma&\equiv(1-\tau)r-\rho,&\Theta&\equiv2\rho+\tau r,&h&\equiv\bar b-k_g,\\
q&\equiv k_g+\psi-\bar b=\psi-h,&\Lambda&\equiv\tau\omega-r-\delta_g
\end{aligned}\tag{23}
$$

**十分条件**

$$
\underbrace{k_g\Lambda}_{\text{公共資本の純財政収益}}\ \gt\ \underbrace{\Theta h}_{\text{目標乖離の重み}}\tag{24}
$$

> $\Lambda$ は公共資本を1単位増やしたときの純財政収益で、$\tau\omega$ が税基盤の拡大、$r+\delta_g$ が維持費用にあたる。(24) は、この収益が実効的な債務目標の乖離 $h$ に対して十分大きいことを意味する。

**命題1（局所均衡の分類）**

前提：$\sigma=1$、$c^{\ast}\gt0$、$\Gamma\gt0$、$h\gt0$、式(24)。このとき、2つの閾値が存在し、閾値と $\bar b-k_g$ を除く $\psi$ について、先決変数の一般的な初期値に対して次のように分類される。

| $\psi$ の範囲 | 局所均衡の分類 | 安定根の数 |
|---|---|---|
| $\psi\lt\hat{\psi}^{-}_{H}$ | 定常状態に収束する局所経路なし | 1 |
| $\hat{\psi}^{-}_{H}\lt\psi\lt\bar b-k_g$ | 局所的に不決定（複数均衡） | 3 |
| $\psi=\bar b-k_g$ | 局所システムが特異 | ― |
| $\bar b-k_g\lt\psi\lt\hat{\psi}^{+}_{H}$ | 局所的に決定（一意均衡） | 2 |
| $\psi\gt\hat{\psi}^{+}_{H}$ | 定常状態に収束する局所経路なし | 0 |

$$
\hat{\psi}^{-}_{H}\ \lt\ \underbrace{\bar b-k_g}_{\text{特異点}}\ \lt\ \hat{\psi}^{+}_{H}\tag{25}
$$

**系1（閾値のずれ）**

$\psi\in(\hat{\psi}^{-}_{H},\hat{\psi}^{+}_{H})\setminus\{\bar b-k_g\}$ のとき

$$
\text{局所的に決定}\iff\underbrace{\bar b\lt k_g+\psi}_{\text{柔軟性で実効目標が緩和}},\qquad
\text{局所的に不決定}\iff\bar b\gt k_g+\psi\tag{26}
$$

> 収束する範囲では、柔軟性は厳格ルールの閾値 $\bar b\lt k_g$ を $\bar b\lt k_g+\psi$ に置き換える（一対一のずれ）。柔軟性が安定化するのは中間の範囲だけで、$|\psi|$ が大きすぎると収束経路そのものが消える。命題1は、より弱い符号条件のもとで成り立つ補題A.1（付録A.8）から直ちに従う。

| 記号・項目 | 意味 |
|---|---|
| $\Gamma$ | $(1-\tau)r-\rho$。$\sigma=1$ では定常成長率に等しい |
| $\Theta$ | $2\rho+\tau r$ |
| $h$ | $\bar b-k_g$（実効的な債務目標の乖離） |
| $q$ | $\psi-h$ |
| $\Lambda$ | 公共資本の純財政収益 $\tau\omega-r-\delta_g$ |
| $\hat{\psi}^{\mp}_{H}$ | 収束経路の有無・決定性が切り替わる閾値 |

### 1.8 実証に用いる推定式（離散時間版）

**離散時間の債務ルール**

$$
b_t-b_{t-1}=-\phi(b_{t-1}-\bar b)-\psi(\gamma_{t-1}-\bar\gamma)\tag{27}
$$

**厳格ルールからの乖離**

$$
D_t\equiv\underbrace{b_t-(1-\phi)b_{t-1}-\phi\bar b}_{\text{厳格ルールからの乖離}}\tag{28}
$$

$$
D_t=-\psi(\gamma_{t-1}-\bar\gamma)\tag{29}
$$

**固定効果モデル**

$$
D_{i,t}=\beta_{0,i}+\beta_1D_{i,t-1}+\underbrace{\beta_2(\gamma_{i,t-1}-\bar\gamma_i)}_{\text{景気対応}}+\underbrace{\beta_3\,\mathrm{dummy}_{i,t}\times(\gamma_{i,t-1}-\bar\gamma_i)}_{\text{債務60\%超での差}}+u_{i,t}\tag{30}
$$

> $\beta_2$（または $\beta_2+\beta_3$）が有意に負なら、理論の $\psi\gt0$（反循環的な債務運営）に対応する。慣習的な値 $\phi=0.05$、$\bar b=60\%$ を使うと $D_t$ が厳格ルールからの乖離になる。論文のデータは26か国の四半期（2000Q1〜2024Q2）で、$\bar\gamma_i$ は季節調整済み成長率の標本平均。$\mathrm{dummy}_{i,t}$ は債務比率が60%を超えると1、それ以外は0。(30) の推定にはプール化OLS、固定効果、Arellano-Bond型の動的パネルを用いる。

| 記号・項目 | 意味 |
|---|---|
| $\bar\gamma,\ \bar\gamma_i$ | 長期成長率（国 $i$ の標本平均） |
| $D_t$ | 厳格ルールからの乖離 |
| $\beta_0,\beta_1,\beta_2,\beta_3$ | 推定係数（$\beta_{0,i}$ は国別の定数項） |
| $\mathrm{dummy}_{i,t}$ | 債務比率が60%超なら1 |
| $u_{i,t}$ | 誤差項 |

### 1.9 主要帰結

**主要式（定常状態）**

$$
\boxed{\begin{aligned}
\gamma^{\ast}&=\underbrace{\frac{(1-\tau)r-\rho}{\sigma}}_{\text{定常成長率}},\qquad b^{\ast}=\underbrace{\bar b}_{\text{債務目標は不変}}\\
a^{\ast}&=\underbrace{\frac{(\gamma^{\ast}-\tau\omega+\delta_g)k_g+(r-\gamma^{\ast})\bar b}{\tau r}}_{\text{純資産比率}}\\
c^{\ast}&=\underbrace{\frac{\bigl[(1-\tau)r-\gamma^{\ast}\bigr](r-\gamma^{\ast})\bar b+\bigl\{\gamma^{\ast}\tau\omega+\bigl[(1-\tau)r-\gamma^{\ast}\bigr](\gamma^{\ast}+\delta_g)\bigr\}k_g}{\tau r}}_{\text{消費比率}}
\end{aligned}}\tag{31}
$$

**主要式（決定性）**

$$
\boxed{\begin{aligned}
\hat{\psi}^{-}_{H}\lt\psi\lt\bar b-k_g&\ \Rightarrow\ \underbrace{\text{不決定}}_{\text{安定根3本}}\\
\bar b-k_g\lt\psi\lt\hat{\psi}^{+}_{H}&\ \Rightarrow\ \underbrace{\text{決定}}_{\text{安定根2本}}\\
\text{決定}&\iff\underbrace{\bar b\lt k_g+\psi}_{\text{実効的な目標条件}}
\end{aligned}}\tag{32}
$$

> (32) の最後の行は $\psi\in(\hat{\psi}^{-}_{H},\hat{\psi}^{+}_{H})\setminus\{\bar b-k_g\}$ の範囲で成り立つ。

**比較静学（$\bar b\gt k_g$ の場合）**

| 変化 | 結果 | 符号・式 |
|---|---|---|
| $\psi=0$（厳格ルール） | 局所的に不決定。安定根はすべて実数で、移行は非振動的 | $0\in(\hat{\psi}^{-}_{H},\bar b-k_g)$ |
| $\psi$ を $\bar b-k_g$ より大きく、$\hat{\psi}^{+}_{H}$ より小さくする | 局所的に決定。移行は典型的に回転的 | 式(26) |
| $\psi\gt\hat{\psi}^{+}_{H}$ または $\psi\lt\hat{\psi}^{-}_{H}$ | 収束する局所経路がない | 式(25) |
| $\psi$ の変更 | $\gamma^{\ast},a^{\ast},c^{\ast}$ は不変 | 式(31) |
| $\bar b$ を $k_g+\psi$ より低くする | 同じ $\psi$ で決定性が得られる | 式(26) |
| $\hat{\psi}^{-}_{H}\lt\psi\lt\bar b-k_g$ のうち特異点の左隣 | 複素根をもつ回転的な不決定が狭い範囲で残る | 論文の数値例 |

**数値例（論文の基準パラメータ）**

| 項目 | 値 |
|---|---|
| 生産関数 | $f(x)=x^{\alpha}$、$\alpha=0.36$ |
| 家計・政府 | $r=0.03$、$\rho=0.01$、$\tau=0.20$、$\sigma=1$、$\delta_g=0.0448$ |
| 債務ルール | $\phi=0.05$、$\bar b=0.60$ |
| 導かれる値 | $k_g\approx0.24715$、$\gamma^{\ast}=0.014$、$a^{\ast}\approx-17.3113$、$c^{\ast}\approx0.33889$ |
| 閾値 | $\hat{\psi}^{-}_{H}\approx-2.86299$、$\bar b-k_g\approx0.35285$、$\hat{\psi}^{+}_{H}\approx66.82847$ |
| 補足（本記事での計算） | $\omega\approx2.590$、$\Lambda\approx0.443$、$k_g\Lambda\approx0.110\gt\Theta h\approx0.0092$ で式(24)を満たす |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 高い債務目標のもとでの均衡の不決定性 | 厳格ルール（$\psi=0$）で $\bar b\gt k_g$ なら不決定。債務比率が目標を上回るとき、政府は公共支出で成長を高めて債務比率を下げられる。このため「将来の支出が増える」という予想が、労働所得の上昇予想→貯蓄の減少→税収の減少→支出の拡大、と自己実現する。 |
| 景気対応的な債務運営による一意性の回復 | $\psi\gt\bar b-k_g$（かつ $\hat{\psi}^{+}_{H}$ 未満）なら、同じ債務目標 $\bar b$ のままで局所的に決定になる。目標を下げなくても不決定性を取り除ける。 |
| 柔軟性が回転的な移行を生むこと | 決定性が回復した局面では複素安定根が現れ、債務・資産・消費・成長が共通の減衰振動を描く。厳格ルールでは非振動的。 |
| 回転的であっても一意とは限らないこと | $\bar b-k_g$ の左隣には、局所運動は循環的だが自己実現的予想が残る狭い領域がある。「柔軟性が回転を生む」ことと「景気対応が決定性を回復する」ことは別の主張である。 |
| 柔軟性が大きすぎると収束経路がなくなること | $\psi\lt\hat{\psi}^{-}_{H}$ または $\psi\gt\hat{\psi}^{+}_{H}$ では安定根が2本に満たない（または0本）。 |
| 長期の債務目標が柔軟性に影響されないこと | 定常状態 $(\bar b,a^{\ast},c^{\ast})$ は $\psi$ に依存しない。影響を受けるのは移行過程だけ。 |
| 実証：EU債務比率の挙動 | 債務比率はブルガリアを除く各国で単位根をもつ（厳格ルールなら定常になるはず）。(30) の $\beta_2$ は負で有意（固定効果、2000Q1〜2019Q4：$-0.1366$、2000Q1〜2024Q2：$-0.1156$）。$\beta_3$ は有意でない。 |

## 3. モデルが整理している点 {#sec3}

- 債務規律の安定化効果は、長期目標 $\bar b$ だけでなく、目標へ近づける調整ルールの循環的な設計（$\psi$ の符号と大きさ）にも依存する。
- 厳格ルールでの決定性の条件 $\bar b\lt k_g$ が、柔軟ルールでは $\bar b\lt k_g+\psi$ に置き換わる。柔軟性は一対一で閾値をずらす。
- 柔軟性の効果は、符号（どちら側の自己実現的予想の領域にいるか）と大きさ（局所収束が残るか）の組み合わせで決まる。

## 4. 対象外の現象 {#sec4}

- 局所分析に限られる。大域動学や、決定論的な内生循環（リミットサイクル）は分析しない。ホップ分岐（$\hat{\psi}^{-}_{H}$ 付近、劣臨界）は付録で簡単に触れるのみである。
- 現行のSGP（2024年改革後の中期財政構造計画・純支出経路）を直接モデル化していない。連続時間の債務ルールは、債務規律を表す簡略な基準として置かれている。
- 解析的な決定性の定理は $\sigma=1$ に限られる。$\sigma\neq1$ の場合の閾値は示されない。
- 税率を調整して政府支出比率を固定する体制は扱わない。
- 実証は、財政スタンス全体（歳出やプライマリーバランス）の推定ではない。債務比率の運営が景気対応的かどうかの簡易な確認にとどまる。リーマン危機・COVID-19の緊急支出も、通常の景気対応とは区別されていない。
- 厚生評価や、最適な $\psi$ の規範的な提案は行わない。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
前提 A1-A7
  │
  ├ 家計 (1)(2)(3) ──[A.2]──> オイラー(4)・横断性(5)
  ├ 企業 (6) ────────[A.3]──> (7)(8)(9)
  ├ 政府 (10)(11)(12) ─[A.4]──> 支出比率 (13)
  │
  └ 比率変数 a, b, c へ変換 ──[A.5]──> 成長率 (14) と動学システム (15)(16)(17)
        │
        ├──[A.6]──> 定常状態 (18)(19)(20) ──> 主要式 (31)
        │
        └──[A.7]──> 線形化 (21)(22)
               │
               └──[A.8]──> 特性多項式 (51)-(55)
                           ──> Routh-Hurwitz (56)(57)
                           ──> 命題1 (25), 系1 (26) ──> 主要式 (32)
  [A.9]  離散時間版 (27)(28)(29)(30)
  [A.10] 決定的な場合の局所経路（複素安定根）
```

### A.1 使う道具

**T1 ハミルトニアン（現在価値）**

制約付きの動学最適化で、状態変数の随伴変数 $\nu_t$ を用いる。1階条件は、制御変数での偏微分が0、随伴変数の運動方程式が $\dot\nu_t=-\partial\mathcal H_t/\partial A_t$、横断性条件が $\lim\nu_TA_T=0$。

**T2 比率変数の時間微分**

$X_t=x_tY_t$ のとき $\dot X_t/Y_t=\dot x_t+x_t\gamma_t$（$\gamma_t=\dot Y_t/Y_t$）。

**T3 一次近似（ヤコビ行列）**

$\dot z=F(z)$ を定常値 $z^{\ast}$ で $\dot z\approx DF(z^{\ast})(z-z^{\ast})$ に展開する。

**T4 特性多項式の係数**

3×3行列 $M$ について $\det(sI+M)=s^3+\mathrm{tr}(M)s^2+(\text{2次主小行列式の和})s+\det M$。

**T5 Routh-Hurwitz（3次）**

$s^3+p_1s^2+p_2s+p_3$ の正の実部をもつ根の数は、Routh配列の第1列 $1,\ p_1,\ (p_1p_2-p_3)/p_1,\ p_3$ の符号変化の数に等しい（第1列に0がない場合）。

**T6 Blanchard-Kahn条件**

先決変数の数だけ安定根があり、安定部分空間が先決変数の座標に（ランク2で）射影されるとき、局所均衡は一意。安定根が先決変数の数より多ければ不決定、少なければ収束経路が一般には存在しない。

**T7 複素固有値の実解**

固有値 $\lambda\pm i\mu$ に対する固有ベクトル $v=u+iw$ から、実数の解 $e^{\lambda t}[u\ w]R(\mu t)\theta$ が得られる。$R(\mu t)$ は回転行列。

### A.2 家計：オイラー方程式と横断性条件（(4)(5)）

> 論文は結果のみを記載しているため、標準的な導出を補った。

**Step 1　ハミルトニアンを立てる**（T1）

$$
\mathcal H_t=e^{-\rho t}\frac{C_t^{1-\sigma}-1}{1-\sigma}+\nu_t\bigl[(1-\tau)(rA_t+w_t)-C_t\bigr]\tag{33}
$$

**Step 2　消費の1階条件**

$\partial\mathcal H_t/\partial C_t=0$ より

$$
e^{-\rho t}C_t^{-\sigma}=\nu_t\tag{34}
$$

**Step 3　随伴変数の運動方程式**

$\dot\nu_t=-\partial\mathcal H_t/\partial A_t$ より

$$
\dot\nu_t=-(1-\tau)r\,\nu_t\tag{35}
$$

**Step 4　オイラー方程式**

(34) の対数をとって時間微分すると $-\rho-\sigma\dot C_t/C_t=\dot\nu_t/\nu_t$。右辺に (35) を使うと $-\rho-\sigma\dot C_t/C_t=-(1-\tau)r$。$\sigma\gt0$ で割って**式(4)**を得る。

**Step 5　横断性条件**

横断性条件は $\lim_{T\to\infty}\nu_TA_T=0$。(35) から $\nu_T=\nu_0e^{-(1-\tau)rT}$ なので**式(5)**となる。また (34) より $\lim e^{-\rho t}C_t^{-\sigma}A_t=0$ と同値。

**確認**

$\sigma=1$ では (4) は $\dot C_t/C_t=(1-\tau)r-\rho$ となり、(18) の $\sigma=1$ の場合と一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(1)(2) | 目的関数と予算制約 |
| T1 | ハミルトニアン、1階条件、横断性条件 |

---

### A.3 企業：要素価格と公共資本・産出比率（(7)(8)(9)）

**Step 1　利潤最大化問題**

完全競争の企業は、価格を所与として

$$
\max_{K_t,\,L_t}\ F(K_t,K_{g,t}L_t)-rK_t-w_tL_t\tag{36}
$$

を解く。$K_{g,t}$ は企業にとって外生。

**Step 2　資本の1階条件**

$F=K_{g,t}L_tf(x_t)$、$\partial x_t/\partial K_t=1/(K_{g,t}L_t)$ より、$\partial F/\partial K_t=f'(x_t)$。これを $r$ に等しくして**式(7)**を得る。

**Step 3　労働の1階条件**

$\partial x_t/\partial L_t=-x_t/L_t$ を使って、$\partial F/\partial L_t=K_{g,t}f(x_t)+K_{g,t}L_tf'(x_t)(-x_t/L_t)=K_{g,t}[f(x_t)-f'(x_t)x_t]$。これを $w_t$ に等しくして**式(8)**を得る。

**Step 4　定数であることの確認と $k_g$**

$r$ は一定で $f'$ は単調なので、(7) から $x_t=x$ は一定、したがって $\omega$ も一定。$L_t=1$ なら $Y_t=f(x)K_{g,t}$ なので、$K_{g,t}/Y_t=1/f(x)$（**式(9)**）。

**確認**

$f(x)=x^{\alpha}$ のとき (7) は $r=\alpha x^{\alpha-1}$、(8) は $\omega=(1-\alpha)f(x)$。基準値 $\alpha=0.36$、$r=0.03$ では $f(x)\approx4.046$、$k_g=1/f(x)\approx0.24715$ となり、論文の値と一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(6) | 生産関数 |
| 偏微分 | 積の微分、合成関数の微分 |

---

### A.4 政府支出比率（(13)）

**Step 1　(11) を $Y_t$ で割る**

$K_{g,t}/Y_t=k_g$ を使うと

$$
\frac{\dot K_{g,t}}{Y_t}=g_t-\delta_gk_g\tag{37}
$$

**Step 2　$K_{g,t}=k_gY_t$ を時間微分する**

$k_g$ は定数なので $\dot K_{g,t}=k_g\dot Y_t$。$Y_t$ で割って

$$
\frac{\dot K_{g,t}}{Y_t}=k_g\gamma_t\tag{38}
$$

**Step 3　両者を等しくする**

(37) と (38) より $k_g\gamma_t=g_t-\delta_gk_g$、すなわち**式(13)** $g_t=(\gamma_t+\delta_g)k_g$ を得る。

**確認**

定常状態 $\gamma_t=\gamma^{\ast}$ では $g=(\gamma^{\ast}+\delta_g)k_g$ で一定になる。

| 入力・使う道具 | 内容 |
|---|---|
| 式(9)(11) | $k_g$ の定義、公共資本の蓄積 |
| T2 | 比率変数の時間微分 |

---

### A.5 縮約された動学システム（(14)〜(17)）

**Step 1　資産比率の運動方程式**（T2）

$A_t=a_tY_t$ より $\dot A_t/Y_t=\dot a_t+a_t\gamma_t$。

$$
\frac{\dot A_t}{Y_t}=\dot a_t+a_t\gamma_t\tag{39}
$$

(2) を $Y_t$ で割り、$w_t/Y_t=\omega K_{g,t}/Y_t=\omega k_g$ を使うと

$$
\dot a_t+a_t\gamma_t=(1-\tau)(ra_t+\omega k_g)-c_t\tag{40}
$$

$a_t\gamma_t$ を右辺に移して**式(16)**を得る。

**Step 2　政府予算制約を比率で表す**

(10) を $Y_t$ で割り、$\dot B_t/Y_t=\dot b_t+b_t\gamma_t$（T2）、$\tau(rA_t+w_t)/Y_t=\tau(ra_t+\omega k_g)$ を使う。

$$
rb_t+g_t=\dot b_t+b_t\gamma_t+\tau(ra_t+\omega k_g)\tag{41}
$$

債務ルール (12) を代入して

$$
rb_t+g_t=-\phi(b_t-\bar b)-\psi(\gamma_t-\gamma^{\ast})+b_t\gamma_t+\tau(ra_t+\omega k_g)\tag{42}
$$

**Step 3　$\gamma_t$ について解く**

(13) の $g_t=(\gamma_t+\delta_g)k_g$ を (42) に代入し、$\gamma_t$ を含む項を左辺に集める。

$$
(k_g+\psi-b_t)\,\gamma_t=\tau(ra_t+\omega k_g)-rb_t-\phi(b_t-\bar b)+\psi\gamma^{\ast}-\delta_gk_g\tag{43}
$$

$k_g+\psi-b_t\neq0$ のとき（0で割れない条件）、両辺をこれで割って**式(14)**を得る。

**Step 4　消費比率の運動方程式**

$c_t=C_t/Y_t$ より

$$
\frac{\dot c_t}{c_t}=\frac{\dot C_t}{C_t}-\gamma_t\tag{44}
$$

右辺第1項に (4) を使って**式(17)**を得る。(15) は (12) に (14) を代入したもの。

**Step 5　先決変数とジャンプ変数**

$Y_t=f(x)K_{g,t}$ は先決なので、$A_t,B_t$ も先決。$b_t,a_t$ は先決、$c_t$ はジャンプ（A5）。

**確認**

$\psi=0$ では (15) は $\dot b_t=-\phi(b_t-\bar b)$ となり、Morimoto et al. (2017) の厳格ルールに戻る。このとき (14) の分母は $k_g-b_t$。

| 入力・使う道具 | 内容 |
|---|---|
| 式(2)(4)(10)(12)(13) | 予算制約、オイラー方程式、債務ルール、支出比率 |
| T2 | 比率変数の時間微分 |

---

### A.6 定常状態（(18)〜(20)）

**Step 1　定常成長率**

(17) で $\dot c=0$、$c^{\ast}\gt0$ とすると $\gamma^{\ast}=\gamma(a^{\ast},b^{\ast})=[(1-\tau)r-\rho]/\sigma$、すなわち**式(18)**。

**Step 2　債務比率の定常値**

(15) で $\dot b=0$ かつ $\gamma=\gamma^{\ast}$ とすると $-\phi(b-\bar b)=0$。$\phi\gt0$ なので $b^{\ast}=\bar b$。$\psi$ はこの条件に現れない。

**Step 3　純資産比率の定常値**

(14) に $b=\bar b$、$a=a^{\ast}$、$\gamma=\gamma^{\ast}$ を代入する。両辺の $\psi\gamma^{\ast}$ が打ち消し合い

$$
\gamma^{\ast}(k_g-\bar b)=\tau ra^{\ast}+\tau\omega k_g-r\bar b-\delta_gk_g\tag{45}
$$

$\tau r\neq0$ で割って整理すると**式(19)**。

**Step 4　消費比率の定常値**

(16) で $\dot a=0$ とすると

$$
c^{\ast}=\bigl[(1-\tau)r-\gamma^{\ast}\bigr]a^{\ast}+(1-\tau)\omega k_g\tag{46}
$$

(19) を代入して分母を $\tau r$ に揃える。$X\equiv(1-\tau)r-\gamma^{\ast}$ とおくと、$k_g$ の係数は $X(\gamma^{\ast}-\tau\omega+\delta_g)+(1-\tau)\tau r\omega=X(\gamma^{\ast}+\delta_g)+\tau\omega\gamma^{\ast}$（$-X\tau\omega+(1-\tau)r\tau\omega=\tau\omega\gamma^{\ast}$ を使った）。これで**式(20)**を得る。

**Step 5　横断性条件のパラメータ制約**

$C_t,A_t$ は定常で共通の率 $\gamma^{\ast}$ で成長する。$e^{-\rho t}C_t^{-\sigma}A_t$ の指数は

$$
\lim_{t\to+\infty}e^{-[\rho-(1-\sigma)\gamma^{\ast}]t}=0\tag{47}
$$

となり、$\rho\gt(1-\sigma)\gamma^{\ast}$ が必要。(18) を代入すると $\rho\gt(1-\sigma)(1-\tau)r$、すなわち $\sigma\gt1-\rho/\{(1-\tau)r\}$。このとき $(1-\tau)r=\rho+\sigma\gamma^{\ast}\gt(1-\sigma)\gamma^{\ast}+\sigma\gamma^{\ast}=\gamma^{\ast}$ なので $(1-\tau)r\gt\gamma^{\ast}$。

**確認**

基準値では $\gamma^{\ast}=(0.8\times0.03-0.01)/1=0.014$。(19) の分子は $(0.014-0.5179+0.0448)\times0.24715+0.016\times0.6\approx-0.1039$、$\tau r=0.006$ で割って $a^{\ast}\approx-17.31$。(20) は $c^{\ast}\approx0.3389$。いずれも論文の値と一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(14)(15)(16)(17) | 動学システム |
| 代数計算 | 同類項の整理、$\tau r\neq0$ での除算 |

---

### A.7 局所線形化（(21)(22)）

**Step 1　$\gamma(a,b)$ の偏微分**（T3）

$\gamma=N/D$、$N$ は (14) の分子、$D=k_g+\psi-b$ とする。$\partial N/\partial a=\tau r$、$\partial N/\partial b=-(r+\phi)$、$\partial D/\partial b=-1$。商の微分より

$$
\frac{\partial\gamma}{\partial b}=\frac{N_bD-ND_b}{D^2}=\frac{-(r+\phi)+N/D}{D}=\frac{-(r+\phi)+\gamma}{D}\tag{48}
$$

定常値 $\gamma=\gamma^{\ast}$、$D=k_g+\psi-\bar b$ を代入して**式(22)**を得る（$\partial\gamma/\partial a=\tau r/D$）。

**Step 2　各式の偏微分**

(15) から $\partial\dot b/\partial b=-\phi-\psi\gamma_2$、$\partial\dot b/\partial a=-\psi\gamma_1$、$\partial\dot b/\partial c=0$。
(16) から $\partial\dot a/\partial b=-\gamma_2a^{\ast}$、$\partial\dot a/\partial a=(1-\tau)r-\gamma^{\ast}-\gamma_1a^{\ast}$、$\partial\dot a/\partial c=-1$。
(17) から $\partial\dot c/\partial b=-\gamma_2c^{\ast}$、$\partial\dot c/\partial a=-\gamma_1c^{\ast}$、$\partial\dot c/\partial c=[(1-\tau)r-\rho]/\sigma-\gamma^{\ast}=0$。
これらを並べると**式(21)**の $M$ になる。

**Step 3　$\sigma=1$ のとき**

$\gamma^{\ast}=(1-\tau)r-\rho$ なので $(1-\tau)r-\gamma^{\ast}=\rho$。したがって $(2,2)$ 成分は $\rho-\gamma_1a^{\ast}$。

**確認**

$\psi=0$ のとき $M$ の第1行は $(-\phi,0,0)$ で、固有値の1つは $-\phi$（安定）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(14)(15)(16)(17)、定常値(18)〜(20) | 偏微分の対象と評価点 |
| T3 | 一次近似 |

---

### A.8 命題1の証明（補題A.1）

**記号表（付録用）**

論文で他の記号と衝突する $L,S,B,C,E$ などを、本記事では次のように改称している。

| 記号・項目 | 意味 |
|---|---|
| $\Theta$ | $2\rho+\tau r$（論文の $L$） |
| $\Sigma$ | $\rho+\tau r$（論文の $S$）。$\sigma=1$ では $r-\gamma^{\ast}=\Sigma$ |
| $\mathcal E$ | $k_g\{\rho(r+\delta_g)+\tau\omega\Gamma\}$（論文の $E$） |
| $\mathcal B,\ \mathcal C$ | 特性多項式の係数に現れる定数（論文の $B$, $C$） |
| $\Xi$ | $\phi(\rho\Sigma h+\mathcal E)$ |
| $p_1(q),p_2(q),p_3(q)$ | 特性多項式の係数（論文の $A_1,A_2,A_3$） |
| $\mathcal P(q)$ | ハーヴィッツ行列式の分子の2次式（論文の $P$） |
| $q^{\pm}_{H},\ q_A$ | $\mathcal P(q)$ の2根、$p_1(q)$ の零点 |
| $\chi(s;\psi)$ | $\det(sI+M)$ |

**Step 1　補助量の定義**

$$
\begin{aligned}
\Sigma&\equiv\rho+\tau r,&\mathcal E&\equiv k_g\{\rho(r+\delta_g)+\tau\omega\Gamma\}\gt0,\\
\mathcal B&\equiv\phi h+k_g\Lambda,&\mathcal C&\equiv\phi(\Theta h-k_g\Lambda)-\mathcal E,&\Xi&\equiv\phi(\rho\Sigma h+\mathcal E)
\end{aligned}\tag{49}
$$

十分条件 $k_g\Lambda\gt\Theta h$（式(24)）のもとで、$h\gt0$ なので $k_g\Lambda\gt0$、$\Theta h-k_g\Lambda\lt0$。よって $\mathcal B\gt0$、$\mathcal C\lt0$（$\mathcal E\gt0$ を使った）。さらに $h\gt0$、$\mathcal E\gt0$ より $\Xi\gt0$。以下では $\mathcal B\gt0$、$\mathcal C\lt0$ だけを使う（補題A.1）。

**Step 2　$\sigma=1$ の定常値**

$\gamma^{\ast}=\Gamma$、$(1-\tau)r-\gamma^{\ast}=\rho$、$r-\gamma^{\ast}=\Sigma$ を (19)(20) に代入する。

$$
a^{\ast}=\frac{(\Gamma-\tau\omega+\delta_g)k_g+\Sigma\bar b}{\tau r},\qquad
c^{\ast}=\frac{\rho\Sigma\bar b+\{\Gamma\tau\omega+\rho(\Gamma+\delta_g)\}k_g}{\tau r}\tag{50}
$$

**Step 3　特性多項式**（T4）

$$
\chi(s;\psi)\equiv\det(sI+M)=s^3+\mathrm{tr}(M)\,s^2+(\text{$M$ の2次主小行列式の和})\,s+\det M\tag{51}
$$

$\chi(s)=0$ の根は $M$ の固有値の符号を反転したものなので、$\chi$ の正の実部をもつ根の数が $M$ の安定根の数に等しい。

**Step 4　トレース**

$q\,\mathrm{tr}M$ を $\gamma_1q=\tau r$、$\gamma_2q=-(r+\phi)+\Gamma$、(50)、$\psi=q+h$、$\bar b=k_g+h$ で整理する。

$$
q\,\mathrm{tr}M=\Theta q+\mathcal B\tag{52}
$$

（途中：$q\,\mathrm{tr}M=-\phi q+\psi(r+\phi-\Gamma)+\rho q-(\Gamma-\tau\omega+\delta_g)k_g-\Sigma\bar b$。$q$ の係数は $\rho+r-\Gamma=2\rho+\tau r=\Theta$。定数部は $\phi h+k_g(\tau\omega-r-\delta_g)=\mathcal B$。）

**Step 5　2次主小行列式の和**

$M$ の成分を $m_{ij}$ とする。主小行列式は、$(1,2)$ が $m_{11}m_{22}-m_{12}m_{21}=-\phi\rho+\phi\gamma_1a^{\ast}-\psi\rho\gamma_2$、$(1,3)$ が $0$、$(2,3)$ が $-\gamma_1c^{\ast}$。$q$ を掛けて (50) を代入すると

$$
q\,(\text{2次主小行列式の和})=\rho\Sigma q+\mathcal C\tag{53}
$$

（途中：$\tau ra^{\ast}=-k_g\Lambda+\Sigma h$。$q$ の係数は $-\phi\rho+\rho(\Sigma+\phi)=\rho\Sigma$。定数部は $\phi(\Theta h-k_g\Lambda)-\mathcal E=\mathcal C$。）

**Step 6　行列式**

第3列に沿って展開すると $\det M=m_{11}m_{32}-m_{12}m_{31}=\phi\gamma_1c^{\ast}$。$q$ を掛けて (50) を代入すると

$$
q\det M=\phi\tau rc^{\ast}=\Xi\tag{54}
$$

**Step 7　係数のまとめ**

$$
p_1(q)=\frac{\Theta q+\mathcal B}{q},\qquad p_2(q)=\frac{\rho\Sigma q+\mathcal C}{q},\qquad p_3(q)=\frac{\Xi}{q}\tag{55}
$$

$\chi(s;\psi)=s^3+p_1(q)s^2+p_2(q)s+p_3(q)$。$q\neq0$（0で割れない条件）。

**Step 8　ハーヴィッツ行列式**（T5）

$$
p_1p_2-p_3=\frac{\mathcal P(q)}{q^{2}}\tag{56}
$$

$$
\mathcal P(q)\equiv\Theta\rho\Sigma\,q^{2}+(\Theta\mathcal C+\mathcal B\rho\Sigma-\Xi)\,q+\mathcal B\mathcal C\tag{57}
$$

**Step 9　2次式 $\mathcal P$ の根**

$\mathcal P$ の最高次係数 $\Theta\rho\Sigma\gt0$、$\mathcal P(0)=\mathcal B\mathcal C\lt0$ なので、2実根は異符号：$q^{-}_{H}\lt0\lt q^{+}_{H}$。$p_1$ の零点は $q_A=-\mathcal B/\Theta\lt0$。$q_A$ では $p_1q^2=0$ なので $\mathcal P(q_A)=-\Xi q_A\gt0$（$\Xi\gt0$、$q_A\lt0$）。最高次係数が正で $\mathcal P(q_A)\gt0$ かつ $q_A\lt0$ なので $q_A$ は2根の外側にあり、$q_A\lt q^{-}_{H}\lt0\lt q^{+}_{H}$。$\hat{\psi}^{\mp}_{H}\equiv h+q^{\mp}_{H}$ とすれば、$q=\psi-h$ より式(25)を得る。

**Step 10　符号変化の数え上げ**（T5）

Routh配列の第1列は $1,\ p_1,\ \mathcal P/(q^2p_1),\ p_3$。

| 領域 | $p_1$ | $\mathcal P/(q^2p_1)$ | $p_3$ | 符号列 | 変化数＝安定根の数 |
|---|---|---|---|---|---|
| $q\lt q_A$ | $+$ | $+$ | $-$ | $(+,+,+,-)$ | 1 |
| $q_A\lt q\lt q^{-}_{H}$ | $-$ | $-$ | $-$ | $(+,-,-,-)$ | 1 |
| $q^{-}_{H}\lt q\lt0$ | $-$ | $+$ | $-$ | $(+,-,+,-)$ | 3 |
| $0\lt q\lt q^{+}_{H}$ | $+$ | $-$ | $+$ | $(+,+,-,+)$ | 2 |
| $q\gt q^{+}_{H}$ | $+$ | $+$ | $+$ | $(+,+,+,+)$ | 0 |

安定根の数 1 は先決変数の数 2 より少なく、安定多様体が小さすぎて一般的な初期値に対して経路が存在しない。3 は先決変数の数より多く、局所的に不決定。0 は定常状態以外に収束経路がない。

**Step 11　$0\lt q\lt q^{+}_{H}$ でのランク条件**（T6）

安定根は2本で、安定部分空間は2次元。これが $(b,a)$ 座標へランク2で射影されることを示す。射影がランク2に満たなければ、安定部分空間は $(0,0,c)$ 型の非零ベクトルを含む。不変性より $M(0,0,c)^{\top}=(0,-c,0)^{\top}$ も含み、$a$ 軸上の非零ベクトルを含む。これにもう一度 $M$ を作用させると、第1成分は $-\psi\gamma_1$ に非零のスカラーを掛けたものになる。$q\gt0$ かつ $\psi=q+h\gt0$ なので $\gamma_1=\tau r/q\neq0$、$\psi\neq0$ であり、この成分は非零。すると安定部分空間は一次独立な3本のベクトルを含み、2次元という事実に矛盾する。よってランク条件が成り立ち、局所的に決定。

**Step 12　まとめ**

$q=\psi-(\bar b-k_g)$ を戻すと補題A.1、したがって命題1が得られる。系1は $q=\psi-(\bar b-k_g)$ から直ちに従う。

**確認**

(i) $\psi=0$ のとき $q=-h$ で、$M$ の第1行は $(-\phi,0,0)$。固有値の1つが $-\phi$ で、残りは $2\times2$ ブロック $\begin{pmatrix}\rho-\gamma_1a^{\ast}&-1\\-\gamma_1c^{\ast}&0\end{pmatrix}$ のもの。基準値では $\gamma_1\approx-0.0170$、$a^{\ast}\approx-17.31$ より、トレース $\approx-0.284$、行列式 $\approx0.0058$ で、2根とも安定。合計3本の安定根は、$\psi=0$ が不決定の領域にあることと整合する（本記事での検算）。

(ii) 基準値で $\mathcal B\approx0.1272$、$\mathcal C\approx-0.00699$、$\Xi\approx1.02\times10^{-4}$、$\Theta\rho\Sigma=4.16\times10^{-6}$、$\Theta\mathcal C+\mathcal B\rho\Sigma-\Xi\approx-2.63\times10^{-4}$、$\mathcal B\mathcal C\approx-8.89\times10^{-4}$ のとき $\mathcal P(q)=0$ を解くと $q^{-}_{H}\approx-3.216$、$q^{+}_{H}\approx66.48$。$h\approx0.35285$ を足して $\hat{\psi}^{-}_{H}\approx-2.863$、$\hat{\psi}^{+}_{H}\approx66.83$ となり、論文の値と一致する（本記事での検算）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(21)(22)(50) | ヤコビ行列と定常値（$\sigma=1$） |
| T4 | 特性多項式の係数 |
| T5 | Routh-Hurwitz |
| T6 | Blanchard-Kahn条件（ランク条件） |

---

### A.9 離散時間版の推定式（(28)〜(30)）

**Step 1　ルールを離散化する**

(12) を離散時間に直したものが (27)。$\gamma^{\ast}$ は長期成長率 $\bar\gamma$ に置き換える。

**Step 2　厳格ルールの部分を左辺にまとめる**

(27) を $b_t$ について解くと

$$
b_t=(1-\phi)b_{t-1}+\phi\bar b-\psi(\gamma_{t-1}-\bar\gamma)\tag{58}
$$

$(1-\phi)b_{t-1}+\phi\bar b$ を左辺へ移して (28) の $D_t$ を定義すると、(58) は**式(29)** $D_t=-\psi(\gamma_{t-1}-\bar\gamma)$ になる。

**Step 3　推定式へ**

(29) に、$D_{i,t-1}$、国別定数項、債務60%超との交差項を加えたものが**式(30)**。(29) と (30) を比べると $\beta_2=-\psi$（債務60%以下）なので、$\beta_2\lt0$ は $\psi\gt0$ に対応する。

**確認**

$\psi=0$（厳格ルール）なら $D_t=0$。つまり $D_t$ は厳格ルールからの乖離を表す。

| 入力・使う道具 | 内容 |
|---|---|
| 式(12) | 連続時間の債務ルール |
| 代数計算 | 項の移項 |

---

### A.10 決定的な場合の局所経路（複素安定根）

**前提**：$M$ の不安定根を $\kappa\gt0$、安定根を $\lambda\pm i\mu$（$\lambda\lt0$、$\mu\neq0$）とする。$\lambda+i\mu$ の固有ベクトルを $v$ とし、$u\equiv\mathrm{Re}(v)$、$w\equiv\mathrm{Im}(v)$、$\mathbf V\equiv[u\ \ w]$（$3\times2$ 行列）とする。

**Step 1　実数の安定解**（T7）

$$
\begin{pmatrix}b_t-\bar b\\ a_t-a^{\ast}\\ c_t-c^{\ast}\end{pmatrix}
=e^{\lambda t}\,\mathbf V\underbrace{\begin{pmatrix}\cos\mu t&\sin\mu t\\-\sin\mu t&\cos\mu t\end{pmatrix}}_{\text{回転}}\theta,\qquad\theta\equiv\begin{pmatrix}\theta_1\\ \theta_2\end{pmatrix}\tag{59}
$$

**Step 2　初期条件から係数 $\theta$ を決める**

$t=0$ で回転行列は単位行列。$\mathbf V$ の第1・2行（$\mathbf V_{1:2,1:2}$）が先決変数 $(b_0,a_0)$ に対応するので

$$
\theta=(\mathbf V_{1:2,1:2})^{-1}\begin{pmatrix}b_0-\bar b\\ a_0-a^{\ast}\end{pmatrix}\tag{60}
$$

$\mathbf V_{1:2,1:2}$ が正則であることが、A.8 Step 11 で示したBlanchard-Kahnのランク条件。

**Step 3　初期消費**

(59) の第3行で $t=0$ とすると

$$
c_0=c^{\ast}+\mathbf V_{3,1:2}\,\theta\tag{61}
$$

初期消費 $c_0$ が一意に決まる。

**確認**

$\theta=0$（初期状態が定常状態）なら $c_0=c^{\ast}$ で、定常状態にとどまる。

| 入力・使う道具 | 内容 |
|---|---|
| 式(21) | 線形化システム |
| T6, T7 | ランク条件、複素固有値の実解 |

**補遺：負側のホップ分岐**

基準値では、プロット範囲内の負側のホップ点が $\hat{\psi}^{-}_{H}\approx-2.8629915321$ にある。この点で複素固有値の対が虚軸を横切り、第3の固有値は負のまま。ホップ点は、収束経路のない領域と不決定の領域の境界にあたる。第1リャプノフ係数は $\ell_1\approx1.51\times10^{-4}\gt0$ で、劣臨界ホップ分岐（不安定なリミットサイクルが生じる）を示す。決定性の源ではないので、論文の主な解釈の中心ではない。

---

**原論文**：Keiichi Morimoto and Reo Takizawa (2026), "Flexible debt policy rules and equilibrium determinacy in a small open economy"（2026年4月24日版）。原論文の著作権は著者に帰属します。本記事は、その数理モデルを整理した解説です。
{% endraw %}
