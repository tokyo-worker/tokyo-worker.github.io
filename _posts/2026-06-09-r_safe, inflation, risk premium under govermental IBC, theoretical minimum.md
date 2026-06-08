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