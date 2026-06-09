\---

layout: post

title: "統合政府IBCモデルにおけるリスク資産価格評価条件（式4）の数理的ミクロ基礎づけ"

date: 2026-06-10 01:00:00 +0900

categories: economics

\---



\# Micro-foundations of the Risk-Asset Pricing Condition: A Theoretical Minimum



\## 1. Model Core \& Mathematical Derivation



\### Household's Stochastic Discount Factor (SDF)

Let $M\_{t}$ be the household's intertemporal marginal rate of substitution (Stochastic Discount Factor). Under a constant consumption path $C\_t = C\_{t+1} = Y - G$ induced by market-clearing, $M\_t$ collapses to the household's subjective discount factor $\\beta$:

$$M\_t \\equiv \\beta \\left( \\frac{C\_t}{C\_{t-1}} \\right)^{-\\sigma} \\implies \\mathbb{E}\_{t-1}\[M\_t] = \\beta$$



\### Canonical Euler Equations

The utility-maximizing representative household must be indifferent at the margin between investing in the real risk-free asset ($r\_{t-1}$) and the private risky asset ($R^K\_t$):

$$1 = \\mathbb{E}\_{t-1} \\left\[ M\_t (1 + r\_{t-1}) \\right] \\tag{A.1}$$

$$1 = \\mathbb{E}\_{t-1} \\left\[ M\_t (1 + R^K\_t) \\right] \\tag{A.2}$$



\### Covariance Decomposition of the Risky Asset

Applying the identity $\\mathbb{E}\[XY] = \\mathbb{E}\[X]\\mathbb{E}\[Y] + \\text{Cov}(X,Y)$ to the risky Euler equation (A.2):

$$1 = \\mathbb{E}\_{t-1}\[M\_t] \\cdot \\mathbb{E}\_{t-1}\[1 + R^K\_t] + \\text{Cov}\_{t-1}(M\_t, 1 + R^K\_t)$$



Substituting $\\mathbb{E}\_{t-1}\[M\_t] = \\frac{1}{1 + r\_{t-1}}$ from (A.1) yields:

$$1 = \\frac{1}{1 + r\_{t-1}} \\mathbb{E}\_{t-1}\[1 + R^K\_t] + \\text{Cov}\_{t-1}(M\_t, R^K\_t)$$



Multiplying both sides by $(1 + r\_{t-1})$ and isolating the expected return $\\mathbb{E}\_{t-1}\[R^K\_t]$:

$$\\mathbb{E}\_{t-1}\[R^K\_t] = r\_{t-1} - (1 + r\_{t-1})\\text{Cov}\_{t-1}(M\_t, R^K\_t) \\tag{A.3}$$



\### Definition of the Macroeconomic Risk Premium \& Asset Spread

We formally define the structural macroeconomic risk premium $\\bar{\\rho}\_{t-1}$ and the government's real asset management spread $\\eta\_t$ as:

$$\\bar{\\rho}\_{t-1} \\equiv - (1 + r\_{t-1})\\text{Cov}\_{t-1}(M\_t, R^K\_t)$$

$$\\eta\_t \\equiv \\mathbb{E}\_{t-1}\[R^K\_t] - r\_{t-1} - \\bar{\\rho}\_{t-1} \\tag{A.4}$$



Under price stability ($\\pi\_t \\le \\pi^\*$), the absence of nominal distortions ensures $\\eta\_t = \\bar{R}^K - r - \\bar{\\rho} \\equiv \\eta$.



\---



\## 2. 数理的解釈と経済学的メカニズム



本稿は、統合政府の通時的予算制約式（IBC）モデルにおける最重要の価格評価条件である\*\*式(4)\*\*：

$$\\eta\_t \\equiv \\mathbb{E}\_{t-1}\[R^K\_t] - r\_{t-1} - \\bar{\\rho}\_{t-1}$$

