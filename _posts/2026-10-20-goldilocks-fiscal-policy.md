---
layout: post
title: "A Goldilocks Theory of Fiscal Policy：数理モデル"
date: 2026-10-20 00:00:00 +0900
categories: [マクロ経済学, 財政政策]
math: true
---

{% raw %}
# A Goldilocks Theory of Fiscal Policy：数理モデル
### Mian・Straub・Sufi (2021) の背景にある数理モデル早見表

> **論文の紹介**
> Atif Mian（Princeton & NBER）、Ludwig Straub（Harvard & NBER）、Amir Sufi（Chicago Booth & NBER）による論文 *A Goldilocks Theory of Fiscal Policy*（2021年6月、Preliminary版）。名目金利がゼロ下限（ZLB）に近い経済では、財政が保守的すぎると需要不足とZLB固着を招き、積極的すぎると財政の持続可能性が懸念される。論文は、政府債への選好（コンビニエンス効用）とZLBを備えた決定論的モデルで、「赤字は恒久的だが大きすぎず、国債の名目金利 $R$ が名目成長率 $G$ を下回り（$R\lt G$）、債務は大きくても需要不足を解消できる」領域を **ゴルディロックス・ゾーン** と呼び、その大きさを実証モーメントから閉形式で見積もる。米国の校正では、ゾーン内の債務/GDP比の上限は約220%、恒久的な基礎赤字の上限は約GDP比2%とされる。モデルでは $R$ と $G$ がともに財政政策に対して内生であり、ゾーンは潜在成長率の低下・総需要の回復・格差の縮小で縮小または消滅しうる。
>
> **この記事について**：上の論文の**背景にある数理モデル**だけを取り出し、式・前提・記号・導出を中心に早見表としてまとめたものです。論文の議論や実証の解説は最小限にとどめています。

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

連続時間・決定論的モデル。主体は政府と代表的家計（1.11節以降は貯蓄家計と手元現金（hand-to-mouth）家計に拡張）。家計は消費と政府債の保有を選び、政府は債務・支出・一括税を定める。リスクを入れても債務 $b$ への金利の反応は変わらず、$R\lt G$ の水準の説明にだけ効く（1.14節で災害リスクの拡張を扱う）。

**A1 脱トレンド化と規格化**

全変数を名目成長率で脱トレンドする。潜在産出 $y^{\ast}$ は一定で $y^{\ast}\equiv1$ に規格化し、債務 $b_t$ は潜在GDP比で表す。$R_t-G_t$ を「脱トレンド収益率」と呼ぶ（債務/潜在GDP比を一定に保つ再投資分を差し引いた収益率）。

**A2 コンビニエンス効用**

家計は政府債の保有 $b$ そのものから効用 $v(b)$ を得る（安全性・流動性・規制上の便益）。正則条件は式(1)。外すと政府債の収益率は他資産と同じ $\rho+G^{\ast}$ に等しくなり、債務水準と金利が無関係になる。

$$
v'(b)\ge0,\quad v''(b)\le0,\quad v''(b)\lt0\ \text{（}v'(b)\gt0\text{ のとき）},\quad v'\ \text{の値域は}\ [0,\infty)\ \text{または}\ (0,\infty)\tag{1}
$$

**A3 名目賃金の下方硬直性**

家計は労働1単位を売りたいが、売れない（$n_t\lt1$）場合がある。賃金上昇率の下限が式(6)で与えられ、ZLBでの産出ギャップの唯一の源泉となる。外すとZLBでも産出は潜在水準のままで、ZLB領域の分析が成立しない。

**A4 生産と価格**

線形技術 $y_t=n_t$、価格は伸縮的で実質賃金 $w_t=1$。価格インフレは賃金インフレに等しい。

**A5 政府**

政府支出 $x\ge0$ は一定、税は一括税。税は財政ルール $z_t=Z(b_t)$ を満たすよう調整される（通常 $Z$ は $b$ について減少）。債務は短期かつ実質（1.13節で外す）。$x$ を変動させ税を固定しても同じ分析が成り立つ。

**A6 金融政策が支配的**

金融政策は可能なときは自然配分を実現する。自然利子率が負のときだけZLBが効き、産出が潜在水準を下回る。

**A7 フィリップス曲線が急すぎない**

ZLBでの局所的決定性（均衡の一意性）のための条件。外すと標準的ニューケインジアン・モデルと同様に不決定性が生じうる。

$$
\kappa\lt\underbrace{\frac{\rho+G^{\ast}}{1-x}}_{\text{決定性の上限}}\tag{2}
$$

---

### 1.1 家計

**名目成長率**

$$
G_t\equiv\underbrace{\gamma}_{\text{実質トレンド成長}}+\underbrace{\pi_t}_{\text{インフレ率}},\qquad G^{\ast}\equiv\gamma+\pi^{\ast}\tag{3}
$$

**目的関数**

$$
\max_{\{c_t,\,b_t\}}\int_0^{\infty}e^{-\rho t}\Bigl\{\underbrace{\log c_t}_{\text{消費の効用}}+\underbrace{v(b_t)}_{\text{債務保有の効用}}\Bigr\}\,dt\tag{4}
$$

**予算制約**

$$
\underbrace{c_t}_{\text{消費}}+\underbrace{\dot b_t}_{\text{債務の増加}}\le\underbrace{(R_t-G_t)\,b_t}_{\text{債務の収益}}+\underbrace{w_tn_t}_{\text{労働所得}}-\underbrace{\tau_t}_{\text{一括税}}\tag{5}
$$

**名目賃金の下方硬直性**

$$
\underbrace{\frac{\dot W_t}{W_t}}_{\text{賃金上昇率}}\ge\underbrace{\pi^{\ast}}_{\text{目標インフレ}}-\underbrace{\kappa\,(1-n_t)}_{\text{需要不足の反映}}\tag{6}
$$

> 労働需要が労働供給1に届かないほど賃金上昇率が下がる（通常のフィリップス曲線）。$\kappa\ge0$ はその傾き。

| 記号・項目 | 意味 |
|---|---|
| $c_t$ | 消費 |
| $b_t$ | 政府債保有（潜在GDP比） |
| $R_t$ | 国債の名目金利 |
| $G_t$ | 名目成長率 |
| $\gamma$ | 実質トレンド成長率 |
| $\pi_t$, $\pi^{\ast}$ | インフレ率、目標インフレ率 |
| $G^{\ast}$ | 名目トレンド成長率（インフレが目標のとき） |
| $\rho$ | 割引率 |
| $v(b)$ | 債務保有の効用（コンビニエンス効用） |
| $w_t$, $n_t$ | 実質賃金、就業量（労働販売量） |
| $W_t$ | 名目賃金 |
| $\tau_t$ | 一括税 |
| $\kappa$ | 賃金フィリップス曲線の傾き |

---

### 1.2 企業・政府・金融政策・均衡

**生産と価格**

$$
y_t=n_t,\qquad w_t=1,\qquad \pi_t=\frac{\dot W_t}{W_t}\tag{7}
$$

> 式(6)が等号で成立する局面（ZLB）では $\pi_t=\pi^{\ast}-\kappa(1-n_t)$。自然配分では $\pi_t=\pi^{\ast}$。

**政府の予算制約**

$$
\underbrace{x}_{\text{政府支出}}+\underbrace{(R_t-G_t)\,b_t}_{\text{利払い（脱トレンド）}}\le\underbrace{\dot b_t}_{\text{債務の増加}}+\underbrace{\tau_t}_{\text{税収}}\tag{8}
$$

**基礎赤字と財政ルール**

$$
\underbrace{z_t\equiv x-\tau_t}_{\text{基礎赤字}},\qquad z_t=Z(b_t)\tag{9}
$$

**金融政策**

$$
R_t=\max\{0,\;R^{\ast}_t\}\tag{10}
$$

> $R^{\ast}_t$ は名目硬直性がなく、インフレが $\pi^{\ast}$ で一定のときの名目自然利子率。$R^{\ast}_t\gt0$ なら $R_t=R^{\ast}_t$ かつ $y_t=n_t=1$。$R^{\ast}_t\lt0$ ならZLB（$R_t=0$）で $y_t=n_t\lt1$。

**財市場の均衡**

$$
c_t+x=y_t\tag{11}
$$

**均衡の定義**

初期債務 $b_0$ と財政ルール $Z(\cdot)$ が与えられたとき、均衡は $\{c_t,y_t,n_t,b_t,R_t,G_t,\pi_t,\tau_t,z_t,w_t\}$ の組で、次を満たす。

- (a) $\{c_t,b_t\}$ が式(4)を式(5)のもとで最大化する。
- (b) 赤字が式(9)のルールに従い、税が $z_t=x-\tau_t$ と整合する。
- (c) 債務が式(8)に従って推移し、有界である。
- (d) $R_t$ が式(10)に従う。
- (e) インフレが式(6)（フィリップス曲線）で決まる。
- (f) 式(7)が成り立つ。
- (g) 財市場が式(11)で均衡する。

定常均衡は、全変数と価格が一定の均衡。

| 記号・項目 | 意味 |
|---|---|
| $y_t$ | 産出 |
| $x$ | 政府支出（潜在GDP比、一定） |
| $z_t$ | 基礎赤字（$=x-\tau_t$） |
| $Z(\cdot)$ | 財政ルール（債務から赤字への写像） |
| $R^{\ast}_t$ | 名目自然利子率 |
| $b_0$ | 初期債務 |

---

### 1.3 定常状態：ZLBの上

**オイラー方程式**

