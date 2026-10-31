---
layout: post
title: "RBC (Kydland–Prescott 1982) + Vasicek (1977) 期間構造 + 政府の予算制約・TVC + 中央銀行・信用創造: Theoretical Minimum な数理モデル"
date: 2026-10-31 00:00:00 +0900
categories: [マクロ経済学, 金利・財政・中央銀行]
math: true
---

{% raw %}
# RBC (Kydland–Prescott 1982) + Vasicek (1977) 期間構造 + 政府の予算制約・TVC + 中央銀行・信用創造: Theoretical Minimum な数理モデル
### 実物ショック → 消費 → 確率的割引因子 → 実質利回り曲線 → 消費税収の現在価値(財政余力)→ TVC → 中央銀行・信用創造の中立性

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

代表的家計・代表的企業・政府(中央銀行を含む統合政府)・銀行からなる離散時間の経済を考える。時間は $t = 0, 1, 2, \dots$、不確実性は TFP への正規ショック $\varepsilon_t$ だけである。$\mathbb{E}_t[\,\cdot\,]$ は時点 $t$ の情報の下での期待値である。

本記事は、次の3つの記事を最小限の形で接続する。(i) Pure RBC モデル(tokyo-worker「Pure RBC Model — Recursive Competitive Equilibrium から状態空間表現まで」2026年5月28日、以下「元記事RBC」)、(ii) 国債の期間構造と政府の予算制約・TVC(前記事、Vasicek 1977 に基づく)、(iii) 国債市場・中央銀行・信用創造(tokyo-worker「国債の発行市場・流通市場と中央銀行：数理モデル」2026年10月19日)。記号の衝突を避けるため、$\sigma$ は元記事RBCの相対的危険回避度、$\tau$ は消費税率、$n$ は満期(期数)、$\Lambda$ は確率的割引因子、$M_t$ は準備と書く。前記事の連続時間の記号($\alpha$, $\theta$, $\sigma$ など)は使わない。

**A1 （家計・企業・市場）**

元記事RBCのとおり、代表的家計は消費と余暇の効用を最大化し、代表的企業は規模に関して収穫一定の生産関数で利潤を最大化する。市場は完全競争・完備で、歪みは A3 の消費税だけである。外すと、第一厚生定理(元記事RBC §5.2)が成り立たなくなる。

**A2 （TFPと対数線形近似）**

TFPは $\ln A_{t+1} = \rho\ln A_t + \varepsilon_{t+1}$、$\varepsilon \sim N(0,\sigma_\varepsilon^2)$ に従い、均衡は定常状態の周りで対数線形に近似する(元記事RBC §9〜§11)。均衡はサドルパス安定(状態遷移行列 $F$ の固有値が単位円の内側)で、状態変数は $(\hat k_t, \hat a_t)$ である。外すと、状態空間表現(式(8))と閉じた形の価格式が失われる。

**A3 （消費税と政府）**

政府は消費に一定の税率 $\tau \ge 0$ を課し($(1+\tau)C_t$ を家計が支払う)、政府支出は0とする。税収は全額を債務の返済に充てる。基礎的財政収支は $s_t = \tau\,C_t$ である。外すと、定常労働の閉じた形(式(7))が失われる。

**A4 （政府債務）**

政府債務は実質の国債(消費財建てのゼロクーポン債の束で、満期構成は任意)で、時価を $V_t$ とする。デフォルトはない。債務は家計が保有する(直接、または銀行の預金を通じて)。債務の構成と満期は、実物経済(消費・労働・資本)に影響しない(式(30))。外すと、債務が実物に影響する経路(信用スプレッド、流動性便益)が加わる。

**A5 （中央銀行と銀行）**

中央銀行は国債だけを資産、準備 $M_t$ だけを負債とし、純資産は0($M_t = b_{C,t}$)である。準備の付利は無リスク金利に等しい(流動性便益なし)。銀行の自己資本は0で、貸出は企業の資本 $K_{t+1}$ に向かい、銀行は民間が保有する国債の割合 $\psi \in [0,1]$ を保有する(外生)。外すと、前記事の準備の逆ざや($\phi \neq 0$)と流動性便益の項が加わる。

**A6 （TVC）**

家計のTVCは次のとおりである。

$$
\lim_{T\to\infty}\mathbb{E}_t\left[\Lambda_{t,t+T}\,W_{t+T}\right] = 0,\qquad W_T = R_T K_T + V_T
$$

外すと、債務と資本にバブル解が残る。

*（補った部分: 元記事RBCは政府・債務・期間構造を含まない。A3の消費税と $G=0$、A4〜A6、式(3)の予算制約と労働条件への税の楔、式(9)〜(31)は、本記事で補った。TVCは家計の最適性の必要条件として課す。元記事RBCは定常状態で $A=1$ とし、トレンド成長を含まないため、$g = 0$ を基準とし、$g \neq 0$ は式(22)の補足でのみ扱う。）*

---

### 1.1 実物経済(RBC)

**家計の効用**

$$
U = \mathbb{E}_0\sum_{t=0}^{\infty}\beta^t\left( \underbrace{\frac{C_t^{1-\sigma}}{1-\sigma}}_{\text{消費の効用}} - \underbrace{\chi\frac{L_t^{1+\gamma}}{1+\gamma}}_{\text{労働の不効用}} \right)\tag{1}
$$

**生産とTFP**

$$
\begin{aligned}
Y_t &= \underbrace{A_t}_{\text{TFP}}\,K_t^{\alpha}\,L_t^{1-\alpha} \\
\ln A_{t+1} &= \rho\ln A_t + \varepsilon_{t+1},\qquad \varepsilon_{t+1}\sim N(0,\sigma_\varepsilon^2)
\end{aligned}\tag{2}
$$

**家計の予算制約**

$$
\underbrace{(1+\tau)\,C_t}_{\text{税込みの消費}} + \underbrace{K_{t+1}}_{\text{資本}} + \underbrace{b_{t+1}}_{\text{国債の保有}} = \underbrace{w_tL_t}_{\text{賃金}} + \underbrace{R_tK_t}_{\text{資本の収益}} + \underbrace{V_t}_{\text{国債の時価}}\tag{3}
$$

**家計の最適性条件**

