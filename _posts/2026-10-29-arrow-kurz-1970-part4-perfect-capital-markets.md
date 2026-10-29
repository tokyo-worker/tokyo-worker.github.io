---
layout: post
title: "Arrow & Kurz (1970) \"Public Investment, the Rate of Return, and Optimal Fiscal Policy\"、Johns Hopkins Press for RFF: 数理モデル【第4部】完全資本市場の下での消費者最適化と操作可能性"
date: 2026-10-29 00:00:00 +0900
categories: [経済学, 公共経済学]
math: true
---

{% raw %}
# Arrow & Kurz (1970) "Public Investment, the Rate of Return, and Optimal Fiscal Policy"、Johns Hopkins Press for RFF: 数理モデル【第4部】
### 完全資本市場の下での消費者最適化と操作可能性（原著 第VII章・第VIII章）

---

## 0. 論文の紹介 {#sec0}

**書誌**

Kenneth J. Arrow and Mordecai Kurz, *Public Investment, the Rate of Return, and Optimal Fiscal Policy*, The Johns Hopkins Press for Resources for the Future, 1970（2011年に RFF Press から復刻）。公共投資の割引率（社会的割引率）を、成長理論の動学的最適化と、政府の政策手段による**操作可能性（controllability）**の問題として定式化した単行本である。

**本記事の位置づけ**

本記事は、この書籍そのものの解説ではなく、**書籍の背景にある数理モデルを早見表にした記事**である。原著の式は簡略化せず、そのまま用いる。全8章を4部に分けて記事化しており、本記事は最終の第4部にあたる。

| 部 | 原著の範囲 | 内容 |
|---|---|---|
| 第1部 | 第I章§4–5、第II章、第III章 | 基準関数、一部門最適成長（Ramsey型）、社会的割引率 |
| 第2部 | 第IV章 | 民間資本と公共資本の二部門最適成長モデル |
| 第3部 | 第V章、第VI章 | 政策手段・操作可能性の定義、固定貯蓄率の下での最適政策 |
| **第4部（本記事）** | 第VII章、第VIII章 | 完全資本市場の下での消費者最適化、税の組合せによる操作可能性 |

第3部では民間貯蓄を可処分所得の一定割合と仮定した。本記事ではこの仮定を外し、**民間部門が無限期間の効用を完全予見の下で最大化する**（完全競争的な資本市場）。政府は、税（消費税・貯蓄税・利子所得税・賃金税）と借入だけで、第2部の最適配分（または任意の有界な配分）を実現できるかを問われる。結論は、手段の数だけでなく**どの税を使うか**と**初期の政府債務**が決め手になる、というものである。

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

連続時間、無限期間、完全予見。民間部門は、子孫の厚生を（割引を除いて）自分と同じに評価する同質な代表的個人。民間部門にとって、収益率 $r$、非利子所得 $W$、公共資本 $k_g$、税率はすべて外生の時間関数である。政府は4種の税と借入と公共投資を使う。

**A1 完全資本市場と実行可能性（全資産が非負）**

個人は将来の非利子所得を担保に借りられるが、その現在価値（人的資産）を超えては借りられない。すなわち物的資産 $A_M$ と人的資産 $A_H$ の和 $A=A_M+A_H$ が常に非負。物的資産だけに非負を課すと、単純なケースでも最適解が存在しない（付録 A.2）。逆に借入に制限がないと、消費を無限に増やす借入パラドックスが生じる。

**A2 民間部門と公的部門の価値の乖離**

民間の felicity $U^p(c,k_g)$（次数 $1-\sigma_p$ の同次関数、凹）と割引率 $\rho_p$ は、公的なものと一致するとは限らない。一致する場合（乖離なし）は $U^p=U^g$、$\rho_p=\rho_g$。人口成長率 $\pi$ と長期成長率 $\tau$ は両部門で共通。

**A3 外生変数の有界性（原著 VII.2）**

次の4つの有界性仮定が成り立つ（極限は正で有限）。

| 仮定 | 内容 |
|---|---|
| I | $r(t)\to r^{\infty}\gt 0$、$k_g(t)\to k_g^{\infty}$、$\dot k_g\to 0$、かつ収益率の累積の乖離が有界 |
| II | 成長調整後の非利子所得 $w(t)\to w^{\infty}\gt 0$ |
| III | 消費 $c(t)\to c^{\infty}\gt 0$、$\dot c\to 0$ |
| IV（債務も目標にする場合） | $a_M(t)\to a_M^{\infty}\gt 0$、$a_M(0)=A_M(0)$、$\dot a_M\to 0$ |

仮定 I・III の下で $U_c$ は有限な正の極限に収束し、$d\log U_c/dt\to 0$。公的最適政策（第2部）は仮定 I–III を満たす。

**A4 技術と公共資本**

第2部と同じ。民間資本の限界生産力は $f_p=r$（完全競争）。公共資本には賃料 $r_g$（$r_g=0$ なら無料）を課せる。

**A5 政府の予算制約**

政府の純収入 $X$（税収＋賃料−国債の利子）で公共投資を賄い、不足は借入：$\dot D=\dot K_g-X$。

**正則条件**

$$
\lambda_p\gt 0,\qquad f_p^{\infty}\gt\gamma,\qquad v(t)\gt 0,\qquad A_M(0)\gt 0\ \ (\text{十分条件の命題で使う})
$$

### 1.1 消費者の実行可能条件（原著 VII.1）

**資産蓄積（税なし、1財）**

$$
\dot A_M=\underbrace{rA_M}_{\text{利子所得}}+\underbrace{W}_{\text{非利子所得}}-\underbrace{C}_{\text{消費}}\tag{1}
$$

**人的資産と割引演算子**

$$
\dot A_H=rA_H-W,\qquad A_H(0)=\Delta\{W;\,r\}\ \ (\text{非負な解のうち初期値が最小})\tag{2}
$$

$$
\Delta\{B;\,A\}=\int_{0}^{\infty}\exp\Bigl[-\int_{0}^{t}A(u)\,du\Bigr]\,B(t)\,dt\tag{3}
$$

**全資産と実行可能性**

$$
A=A_M+A_H,\qquad \dot A=rA-C,\qquad C\ \text{が実行可能}\ \Longleftrightarrow\ A(t)\ge 0\ \ (\text{すべての }t)\tag{4}
$$

**成長調整後の条件（3つの場合を統一）**

成長調整後の量を $a=Ae^{-\gamma t}$、$w=We^{-\gamma t}$、$c=Ce^{-\gamma t}$ とおくと、

$$
\dot a=\tilde r\,a-c,\qquad a(0)=\frac{A_M(0)}{\nu(0)}+\Delta\{w^{\ast};\,\tilde r\},\qquad c\ \text{が実行可能}\Longleftrightarrow a(t)\ge 0\ \ (\text{すべての }t)\tag{5}
$$

| 条件 | 状況 | $\nu$ | $\tilde r$ | $w^{\ast}$ |
|---|---|---|---|---|
| I | 1財、税なし | $1$ | $r-\gamma$ | $w$ |
| II | 1財と貨幣（消費財の貨幣価格 $p_c$） | $p_c$ | $r-\gamma-\dot p_c/p_c$ | $w/p_c$ |
| III | 1財と税 | $v=z_s/z_c$ | $z_{sr}\,r-\gamma-\dot v/v$ | $z_{cw}\,w$ |

> 条件 III は、税ありの資産蓄積 $\dot A_M=z_{sr}rA_M+z_{sw}W-vC$（第3部 式(7)）による。$\nu\gt 0$ でないと制約として機能しない。$a^{\ast}=A/(\nu e^{\gamma t})$ と規準化する。

| 記号・項目 | 意味 |
|---|---|
| $A_M,A_H,A$ | 物的資産、人的資産、全資産 |
| $\Delta\{B;A\}$ | 割引演算子（$B$ を割引率 $A$ で現在価値化） |
| $\nu$ | 消費の価格（1、$p_c$、$v$） |
| $\tilde r$ | 成長調整後・価格調整後の実効利子率 |
| $z_{sr},z_{sw},z_{cw}$ | 税パラメータの積（第3部 式(6)） |

### 1.2 消費者最適化（原著 VII.3、Proposition 1–4）

**消費者の問題（税なし、1財）**

$$
\max\int_{0}^{\infty}e^{-\lambda t}\,U(c,k_g)\,dt,\qquad \omega=\rho+\sigma\tau,\quad\lambda=\omega-\gamma\gt 0\tag{6}
$$

