---
layout: post
title: "Harrison & Pliska (1981) \"Martingales and Stochastic Integrals in the Theory of Continuous Trading\"、Stochastic Processes and their Applications: 数理モデル"
date: 2026-11-01 00:00:00 +0900
categories: [金融数学, 資産価格理論]
math: true
---

{% raw %}
# Harrison & Pliska (1981) "Martingales and Stochastic Integrals in the Theory of Continuous Trading"、Stochastic Processes and their Applications: 数理モデル
### 無摩擦な連続取引市場の一般モデル：自己充足戦略・無裁定・完備性とマルチンゲール表現

---

## 論文の紹介

J. Michael Harrison（Stanford University）と Stanley R. Pliska（Northwestern University）による論文で、*Stochastic Processes and their Applications*, Vol. 11, No. 3 (1981), pp. 215–260 に掲載された。本記事が参照した PDF は、この論文の Discussion Paper No. 454（1981年1月）版である。

**論文リンク**：
- 無料で全文を読める版：確認できなかった
- 公式版（出版社・DOI）：<https://doi.org/10.1016/0304-4149(81)90026-0> （Stochastic Processes and their Applications, 11(3), 215–260（1981）。DOIは他論文の文献リストで確認。閲覧に契約や所属機関経由のアクセスが必要な場合がある）

論文の位置づけは、原著者自身の言葉では「チュートリアル・サーベイ・新結果の場」である。Black–Scholes のオプション価格公式をより深く理解したいという動機から出発し、次の枠組みを与える。

- 価格過程をセミマルチンゲールとし、資本利得を一般の確率積分で表す、無摩擦な連続取引市場の一般モデル。
- そのモデルの中での偶発請求権（オプション）評価の理論。
- 市場が完備であること（すべての請求権が複製できること）と、割引価格過程がマルチンゲール表現性をもつことが同値である、という中心定理。
- Black–Scholes モデルの多次元拡張と、その他の例。

**この記事は、上記の論文の背景にある数理モデルを、式・前提・記号・導出を中心にまとめた早見表である。** 論文の解説や評価を目的とせず、論文の議論の流れも追わない。原論文の式番号は引き継がず、本記事内で (1) から通し番号を振り直した（原論文の節は「原論文 §n」と注記する）。

---

## 目次

