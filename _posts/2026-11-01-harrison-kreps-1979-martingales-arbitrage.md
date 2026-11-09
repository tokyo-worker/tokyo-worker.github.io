---
layout: post
title: "Harrison & Kreps (1979) \"Martingales and Arbitrage in Multiperiod Securities Markets\"、Journal of Economic Theory: 数理モデル"
date: 2026-11-01 00:00:00 +0900
categories: [ファイナンス, 裁定価格理論]
math: true
---

{% raw %}
# Harrison & Kreps (1979) "Martingales and Arbitrage in Multiperiod Securities Markets"、Journal of Economic Theory: 数理モデル
### 裁定価格理論の基礎：無裁定・均衡・同値マルチンゲール測度の同値性

---

## この論文について

本記事で扱う論文は、J. Michael Harrison と David M. Kreps による "Martingales and Arbitrage in Multiperiod Securities Markets"（Journal of Economic Theory, 20(3), 381–408, 1979、スタンフォード大学ビジネススクール）である。Black–Scholes に始まるオプション価格の裁定理論について、その基礎的な論点を整理した論文である。株式や債券の価格過程を所与とし、そこから他の偶発請求権（株式のオプションなど）の価格を裁定のみで決められるかどうかを問う。

**論文リンク**：
- 無料で全文を読める版：確認できなかった
- 公式版（出版社・DOI）：<https://doi.org/10.1016/0022-0531(79)90043-7> （Journal of Economic Theory, 20(3), 381–408（1979）。閲覧に契約や所属機関経由のアクセスが必要な場合がある）

論文の主な結論は次の通りである。

- 証券市場モデルが均衡として成立しうること（viability）は、同値マルチンゲール測度が少なくとも一つ存在することと同値である。
- ある請求権の価格が裁定で一意に決まることは、その請求権の期待値がすべての同値マルチンゲール測度で等しいことと同値で、その共通の期待値が裁定価値になる。
- 拡散過程モデルでは、緩い正則条件のもとで同値マルチンゲール測度が一意に存在する。測度変換はドリフトをゼロにすることで実現される。
- 取引戦略の範囲を「単純戦略」から広げると、Black–Scholes モデルでも裁定機会（倍賭け戦略）が現れうる。

**本記事は、この論文の解説ではなく、論文の背景にある数理モデルについての記事である。** 論文の主張を式・前提・記号・導出の形に並べ直した早見表であり、論文本文の数理モデルは簡易化せずにそのまま採用している。

> 記号の整理のため、元論文で複数の意味を持つ記号は別の記号に置き換えている（例：Section 3 の指数ドリフト $\mu$ は $\nu$、Section 7 の定数ドリフト $\mu$ は $\bar\mu$、定数ボラティリティ $\sigma$ は $\sigma_B$、トポロジー $\tau$ は $\mathcal O$、分離汎関数 $\phi$ は $\Lambda$、オプションの添字 $\alpha$ は $\kappa$、ジャンプ過程の定数 $a,b$ は $c_u,c_d$、日付の集合は $\mathbf T$）。

---

## 目次