$$
\begin{aligned}
1 &= \underbrace{\beta\,\mathbb{E}_t\left[ \left(\frac{C_{t+1}}{C_t}\right)^{-\sigma}R_{t+1} \right]}_{\text{異時点間(Euler)}} \\
w_t &= \underbrace{(1+\tau)\,\chi\,L_t^{\gamma}\,C_t^{\sigma}}_{\text{労働供給(税の楔つき)}}
\end{aligned}\tag{4}
$$

**企業の最適性条件**

$$
\begin{aligned}
R_t &= \alpha A_t\left(\frac{K_t}{L_t}\right)^{\alpha-1} + 1 - \delta \\
w_t &= (1-\alpha)A_t\left(\frac{K_t}{L_t}\right)^{\alpha}
\end{aligned}\tag{5}
$$

**資源制約と資本蓄積**

$$
C_t + K_{t+1} = Y_t + (1-\delta)K_t\tag{6}
$$

**定常状態**

$$
\bar\kappa = \left(\frac{\alpha}{1/\beta - 1 + \delta}\right)^{\frac{1}{1-\alpha}},\qquad
\bar L(\tau) = \bar L_0\,(1+\tau)^{-\nu},\qquad
\bar C(\tau) = \bar c_\ell\,\bar L(\tau),\qquad
\nu \equiv \frac{1}{\gamma+\sigma}\tag{7}
$$

> (4)の消費税 $\tau$ が一定なら、Euler 条件では打ち消し合い、労働供給にだけ楔が入る。(6)は、政府の予算制約 $b_{t+1} = V_t - \tau C_t$(式(15))と(3)から得られ、債務 $V$ は資源制約に入らない。(7)の $\bar\kappa$ は元記事RBC §7.2 に一致する。

| 記号・項目 | 意味 |
|---|---|
| $\beta$, $\sigma$, $\chi$, $\gamma$ | 割引因子、相対的危険回避度、労働の不効用、フリッシュ弾力性の逆数 |
| $\alpha$, $\delta$ | 資本分配率、減耗率 |
| $A_t$, $\rho$, $\sigma_\varepsilon$ | TFP、その持続性、ショックの標準偏差 |
| $\tau$ | 消費税率(一定) |
| $b_{t+1}$ | 期末に家計が保有する国債(繰り越し額) |
| $R_t$, $w_t$ | 資本の総収益率、賃金 |
| $\bar\kappa$ | 定常の資本労働比 $\bar K/\bar L$ |
| $\bar c_\ell$ | 労働1単位あたりの定常消費 $\bar\kappa^{\alpha} - \delta\bar\kappa$ |
| $\bar L_0$ | $\tau = 0$ の定常労働 $\left[(1-\alpha)\bar\kappa^{\alpha}/(\chi\,\bar c_\ell^{\sigma})\right]^{\nu}$ |
| $\nu$ | 税に対する労働供給の弾力性 |

---

### 1.2 状態空間表現

**対数線形近似の解**

$$
x_{t+1} = F\,x_t + q\,\varepsilon_{t+1},\qquad \hat c_t = H\,x_t,\qquad x_t = \left(\hat k_t,\ \hat a_t\right)^{\top}\tag{8}
$$

> 元記事RBC §10 の状態方程式と観測方程式に当たる(行列の名称を、$A$, $B$, $C$ から $F$, $q$, $H$ に改めた)。$F$, $q$, $H$ は $\tau$ に依存し、サドルパス条件(元記事RBC §11)を満たす解として数値的に得る。$\hat c_t = \ln C_t - \ln\bar C$ である。

| 記号・項目 | 意味 |
|---|---|
| $x_t$ | 状態変数(資本と TFP の対数偏差、$\hat a_t = \ln A_t$) |
| $F$ | 状態の遷移行列(固有値は単位円の内側) |
| $q$ | ショックの負荷ベクトル |
| $H$ | 消費の状態への負荷(行ベクトル) |

---

### 1.3 確率的割引因子と実質利回り曲線

**確率的割引因子と実質債券価格**

$$
\Lambda_{t,t+n} = \prod_{i=0}^{n-1}\beta\left(\frac{C_{t+i+1}}{C_{t+i}}\right)^{-\sigma} = \beta^{n}\,e^{-\sigma(\hat c_{t+n}-\hat c_t)},\qquad
P^{(n)}_t = \mathbb{E}_t\left[ \Lambda_{t,t+n} \right]\tag{9}
$$

**割引因子の期待値(閉じた形)**

行ベクトル $\mathbf{u}$ について、次が成り立つ。

$$
\mathbb{E}_t\left[ \beta^{n}e^{\mathbf{u}(x_{t+n}-x_t)} \right] = \beta^{n}\exp\Big( \underbrace{\mathbf{u}\,(F^{n}-I)\,x_t}_{\text{状態の期待変化}} + \underbrace{\tfrac12\sigma_\varepsilon^2\sum_{j=0}^{n-1}\left(\mathbf{u}F^{j}q\right)^{2}}_{\text{分散の補正}} \Big)\tag{10}
$$

実質債券は $\mathbf{u}_b = -\sigma H$、消費の請求権(1.5)は $\mathbf{u}_C = (1-\sigma)H$ である。

**実質利回り曲線**

$$
y^{(n)}_t = \underbrace{-\ln\beta}_{\text{時間選好率}} + \underbrace{\frac{\sigma}{n}H\left(F^{n}-I\right)x_t}_{\text{消費の期待成長}} - \underbrace{\frac{\sigma^2\sigma_\varepsilon^2}{2n}\sum_{j=0}^{n-1}\left(HF^{j}q\right)^{2}}_{\text{不確実性の補正}}\tag{11}
$$

**短期金利と長期利回り**

$$
r_t = y^{(1)}_t = -\ln\beta + \sigma H(F-I)\,x_t - \tfrac12\sigma^2\sigma_\varepsilon^2\,(Hq)^2\tag{12}
$$

$$
y_\infty = \lim_{n\to\infty}y^{(n)}_t = -\ln\beta\tag{13}
$$

**リスクの市場価格と期待超過収益率**

$$
\ell \equiv \underbrace{\sigma}_{\text{危険回避度}}\,\underbrace{Hq}_{\text{消費の感応度}},\qquad
\pi_n = -\ell\,\sigma\,\sigma_\varepsilon^2\,H\left(F^{n-1}-I\right)q\tag{14}
$$

