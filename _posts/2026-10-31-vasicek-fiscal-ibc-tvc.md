---
layout: post
title: "Vasicek (1977) \"An Equilibrium Characterization of the Term Structure\"、Journal of Financial Economics + 政府の通時的予算制約とTVC: 数理モデル"
date: 2026-10-31 00:00:00 +0900
categories: [数理ファイナンス, 金利と財政]
math: true
---

{% raw %}
# Vasicek (1977) "An Equilibrium Characterization of the Term Structure"、Journal of Financial Economics + 政府の通時的予算制約とTVC: 数理モデル
### 国債利回りの算定(マルチンゲール評価)に、政府債務の通時的予算制約と横断性条件(TVC)を接続する: 短期金利 → 債券価格・利回り → 債務GDP比の現在価値 → TVCと利回りの条件

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

投資家・政府・国債の市場からなる連続時間の経済を考える。時間は $t \in [0, \infty)$、情報は標準ブラウン運動 $W_t$ が生成するフィルトレーション $\mathcal{F}_t$ である。短期金利 $r_t$ は観測可能で、満期までの残存期間を $\tau = T - t \gt 0$ と書く。$Q$ の下の条件付き期待値を $\mathbb{E}^{Q}_t[\,\cdot\,] = \mathbb{E}^{Q}[\,\cdot \mid \mathcal{F}_t]$ と略記する。

**A1 （無裁定とマルチンゲール測度）**

無リスク資産 $B_t^{\mathrm{mm}} = \exp\left(\int_0^t r_s\,ds\right)$ を基準財とする。同値な確率測度 $Q$ が存在し、すべての国債の割引価格 $P(t,T)/B_t^{\mathrm{mm}}$ が $Q$ の下でマルチンゲール(公平なゲーム)になる。外すと裁定が可能になり、価格が定まらない。

**A2 （短期金利の動学）**

短期金利は平均回帰するガウス過程(Ornstein–Uhlenbeck過程)に従い、パラメータ $a \gt 0$、$b$、$\sigma \gt 0$ は定数である。外すと、閉じた形の価格式が失われる。

**A3 （金利リスクの市場価格）**

金利リスク $W_t$ の市場価格 $\lambda$ は定数で、全満期で共通である。外すと、債券価格の関数 $A(\tau)$ の形が変わる。

**A4 （国債の定義）**

国債は、自国通貨建てで満期 $T$ に1を支払うゼロクーポン債で、デフォルトはない。外すと、信用スプレッドが加わる。

**A5 （経済規模）**

GDPは $Y_t = Y_0\,e^{gt}$ に従い、成長率 $g$ は定数で確定的である。外すと、割引因子 $\Lambda$ が確率的な成長を含み、式(20)が閉じた形でなくなる。

**A6 （政府債務の構成）**

政府債務はA4の国債だけからなる(利付債はゼロクーポン債の束とみなす)。時価を $V_t$、満期 $T$ の債券が時価に占める比率を $\omega_t(T) \ge 0$、$\int \omega_t(T)\,dT = 1$ とする。債務の増減は、債券の時価変動と基礎的財政収支だけで決まる(自己資金調達的)。外すと、現金・貨幣発行益などの項が式(13)に加わる。

**A7 （基礎的財政収支）**

基礎的財政収支 $S_t = s_t\,Y_t$ とし、対GDP比 $s_t$ は $\mathcal{F}_t$ 適合の外生過程である。黒字は債務の返済に充てる。正則条件として、すべての $T$ について次が成り立つとする。外すと、式(16)の確率積分がマルチンゲールにならない。

$$
\mathbb{E}^{Q}_t\left[\int_t^T \Lambda_{t,u}\,|s_u|\,du\right]\lt\infty,\qquad
\mathbb{E}^{Q}_t\left[\int_t^T \Lambda_{t,u}^2\,D_u^2\,d_u^2\,du\right]\lt\infty
$$

**A8 （TVCと債務GDP比が発散しないこと）**

TVCは式(17)で課す。実額比の言い換えとして、債務GDP比に正の下限と上限がある(式(19))と置く場合もある。外すと、式(16)の第2項(ポンジー項・バブル項)が残り、債務の水準 $d_t$ が剰余の現在価値で決まらない。

*（元論文の範囲は、A1〜A4とそこから得る式(1)〜(12)までで、財政変数を含まない。A5〜A8と式(13)〜(24)は、標準的な会計恒等式(債務の積み上がり)とマルチンゲール評価を組み合わせて、本記事で補った。TVCは家計の最適化から導かず、条件として課す。原論文の偏微分方程式による導出、実世界での債券価格の動学、利回りの分解は、本記事の主題に必要ないため省いた。)*

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

### 1.2 短期金利の動学と測度変換

**実世界 $P$ の下の短期金利と、$Q$ への付け替え**

$$
dr_t = \underbrace{a(b - r_t)}_{\text{平均回帰}}\,dt + \underbrace{\sigma}_{\text{変動率}}\,dW_t\tag{3}
$$

$$
W^{Q}_t = W_t - \underbrace{\lambda}_{\text{市場価格}}\,t\tag{4}
$$

$Q$ の下では、短期金利の平均回帰水準が $b^{\ast}$ に変わる。

$$
dr_t = a(b^{\ast} - r_t)\,dt + \sigma\,dW^{Q}_t\tag{5}
$$

