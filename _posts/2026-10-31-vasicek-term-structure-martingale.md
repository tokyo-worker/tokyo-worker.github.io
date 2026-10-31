---
layout: post
title: "Vasicek (1977) \"An Equilibrium Characterization of the Term Structure\"、Journal of Financial Economics: 数理モデル"
date: 2026-10-31 00:00:00 +0900
categories: [数理ファイナンス, 金利の期間構造]
math: true
---

{% raw %}
# Vasicek (1977) "An Equilibrium Characterization of the Term Structure"、Journal of Financial Economics: 数理モデル
### マルチンゲール(リスク中立評価)による国債利回りの算定: 短期金利 → 債券価格 → 利回り曲線

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

投資家と国債の市場からなる連続時間の経済を考える。時間は $t \in [0, \infty)$、情報は標準ブラウン運動 $W_t$ が生成するフィルトレーション $\mathcal{F}_t$ である。短期金利 $r_t$ は観測可能で、満期までの残存期間を $\tau = T - t \gt 0$ と書く。

**A1 （無裁定とマルチンゲール測度）**

無リスク資産 $B_t^{\mathrm{mm}} = \exp\left(\int_0^t r_s\,ds\right)$ を基準財とする。同値な確率測度 $Q$ が存在し、すべての国債の割引価格 $P(t,T)/B_t^{\mathrm{mm}}$ が $Q$ の下でマルチンゲール(公平なゲーム)になる。外すと裁定が可能になり、価格が定まらない。

**A2 （短期金利の動学）**

短期金利は平均回帰するガウス過程(Ornstein–Uhlenbeck過程)に従い、パラメータ $a \gt 0$、$b$、$\sigma \gt 0$ は定数である。外すと、閉じた形の価格式が失われる。

**A3 （金利リスクの市場価格）**

金利リスク $W_t$ の市場価格 $\lambda$ は定数で、全満期で共通である。外すと、債券価格の関数 $A(\tau)$ の形が変わる。

**A4 （国債の定義）**

国債は、自国通貨建てで満期 $T$ に1を支払うゼロクーポン債で、デフォルトはない。外すと、信用スプレッドが加わる。

*（元論文は価格付けを偏微分方程式で行っている。A1とマルチンゲール表現(1)による導出は、同じ結果を与える標準的な表現で、本記事で補った。市場価格 $\lambda$ の符号は、正なら債券の期待超過収益が正になるようにとった。原論文の記号との対応は確認していない。）*

---

### 1.1 無裁定価格のマルチンゲール表現

**債券価格と利回り**

$$
P(t,T) = \mathbb{E}^{Q}\left[ \underbrace{\exp\left( -\int_t^T r_s\,ds \right)}_{\text{確率的割引因子}} \,\middle|\, \mathcal{F}_t \right]\tag{1}
$$

$$
y(t,T) = -\frac{\ln P(t,T)}{\tau}\tag{2}
$$

> （式の意図・補足）(1)はA1の言い換えで、$P(T,T)=1$ と合わせて価格を決める。国債の価格は、$Q$ の下での割引因子の期待値である。(2)は連続複利の利回りで、満期 $T$ ごとの組が利回り曲線になる。

| 記号・項目 | 意味 |
|---|---|
| $P(t,T)$ | 時点 $t$ における満期 $T$ のゼロクーポン国債の価格 |
| $y(t,T)$ | 満期 $T$ の連続複利利回り |
| $r_s$ | 短期金利 |
| $\tau$ | 残存期間 $T-t$ |
| $\mathbb{E}^{Q}$ | $Q$ の下での期待値 |

---

### 1.2 短期金利の動学と測度変換

**実世界 $P$ と $Q$ の下の短期金利**

$$
dr_t = \underbrace{a(b - r_t)}_{\text{平均回帰}}\,dt + \underbrace{\sigma}_{\text{変動率}}\,dW_t\tag{3}
$$

$Q$ へは、次のブラウン運動の付け替えで移る。

$$
W^{Q}_t = W_t - \underbrace{\lambda}_{\text{市場価格}}\,t\tag{4}
$$

$$
\frac{dQ}{dP}\bigg|_{\mathcal{F}_T} = \exp\left( \lambda W_T - \tfrac{1}{2}\lambda^2 T \right)\tag{5}
$$

$Q$ の下では、短期金利の平均回帰水準が $b^{\ast}$ に変わる。

$$
dr_t = a(b^{\ast} - r_t)\,dt + \sigma\,dW^{Q}_t\tag{6}
$$