> (11)は、前記事の利回り曲線(Vasicekモデル)の離散時間版である。第2項が短期金利の影響、第3項が凸性の補正に当たる。前記事で外生だった短期金利の動学、リスクの市場価格 $\lambda$、成長率 $g$ は、ここでは消費の動学から決まる。(13)より、長期利回りは景気循環では動かず、時間選好率に等しい。$\pi_n$ は対数の期待超過収益率($\mathrm{Var}$ の補正を除く)で、$\ell$ が前記事の $\lambda$ に当たる。

| 記号・項目 | 意味 |
|---|---|
| $\Lambda_{t,t+n}$ | 時点 $t$ から $t+n$ への確率的割引因子 |
| $P^{(n)}_t$ | $n$ 期後に消費財1単位を払う実質ゼロクーポン債の価格 |
| $\mathbf{u}$ | 割引因子の状態への負荷(行ベクトル) |
| $y^{(n)}_t$ | $n$ 期の実質利回り(連続複利) |
| $r_t$ | 実質短期金利 |
| $y_\infty$ | 長期利回り |
| $\ell$ | リスクの市場価格(前記事の $\lambda$ に当たる) |
| $\pi_n$ | $n$ 期債の期待超過収益率 |

---

### 1.4 政府の予算制約とTVC

**債務の動学**

$$
V_{t+1} = R^{V}_{t+1}\,\big( V_t - \underbrace{s_t}_{\text{基礎的収支}} \big),\qquad s_t = \tau\,C_t,\qquad b_{t+1} = V_t - s_t\tag{15}
$$

**債務の評価式**

$$
V_t = s_t + \mathbb{E}_t\left[ \Lambda_{t,t+1}\,V_{t+1} \right]\tag{16}
$$

**有限期間の予算制約**

$$
V_t = \underbrace{\mathbb{E}_t\sum_{j=0}^{T-1}\Lambda_{t,t+j}\,s_{t+j}}_{T\text{ 期までの収支の現在価値}} + \underbrace{\mathbb{E}_t\left[ \Lambda_{t,t+T}\,V_{t+T} \right]}_{T\text{ 期後の債務の現在価値}}\tag{17}
$$

**TVC（横断性条件）**

$$
\lim_{T\to\infty}\ \underbrace{\mathbb{E}_t\left[ \Lambda_{t,t+T}\,V_{t+T} \right]}_{\text{割引後の債務}} = 0\tag{18}
$$

**無限期間の予算制約**

$$
V_t = \underbrace{\mathbb{E}_t\sum_{j=0}^{\infty}\Lambda_{t,t+j}\,s_{t+j}}_{\text{将来の消費税収の現在価値}}\tag{19}
$$

**家計のTVCとの関係**

$$
\text{A6 の家計のTVC}\ \ \&\ \ V_t \ge 0\ \Longrightarrow\ (18)\tag{20}
$$

> (15)の $R^V_{t+1}$ は債務ポートフォリオの総収益率で、すべての国債が(9)で価格付けされるので $\mathbb{E}_t[\Lambda_{t,t+1}R^V_{t+1}] = 1$ である。(16)はこれから従う。前記事の連続時間の式(27)〜(29)の離散時間版で、確率積分の正則条件が不要になる。(20)は、債務が非負のとき、家計のTVCが政府のTVCを含むことを示す。

| 記号・項目 | 意味 |
|---|---|
| $V_t$ | 政府債務の時価(期首、収支の前) |
| $s_t$ | 基礎的財政収支 $\tau C_t$ |
| $R^V_{t+1}$ | 債務ポートフォリオの総収益率 |
| $W_T$ | 家計の期首の資産 $R_TK_T + V_T$ |

---

### 1.5 利回りとの接続と財政余力

**消費税収の現在価値**

(19)に $s_{t+j} = \tau C_{t+j}$ と $\Lambda_{t,t+j}C_{t+j}/C_t = \beta^je^{(1-\sigma)(\hat c_{t+j}-\hat c_t)}$ を使うと、(10)で $\mathbf{u} = \mathbf{u}_C$ とおいて次を得る。

$$
\frac{V_t}{C_t} = \tau\,\Phi_C(x_t),\qquad
\Phi_C(x) = \sum_{n=0}^{\infty}\beta^{n}\exp\Big( \mathbf{u}_C(F^{n}-I)\,x + \tfrac12\sigma_\varepsilon^2\sum_{j=0}^{n-1}\left(\mathbf{u}_CF^{j}q\right)^{2} \Big)\tag{21}
$$

**TVCと利回りの条件**

$$
\underbrace{y_\infty}_{-\ln\beta+\sigma g} \gt \underbrace{g}_{\text{成長率}}
\quad\Longleftrightarrow\quad
\underbrace{-\ln\beta}_{\text{時間選好率}} \gt (1-\sigma)\,g\tag{22}
$$

**対数効用($\sigma = 1$)の特殊ケース**

$$
\Phi_C = \frac{1}{1-\beta},\qquad \frac{V_t}{C_t} = \frac{\tau}{1-\beta}\tag{23}
$$

**必要な税率(財政余力の指標)**

$$
\tau^{\ast}_t = \frac{V_t}{C_t\,\Phi_C(x_t)}\tag{24}
$$

**定常状態での債務余力**

$$
\frac{(1-\beta)\,V}{\bar C_0} = \tau\,(1+\tau)^{-\nu},\qquad \bar C_0 = \bar c_\ell\,\bar L_0\tag{25}
$$

**税収の税率への反応と、減税の自己資金化率**

$$
\frac{d\left(\tau\,\bar C(\tau)\right)}{d\tau} = \bar C(\tau)\left( 1 - \nu\,\frac{\tau}{1+\tau} \right),\qquad
\text{自己資金化率} = \nu\,\frac{\tau}{1+\tau}\tag{26}
$$

> (21)は、税収を支払う請求権の価格で、前記事の式(34)の離散時間版に当たる。収束とTVC(18)は、(10)の分散の補正の和が有界なので、各項が $\beta^n$ のオーダーで減ることから、$\beta \lt 1$ だけで成り立つ(式(22)で $g = 0$)。$g \neq 0$ のとき、各項に $e^{(1-\sigma)gn}$ が掛かり、収束は $\beta e^{(1-\sigma)g}\lt1$ と同値で、前記事の条件 $y_\infty \gt g$ に一致する(補足)。$\sigma = 1$ では、請求権の価格は状態によらず(23)になる。(24)の $\tau^{\ast}$ は、現在の債務を、一定の税率で返せる税率である。$\tau^{\ast}$ が政治・経済的な上限 $\bar\tau$ を超えれば余力はなく、$\bar\tau - \tau^{\ast}$ が余力である。(25)は定常状態($\bar C$ が $\tau$ に依存)で、債務 $V$ に対する税率を決める。(26)は、減税で労働供給が増え、税収の一部が戻る割合である。

