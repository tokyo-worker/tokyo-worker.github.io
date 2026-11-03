---
layout: post
title: "Theo van Uem (2023) \"Extended Gambler's Ruin Problem\"、arXiv:1301.2702 [math.PR]: 数理モデル"
date: 2026-11-04 00:00:00 +0900
categories: [数学, 確率論]
math: true
---

{% raw %}
# Theo van Uem (2023) "Extended Gambler’s Ruin Problem"、arXiv:1301.2702v3 [math.PR]: 数理モデル
### [pqrs] ランダムウォークによる拡張ギャンブラー破産問題の数理モデル早見表

---

## この記事について

**論文の紹介**

Theo van Uem (Amsterdam University of Applied Sciences) による論文 "Extended Gambler’s Ruin Problem"（arXiv:1301.2702v3 [math.PR]、2023年3月25日版、MSC: 60G50, 60J05）です。古典的なギャンブラー破産問題（1歩の前進・後退のみ）に、**その場に留まる**（停滞）と**現在の状態で吸収される**（ゲームの打ち切り）の2つの動作を加えた「[pqrs] ランダムウォーク」を定義し、次の量を厳密に求めています。

- 吸収確率（有限区間・半無限区間・無限区間）と、その $s\to0$ での漸近挙動
- 吸収までの期待時間と、その漸近挙動
- 歩みの最大値・最小値の分布
- ゲームの価値（最終位置の期待値）
- 停滞を取り除いた「共役ランダムウォーク」との対応

**この記事の位置づけ**

この記事は、上記の論文の**背景にある数理モデル**（[pqrs] ランダムウォークとして定式化された拡張ギャンブラー破産問題）についての記事です。論文の数理モデルは簡易化せず、元の定理の式をそのまま（結果の式を省略せずに）収録し、式・前提・記号・導出を中心にした早見表にしています。背景となる古典モデルは Feller (1968) 第1巻 第XIV章のギャンブラー破産問題で、論文はこれに El-Shehawey ら（勝敗確率が資金に依存、引き分けあり）や Yamamoto（超幾何関数による「停止」の導入）の流れを受けて、吸収確率 $s$ を加えたものです。

---

## 目次

