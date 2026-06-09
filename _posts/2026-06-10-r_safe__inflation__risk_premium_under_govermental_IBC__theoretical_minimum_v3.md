---
layout: post
title: "統合政府IBCにおける安全資産利子率、インフレ率、リスクプレミアムの共同調整の動学最小限モデル v3"
date: 2026-06-10 00:00:00 +0900
categories: economics
---



# Dynamic Theoretical Minimum Model: A Micro-founded Identity

## 1. Variable & Parameter List

### Endogenous Variables
- $r_t$: Real risk-free interest rate
- $\pi_t$: Inflation rate ($\pi_t \equiv P_t / P_{t-1} - 1$)
- $\eta_t$: Real asset management spread
- $\tilde{D}_t$: Real net public debt ($\tilde{D}_t \equiv D_t - A_t$)

### Exogenous Variables, Parameters & Policy Constants
- $Y_t = Y$: Real GDP (Constant, $Y > 0$)
- $G_t = G$: Real government spending (Constant, $G > 0$)
- $A_t$: Real public financial assets ($A_t = (1+g_A)A_{t-1}$)
- $g_A$: Exogenous structural growth rate of real public financial assets ($g_A \ge 0$)
- $R^K_t$: Real return on private risky assets ($\mathbb{E}_t[R^K_{t+1}] = \bar{R}^K$)
- $\beta \in (0,1)$: Household's subjective discount factor
- $\sigma > 0$: Coefficient of relative risk aversion
- $\bar{\rho}_t$: Macroeconomic risk premium ($\bar{\rho}_t \equiv \sigma \cdot \text{Cov}_t(u'(C_{t+1})/u'(C_t), R^K_{t+1})$)
- $\pi^*$: Critical threshold of inflation rate ($\pi^* > 0$)