| 記号・項目 | 意味 |
|---|---|
| $\Phi_C(x)$ | 消費税収1単位(対消費)あたりの債務の許容水準 |
| $\mathbf{u}_C$ | 消費の請求権の負荷 $(1-\sigma)H$ |
| $g$ | トレンド成長率(補足。元記事RBCは $g = 0$) |
| $\tau^{\ast}_t$ | 債務 $V_t$ を返済するのに必要な一定の税率 |
| $\bar\tau$ | 税率の上限(モデル外から与える) |
| $\bar C_0$ | $\tau = 0$ の定常消費 |

---

### 1.6 中央銀行と信用創造

**預金の恒等式**

$$
D_t = \underbrace{K_{t+1}}_{\text{貸出(資本)}} + \underbrace{\psi\left( b_{t+1} - b_{C,t+1} \right)}_{\text{銀行の国債保有}} + \underbrace{b_{C,t+1}}_{\text{準備}}\tag{27}
$$

**家計の金融資産**

$$
D_t + (1-\psi)\left( b_{t+1} - b_{C,t+1} \right) = K_{t+1} + b_{t+1}\tag{28}
$$

**中央銀行の損益の現在価値**

$$
\mathbb{E}_t\left[ \Lambda_{t,t+1}\left( R^{C}_{t+1} - R^{f}_t \right) \right] = 0\tag{29}
$$

**中立性**

$$
\left( b_{C},\ M,\ \psi \right)\ \text{は式(1)〜(26)のどれにも入らない}\tag{30}
$$

> (27)は、銀行の貸借対照表(貸出・国債・準備 = 預金)で、貸出は企業の資本に向かう。信用創造は、資本蓄積(投資)の資金調達に当たる。(28)は、家計の貯蓄 $K_{t+1} + b_{t+1}$ が(3)の右辺と一致することを示す。(29)の $R^C$ は中央銀行が持つ国債の収益率、$R^f$ は無リスク収益率で、期待損益(期間プレミアム)は正でも、割引因子で評価した現在価値は0になる。(30)は、代表的家計・完備市場・流動性便益なしのとき、中央銀行の資産買入・準備・銀行の保有割合が、実物・価格・債務の時価に影響しないこと(Wallaceの中立性)を示す。前記事の $\lambda = \Gamma\sigma\bar x$ による買入の効果は、民間が分断されているときの逸脱である。

| 記号・項目 | 意味 |
|---|---|
| $D_t$ | 預金 |
| $b_{C,t+1}$ | 中央銀行の国債保有(期末) |
| $M_t$ | 準備($= b_{C,t}$) |
| $\psi$ | 銀行が保有する、民間保有国債の割合 |
| $R^{C}_{t+1}$, $R^{f}_t$ | 中央銀行の国債の収益率、無リスク収益率 |

---

### 1.7 主要帰結

**主要式**

$$
\boxed{\begin{aligned}
y^{(n)}_t &= -\ln\beta + \frac{\sigma}{n}H(F^{n}-I)x_t - \frac{\sigma^2\sigma_\varepsilon^2}{2n}\sum_{j=0}^{n-1}(HF^{j}q)^2,\qquad y_\infty = -\ln\beta \\
\frac{V_t}{C_t} &= \underbrace{\tau\,\Phi_C(x_t)}_{\text{消費税収の現在価値}},\qquad \tau^{\ast}_t = \frac{V_t}{C_t\,\Phi_C(x_t)} \\
&\text{TVC}\iff -\ln\beta \gt (1-\sigma)\,g\quad(g=0\ \text{なら}\ \beta\lt1) \\
\frac{(1-\beta)V}{\bar C_0} &= \tau(1+\tau)^{-\nu},\qquad \sigma=1:\ \frac{V_t}{C_t}=\frac{\tau}{1-\beta} \\
&\left(b_C,\ M,\ \psi\right)\ \text{は実物・価格・}V\text{に影響しない}
\end{aligned}}\tag{31}
$$

**比較静学**

| 変化 | 結果 | 符号・式 |
|---|---|---|
| 時間選好率の低下($\beta\uparrow$) | 長期利回り低下、財政余力は拡大 | $\partial y_\infty/\partial\beta = -1/\beta \lt 0$、定常状態で $V/C = \tau/(1-\beta)$ は増加 |
| 税率の上昇($\tau\uparrow$) | 労働・消費は減少 | $d\ln\bar C/d\tau = -\nu/(1+\tau)$ |
| 税率の上昇($\tau\uparrow$) | 税収は増加(ラッファー極大なし) | $\gamma+\sigma \ge 1$ なら、(26)の括弧は常に正 |
| 労働供給の弾力性が高い($\gamma+\sigma$ が小さい) | 税の歪みが大きく、減税の自己資金化率が高い | $\nu = 1/(\gamma+\sigma)$、例: $\tau=0.1$、$\gamma+\sigma=2$ で約4.5% |
| 不確実性の上昇($\sigma_\varepsilon\uparrow$) | 実質利回り低下、$\Phi_C$ 上昇($\sigma\neq1$) | (11)の最終項は負、(21)の分散の補正は非負 |
| 中央銀行の買入($b_C\uparrow$)、保有割合($\psi\uparrow$) | 実物・利回り・$V$ は不変、預金 $D$ だけ変わる | (30)、$\partial D/\partial\psi = b - b_C \ge 0$ |

**特殊ケース・極限**

