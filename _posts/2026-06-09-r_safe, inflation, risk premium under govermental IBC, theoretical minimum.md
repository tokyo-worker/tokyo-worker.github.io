---
layout: post
title: "統合政府IBCにおける安全資産利子率、インフレ率、リスクプレミアムの共同調整の動学最小限モデル"
date: 2026-06-09 00:00:00 +0900
categories: economics
math_scripts:
  - https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/katex.min.js
  - https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/contrib/auto-render.min.js
---


# Dynamic Theoretical Minimum Model: A Micro-founded Identity

## 1. Variable & Parameter List

### Endogenous Variables
- $r_t$: Real risk-free interest rate
- $\pi_t$: Inflation rate ($\pi_t \equiv P_t / P_{t-1} - 1$)
- $\eta_t$: Real asset management spread
- $\tilde{D}_t$: Real net public debt ($\tilde{D}_t \equiv D_t - A_t$)

### Exogenous Variables / Regimes
- $Y_t = Y$: Real GDP (Constant, $Y > 0$)
- $G_t = G$: Real government spending (Constant, $G > 0$)
- $A_t$: Real public financial assets ($A_t = (1+g_A)A_{t-1}$, $g_A \ge 0$)
- $R^K_t$: Real return on private risky assets ($\mathbb{E}_t[R^K_{t+1}] = \bar{R}^K$)

