---
layout: post
title: "投資信託のリターンの数理的統合モデル：為替・コスト・危機ジャンプ・戦略容量制約の統合"
date: 2026-08-30 00:00:00 +0900
categories: [数理ファイナンス, 投資理論]
tags: [投資信託, 確率微分方程式, 伊藤の補題, ジャンプ拡散過程, ロジスティック曲線]
math: true
---

# 投資信託のリターンの数理的統合モデル：為替・コスト・危機ジャンプ・戦略容量制約の統合
### Theoretical Minimum — 数理モデル部分の完全導出

> **本稿の位置付け．**
> 本稿は、海外資産に投資する投資信託の円建て・税引後リターンを、単一の確率微分方程式（SDE）として統合的に記述することを目的とする。原資産価格の確率過程と為替レートの確率過程という**2つのGBM（幾何ブラウン運動）の積**から出発し、そこに信託報酬・売買コスト・税制という**摩擦（フリクション）項**、システミックな暴落を表す**ジャンプ拡散項**を順次組み込み、最終的に「戦略・ファンドの実現可能なリターンには規模に応じた天井が存在する」という直感を、指数成長モデルから**ロジスティック方程式（S字曲線）**への修正として数式化するところまでを導出する。ファンド固有の特性（信託報酬、通貨構成、分配方針、ラッパー構造）を用いて個別商品を評価する応用編は、本稿を「ベースモデル」とする別稿に譲る。

---

## 0. 数理モデルの設計：前提・変数・パラメータの整理

以降の議論をブラックボックス化しないため、最初にモデルの骨格を明示する。

### 前提（Assumptions）

1. **A1**：海外原資産の外貨建て価格 $S_t$ は、実世界確率測度 $P$ のもとで幾何ブラウン運動に従う。
2. **A2**：為替レート $X_t$（円／外貨）も独自の確率過程を持ち、$S_t$ の変動との間に瞬間相関 $\rho_{S,X}$ を持つ。
3. **A3**：信託報酬は連続的にNAV（純資産価値）から控除される。
4. **A4**：売買コスト・スリッページは連続的ではなく、取引の都度発生する離散的な控除である。
5. **A5**：配当は受け取った年に課税され、値上がり益への課税は売却時まで繰り延べられる（課税タイミングの非対称性）。
6. **A6**：金融危機・地政学ショックのような分散不可能な共通ショックは、連続的な拡散（ブラウン運動）ではなく、非連続な**ジャンプ**として発生し、その発生頻度はポアソン過程（強度 $\pi_m$）に従う。
7. **A7**：モデルは連続時間で記述し、各確率過程は無裁定な市場で観測される情報に基づいて定義される。
8. **A8**（第6節のみ）：ある運用戦略が実現できる超過リターンは、その戦略の運用規模（AUM等）が大きくなるほど市場インパクトにより逓減し、規模が理論的な容量上限に近づくとゼロに収束する。

### 内生変数（モデルの出力：確率過程として時間発展する量）

| 記号 | 内容 |
|---|---|
| $S_t$ | 外貨建て原資産価格（確率過程） |
| $X_t$ | 為替レート（円／外貨、確率過程） |
| $S_t^{\text{円}}=S_tX_t$ | 円換算後の原資産価格 |
| $F_t$ | 信託報酬控除後、円建てファンド評価額 |
| $W_t$ | 投資家が最終的に受け取る、税引後・コスト控除後の円建て資産評価額（本モデルの目的変数） |
| $\mu^{\text{円}},\ (\sigma^{\text{円}})^2$ | 円換算後に実現するドリフト・分散（外生変数の合成として内生的に決まる統計量） |

### 外生変数（市場・マクロ環境が与える量：投資家は選択できない）

| 記号 | 内容 |
|---|---|
| $\mu_S,\ \sigma_S$ | 外貨建て原資産の期待収益率・ボラティリティ |
| $\mu_X,\ \sigma_X$ | 為替レートの期待変化率・ボラティリティ |
| $\rho_{S,X}$ | 株価変動と為替変動の相関係数 |
| $r_f^{\text{円}},\ r_f^{\text{外貨}}$ | 円・外貨それぞれの無リスク金利 |
| $\pi_m$ | 共通ジャンプ（システミック・ショック）の発生強度 |
| $\kappa$ | ジャンプ1回あたりの平均下落率 |
| $K$（第6節） | 戦略が市場から吸収できる規模の理論的な天井（マクロ的な容量制約） |

