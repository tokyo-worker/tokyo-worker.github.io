---
layout: post
title: "統合政府IBCモデルにおけるリスク資産価格評価条件（式4）の数理的ミクロ基礎づけ"
date: 2026-06-10 01:00:00 +0900
categories: economics
---

# Micro-foundations of the Risk-Asset Pricing Condition: A Theoretical Minimum

## 1. Model Core & Step-by-Step Derivation

### [Step 1] Canonical Euler Equations & Stochastic Discount Factor (SDF)

The utility-maximizing representative household optimizes its intertemporal asset portfolio. At the margin, the household must be indifferent between investing in the real risk-free asset ($r_{t-1}$) and the private risky asset ($R^K_t$):

$$1 = \mathbb{E}_{t-1} \left[ M_t (1 + r_{t-1}) \right] \tag{A.1}$$

$$1 = \mathbb{E}_{t-1} \left[ M_t (1 + R^K_t) \right] \tag{A.2}$$

where $M_t$ is the household's marginal rate of substitution (Stochastic Discount Factor), defined by the consumption path and the coefficient of relative risk aversion $\sigma$:

$$M_t \equiv \beta \left( \frac{C_t}{C_{t-1}} \right)^{-\sigma}$$

### [Step 2] Covariance Decomposition

Applying the statistical identity $\mathbb{E}[XY] = \mathbb{E}[X]\mathbb{E}[Y] + \text{Cov}(X,Y)$ to [Eq. A.2]:

$$1 = \mathbb{E}_{t-1}[M_t] \cdot \mathbb{E}_{t-1}[1 + R^K_t] + \text{Cov}_{t-1}(M_t, 1 + R^K_t)$$

Since the risk-free rate $r_{t-1}$ is predetermined and known at $t-1$, [Eq. A.1] isolates the expected SDF as $\mathbb{E}_{t-1}[M_t] = \frac{1}{1 + r_{t-1}}$. Substituting this into the decomposed equation:

$$1 = \frac{1}{1 + r_{t-1}} \mathbb{E}_{t-1}[1 + R^K_t] + \text{Cov}_{t-1}(M_t, R^K_t)$$

### [Step 3] Isolating the Expected Return

Multiplying both sides by $(1 + r_{t-1})$ to eliminate the fraction:

$$1 + r_{t-1} = \mathbb{E}_{t-1}[1 + R^K_t] + (1 + r_{t-1})\text{Cov}_{t-1}(M_t, R^K_t)$$

$$r_{t-1} = \mathbb{E}_{t-1}[R^K_t] + (1 + r_{t-1})\text{Cov}_{t-1}(M_t, R^K_t)$$

Solving for the expected return on the private risky asset $\mathbb{E}_{t-1}[R^K_t]$:

$$\mathbb{E}_{t-1}[R^K_t] = r_{t-1} - (1 + r_{t-1})\text{Cov}_{t-1}(M_t, R^K_t) \tag{A.3}$$

### [Step 4] Definition of the Macroeconomic Risk Premium & Asset Spread

We formally define the structural macroeconomic risk premium $\bar{\rho}_{t-1}$ and the government's real asset management spread $\eta_t$ as:

$$\bar{\rho}_{t-1} \equiv - (1 + r_{t-1})\text{Cov}_{t-1}(M_t, R^K_t) \tag{A.4}$$

$$\eta_t \equiv \mathbb{E}_{t-1}[R^K_t] - r_{t-1} - \bar{\rho}_{t-1} \tag{A.5}$$

---

## 2. 数理的導出のブレイクダウンと経済学的解釈

モデル内の**式(4)（リスク資産の価格評価条件）**は、金融経済学の基盤である「確率的割引因子（SDF）の理論」および家計の投資行動の最適化（最適ポートフォリオ選択）の帰結として直接導出される均衡条件である。以下にその数理的ギャップを補完する詳細な解説を展開する。

### ① オイラー方程式と限界代替率（Step 1）

家計は、手元にある1単位の消費を我慢して「無リスク資産（国債）」に投資することも、「民間リスク資産（株式や生産資本）」に投資することも自由に選択できる。家計が最適化行動をとった結果、これら2つの資産に対してオイラー方程式（[Eq. A.1], [Eq. A.2]）が同時に成立しなければならない。

