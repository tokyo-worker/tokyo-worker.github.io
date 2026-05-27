---
layout: post
title: "Pure RBC Model — Recursive Competitive Equilibrium から状態空間表現まで"
date: 2026-05-28
description: "代表的家計・代表的企業・Recursive Competitive Equilibrium・定常状態・対数線形化・状態空間表現までを統合したプレーンRBCモデル完全解説"
categories: [macroeconomics, RBC, DSGE]
tags: [RBC, Recursive Equilibrium, DSGE, State Space]
toc: true
math: true
mathjax: true
---

<!-- MathJax -->
<script>
window.MathJax = {
  tex: {
    inlineMath: [['$', '$'], ['\\\\(', '\\\\)']],
    displayMath: [['$$', '$$'], ['\\\\[', '\\\\]']]
  }
};
</script>

<script defer src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>


# Pure RBC Model — Recursive Competitive Equilibrium から状態空間表現まで

## §0 モデルの概要

本稿では、政府部門を持たない標準的な Real Business Cycle (RBC) モデルを扱う。

モデルは：

- 代表的家計
- 代表的企業
- 完全競争市場
- 外生的TFPショック

から構成される。

さらに：

- Recursive Competitive Equilibrium
- Bellman Equation
- State / Control の分離
- Saddle Path Stability
- 状態空間表現

まで統一的に扱う。

---

# §1 Economic Environment

## 1.1 家計の効用関数

$$
U
=
\sum_{t=0}^{\infty}
\beta^t
\left(
\frac{C_t^{1-\sigma}}{1-\sigma}
-
\chi
\frac{L_t^{1+\gamma}}{1+\gamma}
\right)
$$

### パラメータ

| 記号 | 内容 |
|---|---|
| \(\beta\) | 割引因子 |
| \(\sigma\) | 相対的危険回避度 |
| \(\chi\) | 労働不効用パラメータ |
| \(\gamma\) | フリッシュ弾力性逆数 |

---

## 1.2 生産関数

$$
Y_t
=
A_t
K_t^\alpha
L_t^{1-\alpha}
$$

### パラメータ

| 記号 | 内容 |
|---|---|
| \(A_t\) | 全要素生産性 (TFP) |
| \(\alpha\) | 資本分配率 |

---

## 1.3 TFP過程

$$
\log A_{t+1}
=
\rho \log A_t
+
\varepsilon_{t+1}
$$

$$
\varepsilon_t \sim N(0,\sigma_\varepsilon^2)
$$

---

# §2 Recursive Household Problem

## 2.1 状態変数と制御変数

### 状態変数

$$
(K_t,A_t)
$$

### 制御変数

$$
(C_t,L_t,K_{t+1})
$$

---

## 2.2 Bellman Equation

$$
V(K_t,A_t)
=
\max_{C_t,L_t,K_{t+1}}
\left\{
\frac{C_t^{1-\sigma}}{1-\sigma}
-
\chi
\frac{L_t^{1+\gamma}}{1+\gamma}
+
\beta
E_t
V(K_{t+1},A_{t+1})
\right\}
$$

subject to

$$
K_{t+1}+C_t
=
w_tL_t+R_tK_t
$$

---

## 2.3 Recursive Formulation の意味

Bellman Equation を用いることで：

- 無限期間問題
- 異時点最適化
- 逐次的意思決定

を recursive に表現できる。

これは Ljungqvist-Sargent 型の recursive macroeconomics の中心概念である。

---

# §3 Firm Problem

## 3.1 利潤最大化

企業は：

$$
\Pi_t
=
A_tK_t^\alpha L_t^{1-\alpha}
-
w_tL_t
-
(R_t-1+\delta)K_t
$$

を最大化する。

---

## 3.2 資本のFOC

$$
R_t
=
\alpha
A_t
\left(
\frac{K_t}{L_t}
\right)^{\alpha-1}
+
1-\delta
$$

これは：

$$
MPK = \text{資本コスト}
$$

を意味する。

---

## 3.3 労働のFOC

$$
w_t
=
(1-\alpha)
A_t
\left(
\frac{K_t}{L_t}
\right)^\alpha
$$

これは：

$$
MPL = w_t
$$

を意味する。

---

# §4 Recursive Competitive Equilibrium

Recursive Competitive Equilibrium (RCE) とは：

