---
layout: single
title: 
title_hidden: true    <-- これを追記します
sidebar:
  nav: false
---
---
title: "政府部門入りRBCモデル ガイド"
date: 2026-05-21
categories:
  - macroeconomics
  - rbc
tags:
  - DSGE
  - Fiscal Policy
  - Government Debt
toc: true
layout: single
---

# 政府部門入りRBCモデル ガイド

## 1. モデルの概要

本稿では、政府部門を含む Real Business Cycle (RBC) モデルを構築する。

以下を含む：

- 家計
- 企業
- 政府
- 国債
- 財政ルール
- 均衡条件

---

# 2. 家計

## 2.1 効用関数

代表的家計は以下を最大化する。

$$
U_0
=
E_0
\sum_{t=0}^{\infty}
\beta^t
\left[
\frac{C_t^{1-\sigma}}{1-\sigma}
-
\chi
\frac{L_t^{1+\varphi}}{1+\varphi}
\right]
$$

### 変数

| 記号 | 意味 |
|---|---|
| $C_t$ | 消費 |
| $L_t$ | 労働 |
| $\beta$ | 割引因子 |
| $\sigma$ | 相対的危険回避度 |
| $\varphi$ | 労働供給弾力性 |
| $\chi$ | 労働不効用パラメータ |

---

## 2.2 予算制約

$$
C_t + I_t + B_t
=
W_t L_t
+
R_t^K K_{t-1}
+
(1+r_{t-1})B_{t-1}
-
T_t
$$

### 変数

| 記号 | 意味 |
|---|---|
| $I_t$ | 投資 |
| $B_t$ | 国債保有 |
| $W_t$ | 実質賃金 |
| $R_t^K$ | 資本レンタル率 |
| $T_t$ | 租税 |

---

## 2.3 資本蓄積

$$
K_t
=
(1-\delta)K_{t-1}
+
I_t
$$

---

# 3. 家計の最適化条件

## 3.1 消費オイラー方程式

$$
C_t^{-\sigma}
=
\beta
E_t
\left[
(1+r_t)
C_{t+1}^{-\sigma}
\right]
$$

---

## 3.2 労働供給条件

$$
\chi L_t^\varphi
=
W_t C_t^{-\sigma}
$$

---

# 4. 企業

## 4.1 生産関数

企業は Cobb-Douglas 生産関数を持つ。

$$
Y_t
=
A_t
K_{t-1}^{\alpha}
L_t^{1-\alpha}
$$

---

## 4.2 利潤最大化

企業は：

$$
\max_{K,L}
Y_t
-
W_t L_t
-
R_t^K K_{t-1}
$$

を解く。

---

## 4.3 一階条件

### 賃金

$$
W_t
=
(1-\alpha)
\frac{Y_t}{L_t}
$$

### 資本レンタル率

$$
R_t^K
=
\alpha
\frac{Y_t}{K_{t-1}}
$$

---

# 5. 政府

## 5.1 政府予算制約

$$
B_t
=
(1+r_{t-1})B_{t-1}
+
G_t
-
T_t
$$

### 変数

| 記号 | 意味 |
|---|---|
| $G_t$ | 政府支出 |
| $B_t$ | 政府債務 |
| $T_t$ | 税収 |

---

## 5.2 財政ルール

例として：

$$
T_t
=
\phi_B B_{t-1}
+
\phi_Y Y_t
$$

---

# 6. 市場均衡

## 6.1 財市場均衡

$$
Y_t
=
C_t
+
I_t
+
G_t
$$

---

## 6.2 労働市場均衡

$$
L_t^d
=
L_t^s
$$

---

## 6.3 債券市場均衡

$$
B_t^{household}
=
B_t^{government}
$$

---

# 7. 全体均衡システム

モデルは以下の連立方程式から構成される。

1. 消費オイラー方程式
2. 労働供給
3. 生産関数
4. 資本蓄積
5. 企業FOC
6. 政府予算制約
7. 財市場均衡

---

# 8. 定常状態

定常状態では：

$$
X_t = X_{t+1} = X^*
$$

が成立する。

---

## 8.1 定常状態オイラー条件

$$
1
=
\beta(1+r^*)
$$

よって：

$$
r^*
=
\frac{1}{\beta}-1
$$

---

# 9. 政府債務の安定条件

政府債務GDP比：

$$
b_t
=
\frac{B_t}{Y_t}
$$

が発散しないためには、通常：

$$
r < g
$$

あるいは財政反応ルールが必要となる。

---

# 10. No-Ponzi条件

家計：

$$
\lim_{T\to\infty}
E_t
\left[
\frac{B_T}
{\prod_{s=t}^{T}(1+r_s)}
\right]
=0
$$

政府：

$$
\lim_{T\to\infty}
E_t
\left[
\frac{D_T}
{\prod_{s=t}^{T}(1+r_s)}
\right]
=0
$$

---

# 11. FTPLとの関係

Fiscal Theory of the Price Level (FTPL) では、

政府債務の実質価値が：

$$
\frac{B_{t-1}}{P_t}
=
E_t
\sum_{j=0}^{\infty}
\frac{S_{t+j}}
{\prod_{k=1}^{j}(1+r_{t+k})}
$$

によって決定される。

---

# 12. RBC + 政府債務モデルの拡張方向

## 拡張候補

- New Keynesian 化
- 名目硬直性
- 金融政策ルール
- sovereign default
- bubble component
- strict local martingale
- incomplete markets

---

# 13. まとめ

本稿では：

- RBC
- 政府債務
- 財政ルール
- No-Ponzi条件
- FTPL

を統合した基本モデルを整理した。

この構造を基礎として、

- DSGE
- 財政余力分析
- sovereign risk
- asset pricing

へ拡張可能である。