**ハミルトニアンと必要条件**

$$
H=U(c,k_g)+p\,\bigl[(r-\gamma)\,a-c\bigr]\tag{7}
$$

$$
U_c=p,\qquad \frac{\dot p}{p}=\lambda-(r-\gamma)\tag{8}
$$

**消費利子率との一致**

$$
r(t)=r_c(t)\equiv\omega-\frac{d\log U_c}{dt}\tag{9}
$$

**初期資産の条件**

$$
\dot a=(r_c-\gamma)\,a-c,\qquad a(0)=\Delta\{c;\,r_c-\gamma\}=\Delta\{C;\,r_c\}=\Delta\Bigl\{\frac{U_c}{U_c^{0}}\,C;\ \omega\Bigr\}\tag{10}
$$

$$
A_M(0)=\Delta\{C-W;\,r_c\}\tag{11}
$$

**Proposition 4（税あり、1財）：消費政策 $c(t)$ が最適な消費者行動であるための必要十分条件**

$$
\boxed{\begin{aligned}
&\text{(a)}\ \ z_{sr}\,r-\frac{\dot v}{v}=r_c(t)\\
&\text{(b)}\ \ \Delta\{z_{cw}W;\,r_c\}\lt+\infty\\
&\text{(c)}\ \ A_M(0)=v(0)\,\Delta\{C-z_{cw}W;\,r_c\}
\end{aligned}}\tag{12}
$$

**資産の極限**

$$
a^{\ast}_M+a^{\ast}_H\ \to\ \frac{c^{\infty}}{\lambda},\qquad a^{\ast}_M\ \to\ \frac{c^{\infty}-z_{cw}^{\infty}w^{\infty}}{\lambda}\quad(z_{cw}\to z_{cw}^{\infty},\ \text{仮定 II})\tag{13}
$$

> 式(12)は、税なし（Proposition 2：$r=r_c$、$\Delta\{W;r_c\}\lt\infty$、$A_M(0)=\Delta\{C-W;r_c\}$）と貨幣あり（Proposition 3：$r-\dot p_c/p_c=r_c$、$A_M(0)=p_c(0)\Delta\{c-w^{\ast};r_c-\gamma\}$）を含む一般形。(a) は消費者の異時点間の最適性（実効利子率＝消費利子率）、(b) は人的資産の存在、(c) は初期の資産と消費流列の整合。**ある消費政策は、ただ1つの初期資産水準に対してのみ最適**。Proposition 1：何らかの妥当な実行可能性の定義の下で、有界な最適政策があれば、人的資産は必ず定義できる。

| 記号・項目 | 意味 |
|---|---|
| $r_c$ | 消費利子率（$\omega-d\log U_c/dt$） |
| $U_c^{0}$ | 時点0の限界効用 |
| $p$ | 実質資産の補助変数 |
| $a^{\ast}_M,a^{\ast}_H$ | 規準化した物的資産、人的資産 |
| $\lambda,\omega$ | 民間部門の割引率（以後 $\lambda_p,\omega_p$） |

### 1.3 操作可能性の一般的な特徴づけ（原著 VIII.1、Proposition 1–3）

**記号（民間・公的の区別）**

$$
\omega_p=\rho_p+\sigma_p\tau,\qquad \lambda_p=\omega_p-\gamma,\qquad r_c^{p}=\omega_p-\frac{d\log U_c^{p}}{dt}\tag{14}
$$

> 公的最適政策では $f_p=r_c^{g}=\omega_g-d\log U_c^{g}/dt$。乖離がないときは $r_c^{g}=r_c^{p}$。長期の収益率 $f_p^{\infty}$ と $\omega_p$ が異なる場合を**将来に関する乖離（futurity divergence）**と呼ぶ。

**国民所得の恒等式（成長調整後）**

$$
c-w=(f_p-\gamma)\,k_p+(r_g-\gamma)\,k_g-\dot k_p-\dot k_g\tag{15}
$$

$$
\Delta\{C-W;\,r_c^{p}\}=K_p(0)+K_g(0)+\Delta\bigl\{(f_p-r_c^{p})K_p+(r_g-r_c^{p})K_g;\ r_c^{p}\bigr\}\tag{16}
$$

**Proposition 1（操作可能性の必要十分条件）**

$$
\boxed{\begin{aligned}
&\text{(a)}\ \ z_{sr}f_p-\frac{\dot v}{v}=r_c^{p}\\
&\text{(b)}\ \ \Delta\{z_{cw}W;\,r_c^{p}\}\lt+\infty\\
&\text{(c)}\ \ D(0)=K_g(0)+\bigl[v(0)-1\bigr]K(0)+v(0)\,\Delta\bigl\{(f_p-r_c^{p})K_p+(r_g-r_c^{p})K_g+(1-z_{cw})W;\ r_c^{p}\bigr\}
\end{aligned}}\tag{17}
$$

**(c) の同値な形**