$$
b^{\ast} = \underbrace{b}_{\text{実世界の水準}} + \underbrace{\frac{\sigma\lambda}{a}}_{\text{リスク調整}}\tag{6}
$$

> (4)のGirsanov変換の密度は $\exp(\lambda W_T - \lambda^2 T/2)$ で、$\lambda$ が定数なのでNovikov条件を満たす。$\lambda \gt 0$ なら $b^{\ast} \gt b$ で、$Q$ の下の金利は実世界より高い水準へ回帰する。

| 記号・項目 | 意味 |
|---|---|
| $a$ | 平均回帰の速さ |
| $b$ | 実世界での長期平均の短期金利 |
| $\sigma$ | 短期金利の変動率 |
| $W_t$ | 実世界 $P$ の下の標準ブラウン運動 |
| $\lambda$ | 金利リスクの市場価格 |
| $W^{Q}_t$ | $Q$ の下の標準ブラウン運動 |
| $b^{\ast}$ | $Q$ の下での長期平均の短期金利 |

---

### 1.3 債券価格の閉じた形

**債券価格**

(1)の期待値を $Q$ の下で計算すると、価格は $r_t$ の指数アフィン関数になる。

$$
P(t,T) = \exp\left( \underbrace{A(\tau)}_{\text{水準項}} - \underbrace{B(\tau)\,r_t}_{\text{金利感応}} \right)\tag{7}
$$

$$
B(\tau) = \frac{1 - e^{-a\tau}}{a}\tag{8}
$$

$$
A(\tau) = \left( B(\tau) - \tau \right)\left( b^{\ast} - \frac{\sigma^2}{2a^2} \right) - \underbrace{\frac{\sigma^2 B(\tau)^2}{4a}}_{\text{凸性項}}\tag{9}
$$

**$Q$ の下での債券価格の動学**

$$
\frac{dP(t,T)}{P(t,T)} = \underbrace{r_t}_{\text{無リスク収益}}\,dt - \underbrace{\sigma B(\tau)}_{\text{債券の変動率}}\,dW^{Q}_t\tag{10}
$$

> (8)の $B(\tau)$ は、短期金利1単位の上昇が価格に与える影響で、$0 \lt B(\tau) \lt \min(\tau, 1/a)$ である。(10)のドリフトが $r_t$ になるのはA1(割引価格のマルチンゲール性)による。

| 記号・項目 | 意味 |
|---|---|
| $A(\tau)$ | 価格式の水準項 |
| $B(\tau)$ | 価格式の金利感応度 |

---

### 1.4 利回り曲線

**利回り**

$$
y_\infty = b^{\ast} - \frac{\sigma^2}{2a^2}\tag{11}
$$

$$
y(t,T) = \underbrace{y_\infty}_{\text{長期利回り}} + \underbrace{\left( r_t - y_\infty \right)\frac{B(\tau)}{\tau}}_{\text{短期金利の影響}} + \underbrace{\frac{\sigma^2 B(\tau)^2}{4a\tau}}_{\text{凸性の補正}}\tag{12}
$$

> (12)は価格式(7)の対数をとって $\tau$ で割ったものである。(11)を使うと、(9)は $A(\tau) = (B(\tau)-\tau)\,y_\infty - \sigma^2 B(\tau)^2/(4a)$ と書ける。

| 記号・項目 | 意味 |
|---|---|
| $y_\infty$ | 満期を無限にしたときの利回り(長期利回り) |

---

### 1.5 政府債務の動学

**債務の時価の動学**

$$
dV_t = \underbrace{\left( r_t V_t - S_t \right)}_{\text{利払い・基礎的収支}}\,dt - \underbrace{\sigma D_t V_t}_{\text{債務の変動率}}\,dW^{Q}_t\tag{13}
$$

**債務GDP比の動学**

$$
dd_t = \underbrace{\left( (r_t - g)\,d_t - s_t \right)}_{r-g\text{による自己増殖}}\,dt - \sigma D_t d_t\,dW^{Q}_t\tag{14}
$$

**成長調整後の割引因子**

$$
\Lambda_{t,u} = \exp\left( -\int_t^u \left( r_v - g \right) dv \right)\tag{15}
$$

> (13)は、債務を構成する債券の時価変動((10)の加重平均)から基礎的収支を引いたものである。満期構成 $\omega$ は $D_t$ を通じて変動項にだけ入る。(15)は $Q$ の下の通常の割引因子に、GDP成長率 $g$ の分だけ補正をかけたものである。

| 記号・項目 | 意味 |
|---|---|
| $V_t$ | 政府債務の時価 |
| $Y_t$ | GDP、$Y_t = Y_0 e^{gt}$ |
| $g$ | GDPの成長率(定数) |
| $S_t$ | 基礎的財政収支(利払い前、黒字が正) |
| $s_t$ | 基礎的財政収支の対GDP比 $S_t/Y_t$ |
| $d_t$ | 債務GDP比 $V_t/Y_t$ |
| $\omega_t(T)$ | 満期 $T$ の債券が債務の時価に占める比率 |
| $D_t$ | 債務のデュレーション指標 $\int \omega_t(T)\,B(T-t)\,dT$、$0 \le D_t \lt 1/a$ |
| $\Lambda_{t,u}$ | 成長調整後の割引因子 |

---

### 1.6 通時的予算制約とTVC

**有限期間の予算制約**