$$
b^{\ast} = \underbrace{b}_{\text{実世界の水準}} + \underbrace{\frac{\sigma\lambda}{a}}_{\text{リスク調整}}\tag{7}
$$

> （式の意図・補足）$\lambda$ は定数なのでNovikov条件を満たし、(5)の密度は正のマルチンゲールになる。$\lambda \gt 0$ なら $b^{\ast} \gt b$ で、$Q$ の下の金利は実世界より高い水準へ回帰する。

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
P(t,T) = \exp\left( \underbrace{A(\tau)}_{\text{水準項}} - \underbrace{B(\tau)\,r_t}_{\text{金利感応}} \right)\tag{8}
$$

$$
B(\tau) = \frac{1 - e^{-a\tau}}{a}\tag{9}
$$

$$
A(\tau) = \left( B(\tau) - \tau \right)\left( b^{\ast} - \frac{\sigma^2}{2a^2} \right) - \underbrace{\frac{\sigma^2 B(\tau)^2}{4a}}_{\text{凸性項}}\tag{10}
$$

**実世界での債券価格の動学**

$$
\frac{dP(t,T)}{P(t,T)} = \left( r_t + \underbrace{\lambda\sigma B(\tau)}_{\text{期待超過収益}} \right) dt - \underbrace{\sigma B(\tau)}_{\text{債券の変動率}}\,dW_t\tag{11}
$$

> （式の意図・補足）(9)の $B(\tau)$ は、短期金利1単位の上昇が価格に与える影響を表す。(11)から、超過収益率を変動率で割った比は全満期で $\lambda$ に等しい。

| 記号・項目 | 意味 |
|---|---|
| $A(\tau)$ | 価格式の水準項 |
| $B(\tau)$ | 価格式の金利感応度 |

---

### 1.4 利回り曲線

**利回り**

$$
y_\infty = b^{\ast} - \frac{\sigma^2}{2a^2}\tag{12}
$$

$$
y(t,T) = \underbrace{y_\infty}_{\text{長期利回り}} + \underbrace{\left( r_t - y_\infty \right)\frac{B(\tau)}{\tau}}_{\text{短期金利の影響}} + \underbrace{\frac{\sigma^2 B(\tau)^2}{4a\tau}}_{\text{凸性の補正}}\tag{13}
$$

**利回りの分解(期待・プレミアム・凸性)**

$$
y(t,T) = \underbrace{b + (r_t - b)\frac{B(\tau)}{\tau}}_{\text{期待短期金利の平均}} + \underbrace{\frac{\sigma\lambda}{a}\left( 1 - \frac{B(\tau)}{\tau} \right)}_{\text{期間プレミアム}} - \underbrace{\frac{\sigma^2}{2\tau}C(\tau)}_{\text{凸性}}\tag{14}
$$

> （式の意図・補足）(13)は価格式(8)の対数をとって $\tau$ で割ったもので、(14)はその別表現である。(14)の第1項は実世界 $P$ での短期金利の平均の期待値で、$\lambda = 0$、$\sigma = 0$ ならこれだけが残る。

| 記号・項目 | 意味 |
|---|---|
| $y_\infty$ | 満期を無限にしたときの利回り |
| $C(\tau)$ | $\int_0^\tau B(s)^2\,ds = (\tau - B(\tau))/a^2 - B(\tau)^2/(2a)$、非負の関数 |

---

### 1.5 主要帰結

**主要式**

$$
\boxed{\begin{aligned}
P(t,T) &= \underbrace{\exp\left( A(\tau) - B(\tau)\,r_t \right)}_{\text{債券価格}} \\
y(t,T) &= y_\infty + \left( r_t - y_\infty \right)\frac{B(\tau)}{\tau} + \frac{\sigma^2 B(\tau)^2}{4a\tau} \\
\frac{dP}{P} &= \left( r_t + \lambda\sigma B(\tau) \right) dt - \sigma B(\tau)\,dW_t
\end{aligned}}\tag{15}
$$

**比較静学**

| 変化 | 利回り $y$ | 符号・式 |
|---|---|---|
| 短期金利の上昇 ($r_t \uparrow$) | 上昇 | $\partial y/\partial r_t = B(\tau)/\tau \in (0,1]$。短期ほど感応的 |
| 長期平均の上昇 ($b \uparrow$) | 上昇 | $\partial y/\partial b = 1 - B(\tau)/\tau \ge 0$ |
| 市場価格の上昇 ($\lambda \uparrow$) | 上昇 | $\partial y/\partial\lambda = (\sigma/a)(1 - B(\tau)/\tau) \ge 0$ |
| 変動率の上昇 ($\sigma \uparrow$) | 不定 | $\partial y/\partial\sigma = (\lambda/a)(1 - B(\tau)/\tau) - (\sigma/\tau)C(\tau)$。プレミアムと凸性が逆向き |