- 家計最適化
- 企業最適化
- 市場清算
- law of motion の整合性

を同時に満たす allocation と price system の集合である。

---

## 4.1 財市場均衡

$$
Y_t=C_t+I_t
$$

---

## 4.2 資本蓄積

$$
K_{t+1}
=
(1-\delta)K_t+I_t
$$

したがって：

$$
K_{t+1}
=
(1-\delta)K_t+Y_t-C_t
$$

---

# §5 Planner Problem

## 5.1 社会計画者問題

$$
\max_{\{C_t,L_t,K_{t+1}\}}
E_0
\sum_{t=0}^{\infty}
\beta^t
\left(
\frac{C_t^{1-\sigma}}{1-\sigma}
-
\chi
\frac{L_t^{1+\gamma}}{1+\gamma}
\right)
$$

subject to

$$
C_t+K_{t+1}
=
A_tK_t^\alpha L_t^{1-\alpha}
+
(1-\delta)K_t
$$

---

## 5.2 First Welfare Theorem

完全競争・歪みなし・完全市場のもとでは：

$$
\text{Competitive Equilibrium}
=
\text{Planner Allocation}
$$

が成立する。

---

# §6 Equilibrium Conditions

## 6.1 Euler Equation

$$
1
=
\beta
R_{t+1}
\left(
\frac{C_{t+1}}{C_t}
\right)^{-\sigma}
$$

これは消費の異時点間最適化条件である。

---

## 6.2 Intratemporal Condition

$$
w_t
=
\chi
L_t^\gamma
C_t^\sigma
$$

これは：

$$
MRS = w_t
$$

を意味する。

---

## 6.3 Production Function

$$
Y_t
=
A_t
K_t^\alpha
L_t^{1-\alpha}
$$

---

## 6.4 Capital Accumulation

$$
K_{t+1}
=
(1-\delta)K_t+Y_t-C_t
$$

---

# §7 Steady State

定常状態では：

$$
A=1
$$

かつ：

$$
K_{t+1}=K_t=K
$$

となる。

---

## 7.1 Euler Equation

$$
1
=
\beta
\left[
\alpha
\left(
\frac{K}{L}
\right)^{\alpha-1}
+
1-\delta
\right]
$$

---

## 7.2 定常資本労働比

$$
\frac{K}{L}
=
\left(
\frac{\alpha}
{1/\beta-1+\delta}
\right)^{\frac{1}{1-\alpha}}
$$

---

# §8 Recursive Dynamics

## 8.1 State Variables

$$
x_t=(K_t,A_t)
$$

---

## 8.2 Policy Functions

$$
C_t=C(K_t,A_t)
$$

$$
L_t=L(K_t,A_t)
$$

$$
K_{t+1}=G(K_t,A_t)
$$

---

# §9 Log-Linearization

## 9.1 定義

$$
\hat{x}_t
=
\log x_t-\log \bar{x}
$$

---

## 9.2 Euler Equation の線形化

$$
\hat{C}_t
=
E_t\hat{C}_{t+1}
-
\frac{1}{\sigma}
E_t\hat{R}_{t+1}
$$

---

# §10 State Space Representation

## 10.1 状態方程式

$$
x_{t+1}
=
Ax_t+B\varepsilon_{t+1}
$$

---

## 10.2 観測方程式

$$
y_t
=
Cx_t
$$

---

# §11 Saddle Path Stability

RBCモデルは一般に saddle-path stable である。

---

## 11.1 状態変数

- \(K_t\)
- \(A_t\)

---

## 11.2 ジャンプ変数

- \(C_t\)
- \(L_t\)

---

## 11.3 Blanchard-Kahn条件

安定固有値の数と forward-looking variable の数が整合する必要がある。

---

## 11.4 経済学的意味

この条件が破れると：

- explosive path
- indeterminacy
- bubble
- non-uniqueness

が発生しうる。

これは後の：

- Rational Bubble
- FTPL
- strict local martingale
- TVC failure

の議論につながる。

---

# §12 RBCモデルの理論的位置づけ

RBCモデルは：

- Arrow-Debreu均衡
- Recursive Equilibrium
- DSGE
- Asset Pricing

の基礎モデルである。

特に：

- stochastic discount factor
- transversality condition
- saddle stability

の理解は、
現代マクロ・資産価格理論への重要な入り口となる。