$$
d_t = \underbrace{\mathbb{E}^{Q}_t\left[ \int_t^T \Lambda_{t,u}\,s_u\,du \right]}_{T\text{までの剰余の現在価値}} + \underbrace{\mathbb{E}^{Q}_t\left[ \Lambda_{t,T}\,d_T \right]}_{T\text{時点の債務の現在価値}}\tag{16}
$$

**TVC（横断性条件）**

$$
\lim_{T \to \infty}\ \underbrace{\mathbb{E}^{Q}_t\left[ \Lambda_{t,T}\,d_T \right]}_{\text{割引後の債務}} = 0\tag{17}
$$

**無限期間の予算制約**

$$
d_t = \underbrace{\mathbb{E}^{Q}_t\left[ \int_t^{\infty} \Lambda_{t,u}\,s_u\,du \right]}_{\text{将来の基礎的収支の現在価値}}\tag{18}
$$

**債務GDP比が発散しない**

$$
0 \lt \varepsilon \le d_T \le \bar{d}\qquad \text{（すべての } T\text{）}\tag{19}
$$

> (16)は、A1〜A7だけから、任意の $T$ について成り立つ恒等式である。TVC(17)を課すと第2項が消えて(18)になる。(19)は(16)〜(18)の前提ではなく、1.7でTVCと利回りの条件を結ぶときに使う。

| 記号・項目 | 意味 |
|---|---|
| $\varepsilon$ | 債務GDP比の正の下限 |
| $\bar{d}$ | 債務GDP比の上限 |

---

### 1.7 国債利回りとの接続

**割引因子の期待値は、利回りから成長率を引いたもので書ける**

$$
\mathbb{E}^{Q}_t\left[ \Lambda_{t,u} \right] = \underbrace{e^{g(u-t)}\,P(t,u)}_{\text{成長調整後の債券価格}} = \exp\left( -\left( y(t,u) - g \right)(u-t) \right)\tag{20}
$$

**確定的な剰余の経路 $s(u)$ のとき**

$$
d_t = \int_t^{\infty} s(u)\,\underbrace{\exp\left( -\left( y(t,u) - g \right)(u-t) \right)}_{\text{剰余の割引因子}}\,du\tag{21}
$$

> (20)の右辺は、満期 $u$ に $e^{g(u-t)}$ を支払う債券の価格に当たる。(21)は、剰余の流列を国債の束とみなして値付けしたもので、割引に使う曲線は利回り曲線 $y(t,u)$ から $g$ を引いたものである。

**TVCと利回りの条件**

$$
\underbrace{y_\infty}_{\text{長期利回り}} \gt \underbrace{g}_{\text{成長率}}
\quad\Longleftrightarrow\quad
\underbrace{b}_{\text{実世界の水準}} + \underbrace{\frac{\sigma\lambda}{a}}_{\text{リスク調整}} - \underbrace{\frac{\sigma^2}{2a^2}}_{\text{凸性}} \gt g\tag{22}
$$

> 命題(債務GDP比の有界性とTVC)：(19)が成り立つとき、TVC(17)が成り立つことと、(22)が成り立つことは同値である。(i) $d_T \ge \varepsilon$ なら、TVC は $e^{g\tau}P(t,T) \to 0$ を要し、これは(22)と同値である。(ii) $d_T \le \bar{d}$ かつ(22)なら、TVC が成り立つ。
>
> 確定的な剰余の経路のとき、$d_t$ は $r_t$ の関数で、$r_t$ が負に大きいと $d_t$ は上限なく大きくなる。このとき(19)は成り立たず、TVC は(21)の裾の積分が0に収束することで確かめる(A.9のStep 5)。(19)を課すには、剰余が債務や金利に反応する場合が必要で、本記事の対象外である。

**一定の剰余の下の閉じた形**

$s(u) = s \gt 0$ が一定のとき、次の形になる。

$$
d_t = s\,\Phi(r_t),\qquad
\Phi(r) = \int_0^{\infty} \exp\left( \underbrace{A(\tau)}_{\text{水準項}} - \underbrace{B(\tau)\,r}_{\text{金利感応}} + \underbrace{g\tau}_{\text{成長の補正}} \right)d\tau\tag{23}
$$

> $\Phi(r)$ が有限であることと、(22)が成り立つことは同値である。(22)が成り立たないとき、$\Phi = \infty$ で、有限な $d_t$ と TVC は両立しない。

| 記号・項目 | 意味 |
|---|---|
| $\Phi(r)$ | 一定の剰余1単位あたりの債務の現在価値(債務の許容水準) |
| $s$ | 一定の基礎的財政収支(対GDP比) |

---

### 1.8 主要帰結

**主要式**

$$
\boxed{\begin{aligned}
d_t &= \underbrace{\mathbb{E}^{Q}_t\left[ \int_t^{\infty} \Lambda_{t,u}\,s_u\,du \right]}_{\text{予算制約+TVC}} \\
y(t,T) &= y_\infty + \left( r_t - y_\infty \right)\frac{B(\tau)}{\tau} + \frac{\sigma^2 B(\tau)^2}{4a\tau} \\
&\text{(19)の下で}\quad \text{TVC} \iff y_\infty = b^{\ast} - \frac{\sigma^2}{2a^2} \gt g \\
d_t &= s\,\Phi(r_t)\qquad (s(u) = s \text{ のとき})
\end{aligned}}\tag{24}
$$

**比較静学($s \gt 0$ 一定、(22)が成り立つとき)**

