---
title: "政府部門入りRBCモデル完全解説"
date: 2026-05-23
categories:
  - macroeconomics
  - rbc
tags:
  - DSGE
  - Fiscal Theory
toc: true
---

<script>
window.MathJax = {
  tex: {
    inlineMath: [['$', '$']],
    displayMath: [['$$', '$$']]
  }
};
</script>

<script async
src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js">
</script>


# はじめに

本稿では政府部門を含むRBCモデルを解説する。

## 家計

家計の効用関数：

$$
U = \sum_{t=0}^{\infty} \beta^t
\left(
\frac{C_t^{1-\sigma}}{1-\sigma}
-
\chi \frac{L_t^{1+\gamma}}{1+\gamma}
\right)
$$

## オイラー方程式

$$
C_t^{-\sigma}
=
\beta E_t
\left[
R_{t+1} C_{t+1}^{-\sigma}
\right]
$$