### パラメータ（ファンド設計・投資家の選択により変わる量）

| 記号 | 内容 |
|---|---|
| $e$ | 信託報酬率（年率） |
| $c_{\text{trade}}$ | 売買コスト率 |
| $\tau_{\text{div}},\ \tau_{\text{cg}}$ | 配当課税率、譲渡益課税率 |
| $\delta_{\text{wrapper}}$ | 多重ラッパー構造（他国籍ETF経由等）による追加コスト |
| ヘッジの有無 | ヘッジ付きの場合、為替項は消え、代わりに金利差ヘッジコストが控除される |

以上を踏まえ、次節から数式を1本ずつ積み上げていく。

---

## 1. 原資産と為替レートの確率過程

投資対象が海外資産である場合、円建てのリターンは「原資産そのものの値動き」と「為替の値動き」という2つの独立した確率変数の合成で決まる。まずこの2つを個別に定義する。

{% raw %}
$$
\frac{dS_t}{S_t} = \mu_S\,dt + \sigma_S\,dW_{S,t} \tag{1}
$$
{% endraw %}

**解説**：式(1)は原資産価格 $S_t$（外貨建て）の標準的な幾何ブラウン運動（GBM）である。$\mu_S$ は瞬間的な期待収益率、$\sigma_S$ はボラティリティ、$dW_{S,t}$ は標準ブラウン運動の増分（平均0、分散 $dt$ のランダムショック）である。

{% raw %}
$$
\frac{dX_t}{X_t} = \mu_X\,dt + \sigma_X\,dW_{X,t} \tag{2}
$$
{% endraw %}

**解説**：式(2)は為替レート $X_t$（円／外貨）についても同型のGBMを仮定したものである。$dW_{S,t}$ と $dW_{X,t}$ は独立ではなく、$\mathrm{Corr}(dW_{S,t},dW_{X,t})=\rho_{S,X}\,dt$ という瞬間相関を持つ点が次節の鍵になる。

---

## 2. 円建て評価額への合成：積の伊藤の補題

円建て投資家が実際に受け取る価値は $S_t^{\text{円}}=S_t \times X_t$ であり、これは**2つの確率過程の積**である。積の関数に伊藤の補題を適用すると（導出の全過程は補論Aに記載）、次の結果が得られる。

{% raw %}
$$
\boxed{\ \frac{dS_t^{\text{円}}}{S_t^{\text{円}}} = \underbrace{\left(\mu_S+\mu_X+\rho_{S,X}\sigma_S\sigma_X\right)}_{\mu^{\text{円}}}\,dt + \sigma_S\,dW_{S,t}+\sigma_X\,dW_{X,t}\ } \tag{3}
$$
{% endraw %}

**解説**：円建てのドリフト $\mu^{\text{円}}$ は、単純に $\mu_S+\mu_X$ ではなく、$\rho_{S,X}\sigma_S\sigma_X$ という**共分散項が上乗せされる**。これは積の微分において2つの確率変数の変動が相互作用する（伊藤の補題の2次の項が生き残る）ために生じる、確率解析特有の効果である。

{% raw %}
$$
(\sigma^{\text{円}})^2 = \sigma_S^2+\sigma_X^2+2\rho_{S,X}\sigma_S\sigma_X \tag{4}
$$
{% endraw %}

**解説**：式(4)は円建て分散の合成式である。ここで符号を決めるのが $\rho_{S,X}$ である。平時は $\rho_{S,X}$ が小さく為替は分散効果を持ちやすいが、世界的な株安局面では「株安と同時に円が安全資産として買われる（$\rho_{S,X}<0$）」という現象が起こりやすく、この場合共分散項が負でも $-2\rho_{S,X}\sigma_S\sigma_X>0$ となって円建てボラティリティはむしろ**単純合成より悪化**し、$\mu^{\text{円}}$ も押し下げられる。「株安・円高の二重打撃」の正確な数理的表現がこれである。

