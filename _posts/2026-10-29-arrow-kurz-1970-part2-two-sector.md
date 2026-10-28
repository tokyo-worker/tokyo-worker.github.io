---
layout: post
title: "Arrow & Kurz (1970) \"Public Investment, the Rate of Return, and Optimal Fiscal Policy\"、Johns Hopkins Press for RFF: 数理モデル【第2部】民間資本と公共資本の二部門最適成長モデル"
date: 2026-10-29 00:00:00 +0900
categories: [経済学, 経済成長理論]
math: true
---

{% raw %}
# Arrow & Kurz (1970) "Public Investment, the Rate of Return, and Optimal Fiscal Policy"、Johns Hopkins Press for RFF: 数理モデル【第2部】
### 民間資本と公共資本の二部門最適成長モデル（原著 第IV章）

---

## 0. 論文の紹介 {#sec0}

**書誌**

Kenneth J. Arrow and Mordecai Kurz, *Public Investment, the Rate of Return, and Optimal Fiscal Policy*, The Johns Hopkins Press for Resources for the Future, 1970（2011年に RFF Press から復刻）。公共投資の割引率（社会的割引率）を、成長理論の動学的最適化と、政府の政策手段による**操作可能性（controllability）**の問題として定式化した単行本である。

**本記事の位置づけ**

本記事は、この書籍そのものの解説ではなく、**書籍の背景にある数理モデルを早見表にした記事**である。原著の式は簡略化せず、そのまま用いる。全8章を4部に分けて記事化しており、本記事は第2部にあたる。

| 部 | 原著の範囲 | 内容 |
|---|---|---|
| 第1部 | 第I章§4–5、第II章、第III章 | 基準関数、一部門最適成長（Ramsey型）、社会的割引率 |
| **第2部（本記事）** | 第IV章 | 民間資本と公共資本の二部門最適成長モデル |
| 第3部 | 第V章、第VI章 | 政策目的・市場条件・操作可能性、固定貯蓄率の下での最適政策 |
| 第4部 | 第VII章、第VIII章 | 完全資本市場の下での消費者最適化と操作可能性 |

第1部の一部門モデルでは資本は1種類だった。本記事では資本を**民間資本 $K_p$ と公共資本 $K_g$ に分け**、公共資本が生産性と直接の消費便益の両方に寄与するとする。社会的計画者が両者の配分と蓄積を最適に選んだときの経路を求める。ここで得られる「公共資本の収益率は、直接の消費便益の分だけ $\omega$ から乖離する」という結果と、「第3部以降で政策手段により実現を目指す最適経路（publicly optimal policy）」の定義が、後続の部の基準になる。

---

## 目次

