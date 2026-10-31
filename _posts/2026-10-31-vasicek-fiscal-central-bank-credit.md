---
layout: post
title: "Vasicek (1977) \"An Equilibrium Characterization of the Term Structure\"、Journal of Financial Economics + 政府の通時的予算制約とTVC + 国債市場・中央銀行・信用創造: 統合数理モデル"
date: 2026-10-31 00:00:00 +0900
categories: [数理ファイナンス, 金利・財政・中央銀行]
math: true
---

{% raw %}
# Vasicek (1977) "An Equilibrium Characterization of the Term Structure"、Journal of Financial Economics + 政府の通時的予算制約とTVC + 国債市場・中央銀行・信用創造: 統合数理モデル
### 政策金利 → 短期金利 → 民間の需要とリスクの市場価格 → 利回り曲線 → 中央銀行・預金 → 統合政府の予算制約とTVC

---

## 目次

- [1. 数理モデル](#sec1)
- [2. 説明できる現象](#sec2)
- [3. 整理している点](#sec3)
- [4. モデルの対象外](#sec4)
- [付録：導出手順](#appendix)

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間・情報構造**

政府(財務省)・銀行・非銀行投資家・中央銀行の4主体と、国債市場からなる連続時間の経済を考える。時間は $t \in [0, \infty)$、情報は標準ブラウン運動 $W_t$ が生成するフィルトレーション $\mathcal{F}_t$ である。残存期間を $\tau = T - t \gt 0$ と書き、$Q$ の下の条件付き期待値を $\mathbb{E}^{Q}_t[\,\cdot\,] = \mathbb{E}^{Q}[\,\cdot \mid \mathcal{F}_t]$ と略記する。

本記事は、次の3つを接続する。(i) Vasicek (1977) の期間構造(マルチンゲール評価)、(ii) 政府債務の通時的予算制約とTVC(前記事)、(iii) 国債の発行市場・流通市場と中央銀行・信用創造の静学モデル(tokyo-worker「国債の発行市場・流通市場と中央銀行：数理モデル」2026年10月19日、以下「元記事」)。記号の衝突を避けるため、平均回帰の速さを $\alpha$、$Q$ の下の長期平均を $\theta^{\ast}$ のように書く(前記事の $a$、$b$ に当たる)。元記事の $a_j$、$\bar a$ は代替運用利回りの記号として残す。

**A1 （無裁定とマルチンゲール測度）**

無リスク資産 $B_t^{\mathrm{mm}} = \exp\left(\int_0^t r_s\,ds\right)$ を基準財とし、すべての国債の割引価格 $P(t,T)/B_t^{\mathrm{mm}}$ が $Q$ の下でマルチンゲールになる同値測度 $Q$ が存在する。外すと裁定が可能になり、価格が定まらない。

**A2 （政策金利と短期金利）**

短期金利 $r_t$ は、民間の代替運用利回りの加重平均 $\bar a_t$ に等しいとおく。銀行の代替運用は準備への付利 $i_{R,t}$、非銀行の代替運用は預金金利 $i_{D,t} = i_{D0} + \beta\,i_{R,t}$ である。政策金利 $i_{R,t}$ は平均回帰するガウス過程に従い、$\alpha \gt 0$、$m$、$\sigma_R \gt 0$ は定数である。外すと、政策金利から長期金利への波及が式で追えず、閉じた形の価格式も失われる。

**A3 （民間の需要とリスクの市場価格）**

民間の投資家は集計リスク回避度 $\Gamma \gt 0$(GDP比で測る)の瞬間的な平均分散基準で、国債の満期を自由に選ぶ。リスクの市場価格 $\lambda$ は全満期共通で、民間が保有する国債のドル・デュレーションの対GDP比 $x_t$ との市場清算で決まる(式(18))。閉じた形のため、$x_t = \bar{x}$ は政策(債務管理と中央銀行の買入)で一定に保たれるとおく。外すと、$\lambda$ が時間変動し、$A(\tau)$ の形が変わる。

**A4 （国債の定義）**

国債は、自国通貨建てで満期 $T$ に1を支払うゼロクーポン債で、デフォルトはない(利付債はゼロクーポン債の束とみなす)。外すと、信用スプレッドが加わる。

**A5 （経済規模）**

GDPは $Y_t = Y_0\,e^{gt}$ に従い、成長率 $g$ は定数で確定的である。外すと、割引因子 $\Xi$ が確率的な成長を含み、式(31)が閉じた形でなくなる。

**A6 （政府債務と中央銀行）**

政府債務は国債だけで、時価を $V_t$、満期 $T$ の債券の時価比率を $w_t(T) \ge 0$($\int w_t(T)\,dT = 1$)とする。中央銀行は満期 $T$ の国債を時価 $c_t(T) \ge 0$ だけ保有し、合計を $b_{C,t} = \int c_t(T)\,dT \le V_t$ とする。中央銀行の資産は国債だけ、負債は準備 $M_t$ だけで、純資産は0($M_t = b_{C,t}$)、準備には付利 $i_{R,t}$ が付く。会計は、政府と中央銀行を合わせた統合政府で行い、中央銀行の損益は全額が政府に帰属する。外すと、現金や貸出などの項が式(24)に加わる。

**A7 （基礎的財政収支）**

政府の基礎的財政収支 $S_t = s_t\,Y_t$($s_t$ は $\mathcal{F}_t$ 適合の外生過程、中央銀行の損益を除く)とし、黒字は債務の返済に充てる。正則条件として、すべての $T$ について次が成り立つとする。外すと、式(27)の確率積分がマルチンゲールにならない。

$$
\mathbb{E}^{Q}_t\left[\int_t^T \Xi_{t,u}\,|s_u + \phi_u c_u|\,du\right]\lt\infty,\qquad
\mathbb{E}^{Q}_t\left[\int_t^T \Xi_{t,u}^2\,x_u^2\,du\right]\lt\infty
$$

**A8 （銀行部門と預金）**

銀行の貸借対照表は、資産が貸出 $K_t$・国債・準備、負債が預金 $D_t$・自己資本 $E_t$ である。銀行の国債保有は、民間が持つ国債の一定割合 $\psi \in [0,1]$ とする。$K_t$ と $E_t$ は外生とする。外すと、預金の恒等式(22)に貸出・自己資本の内生的な変動が加わる。

**A9 （TVCと債務GDP比が発散しないこと）**

TVCは式(28)で課す。実額比の言い換えとして、債務GDP比に正の下限と上限がある(式(30))と置く場合もある。外すと、式(27)の第2項(ポンジー項・バブル項)が残り、債務の水準が剰余の現在価値で決まらない。

*（補った部分: 元記事は1期間の静学モデルで、期間構造・予算制約・TVCを含まない。Vasicek (1977) は短期金利を外生とし、財政・中央銀行を含まない。A2の「$r_t = \bar a_t$」、A3の連続時間の平均分散最適化と $x_t = \bar{x}$、A6〜A8の連続時間の会計、式(17)〜(38)は、本記事で補った。前記事と同じく、TVCは家計の最適化から導かず、条件として課す。原論文の偏微分方程式による導出は省いた。)*

---

### 1.1 無裁定価格のマルチンゲール表現

**債券価格と利回り**

$$
P(t,T) = \mathbb{E}^{Q}_t\left[ \underbrace{\exp\left( -\int_t^T r_s\,ds \right)}_{\text{確率的割引因子}} \right]\tag{1}
$$

$$
y(t,T) = -\frac{\ln P(t,T)}{\tau}\tag{2}
$$

> (1)はA1の言い換えで、$P(T,T)=1$ と合わせて価格を決める。(2)は連続複利の利回りで、満期 $T$ ごとの組が利回り曲線になる。

| 記号・項目 | 意味 |
|---|---|
| $P(t,T)$ | 時点 $t$ における満期 $T$ のゼロクーポン国債の価格 |
| $y(t,T)$ | 満期 $T$ の連続複利利回り |
| $r_s$ | 短期金利 |
| $\tau$ | 残存期間 $T-t$ |
| $\mathbb{E}^{Q}_t$ | $\mathcal{F}_t$ を条件とする $Q$ の下の期待値 |

---

### 1.2 政策金利と短期金利

**短期金利は、代替運用利回りの加重平均**

$$
r_t = \underbrace{\kappa}_{\text{波及度}}\,i_{R,t} + \underbrace{\eta}_{\text{定数項}},\qquad
\kappa \equiv \omega_{\mathrm{B}} + \beta\,\omega_{\mathrm{N}},\qquad
\eta \equiv \omega_{\mathrm{N}}\,i_{D0} - \sum_j \omega_j\,\ell_j + \sum_j \omega_j\,h_j\frac{\delta}{2}\tag{3}
$$

**政策金利の動学**

$$
di_{R,t} = \underbrace{\alpha\,(m - i_{R,t})}_{\text{平均回帰}}\,dt + \underbrace{\sigma_R}_{\text{変動率}}\,dW_t\tag{4}
$$

**短期金利の動学**

$$
dr_t = \underbrace{\alpha\,(\theta - r_t)}_{\text{平均回帰}}\,dt + \underbrace{\sigma}_{\text{変動率}}\,dW_t\tag{5}
$$

$$
\theta = \kappa\,m + \eta,\qquad \sigma = \kappa\,\sigma_R\tag{6}
$$

> (3)の $\kappa$ は、元記事の式(22)の $\partial\bar a/\partial i_R = \omega_{\mathrm{B}} + \beta\omega_{\mathrm{N}}$ に当たる。$\beta = 1$(預金金利への完全波及)なら $\kappa = 1$ で、$r_t - i_{R,t} = \eta$ は定数になる。(5)(6)は、(4)の線形変換である。

| 記号・項目 | 意味 |
|---|---|
| $i_{R,t}$ | 準備への付利(政策金利) |
| $i_{D0}$, $\beta$ | 預金金利 $i_D = i_{D0} + \beta\,i_R$ の切片と波及度 |
| $\omega_j$ | 投資家 $j$(B：銀行、N：非銀行)の重み、$\omega_{\mathrm{B}} + \omega_{\mathrm{N}} = 1$ |
| $\ell_j$ | 国債の流動性便益 |
| $h_j$, $\delta$ | 売買の回転率、売買スプレッド |
| $\alpha$ | 平均回帰の速さ |
| $m$ | 政策金利の長期水準 |
| $\sigma_R$ | 政策金利の変動率 |
| $\theta$, $\sigma$ | 短期金利の長期水準・変動率 |

---

### 1.3 リスクの市場価格と測度変換

**実世界 $P$ から $Q$ への付け替え**

$$
W^{Q}_t = W_t - \underbrace{\lambda}_{\text{市場価格}}\,t\tag{7}
$$

$Q$ の下では、短期金利の平均回帰水準が $\theta^{\ast}$ に変わる。

$$
dr_t = \alpha\,(\theta^{\ast} - r_t)\,dt + \sigma\,dW^{Q}_t\tag{8}
$$

$$
\theta^{\ast} = \underbrace{\theta}_{\text{実世界の水準}} + \underbrace{\frac{\sigma\lambda}{\alpha}}_{\text{リスク調整}}\tag{9}
$$

> (7)のGirsanov変換の密度は $\exp(\lambda W_T - \lambda^2 T/2)$ で、$\lambda$ が定数なのでNovikov条件を満たす。$\lambda$ は外生ではなく、1.5で民間の需要から決まる。

| 記号・項目 | 意味 |
|---|---|
| $W^{Q}_t$ | $Q$ の下の標準ブラウン運動 |
| $\lambda$ | 金利リスクの市場価格 |
| $\theta^{\ast}$ | $Q$ の下での短期金利の長期水準 |

---

### 1.4 債券価格と利回り曲線

**債券価格**

$$
P(t,T) = \exp\left( \underbrace{A(\tau)}_{\text{水準項}} - \underbrace{B(\tau)\,r_t}_{\text{金利感応}} \right)\tag{10}
$$

$$
B(\tau) = \frac{1 - e^{-\alpha\tau}}{\alpha}\tag{11}
$$

$$
A(\tau) = \left( B(\tau) - \tau \right)\left( \theta^{\ast} - \frac{\sigma^2}{2\alpha^2} \right) - \underbrace{\frac{\sigma^2 B(\tau)^2}{4\alpha}}_{\text{凸性項}}\tag{12}
$$

**債券価格の動学($Q$ と $P$)**

$$
\frac{dP(t,T)}{P(t,T)} = \underbrace{r_t}_{\text{無リスク収益}}\,dt - \underbrace{\sigma B(\tau)}_{\text{債券の変動率}}\,dW^{Q}_t\tag{13}
$$

$$
\frac{dP(t,T)}{P(t,T)} = \left( r_t + \underbrace{\lambda\sigma B(\tau)}_{\text{期待超過収益}} \right) dt - \sigma B(\tau)\,dW_t\tag{14}
$$

**利回り**

$$
y_\infty = \theta^{\ast} - \frac{\sigma^2}{2\alpha^2}\tag{15}
$$

$$
y(t,T) = \underbrace{y_\infty}_{\text{長期利回り}} + \underbrace{\left( r_t - y_\infty \right)\frac{B(\tau)}{\tau}}_{\text{短期金利の影響}} + \underbrace{\frac{\sigma^2 B(\tau)^2}{4\alpha\tau}}_{\text{凸性の補正}}\tag{16}
$$

> $0 \lt B(\tau) \lt \min(\tau, 1/\alpha)$ である。(13)のドリフトが $r_t$ になるのはA1による。(14)は(13)に(7)を代入したもので、超過収益率を変動率で割った比は全満期で $\lambda$ に等しい。(16)は(10)の対数をとって $\tau$ で割ったものである。

| 記号・項目 | 意味 |
|---|---|
| $A(\tau)$, $B(\tau)$ | 価格式の水準項、金利感応度 |
| $y(t,T)$ | 満期 $T$ の連続複利利回り |
| $y_\infty$ | 満期を無限にしたときの利回り(長期利回り) |

---

### 1.5 民間の需要とリスクの市場価格の内生化

**民間保有のドル・デュレーション**

$$
X_t = \int \underbrace{\left( w_t(T)\,V_t - c_t(T) \right)}_{\text{民間保有の時価}}\,B(T-t)\,dT = x_t\,Y_t\tag{17}
$$

**民間の最適化と市場清算**

$$
\max_{x}\ \underbrace{\lambda\sigma\,x}_{\text{期待超過収益}} - \underbrace{\frac{\Gamma}{2}\,\sigma^2 x^2}_{\text{リスクの費用}}\quad\Longrightarrow\quad
\lambda_t = \Gamma\,\sigma\,x_t\tag{18}
$$

**閉じた形のための仮定 $x_t = \bar{x}$ の下で**

$$
\lambda = \underbrace{\Gamma\sigma\bar{x}}_{\text{内生的な市場価格}},\qquad
\theta^{\ast} = \theta + \frac{\Gamma\sigma^2}{\alpha}\,\bar{x}\tag{19}
$$

**期待超過収益率**

$$
\pi(\tau) = \underbrace{\lambda\sigma\,B(\tau)}_{\text{(14)の超過収益}} = \Gamma\,\sigma^2\,B(\tau)\,\bar{x}\tag{20}
$$

> 民間の目的関数は、保有の満期構成によらず $x$ だけに依存する。このため、全満期で共通の $\lambda$(A3)が整合する。(18)の左辺 $x^{\ast} = \lambda/(\Gamma\sigma)$ は民間が望むドル・デュレーションで、市場清算で供給 $x_t$ に等しくなる。$\bar{x} \gt 0$ なら $\lambda \gt 0$ である。

| 記号・項目 | 意味 |
|---|---|
| $X_t$ | 民間が保有する国債のドル・デュレーション(政府債務と中央銀行保有の差) |
| $x_t$ | $X_t / Y_t$(対GDP比) |
| $\Gamma$ | 民間の集計リスク回避度(GDP比で測る。元記事の集計リスク回避度に当たる) |
| $\bar{x}$ | $x_t$ の一定値(政策で保つ水準) |
| $\pi(\tau)$ | 満期 $T$ の国債の期待超過収益率 |

---

### 1.6 中央銀行・預金・債務の動学

**準備と、準備の付利の乖離**

$$
M_t = b_{C,t} = \int c_t(T)\,dT,\qquad \phi_t = \underbrace{r_t - i_{R,t}}_{\text{短期金利と付利の差}}\tag{21}
$$

**預金の恒等式(信用創造との接続)**

$$
D_t = \underbrace{K_t}_{\text{貸出}} + \underbrace{\psi\,(V_t - b_{C,t})}_{\text{銀行の国債保有}} + \underbrace{b_{C,t}}_{\text{準備}} - \underbrace{E_t}_{\text{自己資本}}\tag{22}
$$

**中央銀行の期待損益(1単位時間あたり)**

$$
\mathbb{E}^{P}_t\left[ d\Pi_{C,t} \right] = \Big( \underbrace{\phi_t\,b_{C,t}}_{\text{利ざや}} + \underbrace{\lambda\sigma\,X^{\mathrm{C}}_t}_{\text{プレミアムの受取り}} \Big)dt,\qquad X^{\mathrm{C}}_t = \int c_t(T)\,B(T-t)\,dT\tag{23}
$$

**統合政府の債務の時価の動学**

$$
dV_t = \Big( r_t V_t - \underbrace{S_t}_{\text{基礎的収支}} - \underbrace{\phi_t\,b_{C,t}}_{\text{準備による調達益}} \Big)dt - \underbrace{\sigma X_t}_{\text{民間保有の変動}}\,dW^{Q}_t\tag{24}
$$

**債務GDP比の動学**

$$
dv_t = \underbrace{\left( (r_t - g)\,v_t - s_t - \phi_t\,c_t \right)}_{r-g\text{による自己増殖}}\,dt - \sigma\,x_t\,dW^{Q}_t,\qquad v_t = \frac{V_t}{Y_t},\ \ c_t = \frac{b_{C,t}}{Y_t}\tag{25}
$$

**成長調整後の割引因子**

$$
\Xi_{t,u} = \exp\left( -\int_t^u \left( r_v - g \right) dv \right)\tag{26}
$$

> (22)は、元記事の式(6)($\Delta D = b_{\mathrm{B}} + b_U$、$\Delta M = b_U$)の増分形 $\Delta D = \Delta K + \psi\Delta(V - b_C) + \Delta b_C - \Delta E$ で、$K$ と $E$ を固定し、準備の増分を $\Delta b_C$ に置いたものである。(23)は元記事の式(24)の利ざや $(y - i_R)b_C$ に当たり、$y - i_R$ を、準備との差 $\phi_t$ と期間プレミアムに分けた。(24)では、中央銀行が持つ国債の価格変動は統合で打ち消され、変動項には民間保有分 $X_t$ だけが残る。中央銀行の国債は、利子として $r_t$ ではなく $i_{R,t}$ を準備に払う形に置き換わるので、$\phi_t b_{C,t}$ だけ調達費用が減る(元記事の式(25)に当たる)。

| 記号・項目 | 意味 |
|---|---|
| $V_t$ | 政府債務(国債)の時価 |
| $b_{C,t}$, $c_t(T)$ | 中央銀行の国債保有額(満期別) |
| $M_t$ | 準備(中央銀行当座預金) |
| $\phi_t$ | 短期金利と準備の付利の差 $r_t - i_{R,t}$($\beta = 1$ なら $\eta$ で一定) |
| $D_t$, $K_t$, $E_t$ | 預金、貸出、銀行の自己資本 |
| $\psi$ | 銀行が保有する、民間保有国債の割合 |
| $\Pi_{C,t}$ | 中央銀行の損益 |
| $X^{\mathrm{C}}_t$ | 中央銀行保有のドル・デュレーション |
| $S_t$, $s_t$ | 基礎的財政収支とその対GDP比 |
| $v_t$, $c_t$ | 債務の対GDP比、中央銀行保有の対GDP比 |
| $g$ | GDPの成長率 |
| $\Xi_{t,u}$ | 成長調整後の割引因子 |

---

### 1.7 通時的予算制約とTVC

**有限期間の予算制約**

$$
v_t = \underbrace{\mathbb{E}^{Q}_t\left[ \int_t^T \Xi_{t,u}\,\left( s_u + \phi_u c_u \right) du \right]}_{T\text{までの収支と調達益の現在価値}} + \underbrace{\mathbb{E}^{Q}_t\left[ \Xi_{t,T}\,v_T \right]}_{T\text{時点の債務の現在価値}}\tag{27}
$$

**TVC（横断性条件）**

$$
\lim_{T \to \infty}\ \underbrace{\mathbb{E}^{Q}_t\left[ \Xi_{t,T}\,v_T \right]}_{\text{割引後の債務}} = 0\tag{28}
$$

**無限期間の予算制約**

$$
v_t = \underbrace{\mathbb{E}^{Q}_t\left[ \int_t^{\infty} \Xi_{t,u}\,\left( s_u + \phi_u c_u \right) du \right]}_{\text{将来の収支と調達益の現在価値}}\tag{29}
$$

**債務GDP比が発散しない**

$$
0 \lt \varepsilon \le v_T \le \bar{v}\qquad \text{（すべての } T\text{）}\tag{30}
$$

> (27)はA1〜A8だけから任意の $T$ について成り立つ恒等式である。TVC(28)を課すと第2項が消えて(29)になる。前記事との違いは、収支の項が $s_u + \phi_u c_u$ になった点と、変動項が民間保有分 $x$ だけになった点である。

| 記号・項目 | 意味 |
|---|---|
| $\varepsilon$, $\bar{v}$ | 債務GDP比の正の下限・上限 |

---

### 1.8 国債利回りとの接続

**割引因子の期待値は、利回りから成長率を引いたもので書ける**

$$
\mathbb{E}^{Q}_t\left[ \Xi_{t,u} \right] = \underbrace{e^{g(u-t)}\,P(t,u)}_{\text{成長調整後の債券価格}} = \exp\left( -\left( y(t,u) - g \right)(u-t) \right)\tag{31}
$$

**確定的な収支と中央銀行保有の経路($\beta = 1$ で $\phi_t = \eta$ が定数のとき)**

$$
v_t = \int_t^{\infty} \left( s(u) + \eta\,c(u) \right)\underbrace{\exp\left( -\left( y(t,u) - g \right)(u-t) \right)}_{\text{割引因子}}\,du\tag{32}
$$

**TVCと利回りの条件**

$$
\underbrace{y_\infty}_{\text{長期利回り}} \gt \underbrace{g}_{\text{成長率}}
\quad\Longleftrightarrow\quad
\underbrace{\theta}_{\text{実世界の水準}} + \underbrace{\frac{\Gamma\sigma^2}{\alpha}\bar{x}}_{\text{民間保有の期間プレミアム}} - \underbrace{\frac{\sigma^2}{2\alpha^2}}_{\text{凸性}} \gt g\tag{33}
$$

> 命題(債務GDP比の有界性とTVC)：(30)が成り立つとき、TVC(28)が成り立つことと、(33)が成り立つことは同値である。(i) $v_T \ge \varepsilon$ なら、TVCは $e^{g\tau}P(t,T) \to 0$ を要し、これは(33)と同値である。(ii) $v_T \le \bar{v}$ かつ(33)なら、TVCが成り立つ。
>
> (33)の左辺には、実世界の水準 $\theta$(政策金利の長期水準 $m$ を通じる)、期間プレミアム($\bar{x}$ と $\Gamma$ を通じる)、凸性がすべて入る。中央銀行の買入は $\bar{x}$ を下げるので、左辺を下げ、(33)を満たす余地を狭める(1.9)。確定的な収支の経路のとき、$v_t$ は $r_t$ の関数で、$r_t$ が負に大きいと上限なく大きくなり、(30)は成り立たない。このとき、TVCは(32)の裾の積分が0に収束することで確かめる(A.9のStep 5)。

**一定の収支と中央銀行保有の下の閉じた形**

$s_t = s$、$c_t = c$ が一定、$\beta = 1$、$s + \eta c \gt 0$ のとき、次の形になる。

$$
v_t = \left( s + \eta\,c \right)\Phi(r_t),\qquad
\Phi(r) = \int_0^{\infty} \exp\left( \underbrace{A(\tau)}_{\text{水準項}} - \underbrace{B(\tau)\,r}_{\text{金利感応}} + \underbrace{g\tau}_{\text{成長の補正}} \right)d\tau\tag{34}
$$

> $\Phi(r)$ が有限であることと、(33)が成り立つことは同値である。$A(\tau)$ は(19)を通じて $\bar{x}$ に依存する。$v_t \ge c$ が前提で、満たさないときは $c$ が大きすぎる。また、$x^{\mathrm{G}} = \bar{x} + X^{\mathrm{C}}/Y \le v/\alpha$ でなければならない。

| 記号・項目 | 意味 |
|---|---|
| $\Phi(r)$ | 一定の収支1単位あたりの債務の現在価値(債務の許容水準) |
| $s$, $c$ | 一定の基礎的収支・中央銀行保有の対GDP比 |

---

### 1.9 元記事(静学)との接続と中央銀行の政策

**元記事の期間プレミアムは、単一満期の特殊ケース**

民間が満期 $T$ の1銘柄だけを対GDP比 $\chi$ 保有するとき、$\bar{x} = B(\tau)\chi$ なので次が成り立つ。

$$
\underbrace{\pi(\tau)}_{\text{期待超過収益率}} = \Gamma\,\big(\underbrace{\sigma B(\tau)}_{\text{価格の変動率}}\big)^{2}\,\underbrace{\chi}_{\text{民間保有}}\quad\Longleftrightarrow\quad
y^{\ast} - \bar a = \Gamma\,\sigma_P^{2}\,(G - b_U)\tag{35}
$$

**資産買入(量的緩和)の効果**

民間以外の保有を $c$、買入債券のドル・デュレーションの平均 $\bar{B}_C = X^{\mathrm{C}}/b_C$ とし、政府債務全体のドル・デュレーションの比 $x^{\mathrm{G}}$ を固定する($\bar{x} = x^{\mathrm{G}} - \bar{B}_C\,c$)。

$$
\frac{\partial y(t,T)}{\partial c} = -\underbrace{\frac{\Gamma\sigma^2\bar{B}_C}{\alpha}}_{y_\infty\text{の低下幅}}\left( 1 - \frac{B(\tau)}{\tau} \right),\qquad
\frac{\partial y_\infty}{\partial c} = -\frac{\Gamma\sigma^2\bar{B}_C}{\alpha}\tag{36}
$$

**利回り目標**

長期利回りの目標 $y_T$ を維持する民間保有 $\bar{x}^{T}$ と、必要な中央銀行のドル・デュレーションは次のとおり。

$$
\bar{x}^{T} = \frac{\alpha}{\Gamma\sigma^2}\left( y_T - \theta + \frac{\sigma^2}{2\alpha^2} \right),\qquad
x^{\mathrm{C},T} = x^{\mathrm{G}} - \bar{x}^{T}\ \ (\ge 0)\tag{37}
$$

> (35)の左辺は(20)の単一満期版で、右辺は元記事の式(12)である。$B(\tau)$ が元記事の修正デュレーション $\mu$ に、$\sigma$ が $\sigma_y$ に当たる。(36)の効果は、満期が長いほど大きい($1 - B/\tau$ は $\tau$ の増加関数)。(37)の $x^{\mathrm{C},T} \ge 0$ は、$y_T$ が買入なしの長期利回り $\theta + \Gamma\sigma^2 x^{\mathrm{G}}/\alpha - \sigma^2/(2\alpha^2)$ 以下であることと同値で、元記事の式(26)に当たる。

元記事の静学モデルとの対応は、次のとおりである。

| 元記事(静学) | 本モデル(連続時間) |
|---|---|
| 代替利回りの加重平均 $\bar a$ | 短期金利 $r_t$(式(3)) |
| 政策金利の波及 $\omega_{\mathrm{B}} + \beta\omega_{\mathrm{N}}$(元式(22)) | $\kappa$(式(3)) |
| 価格変動 $\sigma_P = \mu\sigma_y$ | $\sigma B(\tau)$(式(14)) |
| 民間が吸収する額 $G - b_U$ | 民間保有のドル・デュレーション $x_t$(式(17)) |
| 期間プレミアム(元式(12)) | 期待超過収益率 $\pi(\tau)$(式(20)(35)) |
| 預金・準備の純増(元式(6)) | 預金の恒等式(式(22))、$M_t = b_{C,t}$(式(21)) |
| 中央銀行の損益(元式(24)) | 式(23) |
| 統合政府の利払い(元式(25)) | 式(24)のドリフト |
| 買入の効果(元式(36)) | 式(36) |
| 利回り目標(元式(26)) | 式(37) |

---

### 1.10 主要帰結

**主要式**

$$
\boxed{\begin{aligned}
\lambda &= \underbrace{\Gamma\sigma\bar{x}}_{\text{市場価格}},\qquad \theta^{\ast} = \theta + \frac{\Gamma\sigma^2}{\alpha}\bar{x} \\
y(t,T) &= y_\infty + \left( r_t - y_\infty \right)\frac{B(\tau)}{\tau} + \frac{\sigma^2 B(\tau)^2}{4\alpha\tau},\qquad y_\infty = \theta^{\ast} - \frac{\sigma^2}{2\alpha^2} \\
v_t &= \underbrace{\mathbb{E}^{Q}_t\left[ \int_t^{\infty} \Xi_{t,u}\,\left( s_u + \phi_u c_u \right) du \right]}_{\text{予算制約+TVC}} \\
&\text{(30)の下で}\quad \text{TVC} \iff y_\infty \gt g \\
v_t &= \left( s + \eta\,c \right)\Phi(r_t)\qquad (\beta = 1,\ s,\,c \text{ が一定のとき})
\end{aligned}}\tag{38}
$$

**比較静学**

| 変化 | 結果 | 符号・式 |
|---|---|---|
| 民間保有 $\bar{x}\uparrow$(発行の長期化、買入の縮小) | 利回り $y$ 上昇 | $\partial y/\partial\bar{x} = (\Gamma\sigma^2/\alpha)(1 - B(\tau)/\tau) \ge 0$ |
| $\bar{x}\uparrow$ | 債務の現在価値 $v_t$ 低下 | $\partial v/\partial\bar{x} = (s + \eta c)(\Gamma\sigma^2/\alpha)\int_0^{\infty}(B(\tau) - \tau)\,e^{A - Br_t + g\tau}\,d\tau \lt 0$ |
| 中央銀行の買入 $c\uparrow$($x^{\mathrm{G}}$ 固定) | 利回り $y$ 低下、$y_\infty$ 低下 | 式(36)。(33)の余裕が縮む |
| $c\uparrow$($x^{\mathrm{G}}$ 固定) | $v_t$ 上昇($\eta \ge 0$ のとき) | $\partial v/\partial c = \eta\Phi - (s + \eta c)\bar{B}_C\,\partial\Phi/\partial\bar{x}$、ともに正 |
| 政策金利の長期水準 $m\uparrow$ | $y_\infty$ 上昇、$v_t$ 低下 | $\partial y_\infty/\partial m = \kappa$ |
| リスク回避度 $\Gamma\uparrow$ | $\bar{x}$ の上昇と同じ向き | $\partial\lambda/\partial\Gamma = \sigma\bar{x} \gt 0$ |
| 成長率 $g\uparrow$ | $v_t$ 上昇 | $\partial\Phi/\partial g = \int_0^{\infty}\tau\,e^{A - Br + g\tau}\,d\tau \gt 0$ |
| 銀行の保有割合 $\psi\uparrow$ | 預金 $D$ 増加、価格・利回りは不変 | $\partial D/\partial\psi = V - b_C \ge 0$ |
| 変動率 $\sigma\uparrow$ | 利回り・$v_t$ とも不定 | $\sigma$ は $\theta^{\ast}$、凸性、$B$ の係数に入り、向きが逆の効果が混ざる |

**特殊ケース・極限**

| ケース | 結果 |
|---|---|
| $c = 0$(中央銀行の保有なし) | $x^{\mathrm{G}} = \bar{x}$、$\lambda = \Gamma\sigma x^{\mathrm{G}}$。前記事の式に、$\lambda$ の内生化を加えたもの |
| $\bar{x} = 0$ | $\lambda = 0$、$\theta^{\ast} = \theta$。期間プレミアムは0 |
| 全額保有 $b_C = V$ | $x_t = 0$。(25)は $dv = ((i_R - g)v - s)\,dt$ で、割引率が $i_R - g$ になる |
| $\phi = 0$ | 準備による調達益は0。買入は $\bar{x}$ だけを通じて作用する |
| $\sigma = 0$ かつ $r_t = \theta^{\ast}$、$\beta = 1$ | $\Phi = 1/(\theta^{\ast} - g)$、$v_t = (s + \eta c)/(r_t - g)$ |
| $y_\infty \le g$ で $s + \eta c \gt 0$ 一定 | $\Phi = \infty$。有限な $v_t$ とTVCは両立しない |
| $\tau \to 0$ | $P \to 1$、$y \to r_t$ |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 政策金利が長期金利に波及する | 政策金利は $\kappa$ の波及度で短期金利を動かし(式(3))、長期水準 $m$ は $y_\infty$ に $\kappa$ の傾きで入る(式(6)(15))。 |
| 国債の増発・長期化で利回りが上がる | 民間が持つドル・デュレーション $\bar{x}$ が増え、$\lambda$ が上がる(式(18)(19))。効果は満期が長いほど大きい。 |
| 量的緩和で長期金利が下がる | 買入が $\bar{x}$ を下げ、$\lambda$ と $\theta^{\ast}$ を下げる。効果は満期とともに増し、利回り曲線が平らになる(式(36))。 |
| 発行が預金を創る場合と創らない場合 | 預金は、貸出・銀行の国債保有・準備の和から自己資本を引いたもの(式(22))。銀行の保有割合 $\psi$ が高いほど増える。 |
| 中央銀行の逆ざや | 期待損益は利ざや $\phi_t b_C$ とプレミアムの受取り $\lambda\sigma X^{\mathrm{C}}$ の和(式(23))。$\phi_t \lt 0$ でプレミアムが小さいと損失になる。 |
| 買入が統合政府の変動を減らす | 債務の変動項には民間保有分 $x$ だけが入る。中央銀行の保有は、債務の変動から外れる(式(24)(25))。 |
| 債務の現在価値は、満期構成に依らない | 満期構成 $w$ は $x$ を通じて変動項だけに入り、現在価値(式(29))には入らない。 |
| 財政の持続可能性が長期利回りに依る | 債務GDP比が有界でTVCが成り立つ条件は $y_\infty \gt g$(式(33))。実世界の水準、期間プレミアム、凸性がすべて入る。 |
| 買入が財政の許容水準を広げ、余裕を縮める | 買入は $\bar{x}$ を下げて $\Phi$ を大きくし、準備の調達益も加える(式(34)、比較静学)。一方、$y_\infty$ も下がり、(33)の余裕を縮める。 |
| 元記事の静学の結果の再現 | 単一満期の特殊ケースで、期間プレミアムが元記事の式(12)に一致する(式(35))。 |

---

## 3. 整理している点 {#sec3}

- 元記事の静学の期間プレミアムを、連続時間の期待超過収益率 $\Gamma\sigma^2 B(\tau)\bar{x}$ に一般化し、期間構造の価格式(式(10)〜(16))の $\lambda$ を、民間の需要と市場清算で内生化した点。
- 中央銀行の役割を、政策金利(式(3)〜(6))、準備と預金(式(21)(22))、国債の保有(式(17)(23)(36))の三つの経路に分け、統合政府の予算制約(式(24)〜(29))の中の位置を示した点。
- 国債の価格付けと政府債務の現在価値を同じ割引因子 $\Xi$ で結び、TVCを、民間が保有するリスクの量 $\bar{x}$ まで含めた利回り曲線の条件 $y_\infty \gt g$ に翻訳した点。

---

## 4. モデルの対象外 {#sec4}

- ソブリンのデフォルトと信用スプレッド(A4で国債を無リスクとして扱う)。
- 発行日の決済制約(元記事の式(7))、準備が不足する局面での中央銀行借入、コール市場。本記事は準備が潤沢な連続時間を扱う。
- ディーラーのスプレッド $\delta$ の内生的な決定(元記事の式(20)(21))。$\delta$ は定数として式(3)の $\eta$ に入る。
- 投資家ごとの代替利回りの差による配分の違い(元記事の式(16))。民間を集計した価格には影響しないが、銀行と非銀行への配分は $\psi$ として外生にした。
- 銀行の自己資本規制と、評価損益を通じた貸出への波及(元記事の式(19))。$K_t$ と $E_t$ は外生とした。
- $x_t$ の時間変動と、それによる $\lambda_t$ の時間変動(A3で $x_t = \bar{x}$ とおく)。$\bar{x}$ を一定に保つ政策の実現可能性は検証していない。
- 中央銀行の目的関数、最適な政策、期待形成、フォワードガイダンス。買入はポートフォリオバランス(民間保有の量)を通じて作用し、金利の将来経路への期待は動かさない。
- 中央銀行の自己資本と、損失の負担。純資産は0で、損益は統合政府に帰属する(A6)。
- 基礎的財政収支 $s_t$ が債務や金利に反応する財政ルール、および(30)の有界性をそれから導くこと。TVCの家計の最適化からの導出。
- 物価水準、名目と実質の区別、貨幣発行益、物価水準の財政理論による決定の主張。
- $\beta \lt 1$ のときの $\phi_t$ の確率的な変動を含む閉じた形(式(32)(34))。一般形は(27)(29)。
- 確率的な成長率、短期金利のゼロ下限、状態変数が複数ある場合、外貨建て国債と為替リスク。
- 元記事の「国債の発行量に制約がない」ことの主張、およびパラメータの推定・実際の利回り曲線への当てはめ。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```text
[政策金利 (4)] ─> [短期金利 r = κ i_R + η (3)(5)(6)]
                          │
[A1 無裁定 → Q] ─> [Girsanov (7)(8)(9)] ─> [債券価格 (10)(11)(12)] ─> [dP/P (13)(14)] ─> [利回り (15)(16)]
                          ▲                                      │
[民間の最適化 (17)(18)] ─> [λ = Γσ x̄ (19)] ─> [期待超過収益 (20)]  │
                                                                 ▼
[中央銀行 (21)(23)] ─> [預金の恒等式 (22)]     [統合政府の債務 (24)(25)] ─> [割引因子 (26)]
                                                                 │
                         [有限期間の予算制約 (27)] ─ TVC (28) ─> [無限期間 (29)] ─ 有界性 (30)
                                                                 │
   [E Ξ = e^{gτ}P (31)] ─> [確定的な経路 (32)] ─> [TVCと利回り (33)] ─> [閉じた形 (34)] ─> [主要帰結 (38)]
                                       │
                 [静学との接続 (35)] [買入の効果 (36)] [利回り目標 (37)]
```

---

### A.1 使う道具

**T1 （資産価格の基本定理）**

無裁定なら、基準財で割った価格がマルチンゲールになる同値測度 $Q$ が存在する。本記事ではこれをA1として仮定する。

**T2 （Girsanovの定理）**

$\lambda$ が定数のとき、$W^{Q}_t = W_t - \lambda t$ は、密度 $\exp(\lambda W_T - \lambda^2 T/2)$ で定まる $Q$ の下で標準ブラウン運動になる。

**T3 （平均回帰過程の解）**

$dr = \alpha(\vartheta - r)\,dt + \sigma\,dW$ の解は、次式で与えられる。

$$
r_s = r_t\,e^{-\alpha(s-t)} + \vartheta\left( 1 - e^{-\alpha(s-t)} \right) + \sigma\int_t^s e^{-\alpha(s-u)}\,dW_u
$$

**T4 （確率的Fubiniの定理、伊藤等長性、期待値と積分の交換）**

積分の順序交換 $\int_t^T\int_t^s f(s,u)\,dW_u\,ds = \int_t^T\int_u^T f(s,u)\,ds\,dW_u$ が成り立つ。また、$\mathrm{Var}\left(\int h(u)\,dW_u\right) = \int h(u)^2\,du$ である。可積分なら、期待値と時間積分は交換できる。

**T5 （ガウス変数の指数期待値）**

$X \sim N(\mu, v)$ のとき、$\mathbb{E}[e^{-X}] = e^{-\mu + v/2}$ である。

**T6 （伊藤の公式と積の公式）**

$f(t,r)$ について $df = f_t\,dt + f_r\,dr + \tfrac{1}{2}f_{rr}(dr)^2$ である。有限変動の過程 $\Xi$ との積は $d(\Xi X) = \Xi\,dX + X\,d\Xi$ である。

**T7 （繰り返し期待値）**

$s \le t$ のとき、$\mathbb{E}^{Q}_s\left[\mathbb{E}^{Q}_t[X]\right] = \mathbb{E}^{Q}_s[X]$ である。

**T8 （確率積分のマルチンゲール性）**

被積分関数の二乗の期待値の積分が有限なら、確率積分は真のマルチンゲールで、条件付き期待値は0になる。A7の正則条件がこれに当たる。

**T9 （二次関数の最大化）**

$f(x) = px - \dfrac{q}{2}x^2$、$q \gt 0$ なら、$x^{\ast} = p/q$ で最大になる。

---

### A.2 短期金利 (3)〜(6) の導出

**Step 1　代替運用利回りの加重平均**

銀行の代替運用利回りは $a_{\mathrm{B}} = i_R - \ell_{\mathrm{B}} + h_{\mathrm{B}}\delta/2$、非銀行は $a_{\mathrm{N}} = i_D - \ell_{\mathrm{N}} + h_{\mathrm{N}}\delta/2$($i_D = i_{D0} + \beta i_R$)である。A2より $r_t = \omega_{\mathrm{B}} a_{\mathrm{B}} + \omega_{\mathrm{N}} a_{\mathrm{N}}$ で、$i_R$ の係数をまとめると $\kappa = \omega_{\mathrm{B}} + \beta\omega_{\mathrm{N}}$、残りが $\eta$ である。これは式(3)である。

**Step 2　短期金利の動学**

(3)は $i_R$ の定数倍と定数の和なので、$dr_t = \kappa\,di_{R,t}$ である。(4)を代入し、$i_R = (r - \eta)/\kappa$ を使う。

$$
dr_t = \kappa\alpha\left( m - \frac{r_t - \eta}{\kappa} \right)dt + \kappa\sigma_R\,dW_t = \alpha\left( \kappa m + \eta - r_t \right)dt + \kappa\sigma_R\,dW_t
$$

$\theta = \kappa m + \eta$、$\sigma = \kappa\sigma_R$ とおいて、式(5)と式(6)を得る。$\omega_{\mathrm{B}} \gt 0$ より $\kappa \gt 0$ で、$\sigma \gt 0$ である。

**確認**

$\beta = 1$ なら $\kappa = 1$、$r_t - i_{R,t} = \eta$ で一定になる。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | A2、政策金利の動学(4) |
| 使う道具 | 線形変換(T6の伊藤の公式の特殊ケース) |

---

### A.3 債券価格 (7)〜(14) の導出

**Step 1　ブラウン運動の付け替え**

T2より、(7)の $W^{Q}$ は $Q$ の下で標準ブラウン運動で、$dW_t = dW^{Q}_t + \lambda\,dt$ である。

**Step 2　(5)への代入**

$$
dr_t = \alpha(\theta - r_t)\,dt + \sigma\left( dW^{Q}_t + \lambda\,dt \right) = \alpha\left( \theta + \frac{\sigma\lambda}{\alpha} - r_t \right)dt + \sigma\,dW^{Q}_t
$$

$\alpha \gt 0$ で割れる。$\theta^{\ast} = \theta + \sigma\lambda/\alpha$ とおいて、式(8)と式(9)を得る。

**Step 3　$Q$ の下の短期金利の解**

T3を $\vartheta = \theta^{\ast}$、$W = W^{Q}$ として適用する。

$$
r_s = r_t\,e^{-\alpha(s-t)} + \theta^{\ast}\left( 1 - e^{-\alpha(s-t)} \right) + \sigma\int_t^s e^{-\alpha(s-u)}\,dW^{Q}_u\tag{39}
$$

**Step 4　金利の積分**

(39)を $s$ で $t$ から $T$ まで積分し、T4で順序を交換する。$\int_u^T e^{-\alpha(s-u)}\,ds = B(T-u)$ を使う。

$$
\int_t^T r_s\,ds = \underbrace{\theta^{\ast}\tau + (r_t - \theta^{\ast})B(\tau)}_{\mu} + \sigma\int_t^T B(T-u)\,dW^{Q}_u\tag{40}
$$

**Step 5　分散の計算**

T4の伊藤等長性より、$v = \sigma^2\int_0^\tau B(s)^2\,ds = \sigma^2 C(\tau)$ となる。$B(s)^2 = (1 - 2e^{-\alpha s} + e^{-2\alpha s})/\alpha^2$ を積分し、$e^{-\alpha\tau} = 1 - \alpha B(\tau)$ から $(1 - e^{-2\alpha\tau})/(2\alpha) = B - \alpha B^2/2$ を使う。

$$
C(\tau) = \frac{1}{\alpha^2}\left[ \tau - 2B + B - \frac{\alpha B^2}{2} \right] = \frac{\tau - B(\tau)}{\alpha^2} - \frac{B(\tau)^2}{2\alpha}\tag{41}
$$

**Step 6　ガウス期待値と整理**

(40)の積分は $\mathcal{F}_t$ の下で $N(\mu, \sigma^2 C(\tau))$ に従うので、T5より $\ln P = -\mu + \sigma^2 C(\tau)/2$ となる。

$$
\ln P = -\theta^{\ast}\tau - (r_t - \theta^{\ast})B + \frac{\sigma^2}{2}\left[ \frac{\tau - B}{\alpha^2} - \frac{B^2}{2\alpha} \right] = -B\,r_t + (B - \tau)\left( \theta^{\ast} - \frac{\sigma^2}{2\alpha^2} \right) - \frac{\sigma^2 B^2}{4\alpha}
$$

これは式(10)(11)(12)に一致する。

**Step 7　$Q$ の下の価格の動学**

A1より $P/B^{\mathrm{mm}}$ は $Q$ の下でマルチンゲールなので、$dP/P$ のドリフトは $r_t$ である。(10)より $\partial P/\partial r = -B(\tau)\,P$ で、$r$ の拡散係数が $\sigma$ なので、T6より $dW^{Q}$ の係数は $-\sigma B(\tau)$ になる。式(13)を得る。

**Step 8　実世界の価格の動学**

(13)に $dW^{Q} = dW - \lambda\,dt$ を代入し、式(14)を得る。

**確認**

$\tau = 0$ で $A = B = 0$ より $P = 1$ となる。$\sigma = 0$ では $\ln P = -\int r$ の確定的な値に一致する。$\lambda = 0$ なら $P$ と $Q$ の下の動学が一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 短期金利の動学(5)、市場価格 $\lambda$、価格の表現(1) |
| 使う道具 | T2 Girsanov、T3 平均回帰過程の解、T4 Fubiniと伊藤等長性、T5 ガウスの指数期待値、T6 伊藤の公式 |

---

### A.4 利回り (15)(16) の導出

**Step 1　利回りの定義**

(2)と(10)より、$y = -\ln P/\tau = \left( B(\tau)\,r_t - A(\tau) \right)/\tau$ である。

**Step 2　$A$ の代入**

(12)と(15)を代入し、$\tau \gt 0$ で割る。

$$
-\frac{A}{\tau} = \frac{\tau - B}{\tau}\,y_\infty + \frac{\sigma^2 B^2}{4\alpha\tau} = y_\infty\left( 1 - \frac{B}{\tau} \right) + \frac{\sigma^2 B^2}{4\alpha\tau}
$$

**Step 3　まとめ**

$y = y_\infty(1 - B/\tau) + r_t\,B/\tau + \sigma^2 B^2/(4\alpha\tau)$ を整理して、式(16)を得る。

**確認**

$\tau \to 0$ で $B/\tau \to 1$、$B^2/\tau \to 0$ なので $y \to r_t$ である。$\tau \to \infty$ で $B \to 1/\alpha$ なので $y \to y_\infty$ である。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 債券価格(10)(11)(12)、利回りの定義(2) |
| 使う道具 | 代数計算 |

---

### A.5 民間の需要と市場価格 (17)〜(20) の導出

**Step 1　民間の超過収益と分散**

民間が満期 $T$ の国債を、対GDP比 $\chi_t(T)$ で保有するとする。(14)より、無リスク金利を上回る期待超過収益は $\int\chi_t(T)\,\lambda\sigma B(T-t)\,dT = \lambda\sigma\,x$、収益の分散は $\sigma^2 x^2$ で、$x = \int\chi_t(T)B(T-t)\,dT$ である。

**Step 2　最適化**

平均分散基準 $\lambda\sigma x - (\Gamma/2)\sigma^2 x^2$ をT9で最大化する。$p = \lambda\sigma$、$q = \Gamma\sigma^2 \gt 0$ より $x^{\ast} = \lambda/(\Gamma\sigma)$ である。目的関数は $x$ だけに依存するので、同じ $x$ を実現する満期構成はすべて等しい。

**Step 3　市場清算**

民間の需要 $x^{\ast}$ が供給 $x_t$(式(17)の $X_t/Y_t$)に等しいとおき、$\lambda_t = \Gamma\sigma x_t$ を得る。式(18)である。

**Step 4　$x_t = \bar{x}$ のとき**

$\lambda = \Gamma\sigma\bar{x}$ を(9)に代入し、$\theta^{\ast} = \theta + \sigma\lambda/\alpha = \theta + \Gamma\sigma^2\bar{x}/\alpha$ を得る。式(19)である。

**Step 5　期待超過収益率**

(14)より、満期 $T$ の国債の期待収益率と $r_t$ の差は $\lambda\sigma B(\tau)$ で、(19)の $\lambda$ を代入して式(20)を得る。

**確認**

$\bar{x} = 0$ なら $\lambda = 0$、$\pi(\tau) = 0$ である。$\Gamma \to 0$(リスク回避なし)でも同じになる。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 実世界の価格の動学(14)、A3、民間保有の定義(17) |
| 使う道具 | T9 二次関数の最大化 |

---

### A.6 中央銀行・預金・債務の動学 (21)〜(26) の導出

**Step 1　預金の恒等式**

A8の貸借対照表の等式 $D_t + E_t = K_t + b^{\mathrm{B}}_t + M_t$ に、$b^{\mathrm{B}}_t = \psi(V_t - b_{C,t})$ とA6の $M_t = b_{C,t}$ を代入し、$D_t$ について解く。式(22)を得る。

**Step 2　中央銀行の期待損益**

資産 $b_C$ の実世界での収益は、(14)の加重平均より $\left( r_t b_C + \lambda\sigma X^{\mathrm{C}} \right)dt - \sigma X^{\mathrm{C}}\,dW_t$ である。負債 $M = b_C$ の費用は $i_R\,b_C\,dt$ である。差の期待値が式(23)である($\phi_t = r_t - i_{R,t}$)。

**Step 3　統合債務の動学**

統合政府の債務は、民間保有の国債 $V^{p} = V - b_C$ と準備 $M$ の和 $N = V^{p} + M$ で、$M = b_C$ なので $N = V$ である。買入は国債を準備に置き換えるだけで、$N$ を変えない。$V^{p}$ の $Q$ の下の収益は、(13)の加重平均より $r_t V^{p}\,dt - \sigma X_t\,dW^{Q}_t$ で、準備の利子は $i_R M\,dt$ である。基礎的収支 $S_t$ が債務を減らすので、次を得る。

$$
dN_t = \left( r_t V^{p} + i_{R,t} M - S_t \right)dt - \sigma X_t\,dW^{Q}_t\tag{42}
$$

**Step 4　式(24)**

$i_R = r - \phi$ と $M = b_C$ より、$r V^{p} + i_R M = r(V - b_C) + (r - \phi)b_C = rV - \phi b_C$ である。$N = V$ を使い、式(24)を得る。

**Step 5　GDP比への変換**

$Y_t$ は確定的で $dY_t = gY_t\,dt$ である。$v_t = V_t/Y_t$ に対し、$dv_t = dV_t/Y_t - g\,v_t\,dt$ となる。$X_t/Y_t = x_t$ なので、式(25)を得る。

**Step 6　割引因子**

(26)は定義である。$d\Xi_{t,u} = -(r_u - g)\Xi_{t,u}\,du$($u$ について)で、$\Xi_{t,t} = 1$ である。

**確認**

$c = 0$ なら $\phi c = 0$、$x = x^{\mathrm{G}}$ で、前記事の債務GDP比の動学に一致する。全額保有 $b_C = V$ なら $x = 0$、$\phi c = \phi v$ で、(25)のドリフトは $(r - g - \phi)v - s = (i_R - g)v - s$ になる。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 債券価格の動学(13)(14)、A5〜A8 |
| 使う道具 | T6 積の公式、代数計算 |

---

### A.7 通時的予算制約 (27)(29) の導出

**Step 1　割引後の債務の動学**

T6の積の公式を $u$ について $\Xi_{t,u}\,v_u$ に適用する。$d\Xi_{t,u} = -(r_u - g)\Xi_{t,u}\,du$ と(25)から、$(r_u - g)v_u$ の項が打ち消し合う。

$$
d\left( \Xi_{t,u}\,v_u \right) = -\Xi_{t,u}\left( s_u + \phi_u c_u \right)du - \Xi_{t,u}\,\sigma x_u\,dW^{Q}_u
$$

**Step 2　$t$ から $T$ まで積分**

$\Xi_{t,t} = 1$ なので、次を得る。

$$
\Xi_{t,T}\,v_T - v_t = -\int_t^T \Xi_{t,u}\left( s_u + \phi_u c_u \right)du - \int_t^T \Xi_{t,u}\,\sigma x_u\,dW^{Q}_u
$$

**Step 3　期待値をとる**

A7の正則条件とT8より、確率積分の $\mathbb{E}^{Q}_t$ は0になる。整理して式(27)を得る。

**Step 4　$T \to \infty$**

TVC(28)より第2項が消える。A7の可積分条件で、$\int_t^T$ の期待値は $\int_t^\infty$ の期待値に収束し、式(29)を得る。

**確認**

$\sigma = 0$、$s = \phi c = 0$、$r - g = \kappa_0$ が定数のとき、$v_T = v_t\,e^{\kappa_0\tau}$、$\Xi_{t,T} = e^{-\kappa_0\tau}$ なので、$\Xi_{t,T}v_T = v_t$ で、(27)は自明に成り立つ。TVC(28)は $v_t = 0$ のときにだけ成り立つ。TVCを外すと、$v_t$ が現在価値で決まらない(ポンジー・バブル解が残る)。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 債務GDP比の動学(25)、割引因子(26)、A7の正則条件、TVC(28) |
| 使う道具 | T6 積の公式、T8 確率積分のマルチンゲール性 |

---

### A.8 利回りとの接続 (31)(32) の導出

**Step 1　割引因子の期待値**

(26)より $\Xi_{t,u} = e^{g(u-t)}\exp\left(-\int_t^u r_v\,dv\right)$ で、第1因子は確定的である。(1)より次を得る。

$$
\mathbb{E}^{Q}_t\left[ \Xi_{t,u} \right] = e^{g(u-t)}\,P(t,u)
$$

**Step 2　利回りで書く**

(2)より $P(t,u) = \exp(-y(t,u)(u-t))$ なので、$e^{g(u-t)}P(t,u) = \exp(-(y(t,u)-g)(u-t))$ となり、式(31)を得る。

**Step 3　確定的な経路**

$\beta = 1$ なら $\phi_u = \eta$ は定数である。$s(u)$、$c(u)$ が確定的なら、A7の可積分条件の下でT4により、(29)の期待値と時間積分を交換できる。(31)を代入して式(32)を得る。

**確認**

$g = 0$、$c = 0$ なら、(32)は収支の流列の通常の現在価値 $\int s(u)P(t,u)\,du$ になる。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 価格の表現(1)、利回りの定義(2)、無限期間の予算制約(29) |
| 使う道具 | T4 期待値と積分の交換 |

---

### A.9 TVCと利回りの条件 (33)(34) の導出

**Step 1　$t$ を固定したときの漸近形**

$e^{g\tau}P(t,T)$ の対数は、(10)より $A(\tau) - B(\tau)r_t + g\tau$ である。$A(\tau) = (B-\tau)\,y_\infty - \sigma^2B^2/(4\alpha)$、$B(\tau) = 1/\alpha - e^{-\alpha\tau}/\alpha$ を代入し、$\tau \to \infty$ で次を得る。

$$
\ln\left( e^{g\tau}P(t,T) \right) = -\left( y_\infty - g \right)\tau + \underbrace{\frac{y_\infty}{\alpha} - \frac{\sigma^2}{4\alpha^3} - \frac{r_t}{\alpha}}_{\zeta(r_t)} + O\left( e^{-\alpha\tau} \right)\tag{43}
$$

したがって、$e^{g\tau}P(t,T) \to 0$ であることと、$y_\infty \gt g$ であることは同値である。$y_\infty = g$ なら極限は正の定数 $e^{\zeta}$、$y_\infty \lt g$ なら無限大に発散する。(15)と(19)より $y_\infty = \theta + \Gamma\sigma^2\bar{x}/\alpha - \sigma^2/(2\alpha^2)$ なので、(33)の右辺の形になる。

**Step 2　命題(i)：TVC ならば $y_\infty \gt g$**

(30)の下限 $v_T \ge \varepsilon$ と(31)で $u = T$ とおくと、次が成り立つ。

$$
\mathbb{E}^{Q}_t\left[ \Xi_{t,T}\,v_T \right] \ge \varepsilon\,\mathbb{E}^{Q}_t\left[ \Xi_{t,T} \right] = \varepsilon\,e^{g\tau}P(t,T)
$$

TVC(28)なら左辺は0に収束するので、右辺も0に収束する。Step 1より $y_\infty \gt g$ である。

**Step 3　命題(ii)：$y_\infty \gt g$ ならば TVC**

(30)の上限 $v_T \le \bar{v}$ と $v_T \gt 0$ より、$0 \lt \mathbb{E}^{Q}_t[\Xi_{t,T}\,v_T] \le \bar{v}\,e^{g\tau}P(t,T)$ である。$y_\infty \gt g$ ならStep 1より右辺は0に収束するので、(28)が成り立つ。

**Step 4　一定の収支の閉じた形(34)**

$s_t = s$、$c_t = c$ で $\beta = 1$ のとき、(32)で $u = t + \tau$ とおき、(31)と(10)を使う。

$$
v_t = \left( s + \eta c \right)\int_0^\infty e^{g\tau}P(t,t+\tau)\,d\tau = \left( s + \eta c \right)\int_0^\infty \exp\left( A(\tau) - B(\tau)r_t + g\tau \right)d\tau = \left( s + \eta c \right)\Phi(r_t)
$$

被積分関数は、(43)より $e^{\zeta}e^{-(y_\infty - g)\tau}$ に漸近する。$y_\infty \gt g$ のとき積分は有限で、$y_\infty \le g$ のとき $\Phi = \infty$ である。後者では(29)により $v_t = \infty$ となり、有限な $v_t$ とTVCは両立しない。

**Step 5　確定的な経路でのTVCの確認**

(32)が時点 $T$ でも成り立つとして、$v_T = \int_T^\infty (s(u) + \eta c(u))\,e^{g(u-T)}P(T,u)\,du$ である。T7で繰り返し期待値をとり、$\Xi_{t,T}\,e^{g(u-T)} = e^{g(u-t)}\exp(-\int_t^T r_v\,dv)$ と(1)の繰り返し適用を使う。

$$
\mathbb{E}^{Q}_t\left[ \Xi_{t,T}\,v_T \right] = \int_T^\infty \left( s(u) + \eta c(u) \right)e^{g(u-t)}P(t,u)\,du
$$

右辺は、(32)の収束する積分の裾なので、$T \to \infty$ で0に収束する。TVC(28)が成り立つ。

**確認**

$\sigma = 0$、$\beta = 1$、$r_t = \theta^{\ast}$ のとき、$A(\tau) - B(\tau)r_t = -\theta^{\ast}\tau$ なので、$\Phi = \int_0^\infty e^{-(\theta^{\ast}-g)\tau}\,d\tau = 1/(\theta^{\ast}-g)$ となり、$v_t = (s + \eta c)/(r_t - g)$ に一致する。(33)は $\theta^{\ast} \gt g$ になる。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 割引因子の期待値(31)、債券価格(10)〜(12)、長期利回り(15)(19)、有界性(30) |
| 使う道具 | T4 期待値と積分の交換、T7 繰り返し期待値、漸近展開 |

---

### A.10 静学との接続と買入の効果 (35)〜(37) の導出

**Step 1　単一満期への還元**

民間が満期 $T$ の1銘柄だけを対GDP比 $\chi$ 保有するとき、(17)より $\bar{x} = B(\tau)\chi$ である。(20)に代入して $\pi(\tau) = \Gamma\sigma^2 B(\tau)^2\chi = \Gamma(\sigma B(\tau))^2\chi$ を得る。

**Step 2　元記事との対応**

元記事の式(12)の期間プレミアムは $\Gamma\sigma_P^2(G - b_U)$ で、$\sigma_P$ は価格変動の標準偏差、$G - b_U$ は民間が吸収する額である。価格変動を $\sigma B(\tau)$、民間の吸収額を $\chi$ に置くと、両辺が一致し、式(35)を得る。ここでの対応は、期待超過収益率の対応で、(16)の利回りのスプレッドとは満期にわたる平均の分だけ異なる。

**Step 3　買入の効果**

$x^{\mathrm{G}}$ を固定すると $\bar{x} = x^{\mathrm{G}} - \bar{B}_C c$ で、$\partial\bar{x}/\partial c = -\bar{B}_C$ である。(19)より $\partial\theta^{\ast}/\partial\bar{x} = \Gamma\sigma^2/\alpha$、(15)より $\partial y_\infty/\partial\theta^{\ast} = 1$ なので、$\partial y_\infty/\partial c = -\Gamma\sigma^2\bar{B}_C/\alpha$ である。(16)より $\partial y/\partial y_\infty = 1 - B(\tau)/\tau$ なので、式(36)を得る。$1 - B/\tau$ は $\tau$ について0から1へ増加する。

**Step 4　利回り目標**

$y_\infty = y_T$ を(15)(19)で $\bar{x}$ について解く。

$$
\bar{x}^{T} = \frac{\alpha}{\Gamma\sigma^2}\left( y_T - \theta + \frac{\sigma^2}{2\alpha^2} \right)
$$

必要な中央銀行のドル・デュレーションは $x^{\mathrm{C},T} = x^{\mathrm{G}} - \bar{x}^{T}$ で、$\ge 0$ であることは $\bar{x}^{T} \le x^{\mathrm{G}}$ と同値である。これは式(37)で、$\bar{x}$ が増加関数であるため、$y_T \le \theta + \Gamma\sigma^2 x^{\mathrm{G}}/\alpha - \sigma^2/(2\alpha^2)$ と同値である。

**確認**

$\bar{B}_C \to 0$(短期債だけを買う)なら、$\partial y/\partial c \to 0$ で、買入は長期金利に効かない。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 民間保有の定義(17)、市場価格(19)、利回り(15)(16)、元記事の式(12) |
| 使う道具 | 代数計算、偏微分 |

---

### A.11 比較静学の導出

**Step 1　積分記号下の微分**

(33)が成り立つとき、(43)より被積分関数は $\tau$ について指数的に減衰し、パラメータの局所的な範囲で一様に上から抑えられる。優収束定理により、微分と積分を交換できる。

**Step 2　$\Phi$ の偏微分**

被積分関数 $e^{A(\tau) - B(\tau)r + g\tau}$ の対数のパラメータによる偏微分は、次のとおりである。

| パラメータ | 対数の偏微分 | 符号 |
|---|---|---|
| $r$ | $-B(\tau)$ | $B(\tau) \gt 0$ より負 |
| $g$ | $\tau$ | $\tau \gt 0$ より正 |
| $\theta^{\ast}$ | $B(\tau) - \tau$ | $1 - e^{-x} \lt x\ (x \gt 0)$ より $B(\tau) \lt \tau$ で負 |

**Step 3　$\bar{x}$ と $c$**

(19)より $\partial\theta^{\ast}/\partial\bar{x} = \Gamma\sigma^2/\alpha$ なので、$\partial\Phi/\partial\bar{x} = (\Gamma\sigma^2/\alpha)\int_0^\infty(B-\tau)\,e^{A-Br+g\tau}\,d\tau \lt 0$ である。$v = (s + \eta c)\Phi$ を $c$ で微分し、$\partial\bar{x}/\partial c = -\bar{B}_C$ を使う。

$$
\frac{\partial v}{\partial c} = \eta\,\Phi + \left( s + \eta c \right)\left( -\bar{B}_C \right)\frac{\partial\Phi}{\partial\bar{x}}
$$

$\Phi \gt 0$、$\partial\Phi/\partial\bar{x} \lt 0$、$s + \eta c \gt 0$ より、$\eta \ge 0$ なら両項とも非負で、第2項は正である。

**Step 4　その他**

$\partial y_\infty/\partial m = (\partial y_\infty/\partial\theta)(\partial\theta/\partial m) = \kappa$、$\partial\lambda/\partial\Gamma = \sigma\bar{x}$、(22)より $\partial D/\partial\psi = V - b_C$ である。$\psi$ は価格の式に入らない。

**確認**

$\sigma = 0$、$\beta = 1$、$r_t = \theta^{\ast}$ では $v = (s + \eta c)/(r - g)$ なので、$r$ の上昇で低下、$g$ の上昇で上昇し、符号が一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 債務の許容水準(34)、市場価格(19)、預金の恒等式(22) |
| 使う道具 | 優収束定理、不等式 $1 - e^{-x} \lt x$ |

---

### A.12 著者について

**Oldřich Vašíček（Oldrich Alfons Vasicek）**
- **アカデミックな経歴**: 1942年にチェコスロバキアで生まれた。プラハのチェコスロバキア科学アカデミーで純粋数学の研究に従事していたが、1968年のソ連軍侵攻をきっかけに米国へ移った。サンフランシスコのWells Fargo銀行の経営科学部門でバイスプレジデントを務め、1974年にロチェスター大学経営大学院で2年間教えた。1989年にKMV社を共同で創設した。
- **主要な研究分野**: 金利の期間構造、信用リスクのモデル化（KMVモデル、信用ポートフォリオのリスクモデル）、数理ファイナンス全般。
- **評判・学術的貢献**: 1977年の本論文は、平均回帰型の短期金利モデル(Vasicekモデル)を与え、Cox–Ingersoll–Rossモデルなどその後の研究や金利デリバティブ市場の発展に影響したと評価されている。受賞歴は、Graham and Dodd Award、Roger F. Murray Prize、Institute for Quantitative Research in Financeの賞、IAFE Financial Engineer of the Year(2004年)、Risk誌のLifetime Achievement Award(2002年)などである。

*（政府の予算制約・TVC、および国債市場・中央銀行・信用創造の部分は、特定の論文に基づかない。後者は元記事(tokyo-worker、2026年10月19日)の静学モデルを連続時間へ拡張したもので、元記事の著者は学術論文の著者ではないため、著者の説明はVasicekのみである。）*

---

**© 2026 AI Collaborator**. 原論文: Vasicek, O. (1977), Journal of Financial Economics.（政府債務の予算制約とTVC、および中央銀行・信用創造との接続部分は本記事で補った。接続元: tokyo-worker「国債の発行市場・流通市場と中央銀行：数理モデル」2026年10月19日、https://tokyo-worker.github.io/2026/10/19/government_bond_market_model/）
{% endraw %}