| ケース | 結果 |
|---|---|
| $\sigma = 1$ | $\Phi_C = 1/(1-\beta)$、$V_t/C_t = \tau/(1-\beta)$(動学によらない) |
| Brock–Mirman($\sigma=1$、$\delta=1$、$L=1$ 固定) | $\hat c_t = \alpha\hat k_t + \hat a_t$、$\hat k_{t+1} = \alpha\hat k_t + \hat a_t$。消費税は歪みなし |
| $\sigma_\varepsilon = 0$、定常状態($x=0$) | $y^{(n)} = -\ln\beta$(平坦な利回り曲線) |
| $n\to\infty$ | $y^{(n)}\to-\ln\beta$ |
| $V = 0$ | $\tau^{\ast} = 0$ |
| $\gamma+\sigma \lt 1$ | $\tau/(1+\tau) = \gamma+\sigma$ でラッファー曲線が極大(定常状態、$K/L$ 固定) |
| $\beta\ge1$(または(22)が不成立) | $\Phi_C = \infty$。有限な $V_t$ とTVCは両立しない |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 実質金利と利回り曲線が実物ショックで動く | 短期金利は消費の期待成長で決まり(式(12))、利回り曲線の形は状態 $x_t$ への負荷 $H(F^n-I)$ で決まる(式(11))。 |
| 長期金利が景気循環で動かず、時間選好に張り付く | $y_\infty = -\ln\beta$ で、状態にも $\sigma_\varepsilon$ にも依らない(式(13))。 |
| 期間プレミアムが生じる | 消費のリスクの市場価格 $\ell = \sigma Hq$ が、債券の変動に対して払われる(式(14))。 |
| 債務の時価が景気で動く | $V_t = \tau C_t\Phi_C(x_t)$ で、状態によって変わる(式(21))。$\sigma=1$ では、$V_t/C_t$ が一定。 |
| 財政の持続可能性は税収の現在価値で決まる | 債務は将来の消費税収の現在価値に一致する(式(19)(21))。必要な税率 $\tau^{\ast}$ が余力の指標(式(24))。 |
| TVCがRBCでは選好の条件に帰着する | $y_\infty \gt g$ が $-\ln\beta \gt (1-\sigma)g$ と同値(式(22))。通常のパラメータでは成り立つ。 |
| 消費税の引き上げで、労働と消費が減る | 労働供給に税の楔が入り、$\bar L$ が $(1+\tau)^{-\nu}$ で減る(式(4)(7))。 |
| 減税の財源の一部が、労働供給の回復で戻る | 自己資金化率は $\nu\tau/(1+\tau)$(式(26))。 |
| 信用創造は資本蓄積の資金調達 | 預金は、貸出(資本)と国債・準備の和(式(27))。 |
| 中央銀行の資産買入は、実物経済に影響しない | 代表的家計の完備市場では、(30)により、買入・準備・保有割合が実物と価格に入らない。 |

---

## 3. 整理している点 {#sec3}

- 前記事で外生だった3つ(短期金利の動学、リスクの市場価格 $\lambda$、成長率 $g$)を、RBCの消費の動学から決まる量に置き換えた点。リスクの市場価格は、相対的危険回避度と消費ショックへの感応度の積 $\ell = \sigma Hq$ になる。
- 前記事のTVCと財政余力を、家計の横断性条件に結びつけ、財政の持続可能性の条件を、選好の条件 $-\ln\beta \gt (1-\sigma)g$ に帰着させた点。財政余力は、消費税収の現在価値と、税の歪みによる税収の反応(式(26))の二つで決まる。
- 中央銀行の資産買入が効かないベンチマーク(中立性)を明示し、前記事の $\lambda = \Gamma\sigma\bar x$ による効果を、「民間の分断」という逸脱として位置づけた点。

---

## 4. モデルの対象外 {#sec4}

- 名目変数(価格の硬直性、インフレ、政策金利の実物効果)。本記事は実質の経済で、中央銀行は準備と国債の組み換えだけを行う。
- 民間の分断・リスク制約による、買入の期間プレミアムへの効果(前記事の $\lambda = \Gamma\sigma\bar x$)。本記事では代表的家計が価格を決めるため、効果がない。
- 準備の流動性便益と逆ざや($\phi \neq 0$)、中央銀行の自己資本と損失の負担。
- 時間変動する税率と、予告された一時的な減税。税率が変動すると、割引因子に $(1+\tau_t)/(1+\tau_{t+1})$ が入り、消費の異時点間の代替が起きるが、扱わない。
- 政府支出 $G$(定常労働の閉じた形が失われる)、消費税以外の税(所得税・資本課税)、移転、分配。税収の使途は債務の返済のみである。
- 基礎的収支が債務や金利に反応する財政ルール、ソブリンのデフォルトと信用スプレッド。
- トレンド成長(式(22)の補足でのみ登場する。均斉成長経路での選好の整合は扱わない)。
- 対数線形近似の精度(大きなショック、危機、リスクプレミアムの時間変動)。
- 資本の調整費用、金融摩擦、銀行の自己資本・貸出規制(銀行の自己資本は0とする)。
- パラメータの推定と、実際のデータへの当てはめ。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```text
[A1,A2 RBC (1)(2)] ─> [家計・企業の最適性 (3)(4)(5)] ─> [資源制約 (6)] ─> [定常状態 (7)]
                                  │
                                  ▼
                        [状態空間 (8): x, F, q, H]
                                  │
                                  ▼
          [確率的割引因子 (9)] ─> [閉じた形 (10)] ─> [利回り曲線 (11)(12)(13)] ─> [リスクの価格 (14)]
                                  │
[政府の債務 (15)(16)] ─> [有限期間 (17)] ─ TVC (18)(20) ─> [無限期間 (19)]
                                  │
                                  ▼
          [消費税収の現在価値 (21)] ─> [TVCと選好 (22)] ─> [σ=1 (23)] ─> [必要税率 (24)]
                                  │                                        │
                                  ▼                                        ▼
                     [定常状態の債務余力 (25)] ─> [税収の反応・自己資金化率 (26)]
                                  │
[銀行・中央銀行 (27)(28)(29)] ─> [中立性 (30)] ─────────────> [主要帰結 (31)]
```

---

### A.1 使う道具

**T1 （資産価格の基本式）**

家計の最適性条件から、無リスクでも危険でも、任意の資産について $1 = \mathbb{E}_t[\Lambda_{t,t+1}R_{t+1}]$ が成り立つ(Euler 条件の一般化)。

**T2 （対数正規の期待値）**

$X \sim N(\mu, v)$ のとき、$\mathbb{E}[e^{X}] = e^{\mu + v/2}$ である。

**T3 （繰り返し期待値）**

$s \le t$ のとき、$\mathbb{E}_s\left[\mathbb{E}_t[X]\right] = \mathbb{E}_s[X]$ である。

**T4 （対数線形化と状態空間）**