---

## 3. コストと税制の組み込み

ここまでは「市場で決まる部分」であった。ここからは投資信託という商品に固有の摩擦（フリクション）を順に追加する。

{% raw %}
$$
\frac{dF_t}{F_t} = \frac{dS_t^{\text{円}}}{S_t^{\text{円}}} - e\,dt \tag{5}
$$
{% endraw %}

**解説**：信託報酬 $e$（年率）は、NAVから毎日連続的に按分控除される。これは $\mu^{\text{円}}$ を機械的に一定幅だけ引き下げる、最も単純で恒常的なコストである。

{% raw %}
$$
F_{t^+} = F_{t^-}\times(1-c_{\text{trade}}) \tag{6}
$$
{% endraw %}

**解説**：式(6)は売買・リバランスに伴うコストで、式(5)のような連続控除ではなく、取引が発生する瞬間 $t$ に離散的にNAVを目減りさせる。$c_{\text{trade}}$ は平時は小さいが、市場の流動性が枯渇する危機時には拡大しやすい。

{% raw %}
$$
W_T = F_T + \sum_{i=1}^{T}(1-\tau_{\text{div}})\,D_i \;-\; \tau_{\text{cg}}\,(F_T-F_0) \tag{7}
$$
{% endraw %}

**解説**：式(7)は税引後の最終資産額である。配当 $D_i$ は受取年ごとに $\tau_{\text{div}}$ が課税される一方、値上がり益への課税 $\tau_{\text{cg}}$ は売却時（$T$時点）まで繰り延べられる。同じ総リターンでも、**分配（配当）比率が高いファンドほど課税タイミングが早まり、複利効果が削がれる**という非対称性がここに現れる。NISA等の非課税口座では $\tau_{\text{div}}=\tau_{\text{cg}}=0$ となり、この非対称性は消滅する。

---

## 4. 危機ジャンプの導入

分散投資をしても消去できないリスクとして、金融危機や地政学ショックのような**共通ジャンプ**がある。これは連続的な $\sigma\,dW_t$ では表現できない、非連続な下落である。

{% raw %}
$$
dJ_{m,t}:\quad \text{強度}\ \pi_m\ \text{のポアソン過程に従って発生し、発生時に}\ -\kappa\ \text{の非連続な下落を生む} \tag{8}
$$
{% endraw %}

**解説**：$dJ_{m,t}$ はMerton型ジャンプ拡散過程の共通ジャンプ項である。単位時間あたり確率 $\pi_m\,dt$ でジャンプが1回発生し（ポアソン到着）、発生すると資産価値が平均的に $\kappa$（例：$-20\%$程度）だけ非連続に下落する。個別銘柄への分散投資ではアイディオシンクラティックなリスクは消去できても、**この共通ジャンプだけはポートフォリオを組んでも消えない**という点が重要である（分散投資数 $N\to\infty$ でも $\mathrm{Var}\!\left[\sum_i w_i S_{i}\,dJ_{m,t}\right]\not\to 0$）。

---

## 5. 統合モデルの完成形

式(3)〜(8)をすべて1本の確率微分方程式に統合すると、投資家が最終的に受け取る円建て・税引後リターンの完全形が得られる。

{% raw %}
$$
\boxed{\ \frac{dW_t}{W_t} = \Big[\mu_S+\mu_X+\rho_{S,X}\sigma_S\sigma_X - e - \delta_{\text{wrapper}}\Big]dt \;+\; \sigma_S\,dW_{S,t}+\sigma_X\,dW_{X,t} \;-\; dJ_{m,t} \;-\; dC_t\ } \tag{9}
$$
{% endraw %}

**解説**：これが本稿の中心命題である。$dt$ の係数（ドリフト）には、市場が与える期待収益率 $\mu_S+\mu_X+\rho_{S,X}\sigma_S\sigma_X$ から、信託報酬 $e$ と多重ラッパー構造の追加コスト $\delta_{\text{wrapper}}$ が引かれている。拡散項は原資産・為替それぞれのランダムショックの合成であり、そこから共通ジャンプ $dJ_{m,t}$ と、売買コスト・課税タイミングに由来する離散的控除の集計 $dC_t$（式(6)・式(7)の集計）が差し引かれる。