**特殊ケース・極限**

| ケース | 結果 |
|---|---|
| $\tau \to 0$ | $P \to 1$、$y \to r_t$ |
| $\tau \to \infty$ | $y \to y_\infty$ |
| $\sigma = 0$ | $y = b^{\ast} + (r_t - b^{\ast})B(\tau)/\tau$(確定的な金利経路) |
| $\sigma = 0$ かつ $r_t = b$ | $y = b$(平坦な利回り曲線) |
| $\tau \to 0$ のときの傾き | $dy/d\tau = (a/2)(y_\infty - r_t) + \sigma^2/(4a)$ |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 順イールド、逆イールド、ハンプ型 | 短期端は $r_t$、長期端は $y_\infty$ に収束し、$r_t$ と $y_\infty$ の位置関係で傾きが決まる(式(13)と、$\tau \to 0$ の傾き)。 |
| 長期金利が短期金利より安定 | 利回りの短期金利への感応度 $B(\tau)/\tau$ は、満期が長いほど小さい(平均回帰の効果、比較静学)。 |
| 期間プレミアムによる長期金利の上乗せ | $\lambda \gt 0$ のとき、長期ほど $\sigma\lambda/a$ に近い上乗せがつく(式(14))。 |
| 長期債の価格が持つ凸性 | 変動率が大きいほど、利回りは凸性分だけ押し下げられる(式(14)の第3項)。 |
| 全満期で共通のリスク価格 | 債券の超過収益率を変動率で割った比は、満期によらず $\lambda$ に等しい(式(11))。 |

---

## 3. 整理している点 {#sec3}

- 国債価格を、$Q$ の下での確率的割引因子の期待値、すなわち公平なゲーム(マルチンゲール)として定め、利回り曲線の算定を条件付き期待値の計算に帰着させた点。
- 実世界 $P$ と $Q$ を、市場価格 $\lambda$ による金利の長期平均の付け替え ($b \to b^{\ast}$) で結び、利回りを「期待短期金利+期間プレミアム−凸性」に分解した点。
- 1つの状態変数 $r_t$ と4つのパラメータ ($a, b, \sigma, \lambda$) だけで、全満期の価格と利回りを閉じた形で与えた点。

---

## 4. モデルの対象外 {#sec4}