| 変化 | 債務の現在価値 $d_t$ | 符号・式 |
|---|---|---|
| 短期金利の上昇 ($r_t \uparrow$) | 低下 | $\partial d_t/\partial r_t = -s\int_0^{\infty} B(\tau)\,e^{A(\tau)-B(\tau)r_t+g\tau}\,d\tau \lt 0$ |
| 成長率の上昇 ($g \uparrow$) | 上昇 | $\partial d_t/\partial g = s\int_0^{\infty} \tau\,e^{A(\tau)-B(\tau)r_t+g\tau}\,d\tau \gt 0$ |
| 剰余の上昇 ($s \uparrow$) | 比例して上昇 | $d_t = s\,\Phi(r_t)$ |
| 市場価格の上昇 ($\lambda \uparrow$) | 低下 | $\partial d_t/\partial b^{\ast} = s\int_0^{\infty} (B(\tau)-\tau)\,e^{A(\tau)-B(\tau)r_t+g\tau}\,d\tau \lt 0$、$\lambda$ は $b^{\ast}$ を通じて入る |
| 変動率の上昇 ($\sigma \uparrow$) | 不定 | $\sigma$ は $b^{\ast}$、凸性、$B$ の係数に入り、向きが逆の効果が混ざる |
| 満期構成 $\omega$ の変化 | $d_t$ の水準は不変 | $\omega$ は(13)(14)の変動項 $D_t$ にだけ入り、(18)には入らない |

**特殊ケース・極限**

| ケース | 結果 |
|---|---|
| $\sigma = 0$ かつ $r_t = b^{\ast}$ | $\Phi = 1/(b^{\ast} - g)$、$d_t = s/(r_t - g)$(確定的な古典的結果)。(22)は $b^{\ast} \gt g$ になる |
| $y_\infty \le g$ で $s \gt 0$ 一定 | $\Phi = \infty$。有限な $d_t$ と TVC は両立しない |
| ある時点 $T_0$ 以降 $s(u) = 0$ | (21)の積分は有限期間で、(22)なしでも有限になる |
| TVCを外す | 式(16)の第2項が残り、$d_t$ が剰余の現在価値で決まらない(A.7の確認) |
| $\tau \to 0$ | $P \to 1$、$y \to r_t$ |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 金利が成長率を上回るほど債務が自己増殖しにくい | 債務GDP比のドリフトは $(r_t - g)d_t - s_t$ で、$r_t - g$ の符号が自己増殖の向きを決める(式(14))。 |
| 債務の積み上がりに歯止めがかかる理由 | TVC により、割引後の債務の極限が0になり、債務は将来の剰余の現在価値に一致する(式(17)(18))。 |
| 金利の上昇が財政の許容水準を下げる | 一定の剰余の下で、$d_t$ は $r_t$ の減少関数(式(23)、比較静学)。 |
| 長期金利と成長率の関係が財政の持続可能性を決める | 確率的な金利でも、一定の剰余の経路で債務が有限である条件は $y_\infty \gt g$(式(22))。確定的な「$r \gt g$」の一般化に当たる。 |
| 期間プレミアムが債務の許容水準を下げる | $\lambda \gt 0$ は $b^{\ast}$ を押し上げ、$\Phi$ を小さくする(比較静学)。$y_\infty$ に $\sigma\lambda/a$ として入る(式(22))。 |
| 満期構成が債務の変動を変えるが現在価値は変えない | $\omega$ は変動項 $D_t$ にだけ入り(式(13)(14))、現在価値(式(18))には入らない。 |

---

## 3. 整理している点 {#sec3}

- 国債の価格付けと政府債務の現在価値を、同じ $Q$ と同じ短期金利 $r_t$ で結び、利回り曲線から成長率を引いた曲線を、基礎的収支の割引曲線として使った点。
- TVCを、債務GDP比の有界性と組み合わせて、利回り曲線のパラメータ条件 $y_\infty \gt g$ に翻訳した点。条件には、実世界の水準 $b$、期間プレミアム $\sigma\lambda/a$、凸性 $\sigma^2/(2a^2)$ がすべて入る。
- 債務の満期構成が、債務の現在価値には影響せず、債務の変動(経路のリスク)にだけ影響するという切り分けを示した点。

---

## 4. 対象外の現象 {#sec4}

- ソブリンのデフォルトと信用スプレッド(A4で国債を無リスクとして扱う)。債務が大きいほどデフォルト確率が上がり、金利が上がる経路は扱わない。
- 基礎的財政収支が債務や金利に反応する財政ルール(A7で $s_t$ を外生とする)。(19)の有界性を、そのような反応関数から導くことは扱わない。
- TVCの家計の最適化からの導出。本記事ではTVCを条件として課している。
- 物価水準、名目と実質の区別、貨幣発行益、中央銀行のバランスシート、物価水準の財政理論による決定の主張。
- 確率的な成長率、および $r_t$ と $g$ の相関(A5で $g$ を定数とする)。
- 短期金利が負になる確率は正で、金利の下限(ゼロ制約)は扱わない。
- 状態変数が複数ある場合(傾き・曲率など)と、市場価格 $\lambda$ の時間変動。
- 外貨建て国債、対外債務、為替リスク。
- 現実の国債で $y_\infty \gt g$ が成り立つかの判定、パラメータの推定、実際の利回り曲線への当てはめ。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```text
[A1 無裁定 → Q の存在 (T1)] ─> [価格のマルチンゲール表現 (1)(2)]
[A2 短期金利 (3)] ─> [Girsanov (4)] ─> [Q下の短期金利 (5)(6)]
                                             │
                                             ├─> [債券価格 (7)(8)(9)] ─> [dP/P (10)] ─┐
                                             │            │                          ▼
                                             │            └─> [利回り (11)(12)]   [債務の時価 (13)] ─> [債務GDP比 (14)]
                                             │                                                  │
                                             └─> [割引因子 Λ (15)] ───────────────────────────┤
                                                                                                ▼
                                       [有限期間の予算制約 (16)] ─ TVC (17) ─> [無限期間 (18)] ─ 有界性 (19)
                                                                       │
        [E Λ = e^{gτ}P (20)] ─> [確定的な剰余 (21)] ─> [TVCと利回り (22)] ─> [一定の剰余 (23)] ─> [主要帰結 (24)]
```