{% raw %}
$$
\ln W_T = \ln W_0 + \int_0^T\!\left[\mu_S+\mu_X+\rho_{S,X}\sigma_S\sigma_X-e-\delta_{\text{wrapper}} - \frac{(\sigma^{\text{円}})^2}{2}\right]dt + \sigma_S W_{S,T}+\sigma_X W_{X,T} - \sum_{i=1}^{N_T}\kappa_i - C_T \tag{10}
$$
{% endraw %}

**解説**：式(9)を伊藤の補題で対数変換し積分すると、式(10)の閉じた形が得られる。$-\dfrac{(\sigma^{\text{円}})^2}{2}$ は対数変換に伴う「分散逓減項」（幾何ブラウン運動特有の補正項）であり、$\sum_{i=1}^{N_T}\kappa_i$ は期間 $[0,T]$ に実際に発生したジャンプの累積下落分（$N_T$ はジャンプの発生回数）である。この式が、ファンドの評価に使う際の「最終的な出発点」となる。

---

## 6. 戦略容量制約とロジスティック曲線の導入

式(9)・(10)は $\mu_S,\ \sigma_S$ 等の**外生変数を定数とみなした**モデルである。しかし、ある運用戦略（特にアクティブ戦略やニッチな裁定戦略）が生み出す超過リターンの源泉は、多くの場合「市場の非効率性」であり、これは**戦略の運用規模が拡大するほど自らの取引によって縮小する**という自己言及的な性質を持つ。単純な指数成長モデル（$\mu$を定数とするGBM）をそのまま外挿すると、理論上は無限に複利成長することになり非現実的である。

そこで、戦略・ファンドの規模 $W_t$ が、その戦略が市場から吸収できる理論的な容量上限 $K$ に近づくにつれて実効的なドリフムが逓減する、という市場インパクト項を導入する。

{% raw %}
$$
\frac{dW_t}{W_t} = \underbrace{\Big[\mu_S+\mu_X+\rho_{S,X}\sigma_S\sigma_X-e-\delta_{\text{wrapper}}\Big]\left(1-\frac{W_t}{K}\right)}_{\text{市場インパクトによる実効ドリフトの逓減}}dt + \sigma_S\,dW_{S,t}+\sigma_X\,dW_{X,t} - dJ_{m,t} - dC_t \tag{11}
$$
{% endraw %}

**解説**：式(9)のドリフト全体に $\left(1-\dfrac{W_t}{K}\right)$ という乗数を追加した。$W_t \ll K$（戦略規模がまだ小さい）のときはこの乗数は $1$ に近く、式(9)とほぼ同じ指数的な成長になる。しかし $W_t$ が $K$ に近づくにつれてこの乗数はゼロに収束し、実効的な期待収益率が消滅する。これにより、成長の軌道は指数関数から自然に屈曲する。

確率項（$\sigma_S dW_{S,t}$等）とジャンプ項を一旦除き、ドリフトの構造だけを取り出すと、これは生態学における個体数成長モデルと同型の**ロジスティック方程式（Verhulst方程式）**になる（$\mu_{\text{net}}\equiv \mu_S+\mu_X+\rho_{S,X}\sigma_S\sigma_X-e-\delta_{\text{wrapper}}$ とおく）。

{% raw %}
$$
\frac{dW}{dt} = \mu_{\text{net}}\,W\left(1-\frac{W}{K}\right) \tag{12}
$$
{% endraw %}

**解説**：式(12)は式(11)から確率的なゆらぎとジャンプを除いた、決定論的な骨格（構造的な直感を確認するための簡略版）である。$W\ll K$ のときは $\left(1-\dfrac{W}{K}\right)\approx 1$ なので、ほぼ指数成長 $dW/dt\approx \mu_{\text{net}}W$ に一致する。しかし $W$ が $K$ に近づくと、右辺全体がゼロに近づき、成長が頭打ちになる。

