---
layout: post
title: "物価水準の財政理論 第5章 粘着価格モデル：数理モデル早見表"
date: 2026-10-25 00:00:00 +0900
categories: [経済学, マクロ経済学]
math: true
order: 5
redirect_from:
  - /2026/10/25/cochrane-ftpl-sticky-price-model/
related_posts: false
---

{% raw %}
# 財政理論の粘着価格モデル：数理モデル
### 新ケインジアン粘着価格モデルに「政府債務の評価式」を加える（Cochrane『The Fiscal Theory of the Price Level』第5章）

---

## この記事について

この記事は、John H. Cochrane の著作『The Fiscal Theory of the Price Level』（物価水準の財政理論、Princeton University Press, 2023）の改訂稿抜粋のうち、**第5章「Fiscal Theory in Sticky Price Models」の背景にある数理モデル**を、式・前提・記号・導出に絞って整理した早見表です。論文（書籍）の文章による解説や図の議論は最小限にしています。

**論文の紹介**

- 物価水準の財政理論（FTPL）は、政府債務の実質価値が将来の基礎的財政余剰の割引現在価値に等しいという評価式で、物価水準（インフレ）を決める理論です。
- この書籍は、金利目標（金利ペッグ）のもとでも、インフレが安定・一意・長期中立になる「完全なインフレ理論」を、財政理論で与えることを目指しています。
- 第5章はその中心的な章です。標準的な新ケインジアン（IS曲線とフィリップス曲線）の粘着価格モデルに財政の評価式を加え、さらに長期債務と連続時間表現を導入します。
- 第6章（中立性と金利へのインフレの反応）、第7章（政策ルールとS字型の余剰過程）は、別の記事として扱う予定です。この記事では扱いません。

**この記事の対象範囲**：抜粋の第5章（5.1〜5.12 の数式）。第5章末尾の 5.13〜5.15（要約・一時的金利ショック・予想された政策）は、新しい式を含まないため対象外です。

---

## 目次

