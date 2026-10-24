---
layout: post
title: "物価水準の財政理論 オンライン付録A4 連続時間の効用に貨幣を入れたモデル：数理モデル早見表"
date: 2026-10-22 00:00:00 +0900
categories: [マクロ経済学, 物価水準の財政理論]
math: true
---

{% raw %}
# 物価水準の財政理論 オンライン付録A4 連続時間の効用に貨幣を入れたモデル：数理モデル
### Cochrane "The Fiscal Theory of the Price Level" の背景にある数理モデルを一枚にまとめる（第17回）

---

## この記事について

**紹介する書籍**

John H. Cochrane（Hoover Institution, Stanford University）, *The Fiscal Theory of the Price Level*, Princeton University Press, 2021。「貨幣はなぜ価値を持つのか」「物価水準は何が決めるのか」に対し、政府の財政余剰を裏付けとする理論（物価水準の財政理論, FTPL）で答える書籍です。全体は5部25章とオンライン付録からなります。

**この記事の位置づけ**

この記事は書評ではなく、**書籍の背景にある数理モデルだけを取り出した記事**です。元の文章による解説は最小限にし、式・前提・記号・導出を中心にまとめています。書籍が長いため章ごとに記事化しており、本記事は第17回、シリーズの最終回として「オンライン付録A4 Money in the utility function in continuous time（連続時間の効用に貨幣を入れたモデル）」を対象にします。第16回は付録A3でした。付録A4は、離散時間のタイミングの慣行に煩わされないよう、効用に貨幣を入れたモデルを連続時間で解き、CES型の効用を使って、貨幣需要の金利弾力性と異時点間の代替弾力性を分け、貨幣がIS曲線（異時点間の代替の式）に与える影響を導く付録です。

**この記事の約束**

付録A4の式を、書籍のとおりの式で整理します。式番号は本記事で振り直しています。書籍の割引率 $\delta$（効用の割引率）や、効用の曲率 $\gamma$、貨幣と消費の代替の係数 $\theta$、異時点間の代替弾力性 $\sigma=1/\gamma$、貨幣需要の金利弾力性 $\xi=1/\theta$ の記号は、書籍のまま使います。ただし $\gamma$ は、本シリーズの第10回・第12回の記事で財政ルールの係数として使った $\gamma$ とは別のものです。書籍にない式（導出の途中の整理）を補った箇所には「補足」と明記します。付録A4は、この記事の元PDFの末尾（付録の最後の部分）で、本文の第19章（効用に貨幣を入れたモデル）、第20章（粘着価格モデル）が参照する式です。それらの章の本文は、元PDFに含まれていません。

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

主体は代表的家計と政府。時間は連続。家計は消費 $c_t$ と実質貨幣残高 $m_t\equiv M_t/P_t$ から効用を得る。政府は債務 $B_t$ と貨幣 $M_t$ を発行し、実質プライマリー余剰 $s_t$（家計の実質純納税）を得る。貨幣は利子 $i^m_t$ を払い、債券は名目金利 $i_t$ を払う。

**A1 連続時間**

離散時間では、金利が夜間にだけ払われ、日中は物価が一定という慣行が、高い金利のもとで貨幣需要の病理（有限時間での脱貨幣化など）を生む（付録A3）。連続時間はこの問題がない。

**A2 一定の所得、財市場の均衡**

所得は $y_t$。均衡では $c_t=y_t$。

**A3 実質金利**

実質金利は $r_t=i_t-\pi_t$、ただし $\pi_t\equiv dP_t/P_t\,/dt$ はインフレ率。

**正則条件**

$$
\delta\gt 0,\quad \gamma\gt 0,\quad \theta\gt 0,\quad \alpha\gt 0,\quad P_t\gt 0,\quad M_t\ge 0,\quad i_t\ge i^m_t
$$

> 式番号は付けない。補足：条件のまとめ方は書籍にはなく、筆者が整理した（$\gamma,\theta,\alpha$ はCESの係数の正の値を想定）。