この微分方程式を初期値 $W_0$ のもとで解くと（導出の全ステップは補論Bに記載）、次の閉じた解が得られる。

{% raw %}
$$
\boxed{\ W_t = \dfrac{K}{1+\dfrac{K-W_0}{W_0}\,e^{-\mu_{\text{net}}t}}\ } \tag{13}
$$
{% endraw %}

**解説**：式(13)がロジスティック曲線（S字曲線）の一般解である。$t\to 0$ 付近では $W_t\approx W_0 e^{\mu_{\text{net}} t}$ に近似され、GBM/指数成長モデルとほぼ一致する。しかし $t\to\infty$ では $W_t\to K$ に漸近し、決して容量 $K$ を超えない。曲線は $W=K/2$ で変曲点を持ち、それ以前は成長が加速し、それ以降は成長が減速するという典型的なS字形状を描く。**「単純な複利モデルは局所的（規模が小さいうち）には正確でも、大域的には破綻する」という、本モデル全体を貫く教訓が、この最終式に集約されている。**

---

## 参考文献・先行研究

### 原典（Classic Papers）
- Merton, R. C. (1976). "Option Pricing When Underlying Stock Returns Are Discontinuous." *Journal of Financial Economics*, 3(1-2), 125-144.
  → 式(8)のジャンプ拡散過程の基礎理論。
- Verhulst, P. F. (1838). "Notice sur la loi que la population suit dans son accroissement." *Correspondance Mathématique et Physique*, 10, 113-121.
  → 式(12)・(13)のロジスティック方程式の原典。
- Garman, M. B., & Kohlhagen, S. W. (1983). "Foreign Currency Option Values." *Journal of International Money and Finance*, 2(3), 231-237.
  → 為替レートを確率過程として扱う枠組み（式(2)）の基礎。

### 関連・発展論文（Contemporary Literature）
- Campbell, J. Y., & Shiller, R. J. (1988). "The Dividend-Price Ratio and Expectations of Future Dividends and Discount Factors." *Review of Financial Studies*, 1(3), 195-228.
  → 式(1)のドリフト $\mu_S$ をファンダメンタルズ要因（将来配当・割引率の改訂）に分解する枠組みへの接続。

---

## 補論

### 補論A：積の伊藤の補題による円建てリターンの導出（式(3)・(4)の完全ステップ）

**主張**：$S_t,\ X_t$ がそれぞれ式(1)・式(2)のGBMに従い、$\mathrm{Corr}(dW_{S,t},dW_{X,t})=\rho_{S,X}\,dt$ であるとき、$S_t^{\text{円}}=S_tX_t$ は式(3)・(4)に従う。

**証明（ステップバイステップ）**．

**Step 1：伊藤の補題の一般形を確認する。**
2変数関数 $f(S,X)$ に対する伊藤の補題は次の通りである。

$$
df = \frac{\partial f}{\partial S}dS + \frac{\partial f}{\partial X}dX + \frac{1}{2}\frac{\partial^2 f}{\partial S^2}(dS)^2 + \frac{\partial^2 f}{\partial S\partial X}(dS)(dX) + \frac{1}{2}\frac{\partial^2 f}{\partial X^2}(dX)^2
$$

これは1変数のテイラー展開を2変数に拡張し、確率項の2次の項（$(dS)^2$等）だけを残す、というのが伊藤の補題の考え方である。通常の微積分では2次以上の微小量は無視できるが、確率過程では $(dW_t)^2$ が $dt$ と同じオーダーになるため無視できない、という点がポイントである。

**Step 2：今回の関数を定める。**
$f(S,X)=SX$ とおく（円建て評価額を求めたいので）。このとき偏微分は

$$
\frac{\partial f}{\partial S}=X,\qquad \frac{\partial f}{\partial X}=S,\qquad \frac{\partial^2 f}{\partial S^2}=0,\qquad \frac{\partial^2 f}{\partial X^2}=0,\qquad \frac{\partial^2 f}{\partial S\partial X}=1
$$

（$f=SX$ を $S$ で1回微分すると $X$、もう1回微分すると $0$。$S,X$ それぞれで1回ずつ微分すると $1$。）

