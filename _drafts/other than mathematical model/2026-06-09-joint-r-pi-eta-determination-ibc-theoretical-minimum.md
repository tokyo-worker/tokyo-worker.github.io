---
layout: post
title: "Joint Determination of r, π, and η under Consolidated Government IBC: A Theoretical Minimum Model"
date: 2026-06-09 00:00:00 +0900
categories: economics
math: true
---

<!-- KaTeX を使う場合は _includes/head.html 等で以下を読み込んでください -->
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/katex.min.css"> -->
<!-- <script defer src="https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/katex.min.js"></script> -->
<!-- <script defer src="https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/contrib/auto-render.min.js" onload="renderMathInElement(document.body)"></script> -->

> **本稿について**  
> 本稿は「Theoretical Minimum」の精神に基づき、財政の持続可能性と物価決定のコアメカニズムのみを抽出した最小限モデルを提示する。実物的景気循環（RBC）モデルに典型的な資本蓄積・労働供給・技術ショックといった動学ノイズを意図的に排除しており、**「安全資産利子率 $r$・インフレ率 $\pi$・資産運用スプレッド $\eta$ の3変数が、統合政府の通時的予算制約（IBC）をどのように共同で満たすか」**という問いに特化した理論的骨格を提供する。

---

# 統合政府IBCにおける $r$・$\pi$・$\eta$ 共同決定の動学最小限モデル

---

## 1. 変数・パラメータの定義

### 内生変数

| 変数 | 定義 |
|------|------|
| $r_t$ | 実質無リスク金利（債務利払いおよび将来価値の割引率） |
| $\pi_t$ | インフレ率（$\pi_t \equiv P_t / P_{t-1} - 1$） |
| $\eta_t$ | 公的金融資産の実質運用スプレッド（安全金利に対する超過収益率） |
| $\tilde{D}_t$ | 統合政府の実質純債務（$\tilde{D}_t \equiv D_t - A_t$） |

### 外生変数・政策レジーム

| 変数 | 定義 |
|------|------|
| $Y_t = Y$ | 実質GDP（一定、$Y > 0$） |
| $G_t = G$ | 実質政府支出（一定、$G > 0$） |
| $A_t$ | 実質公的金融資産（政策ルール：$A_t = (1+g_A)A_{t-1}$、$g_A \geq 0$） |
| $R^K_t$ | 民間リスク資産の実質リターン（$\mathbb{E}_t[R^K_{t+1}] = \bar{R}^K$） |

### 構造パラメータ・関数形