### 1.1 家計の最適化

**目的関数**

$$
\max\ E\int_{t=0}^{\infty}\underbrace{e^{-\delta t}}_{\text{割引}}\,u\!\left(c_t,\frac{M_t}{P_t}\right)dt
\tag{1}
$$

**現在価値の予算制約**

$$
\frac{B_0+M_0}{P_0}=\int_{t=0}^{\infty}e^{-\int_{s=0}^{t}r_sds}\left[\underbrace{c_t-y_t+s_t}_{\text{純支出}}+\underbrace{\left(i_t-i^m_t\right)\frac{M_t}{P_t}}_{\text{貨幣保有の費用}}\right]dt
\tag{2}
$$

**フロー予算制約**

$$
d\left(B_t+M_t\right)=i_tB_tdt+i^m_tM_tdt+P_t\left(y_t-c_t-s_t\right)dt
\tag{3}
$$

> 式(2)は式(3)の現在価値の形。$s_t$ は実質の純納税（政府のプライマリー余剰）。

**一階条件（消費）：異時点間**

予算制約の乗数を $\lambda$ とすると、$e^{-\delta t}u_c(t)=\lambda e^{-\int_0^tr_sds}$。時間で微分して $e^{-\delta t}u_c(t)$ で割ると、

$$
\frac{c_t\,u_{cc}(t)}{u_c(t)}\frac{dc_t}{c_t}+\frac{m_t\,u_{cm}(t)}{u_c(t)}\frac{dm_t}{m_t}=-\left(r_t-\delta\right)dt
\tag{4}
$$

> $u_c(t)\equiv u_c(c_t,M_t/P_t)$ など。補足：書籍の式(A4.1)で符号を読み取りにくいため、時間微分から符号を確認して書いた。非分離効用（$u_{cm}\ne 0$）では、貨幣の変化が異時点間の配分を、通常の金利効果とは別に歪める。

**一階条件（貨幣）：貨幣需要曲線**

$$
\frac{u_m(t)}{u_c(t)}=i_t-i^m_t
\tag{5}
$$

> 貨幣保有の機会費用（金利スプレッド）が、貨幣と消費の限界効用の比に等しい。通常の貨幣需要曲線。

**均衡**

均衡 $c_t=y_t$ では、式(4)の $r_t$ を $i_t-\pi_t$ に置き、式(5)を使い、式(2)の左辺を $P_0$ で評価した条件が成り立つ（書籍の式(A4.3)〜(A4.5)）。

| 記号・項目 | 意味 |
|---|---|
| $u(c,m)$ | 効用関数 |
| $\delta$ | 効用の割引率 |
| $c_t,\ y_t$ | 消費、所得 |
| $M_t,\ B_t,\ m_t$ | 貨幣、名目債、実質貨幣残高 |
| $i_t,\ i^m_t$ | 名目金利、貨幣に払う利子 |
| $r_t,\ \pi_t$ | 実質金利（$i_t-\pi_t$）、インフレ率 |
| $s_t$ | 実質プライマリー余剰（実質純納税） |
| $u_c,\ u_m,\ u_{cc},\ u_{cm}$ | 効用関数の偏導関数 |

### 1.2 CESの効用関数

**効用関数**

$$
u\!\left(c_t,m_t\right)=\frac{1}{1-\gamma}\left[c_t^{\,1-\theta}+\alpha\,m_t^{\,1-\theta}\right]^{\frac{1-\gamma}{1-\theta}}
\tag{6}
$$

**特殊ケース**