### Functional Forms
- $T(\pi_t)$: Real tax revenue function ($T'(0) > 0, T''(\pi_t) < 0$)

---

## 2. Structural Equations & General Equilibrium Conditions

### [Eq. 1] Consolidated Government Flow Budget Constraint
$$\tilde{D}_t = (1+r_{t-1})\tilde{D}_{t-1} + G - T(\pi_t) - \eta_t A_{t-1}$$

### [Eq. 2] Household Euler Equation
$$1 = \beta \mathbb{E}_t \left[ (1+r_t) \left(\frac{C_{t+1}}{C_t}\right)^{-\sigma} \right]$$

Market clearing ($C_t = Y - G$) maps [Eq. 2] into a constant risk-free rate:
### [Eq. 3] Capital-Market Pinning Condition
$$r_t = \frac{1}{\beta} - 1 \equiv r \quad (\forall t)$$

### [Eq. 4] Risk-Asset Pricing Condition
$$\eta_t \equiv \mathbb{E}_{t-1}[R^K_t] - r_{t-1} - \bar{\rho}_{t-1}$$

Micro-foundations under price stability isolate the structural premium $\bar{\rho}_t = \bar{\rho}$, locking the spread to:
### [Eq. 5] Asset-Spread Pinning Condition
$$\eta_t = \bar{R}^K - r - \bar{\rho} \equiv \eta \quad (\forall t)$$

---

## 3. Dynamic Forward Expansion & TVC-Driven Identity

Substituting [Eq. 3] and [Eq. 5] into [Eq. 1]:
### [Eq. 6] System Law of Motion
$$\tilde{D}_t = (1+r)\tilde{D}_{t-1} + G - T(\pi_t) - \eta A_{t-1}$$

Forward iteration of [Eq. 6] from $t$ to $t+T$ yields:
### [Eq. 7] Finite-Horizon IBC
$$\tilde{D}_{t-1} = \sum_{j=0}^{T} \frac{T(\pi_{t+j}) - G}{(1+r)^{j+1}} + \sum_{j=0}^{T} \frac{\eta A_{t+j-1}}{(1+r)^j} + \frac{\tilde{D}_{t+T}}{(1+r)^{T+1}}$$

Imposing the Non-Explosion Transversality Condition ($\lim_{T \to \infty} \frac{\tilde{D}_{t+T}}{(1+r)^{T+1}} = 0$), we obtain the Intertemporal Budget Constraint (IBC) Identity:

### [Eq. 8] Infinite-Horizon IBC Identity
$$\tilde{D}_{t-1} = \sum_{j=0}^{\infty} \frac{T(\pi_{t+j}) - G}{(1+r)^{j+1}} + \sum_{j=0}^{\infty} \frac{\eta A_{t+j-1}}{(1+r)^j}$$

Given $\tilde{D}_{t-1} \equiv \frac{D_{t-2} - A_{t-2}}{1 + \pi_{t-1}}$, the current inflation rate $\pi_{t-1}$ is uniquely determined as a forward-looking jump variable under the boundary condition $\pi_t \le \pi^*$.

---

## 4. Boundary Condition: Olivera-Tanzi (OT) Collapse (Case C)

The dynamic asset-tax substitutability established in [Eq. 8] breaks down under a regime shift driven by hyperinflation. The real revenue and spread dynamics are bounded by:

### [Eq. 9] Tax Function Bounded by Critical Inflation
$$T(\pi_t) = \begin{cases} T_{\max} & \text{if } \pi_t = \pi^* \\ \to 0 & \text{if } \pi_t > \pi^* \quad \text{(Olivera-Tanzi Effect Dominance)} \end{cases}$$

### [Eq. 10] Structural Collapse of Management Spread
$$\lim_{\pi_t \to \infty} \eta(\pi_t) \le 0 \quad \because \lim_{\pi_t \to \infty} \bar{\rho}_t(\pi_t) = \infty$$

When $\pi_t > \pi^*$, the right-hand side of [Eq. 8] contracts toward negative infinity, destroying the existence of a stable saddle path solution (BK condition failure).





# 統合政府IBCにおける3変数共同調整の動学最小限モデル

## 1. 変数・パラメータの定義

本モデルは、プレーンRBC由来の「資本蓄積」や「労働供給」といった内生的動学ノイズを完全に削ぎ落とし、財政の持続可能性と価格決定メカニズムのコアのみを抽出した無限期間動学モデル（Theoretical Minimum）である。

### 内生変数（Endogenous Variables）
- $r_t$: 実質無リスク金利（債務利払いおよび将来価値の割引率）
- $\pi_t$: インフレ率（名目価格を実質化するマクロ調整弁。 $\pi_t \equiv P_t / P_{t-1} - 1$）
- $\eta_t$: 公的金融資産の実質運用スプレッド（国債金利に対する超過収益率）
- $\tilde{D}_t$: 統合政府の実質純債務（ストック状態変数。 $\tilde{D}_t \equiv D_t - A_t$）

### 外生変数・政策パラメータ（Exogenous Variables & Policy Parameters）
- $Y_t = Y$: 実質GDP（完全に一定と仮定、 $Y > 0$）
- $G_t = G$: 実質政府支出（恒常的な政府の義務的支出、 $G > 0$）
- $A_t$: 実質公的金融資産の規模（政府の資産運用規模）
- $g_A$: 実質公的金融資産の外生的・構造的成長率（政策定数。 $A_t = (1+g_A)A_{t-1}$ を規定する）
- $R^K_t$: 民間リスク資産の実質リターン（期待値 $\mathbb{E}_t[R^K_{t+1}] = \bar{R}^K$ の定常確率過程）

### 構造パラメータおよび関数形（Parameters & Functions）
- $\beta \in (0,1)$: 家計の主観的割引因子（時間選好率）
- $\sigma > 0$: 相対的危険回避度（家計のリスク嫌悪の度合い）
- $\bar{\rho}_t$: マクロ経済のリスクプレミアム（家計のSDFと民間リターンの共分散構造）
- $\pi^*$: 臨界閾値（実質税収 $T(\pi)$ がピーク（ラッファー曲線の頂点）に達し、かつ運用スプレッド $\eta$ が正を維持できる上限インフレ率。この閾値を超えると両者が同時に崩壊する、$\pi^* > 0$）
- $T(\pi_t)$: 実質税収関数。インフレに対して非線形であり、ラッファー曲線的な性質（Olivera-Tanzi効果）を持つ（ $T'(0) > 0, T''(\pi_t) < 0$）。

#### 【注記】資産成長率 $g_A$ の位置づけについて
$g_A$ は政府の運用資産 $A_t$ の拡大ペースをコントロールする「政策的・構造的な外生定数」であるため、モデル内で決定される内生変数リストではなく、外生・政策パラメータのリストに含める。資産側TVCが充足されるためには、長期的に $g_A < r$（実質安全金利未満）が課される必要がある。

---

## 2. 構造方程式と一般均衡条件（システムの一意ピン留め）

通常、政府の予算制約式1本に対して未決定の変数が複数存在すると解は無数に存在する（未決定性）。本モデルでは、他セクターの一般均衡清算条件（ミクロ的基礎づけ）を課すことで、変数と方程式の数を1対1で一致させる。

### ① 統合政府の単年度（フロー）予算制約式
政府は、過去の純債務の元利払いを、当期の税収、および資産 $A_{t-1}$ から得られる運用スプレッド $\eta_t$ によってファイナンスする。
$$\tilde{D}_t = (1+r_{t-1})\tilde{D}_{t-1} + G - T(\pi_t) - \eta_t A_{t-1} \tag{1}$$

### ② 家計のオイラー方程式 $\longrightarrow r_t$ の一意決定
代表的家計の消費の異時点間最適化条件より、以下のオイラー方程式が成立する。
$$1 = \beta \mathbb{E}_t \left[ (1+r_t) \left(\frac{C_{t+1}}{C_t}\right)^{-\sigma} \right] \tag{2}$$
ここで財市場の清算条件（資源制約）より消費は毎期一意に定常状態（ $C_t = C_{t+1} = Y - G$ ）となるため、実質安全金利 $r_t$ は時間選好率に完全にピン留め（定数化）される。
$$r_t = \frac{1}{\beta} - 1 \equiv r \quad (\forall t) \tag{3}$$

### ③ リスク資産の価格評価条件 $\longrightarrow \eta_t$ の一意決定
運用スプレッド $\eta_t$ は、市場のリスクプレミアム $\bar{\rho}_{t-1}$ と資本の限界生産力（民間リターン期待値）の差分によって規定される。
$$\eta_t \equiv \mathbb{E}_{t-1}[R^K_t] - r_{t-1} - \bar{\rho}_{t-1} \tag{4}$$
通常、インフレが安定的（ $\pi_t \le \pi^*$ ）なレジームでは、プレミアムは実物側の構造定数 $\bar{\rho}_t = \bar{\rho}$ として一意に決定されるため、スプレッドもまた財政セクターから独立して固定される。
$$\eta_t = \bar{R}^K - r - \bar{\rho} \equiv \eta \quad (\forall t) \tag{5}$$

---

## 3. 動学的前方展開と通時的予算制約式（IBC）の導出

上記式(3)、式(5)の均衡固定条件を式(1)のフロー予算制約式に代入すると、システムはインフレ率 $\pi_t$ のみを未知数とする単一の確率差分方程式に収縮する。
$$\tilde{D}_t = (1+r)\tilde{D}_{t-1} + G - T(\pi_t) - \eta A_{t-1} \tag{6}$$

この式(6)を現時点 $t$ から将来 $t+T$ まで再帰的に前方展開（Forward iteration）を行う。この際、運用益 $\eta A_{t+j-1}$ にかかる割引期間は、負債ストックおよび税収フローと異なり1期短くなる（ $j$ 期分の割引となる）点に留意されたい。
$$\tilde{D}_{t-1} = \sum_{j=0}^{T} \frac{T(\pi_{t+j}) - G}{(1+r)^{j+1}} + \sum_{j=0}^{T} \frac{\eta A_{t+j-1}}{(1+r)^j} + \frac{\tilde{D}_{t+T}}{(1+r)^{T+1}} \tag{7}$$

政府のポンジ・スキームを禁止する「負債側の横断性条件（ $\lim_{T \to \infty} \frac{\tilde{D}_{t+T}}{(1+r)^{T+1}} = 0$ ）」を課すことで、極限において以下の**動学版・通時的予算制約式（IBC）**が導出される。

$$\tilde{D}_{t-1} = \sum_{j=0}^{\infty} \frac{T(\pi_{t+j}) - G}{(1+r)^{j+1}} + \sum_{j=0}^{\infty} \frac{\eta A_{t+j-1}}{(1+r)^j} \tag{8}$$

---

## 4. 理論的含意とコア・メッセージの証明

### 核心：増税（$T$）と運用収益（$\eta A$）の通時的完全代替性
政府が一切の増税を行わず、基礎的財政収支が恒常的に赤字（ $T(\pi) - G < 0$ ）であるレジームを選択したとする。このとき、式(8)の右辺第1項（税収の現在価値）はマイナスとなる。

しかし、右辺第2項の「公的金融資産の運用スプレッド収益の現在価値総和」が、その構造的赤字を完全に相殺する規模（ $\eta > 0$ かつ十分な資産規模 $A_t$ ）を持っていれば、**等号（財政の持続可能性）は一般均衡として完全に成立する。**
数学的には、実質金利 $r$ とスプレッド $\eta$ が実物側から固定されているため、過去の名目負債ストックを含んだ左辺 $\tilde{D}_{t-1} \equiv \frac{D_{t-2}-A_{t-2}}{1+\pi_{t-1}}$ に対し、**この等式をジャストで満たす現期のインフレ率 $\pi_{t-1}$ がフォワード・ルッキングに一意の均衡解として決定される。**

---

## 5. 境界条件：OT暴走（ケースC）による代替性の崩壊

本モデルにおける最大の理論的境界線が、インフレ率が臨界閾値 $\pi^*$ を超えることで発生する「**OT暴走（ケースC）**」のレジーム移行である。この領域では、上記で証明された増税なき運用ファイナンスの代替性が完全に崩壊する。その数理的メカニズムは以下の2つの独立したチャンネルから説明される。

### ① オリベラ＝タンジ（OT）効果による実質税収の消滅
実質税収関数 $T(\pi_t)$ は、インフレがマイルドな領域（ $\pi_t \le \pi^*$ ）では名目課税ベースの拡大（ブラケット・クリープ効果）によって増加するが、インフレが臨界点を超えて激化（ $\pi_t > \pi^*$ ）すると、政府の徴税タイムラグによる実質価値の侵食（オリベラ＝タンジ効果）が急速に支配的となる。
$$T(\pi_t) \to 0 \quad \text{as} \quad \pi_t > \pi^* \tag{9}$$
これにより、式(8)の右辺第1項の赤字幅（ $G - T(\pi_t)$ ）が制御不能な速度で拡大する。

### ② 名目不確実性による運用スプレッド $\eta$ の消失
インフレが $\pi^*$ を超えて制御不能（暴走）になると、マクロ経済の価格シグナルが完全に破壊され、購買力の急激な低下に伴い民間市場のボラティリティが跳ね上がる。結果として、定数であったはずのリスクプレミアム $\bar{\rho}_t$ が内生的に無限大へ発散を始める。
式(5)（ $\eta_t = \bar{R}^K - r - \bar{\rho}_t$ ）より、不確実性の高まりはプレミアムの爆発（ $\bar{\rho}_t \to \infty$ ）を意味するため、政府の運用利ざやであるスプレッド $\eta_t$ はマイナス、あるいは完全に消滅する。
$$\eta(\pi_t) \le 0 \quad \text{as} \quad \pi_t > \pi^* \tag{10}$$

### 結論
インフレ率が $\pi_t > \pi^*$ の領域に突入した「ケースC（OT暴走）」においては、式(8)の右辺第1項（税収）が枯渇する一方で、赤字を補填すべき第2項（運用益）も同時にゼロへと叩き落とされる。
結果として、3変数の安定的調整による均衡の復元軌道（サドルパス：Blanchard-Kahn条件）が完全に喪失し、予算制約を満たす解が存在しなくなる。すなわち、**「増税」と「公的運用」の代替性は、インフレを臨界閾値 $\pi^*$ 以内に抑え込めるレジーム内でのみ成立する限定的な選択肢である**ことが数理的に立証される。