**Step 3：確率過程の掛け算のルール（伊藤の乗法表）を確認する。**
ブラウン運動の増分については、次の「掛け算表」が成り立つ（$dt\to 0$ の極限で厳密に成立する規則）。

$$
(dW_{S,t})^2 = dt,\qquad (dW_{X,t})^2=dt,\qquad dW_{S,t}\,dW_{X,t}=\rho_{S,X}\,dt,\qquad dt\cdot dW=0,\qquad (dt)^2=0
$$

直感的には、ブラウン運動の増分は「1ステップの大きさが $\sqrt{dt}$」なので、2乗すると $dt$ のオーダーになって消えずに残る、という点だけ押さえれば十分である。$dt$ を含む項は $dt$ が2つ以上掛かると即座に無視できるほど小さくなる。

**Step 4：$(dS)^2,\ (dX)^2,\ (dS)(dX)$ を計算する。**
$dS_t=\mu_S S_t\,dt+\sigma_S S_t\,dW_{S,t}$、$dX_t=\mu_X X_t\,dt+\sigma_X X_t\,dW_{X,t}$ を代入し、Step 3のルールを使って2乗・掛け算する。$dt$ を含む交差項はすべて消える。

$$
(dS_t)^2 = \sigma_S^2 S_t^2 (dW_{S,t})^2 = \sigma_S^2 S_t^2\,dt
$$
$$
(dX_t)^2 = \sigma_X^2 X_t^2\,dt
$$
$$
(dS_t)(dX_t) = \sigma_S\sigma_X S_tX_t\,dW_{S,t}\,dW_{X,t} = \rho_{S,X}\sigma_S\sigma_X S_tX_t\,dt
$$

**Step 5：Step 2〜4の結果をStep 1の伊藤の補題の式に代入する。**

$$
d(S_tX_t) = X_t\,dS_t + S_t\,dX_t + \frac{1}{2}\cdot 0\cdot(dS_t)^2 + 1\cdot(dS_t)(dX_t) + \frac{1}{2}\cdot 0\cdot(dX_t)^2
$$
$$
= X_t\,dS_t + S_t\,dX_t + \rho_{S,X}\sigma_S\sigma_X S_tX_t\,dt
$$

**Step 6：$dS_t,\ dX_t$ をそれぞれ式(1)・式(2)の形に戻して展開する。**

$$
X_t\,dS_t = X_t(\mu_S S_t\,dt+\sigma_S S_t\,dW_{S,t}) = \mu_S S_tX_t\,dt + \sigma_S S_tX_t\,dW_{S,t}
$$
$$
S_t\,dX_t = \mu_X S_tX_t\,dt + \sigma_X S_tX_t\,dW_{X,t}
$$

これらをStep 5の式に代入して整理する。

$$
d(S_tX_t) = \big(\mu_S+\mu_X+\rho_{S,X}\sigma_S\sigma_X\big)S_tX_t\,dt + \sigma_S S_tX_t\,dW_{S,t} + \sigma_X S_tX_t\,dW_{X,t}
$$

**Step 7：両辺を $S_tX_t$ で割って「比率変化」の形にする。**
$S_t^{\text{円}}=S_tX_t$ とおいて両辺を $S_t^{\text{円}}$ で割ると

$$
\frac{dS_t^{\text{円}}}{S_t^{\text{円}}} = \big(\mu_S+\mu_X+\rho_{S,X}\sigma_S\sigma_X\big)\,dt + \sigma_S\,dW_{S,t}+\sigma_X\,dW_{X,t}
$$

これは式(3)そのものである。

**Step 8：分散（式(4)）を導く。**
拡散項 $\sigma_S\,dW_{S,t}+\sigma_X\,dW_{X,t}$ の分散を計算する。分散は「2乗の期待値」であり、Step 3のルール（$(dW_{S,t})^2=dt$、$(dW_{X,t})^2=dt$、$dW_{S,t}dW_{X,t}=\rho_{S,X}dt$）を使うと

$$
\mathrm{Var}\big[\sigma_S\,dW_{S,t}+\sigma_X\,dW_{X,t}\big] = \sigma_S^2\,dt + \sigma_X^2\,dt + 2\sigma_S\sigma_X\cdot\rho_{S,X}\,dt = \big(\sigma_S^2+\sigma_X^2+2\rho_{S,X}\sigma_S\sigma_X\big)dt
$$