| ケース | パラメータ | 効用関数 | 意味 |
|---|---|---|---|
| 完全代替 | $\theta=0$ | $\frac{1}{1-\gamma}\left[c_t+\alpha m_t\right]^{1-\gamma}$ | 貨幣と消費が完全代替 |
| コブ・ダグラス | $\theta\to 1$ | $\frac{1}{1-\gamma}\left[c_t^{\frac{1}{1+\alpha}}m_t^{\frac{\alpha}{1+\alpha}}\right]^{1-\gamma}$ | 貨幣と消費の弾力性1 |
| マネタリストの極限 | $\theta\to\infty$ | $\frac{1}{1-\gamma}\left[\min\left(c_t,\alpha m_t\right)\right]^{1-\gamma}$ | 貨幣需要 $M_t/P_t=c_t/\alpha$（$\alpha=1/V$ が一定）、金利弾力性が0 |
| 分離可能 | $\theta=\gamma$ | $\frac{1}{1-\gamma}\left[c_t^{1-\gamma}+\alpha m_t^{1-\gamma}\right]$ | $u_c$ が $m$ から独立 |

> コブ・ダグラスの指数の読み取りは書籍の式の記号に不確かさがあり、補足として係数の形を整理した（$\frac{1}{1+\alpha}$、$\frac{\alpha}{1+\alpha}$ の指数は、$\theta\to 1$ の極限の標準形）。分離可能なケースでは、貨幣が異時点間の代替の式（新ケインジアン・モデルのインフレと産出の動学）に影響しない。$\sigma=1/\gamma$（異時点間の代替弾力性）、$\xi=1/\theta$（貨幣需要の金利弾力性）とおくと、$(\theta-\gamma)$ や $(\sigma-\xi)$ の項が、分離可能なケースからの乖離を特徴づける。

**偏導関数と貨幣需要**

$$
\alpha\left(\frac{m_t}{c_t}\right)^{-\theta}=\frac{u_m(t)}{u_c(t)}=i_t-i^m_t
\tag{7}
$$

> 偏導関数は $u_c=\left[c^{1-\theta}+\alpha m^{1-\theta}\right]^{\frac{\theta-\gamma}{1-\theta}}c^{-\theta}$、$u_m=\left[c^{1-\theta}+\alpha m^{1-\theta}\right]^{\frac{\theta-\gamma}{1-\theta}}\alpha m^{-\theta}$。両者の比から式(7)の第1の等号、式(5)から第2の等号。

**貨幣需要（金利弾力性 $\xi=1/\theta$）**

$$
\frac{m_t}{c_t}=\left(\frac{1}{\alpha}\right)^{\xi}\left(i_t-i^m_t\right)^{-\xi}
\tag{8}
$$

**定常状態で正規化した貨幣需要**

$$
\frac{m_t}{c_t}=\left(\frac{m}{c}\right)\left(\frac{i_t-i^m_t}{i-i^m}\right)^{-\xi}
\tag{9}
$$

> 添え字のない値は定常状態。式(9)はパラメータ $\alpha$ を避ける形。$\alpha$ は貨幣需要の全体の水準を決める。貨幣保有の利子費用 $\frac{m}{c}(i-i^m)=\left(\frac{m}{c}\right)^{1-\theta}\alpha^{...}$ に相当する量 $\frac{m}{c}(i-i^m)=\left(\frac{1}{\alpha}\right)^{\xi}(i-i^m)^{1-\xi}$ は、$\xi\lt 1$ なら金利がゼロに近づくとゼロに近づく。補足：式の最後の部分は式(8)から整理した。

**曲率と交差項（$s\equiv\alpha(m/c)^{1-\theta}=(m/c)(i-i^m)$）**

$$
-\frac{c\,u_{cc}}{u_c}=\frac{\gamma+\theta\,s}{1+s},\qquad \frac{m\,u_{cm}}{u_c}=\frac{(\theta-\gamma)\,s}{1+s}
\tag{10}
$$

> 補足：式(10)は式(6)から対数微分して導いた（付録A.3）。$s$ は貨幣保有の利子費用の所得に対する比率で、小さい量。