について、プレーンRBC由来の資本蓄積等の動学ノイズを完全に排し、その数理的起源とマクロ財政的な含意を最小限の構成で解説するものである。



\### ① オイラー方程式からの直線的導出

家計の最適ポートフォリオ選択において、無リスク資産（国債）と民間リスク資産（生産資本・株式）の間の裁定関係は、確率的割引因子（SDF: $M\_t$）を介して完全に記述される。

確率変数の積の期待値を「期待値の積」と「共分散」に分解する数理操作を課すことで、民間リスク資産に要求される期待超過リターンは以下のように一意に決定される。

$$\\mathbb{E}\_{t-1}\[R^K\_t] - r\_{t-1} = - (1 + r\_{t-1})\\text{Cov}\_{t-1}(M\_t, R^K\_t)$$



\### ② マクロ経済リスクプレミアム $\\bar{\\rho}\_{t-1}$ の符号条件

景気が良い（消費 $C\_t$ が大きい）ときには、限界効用およびSDF（$M\_t \\propto C\_t^{-\\sigma}$）は低下する。一方で、民間リスク資産の実質リターン $R^K\_t$ は景気循環に対して正の相関を持つため上昇する。

したがって、両者の条件付き共分散は通常レジームにおいて必ず\*\*負（マイナス）\*\*となる。

$$\\text{Cov}\_{t-1}(M\_t, R^K\_t) < 0$$

この負の共分散にマイナスを乗じたものがマクロ経済のリスクプレミアム $\\bar{\\rho}\_{t-1}$ として定義されるため、符号は常に正（ $\\bar{\\rho}\_{t-1} > 0$ ）となり、家計が不確実性を引き受けるための上乗せ報酬（CAPMの一般化）として機能する。



\### ③ 政府の運用スプレッド $\\eta\_t$ におけるプレミアム控除の必然性

政府が民間リスク資産を保有してシニョリッジや財政補填の財源とする際、市場から得られる期待超過リターンは $\\mathbb{E}\_{t-1}\[R^K\_t] - r\_{t-1}$ である。しかし、政府がこの資産を抱えることは、家計が嫌悪する「景気悪化時にリターンが同時に落ち込むというマクロ不確実性（共分散リスク）」を、政府（＝裏側にいる納税者としての家計）が肩代わりすることを意味する。



したがって、財政の持続可能性を真に担保する「純粋な経済学的付加価値（アルファ）」を計測するためには、単なる利ざやから\*\*リスク引き受けの経済的コスト（リスクプレミアム $\\bar{\\rho}\_{t-1}$）をあらかじめ差し引いたスプレッド $\\eta\_t$\*\* を定義せねばならない。



\### ④ インフレ安定レジーム（Case A/B）からOT暴走（Case C）への架け橋

インフレ率が臨界閾値以下（ $\\pi\_t \\le \\pi^\*$ ）に制御されている安定レジームでは、市場の価格シグナルが正常に機能するため、プレミアムは実物側の構造定数（ $\\bar{\\rho}\_{t-1} = \\bar{\\rho}$ ）にピン留めされ、結果として政府の純運用益もまた定数 $\\eta$ として安定的に財政赤字を補填できる。



しかし、「ケースC（OT暴走）」に突入しインフレが制御不能になると、名目の不確実性が極限まで跳ね上がる。これにより家計のSDFのボラティリティが爆発し、共分散が負の方向へ無限大に発散（ $\\text{Cov}\_{t-1}(M\_t, R^K\_t) \\to -\\infty$ ）、すなわち\*\*リスクプレミアムが無限大へと暴走（ $\\bar{\\rho}\_{t-1} \\to \\infty$ ）\*\*を始める。

この結果、式(4)より、政府が期待できる実質運用スプレッド $\\eta\_t$ は正の値を維持できず、マイナス領域へと滑落する。これが、増税なき公的運用ファイナンスの代替性を内生的に破壊する数理的トリガーとなる。