- [1. 数理モデル](#sec1)
- [2. 説明できる現象](#sec2)
- [3. 整理している点](#sec3)
- [4. モデルの対象外](#sec4)
- [5. 主要文献・関連論文](#sec5)
- [付録：導出手順](#appendix)

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間・情報構造**

整数格子 $\mathbb{Z}$ 上を動く1人のギャンブラー（粒子）。離散時間。出発点は $i_0$。各期に、現在の状態 $i$ から「前進 $i\to i+1$」「後退 $i\to i-1$」「停滞（その場に留まる）」「現状態での吸収（ゲーム終了）」のいずれか1つが起こる。確率は状態・時刻によらず一定。

**A1 [pqrs] 遷移**

前進確率 $p$、後退確率 $q$、停滞確率 $r$、吸収確率 $s$。正則条件は式(1)。$s=0$ を許すと古典的破産問題（またはその停滞付き版）になり、期待時間の式に現れる $1/s$ が定義できない。

$$
\underbrace{p+q+r+s=1}_{\text{確率の総和}},\qquad \underbrace{pqs\gt 0}_{p,q,s\text{ は正}}\tag{1}
$$

**A2 領域と吸収壁**

論文が扱う3つの問題。（a）$[0,N]$：両端 $0,N$ が吸収壁。壁以外の状態では4つの動作が可能。（b）$[0,\infty)$：$0$ のみが吸収壁。（c）$(-\infty,\infty)$：吸収壁なし（出発点 $0$、利得 $0$ から開始）。一般には $[a,b]$、$[a,\infty)$、$(-\infty,b]$ を扱い、$a$、$b$ は吸収壁。壁に到達すると確率 $1$ で吸収される。

**A3 吸収の確実性**

$s\gt0$ なので、いずれの領域でも確率 $1$ で吸収が起こる（論文第4章冒頭）。外すと期待時間は有限と限らない。

**A4 時間の数え方**

吸収が起こる遷移も1時間単位として数える（式(25)の「$s\cdot1$」）。

**A5 ゲームの価値**

吸収後の最終位置を $\mathfrak{n}$ とし、$i$ 出発での $\mathfrak{n}$ の期待値を $v_i$ と定義する。

**A6 出発点**

基本は $a\lt i_0\lt b$。壁上・壁の隣（$i_0=a,\,a+1,\,b-1,\,b$）でも同じ結果が成り立つ（論文：証明は $a+2\le i_0\le b-2$ で行い、「計算により」他の場合も成立と記述）。

### 1.1 基本量と基本差分方程式（Theorem 1）

**訪問回数の期待値**

$$
x_j=x_{i,j}=\underbrace{\sum_{k=0}^{\infty}p_{i,j}^{(k)}}_{\text{状態 i 出発の状態 j 訪問回数の期待値}}\tag{2}
$$

> 以下 $i$ を出発点 $i_0$ とし、$x_n$ は $i_0$ から出発して状態 $n$ を訪れる回数の期待値。

**基本差分方程式**

$$
(1-r)\,x_n=\underbrace{\delta(n,i_0)}_{\text{出発点での1回}}+\underbrace{p\,x_{n-1}}_{n-1\text{ から前進}}+\underbrace{q\,x_{n+1}}_{n+1\text{ から後退}}\qquad(a\lt n\lt b)\tag{3}
$$

> 最終歩の解析 $x_n=\delta(n,i_0)+p\,x_{n-1}+q\,x_{n+1}+r\,x_n$ から得る。条件は $pq\gt0$、$p+q+r\lt1$。

**解（Theorem 1）**

$$
x_n=\begin{cases}\underbrace{\zeta\,\xi_1^{\,n-i_0}}_{\text{特解}}+\underbrace{C_1\xi_1^{\,n}+C_2\xi_2^{\,n}}_{\text{同次解}} & (a\le n\le i_0)\\[4pt] \zeta\,\xi_2^{\,n-i_0}+C_1\xi_1^{\,n}+C_2\xi_2^{\,n} & (i_0\le n\le b)\end{cases}\tag{4}
$$

**特性根と係数**

$$
\begin{aligned}
\xi_1&=\underbrace{\frac{(1-r)+\sqrt{(1-r)^2-4pq}}{2q}}_{\text{大きい根}}\gt1,\qquad
0\lt\xi_2=\underbrace{\frac{(1-r)-\sqrt{(1-r)^2-4pq}}{2q}}_{\text{小さい根}}\lt1\\
\zeta&=\underbrace{\big[(1-r)^2-4pq\big]^{-1/2}}_{\text{特解の係数}}
\end{aligned}\tag{5}
$$

> $\xi_1,\xi_2$ は $q\xi^2-(1-r)\xi+p=0$ の2根。$\xi_1\xi_2=p/q$、$\xi_1+\xi_2=(1-r)/q$、$\zeta=1/\{q(\xi_1-\xi_2)\}$。解は一意（2つの連続する $n$ の値が決まれば式(3)で全体が決まる）。

| 記号・項目 | 意味 |
|---|---|
| $i_0$ | 出発点 |
| $a,b$ | 区間の端（吸収壁） |
| $p,q,r,s$ | 前進・後退・停滞・吸収の確率 |
| $\delta(n,i_0)$ | クロネッカーのデルタ（$n=i_0$ のとき $1$、他は $0$） |
| $x_n$ | 状態 $n$ の訪問回数の期待値 |
| $\xi_1,\xi_2$ | 特性方程式の根（$\xi_1\gt1$、$0\lt\xi_2\lt1$） |
| $\zeta$ | 特解の係数 |
| $C_1,C_2$ | 境界条件で決まる定数 |

### 1.2 有限区間 $[a,b]$ の吸収確率（Theorem 2）

**吸収確率**

$$
\Pr(\text{状態 }n\text{ で吸収})=\underbrace{s_n\,x_n}_{\text{吸収確率}},\qquad s_a=s_b=1,\quad s_i=s\ \ (i=a+1,\dots,b-1)\tag{6}
$$

**壁での吸収確率**

$$
x_a=x_a^{[a,b]}=\underbrace{\frac{\xi_1^{\,b-i_0}-\xi_2^{\,b-i_0}}{\xi_1^{\,b-a}-\xi_2^{\,b-a}}}_{\text{下の壁 a に吸収}}\tag{7}
$$

$$
x_b=x_b^{[a,b]}=\underbrace{\frac{\xi_2^{\,a-i_0}-\xi_1^{\,a-i_0}}{\xi_2^{\,a-b}-\xi_1^{\,a-b}}}_{\text{上の壁 b に吸収}}\tag{8}
$$

**内部状態の訪問回数**

$$
x_n=x_n^{[a,b]}=\begin{cases}
\dfrac{\zeta\,(\xi_2^{\,b-i_0}-\xi_1^{\,b-i_0})(\xi_1^{\,a}\xi_2^{\,n}-\xi_1^{\,n}\xi_2^{\,a})}{\xi_1^{\,b}\xi_2^{\,a}-\xi_1^{\,a}\xi_2^{\,b}} & (a+1\le n\le i_0)\\[14pt]
\dfrac{\zeta\,(\xi_2^{\,a-i_0}-\xi_1^{\,a-i_0})(\xi_1^{\,b}\xi_2^{\,n}-\xi_1^{\,n}\xi_2^{\,b})}{\xi_1^{\,b}\xi_2^{\,a}-\xi_1^{\,a}\xi_2^{\,b}} & (i_0\le n\le b-1)
\end{cases}\tag{9}
$$

**確率の総和**

$$
\underbrace{\sum_{n=a}^{b}s_n\,x_n=1}_{\text{確率1で吸収される}}\qquad(s_a=s_b=1;\ s_i=s\ (i=a+1,\dots,b-1))\tag{10}
$$

> 内部状態 $n$ で吸収される確率は $s\,x_n$、壁では $x_a,x_b$（壁では $s_j=1$）。

| 記号・項目 | 意味 |
|---|---|
| $s_n$ | 状態 $n$ での吸収確率（壁は $1$、内部は $s$） |
| $x_n^{[a,b]}$ | 区間 $[a,b]$（両端吸収）での状態 $n$ の訪問回数の期待値 |
| $x_a,x_b$ | 壁 $a$、$b$ への吸収確率 |

### 1.3 半無限・無限区間の吸収確率（Theorem 3, 4, 5）

**$[a,\infty)$（$a$ が吸収壁）**

$$
x_a^{[a,\infty)}=\underbrace{\xi_1^{\,a-i_0}}_{\text{壁 a への吸収確率}}\quad(a\lt i_0)\tag{11}
$$

$$
x_n=x_n^{[a,\infty)}=\begin{cases}\zeta\,\xi_1^{\,a-i_0}\big(\xi_1^{\,n-a}-\xi_2^{\,n-a}\big) & (a+1\le n\le i_0)\\[4pt] \zeta\,\xi_2^{\,n-a}\big(\xi_2^{\,a-i_0}-\xi_1^{\,a-i_0}\big) & (i_0\le n)\end{cases}\tag{12}
$$

> 他の状態 $n$ での吸収確率は $s\,x_n$。総和は $\sum_{n=a}^{\infty}s_nx_n=1$（$s_a=1$、$s_i=s$ $(i\gt a)$）。式(7)(9)で $b\to\infty$ としても得られる。

**$(-\infty,b]$（$b$ が吸収壁）**

$$
x_b^{(-\infty,b]}=\underbrace{\xi_2^{\,b-i_0}}_{\text{壁 b への吸収確率}}\quad(b\gt i_0)\tag{13}
$$

$$
x_n=x_n^{(-\infty,b]}=\begin{cases}\zeta\,\xi_1^{\,n-b}\big(\xi_1^{\,b-i_0}-\xi_2^{\,b-i_0}\big) & (n\le i_0)\\[4pt] \zeta\,\xi_2^{\,b-i_0}\big(\xi_2^{\,n-b}-\xi_1^{\,n-b}\big) & (i_0\le n\le b-1)\end{cases}\tag{14}
$$

**$(-\infty,\infty)$（壁なし）**

$$
x_n=x_n^{(-\infty,\infty)}=\begin{cases}\underbrace{\zeta\,\xi_1^{\,n-i_0}}_{\text{左側}} & (n\le i_0)\\[4pt] \underbrace{\zeta\,\xi_2^{\,n-i_0}}_{\text{右側}} & (n\ge i_0)\end{cases}\tag{15}
$$

> 状態 $n$ での吸収確率は $s\,x_n$。

$$
\underbrace{\sum_{n=-\infty}^{\infty}s\,x_n=1}_{\text{確率1で吸収される}}\tag{16}
$$

| 記号・項目 | 意味 |
|---|---|
| $x_n^{[a,\infty)}$、$x_n^{(-\infty,b]}$、$x_n^{(-\infty,\infty)}$ | 各領域での状態 $n$ の訪問回数の期待値 |
| $s\,x_n$ | 内部状態 $n$ での吸収確率 |

### 1.4 吸収確率の漸近挙動（$s\to0$：Lemma 6, Theorem 7）

> $(-\infty,\infty)$ について記述。$[0,N]$ と $[0,\infty)$ は「同じ手順で得られる」とされるが、論文に結果は示されていない。

**Lemma 6（$s\to0$）**

$p\gt q$ のとき：

$$
\xi_1\sim\underbrace{\frac pq\Big(1+\frac{s}{p-q}\Big)}_{\xi_1},\quad
\xi_2\sim\underbrace{1-\frac{s}{p-q}+\frac{ps^2}{(p-q)^3}}_{\xi_2},\quad
\zeta\sim\underbrace{\frac1{p-q}\Big[1-\frac{(p+q)s}{(p-q)^2}\Big]}_{\zeta}\tag{17}
$$

$p\lt q$ のとき：

$$
\xi_1\sim\underbrace{1+\frac{s}{q-p}}_{\xi_1},\quad
\xi_2\sim\underbrace{\frac pq\Big[1-\frac{s}{q-p}+\frac{qs^2}{(q-p)^3}\Big]}_{\xi_2},\quad
\zeta\sim\underbrace{\frac1{q-p}\Big[1-\frac{(p+q)s}{(p-q)^2}\Big]}_{\zeta}\tag{18}
$$

$p=q$ のとき（$t=\sqrt{s/p}$）：

$$
\xi_1\sim1+t+\tfrac12t^2+\tfrac18t^3,\quad
\xi_2\sim1-t+\tfrac12t^2-\tfrac18t^3,\quad
\zeta\sim\underbrace{\frac1{2pt}\Big(1-\tfrac18t^2\Big)}_{\zeta}\tag{19}
$$

**Theorem 7（出発点 $i_0=0$、$s\to0$、$p\gt q$）**

$$
s\,x_n\sim\underbrace{\frac{s}{p-q}}_{\text{主要項}}\left\{1-\Big[\underbrace{\frac{n}{p-q}}_{\text{距離の効果}}+\underbrace{\frac{p+q}{(p-q)^2}}_{\text{補正}}\Big]s\right\}\qquad(n\ge0)\tag{20}
$$

$$
s\,x_n\sim\underbrace{\Big(\frac pq\Big)^{n}}_{\text{左側の減衰}}\frac{s}{p-q}\left\{1-\Big[\frac{-n}{p-q}+\frac{p+q}{(p-q)^2}\Big]s\right\}\qquad(n\le0)\tag{21}
$$

$$
\sum_{n=-1}^{-\infty}s\,x_n\sim\frac{qs}{(p-q)^2}\left\{1-\frac{2p+q}{(p-q)^2}\,s\right\}\tag{22}
$$

$$
\sum_{n=1}^{\infty}s\,x_n\sim\underbrace{1-\frac{ps}{(p-q)^2}}_{\text{右側に吸収される確率}}\tag{23}
$$

**$s\to0$、$p=q$**

$$
\sum_{n=1}^{\infty}s\,x_n=\sum_{n=-1}^{-\infty}s\,x_n\sim\underbrace{\frac12-\frac14\sqrt{\frac sp}}_{\text{片側の吸収確率}},\qquad s\,x_0\sim\underbrace{\frac12\sqrt{\frac sp}}_{\text{出発点での吸収}}\tag{24}
$$

| 記号・項目 | 意味 |
|---|---|
| $\sim$ | $s\to0$ での漸近同値 |
| $t$ | $\sqrt{s/p}$（$p=q$ のときの展開変数） |

### 1.5 吸収までの期待時間（Theorem 8, 10, 11、Lemma 9）

**一歩目の解析**

領域 $D$ で状態 $i$ から出発したときの吸収までの期待時間を $m_i=m_i^{D}$ とする。

$$
m_i=\underbrace{p\,(m_{i+1}+1)}_{\text{前進}}+\underbrace{q\,(m_{i-1}+1)}_{\text{後退}}+\underbrace{r\,(m_i+1)}_{\text{停滞}}+\underbrace{s\cdot1}_{\text{吸収}}\tag{25}
$$

**差分方程式（Theorem 8）**

$$
(1-r)\,m_i=p\,m_{i+1}+q\,m_{i-1}+1\qquad(i\in\mathbb{Z},\ p+q+r+s=1,\ pqs\gt0)\tag{26}
$$

**一般解**

$$
m_i=\underbrace{a\,\xi_1^{-i}+b\,\xi_2^{-i}}_{\text{同次解}}+\underbrace{\frac1s}_{\text{特解}}\qquad(i\in\mathbb{Z})\tag{27}
$$

> 期待時間は一意（式(4)の後の一意性と同じ議論）。

**Lemma 9（領域の大小）**

$$
m_i^{[0,N]}\ \le\ m_i^{[0,\infty)}\ \le\ \underbrace{m_i^{(-\infty,\infty)}=\frac1s}_{\text{壁なし：平均 }1/s}\tag{28}
$$

**$[0,N]$（Theorem 10）**

$$
m_i=\frac1s\left\{\underbrace{\frac{(1-\xi_1^{\,N-i})(1-\xi_2^{\,N})-(1-\xi_2^{\,N-i})(1-\xi_1^{\,N})}{\xi_1^{\,N}-\xi_2^{\,N}}}_{\text{壁による短縮}}\right\}\qquad(i=0,1,\dots,N)\tag{29}
$$

**$[0,\infty)$（Theorem 11）**

$$
m_i=\underbrace{\frac1s}_{\text{壁なしの平均}}\Big(1-\underbrace{\xi_1^{-i}}_{\text{壁 0 の効果}}\Big)\qquad(i=0,1,\dots)\tag{30}
$$

> 式(29)で $N\to\infty$ としても式(30)を得る。境界条件は $m_0=m_N=0$（$[0,N]$）、$m_0=0$（$[0,\infty)$）。

| 記号・項目 | 意味 |
|---|---|
| $m_i^{D}$ | 領域 $D$ で $i$ 出発のときの吸収までの期待時間 |
| $a,b$ | 式(27)の定数（境界条件で決まる。区間端 $a,b$ とは別） |
| $N$ | 区間 $[0,N]$ の右端 |

### 1.6 期待吸収時間の漸近挙動（$s\to0$：Theorem 12）

> $[0,\infty)$ について記述（再帰的な場合と一時的な場合の両方が現れる）。$[0,N]$ と $(-\infty,\infty)$ は「同じ手順で得られる」とされる。

**$p\gt q$**

$$
m_i\sim\underbrace{\frac{1-(q/p)^{i}}{s}}_{O(1/s)}+\frac{i\,(q/p)^{i}}{p-q}\qquad(s\to0)\tag{31}
$$

**$p\lt q$**

$$
m_i\sim\underbrace{\frac{i}{q-p}}_{\text{有限な主要項}}-\frac12\,i\left\{\frac{p+q}{(q-p)^3}+\frac{i}{(q-p)^2}\right\}s\qquad(s\to0)\tag{32}
$$

> 論文の印字は $+\tfrac12 i\{\frac{p+q}{(q-p)^3}-\frac{i}{(q-p)^2}\}s$ だが、式(27)(30)からの導出（付録A.7）と $i=1$ の検算で、本式の符号になる。本記事は導出結果を採用（論文の誤植と判断）。

**$p=q$**

$$
m_i\sim\underbrace{i\sqrt{\frac1{ps}}}_{O(s^{-1/2})}-\frac{i^2}{2p}\qquad(s\to0)\tag{33}
$$

| 記号・項目 | 意味 |
|---|---|
| $(q/p)^i$ | $p\gt q$ での壁 $0$ への後退のしにくさ |

### 1.7 最大値・最小値の分布（Theorem 13、5.2、5.3）

> $m$ を歩みの最小値、$M$ を最大値とする。

**壁化による恒等式（$[0,N]$）**

$$
P(m=a)=\underbrace{x_a^{[a,N]}-x_{a-1}^{[a-1,N]}}_{a\text{ を壁にして訪問確率の差}}\ \ (1\le a\le i_0),\qquad
P(M=b)=x_b^{[0,b]}-x_{b+1}^{[0,b+1]}\ \ (i_0\le b\le N-1)\tag{34}
$$

**$[0,N]$**

$$
P(m=0)=\underbrace{\frac{\xi_1^{\,N-i_0}-\xi_2^{\,N-i_0}}{\xi_1^{\,N}-\xi_2^{\,N}}}_{\text{壁 0 に吸収}}\tag{35}
$$

$$
P(m=a)=\big(\xi_1^{\,N-i_0}-\xi_2^{\,N-i_0}\big)\left\{\frac{1}{\xi_1^{\,N-a}-\xi_2^{\,N-a}}-\frac{1}{\xi_1^{\,N-a+1}-\xi_2^{\,N-a+1}}\right\}\qquad(1\le a\le i_0)\tag{36}
$$

$$
P(M=b)=\big(\xi_2^{\,-i_0}-\xi_1^{\,-i_0}\big)\left\{\frac{1}{\xi_2^{\,-b}-\xi_1^{\,-b}}-\frac{1}{\xi_2^{\,-b-1}-\xi_1^{\,-b-1}}\right\}\qquad(i_0\le b\le N-1)\tag{37}
$$

$$
P(M=N)=\underbrace{\frac{\xi_2^{\,-i_0}-\xi_1^{\,-i_0}}{\xi_2^{\,-N}-\xi_1^{\,-N}}}_{\text{壁 N に吸収}}\tag{38}
$$

**$[0,\infty)$**

$$
P(m=0)=x_0^{[0,\infty)}=\xi_1^{\,-i_0}\tag{39}
$$

$$
P(m=a)=x_a^{[a,\infty)}-x_{a-1}^{[a-1,\infty)}=\xi_1^{\,a-i_0-1}(\xi_1-1)\qquad(1\le a\le i_0)\tag{40}
$$

$$
P(M=b)=\big(\xi_2^{\,-i_0}-\xi_1^{\,-i_0}\big)\left\{\frac{1}{\xi_2^{\,-b}-\xi_1^{\,-b}}-\frac{1}{\xi_2^{\,-b-1}-\xi_1^{\,-b-1}}\right\}\qquad(b\ge i_0)\tag{41}
$$

**$(-\infty,\infty)$**

$$
P(m=a)=x_a^{[a,\infty)}-x_{a-1}^{[a-1,\infty)}=\underbrace{\xi_1^{\,a-1-i_0}(\xi_1-1)}_{\text{幾何型}}\qquad(a\le i_0)\tag{42}
$$

$$
P(M=b)=x_b^{(-\infty,b]}-x_{b+1}^{(-\infty,b+1]}=\underbrace{\xi_2^{\,b-i_0}(1-\xi_2)}_{\text{幾何型}}\qquad(b\ge i_0)\tag{43}
$$

| 記号・項目 | 意味 |
|---|---|
| $m,M$ | 吸収までの歩みの最小値・最大値 |
| $x_a^{[a,N]}$ | $a$ を吸収壁にした区間 $[a,N]$ での壁 $a$ への吸収確率（$a$ の訪問確率） |

### 1.8 ゲームの価値（Theorem 14）

**一歩目の解析**

$$
(1-r)\,v_i=p\,v_{i+1}+q\,v_{i-1}+\underbrace{s\,i}_{\text{状態 }i\text{ で吸収}}\tag{44}
$$

**価値と期待時間の関係**

$$
\begin{aligned}
v_i&=i+\underbrace{(p-q)}_{\text{1期あたりの期待利得}}\,\underbrace{m_i}_{\text{期待継続時間}}\\
g_i&=v_i-i=(p-q)\,m_i
\end{aligned}\tag{45}
$$

> $g_i$ は最終利得の期待値（$g_i=v_i-i$）。

**$[0,N]$ の価値（Theorem 17、付録A）**

$$
v_{i_0}=i_0+\underbrace{\frac{p-q}{s}}_{\text{係数}}\left\{1-\frac{\xi_1^{\,N-i_0}(1-\xi_2^{\,N})+\xi_2^{\,N-i_0}(\xi_1^{\,N}-1)}{\xi_1^{\,N}-\xi_2^{\,N}}\right\}\tag{46}
$$

| 記号・項目 | 意味 |
|---|---|
| $\mathfrak{n}$ | 吸収後の最終位置 |
| $v_i$ | $i$ 出発のときのゲームの価値（$\mathfrak{n}$ の期待値） |
| $g_i$ | 最終利得の期待値 |

### 1.9 共役ランダムウォーク（Lemma 15、Theorem 16）

**共役の定義**

$$
P_r=\frac{p}{1-r},\quad Q_r=\frac{q}{1-r},\quad S_r=\frac{s}{1-r}\qquad(P_r+Q_r+S_r=1,\ P_rQ_rS_r\gt0)\tag{47}
$$

> 共役 $[P_rQ_rS_r]$ ウォークは停滞なし（$r=0$）。$\Xi_i(P_r,Q_r,S_r)=\xi_i(P_r,Q_r,0,S_r)$（$i=1,2$）、$Z(P_r,Q_r,S_r)=\zeta(P_r,Q_r,0,S_r)$ と定義。

**根と係数の対応（Lemma 15）**

$$
\underbrace{\Xi_i(P_r,Q_r,S_r)=\xi_i(p,q,r,s)}_{\text{根は同じ}}\ \ (i=1,2),\qquad
\underbrace{Z(P_r,Q_r,S_r)=(1-r)\,\zeta(p,q,r,s)}_{\text{係数は }(1-r)\text{ 倍}}\tag{48}
$$

**同一になる量・変わる量（Theorem 16）**

$$
\underbrace{s\,\zeta=S_r\,Z}_{\text{吸収確率は同じ}},\quad \frac pq=\frac{P_r}{Q_r},\quad \frac sp=\frac{S_r}{P_r},\quad \frac{p-q}{s}=\frac{P_r-Q_r}{S_r},\qquad
\underbrace{m_i^{\text{共役}}=(1-r)\,m_i}_{\text{期待時間のみ }(1-r)\text{ 倍}}\tag{49}
$$

> 最大・最小、吸収確率、漸近挙動、ゲームの価値は元のウォークと共役ウォークで同じ。期待吸収時間のみ共役が $(1-r)$ 倍。

| 記号・項目 | 意味 |
|---|---|
| $P_r,Q_r,S_r$ | 停滞を取り除いた確率（共役） |
| $\Xi_i,Z$ | 共役ウォークの $\xi_i,\zeta$ |
| $m_i^{\text{共役}}$ | 共役ウォークの期待吸収時間 |

### 1.10 主要帰結

**主要式**

$$
\boxed{\begin{aligned}
&\Pr(\text{状態 }n\text{ で吸収})=\underbrace{s_n x_n}_{\text{式(6)(9)(12)(14)(15)}}\\
&m_i^{[0,N]}=\frac1s\cdot\frac{(1-\xi_1^{\,N-i})(1-\xi_2^{\,N})-(1-\xi_2^{\,N-i})(1-\xi_1^{\,N})}{\xi_1^{\,N}-\xi_2^{\,N}}\\
&m_i^{[0,\infty)}=\frac1s\big(1-\xi_1^{\,-i}\big)\\
&v_i=\underbrace{i}_{\text{出発点}}+\underbrace{(p-q)\,m_i}_{\text{期待利得}}
\end{aligned}}\tag{50}
$$

**比較静学・特殊ケース**

| 変化・ケース | 結果 | 符号・式 |
|---|---|---|
| 停滞 $r$ を共役でならす | 吸収確率・最大最小・価値は不変、期待時間は $(1-r)$ 倍 | 式(49) |
| $s\to0$、$p\gt q$（$[0,\infty)$） | $m_i=O(1/s)$（一時的、壁 $0$ に戻らない場合がある） | 式(31) |
| $s\to0$、$p\lt q$（$[0,\infty)$） | $m_i\to i/(q-p)$（有限、壁に落ちる） | 式(32) |
| $s\to0$、$p=q$（$[0,\infty)$） | $m_i=O(s^{-1/2})$ | 式(33) |
| $p=q$（価値） | $v_i=i$（公平なゲームでは期待最終位置は出発点） | 式(45) |
| $N\to\infty$ | 式(29)→式(30) | 式(29)(30) |
| 壁なし（吸収時間） | $m_i=1/s$（出発点によらない） | 式(28) |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 古典的なギャンブラーの破産 | $s\to0$、$r=0$ の極限で、壁での吸収確率が古典式に一致（付録A.3の確認） |
| 引き分け（停滞）の影響 | 停滞は共役ウォークで除去でき、吸収確率・最大最小・価値は変わらず、時間だけ $1/(1-r)$ 倍に伸びる（式(49)） |
| ゲームの途中打ち切り | 内部状態でも吸収確率 $s\,x_n$ で終了し、全状態の総和は $1$（式(10)(16)） |
| 有利・不利・公平の違い | $p\gt q$、$p\lt q$、$p=q$ で $\xi_1,\xi_2,\zeta$ の挙動が分かれ、吸収の分布と期待時間のオーダーが異なる（式(17)〜(24)、(31)〜(33)） |
| 最大・最小の分布 | 壁化により吸収確率の差として厳密に書ける（式(34)〜(43)） |
| ゲームの継続時間 | 壁があるほど短い。$[0,N]\le[0,\infty)\le(-\infty,\infty)=1/s$（式(28)） |
| ゲームの価値（期待最終位置） | 出発点＋（1期あたり期待利得 $p-q$）×（期待継続時間）（式(45)） |

## 3. 整理している点 {#sec3}

- 吸収確率・期待時間・最大最小・価値の全てが、1本の差分方程式（式(3)）と2根 $\xi_1,\xi_2$（式(5)）だけで閉じた形で表される。
- 「停滞」と「吸収」という2つの拡張が、それぞれ時間のスケール（$1-r$）と全確率の配分（$s$）に分離される（共役ウォーク）。
- 有限区間・半無限区間・無限区間が、$\xi_1\gt1$、$0\lt\xi_2\lt1$ と有界性だけで統一的に解かれる。

## 4. 対象外の現象 {#sec4}

- $p,q,r,s$ が状態や時刻に依存するモデル。本モデルでは一定。論文は先行研究として言及するだけ。
- $s=0$（吸収なし）。$pqs\gt0$ が前提で、古典的破産問題は $s\to0$ の極限としてのみ現れる。
- 2次元以上のランダムウォーク、連続時間・拡散近似。
- ギャンブラーによる戦略選択や賭け金の調整（各動作は確率的に起こる）。
- 株価・生態系・医療などへの応用の妥当性。導入部で背景として触れるのみで、論文は主張していない。
- $[0,N]$ の $s\to0$ 漸近（吸収確率・期待時間）と、$(-\infty,\infty)$ の期待時間の漸近。論文は「同じ手順で得られる」と述べるのみで、結果は示していない。

## 5. 主要文献・関連論文 {#sec5}

- **[金字塔的文献]** Feller, W. (1968). *An Introduction to Probability Theory and Its Applications*, Vol. 1 (3rd ed.), John Wiley & Sons, New York.（第XIV章：ランダムウォークと破産問題）
  - **位置づけ**: 古典的ギャンブラー破産問題の標準的な定式化と解法。本論文の出発点で、論文の参考文献 [3] にも挙がる。
- **[関連（逐次解析）]** Wald, A. (1945). Sequential tests of statistical hypotheses. *Annals of Mathematical Statistics*, 16(2), 117–186.
  - **位置づけ**: 吸収壁付きランダムウォークとして逐次確率比検定を扱い、破産問題の考え方を統計的検定に展開した古典。
- **[関連（ランダムウォークと拡散）]** Kac, M. (1947). Random walk and the theory of Brownian motion. *American Mathematical Monthly*, 54(7), 369–391.
  - **位置づけ**: ランダムウォークとブラウン運動の関係を整理した古典的解説。
- **[関連（歴史）]** Edwards, A. W. F. (1983). Pascal's problem: the 'Gambler's Ruin'. *International Statistical Review*, 51(1), 73–79.
  - **位置づけ**: ギャンブラー破産問題の歴史（Pascal の問題）を扱った論文。
- **[直接の先行研究]** Yamamoto, K. (2013). Hypergeometric solution to a gambler's ruin problem with a nonzero halting probability. arXiv:1211.4314.
  - **位置づけ**: 超幾何関数を用いて、動かない「停止」を導入したランダムウォークを扱った先行研究（本論文の参考文献 [4]、プレプリント）。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
式(1) p+q+r+s=1, pqs>0
   │ 最終歩の解析
   ▼
式(3) 差分方程式 ──T1,T2──► 式(4)(5) 基本解 ξ1, ξ2, ζ
   │
   ├─ 境界条件(T4)──► 式(6)〜(10) 有限区間 / 式(11)〜(16) 半無限・無限
   │        ├─ s→0 (T5) ──► 式(17)〜(24) 吸収確率の漸近
   │        └─ 壁化(T7) ──► 式(34)〜(43) 最大・最小
   ├─ 一歩目の解析(T6) ──► 式(25)〜(27) ──► 式(28)〜(30) 期待時間 ──► 式(31)〜(33) 漸近
   │        └─ 価値 ──► 式(44)〜(46)
   └─ 時間のスケール変換(T8) ──► 式(47)〜(49) 共役
```

### A.1 使う道具

**T1 特性方程式**

定数係数の線形2階差分方程式 $(1-r)x_n=p\,x_{n-1}+q\,x_{n+1}$ に $x_n=\xi^n$ を代入すると $q\xi^2-(1-r)\xi+p=0$。2根 $\xi_1,\xi_2$ を使い一般解は $C_1\xi_1^n+C_2\xi_2^n$。

**T2 フーリエ積分と留数定理**

$\delta(n,i_0)$ を非斉次項とする方程式の特解を、$\frac{1}{2\pi}\int_{-\pi}^{\pi}e^{-i\theta(n-i_0)}d\theta=\delta(n,i_0)$ を使って積分表示し、$z=e^{-i\theta}$ と置いて留数で評価する。

**T3 一意性**

連続する2つの $n$ の値が決まれば、式(3)から他の $x_n$ が全て決まる。2つの定数 $C_1,C_2$ は連続2点での値に合わせられる。

**T4 吸収壁は「壁での値が $0$ の仮想延長」**

壁 $a$ からは動かないので、$n=a+1$ の式は $x_a$ の流入を含まない。これは、式(4)の公式を $n=a$ に延長した値を $0$ とおくことと同値。上端 $b$ も同様。

**T5 漸近展開**

$s\to0$ で、2次方程式の根・平方根を $s$ のべきで展開。また $(1+x)^i\sim1+i\,x+\binom i2x^2$。

**T6 一歩目の解析**

最初の1歩で場合分けし、残りの期待値を $m$ や $v$ で表す。

**T7 事象の壁化**

「最小値 $\le a$」は「$a$ を訪れる」と同値で、$a$ を吸収壁に変えた問題の壁への吸収確率で表せる。

**T8 時間のスケール変換**

停滞は「同じ状態に戻る」だけなので、停滞を除いた確率 $P_r=p/(1-r)$ 等に直すと、時間の長さだけが変わる。

### A.2 基本定理（式(3)〜(5)）の導出

**Step 1　最終歩の解析（T6）**

$x_n=\delta(n,i_0)+p\,x_{n-1}+q\,x_{n+1}+r\,x_n$ を整理 → 式(3)。

**Step 2　特性方程式と根の性質（T1）**

同次部分に $x_n=\xi^n$ を代入 → $q\xi^2-(1-r)\xi+p=0$。$1-r=p+q+s$ より判別式は

$$
D=(1-r)^2-4pq=(p-q)^2+2s(p+q)+s^2\gt0
$$

なので実数の異なる2根。$f(\xi)=q\xi^2-(1-r)\xi+p$ とおくと $f(1)=-s\lt0$、$q\gt0$ なので $1$ は2根の間。$\xi_1\xi_2=p/q\gt0$、$\xi_1+\xi_2\gt0$ より $\xi_2\gt0$。よって $0\lt\xi_2\lt1\lt\xi_1$。また $\sqrt D=q(\xi_1-\xi_2)$ なので $\zeta=1/\{q(\xi_1-\xi_2)\}$ → 式(5)。

**Step 3　特解のフーリエ積分表示（T2）**

$$
x_n=\frac1{2\pi}\int_{-\pi}^{\pi}\frac{e^{-i\theta(n-i_0)}}{(1-r)-p\,e^{i\theta}-q\,e^{-i\theta}}\,d\theta
$$

とおくと、$(1-r)x_n-p\,x_{n-1}-q\,x_{n+1}=\frac1{2\pi}\int_{-\pi}^{\pi}e^{-i\theta(n-i_0)}d\theta=\delta(n,i_0)$ となり式(3)を満たす（代入による確認）。

**Step 4　留数計算（T2）**

$z=e^{-i\theta}$ とおくと $\theta$ が $-\pi\to\pi$ で $z$ は単位円を時計回り。向きを反転して

$$
x_n=\frac{i}{2\pi}\oint_{|z|=1}\frac{z^{\,n-i_0}\,dz}{q\,(z-\xi_1)(z-\xi_2)}\qquad(\text{反時計回り})
$$

単位円内の極は $\xi_2$（$n\lt i_0$ では $z=0$ も）。$n\ge i_0$：円内は $\xi_2$ のみで $x_n=-\mathrm{Res}_{\xi_2}=\xi_2^{\,n-i_0}/\{q(\xi_1-\xi_2)\}=\zeta\xi_2^{\,n-i_0}$。$n\lt i_0$：被積分関数は無限遠で $z^{\,n-i_0-2}$（次数 $\le-2$）のため無限遠の留数は $0$、全留数の和が $0$ なので $x_n=\mathrm{Res}_{\xi_1}=\zeta\xi_1^{\,n-i_0}$。

**Step 5　一般解**

特解に同次解を加え、$i_0$ の左右で別々の定数をおく：

$$
x_n=\begin{cases}\zeta\xi_1^{\,n-i_0}+C_{11}\xi_1^{\,n-i_0}+C_{12}\xi_2^{\,n-i_0}&(n\le i_0)\\ \zeta\xi_2^{\,n-i_0}+C_{21}\xi_1^{\,n-i_0}+C_{22}\xi_2^{\,n-i_0}&(n\ge i_0)\end{cases}
$$

**Step 6　$n=i_0$ での接続条件**

$n=i_0$ で両枝が一致：$C_{11}+C_{12}=C_{21}+C_{22}$。式(3)を $n=i_0$ で使う。$p/\xi_1=q\xi_2$、$p/\xi_2=q\xi_1$（$\xi_1\xi_2=p/q$）と $\zeta(1-r-2q\xi_2)=\zeta\sqrt D=1$ を使うと

$$
(1-r-q\xi_2)\,C_{11}+(1-r-q\xi_1)\,C_{12}=q\xi_1C_{21}+q\xi_2C_{22}
$$

$\xi_1+\xi_2=(1-r)/q$ より $1-r-q\xi_2=q\xi_1$、$1-r-q\xi_1=q\xi_2$ なので $\xi_1(C_{11}-C_{21})+\xi_2(C_{12}-C_{22})=0$。一致条件から $(C_{11}-C_{21})=-(C_{12}-C_{22})$ なので $(\xi_1-\xi_2)(C_{11}-C_{21})=0$。よって $C_{11}=C_{21}$、$C_{12}=C_{22}$（論文はクラメルの公式で同じ結論）。

**Step 7　定数を $n$ 基準に直して統一**

$C_1=C_{11}\xi_1^{-i_0}$、$C_2=C_{12}\xi_2^{-i_0}$ と置き直し → 式(4)。一意性は T3。

| 入力・使う道具 | 内容 |
|---|---|
| T1、T2、T3 | 特性方程式、フーリエ積分と留数、一意性 |
| 使った関係 | $\xi_1\xi_2=p/q$、$\xi_1+\xi_2=(1-r)/q$、$\sqrt D=q(\xi_1-\xi_2)$ |

**確認**

$r=0$、$s\to0$、$p+q=1$ なら $\xi_1\to p/q$、$\xi_2\to1$（$p\gt q$ のとき）で古典的ランダムウォークの特性根と一致。

### A.3 有限区間 $[a,b]$（式(6)〜(10)）の導出

**Step 1　壁の条件（T4）**

$a+2\le i_0\le b-2$ とする。$n=a+2,\dots,b-2$ で式(3)が成り立つので、$a+1\le n\le b-1$ で式(4)の形。$n=a+1$ の式は壁 $a$ から動けないので $(1-r)x_{a+1}=q\,x_{a+2}$。式(4)の公式 $f(n)$ は全ての $n$ で式(3)の左辺右辺関係を満たす（$n=a+1\ne i_0$ では $\delta=0$）ので、この条件は $p\,f(a)=0$、つまり $f(a)=0$ と同値。同様に $f(b)=0$。

**Step 2　$C_1,C_2$ を決める**

$f(a)=0$：$\zeta\xi_1^{\,a-i_0}+C_1\xi_1^{\,a}+C_2\xi_2^{\,a}=0$。$f(b)=0$：$\zeta\xi_2^{\,b-i_0}+C_1\xi_1^{\,b}+C_2\xi_2^{\,b}=0$。$\Delta=\xi_1^{\,b}\xi_2^{\,a}-\xi_1^{\,a}\xi_2^{\,b}$ として

$$
C_1=\frac{\zeta\,\xi_2^{\,b}\,(\xi_1^{\,a-i_0}-\xi_2^{\,a-i_0})}{\Delta},\qquad
C_2=\frac{\zeta\,\xi_1^{\,a}\,(\xi_2^{\,b-i_0}-\xi_1^{\,b-i_0})}{\Delta}
$$

**Step 3　代入して整理 → 式(9)**

$n\le i_0$ で式(4)に代入し、$\xi_1^{\,n-i_0}\Delta$ と $C_1\xi_1^{\,n}$、$C_2\xi_2^{\,n}$ の項を展開すると、$\xi_1^{\,n+a-i_0}\xi_2^{\,b}$ が打ち消し合い、残りが $(\xi_2^{\,b-i_0}-\xi_1^{\,b-i_0})(\xi_1^{\,a}\xi_2^{\,n}-\xi_1^{\,n}\xi_2^{\,a})$ になる → 式(9)の上段。$n\ge i_0$ も同様。

**Step 4　壁の吸収確率 → 式(7)(8)**

壁 $a$ からは $x_a=q\,x_{a+1}$。式(9)の $n=a+1$ では $\xi_1^{\,a}\xi_2^{\,a+1}-\xi_1^{\,a+1}\xi_2^{\,a}=\xi_1^{\,a}\xi_2^{\,a}(\xi_2-\xi_1)$。$q\zeta(\xi_1-\xi_2)=1$ と $\Delta=\xi_1^{\,a}\xi_2^{\,a}(\xi_1^{\,b-a}-\xi_2^{\,b-a})$ を使うと式(7)。壁 $b$ は $x_b=p\,x_{b-1}$。式(9)の $n=b-1$ では $\xi_1^{\,b}\xi_2^{\,b-1}-\xi_1^{\,b-1}\xi_2^{\,b}=\xi_1^{\,b-1}\xi_2^{\,b-1}(\xi_1-\xi_2)$。$p\,\zeta(\xi_1-\xi_2)=p/q=\xi_1\xi_2$ を使うと

$$
x_b=\frac{\xi_1^{\,b-a}\xi_2^{\,b-a}(\xi_2^{\,a-i_0}-\xi_1^{\,a-i_0})}{\xi_1^{\,b-a}-\xi_2^{\,b-a}}
$$

分子分母を $\xi_1^{\,b-a}\xi_2^{\,b-a}$ で割ると式(8)。

**Step 5　総和 → 式(10)**

$s\gt0$ で吸収は確率 $1$（A3）なので、全状態での吸収確率の和は $1$（論文は「計算により」として同じ結論）。

**Step 6　他の出発点**

$i_0=a$ のとき式(7)は $1$、式(8)は $0$ となり壁上の出発と整合（式(8)で $a-i_0=0$ なら分子 $0$）。

| 入力・使う道具 | 内容 |
|---|---|
| T1、T3、T4 | 基本解、一意性、壁の条件 |
| 使った関係 | $q\zeta(\xi_1-\xi_2)=1$、$p=q\xi_1\xi_2$ |

**確認**

$s\to0$、$r=0$、$p\gt q$、$\rho=q/p$：式(7)は $\xi_1=1/\rho$、$\xi_2=1$ を代入して $\dfrac{\rho^{\,i_0-a}-\rho^{\,b-a}}{1-\rho^{\,b-a}}$（古典的な「$a$ に先に到達する確率」）、式(8)は $\dfrac{1-\rho^{\,i_0-a}}{1-\rho^{\,b-a}}$ となり古典式に一致。

### A.4 半無限・無限区間（式(11)〜(16)）の導出

**Step 1　有界性による係数の消去**

$s\,x_n\le1$（確率）より $x_n$ は有限。$[a,\infty)$ では $n\to\infty$ で $\xi_1^{\,n}\to\infty$ なので $C_1=0$。式(4)は $C_2$ のみ。

**Step 2　$C_2$ の決定（T4）**

$f(a)=0$：$\zeta\xi_1^{\,a-i_0}+C_2\xi_2^{\,a}=0$ より $C_2=-\zeta\xi_1^{\,a-i_0}\xi_2^{\,-a}$ → 式(12)：$n\le i_0$ で $\zeta\xi_1^{\,n-i_0}+C_2\xi_2^{\,n}=\zeta\xi_1^{\,a-i_0}(\xi_1^{\,n-a}-\xi_2^{\,n-a})$、$n\ge i_0$ で $\zeta\xi_2^{\,n-i_0}+C_2\xi_2^{\,n}=\zeta\xi_2^{\,n-a}(\xi_2^{\,a-i_0}-\xi_1^{\,a-i_0})$。

**Step 3　壁の吸収確率 → 式(11)**

$x_a=q\,x_{a+1}=q\zeta(\xi_1-\xi_2)\,\xi_1^{\,a-i_0}=\xi_1^{\,a-i_0}$。式(7)(9)で $b\to\infty$ としても同じ。

**Step 4　$(-\infty,b]$ → 式(13)(14)**

$n\to-\infty$ で $\xi_2^{\,n}\to\infty$ なので $C_2=0$。$f(b)=0$：$\zeta\xi_2^{\,b-i_0}+C_1\xi_1^{\,b}=0$ より $C_1=-\zeta\xi_2^{\,b-i_0}\xi_1^{\,-b}$。代入すると式(14)。$x_b=p\,x_{b-1}=p\zeta\,\xi_2^{\,b-i_0}(\xi_2^{\,-1}-\xi_1^{\,-1})=\xi_2^{\,b-i_0}$（$p\zeta(\xi_1-\xi_2)/(\xi_1\xi_2)=q\zeta(\xi_1-\xi_2)=1$）→ 式(13)。

**Step 5　$(-\infty,\infty)$ → 式(15)**

両側で有界なので $C_1=C_2=0$。式(4)から式(15)。

**Step 6　総和 → 式(16)**

$$
\sum_{n\ge i_0}\zeta\xi_2^{\,n-i_0}=\frac{\zeta}{1-\xi_2},\qquad\sum_{n\lt i_0}\zeta\xi_1^{\,n-i_0}=\frac{\zeta}{\xi_1-1}
$$

和は $\zeta(\xi_1-\xi_2)/\{(1-\xi_2)(\xi_1-1)\}$。$(1-\xi_2)(\xi_1-1)=(\xi_1+\xi_2)-1-\xi_1\xi_2=\{(1-r)-q-p\}/q=s/q$、$\zeta(\xi_1-\xi_2)=1/q$ なので和は $1/s$。$s$ 倍して $1$ → 式(16)。

| 入力・使う道具 | 内容 |
|---|---|
| T3、T4 | 一意性、壁の条件 |
| 有界性 | $s\,x_n\le1$ から $\xi_1^{\,n}$（$n\to\infty$）または $\xi_2^{\,n}$（$n\to-\infty$）の項を消去 |

**確認**

式(11)は式(7)で $b\to\infty$（$\xi_1^{\,b-i_0}/\xi_1^{\,b-a}\to\xi_1^{\,a-i_0}$）と一致。

### A.5 吸収確率の漸近挙動（式(17)〜(24)）の導出

**Step 1　判別式の展開（T5）**

$D=(p-q)^2+2s(p+q)+s^2$。$p\ne q$ のとき $\sqrt D\sim|p-q|\{1+(p+q)s/(p-q)^2\}$ なので、$\zeta=D^{-1/2}\sim\frac1{|p-q|}\{1-\frac{(p+q)s}{(p-q)^2}\}$ → 式(17)(18)の $\zeta$。

**Step 2　$p\gt q$ の根（T5）**

$\xi_2=1-\varepsilon$ とおくと $q\varepsilon^2+(p-q+s)\varepsilon-s=0$。逐次近似で $\varepsilon=\frac{s}{p-q}-\frac{ps^2}{(p-q)^3}$ → $\xi_2$（式(17)）。$\xi_1=(p/q)/\xi_2\sim\frac pq(1+\frac{s}{p-q})$ → 式(17)。

**Step 3　$p\lt q$ の根**

$\xi_1=1+\varepsilon$ とおくと $q\varepsilon^2+(q-p-s)\varepsilon-s=0$。$\varepsilon=\frac{s}{q-p}-\frac{ps^2}{(q-p)^3}$ → $\xi_1$。$\xi_2=(p/q)/\xi_1\sim\frac pq[1-\frac{s}{q-p}+\frac{qs^2}{(q-p)^3}]$ → 式(18)。

**Step 4　$p=q$（Lemma 6 の証明）**

$1-r=2p+s$ より $D=4ps+s^2$。$\zeta=(4ps)^{-1/2}(1+\frac s{4p})^{-1/2}\sim\frac1{2\sqrt{ps}}(1-\frac s{8p})=\frac1{2pt}(1-\frac18t^2)$。また $\xi=1+\frac s{2p}\pm t\sqrt{1+\frac s{4p}}=1\pm t+\frac12t^2\pm\frac18t^3$ → 式(19)。

**Step 5　個別の吸収確率 → 式(20)(21)**

$i_0=0$、$p\gt q$。$n\ge0$：$s\,x_n=s\zeta\xi_2^{\,n}\sim\frac{s}{p-q}\{1-\frac{(p+q)s}{(p-q)^2}\}\{1-\frac{ns}{p-q}\}$ → 式(20)。$n\le0$：$s\,x_n=s\zeta\xi_1^{\,n}\sim(p/q)^n\frac{s}{p-q}\{1-\frac{(p+q)s}{(p-q)^2}+\frac{ns}{p-q}\}$ → 式(21)。

**Step 6　片側の総和 → 式(22)(23)(24)**

左側：$\sum_{n\le-1}s\,x_n=\dfrac{s\zeta}{\xi_1-1}$。$\xi_1-1\sim\frac{p-q}{q}\{1+\frac{ps}{(p-q)^2}\}$ より $\dfrac{qs}{(p-q)^2}\{1-\frac{2p+q}{(p-q)^2}s\}$ → 式(22)。右側：$\sum_{n\ge1}s\,x_n=\dfrac{s\zeta\,\xi_2}{1-\xi_2}$。$(1-\xi_2)^{-1}\sim\frac{p-q}{s}\{1+\frac{ps}{(p-q)^2}\}$ なので

$$
\frac{s}{p-q}\Big[1-\frac{(p+q)s}{(p-q)^2}\Big]\Big[1-\frac{s}{p-q}\Big]\frac{p-q}{s}\Big[1+\frac{ps}{(p-q)^2}\Big]\sim1-\frac{ps}{(p-q)^2}
$$

→ 式(23)。$p=q$：$s\,x_0=s\zeta\sim t/2$、対称性から $2\sum_{n\ge1}s\,x_n=1-s\,x_0$ → 式(24)。

| 入力・使う道具 | 内容 |
|---|---|
| T5 | 根・平方根の $s$ による展開 |
| 式(15) | $x_n=\zeta\xi_{1,2}^{\,n}$（$i_0=0$） |

**確認**

$p\gt q$ で $\sum_{n\ge1}+\sum_{n\le-1}+s\,x_0=1-\frac{ps}{(p-q)^2}+\frac{qs}{(p-q)^2}+\frac{s}{p-q}=1$（$O(s)$ まで）。

### A.6 期待吸収時間（式(25)〜(30)）の導出

**Step 1　一歩目の解析（T6）**

最初の1歩で、前進・後退・停滞なら時間が1進み、吸収なら終了 → 式(25)。$p+q+r+s=1$ を使い $m_i$ について整理すると式(26)。

**Step 2　一般解 → 式(27)**

同次部分に $m_i=\xi^{-i}$ を代入すると $(1-r)=p/\xi+q\xi$ で式(3)と同じ特性方程式。特解は定数 $c$：$(1-r)c=(p+q)c+1$ より $c=1/s$。

**Step 3　Lemma 9 → 式(28)**

同じ経路上で壁が多いほど吸収が早いので $T^{[0,N]}\le T^{[0,\infty)}\le T^{(-\infty,\infty)}$、期待値も同順。壁なしでは各期に確率 $s$ で吸収されるので $T$ は幾何分布：$m=s\sum_{k\ge1}k(1-s)^{k-1}=1/s$。

**Step 4　$[0,N]$ → 式(29)**

境界条件 $m_0=m_N=0$：$a+b=-1/s$、$a\,\xi_1^{-N}+b\,\xi_2^{-N}=-1/s$。解くと

$$
a=-\frac{\xi_1^{\,N}(1-\xi_2^{\,N})}{s(\xi_1^{\,N}-\xi_2^{\,N})},\qquad b=\frac{\xi_2^{\,N}(1-\xi_1^{\,N})}{s(\xi_1^{\,N}-\xi_2^{\,N})}
$$

$m_i=\frac1s+a\xi_1^{-i}+b\xi_2^{-i}$ に代入し、分子 $(\xi_1^{\,N}-\xi_2^{\,N})-\xi_1^{\,N-i}(1-\xi_2^{\,N})+\xi_2^{\,N-i}(1-\xi_1^{\,N})$ が $(1-\xi_1^{\,N-i})(1-\xi_2^{\,N})-(1-\xi_2^{\,N-i})(1-\xi_1^{\,N})$ に一致することを展開で確認 → 式(29)。

**Step 5　$[0,\infty)$ → 式(30)**

式(28)より $m_i\le1/s$ で有界。$i\to\infty$ で $\xi_2^{-i}\to\infty$ なので係数 $b=0$。$m_0=0$ から $a=-1/s$ → 式(30)。式(29)で $N\to\infty$ とすると $\{\cdot\}\to1-\xi_1^{-i}$ で一致。

| 入力・使う道具 | 内容 |
|---|---|
| T1、T6 | 特性方程式、一歩目の解析 |
| 式(28) | 領域の大小関係と有界性 |

**確認**

$N=2$、$i=1$：式(26)から $(1-r)m_1=1$、つまり $m_1=1/(1-r)$。式(29)は $\frac1s\cdot\frac{(1-\xi_1)(1-\xi_2)\{(1+\xi_2)-(1+\xi_1)\}}{(\xi_1-\xi_2)(\xi_1+\xi_2)}=\frac1s\cdot\frac{(\xi_1-1)(1-\xi_2)}{\xi_1+\xi_2}=\frac1s\cdot\frac{s/q}{(1-r)/q}=\frac1{1-r}$ で一致。

### A.7 期待吸収時間の漸近（式(31)〜(33)）の導出

**Step 1　出発式**

式(30)：$m_i=\frac1s(1-\xi_1^{-i})$。$\xi_1^{-1}=\frac qp\xi_2$（$\xi_1\xi_2=p/q$）。

**Step 2　$p\gt q$ → 式(31)**

式(17)より $\xi_1^{-1}\sim\frac qp[1-\frac s{p-q}]$、$\xi_1^{-i}\sim(\frac qp)^i[1-\frac{is}{p-q}]$。$m_i=\frac1s\{1-(\frac qp)^i+(\frac qp)^i\frac{is}{p-q}\}$ → 式(31)。

**Step 3　$p\lt q$ → 式(32)**

式(18)より $\xi_1^{-1}=\frac qp\xi_2\sim1-\frac s{q-p}+\frac{qs^2}{(q-p)^3}$。(T5) $(1+as+bs^2)^i\sim1+i\,as+i\,bs^2+\binom i2a^2s^2$（$a=-\frac1{q-p}$、$b=\frac{q}{(q-p)^3}$）より

$$
\xi_1^{-i}\sim1-\frac{is}{q-p}+\Big[\frac{iq}{(q-p)^3}+\frac{i(i-1)}{2(q-p)^2}\Big]s^2=1-\frac{is}{q-p}+\frac12i\Big\{\frac{p+q}{(q-p)^3}+\frac{i}{(q-p)^2}\Big\}s^2
$$

$m_i=\frac1s(1-\xi_1^{-i})$ より式(32)。

**Step 4　$p=q$ → 式(33)**

$\xi_1^{-1}=\xi_2\sim1-t+\frac12t^2$。$\xi_1^{-i}=\xi_2^{\,i}\sim1-it+\frac{i^2}2t^2$。$m_i=\frac1s(it-\frac{i^2}2t^2)$。$t/s=1/\sqrt{ps}$、$t^2/s=1/p$ → 式(33)。

| 入力・使う道具 | 内容 |
|---|---|
| T5、式(17)(18)(19)、式(30) | 根の展開と期待時間の厳密式 |

**確認（式(32)の符号）**

$i=1$ では $m_1=\frac1s(1-\xi_1^{-1})\sim\frac1{q-p}-\frac{qs}{(q-p)^3}$。式(32)は $\frac1{q-p}-\frac12\cdot\frac{(p+q)+(q-p)}{(q-p)^3}s=\frac1{q-p}-\frac{qs}{(q-p)^3}$ で一致。論文印字の符号では $-\frac{ps}{(q-p)^3}$ となり合わない。数値例 $p=0.2,\,q=0.79,\,r=0,\,s=0.01$ で厳密値 $m_1\approx1.6575$、式(32)は $\approx1.6564$、論文印字は $\approx1.6852$。

### A.8 最大・最小（式(34)〜(43)）の導出

**Step 1　壁化（T7）**

$1\le a\le i_0$ で $\{m\le a\}$ は「$a$ を訪れる」と同値。$a$ が壁でなくても、$a$ を吸収壁に変えれば訪問は壁 $a$ への吸収確率で検出できる。したがって $P(m\le a)=x_a^{[a,N]}$。同様に $\{M\ge b\}$ は $b$ を壁にして $x_b^{[0,b]}$。

**Step 2　差分 → 式(34)**

$P(m=a)=P(m\le a)-P(m\le a-1)=x_a^{[a,N]}-x_{a-1}^{[a-1,N]}$。$P(M=b)=x_b^{[0,b]}-x_{b+1}^{[0,b+1]}$。

**Step 3　式(7)(8)の代入 → 式(35)〜(38)**

$x_a^{[a,N]}=\dfrac{\xi_1^{\,N-i_0}-\xi_2^{\,N-i_0}}{\xi_1^{\,N-a}-\xi_2^{\,N-a}}$（式(7)で $b=N$）。$x_b^{[0,b]}=\dfrac{\xi_2^{\,-i_0}-\xi_1^{\,-i_0}}{\xi_2^{\,-b}-\xi_1^{\,-b}}$（式(8)で $a=0$）。差を取り式(36)(37)。$P(m=0)=x_0^{[0,N]}$ と $P(M=N)=x_N^{[0,N]}$ は式(7)(8)そのもの → 式(35)(38)。

**Step 4　$[0,\infty)$ → 式(39)〜(41)**

式(11)で $a=0$ が式(39)、$x_a^{[a,\infty)}-x_{a-1}^{[a-1,\infty)}=\xi_1^{\,a-i_0}-\xi_1^{\,a-1-i_0}$ が式(40)。最大値は有限区間 $[0,b]$ の式なので $N$ に依存せず、式(37)と同形 → 式(41)。

**Step 5　$(-\infty,\infty)$ → 式(42)(43)**

下側は式(11)（$a$ は任意）で $\xi_1^{\,a-i_0}-\xi_1^{\,a-1-i_0}$ → 式(42)。上側は式(13)で $\xi_2^{\,b-i_0}-\xi_2^{\,b+1-i_0}$ → 式(43)。

| 入力・使う道具 | 内容 |
|---|---|
| T7 | 事象の壁化 |
| 式(7)(8)(11)(13) | 壁への吸収確率 |

**確認**

式(36)(35)の和は $\sum_{a=1}^{i_0}\{x_a^{[a,N]}-x_{a-1}^{[a-1,N]}\}+x_0^{[0,N]}=x_{i_0}^{[i_0,N]}=1$（望遠鏡和）。式(42)も $\sum_{a\le i_0}\xi_1^{\,a-1-i_0}(\xi_1-1)=1$。

### A.9 ゲームの価値（式(44)〜(46)）の導出

**Step 1　一歩目の解析（T6）→ 式(44)**

前進・後退・停滞は $v$ に戻り、吸収は最終位置 $i$：$v_i=p\,v_{i+1}+q\,v_{i-1}+r\,v_i+s\,i$ を整理。

**Step 2　置換 → 式(45)**

$v_i=i+(p-q)w_i$ を式(44)に代入。$1-r=p+q+s$ より $i$ の項は消え、$(1-r)(p-q)w_i=(p-q)+(p-q)(p\,w_{i+1}+q\,w_{i-1})$。よって $(1-r)w_i=p\,w_{i+1}+q\,w_{i-1}+1$ で式(26)と同形。

**Step 3　境界条件**

$[a,b]$ で $v_a=a$、$v_b=b$ なので $w_a=w_b=0$。$m_i$ と同じ式・同じ境界条件なので $w_i=m_i$（一意性 T3）。$[0,\infty)$ は $a=0$、$b\to\infty$ として、$(-\infty,\infty)$ も同様 → $v_i=i+(p-q)m_i$。

**Step 4　$[0,N]$ → 式(46)**

式(29)を代入：

$$
(p-q)\,m_i=\frac{p-q}{s}\cdot\frac{(\xi_1^{\,N}-\xi_2^{\,N})-\xi_1^{\,N-i}(1-\xi_2^{\,N})+\xi_2^{\,N-i}(1-\xi_1^{\,N})}{\xi_1^{\,N}-\xi_2^{\,N}}
$$

これは式(46)の波括弧 $1-\dfrac{\xi_1^{\,N-i_0}(1-\xi_2^{\,N})+\xi_2^{\,N-i_0}(\xi_1^{\,N}-1)}{\xi_1^{\,N}-\xi_2^{\,N}}$ と同一。論文付録Aは $v_{i_0}=s\sum_{n=1}^{N-1}n\,x_n+N\,x_N$ を直接和で計算する別経路（途中の計算は省略されている）で、同じ結果になる。

| 入力・使う道具 | 内容 |
|---|---|
| T3、T6 | 一意性、一歩目の解析 |
| 式(26)(29) | $w_i=m_i$ と期待時間の厳密式 |

**確認**

$p=q$：式(46)から $v_{i_0}=i_0$。$i_0=0$：$m_0=0$ より $v_0=0$。$i_0=N$：$m_N=0$ より $v_N=N$。

### A.10 共役ランダムウォーク（式(47)〜(49)）の導出

**Step 1　根の対応（Lemma 15）→ 式(48)**

$\xi_i(p,q,r,s)=\dfrac{(1-r)\pm\sqrt{(1-r)^2-4pq}}{2q}$。分子分母を $(1-r)$ で割ると $\dfrac{1\pm\sqrt{1-4P_rQ_r}}{2Q_r}=\xi_i(P_r,Q_r,0,S_r)=\Xi_i$。$(1-r)\zeta=(1-r)[(1-r)^2-4pq]^{-1/2}=[1-4P_rQ_r]^{-1/2}=Z$。

**Step 2　吸収確率・最大最小・漸近（Theorem 16）**

$\xi_i$ だけで書かれる量（最大最小など）は Step 1 から同じ。吸収確率は $s\,\zeta\cdot F(\xi_1,\xi_2)$ の形（式(9)(12)(15)）で、$s\zeta=\dfrac{s}{1-r}Z=S_rZ$。漸近の比 $p/q=P_r/Q_r$、$s/p=S_r/P_r$ も不変。

**Step 3　価値**

$\dfrac{p-q}{s}=\dfrac{P_r-Q_r}{S_r}$ で、$v_i=i+(p-q)m_i$ の形は式(46)と同様に保たれる（比のみに依存）。

**Step 4　期待時間（T8）→ 式(49)**

式(26)を $(1-r)$ で割ると $m_i=P_r\,m_{i+1}+Q_r\,m_{i-1}+\dfrac1{1-r}$。両辺を $(1-r)$ 倍して $m_i^{\text{共役}}=(1-r)m_i$ とおくと $m_i^{\text{共役}}=P_r\,m^{\text{共役}}_{i+1}+Q_r\,m^{\text{共役}}_{i-1}+1$ で、共役ウォークの方程式（$r=0$）と一致。境界条件は同じなので一意性から確定。

| 入力・使う道具 | 内容 |
|---|---|
| T3、T8 | 一意性、時間のスケール変換 |
| 式(5)(26) | 根の定義と期待時間の方程式 |

**確認**

$r=0$ なら $P_r=p$、$Q_r=q$、$S_r=s$ で共役は元のウォークと一致、$m^{\text{共役}}=m$。

### A.11 著者について

**Theo van Uem**
- **アカデミックな経歴**: 所属は Amsterdam University of Applied Sciences（オランダ。論文末尾の記載による）。学位や職歴の詳細は公開情報から確認できなかったため記載しない。
- **主要な研究分野**: 確率論（ランダムウォーク、math.PR）、組合せ論・ゲーム理論的な問題（Ebert の帽子問題）。
- **評判・学術的貢献**: 受賞歴などは確認できなかった。代表的な業績として、帽子ゲームに関する "Generalized three and four person hat game"（*North-Western European Journal of Mathematics*, 10 (2024), 25–53）、ランダムウォークに関する "Multi-level Random Walk"（arXiv:2109.11335）、本論文（arXiv:1301.2702）がある。

---

**原論文の著作権は著者（Theo van Uem）に帰属します。** 本記事は原論文の数理モデルを整理した解説であり、導出の補足と、式(32)の符号の訂正（A.7）は本記事での追加です。
{% endraw %}