| 記号・項目 | 意味 |
|---|---|
| $\gamma$ | 効用の曲率（$\sigma=1/\gamma$ が異時点間の代替弾力性）。本シリーズの財政ルールの $\gamma$ とは別 |
| $\theta$ | 貨幣と消費の代替の係数（$\xi=1/\theta$ が貨幣需要の金利弾力性） |
| $\alpha$ | 貨幣需要の水準を決める係数 |
| $\sigma,\ \xi$ | 異時点間の代替弾力性、貨幣需要の金利弾力性 |
| $s$ | 貨幣保有の利子費用の所得比 |

### 1.3 異時点間の代替の式（IS曲線）への貨幣の影響

**式(10)を式(4)に代入し、$\sigma,\xi$ で書く**

$$
\frac{dc_t}{c_t}+\left(\frac{\sigma-\xi}{\xi}\right)\frac{\left(\frac{m_t}{c_t}\right)\left(i_t-i^m_t\right)}{1+\left(\frac{m_t}{c_t}\right)\left(i_t-i^m_t\right)}\left(\frac{dc_t}{c_t}-\frac{dm_t}{m_t}\right)=-\delta\sigma\,dt+\sigma\left(i_t-\pi_t\right)dt
\tag{11}
$$

> 式(4)に式(10)を代入し、$r_t=i_t-\pi_t$ を使って整理し、$\sigma=1/\gamma$ を掛けた結果。補足：途中の式（書籍の式(A4.11)）は省略し、書籍の式(A4.12)の形で示した。分離可能なケース（$\sigma=\xi$）では貨幣の項が消える。

**金利で書いた形（近似：利子費用が小さい）**

貨幣需要曲線（式(8)、(9)）を微分して貨幣の変化を金利のスプレッドの変化に置き換え、$x_t=\log c_t$、$dx_t=dc_t/c_t$ とし、定常状態のまわりで近似し、利子費用 $\frac{m}{c}(i-i^m)\ll 1$ を使うと、

$$
\frac{dx_t}{dt}+\left(\sigma-\xi\right)\frac{m}{c}\,\frac{d\left(i_t-i^m_t\right)}{dt}=\sigma\left(i_t-\pi_t\right)
\tag{12}
$$

> 異時点間の代替の式（IS曲線）が、金利と貨幣に払う利子のスプレッドの変化 $d(i-i^m)/dt$ に依存する。消費と貨幣が補完（$u_{cm}\gt 0$）の場合、貨幣成長が速いと将来の消費が現在より容易になり、金利が上がったのと同じように消費の成長を高める。補足：割引率 $\delta$ の項は偏差で表すと落ちる（書籍の式(A4.13)は $\delta$ を含まない形）。

**離散時間版**

$$
E_t\,x_{t+1}-x_t+\left(\sigma-\xi\right)\frac{m}{c}\left[E_t\left(i_{t+1}-i^m_{t+1}\right)-\left(i_t-i^m_t\right)\right]=\sigma\left(i_t-E_t\,\pi_{t+1}\right)
\tag{13}
$$

**貨幣集計量で書いたIS曲線（貨幣量を政策手段とするモデル用）**

$$
\frac{dx_t}{dt}+\left(\frac{\sigma-\xi}{\xi}\right)\frac{m}{c}\left(i-i^m\right)\left(\frac{dx_t}{dt}-\frac{d\tilde m_t}{dt}\right)=\sigma\left(i_t-\pi_t\right)
\tag{14}
$$

$$
\left(E_tx_{t+1}-x_t\right)+\left(\frac{\sigma-\xi}{\xi}\right)\frac{m}{c}\left(i-i^m\right)\left[\left(E_tx_{t+1}-x_t\right)-E_t\left(\tilde m_{t+1}-\tilde m_t\right)\right]=\sigma\left(i_t-E_t\,\pi_{t+1}\right)
\tag{15}
$$

> $\tilde m_t=\log m_t$。式(14)は式(11)から、同じ近似で得る。式(15)は離散時間版。