---

### A.1 使う道具

**T1 （資産価格の基本定理）**

無裁定なら、基準財で割った価格がマルチンゲールになる同値測度 $Q$ が存在する。本記事ではこれをA1として仮定する。

**T2 （Girsanovの定理）**

$\lambda$ が定数のとき、$W^{Q}_t = W_t - \lambda t$ は、密度 $\exp(\lambda W_T - \lambda^2 T/2)$ で定まる $Q$ の下で標準ブラウン運動になる。

**T3 （平均回帰過程の解）**

$dr = a(\theta - r)\,dt + \sigma\,dW$ の解は、次式で与えられる。

$$
r_s = r_t\,e^{-a(s-t)} + \theta\left( 1 - e^{-a(s-t)} \right) + \sigma\int_t^s e^{-a(s-u)}\,dW_u
$$

**T4 （確率的Fubiniの定理、伊藤等長性、期待値と積分の交換）**

積分の順序交換 $\int_t^T\int_t^s f(s,u)\,dW_u\,ds = \int_t^T\int_u^T f(s,u)\,ds\,dW_u$ が成り立つ。また、$\mathrm{Var}\left(\int h(u)\,dW_u\right) = \int h(u)^2\,du$ である。可積分なら、期待値と時間積分は交換できる。

**T5 （ガウス変数の指数期待値）**

$X \sim N(\mu, v)$ のとき、$\mathbb{E}[e^{-X}] = e^{-\mu + v/2}$ である。

**T6 （伊藤の公式と積の公式）**

$f(t,r)$ について $df = f_t\,dt + f_r\,dr + \tfrac{1}{2}f_{rr}(dr)^2$ である。有限変動の過程 $\Lambda$ との積は $d(\Lambda X) = \Lambda\,dX + X\,d\Lambda$ である。

**T7 （繰り返し期待値）**

$s \le t$ のとき、$\mathbb{E}^{Q}_s\left[\mathbb{E}^{Q}_t[X]\right] = \mathbb{E}^{Q}_s[X]$ である。

**T8 （確率積分のマルチンゲール性）**

被積分関数の二乗の期待値の積分が有限なら、確率積分は真のマルチンゲールで、条件付き期待値は0になる。A7の正則条件がこれに当たる。

---

### A.2 $Q$ の下の短期金利 (5)(6) の導出

**Step 1　ブラウン運動の付け替え**

T2より、(4)の $W^{Q}$ は $Q$ の下で標準ブラウン運動で、$dW_t = dW^{Q}_t + \lambda\,dt$ である。

**Step 2　(3)への代入**

$$
dr_t = a(b - r_t)\,dt + \sigma\left( dW^{Q}_t + \lambda\,dt \right) = a\left( b + \frac{\sigma\lambda}{a} - r_t \right)dt + \sigma\,dW^{Q}_t
$$

$a \gt 0$ で割れる。$b^{\ast} = b + \sigma\lambda/a$ とおいて、式(5)と式(6)を得る。

**確認**

$\lambda = 0$ なら $b^{\ast} = b$ で、$P$ と $Q$ の下の動学が一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 実世界の動学(3)、市場価格 $\lambda$ |
| 使う道具 | T2 Girsanovの定理 |

---

### A.3 債券価格 (7)(8)(9) の導出

**Step 1　$Q$ の下の短期金利の解**

T3を $\theta = b^{\ast}$、$W = W^{Q}$ として適用する。

$$
r_s = r_t\,e^{-a(s-t)} + b^{\ast}\left( 1 - e^{-a(s-t)} \right) + \sigma\int_t^s e^{-a(s-u)}\,dW^{Q}_u\tag{25}
$$

**Step 2　金利の積分**

(25)を $s$ で $t$ から $T$ まで積分し、T4で順序を交換する。$\int_u^T e^{-a(s-u)}\,ds = B(T-u)$ を使う。

$$
\int_t^T r_s\,ds = \underbrace{b^{\ast}\tau + (r_t - b^{\ast})B(\tau)}_{\mu} + \sigma\int_t^T B(T-u)\,dW^{Q}_u\tag{26}
$$

**Step 3　分散の計算**

T4の伊藤等長性より、$v = \sigma^2\int_0^\tau B(s)^2\,ds = \sigma^2 C(\tau)$ となる。$B(s)^2 = (1 - 2e^{-as} + e^{-2as})/a^2$ を積分し、$e^{-a\tau} = 1 - aB(\tau)$ から $(1 - e^{-2a\tau})/(2a) = B - aB^2/2$ を使う。