$$
\text{(c}'\text{)}\qquad v(0)=\frac{A_M(0)+\Delta\{z_{sw}W;\,z_{sr}f_p\}}{\Delta\{C;\,r_c^{p}\}}\tag{18}
$$

**資産の極限**

$$
a^{\ast}_M\ \to\ \frac{(f_p^{\infty}-\gamma)k_p^{\infty}+(r_g^{\infty}-\gamma)k_g^{\infty}+(1-z_{cw}^{\infty})\,w^{\infty}}{\lambda_p}\tag{19}
$$

> 式(17)は、式(12)に $r=f_p$ と国民所得の恒等式（式(15)(16)）を代入したもの。(c) は、初期の政府債務 $D(0)$ が、(i) 公共資本の賃料と民間利回りの乖離、(ii) 民間・公的価値の乖離（$f_p\ne r_c^{p}$）、(iii) 賃金への課税、から決まる臨界値に等しいことを要求する。税が $v\equiv 1$、$z_{cw}\equiv 1$ なら $v(0)=1$。公的最適政策では $f_p=r_c^{g}$ なので、乖離がなければ $r_c^{p}=f_p$ となり (a) は $(z_{sr}-1)f_p=\dot v/v$。

**Proposition 2（安定な手段での操作可能性）**

安定な手段とは、税パラメータが正で有限な極限に収束するもの。仮定 I–III の下で、手段の集合による操作可能性は式(17)(a)(c)の成立と同値で、さらに次がすべて必要。

$$
\boxed{\begin{aligned}
&\text{(a)}\ \ \dot v/v\to 0\\
&\text{(b)}\ \ z_{sr}\,f_p\to\omega_p\ \ (\text{よって }z_{sr}^{\infty}=\omega_p/f_p^{\infty})\\
&\text{(c)}\ \ d(t)\to d^{\infty}=\dfrac{v^{\infty}\bigl[(f_p^{\infty}-\gamma)k_p^{\infty}+(r_g^{\infty}-\gamma)k_g^{\infty}+(1-z_{cw}^{\infty})w^{\infty}\bigr]}{\lambda_p}-k_p^{\infty}
\end{aligned}}\tag{20}
$$

**系（乖離なし）**

$$
(z_{sr}-1)\,f_p=\frac{\dot v}{v}\tag{21}
$$

> 乖離なしなら、公的最適政策は、式(17)(b)(c)と式(21)が成り立つときかつそのときに限り操作可能。安定な手段では $z_{sr}\to 1$ も必要。将来に関する乖離があれば $z_{sr}^{\infty}\ne 1$ なので、貯蓄税か利子所得税が必要（Remark 1）。操作可能で安定なら、債務所得比は有限な極限に収束する（Remark 2）。

**Proposition 3（4つの手段がすべて使える場合）**

$A_M(0)\gt 0$ とする。有界性仮定 I–III を満たす任意の政策は、次の条件を満たす任意の $z_s,z_c,z_w,z_r$ により操作可能。

$$
\text{(a)}\ z_{sw}\ \text{は有界で正},\qquad \text{(b)}\ \lim_{t\to\infty}z_{sr}\gt\frac{\gamma}{f_p^{\infty}}
$$

$$
\text{(c)}\ \ \frac{z_s(t)}{z_c(t)}=v(0)\exp\Bigl[\int_{0}^{t}\bigl(z_{sr}f_p-r_c^{p}\bigr)du\Bigr],\qquad \text{(d)}\ \ v(0)=\frac{A_M(0)+\Delta\{z_{sw}W;\,z_{sr}f_p\}}{\Delta\{C;\,r_c^{p}\}}\tag{22}
$$

> 安定な手段で操作するには、さらに $\bigl|\int_0^{\infty}(z_{sr}f_p-\omega_p)\,dt\bigr|\lt\infty$ が必要十分。賃金・利子への課税なし（$z_w=z_r=1$）でも、消費税と貯蓄税（と借入）だけで安定に操作可能。貯蓄税を利子所得税に置き換えてもよい。政府が $v(t)$（貯蓄と消費の交換比率）を動かせることが本質的。

| 記号・項目 | 意味 |
|---|---|
| $\omega_p,\lambda_p$ | 民間部門の漸近的割引率、定常化後の割引率 |
| $r_c^{p}$ | 民間の消費利子率 |
| $r_g$ | 公共資本の賃料 |
| $D,d$ | 政府債務、成長調整後の債務 |
| $K$ | 総資本 $K_p+K_g$ |
| $v$ | $z_s/z_c$（消費に対する貯蓄の税引後の相対価格） |

### 1.4 税なしの場合（原著 VIII.2、Proposition 4）

乖離なし（$r_c^{p}=f_p$）を仮定する（税なしで操作可能なら民間の価値で最適でなければならず、乖離は許されない）。

$$
D(0)=K_g(0)-\Delta\{(f_p-r_g)K_g;\ r_c^{p}\}\tag{23}
$$

$$
d(t)\to d^{\infty}=\frac{r_g^{\infty}-\gamma}{\lambda_p}\,k_g^{\infty}\tag{24}
$$

> 式(23)は式(17)(c)で $v(0)=1$、$z_{cw}=1$ としたもの。税が必要になるのは、次のいずれかが成り立たないとき：(i) 民間・公的価値の乖離なし、(ii) 公共資本の使用に市場の収益率 $f_p$ を課金（$r_g=f_p$）、(iii) 初期の債務が臨界値。**系**：乖離なしで $r_g=f_p$ なら、税なしで操作可能 ⇔ $D(0)=K_g(0)$（過去に公共投資を借入だけで賄ってきたのと同じ）。収穫逓増では、民間資本・労働に限界生産力を支払うと政府に限界生産力を支払えない。

### 1.5 所得税・利子所得税（原著 VIII.3、Proposition 5–7）

**所得税（$z_s=z_c=z$、$v\equiv 1$、$z_{cw}=z$）**

乖離なしなら $v/v=0$ より $z\equiv 1$。したがって**初期時点以外は所得税を課せない**（所得税は貯蓄への二重課税で中立でない）。**Proposition 5**：乖離なしなら、初期時点に一括の富の移転で債務を式(23)の水準にし、その後は税なしで最適政策を操作できる（初期時点の所得は状態変数で決まるので、誘因効果がない）。

**乖離がある場合（Proposition 6）**

$$
x(t)=1-\frac{r_c^{p}}{f_p}\quad(\text{初期時点以降})\tag{25}
$$

$$
D(0)=K_g(0)+\Delta\bigl\{x\,Y-z\,(f_p-r_g)K_g;\ r_c^{p}\bigr\}\quad(\text{初期時点の富の移転で調整})\tag{26}
$$

$$
x(t)\to x^{\infty}=1-\frac{\omega_p}{f_p^{\infty}},\qquad d(t)\to d^{\infty}=k_g^{\infty}+\frac{1}{f_p^{\infty}\lambda_p}\Bigl[\omega_p\,(r_g^{\infty}-f_p^{\infty})\,k_g^{\infty}+(f_p^{\infty}-\omega_p)\,y^{\infty}\Bigr]\tag{27}
$$

**利子所得税（$z_s=z_c=z_w=1$、$z_r$ のみ。Proposition 7）**

$$
z_r(t)=\frac{r_c^{p}}{f_p},\qquad D(0)=K_g(0)+\Delta\bigl\{(1-z_r)f_pK_p+(r_g-z_rf_p)K_g;\ r_c^{p}\bigr\}\tag{28}
$$

$$
z_r\to\frac{\omega_p}{f_p^{\infty}},\qquad d^{\infty}=k_g^{\infty}+\frac{1}{f_p^{\infty}\lambda_p}\Bigl[\omega_p\,(r_g^{\infty}-f_p^{\infty})\,k_g^{\infty}+(f_p^{\infty}-\omega_p)\,(y^{\infty}-w^{\infty})\Bigr]\tag{29}
$$

> 税の目的は、税引後の民間資本の限界生産力を、経路上の民間の消費利子率に一致させること。臨界債務 $D(0)$ は、公共資本の初期ストックと、将来の（政府の利子支払にかかる分を除く）税収と公共資本の使用料の過小評価の差の割引現在価値の和。**系**：将来に関する乖離がなければ（$f_p^{\infty}=\omega_p$）、$x^{\infty}=0$、$d^{\infty}=[(r_g^{\infty}-\gamma)/\lambda_p]\,k_g^{\infty}$（$r_g=f_p$ なら $k_g^{\infty}$）。政府が民間より将来を重視する（$\omega_g\lt\omega_p$）とき、$x^{\infty}\lt 0$：貯蓄を補助するため、限界税率が負の所得税になる。利子所得税の場合、乖離なしなら初期の富の移転（利子所得または物的資産に比例）で債務を式(23)にして、あとは税なし。

| 記号・項目 | 意味 |
|---|---|
| $x,z$ | 所得税率、手取率 $1-x$ |
| $Y$ | 国民所得（$f_pK_p+r_gK_g+W$） |
| $z_r$ | 利子所得税の手取率 |
| $y^{\infty},w^{\infty}$ | 定常の（成長調整後）産出、非利子所得 |

### 1.6 消費税（原著 VIII.4、Proposition 8）

$z_s=z_r=z_w=1$、$v=1/z_c$。$f_p^{\infty}\gt\gamma$ で $A_M(0)\gt 0$ なら、有界性仮定 I–III を満たす任意の政策は、次の消費税で操作可能。

$$
v(t)=\frac{1}{z_c(t)}=v(0)\exp\Bigl[\int_{0}^{t}\bigl(f_p-r_c^{p}\bigr)du\Bigr],\qquad v(0)=\frac{A_M(0)+\Delta\{W;\,f_p\}}{\Delta\{C;\,r_c^{p}\}}\tag{30}
$$

**漸近挙動**

$$
\begin{array}{lll}
\text{条件} & v(t) & d(t)\\
\hline
f_p^{\infty}=\omega_p\ (\text{乖離なし}) & \text{有限な正の極限（安定）} & d^{\infty}\ \text{有限、}D(0)\ \text{に依存}\\
f_p^{\infty}\gt\omega_p & +\infty & +\infty\\
f_p^{\infty}\lt\omega_p & 0 & -k_p^{\infty}-\dfrac{w^{\infty}}{f_p^{\infty}-\gamma}
\end{array}\tag{31}
$$

> 安定 ⇔ 将来に関する乖離がない。乖離なしでは、初期債務の水準が消費税率と債務の長期値に永続的な影響を及ぼす（$v$ の水準は $D(0)$ の一次の増加関数）。完全に乖離がなければ $v$ は定数。$f_p^{\infty}\gt\omega_p$ では消費の税引後価格が上昇し続け（消費の先送りへの課税）、$f_p^{\infty}\lt\omega_p$（政府が将来を重視する通常の場合）では消費への補助が100％に近づく。後者の債務は、政府が民間資本と人的資産の合計を貸し付ける形になる。

### 1.7 貯蓄税（原著 VIII.5、Proposition 9）

$z_c=z_r=z_w=1$、$v=z_s$。

**手段の動き**

$$
z_sf_p-\frac{\dot z_s}{z_s}=r_c^{p}\ \ \Longleftrightarrow\ \ \frac{d(1/z_s)}{dt}=r_c^{p}\Bigl(\frac{1}{z_s}\Bigr)-f_p\tag{32}
$$

**正の解が存在する条件と極限**

$$
\frac{1}{z_s(0)}\ge\Delta\{f_p;\,r_c^{p}\},\qquad \text{等号なら}\ z_s\to\frac{\omega_p}{f_p^{\infty}},\quad\text{不等号なら}\ z_s\to 0\tag{33}
$$

**$z_s$ の初期値と臨界債務**

$$
z_s(0)=\frac{A_M(0)}{K(0)+\Delta\{(f_p-r_c^{p})K_p+(r_g-r_c^{p})K_g;\ r_c^{p}\}}\tag{34}
$$

$$
\bar D=\frac{K_g(0)+\Delta\bigl\{(f_p-r_c^{p})[K_p(t)-K_p(0)]+(r_g-r_c^{p})K_g(t);\ r_c^{p}\bigr\}}{\Delta\{f_p;\,r_c^{p}\}}\tag{35}
$$

**Proposition 9**

$A_M(0)\gt 0$ とする。政策が貯蓄税と借入で操作可能 ⇔ $D(0)\le\bar D$。$D(0)\le D^{+}(0)\le\bar D$ なる任意の $D^{+}(0)$ へは、初期時点の貯蓄への無限大の補助金で債務を増やせる（減らせない）。その後 $z_s(t)$ を式(32)の解（初期値は式(34)の $A_M^{+}(0)$ で求めたもの）に選ぶ。

$$
D^{+}(0)=\bar D:\ \ z_s\to\frac{\omega_p}{f_p^{\infty}},\quad d^{\infty}=k_g^{\infty}+\frac{\gamma\,(f_p^{\infty}-\omega_p)\,k^{\infty}+\omega_p\,(r_g^{\infty}-f_p^{\infty})\,k_g^{\infty}}{f_p^{\infty}\lambda_p}\ \ (k^{\infty}=k_p^{\infty}+k_g^{\infty})\tag{36}
$$

$$
D^{+}(0)\lt\bar D:\ \ z_s\to 0,\quad d(t)\to-k_p^{\infty}\tag{37}
$$

**乖離なしの場合**

$$
z_s(0)=\frac{A_M(0)}{K(0)-\Delta\{(f_p-r_g)K_g;\,f_p\}},\qquad \bar D=K_g(0)-\Delta\{(f_p-r_g)K_g;\,f_p\},\qquad z_s\equiv 1\ \ (D^{+}(0)=\bar D)\tag{38}
$$

> $D^{+}(0)\lt\bar D$ では貯蓄税率が100％に近づき（「漸近的社会主義」）、政府が民間資本の保有額に等しい額の債権者になる。$r_g=f_p$ なら乖離なしで $\bar D=K_g(0)$、$z_s(0)=A_M(0)/K(0)$。臨界債務 $\bar D$ はかなり小さいことがあり、貯蓄税で操作可能な初期債務の範囲は狭い。$K_p(0)+\bar D\le 0$ なら、$A_M(0)\gt 0$ を満たすどんな債務水準でも操作不能（Remark）。例（乖離なし、$r_g=0$、$U_g=0$、$f=k_p^{\alpha}k_g^{\beta}$）：$k_p^{\infty}/k_g^{\infty}=\alpha/\beta$、$k^{\infty}/k_g^{\infty}=(\alpha+\beta)/\beta$。これが $\omega_p/(\omega_p-\gamma)$ より大きいか小さいかは事前には決まらない。

### 1.8 賃金税（原著 VIII.6、Proposition 10）

労働供給は外生なので、賃金税は一括税。$z_s=z_r=z_c=1$、$v=1$ で、式(17)(a)は $f_p=r_c^{p}$（乖離なしを意味する）に帰着する。

$$
\Delta\{x_wW;\,f_p\}=D(0)-K_g(0)+\Delta\{(f_p-r_g)K_g;\,f_p\}\tag{39}
$$

$$
x_w\to x_w^{\infty}:\qquad d^{\infty}=k_g^{\infty}+\frac{x_w^{\infty}w^{\infty}-(\omega_p-r_g^{\infty})\,k_g^{\infty}}{\lambda_p}\tag{40}
$$

> 乖離なしなら、式(39)を満たす限り賃金税の時間経路は何でもよく、式(17)(b)は自動的に成り立つ。賃金税は誘因効果がないので、債務目標のためだけに使える。乖離があると使えない。

| 記号・項目 | 意味 |
|---|---|
| $x_w$ | 賃金税率（$1-z_w$） |
| $\bar D$ | 貯蓄税で操作可能な初期債務の上限 |
| $d^{\infty}$ | 債務の長期値（成長調整後） |

### 1.9 二税による配分と債務の操作（原著 VIII.7–VIII.9、Proposition 11–13）

**債務を目標に含める**

債務経路を目標に含める（仮定 IV）。$a_M=d+k_p$ なので、$k_p$ が与えられていれば債務は $a_M$ で表せる。

**Proposition 11（配分と債務の政策が安定な手段で操作可能な条件）**

$$
\boxed{\begin{aligned}
&\text{(a)}\ \ \frac{\dot a_M}{a_M}+\gamma=z_{sr}f_p+z_{sw}\,\frac{w}{a_M}-v\,\frac{c}{a_M}\\
&\text{(b)}\ \ \frac{d(1/v)}{dt}=\bigl(r_c^{p}-z_{sr}f_p\bigr)\Bigl(\frac{1}{v}\Bigr)
\end{aligned}}\tag{41}
$$

> (a) は民間の資産蓄積、(b) は式(17)(a)の書換え。式(17)(c) は安定な手段で (a)(b) が満たされれば自動的に成り立つ。

**Proposition 12（賃金税＋他の1税）**

| 組合せ | 条件・式 | 安定な操作 |
|---|---|---|
| 賃金税＋貯蓄税 | $d(1/z_s)/dt=r_c^{p}(1/z_s)-f_p$、$z_s(0)=1/\Delta\{f_p;r_c^{p}\}$、$z_s^{\infty}=\omega_p/f_p^{\infty}$、$z_w=\dfrac{\dot a_M-(z_sf_p-\gamma)a_M+z_sc}{w\,z_s}$ | 可能（乖離なしなら $z_s\equiv 1$） |
| 賃金税＋利子所得税 | $z_r=r_c^{p}/f_p$、$z_w=\dfrac{\dot a_M-(r_c^{p}-\gamma)a_M+c}{w}$ | 可能（乖離なしなら $z_r\equiv 1$） |
| 賃金税＋消費税 | $z_c(t)=z_c(0)\exp\int_0^t(r_c^{p}-f_p)du$（$z_c(0)\gt 0$ は任意）、$z_w=\dfrac{\dot a_M-(f_p-\gamma)a_M+c/z_c}{w}$ | **乖離なしのときのみ**可能 |

**Proposition 13（賃金税なしの二税）**

賃金税なし（$z_w=1$）の3通りで、いずれも次の $A^{\infty},B^{\infty}$ から初期値を定める。$d(1/v)/dt=A(t)(1/v)-B(t)$ の安定解が $1/v(0)=\Delta\{B;A\}$、$1/v^{\infty}=B^{\infty}/A^{\infty}$。

| 組合せ | 手段の式 | 極限 |
|---|---|---|
| 消費税＋貯蓄税（$z_r=1$） | $\dfrac{d(z_c/z_s)}{dt}=\dfrac{(r_c^{p}-\gamma)f_pa_M-f_p\dot a_M+r_c^{p}w}{f_pa_M+w}\Bigl(\dfrac{z_c}{z_s}\Bigr)-\dfrac{c\,f_p}{f_pa_M+w}$、$z_s=\dfrac{\dot a_M+\gamma a_M+v\,c}{f_pa_M+w}$ | $z_s^{\infty}=\omega_p/f_p^{\infty}$、$z_c^{\infty}=\dfrac{\omega_p\,c^{\infty}}{\lambda_pf_p^{\infty}a_M^{\infty}+\omega_pw^{\infty}}$ |
| 消費税＋利子所得税（$z_s=1$） | $\dfrac{dz_c}{dt}=\dfrac{(r_c^{p}-\gamma)a_M-\dot a_M+w}{a_M}\,z_c-\dfrac{c}{a_M}$、$z_r=\dfrac{\dot a_M+\gamma a_M-w+c/z_c}{f_pa_M}$ | $z_c^{\infty}=\dfrac{c^{\infty}}{\lambda_pa_M^{\infty}+w^{\infty}}$ |
| 貯蓄税＋利子所得税（$z_c=1$） | $\dfrac{d(1/z_s)}{dt}=\Bigl[r_c^{p}-\gamma-\dfrac{\dot a_M}{a_M}\Bigr]\dfrac{1}{z_s}-\dfrac{c-w}{a_M}$、$z_r=\dfrac{\dot a_M+\gamma a_M+(c-w)z_s}{f_pa_M\,z_s}$ | $z_s^{\infty}=\dfrac{\lambda_pa_M^{\infty}}{c^{\infty}-w^{\infty}}$ |

> 消費税を含む2組合せは常に安定に操作可能。貯蓄税＋利子所得税は、$c(t)\ge w(t)$（すべての $t$）かつ大きな $t$ で $c\gt w$ のとき安定に操作可能（式(8)の条件：安定解が至る所で正）。乖離なしでも式は単純にならない。したがって、**任意の配分・債務政策は、賃金税または消費税のどちらか1つと、貯蓄税または利子所得税のどちらか1つの組合せで、安定な手段で操作できる**。

| 記号・項目 | 意味 |
|---|---|
| $a_M$ | 成長調整後の物的資産 $d+k_p$ |
| $A(t),B(t)$ | 式 $d(1/v)/dt=A(1/v)-B$ の係数（組合せごとに異なる） |
| $z_c,z_s,z_r,z_w$ | 4税の手取率 |

### 1.10 主要帰結

**主要式（Proposition 1）**

$$
\boxed{\begin{aligned}
&z_{sr}f_p-\underbrace{\dot v/v}_{\text{消費と貯蓄の相対価格の変化}}=\underbrace{r_c^{p}}_{\text{民間の消費利子率}}\\
&\Delta\{z_{cw}W;\,r_c^{p}\}\lt\infty\\
&D(0)=K_g(0)+[v(0)-1]K(0)+v(0)\,\Delta\bigl\{(f_p-r_c^{p})K_p+(r_g-r_c^{p})K_g+(1-z_{cw})W;\,r_c^{p}\bigr\}
\end{aligned}}\tag{42}
$$

**1つの税と借入による操作可能性のまとめ（Proposition 4–10）**

| 手段 | 乖離なし | 将来に関する乖離あり（$f_p^{\infty}\ne\omega_p$） |
|---|---|---|
| 税なし | $D(0)=K_g(0)-\Delta\{(f_p-r_g)K_g;r_c^{p}\}$ のときのみ | 不可（乖離があるので） |
| 所得税 | 初期時点の富の移転で債務を調整、以後税なし | 初期の富の移転後、式(25)の税率で操作（安定） |
| 利子所得税 | 同上（利子所得に比例した移転） | 初期の富の移転後、式(28)の税率で操作（安定） |
| 消費税 | 定数の税率で操作（安定） | 不安定（$v\to 0$ または $\infty$、債務が発散または全資産が消滅） |
| 貯蓄税 | $D(0)\le\bar D$ なら操作、$D(0)=\bar D$ で $z_s\equiv 1$ | 不安定（$z_s\to 0$）か、$D^{+}(0)=\bar D$ で安定 |
| 賃金税 | 式(39)を満たす任意の経路 | 使えない |

**特殊ケース**

| ケース | 結果 |
|---|---|
| 乖離なし、$r_g=f_p$ | 税なしの操作可能性は $D(0)=K_g(0)$ |
| $U_g=0$、$f=k_p^{\alpha}k_g^{\beta}$、乖離なし、$r_g=0$ | $k^{\infty}/k_g^{\infty}=(\alpha+\beta)/\beta$ |
| 将来に関する乖離なし | 安定な1税の手段が多数（所得税・消費税・賃金税・利子所得税） |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 公共投資に税が必要になる理由 | 乖離、公共資本の過小課金、初期債務が臨界値でない、のいずれか（式(23)） |
| 所得税による最適化の困難 | 所得税は貯蓄への二重課税で、$v\equiv 1$ のまま $z_{sr}\equiv z$ が動くため、乖離なしでは初期時点以外は課せない（Proposition 5） |
| 消費税の優位 | 消費税は静学の中立性と整合的で、乖離がなければ定数、安定（式(30)(31)） |
| 将来を重視する政府（$\omega_g\lt\omega_p$）の政策 | 所得税なら税率が負（貯蓄補助）、消費税なら消費補助率が100％に近づく |
| 貯蓄税の限界 | 操作可能な初期債務が狭く、外れると「漸近的社会主義」（式(33)(37)） |
| 賃金税の役割 | 一括税として債務目標の調整だけに使える（式(39)） |
| 債務目標を含める二税の柔軟性 | 2つの税で配分と債務の経路の両方を決められる（Proposition 11–13） |
| 借入パラドックスの排除 | 全資産 $A\ge 0$ という実行可能性で、人的資産までの借入を許し、最適解を存在させる（式(4)） |

## 3. モデルが整理している点 {#sec3}

- 完全競争的な民間部門の最適化を、実行可能性（式(4)）、最適性（式(12)）、人的資産（式(2)）の3つの条件にまとめ、政府の操作可能性の条件に直結させている。
- 操作可能性を、(a) 異時点間の最適性、(b) 人的資産の存在、(c) 初期債務の臨界値の3条件（式(17)）に分解している。
- 手段の数ではなく、**どの税を組み合わせるか**（消費税と貯蓄税など）で、安定な操作可能性が決まることを示している。

## 4. 対象外の現象 {#sec4}

- 労働供給の内生化（賃金税は一括税として扱う。労働・余暇の選択による非中立性は扱わない。原著は Phelps (1965) が扱ったと述べる）。
- 不確実性、リスク。
- 異質な個人、世代重複。民間部門は代表的個人で、子孫を割引のみで評価する。
- 多財・貨幣を含む一般均衡での操作可能性（Proposition 3 は拡張の可能性の言及にとどまる）。
- 税の徴収費用、政治的制約、手段の変動の費用。
- 乖離の原因（なぜ政府が民間より将来を重視するか）。原著は通常 $\omega_g\lt\omega_p$ とみなされるとするのみ。
- 債務の安定性以外の債務目標の最適化。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
[実行可能性 (1)-(5)] ──→ 人的資産・割引演算子 (2)(3)
        │
        ├─ 消費者最適化 (6)-(11) ──→ Proposition 4 (12)(13)
        │
        ├─ 一般的特徴づけ：恒等式 (15)(16) ──→ Proposition 1 (17)(18)(19)
        │       ├─ 安定な手段：Proposition 2 (20)(21)
        │       └─ 全手段：Proposition 3 (22)
        │
        ├─ 1税：無税 (23)(24)、所得税・利子所得税 (25)-(29)、
        │        消費税 (30)(31)、貯蓄税 (32)-(38)、賃金税 (39)(40)
        │
        └─ 2税：Proposition 11 (41) ──→ Proposition 12, 13
        まとめ：主要式 (42)
```

### A.1 使う道具

**T1 割引演算子の性質（原著 VII 付録 Lemma 4・5・6）**

Lemma 4：$\Delta\{\dot F;g\}=-F(0)+\Delta\{Fg;g\}$。Lemma 5：$\Delta\{B;A-\dot F\}=\Delta\{B\,e^{F(t)-F(0)};A\}$。Lemma 6：$\Delta\{A;A\}=1$。線形：$\Delta\{B_1+B_2;A\}=\Delta\{B_1;A\}+\Delta\{B_2;A\}$。

**T2 臨界値（Theorem 2）**

$\dot x=A(t)x-B(t)$、$\int_0^{\infty}A=\infty$、$B\ge 0$ のとき、すべての $t$ で $x(t)\ge 0$ となる最小の初期値は $\Delta\{B;A\}$。$B$ が有界なら $\Delta\{B;A\}$ は有限（Lemma 3）。

**T3 長期の挙動（Lemma 2）**

$A(t)\to A^{\infty}\gt 0$、$B(t)\to B^{\infty}$ なら、$\dot x=Ax-B$ の解は、初期値が臨界値より大きいと $+\infty$、小さいと $-\infty$、等しいと $B^{\infty}/A^{\infty}$ に収束する。

**T4 符号の補題（Lemma 1 と系）**

$\dot x=Ax-B$、$B\ge 0$、$B\gt 0$（大きな $t$）で、ある $t_0$ で $x(t_0)\le 0$ なら $x(t)\lt 0$（$t$ 大）。$A\gt 0$ なら $\limsup x\lt 0$。したがって $\liminf x\ge 0$ なら $x(t)\gt 0$（すべての $t$）。

**T5 最大原理と十分条件（第1部 T1・T2）**

現在価値ハミルトニアン、横断性条件 $e^{-\lambda t}p\,a\to 0$。

**T6 Walras の法則（第3部 T4）**

$Y-X=C+\dot A_M$、$\dot D=\dot K_g-X$、$Y=C+\dot K_p+\dot K_g$ から $\dot A_M=\dot K_p+\dot D$。

### A.2 実行可能性（式(1)–(5)）

**Step 1　物的資産だけに非負を課すと最適解がない例**

$r\lt\rho$、$r,W$ が定数、$U'(c)=c^{-\sigma}$ とする。必要条件 $U'(C)=p$、$\dot p/p=\rho-r$ から $p=p_0e^{(\rho-r)t}$、$C(t)=C_0e^{-\alpha t}$（$\alpha=(\rho-r)/\sigma\gt 0$）。式(1)を解くと

$$
A_M(t)=\Bigl[A_M(0)+\frac{W}{r}-\frac{C_0}{\alpha+r}\Bigr]e^{rt}-\frac{W}{r}+\frac{C_0e^{-\alpha t}}{\alpha+r}
$$

**Step 2　$\liminf A_M\ge 0$ では最適が存在しない**

括弧内が負なら $A_M\to-\infty$ で実行不能。正なら $C_0$ を少し増やしても括弧内は正で、すべての時点で消費が増えるので最適でない。最適なら括弧内は0。すると $A_M\to-W/r$（負）で $\liminf A_M\ge 0$ を満たさない。

**Step 3　全資産で定義すると解決**

$A=A_M+W/r$ とすると $A(t)=[A(0)-C_0/(\alpha+r)]e^{rt}+C_0e^{-\alpha t}/(\alpha+r)$。最適なら括弧内は0で、$A(t)\to 0^{+}$ で実行可能。

**Step 4　人的資産の定義**

外生所得だけをもつ個人と、物的資産だけをもつ個人が同じ消費流列を選べる条件を比べる。式(2)の $\dot A_H=rA_H-W$ の非負な解のうち初期値が最小のものが人的資産（T2より $A_H(0)=\Delta\{W;r\}$）。物的資産と人的資産は加法的（式(4)）。

**Step 5　実行可能性の条件**

式(1)と式(2)を足して $\dot A=rA-C$。T4 より、$A(t)\ge 0$（すべての $t$）か、$\limsup A\lt 0$ のどちらか。したがって実行可能 ⇔ $A(t)\ge 0$（式(4)）。成長調整（$r\to r-\gamma$）と、貨幣・税の場合の読み替え（$\nu,\tilde r,w^{\ast}$）で式(5)。

| 入力・使う道具 | 内容 |
|---|---|
| T1、T2、T4 | 割引演算子、臨界値、符号の補題 |
| 第3部 式(7) | 税ありの資産蓄積 |

**確認**

$r\ge\rho$ のときは2つの実行可能性の定義が一致する。$r+\alpha\lt 0$ ならどちらの定義でも最適解がない。

### A.3 人的資産の存在（Proposition 1）

**Step 1　背理法**

最適な $c^{\ast}$ があるのに式(2)に非負解がないとする。$W\ge 0$（大きな $t$ で正）、T4より全解が大きな $t$ で負。

**Step 2　改善経路の構成**

$0\le t\le 1$ で $c^{\ast}$ より大きい $c^{\ast\ast}$、$t\gt 1$ で $(1-\epsilon)c^{\ast}$ とする。Theorem 1（原著 VII 付録）より、$\epsilon$ が小さければ実行可能。

**Step 3　効用の比較**

効用の差は $\int_0^{1}e^{-\lambda t}\{U[c^{\ast\ast}]-U[c^{\ast}]\}dt-\int_1^{\infty}e^{-\lambda t}\{U[c^{\ast}]-U[(1-\epsilon)c^{\ast}]\}dt$。第1項は正で $\epsilon$ によらず、第2項は凹性から $\epsilon\int e^{-\lambda t}U_c[(1-\epsilon)c^{\ast},k_g]\,c^{\ast}dt\le\epsilon M$ で、$\epsilon$ を小さくすればいくらでも小さい。よって $c(t,\epsilon)$ が $c^{\ast}$ を改善し、最適性に矛盾する。

| 入力・使う道具 | 内容 |
|---|---|
| T4、Theorem 1 | 符号の補題、摂動 |

**確認**

$\lambda\gt 0$、$c^{\ast}$ が有限な正の極限をもつ（$U_c$ が有界）ことを使う。

### A.4 消費者最適化（式(6)–(13)）

**Step 1　ハミルトニアン（T5）**

式(7)。制御は $c$、$k_g$ は与件。

**Step 2　必要条件**

$\partial H/\partial c=U_c-p=0$、$\dot p=\lambda p-\partial H/\partial a=\lambda p-(r-\gamma)p$ → 式(8)。

**Step 3　消費利子率との一致**

$p=U_c$ を第2式に入れ、$r-\gamma=\lambda-d\log U_c/dt$、すなわち $r=\omega-d\log U_c/dt=r_c$ → 式(9)。

**Step 4　$a$ の長期挙動（T3）**

$\dot a=(r_c-\gamma)a-c$。仮定 I・III より $r_c-\gamma\to\omega-\gamma=\lambda\gt 0$、$c\to c^{\infty}$。$a(0)$ が臨界値 $\xi$ より大きいと $a\to+\infty$、小さいと $-\infty$（実行不能）、等しいと $a\to c^{\infty}/\lambda$。

**Step 5　臨界値以外は最適でない**

$a(0)\gt\xi$ とする。消費を $a(0)/\xi$ 倍した $[a(0)/\xi]c$ に対する解を $a'$ とし、$a''=[\xi/a(0)]a'$ とおくと、$a''$ は元の式を満たし $a''(0)=\xi$（臨界値）なので非負。よって $a'\ge 0$ で実行可能であり、効用も高い。よって最適なら $a(0)=\xi=\Delta\{c;r_c-\gamma\}$（T2）。

**Step 6　同値な書換え（T1）**

Lemma 5 で $\Delta\{c;r_c-\gamma\}=\Delta\{C;r_c\}$。$r_c-\gamma=(\omega-\gamma)-d\log U_c/dt$ にも Lemma 5 を使い $\Delta\{c;r_c-\gamma\}=\Delta\{(U_c/U_c^{0})c;\lambda\}$、成長調整を戻すと式(10)の第3の形（消費を主観的割引と限界効用の変化の両方で現在価値化）。

**Step 7　人的資産と初期条件**

人的資産は $\dot a_H=(r_c-\gamma)a_H-w$、$a_H(0)=\Delta\{w;r_c-\gamma\}=\Delta\{W;r_c\}$。有限が (b)。$a(0)=A_M(0)+a_H(0)$ より式(11)。

**Step 8　十分性（T5）**

式(8)で $p=U_c$ を定義すると式(8)の第2式は式(9)から成り立つ。横断性 $e^{-\lambda t}p\,a\to 0$ は、$p\to U_c^{\infty}$（有限）、$a\to c^{\infty}/\lambda$ より成り立つ。

**Step 9　税の場合（式(12)(13)）**

条件 III の $a^{\ast}$、$\tilde r=z_{sr}r-\gamma-\dot v/v$ で同じ議論。(a) は式(9)の $\tilde r+\gamma=r_c$ より $z_{sr}r-\dot v/v=r_c$。$a^{\ast}(0)=A_M(0)/v(0)+\Delta\{z_{cw}w;r_c-\gamma\}=\Delta\{c;r_c-\gamma\}$ から $A_M(0)=v(0)\Delta\{C-z_{cw}W;r_c\}$。仮定 II と $z_{cw}\to z_{cw}^{\infty}$ のとき $a^{\ast}_H\to z_{cw}^{\infty}w^{\infty}/\lambda$（T3）なので $a^{\ast}_M\to(c^{\infty}-z_{cw}^{\infty}w^{\infty})/\lambda$。

| 入力・使う道具 | 内容 |
|---|---|
| T1、T2、T3、T5 | 割引演算子、臨界値、長期の挙動、十分条件 |

**確認**

税なし、$v=1$、$z_{cw}=1$ で式(12)は Proposition 2 に一致する。

### A.5 一般的特徴づけ（式(15)–(19)）

**Step 1　所得の恒等式（式(15)）**

$Y=f_pK_p+r_gK_g+W=C+I_p+I_g$。成長調整し、$I_pe^{-\gamma t}=\dot k_p+\gamma k_p$、$I_ge^{-\gamma t}=\dot k_g+\gamma k_g$ を使うと $c-w=(f_p-\gamma)k_p+(r_g-\gamma)k_g-\dot k_p-\dot k_g$。

**Step 2　Lemma 4 の適用**

$\Delta\{\dot k_p;r_c^{p}-\gamma\}=-k_p(0)+\Delta\{(r_c^{p}-\gamma)k_p;r_c^{p}-\gamma\}$、$k_g$ も同様。線形性を使って $\Delta\{c-w;r_c^{p}-\gamma\}$ を計算：

$$
=k_p(0)+k_g(0)+\Delta\{(f_p-r_c^{p})k_p+(r_g-r_c^{p})k_g;\ r_c^{p}-\gamma\}
$$

**Step 3　成長調整を戻す（T1 Lemma 5）**

$F=\gamma t$ として $\Delta\{b;r-\gamma\}=\Delta\{be^{\gamma t};r\}$。$k_p(0)=K_p(0)$ などを使い式(16)。

**Step 4　$D(0)$ の式**

式(12)(c)に $r_c=r_c^{p}$ を入れ、$C-z_{cw}W=(C-W)+(1-z_{cw})W$ とし、式(16)を代入。$A_M(0)=D(0)+K_p(0)$、$K=K_p+K_g$ より

$D(0)=-K_p(0)+v(0)[K(0)+\Delta\{\ldots\}]=K_g(0)+[v(0)-1]K(0)+v(0)\Delta\{\ldots\}$ → 式(17)(c)。

**Step 5　$v(0)$ の式**

式(17)(a)の $r_c^{p}=z_{sr}f_p-\dot v/v$ を式(12)(c)の $\Delta\{z_{cw}W;r_c^{p}\}$ に入れ、Lemma 5（$F=\log v$）：$v(0)\Delta\{z_{cw}W;z_{sr}f_p-\dot v/v\}=\Delta\{z_{cw}Wv;z_{sr}f_p\}=\Delta\{z_{sw}W;z_{sr}f_p\}$（$z_{cw}v=z_{sw}$）。式(12)(c)を $v(0)$ について解く → 式(18)。

**Step 6　十分性（Walras の法則、T6）**

式(17)(a)–(c)が成り立つとする。民間の消費者最適化の条件（式(12)）が $r=f_p$ で成り立つ。T6 より $\dot A_M=\dot K_p+\dot D$ が成り立ち、民間の国債需要は政府の借入必要額を自動的に満たす。したがって政策は操作可能。

**Step 7　資産の極限（式(19)）**

仮定 I で $f_p[k_p,k_g]$ と $k_g$ が収束し、$f$ の強凹性で $k_p\to k_p^{\infty}$（Lemma 1）。式(15)の他の項はすべて収束するので $\dot k_p$ も収束し、0に収束。式(13)の $c^{\infty}-z_{cw}^{\infty}w^{\infty}=(c^{\infty}-w^{\infty})+(1-z_{cw}^{\infty})w^{\infty}$ に式(15)の極限を代入。

| 入力・使う道具 | 内容 |
|---|---|
| T1、T6 | 割引演算子の性質、Walras の法則 |
| 式(12)(15) | 民間最適性、恒等式 |

**確認**

$v\equiv 1$、$z_{cw}\equiv 1$ なら式(17)(c)は $D(0)=K_g(0)+\Delta\{(f_p-r_c^{p})K_p+(r_g-r_c^{p})K_g;r_c^{p}\}$。乖離なし（$r_c^{p}=f_p$）なら式(23)に一致する。

### A.6 安定な手段と Proposition 2・3

**Step 1　$\dot v/v\to 0$**

安定：$z_{sr}$ は定数に収束。仮定 I より $f_p\to f_p^{\infty}$。式(17)(a)で $r_c^{p}\to\omega_p$ なので $\dot v/v$ は極限をもつ。$v$ は2つの手段の比で、正で有限な極限に収束するので、極限は0 → (a)。

**Step 2　$z_{sr}f_p\to\omega_p$**

式(17)(a)で $\dot v/v\to 0$、$r_c^{p}\to\omega_p$ → (b)。

**Step 3　債務の極限**

$z_{cw}\to z_{cw}^{\infty}$ で式(17)(b)は自動的に成り立つ。$a_M=v\,a^{\ast}_M\to v^{\infty}a^{\ast\infty}_M$、$d=a_M-k_p$。式(19)から式(20)(c)。

**Step 3'　将来に関する乖離**

$f_p^{\infty}\ne\omega_p$ なら (b) より $z_{sr}^{\infty}\ne 1$ なので $z_s$ か $z_r$ が1でない。

**Step 4　Proposition 3**

(a)(b) を満たす $z_s,z_r,z_w$ を選ぶ。$z_{sw}$ が有界で正、$A_M(0)\gt 0$ なら、式(18)の分子・分母は正。$\Delta\{z_{sw}W;z_{sr}f_p\}=\Delta\{z_{sw}w;z_{sr}f_p-\gamma\}$ は T2 と (b)（$z_{sr}f_p-\gamma\to z_{sr}^{\infty}f_p^{\infty}-\gamma\gt 0$）から有限。$v(0)$ は式(18)で正。式(17)(a)を積分して (c)、$z_c=z_s/v$ で定まる。(b) は自動的に成立。

**Step 5　安定性（式(22)の補足）**

$r_c^{p}=\omega_p-d\log U_c^{p}/dt$ より $\int_0^t(z_{sr}f_p-r_c^{p})du=\int_0^t(z_{sr}f_p-\omega_p)du+\log[U_c^{p}(t)/U_c^{p}(0)]$。最後の項は有界な政策で収束するので、$v$ が正で有限な極限をもつ ⇔ $\bigl|\int_0^{\infty}(z_{sr}f_p-\omega_p)dt\bigr|\lt\infty$。

| 入力・使う道具 | 内容 |
|---|---|
| T2、T3、T4 | 臨界値、長期の挙動 |
| 式(17)(18)(19) | 一般的特徴づけ |

**確認**

乖離なしなら $f_p=r_c^{p}$ で $\dot v/v=(z_{sr}-1)f_p$ となり、式(21)に一致する。

### A.7 1つの税の場合（式(23)–(40)）

**Step 1　税なし（式(23)(24)）**

$v=1$、$z_{sr}=z_{cw}=1$。(a) は $f_p=r_c^{p}$。式(17)(c)で $v(0)=1$、$z_{cw}=1$、$r_c^{p}=f_p$：$D(0)=K_g(0)+\Delta\{(r_g-f_p)K_g;r_c^{p}\}$ → 式(23)。式(19)で $f_p^{\infty}=\omega_p$（$f_p^{\infty}-\gamma=\lambda_p$）：$a_M^{\infty}=k_p^{\infty}+(r_g^{\infty}-\gamma)k_g^{\infty}/\lambda_p$、$d=a_M-k_p$ → 式(24)。

**Step 2　所得税（式(25)–(27)）**

$v\equiv 1$、$z_{sr}=z_{cw}=z$ とおく。式(17)(a)：$zf_p=r_c^{p}$ → 式(25)。式(17)(c)：$D(0)=K_g(0)+\Delta\{(1-z)f_pK_p+(r_g-zf_p)K_g+(1-z)W;r_c^{p}\}$。$f_pK_p+r_gK_g+W=Y$ と $r_g-zf_p=xr_g-z(f_p-r_g)$ より $=K_g(0)+\Delta\{xY-z(f_p-r_g)K_g;r_c^{p}\}$ → 式(26)。$z\to\omega_p/f_p^{\infty}$ → 式(27)の第1式。式(20)(c)に $v=1$、$z_{cw}=z^{\infty}$ を入れ、$f_pk_p+r_gk_g+w=y$ で整理すると式(27)の第2式（式(19)から導いて原著と一致）。

**Step 3　利子所得税（式(28)(29)）**

$z_{sr}=z_r$、$z_{cw}=1$、$v=1$。式(17)(a)：$z_rf_p=r_c^{p}$。式(17)(c) で $(1-z_{cw})W=0$ → 式(28)。極限は式(19)で $z_{cw}=1$ なので $(y-w)$ が現れる → 式(29)。

**Step 3'　乖離なしの場合（Proposition 5）**

$r_c^{p}=f_p$ なら $z=1$。初期時点の所得は状態変数で決まるので、一括の移転（極限的な高率・短期の課税）に誘因効果はなく、$D(0)$ を式(23)の水準にできる。

**Step 4　消費税（式(30)(31)）**

$z_{sr}=1$、$z_{cw}=1$（$z_w=1$）、$v=1/z_c$。式(17)(a)：$\dot v/v=f_p-r_c^{p}$ → 積分して式(30)の第1式。式(18)で $z_{sw}=1$ → 第2式。$f_p^{\infty}\gt\gamma$ で Proposition 3(b) が成立。安定の条件は $|\int(f_p-\omega_p)dt|\lt\infty$ で、$f_p\to f_p^{\infty}$ なので $f_p^{\infty}=\omega_p$ のとき。債務：$a_H=\Delta\{w;f_p-\gamma\}\to w^{\infty}/(f_p^{\infty}-\gamma)$（T2・T3）。$a_M+a_H=v(a^{\ast}_M+a^{\ast}_H)\to v\,c^{\infty}/\lambda_p$。$f_p^{\infty}\gt\omega_p$ で $v\to\infty$、$a_M\to\infty$。$f_p^{\infty}\lt\omega_p$ で $v\to 0$、$a_M\to-w^{\infty}/(f_p^{\infty}-\gamma)$、$d=a_M-k_p$ → 式(31)。

**Step 5　貯蓄税（式(32)–(38)）**

$v=z_s$、$z_{sr}=z_s$。式(17)(a) は式(32)の第1式。$1/z_s$ について書き換えて第2式（$d(1/z_s)/dt=-\dot z_s/z_s^2$）。正の解の存在：T2・T3 より $1/z_s(0)\gt\Delta\{f_p;r_c^{p}\}$（$z_s\to 0$）、等しい（$z_s\to\omega_p/f_p^{\infty}$）、小さい（正の解なし）→ 式(33)。式(17)(c)で $z_{cw}=1$：$D(0)=K_g(0)+[z_s(0)-1]K(0)+z_s(0)\Delta\{(f_p-r_c^{p})K_p+(r_g-r_c^{p})K_g;r_c^{p}\}$。$D(0)+K_p(0)=A_M(0)$ を使い $z_s(0)$ について解く → 式(34)。$A_M(0)\gt 0$ で式(33)に代入：$[K(0)+\Delta\{X\}]/A_M(0)\ge\Delta\{f_p;r_c^{p}\}$、$X=(f_p-r_c^{p})K_p+(r_g-r_c^{p})K_g$。$A_M(0)=D(0)+K_p(0)$ で整理し、$K_p(0)\Delta\{f_p;r_c^{p}\}=K_p(0)\Delta\{f_p-r_c^{p};r_c^{p}\}+K_p(0)$（Lemma 6）を使うと $D(0)\le\bar D$（式(35)）。乖離なし：$\Delta\{f_p;f_p\}=1$（Lemma 6）→ 式(38)。極限：$z_s\to\omega_p/f_p^{\infty}$ のとき式(20)(c) で $v^{\infty}=\omega_p/f_p^{\infty}$、$z_{cw}=1$ から $d^{\infty}=\dfrac{\omega_p}{f_p^{\infty}}\dfrac{(f_p^{\infty}-\gamma)k_p^{\infty}+(r_g^{\infty}-\gamma)k_g^{\infty}}{\lambda_p}-k_p^{\infty}$。整理して式(36)。$z_s\to 0$ では $v^{\infty}=0$ なので $d^{\infty}=-k_p^{\infty}$ → 式(37)。初期の $z_s=+\infty$ の補助金（消費を0にしても瞬時なので資本・効用に影響しない）で債務を増やせるが、$-\infty$ は個人が消費を増やして回避できるので無効。

**Step 6　賃金税（式(39)(40)）**

$v=1$ で式(17)(a) は $f_p=r_c^{p}$。式(17)(c)で $v(0)=1$、$1-z_{cw}=x_w$ → 式(39)。$\Delta\{z_{cw}W;f_p\}=\Delta\{W;f_p\}-\Delta\{x_wW;f_p\}$ なので (b) は自動的に成立。式(19)で $f_p^{\infty}=\omega_p$、$1-z_{cw}^{\infty}=x_w^{\infty}$ から $d^{\infty}=[(r_g^{\infty}-\gamma)k_g^{\infty}+x_w^{\infty}w^{\infty}]/\lambda_p$。$\lambda_p=\omega_p-\gamma$ で整理すると式(40)。

| 入力・使う道具 | 内容 |
|---|---|
| T1、T2、T3、T6 | 割引演算子、臨界値、長期の挙動、Walras |
| 式(17)–(20) | 一般的特徴づけ |

**確認**

乖離なし、$r_g=f_p$ なら式(23)(26)(28)(38)(39) はいずれも $D(0)=K_g(0)$ の周辺で整合する（式(23)は $D(0)=K_g(0)$、式(38)は $\bar D=K_g(0)$）。

### A.8 二税の場合（式(41)、Proposition 11–13）

**Step 1　Proposition 11**

成長調整後の資産蓄積 $\dot a_M=(z_{sr}f_p-\gamma)a_M+z_{sw}w-vc$（第3部 式(7) の成長調整）を $a_M$ で割り、$\gamma$ を移項して (a)。(b) は式(17)(a)から $d(1/v)/dt=-(\dot v/v)(1/v)=(r_c^{p}-z_{sr}f_p)(1/v)$。

**Step 2　式(17)(c) の自動成立**

安定な手段で (a)(b) と仮定 IV が成り立つとする。$a^{\ast}_M=a_M/v$ は $\dot a^{\ast}_M=(r_c^{p}-\gamma)a^{\ast}_M+z_{cw}w-c$（式(b)を使用）。$r_c^{p}-\gamma\to\lambda_p\gt 0$ なので T3 より正で有限な極限に収束する解は1つで、T2 より $a^{\ast}_M(0)=\Delta\{c-z_{cw}w;r_c^{p}-\gamma\}$。これは式(12)(c)と同値。

**Step 3　賃金税＋貯蓄税**

$v=z_s$、$z_{sr}=z_s$、$z_{sw}=z_sz_w$。(b)：$d(1/z_s)/dt=r_c^{p}(1/z_s)-f_p$。この式は正で有界な解がただ1つで、$1/z_s(0)=\Delta\{f_p;r_c^{p}\}$、$z_s^{\infty}=\omega_p/f_p^{\infty}$（T2・T3）。(a) から $z_w$ を解いて表の式。乖離なしなら $r_c^{p}=f_p$ で $1/z_s\equiv 1$（Lemma 6）。

**Step 4　賃金税＋消費税**

$z_{sr}=1$、$v=1/z_c$。(b)：$dz_c/dt=(r_c^{p}-f_p)z_c$。解 $z_c(t)=z_c(0)\exp\int_0^t(r_c^{p}-f_p)du$。乖離があると $z_c\to 0$ または $\infty$ で不安定。乖離なしなら任意の $z_c(0)\gt 0$ が極限をもつ（$r_c^{p}\to\omega_p=f_p^{\infty}$）。(a) から $z_w$ を解く。乖離なしでは $v$ は定数。

**Step 5　賃金税＋利子所得税**

$v=1$、$z_{sr}=z_r$。(b) から $z_rf_p=r_c^{p}$。(a) から $z_w$。乖離なしでは $z_r\equiv 1$ で、税は賃金だけ（Proposition 10 と同じ、債務目標を満たすよう調整）。

**Step 6　賃金税なしの二税（Proposition 13）**

(a) から $z_{sr}$ または $z_s$ を解いて (b) に代入すると $d(1/v)/dt=A(t)(1/v)-B(t)$。$a_M\to a_M^{\infty}$、$\dot a_M\to 0$、$r_c^{p}\to\omega_p$ なので $A^{\infty}\ge\lambda_p\gt 0$（T3：安定解は唯一）。3組合せの具体形は表のとおり。(i) 消費税＋貯蓄税：$z_s(\,f_pa_M+w-c/z_c)=\dot a_M+\gamma a_M$ から $z_s=(\dot a_M+\gamma a_M+vc)/(f_pa_M+w)$、これを (b) に入れて $u=z_c/z_s=1/v$ の式。(ii) 消費税＋利子所得税：$z_{sr}=z_r$、$v=1/z_c$ から $z_r=(\dot a_M+\gamma a_M-w+c/z_c)/(f_pa_M)$、(b) に代入して $z_c$ の式。(iii) 貯蓄税＋利子所得税：$z_sz_rf_p=[\dot a_M+\gamma a_M+z_s(c-w)]/a_M$ を (b) に代入。極限は $B^{\infty}/A^{\infty}$ と $z_{sr}^{\infty}=\omega_p/f_p^{\infty}$ から。(iii) では $B=(c-w)/a_M$ の符号が正でなければ解が至る所で正にならない（T4）ので、$c\ge w$ が条件。消費税を含む2組合せでは $B\ge 0$ が成立（$\delta_c=0$）。

| 入力・使う道具 | 内容 |
|---|---|
| T2、T3、T4 | 臨界値、長期の挙動、符号の補題 |
| 式(41) | Proposition 11 |

**確認**

乖離なしで $z_w$ だけに課税なら Proposition 10 に一致する（$z_r\equiv 1$、$z_s\equiv 1$）。

### A.9 著者について

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