- [1. 数理モデル](#sec1)
- [2. 説明できる現象](#sec2)
- [3. モデルが整理している点](#sec3)
- [4. 対象外の現象](#sec4)
- [付録：導出手順](#appendix)

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間・情報構造**

代表的消費者（産出＝消費）、独占的競争の価格設定企業、政府（債務と基礎的財政余剰）、中央銀行（名目金利）からなる。時間は離散時間（1.1〜1.6）と連続時間（1.7〜1.10）の両方で書く。すべての式は定常状態（$\pi=0,\ i=r,\ \tilde{s}=rv$）からの線形化された乖離で書かれ、$x$ は産出ギャップを表す。人々は合理的期待（モデルと整合的な期待）を持つ。

**A1 線形化**

消費の一階条件も価格設定の一階条件も、定常状態の近傍で線形化したものを使う。外すと、非線形性による影響（リスク項など）が入る。

**A2 非爆発条件**

均衡経路は爆発しない（$x$, $\pi$, 債務価値 $v$, 債券価格 $q$ が発散しない）。これにより、爆発的な根に対応する期待誤差が決まる。外すと、解が一意でなくなる。

**A3 粘着価格**

価格は価格変更費用、または確率的な変更機会のために硬直する。$\kappa\to\infty$ が伸縮価格の極限。外すと、価格水準が瞬時にジャンプできる。

**A4 財政の評価式（財政理論）**

政府債務の実質価値は、基礎的余剰の割引現在価値に等しい。余剰過程 $\tilde{s}$ は外生で、インフレや金利に反応しない。外すと（余剰がインフレに反応すると）、物価水準の決定が金融政策側に移る。

**A5 期待仮説**

あらゆる満期の債券の期待名目収益率は、名目短期金利 $i_t$ に等しい。時間変動するリスク・流動性プレミアムはない。

**A6 幾何的満期構造**

時点 $t-1$ に発行された債券ポートフォリオのうち、時点 $t+j$ に満期を迎える額は $B^{(t+j)}_{t-1}=\omega^{j}B_{t-1}$。$\omega=0$ が短期債、連続時間の $\omega\to\infty$ が瞬時債務、$\omega=0$（連続時間）が永久債。

**A7 価格水準の連続性（連続時間）**

連続時間では、インフレ率はジャンプ・拡散してよいが、価格水準 $p_t$ は連続で、$dp_t=\pi_t\,dt$ により完全に予測可能。

**A8 攪乱項の省略**

IS曲線・フィリップス曲線への外生攪乱は入れず、金融政策と財政のショックだけを扱う。

**正則条件**

$$
0\lt\beta\le 1,\quad \sigma\gt 0,\quad \kappa\gt 0,\quad \rho\le 1,\quad 0\le\omega,\quad |\eta_i|\lt 1,\quad |\eta_s|\lt 1
$$

> 第3章で定義される式（線形化された債務式 (3.17)、予期せぬインフレの恒等式 (3.22)、(3.42)、(3.48)、付録 (A1.25)）は抜粋に含まれていない。この記事ではそれらを使う箇所で、付録に導出を補った（補ったことを明記する）。

---

### 1.1 基本モデル（IS曲線とフィリップス曲線）

**標準的な新ケインジアン粘着価格モデル**

$$
x_t=\underbrace{E_t x_{t+1}}_{\text{将来の産出}}-\sigma\underbrace{\left(i_t-E_t\pi_{t+1}\right)}_{\text{実質金利}}\tag{1}
$$

$$
\pi_t=\underbrace{\beta E_t\pi_{t+1}}_{\text{将来のインフレ}}+\kappa\underbrace{x_t}_{\text{産出ギャップ}}\tag{2}
$$

> (1) は異時点間代替（IS）の式、(2) は新ケインジアン・フィリップス曲線。$i_t=E_t\pi_{t+1}$ の伸縮価格モデルを、産出 $x_t$ を通じて一般化したもの。

**積分形（前方に解いた形）**

$$
x_t=-\sigma E_t\sum_{j=0}^{\infty}\underbrace{\left(i_{t+j}-\pi_{t+j+1}\right)}_{\text{将来の実質金利}}\tag{3}
$$

$$
\pi_t=\kappa E_t\sum_{j=0}^{\infty}\underbrace{\beta^{j}}_{\text{割引}}\,\underbrace{x_{t+j}}_{\text{将来の産出}}\tag{4}
$$

> 実質金利が現在・将来に高いと産出は低い。産出ギャップが現在・将来に高いとインフレは高い。(4) から、$\kappa\to\infty$ が伸縮価格の極限。

| 記号・項目 | 意味 |
|---|---|
| $x_t$ | 産出ギャップ（定常状態からの乖離） |
| $\pi_t$ | インフレ率 |
| $i_t$ | 名目金利 |
| $E_t$ | 時点 $t$ の情報による期待 |
| $\sigma$ | 異時点間代替の弾力性（$\sigma=1/\gamma$、$\gamma$ は相対的危険回避度） |
| $\beta$ | 割引因子（$\beta=e^{-\rho_c}$、$\rho_c$ は連続時間の割引率） |
| $\kappa$ | フィリップス曲線の傾き（価格の粘着性の逆の指標） |

---

### 1.2 IS曲線とフィリップス曲線の消去解

**インフレと金利だけの関係**

$$
-\underbrace{\frac{\beta}{\sigma\kappa}E_t\pi_{t+2}}_{\text{2期先}}+\underbrace{\left(1+\frac{1+\beta}{\sigma\kappa}\right)E_t\pi_{t+1}}_{\text{1期先}}-\underbrace{\frac{1}{\sigma\kappa}\pi_t}_{\text{現在}}=i_t\tag{5}
$$

**特性根**

$$
\lambda_{1,2}=\frac{\left(1+\beta+\sigma\kappa\right)\pm\sqrt{\left(1+\beta+\sigma\kappa\right)^{2}-4\beta}}{2}\tag{6}
$$

**インフレの解（金利の両側移動平均）**

$$
\pi_{t+1}=\underbrace{\frac{\sigma\kappa}{\lambda_1-\lambda_2}}_{\text{重み}}\left[\underbrace{i_t}_{\text{現在}}+\underbrace{\sum_{j=1}^{\infty}\lambda_1^{-j}i_{t-j}}_{\text{過去の金利}}+\underbrace{\sum_{j=1}^{\infty}\lambda_2^{\,j}E_{t+1}i_{t+j}}_{\text{将来の金利}}\right]+\underbrace{\sum_{j=0}^{\infty}\lambda_1^{-j}\delta_{t+1-j}}_{\text{過去の期待ショック}}\tag{7}
$$

**係数の和は1**

$$
\frac{\sigma\kappa}{\lambda_1-\lambda_2}=\left(1+\frac{\lambda_1^{-1}}{1-\lambda_1^{-1}}+\frac{\lambda_2}{1-\lambda_2}\right)^{-1}\tag{8}
$$

**伸縮価格モデル（極限）**

$$
\pi_{t+1}=i_t+\delta_{t+1}\tag{9}
$$

> (6) の根は $\lambda_1\gt 1$、$\lambda_2\lt 1$。移動平均の重みは収束する。(7) は、均衡の金利とインフレの関係であり、金利がペッグでも政策ルール $i_t=\theta\pi_t+u_t$ でも成り立つ。(7) には期待ショック $\delta_{t+1}$ が残り、解は多重均衡（$\delta_1$ で指標づけられる族）になる。

| 記号・項目 | 意味 |
|---|---|
| $\lambda_1,\lambda_2$ | 離散時間の特性根（$\lambda_1\gt 1\gt\lambda_2\gt 0$） |
| $\delta_{t+1}$ | 期待ショック（$E_t\delta_{t+1}=0$、解の初期条件に対応） |
| $\varepsilon$ | 構造ショック（外生）。$\delta$ と区別する |

---

### 1.3 政府債務の評価式（短期債）

**債務の実質価値の流れ（線形化）**

$$
\rho v_{t+1}=\underbrace{v_t}_{\text{前期の債務}}+\underbrace{i_t-\pi_{t+1}}_{\text{実質利子}}-\underbrace{\tilde{s}_{t+1}}_{\text{基礎的余剰}}\tag{10}
$$

**伸縮価格の評価式（予期せぬインフレ）**

$$
\Delta E_{t+1}\pi_{t+1}=-\Delta E_{t+1}\sum_{j=0}^{\infty}\rho^{j}\tilde{s}_{t+1+j}\equiv-\varepsilon_{\Sigma s,t+1}\tag{11}
$$

$$
\pi_{t+1}=i_t-\varepsilon_{\Sigma s,t+1}\tag{12}
$$

**割引率（実質金利）の項を含む評価式**

$$
\Delta E_{t+1}\pi_{t+1}=\underbrace{-\Delta E_{t+1}\sum_{j=0}^{\infty}\rho^{j}\tilde{s}_{t+1+j}}_{\text{余剰の現在価値}}+\underbrace{\Delta E_{t+1}\sum_{j=1}^{\infty}\rho^{j}\left(i_{t+j}-\pi_{t+1+j}\right)}_{\text{実質金利（割引率）の効果}}\tag{13}
$$

> (12) は (9) の期待ショック $\delta_{t+1}$ を財政ショックで置き換えたもの。(7) と (13) をあわせると、$\delta_{t+1}$ が決まり、均衡が一意になる。(7) の多重度のうち前向きの根が1つあり、(13) がそれを決める。

| 記号・項目 | 意味 |
|---|---|
| $v_t$ | 政府債務の実質価値（定常状態からの乖離） |
| $\tilde{s}_t$ | 基礎的余剰（スケールされた乖離） |
| $\rho$ | 離散時間の債務式の線形化定数（$\rho\le 1$。連続時間の割引率 $\rho_c$ とは別） |
| $\Delta E_{t+1}$ | $E_{t+1}-E_t$（情報の更新による期待の変化） |
| $\varepsilon_{\Sigma s,t+1}$ | 余剰の現在価値へのショック（$=\Delta E_{t+1}\sum\rho^{j}\tilde{s}_{t+1+j}$。赤字ショックは負） |

---

### 1.4 離散時間・短期債の完全モデル

**構成**

IS曲線 (1)、フィリップス曲線 (2)、債務式 (10)（$i_t=r^n_{t+1}$）に、金利と余剰の外生過程を加える。

$$
i_{t+1}=\eta_i i_t+\varepsilon_{i,t+1}\tag{14}
$$

$$
\tilde{s}_{t+1}=\eta_s\tilde{s}_t+\varepsilon_{s,t+1}\tag{15}
$$

> 解法は行列法：システムを1階の形で書き、不安定固有値を前向きに、安定固有値を後向きに解く。$\rho\le 1$ なので (10) が前向きの根を与え、期待誤差 $\delta_{t+1}$ を決める。(11)〜(13) の恒等式はこの方法に含まれる。

| 記号・項目 | 意味 |
|---|---|
| $\eta_i,\eta_s$ | 金利・余剰のAR(1)係数 |
| $\varepsilon_{i,t},\varepsilon_{s,t}$ | 金利・余剰の構造ショック |
| $r^n_{t+1}$ | 政府債券ポートフォリオの名目収益率 |

---

### 1.5 長期債務

**債務式と債券収益率**

$$
\rho v_{t+1}=v_t+\underbrace{r^n_{t+1}}_{\text{名目収益率}}-\pi_{t+1}-\tilde{s}_{t+1}\tag{16}
$$

$$
E_t r^n_{t+1}=i_t\tag{17}
$$

$$
r^n_{t+1}=\underbrace{\omega q_{t+1}}_{\text{翌期の価格}}-\underbrace{q_t}_{\text{今期の価格}}\tag{18}
$$

**前向きに解いた収益率**

$$
r^n_{t+1}=i_t-\Delta E_{t+1}\sum_{j=1}^{\infty}\omega^{j}i_{t+j}\tag{19}
$$

**期待誤差で書き直す**

$$
r^n_{t+1}=i_t+\delta_{r,t+1}\tag{20}
$$

$$
\rho v_{t+1}=v_t+i_t-\pi_{t+1}-\tilde{s}_{t+1}+\delta_{r,t+1}\tag{21}
$$

$$
\omega q_{t+1}=q_t+i_t+\delta_{r,t+1}\tag{22}
$$

> モデルは (1)、(2)、(16)〜(18)、(14)、(15)。(18) は債券価格 $q_t$ が爆発しない条件で、債務の評価式が予期せぬインフレを決めるのと同様に、予期せぬ名目収益率を決める。(22) が追加の爆発的な根を与え、期待誤差 $\delta_{r,t+1}$ を決める。
> **符号の注意**：論文の式の印字は (19) の第2項が $+$ になっているが、(18)（と連続時間の (29)、(48)）と整合する符号は $-$。付録 A.6 で導出して確認した。金利上昇は債券価格 $q$ を下げる。

| 記号・項目 | 意味 |
|---|---|
| $q_t$ | 債券価格の対数（定常状態からの乖離） |
| $\omega$ | 満期構造のパラメータ（大きいほど短期。$\omega=0$ は短期債の離散時間） |
| $\delta_{r,t+1}$ | 債券収益率の期待ショック |

---

### 1.6 金融政策ルール

**テイラー型ルール（(14) に置き換える）**

$$
i_t=\underbrace{\theta\pi_t}_{\text{インフレへの反応}}+\underbrace{u_t}_{\text{金融政策の攪乱}}\tag{23}
$$

$$
u_t=\eta_u u_{t-1}+\varepsilon_{u,t}\tag{24}
$$

> モデルは (1)、(2)、(16)〜(18)、(15)、(23)、(24)。ルールは財政ショックに反応して金利を上げ、インフレを平準化する。$\theta=1$ の極限ではインフレはランダムウォークになる。

| 記号・項目 | 意味 |
|---|---|
| $\theta$ | インフレへの金利反応係数 |
| $u_t$ | 金融政策の攪乱（AR(1)） |
| $\eta_u,\varepsilon_{u,t}$ | その係数とショック（論文の表記は $\eta,\varepsilon_t$） |

---

### 1.7 連続時間モデル

**連続時間の体系（幾何的満期構造）**

$$
dx_t=\underbrace{\sigma\left(i_t-\pi_t\right)dt}_{\text{IS曲線}}+d\delta_{x,t}\tag{25}
$$

$$
d\pi_t=\underbrace{\left(\rho_c\pi_t-\kappa x_t\right)dt}_{\text{フィリップス曲線}}+d\delta_{\pi,t}\tag{26}
$$

$$
dp_t=\underbrace{\pi_t\,dt}_{\text{価格水準は連続}}\tag{27}
$$

$$
dv_t=\underbrace{\left(rv_t+i_t-\pi_t-\tilde{s}_t\right)dt}_{\text{債務の実質価値}}+d\delta_{r,t}\tag{28}
$$

$$
dq_t=\underbrace{\left[(r+\omega)q_t+i_t\right]dt}_{\text{債券価格}}+d\delta_{r,t}\tag{29}
$$

$$
i_t=\theta\pi_t+u_t\tag{30}
$$

$$
du_t=-\eta_i u_t\,dt+d\varepsilon_{i,t}\tag{31}
$$

$$
d\tilde{s}_t=-\eta_s\tilde{s}_t\,dt+d\varepsilon_{s,t}\tag{32}
$$

> 変数は定常状態（$\pi=0,\ i=r,\ \tilde{s}=rv$）からの乖離。$dx_t$ は $x_{t+dt}-x_t$ にあたる前向き微分。$d\delta$ は期待ショック、$d\varepsilon$ は構造ショックで、どちらも拡散でも補償ジャンプ過程でもよい。(27) により価格水準は連続なので、離散時間にあった「物価水準のジャンプによる債務の目減り」は起きない。

| 記号・項目 | 意味 |
|---|---|
| $\rho_c$ | 連続時間の割引率（$\beta=e^{-\rho_c}$。論文の表記は $\rho$） |
| $r$ | 定常状態の実質金利 |
| $p_t$ | 物価水準の対数 |
| $d\delta_{x,t},d\delta_{\pi,t},d\delta_{r,t}$ | $x$、$\pi$、債券収益率の期待ショック（$d\delta=dx-E\,dx$ の形） |
| $d\varepsilon_{i,t},d\varepsilon_{s,t}$ | 金利・余剰の構造ショック |

---

### 1.8 連続時間と離散時間の対応

**積分形（(3)、(4) の連続時間版）**

$$
x_t=-\sigma E_t\int_{\tau=0}^{\infty}\left(i_{t+\tau}-\pi_{t+\tau}\right)d\tau\tag{33}
$$

$$
\pi_t=\kappa E_t\int_{\tau=0}^{\infty}e^{-\rho_c\tau}x_{t+\tau}\,d\tau\tag{34}
$$

**離散時間版を書き直す（$\beta=e^{-\rho_c}$）**

$$
E_t\left(x_{t+1}-x_t\right)=\sigma\left(i_t-E_t\pi_{t+1}\right)\tag{35}
$$

$$
E_t\left(\pi_{t+1}-\pi_t\right)=\left(e^{\rho_c}-1\right)\pi_t-e^{\rho_c}\kappa x_t\tag{36}
$$

**時間間隔 $\Delta$ の場合**

$$
E_t\left(x_{t+\Delta}-x_t\right)=\sigma\left(i_t-E_t\pi_{t+\Delta}\right)\Delta\tag{37}
$$

$$
E_t\left(\pi_{t+\Delta}-\pi_t\right)=\left(e^{\rho_c\Delta}-1\right)\pi_t-e^{\rho_c\Delta}\kappa x_t\Delta\tag{38}
$$

**債務の分解（(28)、(29) の元になる式）**

$$
dv_t=\left(rv_t-\pi_t-\tilde{s}_t\right)dt+dR^n_t\tag{39}
$$

$$
dR^n_t=i_t\,dt+d\delta_{r,t}\tag{40}
$$

$$
dq_t=(r+\omega)q_t\,dt+dR^n_t\tag{41}
$$

**瞬時債務（$\omega\to\infty$）**

$$
dv_t=\left(rv_t+i_t-\pi_t-\tilde{s}_t\right)dt\tag{42}
$$

> $\Delta\to 0$ とすると (37)、(38) から (25)、(26) が出る。(37) では $E_t\pi_{t+\Delta}-\pi_t$ も $\Delta$ の次数なので、IS曲線のインフレは $\pi_t$ と $E_t\pi_{t+\Delta}$ のどちらでもよい。(40) は期待仮説、(41) は幾何的クーポン債の価格式。(42) では $d\delta_{r,t}$ の項が消える。

| 記号・項目 | 意味 |
|---|---|
| $\Delta$ | 時間間隔 |
| $R^n_t$ | 政府債券の名目収益率の累積（$dR^n_t$ はその増分） |
| $Q_t,\ Q$ | 債券価格と定常状態の価格（$q_t=Q_t/Q-1$、$Q=1/(r+\omega)$） |

---

### 1.9 解法（数値解と解析解）

**金利ルールを代入した標準形**

$$
\begin{aligned}
dx_t&=\sigma\left[u_t-(1-\theta)\pi_t\right]dt+d\delta_{x,t}\\
d\pi_t&=\left(\rho_c\pi_t-\kappa x_t\right)dt+d\delta_{\pi,t}\\
dv_t&=\left[rv_t-(1-\theta)\pi_t+u_t-\tilde{s}_t\right]dt+d\delta_{r,t}\\
dq_t&=\left[(r+\omega)q_t+\theta\pi_t+u_t\right]dt+d\delta_{r,t}\\
du_t&=-\eta_i u_t\,dt+d\varepsilon_{i,t}\\
d\tilde{s}_t&=-\eta_s\tilde{s}_t\,dt+d\varepsilon_{s,t}
\end{aligned}\tag{43}
$$

**行列形**

$$
dz_t=\underbrace{Az_t\,dt}_{\text{状態の推移}}+\underbrace{B\,d\varepsilon_t}_{\text{構造ショック}}+\underbrace{C\,d\delta_t}_{\text{期待ショック}}\tag{44}
$$

**IS曲線とフィリップス曲線の解（完全予見の領域 $t\gt 0$）**

$$
\pi_t=\underbrace{\left(\frac{1}{\mu_2}+\frac{1}{\mu_1}\right)^{-1}}_{\text{重み}}\left[\int_{\tau=0}^{t}e^{-\mu_2\tau}i_{t-\tau}\,d\tau+\int_{\tau=0}^{\infty}e^{-\mu_1\tau}i_{t+\tau}\,d\tau\right]+\underbrace{C_0e^{-\mu_2 t}}_{\text{減衰する過渡項}}\tag{45}
$$

$$
\mu_1\equiv\frac{\rho_c+\sqrt{\rho_c^{2}+4\kappa\sigma}}{2},\qquad\mu_2\equiv\frac{-\rho_c+\sqrt{\rho_c^{2}+4\kappa\sigma}}{2}\tag{46}
$$

**債務の評価式（現在価値）**

$$
v_0=dR^n_0=d\delta_{r,0}=\int_{\tau=0}^{\infty}e^{-r\tau}\left[\tilde{s}_\tau-\left(i_\tau-\pi_\tau\right)\right]d\tau\tag{47}
$$

**長期債の価格ショック**

$$
q_0=d\delta_{r,0}=dR^n_0=-\int_{\tau=0}^{\infty}e^{-(r+\omega)\tau}i_\tau\,d\tau\tag{48}
$$

> $z_t$ は状態変数と制御変数のベクトル。数値解は、$A$ の不安定固有値を前向きに、安定固有値を後向きに解く（付録のアルゴリズムは抜粋外）。(45) では $\mu_1,\mu_2$ が離散時間の $\lambda_1,\lambda_2$ にあたる（論文の表記はどちらも $\lambda_1,\lambda_2$）。解は $C_0$（または初期インフレ $\pi_0$）で指標づけられる安定解の族で、(47)、(48) がその中から一意の経路を選ぶ。$\rho_c=0$ のとき、2つの根は $\mu_1=\mu_2=\sqrt{\kappa\sigma}$ で一致する。

| 記号・項目 | 意味 |
|---|---|
| $z_t$ | 状態・制御変数のベクトル（$x,\pi,v,q,u,\tilde{s}$） |
| $A,B,C$ | 係数行列 |
| $\mu_1,\mu_2$ | 連続時間の特性根（$\mu_1,\mu_2\gt 0$） |
| $C_0$ | 任意定数（$\pi_0$ と同値の初期条件） |
| $v_0,q_0$ | 時点0のショック後の債務価値・債券価格 |

---

### 1.10 主要帰結

**主要式（金利固定の財政ショックと、財政固定の金利ショック）**

$$
\boxed{\begin{aligned}
&\text{財政ショック（}i=0\text{、現在価値が }1\text{ 下落）：}\\
&\pi_t=\underbrace{\pi_0}_{\text{初期インフレ}}e^{-\mu_2 t},\qquad\pi_0=\underbrace{r+\mu_2}_{\text{初期値の決定}}\\[4pt]
&\text{金利ショック（恒久的、}i_t=i_0\text{、余剰は不変）：}\\
&\pi_t=\left(\pi_0-i_0\right)e^{-\mu_2 t}+i_0,\qquad\pi_0=\underbrace{\left(1-\frac{r+\mu_2}{r+\omega}\right)}_{\text{長期債の効果}}i_0
\end{aligned}}\tag{49}
$$

**瞬時債務の場合の金利ショック**

$$
0=\int_{\tau=0}^{\infty}e^{-r\tau}\left(i_0-\pi_\tau\right)d\tau\quad\Longrightarrow\quad\pi_t=i_0\ \ (t\ge 0)\tag{50}
$$

**財政ショック＋$\theta=1$ のルール（長期債）**

$$
i_0=\pi_0=r+\omega\tag{51}
$$

**財政ショックの後の物価水準の極限**

$$
\lim_{t\to\infty}p_t=\int_{0}^{\infty}\pi_0 e^{-\mu_2 t}\,dt=\frac{\pi_0}{\mu_2}=1+\frac{r}{\mu_2}\tag{52}
$$

**離散時間の長期の産出とインフレのトレードオフ**

$$
x=\frac{1-\beta}{\kappa}\,\pi\tag{53}
$$

**比較静学・特殊ケース**

| 変化・ケース | 結果 | 符号・式 |
|---|---|---|
| 財政ショック（金利固定）で $\kappa\to\infty$（伸縮価格） | $\mu_2\to\infty$、物価水準が時点0に1だけジャンプ | $p_\infty=1+r/\mu_2\to 1$、(52) |
| 財政ショックの大きさ（現在価値の下落が $m$ 倍） | 初期インフレも $m$ 倍 | $\pi_0=m(r+\mu_2)$、(49) |
| 財政ショックでの $\eta_s$（余剰の持続性）の変化 | インフレ経路は不変（現在価値の和だけが効く） | (47) |
| 金利の恒久上昇で $\omega\to\infty$（短期債） | インフレは金利に等しく瞬時に上昇 | $\pi_t=i_0$、(50) |
| 金利の恒久上昇で $\omega$ が有限（長期債） | $\pi_0\lt i_0$ となり、$\omega$ が小さいほど初期の下落が大きい | $\pi_0-i_0=-\dfrac{r+\mu_2}{r+\omega}i_0\lt 0$、(49) |
| $\theta=1$ の財政ショック | 金利とインフレが $r+\omega$ だけ恒久的に上昇、実質金利は不変 | (51) |
| $\theta=1$ で $\omega=0$（永久債） | 恒久上昇は $r$ にとどまる | $i_0=r$、(51) |
| $\rho_c=0$ | 2つの根が一致 | $\mu_1=\mu_2=\sqrt{\kappa\sigma}$、(46) |

> 図から読み取れる数値（論文の図のパラメータ）：離散時間・短期債・金利固定で $\sigma=\kappa=0.5$、$r=0.01$ のとき、現在価値1%の下落に対して初期インフレは約0.4%（伸縮価格では1%）。長期債（$\omega=0.85$）で恒久的な金利上昇のとき、伸縮価格（$\kappa=1$ 相当）は期1に約5.1%のデフレ、粘着価格（$\sigma=\kappa=0.5$）は約1.5%のデフレ。$\theta=0.9$ の財政ショックでは初期インフレは約0.21%になる。

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 財政ショックのときのインフレが長く続く | 粘着価格では、物価水準のジャンプではなく、名目金利を上回るインフレが続く。低い実質金利が債券保有者の富を徐々に減らす（(49)、(47)） |
| 財政ショックの後にインフレが自然に収束する | 十分な債務が目減りすれば、中央銀行が何もしなくてもインフレは $e^{-\mu_2 t}$ で減衰する（(49)） |
| 金利を上げると短期的にインフレと産出が下がる | 長期債があると、恒久的な金利上昇が長期債の価格を下げ、その価値が短期債の保有者に移ってデフレになる（(19)、(48)、(49)）。産出は (3) により低下する |
| 長期的には金利が上がるとインフレも上がる | 恒久的な金利上昇では、インフレは金利に向かって収束する（(49) の $\pi_t\to i_0$） |
| 短期債では金利に等しくインフレが即座に上がる | 連続時間・瞬時債務では、評価式 (50) がインフレ経路を一意に決める |
| 財政ショックに対する金融政策ルールの平準化 | $\theta\gt 0$ のルールは、初期インフレを下げ、長期のインフレを上げる（(23)、(51)） |
| 債務の満期構造が金融政策の力を決める | $\theta=1$ のとき、必要なインフレは $r+\omega$ で、満期が長いほど小さい（(51)） |
| 財政ショックは発表時に効き、余剰が実現する時には効かない | 現在価値の和 $\sum\rho^{j}\tilde{s}_{t+1+j}$ だけが効く（(11)、(47)） |

## 3. モデルが整理している点 {#sec3}

- 伸縮価格モデルの「物価水準のジャンプ」が、粘着価格では、低い実質金利が続く期間に置き換わる。連続時間では価格水準が連続なので、債務の目減りのすべてが低い実質収益率から来る（(47)、(49)）。
- 名目金利の上昇は、実質金利（割引率）の上昇と利払いの増加を通じてインフレを上げる力と、長期債の価格下落（富の移転）を通じて下げる力の2つを持ち、どちらが勝つかは債務の満期、粘着性、財政の反応に依存する（(13)、(48)、(49)）。
- 金融政策は、財政ショックによるインフレそのものを消せないが、債券保有者の間で（短期債と長期債の間で）損失を再配分することで、インフレの時間経路と産出の変動を決められる（(23)、(49)、(51)）。

## 4. 対象外の現象 {#sec4}

- この記事の式は、論文の「概念的な実験（what if）」であり、定量分析に使える現実的なモデルではない（論文自身の位置づけ）。
- 長期債務モデルは、金利上昇が持続的にインフレを下げるとは主張しない。下げるのは一時的で、その後インフレはより高く戻る。
- 金利上昇が短期的にインフレを下げる、より頑健なモデル（金融チャネル、フィリップス曲線の代替など）はこのモデルの範囲外。
- IS曲線・フィリップス曲線への攪乱、時間変動するリスク・流動性プレミアム、実際の満期構造、外貨建て債務は扱わない。
- 余剰が債務やインフレに内生的に反応する財政ルール（S字型の余剰過程、第7章）、第6章（中立性と金利へのインフレの反応の議論）、第5章末尾 5.13〜5.15（要約、一時的ショック、予想された政策）は、この記事の対象外。
- 経験的な検証（VARの結果との整合など）は主張しない。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
[IS曲線 (1)] ---- 実質金利 ---->  x_t
[フィリップス曲線 (2)] <-- x_t --   π_t
      |  x を消去
      v
[(5) インフレと金利の関係]
      |  ラグ多項式の因数分解 + 部分分数
      v
[(7) π の両側移動平均 + 期待ショック δ]   <--- 多重均衡
      |
      +--- 財政側 ---
      |  [(10) 債務の流れ] ---> [(13) 予期せぬインフレ ΔEπ] ---> δ を決定
      |  長期債: [(16)-(18)] ---> [(19) 債券収益率] ---> δ_r を決定
      v
[(23) 金利ルール] --> 一意の均衡 (離散時間の完全モデル)

連続時間: (25)-(32) --(Δ→0)--> (35)-(38)
          (43) 標準形 --> (45) π の解 + (47) 債務評価 + (48) 債券価格
          --> (49)-(52) 主要帰結
```

### A.1 使う道具

**T1 前向き代入（無限和への展開）**

$y_t=a\,E_t y_{t+1}+f_t$（$|a|\lt 1$）を繰り返し代入すると、$y_t=E_t\sum_{j=0}^{\infty}a^{j}f_{t+j}$。ただし横断条件 $\lim_{T\to\infty}a^{T}E_t y_{t+T}=0$ を仮定する。

**T2 先進演算子による因数分解と部分分数展開**

$F$ を $F\,y_t=E_t y_{t+1}$ で定義する。$(F-a)(F-b)=F^2-(a+b)F+ab$ と因数分解し、$\dfrac{1}{(F-a)(F-b)}=\dfrac{1}{a-b}\left[\dfrac{1}{F-a}-\dfrac{1}{F-b}\right]$ と分ける。$|a|\gt 1$ の根は $(F-a)^{-1}=-\sum_{j\ge 0}a^{-j-1}F^{j}$（前向き）、$|b|\lt 1$ の根は $(F-b)^{-1}=\sum_{j\ge 0}b^{j}F^{-j-1}$（後向き）で展開する。

**T3 期待誤差の分解**

$\Delta E_{t+1}y=E_{t+1}y-E_t y$。時点 $t$ ですでに決まっている変数 $z_t$ については $\Delta E_{t+1}z_t=0$。繰り返し期待の法則 $E_t E_{t+1}y=E_t y$ により、$E_t\,\Delta E_{t+1}y=0$。

**T4 離散時間から連続時間への極限**

$e^{a\Delta}-1=a\Delta+O(\Delta^2)$、$e^{a\Delta}=1+O(\Delta)$ を使い、$\Delta\to 0$ とする。

**T5 積分因子**

$\dot y-ay=f$ は $\dfrac{d}{dt}\left(e^{-at}y\right)=e^{-at}f$ と書け、両辺を $[0,\infty)$ で積分する（$e^{-aT}y_T\to 0$ を仮定）。

### A.2 IS曲線とフィリップス曲線（式 (1)〜(4)）

**Step 1　消費の一階条件（出発点）**

$$
1=E_t\left[\beta\left(\frac{C_{t+1}}{C_t}\right)^{-\gamma}\left(1+i_t\right)\frac{P_t}{P_{t+1}}\right]
$$

**Step 2　対数線形化**

$c_t=\log C_t$ とおくと、定数項を除いて $E_t\left(c_{t+1}-c_t\right)=\sigma\left(i_t-E_t\pi_{t+1}\right)+(\text{定数})$。ここで $\sigma=1/\gamma$、定数は $-\sigma\cdot(-\log\beta)$。

**Step 3　産出＝消費、定数を除く**

資本も政府支出もないので $c_t=x_t$（産出ギャップ）。$E_t x_{t+1}-x_t=\sigma\left(i_t-E_t\pi_{t+1}\right)$ を整理して**式 (1)**。(2) は独占的競争の価格設定の一階条件を線形化した結果で、抜粋では導出なく与えられる。

**Step 4　(1) を前向きに繰り返す（T1）**

$x_t=E_t x_{t+1}-\sigma\left(i_t-E_t\pi_{t+1}\right)$ を $j=0,1,2,\dots$ と代入し、$E_t x_{t+T}\to 0$ とすれば**式 (3)**。

**Step 5　(2) を前向きに繰り返す（T1）**

$\pi_t=\kappa x_t+\beta E_t\pi_{t+1}$ を繰り返し代入し、$\beta^{T}E_t\pi_{t+T}\to 0$ とすれば**式 (4)**。

**確認**

(4) で $\kappa\to\infty$ のとき、有限のインフレに対して $x_{t+j}$ はゼロに近づく。つまり産出はインフレの値に依存しなくなる（伸縮価格の極限）。

| 入力・使う道具 | 内容 |
|---|---|
| 消費の一階条件 | 対数線形化（A1） |
| 前向き代入 T1 | (3)、(4) の無限和 |

### A.3 インフレと金利の関係 (5)、解 (6)〜(9)

**Step 1　$x_t$ を消去（(2) を $x_t$ について解く）**

$$
x_t=\frac{\pi_t-\beta E_t\pi_{t+1}}{\kappa}
$$

**Step 2　1期進めて期待をとる（T3、繰り返し期待）**

$$
E_t x_{t+1}=\frac{E_t\pi_{t+1}-\beta E_t\pi_{t+2}}{\kappa}
$$

**Step 3　(1) に代入し、$\kappa$ を掛ける**

$$
\pi_t-\beta E_t\pi_{t+1}=E_t\pi_{t+1}-\beta E_t\pi_{t+2}-\sigma\kappa\,i_t+\sigma\kappa\,E_t\pi_{t+1}
$$

**Step 4　整理して $-1/(\sigma\kappa)$ を掛ける**

$$
\beta E_t\pi_{t+2}-\left(1+\beta+\sigma\kappa\right)E_t\pi_{t+1}+\pi_t=-\sigma\kappa\,i_t
$$

両辺に $-1/(\sigma\kappa)$ を掛け、$\dfrac{1+\beta+\sigma\kappa}{\sigma\kappa}=1+\dfrac{1+\beta}{\sigma\kappa}$ を使うと**式 (5)**。

**Step 5　特性根（式 (6)）**

(5) を $\beta$ で割ると、先進演算子 $F$ について $F^{2}-\dfrac{1+\beta+\sigma\kappa}{\beta}F+\dfrac{1}{\beta}$。この根の逆数 $\lambda$ は、$\lambda^{2}-(1+\beta+\sigma\kappa)\lambda+\beta=0$ を満たす。二次方程式の解の公式で**式 (6)**。$\lambda=1$ での値は $-\sigma\kappa\lt 0$ なので、1 は2根の間にあり、$\lambda_1\gt 1\gt\lambda_2$。積 $\lambda_1\lambda_2=\beta\gt 0$、和 $\lambda_1+\lambda_2=1+\beta+\sigma\kappa\gt 0$ より $\lambda_2\gt 0$。

**Step 6　因数分解（T2）**

$F^{2}-\dfrac{1+\beta+\sigma\kappa}{\beta}F+\dfrac{1}{\beta}=\left(F-\lambda_2^{-1}\right)\left(F-\lambda_1^{-1}\right)$（根の和は $(\lambda_1+\lambda_2)/\beta$、積は $1/\beta$ で整合）。(5) は
$$
\left(F-\lambda_2^{-1}\right)\left(F-\lambda_1^{-1}\right)\pi_t=-\frac{\sigma\kappa}{\beta}\,i_t
$$

**Step 7　部分分数（T2）**

$a=\lambda_2^{-1}\gt 1$、$b=\lambda_1^{-1}\lt 1$ とおくと $a-b=\dfrac{\lambda_1-\lambda_2}{\beta}$。
$$
\pi_t=-\frac{\sigma\kappa}{\beta}\cdot\frac{\beta}{\lambda_1-\lambda_2}\left[\left(F-a\right)^{-1}-\left(F-b\right)^{-1}\right]i_t
$$

**Step 8　展開（T2）**

$\left(F-a\right)^{-1}=-\sum_{j\ge 0}\lambda_2^{\,j+1}F^{j}$、$\left(F-b\right)^{-1}=\sum_{j\ge 0}\lambda_1^{-j}F^{-j-1}$ を代入する。
$$
\pi_t=\frac{\sigma\kappa}{\lambda_1-\lambda_2}\left[\sum_{j=0}^{\infty}\lambda_2^{\,j+1}E_t i_{t+j}+\sum_{j=0}^{\infty}\lambda_1^{-j}i_{t-1-j}\right]
$$

**Step 9　同次解（期待ショック）を足し、1期進める**

非爆発の同次解は $\pi_{t+1}=\lambda_1^{-1}\pi_t+\delta_{t+1}$（安定根 $b=\lambda_1^{-1}$ のみ。爆発根 $a$ は A2 で除く）。したがって $\sum_{j\ge 0}\lambda_1^{-j}\delta_{t+1-j}$ が加わる。$\pi_t$ の式を1期進めると、現在の項が $i_t$（$j=0$）と過去の和 $j\ge 1$、将来の和が $E_{t+1}i_{t+j}$（$j\ge 1$）になり、**式 (7)**。

**Step 10　係数の和（式 (8)）**

$$
1+\sum_{j\ge 1}\lambda_1^{-j}+\sum_{j\ge 1}\lambda_2^{\,j}=1+\frac{\lambda_1^{-1}}{1-\lambda_1^{-1}}+\frac{\lambda_2}{1-\lambda_2}=\frac{\lambda_1-\lambda_2}{\left(\lambda_1-1\right)\left(1-\lambda_2\right)}
$$
$(\lambda_1-1)(1-\lambda_2)=\lambda_1+\lambda_2-\lambda_1\lambda_2-1=\sigma\kappa$ なので、和は $(\lambda_1-\lambda_2)/(\sigma\kappa)$。重みの $\sigma\kappa/(\lambda_1-\lambda_2)$ との積は1になり、**式 (8)**。

**確認**

$\kappa\to\infty$ のとき $\lambda_1\approx\sigma\kappa\to\infty$、$\lambda_2=\beta/\lambda_1\to 0$。(7) の重みは1に近づき、過去・将来の和は消えるので、**式 (9)** $\pi_{t+1}=i_t+\delta_{t+1}$ に一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 式 (1)、(2) | 消去の元 |
| T2 | 因数分解と部分分数展開 |
| T3 | 繰り返し期待、$E_t\delta_{t+1}=0$ |

### A.4 債務の評価式（式 (10)〜(13)）

**Step 1　(10) を $v_t$ について解く**

$$
v_t=\left(\pi_{t+1}+\tilde{s}_{t+1}-i_t\right)+\rho\,v_{t+1}
$$

**Step 2　前向きに繰り返す（T1）**

横断条件 $\rho^{T}v_{t+T}\to 0$（補った仮定）のもとで、
$$
v_t=\sum_{j=0}^{\infty}\rho^{j}\left(\tilde{s}_{t+1+j}+\pi_{t+1+j}-i_{t+j}\right)
$$

**Step 3　$\Delta E_{t+1}$ をとる（T3）**

$v_t$ と $i_t$ は時点 $t$ で既知なので $\Delta E_{t+1}v_t=0$、$\Delta E_{t+1}i_t=0$。
$$
0=\Delta E_{t+1}\left[\tilde{s}_{t+1}+\pi_{t+1}\right]+\Delta E_{t+1}\sum_{j=1}^{\infty}\rho^{j}\left(\tilde{s}_{t+1+j}+\pi_{t+1+j}-i_{t+j}\right)
$$

**Step 4　$\pi_{t+1}$ について解く**

$\Delta E_{t+1}\pi_{t+1}$ を左辺に移し、将来のインフレの項を $-\rho^{j}\left(i_{t+j}-\pi_{t+1+j}\right)$ としてまとめ直すと、
$$
\Delta E_{t+1}\pi_{t+1}=-\Delta E_{t+1}\sum_{j=0}^{\infty}\rho^{j}\tilde{s}_{t+1+j}+\Delta E_{t+1}\sum_{j=1}^{\infty}\rho^{j}\left(i_{t+j}-\pi_{t+1+j}\right)
$$
これが**式 (13)**。

**Step 5　伸縮価格のケース（式 (11)、(12)）**

伸縮価格では $i_{t+j}=E_{t+j}\pi_{t+j+1}$ なので、$E_{t+1}\left(i_{t+j}-\pi_{t+1+j}\right)=0$（繰り返し期待、$j\ge 1$）、つまり割引率の項が消えて**式 (11)**（$\varepsilon_{\Sigma s,t+1}$ の定義を含む）。さらに $E_t\pi_{t+1}=i_t$ を使い $\pi_{t+1}=E_t\pi_{t+1}+\Delta E_{t+1}\pi_{t+1}$ とすれば**式 (12)**。これは (9) の $\delta_{t+1}=-\varepsilon_{\Sigma s,t+1}$ に対応する。

**確認**

名目金利が上がって期待インフレが同じだけ上がらないと、(13) の第2項が正になり、同じ余剰のもとでインフレが上がる。(11) の第1項は、余剰の現在価値が下がる（赤字ショック）とインフレが上がることを示す。

| 入力・使う道具 | 内容 |
|---|---|
| 式 (10) | 債務の流れ |
| T1、T3 | 前向き代入、期待誤差 |
| 横断条件 | 補った仮定 |

### A.5 長期債務（式 (16)〜(22)）

**Step 1　(18) を前向きに解く（T1、非爆発 A2）**

$$
q_t=\omega q_{t+1}-r^n_{t+1}\ \Longrightarrow\ q_t=-\sum_{j=0}^{\infty}\omega^{j}r^n_{t+1+j}\quad(\text{収束する }\omega\lt 1\text{ の場合})
$$

**Step 2　期待仮説 (17) を使う**

$E_t r^n_{t+1+j}=E_t\left[E_{t+j}r^n_{t+1+j}\right]=E_t i_{t+j}$ なので、
$$
q_t=-E_t\sum_{j=0}^{\infty}\omega^{j}i_{t+j}
$$

**Step 3　(18) に代入して収益率を求める**

$$
r^n_{t+1}=\omega q_{t+1}-q_t=-\omega E_{t+1}\sum_{j=0}^{\infty}\omega^{j}i_{t+1+j}+E_t\sum_{j=0}^{\infty}\omega^{j}i_{t+j}
$$
$j=0$ の項は $i_t$、残りを同じ添字にそろえると
$$
r^n_{t+1}=i_t+E_t\sum_{j=1}^{\infty}\omega^{j}i_{t+j}-E_{t+1}\sum_{j=1}^{\infty}\omega^{j}i_{t+j}=i_t-\Delta E_{t+1}\sum_{j=1}^{\infty}\omega^{j}i_{t+j}
$$
これが**式 (19)**。論文の印字の符号 $+$ とは逆だが、(18) と、連続時間の (29)、(48)（$q_0=-\int e^{-(r+\omega)\tau}i\,d\tau$）と整合するのはこの符号。

**Step 4　期待誤差で書く（式 (20)〜(22)）**

(17) から $r^n_{t+1}=i_t+\delta_{r,t+1}$（$E_t\delta_{r,t+1}=0$）で**式 (20)**。(16) に代入して**式 (21)**、(18) に代入して $\omega q_{t+1}=q_t+r^n_{t+1}=q_t+i_t+\delta_{r,t+1}$ で**式 (22)**。

**確認**

$0\le\omega\lt 1$ のとき (22) の根 $1/\omega$ は1より大きく、爆発的。これが $\delta_{r,t+1}$ を決める追加の前向きの根になる。

| 入力・使う道具 | 内容 |
|---|---|
| 式 (16)〜(18) | 長期債の定義 |
| T1、T3 | 前向き代入、期待誤差 |

### A.6 連続時間への移行（式 (33)〜(42)）

**Step 1　離散時間を書き直す（式 (35)、(36)）**

(1) から $E_t x_{t+1}-x_t=\sigma\left(i_t-E_t\pi_{t+1}\right)$ で**式 (35)**。(2) に $\beta=e^{-\rho_c}$ を入れ、$E_t\pi_{t+1}=e^{\rho_c}\left(\pi_t-\kappa x_t\right)$ から $E_t\left(\pi_{t+1}-\pi_t\right)=\left(e^{\rho_c}-1\right)\pi_t-e^{\rho_c}\kappa x_t$、つまり**式 (36)**。

**Step 2　時間間隔 $\Delta$（式 (37)、(38)）**

間隔 $\Delta$ に合わせて係数を $\sigma\to\sigma\Delta$、$\kappa\to\kappa\Delta$、$\rho_c\to\rho_c\Delta$ としたもの。

**Step 3　$\Delta\to 0$（T4）**

(37) から $dx_t=\sigma\left(i_t-\pi_t\right)dt$（$E_t\pi_{t+\Delta}-\pi_t=O(\Delta)$ なので $\pi$ の時点は問わない）。(38) の $e^{\rho_c\Delta}-1\to\rho_c\Delta$、$e^{\rho_c\Delta}\to 1$ から $d\pi_t=\left(\rho_c\pi_t-\kappa x_t\right)dt$。期待ショック $d\delta$ を加えると**式 (25)、(26)**。

**Step 4　積分形（式 (33)、(34)）**

(25) の期待をとって前向きに積分すれば**式 (33)**。(26) に積分因子 $e^{-\rho_c t}$ をかけると $d\left(e^{-\rho_c t}\pi_t\right)=-\kappa e^{-\rho_c t}x_t\,dt$（T5）。$[t,\infty)$ で積分して、$e^{-\rho_c T}\pi_T\to 0$ のもとで**式 (34)**。

**Step 5　債務の式（式 (28)、(29)、(42)）**

(40) を (39)、(41) に代入すると、$dv_t=\left(rv_t+i_t-\pi_t-\tilde{s}_t\right)dt+d\delta_{r,t}$（**式 (28)**）、$dq_t=\left[(r+\omega)q_t+i_t\right]dt+d\delta_{r,t}$（**式 (29)**）。瞬時債務（$\omega\to\infty$）では $dR^n_t=i_t\,dt$ となり (29) は不要、(28) から $d\delta_{r,t}$ が落ちて**式 (42)**。

**確認**

(25)、(26) は、$\kappa\to\infty$（伸縮価格）で出力変動が小さくなり、インフレの動きが金利だけで決まる。

| 入力・使う道具 | 内容 |
|---|---|
| 式 (1)、(2)、(39)〜(41) | 元の離散時間式と債務式（(39) 以降は第3章の結果） |
| T4、T5 | 極限、積分因子 |

### A.7 連続時間の解（式 (43)〜(48)）

**Step 1　ルールの代入（式 (43)）**

(30) $i_t=\theta\pi_t+u_t$ を (25)、(28)、(29) に入れる。$\sigma\left(i_t-\pi_t\right)=\sigma\left[u_t-(1-\theta)\pi_t\right]$ など。**式 (43)**。

**Step 2　行列形（式 (44)）**

$z_t=(x_t,\pi_t,v_t,q_t,u_t,\tilde{s}_t)^{\prime}$ として $dz_t=Az_t\,dt+B\,d\varepsilon_t+C\,d\delta_t$ とおく（**式 (44)**）。$A$ の不安定固有値を前向きに、安定固有値を後向きに解く（抜粋外）。

**Step 3　$x_t$ を消去（式 (45)、(46)）**

(25) と (26) から、$d\pi_t/dt=\rho_c\pi_t-\kappa x_t$ をもう一度微分し、$dx_t/dt=\sigma\left(i_t-\pi_t\right)$ を代入する。
$$
\ddot{\pi}_t-\rho_c\dot{\pi}_t-\kappa\sigma\,\pi_t=-\kappa\sigma\,i_t
$$

**Step 4　因数分解**

特性方程式 $z^{2}-\rho_c z-\kappa\sigma=0$ の根は $z=\mu_1$ と $z=-\mu_2$。ここで
$$
\mu_{1}=\frac{\rho_c+\sqrt{\rho_c^{2}+4\kappa\sigma}}{2},\quad\mu_{2}=\frac{-\rho_c+\sqrt{\rho_c^{2}+4\kappa\sigma}}{2}
$$
（**式 (46)**）。$\mu_1-\mu_2=\rho_c$、$\mu_1\mu_2=\kappa\sigma$ なので、$(D-\mu_1)(D+\mu_2)\pi_t=-\kappa\sigma\,i_t$（$D=d/dt$）。

**Step 5　部分分数と積分**

$\dfrac{1}{(D-\mu_1)(D+\mu_2)}=\dfrac{1}{\mu_1+\mu_2}\left[\dfrac{1}{D-\mu_1}-\dfrac{1}{D+\mu_2}\right]$。不安定根（$\mu_1\gt 0$）は前向きに $\left(D-\mu_1\right)^{-1}f=-\int_0^\infty e^{-\mu_1\tau}f_{t+\tau}d\tau$、安定根（$-\mu_2$）は後向きに $\left(D+\mu_2\right)^{-1}f=\int_0^t e^{-\mu_2\tau}f_{t-\tau}d\tau$ とする。

**Step 6　解（式 (45)）**

$$
\pi_t=\frac{\kappa\sigma}{\mu_1+\mu_2}\left[\int_0^t e^{-\mu_2\tau}i_{t-\tau}d\tau+\int_0^\infty e^{-\mu_1\tau}i_{t+\tau}d\tau\right]+C_0e^{-\mu_2 t}
$$
$\dfrac{\kappa\sigma}{\mu_1+\mu_2}=\dfrac{\mu_1\mu_2}{\mu_1+\mu_2}=\left(\dfrac{1}{\mu_1}+\dfrac{1}{\mu_2}\right)^{-1}$ なので**式 (45)**。同次解 $C_0e^{-\mu_2 t}$ は非爆発の解の族を指標づける。

**Step 7　債務の評価式（式 (47)）**

(28) に積分因子 $e^{-rt}$（T5）をかけると $d\left(e^{-rt}v_t\right)=e^{-rt}\left[\left(i_t-\pi_t-\tilde{s}_t\right)dt+d\delta_{r,t}\right]$。時点0の直前は $v_{0-}=0$。$[0,\infty)$ で積分し、$e^{-rT}v_T\to 0$ とすると、
$$
0=\int_0^\infty e^{-r\tau}\left(i_\tau-\pi_\tau-\tilde{s}_\tau\right)d\tau+d\delta_{r,0}
$$
$d\delta_{r,0}$ について解いて**式 (47)**。瞬時債務では $d\delta_{r,0}=0$（$v_0=0$）。

**Step 8　債券価格（式 (48)）**

(29) に積分因子 $e^{-(r+\omega)t}$ をかけると $d\left(e^{-(r+\omega)t}q_t\right)=e^{-(r+\omega)t}\left[i_t\,dt+d\delta_{r,t}\right]$。$q_{0-}=0$、$e^{-(r+\omega)T}q_T\to 0$ で積分して**式 (48)**。

**確認**

$\rho_c=0$ のとき $\mu_1=\mu_2=\sqrt{\kappa\sigma}$。(45) の重みは $\left(\dfrac{2}{\sqrt{\kappa\sigma}}\right)^{-1}=\dfrac{\sqrt{\kappa\sigma}}{2}$ となり、$i_t$ が定数 $i_0$ のとき、$\dfrac{\sqrt{\kappa\sigma}}{2}\cdot\dfrac{2}{\sqrt{\kappa\sigma}}i_0=i_0$（長期の金利との一致）。

| 入力・使う道具 | 内容 |
|---|---|
| 式 (25)〜(30)、(43) | 連続時間のモデル |
| T5 | 積分因子 |
| 非爆発・横断条件 | $e^{-rT}v_T\to 0$、$e^{-(r+\omega)T}q_T\to 0$（補った仮定） |

### A.8 主要帰結（式 (49)〜(53)）

**Step 1　財政ショック・$i=0$（式 (49) の第1段）**

(45) で $i\equiv 0$ とすると $\pi_t=C_0e^{-\mu_2 t}=\pi_0e^{-\mu_2 t}$。(48) より $q_0=0$、つまり $d\delta_{r,0}=0$。

**Step 2　初期値の決定**

現在価値の1下落、$\int_0^\infty e^{-r\tau}\tilde{s}_\tau d\tau=-1$ を (47) に入れる。
$$
0=-1+\int_0^\infty e^{-r\tau}\pi_0e^{-\mu_2\tau}d\tau=-1+\frac{\pi_0}{r+\mu_2}\ \Longrightarrow\ \pi_0=r+\mu_2
$$

**Step 3　金利ショック・恒久的（式 (49) の第2段）**

$i_t=i_0$（定数）を (45) に入れる。
$$
\left(\frac{1}{\mu_1}+\frac{1}{\mu_2}\right)^{-1}\left[\frac{1-e^{-\mu_2 t}}{\mu_2}+\frac{1}{\mu_1}\right]i_0=i_0-\frac{\mu_1}{\mu_1+\mu_2}e^{-\mu_2 t}i_0
$$
これに $C_0e^{-\mu_2 t}$ を足すと $\pi_t=\left(\pi_0-i_0\right)e^{-\mu_2 t}+i_0$。余剰は不変なので (47) の $\tilde{s}=0$、(48) から $q_0=-\dfrac{i_0}{r+\omega}$。
$$
-\frac{i_0}{r+\omega}=\int_0^\infty e^{-r\tau}\left(\pi_\tau-i_0\right)d\tau=\frac{\pi_0-i_0}{r+\mu_2}
$$
$\pi_0$ について解いて $\pi_0=\left(1-\dfrac{r+\mu_2}{r+\omega}\right)i_0$。以上で**式 (49)**。

**Step 4　瞬時債務（式 (50)）**

$\omega\to\infty$ では $q_0=0$、(47) から $0=\int_0^\infty e^{-r\tau}\left(i_0-\pi_\tau\right)d\tau$。AR(1) 経路では被積分関数の符号は途中で変わらないので、$\pi_\tau=i_0$ だけが解。**式 (50)**。

**Step 5　$\theta=1$ の財政ショック（式 (51)）**

$i_t=\pi_t$ なら (47) の $i_\tau-\pi_\tau=0$。$v_0=d\delta_{r,0}=\int_0^\infty e^{-r\tau}\tilde{s}_\tau d\tau=-1$。(48) と $i_\tau=i_0$ から $q_0=-\dfrac{i_0}{r+\omega}=-1$。したがって $i_0=\pi_0=r+\omega$。**式 (51)**。

**Step 6　物価水準の極限（式 (52)）**

$p_t=\int_0^t\pi_s\,ds=\dfrac{\pi_0}{\mu_2}\left(1-e^{-\mu_2 t}\right)$。$t\to\infty$ で $\dfrac{\pi_0}{\mu_2}=\dfrac{r+\mu_2}{\mu_2}=1+\dfrac{r}{\mu_2}$。**式 (52)**。

**Step 7　長期のトレードオフ（式 (53)）**

(2) で $\pi$ と $x$ が定数なら $\pi=\beta\pi+\kappa x$ なので $x=\dfrac{1-\beta}{\kappa}\pi$。**式 (53)**（論文では第6章で言及）。

**確認**

$\kappa\to\infty$（伸縮価格）では $\mu_2\to\infty$、(52) の物価水準は $1+r/\mu_2\to 1$、つまり時点0のジャンプ1に収束する。また $\int_0^\infty\pi_t\,dt=1+r/\mu_2$ を除く、時点0の債券ポートフォリオの価値が1だけ変化する、という論文の記述とも整合する。

| 入力・使う道具 | 内容 |
|---|---|
| 式 (45)、(47)、(48) | 解と評価式 |
| 初期条件 | 現在価値1の下落（赤字ショック）、$q_{0-}=v_{0-}=0$ |

---

**© 元資料の著作権は著者（John H. Cochrane）および出版社に帰属します**。この記事は、元資料の数理モデルを学習・整理のために再構成した早見表です。
{% endraw %}