- [0. 論文の紹介](#sec0)
- [1. 数理モデル](#sec1)
- [2. 説明できる現象](#sec2)
- [3. モデルが整理している点](#sec3)
- [4. 対象外の現象](#sec4)
- [付録：導出手順](#appendix)

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間・情報構造**

連続時間、無限期間、完全予見。社会的計画者が、消費と、民間・公共の2種類の資本の蓄積を選ぶ。財は1種類で、消費にも2種類の資本にも使える。第1部と同じく、$\omega,\gamma,\lambda,\sigma,\tau,\pi,\rho$ を使う。

**A1 資本の部門間の自由な移転（shiftability）**

投資は可逆で、既存の資本を民間部門と公共部門の間で自由に移せる。このため $K_p,K_g$ は状態変数ではなく**制御変数**で、状態変数は総資本 $K=K_p+K_g$ のみ。外すと、各部門の資本が状態変数になる（不可逆の場合は §1.9）。

**A2 生産関数（規模に関して収穫一定、外部性あり）**

$F(K_p,K_g,L)$ は凹で1次同次、2回微分可能（原著 A.1）。公共資本は民間の生産性に外部効果を与える。民間部門だけでみれば収穫逓減なので、民間部門は完全競争とみなせる。

**A3 人口・労働**

$L(t)=L(0)e^{\pi t}$（原著 A.2）。

**A4 効用関数**

$U(c,\kappa_g)$ は凹で、次数 $1-\sigma$（$\sigma\gt 0$）の同次関数、2回微分可能（原著 A.3）。公共資本が生産にも効用にも入る形は、教育や道路のような**結合生産物**を反映する。

**A5 消費と公共財の代替の制限（原著 A.5）**

任意の $\kappa_g\gt 0$ について $U_c(0,\kappa_g)=+\infty$、$U_g(0,\kappa_g)$ は有限。

**A6 稲田型条件（原著 A.6）**

$f_p(0,k_g)=+\infty,\ f_p(\infty,k_g)=0$、$f_g(k_p,0)=+\infty,\ f_g(k_p,\infty)=0$。

**A7 資本の平均生産力の消滅（原著 A.7）**

任意の $\varepsilon\gt 0$ について、ある $M$ が存在し、$k_p+k_g\gt M$ なら $f(k_p,k_g)/(k_p+k_g)\lt\varepsilon$（黄金律が任意の自然成長率で存在するための仮定）。

**A8 支配対角条件（原著 A.4、短期均衡の比較静学に使う）**

$f_{pp}-f_{pg}\lt 0,\ \ f_{gg}-f_{gp}\lt 0$。民間資本と公共資本が生産で補完的（$f_{pg}\ge 0$）なら成り立つ。

**正則条件**

$$
\omega\gt\gamma
$$

### 1.1 設定：生産・蓄積・基準関数

**生産関数**

$$
Y=F\bigl[K_p,\ K_g,\ \underbrace{e^{\tau t}L}_{\text{効率単位の労働}}\bigr]\tag{1}
$$

**資本の蓄積（減耗なし）**

$$
\underbrace{\dot K_p=I_p}_{\text{民間投資}},\qquad \underbrace{\dot K_g=I_g}_{\text{公共投資}}\tag{2}
$$

**基準関数**

$$
V=\int_{0}^{\infty}e^{-\rho t}\,P(t)\,U\bigl[c(t),\kappa_g(t)\bigr]\,dt,\qquad \kappa_g=\frac{K_g}{P}\tag{3}
$$

**資源制約（A1の下）**

$$
\dot K=F\bigl[K_p,K_g,e^{\tau t}L\bigr]-P(t)c(t),\qquad K\ge K_p+K_g\tag{4}
$$

$$
L(t)=L(0)e^{\pi t},\qquad P(t)=P(0)e^{\pi t}\tag{5}
$$

> 式(4)の $K$ は総資本 $K=K_p+K_g$。有用な資本は全部使うので等号が成り立つ（式(9)）。

| 記号・項目 | 意味 |
|---|---|
| $K_p,K_g$ | 民間資本、公共資本（総量） |
| $K$ | 総資本 |
| $I_p,I_g$ | 民間投資、公共投資 |
| $\kappa_g$ | 1人当たり公共資本 |
| $c$ | 1人当たり消費 |
| $U_c,U_g$ | $U$ の $c$、$\kappa_g$ による偏微分（$U_g=\partial U/\partial\kappa_g$） |

### 1.2 成長調整と定常化

**成長調整変数**

$$
k_p=K_pe^{-\gamma t},\quad k_g=K_ge^{-\gamma t},\quad k=Ke^{-\gamma t},\quad \hat c=P(t)\,c(t)\,e^{-\gamma t},\quad f(k_p,k_g)=F(k_p,k_g,L_0),\quad \gamma=\pi+\tau\tag{6}
$$

$$
\dot k=f(k_p,k_g)-\gamma k-\hat c,\qquad k=k_p+k_g\tag{7}
$$

**基準関数の書換え**

$$
e^{-\rho t}P(t)\,U(c,\kappa_g)=[P(0)]^{\sigma}\,e^{-\lambda t}\,U(\hat c,k_g),\qquad \omega=\rho+\sigma\tau,\quad \lambda=\omega-\gamma\tag{8}
$$

**定常化された問題**

$$
\max\int_{0}^{\infty}e^{-\lambda t}\,U\bigl[\hat c(t),k_g(t)\bigr]\,dt\quad\text{s.t. (7)}\tag{9}
$$

> $[P(0)]^{\sigma}$ は定数なので効用に吸収する。式(6)の $k_g$（成長調整後）と、式(3)の $\kappa_g$（1人当たり）は別の量。$f(k_p,k_g)$ は狭義凹。

| 記号・項目 | 意味 |
|---|---|
| $k_p,k_g,k$ | 成長調整後の民間資本、公共資本、総資本 |
| $\hat c$ | 成長調整後の消費（第1部と同じ定義） |
| $f(k_p,k_g)$ | 成長調整後の生産関数（$L_0$ で評価） |
| $\omega,\lambda,\gamma$ | 第1部と同じ（$\omega=\rho+\sigma\tau$、$\lambda=\omega-\gamma$） |

### 1.3 短期均衡（ある時点での最適配分）

**現在価値ラグランジアン**

$$
\mathcal L=\underbrace{U(\hat c,k_g)}_{\text{felicity}}+\underbrace{p}_{\text{資本の価格}}\bigl[f(k_p,k_g)-\gamma k-\hat c\bigr]+\underbrace{q}_{\text{制約}\ k\ge k_p+k_g\text{ の乗数}}\,(k-k_p-k_g)\tag{10}
$$

**1階条件（制御変数 $\hat c,k_p,k_g$ について）**

$$
\underbrace{p\,f_p=q}_{\text{民間資本の価値}},\qquad \underbrace{U_g+p\,f_g=q}_{\text{公共資本の価値（直接便益を含む）}}\tag{11}
$$

$$
\boxed{\begin{aligned}
&\text{(a)}\ \ U_c=p\\
&\text{(b)}\ \ U_g+p\,(f_g-f_p)=0\\
&\text{(c)}\ \ k_p+k_g=k
\end{aligned}}\tag{12}
$$

**派生需要関数と補助変数の運動**

$$
\hat c=\hat c(k,p),\qquad k_p=k_p(k,p),\qquad k_g=k_g(k,p)\tag{13}
$$

$$
\dot p=\omega p-q,\qquad\text{よって}\qquad \frac{\dot p}{p}=\omega-f_p\tag{14}
$$

> 式(12)(a)は価格＝限界効用、(b)は資本を2用途に配分したときの価値の均等（$U_g+pf_g=pf_p$）、(c)は資源制約。ある時点で $k$ と $p$ が与えられれば、式(12)で配分が決まる。$k_p,k_g$ は連続な関数だが、歴史的に与えられた初期値 $k_p(0),k_g(0)$ は式(12)を満たすとは限らず、時点0で**資本の不連続な移転（ジャンプ）**が起こりうる。その後の移転は最適でない。

| 記号・項目 | 意味 |
|---|---|
| $p$ | 総資本の補助変数（価格） |
| $q$ | 資源制約 $k\ge k_p+k_g$ の乗数 |
| $f_p,f_g$ | $f$ の $k_p,k_g$ による偏微分（私的・公共資本の収益率） |
| $\hat c(k,p)$ など | 短期均衡（派生需要）関数 |

### 1.4 短期均衡の比較静学

**式(12)の全微分**

$$
\begin{aligned}
U_{cc}\,d\hat c+U_{cg}\,dk_g&=dp\\
U_{gc}\,d\hat c+\bigl[U_{gg}+p(f_{gg}-f_{pg})\bigr]dk_g+p(f_{gp}-f_{pp})\,dk_p&=-(f_g-f_p)\,dp\\
dk_g+dk_p&=dk
\end{aligned}\tag{15}
$$

係数行列の行列式は

$$
\Delta=\underbrace{(U_{cc}U_{gg}-U_{cg}^{2})}_{\gt 0}+p\,U_{cc}\,\underbrace{(f_{gg}+f_{pp}-2f_{gp})}_{\lt 0}\ \gt 0\tag{16}
$$

**派生需要の偏微分**

$$
\begin{aligned}
\frac{\partial\hat c}{\partial p}&=\frac{U_{gg}+p(f_{pp}+f_{gg}-2f_{gp})+(f_g-f_p)\,U_{cg}}{\Delta}\lt 0,&
\frac{\partial\hat c}{\partial k}&=\frac{p\,U_{cg}\,(f_{gp}-f_{pp})}{\Delta}\\
\frac{\partial k_g}{\partial p}&=-\,\frac{U_{cc}(f_g-f_p)+U_{gc}}{\Delta}\lt 0,&
\frac{\partial k_g}{\partial k}&=-\,\frac{U_{cc}\,p\,(f_{gp}-f_{pp})}{\Delta}\gt 0\\
\frac{\partial k_p}{\partial p}&=-\frac{\partial k_g}{\partial p}\gt 0,&
\frac{\partial k_p}{\partial k}&=1-\frac{\partial k_g}{\partial k}=\frac{(U_{cc}U_{gg}-U_{cg}^{2})+p\,U_{cc}(f_{gg}-f_{pg})}{\Delta}\gt 0
\end{aligned}\tag{17}
$$

> $\partial\hat c/\partial k$ の符号は $U_{cg}$ の符号に一致する（$U_{cg}\gt 0$ なら正）。式(12)(b)より $f_g-f_p=-U_g/U_c$。この関係と $U$ の同次性（付録 A.3）から、残りの符号が確定する。

| 記号・項目 | 意味 |
|---|---|
| $U_{cc},U_{gg},U_{cg}$ | $U$ の2階偏微分（$U_{cc}\lt 0,\ U_{gg}\lt 0,\ U_{cc}U_{gg}-U_{cg}^2\gt 0$） |
| $f_{pp},f_{gg},f_{pg}$ | $f$ の2階偏微分 |
| $\Delta$ | 係数行列の行列式 |

### 1.5 動学：最適経路の微分方程式系（Proposition 1）

**最適性の必要条件**

$\hat c(k,p),k_p(k,p),k_g(k,p)$ を式(12)の解とする。$k$ と $p$ は次の微分方程式に従う。

$$
\dot k=f\bigl[k_p(k,p),k_g(k,p)\bigr]-\gamma k-\hat c(k,p)\tag{18}
$$

$$
\frac{\dot p}{p}=\omega-f_p\bigl[k_p(k,p),k_g(k,p)\bigr]\tag{19}
$$

$\omega\gt\gamma$ のとき、式(18)(19)の解のうち有界な極限に収束するものは最適解である。

**位相図用の関数**

$$
\varphi(p,k)=\omega-f_p,\qquad \psi(p,k)=f(k_p,k_g)-\gamma k-\hat c\tag{20}
$$

> $\dot p=p\,\varphi$、$\dot k=\psi$。符号は次のとおり。$\partial\varphi/\partial p\gt 0$（$=(f_{pg}-f_{pp})\,\partial k_p/\partial p$）、$\partial\varphi/\partial k\gt 0$、したがって曲線 $\varphi=0$ は右下がり：$dp/dk=-\varphi_k/\varphi_p\lt 0$。$\partial\psi/\partial p\gt 0$。$\partial\psi/\partial k=f_p\,\partial k_p/\partial k+f_g\,\partial k_g/\partial k-\partial\hat c/\partial k-\gamma$ は符号が一定でない。

| 記号・項目 | 意味 |
|---|---|
| $\varphi,\psi$ | $\dot p/p$ と $\dot k$ を $(p,k)$ の関数として書いたもの |

### 1.6 定常点の存在と性質（Proposition 2）

**民間・公共の配分を決める生産関数 $g(k)$**

$$
g(k)=\max_{k_p+k_g=k}f(k_p,k_g),\qquad f_p(k_p^{\ast},k_g^{\ast})=f_g(k_p^{\ast},k_g^{\ast}),\ \ k_p^{\ast}+k_g^{\ast}=k\tag{21}
$$

**$\varphi=0$ 曲線の下限 $\underline k$**

$$
f_p\bigl[k_p^{\ast}(\underline k),k_g^{\ast}(\underline k)\bigr]=\omega,\quad f_g\bigl[k_p^{\ast}(\underline k),k_g^{\ast}(\underline k)\bigr]=\omega,\quad k_p^{\ast}(\underline k)+k_g^{\ast}(\underline k)=\underline k\tag{22}
$$

**$\psi=0$ 曲線の端点**

$$
\psi(\infty,\underline k)=g(\underline k)-\gamma\underline k\gt 0,\qquad \psi(0,k)=-\infty,\qquad \psi(p,k)\lt 0\ \ (k\ \text{十分大})\tag{23}
$$

**政策関数（最適経路）**

$$
\frac{dp}{dk}=\frac{p\,\bigl\{\omega-f_p[k_p(k,p),k_g(k,p)]\bigr\}}{f[k_p(k,p),k_g(k,p)]-\gamma k-\hat c(k,p)}\tag{24}
$$

> A5〜A7の下で、式(18)(19)には**少なくとも1つの定常点**がある。式(24)は、すべての定常点を通る関数 $p(k)$ を定める。最適な消費は $\hat c(k)=\hat c[k,p(k)]$、民間・公共の配分は $k_p[k,p(k)],k_g[k,p(k)]$。

**定常点の個数（Proposition 2）**

| 条件 | 結果 |
|---|---|
| $\omega-\gamma$ が十分小さく $U_{cg}\ge 0$ | 定常点は一意で鞍点 |
| 一般の場合 | 定常点は奇数個。$k$ の小さい方から1つおきに鞍点、残りは完全に不安定 |
| 初期の $k$ が完全不安定な定常点にある | $k$ を一定に保つ |
| 上記以外 | $k$ はいずれかの鞍点の値に収束（不安定点が閾値となる） |

| 記号・項目 | 意味 |
|---|---|
| $g(k)$ | 総資本 $k$ を最適に配分したときの産出 |
| $k_p^{\ast}(k),k_g^{\ast}(k)$ | $f_p=f_g$ となる配分 |
| $\underline k$ | 曲線 $\varphi=0$ の $k$ の下限 |

### 1.7 バランス成長

**定常点の条件**

$$
f_p(k_p^{\infty},k_g^{\infty})=\omega\tag{25}
$$

$$
\hat c^{\infty}=f(k_p^{\infty},k_g^{\infty})-\gamma k^{\infty}\tag{26}
$$

**公共資本の収益率**

$$
f_g(k_p^{\infty},k_g^{\infty})=\omega-\frac{U_g(\hat c^{\infty},k_g^{\infty})}{p^{\infty}}\tag{27}
$$

> 民間資本の収益率は消費利子率の漸近値 $\omega$ に等しい（式(25)）。公共資本の**生産面の収益率**は、直接の消費便益 $U_g/p^{\infty}$ の分だけ $\omega$ より低い。便益を含めた総収益 $f_g+U_g/p^{\infty}$ は $\omega$ に等しい。定常点では $\hat c,k_p,k_g$ が一定なので、元の単位では消費と両資本が自然成長率 $\gamma$ で成長する。

| 記号・項目 | 意味 |
|---|---|
| $k_p^{\infty},k_g^{\infty},\hat c^{\infty},p^{\infty}$ | 定常点での値 |
| $U_g/p^{\infty}$ | 公共資本の直接の消費便益（資本の価格単位） |

### 1.8 特殊ケース $U_g=0$（直接の消費便益がない場合）

**1階条件**

$$
U_c=p,\qquad f_g=f_p,\qquad k_p+k_g=k\tag{28}
$$

$$
\hat c=\hat c(p),\qquad k_g=k_g(k),\qquad k_p=k_p(k)\tag{29}
$$

**第1部の一部門モデルへの帰着**

$$
\max_{\hat c,\,k_p,\,k_g}\mathcal H=\max_{\hat c}\Bigl\{U(\hat c)-p\hat c-\gamma pk+p\,g(k)\Bigr\}=U(\hat c)+p\bigl[g(k)-\hat c-\gamma k\bigr]\tag{30}
$$

> 配分が $p$ に依らなくなる。位相図は第1部の一部門モデルと同じで、$\varphi=0$ は垂直線、定常点は一意で鞍点。$\psi=0$ 曲線の極小点 $k^{\ast}$ で $g'(k^{\ast})=\gamma$（利子率＝自然成長率、黄金律）が成り立つ。式(30)は、2種類の資本があっても $g(k)$ を生産関数とする第III章の問題に帰着することを示す。

| 記号・項目 | 意味 |
|---|---|
| $\mathcal H$ | 現在価値ハミルトニアン |
| $k^{\ast}$ | 曲線 $\psi=0$ が最小となる $k$（黄金律の資本） |

### 1.9 不可逆投資

**追加制約**

$$
I_p\ge 0,\qquad I_g\ge 0\tag{31}
$$

> 2つの制約に価格 $p_p,p_g$ が付き、投資の戦略は $p_p-p_g$ に依存する。長期の挙動は可逆の場合と同じ。移行過程で、(i) 投資の特化（$I_p=0,I_g\gt 0$ または $I_p\gt 0,I_g=0$）、(ii) 消費への特化（$I_p=I_g=0,\ c\gt 0$）が区間ごとに交替しうる。原著は交替の列は事実上どれも起こりうるとして、これ以上は論じない。

### 1.10 収穫逓増（Proposition 3）

**生産関数（公共資本が労働増大的に働く）**

$$
Y=G\Bigl\{K_p,\ H\bigl[K_g,\ L_E^{\theta}\bigr]\Bigr\},\qquad L_E=e^{\tau' t}L\tag{32}
$$

$$
\gamma=\theta\,(\pi+\tau'),\qquad \tau=\gamma-\pi\tag{33}
$$

$$
f(k_p,k_g)=G\bigl\{k_p,\ H[k_g,L_0^{\theta}]\bigr\},\qquad \dot k=f(k_p,k_g)-\gamma k-\hat c\tag{34}
$$

> $G(K_p,L')$、$H(K_g,L'')$ は1次同次、凹、2回微分可能。「訓練された労働」$L'=H(K_g,L_E^{\theta})$ が民間資本と収穫一定で協働する。$\theta\gt 1$ が収穫逓増。$\theta\gt 1$ なら外生的な技術進歩がなく $\tau'=0$ でも $\tau\gt 0$（1人当たりの成長が収穫逓増だけから生じる）。式(34)の形は、収穫一定のときの式(7)と同じ。冪の例は $H=K_g^{\epsilon}\,L_E^{\theta(1-\epsilon)}$（$0\lt\epsilon\lt 1$ で $K_g$ について凹）。このとき $\theta\gt 1$ で収穫逓増、$\theta\lt 1$ で収穫逓減。命題1・2（式(12)(18)(19)(24)）はそのまま成り立つ。収穫逓増では全生産要素にそれぞれ限界生産力を支払えず、分権経済で他の要素に限界生産力を支払うなら、公共資本は過小に評価される。

| 記号・項目 | 意味 |
|---|---|
| $G,H$ | 1次同次・凹の関数 |
| $L_E$ | 効率単位の労働（外生的技術進歩を含む） |
| $\tau'$ | 外生的な労働増大的技術進歩率 |
| $\theta$ | 収穫の程度を表す指数（原著では $\delta$ と表記） |
| $\epsilon$ | 冪関数の例での $K_g$ の弾力性 |

### 1.11 主要帰結

**主要式（Proposition 1・2）**

$$
\boxed{\begin{aligned}
&U_c=p,\quad U_g+p(f_g-f_p)=0,\quad k_p+k_g=k\\
&\dot k=f(k_p,k_g)-\gamma k-\hat c\\
&\frac{\dot p}{p}=\underbrace{\omega-f_p}_{\text{民間資本の収益と}\ \omega\ \text{の差}}\\
&\text{定常点：}\ f_p=\omega,\ \ f_g=\omega-\underbrace{U_g/p^{\infty}}_{\text{直接の消費便益}}
\end{aligned}}\tag{35}
$$

**比較静学・性質**

| 変化 | 結果 | 符号・式 |
|---|---|---|
| $p$ 上昇（$k$ 一定） | 消費は減り、公共資本から民間資本へ配分 | 式(17) |
| $k$ 増加（$p$ 一定） | 民間・公共の両資本が増える | $\partial k_p/\partial k\gt 0,\ \partial k_g/\partial k\gt 0$ |
| 直接の消費便益あり（$U_g\gt 0$） | 公共資本の生産収益率が $\omega$ より低くなる | 式(27) |
| $U_g=0$ | 配分は $f_g=f_p$、第III章に帰着 | 式(28)(30) |
| $\omega-\gamma$ が大きい | 定常点が複数になりうる | 閾値 $k_2^{\infty}$ を境に収束先が変わる |

**特殊ケース**

| ケース | 式 |
|---|---|
| $\theta=1$（収穫一定、$\tau=\tau'$） | 式(32)は収穫一定の生産関数 |
| 成長なし（$\gamma=0$） | $\omega=\rho,\ \lambda=\rho$ |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 公共資本の収益率が民間資本より低くても投資される | 直接の消費便益 $U_g/p$ が収益を補い、式(27)のとおり総収益が $\omega$ に等しくなる |
| 初期の資本配分のずれが一度に修正される | 資本が部門間で自由に移転でき、時点0でジャンプが起こる（§1.3） |
| 閾値のある成長経路 | 定常点が複数あるとき、初期資本が不安定点を超えるかで収束先が変わる（式(24)の経路） |
| 公共資本が外部性をもつ経済 | 公共資本が生産と効用の両方に入る（結合生産）。収穫逓増の場合も式(34)に帰着する |
| 収穫逓増による持続的な1人当たり成長 | $\theta\gt 1$ なら $\tau'=0$ でも $\tau\gt 0$（式(33)） |
| 分権化の困難 | 収穫逓増では公共資本に限界生産力を払えない |

## 3. モデルが整理している点 {#sec3}

- 公共資本と民間資本を、物理的には同じ財でありながら、**意思決定が異なる2つの資本**として扱い、総資本の配分と蓄積を同時に決めている。
- 資本の部門間配分（短期均衡）と、総資本の蓄積（動学）を分離している。前者は式(12)、後者は式(18)(19)。
- 公共資本の割引率（収益率）が $\omega$ に等しいという単純な結論が、直接の消費便益がある場合にどう修正されるかを、式(27)で明示している。

## 4. 対象外の現象 {#sec4}

- 税・公債による資金調達、民間部門の行動、最適経路を分権経済で実現できるか（第3部・第4部で扱う）。
- 資本の減耗。第III章§4の読み替えで扱えると原著は述べる。
- 不可逆投資の最適経路の一般的な特徴。原著は交替パターンが任意に起こりうるとして論じない。
- 不確実性、所得分配。
- 公共資本のうち生産に使われる部分と消費便益をもつ部分の配分の最適化。原著は両者が比例するとして扱い、比例しない場合は「可能だが現実的でない」とする。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
[生産 (1)] [蓄積 (2)] [基準 (3)] [資源制約 (4)(5)]
        │
        ├─ 成長調整 (6)(7) ──→ 定常化 (8)(9)
        │
        ├─ 短期均衡：ラグランジアン (10) → 1階条件 (11)(12) → 派生需要 (13)
        │       └─ 補助変数の運動 (14)
        │       └─ 比較静学 (15)-(17)
        │
        ├─ 動学：(18)(19) ──→ φ, ψ (20)
        │       └─ 定常点の存在 (21)-(23) ──→ 政策関数 (24)
        │
        ├─ バランス成長 (25)-(27)
        ├─ 特殊ケース U_g=0 (28)-(30)
        ├─ 不可逆 (31)
        └─ 収穫逓増 (32)-(34)
        まとめ：主要式 (35)
```

### A.1 使う道具

**T1 最大原理・ラグランジアン形（原著 Proposition II.7）**

不等式制約つきの無限期間問題で、現在価値ラグランジアン $\mathcal L$ を各時点で制御変数について最大化し、状態変数の補助変数は $\dot p=\lambda p-\partial\mathcal L/\partial k$ に従う。

**T2 同次関数のオイラーの定理**

$U$ が次数 $1-\sigma$ の同次関数なら、$U_c,U_g$ は次数 $-\sigma$ の同次関数。したがって $U_{cc}\hat c+U_{cg}k_g=-\sigma U_c$、$U_{gc}\hat c+U_{gg}k_g=-\sigma U_g$。

**T3 ガレ=二階堂の定理（原著の引用：Theorem 4）**

係数行列が P 行列（すべての主小行列式が正）なら、方程式系の解は一意。

**T4 クラメルの公式**

連立1次方程式 $Ax=b$ の解は $x_j=\det A_j/\det A$。

**T5 包絡線定理**

最大値関数の微分は、制御変数を固定した偏微分に等しい。$g'(k)=f_p=f_g$（最適配分のとき）。

### A.2 短期均衡の1階条件（式(10)–(14)）

**Step 1　ラグランジアン（T1）**

制約 $k\ge k_p+k_g$ は $U,f$ が増加関数なので等号で成り立つ。式(10)のとおり $\mathcal L$ をおく。

**Step 2　$\hat c$ についての最大化**

$\partial\mathcal L/\partial\hat c=U_c-p=0$ → 式(12)(a)。

**Step 3　$k_p,k_g$ についての最大化**

$\partial\mathcal L/\partial k_p=pf_p-q=0$、$\partial\mathcal L/\partial k_g=U_g+pf_g-q=0$ → 式(11)。

**Step 4　$q$ の消去**

式(11)の2式から $q$ を消す：$U_g+p(f_g-f_p)=0$ → 式(12)(b)。資源制約 → 式(12)(c)。

**Step 5　補助変数の運動（T1）**

$\partial\mathcal L/\partial k=-\gamma p+q$ なので $\dot p=\lambda p-\partial\mathcal L/\partial k=(\lambda+\gamma)p-q=\omega p-q$。式(11)の $q=pf_p$ を代入して $\dot p/p=\omega-f_p$ → 式(14)。

| 入力・使う道具 | 内容 |
|---|---|
| T1 | 最大原理（ラグランジアン形） |
| 式(7)(9) | 成長調整後の問題 |

**確認**

$U_g=0$ なら式(12)(b)は $f_g=f_p$（§1.8）。$p=q/f_p$ なので、一部門の場合の $\dot p/p=\omega-f'(k)$（第1部の式(25)）に一致する。

### A.3 比較静学（式(15)–(17)）

**Step 1　全微分**

式(12)(a)(b)(c)を全微分して式(15)。(b)では $k_p=k-k_g$ なので $dk_p=dk-dk_g$。

**Step 2　行列式と一意性（T3）**

第3行の符号を反転した行列の主小行列式は、1次がすべて負（$U_{cc}\lt 0$、$U_{gg}+p(f_{gg}-f_{pg})\lt 0$、$-1\lt 0$）、2次がすべて正、行列式が $-\Delta\lt 0$。したがって解は一意（T3）。$\Delta$ は式(16)。第1項は $U$ の強凹性より正、第2項は $U_{cc}\lt 0$ と A8（$f_{gg}-f_{gp}\lt 0$、$f_{pp}-f_{gp}\lt 0$）より正。

**Step 3　クラメルの公式（T4）**

$d\hat c,dk_g$ を $dp,dk$ について解くと式(17)。

**Step 4　同次性の利用（T2）**

$U_{cc}\hat c+U_{cg}k_g=-\sigma U_c$、$U_{gc}\hat c+U_{gg}k_g=-\sigma U_g$ を連立して $\hat c,k_g$ について解く。$\hat c\gt 0,k_g\gt 0$、$\sigma\gt 0$、$U_{cc}U_{gg}-U_{cg}^2\gt 0$ より、

$$
U_{gg}U_c-U_gU_{cg}\lt 0,\qquad U_{cc}U_g-U_cU_{gc}\lt 0
$$

**Step 5　符号の確定**

式(12)(a)(b)より $f_g-f_p=-U_g/U_c$。これを式(17)の分子に代入すると：

- $\partial\hat c/\partial p$ の分子 $=\dfrac{U_{gg}U_c-U_gU_{cg}}{U_c}+p(f_{pp}+f_{gg}-2f_{gp})\lt 0$（Step 4と A8）。
- $\partial k_p/\partial p$ の分子 $=U_{cc}(f_g-f_p)+U_{gc}=-\dfrac{U_{cc}U_g-U_cU_{gc}}{U_c}\gt 0$（Step 4）。
- $\partial k_g/\partial k$ の分子：$-U_{cc}p(f_{gp}-f_{pp})\gt 0$（$U_{cc}\lt 0$、$f_{gp}-f_{pp}\gt 0$）。
- $\partial k_p/\partial k$：$(U_{cc}U_{gg}-U_{cg}^2)\gt 0$ と $pU_{cc}(f_{gg}-f_{pg})\gt 0$ の和なので正。

$\Delta\gt 0$ なので式(17)の符号が定まる。

| 入力・使う道具 | 内容 |
|---|---|
| T2、T3、T4 | 同次性、一意性、クラメルの公式 |
| A8 | 支配対角条件 |

**確認**

$\partial k_p/\partial k+\partial k_g/\partial k=1$（資源制約）。

### A.4 動学と位相図（式(18)–(20)）

**Step 1　式(18)(19)**

式(7)に式(13)を代入して式(18)。式(14)に式(13)を代入して式(19)。

**Step 2　$\varphi$ の導関数**

$\partial\varphi/\partial p=-f_{pp}\,\partial k_p/\partial p-f_{pg}\,\partial k_g/\partial p=(f_{pg}-f_{pp})\,\partial k_p/\partial p\gt 0$（式(17)の符号と A8）。$\partial\varphi/\partial k\gt 0$ は原著が示す（本記事では結果のみ）。陰関数定理より $dp/dk|_{\varphi=0}=-\varphi_k/\varphi_p\lt 0$。

**Step 3　$\psi$ の導関数**

$\partial\psi/\partial p=(f_p-f_g)\,\partial k_p/\partial p-\partial\hat c/\partial p$。式(12)(b)より $f_p-f_g=U_g/p\gt 0$（$U_g\gt 0$ のとき）。$\partial k_p/\partial p\gt 0$、$\partial\hat c/\partial p\lt 0$ なので $\partial\psi/\partial p\gt 0$。$\partial\psi/\partial k$ は $\partial\hat c/\partial k$ の符号が一定でないため符号不定。

**Step 4　曲線 $\varphi=0$ の下限**

$\varphi=0$ の曲線は $k=\eta(p)$、$\eta'(p)\lt 0$。$\underline k=\inf\eta(p)$ とおく。A5より $p\to\infty$ で $\hat c\to 0$、$U_g$ は有界なので $U_g/p\to 0$。配分は式(12)(b)で $f_p=f_g$ に近づき、$f_p=\omega$ となる $\underline k$ が式(22)で定まる。A6より $0\lt k_p^{\ast},k_g^{\ast}\lt\infty$ なので $0\lt\underline k\lt\infty$。

**Step 5　曲線 $\psi=0$**

$p\to\infty$ で $\hat c\to 0$、配分は $k_p^{\ast}(k),k_g^{\ast}(k)$ に収束。$k=\underline k$ では $g'(\underline k)=\omega\gt\gamma$（T5）。$g(k)-\gamma k$ は凹で原点で0、$\underline k$ で増加中なので $g(\underline k)-\gamma\underline k\gt 0$ → 式(23)の第1式。$p\to 0$ では $U_c\to 0$ より $\hat c\to\infty$、$\psi\to-\infty$ → 第2式。A7 より、十分大きな $k$ で $\psi=f-\gamma k-\hat c\le k\{f/(k_p+k_g)-\gamma\}\lt 0$ → 第3式。

**Step 6　定常点の存在と個数**

Step 5 より、$\psi=0$ 曲線は $k$ が $\underline k$ の右近傍で $\varphi=0$ の下側にあり、$k$ が大きいところでは存在しない（$\psi\lt 0$）。したがって曲線 $\varphi=0$ と $\psi=0$ は少なくとも1点で交わる（連続性）。$\omega-\gamma$ が小さく $U_{cg}\ge 0$ なら定常点で $\partial\psi/\partial k\lt 0$ が成り立ち、$\psi=0$ が $\varphi=0$ を下から切るので一意で鞍点。一般には奇数個になり、鞍点と完全不安定点が交互に並ぶ → 式(24)と Proposition 2 の表。

| 入力・使う道具 | 内容 |
|---|---|
| T5、A5、A6、A7 | 包絡線定理、境界条件 |
| 式(17)(22)(23) | 偏微分、下限、端点 |

**確認**

$U_g=0$ なら $\varphi$ は $p$ に依らず（§1.8、$\partial\varphi/\partial p=0$）、曲線 $\varphi=0$ は垂直線。

### A.5 バランス成長（式(25)–(27)）

**Step 1　定常点の条件**

$\dot p=0$ より $f_p=\omega$ → 式(25)。$\dot k=0$ より式(18)から $\hat c^{\infty}=f-\gamma k^{\infty}$ → 式(26)。

**Step 2　公共資本の収益率**

式(12)(b)より $f_g=f_p-U_g/p$。式(25)を代入し $p=p^{\infty}$ とおく → 式(27)。

**Step 3　元の単位**

式(6)の変換より、定常点で $K_p,K_g,K$ は $e^{\gamma t}$、消費は $e^{\tau t}$（1人当たり）で成長。

| 入力・使う道具 | 内容 |
|---|---|
| 式(12)(14)(18) | 1階条件と動学 |

**確認**

第1部で $U_g=0$、公共資本なしとすると $f_p=\omega$、$\hat c^{\infty}=f-\gamma k^{\infty}$ となり、第1部の式(15)(27)に一致する。

### A.6 $U_g=0$ のケース（式(28)–(30)）

**Step 1　1階条件**

式(12)(b)で $U_g=0$ とおくと $f_g=f_p$。配分は $p$ によらず $k$ だけで決まる → 式(28)(29)。

**Step 2　ハミルトニアンの簡約**

$\mathcal H=U(\hat c)+p[f-\gamma k-\hat c]$ を $k_p+k_g=k$ の下で最大化する。$\hat c$ と $(k_p,k_g)$ の最大化は分離でき、$\max f=g(k)$（式(21)）を用いる → 式(30)。状態変数は $k$、制御は $\hat c$ のみで、第III章の問題と同形。

**Step 3　位相図の符号**

式(15)で $U_g=0$ とした系の小行列式は $\Delta_1=U_{cc}\lt 0$、$\Delta_2=pU_{cc}(f_{gg}-f_{pg})\gt 0$、$\Delta=pU_{cc}(f_{gg}+f_{pp}-2f_{gp})\gt 0$。$\partial\varphi/\partial p=0$、$\partial\varphi/\partial k=-\dfrac{f_{pp}f_{gg}-f_{pg}^2}{f_{pp}+f_{gg}-2f_{pg}}\gt 0$（$k_g'(k)=(f_{pp}-f_{pg})/(f_{pp}+f_{gg}-2f_{pg})$ を用いた直接計算）。

**Step 4　$k^{\ast}$**

$\psi=g(k)-\gamma k-\hat c(p)=0$ 上で $dp/dk=-\psi_k/\psi_p$。$\psi_p\gt 0$。$\psi_k=g'(k)-\gamma$ は $k^{\ast}$ で0。$k^{\ast}$ では $g'(k^{\ast})=\gamma$。$\omega\gt\gamma$ より定常点は $\psi=0$ の右下がり部分にあって一意。

| 入力・使う道具 | 内容 |
|---|---|
| T3、T5 | 一意性、包絡線 |
| 式(21) | $g(k)$ |

**確認**

$g(k)=f(k_p^{\ast},k_g^{\ast})$ で $g'(k)=f_p$（T5）。式(14)の $\dot p/p=\omega-f_p$ は第1部の式(25)と同じ形。

### A.7 収穫逓増（式(32)–(34)）

**Step 1　バランス成長の条件**

$Y,K_p$ が率 $\gamma$ で成長し、$G$ が1次同次なので、$H[K_g,L_E^{\theta}]$ も率 $\gamma$ で成長する。$K_g$ も率 $\gamma$ で成長するので、Levhari と Sheshinski (1969) の定理より、$H$ は $H(K_g,L_E)=\tilde H[K_g,L_E^{\theta}]$（$\tilde H$ は1次同次）の形に限られる。

**Step 2　成長率**

$L_E$ は率 $\pi+\tau'$ で成長するので $L_E^{\theta}$ は $\theta(\pi+\tau')$ で成長。これが $\gamma$ に等しい → 式(33)の第1式。1人当たりの成長率は $\tau=\gamma-\pi$ → 第2式。

**Step 3　成長調整**

$\dot Ke^{-\gamma t}=e^{-\gamma t}F-Pce^{-\gamma t}=G\{k_p,H[k_g,L_0^{\theta}]\}-\hat c$（$G,H$ の1次同次性と $L_E^{\theta}=L_0^{\theta}e^{\gamma t}$ を使う）。$\dot k=\dot Ke^{-\gamma t}-\gamma k$ → 式(34)。

**Step 4　基準関数**

§1.2と同じ変換（式(8)）で式(9)の形になる。式(34)は式(7)と同じ形。違いは解釈で、収穫一定では1人当たり成長が外生的要因だけによるのに対し、ここでは収穫逓増だけで正になりうる。

**Step 5　冪関数の例**

$H=K_g^{\epsilon}L_E^{\theta(1-\epsilon)}$ は $(K_g,L_E^{\theta})$ について1次同次。$K_g,L_E$ を $\lambda$ 倍すると $H$ は $\lambda^{\epsilon+\theta(1-\epsilon)}$ 倍で、指数が1を超えるのは $\theta\gt 1$ のとき。

| 入力・使う道具 | 内容 |
|---|---|
| Levhari-Sheshinski (1969) | バランス成長を許す収穫逓増の形 |
| 式(6)(8) | 成長調整と定常化 |

**確認**

$\theta=1$ なら式(33)は $\gamma=\pi+\tau'$ で収穫一定の場合と一致する。

### A.8 著者について

**Kenneth Joseph Arrow（1921–2017）**
- **アカデミックな経歴**: ニューヨーク市立大学シティカレッジ（BA、1940）、コロンビア大学（MA、1941、PhD、1951）。コウルズ委員会、スタンフォード大学、ハーバード大学（本書刊行時はハーバード大学教授）、のちスタンフォード大学で教授を務めた。
- **主要な研究分野**: 社会的選択理論、一般均衡理論、リスクと不確実性の経済学、医療経済学、成長理論。
- **評判・学術的貢献**: 1972年にノーベル経済学賞（J. R. Hicks と共同受賞）。John Bates Clark 賞（1957年）、アメリカ国家科学賞（2004年）など。社会的選択の不可能性定理、Arrow-Debreu モデル、Arrow-Pratt のリスク回避度、learning by doing の論文が代表的。

**Mordecai Kurz（1934年生）**
- **アカデミックな経歴**: ヘブライ大学（BA、1957）、イェール大学（MA、1958、PhD、1962）、スタンフォード大学で統計学の修士（1960）。スタンフォード大学で1969年から教授。Joan Kenney Professor of Economics（のち名誉教授、2010年）。
- **主要な研究分野**: 新古典派成長理論、一般均衡理論、ゲーム理論、所得分配、合理的信念の理論、技術的市場支配力。
- **評判・学術的貢献**: 計量経済学会フェロー（1971年から）。Arrow との共著である本書と、*Econometrica* 1970 の不可逆投資のラムゼイモデルの論文が初期の代表作。のちに *Endogenous Economic Fluctuations*（1997）、*The Market Power of Technology*（2023）を発表した。

---

**© 1970 The Johns Hopkins Press（Kenneth J. Arrow and Mordecai Kurz）. This edition © Earthscan 1970, 2011.** 本記事は原著の数理モデルを整理した解説であり、原著の文章を転載するものではない。
{% endraw %}