したがって単位時間あたりの分散が $(\sigma^{\text{円}})^2=\sigma_S^2+\sigma_X^2+2\rho_{S,X}\sigma_S\sigma_X$ となり、式(4)が確認できる。$\blacksquare$

---

### 補論B：ロジスティック方程式（式(12)）の解法（式(13)の完全ステップ）

**主張**：$\dfrac{dW}{dt}=\mu_{\text{net}}W\left(1-\dfrac{W}{K}\right)$、初期条件 $W(0)=W_0$ のとき、解は式(13)の $W_t=\dfrac{K}{1+\frac{K-W_0}{W_0}e^{-\mu_{\text{net}}t}}$ で与えられる。

**証明（ステップバイステップ）**．

**Step 1：変数分離法を使う準備をする。**
この微分方程式は「$W$ に関する項」と「$t$ に関する項」に分離できる形（変数分離形）をしている。両辺を $W\left(1-\dfrac{W}{K}\right)$ で割り、$dt$ を右辺に移すと

$$
\frac{dW}{W\left(1-\dfrac{W}{K}\right)} = \mu_{\text{net}}\,dt
$$

**Step 2：左辺を積分しやすい形に部分分数分解する。**
$\dfrac{1}{W\left(1-\dfrac{W}{K}\right)}$ を $\dfrac{A}{W}+\dfrac{B}{1-\frac{W}{K}}$ の形に分解したい。通分すると

$$
\frac{A\left(1-\dfrac{W}{K}\right)+BW}{W\left(1-\dfrac{W}{K}\right)} = \frac{1}{W\left(1-\dfrac{W}{K}\right)}
$$

なので、分子について $A\left(1-\dfrac{W}{K}\right)+BW=1$ が全ての $W$ で成り立つ必要がある。

- $W=0$ を代入すると：$A\cdot 1 = 1$ なので $A=1$。
- $W$ の係数を比較すると：$-\dfrac{A}{K}+B=0$ なので $B=\dfrac{A}{K}=\dfrac{1}{K}$。

よって

$$
\frac{1}{W\left(1-\dfrac{W}{K}\right)} = \frac{1}{W} + \frac{1/K}{1-\dfrac{W}{K}}
$$

**Step 3：両辺を積分する。**

$$
\int\left[\frac{1}{W}+\frac{1/K}{1-\frac{W}{K}}\right]dW = \int \mu_{\text{net}}\,dt
$$

左辺の第1項は $\displaystyle\int \frac{1}{W}dW = \ln|W|$（対数の基本公式）。

左辺の第2項は置換積分を使う。$u=1-\dfrac{W}{K}$ とおくと $du=-\dfrac{1}{K}dW$、つまり $\dfrac{1}{K}dW=-du$ なので

$$
\int \frac{1/K}{1-\frac{W}{K}}\,dW = \int \frac{-du}{u} = -\ln|u| = -\ln\left|1-\frac{W}{K}\right|
$$

右辺は $\displaystyle\int \mu_{\text{net}}\,dt = \mu_{\text{net}}t + C$（$C$ は積分定数）。

まとめると

$$
\ln|W| - \ln\left|1-\frac{W}{K}\right| = \mu_{\text{net}}t + C
$$

**Step 4：対数の差を1つの対数にまとめ、両辺を指数に乗せる。**
対数の差は商の対数（$\ln a-\ln b=\ln(a/b)$）なので

$$
\ln\left(\frac{W}{1-\frac{W}{K}}\right) = \mu_{\text{net}}t + C
$$

両辺を指数関数 $\exp(\cdot)$ に乗せる（$\ln$ の逆関数）と

$$
\frac{W}{1-\frac{W}{K}} = e^{\,\mu_{\text{net}}t+C} = e^{C}\cdot e^{\,\mu_{\text{net}}t}
$$

ここで $e^{C}$ は正の定数なので、これを新しい定数 $A$ とおく：$A\equiv e^{C}$。