- [1. 数理モデル](#sec1)
- [2. 説明できる現象](#sec2)
- [3. 整理している点](#sec3)
- [4. 対象外の現象](#sec4)
- [5. 主要文献・関連論文](#sec5)
- [付録：導出手順](#appendix)

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間・情報構造**

投資家（原論文の "you"）が、$K+1$ 種類の証券 $S^0,S^1,\dots,S^K$ の取引できる孤立した市場を考える。取引は、有限モデルでは離散時点 $t=0,1,\dots,T$、連続モデルでは区間 $[0,T]$ のいつでも行える。$T$ はすべての経済活動の終端日である。情報の開示は増大するσ-加法族の族（フィルトレーション）$\mathbb F$ で表す。確率測度 $P$ の役割は「起こり得ない事象（零集合）」の指定だけであり、$P$ を同値な測度に替えても定義と結果は変わらない。

**A1 無摩擦市場**

取引費用はなく、空売りは無制限（保有量 $\phi^k$ は負でもよい）。債券（第0証券）の空売りは、無リスク金利での借入れにあたる。外して取引費用や空売り制限を入れると、以下の自己充足戦略の定式化は成り立たない（原論文は扱わない）。

**A2 価格過程**

各証券の価格は厳密に正で、情報に適合している。連続モデルでは、さらに右連続で左極限をもつ（RCLL）。

$$
S^k_t\gt 0,\qquad S^k_t\in\mathcal F_t\qquad(k=0,1,\dots,K,\ 0\le t\le T)\tag{1}
$$

> 厳密な正値性は、各種の技術的な煩雑さを避けるための仮定である（非負で足りる箇所が大半）。

**A3 債券（第0証券）**

$S^0_0=1$ と正規化する。連続モデルでは $S^0$ を連続かつ有限変動（VF）とし、「局所的に無リスク」と解釈する。絶対連続性（$S^0_t=\exp\int_0^t\rho_s\,ds$ と書けること）は仮定しない。外しても理論はほとんど簡単にならない、と原論文は述べる。

**A4 有限モデルの確率空間**

標本空間 $\Omega$ は有限、すべての $\omega$ について $P(\omega)\gt0$、$\mathcal F_0=\lbrace\emptyset,\Omega\rbrace$、$\mathcal F_T=2^{\Omega}$（全部分集合）。各 $\mathcal F_t$ は $\Omega$ の分割 $\mathcal P_t$ に対応する。

**A5 通常条件（連続モデル）**

$$
\lbrace A\subset\Omega:\ P(A)=0\rbrace\subset\mathcal F_0\tag{2}
$$

$$
\mathcal F_t=\bigcap_{s\gt t}\mathcal F_s\qquad(0\le t\lt T)\tag{3}
$$

> 一般性を失わず、$\mathcal F_0$ は $\Omega$ と零集合のみ、$\mathcal F_T=\mathcal F$ とする。

**A6 取引戦略は予測可能**

保有量 $\phi_t$ は、時点 $t-1$ までの情報で決める（有限モデル：$\phi_t\in\mathcal F_{t-1}$）。連続モデルでは予測可能σ-加法族（単純予測可能過程が生成する）に関して可測。外すと、価格のジャンプ時点で投資家がジャンプを先取りできてしまう。価格過程が連続なら、適合過程（正確にはオプショナル過程）まで許してよい、と原論文は述べる。

**A7 マルチンゲール測度の存在**

有限モデルでは、「無裁定」と同値であることが定理として示される（(13)）。連続モデルでは、同値性の一般論は複雑なので、(33) を**仮定**として置く（原論文は Harrison–Kreps に委ねる）。

**A8 参照測度**

$\mathbb P$ の中から参照測度 $P^{\ast}$ を一つ固定し、許容戦略を $P^{\ast}$ のもとでの条件で定義する（1.6）。

**A9 情報構造（完備性の議論）**

完備性の具体的議論では、$\mathbb F$ を価格が生成するフィルトレーション $\mathbb F^{S}$ とし、$S^0$ は確定的とする。すなわち投資家は過去と現在の価格情報だけで取引を決める。

| 記号・項目 | 意味 |
|---|---|
| $K+1$ | 証券の数（第0証券は債券） |
| $S^k_t$, $S_t$ | 証券 $k$ の価格, 価格ベクトル $(S^0_t,\dots,S^K_t)$ |
| $\Omega,\mathcal F,P$ | 標本空間、事象族、確率測度 |
| $\mathcal F_t,\ \mathbb F$ | 時点 $t$ の情報、フィルトレーション |
| $\mathcal P_t$ | $\mathcal F_t$ に対応する $\Omega$ の分割（有限モデル） |
| $T$ | 終端日（計画期間の終わり） |

### 1.1 有限モデル（離散時間・有限状態）：戦略・利得・自己充足（原論文 §2a）

**取引戦略と利得過程**

取引戦略は予測可能なベクトル過程 $\phi=\lbrace\phi_t;\,t=1,\dots,T\rbrace$（成分 $\phi^0,\dots,\phi^K$）で、$\phi^k_t$ は時点 $t-1$ と $t$ の間に保有する証券 $k$ の数量である。$\phi_t\Delta S_t$ は内積を表す。

$$
G_t(\phi)=\sum_{i=1}^{t}\underbrace{\phi_i}_{\text{保有量}}\,\underbrace{\Delta S_i}_{\text{価格変化}},\qquad \Delta S_i=S_i-S_{i-1},\quad G_0(\phi)=0\tag{4}
$$

> $G(\phi)$ は、保有を続けた投資家が時点 $t$ までに実現する累積利得（キャピタルゲイン）。

**自己充足戦略**

$$
\underbrace{\phi_tS_t}_{\text{調整前の価値}}=\underbrace{\phi_{t+1}S_t}_{\text{調整後の価値}},\qquad t=1,\dots,T-1\tag{5}
$$

(4) を使うと、(5) は次と同値である。

$$
\phi_tS_t=\underbrace{\phi_1S_0}_{\text{初期価値}}+\underbrace{G_t(\phi)}_{\text{累積利得}},\qquad t=1,\dots,T\tag{6}
$$

> 資金の追加も引出しもなく、ポートフォリオ価値の変化はすべて利得による、ということ。

**価値過程と許容戦略**

$$
V_t(\phi)=\begin{cases}\phi_tS_t,&t=1,\dots,T\\[2pt]\phi_1S_0,&t=0\end{cases}\tag{7}
$$

自己充足かつ $V(\phi)\ge0$（任意の時点で債務超過にならない）の戦略を**許容戦略**とよび、その全体を $\Phi$ とする。$\Phi$ のもとでは空売りの一部が実質的に禁止される。

**偶発請求権と達成可能性**

偶発請求権は非負の確率変数 $X$（状態 $\omega$ のとき時点 $T$ に $X(\omega)$ 支払う契約）で、その全体 $\mathcal X$ は凸錐である。ある $\phi\in\Phi$ で $V_T(\phi)=X$ となるとき、$X$ は**達成可能**、$\phi$ は $X$ を**生成する**といい、$\pi=V_0(\phi)$ をその（時点0の）価格とよぶ。

| 記号・項目 | 意味 |
|---|---|
| $\phi^k_t$ | 時点 $t-1$ と $t$ の間の証券 $k$ の保有量（負も可） |
| $G_t(\phi)$ | 累積利得 |
| $V_t(\phi)$ | ポートフォリオの市場価値 |
| $\Phi$ | 許容戦略（自己充足かつ $V\ge0$）の集合 |
| $\mathcal X$ | 偶発請求権（非負確率変数）の全体 |
| $\pi$ | 達成可能請求権に対応する時点0の価格 |

### 1.2 有限モデル：裁定と価格体系（原論文 §2b）

**裁定機会**

$$
\exists\,\phi\in\Phi:\qquad V_0(\phi)=0\quad\text{かつ}\quad E\big(V_T(\phi)\big)\gt0\tag{8}
$$

> 元手も追加資金もなく、損失の恐れなしに利益が出る戦略。裁定機会がある市場では経済均衡が存在し得ない。

**価格体系**

写像 $\pi:\mathcal X\to[0,\infty)$ が次を満たすとき価格体系とよぶ。

$$
\begin{aligned}
\pi(X)=0&\iff X=0\\
\pi(aX+bX')&=a\,\pi(X)+b\,\pi(X')\qquad(a,b\ge0,\ X,X'\in\mathcal X)
\end{aligned}\tag{9}
$$

市場モデルと**整合的**であるとは、次が成り立つことである。整合的な価格体系の全体を $\Pi$ とする。

$$
\pi\big(V_T(\phi)\big)=V_0(\phi)\qquad\forall\,\phi\in\Phi\tag{10}
$$

**マルチンゲール測度**

$$
\mathbb P=\lbrace Q:\ Q\sim P,\ \ \beta S\ \text{は}\ Q\text{ のもとでベクトル・マルチンゲール}\rbrace,\qquad\beta_t=\frac1{S^0_t}\tag{11}
$$

**価格体系と測度の一対一対応**

$$
\pi(X)=\underbrace{E_Q(\beta_TX)}_{\text{割引期待値}},\qquad Q(A)=\pi\big(S^0_T\,\mathbf 1_A\big),\quad A\in\mathcal F\tag{12}
$$

> $\Pi$ の元と $\mathbb P$ の元が (12) で一対一に対応する。

**無裁定の特徴づけ**

$$
\text{裁定機会なし}\iff\mathbb P\neq\emptyset\iff\Pi\neq\emptyset\tag{13}
$$

これら三条件が成り立つとき、モデルは**viable**であるという。

**価格の一意性**

$$
\pi=E_Q(\beta_TX)\qquad\text{（達成可能な }X\text{ と任意の }Q\in\mathbb P\text{）}\tag{14}
$$

> viable なら、達成可能請求権の価格は一意に決まる。$\mathbb P$ の元を一つ知れば、達成可能な全請求権の価格が（原理的に）計算できる。

| 記号・項目 | 意味 |
|---|---|
| $\pi(\cdot)$ | 価格体系（請求権 → 価格） |
| $\Pi$ | 整合的な価格体系の集合 |
| $\mathbb P$ | マルチンゲール測度の集合 |
| $Q$ | $\mathbb P$ の元、$E_Q$ はその期待値 |
| $\beta_t=1/S^0_t$ | 割引過程 |
| $\mathbf 1_A$ | 事象 $A$ の指示関数 |

### 1.3 有限モデル：達成可能請求権と完備性（原論文 §2c–2e）

**達成可能請求権の価値過程**

$X$ が達成可能なら、$X$ を生成する任意の $\phi\in\Phi$ と任意の $Q\in\mathbb P$ について、

$$
\underbrace{\beta_tV_t(\phi)}_{\text{割引価値}}=\underbrace{E_Q\big(\beta_TX\mid\mathcal F_t\big)}_{\text{割引請求権の条件付期待}},\qquad t=0,1,\dots,T\tag{15}
$$

$$
\Delta(\beta V)_t=\sum_{k=1}^{K}\underbrace{\phi^k_t}_{\text{株の保有量}}\,\Delta(\beta S^k)_t,\qquad t=1,\dots,T\tag{16}
$$

> (16) に債券の保有量 $\phi^0$ は現れない。逆に、$X$ が達成可能であることと、(16) を満たす予測可能な $\phi^1,\dots,\phi^K$ が存在することは同値である（連続版は (47)）。$V$ は $X$ が達成可能かどうかを知る前に (15) で計算できる。

**非冗長性と分割指数**

ある自明でないベクトル $\alpha$、$t\lt T$、$A\in\mathcal P_t$ について $P(\alpha S_{t+1}=0\mid A)=1$ となるとき、価格過程に**冗長性**があるという。そうでなければ**非冗長**である。$A\in\mathcal P_t$ に含まれる $\mathcal P_{t+1}$ の細胞の個数 $K_t(A)$ を**分割指数**とよぶ。非冗長かつ viable なら常に $K_t(A)\ge K+1$ である。

**完備性**

すべての偶発請求権が達成可能なとき、モデルは**完備**という。非冗長ならば、

$$
\text{完備}\iff K_t(A)=K+1\qquad\forall\,A\in\mathcal P_t,\ \ t=0,1,\dots,T-1\tag{17}
$$

さらに有限モデルでは次も成り立つ。

$$
\text{完備}\iff\mathbb P\text{ が一点集合（ただ一つのマルチンゲール測度）}\tag{18}
$$

> 完備性は「次元」の問題である。各時点・各状況 $A$ で、次の瞬間に起こり得る場合の数 $K_t(A)$ を張るのに十分な一次独立な証券（$K+1$ 個）が必要になる。

**ランダムウォーク・モデル（例）**

$$
S^0_t=(1+r)^t,\qquad S^k_0=1,\qquad S^k_t=\prod_{s=1}^{t}\big(1+a^k\chi^k_s\big)\quad(k=1,\dots,K)\tag{19}
$$

ここで $\lbrace\chi^k_t\rbrace$ は独立な、$\pm1$ を等確率でとる IID 系列、定数は $0\lt r\lt a^k\lt1$。$\mathbb F$ を価格過程自身が生成するフィルトレーションとすると $K_t(A)=2^{K}$ で、(17) により、このモデルは $K=1$ のときに限り完備である。

| 記号・項目 | 意味 |
|---|---|
| $K_t(A)$ | 分割指数（$A\in\mathcal P_t$ に含まれる $\mathcal P_{t+1}$ の細胞数） |
| $\alpha$ | 冗長性を定義する非自明ベクトル |
| $\chi^k_t$ | $\pm1$ をとる IID 確率変数 |
| $r$ | 1期間あたりの無リスク利子率 |
| $a^k$ | 株 $k$ の1期間の変動幅 |

### 1.4 連続モデル：設定とマルチンゲール理論の道具（原論文 §3, §3a, §3b）

**債券と割引過程**

$$
\alpha_t=\log S^0_t,\qquad \beta_t=\frac1{S^0_t}=\exp(-\alpha_t),\qquad0\le t\le T\tag{20}
$$

$\alpha$ を債券の**収益過程**、$\beta$ を**固有の割引過程**とよぶ。

**局所マルチンゲール**

適合 RCLL 過程 $M$ が**局所マルチンゲール**であるとは、停止時刻の増大列 $\lbrace\varrho_n\rbrace$ で次を満たすものがあることをいう（$\lbrace\varrho_n\rbrace$ は $M$ を**簡約する**）。

$$
\begin{aligned}
&P\lbrace\varrho_n=T\rbrace\to1\quad(n\to\infty)\\
&\lbrace M(t\wedge\varrho_n);\ 0\le t\le T\rbrace\ \text{はすべての }n\text{ でマルチンゲール}
\end{aligned}\tag{21}
$$

$$
M\ge0\ \text{が局所マルチンゲール}\ \Rightarrow\ \text{優マルチンゲール};\qquad M\ \text{がマルチンゲール}\iff E(M_T)=M_0\tag{22}
$$

> 優マルチンゲールとは、可積分な適合 RCLL 過程 $X$ で $E(X_t\mid\mathcal F_s)\le X_s$（$s\lt t$）を満たすもの。マルチンゲールは $X$ と $-X$ がともに優マルチンゲールのもの。(22) の第1式は Fatou の補題による。

**セミマルチンゲールと確率積分**

$$
L=M+B\qquad(M:\text{局所マルチンゲール},\ B:\text{有限変動（VF）過程})\tag{23}
$$

単純予測可能過程 $H$ は、$0=t_0\lt t_1\lt\dots\lt t_n=T$ と有界な $\xi_i\in\mathcal F_{t_i}$ で

$$
H_t=\xi_i\qquad(t_i\lt t\le t_{i+1},\ \ i=0,1,\dots,n-1)\tag{24}
$$

と書ける。このとき確率積分 $Z=\int H\,dL$ は、$Z_0=0$、$t_i\lt t\le t_{i+1}$ で

$$
Z_t=\sum_{j=0}^{i-1}\xi_j\big(L_{t_{j+1}}-L_{t_j}\big)+\xi_i\big(L_t-L_{t_i}\big)\tag{25}
$$

と定義する。一般の局所有界かつ予測可能な $H$ には、これを連続的に拡張する。ここで**局所有界**とは、

$$
\exists\,\lbrace C_n\rbrace,\ \lbrace\varrho_n\rbrace\ \text{((21) の第1式を満たす)}:\ \ \lvert H_t\rvert\le C_n\quad(0\le t\le\varrho_n)\tag{26}
$$

である。$Z=\int H\,dL$ はそれ自身セミマルチンゲールで、ジャンプは次で与えられる。

$$
\Delta Z_t=H_t\,\Delta L_t,\qquad \Delta Z_t=Z_t-Z_{t-}\tag{27}
$$

> $H$ が局所有界・予測可能で $M$ が局所マルチンゲールなら $\int H\,dM$ も局所マルチンゲール（原論文 (3.15)）。ただし $M$ がマルチンゲールでも $\int H\,dM$ がマルチンゲールとは限らない（ブラウン運動の場合にも反例がある）。この性質は**予測可能な**積分者に対してのみ成り立つ。

**相互変動**

$$
[L,L']_t=L_tL'_t-\int_0^{t}L_{s-}\,dL'_s-\int_0^{t}L'_{s-}\,dL_s\tag{28}
$$

同値な定義（確率収束の意味、$t^n_i=it/2^{n}$）は次である。

$$
[L,L']_t=L_0L'_0+\lim_{n\to\infty}\sum_{i}\big(L(t^n_{i+1})-L(t^n_i)\big)\big(L'(t^n_{i+1})-L'(t^n_i)\big)\tag{29}
$$

$[L,L]$ を $L$ の2次変動とよぶ。$[L,L']$ は常に VF で、一方が VF なら

$$
[L,L']_t=\sum_{s\le t}\Delta L_s\,\Delta L'_s\tag{30}
$$

となる。とくに一方が連続かつ VF なら $[L,L']=0$。また、2つのセミマルチンゲールの積はセミマルチンゲールである。

**割引価格過程とマルチンゲール測度**

$$
Z^k_t=\beta_tS^k_t\qquad(k=1,\dots,K)\tag{31}
$$

$$
\mathbb P=\lbrace Q:\ Q\sim P,\ \ Z\ \text{は}\ Q\text{ のもとでベクトル・マルチンゲール}\rbrace\tag{32}
$$

$$
\mathbb P\neq\emptyset\qquad\text{（仮定）}\tag{33}
$$

> $\beta S^0=1$ はどの同値測度のもとでもマルチンゲールなので、(32) は「$\beta S$ がマルチンゲール」と同じ。この仮定から $S^0$ は VF（ゆえにセミマルチンゲール）、$S^k=Z^k/\beta$ は $Q$ のもとで、よって $P$ のもとでもセミマルチンゲール、すなわち $S$ はベクトル・セミマルチンゲールである。

| 記号・項目 | 意味 |
|---|---|
| $\alpha_t$ | 債券の収益過程 $\log S^0_t$ |
| $\varrho_n$ | 局所マルチンゲールを簡約する停止時刻列 |
| $L,L'$ | 一般のセミマルチンゲール |
| $M,B$ | $L$ の局所マルチンゲール部分、VF 部分 |
| $H$ | 予測可能（局所有界）な被積分過程 |
| $[L,L']$ | 相互変動（joint variation） |
| $Z^k_t$ | 割引価格過程 $\beta_tS^k_t$（$k\ge1$） |
| $\mathbb P$ | マルチンゲール測度の集合 |

### 1.5 連続モデル：取引戦略と自己充足（原論文 §3b）

**暫定的な取引戦略**

取引戦略を、局所有界かつ予測可能な $K+1$ 次元過程 $\phi=\lbrace\phi_t\rbrace$ と暫定的に定義する。

$$
V_t(\phi)=\phi_tS_t=\sum_{k=0}^{K}\underbrace{\phi^k_t}_{\text{保有量}}\underbrace{S^k_t}_{\text{価格}}\tag{34}
$$

$$
G_t(\phi)=\int_0^{t}\phi_u\,dS_u=\sum_{k=0}^{K}\int_0^{t}\phi^k_u\,dS^k_u\tag{35}
$$

**自己充足**

$$
V_t(\phi)=\underbrace{V_0(\phi)}_{\text{初期価値}}+\underbrace{G_t(\phi)}_{\text{確率積分としての利得}},\qquad0\le t\le T\tag{36}
$$

> 有限モデルの (6) の連続版。単純予測可能戦略に対しては有限モデルの定義に帰着し、一般の戦略はそれらの極限で近似される、というのが定義の根拠。

自己充足かつ $V(\phi)\ge0$ の戦略全体を（暫定的に）$\Phi$ とする。

**割引量での再定式化**

$$
G^{\ast}(\phi)=\int\phi\,dZ=\sum_{k=1}^{K}\int\phi^k\,dZ^k,\qquad V^{\ast}(\phi)=\beta V(\phi)=\phi^0+\sum_{k=1}^{K}\phi^kZ^k\tag{37}
$$

$$
\phi\ \text{が自己充足}\iff V^{\ast}(\phi)=V^{\ast}_0(\phi)+G^{\ast}(\phi);\qquad V(\phi)\ge0\iff V^{\ast}(\phi)\ge0\tag{38}
$$

> $G^{\ast}$ に債券成分 $\phi^0$ は現れない。したがって、自己充足戦略は、初期値 $V^{\ast}_0(\phi)=v$ と株式成分 $\phi^1,\dots,\phi^K$ で完全に決まり、債券成分は次で一意に定まる。

$$
\phi^0_t=v+\sum_{k=1}^{K}\int_0^{t}\phi^k_s\,dZ^k_s-\sum_{k=1}^{K}\phi^k_tZ^k_t,\qquad0\le t\le T\tag{39}
$$

**系：割引価値は正の局所マルチンゲール**

$$
\phi\in\Phi\ \Rightarrow\ V^{\ast}(\phi)\ \text{は各 }Q\in\mathbb P\text{ のもとで正の局所マルチンゲールかつ優マルチンゲール}\tag{40}
$$

> (40) により、$V_0=0$ から出発する $\Phi$ の戦略は $V_T\gt0$ にできない（この意味の裁定機会はない）。他方、$V_0=1$ から $V_T=0$ に至る「自殺戦略」が存在する（1.12 (a)）。そのため、暫定の $\Phi$ では達成可能請求権の価格が一意にならない。

| 記号・項目 | 意味 |
|---|---|
| $G^{\ast}(\phi)$ | 割引利得過程 $\int\phi\,dZ$ |
| $V^{\ast}(\phi)$ | 割引価値過程 $\beta V(\phi)$ |
| $v$ | 初期の割引価値 $V^{\ast}_0(\phi)$ |

### 1.6 連続モデル：最終定式化（原論文 §3c）

**参照測度と被積分過程の空間**

$P^{\ast}\in\mathbb P$ を一つ選んで固定し、期待値を $E^{\ast}$ と書く。以後、マルチンゲールと局所マルチンゲールは $P^{\ast}$ に関するものを指す。$\mathcal L(Z)$ を、次の増加過程が $P^{\ast}$ のもとで局所可積分となるような予測可能過程 $H=(H^1,\dots,H^K)$ の全体とする。

$$
\Big(\int_0^{t}(H^k_s)^2\,d[Z^k,Z^k]_s\Big)^{1/2},\quad0\le t\le T,\qquad k=1,\dots,K\tag{41}
$$

> $\mathcal L(Z)$ は局所有界かつ予測可能な $H$ をすべて含み、$\int H\,dZ$ はこの被積分過程でも局所マルチンゲールである。局所有界な戦略だけでは、完備性に必要な閉包性が欠ける（Black–Scholes でも、有界な請求権をすべて達成するには局所有界でない戦略が要る）。

**許容戦略（最終版）**

**取引戦略**を、予測可能な $\phi=(\phi^0,\phi^1,\dots,\phi^K)$ で $(\phi^1,\dots,\phi^K)\in\mathcal L(Z)$ を満たすもの、と拡張する。$\phi$ が**許容的**とは、$V^{\ast}(\phi)\ge0$、$V^{\ast}(\phi)=V^{\ast}_0(\phi)+G^{\ast}(\phi)$、かつ

$$
V^{\ast}(\phi)\ \text{は }P^{\ast}\text{ のもとでマルチンゲール}\tag{42}
$$

を満たすことである。許容戦略の全体を $\Phi^{\ast}$ とする。(22) により、(42) は次と同値である。

$$
E^{\ast}\big[V^{\ast}_T(\phi)\big]=V^{\ast}_0(\phi)\tag{43}
$$

**請求権・達成可能性・価格**

偶発請求権は $\mathcal F_T=\mathcal F$ 可測な非負確率変数 $X$。ある $\phi\in\Phi^{\ast}$ が

$$
V^{\ast}_T(\phi)=\beta_TX\tag{44}
$$

を満たすとき、$X$ は達成可能、$\phi$ は $X$ を生成し、$\pi=V^{\ast}_0(\phi)$ が $X$ に対応する価格である。

**一意の価格**

$$
\pi=\underbrace{E^{\ast}(\beta_TX)}_{\text{割引期待値}}\tag{45}
$$

> (43) から直ちに出る。$E^{\ast}(\beta_TX)\lt\infty$ のとき $X$ は**可積分**、$\beta_TX$ が有界のとき**有界**という。達成可能な請求権は可積分に限られる。

**達成可能性の検定**

$X$ を可積分な請求権とし、$V^{\ast}$ を次の RCLL 修正とする。

$$
V^{\ast}_t=E^{\ast}\big(\beta_TX\mid\mathcal F_t\big),\qquad0\le t\le T\tag{46}
$$

$$
X\ \text{が達成可能}\iff V^{\ast}=V^{\ast}_0+\int H\,dZ\ \ \text{となる}\ H\in\mathcal L(Z)\text{ が存在}\tag{47}
$$

このとき $X$ を生成する任意の $\phi\in\Phi^{\ast}$ について $V^{\ast}(\phi)=V^{\ast}$ である。

> 候補の価値過程 $V^{\ast}$ は、$X$ が達成可能かどうかを知る前に (46) で計算できる。達成可能性の問題は (47) の「表現問題」に帰着する。(47) の十分性の証明で作る戦略は、定義から (42) を自動的に満たす。

| 記号・項目 | 意味 |
|---|---|
| $P^{\ast}$, $E^{\ast}$ | 参照測度（$\mathbb P$ の元）とその期待値 |
| $\mathcal L(Z)$ | $Z$ に関して積分できる予測可能過程の空間 |
| $\Phi^{\ast}$ | 許容戦略の集合（最終版） |
| $X$ | 偶発請求権（時点 $T$ の支払い） |
| $\pi$ | $X$ の価格 |

### 1.7 連続モデル：完備性とマルチンゲール表現（原論文 §3d）

**定義**

すべての可積分な請求権が達成可能なとき、モデルは**完備**という。満期前に支払われる請求権 $(t,X)$、$X\in\mathcal F_t$ を考えても、完備性の定義は変わらない（$X'=\beta_tXS^0_T$ を時点 $T$ の請求権とみなせばよい）。

$\mathcal M$ を（$P^{\ast}$ に関する）すべてのマルチンゲールの空間とし、

$$
\mathcal M(Z)=\Big\lbrace M\in\mathcal M:\ M=M_0+\int H\,dZ\ \ \text{となる}\ H\in\mathcal L(Z)\text{ が存在}\Big\rbrace\tag{48}
$$

とおく。$\mathcal M=\mathcal M(Z)$ のとき、$Z$ は $(\Omega,\mathbb F,P^{\ast})$ に関して**マルチンゲール表現性**をもつ（$Z$ が $\mathcal M$ の基底をなし、確率積分が一次結合の役割を果たす）。

**中心定理**

$$
\text{モデルが完備}\iff\mathcal M=\mathcal M(Z)\tag{49}
$$

> (47) と「任意のマルチンゲールは2つの正のマルチンゲールの差」から従う。

**系**

$$
\mathbb P=\lbrace P^{\ast}\rbrace\ \text{（一点集合）}\ \Rightarrow\ \text{完備}\tag{50}
$$

> 一般には、$P^{\ast}$ が（ある集合の）端点であることと完備性が同値になる（Jacod）が、原論文は精密な述べ方に立ち入らない。連続市場の完備性について、(17) のように具体的な特徴づけは未知である。

**完備と分かっている例**

| マルチンゲール $Z$ | 完備性 |
|---|---|
| 1次元ブラウン運動 | 完備（Black–Scholes モデルの完備性を含意） |
| 多次元ブラウン運動 | 完備（1.9）。離散時間の自然な類似は完備でない（(19) で $K\ge2$） |
| ポアソン・マルチンゲール $qN_t-q\lambda t$ | 完備（$q$ は実定数、$N$ は強度 $\lambda$ のポアソン過程） |
| ウィーナーとポアソンのマルチンゲール | 定常独立増分をもつ完備な1次元マルチンゲールはこの二つに限ると知られている（原論文は文献を挙げない） |

$\mathbb F=\mathbb F^S$ かつ $S^0$ が確定的のとき $\mathbb F^S=\mathbb F^Z$ となり、完備性は $Z$ のみの性質になる。

### 1.8 収益過程とセミマルチンゲール指数（原論文 §4）

**セミマルチンゲール指数**

セミマルチンゲール $L$ と $U_0\in\mathcal F_0$ に対し、次の方程式は（セミマルチンゲールの）解をただ一つもつ。

$$
U_t=U_0+\int_0^{t}U_s\,dL_s\tag{51}
$$

$$
U_t=U_0\,\mathcal E_t(L)\tag{52}
$$

$$
\mathcal E_t(L)=\exp\Big(L_t-L_0-\tfrac12[L,L]_t\Big)\prod_{s\le t}(1+\Delta L_s)\exp\Big(-\Delta L_s+\tfrac12(\Delta L_s)^2\Big)\tag{53}
$$

$\mathcal E(L)$ を $L$ の**セミマルチンゲール指数**（$\mathcal E_0(L)=1$）とよぶ。

$$
\mathcal E(L)\,\mathcal E(L')=\mathcal E\big(L+L'+[L,L']\big)\tag{54}
$$

$$
\mathcal E(L)\,\mathcal E(L')=\mathcal E(L+L')\qquad(L'\ \text{が連続かつ VF のとき})\tag{55}
$$

**正値性**

$\mathscr R$ を $1+\Delta L\ge0$ を満たすセミマルチンゲール全体、$\mathscr R^{+}$ を $1+\Delta L\gt0$ を満たすもの全体とする。

$$
\mathcal E(L)\ge0\iff L\in\mathscr R;\qquad\mathcal E(L)\gt0\iff L\in\mathscr R^{+}\tag{56}
$$

**収益過程**

価格過程 $S^k$ と収益過程 $R^k$ は (51) の関係にあり（$S^k$ が $U$、$R^k$ が $L$ の役）、次で結ばれる。

$$
R^k_t=\int_0^{t}\frac{1}{S^k_{u-}}\,dS^k_u\quad(k=0,1,\dots,K),\qquad R^0_t=\log S^0_t=\alpha_t\tag{57}
$$

$$
\text{(57) の第2式は連続 VF の債券についての簡約形}\tag{58}
$$

$$
S^k=S^k_0\,\mathcal E(R^k),\qquad R^k\in\mathscr R^{+}\quad(k=0,\dots,K)\tag{59}
$$

> $Z^k_-$ は厳密に正で左連続だから $1/S^k_-$ は局所有界で、(57) の確率積分は well-defined である。

**割引収益過程**

$$
Y^k_t=R^k_t-\alpha_t\quad(k=1,\dots,K),\qquad Z^k=Z^k_0\,\mathcal E(Y^k)\tag{60}
$$

> (60) の第2式は (55) による（$\beta=\mathcal E(-\alpha)$、$\alpha$ は連続 VF なので $[R^k,-\alpha]=0$）。$Y^k$ は $Z^k$ に対し、$R^k$ が $S^k$ に対して果たすのと同じ役割をもつ。

| 記号・項目 | 意味 |
|---|---|
| $\mathcal E(L)$ | $L$ のセミマルチンゲール指数 |
| $\mathscr R,\ \mathscr R^{+}$ | $1+\Delta L\ge0$、$\gt0$ を満たす $L$ の族 |
| $R^k$ | 証券 $k$ の収益過程 |
| $Y^k$ | 証券 $k$ の割引収益過程 $R^k-\alpha$ |
| $U$ | 方程式 (51) の解 |

### 1.9 多次元拡散モデル（Black–Scholes の拡張）（原論文 §5, §5a, §5b）

**設定**

債券と、相関する $K$ 個の株式（それぞれ幾何ブラウン運動）。債券価格は $S^0_t=\exp(rt)$、$r$ は実定数。$\Lambda=(\lambda_{ij})$ を非特異な $K\times K$ 行列、$\mu=(\mu^1,\dots,\mu^K)$ を実定数ベクトル、$W^1,\dots,W^K$ を独立な標準ブラウン運動（$W_0=0$）とする。

$$
A=\Lambda\Lambda',\qquad a_{ij}=\sum_{k=1}^{K}\lambda_{ik}\lambda_{jk}\qquad(i,j=1,\dots,K)\tag{62}
$$

**割引収益過程と割引価格過程**

$$
Y_t=\underbrace{\Lambda W_t}_{\text{拡散項}}+\underbrace{\mu\,t}_{\text{ドリフト}},\qquad0\le t\le T\tag{63}
$$

$$
Z^k_t=Z^k_0\exp\Big(Y^k_t-\tfrac12a_{kk}t\Big)\qquad(Z^k_0\gt0,\ k=1,\dots,K)\tag{64}
$$

> $Y$ は共分散行列 $A$、ドリフト $\mu$ のベクトル・ブラウン運動。$Z^k=Z^k_0\,\mathcal E(Y^k)$ である。

**微分表現と変動**

$$
dZ^k_t=Z^k_t\,dY^k_t\tag{65}
$$

$$
d[Z^i,Z^j]_t=Z^i_tZ^j_t\,d[Y^i,Y^j]_t=Z^i_tZ^j_t\,a_{ij}\,dt\tag{66}
$$

**価格過程と情報構造**

$$
S^k_t=S^0_tZ^k_t=e^{rt}Z^k_t\qquad(0\le t\le T,\ k=1,\dots,K)\tag{67}
$$

> $S^1,\dots,S^K$ は相関する幾何ブラウン運動で、収益過程は $R^k_t=Y^k_t+rt$（分散 $a_{kk}$、ドリフト $\mu^k+r$ のブラウン運動）。情報は $\mathbb F=\mathbb F^{W}=\mathbb F^{Y}=\mathbb F^{Z}=\mathbb F^{S}$。

**便利な関数表現**

$$
h^k(x,y,t)=x^k\exp\Big(y^k-\tfrac12a_{kk}t\Big)\quad(x,y\in\mathbb R^K,\ t\ge0),\qquad Z_t=h(Z_0,Y_t,t)\tag{68}
$$

$$
Z_T=h\big(Z_t,\ Y_T-Y_t,\ T-t\big)\qquad(0\le t\le T)\tag{69}
$$

**参照測度**

$\Lambda$ が非特異なので、次を満たす $K$ 次元ベクトル $\gamma$ がただ一つ存在する。

$$
\Lambda\gamma=\mu\tag{70}
$$

$$
\xi_t=W_t+\gamma\,t,\qquad Y_t=\Lambda\xi_t\qquad(0\le t\le T)\tag{71}
$$

$$
D_t=\exp\Big(-\sum_{k=1}^{K}\gamma^kW^k_t-\tfrac12\sum_{k=1}^{K}(\gamma^k)^2t\Big)\ \ (P\text{ のもとでマルチンゲール}),\qquad D_0=1\tag{72}
$$

$$
dP^{\ast}=D_T\,dP\tag{73}
$$

$$
\xi^1,\dots,\xi^K\ \text{は}\ P^{\ast}\text{ のもとで独立な標準ブラウン運動}\tag{74}
$$

> (72) は厳密に正のマルチンゲールなので $P^{\ast}\sim P$。(74) は Girsanov の定理の特別な場合（尤度比公式）。(71) から $Y$ は $P^{\ast}$ のもとでドリフトなし・共分散 $A$ のブラウン運動で、(64) より $Z$ は $P^{\ast}$ のもとでベクトル・マルチンゲールである。この $P^{\ast}$ を参照測度に選ぶ。

**完備性**

$\mathbb F=\mathbb F^{W}=\mathbb F^{\xi}$ である。$\mathbb F$ 上の任意のマルチンゲール $M$ は連続である。$E^{\ast}(\lvert M_T\rvert^2)\lt\infty$ なら、

$$
M_t=M_0+\int_0^{t}\theta_s\,d\xi_s,\qquad \theta=(\theta^1,\dots,\theta^K)\ \text{予測可能}\tag{75}
$$

$$
E^{\ast}\Big(\int_0^{T}\lVert\theta_t\rVert^2\,dt\Big)\lt\infty\tag{76}
$$

一般の $M\in\mathcal M$ は局所2乗可積分なので、(75) が局所的な意味で成り立つ。

$$
P^{\ast}\Big(\int_0^{T}\lVert\theta_t\rVert^2\,dt\lt\infty\Big)=1\tag{77}
$$

(71) と $\Lambda$ の非特異性により、これは次と同値である。

$$
M_t=M_0+\int_0^{t}\eta_s\,dY_s,\qquad\eta=(\eta^1,\dots,\eta^K)\ \text{予測可能},\quad P^{\ast}\Big(\int_0^{T}\lVert\eta_t\rVert^2\,dt\lt\infty\Big)=1\tag{78}
$$

$$
H^k_t=\frac{\eta^k_t}{Z^k_t}\quad(0\le t\le T,\ k=1,\dots,K)\ \Longrightarrow\ \ M_t=M_0+\int_0^{t}H_s\,dZ_s\tag{79}
$$

$$
\Big(\int_0^{t}(H^k_s)^2\,d[Z^k,Z^k]_s\Big)^{1/2}=\Big(\int_0^{t}(\eta^k_s)^2a_{kk}\,ds\Big)^{1/2}\tag{80}
$$

> (80) の過程は連続なので局所可積分、ゆえに $H\in\mathcal L(Z)$。したがって $\mathcal M=\mathcal M(Z)$ で、(49) によりこのモデルは**完備**である。

**拡張についての注記**

拡散係数 $a_{ij}$ は過去と現在の価格に（ほぼ任意に）依存してよく、ドリフト $\mu^k$ はそれ以上に依存してもよい。完備性を保つには、無リスク金利は確定的でなければならない（時間変化はよい）ようである。拡散係数が過去と現在の価格以外に依存すると完備性は壊れ得る（1.12 (c)）。

| 記号・項目 | 意味 |
|---|---|
| $\Lambda,\ A=\Lambda\Lambda'$ | 拡散行列、共分散行列 |
| $\mu$ | 割引収益のドリフトベクトル |
| $W,\ \xi$ | $P$ のもとでの標準ブラウン運動、$P^{\ast}$ のもとでの標準ブラウン運動 |
| $\gamma$ | $\Lambda\gamma=\mu$ を満たすベクトル |
| $D_t$ | 参照測度の密度過程 |
| $h(x,y,t)$ | $Z$ を $(Z_0,Y_t,t)$ で表す関数 |
| $\theta,\eta,H$ | 表現に現れる被積分過程（$\xi$, $Y$, $Z$ に関する） |

### 1.10 明示的な評価式と複製戦略（原論文 §5c）

**対象とする請求権**

$$
X=e^{rT}\,\psi(Z_T)\qquad\text{（}\psi:\mathbb R^K_{+}\to\mathbb R_{+}\text{）}\tag{82}
$$

> $Z^k_T=e^{-rT}S^k_T$ なので、$X$ は終端の株価のみの関数。ヨーロッパ型コール（株 $k=1$、行使価格 $c$、満期 $T$）は $\psi(x)=\big[x^1-c\,e^{-rT}\big]^{+}$ に対応する。$X$ は可積分、すなわち $E^{\ast}[\psi(Z_T)]\lt\infty$ とする。完備性 (1.9) により、$X$ は価格 $\pi$ で達成可能である。

**価値過程**

$$
V^{\ast}_t=E^{\ast}\big(\beta_TX\mid\mathcal F_t\big)=E^{\ast}\big[\psi(Z_T)\mid\mathcal F_t\big],\qquad0\le t\le T\tag{83}
$$

**正規密度と条件付き分布**

$$
\Gamma_t(z)=(2\pi t)^{-K/2}\exp\Big(-\tfrac12\lVert z\rVert^2\Big)\qquad(t\gt0,\ z\in\mathbb R^K)\tag{84}
$$

$$
P^{\ast}\lbrace(\xi_T-\xi_t)\in dz\mid\mathcal F_t\rbrace=\Gamma_{T-t}(z)\,dz\tag{85}
$$

**評価関数**

(69)、(71)、(83)、(85) を合わせて、次を得る。

$$
f^{\ast}(x,t)=\int_{\mathbb R^K}\psi\big(h(x,\Lambda z,t)\big)\,\Gamma_t(z)\,dz\qquad(x\in\mathbb R^K_{+},\ t\ge0)\tag{86}
$$

$$
\begin{aligned}
V^{\ast}_t&=\underbrace{f^{\ast}(Z_t,\,T-t)}_{\text{時点}t\text{の価値}}\\
\pi&=V^{\ast}_0=f^{\ast}(Z_0,\,T)
\end{aligned}\tag{87}
$$

> (86)–(87) は、ペイオフ関数 $\psi$ について追加情報なしに書ける最も明示的な評価式である。

**偏微分方程式と複製戦略**

$$
\mathcal A=\frac12\sum_{i=1}^{K}\sum_{j=1}^{K}a_{ij}\,x^ix^j\,\frac{\partial^2}{\partial x^i\partial x^j},\qquad\frac{\partial}{\partial u}f^{\ast}=\mathcal A f^{\ast}\tag{88}
$$

ここで $\partial/\partial u$ は $f^{\ast}$ の第2引数（時間）についての偏微分である。

$$
\phi^k_t=\underbrace{\frac{\partial}{\partial x^k}f^{\ast}(Z_t,\,T-t)}_{\text{デルタ}}\quad(0\le t\le T,\ k=1,\dots,K),\qquad V^{\ast}_t=V^{\ast}_0+\sum_{k=1}^{K}\int_0^{t}\phi^k_s\,dZ^k_s\tag{89}
$$

$$
\phi^0_t=V^{\ast}_t-\sum_{k=1}^{K}\phi^k_tZ^k_t=f^{\ast}(Z_t,\,T-t)-\sum_{k=1}^{K}\phi^k_tZ^k_t\tag{90}
$$

> $\phi=(\phi^0,\phi^1,\dots,\phi^K)$ が $X$ を生成する戦略である。(88) は、$V^{\ast}$ が (89) の形に表現できるための必要十分条件として、一般命題 (47) から論理的に出てくる。Black–Scholes が同種の偏微分方程式を直接解いて公式を得たのとは対照的である。

| 記号・項目 | 意味 |
|---|---|
| $\psi$ | ペイオフ関数（割引後） |
| $\Gamma_t(z)$ | $K$ 次元正規密度 |
| $f^{\ast}(x,t)$ | 評価関数 |
| $\mathcal A$ | 線形偏微分作用素 |
| $\phi^k_t$ | 株 $k$ の複製保有量（$k\ge1$）、$\phi^0$ は債券保有量 |

### 1.11 特殊ケース：Black–Scholes モデル（原論文 §1a, §1b）

**価格過程**（$K=1$、$W$ は標準ブラウン運動、$r,\mu,\sigma$ は実定数で $\sigma\gt0$、$S^0_0,S^1_0$ は正の定数）

$$
S^0_t=S^0_0\,e^{rt},\qquad S^1_t=S^1_0\exp\Big(\sigma W_t+\big(\mu-\tfrac12\sigma^2\big)t\Big)\tag{91}
$$

$$
dS^0_t=r\,S^0_t\,dt,\qquad dS^1_t=\sigma S^1_t\,dW_t+\mu S^1_t\,dt\tag{92}
$$

**コール・オプションの価値**（満期 $T$、行使価格 $c$、ペイオフ $X=(S^1_T-c)^{+}$）

$$
f(x,t)=\underbrace{x\,\mathcal N\big(d_1(x,t)\big)}_{\text{株の価値}}-\underbrace{c\,e^{-rt}\mathcal N\big(d_2(x,t)\big)}_{\text{行使価格の現在価値}},\qquad
\begin{aligned}d_1&=\frac{\ln(x/c)+\big(r+\tfrac12\sigma^2\big)t}{\sigma\sqrt t}\\d_2&=d_1-\sigma\sqrt t\end{aligned}\tag{93}
$$

ここで $\mathcal N(\cdot)$ は標準正規分布関数。$\pi=f(S^1_0,T)$ はこのモデルで唯一の合理的価値であり、$\mu$ に依存しない。

**偏微分方程式**

$$
\frac{\partial f}{\partial t}=\tfrac12\sigma^2x^2\frac{\partial^2f}{\partial x^2}+r\,x\frac{\partial f}{\partial x}-r\,f,\qquad f(x,0)=(x-c)^{+}\tag{94}
$$

**複製戦略**

$$
V_t=f(S^1_t,\,T-t),\qquad\phi^1_t=\frac{\partial f}{\partial x}(S^1_t,\,T-t),\qquad\phi^0_t=\frac{V_t-\phi^1_tS^1_t}{S^0_t}\tag{95}
$$

$$
dV_t=\phi^0_t\,dS^0_t+\phi^1_t\,dS^1_t\tag{96}
$$

> (96) は自己充足性を表す (36) の微分形。$V_T=(S^1_T-c)^{+}$ なので、この戦略はコールのペイオフを複製する。$V$ と $\phi^1$ は正で、$\phi^0$ は負になり得る（株の買いを借入れで賄う）。コールの評価式 (93) は、実は空売り無制限という仮定を必要としない（他のオプションの達成には必要になり得る）。(91)–(93) は、1.9 の $K=1$、$\Lambda=\sigma$、$\mu^1=\mu-r$ の場合に対応し、(93) は (86) を $\psi(x)=[x-c\,e^{-rT}]^{+}$ で評価して得られる。

| 記号・項目 | 意味 |
|---|---|
| $r$ | 無リスク金利（定数） |
| $\mu$ | 株の平均収益率（Black–Scholes 式の記号。1.9 の $\mu^1$ とは $\mu=\mu^1+r$ の関係） |
| $\sigma$ | 収益率の標準偏差（$\sigma\gt0$） |
| $c$ | 行使価格 |
| $\mathcal N(\cdot)$ | 標準正規分布関数 |
| $d_1,d_2$ | (93) の補助関数 |

### 1.12 その他の例（原論文 §6）

原論文は、これらを「現実の問題に結びつけず、体系的でも厳密でもない」例として挙げる。（本節の式は特殊ケースの式なので式番号を付けない。記号の衝突を避けるため、一部を原論文から書き換えた。）

**(a) 自殺戦略（原論文 §6a）**

Black–Scholes モデルで $r=0$、$T=1$、$S^1_0=1$ とする。$b\gt0$ に対し、

$$
\phi^0_t=1+b,\quad\phi^1_t=-b\quad(0\le t\le\tau(b)),\qquad\phi_t=0\ \ \text{（それ以外）},\qquad
\tau(b)=\inf\lbrace t:\ S^1_t=1+1/b\rbrace=\inf\lbrace t:\ V_t(\phi)=0\rbrace
$$

初期資産1で、株を $b$ 株空売りし債券を $1+b$ 買う。破産確率 $p(b)=P(\tau(b)\lt1)$ は $b$ とともに0から1へ増える。区間 $[0,\tfrac12]$ で $b=1$、以後 $t_n=1-(\tfrac12)^n$ ごとに、次の区間 $(t_n,t_{n+1}]$ の条件付き破産確率が再び $p$ になるよう空売り量と債券保有量を（自己充足的に）調整すると、時点 $t_n$ までの生存確率は $(1-p)^n\to0$。結果は、区分的に定数の自己充足戦略 $\phi$ で $V_0(\phi)=1$、$V(\phi)\ge0$、$V_1(\phi)=0$。

> 暫定の許容戦略（局所有界、$V\ge0$）のもとでは、達成可能請求権の価格が一意でなくなる（達成する戦略にこれを足せば、価格 $\pi+1$ でも達成できる）。(42) の条件がこの戦略を除く。

**(b) ポイント過程モデル（原論文 §6b）**

$K=1$、$S^0=1$、$N$ を強度 $\lambda\gt0$ のポアソン過程、$b,\mu$ を正の定数として（Cox–Ross モデルの金利ゼロの場合）

$$
S^1_t=S^1_0\exp\big(bN_t-\mu t\big),\qquad R^1_t=\big(e^{b}-1\big)N_t-\mu t
$$

$$
\lambda^{\ast}=\frac{\mu}{e^{b}-1},\qquad D_t=\Big(\frac{\lambda^{\ast}}{\lambda}\Big)^{N_t}\exp\big((\lambda-\lambda^{\ast})t\big),\qquad dP^{\ast}=D_T\,dP
$$

$P^{\ast}$ のもとで $N$ は強度 $\lambda^{\ast}$ のポアソン過程、$R^1$ と $S^1$ はマルチンゲールになり、$S^1$ はマルチンゲール表現性をもつので完備。$\beta=1$ なので $\pi=E^{\ast}(X)$、コール $X=[S^1_T-c]^{+}$ なら

$$
\pi=\sum_{n=0}^{\infty}e^{-\lambda^{\ast}T}\frac{(\lambda^{\ast}T)^{n}}{n!}\Big[S^1_0\exp(bn-\mu T)-c\Big]^{+}
$$

> 原論文の当該式では因子 $e^{-\lambda^{\ast}T}$ が書かれていない。強度 $\lambda^{\ast}$ のポアソン分布の確率関数に合わせて補った。

**(c) 完備でないモデル（原論文 §6c）**

標準ブラウン運動 $W$ と、これと独立な過程 $\varsigma$（原論文では $\sigma$。(91) の定数と区別するため改記）を考える。

$$
\varsigma_t=\begin{cases}2&0\le t\lt T/2\ \ \text{（確率1）}\\1&T/2\le t\le T\ \ \text{（確率}1/2\text{）}\\3&T/2\le t\le T\ \ \text{（確率}1/2\text{）}\end{cases}
$$

$K=1$、$S^0\equiv1$、$R^1_t=\int_0^{t}\varsigma_s\,dW_s$、$S^1=\mathcal E(R^1)$、$[R^1,R^1]_t=\int_0^{t}\varsigma_s^2\,ds$。$\mathbb F$ は $S^1$（同値に $R^1$）が生成し、$W$ の生成するものに、$T/2$ 以降はコイン投げの結果が加わる。$R^1$、$S^1$ はマルチンゲールで、$Z^1=S^1$、$P$ 自身が参照測度。任意のマルチンゲールは $dM=\psi^1dS^1+\psi^2d\varsigma$ の形をもつ（$\psi^1,\psi^2$ は予測可能）が、$Z^1=S^1$ は連続なので連続マルチンゲールしか $Z^1$ による確率積分で表せず、(49) によりこのモデルは完備でない。

次の第2証券を加えると完備になる。

$$
S^2_t=\begin{cases}1&0\le t\lt T/2\\0&T/2\le t\le T,\ \ \varsigma_T=1\\2&T/2\le t\le T,\ \ \varsigma_T=3\end{cases}
$$

> $T/2$ 以前の価格は1ドルで確定とし、コイン投げの賭けに対応する券（簡単化のための強い仮定）。$S^2=Z^2$ はマルチンゲールで $P$ は参照測度のままであり、$dM=\psi^1dZ^1+\psi^2dZ^2$ と書けるので、(49) により完備。

**(d) 混合型モデル（原論文 §6d）**

$K=1$、$S^0\equiv1$ で、$\beta=1$ のため $S=Z$、$R=Y$。標準ブラウン運動 $W$、強度 $\lambda\gt0$ のポアソン過程 $N$、$\pm1$ を等確率でとる IID 列 $\lbrace\varepsilon_n\rbrace$（原論文の $X_n$）を互いに独立にとる。$\ell$ を $W$ の原点での局所時間とし、

$$
\ell_t=\lim_{\epsilon\downarrow0}\frac1{2\epsilon}\int_0^{t}\mathbf 1_{\lbrace\lvert W_s\rvert\le\epsilon\rbrace}\,ds,\qquad
\varpi_n=\inf\lbrace t\ge0:\ W_t=n\rbrace,\qquad\nu(t)=\sup\lbrace n\ge0:\ \varpi_n\le t\rbrace
$$

$\kappa\in(0,1)$ を定数として（原論文の $\gamma$ を (70) の $\gamma$ と区別するため改記）、

$$
R_t=W_t+J^{\mathrm{i}}_t+J^{\mathrm{p}}_t,\qquad J^{\mathrm{i}}_t=N(\ell_t)-\lambda\ell_t,\qquad J^{\mathrm{p}}_t=\kappa\big[\varepsilon_1+\dots+\varepsilon_{\nu(t)}\big]
$$

（原論文の $X,Y$ をそれぞれ $J^{\mathrm{i}},J^{\mathrm{p}}$ に改記。）$S=\mathcal E(R)=\mathcal E(W)\,\mathcal E(J^{\mathrm{i}})\,\mathcal E(J^{\mathrm{p}})$ より

$$
S_t=\exp\Big(W_t-\tfrac12t\Big)\,2^{N(\ell_t)}\,\exp(-\lambda\ell_t)\prod_{n=1}^{\nu(t)}\big(1+\kappa\varepsilon_n\big)
$$

$[W,W]_t=t$、$[J^{\mathrm{i}},J^{\mathrm{i}}]_t=N(\ell_t)$、$[J^{\mathrm{p}},J^{\mathrm{p}}]_t=\kappa^2\nu(t)$、$W,J^{\mathrm{i}},J^{\mathrm{p}}$ 間の相互変動は0。$J^{\mathrm{i}}$ のジャンプ時刻は完全に到達不能な停止時刻、$J^{\mathrm{p}}$ のジャンプ時刻 $\varpi_n$ は予測可能な停止時刻で、両者は共通点をもたない。$\mathbb F=\mathbb F^{R}=\mathbb F^{S}$ とすると $S$ はマルチンゲールで、$P$ 自身を参照測度にできる。任意の予測可能過程 $f,g,h$ から、$W_t=0$ のとき $f_t$、ある $n$ で $\varpi_n=t$ のとき $g_t$、それ以外 $h_t$ とする過程 $\varphi_t$ は予測可能で、

$$
\int\varphi\,dS=\int h\,S_-\,dW+\int f\,S_-\,dJ^{\mathrm{i}}+\int g\,S_-\,dJ^{\mathrm{p}}
$$

> 3成分に別々の戦略を使えることになる。連続マルチンゲール部分・予測可能なジャンプ和・補償された到達不能ジャンプを併せもつ一般的なマルチンゲールの代表例だが、ジャンプは有限時間に有限個。ブラウン運動・ポアソン・離散ランダムウォークの完備性から、このモデルは完備と**予想される**（原論文は証明できていない）。

| 記号・項目 | 意味 |
|---|---|
| $\tau(b)$ | 自殺戦略の破産時刻 |
| $p(b)$ | 破産確率 $P(\tau(b)\lt1)$ |
| $\lambda,\lambda^{\ast}$ | ポアソン過程の強度（$P$、$P^{\ast}$ のもと） |
| $b,\mu$ | ポアソン・モデルのジャンプ幅、ドリフト |
| $\varsigma_t$ | 例(c)の確率的な拡散係数 |
| $\ell_t$ | $W$ の原点での局所時間 |
| $\varpi_n,\ \nu(t)$ | $W$ が水準 $n$ に初めて到達する時刻、到達した最大の水準 |
| $\kappa$ | 例(d)の予測可能ジャンプの大きさ |
| $J^{\mathrm{i}},J^{\mathrm{p}}$ | 到達不能ジャンプ部分、予測可能ジャンプ部分 |
| $\varepsilon_n$ | $\pm1$ をとる IID 変数 |

### 1.13 主要帰結

**主要式**

$$
\boxed{\begin{aligned}
\pi&=\underbrace{E^{\ast}(\beta_TX)}_{\text{唯一の価格}}\\[2pt]
X\ \text{達成可能}&\iff\underbrace{V^{\ast}=V^{\ast}_0+\int H\,dZ}_{\text{表現可能}},\ \ H\in\mathcal L(Z)\\[2pt]
\text{完備}&\iff\underbrace{\mathcal M=\mathcal M(Z)}_{\text{マルチンゲール表現性}}\\[2pt]
\pi&=f^{\ast}(Z_0,T),\quad\phi^k_t=\frac{\partial}{\partial x^k}f^{\ast}(Z_t,T-t)\qquad\text{（拡散モデル）}
\end{aligned}}\tag{97}
$$

**比較静学・特殊ケース**

| 変化・ケース | 結果 | 符号・式 |
|---|---|---|
| 株の平均収益率 $\mu$ を変える | 価格 $\pi$ と複製戦略は変わらない（$\mu$ は $\gamma$ に吸収され、評価式に現れない） | (70), (86), (87), (93) |
| $P$ を同値な測度 $Q$ に替える | 達成可能性・価格・完備性は不変（零集合だけが効く） | (2), (11), (13) |
| 価格過程が連続であること | 完備性の必要条件でも十分条件でもない | 1.12 (b), (c) |
| マルコフ性 | 完備性の問題とは無関係 | 1.12, (49) |
| 離散ランダムウォークの株数 $K$ を1から増やす | $K=1$ は完備、$K\ge2$ は不完備 | (17), (19) |
| 同じ構造の連続極限（$K=2$ の独立な幾何ブラウン運動） | 完備（離散では不完備） | (80), (49) |
| 不完備モデルへ証券を追加（1.12 (c) の $S^2$） | 完備になる | (49), 1.12 (c) |
| 暫定の $\Phi$ を $\Phi^{\ast}$ に絞る（(42) を課す） | 自殺戦略が除かれ、価格が一意になる | (40), (42), (45), 1.12 (a) |
| コール・オプション（Black–Scholes） | $\phi^1\gt0$（常に株を持つ）、$\phi^0$ は負になり得る | (95) |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| オプションの合理的価値がリスク選好によらず一意に決まる | 株と債券の自己充足的な売買でペイオフを複製でき、複製に要する初期費用が唯一の価格になる（(45), (87), (95)）。 |
| 価格が株の平均収益率 $\mu$ に依存しない | 参照測度 $P^{\ast}$ のもとで割引価格がマルチンゲールになり、$\mu$ は測度変換 (70)–(73) に吸収される。 |
| 複製のために借入れ（債券の空売り）が要ること | 債券保有量は自己充足条件から残差として決まり (39), (90)、負になり得る (95)。 |
| 同じ請求権が複数の価格で作れてしまう「自殺戦略」の問題 | 暫定の許容戦略では価格が一意でない (1.12 (a))。$V^{\ast}$ がマルチンゲールという条件 (42) で解消する。 |
| 離散モデルで株が複数あると複製できない一方、連続極限で複製できること | 離散では分割指数 (17) が証券数を決めるが、拡散モデルではブラウン運動の表現性 (80) で完備になる。 |
| ジャンプのある価格（ポアソン）でも複製できること | ポアソン・マルチンゲールはマルチンゲール表現性をもつ（1.7, 1.12 (b)）。 |
| 価格が連続でも複製できない場合 | 確率的な拡散係数がある 1.12 (c) では、$Z^1$ の連続性のため表現できないマルチンゲールが残り、不完備になる。 |
| 追加の証券で市場の完備化 | 1.12 (c) の $S^2$ のように、不確実性の源の数だけ証券があれば完備になる。 |

## 3. 整理している点 {#sec3}

- 連続取引の理論に必要な数学的枠組みを、「価格＝セミマルチンゲール」「資本利得＝確率積分」「戦略＝予測可能過程」「自己充足＝(36)」として最小限に固め、同じ構造をもつ有限モデルを先に置いて経済的意味づけを与えている。
- 偶発請求権の評価を、達成可能性（(47)）と完備性（(49)、マルチンゲール表現性）の問題に帰着させ、評価式 (45) を一般の枠組みで示している。Black–Scholes 公式はそのうち1つの具体例（(93)）に位置づけられる。
- 完備性の問いが、同値な測度の置換で不変（零集合だけが関係する）であることを示し、マルコフ性や価格の連続性が本質でないことを例で示している。

## 4. 対象外の現象 {#sec4}

- **均衡の議論**: 並行市場でのオプション価格と $\pi$ の乖離から裁定が生じ、それが均衡と矛盾する、という経済学での議論は行わない（達成可能性の主張で止める）。市場外で実際に取引されるオプション価格との比較もしない。
- **摩擦のある市場**: 取引費用、空売り制限、離散的な取引、確率的な無リスク金利は扱わない。無リスク金利は、完備性のためには確定的でなければならないようだ、と述べるにとどまる。
- **連続市場の無裁定**: 連続モデルでは裁定機会の定義と無裁定の特徴づけ（(13) の連続版）は扱わず、(33) を仮定する。(33) が正しい viability の表現かも未解決とされる。
- **完備性の一般条件**: 連続市場で、(17) に類する具体的な必要十分条件は未知である。1.12 (d) の完備性は予想にとどまる。
- **消費・投資問題**: 数学的構造がそのまま有用であるとは述べるが、効用最大化は扱わない。
- **未解決の予想**: 参照測度の選び方の影響（有界な請求権の達成可能性は参照測度によらない、等）、許容戦略の限定が論理的に劣る戦略だけを除いているか（予想 7.1）は証明していない。
- **不完備市場の評価**: 達成不可能な請求権の価格づけや、有限モデルの漸近的完備性の理論は扱わない。
- **実証・パラメータ推定**: 現実のデータとの対応は扱わない。

## 5. 主要文献・関連論文 {#sec5}

- **[原著・金字塔的論文]** Black, F., & Scholes, M. (1973). The pricing of options and corporate liabilities. *Journal of Political Economy*, 81(3), 637–654.
  - **位置づけ**: オプションの唯一の合理的価値を複製の議論で導いた。本モデルは、この公式の構造（完備性）を一般化する動機となった。
- **[原著・基礎]** Merton, R. C. (1973). Theory of rational option pricing. *Bell Journal of Economics and Management Science*, 4(1), 141–183.
  - **位置づけ**: オプション評価の理論的基礎を整備し、連続時間の複製の議論を与えた。
- **[直接の先行研究]** Harrison, J. M., & Kreps, D. M. (1979). Martingales and arbitrage in multiperiod securities markets. *Journal of Economic Theory*, 20(3), 381–408.
  - **位置づけ**: 無裁定とマルチンゲール測度の存在の同値性を有限モデルで示した。本論文の 1.1–1.3 の定式化と結果の出典である（原論文は "intellectual progenitor" と呼ぶ）。
- **[密接に関連する文献]** Cox, J. C., Ross, S. A., & Rubinstein, M. (1979). Option pricing: A simplified approach. *Journal of Financial Economics*, 7(3), 229–263.
  - **位置づけ**: 離散二項モデルでのオプション評価。1.3 のランダムウォーク・モデル ($K=1$) に対応する。
- **[発展文献]** Delbaen, F., & Schachermayer, W. (1994). A general version of the fundamental theorem of asset pricing. *Mathematische Annalen*, 300(1), 463–520.
  - **位置づけ**: 本論文が仮定 (33) とした連続時間での無裁定とマルチンゲール測度の存在の関係を、一般のセミマルチンゲール価格過程に対して精密化した。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
価格過程 S=(S^0,...,S^K)                       式(1)
   │ 戦略(予測可能) → 利得 G (4)(35) → 自己充足 (5)(6)(36)
   ▼
有限モデル：裁定なし ⇔ ℙ≠∅ (13) ── 価格 π=E_Q(β_T X) (12)(14)
   │                      └─ 達成可能 (15)(16) ── 完備 ⇔ K_t(A)=K+1 (17)
   ▼  連続化
割引量での定式化 (37)(38) ── 暫定Φでは価格不定 (40)
   ▼
参照測度 P* と許容戦略Φ* (41)(42) ── 価格 π=E*(β_T X) (45)
   ▼
達成可能 ⇔ V*=V*_0+∫H dZ (46)(47) ── 完備 ⇔ ℳ=ℳ(Z) (49)
   ▼
指数と収益過程 (52)-(60)
   ▼
拡散モデル (62)-(74) ── 完備性 (75)-(80) ── 評価 (86)(87) ── 戦略 (88)-(90)
   ▼
特殊ケース：Black-Scholes (91)-(96)
```

### A.1 使う道具

**T1 マルチンゲール変換（離散）**

$\phi$ が予測可能で $\Delta M$ がマルチンゲール差なら $E(\phi_i\Delta M_i)=0$（有界性や可積分性は仮定する）。

**T2 Abel の和分**（部分和）

$$
\sum_{i=1}^{T-1}(a_i-a_{i+1})b_i+a_Tb_T=\sum_{i=2}^{T}a_i(b_i-b_{i-1})+a_1b_1
$$

**T3 分離超平面定理**

$\mathbb R^{\Omega}$ の閉凸集合 $C$ と部分空間 $D$ が交わらなければ、$D$ 上で0、$C$ 上で正の線形汎関数が存在する。

**T4 積の公式と相互変動**

(28) から $d(LL')=L_-\,dL'+L'_-\,dL+d[L,L']$。一方が連続かつ VF なら $[L,L']=0$ (30)。

**T5 局所マルチンゲールの積分と Fatou の補題**

局所有界・予測可能な $H$ と局所マルチンゲール $M$ について $\int H\,dM$ は局所マルチンゲール、正の局所マルチンゲールは優マルチンゲール (22)。

**T6 伊藤の公式**

**T7 Girsanov の定理（ブラウン運動の尤度比公式）**

(72) の $D$ が厳密に正のマルチンゲールで $D_0=1$ なら、$dP^{\ast}=D_T\,dP$ のもとで $W+\gamma t$ は標準ブラウン運動。

**T8 ブラウン運動のマルチンゲール表現**

ブラウン運動の生成するフィルトレーション上の（2乗可積分）マルチンゲールは、ブラウン運動に関する確率積分で表せる。

**T9 熱方程式**

$\dfrac{\partial}{\partial t}\Gamma_t(z)=\dfrac12\sum_{k=1}^{K}\dfrac{\partial^2}{\partial z_k^2}\Gamma_t(z)$。

### A.2 価格体系と測度の対応 (12)

**Step 1　$Q\in\mathbb P$ から価格体系を作る**

$\pi(X):=E_Q(\beta_TX)$ とおく。$Q\sim P$ と期待値の線形性・非負性から (9) を満たす。→ $\pi$ は価格体系。

**Step 2　自己充足戦略の割引終端価値を書き換える**

(5) より $(\phi_i-\phi_{i+1})S_i=0$。$\beta_i$ は確定的な正のスカラー（債券の逆数）として各時点でかけられるので

$$
\beta_TV_T(\phi)=\beta_T\phi_TS_T+\sum_{i=1}^{T-1}(\phi_i-\phi_{i+1})\beta_iS_i
$$

**Step 3　T2（Abel の和分）を適用**

$$
\beta_TV_T(\phi)=\sum_{i=2}^{T}\phi_i\big(\beta_iS_i-\beta_{i-1}S_{i-1}\big)+\phi_1\beta_1S_1
$$

**Step 4　$Q$ のもとでの期待値をとる**

$\beta S$ は $Q$-マルチンゲール、$\phi$ は予測可能なので、T1 により第1項の期待値は0。$\phi_1\in\mathcal F_0$ は定数だから

$$
E_Q(\phi_1\beta_1S_1)=\phi_1\beta_0S_0=\phi_1S_0=V_0(\phi)
$$

→ $\pi(V_T(\phi))=V_0(\phi)$、すなわち (10)。よって $\pi\in\Pi$ で、(12) の第1式を得る。

**Step 5　逆：$\pi\in\Pi$ から $Q$ を作る**

$Q(A):=\pi(S^0_T\mathbf 1_A)$ とおく。各 $\omega$ で $S^0_T\mathbf 1_{\lbrace\omega\rbrace}\neq0$ なので、(9) より $Q(\omega)\gt0$。債券を1単位持ち続ける戦略 $\phi^0\equiv1$、$\phi^k\equiv0$ は $V_0=1$、$V_T=S^0_T$ なので、(10) から $1=\pi(S^0_T)=Q(\Omega)$。→ $Q\sim P$ は確率測度。(9) の線形性から $\pi(X)=E_Q(\beta_TX)$。

**Step 6　$\beta S$ が $Q$-マルチンゲールであること**

株 $k\ge1$ と停止時刻 $\tau\le T$ について、「株 $k$ を $\tau$ まで1単位持ち、その後すべて売って債券に投資する」戦略（予測可能であることは直接確認できる）を考える。$V_0=S^k_0$、$V_T=S^0_T\beta_\tau S^k_\tau$。(10) より

$$
S^k_0=\pi\big(S^0_T\beta_\tau S^k_\tau\big)=E_Q\big(\beta_TS^0_T\beta_\tau S^k_\tau\big)=E_Q(\beta_\tau S^k_\tau)
$$

$k,\tau$ は任意なので $\beta S$ は $Q$-マルチンゲール。→ $Q\in\mathbb P$。(12) の第2式と対応の一対一性が示された。

**確認**

$T=1$、状態数2（上昇・下降）の二項モデル（$K=1$）で、(19) の記法を使うと、$S^1_1=1\pm a$、$S^0_1=1+r$。$Q$（上昇確率 $q$）は割引価格がマルチンゲールになる $q(1+a)+(1-q)(1-a)=1+r$ から $q=(a+r)/(2a)\in(0,1)$（$0\lt r\lt a$ より）。これは (12) の第2式 $Q(\omega)=\pi(S^0_T\mathbf 1_{\omega})$ と整合する。

| 入力・使う道具 | 内容 |
|---|---|
| (5), (9), (10) | 自己充足、価格体系、整合性 |
| T1, T2 | マルチンゲール変換、Abel の和分 |
| 出力 | (12) |

### A.3 無裁定の特徴づけ (13)

**Step 1　$\mathbb P\neq\emptyset\Rightarrow$ 裁定なし**

(12) により $\mathbb P\neq\emptyset\iff\Pi\neq\emptyset$。$\pi\in\Pi$ をとり $V_0(\phi)=0$ の $\phi\in\Phi$ をとると、(10) より $\pi(V_T(\phi))=V_0(\phi)=0$。(9) の第1式から $V_T(\phi)=0$。→ 裁定機会はない。

**Step 2　補題：自己充足で $V_0=0$、$V_T\ge0$、$E(V_T)\gt0$ の戦略 $\phi$（許容でなくてもよい）があれば、裁定機会が存在する**

$V(\phi)\ge0$ なら $\phi\in\Phi$ で、それ自身が裁定機会。そうでなければ、$V$ が負になる時点 $t\lt T$、事象 $A\in\mathcal F_t$、$a\lt0$ で、$A$ 上 $\phi_tS_t=a$、かつ以後すべての $u\gt t$ で $\phi_uS_u\ge0$ となるものがある（$V_T\ge0$ より、負の値から回復する）。新しい戦略 $\psi$ を、$u\le t$ では $\psi_u=0$、$u\gt t$ で $\omega\notin A$ なら $\psi_u(\omega)=0$、$\omega\in A$ なら

$$
\psi^0_u=\phi^0_u-\frac{a}{S^0_t},\qquad\psi^k_u=\phi^k_u\quad(k=1,\dots,K)
$$

とする。$\psi$ は予測可能で、$A$ 上 $\psi_{t+1}S_t=\phi_{t+1}S_t-a=\phi_tS_t-a=0$（(5) と $a$ の定義）なので自己充足。$u\gt t$、$A$ 上で

$$
\psi_uS_u=\phi_uS_u-a\,\frac{S^0_u}{S^0_t}\ge0
$$

（$-a\gt0$）。よって $V(\psi)\ge0$、$\psi\in\Phi$。$S^0_T\gt0$ から $A$ 上 $V_T(\psi)\gt0$。→ $\psi$ は裁定機会。

**Step 3　裁定なし $\Rightarrow\mathbb P\neq\emptyset$（分離）**

$\mathcal X^{+}=\lbrace X\in\mathcal X:\ E(X)\ge1\rbrace$（$\mathbb R^{\Omega}$ の閉凸集合）、$\mathcal X^{0}=\lbrace V_T(\phi):\ \phi\ \text{自己充足},\ V_0(\phi)=0\rbrace$（部分空間）とする。裁定がなければ Step 2 の補題により両者は互いに素。T3 より線形汎関数 $L$ で $\mathcal X^{0}$ 上 $L=0$、$\mathcal X^{+}$ 上 $L\gt0$。$L(\mathbf 1_{\lbrace\omega\rbrace})\gt0$ となるので、$\pi(X):=L(X)/L(S^0_T)$ とおくと (9) を満たす（$\pi(S^0_T)=1$）。

**Step 4　整合性**

任意の $\phi\in\Phi$ に対し、債券成分を $V_0(\phi)$ だけ減らした戦略 $\psi$（$\psi^0_t=\phi^0_t-V_0(\phi)$）を作ると、自己充足で $V_0(\psi)=0$、$V_T(\psi)=V_T(\phi)-V_0(\phi)S^0_T\in\mathcal X^{0}$。$L$ の線形性により

$$
0=\pi\big(V_T(\psi)\big)=\pi\big(V_T(\phi)\big)-V_0(\phi)\,\pi(S^0_T)=\pi\big(V_T(\phi)\big)-V_0(\phi)
$$

→ $\pi\in\Pi$。(12) により $\mathbb P\neq\emptyset$。以上で (13) が示された。

**Step 5　価格の一意性 (14)**

$X$ が達成可能で $\phi$ が生成するなら、$\pi\in\Pi$ と (10) より $\pi(X)=V_0(\phi)$。(12) により、各 $Q\in\mathbb P$ について $V_0(\phi)=E_Q(\beta_TX)$。→ (14)。

**確認**

ランダムウォーク (19) で、$r\gt a^k$ なら株 $k$ は債券に支配され、$\mathbb P=\emptyset$（裁定あり）。条件 $0\lt r\lt a^k$ はこれを排除している。

| 入力・使う道具 | 内容 |
|---|---|
| (8), (12) | 裁定、対応 |
| T3 | 分離超平面定理 |
| 出力 | (13), (14) |

### A.4 達成可能請求権の価値過程 (15)(16)

**Step 1　割引価値の増分**

(5) より $V_{t-1}=\phi_tS_{t-1}$。したがって

$$
\Delta(\beta V)_t=\beta_t\phi_tS_t-\beta_{t-1}\phi_tS_{t-1}=\phi_t\big(\beta_tS_t-\beta_{t-1}S_{t-1}\big)=\phi_t\,\Delta(\beta S)_t
$$

**Step 2　債券成分の消去**

$\beta S^0\equiv1$ なので $\Delta(\beta S^0)=0$、和は $k=1$ から。→ (16)。

**Step 3　$\beta V$ はマルチンゲール**

(16) の右辺は予測可能な $\phi^k$ と $Q$-マルチンゲール $\beta S^k$ の変換なので、T1 により $\beta V(\phi)$ は各 $Q\in\mathbb P$ でマルチンゲール。

**Step 4　条件付き期待値**

$X$ を生成する $\phi$ では $V_T(\phi)=X$ だから $\beta_tV_t=E_Q(\beta_TV_T\mid\mathcal F_t)=E_Q(\beta_TX\mid\mathcal F_t)$。→ (15)。

**Step 5　完備性 (17) の次元の議論（$T=1$）**

$\Omega$ が $n$ 個の元をもつとき $\mathcal X$ は $\mathbb R^{n}$ の正の象限。各証券は定数 $S^k_0$ とベクトル $S^k_1\in\mathbb R^n$ をもつ。すべての $X\in\mathcal X$ が $S^0_1,\dots,S^K_1$ の一次結合で書けることが完備性。非冗長（一次独立）なら、これは $n=K+1$ と同値。一般の $T$ へは帰納法で拡張する（Kreps）。

**確認**

(19) で $K=1$：各時点・各状況から次に2通り、証券は2個で $K_t(A)=2=K+1$。完備。$K=2$：$K_t(A)=4\gt3=K+1$。非完備。

| 入力・使う道具 | 内容 |
|---|---|
| (5), (12) | 自己充足、$Q\in\mathbb P$ |
| T1 | マルチンゲール変換 |
| 出力 | (15), (16), (17) |

### A.5 連続モデルの割引定式化 (38)–(40)

**Step 1　自己充足から価値の増分**

(36) から $\Delta V(\phi)=\Delta G(\phi)=\phi\,\Delta S$（(27)）。したがって $V_-(\phi)=V(\phi)-\Delta V(\phi)=\phi S-\phi\Delta S=\phi S_-$。

**Step 2　$\beta$ との積**

$\beta$ は連続 VF なので (30) から $[\beta,V(\phi)]=0$。T4 より

$$
dV^{\ast}(\phi)=d(\beta V)=\beta_-\,dV+V_-\,d\beta=\beta\,dG+\phi S_-\,d\beta=\phi\big(\beta\,dS+S_-\,d\beta\big)
$$

**Step 3　$dZ$ との比較**

同様に $[\beta,S]=0$ なので $dZ=d(\beta S)=\beta\,dS+S_-\,d\beta$。よって $dV^{\ast}(\phi)=\phi\,dZ$、すなわち $V^{\ast}(\phi)=V^{\ast}_0(\phi)+\int\phi\,dZ=V^{\ast}_0(\phi)+G^{\ast}(\phi)$。→ (38) の「$\Rightarrow$」。逆もほぼ同じ手順で成り立つ（原論文は省略）。

**Step 4　債券成分の消去**

$Z^0=\beta S^0=1$ なので $dZ^0=0$、$G^{\ast}$ は $k=1,\dots,K$ の和。→ (37)。

**Step 5　債券成分の決定**

$V^{\ast}(\phi)=\phi^0+\sum_{k\ge1}\phi^kZ^k=v+G^{\ast}(\phi)$ から $\phi^0$ を解く。→ (39)。

**Step 6　系 (40)**

$\phi$ が局所有界・予測可能で $Z$ が $Q$-マルチンゲールなので、T5 により $G^{\ast}(\phi)$ は局所マルチンゲール、$V^{\ast}(\phi)=v+G^{\ast}(\phi)\ge0$ は正の局所マルチンゲール、同じく T5（Fatou）で優マルチンゲール。→ (40)。

**確認**

$\phi\in\Phi$ で $V_0(\phi)=0$ なら、$V^{\ast}$ は $V^{\ast}_0=0$ から出発する正の優マルチンゲール。$E_Q(V^{\ast}_t)\le V^{\ast}_0=0$ かつ $V^{\ast}_t\ge0$ なので恒等的に0。裁定機会はない。他方、$V^{\ast}_0=1$ から $V^{\ast}_T=0$ になる戦略は優マルチンゲール性と矛盾しない（1.12 (a)）。

| 入力・使う道具 | 内容 |
|---|---|
| (20), (27), (30), (36) | 割引過程、ジャンプ、相互変動、自己充足 |
| T4, T5 | 積の公式、局所マルチンゲールの積分と Fatou |
| 出力 | (37), (38), (39), (40) |

### A.6 達成可能性と完備性 (46)(47)(49)

**Step 1　必要性：$X$ が達成可能なら (47) の表現がある**

$\phi\in\Phi^{\ast}$ が $X$ を生成するとする。$H^k=\phi^k$（$k\ge1$）とおくと $\int H\,dZ=G^{\ast}(\phi)$、$\beta_TX=V^{\ast}_T(\phi)$。(42) により $V^{\ast}(\phi)$ は $P^{\ast}$-マルチンゲールだから

$$
V^{\ast}_t=E^{\ast}(\beta_TX\mid\mathcal F_t)=E^{\ast}\big(V^{\ast}_T(\phi)\mid\mathcal F_t\big)=V^{\ast}_t(\phi)
$$

一方 $\phi\in\Phi^{\ast}$ より $V^{\ast}(\phi)=V^{\ast}_0(\phi)+G^{\ast}(\phi)=V^{\ast}_0(\phi)+\int H\,dZ$。→ (46) の $V^{\ast}$ が (47) の形をもち、$V^{\ast}(\phi)=V^{\ast}$。

**Step 2　十分性：表現があれば達成可能**

$V^{\ast}=V^{\ast}_0+\int H\,dZ$（$H\in\mathcal L(Z)$）とする。$\phi^k=H^k$（$k\ge1$）とおき、$\phi^0$ を (39)（$v=V^{\ast}_0$）で定義すると、$V^{\ast}(\phi)=V^{\ast}_0+G^{\ast}(\phi)=V^{\ast}$。$V^{\ast}$ は (46) により定義上、正のマルチンゲールなので (42) を満たす。→ $\phi\in\Phi^{\ast}$、$V^{\ast}_T(\phi)=\beta_TX$。$X$ は達成可能（(47)）。

**Step 3　一意の価格 (45)**

(43) と $V^{\ast}_T(\phi)=\beta_TX$ から $\pi=V^{\ast}_0(\phi)=E^{\ast}(\beta_TX)$。→ (45)。

**Step 4　完備性の定理 (49)**

完備性は「すべての可積分な $X$ について (47) の表現がある」ことと同値。任意のマルチンゲールは2つの正のマルチンゲールの差で書け、正のマルチンゲール $V^{\ast}$ は (46) の形（適当な $X$）にできる。したがって「すべての可積分な $X$ が表現できる」ことは $\mathcal M=\mathcal M(Z)$ と同値。→ (49)。

**確認**

$\mathbb P=\lbrace P^{\ast}\rbrace$ のとき (50)：一般のマルチンゲール表現定理（Jacod）による。$P^{\ast}$ は $Z$ がマルチンゲールとなる確率測度の集合の端点である。

| 入力・使う道具 | 内容 |
|---|---|
| (39), (42), (43), (46) | 債券成分、許容性、価値過程 |
| T5 | 局所マルチンゲールの積分 |
| 出力 | (45), (47), (49) |

### A.7 セミマルチンゲール指数と収益過程 (59)(60)

**Step 1　収益過程の定義と整合性**

$Z^k$ は各 $Q\in\mathbb P$ のもとで厳密に正のマルチンゲールなので、$Z^k_-$ は厳密に正かつ左連続、$1/S^k_-=\beta_-/Z^k_-$ は局所有界。→ (57) の確率積分が定義できる。

**Step 2　指数関係**

(57) は $dS^k=S^k_-\,dR^k$、すなわち (51)（$U=S^k$、$L=R^k$）。(52) の解の一意性から $S^k=S^k_0\mathcal E(R^k)$。$S^k\gt0$ と (56) から $R^k\in\mathscr R^{+}$。→ (59)。

**Step 3　$\beta$ の指数表現**

$\beta=\exp(-\alpha)$ で $\alpha$ は連続 VF。(53) で $[\alpha,\alpha]=0$、ジャンプなし。よって $\beta=\mathcal E(-\alpha)$。

**Step 4　割引価格の指数表現**

(55)（$L'=-\alpha$ は連続 VF）を使い

$$
Z^k=\beta S^k=\mathcal E(-\alpha)\,S^k_0\,\mathcal E(R^k)=Z^k_0\,\mathcal E(R^k-\alpha)=Z^k_0\,\mathcal E(Y^k)
$$

→ (60)。ここで $[R^k,-\alpha]=0$ が効く。

**確認**

Black–Scholes（$K=1$）：$R^1_t=\sigma W_t+\mu t$、$\alpha_t=rt$、$Y^1_t=\sigma W_t+(\mu-r)t$。(53) で $[R,R]_t=\sigma^2t$ より $S^1_t=S^1_0\exp(\sigma W_t+\mu t-\tfrac12\sigma^2t)$。(91) と一致する。

| 入力・使う道具 | 内容 |
|---|---|
| (51)–(56) | 指数の定義と性質 |
| 出力 | (59), (60) |

### A.8 拡散モデルの完備性 (65)–(80)

**Step 1　$Z$ の微分形**

(64) を伊藤の公式（T6）で微分する。$\Delta=\exp(Y^k-\tfrac12a_{kk}t)$ の補正項 $-\tfrac12a_{kk}$ が $d[Y^k,Y^k]=a_{kk}dt$ の2階項と打ち消し合い、

$$
dZ^k=Z^k\,dY^k
$$

→ (65)。$Z^k=Z^k_0\,\mathcal E(Y^k)$ (60) と整合。

**Step 2　相互変動**

(65) と相互変動の基本性質から $d[Z^i,Z^j]=Z^iZ^j\,d[Y^i,Y^j]$、(63) より $[Y^i,Y^j]_t=a_{ij}t$（$\Lambda$ の行の内積）。→ (66)。

**Step 3　測度変換**

(70) で $\gamma$ を決め、(72) を定義する。$D$ は $P$ のもとで厳密に正のマルチンゲールで $D_0=1$。T7（Girsanov）により、(73) で定義した $P^{\ast}\sim P$ のもとで $\xi=W+\gamma t$ は独立な標準ブラウン運動の組。→ (74)。

**Step 4　$Z$ が $P^{\ast}$-マルチンゲール**

(71) から $Y=\Lambda\xi$ は $P^{\ast}$ のもとでドリフトなし、共分散 $A$ のブラウン運動。(64) は $Y$ の指数マルチンゲールの形なので、$Z$ は $P^{\ast}$ のもとでベクトル・マルチンゲール。→ $P^{\ast}\in\mathbb P$。

**Step 5　表現**

$\mathbb F=\mathbb F^{\xi}$ で、T8 により (75)–(76)（2乗可積分）。一般の $M\in\mathcal M$ は連続で局所2乗可積分なので (77)。(71) と $\Lambda$ の非特異性により (75) は (78) と同値（$\eta=\theta\Lambda^{-1}$）。

**Step 6　$Z$ に関する表現**

(65) により $dY^k=dZ^k/Z^k$。したがって

$$
\int\eta\,dY=\int\sum_{k=1}^{K}\eta^k\,\frac{dZ^k}{Z^k}=\int H\,dZ,\qquad H^k=\frac{\eta^k}{Z^k}
$$

→ (79)。

**Step 7　被積分過程の可積分性**

(66) より $d[Z^k,Z^k]=(Z^k)^2a_{kk}\,dt$。ゆえに $(H^k)^2d[Z^k,Z^k]=(\eta^k)^2a_{kk}\,dt$。→ (80)。(78) の可積分条件から (80) の過程は有限で連続（ゆえに局所可積分）。$H\in\mathcal L(Z)$、$\mathcal M=\mathcal M(Z)$。(49) により完備。

**確認**

$K=1$、$\Lambda=\sigma$：$\gamma=\mu^1/\sigma$（リスクの市場価格）。(72) は $D_t=\exp(-\gamma W_t-\tfrac12\gamma^2t)$ で、よく知られた Black–Scholes のリスク中立測度の密度に一致する。

| 入力・使う道具 | 内容 |
|---|---|
| (62)–(64), (70)–(73) | 設定と参照測度 |
| T6, T7, T8 | 伊藤の公式、Girsanov、ブラウン運動のマルチンゲール表現 |
| 出力 | (65), (66), (74), (79), (80) |

### A.9 明示的評価式と複製戦略 (86)–(90)、(93)–(96)

**Step 1　価値過程を $Z_t$ の関数にする**

(83) の $\psi(Z_T)$ に (69) を使うと $Z_T=h(Z_t,\,Y_T-Y_t,\,T-t)$。(71) から $Y_T-Y_t=\Lambda(\xi_T-\xi_t)$。$\xi_T-\xi_t$ は $P^{\ast}$ のもとで $\mathcal F_t$ と独立（(74)、$\mathbb F=\mathbb F^{\xi}$）で、密度 $\Gamma_{T-t}$ をもつ。→ (85)。

**Step 2　積分で書く**

$$
V^{\ast}_t=\int\psi\big(h(Z_t,\Lambda z,T-t)\big)\,\Gamma_{T-t}(z)\,dz
$$

→ (86) の $f^{\ast}$ を使って $V^{\ast}_t=f^{\ast}(Z_t,T-t)$。特に $t=0$ で $\pi=V^{\ast}_0=f^{\ast}(Z_0,T)$。→ (87)。

**Step 3　伊藤の公式で $dV^{\ast}$**

(66) を使って $f^{\ast}(Z_t,T-t)$ を微分する。

$$
dV^{\ast}_t=\sum_{k=1}^{K}\frac{\partial f^{\ast}}{\partial x^k}(Z_t,T-t)\,dZ^k_t+\Big(\mathcal A-\frac{\partial}{\partial u}\Big)f^{\ast}(Z_t,T-t)\,dt
$$

**Step 4　$f^{\ast}$ の偏微分方程式**

$\Gamma_t$ は熱方程式 $\partial_t\Gamma_t=\tfrac12\sum_k\partial^2_{z_k}\Gamma_t$ を満たす（T9）。(86) の変換（$h$ と $\Lambda$）を通して計算すると $\partial f^{\ast}/\partial u=\mathcal A f^{\ast}$。→ (88)。

**Step 5　$dt$ 項の消去と戦略**

(88) により Step 3 の $dt$ 項は0。$\phi^k_t=\partial f^{\ast}/\partial x^k(Z_t,T-t)$ とおけば $V^{\ast}_t=V^{\ast}_0+\sum_k\int\phi^k\,dZ^k$。→ (89)。債券成分は (39) から $\phi^0=V^{\ast}-\sum_k\phi^kZ^k$。→ (90)。

**Step 6　Black–Scholes への特殊化（$K=1$）**

$V_t=f(S^1_t,T-t)$、$f$ は (93)。時間引数が $T-t$ なので、伊藤の公式（原論文の (1.12) では時間微分項の符号が明示されていない）は

$$
dV_t=\frac{\partial f}{\partial x}\,dS^1_t+\Big[-\frac{\partial f}{\partial t}+\tfrac12\sigma^2(S^1_t)^2\frac{\partial^2f}{\partial x^2}\Big]dt
$$

(94) を使うと括弧内は $-r\,x\,\partial_xf+r\,f=r\big(f-x\,\partial_xf\big)$。(95) より $f-x\,\partial_xf=V_t-\phi^1_tS^1_t=\phi^0_tS^0_t$。(92) より $\phi^0\,dS^0=r\,\phi^0S^0\,dt$ なので

$$
dV_t=\phi^1_t\,dS^1_t+\phi^0_t\,dS^0_t
$$

→ (96)。

**確認**

終端：$V_T=f(S^1_T,0)=(S^1_T-c)^{+}$（(94) の初期条件）。始点：$V_0=f(S^1_0,T)=\pi$。$\phi^1=\partial_xf=\mathcal N(d_1)\gt0$ なので常に株を持つ。$\phi^0=(f-x\partial_xf)/S^0=-c\,e^{-rt}\mathcal N(d_2)/S^0\le0$（借入れ）。

| 入力・使う道具 | 内容 |
|---|---|
| (66), (69), (71), (74), (83) | 変動、関数表現、測度変換、価値過程 |
| T6, T9 | 伊藤の公式、熱方程式 |
| 出力 | (86)–(90), (93)–(96) |

### A.10 例の確認（1.12）

**(b) ポアソン・モデル**

$P^{\ast}$ のもとで $N$ の強度が $\lambda^{\ast}$ なので $E^{\ast}R^1_t=(e^{b}-1)\lambda^{\ast}t-\mu t=0$（$\lambda^{\ast}=\mu/(e^{b}-1)$ より）。$R^1$ は $P^{\ast}$-マルチンゲール（補償ポアソン過程の定数倍）。$D$ が厳密に正のマルチンゲール（$D_0=1$）であることは、ポイント過程の測度変換定理による。評価式は $N_T$ のポアソン分布で期待値をとって得る。

**(c) 不完備モデル**

$[R^1,R^1]_t=\int_0^t\varsigma^2_s\,ds$ なので $S^1=\mathcal E(R^1)=\exp\big(R^1-\tfrac12[R^1,R^1]\big)$（(53)、連続なのでジャンプ項なし）。$\varsigma$ の値は $T/2$ にコイン投げで決まるので $\mathbb F$ は $W$ の生成するものより大きく、$W$ の表現性だけでは $\varsigma$ に関する動き（$d\varsigma$）を張れない。第2証券 $S^2$ を加えると、$dZ^2=dS^2$ がその部分を張る。

| 入力・使う道具 | 内容 |
|---|---|
| (53), (49) | 指数、完備性の定理 |
| 出力 | 1.12 (b), (c) の主張 |

### A.11 著者について

**J. Michael Harrison（ジェイ・マイケル・ハリソン）**
- **アカデミックな経歴**: 1944年生まれ。Lehigh University で産業工学の学士（1966年）、Stanford University で産業工学の修士（1967年）、オペレーションズ・リサーチの博士（1970年）。1970年から Stanford 大学経営大学院（GSB）に勤務し、Adams Distinguished Professor of Management を務め、2011年に退職（名誉教授）。1982–83年に Northwestern University の客員教授。
- **主要な研究分野**: 企業活動の確率モデル。1970年代末から80年代初めに、Kreps とともにオプション理論の数学的基礎（同値マルチンゲール測度）を築き、のち待ち行列網とブラウン・ネットワーク、コールセンターの運営、動的価格設定などへ進んだ。
- **評判・学術的貢献**: INFORMS Expository Writing Award（1998年）、Frederick W. Lanchester Prize（2001年）、John von Neumann Theory Prize（2004年）。米国工学アカデミー（NAE）会員、INFORMS Fellow、数理統計学会（IMS）Fellow。著書に *Brownian Motion and Stochastic Flow Systems*（Wiley, 1985）。

**Stanley R. Pliska（スタンリー・R・プリスカ）**
- **アカデミックな経歴**: 1944年生まれ。本論文の執筆時は Northwestern University に所属し、Stanford GSB で在外研究中だった（原論文の謝辞）。のち University of Illinois at Chicago（UIC）の財務学部で教鞭を執った。学位の詳細は本記事作成時点で確認できていないため記載しない。
- **主要な研究分野**: 証券価格の数理・経済理論。とくに確率解析と無裁定価格理論の橋渡し、ポートフォリオ最適化へのリスク中立（マルチンゲール）アプローチ、金利デリバティブ、動的資産配分。
- **評判・学術的貢献**: 学術誌 *Mathematical Finance* の創刊編集者。教科書 *Introduction to Mathematical Finance: Discrete Time Models*（Blackwell, 1997）の著者。

---

**© 1981 J. Michael Harrison, Stanley R. Pliska**（原資料に著作権表記なし。原論文は *Stochastic Processes and their Applications*, 11(3), 215–260 として刊行。本記事は数理モデルの整理であり、原論文の権利は著者・出版社に帰属する。）
{% endraw %}