| 記号・項目 | 意味 |
|---|---|
| $x_t$ | 対数消費（産出ギャップとして読む） |
| $\tilde m_t$ | 対数の実質貨幣残高 |
| $m/c,\ i-i^m$ | 定常状態の貨幣・消費比、金利スプレッド |

### 1.4 ハミルトニアンによる導出（オブストフェルド（1984））

**目的と制約**

$$
\max\int_{0}^{\infty}e^{-\delta t}\left[u(c_t)+v(m_t)\right]dt\qquad\text{subject to}\qquad \dot m_t=\left(y_t-c_t-s_t\right)-m_t\frac{\dot P_t}{P_t}
\tag{16}
$$

> 名目貨幣は、所得が消費と純納税を上回る分だけ積み上がる：$dM_t=(y_t-c_t-s_t)P_tdt$。$m_t\equiv M_t/P_t$ の時間微分をとると制約が得られる（効用は分離可能 $u(c)+v(m)$）。

**一階条件**

$$
\begin{aligned}
u'(c_t)&=\mu_t\\
\dot\mu_t-\delta\mu_t&=-v'(m_t)+\mu_t\frac{\dot P_t}{P_t}\\
\lim_{t\to\infty}e^{-\delta t}m_t\mu_t&=0
\end{aligned}
\tag{17}
$$

> 現在価値のハミルトニアンは $H=u(c_t)+v(m_t)+\mu\left[(y_t-c_t-s_t)-m_t\dot P_t/P_t\right]$。$\mu$ を消去すると、おなじみの貨幣需要の条件

$$
\frac{v'(m_t)}{u'(c_t)}=-\frac{\dot\mu_t}{\mu_t}+\delta+\frac{\dot P_t}{P_t}=i_t
$$

> が得られる（消費が一定なら $\dot\mu=0$ で、安全な実質金利は $r=\delta$。安全な実質投資を加えると $r^f_t=\delta-\dot\mu_t/\mu_t$。どちらでも右辺は名目金利）。式(17)の最後の式が横断性条件で、実質貨幣残高の割引現在価値が金利より速く増えてはならないことを意味する：$\lim_{t\to\infty}e^{-\delta t}u'(c_t)m_t=0$。

### 1.5 主要帰結

**主要式**

$$
\boxed{\begin{aligned}
\alpha\left(\frac{m_t}{c_t}\right)^{-\theta}&=\underbrace{i_t-i^m_t}_{\text{貨幣需要：金利弾力性}\ \xi=1/\theta}\\
\frac{dx_t}{dt}+\left(\sigma-\xi\right)\frac{m}{c}\frac{d\left(i_t-i^m_t\right)}{dt}&=\underbrace{\sigma\left(i_t-\pi_t\right)}_{\text{異時点間の代替の式（IS曲線）}}
\end{aligned}}
\tag{18}
$$

**比較静学**

| 変化 | 結果 | 符号・式 |
|---|---|---|
| $\theta=\gamma$（分離可能、$\sigma=\xi$） | 貨幣が異時点間の代替の式に影響しない | 式(12) |
| $\sigma\gt\xi$（貨幣と消費が補完、$u_{cm}\gt 0$） | 金利スプレッドの上昇が消費成長を変える（貨幣成長が金利の上昇のように働く） | 式(12) |
| $\theta\to\infty$（マネタリストの極限） | 貨幣需要は $M/P=c/\alpha$、金利弾力性は0 | 1.2節の表 |
| $\xi\lt 1$、金利 $\to 0$ | 貨幣保有の利子費用が0に近づく | 式(9) |
| 利子費用 $\frac{m}{c}(i-i^m)$ が小さい | IS曲線の貨幣の項が小さい（近似が成り立つ） | 式(12) |
| 貨幣集計量を手段とする場合 | 式(14)、(15)の貨幣の項を通じて産出が動く | 式(14)、(15) |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 貨幣需要が金利に反応し、所得に比例する | CESの貨幣需要（式(8)）。所得弾力性1、金利弾力性 $\xi=1/\theta$ |
| 貨幣が消費の異時点間の配分を歪める | 非分離効用（$\theta\ne\gamma$）での、式(4)、(11)の貨幣の項 |
| 新ケインジアン・モデルで貨幣がインフレ・産出の動学に影響しない場合 | 分離可能な効用（$\theta=\gamma$）、または利子費用が小さい場合（式(12)） |
| 離散時間の貨幣需要に出る病理が連続時間では出ない | 連続時間は金利と物価の変化が日中も続くので、貨幣保有に常に費用がかかる |
| 貨幣を使った金融政策の分析（貨幣集計量を政策手段） | IS曲線を貨幣量で書いた式(14)、(15) |