### Functional Forms & Parameters
- $\beta \in (0,1)$: Household's subjective discount factor
- $\sigma > 0$: Coefficient of relative risk aversion
- $\bar{\rho} > 0$: Structural risk premium ($\bar{\rho} \equiv \sigma \cdot \text{Cov}(u'(C), R^K)$)
- $T(\pi_t)$: Real tax revenue function ($T'(0) > 0, T''(\pi_t) < 0$)

---

## 2. Structural Equations & General Equilibrium Conditions

### [Eq. 1] Consolidated Government Flow Budget Constraint
$$\tilde{D}_t = (1+r_{t-1})\tilde{D}_{t-1} + G - T(\pi_t) - \eta_t A_{t-1}$$

### [Eq. 2] Household Euler Equation
$$1 = \beta \mathbb{E}_t \left[ (1+r_t) \left(\frac{C_{t+1}}{C_t}\right)^{-\sigma} \right]$$
Market clearing ($C_t = Y - G$) implies:
$$r_t = \frac{1}{\beta} - 1 \equiv r \quad (\forall t)$$

### [Eq. 3] Risk-Asset Pricing Condition
$$\eta_t \equiv \mathbb{E}_{t-1}[R^K_t] - r_{t-1} - \rho_{t-1}$$
Micro-foundations isolate the premium $\rho_t = \bar{\rho}$, locking the spread to:
$$\eta_t = \bar{R}^K - r - \bar{\rho} \equiv \eta \quad (\forall t)$$

---

## 3. Dynamic Forward Expansion & TVC-Driven Identity

Substituting [Eq. 2] and [Eq. 3] into [Eq. 1]:
$$\tilde{D}_t = (1+r)\tilde{D}_{t-1} + G - T(\pi_t) - \eta A_{t-1}$$

Forward iteration from $t$ to $t+T$ yields:
$$\tilde{D}_{t-1} = \sum_{j=0}^{T} \frac{T(\pi_{t+j}) - G}{(1+r)^{j+1}} + \sum_{j=0}^{T} \frac{\eta A_{t+j-1}}{(1+r)^{j+1}} + \frac{\tilde{D}_{t+T}}{(1+r)^{T+1}}$$

Imposing the Non-Explosion Transversality Condition ($\lim_{T \to \infty} \frac{\tilde{D}_{t+T}}{(1+r)^{T+1}} = 0$), we obtain the Intertemporal Budget Constraint (IBC) Identity:

$$\tilde{D}_{t-1} = \sum_{j=0}^{\infty} \frac{T(\pi_{t+j}) - G}{(1+r)^{j+1}} + \sum_{j=0}^{\infty} \frac{\eta A_{t+j-1}}{(1+r)^{j+1}}$$

Given $\tilde{D}_{t-1} \equiv \frac{D_{t-2} - A_{t-2}}{1 + \pi_{t-1}}$, the current inflation rate $\pi_{t-1}$ is uniquely determined as a forward-looking jump variable.


# 統合政府IBCにおける3変数共同調整の動学最小限モデル

## 1. 変数・パラメータの定義

本モデルは、プレーンRBC由来の「資本蓄積」や「労働供給」といった内生的動学ノイズを完全に削ぎ落とし、財政の持続可能性と価格決定メカニズムのコアのみを抽出した無限期間動学モデル（Theoretical Minimum）である。

### 内生変数（Endogenous Variables）
- $r_t$: 実質無リスク金利（債務利払いおよび将来価値の割引率）
- $\pi_t$: インフレ率（名目価格を実質化するマクロ調整弁。 $\pi_t \equiv P_t / P_{t-1} - 1$）
- $\eta_t$: 公的金融資産の実質運用スプレッド（国債金利に対する超過収益率）
- $\tilde{D}_t$: 統合政府の実質純債務（ストック状態変数。 $\tilde{D}_t \equiv D_t - A_t$）

### 外生変数・政策レジーム（Exogenous Variables / Regimes）
- $Y_t = Y$: 実質GDP（完全に一定と仮定、 $Y > 0$）
- $G_t = G$: 実質政府支出（恒常的な政府の義務的支出、 $G > 0$）
- $A_t$: 実質公的金融資産の規模（政府の資産運用規模。政策ルールとして $A_t = (1+g_A)A_{t-1}$ に従う）
- $R^K_t$: 民間リスク資産の実質リターン（期待値 $\mathbb{E}_t[R^K_{t+1}] = \bar{R}^K$ の定常確率過程）

### 構造パラメータおよび関数形（Parameters & Functions）
- $\beta \in (0,1)$: 家計の主観的割引因子（我慢強さ）
- $\sigma > 0$: 相対的危険回避度
- $\bar{\rho} > 0$: 構造的リスクプレミアム（家計のSDFと民間リターンの共分散より決定）
- $T(\pi_t)$: 実質税収関数。インフレに対して非線形であり、ラッファー曲線的な性質（Olivera-Tanzi効果）を持つ（ $T'(0) > 0, T''(\pi_t) < 0$）。

---

## 2. 構造方程式と一般均衡条件（システムの一意ピン留め）

通常、政府の予算制約式1本に対して末決定の変数が複数存在すると解は無数に存在する（未決定性）。本モデルでは、他セクターの一般均衡清算条件（ミクロ的基礎づけ）を課すことで、変数と方程式の数を1対1で一致させる。

### ① 統合政府の単年度（フロー）予算制約式
政府は、過去の純債務の元利払いを、当期の税収、および資産 $A_{t-1}$ から得られる運用スプレッド $\eta_t$ によってファイナンスする。
$$\tilde{D}_t = (1+r_{t-1})\tilde{D}_{t-1} + G - T(\pi_t) - \eta_t A_{t-1}$$

### ② 家計のオイラー方程式 $\longrightarrow r_t$ の一意決定
代表的家計の消費の異時点間最適化条件より、オイラー方程式 $1 = \beta \mathbb{E}_t [ (1+r_t) (C_{t+1}/C_t)^{-\sigma} ]$ が成立する。財市場の清算条件（資源制約） $C_t = Y - G$ より消費は毎期一定となるため、実質安全金利 $r_t$ は時間選好率に完全にピン留めされる。
$$r_t = \frac{1}{\beta} - 1 \equiv r \quad (\forall t)$$

### ③ リスク資産の価格評価条件 $\longrightarrow \eta_t$ の一意決定
運用スプレッド $\eta_t$ は、市場のリスクプレミアム $\rho_t$ と資本の限界生産力（民間リターン期待値）によって規定される。家計の資産選択条件から、プレミアムは実物側の構造定数 $\bar{\rho}$ として決定されるため、スプレッドもまた財政セクターから独立して一意に固定される。
$$\eta_t = \bar{R}^K - r - \bar{\rho} \equiv \eta \quad (\forall t)$$

---

## 3. 動学的前方展開と通時的予算制約式（IBC）の導出

上記②、③の均衡固定条件を①のフロー予算制約式に代入すると、システムはインフレ率 $\pi_t$ のみを未知数とする単一の確率差分方程式に収縮する。
$$\tilde{D}_t = (1+r)\tilde{D}_{t-1} + G - T(\pi_t) - \eta A_{t-1}$$

この式を現時点 $t$ から将来 $t+T$ まで再帰的に前方展開（Forward iteration）を行う。
$$\tilde{D}_{t-1} = \sum_{j=0}^{T} \frac{T(\pi_{t+j}) - G}{(1+r)^{j+1}} + \sum_{j=0}^{T} \frac{\eta A_{t+j-1}}{(1+r)^{j+1}} + \frac{\tilde{D}_{t+T}}{(1+r)^{T+1}}$$

政府のポンジ・スキームを禁止する「負債側の横断性条件（ $\lim_{T \to \infty} \frac{\tilde{D}_{t+T}}{(1+r)^{T+1}} = 0$ ）」を課すことで、極限において以下の**動学版・通時的予算制約式（IBC）**が導出される。

$$\tilde{D}_{t-1} = \sum_{j=0}^{\infty} \frac{T(\pi_{t+j}) - G}{(1+r)^{j+1}} + \sum_{j=0}^{\infty} \frac{\eta A_{t+j-1}}{(1+r)^{j+1}}$$

---

## 4. 理論的含意とコア・メッセージの証明



### 核心：増税（$T$）と運用収益（$\eta A$）の通時的完全代替性
政府が一切の増税を行わず、基礎的財政収支が恒常的に赤字（ $T(\pi) - G < 0$ ）であるレジームを選択したとする。このとき、上式の右辺第1項（税収の現在価値）はマイナスとなる。

しかし、右辺第2項の「公的金融資産の運用スプレッド収益の現在価値総和」が、その構造的赤字を完全に相殺する規模（ $\eta > 0$ かつ十分な資産規模 $A_t$ ）を持っていれば、**等号（財政の持続可能性）は一般均衡として完全に成立する。**
数学的には、実質金利 $r$ とスプレッド $\eta$ が実物側から固定されているため、過去の名目負債ストックを含んだ左辺 $\tilde{D}_{t-1} \equiv \frac{D_{t-2}-A_{t-2}}{1+\pi_{t-1}}$ に対し、**この等式をジャストで満たす現期のインフレ率 $\pi_{t-1}$ がフォワード・ルッキングに一意の均衡解として決定される。**

### 境界条件：OT暴走（ケースC）による代替性の崩壊
この増税なき運用ファイナンスの代替性は、インフレ率が臨界点 $\pi^*$ を超えない範囲でのみ復元力（調整力）を持つ。政府が資産運用の原資として過剰な国債・通貨発行を行い、システムが $\pi_t > \pi^*$ の領域に突入した場合、以下の一般均衡の破綻チャンネルが非対称に作動する。

1. **オリベラ＝タンジ（OT）効果による税収消滅:** 徴税ラグの侵食により、 $T(\pi_t)$ が急落し、右辺第1項の赤字幅が制御不能に拡大する。
2. **名目不確実性によるスプレッド $\eta$ の消失:** ハイパーインフレによるマクロ経済の価格シグナルの破壊は、民間リスクリターンの逼迫と家計のリスク回避度（危険回避度 $\sigma$）の急騰を招き、政府の運用スプレッド $\eta$ を消失・マイナス化させる。

結果として、3変数の安定的調整による均衡の復元軌道（サドルパス）が完全に喪失し、等号を満たす物価水準が存在しなくなる。すなわち、**「増税」と「公的運用」の代替性は、インフレが臨界点を超えないレジーム内でのみ成立する限定的選択肢である**ことが数理的に証明される。