$$
C(\tau) = \frac{1}{a^2}\left[ \tau - 2B + B - \frac{aB^2}{2} \right] = \frac{\tau - B(\tau)}{a^2} - \frac{B(\tau)^2}{2a}\tag{27}
$$

**Step 4　ガウス期待値**

(26)の積分は $\mathcal{F}_t$ の下で $N(\mu, \sigma^2 C(\tau))$ に従うので、T5より $\ln P = -\mu + \sigma^2 C(\tau)/2$ となる。

**Step 5　整理**

$$
\ln P = -b^{\ast}\tau - (r_t - b^{\ast})B + \frac{\sigma^2}{2}\left[ \frac{\tau - B}{a^2} - \frac{B^2}{2a} \right] = -B\,r_t + (B - \tau)\left( b^{\ast} - \frac{\sigma^2}{2a^2} \right) - \frac{\sigma^2 B^2}{4a}
$$

これは式(7)(8)(9)に一致する。

**確認**

$\tau = 0$ で $A = B = 0$ より $P = 1$ となる。$\sigma = 0$ では $\ln P = -\int r$ の確定的な値に一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | $Q$ の下の動学(5)(6)、価格の表現(1) |
| 使う道具 | T3 平均回帰過程の解、T4 Fubiniと伊藤等長性、T5 ガウスの指数期待値 |

---

### A.4 $Q$ の下の債券価格の動学 (10) の導出

**Step 1　ドリフト**

A1より $P/B^{\mathrm{mm}}$ は $Q$ の下でマルチンゲールなので、$dP/P$ の $Q$ の下のドリフトは $r_t$ である。

**Step 2　拡散係数**

(7)より $\partial P/\partial r = -B(\tau)\,P$ である。T6の伊藤の公式で、$dW^{Q}$ の係数は $\partial P/\partial r$ に $r$ の拡散係数 $\sigma$ を掛けたものになり、$-\sigma B(\tau)\,P$ である。

**Step 3　まとめ**

Step 1とStep 2を合わせて、式(10)を得る。

**確認**

$\sigma = 0$ では拡散項が消え、$dP/P = r_t\,dt$ となる。$B(\tau) \gt 0$ なので、金利が上がると債券価格は下がる。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 債券価格(7)、$Q$ の下の動学(5) |
| 使う道具 | T1 マルチンゲール性、T6 伊藤の公式 |

---

### A.5 利回り (11)(12) の導出

**Step 1　利回りの定義**

(2)と(7)より、$y = -\ln P/\tau = \left( B(\tau)\,r_t - A(\tau) \right)/\tau$ である。

**Step 2　$A$ の代入**

(9)と(11)を代入し、$\tau \gt 0$ で割る。

$$
-\frac{A}{\tau} = \frac{\tau - B}{\tau}\,y_\infty + \frac{\sigma^2 B^2}{4a\tau} = y_\infty\left( 1 - \frac{B}{\tau} \right) + \frac{\sigma^2 B^2}{4a\tau}
$$

**Step 3　まとめ**

$y = y_\infty(1 - B/\tau) + r_t\,B/\tau + \sigma^2 B^2/(4a\tau)$ を整理して、式(12)を得る。

**確認**

$\tau \to 0$ で $B/\tau \to 1$、$B^2/\tau \to 0$ なので $y \to r_t$ である。$\tau \to \infty$ で $B \to 1/a$ なので $y \to y_\infty$ である。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 債券価格(7)(8)(9)、利回りの定義(2) |
| 使う道具 | 代数計算 |

---

### A.6 債務の動学 (13)(14)(15) の導出

**Step 1　自己資金調達的な債務の増減**

A6より、債務の満期 $T$ の債券の保有量(発行残高)を $n_t(T)$ とすると、$V_t = \int n_t(T)\,P(t,T)\,dT$ で、$\omega_t(T) = n_t(T)P(t,T)/V_t$ である。債券の追加発行・償還は同じ時価で行われるので時価を変えず、債務は債券の時価変動と基礎的収支だけで変わる。

$$
dV_t = \int n_t(T)\,dP(t,T)\,dT - S_t\,dt
$$

**Step 2　(10)の代入**

$n_t(T)\,dP = \omega_t(T)\,V_t\,\left( r_t\,dt - \sigma B(T-t)\,dW^{Q}_t \right)$ を代入し、$\int\omega = 1$ と $D_t = \int\omega_t(T)B(T-t)\,dT$ を使う。

$$
dV_t = \left( r_t V_t - S_t \right)dt - \sigma D_t V_t\,dW^{Q}_t
$$

これは式(13)である。$B(\tau) \lt 1/a$ なので、$0 \le D_t \lt 1/a$ である。

**Step 3　GDP比への変換**

$Y_t$ は確定的で $dY_t = gY_t\,dt$ である。$d_t = V_t/Y_t$ に対して、$dd_t = dV_t/Y_t - g\,d_t\,dt$ となる(確定的な $Y$ との共分散項はない)。

$$
dd_t = \left( (r_t - g)\,d_t - s_t \right)dt - \sigma D_t d_t\,dW^{Q}_t
$$

これは式(14)である。

**Step 4　割引因子**

(15)は定義である。$d\Lambda_{t,u} = -(r_u - g)\Lambda_{t,u}\,du$($u$ について)で、$\Lambda_{t,t} = 1$ である。

**確認**