## 3. 整理している点 {#sec3}

- 貨幣需要の金利弾力性と、異時点間の代替弾力性を、別々のパラメータ（$\xi=1/\theta$、$\sigma=1/\gamma$）として分けられる。
- 貨幣が新ケインジアンのIS曲線に影響するのは、効用が貨幣と消費で非分離なとき（$\theta\ne\gamma$）で、その大きさは貨幣保有の利子費用（所得に対して小さい）に比例する。
- 連続時間のモデルは、タイミングの慣行に由来する病理を避け、ハミルトニアンの標準的な方法で一階条件と横断性条件を導ける。

## 4. 対象外の現象 {#sec4}

- この付録は、効用に貨幣を入れたモデルの導出であって、財政理論の主張そのものではありません。第19章の本文（このモデルを使った均衡の分析）、第20章（粘着価格モデル）は、この記事の元PDFに含まれません。
- 書籍の式(A4.11)の途中の計算（偏導関数、曲率、交差項の代入）は、この記事では式(10)と式(11)の結果だけを示し、完全には再現していません。
- コブ・ダグラスの効用関数の指数の形、式(9)の利子費用の式は、書籍の記号の読み取りに不確かさがあり、補足として整理した形を示しました（記事内に明記）。
- 割引率 $\delta$ の項は、式(12)で偏差で表すと落ちる形にしました。$\delta$ を含む形（式(11)）は示しています。
- 付録A4の効用関数は、1.4節のハミルトニアンの導出では分離可能（$u(c)+v(m)$）なものに限っています。非分離のCES（1.2、1.3節）とは異なるケースの導出です。
- 書籍は、このモデルを使った新ケインジアン・モデルの数値結果（貨幣の影響の大きさ）をこの付録では示していません。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
効用 (1) ＋ 予算制約 (2)(3)
   ├─ 消費の一階条件 → (4) 異時点間
   └─ 貨幣の一階条件 → (5) 貨幣需要

CES効用 (6) → 偏導関数 → (7)(8)(9) 貨幣需要
          → (10) 曲率・交差項
(4)+(10) → (11) → (12) 金利で書く → (13) 離散
                └→ (14)(15) 貨幣集計量で書く

ハミルトニアン (16) → (17) 一階条件・横断性条件