定常状態の周りの一次近似で、均衡はサドルパス安定のとき $x_{t+1} = Fx_t + q\varepsilon_{t+1}$ の形に解ける(元記事RBC §9〜§11)。$F$ の固有値は単位円の内側である。

**T5 （等比級数）**

$|r| \lt 1$ のとき $\sum_{n\ge0}r^n = 1/(1-r)$ である。$0 \le a_n \le Cr^n$ なら $\sum a_n$ は収束する。

**T6 （ラグランジュ乗数法）**

制約付き最大化の一階条件を、乗数を消去して整理する。

**T7 （対数微分）**

$f(\tau) = \tau\,\bar C(\tau)$ について、$f' = \bar C + \tau\bar C\,(d\ln\bar C/d\tau)$ である。

---

### A.2 RBC均衡条件 (3)〜(7) の導出

**Step 1　家計の一階条件**

T6より、(3)の制約の乗数を $\mu_t$ とする。$C_t$ について $C_t^{-\sigma} = \mu_t(1+\tau)$、$L_t$ について $\chi L_t^{\gamma} = \mu_t w_t$、$K_{t+1}$ について $\mu_t = \beta\,\mathbb{E}_t[\mu_{t+1}R_{t+1}]$ を得る。

**Step 2　乗数の消去**

$\mu_t = C_t^{-\sigma}/(1+\tau)$ を代入する。労働の条件は $w_t = (1+\tau)\chi L_t^{\gamma}C_t^{\sigma}$ になる。資本の条件は、$\tau$ が一定なので $(1+\tau)$ が打ち消し合い、$1 = \beta\mathbb{E}_t[(C_{t+1}/C_t)^{-\sigma}R_{t+1}]$ になる。これは式(4)である。

**Step 3　資源制約**

政府の予算制約 $b_{t+1} = V_t - \tau C_t$(式(15))を(3)に代入する。$V_t$ と $\tau C_t$ が打ち消し合い、$C_t + K_{t+1} = w_tL_t + R_tK_t$ になる。企業の条件(5)と、収穫一定のとき $w L + (R - 1 + \delta)K = Y$ であることから、$C_t + K_{t+1} = Y_t + (1-\delta)K_t$ を得る。式(6)である。

**Step 4　定常状態の資本労働比**

定常状態($A = 1$)で(4)の第1式は $1 = \beta\bar R$ となる。(5)の第1式に代入し、$\alpha\bar\kappa^{\alpha-1} = 1/\beta - 1 + \delta$ を $\bar\kappa$ について解く。(7)の第1式で、元記事RBC §7.2 に一致する。

**Step 5　定常状態の労働**

$\bar C = \bar c_\ell\,\bar L$($\bar c_\ell = \bar\kappa^{\alpha} - \delta\bar\kappa$、政府支出は0)を、(4)の第2式と(5)の第2式から作る $(1-\alpha)\bar\kappa^{\alpha} = (1+\tau)\chi\bar L^{\gamma}\bar C^{\sigma}$ に代入する。

$$
(1-\alpha)\bar\kappa^{\alpha} = (1+\tau)\,\chi\,\bar c_\ell^{\,\sigma}\,\bar L^{\gamma+\sigma}
$$

$\bar L$ について解いて、$\bar L(\tau) = \bar L_0(1+\tau)^{-\nu}$($\nu = 1/(\gamma+\sigma)$)を得る。$\bar C(\tau) = \bar c_\ell\bar L(\tau)$ である。式(7)である。

**確認**

$\tau = 0$ で、元記事RBCの定常状態に一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 家計の予算制約(3)、生産関数(2)、政府の予算制約(15) |
| 使う道具 | T6 ラグランジュ乗数法、収穫一定の分配式 |

---

### A.3 割引因子と実質利回り曲線 (9)〜(14) の導出

**Step 1　割引因子を状態で書く**

$C_{t+i} = \bar Ce^{\hat c_{t+i}}$ より、$C_{t+i+1}/C_{t+i} = e^{\hat c_{t+i+1} - \hat c_{t+i}}$ で、$n$ 期にわたる積は $\beta^ne^{-\sigma(\hat c_{t+n}-\hat c_t)}$ である。式(9)である。

**Step 2　状態の分解**

(8)を $n$ 回繰り返して、次を得る。

$$
x_{t+n} = F^{n}x_t + \sum_{j=0}^{n-1}F^{j}q\,\varepsilon_{t+n-j}\tag{32}
$$

**Step 3　線形結合の分布**

行ベクトル $\mathbf{u}$ について、$\mathbf{u}(x_{t+n}-x_t)$ は、(32)より、$\mathcal{F}_t$ の下で平均 $\mathbf{u}(F^n-I)x_t$、分散 $\sigma_\varepsilon^2\sum_{j=0}^{n-1}(\mathbf{u}F^jq)^2$ の正規分布に従う。

**Step 4　期待値**

T2より、式(10)を得る。債券は(9)から $\mathbf{u}_b = -\sigma H$ である。

**Step 5　利回り**

$y^{(n)} = -\ln P^{(n)}/n$ に、(10)で $\mathbf{u} = -\sigma H$ を代入する。

$$
y^{(n)}_t = -\ln\beta - \frac{1}{n}(-\sigma H)(F^n-I)x_t - \frac{\sigma_\varepsilon^2}{2n}\sum_{j=0}^{n-1}(\sigma HF^jq)^2
$$

整理して式(11)を得る。$n = 1$ とおいて式(12)を得る。

**Step 6　長期**

$F^n \to 0$ なので、(11)の第2項は $O(1/n)$ で0に収束する。最終項は、$\sum_j(HF^jq)^2$ が収束する(固有値が単位円の内側)ので、$O(1/n)$ で0に収束する。式(13)を得る。

**Step 7　期待超過収益率**

対数収益率 $\ln R^{(n)}_{t+1} = p^{(n-1)}_{t+1} - p^{(n)}_t$($p = \ln P$)について、T1の $\mathbb{E}_t[\Lambda R] = 1$ の対数をとる。

$$
\mathbb{E}_t\ln R^{(n)}_{t+1} - r_t + \tfrac12\mathrm{Var}_t\ln R^{(n)}_{t+1} = -\mathrm{Cov}_t\left(\ln\Lambda_{t,t+1},\ \ln R^{(n)}_{t+1}\right)
$$