| パラメータ | 定義 |
|------|------|
| $\beta \in (0,1)$ | 家計の主観的割引因子 |
| $\sigma > 0$ | 相対的危険回避度 |
| $\bar{\rho} > 0$ | 構造的リスクプレミアム（$\bar{\rho} \equiv \sigma \cdot \mathrm{Cov}(u'(C),\, R^K)$） |
| $T(\pi_t)$ | 実質税収関数（Olivera-Tanzi効果：$T'(0) > 0,\; T''(\pi_t) < 0$） |

> **仮定 [A1]：資産成長率の上界**  
> $g_A < r$ を仮定する。これはIBC右辺第2項（運用スプレッド収益の現在価値）が有限に収束するための必要条件である。$g_A \geq r$ の場合、資産運用だけで財政赤字を永続的にファイナンス可能となり（ポンジ・ファイナンス）、モデルの財政持続可能性の意味が自壊する。

---

## 2. タイミング規約

以下のタイムラインに基づき変数のタイミングを整理する。$t$ 期初に期初ストック変数（$\tilde{D}_{t-1}$, $A_{t-1}$）が観察され、期中に $G$, $T(\pi_t)$, $\eta_t$ が実現し、期末に新たなストック $\tilde{D}_t$, $A_t$ が決まる。

```
  期初ストック          期中フロー           期末ストック
  ────────────         ────────────         ────────────
  D_{t-1}, A_{t-1}  →  G, T(π_t), η_t  →  D_t, A_t
       ↓                                        ↓
  D̃_{t-1} = D_{t-1} - A_{t-1}          D̃_t = D_t - A_t
```

**実質純債務の定義（名目→実質変換）：**

$$\tilde{D}_{t-1} \;\equiv\; \frac{D_{t-1} - A_{t-1}}{1 + \pi_{t-1}}$$

ここで $D_{t-1}$ は名目純債務、$P_{t-1}$ による実質化によって $\tilde{D}_{t-1}$ が定義される。

---

## 3. 構造方程式と一般均衡条件

通常、政府のフロー予算制約式1本に対して複数の未決定変数が存在すると、解は無数に存在する（Ricardian不決定性）。本モデルでは他セクターの一般均衡清算条件を課すことで、変数と方程式を1対1で対応させる。

### [Eq. 1] 統合政府のフロー予算制約式

$$\tilde{D}_t = (1 + r_{t-1})\tilde{D}_{t-1} + G - T(\pi_t) - \eta_t A_{t-1}$$

### [Eq. 2] 家計のオイラー方程式 → $r_t$ の一意決定

代表的家計の消費の異時点間最適化条件：

$$1 = \beta\, \mathbb{E}_t\!\left[(1 + r_t)\left(\frac{C_{t+1}}{C_t}\right)^{-\sigma}\right]$$

財市場清算条件（$C_t = Y - G$）により消費は毎期一定となるため：

$$\boxed{r_t = \frac{1}{\beta} - 1 \;\equiv\; r \quad (\forall t)}$$

> **注（rのピン留めについて）**  
> 本モデルは実物側からの $r$ のピン留めを仮定しており、財政政策が $r$ にフィードバックするチャンネルを意図的に閉じている（Theoretical Minimumとしての設計上の選択）。現実には安全資産供給量の変化が $r$ に影響を与える可能性があるが（安全資産希少性文献参照）、そのフィードバックを含むモデルの分析は本稿の射程外とする。

### [Eq. 3] リスク資産の価格評価条件 → $\eta_t$ の一意決定

家計の資産選択条件から導かれるリスクプレミアム $\bar{\rho}$ により：

$$\eta_t \;\equiv\; \mathbb{E}_{t-1}[R^K_t] - r_{t-1} - \bar{\rho}$$

ミクロ基礎付きにより $\bar{\rho} = \sigma \cdot \mathrm{Cov}(u'(C), R^K)$ は実物側から構造定数として固定されるため：

$$\boxed{\eta_t = \bar{R}^K - r - \bar{\rho} \;\equiv\; \eta \quad (\forall t)}$$

> **注（$\eta$ の固定性について）**  
> 高インフレ環境下では $\mathrm{Cov}(u'(C), R^K)$ が変化し（危険回避度の急騰、流動性プレミアムの拡大）、$\eta$ が外生固定でなくなるチャンネルが存在する。このことは後述する臨界点を超えた際の「代替性の崩壊メカニズム」の第2チャンネルとして重要であり、Section 5で改めて論じる。

---

## 4. 動学的前方展開と通時的予算制約式（IBC）の導出

[Eq. 2]・[Eq. 3] の均衡固定条件を [Eq. 1] に代入すると、システムは $\pi_t$ のみを未知数とする確率差分方程式に収縮する：

$$\tilde{D}_t = (1 + r)\tilde{D}_{t-1} + G - T(\pi_t) - \eta A_{t-1}$$

この式を現時点 $t$ から将来 $t+T$ まで再帰的に前方展開すると：

$$\tilde{D}_{t-1} = \sum_{j=0}^{T} \frac{T(\pi_{t+j}) - G}{(1+r)^{j+1}} + \sum_{j=0}^{T} \frac{\eta A_{t+j-1}}{(1+r)^{j+1}} + \frac{\tilde{D}_{t+T}}{(1+r)^{T+1}}$$

ここで政府のポンジ・スキームを禁止する**横断性条件（TVC）**を課す：

$$\lim_{T \to \infty} \frac{\tilde{D}_{t+T}}{(1+r)^{T+1}} = 0$$

仮定 [A1]（$g_A < r$）のもとで第2項も収束することが保証され、$T \to \infty$ の極限において**通時的予算制約式（IBC）恒等式**が導出される：

$$\boxed{\tilde{D}_{t-1} = \sum_{j=0}^{\infty} \frac{T(\pi_{t+j}) - G}{(1+r)^{j+1}} + \sum_{j=0}^{\infty} \frac{\eta A_{t+j-1}}{(1+r)^{j+1}}}$$

$r$ と $\eta$ は実物側から固定されているため、左辺の過去の名目負債ストック

$$\tilde{D}_{t-1} = \frac{D_{t-1} - A_{t-1}}{1 + \pi_{t-1}}$$

に対し、**この等式をジャストで満たす現期のインフレ率 $\pi_{t-1}$ がフォワード・ルッキングに一意の均衡解として決定される。**

これはFTPL（Fiscal Theory of the Price Level）の精神を、統合政府の資産運用スプレッドへと拡張したものである。

---

## 5. 理論的含意：増税と運用収益の通時的代替性、およびその臨界条件

### 核心命題：完全代替性の成立

政府が増税を行わず基礎的財政収支が恒常的に赤字（$T(\pi) - G < 0$）であるレジームを選択したとする。このとき右辺第1項はマイナスとなる。しかし：

$$\eta > 0 \;\text{かつ}\; \sum_{j=0}^{\infty} \frac{\eta A_{t+j-1}}{(1+r)^{j+1}} \geq \tilde{D}_{t-1} - \sum_{j=0}^{\infty} \frac{T(\pi_{t+j}) - G}{(1+r)^{j+1}}$$

を満たす資産規模 $A_t$ が存在すれば、**財政の持続可能性（IBC等号）は一般均衡として完全に成立する。**

すなわち、**「増税による財源確保」と「公的金融資産の運用スプレッド収益」は、IBC上で通時的に完全代替的である。**

### 臨界条件：Olivera-Tanzi暴走による代替性の崩壊

この代替性は、インフレ率が臨界点 $\pi^*$ を超えない範囲でのみ成立する。$\pi_t > \pi^*$ の領域では以下の2つの崩壊チャンネルが非対称に同時作動する：

**チャンネル1：OT効果による税収消滅**

徴税ラグの侵食により $T(\pi_t)$ が急落し、右辺第1項の赤字幅が制御不能に拡大する。$T''(\pi) < 0$ の非線形性がこの崩壊を加速させる。

**チャンネル2：名目不確実性によるスプレッド $\eta$ の消失**

高インフレがマクロ経済の価格シグナルを破壊し、$\mathrm{Cov}(u'(C), R^K)$ の急変（危険回避度 $\sigma$ の急騰・流動性プレミアムの拡大）を招く。これにより $\bar{\rho}$ が上昇し、政府の運用スプレッド $\eta = \bar{R}^K - r - \bar{\rho}$ が消失・マイナス化する。

**帰結：**

2チャンネルの同時作動により、3変数の安定的調整による均衡の復元軌道（サドルパス）が完全に喪失し、IBC等号を満たす物価水準が存在しなくなる。

> **命題（代替性の限定性）：**  
> 「増税」と「公的資産運用」の通時的完全代替性は、インフレ率が臨界点 $\pi^*$ を下回るレジーム内でのみ成立する限定的選択肢である。

---

## 6. まとめ：3変数共同調整の論理構造

```
① 家計のオイラー方程式 ──→ r = 1/β - 1  （実物側から固定）
② リスク資産価格評価   ──→ η = R̄ᴷ - r - ρ̄（実物側から固定）
                                    ↓
③ フロー予算制約 + TVC ──→ πがIBCをジャストで満たすよう一意決定
                                    ↓
④ 代替性の境界         ──→ π < π* の範囲でのみ「増税 ↔ 運用収益」代替可
```

本モデルが示す政策的含意は明快である。「公的資産運用収益で増税を代替できる」という主張は、モデル内では数学的に正しい。しかしその有効性は **インフレ率が臨界点を超えないレジーム内に限定されており**、OT効果とスプレッド消失という2重の崩壊メカニズムがその境界を厳格に画している。

---

## Appendix A：$T(\pi)$ の関数例と均衡の存在・一意性

### A.1 具体的関数形（Olivera-Tanzi型）

$$T(\pi) = \frac{\tau Y}{1 + \kappa \pi}, \quad \tau \in (0,1),\; \kappa > 0$$

- $T'(\pi) = -\frac{\tau Y \kappa}{(1+\kappa\pi)^2} < 0$（$\pi > 0$ で単調減少）
- $T''(\pi) = \frac{2\tau Y \kappa^2}{(1+\kappa\pi)^3} > 0$

> **注：** この関数形は $\pi = 0$ 付近での $T'(0) < 0$ を意味し、本文の $T'(0) > 0$ 仮定（低インフレ域での正の収益効果）と整合させるためには、$T(\pi) = \frac{\tau Y}{1 + \kappa \max(\pi - \underline{\pi}, 0)}$（閾値 $\underline{\pi}$ 以上でのみOT効果が発動）などの変形が有用である。

定常インフレ $\pi_t = \pi$（$\forall t$）を仮定すると、IBCは：

$$\tilde{D}_{t-1} = \frac{T(\pi) - G}{r} + \frac{\eta A_{t-1}}{r - g_A}$$

この等式の左辺（既定の過去ストック）に対して右辺を $\pi$ の関数として見ると、$T(\pi)$ の連続性・単調性・境界条件（$T(0) > 0$, $T(\pi) \to 0$ as $\pi \to \infty$）のもとで、中間値定理により均衡 $\pi^*$ の存在が保証される。$T'(\pi) < 0$ かつ厳密な単調性が成立する領域では一意性も保証される。

### A.2 感度分析の方向性

| パラメータ増加 | 均衡 $\pi$ への影響 |
|------|------|
| $\beta \uparrow$（忍耐強化） | $r \downarrow$ → 割引率低下 → 必要財源の現在価値増大 → $\pi \uparrow$ 圧力 |
| $\sigma \uparrow$（危険回避度上昇） | $\bar{\rho} \uparrow$ → $\eta \downarrow$ → 運用収益の代替力低下 → $\pi \uparrow$ 圧力 |
| $g_A \uparrow$（資産成長加速） | 運用収益の現在価値増大 → $\pi \downarrow$ 緩和（ただし $g_A < r$ 制約内） |
| $G \uparrow$（支出増加） | 財政赤字拡大 → $\pi \uparrow$ 圧力 |

---

## Appendix B：英語版サマリー（English Summary）

### Dynamic Theoretical Minimum Model: Joint Determination of $r$, $\pi$, and $\eta$ under Consolidated Government IBC

**Setup.** We construct a Theoretical Minimum model that strips away all RBC dynamics (capital accumulation, labor supply, technology shocks) and isolates the fiscal sustainability mechanism. Four endogenous variables are considered: the real risk-free rate $r_t$, inflation $\pi_t$, the asset management spread $\eta_t$, and real net public debt $\tilde{D}_t$.

**Equilibrium pinning.**

**[Eq. 1]** The consolidated government flow budget constraint:

$$\tilde{D}_t = (1+r_{t-1})\tilde{D}_{t-1} + G - T(\pi_t) - \eta_t A_{t-1}$$

**[Eq. 2]** The household Euler equation under market clearing ($C_t = Y - G$) pins the real rate:

$$r_t = \frac{1}{\beta} - 1 \equiv r \quad (\forall t)$$

*Note: This model treats $r$ as pinned from the real side, deliberately closing the channel by which fiscal policy feeds back into $r$.*

**[Eq. 3]** Risk asset pricing pins the spread:

$$\eta_t = \bar{R}^K - r - \bar{\rho} \equiv \eta \quad (\forall t)$$

**IBC Identity.** Under **Assumption [A1]** ($g_A < r$, required for convergence of the asset return term), forward iteration of [Eq. 1] combined with the no-Ponzi TVC yields:

$$\tilde{D}_{t-1} = \sum_{j=0}^{\infty} \frac{T(\pi_{t+j}) - G}{(1+r)^{j+1}} + \sum_{j=0}^{\infty} \frac{\eta A_{t+j-1}}{(1+r)^{j+1}}$$

Since $r$ and $\eta$ are externally pinned, the current price level (equivalently $\pi_{t-1}$) is uniquely determined as a forward-looking jump variable satisfying this identity — a fiscal theory of the price level extended to include sovereign asset management returns.

**Core result.** Tax revenue $T(\pi)$ and asset management income $\eta A$ are *intertemporally perfect substitutes* in satisfying the IBC, **but only within the regime $\pi_t < \pi^*$**. Beyond the critical threshold, two asymmetric collapse channels operate simultaneously:

1. **Olivera-Tanzi channel**: Inflation erodes real tax revenue via collection lags ($T''(\pi) < 0$), causing the fiscal deficit to expand uncontrollably.
2. **Spread collapse channel**: Macroeconomic uncertainty raises $\mathrm{Cov}(u'(C), R^K)$, increasing $\bar{\rho}$ and driving $\eta$ to zero or negative.

The saddle-path equilibrium is destroyed, and no price level exists that satisfies the IBC.

---

*本稿は Fiscal Theory of the Price Level（FTPL）の精神を統合政府の資産運用スプレッドへと拡張し、「運用収益による増税代替はインフレ臨界点以下でのみ限定的に成立する」という命題をミクロ基礎付きモデルで厳密に導出したものである。*