- [1. 数理モデル](#sec1)
- [2. 説明できる現象](#sec2)
- [3. モデルが整理している点](#sec3)
- [4. 対象外の現象](#sec4)
- [5. 主要文献・関連論文](#sec5)
- [付録：導出手順](#appendix)

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間・情報構造**

日付は $t=0,T$ の2時点（Section 2）。確率空間 $(\Omega,\mathcal F,P)$ があり、$\omega\in\Omega$ は状態を表す。$P$ は全員が一致して持つ主観確率と解釈される。財は単一で（ニューメレール）、主体は日付0の確実な消費と日付 $T$ の状態依存消費に関心を持つ。消費束は $(r,x)\in\mathbb R\times X$（日付0に $r$、日付 $T$ に状態 $\omega$ なら $x(\omega)$）で、これは純取引ベクトルとして読む。請求権の空間は $X=L^2(\Omega,\mathcal F,P)$（二乗可積分な確率変数）。証券市場モデル（Section 3）では、取引可能日の集合 $\mathbf T\subseteq[0,T]$（$0,T\in\mathbf T$）、情報構造 $\{\mathcal F_t;\ t\in\mathbf T\}$（増加する部分 $\sigma$ 加法族、$\mathcal F_0=\{\varnothing,\Omega\}$、$\mathcal F_T=\mathcal F$）、価格過程 $Z=\{Z(t);\ t\in\mathbf T\}$（$\{\mathcal F_t\}$ に適合する $(K+1)$ 次元過程）を加える。

**A1 選好の凸性**

選好 $\succsim$ は $\mathbb R\times X$ 上の完備かつ推移的な二項関係で、次を満たす。外すと分離超平面定理が使えなくなり、Theorem 1 の必要性の証明が成り立たない。

$$
\underbrace{\{(r',x')\in\mathbb R\times X:\ (r',x')\succsim(r,x)\}}_{\text{上位集合}}\ \text{は凸}\tag{1}
$$

**A2 選好の連続性**

$\mathcal O$ を $\mathbb R$ のユークリッド位相と $X$ の $L^2$ ノルム位相から作る積位相とする。外すと、効用汎関数 $\psi$ の連続性（Riesz 表現と $E(\rho^2)\lt\infty$）が導けない。

$$
\underbrace{\{(r',x'):(r',x')\succsim(r,x)\}}_{\text{上位集合}}\ \text{と}\ \underbrace{\{(r',x'):(r,x)\succsim(r',x')\}}_{\text{下位集合}}\ \text{は}\ \mathcal O\ \text{閉}\tag{2}
$$

**A3 強増加性**

$X^{+}=\{x\in X:\ P(x\ge0)=1,\ P(x\gt0)\gt0\}$ とする。日付0の消費を増やすか、$X^{+}$ の請求権を足すと厳密に好まれる。外すと $\psi$ の狭義正性が導けず、$P^{\ast}$ と $P$ の同値性が出ない。

$$
\underbrace{(r+r',x)\succ(r,x)}_{\text{日付0を増やす}},\quad \underbrace{(r,x+x')\succ(r,x)}_{\text{日付Tを増やす}}\qquad r'\in(0,\infty),\ x'\in X^{+}\tag{3}
$$

(1)–(3) を満たす関係全体を $\mathbf A$ と書く（想定しうる主体のクラス）。

> 特殊ケース：確率測度 $Q$ と関数 $u:\mathbb R\times\mathbb R\to\mathbb R$ により $(r,x)\succsim(r',x')\iff\int u(r,x(\omega))\,Q(d\omega)\ge\int u(r',x'(\omega))\,Q(d\omega)$ と書ける選好は、$u$ が凹・狭義増加で絶対値の増加が二次以下、$Q$ と $P$ の零集合が一致し、$dQ/dP$ が有界であれば $\mathbf A$ に属する（十分条件）。$P$ は、請求権空間 $X$・連続性・強増加性の三つに関わる。

**A4 摩擦のない市場**

価格系は $(M,\pi)$：$M\subseteq X$ は部分空間（取引可能な請求権）、$\pi$ は $M$ 上の線形汎関数（日付0の消費単位で測った価格）。取引費用なし、空売り制限なし。外すと $M$ の線形性・$\pi$ の線形性が失われ、以下の同値定理は成り立たない。

**A5 無リスク債券とゼロ金利**

$Z_0(t,\omega)=1$（債券、利子率ゼロ）。外れた場合の処理は 1.7 のニューメレール変換で行う（価格が常に正の証券が一つあればよい）。

**A6 配当なし・二乗可積分**

証券は配当などの収入を生まない。価格は二乗可積分とする。

$$
E\big(Z_k^2(t)\big)\lt\infty\qquad t\in\mathbf T,\ k=1,\dots,K\tag{4}
$$

**A7 単純取引戦略のみ**

主体が使える戦略は「単純戦略」に限る（1.2）。経済的には正当化できない制限で、技術的理由による（Section 6）。外すと 1.6 のように結論が変わる。

---

### 1.1 価格系の実行可能性（viability）と裁定価値

**viability の定義**

価格系 $(M,\pi)$ が viable とは、ある $\succsim\in\mathbf A$ と $(r^{\ast},m^{\ast})\in\mathbb R\times M$ が存在して、予算制約のもとで最適になることをいう。

$$
\underbrace{r^{\ast}+\pi(m^{\ast})\le0}_{\text{予算内}}\ \text{かつ}\ \underbrace{(r^{\ast},m^{\ast})\succsim(r,m)}_{\text{最適}}\quad\forall(r,m)\in\mathbb R\times M\ \text{s.t.}\ \underbrace{r+\pi(m)\le0}_{\text{予算制約}}\tag{5}
$$

**Theorem 1（viability の特徴づけ）**

$\Psi$ を $X$ 上の連続（$L^2$ ノルム位相）かつ狭義正（$\psi(x)\gt0\ \forall x\in X^{+}$）な線形汎関数全体とする。

$$
(M,\pi)\ \text{は viable}\ \iff\ \underbrace{\exists\,\psi\in\Psi}_{\text{連続・狭義正}}\ \text{such that}\ \underbrace{\psi\big\vert_{M}=\pi}_{\text{π の拡張}}\tag{6}
$$

> 部分均衡の価格 $\pi$ が、$X$ 全体の一般均衡価格 $\psi$ の一部でなければならない、という意味である。

**整合的な価格（Corollary 1, 2）**

$x\in X$ に価格 $p$ が付くとして、$M'=\operatorname{span}(M\cup\{x\})$ 上の価格汎関数を次で定める。$(M',\pi')$ が viable のとき、$p$ は $(M,\pi)$ と整合的であるという。

$$
\underbrace{\pi'(m+\beta x)}_{\text{拡張価格}}=\underbrace{\pi(m)}_{\text{既存の価格}}+\underbrace{\beta p}_{\text{x の価格}}\qquad m\in M,\ \beta\in\mathbb R\tag{7}
$$

$(M,\pi)$ が viable のとき、整合的な価格の集合は次の通り。

$$
\{p:\ p\ \text{は}\ (M,\pi)\ \text{と整合的}\}=\underbrace{\{\psi(x):\ \psi\in\Psi,\ \psi\vert_M=\pi\}}_{\text{拡張による値の集合}}\tag{8}
$$

$x$ の価格が裁定で決まる（priced by arbitrage）とは整合的な価格が一意であることで、次と同値である。

$$
\underbrace{\{\psi(x):\ \psi\in\Psi,\ \psi\vert_M=\pi\}}_{\text{値の集合}}=\{\underbrace{\hat\pi(x)}_{\text{裁定価値}}\}\ \ (\text{一点集合})\tag{9}
$$

> 裁定で価格が決まる請求権の集合を $\hat M$、裁定価値の汎関数を $\hat\pi$ とする。$X$ が有限次元（$\Omega$ 有限）なら $\hat M=M$。無限次元なら $\hat M$ は少なくとも $M$ の $\mathcal O$ 閉包を含む。

| 記号・項目 | 意味 |
|---|---|
| $(\Omega,\mathcal F,P)$ | 状態空間・事象族・主観確率 |
| $X=L^2(\Omega,\mathcal F,P)$ | 日付 $T$ の請求権の空間 |
| $X^{+}$ | 非負で正の確率で正の請求権の集合 |
| $\succsim,\ \succ$ | 弱選好、強選好（$\succsim$ から定義） |
| $\mathbf A$ | (1)–(3) を満たす選好の集合 |
| $M,\ \pi$ | 取引可能な請求権の部分空間、その価格（線形） |
| $\Psi$ | $X$ 上の連続・狭義正な線形汎関数の全体 |
| $\psi\vert_M$ | $\psi$ の $M$ への制限 |
| $\hat M,\ \hat\pi$ | 裁定で価格が決まる請求権の集合、裁定価値 |
| $\beta$ | (7) で拡張に使う実数係数 |
| $\mathcal O$ | $\mathbb R\times X$ の積位相（元論文の $\tau$） |

---

### 1.2 証券市場モデルと単純取引戦略

**価格過程の例（Black–Scholes）**

$T\gt0$、$\mathbf T=[0,T]$、$W$ を標準ブラウン運動、$\mathcal F_t$ を $\{W(u);u\le t\}$ が生成する $\sigma$ 加法族、$\mathcal F=\mathcal F_T$ とする。

$$
Z_0(t)=1,\qquad Z_1(t,\omega)=\exp\{\underbrace{\sigma_B}_{\text{ボラティリティ}}W(t,\omega)+\underbrace{\nu}_{\text{指数ドリフト}}t\}\qquad(\sigma_B\gt0)\tag{10}
$$

**単純戦略 $\theta$**

$(K+1)$ 次元過程 $\theta=\{\theta(t);t\in\mathbf T\}$ が次の三条件を満たすとき単純戦略という。$\theta_k(t,\omega)$ は日付 $t$・状態 $\omega$ での証券 $k$ の保有株数。

- (i) 各 $t$ で $\theta(t)$ は $\mathcal F_t$ 可測（保有は現在までの情報にのみ依存）。
- (ii) $\theta_k(t)Z_k(t)\in X$（$t\in\mathbf T$、$k=0,\dots,K$）。条件付期待値をとるための技術的条件。
- (iii) 有限の $N$ と日付 $0=t_0\lt t_1\lt\cdots\lt t_N=T$、$t_n\in\mathbf T$ があって、次が成り立つ（取引日は事前に決まっていて有限回）。

$$
\underbrace{\theta(t,\omega)=\theta(t_{n-1},\omega)}_{\text{区間で一定}},\qquad t_{n-1}\le t\lt t_n,\ n=1,\dots,N\tag{11}
$$

**自己充足的（self-financing）**

$$
\underbrace{\theta(t_{n-1})\cdot Z(t_n)}_{\text{取引前の価値}}=\underbrace{\theta(t_n)\cdot Z(t_n)}_{\text{取引後の価値}}\qquad n=1,\dots,N\tag{12}
$$

**単純フリーランチ**

自己充足的な単純戦略で、次を満たすもの。

$$
\underbrace{\theta(0)\cdot Z(0)\le0}_{\text{初期費用は非正}}\ \text{かつ}\ \underbrace{\theta(T)\cdot Z(T)\in X^{+}}_{\text{満期は非負で正の確率で正}}\tag{13}
$$

**取引可能な請求権と価格**

$x\in X$ が取引可能（marketed）とは、自己充足的な単純戦略 $\theta$ で次を満たすものがあること。

$$
\underbrace{\theta(T)\cdot Z(T)=x\ \ \text{a.s.}}_{\theta\ \text{が}\ x\ \text{を生成}},\qquad \underbrace{\pi(x)=\theta(0)\cdot Z(0)}_{\text{暗黙の価格}}\tag{14}
$$

> 単純フリーランチが存在しなければ、同じ $x$ を生成する戦略はどれも同じ初期費用を持ち、$\pi$ は $M$ 上の線形汎関数として定まる。$M$ を取引可能な請求権の集合とする。証券市場モデルが viable とは、単純フリーランチがなく、かつ対応する $(M,\pi)$ が viable なこと。

| 記号・項目 | 意味 |
|---|---|
| $\mathbf T$ | 取引可能日の集合（離散時間なら有限、連続時間なら $[0,T]$） |
| $\{\mathcal F_t\}$ | 情報構造 |
| $Z_k(t,\omega)$ | 証券 $k$ の価格（$k=0$ は債券で $Z_0\equiv1$） |
| $K+1$ | 証券の数 |
| $\theta_k(t,\omega)$ | 証券 $k$ の保有株数 |
| $\theta(t)\cdot Z(t)$ | 日付 $t$ のポートフォリオの価値 |
| $t_0,\dots,t_N$ | 取引日（$N$ は有限） |
| $W$ | 標準ブラウン運動 |
| $\sigma_B,\ \nu$ | (10) の定数（元論文の $\sigma,\ \mu$） |

---

### 1.3 同値マルチンゲール測度

**定義**

$(\Omega,\mathcal F)$ 上の確率測度 $P^{\ast}$ が同値マルチンゲール測度であるとは、次の三性質をもつこと。$\mathbf P$ をその全体とする。

$$
\begin{aligned}
&\underbrace{P(B)=0\iff P^{\ast}(B)=0}_{\text{零集合が一致}}\quad(B\in\mathcal F)\\
&\underbrace{\rho=\frac{dP^{\ast}}{dP}}_{\text{密度}},\quad E(\rho^2)\lt\infty\ \ (\rho\in L^2(\Omega,\mathcal F,P))\\
&\underbrace{E^{\ast}\big(Z_k(u)\mid\mathcal F_t\big)=Z_k(t)}_{\text{マルチンゲール}},\quad k=0,\dots,K,\ \ t\le u,\ t,u\in\mathbf T
\end{aligned}\tag{15}
$$

**Theorem 2（対応）**

単純フリーランチがなければ、同値マルチンゲール測度 $P^{\ast}$ と、$\psi\vert_M=\pi$ を満たす $\psi\in\Psi$ は一対一に対応する。

$$
\underbrace{P^{\ast}(B)=\psi(1_B)}_{\text{測度}\leftarrow\text{汎関数}},\qquad \underbrace{\psi(x)=E^{\ast}(x)}_{\text{汎関数}\leftarrow\text{測度}}\tag{16}
$$

> 対応する性質：$\psi$ の狭義正性 $\leftrightarrow$ $P$ と $P^{\ast}$ の同値性、$\psi$ の連続性 $\leftrightarrow$ $E(\rho^2)\lt\infty$、拡張性 $\psi\vert_M=\pi$ $\leftrightarrow$ $Z$ のマルチンゲール性。単純フリーランチがあれば同値マルチンゲール測度は存在せず、$\pi$ も定義できない。

**Corollary（三つの主張）**

(a) 証券市場モデルが viable $\iff$ 同値マルチンゲール測度が少なくとも一つ存在する。
(b) viable なとき、$x\in\hat M\iff E^{\ast}(x)$ が $\mathbf P$ 上で一定。その一定値が裁定価値。
(c) viable かつ全ての $x\in X$ が裁定で決まる $\iff$ 同値マルチンゲール測度が一意。

$$
\hat\pi(x)=\underbrace{E^{\ast}(x)}_{P^{\ast}\ \text{下の期待値}}\qquad\text{（任意の}\ P^{\ast}\in\mathbf P\ \text{で同じ値）}\tag{17}
$$

| 記号・項目 | 意味 |
|---|---|
| $P^{\ast}$ | 同値マルチンゲール測度 |
| $\mathbf P$ | 同値マルチンゲール測度の全体 |
| $E^{\ast}$ | $P^{\ast}$ に関する期待値 |
| $\rho$ | $dP^{\ast}/dP$（Radon–Nikodym 微分） |
| $1_B$ | 事象 $B$ の定義関数 |

---

### 1.4 有限モデル（数値例）

**設定**（Section 4、Figure 1）

$\Omega$ と $\mathbf T$ が有限のとき、$X$ は $\Omega$ 上の全ての実関数からなり、モデルが viable $\iff$ 単純フリーランチがなく、請求権の価格が裁定で決まる $\iff$ 取引可能（証明は元論文で読者に委ねられている）。

例：状態 $\omega_1,\dots,\omega_9$、取引日 $\mathbf T=\{0,1,2\}$、証券は3つ（$Z_0\equiv1$、$Z_1$、$Z_2$）。$\mathcal F_1$ は分割 $B_1=\{\omega_1,\omega_2,\omega_3\}$、$B_2=\{\omega_4,\omega_5,\omega_6\}$、$B_3=\{\omega_7,\omega_8,\omega_9\}$ が生成し、$\mathcal F_2=\mathcal F$（完全分割）。$P(\omega_i)\gt0$（具体的な値は無関係）。日付0の価格は $Z_1(0)=Z_2(0)=10$、日付1の価格は $B_1$ で $(Z_1,Z_2)=(11,9)$、$B_2$ で $(11,10)$、$B_3$ で $(8,11)$。終端価格のツリー全体は原論文 Figure 1 を参照。

**請求権**

$$
x=\Big\{\underbrace{2Z_1(2)+Z_2(2)}_{\text{購入する束}}-\big[\underbrace{14+2\min_{0\le t\le2}\min(Z_1(t),Z_2(t))}_{\text{行使価格（履歴依存）}}\big]\Big\}^{+}\tag{18}
$$

> 各状態での値は $x(\omega_1),\dots,x(\omega_9)=5,\ 1,\ 0,\ 5,\ 0,\ 0,\ 4,\ 1,\ 0$。終端価格が同じ状態でも、価格履歴が違えば $x$ は異なる（例：$\omega_2$ と $\omega_5$）。

**同値マルチンゲール測度の決定**

$p=P^{\ast}(B_1)$、$q=P^{\ast}(B_2)$ とすると、$E^{\ast}(Z_1(1))=E^{\ast}(Z_2(1))=10$ から次を得る。

$$
\begin{aligned}
\underbrace{11p+11q+8(1-p-q)}_{E^{\ast}(Z_1(1))}&=10\\
\underbrace{9p+10q+11(1-p-q)}_{E^{\ast}(Z_2(1))}&=10
\end{aligned}\qquad\Longrightarrow\qquad p=q=\tfrac13\tag{19}
$$

同様に $B_i$ ごとの条件付き確率が一意に決まり、$P^{\ast}(\omega_i)=\tfrac1{12},\tfrac1{15},\tfrac{11}{60},\tfrac1{12},\tfrac1{12},\tfrac16,\tfrac1{15},\tfrac1{15},\tfrac15$（$i=1,\dots,9$）。同値マルチンゲール測度は一意なので、モデルは viable でありすべての請求権が裁定で決まる。

$$
\hat\pi(x)=E^{\ast}(x)=\sum_{i=1}^{9}\underbrace{x(\omega_i)}_{\text{ペイオフ}}\underbrace{P^{\ast}(\omega_i)}_{\text{測度}}=\frac{37}{30}\approx1.2333\tag{20}
$$

> 一般原理：各取引日 $t$ で、次の取引日に起こりうる価格ベクトルが情報 $\mathcal F_t$ のもとで $K+1$ 個以下なら、viable なモデル（縮退を除く）ではすべての請求権が裁定で決まり、価格は単純な再帰計算で求まる。

| 記号・項目 | 意味 |
|---|---|
| $\omega_i$ | 状態（9個） |
| $B_1,B_2,B_3$ | 日付1の情報の分割セル |
| $p,\ q$ | $P^{\ast}(B_1),\ P^{\ast}(B_2)$ |
| $x(\omega_i)$ | 請求権 (18) のペイオフ |
| $P^{\ast}(\omega_i)$ | 同値マルチンゲール測度（Figure 1 最右列） |

---

### 1.5 拡散モデル

**設定**（Section 5）

$\mathbf T=[0,T]$。$W=(W_1,\dots,W_K)$ を $K$ 次元標準ブラウン運動（成分は独立で $W_k(0)=0$）、$\mathcal F_t=\mathcal F\{W(s);0\le s\le t\}$、$\mathcal F=\mathcal F_T$。$\sigma(x,t):\mathbb R^K\times[0,T]\to\mathbb R^{K\times K}$ と $\mu(x,t):\mathbb R^K\times[0,T]\to\mathbb R^K$ は $x,t$ について連続で、$\sigma(x,t)$ は常に正則とする。

**市場価格リスク**

$$
\underbrace{\sigma(x,t)\cdot\alpha(x,t)}_{\text{ボラティリティ×α}}+\underbrace{\mu(x,t)}_{\text{ドリフト}}=0\qquad x\in\mathbb R^K,\ t\in[0,T]\tag{21}
$$

（$\alpha,\mu$ は列ベクトル。$\sigma$ の正則性から $\alpha$ は一意に定まる。）

**価格過程**

$\{\mathcal F_t\}$ に適合する $Y$ が伊藤の確率積分方程式を満たし、$Z_k=Y_k$（$k=1,\dots,K$）、$Z_0\equiv1$ とする。$Y(0)$ は定数ベクトル。

$$
Y(t)=Y(0)+\underbrace{\int_0^t\sigma(Y(s),s)\,dW(s)}_{\text{ランダム部分}}+\underbrace{\int_0^t\mu(Y(s),s)\,ds}_{\text{ドリフト部分}}\tag{22}
$$

**ドリフトなしの対応過程**

連続過程 $Y^{\ast}$ が（同値の意味で）一意に次を満たすと仮定する（$\sigma$ に連続性以上の正則条件が必要）。$Z^{\ast}_k=Y^{\ast}_k$（$k\ge1$）、$Z^{\ast}_0\equiv1$。

$$
Y^{\ast}(t)=Y(0)+\underbrace{\int_0^t\sigma(Y^{\ast}(s),s)\,dW(s)}_{\text{ドリフトを除いた過程}},\qquad0\le t\le T\tag{23}
$$

**Proposition 1**

$0\le t\le T$ で $\mathcal F_t$ は $\{Z(s);0\le s\le t\}$ が生成する。したがって任意の請求権は、価格経路 $C[0,T]\to\mathbb R$ の可測汎関数 $f$ により $x=f(Z)$ と書ける。主体は過去と現在の価格情報だけを使って戦略を組むことになる。

**Theorem 3**

記法 $\gamma^2=\gamma_1^2+\cdots+\gamma_K^2$。同値マルチンゲール測度の集合 $\mathbf P$ が空でない $\iff$ 次の (a)–(c) が成り立つ。

$$
\begin{aligned}
&\text{(a)}\ \underbrace{\int_0^T\alpha^2(Y(t),t)\,dt\lt\infty\ \ \text{a.s.}}_{\rho\ \text{が定義できる}}\\
&\text{(b)}\ \underbrace{E(\rho^2)\lt\infty}_{\rho\in L^2},\quad \rho=\exp\Big(\underbrace{\int_0^T\alpha(Y(t),t)\,dW(t)}_{\text{確率積分}}-\underbrace{\tfrac12\int_0^T\alpha^2(Y(t),t)\,dt}_{\text{補正項}}\Big)\\
&\text{(c)}\ \underbrace{Y^{\ast}\ \text{は}\ \{\mathcal F_t\}\ \text{上のマルチンゲール}}_{\text{(23) の過程}}
\end{aligned}\tag{24}
$$

このとき $\mathbf P$ は一点集合 $\{P^{\ast}\}$ で、

$$
\underbrace{\frac{dP^{\ast}}{dP}=\rho}_{\text{密度}},\qquad \underbrace{\mathrm{Law}_{P^{\ast}}(Z)=\mathrm{Law}_{P}(Z^{\ast})}_{\text{P* 下の }Z\text{ の分布}=\text{P 下の }Z^{\ast}\text{ の分布}}\tag{25}
$$

> (c) の十分条件：$\sum_{i=1}^{K}\sum_{j=1}^{K}E\Big[\int_0^T\{\sigma_{ij}(Y^{\ast}(t),t)\}^2\,dt\Big]\lt\infty$。

**Corollary（拡散モデルの評価式）**

モデルが viable $\iff$ (a)–(c)。このとき全ての請求権 $x=f(Z)\in X$ が裁定で決まる。

$$
\hat\pi(x)=\underbrace{E\big(f(Z^{\ast})\big)}_{P\ \text{下のドリフトなし過程}}=\underbrace{E^{\ast}\big(f(Z)\big)}_{P^{\ast}\ \text{下の元の過程}}\tag{26}
$$

> 測度変換はドリフトをゼロにすることで実現される（導出の (47)–(50) 参照）。Section 5 の結論は、$\sigma$ が過去の経路に依存する広い意味の拡散へも拡張できるが、測度論的な記法がかなり必要になる。

| 記号・項目 | 意味 |
|---|---|
| $K$ | 危険証券の数（次元） |
| $W$ | $K$ 次元標準ブラウン運動 |
| $\sigma(x,t)$ | $K\times K$ のボラティリティ行列（正則・連続） |
| $\mu(x,t)$ | $K$ 次元ドリフト（連続） |
| $\alpha(x,t)$ | (21) を満たすベクトル |
| $Y,\ Y^{\ast}$ | 元の価格過程、ドリフトなしの過程 |
| $Z,\ Z^{\ast}$ | $(1,Y)$、$(1,Y^{\ast})$ |
| $\rho$ | $dP^{\ast}/dP$ の候補（(24b)） |
| $f$ | 請求権を価格経路の関数で表す可測汎関数 |
| $C[0,T]$ | $[0,T]\to\mathbb R^K$ の連続関数空間（一様収束位相） |

---

### 1.6 他の取引戦略（Section 6）

**一般の戦略クラスでの viability**

より広い取引戦略クラスに自己充足性が定義できるとする。取引可能な請求権の集合を $M'$、価格汎関数を $\pi'$ とすると、単純戦略の場合の議論（同値マルチンゲール測度の導入まで）はそのまま成り立つ。

$$
\underbrace{\text{viable}}_{\text{拡大クラス}}\iff\exists\,\psi\in\Psi:\ \psi\vert_{M'}=\pi',\qquad x\ \text{が裁定で決まる}\iff\underbrace{\psi(x)}_{\text{一定}}\ \text{over}\ \{\psi\in\Psi:\psi\vert_{M'}=\pi'\}\tag{27}
$$

> フリーランチがなければ $M\subseteq M'$、$\pi'\vert_M=\pi$。よって $\psi\vert_{M'}=\pi'$ なら $\psi\vert_M=\pi$ で、同値マルチンゲール測度が得られる。逆は一般には成り立たず、一対一対応が崩れうる。

**一対一対応が保たれる条件**

$$
\underbrace{\psi\vert_{M'}=\pi'}_{\text{拡大クラスでも一致}}\quad\text{for all}\ \psi\in\Psi\ \text{such that}\ \underbrace{\psi\vert_M=\pi}_{\text{単純戦略で一致}}\tag{28}
$$

(28) が成り立てば、請求権が裁定で決まる $\iff$ 全ての同値マルチンゲール測度で期待値が一定。成り立たないときは「期待値が一定 $\Rightarrow$ 裁定で決まる」のみが言える。例：Black–Scholes モデルで $t_1,\dots,t_{N-1}$ を $\{\mathcal F_t\}$ に関する停止時刻まで許しても、フリーランチは生じず (28) が成り立つ。

**ほとんど単純な戦略とフリーランチ**

$N$ を状態依存の整数値確率変数にし、$\{N\ge n\}\in\mathcal F_{t_n}$（未来を先取りしない）とした戦略を「almost simple」という。Black–Scholes モデルでは、almost simple な自己充足的戦略で次を満たすものが存在する。

$$
\underbrace{\theta(0)\cdot Z(0)=0}_{\text{初期費用ゼロ}}\ \text{かつ}\ \underbrace{\theta(T)\cdot Z(T)\ge1\ \ \text{a.s.}}_{\text{確実に1以上}}\tag{29}
$$

> 倍賭け戦略（赤が出るまで賭け金を倍にする）に相当する。ブラウン運動に固有の性質ではなく、Cox–Ross のジャンプ過程モデルでも同様。借入に上限があれば排除される。

**連続取引の自己充足条件（Black–Scholes・Merton の暗黙の定義）**

$V(t)=\theta(t)\cdot Z(t)$ として、

$$
\underbrace{V(t)}_{\text{価値}}=\underbrace{V(0)}_{\text{初期価値}}+\underbrace{\int_0^t\theta(u)\,dZ(u)}_{\text{取引損益（伊藤積分）}},\qquad0\le t\le T\tag{30}
$$

論文はこの定義のもとで free lunch の有無・viability を検討することを将来の論文に委ねている。

| 記号・項目 | 意味 |
|---|---|
| $M',\ \pi'$ | 拡大した戦略クラスでの取引可能請求権の集合とその価格 |
| $N$ | 取引回数（almost simple では確率変数） |
| $V(t)$ | ポートフォリオの価値過程 |

---

### 1.7 拡張（Section 7）

**ニューメレールの変更**

$Z_0(t,\omega)\gt0$ のみを仮定する（無リスクでなくてよい）。

$$
Z'_k(t,\omega)=\underbrace{\frac{Z_k(t,\omega)}{Z_0(t,\omega)}}_{\text{債券建て価格}},\qquad Z'_0\equiv1\tag{31}
$$

元のモデルが viable $\iff$ プライム付きモデルが viable。請求権と裁定価値は次で対応する。

$$
\underbrace{x'=\frac{x}{Z_0(T)}}_{\text{請求権の換算}},\qquad \underbrace{\hat\pi'(x')=\frac{\hat\pi(x)}{Z_0(0)}}_{\text{裁定価値の換算}}\tag{32}
$$

**位相の調整**

変換は単位の変更に過ぎないので、請求権空間と連続性の位相を変えてはならない。$Z_0(T)$ が有界で0から離れていない場合は次を使う。

$$
x'\in X'\iff E\big((x'Z_0(T))^2\big)\lt\infty,\qquad x'_n\to x'\iff E\big(\{(x'_n-x')Z_0(T)\}^2\big)\to0,\qquad E\Big(\Big\{\frac{dP^{\ast}}{dP}Z_0(T)\Big\}^2\Big)\lt\infty\tag{33}
$$

（$Z_0(T)$ が $(0,\infty)$ 内の有界区間に収まるなら、通常の $L^2$ と $dP^{\ast}/dP\in L^2$ で済む。）

**Black–Scholes（利子率 $r$）**

債券 $Z_0(t)=e^{rt}$、株式は次に従う。プライム付きモデルは $Z'_0\equiv1$、$Z'_1(t)=Z_1(t)e^{-rt}$。

$$
dZ_1(t)=\bar\mu\,Z_1(t)\,dt+\sigma_B Z_1(t)\,dW(t),\qquad dZ'_1(t)=\underbrace{(\bar\mu-r)}_{\text{超過ドリフト}}Z'_1(t)\,dt+\sigma_B Z'_1(t)\,dW(t)\tag{34}
$$

Section 5 の結果から viable で全請求権が裁定で決まる。請求権 $x=(Z_1(T)-a)^{+}$（欧州コール、行使価格 $a$）の裁定価値は次の通り（Black–Scholes の公式）。

$$
\hat\pi(x)=E\Big(e^{-rT}\big(\underbrace{Z_1^{\circ}(T)}_{\text{無リスク成長}}-a\big)^{+}\Big),\qquad dZ_1^{\circ}=rZ_1^{\circ}\,dt+\sigma_B Z_1^{\circ}\,dW\tag{35}
$$

**途中支払いのある請求権**

請求権を $x:\Omega\times\mathbf T\to\mathbb R$ で表し、$x(\omega,t)$ を $(0,t]$ に支払われる累計額とする。例：レート $d(\omega,s)$ で時刻 $\tau$（ランダム）まで支払い、その後一括 $l(\omega,\tau)$ を支払う。

$$
x(\omega,t)=\underbrace{\int_0^{t\wedge\tau}d(\omega,s)\,ds}_{\text{連続支払い}}+\underbrace{l(\omega,\tau)\,1_{\{\tau\le t\}}}_{\text{一括支払い}}\tag{36}
$$

これと等価な請求権 $x'$（利子率ゼロの無リスク証券で運用すると考える）は、満期にのみ累計額を払う。

$$
x'(\omega,t)=0\ \ (t\lt T),\qquad x'(\omega,T)=x(\omega,T)\tag{37}
$$

$x$ が裁定で決まる $\iff$ $x'$ が裁定で決まる。裁定価値は等しい。配当は、即時再投資するか、請求権から累積配当を引くことで同様に扱える。

**オプション（選択権付き請求権）**

オプションを請求権の族 $\{x_\kappa;\ \kappa\in\mathcal A\}$ として表し、保有者は最初にどの $x_\kappa$ を取るかを選ぶ。$\mathbf P$ を同値マルチンゲール測度の集合とすると、価値は次の範囲に入る。

$$
\underbrace{\sup_{\kappa\in\mathcal A}\ \inf_{P^{\ast}\in\mathbf P}E^{\ast}(x_\kappa)}_{\text{少なくともこれ}}\ \le\ \text{オプションの価値}\ \le\ \underbrace{\sup_{\kappa\in\mathcal A}\ \sup_{P^{\ast}\in\mathbf P}E^{\ast}(x_\kappa)}_{\text{高々これ}}\tag{38}
$$

両端が等しければ価格は裁定で決まる。$\mathbf P=\{P^{\ast}\}$ なら次の通り（$\kappa$ の選択はリスク態度に依存しない）。

$$
\text{オプションの価値}=\underbrace{\sup_{\kappa\in\mathcal A}E^{\ast}(x_\kappa)}_{\text{最適な選択}}\tag{39}
$$

**アメリカンプット**

Black–Scholes モデル（利子率 $r$）で、行使価格 $a$、満期 $T$ のアメリカンプット（$\kappa$ は停止時刻 $\tau$）。裁定価値は最適停止問題になる。

$$
\sup_{\tau}\ E\Big(\big\{\underbrace{a\,e^{-r\tau}}_{\text{割引行使価格}}-\underbrace{Z_1^{\ast}(\tau)}_{\text{ドリフトなし}}\big\}^{+}\Big),\qquad dZ_1^{\ast}=\sigma_B Z_1^{\ast}\,dW,\ \ 0\le\tau\le T\ \ (\tau\ \text{は停止時刻}) \tag{40}
$$

**$L^p$ への拡張**

$p\in[1,\infty]$、$X=L^p(\Omega,\mathcal F,P)$ とし、$\psi$ が連続であることを $\psi(x)=E(\rho x)$（$\rho\in L^q$）で特徴づける。$Z_k(t)\in X$、$\theta_k(t)Z_k(t)\in X$ を仮定し、同値マルチンゲール測度の条件を $dP^{\ast}/dP\in L^q$ に変えれば、Section 3 までの理論はそのまま成り立つ。

$$
\underbrace{\frac1p+\frac1q=1}_{\text{共役指数}},\qquad \underbrace{\frac{dP^{\ast}}{dP}\in L^q(\Omega,\mathcal F,P)}_{\text{同値マルチンゲール測度の条件}}\tag{41}
$$

> $p=\infty$ では $X$ に $L^1$-Mackey 位相を入れる。拡散モデルでは Kunita–Watanabe の結果が $\rho\in L^2$ を要求するため、$p\lt2$（$q\gt2$）なら Theorem 3 の条件は「高々一つ」を保証するだけになり、その測度が $L^q$ に入れば viable・全請求権が裁定で決まる。入らなければ viable でない。例：$\mu+\sigma^2/2\neq0$ の Black–Scholes モデルでは $dP^{\ast}/dP\notin L^{\infty}$ なので、$p=1$ では viable でない。$p\gt2$（$q\lt2$）は条件が緩く viable は言えるが、全請求権が裁定で決まるかは未解決（予想止まり）。

| 記号・項目 | 意味 |
|---|---|
| $Z'_k$ | ニューメレール $Z_0$ で割った価格 |
| $x',\ \hat\pi'$ | 換算後の請求権、裁定価値 |
| $r$ | 債券の利子率（$Z_0(t)=e^{rt}$） |
| $\bar\mu,\ \sigma_B$ | 株価の定数ドリフト・ボラティリティ（元論文の $\mu,\sigma$） |
| $a$ | 行使価格 |
| $Z_1^{\circ}$ | 利子率 $r$ で成長する対応過程（元論文の $Z_1^{0}$） |
| $d(\omega,s),\ l(\omega,\tau)$ | 支払いレート、一括支払い |
| $\tau$ | ランダムな日付（停止時刻） |
| $\{x_\kappa;\kappa\in\mathcal A\}$ | オプションの請求権族（元論文の $\alpha\in\mathscr A$） |
| $p,\ q$ | $L^p$ の指数、共役指数 |

---

### 1.8 Cox–Ross との関係（Section 8）

**ジャンプ過程モデル**

株価 $Y$ が、強度 $\lambda$ のポアソン過程 $N=\{N(t);0\le t\le T\}$ と正の定数 $c_u,c_d$ により次に従う。

$$
Y(t)=Y(0)+\underbrace{\int_0^t c_u\,Y(s)\,dN(s)}_{\text{ジャンプ}}-\underbrace{\int_0^t c_d\,Y(s)\,ds}_{\text{下方ドリフト}}\tag{42}
$$

自由パラメータは $\lambda$ で、株式が無リスク利子率（ゼロ）で増えるのは次のとき。

$$
\lambda^{\ast}=\underbrace{\frac{c_d}{c_u}}_{\text{ドリフトが0になる強度}}\tag{43}
$$

> 元論文の記号は $a=c_u$、$b=c_d$、$\lambda^{\ast}=b/a$。$P$ を $P^{\ast}$ に置き換えることは、Cox–Ross のパラメータ調整（拡散ではドリフト、ジャンプではジャンプ強度）と同値である。ジャンプ過程でも同値マルチンゲール測度は一意に存在する（密度の明示計算と一意性の証明は読者に委ねられている）。Cox–Ross の「裁定は選好に依存しない」と本論文の「クラス $\mathbf A$ に依存する」は矛盾しない：Cox–Ross が作るリスク中立主体の選好が、零集合を保ち連続性を満たす同値マルチンゲール測度に対応し、$\mathbf A$ に属するからである。

---

### 1.9 主要帰結

**主要式**

$$
\boxed{\begin{aligned}
&\underbrace{\text{モデルが viable}}_{\text{無裁定・均衡可}}\iff\underbrace{\exists\,\psi\in\Psi,\ \psi\vert_M=\pi}_{\text{正の連続拡張}}\iff\underbrace{\mathbf P\neq\varnothing}_{\text{EMM が存在}}\\
&\hat\pi(x)=\underbrace{E^{\ast}(x)}_{P^{\ast}\ \text{下の期待値}}\quad(\forall P^{\ast}\in\mathbf P)\\
&\underbrace{\text{viable かつ全請求権が裁定で決まる}}_{\text{完備}}\iff\mathbf P=\{P^{\ast}\}\\
&\underbrace{\frac{dP^{\ast}}{dP}=\rho}_{\text{拡散の密度}}=\exp\Big(\int_0^T\alpha\,dW-\tfrac12\int_0^T\alpha^2\,dt\Big),\quad \hat\pi(x)=E\big(f(Z^{\ast})\big)=E^{\ast}\big(f(Z)\big)
\end{aligned}}\tag{44}
$$

**比較静学・特殊ケース**

| 変化・ケース | 結果 | 符号・式 |
|---|---|---|
| 同値マルチンゲール測度が存在しない | 単純フリーランチあり（モデルは viable でない） | 式(17)、Corollary (a) |
| 同値マルチンゲール測度が複数 | 全 $P^{\ast}$ で期待値が等しい請求権のみ裁定で決まる | 式(17) |
| 同値マルチンゲール測度が一意 | 全請求権が裁定で決まる | 式(44) 第3式 |
| 有限モデルで分岐数 $\le K+1$ | 再帰計算で価格が決まる | 式(20) |
| 拡散で (a)–(c) 成立 | 測度変換はドリフトのゼロ化、$\hat\pi(x)=E(f(Z^{\ast}))$ | 式(26) |
| 利子率 $r$ の Black–Scholes | Black–Scholes 公式 | 式(35) |
| アメリカンプット | 最適停止問題 | 式(40) |
| 取引戦略を almost simple に拡大 | Black–Scholes でも free lunch（倍賭け） | 式(29) |
| $L^p$ で $p=1$、$\mu+\sigma^2/2\neq0$ の Black–Scholes | $dP^{\ast}/dP\notin L^{\infty}$ なので viable でない | 式(41) |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 無裁定と均衡の関係 | 価格系が均衡として成立しうること（viability）は、$\pi$ が連続かつ狭義正な線形汎関数に拡張できることと同値（式(6)）。 |
| 請求権の価格が一意に決まる条件 | 整合的な価格の集合が一点になること。同値マルチンゲール測度の下の期待値が全て等しいことと同値（式(9)、(17)）。 |
| リスク中立評価 | 裁定価値は $P^{\ast}$ の下の期待値。$\mathbf A$ のどの主体を想定しても同じ値になる（式(17)）。 |
| 市場の完備性 | 全請求権が裁定で決まることは、同値マルチンゲール測度が一意なこと（Corollary (c)）。 |
| 有限状態のオプション評価 | 同値マルチンゲール測度は条件付き確率の連立方程式で決まり、履歴依存の請求権も評価できる（式(19)、(20)）。 |
| Black–Scholes 公式 | ドリフトを無リスク成長に置き換えた過程の期待値（式(26)、(35)）。 |
| Cox–Ross の手法 | パラメータ調整は $P$ から $P^{\ast}$ への測度変換と同値（式(43)）。 |
| 無リスク資産のない市場 | ニューメレール変換で無リスク・ゼロ金利のモデルに帰着（式(31)、(32)）。 |
| 途中支払い・配当のある請求権 | 満期にまとめて払う請求権に帰着（式(36)、(37)）。 |
| 選択権付きオプション（アメリカンプット） | 最適停止問題となり、価格範囲は式(38)、(39)。 |
| 取引戦略のクラスと結論の関係 | 取引日を状態依存にすると倍賭け戦略で free lunch が生じる（式(29)）。 |

## 3. モデルが整理している点 {#sec3}

- 「均衡の存在（viability）」「無裁定（単純フリーランチなし）」「同値マルチンゲール測度の存在」を、一つの同値関係としてまとめた。
- 請求権の価格が裁定で決まることと、同値マルチンゲール測度の期待値が一定なこと、完備性と測度の一意性を対応づけた。
- Black–Scholes・Merton・Cox–Ross の個別の手法を、測度変換（ドリフトのゼロ化）という共通の枠組みで理解できるようにした。
- 取引戦略のクラスの選び方が理論の結論を左右することを、倍賭け戦略の例で示した。

## 4. 対象外の現象 {#sec4}

- 単純戦略という制限の経済的な正当化。著者自身が、経済的には正当化できないと述べている。
- 伊藤積分で定義される連続取引戦略（式(30)）の下での free lunch の有無と viability。将来の論文に委ねられている。
- 借入に上限がある場合の戦略クラスのもとでの理論（「興味深い」とされるのみ）。
- $L^p$ で $p\gt2$ のとき、全請求権が裁定で決まるかどうか。Kunita–Watanabe の結果を強められるという予想のみ。
- ジャンプ過程モデルでの $dP^{\ast}/dP$ の明示計算と一意性の証明。読者に委ねられている。
- Merton の確率的利子率モデルでの欧州コールの裁定価格付け（Section 5 の結果からは主張できない）。
- 取引費用や空売り制限のある市場（摩擦のない市場を仮定）。
- 主体間で異なる信念（$P$ は全員一致の主観確率）。
- 価格 $\pi$ や $Z$ の内生的な決定（所与として扱う）。

## 5. 主要文献・関連論文 {#sec5}

- **[金字塔的論文]** Arrow, K. J. (1964). The role of securities in the optimal allocation of risk-bearing. *Review of Economic Studies*, 31(2), 91–96.
  - **位置づけ**: 「市場で張られる証券が、どの請求権を張れるか」という問題を経済学で最初に扱った古典。本論文の問題意識（どの請求権が張られるか）の出発点。
- **[原著論文]** Black, F., & Scholes, M. (1973). The pricing of options and corporate liabilities. *Journal of Political Economy*, 81(3), 637–654.
  - **位置づけ**: オプションの裁定価格付けを始めた論文。本論文はその基礎を一般的に整理した。
- **[関連文献]** Merton, R. C. (1973). Theory of rational option pricing. *Bell Journal of Economics and Management Science*, 4(1), 141–183.
  - **位置づけ**: Black–Scholes の議論を一般化したオプション価格理論。本論文が刺激を受けた論文の一つ。
- **[関連文献]** Cox, J. C., & Ross, S. A. (1976). The valuation of options for alternative stochastic processes. *Journal of Financial Economics*, 3(1–2), 145–166.
  - **位置づけ**: 「株式が無リスク利子率で増えるよう過程を修正して期待値をとる」という観察を示した論文。本論文はこれを同値マルチンゲール測度として定式化した。
- **[発展文献]** Harrison, J. M., & Pliska, S. R. (1981). Martingales and stochastic integrals in the theory of continuous trading. *Stochastic Processes and their Applications*, 11(3), 215–260.
  - **位置づけ**: 本論文が将来の課題とした連続取引（伊藤積分による自己充足戦略）の理論を展開した論文。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
前提 A1–A3 (式(1)-(3))：選好のクラス A
        │
        ▼  分離超平面定理（T1）
Theorem 1：viable ⟺ ∃ψ∈Ψ, ψ|M = π       式(6)
        │
        ├─ Corollary 1, 2：整合的価格・裁定価値   式(7)-(9)
        │
        ▼  証券市場モデル（式(10)-(14)）
        │  Riesz 表現（T2）＋ 自己充足性（式(12)）＋ マルチンゲール（T3）
Theorem 2：ψ ↔ 同値マルチンゲール測度 P*     式(15), (16)
        │
        ├─ Corollary (a)(b)(c)                式(17)
        │
        ├─ 有限モデル                          式(18)-(20)
        │
        ▼  拡散モデル（式(21)-(23)）
        │  Kunita–Watanabe（T5）＋ 伊藤の公式（T6）＋ Girsanov（T7）
Theorem 3：P* の存在 ⟺ (a)(b)(c)、一意       式(24), (25)
        │
        ├─ Corollary：π̂(x)=E(f(Z*))           式(26)
        │
        ├─ 戦略クラスの拡大（Section 6）        式(27)-(30)
        └─ 拡張（Section 7, 8）                式(31)-(43)
```

### A.1 使う道具

**T1 分離超平面定理**

$G$ が開凸集合、$H$ が凸集合で $G\cap H=\varnothing$ なら、非自明な連続線形汎関数 $\Lambda$ と実数が存在して、$G$ 上で $\Lambda\ge0$、$H$ 上で $\Lambda\le0$ とできる（Holmes [11, p.63]）。

**T2 Riesz の表現定理（$L^2$）**

$X=L^2(\Omega,\mathcal F,P)$ 上の線形汎関数 $\psi$ が連続 $\iff$ ある $\rho\in L^2(\Omega,\mathcal F,P)$ で $\psi(x)=E(\rho x)$。

**T3 条件付期待値の性質とマルチンゲール**

$E^{\ast}\big(Y\cdot\xi\mid\mathcal F_t\big)=Y\,E^{\ast}(\xi\mid\mathcal F_t)$（$Y$ が $\mathcal F_t$ 可測）、$E^{\ast}\big(E^{\ast}(\xi\mid\mathcal F_t)\big)=E^{\ast}(\xi)$。$Z$ が $P^{\ast}$ のマルチンゲールとは、式(15)第3式。

**T4 Radon–Nikodym 微分**

$P^{\ast}$ が $P$ に絶対連続なら、$dP^{\ast}=\rho\,dP$ となる $\rho\ge0$ が存在する。$E^{\ast}(x)=E(\rho x)$。

**T5 Kunita–Watanabe の表現定理**

ブラウン運動の情報に関する二乗可積分なマルチンゲール $\zeta(t)$（$\zeta(0)=1$）は、ある $\gamma\in\Phi$（$\int_0^TE(\gamma^2(t))\,dt\lt\infty$）で $\zeta(t)=1+\int_0^t\gamma(s)\,dW(s)$ と書ける（Kunita–Watanabe [13, Section 4]）。

**T6 伊藤の公式**

$\zeta$ が伊藤過程で $\zeta\gt0$ なら、$d\ln\zeta=\dfrac{d\zeta}{\zeta}-\dfrac{1}{2}\dfrac{(d\zeta)^2}{\zeta^2}$。

**T7 Girsanov の定理**

$dP^{\ast}=\zeta\,dP$、$\zeta=\exp\{\int\phi\,dW-\tfrac12\int\phi^2\,ds\}$ のとき、$W^{\ast}(t)=W(t)-\int_0^t\phi(s)\,ds$ は $P^{\ast}$ の下で標準ブラウン運動（Girsanov [10]）。

**T8 停止時刻による局所化**

$\sigma$ が有界でないとき、$\tau_b=\inf\{t:|Y_k(t)|=b\ \text{for some}\ k\}$（なければ $T$）で止めた過程を使い、$b\to\infty$ とする。

**T9 指数型密度の期待値**

(a)(b) のとき $E(\rho)=1$（Gihman–Skorohod [9, p.82]）。

**T10 有限変動な連続マルチンゲールは定数**

絶対連続な成分 $\int\mu^{\ast}\,ds$ がマルチンゲールなら $\mu^{\ast}=0$ a.e.。

### A.2 Theorem 1：viability の特徴づけ（式(6)）

**Step 1　十分性（$\Leftarrow$）：選好を構成**　$\psi\in\Psi$、$\psi\vert_M=\pi$ とし、

$$
(r,x)\succsim(r',x')\iff r+\psi(x)\ge r'+\psi(x')
$$

と定める。$r+\psi(x)$ は線形で連続なので (1)、(2) を満たす。$r'\gt0$ や $x'\in X^{+}$ を足すと値が増える（$\psi(x')\gt0$）ので (3) も満たす。よって $\succsim\in\mathbf A$。

**Step 2　十分性：最適性**　$(r^{\ast},m^{\ast})=(0,0)$ とする。予算制約 $r+\pi(m)\le0$ のもとでは、$\psi\vert_M=\pi$ より $r+\psi(m)=r+\pi(m)\le0$ なので $(0,0)\succsim(r,m)$。式(5)が成り立つ → 式(6)（$\Leftarrow$）。

**Step 3　必要性（$\Rightarrow$）：$(r^{\ast},m^{\ast})=(0,0)$ への正規化**　式(5)の $\succsim\in\mathbf A$、$(r^{\ast},m^{\ast})$ に対し、$(r,x)\succsim'(r',x')\iff(r+r^{\ast},x+m^{\ast})\succsim(r'+r^{\ast},x'+m^{\ast})$ と定める。平行移動なので $\succsim'\in\mathbf A$。予算内の $(r,m)$ に対し $(r+r^{\ast})+\pi(m+m^{\ast})\le0$ なので $(r^{\ast},m^{\ast})\succsim(r+r^{\ast},m+m^{\ast})$、すなわち $(0,0)\succsim'(r,m)$。以後 $(r^{\ast},m^{\ast})=(0,0)$。

**Step 4　分離**　$G=\{(r,x):(r,x)\succ(0,0)\}$、$H=\{(r,m)\in\mathbb R\times M:r+\pi(m)\le0\}$。式(5)より $G\cap H=\varnothing$。$G$ は選好の凸性(1)で凸、連続性(2)で開。$H$ は凸。T1 により、$\mathbb R\times X$ 上の非自明な連続線形汎関数 $\Lambda$ が存在し、$G$ 上で $\Lambda\ge0$、$H$ 上で $\Lambda\le0$。

**Step 5　$\Lambda(1,0)\gt0$ の確認**　$\Lambda$ は非自明なので $\Lambda(r',x')\gt0$ となる $(r',x')$ がある。式(3)より $(1,0)\succ(0,0)$。連続性で、十分小さい $\varepsilon\gt0$ について $(1-\varepsilon r',-\varepsilon x')\succ(0,0)$、すなわちこの点は $G$ に入る。よって $\Lambda(1-\varepsilon r',-\varepsilon x')=\Lambda(1,0)-\varepsilon\Lambda(r',x')\ge0$、$\Lambda(1,0)\ge\varepsilon\Lambda(r',x')\gt0$。

**Step 6　正規化と $\psi$ の導入**　$\Lambda(1,0)=1$ に正規化し、$\Lambda(r,x)=r+\psi(x)$（$\psi$ は $X$ 上の連続線形汎関数）と書く。

**Step 7　$\psi$ の狭義正性**　$x\in X^{+}$ なら式(3)より $(0,x)\succ(0,0)$。連続性で、ある $\varepsilon\gt0$ について $(-\varepsilon,x)\succ(0,0)$。$\Lambda(-\varepsilon,x)=\psi(x)-\varepsilon\ge0$ なので $\psi(x)\ge\varepsilon\gt0$。よって $\psi\in\Psi$。

**Step 8　$\psi\vert_M=\pi$**　$m\in M$ に対し $(-\pi(m),m)$ と $(\pi(m),-m)$ はともに $H$ に入る（$\pi$ の線形性）。$\Lambda\le0$ より $\psi(m)-\pi(m)\le0$ かつ $\pi(m)-\psi(m)\le0$。したがって $\pi(m)=\psi(m)$ → 式(6)（$\Rightarrow$）。

**Step 9　Corollary 1, 2**　$p$ が $x$ と整合的 $\iff$ $(M',\pi')$ が viable（式(7)）$\iff$ Theorem 1 から $\psi\in\Psi$ で $\psi\vert_{M'}=\pi'$ となるものがある。$\psi\vert_{M'}=\pi'$ は $\psi\vert_M=\pi$ かつ $\psi(x)=p$ と同じ → 式(8)。一点集合ならその値が裁定価値 → 式(9)。

**確認**　$\Omega$ が有限（$X$ が有限次元）のとき、$\psi\in\Psi$ は $\psi(x)=\sum_i\rho_i x(\omega_i)$、$\rho_i\gt0$ の形になる。$x\notin M$ なら $\psi(x)$ は $M$ 上の制約だけでは決まらず、$\hat M=M$ となる。これは 1.1 の注と一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(1)–(3) | 選好の凸性・連続性・強増加性 |
| 式(5) | viability の定義 |
| T1 | 分離超平面定理 |

### A.3 Theorem 2：同値マルチンゲール測度との対応（式(15)、(16)）

**Step 1　$P^{\ast}\Rightarrow\psi$：$\psi$ の定義**　$P^{\ast}\in\mathbf P$、$\rho=dP^{\ast}/dP$ として $\psi(x)=E^{\ast}(x)=E(\rho x)$ と定める（式(16)）。$\rho\in L^2$ なので T2 より $\psi$ は連続。

**Step 2　狭義正性**　$P$ と $P^{\ast}$ は同値なので $\rho\gt0$ a.s.。$x\in X^{+}$ なら $\psi(x)=E(\rho x)\gt0$。よって $\psi\in\Psi$。

**Step 3　拡張性 $\psi\vert_M=\pi$**　$m\in M$ を生成する自己充足的単純戦略 $\theta$ をとる。$n=1,\dots,N$ で

$$
E^{\ast}\big(\theta(t_n)\cdot Z(t_n)\mid\mathcal F_{t_{n-1}}\big)=E^{\ast}\big(\theta(t_{n-1})\cdot Z(t_n)\mid\mathcal F_{t_{n-1}}\big)\quad\text{（自己充足性 式(12)）}
$$

$$
=\theta(t_{n-1})\cdot E^{\ast}\big(Z(t_n)\mid\mathcal F_{t_{n-1}}\big)=\theta(t_{n-1})\cdot Z(t_{n-1})\quad\text{（$\theta(t_{n-1})$ は $\mathcal F_{t_{n-1}}$ 可測、マルチンゲール）}
$$

期待値をとって $n=1,\dots,N$ で繰り返すと $E^{\ast}\big(\theta(T)\cdot Z(T)\big)=\theta(0)\cdot Z(0)$（$\mathcal F_0$ は自明）。$m=\theta(T)\cdot Z(T)$、$\pi(m)=\theta(0)\cdot Z(0)$（式(14)）なので $\psi(m)=E^{\ast}(m)=\pi(m)$。

**Step 4　$\psi\Rightarrow P^{\ast}$：測度の構成**　$\psi\in\Psi$、$\psi\vert_M=\pi$ とし $P^{\ast}(B)=\psi(1_B)$ と定める。$P(B)=0$ なら $1_B=0$ in $X$ なので $P^{\ast}(B)=0$。$P(B)\gt0$ なら $1_B\in X^{+}$ なので $P^{\ast}(B)=\psi(1_B)\gt0$。よって同値。

**Step 5　確率測度であること**　T2 により $\psi(x)=E(\rho x)$、$\rho\in L^2$。$P^{\ast}(B)=E(\rho1_B)$ は $\sigma$ 加法的で $dP^{\ast}/dP=\rho\in L^2$。$1_\Omega\in M$（債券を1単位持つ戦略で生成、価格1）なので $P^{\ast}(\Omega)=\psi(1_\Omega)=\pi(1_\Omega)=1$。

**Step 6　マルチンゲール性**　$k=0$ は自明。$k\gt0$、$t\le u$、$B\in\mathcal F_t$ に対し戦略を次で定める。

$$
\theta_k(s,\omega)=1\ \ (s\in[t,u),\ \omega\in B),\qquad
\theta_0(s,\omega)=\begin{cases}-Z_k(t,\omega)&s\in[t,u),\ \omega\in B\\ Z_k(u,\omega)-Z_k(t,\omega)&s\in[u,T],\ \omega\in B\end{cases}
$$

それ以外と $\theta_j$（$j\ne0,k$）は0。$B$ 上で $t$ に証券 $k$ を1株買い、費用を債券の空売りで賄い、$u$ で売却する。自己充足的で、満期の価値は $(Z_k(u)-Z_k(t))1_B$、初期費用は0。

**Step 7　期待値の等式**　$\psi\vert_M=\pi$ より $\psi\big((Z_k(u)-Z_k(t))1_B\big)=0$、すなわち $E^{\ast}(Z_k(u)1_B)=E^{\ast}(Z_k(t)1_B)$。これが全ての $B\in\mathcal F_t$ で成り立つので $Z_k(t)=E^{\ast}(Z_k(u)\mid\mathcal F_t)$ → 式(15)、(16)。

**確認**　1.4 の例で、$P^{\ast}$ から作った $\psi(x)=E^{\ast}(x)=37/30$ は式(20)の値と一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(12)、(14) | 自己充足性、価格の定義 |
| T2, T3, T4 | Riesz、条件付期待値、Radon–Nikodym |

### A.4 Corollary（式(17)）

**Step 1　(a)の十分性**　同値マルチンゲール測度 $P^{\ast}$ があるとする。自己充足的な単純戦略 $\theta$ が $\theta(T)\cdot Z(T)\in X^{+}$ を満たすなら、$P^{\ast}$ は $P$ と同値なので $P^{\ast}(\theta(T)\cdot Z(T)\ge0)=1$、$P^{\ast}(\theta(T)\cdot Z(T)\gt0)\gt0$。よって $E^{\ast}(\theta(T)\cdot Z(T))\gt0$。

**Step 2**　Theorem 2 の Step 3 より $\theta(0)\cdot Z(0)=E^{\ast}(\theta(T)\cdot Z(T))\gt0$。したがって式(13)を満たす戦略はなく、単純フリーランチは存在しない。Theorem 2 より $\psi\in\Psi$、$\psi\vert_M=\pi$ もあるので Theorem 1 より viable。

**Step 3　(a)の必要性**　viable なら Theorem 1 から $\psi$ があり、Theorem 2 から対応する $P^{\ast}$ がある。

**Step 4　(b), (c)**　Theorem 2 の対応で $\{\psi(x):\psi\in\Psi,\ \psi\vert_M=\pi\}=\{E^{\ast}(x):P^{\ast}\in\mathbf P\}$。式(9)により、これが一点集合 $\iff$ $E^{\ast}(x)$ が $\mathbf P$ 上で一定 → 式(17)。全 $x$ で一点集合なら $\mathbf P$ は一点（$x=1_B$ で測度が決まる）。

**確認**　1.4 の例では $\mathbf P$ が一点なので (c) が成り立ち、式(20)は一意。

### A.5 有限モデルの数値例（式(19)、(20)）

**Step 1　日付1の方程式**　$E^{\ast}(Z_1(1))=Z_1(0)=10$、$E^{\ast}(Z_2(1))=Z_2(0)=10$（マルチンゲール、式(15)第3式）。$P^{\ast}(B_3)=1-p-q$ として式(19)の2式を得る。

**Step 2　連立方程式を解く**　第1式：$11p+11q+8-8p-8q=3(p+q)+8=10$ より $p+q=\tfrac23$。第2式：$9p+10q+11-11p-11q=11-2p-q=10$ より $2p+q=1$。引き算して $p=\tfrac13$、$q=\tfrac13$ → 式(19)。

**Step 3　日付2の条件付き確率**　$B_1$ の中で $E^{\ast}(Z_1(2)\mid B_1)=11$、$E^{\ast}(Z_2(2)\mid B_1)=9$ と確率の総和1から、$P^{\ast}(\omega_1\mid B_1)=\tfrac14$、$P^{\ast}(\omega_2\mid B_1)=\tfrac15$、$P^{\ast}(\omega_3\mid B_1)=\tfrac{11}{20}$。$B_2$、$B_3$ も同様に一意（$B_2$：$\tfrac14,\tfrac14,\tfrac12$、$B_3$：$\tfrac15,\tfrac15,\tfrac35$）。各分岐確率が一意なので $P^{\ast}$ は一意。

**Step 4　同時確率**　$P^{\ast}(\omega_i)=P^{\ast}(B_j)P^{\ast}(\omega_i\mid B_j)$：$\tfrac13\cdot\tfrac14=\tfrac1{12}$、$\tfrac13\cdot\tfrac15=\tfrac1{15}$、$\tfrac13\cdot\tfrac{11}{20}=\tfrac{11}{60}$ など。

**Step 5　期待値**　$\hat\pi(x)=\tfrac{5}{12}+\tfrac{1}{15}+0+\tfrac{5}{12}+0+0+\tfrac{4}{15}+\tfrac{1}{15}+0=\tfrac56+\tfrac25=\tfrac{37}{30}\approx1.2333$ → 式(20)。

**確認**　各 $B_j$ での条件付き確率の和は $\tfrac14+\tfrac15+\tfrac{11}{20}=\tfrac{5+4+11}{20}=1$、$\tfrac14+\tfrac14+\tfrac12=1$、$\tfrac15+\tfrac15+\tfrac35=1$。$P^{\ast}(\omega_i)$ の9個の総和も $\tfrac{1}{12}+\tfrac{1}{15}+\tfrac{11}{60}+\tfrac{1}{12}+\tfrac{1}{12}+\tfrac{1}{6}+\tfrac{1}{15}+\tfrac{1}{15}+\tfrac{1}{5}=1$。

| 入力・使う道具 | 内容 |
|---|---|
| 式(15) 第3式 | マルチンゲール条件 |
| 式(18) | 請求権 $x$ |
| 図1の価格・ペイオフ | 原論文 Figure 1 |

### A.6 Proposition 1：$\mathcal F_t$ の生成

**Step 1　$\mathcal G_t$ の定義**　$\mathcal G_t$ を $\{Y(s);0\le s\le t\}$ が生成する $\sigma$ 加法族とする。示すべきは $\mathcal F_t=\mathcal G_t$。

**Step 2　$V$ の定義**　$V(t)=Y(t)-Y(0)-\int_0^t\mu(Y(s),s)\,ds=\int_0^t\sigma(Y(s),s)\,dW(s)$（式(22)）。$V$ は $\{\mathcal G_t\}$ に適合する。

**Step 3　$W(t)$ の近似**　$t\gt0$ を固定し、$s_n=nt/2^j$ として

$$
W^{(j)}(t)=\sum_{n=0}^{2^j-1}\{\sigma(Y(s_n),s_n)\}^{-1}\big[V(s_{n+1})-V(s_n)\big]
$$

$\sigma$ は正則と仮定されているので定義できる。$W^{(j)}(t)$ は $\mathcal G_t$ 可測。

**Step 4　極限**　$\mu,\sigma$ の連続性から $W^{(j)}(t)\to W(t)$ a.s.（$j\to\infty$）。よって $W(t)$ は $\mathcal G_t$ 可測で、$\mathcal F_t\subseteq\mathcal G_t$。

**Step 5　逆の包含**　$Y$ は $\{\mathcal F_t\}$ に適合するので $\mathcal G_t\subseteq\mathcal F_t$。したがって $\mathcal F_t=\mathcal G_t$。$Z$ と $Y$ は同じ情報を生成する。

**Step 6　関数表現**　第二の主張（$x=f(Z)$）は可測性の標準的事実（Chung [5, p.299]）。論文でも証明されていない。

**確認**　Black–Scholes モデル（式(10)）では $\mathcal F_t=\sigma\{W(u);u\le t\}$ であり、$Z_1$ は $W$ の連続関数なので $\mathcal F_t=\sigma\{Z_1(u);u\le t\}$。

### A.7 Theorem 3：拡散モデルの同値マルチンゲール測度（式(24)、(25)、(26)）

**Step 1　準備**　$\Phi$ を、$\phi_k(t,\omega)$ が $(t,\omega)$ について可測、$\{\mathcal F_t\}$ に適合し、$\int_0^T\phi^2(t)\,dt\lt\infty$ a.s. を満たす $K$ 次元過程の集合とする（non-anticipating）。

**Step 2　密度過程**　$P^{\ast}\in\mathbf P$ とし、$dP^{\ast}=\zeta\,dP$。$\zeta$ は狭義正で二乗可積分。$\zeta(t)=E(\zeta\mid\mathcal F_t)$ は狭義正のマルチンゲールで $\zeta(T)=\zeta$、$E\zeta(t)=1$。Jensen の不等式で各 $t$ で二乗可積分。

**Step 3　表現（T5）**　T5 により、

$$
\zeta(t)=1+\int_0^t\gamma(s)\,dW(s),\qquad0\le t\le T,\qquad\gamma\in\Phi,\ \int_0^TE(\gamma^2(t))\,dt\lt\infty\tag{45}
$$

$\zeta(\cdot)$ は a.s. 連続で、標本経路は0から離れている。

**Step 4　指数表現（T6）**　$\phi_k(t)=\gamma_k(t)/\zeta(t)$ とおくと、伊藤の公式と式(45)より $\ln\zeta(t)=\int_0^t\phi\,dW-\tfrac12\int_0^t\phi^2\,ds$。特に次を得る。

$$
\zeta=\exp\Big\{\int_0^T\phi(s)\,dW(s)-\tfrac12\int_0^T\phi^2(s)\,ds\Big\}\tag{46}
$$

（ここまでは $P^{\ast}$ がマルチンゲール測度であることを使っていない。狭義正かつ二乗可積分な確率変数なら必ず式(46)の形に書ける。）

**Step 5　Girsanov（T7）**　次を定める。

$$
W^{\ast}(t)=W(t)-\int_0^t\phi(s)\,ds,\qquad0\le t\le T\tag{47}
$$

$W^{\ast}$ は $P^{\ast}$ の下で $K$ 次元標準ブラウン運動で、$Y$ は $P^{\ast}$ の下で次を満たす。

$$
Y(t)=Y(0)+\int_0^t\sigma(Y(s),s)\,dW^{\ast}(s)+\int_0^t\mu^{\ast}(s)\,ds,\qquad\mu^{\ast}(t)=\underbrace{\mu(Y(t),t)}_{\text{元のドリフト}}+\underbrace{\sigma(Y(t),t)\,\phi(t)}_{\text{測度変換の効果}}\tag{48}
$$

**Step 6　ドリフトの消去**　$\sigma$ が有界とする。(48) の確率積分は $P^{\ast}$ のマルチンゲール。$Y$ も（$P^{\ast}$ がマルチンゲール測度なので）マルチンゲール。よって絶対連続成分 $\int\mu^{\ast}\,ds$ もマルチンゲールで、有限変動な連続マルチンゲールは定数（T10）。したがって $\mu^{\ast}(t)=0$ a.e.。$\sigma$ が有界でないときは T8：$Y(t\wedge\tau_b)$ がマルチンゲールなので $0\le t\le\tau_b$ で $\mu^{\ast}=0$、$b\to\infty$ で $\tau_b\to T$ a.s. なので全 $t$ で $\mu^{\ast}=0$。ここで $P^{\ast}$ がマルチンゲール測度であることを使う。

**Step 7　$\phi=\alpha$**　式(21)より $\mu=-\sigma\alpha$ なので、

$$
\mu^{\ast}(t)=\sigma(Y(t),t)\big[\phi(t)-\alpha(Y(t),t)\big],\qquad\mu^{\ast}=0\iff\phi(t)=\alpha(Y(t),t)\ \text{a.s.}\tag{49}
$$

（$\sigma$ の正則性を使う。）よって $\zeta=\rho$（式(24)(b)）。$P^{\ast}$ が存在するなら $\rho$ が定義でき（(a)）、二乗可積分（(b)）。(a)、(b) は必要条件で、$P^{\ast}$ は一意（$\zeta=\rho$ に固定される）。

**Step 8　十分性**　(a)、(b) とする。T9 から $E(\rho)=1$ なので $\rho$ は Radon–Nikodym 微分として使える。$dP^{\ast}=\rho\,dP$ とし、Step 5 と同様に議論すると、$P^{\ast}$ の下で

$$
Y(t)=Y(0)+\int_0^t\sigma(Y(s),s)\,dW^{\ast}(s),\qquad0\le t\le T\tag{50}
$$

(23) の $Y^{\ast}$ は $P$ の下で一意解なので、$P^{\ast}$ の下の $Y$ は (50) の一意解で、分布は $P$ の下の $Y^{\ast}$ と一致する → 式(25)。

**Step 9　(c) との対応**　Proposition 1 より $\{\mathcal F_t\}$ は価格が生成するので、分布の一致から「$Y$ が $P^{\ast}$ で $\{\mathcal F_t\}$ のマルチンゲール」$\iff$「$Y^{\ast}$ が $P$ で $\{\mathcal F_t\}$ のマルチンゲール」。(a)、(b) のもとで $P^{\ast}$ が同値マルチンゲール測度であるための必要十分条件は (c) → 式(24)。

**Step 10　Corollary**　Theorem 2 の Corollary から、$P^{\ast}$ が一意なので全請求権 $x=f(Z)$ が裁定で決まり、$\hat\pi(x)=E^{\ast}(f(Z))$。分布の一致（式(25)）から $E^{\ast}(f(Z))=E(f(Z^{\ast}))$ → 式(26)。

**確認（本稿での補足）**　式(10)の Black–Scholes モデルで条件を確かめる。伊藤の公式で $dZ_1=(\nu+\tfrac12\sigma_B^2)Z_1\,dt+\sigma_B Z_1\,dW$。$K=1$、$\sigma(x,t)=\sigma_Bx$、$\mu(x,t)=(\nu+\tfrac12\sigma_B^2)x$ なので、式(21)より $\alpha=-(\nu+\tfrac12\sigma_B^2)/\sigma_B$（定数）。(a) は自明。$\rho=\exp\{\alpha W(T)-\tfrac12\alpha^2T\}$、$E(\rho^2)=\exp\{2\alpha^2T-\alpha^2T\}=e^{\alpha^2T}\lt\infty$ で (b) が成り立つ。$dY^{\ast}=\sigma_BY^{\ast}\,dW$ の解は幾何ブラウン運動で、$E\int_0^T\sigma_B^2Y^{\ast2}\,dt\lt\infty$ なので (c) の十分条件も成り立つ。よって viable で、全請求権が裁定で決まる。$\alpha=0$（$\nu+\tfrac12\sigma_B^2=0$）のときは $\rho=1$、$P^{\ast}=P$。

| 入力・使う道具 | 内容 |
|---|---|
| 式(21)–(23) | 拡散の設定 |
| Proposition 1 | 情報構造と価格の関係 |
| T5, T6, T7, T8, T9, T10 | 表現定理、伊藤の公式、Girsanov、局所化、期待値、有限変動マルチンゲール |

### A.8 他の取引戦略（式(27)–(30)）

**Step 1　viability の一般化**　単純戦略に関する議論は、同値マルチンゲール測度の導入まで変わらない。拡大クラスでの $(M',\pi')$ について、Theorem 1 が同じ形で成り立つ → 式(27)。

**Step 2　包含関係**　フリーランチがなければ $M\subseteq M'$、$\pi'\vert_M=\pi$。$\psi\vert_{M'}=\pi'$ なら $\psi\vert_M=\pi$ なので、対応する $P^{\ast}$ は同値マルチンゲール測度。逆（$\psi\vert_M=\pi\Rightarrow\psi\vert_{M'}=\pi'$）が成り立つ保証はない。

**Step 3　一対一対応の条件**　逆が成り立つ条件を式(28)として書く。成り立てば、期待値が一定 $\iff$ 裁定で決まる。

**Step 4　倍賭け戦略の概略（論文の説明の要約）**　取引日を $t_n=T-T/2^n$ とすると、可算個の日付で取引できる。ある状態では有限回しか取引しないが、倍賭けの賭け金（必要資金）は状態について有界でない。Black–Scholes モデルでは債券の空売りで資金を調達する。結果として式(29)を満たす almost simple な自己充足的戦略が存在する（論文は構成の詳細を与えていない）。借入に上限があれば排除される。

**Step 5　連続取引の定義**　$V(t)=\theta(t)\cdot Z(t)$ として、伊藤積分の定義から自己充足条件は式(30)。Black–Scholes [4] で暗黙に、Merton [15] で明示的に用いられている。

**確認**　Black–Scholes で停止時刻を取引日にしても (28) は成り立つ（論文の主張）ので、1.6 の「停止時刻なら問題なし」と一致する。$N$ をランダムにしたときだけ式(29)が現れる。

| 入力・使う道具 | 内容 |
|---|---|
| 式(12)、(13) | 自己充足性、フリーランチ |
| Theorem 1, 2 | 同値性の枠組み |

### A.9 拡張（式(31)–(41)）

**Step 1　ニューメレールの変更**　$Z_0\gt0$ とし、$Z'_k=Z_k/Z_0$（式(31)）。$\theta$ が元のモデルで自己充足的 $\iff$ プライム付きモデルでも自己充足的：$\theta(t_{n-1})\cdot Z(t_n)=\theta(t_n)\cdot Z(t_n)$ の両辺を $Z_0(t_n)$ で割ると $\theta(t_{n-1})\cdot Z'(t_n)=\theta(t_n)\cdot Z'(t_n)$。

**Step 2　請求権・価格の対応**　$m\in M\iff m'=m/Z_0(T)\in M'$、$\pi'(m')=\pi(m)/Z_0(0)$ → 式(32)。位相は式(33)で調整する。

**Step 3　Black–Scholes（利子率 $r$）のプライム付きモデル**　$Z_0=e^{rt}$ なので $Z'_1=Z_1e^{-rt}$。伊藤の積の公式で $dZ'_1=(\bar\mu-r)Z'_1\,dt+\sigma_BZ'_1\,dW$ → 式(34)。

**Step 4　Black–Scholes 公式**　Section 5 より $\alpha=-(\bar\mu-r)/\sigma_B$、ドリフトなしの過程は $dZ_1^{\ast}=\sigma_BZ_1^{\ast}\,dW$（$Z_1^{\ast}(0)=Z_1(0)$）。コールの請求権 $x=(Z_1(T)-a)^{+}$ に対し $x'=(Z_1'(T)e^{rT}-a)^{+}/e^{rT}$。式(26)より $\hat\pi'(x')=E\big(e^{-rT}(Z_1^{\ast}(T)e^{rT}-a)^{+}\big)$。$Z_1^{\circ}(t)=Z_1^{\ast}(t)e^{rt}$ とおくと $dZ_1^{\circ}=rZ_1^{\circ}\,dt+\sigma_BZ_1^{\circ}\,dW$（伊藤の積の公式）。$Z_0(0)=1$ なので式(32)から $\hat\pi(x)=\hat\pi'(x')$ → 式(35)。

**Step 5　途中支払い**　$x$ が $\tau$ まで途中支払いを受けるとき、受け取りを利子率ゼロの無リスク証券で運用すれば満期に $x(\omega,T)$ が得られる。逆に $x'$ を持つ主体は無リスク証券の借入で $x$ のパターンを作り、満期に借入を返せる。よって $x$ と $x'$ の価値は等しい → 式(36)、(37)。

**Step 6　オプションの価格範囲**　各 $\kappa$ で、Corollary 1（式(8)）より $x_\kappa$ の整合的な価格の集合は $\{E^{\ast}(x_\kappa):P^{\ast}\in\mathbf P\}$ を含む範囲。保有者は $\kappa$ を選べるので、価値は $\sup_\kappa\inf_{P^{\ast}}E^{\ast}(x_\kappa)$ 以上、$\sup_\kappa\sup_{P^{\ast}}E^{\ast}(x_\kappa)$ 以下 → 式(38)。$\mathbf P$ が一点なら両者は一致 → 式(39)。

**Step 7　アメリカンプット**　停止時刻 $\tau$ で行使すると $(a-Z_1(\tau))^{+}$ が時刻 $\tau$ に支払われる。プライム付きモデルでは $(ae^{-r\tau}-Z_1'(\tau))^{+}$ になり、Step 5 で満期 $T$ の請求権に換算しても裁定価値は同じ。式(26)から $E\big(\{ae^{-r\tau}-Z_1^{\ast}(\tau)\}^{+}\big)$、$\tau$ について上限をとる → 式(40)。$Z_0(0)=1$ なので元のモデルでも同じ値。

**Step 8　$L^p$ への拡張**　Theorem 1 の証明で使うのは、$X$ が実線形空間で位相が線形・Hausdorff・局所凸であること（加えて、$P(x=x')=1$ なら $x'$ を $x$ と同一視すること）。Theorem 2 では Riesz 表現が $\psi(x)=E(\rho x)$（$\rho\in L^q$、$1/p+1/q=1$）に置き換わる → 式(41)。拡散モデルで Kunita–Watanabe が $\rho\in L^2$ を要求する点が制約になる。

**確認**　$r=0$ のとき、式(35)は $\hat\pi(x)=E((Z_1^{\circ}(T)-a)^{+})$（$dZ_1^{\circ}=\sigma_BZ_1^{\circ}\,dW$）となり、式(26)でドリフトを除いた場合と一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(26) | 拡散モデルの評価式 |
| 式(8) | 整合的な価格の集合 |
| 伊藤の積の公式 | $d(Z\,e^{rt})$ の計算 |

### A.10 Cox–Ross との関係（式(42)、(43)）

**Step 1　モデル**　ジャンプ過程 (42)。

**Step 2　ドリフトの確認（本稿での補足）**　$E(dN(s))=\lambda\,ds$ なので、$Y$ の期待増分は $(\lambda c_u-c_d)Y\,ds$。これが0になるのは $\lambda=c_d/c_u$ → 式(43)。

**Step 3　対応関係**　Cox–Ross の調整（$\lambda$ のみを動かす）は、$P$ を $P^{\ast}$ に置き換えることと同じ。拡散の場合のドリフト調整と同様。

**確認**　拡散の場合、$P^{\ast}$ の下ではドリフトが0（式(48)、(49)）。ジャンプ過程の場合、$\lambda^{\ast}$ のもとで期待増分が0（Step 2）。どちらも「株式が無リスク利子率ゼロで増える」。

### A.11 著者について

**J. Michael Harrison**
- **アカデミックな経歴**: 1944年生まれ。リーハイ大学で産業工学の BS（1966年）、スタンフォード大学で産業工学の MS（1967年）とオペレーションズ・リサーチの PhD（1970年）を取得。1970年よりスタンフォード大学ビジネススクールに在職し、助教授、准教授（1973年）、教授（1978年）を経て、Adams Distinguished Professor of Management（名誉教授）。2011年に退職。
- **主要な研究分野**: 経営に関わる確率モデル。数理ファイナンス（オプション理論の数学的基礎）と、待ち行列ネットワークなどの確率的処理ネットワーク（ブラウン・ネットワーク）の理論。
- **評判・学術的貢献**: Kreps とともに同値マルチンゲール測度の概念を導入し、現在では標準的な理論ツールとなっている。John von Neumann Theory Prize（INFORMS、2004年）、Frederick W. Lanchester Prize（2001年）、INFORMS Expository Writing Award（1998年）、全米工学アカデミー会員。INFORMS フェロー（2005年）、Institute for Mathematical Statistics フェロー。

**David M. Kreps**
- **アカデミックな経歴**: 1950年生まれ。ダートマス大学で AB（1972年）、スタンフォード大学で MA と PhD（オペレーションズ・リサーチ、1975年）を取得。1975年よりスタンフォード大学ビジネススクールに在職し、助教授、准教授（1978年）、教授（1980年）を経て、Adams Distinguished Professor of Management（名誉教授、2018年〜）。同校の Senior Associate Dean（2000–09年）も務めた。
- **主要な研究分野**: 選択理論、金融市場理論、動的ゲーム理論、限定合理性、人的資源管理。
- **評判・学術的貢献**: John Bates Clark Medal（アメリカ経済学会、1989年）。全米科学アカデミー会員（1997年〜）、アメリカ芸術科学アカデミーのフェロー（1993年〜）、計量経済学会フェロー。Paul Milgrom、Robert Wilson とともに John J. Carty Award for the Advancement of Science（全米科学アカデミー、2018年）。Erwin Plein Nemmers Prize in Economics（ノースウェスタン大学、2018年）。著書に *A Course in Microeconomic Theory*、*Game Theory and Economic Modelling* など。

---

**© 1979 by Academic Press, Inc.**（元論文 Journal of Economic Theory 20, 381–408 の表記。論文本文の権利は原著者・出版社に帰属する。本記事は数理モデルの整理である。）
{% endraw %}