$\sigma = 0$ では(14)は常微分方程式 $\dot{d} = (r - g)d - s$ になる。$s = 0$ なら、債務比率は $r - g$ の率で増殖する。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 債券価格の動学(10)、A5〜A7 |
| 使う道具 | T6 積の公式、代数計算 |

---

### A.7 通時的予算制約 (16)(18) の導出

**Step 1　割引後の債務の動学**

T6の積の公式を $u$ について $\Lambda_{t,u}\,d_u$ に適用する。$d\Lambda_{t,u} = -(r_u - g)\Lambda_{t,u}\,du$ と(14)から、$(r_u - g)d_u$ の項が打ち消し合う。

$$
d\left( \Lambda_{t,u}\,d_u \right) = -\Lambda_{t,u}\,s_u\,du - \Lambda_{t,u}\,\sigma D_u d_u\,dW^{Q}_u
$$

**Step 2　$t$ から $T$ まで積分**

$\Lambda_{t,t} = 1$ なので、次を得る。

$$
\Lambda_{t,T}\,d_T - d_t = -\int_t^T \Lambda_{t,u}\,s_u\,du - \int_t^T \Lambda_{t,u}\,\sigma D_u d_u\,dW^{Q}_u
$$

**Step 3　期待値をとる**

A7の正則条件とT8より、確率積分の $\mathbb{E}^{Q}_t$ は0になる。整理して式(16)を得る。

**Step 4　$T \to \infty$**

TVC(17)より第2項が消える。A7の可積分条件で、$\int_t^T$ の期待値は $\int_t^\infty$ の期待値に収束し、式(18)を得る。

**確認**

$\sigma = 0$、$s = 0$、$r - g = \kappa$ が定数のとき、$d_T = d_t\,e^{\kappa\tau}$、$\Lambda_{t,T} = e^{-\kappa\tau}$ なので、$\Lambda_{t,T}\,d_T = d_t$ で、(16)は自明に成り立つ。TVC(17)は $d_t = 0$ のときにだけ成り立つ。TVCを外すと、$d_t$ が剰余の現在価値で決まらない(ポンジー・バブル解が残る)。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 債務GDP比の動学(14)、割引因子(15)、A7の正則条件、TVC(17) |
| 使う道具 | T6 積の公式、T8 確率積分のマルチンゲール性 |

---

### A.8 利回りとの接続 (20)(21) の導出

**Step 1　割引因子の期待値**

(15)より $\Lambda_{t,u} = e^{g(u-t)}\exp\left(-\int_t^u r_v\,dv\right)$ で、第1因子は確定的である。(1)より次を得る。

$$
\mathbb{E}^{Q}_t\left[ \Lambda_{t,u} \right] = e^{g(u-t)}\,P(t,u)
$$

**Step 2　利回りで書く**

(2)より $P(t,u) = \exp(-y(t,u)(u-t))$ なので、$e^{g(u-t)}P(t,u) = \exp(-(y(t,u)-g)(u-t))$ となり、式(20)を得る。

**Step 3　確定的な剰余の経路**

$s(u)$ が確定的なら、A7の可積分条件の下でT4により、(18)の期待値と時間積分を交換できる。(20)を代入して式(21)を得る。

**確認**

$g = 0$ なら、(21)は剰余の流列の通常の現在価値 $\int s(u)P(t,u)\,du$ になる。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 価格の表現(1)、利回りの定義(2)、無限期間の予算制約(18) |
| 使う道具 | T4 期待値と積分の交換 |

---

### A.9 TVCと利回りの条件 (22)(23) の導出

**Step 1　$t$ を固定したときの漸近形**

$e^{g\tau}P(t,T)$ の対数は、(7)より $A(\tau) - B(\tau)r_t + g\tau$ である。$A(\tau) = (B-\tau)\,y_\infty - \sigma^2B^2/(4a)$、$B(\tau) = 1/a - e^{-a\tau}/a$ を代入し、$\tau \to \infty$ で次を得る。

$$
\ln\left( e^{g\tau}P(t,T) \right) = -\left( y_\infty - g \right)\tau + \underbrace{\frac{y_\infty}{a} - \frac{\sigma^2}{4a^3} - \frac{r_t}{a}}_{\kappa(r_t)} + O\left( e^{-a\tau} \right)\tag{28}
$$

したがって、$e^{g\tau}P(t,T) \to 0$ であることと、$y_\infty \gt g$ であることは同値である。$y_\infty = g$ なら極限は正の定数 $e^{\kappa}$、$y_\infty \lt g$ なら無限大に発散する。

**Step 2　命題(i)：TVC ならば $y_\infty \gt g$**

(19)の下限 $d_T \ge \varepsilon$ と(20)で $u = T$ とおくと、次が成り立つ。

$$
\mathbb{E}^{Q}_t\left[ \Lambda_{t,T}\,d_T \right] \ge \varepsilon\,\mathbb{E}^{Q}_t\left[ \Lambda_{t,T} \right] = \varepsilon\,e^{g\tau}P(t,T)
$$

TVC(17)なら左辺は0に収束するので、右辺も0に収束する。Step 1より $y_\infty \gt g$ である。

**Step 3　命題(ii)：$y_\infty \gt g$ ならば TVC**

(19)の上限 $d_T \le \bar{d}$ と $d_T \gt 0$ より、$0 \lt \mathbb{E}^{Q}_t[\Lambda_{t,T}\,d_T] \le \bar{d}\,e^{g\tau}P(t,T)$ である。$y_\infty \gt g$ ならStep 1より右辺は0に収束するので、(17)が成り立つ。