ここで $M_t$ は限界代替率（SDF）であり、家計の効用関数（相対的危険回避度 $\sigma$）から消費の伸び率の関数として定義される。

### ② 共分散の性質を用いた展開（Step 2 & 3）

民間リスク資産の条件（[Eq. A.2]）に対し、確率変数の積の期待値に関する性質 $\mathbb{E}[XY] = \mathbb{E}[X]\mathbb{E}[Y] + \text{Cov}(X,Y)$ を適用して展開を行う。

無リスク金利 $r_{t-1}$ は $t-1$ 期時点で既知の確定値であるため、[Eq. A.1] より $\mathbb{E}_{t-1}[M_t] = \frac{1}{1 + r_{t-1}}$ となる。これを代入して民間リスク資産の「期待リターン $\mathbb{E}_{t-1}[R^K_t]$」について整理することで、以下の関係式が導かれる。

$$\mathbb{E}_{t-1}[R^K_t] = r_{t-1} - (1 + r_{t-1})\text{Cov}_{t-1}(M_t, R^K_t)$$

### ③ リスクプレミアム $\bar{\rho}_{t-1}$ の経済学的符号（Step 4）

上式の右辺第2項（共分散のパート）に注目する。通常、景気が良い（消費 $C_t$ が大きい）ときには、限界効用およびSDF（$M_t \propto C_t^{-\sigma}$）は小さくなる。一方で、景気が良いときは民間リスク資産のリターン $R^K_t$ は高くなる。したがって、両者の条件付き共分散は**負（マイナス）**になる。

$$\text{Cov}_{t-1}(M_t, R^K_t) < 0$$

家計は「景気が悪いときに一緒にリターンが下がってしまう不確実性（マクロ経済リスク）」を嫌うため、そのリスクを引き受ける分だけ上乗せの報酬（プレミアム）を要求する。この不確実性のコストをマクロ経済のリスクプレミアム $\bar{\rho}_{t-1}$（[Eq. A.4]）として正の符号（ $\bar{\rho}_{t-1} > 0$ ）で定義することで、一般化された資本資産価格モデル（CAPM）が導出される。

$$\mathbb{E}_{t-1}[R^K_t] = r_{t-1} + \bar{\rho}_{t-1}$$

### ④ 統合政府の運用スプレッド $\eta_t$ への帰結

公的金融資産の実質運用スプレッド $\eta_t$ は、市場で実現した民間リターン $R^K_t$ から政府の調達金利（無リスク金利）$r_{t-1}$ を差し引いた超過リターンとして評価される。しかし、政府が民間リスク資産を保有することは、上記の「家計が直面しているマクロ経済リスク（共分散リスク）」を政府（ひいては納税者である家計全体）が同様に引き受けることを意味する。

したがって、「市場全体の期待超過リターン」から「不確実性の引き受けコスト（プレミアム）」を厳密に差し引いた、純粋な経済学的付加価値（アルファ）を定義するために、あらかじめプレミアムを控除した形（[Eq. A.5]）でアイデンティティが構築されている。

### ⑤ レジーム移行の動学（定常からOT暴走へ）

インフレが安定的（ $\pi_t \le \pi^*$ ）な通常レジーム（ケースA/B）では、市場が効率的に機能しているため、期待リターンがちょうどリスクに見合った分だけ調達金利を上回り、スプレッド $\eta_t$ は実物側の構造定数 $\eta$ にきれいにピン留めされる（ $\eta = \bar{R}^K - r - \bar{\rho}$ ）。

しかし、第5節の「ケースC（OT暴走）」に突入すると、名目の不確実性によって家計のSDFとリターンの共分散が爆発し、リスクプレミアムが無限大へ発散（ $\bar{\rho}_{t-1} \to \infty$ ）を始める。結果として、政府が期待できる純スプレッド $\eta_t$ がマイナスへと転落し、増税なき運用ファイナンスの持続可能性が内生的に崩壊する動学ストーリーへと繋がっている。