- ソブリンのデフォルトと信用スプレッド(A4で国債を無リスクとして扱う)。
- 短期金利が負になる確率は正で、金利の下限(ゼロ制約)は扱わない。
- 状態変数が複数ある場合(傾き・曲率など)と、市場価格 $\lambda$ の時間変動。
- 財政政策、中央銀行の反応関数、インフレによる金利の内生的な決定。
- 外貨建て国債と為替リスク。
- 原論文の偏微分方程式による導出は、マルチンゲールによる導出と同値だが、本記事では扱わない。
- パラメータの推定と、実際の利回り曲線への当てはめ。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```text
[A1 無裁定 → Q の存在 (T1)] ──> [価格のマルチンゲール表現 (1)] ──> [利回りの定義 (2)]
                                          │
[A2 短期金利 (3)] ──> [Girsanov (4)(5)] ──> [Q下の短期金利 (6)(7)]
                                          │
                                          ├─> [ガウス積分 → 債券価格 (8)(9)(10)] ──> [利回り (12)(13)] ──> [分解 (14)]
                                          │                │                                     │
                                          │                └─> [実世界の動学 (11)]               └─> [主要帰結 (15)]
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

**T4 （確率的Fubiniの定理と伊藤等長性）**

積分の順序交換 $\int_t^T\int_t^s f(s,u)\,dW_u\,ds = \int_t^T\int_u^T f(s,u)\,ds\,dW_u$ が成り立つ。また、$\mathrm{Var}\left(\int h(u)\,dW_u\right) = \int h(u)^2\,du$ である。

**T5 （ガウス変数の指数期待値）**

$X \sim N(\mu, v)$ のとき、$\mathbb{E}[e^{-X}] = e^{-\mu + v/2}$ である。

---

### A.2 $Q$ の下の短期金利 (6)(7) の導出

**Step 1　ブラウン運動の付け替え**

T2より、(4)の $W^{Q}$ は $Q$ の下で標準ブラウン運動で、$dW_t = dW^{Q}_t + \lambda\,dt$ である。

**Step 2　(3)への代入**

$$
dr_t = a(b - r_t)\,dt + \sigma\left( dW^{Q}_t + \lambda\,dt \right) = a\left( b + \frac{\sigma\lambda}{a} - r_t \right)dt + \sigma\,dW^{Q}_t
$$

$a \gt 0$ で割れる。$b^{\ast} = b + \sigma\lambda/a$ とおいて、式(6)と式(7)を得る。

**確認**

$\lambda = 0$ なら $b^{\ast} = b$ で、$P$ と $Q$ の下の動学が一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 実世界の動学(3)、市場価格 $\lambda$ |
| 使う道具 | T2 Girsanovの定理 |

---

### A.3 債券価格 (8)(9)(10) の導出

**Step 1　$Q$ の下の短期金利の解**

T3を $\theta = b^{\ast}$、$W = W^{Q}$ として適用する。

$$
r_s = r_t\,e^{-a(s-t)} + b^{\ast}\left( 1 - e^{-a(s-t)} \right) + \sigma\int_t^s e^{-a(s-u)}\,dW^{Q}_u\tag{16}
$$

**Step 2　金利の積分**

(16)を $s$ で $t$ から $T$ まで積分し、T4で順序を交換する。$\int_u^T e^{-a(s-u)}\,ds = B(T-u)$ を使う。

$$
\int_t^T r_s\,ds = \underbrace{b^{\ast}\tau + (r_t - b^{\ast})B(\tau)}_{\mu} + \sigma\int_t^T B(T-u)\,dW^{Q}_u\tag{17}
$$

**Step 3　分散の計算**

T4の伊藤等長性より、$v = \sigma^2\int_0^\tau B(s)^2\,ds = \sigma^2 C(\tau)$ となる。$B(s)^2 = (1 - 2e^{-as} + e^{-2as})/a^2$ を積分し、$e^{-a\tau} = 1 - aB(\tau)$ から $(1 - e^{-2a\tau})/(2a) = B - aB^2/2$ を使う。

$$
C(\tau) = \frac{1}{a^2}\left[ \tau - 2B + B - \frac{aB^2}{2} \right] = \frac{\tau - B(\tau)}{a^2} - \frac{B(\tau)^2}{2a}\tag{18}
$$

**Step 4　ガウス期待値**

(17)の積分は $\mathcal{F}_t$ の下で $N(\mu, \sigma^2 C(\tau))$ に従うので、T5より $\ln P = -\mu + \sigma^2 C(\tau)/2$ となる。

**Step 5　整理**

$$
\ln P = -b^{\ast}\tau - (r_t - b^{\ast})B + \frac{\sigma^2}{2}\left[ \frac{\tau - B}{a^2} - \frac{B^2}{2a} \right] = -B\,r_t + (B - \tau)\left( b^{\ast} - \frac{\sigma^2}{2a^2} \right) - \frac{\sigma^2 B^2}{4a}
$$

これは式(8)(9)(10)に一致する。

**確認**

$\tau = 0$ で $A = B = 0$ より $P = 1$ となる。$\sigma = 0$ では $\ln P = -\int r$ の確定的な値に一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | $Q$ の下の動学(6)(7)、価格の表現(1) |
| 使う道具 | T3 平均回帰過程の解、T4 Fubiniと伊藤等長性、T5 ガウスの指数期待値 |

---

### A.4 債券価格の実世界での動学 (11) の導出

**Step 1　$Q$ の下のドリフト**

(1)より $P/B^{\mathrm{mm}}$ は $Q$ の下でマルチンゲールなので、$dP/P$ の $Q$ の下のドリフトは $r_t$ である。

**Step 2　拡散係数**

(8)より $\partial P/\partial r = -B(\tau)\,P$ である。$r$ の拡散係数が $\sigma$ なので、$dW^{Q}$ の係数は $-\sigma B(\tau)$ になる。$\tau$ に依存する部分はドリフトに入る。

$$
\frac{dP}{P} = r_t\,dt - \sigma B(\tau)\,dW^{Q}_t
$$

**Step 3　実世界への変換**

$dW^{Q} = dW - \lambda\,dt$ を代入し、式(11)を得る。

**確認**

超過収益率は $\lambda\sigma B(\tau)$、変動率の大きさは $\sigma B(\tau)$ なので、比は満期によらず $\lambda$ に等しい。$B(\tau) \gt 0$ より、$\lambda \gt 0$ なら超過収益率は正である。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 価格の表現(1)、債券価格(8) |
| 使う道具 | T2 Girsanovの定理 |

---

### A.5 利回り (12)(13) の導出

**Step 1　利回りの定義**

(2)と(8)より、$y = -\ln P/\tau = \left( B(\tau)\,r_t - A(\tau) \right)/\tau$ である。

**Step 2　$A$ の代入**

(10)を代入し、$\tau \gt 0$ で割る。

$$
-\frac{A}{\tau} = \frac{\tau - B}{\tau}\left( b^{\ast} - \frac{\sigma^2}{2a^2} \right) + \frac{\sigma^2 B^2}{4a\tau} = y_\infty\left( 1 - \frac{B}{\tau} \right) + \frac{\sigma^2 B^2}{4a\tau}
$$

ここで $y_\infty$ は式(12)の定義である。

**Step 3　まとめ**

$y = y_\infty(1 - B/\tau) + r_t\,B/\tau + \sigma^2 B^2/(4a\tau)$ を整理して、式(13)を得る。

**確認**

$\tau \to 0$ で $B/\tau \to 1$、$B^2/\tau \to 0$ なので $y \to r_t$ である。$\tau \to \infty$ で $B \to 1/a$ なので $y \to y_\infty$ である。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 債券価格(8)(9)(10)、利回りの定義(2) |
| 使う道具 | 代数計算 |

---

### A.6 利回りの分解 (14) の導出

**Step 1　実世界での期待短期金利**

T3を $\theta = b$、$W = W$ として適用すると、$\mathbb{E}^{P}\left[\int_t^T r_s\,ds\right] = b\tau + (r_t - b)B(\tau)$ である。

**Step 2　$P$ と $Q$ の平均の差**

(17)の $\mu = b^{\ast}\tau + (r_t - b^{\ast})B$ との差をとる。

$$
\mu - \left[ b\tau + (r_t - b)B \right] = (b^{\ast} - b)(\tau - B) = \frac{\sigma\lambda}{a}\left( \tau - B(\tau) \right)
$$

**Step 3　$-\ln P$ の分解**

A.3 Step 4より $-\ln P = \mu - \sigma^2 C/2$ なので、次のようになる。

$$
-\ln P = \underbrace{b\tau + (r_t - b)B}_{\text{実世界の平均}} + \underbrace{\frac{\sigma\lambda}{a}(\tau - B)}_{\text{プレミアム}} - \underbrace{\frac{\sigma^2}{2}C(\tau)}_{\text{凸性}}
$$

**Step 4　$\tau$ で割る**

$\tau \gt 0$ で割ると、式(14)を得る。

**確認**

$\lambda = 0$ ならプレミアム項が消える。$\sigma = 0$ ならプレミアムと凸性の両方が消え、利回りは実世界の期待短期金利の平均だけになる。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 平均の式(17)、分散の式(18)、$P$ の下の解 |
| 使う道具 | T3 平均回帰過程の解 |

---

### A.7 著者について

**Oldřich Vašíček（Oldrich Alfons Vasicek）**
- **アカデミックな経歴**: 1942年にチェコスロバキアで生まれた。プラハのチェコスロバキア科学アカデミーで純粋数学の研究に従事していたが、1968年のソ連軍侵攻をきっかけに米国へ移った。サンフランシスコのWells Fargo銀行の経営科学部門でバイスプレジデントを務め、1974年にロチェスター大学経営大学院で2年間教えた。1989年にKMV社を共同で創設した。
- **主要な研究分野**: 金利の期間構造、信用リスクのモデル化（KMVモデル、信用ポートフォリオのリスクモデル）、数理ファイナンス全般。
- **評判・学術的貢献**: 1977年の本論文は、平均回帰型の短期金利モデル(Vasicekモデル)を与え、Cox–Ingersoll–Rossモデルなどその後の研究や金利デリバティブ市場の発展に影響したと評価されている。受賞歴は、Graham and Dodd Award、Roger F. Murray Prize、Institute for Quantitative Research in Financeの賞、IAFE Financial Engineer of the Year(2004年)、Risk誌のLifetime Achievement Award(2002年)などである。

---

**© 2026 AI Collaborator**. 原論文: Vasicek, O. (1977), Journal of Financial Economics.
{% endraw %}
