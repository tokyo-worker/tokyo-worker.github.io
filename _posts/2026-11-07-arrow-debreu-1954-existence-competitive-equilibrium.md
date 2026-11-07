---
layout: post
title: "Arrow and Debreu (1954) \"Existence of an Equilibrium for a Competitive Economy\"、Econometrica: 数理モデル"
date: 2026-11-07 00:00:00 +0900
categories: [経済学, 一般均衡理論]
math: true
---

{% raw %}
# Arrow and Debreu (1954) "Existence of an Equilibrium for a Competitive Economy"、Econometrica: 数理モデル
### 競争均衡の存在定理：仮定・均衡の定義・抽象経済による証明の早見表

---

## 目次

- [0. 論文の紹介](#sec0)
- [1. 数理モデル](#sec1)
- [2. 説明できる現象](#sec2)
- [3. 整理している点](#sec3)
- [4. モデルの対象外](#sec4)
- [5. 主要文献・関連論文](#sec5)
- [付録：導出手順](#appendix)

---

## 0. 論文の紹介 {#sec0}

**書誌**：Kenneth J. Arrow and Gerard Debreu, "Existence of an Equilibrium for a Competitive Economy," *Econometrica*, Vol. 22, No. 3 (July 1954), pp. 265–290.

**論文リンク**：

- 無料で全文を読める版（PDF）：[https://ranger.uta.edu/~weems/NOTES6319/PAPERSTWO/arrow-debreu.pdf](https://ranger.uta.edu/~weems/NOTES6319/PAPERSTWO/arrow-debreu.pdf)（大学の講義資料サイトに置かれたJSTOR由来のスキャン版。出版社が公式に公開している版ではないため、リンク切れや公開状況の変更がありえます）
- 公式版（JSTOR。閲覧には契約または所属機関経由のアクセスが必要な場合があります）：[https://www.jstor.org/stable/1907353](https://www.jstor.org/stable/1907353)
- 掲載誌（The Econometric Society）の論文ページ：[https://econometricsociety.org/publications/econometrica/1954/07/01/existence-equilibrium-competitive-economy](https://econometricsociety.org/publications/econometrica/1954/07/01/existence-equilibrium-competitive-economy)

**論文の内容**：Walras が定式化した「需要・供給・市場均衡の連立方程式」が解を持つ条件は何か、を問う。生産・交換・消費を統合した競争経済を、有限個の財・生産単位・消費単位で定式化し、競争均衡を「生産者の利潤最大化」「消費者の効用最大化」「価格は非負で和が1」「超過需要は非正で、超過供給のある財の価格は0」の4条件で定義する。手法は、競争経済を「抽象経済（ゲームの一般化）」に写し、価格を選ぶ架空の「市場参加者」を加えて、抽象経済の均衡点の存在補題に帰着させるものである。結論として2つの定理を示す。定理Iは、全員がすべての財を正の量だけ初期保有する場合に競争均衡が存在するという主張である。定理IIは、生産的な労働の種類が存在する等のより弱い条件で競争均衡が存在するという主張である。均衡の一意性と安定性は扱わない。

**本記事の位置づけ**：この記事は、この論文の背景にある数理モデルについての記事です。論文の仮定（I–VII）、競争均衡の定義（条件1–4）、抽象経済の補題、2つの定理を、簡略化せず原文の記号のまま整理しました。証明は付録で、原論文の議論に沿って各Stepに展開し、原論文が略している中間の変形を補った箇所には（補）と付けています。第6章の歴史的注記からは、モデルの理解に必要なCassel体系の式のみを載せています。

**式番号の対応**：本記事の式番号は連番に付け直しています。原論文の番号との対応は次のとおりです（Cond. = Condition、Th. = Theorem、§ = 原論文の節）。

| 本記事 | 原論文 | 内容 |
|---|---|---|
| (1)–(3) | I.a, I.b, I.c（§1.2.2） | 生産集合の仮定 |
| (4)–(7) | II, III.a, III.b, III.c（§1.3.0–1.3.1） | 消費集合・効用の仮定 |
| (8), (9) | IV.a, IV.b（§1.3.2） | 初期保有・利潤配分の仮定 |
| (10)–(12) | Cond. 1, 2, 3（§1.2.3, 1.3.3, 1.4.0） | 利潤最大化・効用最大化・価格 |
| (13), (14) | §1.4.1 の定義、Cond. 4 | 超過需要、市場均衡 |
| (15) | §1.4.2 の式(1) | 予算制約は等号で成立 |
| (16), (17) | §2.1, §2.3 | 抽象経済、均衡点 |
| (18) | §2.5 Lemma | 抽象経済の均衡点の存在 |
| (19), (20) | §3.1.0 | 予算対応 A_i、抽象経済 E |
| (21)–(23) | §3.3.0, 3.3.3–3.3.4, 3.3.5 Remark | 有界集合、立方体 C での切り取り、連続性 |
| (24)–(29) | IV'.a, V, 𝒟の定義, VI, 𝒫の定義, VII（§4.1–4.4） | 定理IIの追加仮定 |
| (30)–(32) | §5.0, §5.1.1 | P^ε、ζ'、有界領域 |
| (33)–(36) | §6 の式(1)–(3) と不等式版 | Cassel体系とZeuthenの修正 |
| (37) | Th. I, II, II'（§1.5.1, 4.5, 5.3.6） | 主要帰結 |
| (38)–(60) | §1.4.1–1.4.2, §3.2–3.4, §5.1–5.3 の証明中の式 | 付録の導出 |

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間・財**

財は有限個 $$l$$ 種（添字 $$h=1,\dots,l$$）。サービスを含み、同じ財でも引渡しの場所や将来の時点が違えば別の財として数える。よって投資計画のような将来の売買も同じ枠組みに入る。生産単位は有限個 $$n$$（添字 $$j$$）で、現に存在するものに加え、価格条件しだいで市場に参入しうるものも含める。消費単位は有限個 $$m$$（添字 $$i$$）で、家計や個人のほか制度的な消費者も含む。全主体は価格を所与として行動する（完全競争）。

**記法**（原論文 §1.2.1）

| 記号 | 意味 |
|---|---|
| $$x\geqq y$$ | 各成分について $$x_h\geqq y_h$$ |
| $$x\gneqq y$$ | $$x\geqq y$$ だが $$x=y$$ ではない |
| $$x\gt y$$ | 各成分について $$x_h\gt y_h$$ |
| $$R^{l}$$ | $$l$$ 次元ユークリッド空間 |
| $$0$$ | 全成分が0のベクトル |
| $$\Omega$$ | $$\{x\mid x\in R^{l},\ x\geqq0\}$$ |
| $$-A$$ | $$\{x\mid -x\in A\}$$ |
| $$\sum_{\iota=1}^{\nu}A_\iota$$ | $$\{x\mid x=\sum_{\iota=1}^{\nu}x_\iota,\ x_\iota\in A_\iota\}$$（集合の和） |
| $$u\cdot v$$ | 内積 $$\sum_h u_hv_h$$ |
| $$\delta^{h}$$ | $$h$$ 番目の成分だけ1で他は0のベクトル |

**A1 生産可能集合の閉凸性（I.a）**

各生産単位の生産計画の集合 $$Y_j\subset R^{l}$$ は、出力を正、入力を負の成分とするベクトル $$y_j$$ の集合である。$$Y=\sum_{j=1}^{n}Y_j$$ は経済全体の投入産出の組を表す。

$$
\underbrace{Y_j\ \text{は}\ R^{l}\ \text{の閉凸部分集合}}_{\text{閉かつ凸}},\qquad \underbrace{0\in Y_j}_{\text{操業停止可能}}\qquad(j=1,\dots,n)\tag{1}
$$

> 凸性と $$0\in Y_j$$ から収穫非増加が出る。$$y_j\in Y_j$$、$$0\leqq\lambda\leqq1$$ なら $$\lambda y_j=\lambda y_j+(1-\lambda)0\in Y_j$$。加法性まで仮定すれば $$Y_j$$ は凸錐（収穫一定）になる。市場で取引されない企業固有の要素があれば、市場財の成分だけを見た $$Y_j$$ は加法性を満たさず、収穫逓減が許される。

**A2 無から有は生まれない（I.b）**

$$
Y\cap\Omega=\{0\}\tag{2}
$$

> 集計した生産計画に正の成分があるなら、必ずどこかに負の成分（投入）がある。Koopmans の「コケイン国の不可能性」に当たる。

**A3 不可逆性（I.c）**

$$
Y\cap(-Y)=\{0\}\tag{3}
$$

> 出力と入力がちょうど入れ替わった2つの生産計画は両立しない。最も簡単な根拠は、どの生産活動にもある種の労働が必要で、労働は生産単位では生産できないこと。$$y\in Y$$、$$y\ne0$$ なら、労働に当たる成分 $$h$$ で $$y_h\lt0$$ だから $$-y_h\gt0$$ となり、$$-y$$ は $$Y$$ に属せない。Koopmans の「不可逆性」に当たる。

**A4 消費集合（II）**

消費ベクトル $$x_i$$ の第 $$h$$ 成分 $$x_{hi}$$ は消費量で、労働サービスの供給は消費の負として表す。労働サービスの集合を $$\mathcal L$$ とし、$$h\in\mathcal L$$ なら $$x_{hi}\leqq0$$。労働供給には上限があるので $$x_{hi}$$ には下限がある（1日24時間など）。

$$
X_i\ \text{は}\ R^{l}\ \text{の閉凸部分集合で、}\ \underbrace{\exists\,\xi_i:\ \xi_i\leqq x_i\ \ (\forall x_i\in X_i)}_{\text{下に有界}}\qquad(i=1,\dots,m)\tag{4}
$$

> $$X_i$$ は予算制約を無視したとき個人が選びうるすべての消費ベクトルの集合。24時間を超える労働供給や、生命維持に足りない消費の組は除外される。

**A5 効用関数の連続性（III.a）**

選好は、$$u_i(x_i)\geqq u_i(x_i')$$ と「$$x_i$$ が $$x_i'$$ より選好される、または無差別」とが同値になる効用指標 $$u_i$$ で表される。

$$
u_i(x_i)\ \text{は}\ X_i\ \text{上で連続}\tag{5}
$$

> $$X_i$$ がユークリッド空間の部分集合なら、連続な効用指標の存在は、集合 $$\{x_i\in X_i\mid x_i\ \text{が}\ x_i'\ \text{以上に選好される}\}$$ と $$\{x_i\in X_i\mid x_i'\ \text{が}\ x_i\ \text{以上に選好される}\}$$ がともに $$X_i$$ で閉であることと同値（Debreu）。つまり選好関係の連続性に当たる。

**A6 非飽和（III.b）**

$$
\forall x_i\in X_i,\ \exists x_i'\in X_i:\ u_i(x_i')\gt u_i(x_i)\tag{6}
$$

> 飽和点がない。これは「現在の技術・資源制約で達成可能な消費ベクトルに飽和点がない」ことだけに弱められる（III'.b）。III'.b は (6) の「$$\forall x_i\in X_i$$」を「$$\forall x_i\in\hat X_i$$」に置き換えたもの（$$\hat X_i$$ は式(21)）。

**A7 無差別曲線の凸性（III.c）**

$$
u_i(x_i)\gt u_i(x_i')\ \text{かつ}\ 0\lt t\lt1\ \Longrightarrow\ u_i[tx_i+(1-t)x_i']\gt u_i(x_i')\tag{7}
$$

> 通常の「無差別曲線は凸」に当たる。集合 $$\{x_i\in X_i\mid u_i(x_i)\geqq\alpha\}$$ が任意の実数 $$\alpha$$ について凸、つまり $$u_i$$ が準凹であることは (7) から導かれる（付録 A.2）が、逆は成り立たない。需要理論では強い仮定である「狭義準凹」（$$u_i(x_i)\geqq u_i(x_i')$$ かつ $$0\lt t\lt1$$ なら $$u_i[tx_i+(1-t)x_i']\gt u_i(x_i')$$）が慣習的に置かれる（原文は $$x_i\ne x_i'$$ を明記していない）。これは需要関数が1価であることと同値で、(7) より強い。(7) を満たすが狭義準凹でない例は $$u_i(x_i)=\sum_{h=1}^{l}x_{hi}$$。

**A8 初期保有（IV.a）**

個人 $$i$$ は初期保有ベクトル $$\zeta_i\in R^{l}$$（第 $$h$$ 成分 $$\zeta_{hi}$$）をもつ。財 $$h$$ で支払う債務は、受取側の $$\zeta_{hi}$$ に加え、支払側の $$\zeta_{hi}$$ から引く。経済全体で債務が相殺される必要はなく、外国との債権債務も含められる。

$$
\exists x_i\in X_i:\ x_i\lt\zeta_i\qquad(i=1,\dots,m)\tag{8}
$$

> ここでの $$x_i\lt\zeta_i$$ は全成分についての厳密な不等号。どの個人も、自分の初期保有から実行可能な消費を賄ってなお、すべての財を正の量だけ市場に出せる。論文自身が非現実的な仮定だと述べる。要点は、均衡が存在するには各個人が均衡で正の価格がつく資産か労働を持っていなければならないこと。定理IIではこの仮定を弱める（A10）。

**A9 利潤の配分（IV.b）**

個人 $$i$$ は生産単位 $$j$$ の利潤の持分 $$\alpha_{ij}$$ に対する契約上の請求権を持つ。

$$
\alpha_{ij}\geqq0\ \ (\forall i,j),\qquad \sum_{i=1}^{m}\alpha_{ij}=1\ \ (\forall j)\tag{9}
$$

> 生産単位の利潤は全額が配当として消費者に分配される（所得の循環）。第2定理（定理II）の追加仮定 A10–A13 は 1.5 で述べる。

### 1.1 競争均衡の定義

**生産者の条件（Cond. 1）**

$$
y_j^{\ast}\ \text{は}\ Y_j\ \text{上で}\ \underbrace{p^{\ast}\cdot y_j}_{\text{利潤}}\ \text{を最大化する}\qquad(j=1,\dots,n)\tag{10}
$$

> $$p^{\ast}$$ は均衡価格ベクトル。$$y_j$$ は出力が正・入力が負なので $$p^{\ast}\cdot y_j$$ が利潤になる。

**消費者の条件（Cond. 2）**

$$
x_i^{\ast}\ \text{は}\ \Big\{x_i\ \Big|\ x_i\in X_i,\ \underbrace{p^{\ast}\cdot x_i}_{\text{支出超過}}\leqq\underbrace{p^{\ast}\cdot\zeta_i}_{\text{保有財の売却}}+\underbrace{\sum_{j=1}^{n}\alpha_{ij}\,p^{\ast}\cdot y_j^{\ast}}_{\text{配当}}\Big\}\ \text{上で}\ u_i(x_i)\ \text{を最大化する}\tag{11}
$$

> 労働供給は $$x_i$$ の負の成分なので、$$p^{\ast}\cdot x_i$$ は賃金所得を差し引いた財への支出になる。所得は、賃金、初期保有の売却収入、配当の3つからなる。

**価格体系（Cond. 3）**

$$
p^{\ast}\in P=\Big\{p\ \Big|\ p\in R^{l},\ p\geqq0,\ \sum_{h=1}^{l}p_h=1\Big\}\tag{12}
$$

> 価格は非負で、すべてがゼロではない。すべての関係式が $$p$$ について1次同次なので、和を1とする基準化に一般性の損失はない。

**超過需要**

$$
z=\underbrace{x}_{\text{総消費}}-\underbrace{y}_{\text{総生産}}-\underbrace{\zeta}_{\text{総初期保有}},\qquad x=\sum_{i=1}^{m}x_i,\quad y=\sum_{j=1}^{n}y_j,\quad \zeta=\sum_{i=1}^{m}\zeta_i\tag{13}
$$

**市場均衡（Cond. 4）**

$$
\underbrace{z^{\ast}\leqq0}_{\text{超過需要なし}},\qquad \underbrace{p^{\ast}\cdot z^{\ast}=0}_{\text{超過供給なら価格0}}\tag{14}
$$

> 需要が供給を上回れば価格は上がるので、均衡では超過需要は許されない。超過供給があっても価格は0未満にならないので、$$z_h^{\ast}\lt0$$ は $$p_h^{\ast}=0$$ のときに限り起こりうる（自由財）。$$p_h^{\ast}\geqq0$$、$$z_h^{\ast}\leqq0$$ なら $$p^{\ast}\cdot z^{\ast}=\sum_hp_h^{\ast}z_h^{\ast}$$ は非正の項の和なので、これが0になるのは各 $$h$$ で $$p_h^{\ast}z_h^{\ast}=0$$ のとき、またそのときに限る。

**予算制約は等号で成立する（§1.4.2）**

A6 と A7 のもとで、(11) の予算制約は等号で成立する。

$$
p^{\ast}\cdot x_i^{\ast}=p^{\ast}\cdot\zeta_i+\sum_{j=1}^{n}\alpha_{ij}\,p^{\ast}\cdot y_j^{\ast}\tag{15}
$$

> 非飽和により、個人は潜在的な所得をすべて使う。したがって、均衡価格が正の財については、初期保有のすべてが市場に供給される。

**定義（§1.5.0）**：ベクトルの組 $$(x_1^{\ast},\dots,x_m^{\ast},y_1^{\ast},\dots,y_n^{\ast},p^{\ast})$$ が条件 (10)–(14)（Cond. 1–4）を満たすとき、これを競争均衡という。

**定理I（§1.5.1）**：仮定 A1–A9（原論文の I–IV）を満たす経済には競争均衡が存在する。

| 記号・項目 | 意味 |
|---|---|
| $$l,\ h$$ | 財の数、財の添字 |
| $$n,\ j$$ | 生産単位の数、添字 |
| $$m,\ i$$ | 消費単位の数、添字 |
| $$Y_j,\ Y$$ | 生産単位 $$j$$ の生産可能集合、その総和 |
| $$y_j$$ | 生産計画（出力が正、入力が負） |
| $$X_i,\ x_i$$ | 消費集合、消費ベクトル（労働供給は負の成分） |
| $$\xi_i$$ | $$X_i$$ の下界 |
| $$u_i$$ | 効用指標 |
| $$\zeta_i,\ \zeta$$ | 初期保有、その総和 |
| $$\alpha_{ij}$$ | 個人 $$i$$ の生産単位 $$j$$ への利潤持分 |
| $$p,\ P$$ | 価格ベクトル、価格の集合（単体） |
| $$z$$ | 超過需要ベクトル |
| $$\mathcal L$$ | 労働サービスの財の集合 |
| $$^{\ast}$$ | 均衡値 |

### 1.2 抽象経済と均衡点の存在補題

**抽象経済（§2.1）**

$$R^{l}$$ の部分集合 $$\mathfrak A_\iota$$（$$\iota=1,\dots,\nu$$）をとり、$$\mathfrak A=\mathfrak A_1\times\cdots\times\mathfrak A_\nu$$ とする（$$a=(a_1,\dots,a_\nu)$$、$$a_\iota\in\mathfrak A_\iota$$）。各 $$\iota$$ に $$\mathfrak A$$ 上の実関数 $$f_\iota$$ がある。$$\bar{\mathfrak A}_\iota=\prod_{\iota'\ne\iota}\mathfrak A_{\iota'}$$ の点 $$\bar a_\iota=(a_1,\dots,a_{\iota-1},a_{\iota+1},\dots,a_\nu)$$ ごとに、部分集合 $$A_\iota(\bar a_\iota)\subset\mathfrak A_\iota$$ を対応させる。

$$
\Big[\underbrace{\mathfrak A_1,\dots,\mathfrak A_\nu}_{\text{行動の集合}},\ \underbrace{f_1,\dots,f_\nu}_{\text{利得関数}},\ \underbrace{A_1(\bar a_1),\dots,A_\nu(\bar a_\nu)}_{\text{他者の行動に依存する選択可能集合}}\Big]\tag{16}
$$

> $$A_\iota(\bar a_\iota)$$ が定数 $$\mathfrak A_\iota$$ なら通常のゲームになる。抽象経済は、ある主体の行動が他者の利得に加えて選択可能集合にも影響するゲームへの一般化。消費者の予算制約は価格と所得（他者の選択で決まる）に依存するので、この一般化が必要になる。

**均衡点（§2.3）**

$$
\underbrace{a_\iota^{\ast}\in A_\iota(\bar a_\iota^{\ast})}_{\text{許される行動}}\quad\text{かつ}\quad f_\iota(\bar a_\iota^{\ast},a_\iota^{\ast})=\underbrace{\max_{a_\iota\in A_\iota(\bar a_\iota^{\ast})}f_\iota(\bar a_\iota^{\ast},a_\iota)}_{\text{許される範囲で利得最大}}\qquad(\iota=1,\dots,\nu)\tag{17}
$$

**用語（§2.4）**：$$A_\iota(\bar a_\iota)$$ のグラフは集合 $$\{a\mid a_\iota\in A_\iota(\bar a_\iota)\}$$。$$A_\iota$$ が $$\bar a_\iota^{0}$$ で連続とは、任意の $$a_\iota^{0}\in A_\iota(\bar a_\iota^{0})$$ と $$\bar a_\iota^{0}$$ に収束する任意の列 $$\{\bar a_\iota^{n}\}$$ について、$$a_\iota^{0}$$ に収束し、すべての $$n$$ で $$a_\iota^{n}\in A_\iota(\bar a_\iota^{n})$$ となる列 $$\{a_\iota^{n}\}$$ が存在すること。

**補題（§2.5）の条件**

- (L1) 各 $$\iota$$ で $$\mathfrak A_\iota$$ はコンパクトかつ凸。
- (L2) $$f_\iota(\bar a_\iota,a_\iota)$$ は $$\mathfrak A$$ 上で連続で、すべての $$\bar a_\iota$$ について $$a_\iota$$ に関して準凹。
- (L3) $$A_\iota(\bar a_\iota)$$ は連続な対応で、グラフは閉集合。
- (L4) すべての $$\bar a_\iota$$ で $$A_\iota(\bar a_\iota)$$ は凸かつ空でない。

$$
\text{(L1)–(L4)}\ \Longrightarrow\ \exists\,a^{\ast}\ \text{（式(17)を満たす均衡点が存在する）}\tag{18}
$$

> Nash のゲームの均衡点の存在定理の一般化。Debreu (1952, PNAS) の定理の特別な場合（その Remark と合わせて得られる）。

| 記号・項目 | 意味 |
|---|---|
| $$\nu$$ | 抽象経済の主体数 |
| $$\mathfrak A_\iota,\ \mathfrak A$$ | 主体 $$\iota$$ の行動集合、その直積 |
| $$f_\iota$$ | 主体 $$\iota$$ の利得関数 |
| $$\bar a_\iota$$ | $$\iota$$ 以外の主体の行動の組 |
| $$A_\iota(\bar a_\iota)$$ | $$\bar a_\iota$$ のもとで $$\iota$$ に許される行動の集合 |

### 1.3 競争経済に対応する抽象経済 E

**予算対応**

消費単位 $$i$$ について、$$\bar x_i$$ を $$X_1\times\cdots\times X_{i-1}\times X_{i+1}\times\cdots\times X_m\times Y_1\times\cdots\times Y_n\times P$$ の点（成分は $$x_{i'}\,(i'\ne i)$$、$$y_j\,(j=1,\dots,n)$$、$$p$$）として、

$$
A_i(\bar x_i)=\Big\{x_i\ \Big|\ x_i\in X_i,\ p\cdot x_i\leqq p\cdot\zeta_i+\underbrace{\max\Big[0,\sum_{j=1}^{n}\alpha_{ij}\,p\cdot y_j\Big]}_{\text{配当（負なら0に置換）}}\Big\}\tag{19}
$$

> (10) の配当 $$\sum_j\alpha_{ij}p\cdot y_j$$ を $$\max[0,\cdot]$$ に置き換えているのは、任意の $$p,y_j$$ で予算集合が空にならないようにするため。A8 の $$x_i'\lt\zeta_i$$ から $$p\cdot\zeta_i\geqq p\cdot x_i'$$ なので、右辺は $$p\cdot x_i'$$ 以上となり $$x_i'\in A_i(\bar x_i)$$ になるからである。均衡では置換は影響しない（付録 A.3）。

**抽象経済 E**

$$
E=\big[X_1,\dots,X_m,Y_1,\dots,Y_n,P,\ u_1(x_1),\dots,u_m(x_m),\ p\cdot y_1,\dots,p\cdot y_n,\ p\cdot z,\ A_1(\bar x_1),\dots,A_m(\bar x_m),Y_1,\dots,Y_n,P\big]\tag{20}
$$

| 主体 | 行動 | 選択可能集合 | 利得 |
|---|---|---|---|
| 消費単位 $$i=1,\dots,m$$ | $$x_i$$ | $$A_i(\bar x_i)$$ | $$u_i(x_i)$$ |
| 生産単位 $$j=1,\dots,n$$ | $$y_j$$ | $$Y_j$$（他者に依存しない） | $$p\cdot y_j$$ |
| 市場参加者（架空の価格決定者） | $$p$$ | $$P$$（他者に依存しない） | $$p\cdot z$$ |

> 主体は $$m+n+1$$ 人。$$z$$ は (13) により $$x_i,y_j$$ で決まる。$$z$$ を所与とすると $$p\cdot z$$ は $$p$$ の線形関数で、$$z_h\gt0$$ の財の $$p_h$$ を上げ、$$z_h\lt0$$ の財の $$p_h$$ を下げる（ただし $$p_h$$ が0でなければ）ことで増える。これは「需要と供給の法則」の動機に対応する。この利得関数を選ぶ正当化は付録 A.3 の同値性による。

**同値性**：$$E$$ の均衡点は、条件 (10)–(14) を満たす。逆に競争均衡は $$E$$ の均衡点である（付録 A.3）。よって競争均衡と $$E$$ の均衡点は同値。

### 1.4 有界化：補題を適用できる形にする

補題 (18) は行動集合がコンパクトであることを要求するが、$$E$$ の行動集合 $$X_i,Y_j$$ は有界でない。そこで、均衡が属しうる集合を定める。

$$
\begin{aligned}
\hat X_i&=\{x_i\mid x_i\in X_i,\ \exists x_{i'}\in X_{i'}\,(i'\ne i),\ \exists y_j\in Y_j\,(\forall j):\ z\leqq0\}\\
\hat Y_j&=\{y_j\mid y_j\in Y_j,\ \exists x_i\in X_i\,(\forall i),\ \exists y_{j'}\in Y_{j'}\,(j'\ne j):\ z\leqq0\}
\end{aligned}\tag{21}
$$

> $$\hat X_i$$ は、個人 $$i$$ が経済全体を支配できるとしたとき、資源制約のもとで選べる消費ベクトルの集合。$$\hat Y_j$$ も同様。A1–A4 のもとで、これらはすべて有界（付録 A.4）。$$E$$ の均衡の $$x_i^{\ast},y_j^{\ast}$$ は $$\hat X_i,\hat Y_j$$ に属する。

$$
\begin{aligned}
C&=\{x\mid\,|x_h|\leqq c\ \ (\forall h)\},\qquad \tilde X_i=X_i\cap C,\quad \tilde Y_j=Y_j\cap C,\quad \tilde A_i(\bar x_i)=A_i(\bar x_i)\cap C
\end{aligned}\tag{22}
$$

> $$c\gt0$$ は立方体 $$C$$ が $$\hat X_i$$ と $$\hat Y_j$$ をすべて内部に含むように選ぶ。$$X_i,Y_j$$ を $$\tilde X_i,\tilde Y_j$$ に置き換えた抽象経済を $$\tilde E$$ とする。均衡は $$C$$ の内点にあるので、切り取っても均衡は変わらない（付録 A.6）。

**連続性の補助命題（§3.3.5 Remark）**

$$
p\cdot\zeta_i\gt\min_{x_i\in\tilde X_i}p\cdot x_i\ \Longrightarrow\ \tilde A_i\ \text{は点}\ \bar x_i=(x_1,\dots,x_{i-1},x_{i+1},\dots,x_m,y_1,\dots,y_n,p)\ \text{で連続}\tag{23}
$$

> A8 が成り立てば、任意の $$p\in P$$ と $$y_j\in\tilde Y_j$$ でこの条件が満たされる。

### 1.5 第2定理：初期保有の仮定を弱める

A8 は非現実的なので、定理IIは A8 を次の A10 で置き換える（A1–A7 は維持し、A9 と合わせて IV' と呼ぶ）。以下、$$X=\sum_{i=1}^{m}X_i$$。

**A10 生産的な労働を供給できる（IV'.a）**

$$
\exists x_i\in X_i:\ x_i\leqq\zeta_i\ \text{かつ、少なくとも1つの}\ h\in\mathcal P\ \text{で}\ x_{hi}\lt\zeta_{hi}\tag{24}
$$

> 個人が少なくとも1種類の「生産的な労働」$$h\in\mathcal P$$（式(28)）を供給できる。

**A11 すべての財の超過供給が可能（V）**

$$
\exists x\in X,\ \exists y\in Y:\ x\lt y+\zeta\tag{25}
$$

> 生産と消費の選択により、すべての財に超過供給を作れる。ここでの $$x\lt y+\zeta$$ は全成分についての厳密な不等号。

**常に望まれる財の集合 𝒟（定義）と A12（VI）**

$$
\mathcal D=\{h\mid \forall i,\ \forall x_i\in X_i,\ \exists\lambda\gt0:\ x_i+\lambda\delta^{h}\in X_i\ \text{かつ}\ u_i(x_i+\lambda\delta^{h})\gt u_i(x_i)\}\tag{26}
$$

$$
\mathcal D\ne\emptyset\tag{27}
$$

> $$\mathcal D$$ はすべての消費者が常に望む財の集合。A12 は A6（III.b）の強い形。

**生産的な労働の集合 𝒫（定義）と A13（VII）**

$$
\mathcal P=\Big\{h\ \Big|\ \forall y\in Y:\ \text{(a)}\ y_h\leqq0,\ \ \text{(b)}\ \exists y'\in Y,\ \big[\forall h'\ne h:\ y'_{h'}\geqq y_{h'}\big]\ \text{かつ}\ \exists h''\in\mathcal D:\ y'_{h''}\gt y_{h''}\Big\}\tag{28}
$$

$$
\mathcal P\ne\emptyset\tag{29}
$$

> (a) は、$$\mathcal P$$ の財（労働の種類と解釈）は生産単位では生産できないこと。(b) は、その労働の投入に制限がなければ、他の財の産出を減らさず投入を増やさずに、望まれる財 $$h''\in\mathcal D$$ の産出を増やせること。A13 は、望まれる財に対する労働の限界生産性がすべての種類で0になる制約要因の状況を排除する。

> A13 が成り立たない例：固定係数の技術で、ある労働を要する生産が補完的要素（土地、原材料、初期資本設備）も必要とする場合。初期の補完的資源が与えられると、雇用できる労働量に上限が生じる。労働供給は実質賃金に対して非弾力的で、賃金が0に近づいても供給が0になるとは限らないため、正の実質賃金では労働供給が最大雇用量を超えうる。賃金が0では供給は0になる（供給曲線が賃金0で不連続）。どちらでも均衡がなくなる。これは構造的失業に当たる。

**仮定を弱めた形（同時に弱められる）**

| 元の仮定 | 弱めた形 |
|---|---|
| III.b（式(6)） | III'.b：$$\forall x_i\in\hat X_i,\ \exists x_i'\in X_i:\ u_i(x_i')\gt u_i(x_i)$$ |
| VI（式(27)） | VI'：$$\mathcal D'\ne\emptyset$$。ここで $$\mathcal D'$$ は、式(26)の $$x_i\in X_i$$ を $$x_i\in\hat X_i$$ に置き換えた財の集合 |
| VII（式(29)） | VII'：$$\mathcal P'\ne\emptyset$$。ここで $$\mathcal P'$$ は、(28) の (a) を維持し、(b) の対象を $$y\in\hat Y=\{y\mid y\in Y,\ \exists x_i\in X_i\,(\forall i):\ z\leqq0\}$$ に置き換えた財の集合 |
| IV'.a（式(24)） | A14（IV''.a）：$$\exists x_i\in X_i:\ x_i\leqq\zeta_i\ \text{かつ、少なくとも1つの}\ h\in\mathcal D\cup\mathcal P\ \text{で}\ x_{hi}\lt\zeta_{hi}$$。A14 と A9 を合わせて IV'' と呼ぶ |

**定理II（§4.5）**：A1–A7、IV'（A9, A10）、A11–A13 を満たす経済には競争均衡が存在する。

**定理II'（§5.3.6）**：A1–A7、IV''（A9, A14）、A11、A12 を満たす経済には競争均衡が存在する（$$\mathcal P$$ は空でもよい）。

**証明のための制限された価格域**

$$\pi$$ を $$\mathcal P$$ の要素の数とし、$$0\lt\varepsilon\leqq\dfrac{1}{2\pi}$$ とする。

$$
P^{\varepsilon}=\{p\mid p\in P,\ p_h\geqq\varepsilon\ \ (\forall h\in\mathcal P)\}\tag{30}
$$

> 価格域を $$P$$ から $$P^{\varepsilon}$$ に縮めた抽象経済を $$E^{\varepsilon}$$ とする。$$P^{\varepsilon}$$ に限定する理由は、$$P$$ 全体では A10 から得られる「$$p\cdot x_i\lt p\cdot\zeta_i$$ となる $$x_i$$ の存在」と補助命題 (23) の条件が満たされない $$p$$ があるため。

**$$\zeta'$$ と有界領域**

$$
\zeta'_h=\zeta_h+\frac{1}{\pi}\sum_{k\in\mathcal P}(\zeta_k-\xi_k)\ \ (h=1,\dots,l),\qquad\text{ここで}\ \xi=\sum_{i=1}^{m}\xi_i\tag{31}
$$

> 原文は和の添字にも $$h$$ を用いるが、本記事では $$k$$ とした。$$\zeta'$$ は全成分がこの形のベクトル。

$$
E^{\varepsilon}\ \text{の均衡}\ (x_i^{\ast},y_j^{\ast},p^{\ast})\ \text{は}\ \underbrace{x^{\ast}-y^{\ast}\leqq\zeta'}_{\text{有界領域}},\ \ x_i^{\ast}\in X_i,\ y_j^{\ast}\in Y_j,\ p^{\ast}\in P^{\varepsilon}\ \text{を満たす}\tag{32}
$$

> $$\zeta$$ を $$\zeta'$$ に、$$P$$ を $$P^{\varepsilon}$$ に替えれば、定理Iの証明（1.4）と同じ構造になる。

| 記号・項目 | 意味 |
|---|---|
| $$\mathcal D$$ | すべての消費者に常に望まれる財の集合 |
| $$\mathcal P$$ | 生産的な労働（生産できず、増やせば望まれる財を増産できる）の集合 |
| $$\pi$$ | $$\mathcal P$$ の要素の数（円周率ではない） |
| $$\varepsilon$$ | $$P^{\varepsilon}$$ の価格の下限 |
| $$\hat Y$$ | 資源制約を満たす総生産計画の集合 |
| $$\mathcal D',\ \mathcal P'$$ | $$\mathcal D,\ \mathcal P$$ を弱めた形 |
| $$\zeta'$$ | 定理IIの証明で $$\zeta$$ に代わる総初期保有の上界 |

### 1.6 歴史的注記の式：Cassel体系

原論文第6章は、競争均衡の存在問題の歴史を Cassel の体系から説明する。ここでの記号（$$x_i,p_i,a_{ij},q_j,r_j$$）はこの節に限った記号で、1.0–1.5 の記号とは別である。

**Cassel の体系**

$$
x_i=f_i(p_1,\dots,p_m)\qquad(\text{最終財}\ i\ \text{の需要は全最終財価格の関数})\tag{33}
$$

$$
\sum_{j}a_{ij}\,q_j=p_i\qquad(\forall i)\quad(\text{全生産者の利潤ゼロ})\tag{34}
$$

$$
\sum_{i}a_{ij}\,x_i=r_j\qquad(\forall j)\quad(\text{本源的資源の需給一致})\tag{35}
$$

> $$x_i$$ は最終財 $$i$$ の需要、$$p_i$$ はその価格、$$a_{ij}$$ は最終財1単位の生産に使う本源的資源 $$j$$ の量（固定係数）、$$q_j$$ は資源 $$j$$ の価格、$$r_j$$ は資源 $$j$$ の初期の利用可能量。Neisser は解が負の価格や数量になりうることを、Stackelberg は財より資源の方が多い場合に (35) が方程式過多になることを指摘した。

**Zeuthen の修正（(35) を不等式に）**

$$
\sum_{i}a_{ij}\,x_i\leqq r_j\qquad(\forall j),\quad\text{ただし等号が成り立たない}\ j\ \text{では}\ q_j=0\tag{36}
$$

> 等式の減少は、対応する資源の価格が0であるという同数の方程式の追加で釣り合う。Schlesinger がこの形を採り、Wald が各種の特殊化のもとで研究した。(36) の「不等号なら価格0」は、条件 (14) の形（$$z^{\ast}\leqq0$$、$$p^{\ast}\cdot z^{\ast}=0$$）に対応する。

### 1.7 主要帰結

**主要式**

$$
\boxed{\begin{aligned}
&\text{定理I：}\ \underbrace{\text{A1–A9}}_{\text{I–IV}}\ \Longrightarrow\ \exists(x_1^{\ast},\dots,x_m^{\ast},y_1^{\ast},\dots,y_n^{\ast},p^{\ast})\ \text{が条件 (10),(11),(12),(14) を満たす}\\
&\text{定理II：}\ \underbrace{\text{A1–A7, A9, A10, A11, A12, A13}}_{\text{I–III, IV', V–VII}}\ \Longrightarrow\ \text{同じ競争均衡が存在}\\
&\text{定理II′：}\ \underbrace{\text{A1–A7, A9, A14, A11, A12}}_{\text{I–III, IV″, V, VI}}\ \Longrightarrow\ \text{同じ競争均衡が存在}
\end{aligned}}\tag{37}
$$

**定理の関係**

| 定理 | 初期保有に関する仮定 | 追加の仮定 | 要点 |
|---|---|---|---|
| I | 全員が全財を正の量だけ保有（A8） | なし | 簡潔な証明（1.3, 1.4）。非現実的だが、各個人が正の価格のつく資産か労働を持つことが必要という原理を示す |
| II | 少なくとも1種類の生産的な労働を供給できる（A10） | A11, A12, A13 | 初期保有の仮定を大幅に弱めるが、他方向の仮定が増え、証明が複雑になる |
| II' | $$\mathcal D\cup\mathcal P$$ の財を供給できる（A14） | A11, A12（A13 は不要） | 定理IIをやや一般化 |

**Wald との比較（原論文 §6）**

| 事項 | 原論文の記述 |
|---|---|
| Wald の第1定理（生産モデル） | 数学的には本論文の結果を含まず、含まれもしない。生産面では本論文のほうがはるかに一般（Wald は各過程で投入の比率が固定、産出は1つ）。需要面では Wald は需要関数に仮定を置き、本論文は効用最大化から導く。Wald は単一の消費単位を仮定するのに等しい |
| Wald の第2定理（純粋交換） | 限界効用が当該財のみの厳密な減少非負関数という仮定。本論文の定理II′の特殊ケース（$$\mathcal P$$ が空集合、$$\mathcal D$$ がすべての財） |
| Wald の反例（純粋交換で均衡が存在しない） | 3人の消費者。各個人が1種類の財しか初期保有せず、定理Iは適用できない。全員に望まれる財は1つだけで、うち2人はその財の初期保有が0なので、定理II′も適用できない |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| Walras の連立方程式が整合的であること（解の存在） | A1–A9 の定理Iなどの条件のもとで、条件 (10)–(14) をすべて満たす $$(x^{\ast},y^{\ast},p^{\ast})$$ が存在する |
| 自由財（供給過剰で価格が0の財） | (14) の $$p_h^{\ast}z_h^{\ast}=0$$。超過供給の財の価格は0 |
| 所得と支出の循環 | 所得は賃金・保有財の売却・配当からなり (11)、配当 $$\alpha_{ij}$$ の総和は1 (9)。予算制約は等号 (15) |
| 場所・時点をまたぐ取引と投資 | 財を場所・時点で区別して数えるので、将来の売買を含む投資計画が同じ枠組みに入る |
| 収穫逓減（市場で取引されない企業固有の要素） | 凸性 (1) は収穫非増加を許し、加法性を課さない |
| 構造的失業（A13 の不成立） | 補完的資源が制約となり、どの正の実質賃金でも労働供給が雇用可能量を超え、賃金0では供給が0になるため、均衡が存在しない |
| 均衡の存在条件が持つ意味 | 均衡では各個人が、正の価格のつく資産か労働を持たなければならない（A8, A10 の役割） |

## 3. 整理している点 {#sec3}

- 生産・交換・消費を統合した1つのモデルで、所得の循環（利潤配当を含む）を考慮して競争均衡の存在を示している。
- 競争経済を、価格を選ぶ架空の市場参加者を加えた抽象経済（ゲームの一般化）に写し、その均衡点の存在補題（Nash の定理の一般化）から証明している。
- 生産者の技術と消費者の選好への仮定が Wald より弱く（固定係数や需要関数の仮定を置かず、凸性と連続性などに基づく）、仮定の役割を、定理Iと定理IIの2段階で明示している。

## 4. 対象外の現象 {#sec4}

- 競争均衡の一意性は扱わない（Wald が研究したが本論文では行っていない）。
- 競争均衡の安定性は扱わない。安定性の研究には、競争市場の動学の特定化と均衡の定義が必要で、本論文はそこに進まない。
- 均衡の厚生的な性質（パレート最適性と、パレート最適な配分の競争均衡による実現）は、周知のものとして言及するにとどめ、本論文では証明しない。
- 非凸な生産集合（収穫逓増）や、飽和点のある選好は、仮定により除外されている（III.b は達成可能な範囲に限って弱められる）。
- 不完全競争は扱わない（全主体が価格を所与として行動すると仮定している）。
- 本論文のモデルは、主体の選択集合や利得が他の主体の行動に直接影響される外部性、不確実性は明示していない。財を区別する次元は場所と時点で、状態による区別は論文に現れない。
- 仮定 A8 は論文自身が非現実的と認めており、現実の経済で成立していることを主張しない。

## 5. 主要文献・関連論文 {#sec5}

- **[均衡存在問題の原型：本論文が直接比較する先行研究]** Wald, A. (1951). On Some Systems of Equations of Mathematical Economics (translated from the 1936 German original in *Zeitschrift für Nationalökonomie*). *Econometrica*, 19(4), 368–403.
  - **位置づけ**: Cassel 体系を受けて競争均衡の存在を初めて数学的に扱った研究。本論文はこれを一般化・統合する位置にある（原論文 §6）。
- **[金字塔的論文]** Nash, J. F. (1950). Equilibrium Points in N-Person Games. *Proceedings of the National Academy of Sciences*, 36(1), 48–49.
  - **位置づけ**: ゲームの均衡点の存在を示した基礎論文。本論文の補題（式(18)）はこの定理の一般化。
- **[方法の直接の源泉]** Debreu, G. (1952). A Social Equilibrium Existence Theorem. *Proceedings of the National Academy of Sciences*, 38(10), 886–893.
  - **位置づけ**: 抽象経済（社会系）の均衡点の存在を示した論文。本論文の補題はその特別な場合である。
- **[数学的基礎]** Kakutani, S. (1941). A Generalization of Brouwer's Fixed Point Theorem. *Duke Mathematical Journal*, 8(3), 457–459.
  - **位置づけ**: 集合値写像の不動点定理。Nash や Debreu (1952) の均衡存在証明が最終的に依拠する道具として、一般均衡の存在証明の標準的な土台になった。
- **[同時期の独立な存在証明]** McKenzie, L. W. (1954). On Equilibrium in Graham's Model of World Trade and Other Competitive Systems. *Econometrica*, 22(2), 147–161.
  - **位置づけ**: 本論文と同じ年に同じ雑誌に掲載された、競争均衡の存在についての独立した研究。

---

## 付録：導出手順 {#appendix}

付録の記号は本文と一致させている。原論文の証明に沿い、原論文が略している中間の変形や不等号の向きの確認を補った箇所には（補）と付す。

### A.0 構造図

```
定理I（式(37)）
 ├ 抽象経済の補題 (18)  ← Nash (1950), Debreu (1952)
 ├ E の構成 (19)(20)
 ├ A.2  条件4の読み替えと予算等号 (15)
 ├ A.3  E の均衡点 ⇒ 競争均衡 (10)–(14)
 ├ A.4  X̂_i, Ŷ_j の有界性 (21) → 立方体 C (22)
 ├ A.5  Ẽ への補題の適用（連続性 (23)）
 └ A.6  Ẽ の均衡点 ⇒ E の均衡点

定理II（式(37)）
 └ A.7  E^ε の構成 (30)–(32) → Ẽ^ε の均衡
        ├ 場合1：全 h∈𝒫 で p_h^* > ε  ⇒ E の均衡
        └ 場合2：ε→0 の極限で矛盾 (A.8)
```

### A.1 使う道具

**T1　縮小（収穫非増加）**：$$y_j\in Y_j$$、$$0\leqq\lambda\leqq1$$ なら、$$0\in Y_j$$ と凸性から $$\lambda y_j+(1-\lambda)0\in Y_j$$。

**T2　部分列の選択（ボルツァーノ–ワイエルシュトラス）**：有界な点列は収束する部分列をもつ。閉集合の点列の極限はその集合に属する。

**T3　総和を取る**：$$\sum_i\alpha_{ij}=1$$（式(9)）を使って個人の予算式を足し合わせ、$$p^{\ast}\cdot z^{\ast}$$ に結びつける。

**T4　凸結合による背理法**：均衡点が行動集合の内点なら、均衡点とよりよい点の凸結合は、均衡点に十分近い範囲で行動集合に入る。それが利得を改善するなら均衡に反する。

**T5　線形関数の最大化と単位ベクトル**：$$\delta^{h}\in P$$ を使い、$$p^{\ast}$$ が $$p\cdot z^{\ast}$$ を最大化することから $$z_h^{\ast}\leqq p^{\ast}\cdot z^{\ast}$$ を得る。

**T6　抽象経済の補題**：式(18)。

### A.2 条件4の読み替えと予算等号

**Step 1　符号の確認（補）**　$$p_h^{\ast}\geqq0$$、$$z_h^{\ast}\leqq0$$ より各項 $$p_h^{\ast}z_h^{\ast}\leqq0$$。非正の項の和が0になるのは各項が0のときに限る。

$$
p^{\ast}\cdot z^{\ast}=\sum_{h}p_h^{\ast}z_h^{\ast}=0\ \iff\ p_h^{\ast}z_h^{\ast}=0\ \ (\forall h)\tag{38}
$$

つまり各 $$h$$ で $$z_h^{\ast}=0$$、または $$z_h^{\ast}\lt0$$ かつ $$p_h^{\ast}=0$$ → 条件4（式(14)）の正当化。

**Step 2　非飽和の使用**　A6（式(6)）より、$$x_i^{\ast}$$ に対して $$u_i(x_i')\gt u_i(x_i^{\ast})$$ となる $$x_i'\in X_i$$ がある。$$0\lt t\lt1$$ の $$t$$ を小さくとり、A7（式(7)）を $$x_i'$$ と $$x_i^{\ast}$$ に適用すると、

$$
u_i[tx_i'+(1-t)x_i^{\ast}]\gt u_i(x_i^{\ast})\tag{39}
$$

$$t\to0$$ とすると、$$x_i^{\ast}$$ のどの近傍にも $$x_i^{\ast}$$ より選好される $$X_i$$ の点がある。

**Step 3　背理法**　(11) より $$p^{\ast}\cdot x_i^{\ast}\leqq p^{\ast}\cdot\zeta_i+\sum_j\alpha_{ij}p^{\ast}\cdot y_j^{\ast}$$。ここで強い不等号が成り立つとする。すると近傍の、予算制約をなお満たす選好される点を選べて、$$x_i^{\ast}$$ が条件 (11) の最大化点であることに反する。ゆえに等号が成り立つ → 式(15)。

**Step 4　含意（補）**　各個人は潜在所得をすべて使う。$$p_h^{\ast}\gt0$$ の財については、初期保有を市場から引き揚げることはできない。

**準凹性についての補足（脚注）**

A7（式(7)）が準凹性を導くことを示す。$$u_i(x^{n})\geqq\alpha$$（$$n=1,2$$）、$$0\lt t\lt1$$、$$x^{3}=tx^{1}+(1-t)x^{2}$$ とし、一般性を失わず $$u_i(x^{1})\geqq u_i(x^{2})$$ とする。

- 厳密な不等号 $$u_i(x^{1})\gt u_i(x^{2})$$ なら、(7) より $$u_i(x^{3})\gt u_i(x^{2})\geqq\alpha$$。
- $$u_i(x^{1})=u_i(x^{2})$$ かつ $$u_i(x^{3})\lt u_i(x^{2})$$ と仮定する。A5（連続性）から、$$x^{3}$$ と $$x^{1}$$ の狭義の凸結合 $$x^{4}$$ で、$$u_i(x^{3})\lt u_i(x^{4})\lt u_i(x^{1})=u_i(x^{2})$$ となるものがある。$$x^{3}$$ は $$x^{4}$$ と $$x^{2}$$ の狭義の凸結合なので、$$u_i(x^{2})\gt u_i(x^{4})$$ と (7) から $$u_i(x^{3})\gt u_i(x^{4})$$。これは仮定に矛盾する。よって $$u_i(x^{3})\geqq u_i(x^{2})\geqq\alpha$$。

逆は成り立たない。狭義準凹は (7) を導く（$$u_i(x_i)\gt u_i(x_i')$$ は $$u_i(x_i)\geqq u_i(x_i')$$ を含むので）が、(7) は狭義準凹より弱い。反例は $$u_i(x_i)=\sum_hx_{hi}$$（(7) を満たすが線分上で等しい値をとる）。

**確認**　$$l=1$$、$$u_i(x_i)=x_i$$ で、$$p=(1)$$、$$x_i^{\ast}$$ が予算上限のとき、(15) は等号。すなわち予算に余りがあれば $$x_i^{\ast}$$ より多い消費が可能で、最大化に反する。

| 入力・使う道具 | 内容 |
|---|---|
| (6), (7), (11) | 非飽和、凸性、効用最大化 |
| T4 | 凸結合による背理法 |
| 出力 | (38), (39), (15) |

### A.3 E の均衡点は競争均衡である

以下、$$E$$ の均衡値に $$^{\ast}$$ を付ける。

**Step 1　配当の置換は均衡で影響しない**　$$E$$ の均衡では、$$y_j^{\ast}$$ は $$Y_j$$ 上で $$p^{\ast}\cdot y_j$$ を最大化する。A1 の $$0\in Y_j$$ より、

$$
p^{\ast}\cdot y_j^{\ast}\geqq p^{\ast}\cdot0=0\tag{40}
$$

A9（$$\alpha_{ij}\geqq0$$）より $$\sum_j\alpha_{ij}p^{\ast}\cdot y_j^{\ast}\geqq0$$ だから、$$\max[0,\sum_j\alpha_{ij}p^{\ast}\cdot y_j^{\ast}]=\sum_j\alpha_{ij}p^{\ast}\cdot y_j^{\ast}$$。したがって、$$A_i(\bar x_i^{\ast})$$ は (11) の予算集合と一致する。

**Step 2　条件1、2、3**　条件1は生産単位の均衡の定義から、条件3は市場参加者の行動集合が $$P$$ であることから直ちに出る。条件2は Step 1 と消費単位の均衡の定義から出る。

**Step 3　Walras 法則**　A.2 で示したとおり、条件2、A6、A7 から式(15)が出る。(15) を $$i$$ について足し、$$\sum_i\alpha_{ij}=1$$（式(9)）を使うと、

$$
p^{\ast}\cdot x^{\ast}=p^{\ast}\cdot\zeta+p^{\ast}\cdot y^{\ast}\ \Longrightarrow\ p^{\ast}\cdot z^{\ast}=0\tag{41}
$$

**Step 4　超過需要の符号**　$$\delta^{h}\in P$$ なので、市場参加者の均衡条件（$$p^{\ast}$$ は $$p\cdot z^{\ast}$$ を $$P$$ 上で最大化）から、

$$
0=p^{\ast}\cdot z^{\ast}\geqq\delta^{h}\cdot z^{\ast}=z_h^{\ast}\qquad\Longrightarrow\ z^{\ast}\leqq0\tag{42}
$$

(41) と (42) で条件4。以上で、$$E$$ の均衡点は条件1–4を満たす（競争均衡）。逆は定義から明らか。

**確認**　$$l=1$$、$$z^{\ast}\lt0$$ のとき、(42) は $$p^{\ast}\cdot z^{\ast}=0$$ と合わせて $$p^{\ast}=0$$ を要求する（$$P=\{p\mid p=1\}$$ では $$p^{\ast}=1$$ なので $$z^{\ast}\lt0$$ は起こらない）。

| 入力・使う道具 | 内容 |
|---|---|
| (9), (10), (11), (15), (1) | 配当の符号、利潤最大化、予算等号、0を含む生産集合 |
| T3, T5 | 総和、単位ベクトルによる最大化条件の読み替え |
| 出力 | (40), (41), (42) |

### A.4 有界性（§3.3.0–3.3.3）

**Step 1　背理法の設定**　$$\hat Y_1$$ が非有界と仮定する。すると次を満たす点列 $$y_j^{k}\in Y_j$$、$$x_i^{k}\in X_i$$ が存在する。

$$
\lim_{k\to\infty}|y_1^{k}|=\infty,\qquad \sum_{j=1}^{n}y_j^{k}\geqq\sum_{i=1}^{m}x_i^{k}-\zeta\tag{43}
$$

**Step 2　下界の使用**　A4（式(4)）の下界を総和して $$\xi=\sum_i\xi_i$$ とすると、$$\sum_ix_i^{k}\geqq\xi$$ なので、$$\sum_jy_j^{k}\geqq\xi-\zeta$$。

**Step 3　縮小**　$$\mu^{k}=\max_j|y_j^{k}|$$ とおく。$$\mu^{k}\to\infty$$ で、$$k$$ が十分大きければ $$\mu^{k}\geqq1$$。A1（T1）より $$(1/\mu^{k})y_j^{k}+(1-1/\mu^{k})0\in Y_j$$。(43) と Step 2 から、

$$
\sum_{j=1}^{n}\frac{y_j^{k}}{\mu^{k}}\geqq\frac{\xi-\zeta}{\mu^{k}},\qquad \frac{y_j^{k}}{\mu^{k}}\in Y_j,\qquad \Big|\frac{y_j^{k}}{\mu^{k}}\Big|\leqq1\tag{44}
$$

**Step 3の後半　極限**　各 $$j$$ で $$|y_j^{k}/\mu^{k}|\leqq1$$ なので、T2 により部分列 $$\{k_q\}$$ をとって、すべての $$j$$ で $$y_j^{k_q}/\mu^{k_q}\to y_j^{0}$$ とできる。$$Y_j$$ は閉なので $$y_j^{0}\in Y_j$$、右辺は0に収束するので、

$$
\sum_{j=1}^{n}y_j^{0}\geqq0,\qquad y_j^{0}\in Y_j\tag{45}
$$

**Step 4　A2 と A3 の適用**　(45) の左辺は $$Y$$ の元で、$$\Omega$$ にも属する。A2（式(2)）より $$\sum_jy_j^{0}=0$$。したがって任意の $$j'$$ で、

$$
\sum_{j\ne j'}y_j^{0}=-y_{j'}^{0}\tag{46}
$$

すべての $$j$$ で $$0\in Y_j$$ なので、左辺も $$y_{j'}^{0}$$ も $$Y$$ に属する。ゆえに右辺は $$-Y$$ に属し、等式の両辺は $$Y\cap(-Y)$$ に属する。A3（式(3)）より $$y_{j'}^{0}=0$$（すべての $$j'$$）。

**Step 5　矛盾**　$$y_j^{k_q}/\mu^{k_q}\to y_j^{0}=0$$ だから、固定した $$j$$ について $$|y_j^{k_q}|=\mu^{k_q}$$ となる $$q$$ は高々有限個（補）。しかし $$\mu^{k}$$ の定義により、各 $$k$$ について等号が成り立つ $$j$$ が少なくとも1つあるので、ある $$j$$ では無限個の $$q$$ で成り立つ。矛盾する。ゆえに $$\hat Y_1$$ は有界。同じ議論で、すべての $$j$$ で $$\hat Y_j$$ は有界。

**Step 6　$$\hat X_i$$ の有界性**　$$x_i\in\hat X_i$$ とする。定義より $$x_{i'}\in X_{i'}$$、$$y_j\in Y_j$$ が存在して、

$$
\xi_i\leqq x_i\leqq\sum_{j=1}^{n}y_j-\sum_{i'\ne i}x_{i'}+\zeta\leqq\sum_{j=1}^{n}y_j-\sum_{i'\ne i}\xi_{i'}+\zeta\tag{47}
$$

さらに $$y_j\in\hat Y_j$$ で、Step 5 より有界。右辺は有界なので $$\hat X_i$$ は有界。

**Step 7　立方体の選択**　正の実数 $$c$$ を、立方体 $$C=\{x\mid|x_h|\leqq c\ (\forall h)\}$$ が、すべての $$\hat X_i$$ と $$\hat Y_j$$ を内部に含むようにとる。$$\tilde X_i=X_i\cap C$$、$$\tilde Y_j=Y_j\cap C$$（式(22)）。

**確認**　$$n=1$$、$$Y_1=\{y\mid y=-s\,e,\ s\in[0,1]\}$$（投入のみ）のとき、$$\hat Y_1\subset Y_1$$ は有界（コンパクト）。A2 は $$Y\cap\Omega=\{0\}$$ を要し、A3 は $$y\ne0$$ のとき $$-y\notin Y$$ を要する。この例では $$-y\gt0$$（$$e\gt0$$）なので $$-y\in\Omega$$ で、$$-y\in Y$$ なら A2 に反する。よって A3 を満たす。

| 入力・使う道具 | 内容 |
|---|---|
| (1), (2), (3), (4) | 閉凸性、A2、A3、下界 |
| T1, T2 | 縮小、部分列 |
| 出力 | (43)–(47) と立方体 $$C$$ |

### A.5 Ẽ への補題の適用（§3.3.4–3.3.5）

**Step 1　コンパクト凸性**　A1・A4 より $$X_i,Y_j$$ は閉凸集合、$$C$$ はコンパクト凸なので $$\tilde X_i,\tilde Y_j$$ はコンパクト凸。$$P$$ も明らかにコンパクト凸（(L1)）。

**Step 2　利得関数**　消費単位では、$$u_i$$ の連続性と準凹性は A5 と A7（および準凹性の導出、A.2）による。生産単位と市場参加者の利得 $$p\cdot y_j$$、$$p\cdot z$$ は線形なので連続かつ準凹（(L2)）。

**Step 3　選択可能集合**　生産単位と市場参加者では $$Y_j$$ と $$P$$ は定数なので自明に連続で、グラフの閉包は $$\tilde{\mathfrak A}=\tilde X_1\times\cdots\times\tilde X_m\times\tilde Y_1\times\cdots\times\tilde Y_n\times P$$ の閉包。$$Y_j,P$$ は凸かつ空でない。消費単位では、$$\tilde A_i(\bar x_i)$$ は $$x_i$$ に関する線形不等式で定義されるので凸。空でないことは次による。A8 の $$x_i'\leqq\zeta_i$$（$$x_i'\in X_i$$）をとり、$$y_j'=0$$ とすると、

$$
\sum_ix_i'-\sum_jy_j'-\zeta\leqq0\ \ (\because x_i'\leqq\zeta_i)
$$

より $$x_i'\in\hat X_i\subset C$$。さらに A.3 Step 1 の議論（3.1.2）から $$x_i'\in A_i(\bar x_i)$$ なので、$$x_i'\in\tilde A_i(\bar x_i)$$。予算制約は2つの連続関数の間の弱い不等式なので、グラフは閉。

**Step 4　連続性の証明（補助命題 (23)）**　$$r_i=p\cdot\zeta_i+\max[0,\sum_j\alpha_{ij}p\cdot y_j]$$ とおく。$$\bar x_i^{k}\to\bar x_i$$ のとき、$$p^{k}\to p$$、$$r_i^{k}\to r_i$$。点 $$x_i\in\tilde A_i(\bar x_i)$$ をとると $$x_i\in\tilde X_i$$、$$p\cdot x_i\leqq r_i$$。

- (a) $$p\cdot x_i\lt r_i$$ の場合：$$k$$ が十分大きければ $$p^{k}\cdot x_i\lt r_i^{k}$$ なので $$x_i\in\tilde A_i(\bar x_i^{k})$$。$$x_i^{k}=x_i$$ ととればよい。
- (b) $$p\cdot x_i=r_i$$ の場合：仮定 (23) の前件から、$$x_i'\in\tilde X_i$$ を $$p\cdot x_i'\lt p\cdot\zeta_i\leqq r_i$$ となるようにとる。$$k$$ が大きければ $$p^{k}\cdot x_i'\lt r_i^{k}$$。$$x_i(\lambda)=\lambda x_i+(1-\lambda)x_i'$$ とおくと、$$\tilde X_i$$ の凸性から $$x_i(\lambda)\in\tilde X_i$$。$$x_i(\lambda)\in\tilde A_i(\bar x_i^{k})$$ となるには $$p^{k}\cdot[\lambda x_i+(1-\lambda)x_i']\leqq r_i^{k}$$、つまり（分母は $$p\cdot x_i=r_i\gt p\cdot x_i'$$ より $$k$$ 大で正）

$$
\lambda\leqq\frac{r_i^{k}-p^{k}\cdot x_i'}{p^{k}\cdot x_i-p^{k}\cdot x_i'},\qquad \lambda^{k}=\min\Big[1,\ \frac{r_i^{k}-p^{k}\cdot x_i'}{p^{k}\cdot x_i-p^{k}\cdot x_i'}\Big]\tag{48}
$$

$$\lambda^{k}\gt0$$（$$k$$ 大）、$$x_i(\lambda^{k})\in\tilde A_i(\bar x_i^{k})$$。$$\lim r_i^{k}=r_i=\lim p^{k}\cdot x_i$$ より $$\lambda^{k}\to1$$、$$x_i(\lambda^{k})\to x_i$$。以上で連続。

**Step 5　A8 のもとでの成立**　A8 が成り立てば、任意の $$p\in P$$（$$p\geqq0$$、$$\sum p_h=1$$）と $$y_j\in\tilde Y_j$$ について、$$x_i'\lt\zeta_i$$ より $$p\cdot x_i'\lt p\cdot\zeta_i$$ なので前件が成り立つ。

以上で (L1)–(L4) がすべて満たされ、補題 (18) により $$\tilde E$$ は均衡点 $$(x_1^{\ast},\dots,x_m^{\ast},y_1^{\ast},\dots,y_n^{\ast},p^{\ast})$$ をもつ。

| 入力・使う道具 | 内容 |
|---|---|
| (1), (4)–(9), (22) | 閉凸性、連続性、準凹性、A8、A9、立方体 |
| T6（式(18)） | 補題 |
| 出力 | (48)、$$\tilde E$$ の均衡点の存在 |

### A.6 Ẽ の均衡点は E の均衡点であり、定理Iが成り立つ（§3.4）

**Step 1　配当の置換**　A1 と $$C$$ の定義から $$0\in\tilde Y_j$$。A.3 Step 1 と同じく $$\max[0,\sum_j\alpha_{ij}p^{\ast}\cdot y_j^{\ast}]=\sum_j\alpha_{ij}p^{\ast}\cdot y_j^{\ast}$$。

**Step 2　超過需要**　$$\tilde A_i$$ の定義より $$p^{\ast}\cdot x_i^{\ast}\leqq p^{\ast}\cdot\zeta_i+\sum_j\alpha_{ij}p^{\ast}\cdot y_j^{\ast}$$。$$i$$ について足し、$$\sum_i\alpha_{ij}=1$$ を使うと、

$$
p^{\ast}\cdot x^{\ast}\leqq p^{\ast}\cdot\zeta+p^{\ast}\cdot y^{\ast}\ \Longrightarrow\ p^{\ast}\cdot z^{\ast}\leqq0\tag{49}
$$

$$p^{\ast}$$ は $$p\in P$$ について $$p\cdot z^{\ast}$$ を最大化するので、A.3 Step 4 と同じく $$z_h^{\ast}\leqq p^{\ast}\cdot z^{\ast}\leqq0$$。ゆえに $$z^{\ast}\leqq0$$。

**Step 3　内点性**　$$z^{\ast}\leqq0$$ より $$x_i^{\ast}\in\hat X_i$$、$$y_j^{\ast}\in\hat Y_j$$（定義(21)）。$$C$$ の選び方（A.4 Step 7）から、$$x_i^{\ast},y_j^{\ast}$$ は $$C$$ の内点。

**Step 4　消費者の最大化（T4）**　ある $$x_i'\in A_i(\bar x_i^{\ast})$$ で $$u_i(x_i')\gt u_i(x_i^{\ast})$$ とする。A7 より $$0\lt t\lt1$$ で $$u_i[tx_i'+(1-t)x_i^{\ast}]\gt u_i(x_i^{\ast})$$。$$x_i^{\ast}$$ は $$C$$ の内点なので、$$t$$ が十分小さければ $$tx_i'+(1-t)x_i^{\ast}\in C$$。$$A_i(\bar x_i^{\ast})$$ は凸で $$x_i',x_i^{\ast}$$ を含むから、この凸結合も $$A_i(\bar x_i^{\ast})$$ に属し、よって $$\tilde A_i(\bar x_i^{\ast})$$ に属する。これは $$x_i^{\ast}$$ が $$\tilde E$$ の均衡値であることに反する。ゆえに、$$x_i^{\ast}$$ は $$A_i(\bar x_i^{\ast})$$ 上で $$u_i$$ を最大化する。

**Step 5　生産者の最大化**　ある $$y_j'\in Y_j$$ で $$p^{\ast}\cdot y_j'\gt p^{\ast}\cdot y_j^{\ast}$$ とする。$$p^{\ast}\cdot[ty_j'+(1-t)y_j^{\ast}]\gt p^{\ast}\cdot y_j^{\ast}$$（$$0\lt t\lt1$$）。$$y_j^{\ast}$$ は $$C$$ の内点なので、$$t$$ が小さければ凸結合は $$\tilde Y_j$$ に属する。$$\tilde E$$ の均衡に反する。ゆえに $$y_j^{\ast}$$ は $$Y_j$$ 上で $$p^{\ast}\cdot y_j$$ を最大化する。

**Step 6　価格**　$$p^{\ast}$$ が $$P$$ 上で $$p\cdot z^{\ast}$$ を最大化することは、価格の定義域が $$E$$ と $$\tilde E$$ で同じなので、そのまま成り立つ。

以上で、$$\tilde E$$ の均衡点は $$E$$ の均衡点でもあり、A.3 により競争均衡である。**定理Iが示された。**

**確認**　$$m=1$$、$$n=0$$、$$l=1$$ で、$$X_1=[0,\infty)$$、$$u_1(x)=x$$、$$\zeta_1=1$$ とすると、A6 を満たす（$$x'=x+1$$）。このとき $$z=x-\zeta$$ で、予算 $$px\leqq p\cdot1$$ より、$$P=\{1\}$$ では $$x^{\ast}=1$$、$$z^{\ast}=0$$、$$p^{\ast}\cdot z^{\ast}=0$$ となり、条件1–4を満たす（競争均衡が存在する）。

| 入力・使う道具 | 内容 |
|---|---|
| (7), (10), (11), (21), (22) | 凸性、各最大化条件、内点性 |
| T3, T4, T5 | 総和、凸結合による背理法、単位ベクトル |
| 出力 | (49)、定理I |

### A.7 定理IIの証明の準備（§5.0–5.2）

定理IIは、$$E$$ の価格域を $$P^{\varepsilon}$$ に縮めた $$E^{\varepsilon}$$ を使う。

**Step 1　予算に余裕のある点（A10）**　A10（式(24)）から、$$x_i\in X_i$$ を $$x_{hi}\leqq\zeta_{hi}$$（全 $$h$$）かつ $$x_{h'i}\lt\zeta_{h'i}$$（ある $$h'\in\mathcal P$$）のようにとれる。$$p\in P^{\varepsilon}$$ なら $$p_{h'}\geqq\varepsilon\gt0$$ で、

$$
p\cdot(\zeta_i-x_i)=\sum_hp_h(\zeta_{hi}-x_{hi})\geqq p_{h'}(\zeta_{h'i}-x_{h'i})\gt0\ \Longrightarrow\ \exists x_i\in X_i:\ p\cdot x_i\lt p\cdot\zeta_i\tag{50}
$$

これで、補助命題 (23) の前件が $$P^{\varepsilon}$$ 上で満たされる。

**Step 2　$$E^{\varepsilon}$$ の均衡の超過需要の評価**　$$E^{\varepsilon}$$ の均衡 $$(x_i^{\ast},y_j^{\ast},p^{\ast})$$ について、A.6 Step 2 と同じく、$$p^{\ast}\cdot z^{\ast}\leqq0$$。$$p^{\ast}$$ は $$P^{\varepsilon}$$ 上で $$p\cdot z^{\ast}$$ を最大化するので、すべての $$p\in P^{\varepsilon}$$ で $$p\cdot z^{\ast}\leqq0$$。これを $$z=x-y-\zeta$$ で書き直すと、任意の $$h'$$ で、

$$
p_{h'}z_{h'}^{\ast}\leqq\sum_{h\ne h'}p_h(\zeta_h-x_h^{\ast}+y_h^{\ast})\tag{51}
$$

**Step 3　$$h\in\mathcal P$$ での不等式**　(28) の (a) より $$h\in\mathcal P$$ なら $$y_h^{\ast}\leqq0$$。A4 の下界の総和より $$x_h^{\ast}\geqq\xi_h$$。よって、

$$
x_h^{\ast}-y_h^{\ast}\geqq x_h^{\ast}\geqq\xi_h\qquad(h\in\mathcal P)\tag{52}
$$

**Step 4　価格ベクトルの選択**　任意の $$h'$$ に対し、$$p$$ を、$$p_h=\varepsilon$$（$$h\in\mathcal P,\ h\ne h'$$）、$$p_h=0$$（$$h\notin\mathcal P,\ h\ne h'$$）、$$p_{h'}=1-\sum_{h\ne h'}p_h$$ と定める。$$h'\in\mathcal P$$ なら $$p_{h'}=1-(\pi-1)\varepsilon$$（$$\varepsilon\leqq\frac{1}{2\pi}$$ なので $$\varepsilon$$ 以上）、$$h'\notin\mathcal P$$ なら $$p_{h'}=1-\pi\varepsilon$$。これを (51) に代入し、(52)（$$\zeta_h-x_h^{\ast}+y_h^{\ast}\leqq\zeta_h-\xi_h$$）を使うと、

$$
\begin{cases}
h'\in\mathcal P:\ [1-(\pi-1)\varepsilon]\,z_{h'}^{\ast}\leqq\varepsilon\displaystyle\sum_{h\in\mathcal P,\,h\ne h'}(\zeta_h-\xi_h)\\[2mm]
h'\notin\mathcal P:\ (1-\pi\varepsilon)\,z_{h'}^{\ast}\leqq\varepsilon\displaystyle\sum_{h\in\mathcal P}(\zeta_h-\xi_h)
\end{cases}\tag{53}
$$

**Step 5　$$z^{\ast}$$ の上界**　$$0\lt\varepsilon\leqq\frac{1}{2\pi}$$ なら $$1-\pi\varepsilon\gt0$$、$$1-(\pi-1)\varepsilon\gt0$$ で、$$1-(\pi-1)\varepsilon\gt1-\pi\varepsilon$$ だから $$\varepsilon/[1-(\pi-1)\varepsilon]\lt\varepsilon/(1-\pi\varepsilon)$$（補）。A10 と A4 から $$\xi_i\leqq x_i\leqq\zeta_i$$ なので、各 $$h$$ で $$\zeta_h-\xi_h\geqq0$$。(53) の第1式を $$1-(\pi-1)\varepsilon$$ で割ると、

$$
z_{h'}^{\ast}\leqq\frac{\varepsilon}{1-(\pi-1)\varepsilon}\sum_{h\in\mathcal P,\,h\ne h'}(\zeta_h-\xi_h)\leqq\frac{\varepsilon}{1-\pi\varepsilon}\sum_{h\in\mathcal P}(\zeta_h-\xi_h)\leqq\frac{1}{\pi}\sum_{h\in\mathcal P}(\zeta_h-\xi_h)\tag{54}
$$

最後の不等号は、$$\varepsilon\leqq\frac{1}{2\pi}$$ から $$\pi\varepsilon\leqq1-\pi\varepsilon$$、よって $$\frac{\varepsilon}{1-\pi\varepsilon}\leqq\frac{1}{\pi}$$（補）。$$h'\notin\mathcal P$$ の第2式も、$$1-\pi\varepsilon$$ で割って同じ上界になる。$$z=x-y-\zeta$$ より、全 $$h$$ で $$x_h^{\ast}-y_h^{\ast}\leqq\zeta'_h$$ すなわち (32)。

**Step 6　有界化**　(32) の領域は、定理Iの証明の領域で $$\zeta$$ を $$\zeta'$$ に替えたものと同じ形。そこで $$\hat X_i,\hat Y_j$$（式(21)）を $$\zeta'$$ で作り直した $$\hat X_i',\hat Y_j'$$ を定義すると、A.4 の議論がそのまま使える（有界）。立方体 $$C'$$ を $$\hat X_i',\hat Y_j'$$ を内部に含むようにとり、$$\tilde X_i'=X_i\cap C'$$、$$\tilde Y_j'=Y_j\cap C'$$ とする。抽象経済 $$\tilde E^{\varepsilon}$$ は $$E^{\varepsilon}$$ の $$X_i,Y_j$$ を $$\tilde X_i',\tilde Y_j'$$ に置き換えたもの。$$\tilde A_i'$$ の連続性は、補助命題 (23) と (50) による（A.5 Step 4）。他の補題の条件は A.5 と同じ。ゆえに $$0\lt\varepsilon\leqq\frac{1}{2\pi}$$ の各 $$\varepsilon$$ で、$$\tilde E^{\varepsilon}$$ は均衡点をもつ。

**Step 7　$$\tilde E^{\varepsilon}$$ の均衡は $$E^{\varepsilon}$$ の均衡**　A.6 Step 1–5 と同じ議論を、$$\zeta'$$、$$C'$$、$$P^{\varepsilon}$$ で繰り返す。(A.6 Step 3 の内点性は A.7 Step 6 の $$C'$$ による。) 結果、$$x_i^{\ast}$$ は $$A_i(\bar x_i^{\ast})$$ 上で $$u_i$$ を、$$y_j^{\ast}$$ は $$Y_j$$ 上で $$p^{\ast}\cdot y_j$$ を最大化し、$$p^{\ast}$$ は $$P^{\varepsilon}$$ 上で $$p\cdot z^{\ast}$$ を最大化する。

**確認**　$$\pi=1$$（$$\mathcal P=\{h_0\}$$）のとき、(53) の第1式は $$z_{h_0}^{\ast}\leqq0$$（右辺の和が空）、(54) の最右辺は $$\zeta_{h_0}-\xi_{h_0}\geqq0$$ で整合する。また $$P^{\varepsilon}$$ の非空性：$$\pi\varepsilon\leqq\frac12\lt1$$ なので、$$p_h=\varepsilon$$（$$h\in\mathcal P$$）、残りを他の財に配分した価格ベクトルが存在する。

| 入力・使う道具 | 内容 |
|---|---|
| (24), (28), (30) | A10、𝒫の定義、$$P^{\varepsilon}$$ |
| (4), (23) | 下界、連続性の補助命題 |
| 出力 | (50)–(54)、(32) と $$E^{\varepsilon}$$ の均衡の存在 |

### A.8 定理IIの証明：$$E^{\varepsilon}$$ の均衡から $$E$$ の均衡へ（§5.3）

**場合1　ある $$\varepsilon$$ で、すべての $$h\in\mathcal P$$ について $$p_h^{\ast}\gt\varepsilon$$**　任意の $$p\in P$$ と $$0\lt t\leqq1$$ で $$p'=tp+(1-t)p^{\ast}$$ とおく。$$p\cdot z^{\ast}\gt p^{\ast}\cdot z^{\ast}$$ なら $$p'\cdot z^{\ast}\gt p^{\ast}\cdot z^{\ast}$$。$$t$$ が十分小さければ $$p'\in P^{\varepsilon}$$ で、$$p^{\ast}$$ が $$P^{\varepsilon}$$ 上で $$p\cdot z^{\ast}$$ を最大化することに反する。よって $$p^{\ast}$$ は $$P$$ 上で $$p\cdot z^{\ast}$$ を最大化する。A.7 Step 7 の結果と合わせて $$E$$ の均衡点であり、A.3 により競争均衡が存在する。

**場合2　どの $$\varepsilon$$ でも、ある $$h\in\mathcal P$$ で $$p_h^{\ast}=\varepsilon$$**　これが矛盾を導くことを示す。

**Step 1　極限をとる**　$$\varepsilon_k\to0$$ の列に対し、$$E^{\varepsilon_k}$$ の均衡 $$(x_i^{k},y_j^{k},p^{k})$$ をとる。均衡は $$C'$$ の中にあり、$$P$$ もコンパクトなので、T2 により収束する部分列をとって、$$x_i^{k}\to x_i^{0}$$、$$y_j^{k}\to y_j^{0}$$、$$p^{k}\to p^{0}$$。$$X_i,Y_j,P$$ は閉なので $$x_i^{0}\in X_i$$、$$y_j^{0}\in Y_j$$、$$p^{0}\in P$$。場合2により、ある $$h\in\mathcal P$$ で $$p_h^{k}=\varepsilon_k$$ となる $$k$$ が無限個あるので、$$p_h^{0}=0$$。この $$h$$ を $$h=1$$ とおく（補：$$1\in\mathcal P$$、$$p_1^{0}=0$$）。

**Step 2　Walras 法則と生産者の条件**　各 $$k$$ で (41) と同じく $$p^{k}\cdot z^{k}=0$$。極限をとると、

$$
p^{0}\cdot z^{0}=0\tag{55}
$$

固定した $$y_j\in Y_j$$ に対し $$p^{k}\cdot y_j^{k}\geqq p^{k}\cdot y_j$$。極限をとると、

$$
y_j^{0}\ \text{は}\ Y_j\ \text{上で}\ p^{0}\cdot y_j\ \text{を最大化する}\tag{56}
$$

**Step 3　消費者**　$$x_i\in X_i$$ を $$u_i(x_i)\gt u_i(x_i^{0})$$ となるようにとる。$$u_i$$ の連続性（A5）から $$k$$ が十分大きければ $$u_i(x_i)\gt u_i(x_i^{k})$$ で、$$x_i^{k}$$ が $$A_i(\bar x_i^{k})$$ 上の最大化点であることと両立するには $$x_i\notin A_i(\bar x_i^{k})$$、つまり $$p^{k}\cdot x_i\gt p^{k}\cdot x_i^{k}$$（補）。$$k\to\infty$$ で、

$$
x_i\in X_i,\ u_i(x_i)\gt u_i(x_i^{0})\ \Longrightarrow\ p^{0}\cdot x_i\geqq p^{0}\cdot x_i^{0}\tag{57}
$$

（原論文 §5.3.3 によれば、(57) から $$x_i^{0}$$ が $$\{x_i\in X_i\mid u_i(x_i)\geqq u_i(x_i^{0})\}$$ 上で $$p^{0}\cdot x_i$$ を最小化することが導かれ、費用最小化と効用最大化の双対性は $$P$$ の内部（すべての価格が正）でほぼ成り立つが、どこでも成り立つわけではない。この点は本論文の本筋ではなく、余談として置かれている。）

**Step 4　$$\mathcal D$$ の財の価格が0**　$$1\in\mathcal P$$ と (28) の (b) より、$$y^{0}=\sum_jy_j^{0}\in Y$$ に対し、ある $$y'\in Y$$ と $$h'\in\mathcal D$$ があって $$y'_h\geqq y^{0}_h$$（$$h\ne1$$）、$$y'_{h'}\gt y^{0}_{h'}$$。(56) を $$j$$ について足すと $$p^{0}\cdot y'\leqq p^{0}\cdot y^{0}$$。$$p_1^{0}=0$$ を使うと、

$$
0\geqq p^{0}\cdot(y'-y^{0})=\sum_{h\ne1}p_h^{0}(y'_h-y^{0}_h)\geqq p_{h'}^{0}(y'_{h'}-y^{0}_{h'})\ \Longrightarrow\ p_{h'}^{0}=0\ \ (\exists h'\in\mathcal D)\tag{58}
$$

最後の矢印は、$$y'_{h'}-y^{0}_{h'}\gt0$$、$$p^{0}\geqq0$$ から（補）。

**Step 5　各消費者の費用最小化**　$$x_i\in X_i$$、$$x_i(t)=tx_i+(1-t)x_i^{0}$$（$$0\lt t\leqq1$$）とおく。(26) の定義より、ある $$\lambda\gt0$$ があって $$u_i(x_i^{0}+\lambda\delta^{h'})\gt u_i(x_i^{0})$$。$$t\to0$$ で $$x_i(t)+\lambda\delta^{h'}\to x_i^{0}+\lambda\delta^{h'}$$ なので、連続性から $$t$$ が十分小さければ $$u_i[x_i(t)+\lambda\delta^{h'}]\gt u_i(x_i^{0})$$。(57) より $$p^{0}\cdot[x_i(t)+\lambda\delta^{h'}]\geqq p^{0}\cdot x_i^{0}$$。(58) より $$p^{0}\cdot(\lambda\delta^{h'})=\lambda p_{h'}^{0}=0$$ だから、$$tp^{0}\cdot x_i+(1-t)p^{0}\cdot x_i^{0}\geqq p^{0}\cdot x_i^{0}$$、したがって $$p^{0}\cdot x_i\geqq p^{0}\cdot x_i^{0}$$。これを $$X_i$$ の任意の $$x_i$$ で行い、$$i$$ について足すと（$$X=\sum_iX_i$$）、

$$
x^{0}\ \text{は}\ X\ \text{上で}\ p^{0}\cdot x\ \text{を最小化する}\tag{59}
$$

**Step 6　矛盾**　A11（式(25)）の $$x\in X$$、$$y\in Y$$（$$x\lt y+\zeta$$）をとる。$$p^{0}\geqq0$$、$$\sum_hp_h^{0}=1$$ より $$p^{0}\cdot(y+\zeta)\gt p^{0}\cdot x$$（補）。(59) より $$p^{0}\cdot x\geqq p^{0}\cdot x^{0}$$。よって $$p^{0}\cdot y\gt p^{0}\cdot(x^{0}-\zeta)$$。(55) と $$z^{0}=x^{0}-y^{0}-\zeta$$ から $$p^{0}\cdot(x^{0}-\zeta)=p^{0}\cdot y^{0}$$。ゆえに、

$$
p^{0}\cdot y\gt p^{0}\cdot y^{0}\tag{60}
$$

$$y=\sum_jy_j$$（$$y_j\in Y_j$$）なので、ある $$j$$ で $$p^{0}\cdot y_j\gt p^{0}\cdot y_j^{0}$$。これは (56) に反する。よって場合2は起こりえず、場合1が成り立つ。**定理IIが示された。**

**定理II'**　A10 を A14 に置き換えても、A.7 Step 1 の議論（$$h\in\mathcal D\cup\mathcal P$$ の財で $$x_{hi}\lt\zeta_{hi}$$、その価格が正になる）が、ほぼ同じに成り立つ。原論文は、証明が上とほぼ同一であると述べる。

**確認**　$$\mathcal P$$ が空集合のとき（定理II'）、$$\pi=0$$ で $$P^{\varepsilon}=P$$ なので A.7 の縮小は不要で、定理Iの議論に戻る。Wald の第2定理（純粋交換、限界効用が当該財のみの厳密に減少する非負関数）は、$$\mathcal D$$ がすべての財の場合の定理II'に含まれる。

| 入力・使う道具 | 内容 |
|---|---|
| (26), (28), (25), (57) | $$\mathcal D$$、$$\mathcal P$$、A11、消費者の極限条件 |
| T2, T4, T5 | 部分列、凸結合、単位ベクトル |
| 出力 | (55)–(60)、定理II |

### A.9 著者について

**ケネス・J・アロー（Kenneth J. Arrow, 1921–2017）**

- **アカデミックな経歴**: ニューヨーク市生まれ。ニューヨーク市立大学シティカレッジで学士、コロンビア大学で修士・博士（経済学）。コウルズ委員会での研究を経て、スタンフォード大学に長く在籍し、ハーバード大学でも教授を務めた。
- **主要な研究分野**: 一般均衡理論、厚生経済学、社会的選択理論、不確実性と情報の経済学。
- **評判・学術的貢献**: 1972年にJ・R・ヒックスとともにノーベル経済学賞を受賞（一般均衡理論と厚生理論への先駆的貢献）。代表的業績は、アローの不可能性定理（社会的選択理論）、アロー＝ドブリューの一般均衡モデル、アロー＝プラットの危険回避度、アロー証券。1957年にジョン・ベイツ・クラーク賞、2004年に米国国家科学賞を受けた。

**ジェラール・ドブリュー（Gerard Debreu, 1921–2004）**

- **アカデミックな経歴**: フランス・カレー生まれ。パリの高等師範学校（École Normale Supérieure）で学び、数学教授資格（アグレガシオン）を取得。コウルズ委員会（シカゴ大学）、コウルズ財団（イェール大学）を経て、1962年からカリフォルニア大学バークレー校の経済学と数学の教授を務めた。
- **主要な研究分野**: 一般均衡理論、数理経済学、効用理論、コア理論。
- **評判・学術的貢献**: 1983年にノーベル経済学賞を受賞（経済理論への新しい分析手法の導入と、一般均衡理論の厳密な再定式化）。主著 *Theory of Value*（1959）は、公理的な方法で一般均衡理論を体系化した。そのほか、連続な効用関数の存在に関する定理、コアの極限定理（Debreu–Scarf）などが知られる。

---

**原論文の著作権**：Kenneth J. Arrow and Gerard Debreu, "Existence of an Equilibrium for a Competitive Economy," *Econometrica*, Vol. 22, No. 3, July 1954, pp. 265–290. © The Econometric Society. 本記事は原論文の数理モデルを整理した解説であり、原論文の権利は原著者および出版社に帰属します。
{% endraw %}