$\ln\Lambda_{t,t+1}$ の予期せぬ部分は $-\sigma Hq\,\varepsilon_{t+1} = -\ell\varepsilon_{t+1}$、$p^{(n-1)}_{t+1}$ の予期せぬ部分は $\mathbf{b}_{n-1}q\,\varepsilon_{t+1}$($\mathbf{b}_{n-1} = -\sigma H(F^{n-1}-I)$)なので、右辺は $\ell\sigma_\varepsilon^2\mathbf{b}_{n-1}q$ である。式(14)である。

**確認**

$\sigma_\varepsilon = 0$ なら、(11)は $x_t = 0$(定常状態)で $-\ln\beta$ に等しく、利回り曲線は平らである。$n=1$ で(11)と(12)が一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 状態空間(8)、割引因子の定義(9) |
| 使う道具 | T1 資産価格の基本式、T2 対数正規の期待値、T4 状態空間 |

---

### A.4 政府の予算制約とTVC (15)〜(20) の導出

**Step 1　債務の動学**

期首の債務 $V_t$ から基礎的収支 $s_t$ を差し引いた $b_{t+1} = V_t - s_t$ が繰り越され、ポートフォリオの総収益率 $R^V_{t+1}$ で $V_{t+1}$ になる。式(15)である。

**Step 2　評価式**

T1より $\mathbb{E}_t[\Lambda_{t,t+1}R^V_{t+1}] = 1$ である。$V_t - s_t$ は $\mathcal{F}_t$ 可測なので、$\mathbb{E}_t[\Lambda_{t,t+1}V_{t+1}] = V_t - s_t$ で、式(16)を得る。

**Step 3　有限期間**

(16)を $T$ 回繰り返し代入する。T3より、$\Lambda_{t,t+j}$ を掛けて期待値をとり、次を得る。式(17)である。

$$
V_t = \mathbb{E}_t\sum_{j=0}^{T-1}\Lambda_{t,t+j}s_{t+j} + \mathbb{E}_t\left[\Lambda_{t,t+T}V_{t+T}\right]
$$

**Step 4　TVC**

$T\to\infty$ で第2項が0に収束する(18)のとき、第1項の和が $T\to\infty$ で収束し、式(19)を得る。

**Step 5　家計のTVCとの関係**

A6の $W_T = R_TK_T + V_T$ について、$R_TK_T \ge 0$、$V_T \ge 0$ なので、$\mathbb{E}_t[\Lambda_{t,t+T}W_{t+T}] \to 0$ なら、各項が0に収束する。$V$ の項から(18)を得る。式(20)である。

**確認**

$V$ が、$V_t = \mathbb{E}_t\sum_j\Lambda_{t,t+j}s_{t+j}$ で定義されているとき、$\mathbb{E}_t[\Lambda_{t,t+T}V_{t+T}] = \sum_{j\ge T}\mathbb{E}_t[\Lambda_{t,t+j}s_{t+j}]$ は収束級数の裾で、$T\to\infty$ で0に収束する。TVCが成り立つ。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 割引因子(9)、債務の動学、A6 |
| 使う道具 | T1 資産価格の基本式、T3 繰り返し期待値 |

---

### A.5 財政余力 (21)〜(26) の導出

**Step 1　税収の現在価値**

(19)に $s_{t+j} = \tau C_{t+j}$ を代入し、$C_t$ で割る。

$$
\frac{V_t}{C_t} = \tau\sum_{j=0}^{\infty}\mathbb{E}_t\left[ \Lambda_{t,t+j}\frac{C_{t+j}}{C_t} \right] = \tau\sum_{j=0}^{\infty}\mathbb{E}_t\left[ \beta^je^{(1-\sigma)(\hat c_{t+j}-\hat c_t)} \right]
$$

各項は(10)で $\mathbf{u}_C = (1-\sigma)H$ とおいた形である。式(21)を得る。

**Step 2　収束**

(21)の各項は、$\beta^j$ に、有界な因子($\mathbf{u}_C(F^j-I)x$ は $j$ について有界で、分散の和は収束)を掛けたものである。T5より、$\beta \lt 1$ で収束する。$g \neq 0$ のとき、$C_{t+j}$ にトレンド $e^{gj}$ が加わり、割引因子の各項に $e^{(1-\sigma)gj}$ が掛かる(補った)。収束は $\beta e^{(1-\sigma)g} \lt 1$、すなわち $-\ln\beta \gt (1-\sigma)g$ と同値で、$y_\infty = -\ln\beta + \sigma g$ より $y_\infty \gt g$ と同値になる。式(22)である。

**Step 3　対数効用**

$\sigma = 1$ なら $\mathbf{u}_C = 0$ で、(21)の各項は $\beta^n$ に等しい。T5より $\Phi_C = 1/(1-\beta)$ で、式(23)である。

**Step 4　必要税率**

(21)を $\tau$ について解いて、式(24)を得る。

**Step 5　定常状態の債務余力**

定常状態($x = 0$、$\sigma_\varepsilon = 0$ の確定的な極限)で、$V = \tau\bar C + \beta V$ より $V = \tau\bar C/(1-\beta)$ である。$\bar C(\tau) = \bar C_0(1+\tau)^{-\nu}$ を代入し、$(1-\beta)V/\bar C_0 = \tau(1+\tau)^{-\nu}$ を得る。式(25)である。

**Step 6　税収の反応**

T7より、$d\ln\bar C/d\tau = -\nu/(1+\tau)$ なので、$d(\tau\bar C)/d\tau = \bar C\left(1 - \nu\tau/(1+\tau)\right)$ である。減税 $d\tau \lt 0$ による静学的な税収の減少は $\bar C|d\tau|$、$\bar C$ の増加による税収の戻りは $\tau\bar C\nu|d\tau|/(1+\tau)$ で、比は $\nu\tau/(1+\tau)$ である。式(26)である。

**確認**

$\gamma+\sigma \ge 1$ なら $\nu \le 1$ で、$\nu\tau/(1+\tau) \lt 1$ なので、(26)の括弧は正である。$\gamma+\sigma \lt 1$ のとき、$\tau/(1+\tau) = \gamma+\sigma$ で括弧が0になり、極大がある($\tau = (\gamma+\sigma)/(1-\gamma-\sigma)$)。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 無限期間の予算制約(19)、割引因子の期待値(10)、定常状態(7) |
| 使う道具 | T2 対数正規の期待値、T5 等比級数、T7 対数微分 |

---

### A.6 中央銀行・信用創造 (27)〜(30) の導出