主要帰結 (18)
```

### A.1 使う道具

**T1 対数微分**

$d\ln f=\frac{f'}{f}dx$。べき乗の積や和の曲率を求めるのに使う。

**T2 時間微分と代入**

一階条件を時間で微分し、均衡の条件を代入する。

**T3 定常状態のまわりの一次近似**

$x_t=\log c_t$ などの変数を、定常状態のまわりで近似する。小さい量（利子費用 $\frac{m}{c}(i-i^m)$）は1次までとる。

### A.2 式(4)・式(5)の導出

**Step 1　ラグランジアン**

乗数 $\lambda$ を予算制約（式(2)）に付ける。$c_t$ について：$e^{-\delta t}u_c(t)=\lambda e^{-\int_0^tr_sds}$。

**Step 2　時間微分（T2）**

両辺を時間で微分すると $-\delta e^{-\delta t}u_c+e^{-\delta t}\left[u_{cc}\frac{dc}{dt}+u_{cm}\frac{dm}{dt}\right]=-r_t\lambda e^{-\int r}$。右辺は $-r_te^{-\delta t}u_c$。$e^{-\delta t}u_c$ で割ると

$\frac{u_{cc}}{u_c}\frac{dc}{dt}+\frac{u_{cm}}{u_c}\frac{dm}{dt}=\delta-r_t$。

**Step 3　弾力性の形にする**

両辺に $dt$ をかけ、$c$ と $m$ の項を弾力性（$\frac{cu_{cc}}{u_c}\frac{dc}{c}$、$\frac{mu_{cm}}{u_c}\frac{dm}{m}$）で書くと、式(4)。

**Step 4　貨幣（式(5)）**

$M_t$ について：$e^{-\delta t}u_m(t)\frac{1}{P_t}=\lambda e^{-\int r}(i_t-i^m_t)\frac{1}{P_t}$（貨幣保有の費用が予算制約の被積分関数に入る）。式(4)の導出と同じ $\lambda e^{-\int r}=e^{-\delta t}u_c$ を使うと、$u_m=u_c(i_t-i^m_t)$。

**確認**

$i_t=i^m_t$（貨幣が完全に利子を払う）なら $u_m=0$：貨幣の限界効用がゼロの飽和点で保有される。

| 入力・使う道具 | 内容 |
|---|---|
| 式(1)〜式(3) | 目的関数、予算制約 |
| T2 | 時間微分と代入 |

### A.3 式(7)〜式(10)の導出

**Step 1　偏導関数（T1）**

$S\equiv c^{1-\theta}+\alpha m^{1-\theta}$ とおくと、$u=\frac{S^{(1-\gamma)/(1-\theta)}}{1-\gamma}$。$u_c=S^{\frac{\theta-\gamma}{1-\theta}}c^{-\theta}$、$u_m=S^{\frac{\theta-\gamma}{1-\theta}}\alpha m^{-\theta}$。

**Step 2　貨幣需要（式(7)、(8)）**

比 $u_m/u_c=\alpha(m/c)^{-\theta}$。式(5)より $=i-i^m$。$m/c$ について解いて式(8)（$\xi=1/\theta$）。

**Step 3　定常状態で正規化（式(9)）**

式(8)を定常状態の式で割ると、$\alpha$ が消えて式(9)。

**Step 4　曲率（式(10)）（T1）**

$\frac{d\ln u_c}{d\ln c}=\frac{\theta-\gamma}{1-\theta}\cdot\frac{(1-\theta)c^{1-\theta}}{S}-\theta=\frac{(\theta-\gamma)c^{1-\theta}-\theta S}{S}=-\frac{\gamma c^{1-\theta}+\theta\alpha m^{1-\theta}}{S}$。分子分母を $c^{1-\theta}$ で割り、$s=\alpha(m/c)^{1-\theta}$ とおくと $-\frac{\gamma+\theta s}{1+s}$。交差項は $\frac{d\ln u_c}{d\ln m}=\frac{\theta-\gamma}{1-\theta}\cdot\frac{(1-\theta)\alpha m^{1-\theta}}{S}=\frac{(\theta-\gamma)s}{1+s}$。式(7)から $s=\alpha(m/c)^{1-\theta}=(m/c)\cdot\alpha(m/c)^{-\theta}=(m/c)(i-i^m)$。

**確認**

$\theta=\gamma$ なら交差項は0（分離可能）で、曲率は $-\gamma$。

| 入力・使う道具 | 内容 |
|---|---|
| 式(6)、式(5) | CESの効用、貨幣需要の一階条件 |
| T1 | 対数微分 |

### A.4 式(11)〜式(15)の導出

**Step 1　式(10)を式(4)に代入（T2）**

式(4)の左辺 $\frac{cu_{cc}}{u_c}\frac{dc}{c}+\frac{mu_{cm}}{u_c}\frac{dm}{m}$ に式(10)を代入し、符号を反転すると、右辺は $(r_t-\delta)dt$。整理して $\gamma\frac{dc}{c}+(\theta-\gamma)\frac{s}{1+s}\left(\frac{dc}{c}-\frac{dm}{m}\right)=-\delta\,dt+(i_t-\pi_t)dt$。$\sigma=1/\gamma$、$\xi=1/\theta$ を使い、$\sigma$ を掛けると $(\theta-\gamma)\sigma=\frac{\sigma-\xi}{\xi}$ から式(11)。

**Step 2　貨幣需要を微分（T1、T3）**

式(9)を対数微分すると、$\frac{dc}{c}-\frac{dm}{m}=\xi\frac{d(i-i^m)}{i-i^m}$ の形になる。これを式(11)に代入し、利子費用が小さい（$s\ll 1$）として分母の $1+s$ を1とし、$\delta$ を偏差で落とすと式(12)。

**Step 4　離散時間（式(13)）**

式(12)を離散化し、$\frac{dx}{dt}\to E_tx_{t+1}-x_t$、$\frac{d(i-i^m)}{dt}\to E_t(i_{t+1}-i^m_{t+1})-(i_t-i^m_t)$、$\pi_t\to E_t\pi_{t+1}$ とおく。

**Step 5　貨幣集計量（式(14)、(15)）**

Step 1 の式に対して、$\frac{dm}{m}=d\tilde m$ を残し、同じ近似をとる。

**確認**

$\sigma=\xi$（分離可能）なら式(12)は $\frac{dx_t}{dt}=\sigma(i_t-\pi_t)$ で、貨幣の項が消える。

| 入力・使う道具 | 内容 |
|---|---|
| 式(4)、式(10) | 異時点間の条件、曲率 |
| T1, T2, T3 | 対数微分、代入、定常状態のまわりの近似 |

### A.5 式(16)・式(17)の導出

**Step 1　制約（式(16)）**

$dM_t=(y_t-c_t-s_t)P_tdt$。$m_t=M_t/P_t$ の時間微分をとると $\dot m_t=\frac{\dot M_t}{P_t}-m_t\frac{\dot P_t}{P_t}=(y_t-c_t-s_t)-m_t\frac{\dot P_t}{P_t}$。

**Step 2　一階条件（式(17)）**

$\frac{\partial H}{\partial c}=0$：$u'(c)-\mu=0$。$-\frac{\partial H}{\partial m}=\dot\mu-\delta\mu$：$-v'(m)+\mu\frac{\dot P}{P}$（$\partial H/\partial m=v'(m)-\mu\dot P/P$ の符号反転）。横断性条件 $\lim e^{-\delta t}m_t\mu_t=0$。

**Step 3　貨幣需要**

$\mu=u'(c)$ を第2式に代入し、$u'(c)$ で割ると $\frac{v'(m)}{u'(c)}=-\frac{\dot\mu}{\mu}+\delta+\frac{\dot P}{P}$。この右辺が名目金利 $i_t$（実質金利 $-\dot\mu/\mu+\delta$ にインフレ率を足したもの）。

**確認**

消費が一定なら $\dot\mu=0$、$r=\delta$、$i_t=\delta+\pi_t$（フィッシャー関係）で、貨幣需要は $v'(m)/u'(c)=\delta+\pi_t$。

| 入力・使う道具 | 内容 |
|---|---|
| 式(16)、式(17) | 制約、ハミルトニアン |
| T2 | 時間微分と代入 |

---

**© 2021 John H. Cochrane**. *The Fiscal Theory of the Price Level*, Princeton University Press. 本記事は同書オンライン付録A4の数理モデルを要約・再構成したものです。式番号は本記事で振り直しています。
{% endraw %}