$$
\frac{\dot c_t}{c_t}=\underbrace{R^{\ast}_t-G^{\ast}}_{\text{債務の収益率}}-\underbrace{\rho}_{\text{割引率}}+\underbrace{v'(b_t)\,c_t}_{\text{便益の限界効用}}\tag{12}
$$

**自然利子率**

$$
R^{\ast}(b)=\underbrace{\rho+G^{\ast}}_{\text{他資産の収益率}}-\underbrace{v'(b)\,(1-x)}_{\text{コンビニエンス・イールド}}\tag{13}
$$

> ZLBの上では、金融政策が自然配分を実現する（$R_t=R^{\ast}_t$、$y_t=n_t=1$、$\pi_t=\pi^{\ast}$、$G_t=G^{\ast}$）。財市場均衡(11)より $c_t=1-x$ で一定。$v$ が凹なので $R^{\ast}(b)$ は $b$ について弱増加。

| 記号・項目 | 意味 |
|---|---|
| $R^{\ast}(b)$ | 債務 $b$ に対する名目自然利子率 |
| $v'(b)(1-x)$ | コンビニエンス・イールド |
| $\rho+G^{\ast}$ | 政府債以外の資産の定常収益率 |

---

### 1.4 定常状態：ZLB

**オイラー方程式（$R_t=0$）**

$$
\frac{\dot c_t}{c_t}=\underbrace{0-\bigl(G^{\ast}-\kappa(1-y_t)\bigr)}_{R_t-G_t\ \text{（脱トレンド収益率）}}-\rho+v'(b_t)\,c_t\tag{14}
$$

**名目成長率**

$$
G(b)=G^{\ast}-\underbrace{\frac{\kappa}{v'(b)-\kappa}}_{\text{デフレ圧力の係数}}\bigl(-R^{\ast}(b)\bigr)\tag{15}
$$

> ZLBでは $R=0$ が外生で、$G$ が債務に内生的に決まる。$G\lt G^{\ast}$ で、$R^{\ast}(b)$ が負に深いほど低い。式(11)から $y_t=c_t+x$。分母の $v'(b)-\kappa$ は、式(2)のもとで $v'(b)\gt\kappa$ となり正（付録A.3）。

| 記号・項目 | 意味 |
|---|---|
| $G(b)$ | 債務 $b$ に対する定常状態の名目成長率 |
| $y_t$ | 産出（ZLBでは $y_t\lt1$） |

---

### 1.5 閾値と $R$ と $G$ の大小（命題1）

**3つの閾値**

$$
v'(\underline{b})\,(1-x)=\underbrace{\frac{1-x}{1-x-G^{\ast}/\kappa}\,\rho}_{\text{ZLBで }G=0\text{ となる水準}}\qquad\text{（}1-x\gt G^{\ast}/\kappa\text{ のとき。そうでなければ }\underline{b}\text{ は }v'\text{ の定義域の下限）}\tag{16}
$$

$$
v'(b^{\mathrm{ZLB}})\,(1-x)=\underbrace{\rho+G^{\ast}}_{R^{\ast}=0\text{ となる水準}}\tag{17}
$$

$$
v'(\overline{b})\,(1-x)=\underbrace{\rho}_{R^{\ast}=G^{\ast}\text{ となる水準}}\tag{18}
$$

**順序**

$$
\underline{b}\lt b^{\mathrm{ZLB}}\lt\overline{b}\tag{19}
$$

> $R(b)\gt G(b)$ となるのは $b\lt\underline{b}$ または $b\gt\overline{b}$。$R(b)=0$ となるのは $b\lt b^{\mathrm{ZLB}}$。$\overline{b}$ は民間資産の規模で制約されない。$\rho\to0$ で $\overline{b}\to\infty$（民間資産/GDPも無限大になる）。

| 債務水準 | $R$ | $G$ | $R$ と $G$ |
|---|---|---|---|
| $b\lt\underline{b}$ | $0$ | $\lt0$（デフレ） | $R\gt G$ |
| $\underline{b}\lt b\lt b^{\mathrm{ZLB}}$ | $0$ | $0\lt G\lt G^{\ast}$ | $R\lt G$ |
| $b^{\mathrm{ZLB}}\le b\le\overline{b}$ | $R^{\ast}(b)\ge0$ | $G^{\ast}$ | $R\le G$（ゴルディロックス・ゾーン） |
| $b\gt\overline{b}$ | $R^{\ast}(b)\gt G^{\ast}$ | $G^{\ast}$ | $R\gt G$ |

| 記号・項目 | 意味 |
|---|---|
| $\underline{b}$ | ZLBで名目成長率がゼロになる債務水準 |
| $b^{\mathrm{ZLB}}$ | ZLBの境目の債務水準 |
| $\overline{b}$ | $R=G$ となる債務水準（ゾーンの上限） |

---

### 1.6 定常状態の基礎赤字（命題2）

**定常状態の赤字**

$$
z(b)=\underbrace{\bigl(G(b)-R(b)\bigr)}_{\text{脱トレンド成長の余力}}\,b\tag{20}
$$

**コンビニエンス・イールドの準弾力性**

$$
\varphi(b)\equiv-(1-x)\,\frac{\partial v'(b)}{\partial\log b}=-(1-x)\,v''(b)\,b\tag{21}
$$

**赤字の形（区間別）**

$$
z(b)=\begin{cases}
\underbrace{\bigl(v'(b)(1-x)-\rho\bigr)\,b}_{\text{ZLBの上}} & b\ge b^{\mathrm{ZLB}}\\
\underbrace{\Bigl[\dfrac{v'(b)}{v'(b)-\kappa}\,G^{\ast}+\dfrac{\kappa}{v'(b)-\kappa}\bigl(\rho-v'(b)(1-x)\bigr)\Bigr]b}_{\text{ZLB}} & b\lt b^{\mathrm{ZLB}}
\end{cases}\tag{22}
$$

**赤字の形（論文の統一表記）**

$$
z(b)=\bigl(v'(b)(1-x)-\rho\bigr)\,b+\underbrace{\frac{v'(b)}{v'(b)-\kappa}\,\min\{R^{\ast}(b),0\}\,b}_{\text{ZLB時のみ}}\tag{23}
$$

> 論文では項が $(R^{\ast}(b))^{-}$ と表記される（PDF抽出で崩れている）。式(22)のZLB区間と一致するよう、本記事では $\min\{R^{\ast}(b),0\}$ と解釈した（付録A.5 Step 4）。

**ピークの位置と最大赤字**

$$
v'(b^{z})\,(1-x)=\rho+\varphi(b^{z})\tag{24}
$$

$$
\overline{z}=\underbrace{\varphi(b^{z})}_{\text{準弾力性}}\,b^{z}\tag{25}
$$

> 命題2：$z(b)$ は $\underline{b}\lt b\lt b^{\mathrm{ZLB}}$ で厳密に増加する（付録A.5）。$R\lt G$ の区間 $(\underline{b},\overline{b})$ で正。$G-R$ は $b^{\mathrm{ZLB}}$ でピーク（値は $G^{\ast}$）をとる山型で、$z$ のピークは $b^{\mathrm{ZLB}}$ の右側（弱い意味）。
>
> ピークの位置：$\varphi(b^{\mathrm{ZLB}})\ge G^{\ast}$ なら $b^{z}=b^{\mathrm{ZLB}}$。$\varphi(b^{\mathrm{ZLB}})\lt G^{\ast}$ なら $b^{z}\gt b^{\mathrm{ZLB}}$ で式(24)を満たす。$\varphi$ が小さいほど $b^{z}$ は大きい。
>
> **補足（本記事側の確認）**：論文本文はこの閾値を $G^{\ast}/(G^{\ast}+\rho)$ と記すが、式(21)の定義から導くと $G^{\ast}$ になる（付録A.5 Step 8）。式(36)(37)の場合分け（$\varphi_0\lt G^{\ast}+R_0$、$\varphi_0\lt G^{\ast}$）とも整合するのは $G^{\ast}$ の方。
>
> 式(24)(25)は一般には陰関数。$v$ が線形に近づくと $\overline{b}$、$b^{z}$、$\overline{z}$ はすべて発散し、赤字の「硬い上限」はモデル内にない。

| 記号・項目 | 意味 |
|---|---|
| $z(b)$ | 債務 $b$ を定常にする基礎赤字 |
| $\varphi(b)$ | コンビニエンス・イールドの債務に対する準弾力性 |
| $b^{z}$ | 赤字が最大になる債務水準（free lunch領域の上限） |
| $\overline{z}$ | 最大の恒久的基礎赤字 |

---

### 1.7 ゴルディロックス・ゾーンとfree lunch

**ゴルディロックス・ゾーン**

$$
\mathcal{G}\equiv\{\,b:\ b^{\mathrm{ZLB}}\le b\le\overline{b}\,\}\tag{26}
$$

> ZLBの上（$R\gt0$）にあり、かつ $R\le G$ となる定常状態の集合。財政が「冷たすぎ」（ZLB）でも「熱すぎ」（$R\gt G$）でもない領域。税収の上限 $\overline{\tau}$ が分かるなら、$\overline{b}$ の代わりに基礎黒字の上限から上端を定められる。

**free lunch（$R$ と $G$ が外生の場合）**

$$
\dot b_t=-\underbrace{(G-R)}_{\text{正の定数}}\,b_t+z\tag{27}
$$

$$
\Delta b=\frac{\Delta z}{G-R}\tag{28}
$$

> 式(27)は安定。一時的な赤字拡大は成長で解消でき、恒久的な赤字拡大 $\Delta z$ は定常債務を $\Delta z/(G-R)$ だけ上げるだけで、増税は不要。

**移行過程：ZLBの上**

$$
\dot b_t=-\underbrace{\bigl(G^{\ast}-R^{\ast}(b_t)\bigr)\,b_t}_{\text{定常赤字軌跡}\ z_{\mathrm{ss}}(b_t)}+z_t\tag{29}
$$

> 債務の動きは後ろ向き（家計は前向きでも、消費が一定で自然利子率が各瞬間に決まるため）。ルール $z_t=Z(b_t)$ の場合は $z_t$ を $Z(b_t)$ に置き換える。

**移行過程：ZLB**

$$
\frac{\dot c_t}{c_t}=-\bigl(G^{\ast}-\kappa(1-x-c_t)\bigr)-\rho+v'(b_t)\,c_t\tag{30}
$$

$$
\dot b_t=-\bigl(G^{\ast}-\kappa(1-x-c_t)\bigr)\,b_t+z_t\tag{31}
$$

> ZLBでは $(c_t,b_t)$ の2本の微分方程式系。移行の向きは位相図分析による（論文は図示のみで、式の展開は付録に記載なし）。

**free lunch領域**

$$
\underbrace{b_0\le b^{z}}_{\text{初期債務が増加枝上}}\ \Longrightarrow\ \underbrace{z^{\mathrm{new}}\le\overline{z}}_{\text{恒久的に維持できる赤字}}\tag{32}
$$

> 赤字が定常軌跡の上にあれば債務は増え、下にあれば減る。$b_0\le b^{z}$（$z(b)$ の増加枝）なら、赤字を $\overline{z}$ 以下の水準まで恒久的に引き上げられる。一時的なら $\overline{z}$ を超えてもよいが、時間内に $\overline{z}$ 以下へ戻す必要がある。$b_0\gt b^{z}$（減少枝）では、$R\lt G$ でも赤字拡大には最終的に増税（赤字削減・黒字化）が必要。$b\lt b^{\mathrm{ZLB}}$ では軌跡が増加するのでfree lunchが常に可能。脚注：$z(b)$ が複数の局所最大をもちうるので、free lunch不可の条件は「より高い債務かつ同等以上の赤字の定常状態が存在しないこと」。

| 記号・項目 | 意味 |
|---|---|
| $\mathcal{G}$ | ゴルディロックス・ゾーン（定常状態の集合） |
| $z_{\mathrm{ss}}(b)$ | 債務 $b$ を定常にする赤字（$=(G^{\ast}-R^{\ast}(b))b$） |
| $\Delta z$, $\Delta b$ | 恒久的な赤字拡大分、定常債務の変化分 |
| $z^{\mathrm{new}}$ | 新たな恒久的赤字水準 |
| $\overline{\tau}$ | 税収の上限（ゾーンの上端を別に定める場合） |

---

### 1.8 関数形と閉形式（命題3・系1）

**コンビニエンス・イールドの関数形**

$$
\text{線形}:\quad v'(b)(1-x)=v'(b_0)(1-x)-\underbrace{\varphi_0}_{\text{傾き}}\,\frac{b-b_0}{b_0}\tag{33}
$$

$$
\text{対数線形}:\quad v'(b)(1-x)=v'(b_0)(1-x)-\varphi_0\,\log\frac{b}{b_0}\tag{34}
$$

**初期定常状態（ZLBの上）の切片**

$$
v'(b_0)(1-x)=\rho+G^{\ast}-R_0\tag{35}
$$

> $\varphi_0\equiv\varphi(b_0)$。線形では $\varphi(b)=\varphi_0\,b/b_0$、対数線形では $\varphi(b)=\varphi_0$（一定）。

**閉形式（線形）**

$$
\boxed{\begin{aligned}
\frac{\overline{b}}{b_0}&=1+\frac{1}{\varphi_0}\,(G^{\ast}-R_0)\\
\frac{b^{z}}{b_0}&=\begin{cases}\dfrac12\,\dfrac{\overline{b}}{b_0}&\varphi_0\lt G^{\ast}+R_0\\[6pt]1-\dfrac{R_0}{\varphi_0}&\varphi_0\ge G^{\ast}+R_0\end{cases}\\
\overline{z}&=\begin{cases}\dfrac{b_0\,\varphi_0}{4}\Bigl(1+\dfrac{1}{\varphi_0}(G^{\ast}-R_0)\Bigr)^{2}&\varphi_0\lt G^{\ast}+R_0\\[6pt]b_0\Bigl(1-\dfrac{R_0}{\varphi_0}\Bigr)G^{\ast}&\varphi_0\ge G^{\ast}+R_0\end{cases}
\end{aligned}}\tag{36}
$$

**閉形式（対数線形）**

$$
\boxed{\begin{aligned}
\log\frac{\overline{b}}{b_0}&=\frac{1}{\varphi_0}\,(G^{\ast}-R_0)\\
\log\frac{b^{z}}{b_0}&=\begin{cases}\log\dfrac{\overline{b}}{b_0}-1&\varphi_0\lt G^{\ast}\\[6pt]-\dfrac{R_0}{\varphi_0}&\varphi_0\ge G^{\ast}\end{cases}\\
\overline{z}&=\begin{cases}\varphi_0\cdot b^{z}&\varphi_0\lt G^{\ast}\\G^{\ast}\cdot b^{z}&\varphi_0\ge G^{\ast}\end{cases}
\end{aligned}}\tag{37}
$$

**ZLB閾値**

$$
\underbrace{\frac{b^{\mathrm{ZLB}}}{b_0}=1-\frac{R_0}{\varphi_0}}_{\text{線形}},\qquad\underbrace{\log\frac{b^{\mathrm{ZLB}}}{b_0}=-\frac{R_0}{\varphi_0}}_{\text{対数線形}}\tag{38}
$$

**系1：free lunch領域の外にいる条件（関数形に依らない）**

$$
b_0\gt b^{z}\ \Longleftrightarrow\ R_0\gt G^{\ast}-\varphi_0\tag{39}
$$

> 必要な統計量は4つだけ：$\varphi_0$、$b_0$、$G^{\ast}$、$R_0$。政府支出 $x$ と割引率 $\rho$ は不要。ZLBより上にいる初期状態を想定する。
>
> **補足（本記事側の確認）**：論文の系1は「$R_0\lt G^{\ast}-\varphi$ なら領域の外」と記すが、不等号の向きが逆。式(21)(35)から導いた式(39)の向きが、式(36)および論文の数値例（日本・イタリアは $b^{z}=b_0$、米国は $b_0\lt b^{z}$）と整合する（付録A.7 Step 7）。

| 記号・項目 | 意味 |
|---|---|
| $b_0$ | 初期定常状態の債務（校正の基準点） |
| $R_0$ | 初期の名目金利 |
| $\varphi_0$ | $b_0$ でのコンビニエンス・イールドの準弾力性 |
| $\overline{b}$, $b^{z}$, $\overline{z}$ | 閉形式で求める3つの量 |

---

### 1.9 準弾力性 $\varphi_0$ の測定

**同値な2つの識別式**

$$
\varphi_0=-\frac{\partial\,(\rho+G-R)}{\partial\log b}=-b_0\,\frac{\partial\,(\rho+G-R)}{\partial b}\tag{40}
$$

$$
\varphi_0=-\frac{\partial\,(G-R)}{\partial\log b}=-b_0\,\frac{\partial\,(G-R)}{\partial b}\tag{41}
$$

> $\rho$ が $b$ に依存しないので、式(40)と(41)はモデル内で同値。$\rho+G-R$ はコンビニエンス・イールド、$G-R$ は成長率マイナス金利。

| 項目 | 内容 |
|---|---|
| 文献推定値の範囲 | 多くが $0.011$ から $0.025$ |
| 基準値 | $\varphi_0=0.017$（頑健性：$0.012$、$0.022$） |
| ジョージア州上院決選投票（2021年1月） | 債務が事前予想より約3.7%増えると、$G-R$ が8bp低下。$\partial(G-R)/\partial\log b=-0.022$ |

| 記号・項目 | 意味 |
|---|---|
| $\partial(\rho+G-R)/\partial\log b$ | コンビニエンス・イールドの債務（対数）への反応 |
| $\partial(G-R)/\partial\log b$ | $G-R$ の債務（対数）への反応 |

---

### 1.10 総需要と成長率（命題4・5）

**赤字の感応度（式(22)からの導出）**

$$
\begin{aligned}
b\ge b^{\mathrm{ZLB}}:&\quad\frac{\partial z}{\partial\rho}=-b,&&\frac{\partial z}{\partial G^{\ast}}=0\\
b\lt b^{\mathrm{ZLB}}:&\quad\frac{\partial z}{\partial\rho}=\frac{\kappa\,b}{v'(b)-\kappa},&&\frac{\partial z}{\partial G^{\ast}}=\frac{v'(b)\,b}{v'(b)-\kappa}
\end{aligned}\tag{42}
$$

> ZLB閾値は式(17)で決まる：$\rho$ または $G^{\ast}$ が下がると $v'(b^{\mathrm{ZLB}})$ が下がり、$b^{\mathrm{ZLB}}$ は右へ動く。対数選好のため、$G^{\ast}$ が下がると $R^{\ast}$ が1対1で下がり、$G^{\ast}-R^{\ast}$ は不変（ゾーン内の赤字が不変な理由）。

| 変化 | ゾーン内（ZLBの上）の恒久赤字 | ZLB内の恒久赤字 | $b^{\mathrm{ZLB}}$ |
|---|---|---|---|
| $\rho$ の低下（貯蓄意欲の上昇） | 増加 | 減少 | 上昇 |
| $G^{\ast}$ の低下（成長鈍化） | 不変 | 減少 | 上昇 |

> $\rho$ や $G^{\ast}$ が逆向きに動けば符号も逆。$\rho$ が十分大きいと、全ての $b$ で $R^{\ast}\gt G^{\ast}$ となりゾーンが消える（米国の1980年代から90年代初頭に相当）。

---

### 1.11 格差（2種類の家計、命題6）

**貯蓄家計**

$$
\max\int_0^{\infty}e^{-\rho t}\bigl\{\log c^{s}_t+v(b_t)\bigr\}\,dt\tag{43}
$$

$$
c^{s}_t+\dot b_t\le(R_t-G_t)\,b_t+\underbrace{\omega^{s}w_tn_t}_{\text{労働所得の取り分}}-\tau^{s}_t\tag{44}
$$

**手元現金家計**

$$
c^{h}_t=\omega^{h}w_tn_t-\tau^{h}_t,\qquad\omega^{s}+\omega^{h}=1\tag{45}
$$

**貯蓄家計のオイラー方程式**

$$
\frac{\dot c^{s}_t}{c^{s}_t}=R^{\ast}_t-G^{\ast}-\rho+v'(b_t)\,c^{s}_t\tag{46}
$$

**自然利子率（$\tau^{h}=0$、ZLBの上で $c^{s}=1-\omega^{h}-x$）**

$$
R^{\ast}(b)=\rho+G^{\ast}-v'(b)\,\underbrace{\bigl(1-\omega^{h}-x\bigr)}_{\text{貯蓄家計の消費}}\tag{47}
$$

**赤字（命題6）**

$$
z(b)=\begin{cases}
\Bigl(v'(b)\,(1-\omega^{h}-x)-\rho\Bigr)\,b & \text{ZLBの上}\\
\dfrac{v'(b)}{v'(b)-\kappa}\,G^{\ast}\,b+\dfrac{\kappa}{v'(b)-\kappa}\Bigl(\rho-v'(b)\,(1-\omega^{h}-x)\Bigr)\,b & \text{ZLB}
\end{cases}\tag{48}
$$

**ZLB閾値**

$$
v'(b^{\mathrm{ZLB}})\,(1-\omega^{h}-x)=\rho+G^{\ast}\tag{49}
$$

> 格差拡大（$\omega^{s}\uparrow$、$\omega^{h}\downarrow$、$\omega^{s}+\omega^{h}$ 不変）は、ゾーン内の恒久赤字を増やし、ZLB内の恒久赤字を減らし、$b^{\mathrm{ZLB}}$ を上げる。格差縮小では逆。校正では貯蓄家計を上位10%とし $\omega^{s}=\omega^{h}=50\%$、$\tau^{h}=0$。
>
> **補足（本記事側の確認）**：ZLB区間の式(48)は、手元現金家計の消費を $\omega^{h}$ に固定した（$x$ を $x+\omega^{h}$ に置き換えた）場合の式。$\tau^{h}=0$ のまま $c^{h}=\omega^{h}y$ とすると、ZLB区間の係数が変わる（付録A.10 Step 4）。

| 記号・項目 | 意味 |
|---|---|
| $c^{s}_t$, $c^{h}_t$ | 貯蓄家計、手元現金家計の消費 |
| $\omega^{s}$, $\omega^{h}$ | 労働所得の取り分（$\omega^{s}+\omega^{h}=1$） |
| $\tau^{s}_t$, $\tau^{h}_t$ | 各家計への一括税（$\tau^{h}_t$ は負なら移転） |

---

### 1.12 税政策（命題7）

**予算制約（4つの税）**

$$
(1+\tau^{c}_t)\,c^{s}_t+\dot b_t\le\underbrace{(1-\tau^{b}_t)(R_t-G_t)\,b_t}_{\text{税引後の債務収益}}+\omega^{s}w_tn_t-\tau^{s}_t\tag{50}
$$

$$
(1+\tau^{c}_t)\,c^{h}_t=\omega^{h}w_tn_t-\tau^{h}_t\tag{51}
$$

**オイラー方程式**（$R^{\ast}_t$ は税引後の収益）

$$
\frac{\dot c^{s}_t}{c^{s}_t}=R^{\ast}_t-G^{\ast}-\rho+v'(b_t)\,(1+\tau^{c}_t)\,c^{s}_t\tag{52}
$$

**財市場（自然配分）**

$$
c^{s}_t+c^{h}_t+x=1,\qquad c^{h}_t=\frac{\omega^{h}-\tau^{h}_t}{1+\tau^{c}_t}\tag{53}
$$

**自然利子率（税率一定）**

$$
R^{\ast}(b)=\rho+G^{\ast}-v'(b)\,\underbrace{\Bigl[(1+\tau^{c})(1-x)-\omega^{h}+\tau^{h}\Bigr]}_{\Xi\ \text{（貯蓄家計の税込み消費）}}\tag{54}
$$

**赤字**

$$
z(b)=\begin{cases}
\dfrac{v'(b)}{v'(b)-\kappa}\,G^{\ast}\,b+\dfrac{\kappa}{v'(b)-\kappa}\bigl(\rho-v'(b)\,\Xi\bigr)\,b & \text{ZLB}\\
\bigl(v'(b)\,\Xi-\rho\bigr)\,b & \text{ZLBの上}
\end{cases}\tag{55}
$$

**ZLB閾値**

$$
v'(b^{\mathrm{ZLB}})=\frac{\rho+G^{\ast}}{\Xi}\tag{56}
$$

**税の効果（命題7、式(55)からの導出）**

$$
\begin{aligned}
\text{ZLBの上}:&\quad\frac{\partial z}{\partial\tau^{h}}=v'(b)\,b,\quad\frac{\partial z}{\partial\tau^{c}}=v'(b)\,(1-x)\,b,\quad\frac{\partial z}{\partial\tau^{b}}=0\\
\text{ZLB}:&\quad\frac{\partial z}{\partial\tau^{h}}=-\frac{\kappa\,v'(b)\,b}{v'(b)-\kappa},\quad\frac{\partial z}{\partial\tau^{c}}=-\frac{\kappa\,v'(b)\,(1-x)\,b}{v'(b)-\kappa},\quad\frac{\partial z}{\partial\tau^{b}}=0
\end{aligned}\tag{57}
$$

**金融抑圧**

$$
b_t\ge b_{\mathrm{fr}},\qquad\text{政府の支払い金利}\ R_t-\xi_t\tag{58}
$$

> 逆進的な税（$\tau^{h}$、$\tau^{c}$）は総需要と $R^{\ast}$ を下げ、ZLBの上でゾーンを広げる（1税額あたり $v'(b)\,b$）が、ZLB内の赤字を減らし $b^{\mathrm{ZLB}}$ を上げる。資本所得税 $\tau^{b}$ はゾーンを変えない（税引後金利を $R^{\ast}$ と定義するため、税前金利が調整して収入が生じない）。貯蓄家計への税 $\tau^{s}$ は赤字の変化を調整する手段なので、命題7から除く。$\Xi$ の式で $\tau^{c}=\tau^{h}=0$ とおけば式(47)に戻る。
>
> 金融抑圧は貯蓄家計に債務保有の下限を課し、支払い金利を $\xi_t$ だけ下げる。実質的には債券保有者への課税で、貯蓄家計の資源と債務需要を減らす。
>
> 留意点：長期債や $t=0$ の大きな奇襲課税では初期に収奪が生じ、一回限りの債務削減に使える。またモデルの資本所得は政府債の利子だけで、配当などがあれば資本所得税は貯蓄家計への課税に似た性質を帯びる。

| 記号・項目 | 意味 |
|---|---|
| $\tau^{c}$ | 消費税（付加価値税と同等） |
| $\tau^{b}$ | 資本所得税（債務の利子への課税） |
| $\tau^{h}$ | 手元現金家計への所得税（逆進的） |
| $\tau^{s}$ | 貯蓄家計への所得税（累進的） |
| $\Xi$ | $(1+\tau^{c})(1-x)-\omega^{h}+\tau^{h}$ |
| $b_{\mathrm{fr}}$ | 金融抑圧で課す貯蓄家計の債務保有下限 |
| $\xi_t$ | 金融抑圧の強さ（金利の引き下げ幅） |

---

### 1.13 長期債（拡張）

**債券価格（指数的に減るクーポン、名目長期債）**

$$
q_t=\int_t^{\infty}\exp\Bigl(-\int_t^{s}(R_u+\lambda_c)\,du\Bigr)\,ds\tag{59}
$$

$$
b_t\equiv q_t\,\tilde b_t\tag{60}
$$

**日付0の再評価効果**

$$
\frac{b^{\mathrm{rev}}_0}{b_{\mathrm{ss}}}=\underbrace{(R_{\mathrm{ss}}+\lambda_c)}_{\text{旧定常状態の価格の逆数}}\int_0^{\infty}\exp\Bigl(-\int_0^{s}(R_u+\lambda_c)\,du\Bigr)\,ds\tag{61}
$$

> 予算制約(5)(8)は不変。再評価の強さは名目金利だけで決まり、インフレは名目金利を通じてのみ効く。長期名目債はゾーンやfree lunch領域の大きさを変えない（一時的な赤字拡大は債務の実質価値を下げるが、赤字拡大分を上回らない）。ただし赤字政策後の債務の増加は遅くなる。ZLBで $R_u=0$ が続けば再評価は生じない（付録A.12）。政府は支出拡大で自らの債務を目減りさせる「ブートストラップ」はできない。

| 記号・項目 | 意味 |
|---|---|
| $\tilde b_t$ | 名目元本残高（潜在名目GDPで規格化） |
| $q_t$ | 債券価格（クーポン1） |
| $\lambda_c$ | クーポンの減衰率（本記事で $\lambda_c$ と表記） |
| $b_{\mathrm{ss}}$, $R_{\mathrm{ss}}$ | 旧定常状態の債務、名目金利 |
| $b^{\mathrm{rev}}_0$ | 日付0の再評価後の債務の価値 |

---

### 1.14 安全性プレミアムの微視的基礎（拡張）

**災害**

$$
y^{\ast}:\ 1\ \xrightarrow{\ \text{確率フロー}\ \lambda_d\ }\ \delta\in(0,1)\ \text{（密度}\ f(\delta)\text{）},\qquad\int_0^1f(\delta)\,d\delta=1\tag{62}
$$

**税収の上限とデフォルト**

$$
\tau_t\le\overline{\tau}+x,\qquad\underbrace{\frac{\rho\,b}{\delta}}_{\text{災害後に必要な黒字}}\gt\overline{\tau}\ \Longleftrightarrow\ \delta\lt\underline{\delta}\equiv\frac{\rho\,b}{\overline{\tau}}\tag{63}
$$

**災害前の家計問題**

$$
\rho\,V_t(b)=\max_{c}\Bigl\{\log c+\underbrace{\lambda_d\int_0^1f(\delta)\bigl[\tilde V_t(b;\delta)-V_t(b)\bigr]d\delta}_{\text{災害による価値の変化}}+\dot V_t(b)+V_t'(b)\,\dot b_t\Bigr\}\tag{64}
$$

**災害前の自然利子率**

$$
R^{\ast}(b)=\rho+G^{\ast}+\lambda_d-\lambda_d\int_{\rho b/\overline{\tau}}^{1}\frac{f(\delta)}{\delta}\,d\delta\tag{65}
$$

**コンビニエンス・イールドとの対応**

$$
\underbrace{v'(b)(1-x)}_{\text{式(13)の便益}}\ \leftrightarrow\ \lambda_d\int_{\rho b/\overline{\tau}}^{1}\frac{f(\delta)}{\delta}\,d\delta-\lambda_d\ \overset{f(\delta)=2\delta}{=}\ \lambda_d-\frac{2\rho\lambda_d}{\overline{\tau}}\,b\tag{66}
$$

> 災害が起きると金利は $G^{\ast}+\rho$ に上がり（債務は「特別」でなくなる）、デフォルトで債券は全損（デフォルトコストは資源費用でなく家計への移転）。災害前の動学は、外生の $v(b)$ をもつ式(13)のモデルと同型（式(65)は式(13)の $v'(b)(1-x)$ を式(66)の右辺で置き換えた形）。債務が増えるほどデフォルトする災害の範囲が広がり、プレミアムが下がる。$f(\delta)=2\delta$ のとき式(66)は $b$ のアフィン関数となり、式(33)の線形特定化に対応する。元論文の記述は「示せる」としており、導出は付録A.13で骨子を補った。

| 記号・項目 | 意味 |
|---|---|
| $\lambda_d$ | 災害の確率フロー（本記事で $\lambda_d$ と表記） |
| $\delta$ | 災害後の潜在産出（$0\lt\delta\lt1$） |
| $f(\delta)$ | 災害規模の密度関数 |
| $\overline{\tau}$ | 税収の上限（産出比、支出 $x$ を除く分） |
| $\underline{\delta}$ | デフォルトが起きる災害規模の閾値 |
| $V_t(b)$, $\tilde V_t(b;\delta)$ | 災害前、災害後の価値関数 |

---

### 1.15 主要帰結

**主要式**

$$
\boxed{\begin{aligned}
R^{\ast}(b)&=\underbrace{\rho+G^{\ast}-v'(b)(1-x)}_{\text{自然利子率}}\\
G(b)&=\underbrace{G^{\ast}-\tfrac{\kappa}{v'(b)-\kappa}\bigl(-R^{\ast}(b)\bigr)}_{\text{ZLBでの名目成長率}}\\
v'(b^{\mathrm{ZLB}})(1-x)&=\rho+G^{\ast},\qquad v'(\overline{b})(1-x)=\rho\\
v'(b^{z})(1-x)&=\rho+\varphi(b^{z}),\qquad\overline{z}=\varphi(b^{z})\,b^{z}
\end{aligned}}\tag{67}
$$

**比較静学**

| 変化 | 結果 | 符号・式 |
|---|---|---|
| $\rho$ 低下（需要減） | ゾーン内の赤字増、ZLB内の赤字減、$b^{\mathrm{ZLB}}$ 上昇 | 式(42)(17) |
| $G^{\ast}$ 低下（成長鈍化） | ゾーン内の赤字不変、ZLB内の赤字減、$b^{\mathrm{ZLB}}$ 上昇 | 式(42)(17) |
| 格差拡大（$\omega^{h}\downarrow$） | ゾーン内の赤字増、ZLB内の赤字減、$b^{\mathrm{ZLB}}$ 上昇 | 式(48)(49) |
| $\tau^{h}$ または $\tau^{c}$ の引き上げ | ゾーン内の赤字増（$v'(b)\,b$ 等）、ZLB内の赤字減、$b^{\mathrm{ZLB}}$ 上昇 | 式(57)(56) |
| $\tau^{b}$ の引き上げ | 不変 | 式(57) |

**特殊ケース・条件**

| 条件 | 結果 | 式 |
|---|---|---|
| $b\lt b^{\mathrm{ZLB}}$ | free lunchが常に可能 | 式(22)(32) |
| $b_0\gt b^{z}$ | $R\lt G$ でも赤字拡大は増税を要する | 式(32) |
| $\varphi(b^{\mathrm{ZLB}})\ge G^{\ast}$ | $b^{z}=b^{\mathrm{ZLB}}$ | 式(24) |
| $R_0\gt G^{\ast}-\varphi_0$ | free lunch領域の外 | 式(39) |
| $\rho\to0$ または $v$ が線形に近づく | $\overline{b}$、$b^{z}$、$\overline{z}$ が発散 | 式(18)(24) |
| 線形、対数線形の特定化 | $\overline{b}$、$b^{z}$、$\overline{z}$ の閉形式 | 式(36)(37) |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| $R\lt G$ でも財政拡張が自由にできない | $R$ と $G$ は債務に内生。$b\gt b^{z}$ では債務増に伴うコンビニエンス・イールドの低下が利払いを増やし、増税が必要（式(32)） |
| ZLBの経済では財政拡張が安全 | $b\lt b^{\mathrm{ZLB}}$ では $z(b)$ が増加枝で、free lunchが常に可能（式(22)） |
| 日本・イタリアにfree lunchの余地がない | 高債務で低成長、$b_0=b^{z}$（式(36)）。恒久赤字上限も米国の約半分 |
| 低金利・低需要の下でゾーンが広い | 貯蓄意欲が高い（$\rho$ 小）と $R^{\ast}$ が低くゾーンが拡大（式(42)）。$\rho$ が大きいとゾーンは消える（1980年代の米国） |
| 成長鈍化と日本の経験 | $G^{\ast}$ 低下はゾーン内の赤字を変えないが、ZLB閾値を上げ、ZLB内の赤字を減らす（式(42)） |
| 格差拡大と債務・赤字の増加 | 貯蓄家計に資源が集まり債務需要が増え、$R^{\ast}$ が下がる（式(48)）。格差縮小はゾーンを縮める |
| 再分配は財政余地を狭める | 貯蓄家計への課税は債務の買い手を弱め $R^{\ast}$ を上げる（式(57)）。大債務と低金利と格差解消は両立しない |
| 成長鈍化期の財政再建のジレンマ | $R^{\ast}$ を下げる政策（逆進課税や富裕層減税）はZLBを引き締める。$R^{\ast}$ を上げる政策（貯蓄家計課税の一部を再分配、一部を赤字削減に）が有望 |
| 金融抑圧には強い抑圧が必要 | 抑圧は債券保有者への課税で、貯蓄家計の債務需要を減らし、さらに強い抑圧を要する（式(58)） |
| 政府は債務を目減りさせられない | 長期名目債でも再評価は名目金利のみに依存し、ZLBでは生じない（式(61)） |
| 国債の安全性プレミアム | 災害リスクとデフォルトで $v(b)$ に相当する便益が内生的に生じる（式(65)(66)） |

**数値例（元論文の校正、線形特定化 式(33)、$\varphi_0=0.017$）**

| パラメータ | 値 |
|---|---|
| $b_0$（米国、2019年） | 100% |
| $x$ | 20% |
| $R_0$ | 1.5% |
| $G^{\ast}$ | 3.5% |
| $\rho$ | $0.03$ |
| $\kappa$ | $0.03$ |

| 国 | $b_0$ | $R_0$ | $G^{\ast}$ | $\overline{b}$ | $\overline{z}$ | $b^{z}$ |
|---|---|---|---|---|---|---|
| 米国 | 100% | 1.5% | 3.5% | 218% | 2.0% | 109% |
| 日本 | 225% | 0% | 0.5% | 291% | 1.1% | 225% |
| イタリア | 135% | 0% | 0.7% | 191% | 0.9% | 135% |
| ドイツ | 60% | 0% | 2.7% | 155% | 1.7% | 78% |

> 論文自身が、数値は「額面通りに受け取るものではない」と述べている。$\varphi_0=0.012,\ 0.022$ や $R_0$ の違いで頑健性が確認され、$\overline{z}$ は約2〜2.5%で頑健、$\overline{b}$ は200%弱から300%強で最も不確実。

---

## 3. 整理している点 {#sec3}

- **$R$ と $G$ の内生性**：$R$ と $G$ の差を見るだけではfree lunchの可否は分からない。鍵は赤字の定常軌跡 $z(b)$ のピーク $b^{z}$ であり、初期債務がその左にあるかどうかで決まる。
- **ZLBと債務の関係**：債務が少なすぎるとZLBに張り付き（$R=0$、$G$ が低下）、多すぎると $R\gt G$ となる。ゴルディロックス・ゾーンはその間。
- **実証モーメントによる定量化**：ゾーンの大きさは4つの統計量（$\varphi_0$、$b_0$、$G^{\ast}$、$R_0$）から閉形式で求まる。

---

## 4. 対象外の現象 {#sec4}

- 金融政策が支配的でない場合（インフレ税や物価水準の財政理論）。モデルは金融政策が可能なときは常に安定化すると仮定する。
- 資本と投資。定常状態の資本は債務水準に依らないため、free lunchの可否に無関係としてモデルに入れていない。
- 集計リスク。決定論モデルで、リスクは $R\lt G$ の水準を説明しうるが債務 $b$ への金利の反応には影響しないとして扱う（災害リスクは1.14節の拡張のみ）。
- 時間変化する政府支出 $x$（定数と仮定。税を固定して支出を動かす場合は並行した分析とされる）。
- 具体的な増税や歳出削減の規模、税収の上限の内生的決定。ゾーンの上限は $R\le G$ のみで定義され、厚生に基づく内生的な上限は元論文のPDFに展開されていない。
- 2種類を超える家計の異質性や、海外保有者を含む詳細な保有構造。
- 数値の予測。校正値は説明のための例示であり、将来の財政の予測や処方箋ではない。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
前提 式(1)〜(11)
  │
  ├─ 家計：ハミルトニアン → オイラー方程式 式(12)
  │     ├─ 自然配分 c=1-x → 自然利子率 R*(b) 式(13)
  │     └─ ZLB：R=0、フィリップス曲線(6) → 式(14) → G(b) 式(15)
  │
  ├─ v' の単調性 → 閾値 式(16)(17)(18)(19)
  │
  ├─ 政府予算制約(8)の定常 → z(b)=(G-R)b 式(20)
  │     → 区間別 式(22)(23) → ピーク 式(24)(25)、準弾力性 式(21)
  │     → 移行過程 式(27)〜(31) → free lunch領域 式(32)
  │
  ├─ 関数形 式(33)(34)(35) → 閉形式 式(36)(37)(38)、系1 式(39)
  │     └─ φ0の識別 式(40)(41)
  │
  ├─ 比較静学 式(42)
  ├─ 格差 式(43)〜(49) → 税 式(50)〜(57)、金融抑圧 式(58)
  └─ 拡張：長期債 式(59)〜(61)、安全性プレミアム 式(62)〜(66)
```

### A.1 使う道具

**T1 現在価値ハミルトニアン**

状態変数の制約が $\dot b=f(c,b)$ のとき、$H=u(c,b)+\mu f(c,b)$。一階条件は $\partial H/\partial c=0$ と $\dot\mu=\rho\mu-\partial H/\partial b$。

**T2 定常状態条件**

$\dot c=0$、$\dot b=0$ とおく。

**T3 $v'$ の単調性（逆像）**

$v''\lt0$ なら $v'$ は狭義減少。したがって $v'(b)\gt k\Leftrightarrow b\lt(v')^{-1}(k)$。不等号の向きが反転する。

**T4 積の微分と連鎖律**

$\dfrac{d}{db}\bigl[g(b)\,b\bigr]=g'(b)\,b+g(b)$、および $\dfrac{\partial}{\partial\log b}=b\,\dfrac{\partial}{\partial b}$。

**T5 ${\dot b}$ の符号による向き**

$\dot b=z_t-z_{\mathrm{ss}}(b)$ の形なら、$z_t\gt z_{\mathrm{ss}}(b)$ のとき $\dot b\gt0$、$z_t\lt z_{\mathrm{ss}}(b)$ のとき $\dot b\lt0$。

**T6 HJB方程式と包絡線定理**

$\rho V=\max_c\{u+\text{（災害項）}+V'\dot b\}$。一階条件 $u_c=V'$、包絡線条件は $b$ で微分したもの。

**T7 指数割引の積分**

$a\gt0$ なら $\displaystyle\int_0^{\infty}e^{-as}\,ds=\frac1a$。

---

### A.2 オイラー方程式と自然利子率：式(12)(13)

**Step 1　ハミルトニアン（T1）**

$$
H=\log c+v(b)+\mu\bigl[(R-G)\,b+wn-\tau-c\bigr]
$$

予算制約(5)を等号で用いる。$\mu$ は共役変数。→ 目的関数(4)に対応

**Step 2　$c$ についての一階条件**

$$
\frac{\partial H}{\partial c}=\frac1c-\mu=0\ \Longrightarrow\ \mu=\frac1c
$$

**Step 3　$b$ についての条件**

$$
\dot\mu=\rho\mu-\frac{\partial H}{\partial b}=\rho\mu-v'(b)-\mu\,(R-G)
$$

**Step 4　$\mu=1/c$ を代入**

$\dot\mu/\mu=-\dot c/c$ より

$$
\frac{\dot c}{c}=(R-G)-\rho+v'(b)\,c
$$

自然配分で $R=R^{\ast}$、$G=G^{\ast}$ とおくと式(12)。

**Step 5　自然配分の消費（T2）**

自然配分では $y=1$。式(11)より $c=1-x$ で一定、つまり移行過程でも $\dot c=0$。式(12)に代入：

$$
0=R^{\ast}-G^{\ast}-\rho+v'(b)(1-x)\ \Longrightarrow\ R^{\ast}(b)=\rho+G^{\ast}-v'(b)(1-x)
$$

→ 式(13)

**確認**

$v'=0$ なら $R^{\ast}=\rho+G^{\ast}$。$dR^{\ast}/db=-v''(b)(1-x)\ge0$ より $R^{\ast}$ は $b$ について弱増加。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(4)(5)(11) |
| 道具 | T1、T2 |

---

### A.3 ZLBの成長率：式(14)(15)

**Step 1　ZLBでの名目成長率**

$R=0$。賃金硬直性(6)が等号で効くとして（論文の式の前提）、式(3)(7)より

$$
G=\gamma+\pi=G^{\ast}-\kappa(1-y)
$$

**Step 2　オイラー方程式**

A.2 Step 4 の一般式に $R-G=-(G^{\ast}-\kappa(1-y))$ を代入すると式(14)。

**Step 3　定常状態（T2）**

$y=c+x$ より $1-y=1-x-c$。$\dot c=0$ から

$$
0=-G^{\ast}+\kappa(1-x-c)-\rho+v'(b)\,c\ \Longrightarrow\ c=\frac{\rho+G^{\ast}-\kappa(1-x)}{v'(b)-\kappa}
$$

$v'(b)\ne\kappa$ が必要（Step 6 で確認）。

**Step 4　$1-y$ を求める**

$$
1-x-c=\frac{(1-x)(v'-\kappa)-\rho-G^{\ast}+\kappa(1-x)}{v'-\kappa}=\frac{v'(1-x)-\rho-G^{\ast}}{v'-\kappa}=\frac{-R^{\ast}(b)}{v'(b)-\kappa}
$$

最後は式(13)による。

**Step 5　$G$ に代入**

$$
G=G^{\ast}-\kappa(1-y)=G^{\ast}-\frac{\kappa}{v'(b)-\kappa}\bigl(-R^{\ast}(b)\bigr)
$$

→ 式(15)

**Step 6　$v'(b)\gt\kappa$ の確認**

ZLBでは $R^{\ast}(b)\lt0$、すなわち $v'(b)(1-x)\gt\rho+G^{\ast}$。式(2)より $\rho+G^{\ast}\gt\kappa(1-x)$ なので $v'(b)\gt\kappa$（$1-x\gt0$ を使う）。

**確認**

$R^{\ast}(b^{\mathrm{ZLB}})=0$ で $G=G^{\ast}$。ZLBの上の値と連続。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(2)(3)(6)(7)(11)(13) |
| 道具 | T2 |

---

### A.4 閾値：式(16)〜(19)

**Step 1　$\overline{b}$（T3）**

ZLBの上では $R-G=R^{\ast}-G^{\ast}=\rho-v'(b)(1-x)$（式(13)）。$R\lt G\Leftrightarrow v'(b)(1-x)\gt\rho$。T3 により $b\lt\overline{b}$（$v'(\overline{b})(1-x)=\rho$）。→ 式(18)

**Step 2　$b^{\mathrm{ZLB}}$**

$R^{\ast}\ge0\Leftrightarrow v'(b)(1-x)\le\rho+G^{\ast}\Leftrightarrow b\ge b^{\mathrm{ZLB}}$（T3）。→ 式(17)

**Step 3　ZLBでの $G\gt0$ の条件**

式(15)で $v'-\kappa\gt0$（A.3 Step 6）を両辺に掛けても不等号の向きは変わらない。

$$
G\gt0\ \Longleftrightarrow\ G^{\ast}(v'-\kappa)+\kappa\bigl(\rho+G^{\ast}-v'(1-x)\bigr)\gt0\ \Longleftrightarrow\ v'\,\bigl(G^{\ast}-\kappa(1-x)\bigr)+\kappa\rho\gt0
$$

**Step 4　$\underline{b}$**

$\kappa(1-x)\gt G^{\ast}$（$1-x\gt G^{\ast}/\kappa$）のとき、$v'(\kappa(1-x)-G^{\ast})\lt\kappa\rho$。正の数 $\kappa(1-x)-G^{\ast}$ で割ると不等号の向きは変わらず

$$
v'(b)(1-x)\lt\frac{1-x}{1-x-G^{\ast}/\kappa}\,\rho
$$

T3 により $b\gt\underline{b}$。→ 式(16)。$\kappa(1-x)\le G^{\ast}$ なら、第1項は非負、$\kappa\rho\gt0$ なので全ての $b$ で $G\gt0$。このとき $\underline{b}$ は定義域の下限。

**Step 5　順序 $\underline{b}\lt b^{\mathrm{ZLB}}$**

$v'(\underline{b})(1-x)\gt v'(b^{\mathrm{ZLB}})(1-x)$ を示せばよい（T3）。$a=1-x$、$g=G^{\ast}/\kappa$ として

$$
\frac{\rho\,a}{a-g}\gt\rho+G^{\ast}\ \Longleftrightarrow\ \rho a\gt(\rho+G^{\ast})(a-g)\ \Longleftrightarrow\ \kappa a\lt\rho+G^{\ast}
$$

これは式(2)。

**Step 6　順序 $b^{\mathrm{ZLB}}\lt\overline{b}$**

$v'(b^{\mathrm{ZLB}})(1-x)=\rho+G^{\ast}\gt\rho=v'(\overline{b})(1-x)$ より T3。→ 式(19)

**確認**

$R\gt G$ となるのは $b\lt\underline{b}$ または $b\gt\overline{b}$（$b^{\mathrm{ZLB}}\le b\le\overline{b}$ と $\underline{b}\lt b\lt b^{\mathrm{ZLB}}$ では $R\le G$）。$R=0\Leftrightarrow b\lt b^{\mathrm{ZLB}}$。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(2)(13)(15) |
| 道具 | T3 |

---

### A.5 基礎赤字：式(20)〜(25)

**Step 1　定常状態の赤字（T2）**

式(8)を等号で $\dot b=0$ とおくと $x+(R-G)b=\tau$。式(9)より

$$
z=x-\tau=(G-R)\,b
$$

→ 式(20)

**Step 2　ZLBの上**

$G=G^{\ast}$、$R=R^{\ast}$。式(13)より

$$
z=(G^{\ast}-R^{\ast})\,b=\bigl(v'(b)(1-x)-\rho\bigr)\,b
$$

→ 式(22)の上段

**Step 3　ZLB**

$R=0$、式(15)に $R^{\ast}=\rho+G^{\ast}-v'(1-x)$ を代入：

$$
G=G^{\ast}+\frac{\kappa\bigl(\rho+G^{\ast}-v'(1-x)\bigr)}{v'-\kappa}=\frac{v'}{v'-\kappa}G^{\ast}+\frac{\kappa}{v'-\kappa}\bigl(\rho-v'(1-x)\bigr)
$$

$z=G\,b$ より式(22)の下段。

**Step 4　統一表記**

$$
G-(G^{\ast}-R^{\ast})=\frac{\kappa R^{\ast}}{v'-\kappa}+R^{\ast}=\frac{v'}{v'-\kappa}R^{\ast}
$$

ZLBでは $R^{\ast}\lt0$ なので $R^{\ast}=\min\{R^{\ast},0\}$、ZLBの上では $\min\{R^{\ast},0\}=0$。これで式(23)。

**Step 5　$G-R$ の山型**

ZLBの上：$d(G-R)/db=v''(1-x)\le0$。ZLB：$G^{\prime}(b)=\kappa R^{\ast\prime}/(v'-\kappa)-\kappa R^{\ast}v''/(v'-\kappa)^2$。$R^{\ast\prime}=-v''(1-x)$ を使い整理すると

$$
G^{\prime}(b)=\frac{\kappa\,(-v'')\,\bigl(\rho+G^{\ast}-\kappa(1-x)\bigr)}{(v'-\kappa)^2}\ge0
$$

符号は式(2)による。よって $G-R$ は $b^{\mathrm{ZLB}}$ でピーク（値 $G^{\ast}$）。$z=(G-R)b$ のピークは $b^{\mathrm{ZLB}}$ の弱い右側。

**Step 6　ZLBで $z$ は増加**

T4 より $z^{\prime}=G+G^{\prime}b$。$b\gt\underline{b}$ で $G\gt0$、$G^{\prime}\ge0$ なので $z^{\prime}\gt0$。（$b\lt\underline{b}$ では $G\lt0$ のため、$b$ が0に近い所に窪みができる。）

**Step 7　ZLBの上のピーク（T4）**

$$
z^{\prime}(b)=\bigl(v'(b)(1-x)-\rho\bigr)+v''(b)(1-x)\,b=\bigl(v'(b)(1-x)-\rho\bigr)-\varphi(b)
$$

$z^{\prime}=0$ が式(24)。このとき $z=(v'(1-x)-\rho)\,b=\varphi(b^{z})\,b^{z}$ で式(25)。式(21)の定義はこの式から。

**Step 8　$b^{\mathrm{ZLB}}$ での右微分**

式(17)より $v'(b^{\mathrm{ZLB}})(1-x)-\rho=G^{\ast}$。右微分は $G^{\ast}-\varphi(b^{\mathrm{ZLB}})$。$\varphi(b^{\mathrm{ZLB}})\ge G^{\ast}$ なら $z$ は増え続けず $b^{z}=b^{\mathrm{ZLB}}$。$\varphi(b^{\mathrm{ZLB}})\lt G^{\ast}$ なら $z$ は増加を続け、最初に $z^{\prime}=0$ となる $b^{z}\gt b^{\mathrm{ZLB}}$ で式(24)が成り立つ。

**確認**

線形特定化で $\varphi(b^{\mathrm{ZLB}})=\varphi_0-R_0$（式(38)）なので、条件は $\varphi_0\lt G^{\ast}+R_0$。式(36)の場合分けと一致。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(2)(8)(9)(13)(15)(17) |
| 道具 | T2、T4 |

---

### A.6 移行過程とfree lunch：式(27)〜(32)

**Step 1　$R$、$G$ が定数のとき**

式(8)の等号と式(9)より $\dot b=z-(G-R)b$。→ 式(27)。$G\gt R$ なら係数は負で安定。定常は $b=z/(G-R)$ なので $\Delta b=\Delta z/(G-R)$。→ 式(28)

**Step 2　ZLBの上**

$c=1-x$（定数）なので $R^{\ast}(b_t)$ は式(13)。$R=R^{\ast}(b_t)$、$G=G^{\ast}$ を式(27)の導出に代入して式(29)。

**Step 3　向き（T5）**

式(29)は $\dot b=z_t-z_{\mathrm{ss}}(b)$。赤字が定常軌跡の上なら債務は増え、下なら減る。

**Step 4　ZLB**

式(14)と式(11)から式(30)、式(8)から式(31)。$G=G^{\ast}-\kappa(1-x-c)$。向きは位相図分析（論文は図示のみ）。

**Step 5　free lunch領域**

$b_0\le b^{z}$ で $z$ を $z^{\mathrm{new}}\le\overline{z}$ へ恒久的に上げる：増加枝上に $z(b')=z^{\mathrm{new}}$ となる $b'\ge b_0$ があり、$b_0\le b\lt b'$ で $z^{\mathrm{new}}\gt z_{\mathrm{ss}}(b)$ なので $\dot b\gt0$ で $b'$ に収束する（Step 3）。$z^{\mathrm{new}}\gt\overline{z}$ ならどの $b$ でも $z^{\mathrm{new}}\gt z_{\mathrm{ss}}(b)$ で債務は増え続け、赤字を下げる必要がある。

**Step 6　減少枝**

$b_0\gt b^{z}$（局所最大がほかにないとき）では、$b\gt b_0$ で $z_{\mathrm{ss}}(b)\lt z_{\mathrm{ss}}(b_0)\le z^{\mathrm{new}}$。債務は増え続けるため、最終的に赤字削減（増税）が必要。$b\lt b^{\mathrm{ZLB}}$ では $z_{\mathrm{ss}}$ が増加枝なので Step 5 が常に成り立つ。

**確認**

$z^{\mathrm{new}}=z(b_0)$ なら $\dot b=0$ で債務は不変。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(8)(9)(11)(13)(14)(22) |
| 道具 | T2、T5 |

---

### A.7 関数形と閉形式：式(33)〜(39)

**Step 1　切片（式(35)）**

式(13)を $b_0$ で評価：$R_0=\rho+G^{\ast}-v'(b_0)(1-x)$。→ 式(35)

**Step 2　準弾力性**

線形：$v''(1-x)=-\varphi_0/b_0$ より $\varphi(b)=\varphi_0\,b/b_0$。対数線形：$v''(1-x)=-\varphi_0/b$ より $\varphi(b)=\varphi_0$。

**Step 3　$\overline{b}$（式(18)）**

線形：$\rho=\rho+G^{\ast}-R_0-\varphi_0(\overline{b}-b_0)/b_0$ より $\overline{b}/b_0=1+(G^{\ast}-R_0)/\varphi_0$。対数線形：$\log(\overline{b}/b_0)=(G^{\ast}-R_0)/\varphi_0$。→ 式(36)(37)の第1式

**Step 4　$b^{\mathrm{ZLB}}$（式(17)）**

線形：$-R_0=\varphi_0(b-b_0)/b_0$ より $b^{\mathrm{ZLB}}/b_0=1-R_0/\varphi_0$。対数線形：$\log(b^{\mathrm{ZLB}}/b_0)=-R_0/\varphi_0$。→ 式(38)

**Step 5　$b^{z}$、$\overline{z}$（線形）**

式(24)：$\rho+G^{\ast}-R_0-\varphi_0(b-b_0)/b_0=\rho+\varphi_0\,b/b_0$ より

$$
\frac{b^{z}}{b_0}=\frac12\Bigl(1+\frac{G^{\ast}-R_0}{\varphi_0}\Bigr)=\frac12\frac{\overline{b}}{b_0}
$$

条件 $b^{z}\ge b^{\mathrm{ZLB}}$ は $\varphi_0\le G^{\ast}+R_0$（式(38)との比較）。式(25)より $\overline{z}=\varphi(b^{z})\,b^{z}=\varphi_0\,(b^{z})^2/b_0=\dfrac{b_0\varphi_0}{4}\Bigl(\dfrac{\overline{b}}{b_0}\Bigr)^2$。$\varphi_0\gt G^{\ast}+R_0$ なら $b^{z}=b^{\mathrm{ZLB}}$ で、そこでは $R=0$、$G=G^{\ast}$ なので $\overline{z}=G^{\ast}b^{\mathrm{ZLB}}=b_0(1-R_0/\varphi_0)G^{\ast}$。→ 式(36)

**Step 6　$b^{z}$、$\overline{z}$（対数線形）**

式(24)：$G^{\ast}-R_0-\varphi_0\log(b/b_0)=\varphi_0$ より $\log(b^{z}/b_0)=\log(\overline{b}/b_0)-1$。条件 $b^{z}\ge b^{\mathrm{ZLB}}$ は $G^{\ast}/\varphi_0\ge1$。$\overline{z}=\varphi_0\,b^{z}$。そうでなければ $b^{z}=b^{\mathrm{ZLB}}$、$\overline{z}=G^{\ast}b^{z}$。→ 式(37)

**Step 7　系1**

A.5 Step 7 の $z^{\prime}$ を $b_0$ で評価し、式(35)(21)を使う：

$$
z^{\prime}(b_0)=\bigl(v'(b_0)(1-x)-\rho\bigr)-\varphi_0=G^{\ast}-R_0-\varphi_0
$$

$b_0\gt b^{z}$（ピークの右）$\Leftrightarrow z^{\prime}(b_0)\lt0\Leftrightarrow R_0\gt G^{\ast}-\varphi_0$。→ 式(39)。関数形を使っていないので一般に成立。

**確認**

米国：$G^{\ast}-R_0=2.0\%$、$\varphi_0=1.7\%$。$\overline{b}/b_0=1+2.0/1.7\approx2.18$、$b^{z}\approx109\%$、$\overline{z}\approx2.0\%$。$R_0=1.5\%\lt G^{\ast}-\varphi_0=1.8\%$ なので領域内。日本：$R_0=0\gt0.5\%-1.7\%$ で領域外（$b^{z}=b_0$）。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(13)(17)(18)(21)(24)(25) |
| 道具 | T3、T4 |

---

### A.8 $\varphi_0$ の識別：式(40)(41)

**Step 1　ZLBの上でのコンビニエンス・イールド**

式(13)と $G=G^{\ast}$ より $\rho+G-R=\rho+G^{\ast}-R^{\ast}=v'(b)(1-x)$。

**Step 2　$\log b$ で微分（T4）**

$$
\frac{\partial\bigl(\rho+G-R\bigr)}{\partial\log b}=v''(b)(1-x)\,b=-\varphi(b)
$$

$b_0$ で評価して式(40)。$\partial/\partial\log b=b\,\partial/\partial b$ で後半。

**Step 3　$G-R$**

$G-R=v'(b)(1-x)-\rho$ で、$\rho$ は $b$ に依存しないので同じ微分が得られる。→ 式(41)

**確認**

ジョージア州上院選：$\Delta\log b=\log(1.037)\approx0.036$、$\Delta(G-R)=-0.0008$。比は約 $-0.022$。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(13)(21) |
| 道具 | T4 |

---

### A.9 総需要・成長率の比較静学：式(42)

**Step 1　ZLBの上**

式(22)上段 $z=(v'(b)(1-x)-\rho)\,b$ を $\rho$、$G^{\ast}$ で偏微分する。$G^{\ast}$ は含まれないので $\partial z/\partial G^{\ast}=0$（$R^{\ast}$ と $G^{\ast}$ が1対1で動き $G^{\ast}-R^{\ast}$ が不変）。$\partial z/\partial\rho=-b$。

**Step 2　ZLB**

式(22)下段を偏微分する。$v'-\kappa\gt0$（A.3 Step 6）を使い

$$
\frac{\partial z}{\partial\rho}=\frac{\kappa\,b}{v'-\kappa}\gt0,\qquad\frac{\partial z}{\partial G^{\ast}}=\frac{v'\,b}{v'-\kappa}\gt0
$$

→ 式(42)

**Step 3　ZLB閾値（T3）**

式(17)を全微分：$v''(b^{\mathrm{ZLB}})(1-x)\,db^{\mathrm{ZLB}}=d\rho+dG^{\ast}$。$v''\lt0$ より $db^{\mathrm{ZLB}}/d\rho\lt0$、$db^{\mathrm{ZLB}}/dG^{\ast}\lt0$。つまり $\rho$ または $G^{\ast}$ の低下で $b^{\mathrm{ZLB}}$ は上昇する。

**確認**

$\rho$ 低下：ゾーン内 $z$ 増、ZLB内 $z$ 減、$b^{\mathrm{ZLB}}$ 上昇。$G^{\ast}$ 低下：ゾーン内 $z$ 不変、ZLB内 $z$ 減、$b^{\mathrm{ZLB}}$ 上昇。1.10節の表と一致。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(17)(22) |
| 道具 | T3、T4 |

---

### A.10 格差：式(43)〜(49)

**Step 1　貯蓄家計のオイラー方程式（T1）**

式(43)(44)にA.2 Step 1〜4 を適用すると、式(5)の労働所得 $wn$ が $\omega^{s}wn$ に変わるだけで式(46)を得る。

**Step 2　ZLBの上の消費**

$\tau^{h}=0$、$y=n=1$、$w=1$ なので $c^{h}=\omega^{h}$ （式(45)）。式(11)に相当する財市場の均衡 $c^{s}+c^{h}+x=1$ より $c^{s}=1-\omega^{h}-x$ で一定。

**Step 3　自然利子率とZLBの上の赤字**

式(46)で $\dot c^{s}=0$：$R^{\ast}(b)=\rho+G^{\ast}-v'(b)(1-\omega^{h}-x)$。→ 式(47)。A.5 Step 2 と同様に $z=(G^{\ast}-R^{\ast})\,b$ で式(48)の上段。

**Step 4　ZLB区間（論文の置き換え）**

論文は「第1.3〜1.6節と同じ手順」として、式(22)下段の $(1-x)$ を $(1-\omega^{h}-x)$ に置き換えた式(48)下段を与える。$c^{h}$ を $\omega^{h}$ に固定するなら（政府が手元現金家計のために支出する再解釈）、$x$ を $x+\omega^{h}$ に置き換えることに等しく、式(48)が厳密に成り立つ。

> 補足：$\tau^{h}=0$ のまま $c^{h}=\omega^{h}y$ とすると $c^{s}=\omega^{s}y-x$。A.3 と同じ手順で $G=G^{\ast}+\kappa R^{\ast}/(v'\omega^{s}-\kappa)$ となり、式(15)の $v'-\kappa$ が $v'\omega^{s}-\kappa$ に変わる。

**Step 5　ZLB閾値**

$R^{\ast}(b^{\mathrm{ZLB}})=0$ を式(47)に適用：$v'(b^{\mathrm{ZLB}})(1-\omega^{h}-x)=\rho+G^{\ast}$。→ 式(49)

**Step 6　格差の比較静学**

格差拡大は $\omega^{h}$ の低下。ZLBの上：$\partial z/\partial\omega^{h}=-v'(b)\,b\lt0$ なので $\omega^{h}\downarrow$ で $z$ 増。ZLB：$\partial z/\partial\omega^{h}=\kappa\,v'\,b/(v'-\kappa)\gt0$ なので $\omega^{h}\downarrow$ で $z$ 減。式(49)：$\omega^{h}\downarrow$ で分母 $(1-\omega^{h}-x)$ が増え、$v'(b^{\mathrm{ZLB}})$ が下がるので（T3）$b^{\mathrm{ZLB}}$ は上昇。

**確認**

$\omega^{h}=0$ で式(47)(48)(49)は式(13)(22)(17)に一致。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(43)〜(45)、A.2〜A.5 |
| 道具 | T1、T3 |

---

### A.11 税政策：式(50)〜(57)

**Step 1　ハミルトニアン（T1）**

$$
H=\log c^{s}+v(b)+\mu\bigl[(1-\tau^{b})(R-G)\,b+\omega^{s}wn-\tau^{s}-(1+\tau^{c})\,c^{s}\bigr]
$$

**Step 2　一階条件**

$1/c^{s}=\mu(1+\tau^{c})$、$\dot\mu=\rho\mu-v'(b)-\mu\,(1-\tau^{b})(R-G)$。税率一定なら $\dot\mu/\mu=-\dot c^{s}/c^{s}$ なので

$$
\frac{\dot c^{s}}{c^{s}}=(1-\tau^{b})(R-G)-\rho+v'(b)\,(1+\tau^{c})\,c^{s}
$$

**Step 3　税引後収益の規約**

論文の規約に従い、税引後の脱トレンド収益率 $(1-\tau^{b})(R-G)$ を式(52)では $R^{\ast}-G^{\ast}$ と書く（$R^{\ast}$ は税引後の収益）。→ 式(52)

**Step 4　自然配分の消費**

式(51)で $n=1$、$w=1$：$c^{h}=(\omega^{h}-\tau^{h})/(1+\tau^{c})$。$c^{s}+c^{h}+x=1$ より

$$
(1+\tau^{c})\,c^{s}=(1+\tau^{c})(1-x)-\omega^{h}+\tau^{h}=\Xi
$$

→ 式(53)

**Step 5　自然利子率**

式(52)で $\dot c^{s}=0$：$R^{\ast}(b)=\rho+G^{\ast}-v'(b)\,\Xi$。→ 式(54)

**Step 6　赤字とZLB閾値**

式(22)の $(1-x)$ を $\Xi$ に置き換え、式(55)。ZLB区間はA.10 Step 4 と同じ留意が必要。$R^{\ast}(b^{\mathrm{ZLB}})=0$ より $v'(b^{\mathrm{ZLB}})\,\Xi=\rho+G^{\ast}$。→ 式(56)

**Step 7　税の効果（T4）**

$\partial\Xi/\partial\tau^{h}=1$、$\partial\Xi/\partial\tau^{c}=1-x$。ZLBの上の $z=(v'\Xi-\rho)\,b$ より $\partial z/\partial\tau^{h}=v'\,b$、$\partial z/\partial\tau^{c}=v'(1-x)\,b$。ZLBの $z=[v'G^{\ast}+\kappa(\rho-v'\,\Xi)]\,b/(v'-\kappa)$ より $\partial z/\partial\Xi=-\kappa\,v'\,b/(v'-\kappa)$ を $\partial\Xi/\partial\tau$ にかける。$\tau^{b}$ は式(54)(55)に現れない（$R^{\ast}$ が税引後収益のため）。→ 式(57)

**Step 8　ZLB閾値の比較静学**

$\Xi$ の増加で式(56)の右辺が下がり $v'(b^{\mathrm{ZLB}})$ が下がるので、T3 により $b^{\mathrm{ZLB}}$ は上昇。

**確認**

$\tau^{c}=\tau^{h}=0$ で $\Xi=1-\omega^{h}-x$ となり式(47)(48)(49)と一致。式(58)は金融抑圧の定式化（追加の式は論文にない）。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(50)(51)、A.5、A.10 |
| 道具 | T1、T3、T4 |

---

### A.12 長期債：式(59)〜(61)

**Step 1　旧定常状態（T7）**

$R_u=R_{\mathrm{ss}}$ 一定なら

$$
q=\int_0^{\infty}e^{-(R_{\mathrm{ss}}+\lambda_c)s}\,ds=\frac{1}{R_{\mathrm{ss}}+\lambda_c}\ \Longrightarrow\ b_{\mathrm{ss}}=\frac{\tilde b}{R_{\mathrm{ss}}+\lambda_c}
$$

**Step 2　日付0**

元本残高 $\tilde b$ は日付0で変わらない。$b^{\mathrm{rev}}_0=q_0\,\tilde b$ なので

$$
\frac{b^{\mathrm{rev}}_0}{b_{\mathrm{ss}}}=(R_{\mathrm{ss}}+\lambda_c)\,q_0
$$

式(59)の $q_0$ を代入して式(61)。

**Step 3　ZLB（T7）**

$R_u=R_{\mathrm{ss}}=0$ が続くなら

$$
\lambda_c\int_0^{\infty}e^{-\lambda_c s}\,ds=1
$$

再評価は生じない。名目金利が上がる経路なら比が1より小さい（債務価値が下がる）。インフレが影響するのは名目金利を通じてのみ。

**Step 4　債務は旧水準を上回る（背理法）**

債務が旧定常水準を下回り続けるとすると、$R_t\lt R_{\mathrm{ss}}$ が続き、式(61)の比は1より大きくなる。つまり債務は増え、仮定に矛盾。したがって長期名目債でも、一時的な赤字拡大の後に債務はいずれ旧水準を上回る。

**確認**

$\lambda_c\to\infty$ で比が1に近づく（短期債）。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(59)(60) |
| 道具 | T7 |

---

### A.13 安全性プレミアム：式(62)〜(66)

**Step 1　災害後の黒字**

災害後は $R=G^{\ast}+\rho$。債務 $b$（災害前の潜在GDP比）を災害後のGDP $\delta$ に対して見ると、必要な基礎黒字は $(R-G)\,b/\delta=\rho\,b/\delta$。

**Step 2　デフォルト閾値**

$\rho\,b/\delta\gt\overline{\tau}\Longleftrightarrow\delta\lt\rho\,b/\overline{\tau}$（$\delta\gt0$ なので不等号の向きは変わらない）。→ 式(63)

**Step 3　HJBの一階条件と包絡線（T6）**

式(64)で $c$ について：$1/c=V_t'(b)$。$b$ について包絡線条件：

$$
\rho\,V_t'=\lambda_d\int_0^1f(\delta)\bigl[\tilde V_t'(b;\delta)-V_t'\bigr]d\delta+\dot V_t'+V_t''\,\dot b+V_t'\,(R-G)
$$

$V_t'=1/c$ より $\dot V_t'+V_t''\dot b=-(\dot c/c)\,V_t'$。両辺を $V_t'$ で割る：

$$
\rho=\lambda_d\int_0^1f(\delta)\Bigl[\frac{\tilde V_t'}{V_t'}-1\Bigr]d\delta-\frac{\dot c}{c}+R-G
$$

**Step 4　災害後の限界価値（補った前提）**

論文は結果の式のみを示し導出を省略している。本記事で次を仮定して骨子を補った。この仮定は元資料に明記されていない。災害後（デフォルトしない場合）の消費は災害前の $\delta$ 倍で $\tilde c=\delta\,c$。したがって $\tilde V_t'/V_t'=c/\tilde c=1/\delta$。デフォルトする災害（$\delta\lt\underline{\delta}$）では債券が全損で $\tilde V_t'=0$。

**Step 5　自然利子率**

$\dot c=0$、$G=G^{\ast}$ として

$$
\rho=\lambda_d\Bigl[\int_{\underline{\delta}}^{1}\frac{f(\delta)}{\delta}\,d\delta-1\Bigr]+R-G^{\ast}\ \Longrightarrow\ R=\rho+G^{\ast}+\lambda_d-\lambda_d\int_{\underline{\delta}}^{1}\frac{f(\delta)}{\delta}\,d\delta
$$

$\underline{\delta}=\rho b/\overline{\tau}$ を代入して式(65)。（$\int_0^1f=1$ を使って $\int_0^1f\cdot(-1)\,d\delta=-1$。）

**Step 6　コンビニエンス・イールドとの対応**

式(13)と比べて、$v'(b)(1-x)$ に相当するのは $\lambda_d\int_{\underline{\delta}}^{1}f(\delta)\,\delta^{-1}\,d\delta-\lambda_d$。$f(\delta)=2\delta$ なら $\int_{\underline{\delta}}^{1}2\,d\delta=2(1-\rho b/\overline{\tau})$ なので

$$
\lambda_d\cdot2\Bigl(1-\frac{\rho b}{\overline{\tau}}\Bigr)-\lambda_d=\lambda_d-\frac{2\rho\lambda_d}{\overline{\tau}}\,b
$$

→ 式(66)

**確認**

$b=0$ で $\underline{\delta}=0$ となり、便益は $\lambda_d\bigl(\mathbb{E}[1/\delta]-1\bigr)\ge0$。$b$ が増えるほど下がる。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(62)(63)(64) |
| 道具 | T6 |

---

**© 2021 Atif Mian, Ludwig Straub, Amir Sufi**. 本記事は論文 *A Goldilocks Theory of Fiscal Policy*（2021年6月、Preliminary版）の数理モデルを整理したものです。モデルおよび元の式の著作権は原著者に帰属します。
{% endraw %}