**Step 1　預金の恒等式**

期末の銀行の貸借対照表は、資産が貸出 $K_{t+1}$、国債 $\psi(b_{t+1}-b_{C,t+1})$、準備 $M = b_{C,t+1}$、負債が預金 $D_t$(自己資本は0)である。資産と負債を等しいとおき、式(27)を得る。

**Step 2　家計の金融資産**

家計は預金と、直接保有する国債 $(1-\psi)(b_{t+1}-b_{C,t+1})$ を持つ。和は、(27)を代入して $K_{t+1} + \psi p + b_C + (1-\psi)p = K_{t+1} + p + b_C = K_{t+1} + b_{t+1}$($p = b_{t+1}-b_{C,t+1}$)で、式(28)を得る。(3)の貯蓄に等しく、市場清算が成り立つ。

**Step 3　中央銀行の損益**

準備の利子は無リスク収益率 $R^f$(A5)で、中央銀行の資産は国債(収益率 $R^C$)である。T1より $\mathbb{E}_t[\Lambda R^C] = 1$、$\mathbb{E}_t[\Lambda]R^f = 1$ なので、差をとって式(29)を得る。

**Step 4　中立性**

実物経済(式(1)〜(8))、割引因子(9)、債務の評価(15)〜(26)は、$b_C$、$M$、$\psi$ を含まない。これらは(27)(28)の恒等式にだけ入る。したがって、これらを変えても、実物・価格・債務の時価は変わらない。式(30)である。

**確認**

$\psi$ を変えると $D$ だけが $\partial D/\partial\psi = b_{t+1}-b_{C,t+1} \ge 0$ だけ動く。$b_C$ を増やしても、(28)の $K_{t+1}+b_{t+1}$ は変わらない。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | A5、家計の予算制約(3)、割引因子(9) |
| 使う道具 | T1 資産価格の基本式、会計恒等式 |

---

### A.7 閉じた形の特殊ケース（Brock–Mirman）

**Step 1　設定**

$\sigma = 1$、$\delta = 1$、労働を $L_t = 1$ に固定する(補った。元記事RBCの労働の選択を外す)。このとき、消費税は歪みを生まない。

**Step 2　政策関数**

$K_{t+1} = sA_tK_t^{\alpha}$ と仮定し、(4)の Euler 条件に代入すると $s = \alpha\beta$ を得る。$C_t = (1-\alpha\beta)A_tK_t^{\alpha}$ である。対数偏差で、次が厳密に成り立つ。

$$
\hat k_{t+1} = \alpha\hat k_t + \hat a_t,\qquad \hat c_t = \alpha\hat k_t + \hat a_t\tag{33}
$$

すなわち、$F = \begin{pmatrix}\alpha & 1\\ 0 & \rho\end{pmatrix}$、$q = (0, 1)^{\top}$、$H = (\alpha, 1)$ である。

**Step 3　短期金利**

(12)に代入する。$Hq = 1$、$H(F-I) = (\alpha(\alpha-1),\ \alpha+\rho-1)$ より、次を得る。

$$
r_t = -\ln\beta - \tfrac12\sigma_\varepsilon^2 - \alpha(1-\alpha)\hat k_t - (1-\alpha-\rho)\hat a_t\tag{34}
$$

**Step 4　財政余力**

$\sigma = 1$ なので(23)より $V_t/C_t = \tau/(1-\beta)$ で、$\tau$ が $C$ に影響しない(労働が固定)ので、$V_t = \tau(1-\alpha\beta)A_tK_t^{\alpha}/(1-\beta)$ である。

**確認**

(34)の係数は、資本が多いほど短期金利が低い(限界生産の低下)という符号に一致する。$\ell = \sigma Hq = 1$ である。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 状態空間(8)、短期金利(12)、財政余力(23) |
| 使う道具 | 推測と検証による再帰解(Brock–Mirman)、代数計算 |

---

### A.8 著者について

**Finn E. Kydland と Edward C. Prescott**（RBCモデルの原典: Kydland and Prescott (1982) "Time to Build and Aggregate Fluctuations", Econometrica）
- **アカデミックな経歴**: Finn Kydland はノルウェー出身で、カーネギーメロン大学で博士号(1973年)を取得し、カーネギーメロン大学、カリフォルニア大学サンタバーバラ校で教えた。Edward Prescott はカーネギーメロン大学で博士号(1967年)を取得し、ペンシルベニア大学、カーネギーメロン大学、ミネソタ大学、アリゾナ州立大学で教え、ミネアポリス連邦準備銀行にも在籍した(2022年に死去)。
- **主要な研究分野**: 動学的マクロ経済学、景気循環論、経済政策の動学的非整合性。
- **評判・学術的貢献**: 両氏は2004年のノーベル経済学賞を共同で受賞した(受賞理由は、動学的マクロ経済学への貢献、すなわち経済政策の時間不整合性と景気循環の駆動要因の研究)。1982年の論文は、技術ショックを起点とする均衡景気循環(RBC)モデルの出発点となり、その後のDSGEモデルの基礎となった。

**Oldřich Vašíček（Oldrich Alfons Vasicek）**（期間構造の参照元: Vasicek (1977), Journal of Financial Economics）
- 経歴・研究分野・評判は、前記事の付録A.12と同じである。本記事では、離散時間版の利回り曲線(式(11))の参照元として挙げる。

*（財政・中央銀行・信用創造の部分は特定の論文に基づかない。RBCの部分は元記事RBCの記述(標準的なRBCモデル)に基づき、国債市場と中央銀行・信用創造の部分は元記事(tokyo-worker、2026年10月19日)に基づく。元記事の著者は学術論文の著者ではないため、著者の説明は上記の2つの論文の著者のみである。）*

---

**© 2026 AI Collaborator**. 接続元: tokyo-worker「Pure RBC Model — Recursive Competitive Equilibrium から状態空間表現まで」2026年5月28日、https://tokyo-worker.github.io/2026/05/28/pure_rbc_recursive_equilibrium/ ;「国債の発行市場・流通市場と中央銀行：数理モデル」2026年10月19日、https://tokyo-worker.github.io/2026/10/19/government_bond_market_model/ 。原論文: Kydland, F. and Prescott, E. (1982), Econometrica; Vasicek, O. (1977), Journal of Financial Economics.（政府の予算制約・TVC、中央銀行・信用創造との接続部分は本記事で補った。）
{% endraw %}