**Step 4　一定の剰余の閉じた形(23)**

$s(u) = s$ のとき、(21)で $u = t + \tau$ とおき、(20)と(7)を使う。

$$
d_t = s\int_0^\infty e^{g\tau}P(t,t+\tau)\,d\tau = s\int_0^\infty \exp\left( A(\tau) - B(\tau)r_t + g\tau \right)d\tau = s\,\Phi(r_t)
$$

被積分関数は、(28)より $e^{\kappa}e^{-(y_\infty - g)\tau}$ に漸近する。$y_\infty \gt g$ のとき積分は有限で、$y_\infty \le g$ のとき $\Phi = \infty$ である。後者では(18)により $d_t = \infty$ となり、有限な $d_t$ と TVC は両立しない。

**Step 5　確定的な剰余の経路でのTVCの確認**

(21)が時点 $T$ でも成り立つとして、$d_T = \int_T^\infty s(u)\,e^{g(u-T)}P(T,u)\,du$ である。T7で繰り返し期待値をとり、$\Lambda_{t,T}\,e^{g(u-T)} = e^{g(u-t)}\exp(-\int_t^T r_v\,dv)$ と(1)の繰り返し適用を使う。

$$
\mathbb{E}^{Q}_t\left[ \Lambda_{t,T}\,d_T \right] = \int_T^\infty s(u)\,e^{g(u-t)}P(t,u)\,du
$$

右辺は、(21)の収束する積分の裾なので、$T \to \infty$ で0に収束する。TVC(17)が成り立つ。

**確認**

$\sigma = 0$ かつ $r_t = b^{\ast}$ のとき、$A(\tau) - B(\tau)r_t = -b^{\ast}\tau$ なので、$\Phi = \int_0^\infty e^{-(b^{\ast}-g)\tau}\,d\tau = 1/(b^{\ast}-g)$ となり、$d_t = s/(r_t - g)$ に一致する。(22)は $b^{\ast} \gt g$ になる。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 割引因子の期待値(20)、債券価格(7)〜(9)、長期利回り(11)、有界性(19) |
| 使う道具 | T4 期待値と積分の交換、T7 繰り返し期待値、漸近展開 |

---

### A.10 比較静学の導出

**Step 1　積分記号下の微分**

(22)が成り立つとき、(28)より被積分関数は $\tau$ について指数的に減衰し、パラメータの局所的な範囲で一様に上から抑えられる。優収束定理により、微分と積分を交換できる。

**Step 2　各パラメータ**

被積分関数 $e^{A(\tau) - B(\tau)r + g\tau}$ の対数のパラメータによる偏微分は、次のとおりである。

| パラメータ | 対数の偏微分 | 符号 |
|---|---|---|
| $r$ | $-B(\tau)$ | $B(\tau) \gt 0$ より負 |
| $g$ | $\tau$ | $\tau \gt 0$ より正 |
| $b^{\ast}$ | $B(\tau) - \tau$ | $1 - e^{-x} \lt x\ (x \gt 0)$ より $B(\tau) \lt \tau$ で負 |

$\lambda$ は(6)により $b^{\ast}$ を通じてだけ $r_t$ 以外の項に入るので、$\partial d_t/\partial\lambda = (\sigma/a)\,\partial d_t/\partial b^{\ast} \lt 0$ である。

**確認**

$\sigma = 0$ かつ $r_t = b^{\ast}$ では $d_t = s/(r_t - g)$ なので、$r_t$ の上昇で低下、$g$ の上昇で上昇し、符号が一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 債務の許容水準(23)、価格式(7)〜(9) |
| 使う道具 | 優収束定理、不等式 $1 - e^{-x} \lt x$ |

---

### A.11 著者について

**Oldřich Vašíček（Oldrich Alfons Vasicek）**
- **アカデミックな経歴**: 1942年にチェコスロバキアで生まれた。プラハのチェコスロバキア科学アカデミーで純粋数学の研究に従事していたが、1968年のソ連軍侵攻をきっかけに米国へ移った。サンフランシスコのWells Fargo銀行の経営科学部門でバイスプレジデントを務め、1974年にロチェスター大学経営大学院で2年間教えた。1989年にKMV社を共同で創設した。
- **主要な研究分野**: 金利の期間構造、信用リスクのモデル化（KMVモデル、信用ポートフォリオのリスクモデル）、数理ファイナンス全般。
- **評判・学術的貢献**: 1977年の本論文は、平均回帰型の短期金利モデル(Vasicekモデル)を与え、Cox–Ingersoll–Rossモデルなどその後の研究や金利デリバティブ市場の発展に影響したと評価されている。受賞歴は、Graham and Dodd Award、Roger F. Murray Prize、Institute for Quantitative Research in Financeの賞、IAFE Financial Engineer of the Year(2004年)、Risk誌のLifetime Achievement Award(2002年)などである。

*（財政の予算制約・TVCの部分(1.5〜1.8)は特定の論文に基づかず、標準的な会計恒等式とマルチンゲール評価から本記事で補った。著者の説明はVasicekのみである。）*

---

**© 2026 AI Collaborator**. 原論文: Vasicek, O. (1977), Journal of Financial Economics.（政府債務の予算制約とTVCの接続部分は本記事で補った。）
{% endraw %}