$$
\frac{W}{1-\frac{W}{K}} = A\,e^{\mu_{\text{net}}t}
$$

**Step 5：初期条件 $W(0)=W_0$ を使って定数 $A$ を決定する。**
$t=0$ を代入すると $e^{\mu_{\text{net}}\cdot 0}=1$ なので

$$
\frac{W_0}{1-\frac{W_0}{K}} = A
$$

分母を通分すると $1-\dfrac{W_0}{K}=\dfrac{K-W_0}{K}$ なので

$$
A = \frac{W_0}{\frac{K-W_0}{K}} = \frac{W_0 K}{K-W_0}
$$

**Step 6：$A$ を代入した式を $W$ について解く。**
Step 4の式に $A$ を代入する。

$$
\frac{W}{1-\frac{W}{K}} = \frac{W_0K}{K-W_0}\,e^{\mu_{\text{net}}t}
$$

両辺に $\left(1-\dfrac{W}{K}\right)$ を掛けて $W$ について整理する。まず左辺の分母を払う。

$$
W = \frac{W_0K}{K-W_0}\,e^{\mu_{\text{net}}t}\left(1-\frac{W}{K}\right)
$$

右辺を展開する。

$$
W = \frac{W_0K}{K-W_0}\,e^{\mu_{\text{net}}t} \;-\; \frac{W_0}{K-W_0}\,e^{\mu_{\text{net}}t}\cdot W
$$

$W$ を含む項を左辺に集める。

$$
W + \frac{W_0}{K-W_0}\,e^{\mu_{\text{net}}t}\cdot W = \frac{W_0K}{K-W_0}\,e^{\mu_{\text{net}}t}
$$

左辺を $W$ でくくる。

$$
W\left(1+\frac{W_0}{K-W_0}\,e^{\mu_{\text{net}}t}\right) = \frac{W_0K}{K-W_0}\,e^{\mu_{\text{net}}t}
$$

**Step 7：両辺を整理し、分母・分子を $\dfrac{W_0}{K-W_0}e^{\mu_{\text{net}}t}$ で割って見やすい形にする。**

$$
W = \frac{\dfrac{W_0K}{K-W_0}\,e^{\mu_{\text{net}}t}}{1+\dfrac{W_0}{K-W_0}\,e^{\mu_{\text{net}}t}}
$$

分子・分母をともに $\dfrac{W_0}{K-W_0}e^{\mu_{\text{net}}t}$ で割ると、分子は $K$ になり、分母は

$$
\frac{1}{\dfrac{W_0}{K-W_0}e^{\mu_{\text{net}}t}} + 1 = \frac{K-W_0}{W_0}e^{-\mu_{\text{net}}t} + 1
$$

となる。したがって

$$
W_t = \frac{K}{1+\dfrac{K-W_0}{W_0}e^{-\mu_{\text{net}}t}}
$$

これが式(13)であり、証明が完了した。$\blacksquare$

**形状の確認（検算）**：
- $t=0$ を代入すると、$e^{0}=1$ より $W_0=\dfrac{K}{1+\frac{K-W_0}{W_0}}=\dfrac{K}{\frac{W_0+K-W_0}{W_0}}=\dfrac{KW_0}{K}=W_0$ となり、初期条件と一致することが確認できる。
- $t\to\infty$ のとき $e^{-\mu_{\text{net}}t}\to 0$（$\mu_{\text{net}}>0$ の場合）なので、分母は $1$ に近づき $W_t\to K$ となる。つまり、どれだけ時間が経っても資産規模は容量 $K$ を超えない。
- $W=K/2$ を代入すると $1+\frac{K-W_0}{W_0}e^{-\mu_{\text{net}}t}=2$ となる点で曲線の増加率が最大になる（S字の変曲点）ことが、2階微分をとることで確認できる。

---

*本稿は数理モデルの導出のみを目的としたものであり、特定の商品への投資助言を意図するものではない。個別の投資信託を評価する際のパラメータ設定（$e,\ \rho_{S,X},\ \tau_{\text{div}},\ \delta_{\text{wrapper}},\ K$ 等）や、実務的なチェックリストは別稿にて扱う。*
