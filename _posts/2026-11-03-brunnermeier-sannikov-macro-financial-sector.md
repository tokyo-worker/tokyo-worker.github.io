---
layout: post
title: "Brunnermeier & Sannikov (2014) \"A Macroeconomic Model with a Financial Sector\"、American Economic Review: 数理モデル"
date: 2026-11-03 00:00:00 +0900
categories: [経済学, マクロ金融]
math: true
---

{% raw %}
# Brunnermeier & Sannikov (2014) "A Macroeconomic Model with a Financial Sector"、American Economic Review: 数理モデル
### 専門家の純資産を唯一の状態変数とする、連続時間・フル均衡ダイナミクスの金融摩擦モデル

---

## 論文の紹介

**論文**：Markus K. Brunnermeier and Yuliy Sannikov, "A Macroeconomic Model with a Financial Sector," *American Economic Review*, 104(2), 379–421, 2014.（本記事が参照したのは、2011年2月22日付のワーキングペーパー版です。）

**どんな論文か**：標準的なマクロモデルは、金融仲介を置かない代表的家計で経済を描きます。この論文は、資本を生産的に運用できる「専門家」と、生産性の低い「家計」からなる経済に金融摩擦（専門家が外部から調達できる株式に上限があること、純資産が負にならない制約）を入れ、定常状態の近傍の線形近似ではなく、**状態空間全体にわたる均衡ダイナミクス**を解きます。

**主な結論**：
- 通常時は専門家の資本クッションが十分で、ショックはほとんど増幅されない。純資産が定常点を下回ると、価格を通じた非線形の増幅ループが働き、内生的リスクが急上昇する。
- 外生的リスクが小さいほど専門家はレバレッジを高め、システムはかえって不安定になる（ボラティリティ・パラドックス）。
- 固有リスクのヘッジ（証券化・デリバティブ）は外生リスクの分担を改善するが、レバレッジを高めて内生的な系統的リスクを増やす。
- 価格を通じた外部性のため、市場均衡は制約付きでも非効率になりうる。

**この記事の位置づけ**：本記事は、この論文の**背景にある数理モデル**についての記事です。論文の議論や含意を解説する記事ではなく、ベースラインモデルから、固有ジャンプ・証券化・厚生分析・仲介部門によるミクロ的基礎づけまで、論文のモデルを**簡略化せずそのまま**、前提・式・導出の形で整理した早見表です。式番号は本記事独自の通し番号で、論文の番号とは一致しません。

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

**記法**

時刻の添字 $t$ は、時刻の比較が必要な箇所（例：$t+s$）を除いて省略します。下線付きの記号（$\underline{a},\underline{\delta},\underline{k},\underline{n},\underline{c},\underline{\xi}$ など）は家計の変数、下線なしは専門家の変数です。専門家は $i\in I=[0,1]$、家計は $j\in J=(1,2]$ で添字づけます。

**主体・時間・情報構造**

連続時間 $t\in[0,\infty)$。唯一の不確実性は標準ブラウン運動 $Z_t$ が生成するフィルトレーションです。主体は、資本を生産的に運用できる専門家（測度1）と、生産性の低い家計（測度1）です。資本 $K_t$ は「効率単位」で測り、期待される将来の生産性についての情報が $dZ_t$ として入ります。産出が価格の基準財（ニュメレール、価格1）です。

**A1　専門家の生産性優位**

$a\ge\underline{a}$、かつ（または）$\delta\lt\underline{\delta}$。専門家は産出が大きいか、資本の減耗が小さい。専門家だけが内部投資技術を持つ。外すと、資本の配分に意味がなくなり、純資産の分布が効いてこない。

**A2　選好：専門家は不忍耐、家計は無リスク金利を固定する**

専門家はリスク中立で割引率 $\rho\gt r$、消費は非負（$dc\ge0$）。家計もリスク中立で割引率 $r$、消費は正負どちらも可。家計が正負の消費をできるので、家計の貸出供給は完全に弾力的で、無リスク金利は常に $r$ になる。外すと金利が内生的に動く。

**A3　完全に流動的な資本市場と価格受容**

資本は専門家間・専門家と家計の間で自由に売買できる。個々の主体は小さく、価格への影響はない。価格 $q_t$ は連続に動くので、無リスク債務による借入は短期的には任意に大きくできる。外すと、個別主体の価格影響を考える必要が出る。

**A4　エクイティ制約と支払能力制約**

専門家は資本リスクの少なくとも割合 $\tilde\varphi$ を自分で保有する（$\varphi_t\ge\tilde\varphi$、「スキン・イン・ザ・ゲーム」）。資本を持てるのは純資産が非負のときだけ（$n_t\ge0$）。$\tilde\varphi=0$ なら摩擦がなくなる。

**A5　契約は資本の総価値 $k_tq_t$ にのみ依存する**

利益の配分は総価値 $k_tq_t$ で決まり、$k_t$ と $q_t$ を別々に契約対象にはできない。これが価格を通じたフィードバック（増幅）の源泉になる。外すと（$k_t$ に直接契約できる場合）、増幅は純資産のレバレッジ効果だけになり、価格フィードバックは消える（§1.18）。

**A6　リスクの構造**

ベースラインでは、外生リスクは集計ショック $dZ_t$（ボラティリティ $\sigma$ 一定）のみ。固有ショックはない（固有ジャンプ・固有ブラウン運動は §1.11, §1.13 で追加）。

**A7　内部投資技術**

投資率 $\iota_t$（資本1単位あたり）に対して、成長への寄与 $\Phi(\iota)$ は増加かつ凹。大規模な負の投資（資本の売却・減耗の加速）は効率が悪い（技術的非流動性）。

**正則条件と推測**

$$
\Phi(0)=0,\qquad \Phi'(\iota)\gt0,\qquad \Phi''(\iota)\le0
$$

均衡では次の符号を推測して解き、解が実際に満たすことを後で確認します。

$$
\sigma^q_t\ge0,\qquad \sigma^\theta_t\le0,\qquad \psi_t\gt0
$$

> 専門家はリスク中立でも、消費非負の制約と時間変動する投資機会のせいで、集計的にはリスク回避的に振る舞う（§1.7）。

### 1.1 技術と選好

**専門家の資本と産出**

$$
\underbrace{dk}_{\text{資本の増分}}=\underbrace{(\Phi(\iota)-\delta)\,k\,dt}_{\text{投資と減耗}}+\underbrace{\sigma k\,dZ}_{\text{集計ショック}},\qquad \underbrace{y=ak}_{\text{産出}}\tag{1}
$$

> $\iota k$ が投資額。産出から投資を引いた純産出は $(a-\iota)k$。$\Phi(0)=0$ なので、投資しなければ資本は率 $\delta$ で減耗する。

**家計の資本と産出**

$$
\underbrace{d\underline{k}}_{\text{資本の増分}}=\underbrace{-\underline{\delta}\,\underline{k}\,dt}_{\text{減耗のみ}}+\underbrace{\sigma\underline{k}\,dZ}_{\text{集計ショック}},\qquad \underbrace{\underline{y}=\underline{a}\,\underline{k}}_{\text{産出}}\tag{2}
$$

> 家計は内部投資技術を持たず、$\underline{a}\le a$、$\underline{\delta}\ge\delta$。ショックは専門家と共通（資本の効率単位が受ける情報）。

**専門家の効用**

$$
\underbrace{E\!\left[\int_0^\infty e^{-\rho t}\,dc_t\right]}_{\text{割引累積消費}},\qquad \underbrace{dc_t\ge0}_{\text{消費は非負}},\qquad \rho\gt r\tag{3}
$$

**家計の効用**

$$
\underbrace{E\!\left[\int_0^\infty e^{-rt}\,d\underline{c}_t\right]}_{\text{割引累積消費}},\qquad \underbrace{d\underline{c}_t\in\mathbb R}_{\text{正負とも可}}\tag{4}
$$

> 消費は不連続・特異になりうるので、フロー $c(t)$ ではなく累積消費 $c_t$ で書く。家計の負の消費は、追加の労働投入による不効用と解釈できる。

| 記号・項目 | 意味 |
|---|---|
| $k$, $\underline{k}$ | 専門家・家計が持つ資本（効率単位） |
| $K_t$ | 経済全体の資本 |
| $a$, $\underline{a}$ | 資本1単位あたりの産出率（専門家・家計） |
| $\delta$, $\underline{\delta}$ | 減耗率（専門家・家計） |
| $\iota$ | 資本1単位あたりの投資率 |
| $\Phi(\iota)$ | 投資の成長への寄与（増加・凹、$\Phi(0)=0$） |
| $\sigma$ | 外生的な集計ショックのボラティリティ（定数） |
| $Z_t$ | 標準ブラウン運動 |
| $\rho$, $r$ | 専門家の割引率、家計の割引率（＝無リスク金利）、$\rho\gt r$ |
| $c_t$, $\underline{c}_t$ | 専門家・家計の累積消費 |

### 1.2 資本市場と資本収益

**資本価格の運動**

$$
\underbrace{dq}_{\text{価格の増分}}=\underbrace{\mu^q q\,dt}_{\text{ドリフト}}+\underbrace{\sigma^q q\,dZ}_{\text{内生的ボラティリティ}}\tag{5}
$$

**価格の下限**

$$
\underbrace{q}_{\text{市場価格}}\gt\underbrace{\underline{q}\equiv\frac{\underline{a}}{r+\underline{\delta}}}_{\text{家計が永久保有する場合の価値}}\tag{6}
$$

> 家計が資本を永久に保有しても、ゴードン成長公式により $\underline{q}$ までは払う。均衡価格は $\underline{q}$ より高い。

**資本ポジションの価値の運動**

$$
d(kq)=\underbrace{(\Phi(\iota)-\delta+\mu^q+\sigma\sigma^q)}_{\text{期待成長率}}(kq)\,dt+\underbrace{(\sigma+\sigma^q)}_{\text{総リスク}}(kq)\,dZ\tag{7}
$$

> 伊藤の補題の積の公式 $d(XY)=YdX+XdY+\sigma_X\sigma_Y dt$ による。$k$ 自体が有限変動ではなく、ボラティリティ $\sigma k$ を持つので、共分散項 $\sigma\sigma^q$ が入る。総リスクは、ファンダメンタルなリスク $\sigma$ と、資本が専門家と家計の間でどう配分されるかによる内生的リスク $\sigma^q$ の和。

**資本1単位の富の収益**

$$
dr^k=\underbrace{\left(\frac{a-\iota}{q}+\Phi(\iota)-\delta+\mu^q+\sigma\sigma^q\right)}_{\equiv\,E[r^k]}dt+\underbrace{(\sigma+\sigma^q)}_{\text{総リスク}}dZ\tag{8}
$$

> 資本は、投資を除いた産出 $(a-\iota)k$ も生む。$E[r^k]$ は専門家の資本の期待収益率。

| 記号・項目 | 意味 |
|---|---|
| $q$ | 資本の市場価格（効率単位あたり、産出で測る） |
| $\mu^q$, $\sigma^q$ | 価格のドリフトと内生的ボラティリティ |
| $\underline{q}$ | 価格の下限 |
| $E[r^k]$ | 専門家の期待資本収益率 |
| $\sigma+\sigma^q$ | 資本の総ボラティリティ（系統的リスク） |

### 1.3 専門家の問題

**専門家の純資産の運動**

$$
dn=\underbrace{rn\,dt}_{\text{無リスク運用}}+\underbrace{(kq)\Big[(E[r^k]-r)\,dt+\varphi(\sigma+\sigma^q)\,dZ\Big]}_{\text{資本の超過収益（保有リスクは}\varphi\text{）}}-\underbrace{dc}_{\text{消費}}\tag{9}
$$

> 全額を負債（無リスク借入）で賄う場合は $\varphi=1$ で、$dn=rn\,dt+(kq)[(E[r^k]-r)dt+(\sigma+\sigma^q)dZ]-dc$。取引自体は価格に影響しないので純資産を直接変えない。外部の家計はリスク中立なので、外部株式には期待収益 $r$ だけを要求する。

**専門家の問題**

$$
\max_{dc\ge0,\ \iota,\ k\ge0,\ \varphi\ge\tilde\varphi}\ E\!\left[\int_0^\infty e^{-\rho t}\,dc_t\right]\quad\text{s.t.}\quad \underbrace{n_t\ge0\ \ \forall t}_{\text{支払能力制約}},\ \ \underbrace{(9)}_{\text{予算制約}}\tag{10}
$$

**バランスシート**

$$
\begin{aligned}
\underbrace{kq}_{\text{資産}}&=\underbrace{kq-\tfrac{n}{\varphi}}_{\text{負債}}+\underbrace{\tfrac{n}{\varphi}}_{\text{株式}},\\
\underbrace{\tfrac{n}{\varphi}}_{\text{株式}}&=\underbrace{n}_{\text{内部株式}}+\underbrace{\tfrac{1-\varphi}{\varphi}\,n}_{\text{外部株式}}
\end{aligned}\tag{11}
$$

**外部株式（家計保有分）の運動**

$$
d\!\left(\tfrac{1-\varphi}{\varphi}n\right)=\underbrace{r\,\tfrac{1-\varphi}{\varphi}\,n\,dt}_{\text{要求収益}}+\underbrace{(1-\varphi)(kq)(\sigma+\sigma^q)\,dZ}_{\text{リスク負担}}-\underbrace{\tfrac{1-\varphi}{\varphi}\,dc}_{\text{配当の外部持分}}\tag{12}
$$

> 専門家の資本の期待収益は $r$ より高く、内部株式の方が外部株式より高い収益を得る。この差は、外部株主が専門家に払う運用手数料として実装できる。外部株式比率を $(1-\varphi)/\varphi$ に保つには、専門家は率 $\frac{1-\varphi}{\varphi}(kq)(E[r^k]-r)$ で外部株式を新規に調達する。

| 記号・項目 | 意味 |
|---|---|
| $n$ | 専門家の純資産（内部株式の価値） |
| $\varphi$ | 専門家が保有する資本リスクの割合（$\varphi\ge\tilde\varphi$） |
| $\tilde\varphi$ | エクイティ制約の下限（スキン・イン・ザ・ゲーム） |
| $kq$ | 専門家が保有する資本の市場価値 |
| $\frac{n}{\varphi}$ | 専門家の資産を賄う株式の総額 |

### 1.4 家計の問題

**家計の純資産の運動**

$$
d\underline{n}=r\underline{n}\,dt+\underbrace{\underline{\xi}\,(\sigma+\sigma^q)\,dZ}_{\text{外部株式のリスク}}+\underbrace{(\underline{k}q)\Big[(E[\underline{r}^k]-r)\,dt+(\sigma+\sigma^q)\,dZ\Big]}_{\text{直接保有する資本の超過収益}}-d\underline{c}\tag{13}
$$

**家計の期待資本収益率**

$$
E[\underline{r}^k]\equiv\underbrace{\frac{\underline{a}}{q}}_{\text{産出利回り}}-\underbrace{\underline{\delta}}_{\text{減耗}}+\underbrace{\mu^q+\sigma\sigma^q}_{\text{価格変動}}\tag{14}
$$

**家計の問題**

$$
\max_{d\underline{c},\ \underline{k}\ge0,\ \underline{\xi}\ge0}\ E\!\left[\int_0^\infty e^{-rt}\,d\underline{c}_t\right]\quad\text{s.t.}\quad \underline{n}_t\ge0,\ \ (13)\tag{15}
$$

> 家計は、無リスクで貸す、専門家の外部株式を買う、資本を直接買う、のいずれかを選ぶ。専門家との違いは3点：(i) 生産性が低い（$a\ge\underline{a}$ かつ/または $\delta\lt\underline{\delta}$）、(ii) 専門家より忍耐強い（$\rho\gt r$）、(iii) 消費が正負とも可で無リスク金利を $r$ に保つ。

| 記号・項目 | 意味 |
|---|---|
| $\underline{n}$ | 家計の純資産 |
| $\underline{\xi}$ | 家計が外部株式を通じて負うリスクの量 |
| $\underline{k}$ | 家計が直接保有する資本 |
| $E[\underline{r}^k]$ | 家計の期待資本収益率 |

### 1.5 均衡の定義

専門家の集合を $I=[0,1]$（添字 $i$）、家計の集合を $J=(1,2]$（添字 $j$）とします。

**初期条件**

$$
n^i_0=q_0k^i_0,\quad \underline{n}^j_0=q_0\underline{k}^j_0,\qquad \int_I k^i_0\,di+\int_J\underline{k}^j_0\,dj=K_0\tag{16}
$$

**財市場の清算**

$$
\underbrace{\int_I dc^i\,di+\int_J d\underline{c}^j\,dj}_{\text{総消費}}=\Big[\underbrace{\int_I(a-\iota^i)k^i\,di}_{\text{専門家の純産出}}+\underbrace{\int_J\underline{a}\,\underline{k}^j\,dj}_{\text{家計の産出}}\Big]dt\tag{17}
$$

**株式市場の清算**

$$
\underbrace{\int_I(1-\varphi^i)k^i\,di}_{\text{専門家が売るリスク}}=\underbrace{\int_J\underline{\xi}^j\,dj}_{\text{家計が買うリスク}}\tag{18}
$$

**資本市場の清算**

$$
\int_I k^i\,di+\int_J\underline{k}^j\,dj=K_t\tag{19}
$$

**総資本の運動**

$$
dK=\Big[\int_I k^i(\Phi(\iota^i)-\delta)\,di-\int_J\underline{\delta}\,\underline{k}^j\,dj\Big]dt+\sigma K\,dZ\tag{20}
$$

> 均衡とは、(i) 初期の純資産が (16) を満たし、(ii) 各専門家が価格を所与に (10) を解き、(iii) 各家計が価格を所与に (15) を解き、(iv) 財・株式・資本の市場が (17)–(19) で清算する、確率過程の組 $\{q_t,\ n^i_t,\ k^i_t,\ \iota^i_t,\ \varphi^i_t,\ dc^i_t;\ \underline{n}^j_t,\ \underline{k}^j_t,\ \underline{\xi}^j_t,\ d\underline{c}^j_t\}$ のこと。3つの市場が清算すれば、残る無リスク貸借市場はワルラス法則で自動的に清算する。

| 記号・項目 | 意味 |
|---|---|
| $I$, $J$ | 専門家・家計の集合（添字 $i$, $j$） |
| $K_t$ | 総資本（(19) で定義され、(20) に従う） |
| $\varphi^i$ | 専門家 $i$ が保有する資本リスクの割合 |

### 1.6 家計の最適性条件と内部投資

**家計が持つ資本の割合**

$$
1-\psi\equiv\frac{1}{K}\int_J\underline{k}^j\,dj\tag{21}
$$

**家計の最適性条件（H）**

$$
\underbrace{\frac{\underline{a}}{q}-\underline{\delta}+\mu^q+\sigma\sigma^q}_{E[\underline{r}^k]}\le r,\qquad \text{等号は }1-\psi\gt0\text{ のとき}\tag{22}
$$

> 家計は資本の期待収益が $r$ を超えれば無限に買うので、$E[\underline{r}^k]\le r$。家計が資本を実際に持つ（$\psi\lt1$）のは、価格が下がって期待収益がちょうど $r$ になったとき。この意味で、家計は危機時の流動性提供者になる。

**内部投資の最適化**

$$
\max_\iota\ kq\Phi(\iota)-k\iota\ \Longrightarrow\ \underbrace{q\,\Phi'(\iota)=1}_{\text{限界のトービン}\ q},\qquad \iota=\iota(q),\quad \underbrace{\Phi(\iota)-\delta=g(q)}_{\text{最適投資下の成長率}}\tag{23}
$$

> 内部投資は静学的な選択。以降、専門家は $\iota$ について最適化済みとして、$E[r^k]$ に $\iota(q)$ と $g(q)$ を代入して扱う。

| 記号・項目 | 意味 |
|---|---|
| $\psi$ | 専門家が持つ資本の割合 |
| $1-\psi$ | 家計が直接持つ資本の割合 |
| $\iota(q)$ | 最適投資率（$q$ の増加関数） |
| $g(q)$ | 最適投資下の資本の成長率 |

### 1.7 専門家の動的最適化（限界価値 $\theta$）

**価値関数は純資産に比例（補題1）**

$$
\underbrace{V_t}_{\text{専門家の価値}}=\underbrace{\theta_t}_{\text{純資産1単位の限界価値}}\cdot\underbrace{n_t}_{\text{純資産}}\tag{24}
$$

> 専門家は価格受容者で、純資産が $\varsigma$ 倍なら戦略を $\varsigma$ 倍にして $\varsigma$ 倍の効用を得られる。よって $V_t/n_t$ はすべての専門家で等しく、これを $\theta_t$ とおく。$\theta_t$ は均衡で内生的に決まる。

**ベルマン方程式（補題2）**

$$
\underbrace{\rho\,\theta_tn_t\,dt}_{\text{要求収益}}=\max_{k\ge0,\ dc\ge0,\ \varphi\ge\tilde\varphi}\Big\{\underbrace{dc}_{\text{消費}}+\underbrace{E[d(\theta_tn_t)]}_{\text{継続価値の変化}}\Big\}\ \text{ s.t. (9)},\qquad E\big[e^{-\rho t}\theta_tn_t\big]\to0\ \ (t\to\infty)\tag{25}
$$

**限界価値の運動**

$$
\frac{d\theta}{\theta}=\underbrace{\mu^\theta\,dt}_{\text{ドリフト}}+\underbrace{\sigma^\theta\,dZ}_{\text{ボラティリティ}}\tag{26}
$$

**最適性の必要十分条件（命題1）：消費**

$$
\underbrace{\theta_t\ge1}_{\text{常に1以上}},\qquad \underbrace{dc_t\gt0\ \Rightarrow\ \theta_t=1}_{\text{配当は}\theta=1\text{のときのみ}}\tag{27}
$$

**最適性の必要十分条件（命題1）：$\theta$ のドリフト（E）**

$$
\underbrace{\mu^\theta}_{\theta\text{のドリフト}}=\underbrace{\rho-r}_{\text{専門家と家計の割引率の差}}\tag{28}
$$

**最適性の必要十分条件（命題1）：資本保有（EK）**

$$
\underbrace{\frac{a-\iota(q)}{q}+g(q)+\mu^q+\sigma\sigma^q-r}_{\text{期待超過収益 }E[r^k]-r}=\underbrace{-\tilde\varphi\,\sigma^\theta\,(\sigma+\sigma^q)}_{\text{リスクプレミアム（予備的動機）}}\tag{29}
$$

> (29) は $k_t\gt0$ かつ $\varphi_t=\tilde\varphi$ のときに成り立つ。$k_t=0$ のときは左辺 $\le$ 右辺。$\sigma^q\ge0$, $\sigma^\theta\le0$ のもとで (27)–(29) と横断性条件は、$\{k\ge0,\ dc\gt0,\ \varphi\ge\tilde\varphi\}$ が最適戦略であることの必要十分条件。(29) が成り立つと任意の $k\ge0$ が最適なので、資本市場は自動的に清算する。$\varphi=\tilde\varphi$ は、専門家が集計リスクの保有を最小化したがることを示す。
>
> 右辺が左辺を上回れば、専門家は現金を保有して価格が底に落ちるのを待つ（質への逃避）。$\sigma^\theta\le0$ なので $-\sigma^\theta\ge0$：内生的リスク $\sigma^q$ が大きいほど、現金の価値が上がる。

**専門家の確率的割引因子（SDF）**

$$
\underbrace{\theta_tx_t}_{\text{時刻}t\text{の価格}}=E_t\Big[\underbrace{e^{-\rho s}\tfrac{\theta_{t+s}}{\theta_t}}_{\text{専門家のSDF}}\,\theta_t\,x_{t+s}\Big]\ \Longleftrightarrow\ \text{SDF}=e^{-\rho s}\,\frac{\theta_{t+s}}{\theta_t}\tag{30}
$$

> 時刻 $t+s$ に $x_{t+s}$ を払う資産に対して、専門家は価格 $\theta_t x_t=E_t[e^{-\rho s}\theta_{t+s}x_{t+s}]$ を払う（資本から外部株式を引いたもの、および無リスク資産の価格付けに使える）。家計のSDFは $e^{-rs}$。

| 記号・項目 | 意味 |
|---|---|
| $\theta_t$ | 専門家の純資産1単位あたりの限界価値（$\ge1$） |
| $\mu^\theta$, $\sigma^\theta$ | $\theta$ のドリフトとボラティリティ（推測：$\sigma^\theta\le0$） |
| $\tilde\varphi\,(-\sigma^\theta)(\sigma+\sigma^q)$ | 専門家が資本リスクに要求する超過収益 |
| $E[r^k]-r$ | 資本の期待超過収益 |

### 1.8 スケール不変性と状態変数 $\eta$（補題3）

**状態変数**

$$
\underbrace{N_t\equiv\int_I n^i_t\,di}_{\text{専門家の総純資産}},\qquad \underbrace{\eta_t\equiv\frac{N_t}{K_t}}_{\text{資本1単位あたりの純資産}}\tag{31}
$$

> モデルにはスケール不変性がある。総純資産 $\varsigma N_t$・総資本 $\varsigma K_t$ の経済は、$(N_t,K_t)$ の経済を $\varsigma$ 倍にしたものと同じ性質を持つ。$(q_t,\theta_t)$ が前者の均衡対なら、後者でも均衡対になる。したがって、価格と非効率の水準は $\eta_t$ だけに依存する。

**$\eta$ の運動**

$$
d\eta=\underbrace{\mu^\eta\eta\,dt}_{\text{ドリフト}}+\underbrace{\sigma^\eta\eta\,dZ}_{\text{ショック}}-\underbrace{d\zeta}_{\text{配当による減少}}\tag{32}
$$

**ドリフト（一般形）**

$$
\mu^\eta=\underbrace{r-\psi g(q)+(1-\psi)\underline{\delta}}_{\text{資本成長の希薄化}}+\underbrace{\psi\frac{q}{\eta}\big(E[r^k]-r\big)}_{\text{超過収益の蓄積}}-\underbrace{\sigma\sigma^\eta}_{\text{共分散項}}\tag{33}
$$

**ボラティリティ（一般形）**

$$
\sigma^\eta=\underbrace{\frac{\psi\varphi q}{\eta}(\sigma+\sigma^q)}_{\text{純資産のレバレッジ効果}}-\underbrace{\sigma}_{\text{資本自体の変動}}\tag{34}
$$

**$\sigma^q\ge0,\ \sigma^\theta\le0,\ \psi\gt0$ のときのドリフト**

$$
\mu^\eta=r-\psi g(q)+(1-\psi)\underline{\delta}-\sigma^\eta(\sigma+\sigma^\theta)-\sigma\sigma^\theta\tag{35}
$$

> このとき最適性から $\varphi=\tilde\varphi$。$d\zeta_t=dC_t/K_t$ は、専門家の総配当 $dC_t=\int_I dc^i_t\,di$ を資本で割ったもの。$\varphi_t=\frac{1}{\psi_tK_t}\int_I\varphi^i_tk^i_t\,di$ は専門家全体の平均保有割合。均衡がマルコフであることは、補題3では仮定していない。

| 記号・項目 | 意味 |
|---|---|
| $N_t$ | 専門家の総純資産 |
| $\eta_t$ | 資本1単位あたりの専門家の純資産（状態変数） |
| $\mu^\eta$, $\sigma^\eta$ | $\eta$ のドリフトとボラティリティ |
| $\zeta_t$ | 総配当を資本で割った累積過程 |

### 1.9 マルコフ均衡（命題2）

**マルコフ均衡の形**

$$
q_t=q(\eta_t),\qquad \theta_t=\theta(\eta_t),\qquad \psi_t=\psi(\eta_t)\tag{36}
$$

**価格の微分方程式**

$$
q''(\eta)=\underbrace{\frac{2\big(\mu^q q-q'(\eta)\,\mu^\eta\eta\big)}{(\sigma^\eta)^2\eta^2}}_{\text{価格のドリフトと}\ \eta\ \text{のドリフトの整合}}\tag{37}
$$

**限界価値の微分方程式**

$$
\theta''(\eta)=\underbrace{\frac{2\big[(\rho-r)\theta-\theta'(\eta)\,\mu^\eta\eta\big]}{(\sigma^\eta)^2\eta^2}}_{\mu^\theta=\rho-r\ \text{との整合}}\tag{38}
$$

**価格のドリフト**

$$
\mu^q=-\Big[\underbrace{\frac{a-\iota}{q}+g(q)+\sigma\sigma^q-r}_{\text{超過収益の一部}}+\underbrace{\tilde\varphi\,\sigma^\theta(\sigma+\sigma^q)}_{\text{予備的動機}}\Big]\tag{39}
$$

**$\eta$ のボラティリティ**

$$
\sigma^\eta=\underbrace{\frac{\psi\tilde\varphi q/\eta-1}{1-\psi\tilde\varphi\,q'(\eta)}}_{\text{レバレッジ}\ \div\ \text{フィードバック}}\,\sigma\tag{40}
$$

**価格・限界価値のボラティリティ**

$$
\sigma^q=\underbrace{\frac{q'(\eta)}{q}\,\sigma^\eta\eta}_{\text{価格の}\eta\text{への感応度}},\qquad \sigma^\theta=\underbrace{\frac{\theta'(\eta)}{\theta}\,\sigma^\eta\eta}_{\text{限界価値の}\eta\text{への感応度}}\tag{41}
$$

**$\psi$ の決め方**

$$
\underbrace{\frac{a-\underline{a}-\iota(q)}{q}+g(q)+\underline{\delta}+\tilde\varphi\,\sigma^\theta(\sigma+\sigma^q)}_{\equiv D}\ \ge0,\qquad
\begin{cases}\psi=1 & (D\gt0)\\ D=0\ \text{を解いて}\ \psi\in(0,1) & (D=0)\end{cases}\tag{42}
$$

> (42) は (29) と (22) から導く。論文本文は $a=\underline{a}$ の形で $g(q)+\underline{\delta}-\iota(q)/q+\tilde\varphi\sigma^\theta(\sigma+\sigma^q)$ と書き、不等号の向きを逆にしている（$\psi=1$ if $\lt0$）。ここでは導出（付録 A.7 Step 6）に合わせて符号を直した。数値例（$a=\underline{a}$, $\iota=0$）では $\eta=\eta^\ast$ で $D=g+\underline{\delta}=0.09\gt0$ となり、$\psi=1$（専門家が全資本を保有）と整合する。

**解の性質と境界条件**

$$
\boxed{\begin{aligned}
&\text{定義域は }[0,\eta^\ast],\quad q(\eta)\ \text{は増加},\quad \theta(\eta)\ \text{は減少}\\
&q(0)=\underline{q},\quad \theta(\eta^\ast)=1,\quad q'(\eta^\ast)=0,\quad \theta'(\eta^\ast)=0,\quad \lim_{\eta\to0}\theta(\eta)=\infty
\end{aligned}}\tag{43}
$$

> 5本の境界条件は、2本の2階常微分方程式（各2本）と未知の境界 $\eta^\ast$ に対応する。$\eta^\ast$ は専門家が配当を払う点（反射境界）で、確率的定常状態と呼ぶ。$\eta=0$ は吸収境界で、専門家は資本をすべて家計に売り、$q(0)=\underline{q}$、$\theta(0)=\infty$。

**数値例（論文図2・3・5）**

| 項目 | 値 |
|---|---|
| 割引率・金利 | $r=5\%$, $\rho=6\%$ |
| 減耗率 | 家計 $\underline{\delta}=5\%$（専門家は $g(q)=4\%$ より $\delta=-4\%$） |
| 産出 | $a=\underline{a}=1$ |
| 外生リスク | $\sigma=0.35$ |
| エクイティ制約 | $\tilde\varphi=1$ |
| 投資 | 生産集合が退化：$g(q)=4\%$, $\iota(q)=0$ |
| 価格の下限 | $\underline{q}=a/(r+\underline{\delta})=10$ |

> 領域は2つ。$\eta\lt\eta^\psi$ では価格が低く、家計が資本を保有（$\psi\lt1$）。$\eta\in[\eta^\psi,\eta^\ast]$ では専門家が全資本を保有（$\psi=1$）。$\eta$ のドリフトは $[0,\eta^\ast)$ で正で、$\eta^\ast$ に引き寄せられる。

| 記号・項目 | 意味 |
|---|---|
| $q(\eta)$ | 資本価格（$\eta$ の増加関数、$[\underline{q},q(\eta^\ast)]$） |
| $\theta(\eta)$ | 限界価値（$\eta$ の減少関数、$\theta(\eta^\ast)=1$） |
| $\psi(\eta)$ | 専門家の資本保有割合 |
| $\eta^\ast$ | 確率的定常状態（配当の反射境界） |
| $\eta^\psi$ | 家計が資本を持ち始める閾値 |
| $D$ | $\psi$ を決める判定量（(22) と (29) の差） |

### 1.10 増幅・内生的リスク・定常分布

**ショックの直接効果**

$$
d\!\left(\frac{N}{K}\right)=\frac{dN\,K-N\,dK}{K^2}=\underbrace{\sigma\,(\psi\tilde\varphi q-\eta)}_{\text{レバレッジで拡大した影響}}\,dZ\tag{44}
$$

> $dK=\sigma K\,dZ$ は資本を、$dN=\psi\tilde\varphi q\sigma K\,dZ$ は専門家の純資産を直ちに動かす。(40) の分子 $\psi\tilde\varphi q/\eta-1$ は、価格反応を無視したときの $\eta$ への影響（レバレッジ）、分母 $1-\psi\tilde\varphi q'(\eta)$ は価格を通じたフィードバック。$q'(\eta)\gt0$ のとき、$\eta$ が $\sigma(\psi\tilde\varphi q-\eta)dZ$ 下がると $q$ が $q'\cdot\sigma(\psi\tilde\varphi q-\eta)dZ$ 下がり、さらに純資産を傷める。

**増幅（定理1）**

$$
\underbrace{\frac{1}{1-\psi\tilde\varphi\,q'(\eta)}}_{\eta\lt\eta^\ast\text{での増幅}}\quad\ (\eta\lt\eta^\ast),\qquad \underbrace{1}_{\text{増幅なし}}\quad(\eta=\eta^\ast,\ q'(\eta^\ast)=0)\tag{45}
$$

> $q'(\eta)\ge1/(\psi\tilde\varphi)$ なら分母が0以下になり、フィードバックは不安定化して無限のボラティリティに至る。専門家が $k_t$ に直接契約できるなら分母は1になり、増幅は消える（§1.18）。通常時は、専門家が配当を調整して損失を吸収するので、需要と価格への影響が小さい。$\eta^\ast$ を下回ると制約が効き、純資産の変化が直ちに資産需要に伝わる。

**定常分布（フォワード・コルモゴロフ方程式、反射境界）**

$$
-\mu^\eta(\eta)\,d(\eta)+\frac12\frac{d}{d\eta}\Big[\big(\sigma^\eta(\eta)\,\eta\big)^2d(\eta)\Big]=0\tag{46}
$$

**定常密度の計算用の形**

$$
D(\eta)\equiv\big(\sigma^\eta\eta\big)^2d(\eta),\qquad D'(\eta)=\frac{2\mu^\eta\eta}{\big(\sigma^\eta\eta\big)^2}\,D(\eta),\qquad d(\eta)=\frac{D(\eta)}{(\sigma^\eta\eta)^2}\tag{47}
$$

> (46), (47) は、論文付録Cの一般形（過程 $X$：$dX=\mu^x(X)dt+\sigma^x(X)dZ$）を、$X=\eta$, $\mu^x=\mu^\eta\eta$, $\sigma^x=\sigma^\eta\eta$ として書いたもの。定常密度は二峰型（$\eta^\ast$ の近傍と $0$ の近傍に集中し、中間は薄い）で、これが「エルゴード的不安定性」。システムは高ボラティリティの中間領域を素早く通り抜けるので滞在時間が短い。$\eta$ が $0$ に近いと $q\to\underline{q}$ で価格のボラティリティは低い。

| 記号・項目 | 意味 |
|---|---|
| $\sigma+\sigma^q$ | 資本の総ボラティリティ（系統的リスク。$\eta\lt\eta^\ast$ で急上昇） |
| $\sigma^q$ | 内生的リスク（外生ショックへの専門家の反応が作る） |
| $d(\eta)$ | $\eta$ の定常密度 |
| $\psi\tilde\varphi q/\eta-1$ | 専門家のレバレッジ（価格反応を無視した場合） |

### 1.11 資産価格

**ボラティリティと予備的動機**

> (29) が示すとおり、内生的リスク $\sigma^q$ が増えると、リスクプレミアム $-\tilde\varphi\sigma^\theta(\sigma+\sigma^q)$ が大きくなる。資本価格は、ボラティリティが高い局面の到来を見越して先に下がる（これが論文の最初の実証的予測）。(29) の期待超過収益は、資本の価値と専門家のSDF (30) の共分散としても読める。$\theta''(\eta)\gt0$（$\theta$ は凸）は「慎重さ（prudence）」の係数に相当し、専門家はリスク中立でも慎重に振る舞う（バッファー・ストック・モデルと同型）。

**複数種類の資本（資産間の相関）**

$$
dk^l=\underbrace{g\,k^l\,dt}_{\text{成長}}+\underbrace{\sigma k^l\,dZ}_{\text{集計ショック}}+\underbrace{\sigma'k^l\,dZ^l}_{\text{種類別ショック}}\tag{48}
$$

$$
dK=gK\,dt+\sigma K\,dZ\tag{49}
$$

> $dZ^l$ は集計ショック $dZ$ と無相関で、$l$ ごとに独立。総資本では打ち消し合う。金融仲介は完全分散ポートフォリオを持つので、均衡は単一資本モデルと同じで、どの種類の資本の価格も $q_t$。

**種類 $l$ の資本の価値**

$$
d(qk^l)=(\Phi(\iota)-\delta+\mu^q+\sigma\sigma^q)(k^lq)\,dt+\underbrace{(qk^l)(\sigma+\sigma^q)\,dZ}_{\text{共通（系統的）}}+\underbrace{(qk^l)\sigma'\,dZ^l}_{\text{固有}}\tag{50}
$$

**資産間の相関**

$$
\mathrm{Corr}\big(d(qk^l),\,d(qk^{l'})\big)=\frac{(\sigma+\sigma^q)^2}{(\sigma+\sigma^q)^2+(\sigma')^2}\quad(l\ne l')\tag{51}
$$

> $\eta=\eta^\ast$ 近傍では $\sigma^q=0$ なので、相関は $\sigma^2/(\sigma^2+(\sigma')^2)$、ショックの相関と同じ。$\eta\lt\eta^\ast$ では $\sigma^q$ とともに増え、$\sigma^q\to\infty$ で1に近づく。危機時に資産価格が一斉に動く。

**外部株式とデリバティブ**

> 外部株式（家計保有）のリターンも、危機で負に歪む。ただし家計はリスク中立で割引因子が $e^{-rt}$ なので、期待収益は時間変動せず、割引後価格は**マルチンゲール**。家計がリスク回避的なら収益の予測可能性が出る。ボラティリティが $q$ の滑らかな関数なので、オプションは資産と債券で複製できる冗長資産。$\eta$ が低いほどボラティリティが高い性質は、オプションの「ボラティリティ・スマーク」（アウト・オブ・ザ・マネーのプットの高い暗黙ボラティリティ）と、指数オプションでスマークが強い「分散トレード」のパターンを自然に生む。

| 記号・項目 | 意味 |
|---|---|
| $k^l$ | 種類 $l$ の資本 |
| $\sigma'$ | 種類別ショックのボラティリティ |
| $Z^l$ | 種類別のブラウン運動（$Z$ と独立） |
| $\mathrm{Corr}$ | 資産 $l$ と $l'$ の価格変化の相関 |

### 1.12 ボラティリティ・パラドックス

**専門家のレバレッジ**

$$
\text{leverage}_t=\underbrace{\frac{\psi_tq_t}{\tilde\varphi\,\eta_t}}_{\text{資産}\ \div\ \text{保有すべき純資産}}\tag{52}
$$

> 論文は、数値例（§1.9 のパラメータ、$\sigma=0.025,\ 0.05,\ 0.1$）でこの性質を示している。

| 変化 | 結果 | 符号・式 |
|---|---|---|
| 外生リスク $\sigma$ が下がる | $\eta^\ast$ 近傍のボラティリティは低下 | 通常の効果 |
| 同上 | 専門家はレバレッジを高め、早く配当を払う | (52) が上昇、$\eta^\ast$ が低下 |
| 同上 | 定常点を下回る領域の増幅が強まり、システミック・リスクが上がる | $\eta$ の最大ボラティリティ $\max\sigma^\eta\eta$ が上昇 |

> 金融規制がなければ、システムは外生リスクが低いときほど不安定になる。これは、危機が「大いなる安定（great moderation）」の低ボラティリティ期に先行したこととも整合する。

### 1.13 固有ジャンプ・リスクと費用のかかる状態検証（CSV）

専門家 $i$ の資本に、固有の損失ジャンプを加えます。債務が不履行になりうるので、信用スプレッドが定義でき、BGG（Bernanke–Gertler–Gilchrist）との比較もできます。

**資本の運動（固有ジャンプつき）**

$$
dk=\underbrace{g\,k\,dt}_{\text{成長}}+\underbrace{\sigma k\,dZ}_{\text{集計ショック}}+\underbrace{k\,dJ^i}_{\text{固有ポアソン損失}}\tag{53}
$$

> $dJ^i$ は強度 $\lambda$ の固有ポアソン損失過程。損失時に回収される資本割合の分布関数を $F:[0,1]\to[0,1]$ とする。BGGと同じく、専門家が大きくなると固有ショックも比例して大きくなる（専門家内で分散されない）。$dJ^i$ は補償過程で、ジャンプがない間のドリフトは $\lambda\int_0^1(1-x)\,dF(x)\,dt$（$E[dJ^i]=0$）。バランスシートはベースラインと同じ（専門家は株式の割合 $\tilde\varphi$ を保有）。

**不履行の閾値（負債比率）**

$$
\vartheta=1-\frac{n}{\tilde\varphi\,q\,k}\ \ \Longleftrightarrow\ \ \underbrace{kq-\tfrac{n}{\tilde\varphi}}_{\text{負債}}=\vartheta\,kq\tag{54}
$$

> ジャンプ後に資産の割合 $x\lt\vartheta$ しか残らないと、資産価値 $xkq$ が負債 $\vartheta kq$ を下回って不履行になる。BGGと同じく、Townsend (1979) の費用のかかる状態検証を採用する：不履行時に債権者は検証費用を払い、残余資本の割合 $1-c$（$c\in(0,1)$ は定数）しか回収できない。

**不履行時の債権者の損失**

$$
\underbrace{kq\,(\vartheta-x)}_{\text{債務の不足分}}+\underbrace{c\,(kq)\,x}_{\text{検証費用}}\qquad(x\lt\vartheta)\tag{55}
$$

**期待損失率の関数**

$$
L(\vartheta)=\lambda\int_0^\vartheta(\vartheta-x)\,dF(x),\qquad C(\vartheta)=\lambda\int_0^\vartheta c\,x\,dF(x)\tag{56}
$$

**信用スプレッド**

$$
\underbrace{\frac{kq}{kq-n/\tilde\varphi}\,\big(L(\vartheta)+C(\vartheta)\big)}_{\text{負債1単位あたりの期待損失}}=\frac{L(\vartheta)+C(\vartheta)}{\vartheta}\tag{57}
$$

> 債権者の期待損失率は $(kq)\big(L(\vartheta)+C(\vartheta)\big)$。これを補うため、負債に要求するスプレッドが (57)。$\eta$ が低い（専門家の自己資本が薄い）ほど $\vartheta$ が大きく、スプレッドは高い。

**個別専門家の純資産**

$$
dn=rn\,dt+(kq)\Big[\big(E[r^k]-r-L(\vartheta)-C(\vartheta)\big)dt+dJ^i+\tilde\varphi(\sigma+\sigma^q)\,dZ\Big]-dc\tag{58}
$$

**専門家全体の純資産**

$$
dN=rN\,dt+\psi Kq\Big[\big(E[r^k]-r-C(\vartheta)\big)dt+\tilde\varphi(\sigma+\sigma^q)\,dZ\Big]-dC\tag{59}
$$

> 全体では $L(\vartheta)$ が消える。生き残る専門家が払うスプレッドの一部（$L$）は、不履行になる専門家が有限責任のため損失を負担しない分の移転で相殺される。$C(\vartheta)$ は純粋な死荷重。

**$\eta$ のドリフト（修正後）**

$$
\mu^\eta=r-\psi g(q)+(1-\psi)\underline{\delta}+\underbrace{\frac{\psi q}{\eta}\Big(E[r^k]-r-C(\vartheta)\Big)}_{\text{検証費用を引いた超過収益}}-\sigma\sigma^\eta\tag{60}
$$

> $d\eta=\mu^\eta\eta\,dt+\sigma^\eta\eta\,dZ-d\zeta$ の形はそのまま。$\sigma^\eta=\frac{\psi\varphi q}{\eta}(\sigma+\sigma^q)-\sigma$ と $d\zeta=dC/K$ は (34), (32) と同じ（$\varphi=\tilde\varphi$）。均衡では $\eta$ は区間 $[0,\eta^\ast]$ を動くが、$\eta^\ast$ はベースラインと異なる。専門家は $\eta=\eta^\ast$ でのみ配当を払う。

**ベルマン方程式**

$$
\rho\,\theta n=\max_k\Big\{\theta\,rn+\theta\,(kq)\big(E[r^k]-r-C(\vartheta)\big)+n\,\theta\,\mu^\theta+\sigma^\theta\theta\,(kq)\,\tilde\varphi(\sigma+\sigma^q)\Big\}\tag{61}
$$

**ベルマン方程式（$kq/n$ を代入して整理）**

$$
\rho-r=\mu^\theta+\max_\vartheta\ \underbrace{\frac{1}{\tilde\varphi(1-\vartheta)}}_{\text{レバレッジ}\ kq/n}\Big[E[r^k]-r-C(\vartheta)+\tilde\varphi\sigma^\theta(\sigma+\sigma^q)\Big]\tag{62}
$$

**$\vartheta$ についての一階条件**

$$
E[r^k]-r-C(\vartheta)+\tilde\varphi\,\sigma^\theta(\sigma+\sigma^q)-(1-\vartheta)\,C'(\vartheta)=0\tag{63}
$$

> $kq/n=1/(\tilde\varphi(1-\vartheta))$ を使う。論文本文は最後の項を $+(1-\vartheta)C'(\vartheta)$ と書くが、(62) の括弧内を $\vartheta$ で微分した結果に合わせて符号を直した（付録 A.11 Step 6）。

**BGG・KMとの比較**

| モデル | 本モデルでの扱い |
|---|---|
| BGG | $\varphi=1$ とすると、離散時間の定常状態モデルにほぼ一致。違いは、専門家が配当（ボーナス）を内生的に決め、外生的な退出ショックで強制的に退出させられないこと。通常時の増幅は弱く、危機時に強い。 |
| KM（Kiyotaki–Moore 1997） | 検証費用を、ある借入限度までゼロ、それ以降は無限大とする。借入は市場価値の割合 $\zeta$ まで：純資産 $n$ の主体は最大 $n/(1-\zeta)$ の資産を持つ。 |
| VaR型マージン（Brunnermeier–Pedersen 2009, Shin 2010） | ポアソン強度 $\lambda(\sigma^q)$ を価格ボラティリティの関数とする。 |

| 記号・項目 | 意味 |
|---|---|
| $J^i$, $\lambda$ | 固有ポアソン損失過程とその強度 |
| $F(x)$ | 損失時の資本回収割合 $x$ の分布関数 |
| $c$ | 検証費用率（残余資本に対する定数割合） |
| $\vartheta$ | 負債比率（不履行の閾値） |
| $L(\vartheta)$, $C(\vartheta)$ | 債権者の期待損失率の移転分と死荷重（検証費用）分 |
| $(L+C)/\vartheta$ | 信用スプレッド |

### 1.14 証券化（専門家間のリスク分担）：命題3

証券化は、固有ショック $J^i$ と集計ショック $Z$ の両方を専門家間で観察可能・契約可能にします（専門家と家計の間ではそうならない）。

**集計リスクのヘッジ契約**

$$
\underbrace{\varsigma\,\big(\omega\,dt+dZ\big)}_{\text{専門家の富への追加}},\qquad \omega:\text{集計リスクのプレミアム},\ \ \varsigma:\text{リスク・エクスポージャー}\tag{64}
$$

**固有リスクのヘッジ契約**

$$
\varsigma^i\,\big(\omega^i\,dt+dJ^i\big),\qquad \omega^i:\text{固有リスクのプレミアム}\tag{65}
$$

> (65) は、検証の領域・費用にも影響しうる。

**ヘッジ可能なときのベルマン方程式（固有リスク除去後）**

$$
\rho\,\theta n=\max_{k,\varsigma}\ \theta\Big(rn+(kq)\big(E[r^k]-r\big)-\varsigma\,\omega\Big)+\mu^\theta\theta n+\sigma^\theta\theta\Big[(kq)\,\tilde\varphi(\sigma+\sigma^q)-\varsigma\Big]\tag{66}
$$

**均衡（命題3）**

$$
\boxed{\ \omega^i=0\ \ \text{（固有リスクは完全にヘッジされ、プレミアムはゼロ）},\qquad \varsigma=0,\ \ \omega=-\sigma^\theta\ge0\ \ \text{（集計リスクは誰もヘッジしない）}\ }\tag{67}
$$

> 固有リスクが完全にヘッジされるので、均衡は固有ショックのないモデルと同じ。専門家の借入コストは $r+C(\vartheta)/\vartheta$ ではなく $r$ だけになる。借入コストが下がるとレバレッジが上がり、配当が早まって、システムは不安定になる。証券化は固有リスクの分担と破産コストの回避には有益だが、内生的なシステミック・リスクを増幅する。

| 記号・項目 | 意味 |
|---|---|
| $\varsigma$, $\omega$ | 集計リスクのヘッジ契約の量とリスクプレミアム |
| $\varsigma^i$, $\omega^i$ | 固有リスクのヘッジ契約の量とリスクプレミアム |

### 1.15 効率性：第一最善と制約付き効率性

**第一最善の資本価格（摩擦なし）**

$$
\bar q=\max_\iota\ \underbrace{\frac{a-\iota}{r-\Phi(\iota)+\delta}}_{\text{専門家が永久に運用し、割引率}\,r\,\text{で評価}}\tag{68}
$$

> 摩擦がなければ、専門家は資本を永久に運用し、家計から $r$ で借りる。価格は理論上の最大値 $\bar q$ になる。最も非効率な配分は家計がすべて保有する場合で、NPV（最小価格）は $\underline{q}=\underline{a}/(r+\underline{\delta})$。

**$\eta^\ast$ での価値の分解**

$$
q(\eta^\ast)K=\underbrace{\theta(\eta^\ast)N}_{\text{専門家の富}}+\underbrace{q(\eta^\ast)K-N}_{\text{家計の富}}=\underbrace{E\!\left[\int_0^\infty e^{-\rho t}dC_t\right]}_{\text{専門家の利得}}+\underbrace{E\!\left[\int_0^\infty e^{-rt}d\underline{C}_t\right]}_{\text{家計の利得}}\tag{69}
$$

> $\theta(\eta^\ast)=1$ を使う。摩擦下の最大価格 $q(\eta^\ast)$ は $\bar q$ より低い。非効率は3つ：(i) 資本の誤配分（$\eta$ が低いと家計が資本を運用）、(ii) 過小投資（$\iota(q)\lt\iota(\bar q)$）、(iii) 消費の歪み（専門家が消費を先送り）。$\eta$ が下がるとどれも悪化する。

**$\eta\lt\eta^\ast$ での一般形**

$$
qK=\underbrace{N}_{\text{専門家の富}}+\underbrace{(qK-N)}_{\text{家計の富}}\ \le\ \underbrace{\theta N}_{\text{専門家の利得}}+\underbrace{(qK-N)}_{\text{家計の利得}}=E\!\left[\int_0^\infty e^{-\rho t}dC_t\right]+E\!\left[\int_0^\infty e^{-rt}d\underline{C}_t\right]\tag{70}
$$

**対称な制約付き実行可能政策（定義2）：専門家**

$$
dN=d\tau+(\psi Kq)\Big[\Big(\tfrac{a-\iota}{q}+\Phi(\iota)-\delta+\mu^q+\sigma\sigma^q\Big)dt+\varphi(\sigma+\sigma^q)\,dZ\Big]-dC\tag{71}
$$

**対称な制約付き実行可能政策（定義2）：家計**

$$
d\underline{N}=d\underline{\tau}+\underline{\xi}(\sigma+\sigma^q)\,dZ+(1-\psi)Kq\Big[\Big(\tfrac{\underline{a}}{q}-\underline{\delta}+\mu^q+\sigma\sigma^q\Big)dt+(\sigma+\sigma^q)\,dZ\Big]-d\underline{C}\tag{72}
$$

**対称な制約付き実行可能政策（定義2）：資源制約**

$$
dC+d\underline{C}=(a-\iota)K\,dt,\qquad (1-\varphi)\psi K=\underline{\xi},\qquad N+\underline{N}=qK,\qquad \frac{dK}{K}=\big[\psi(\Phi(\iota)-\delta)-(1-\psi)\underline{\delta}\big]dt+\sigma\,dZ\tag{73}
$$

> 政策は、プランナーが価格・投資・消費・移転を制御し、対称に扱うが、専門家の外部株式への金融制約（$\varphi\ge\tilde\varphi$）は守る。条件は、専門家の代表的純資産 $N_t\ge0$ と (71)–(73)。純資産の合計は富 $qK$ になるので、部門間の移転は合計0。移転があるので、一般性を失わず無リスク金利を0にできる。この政策は、§1.17 のエージェンシー・モデルの下でインセンティブ両立的である。

**政策下の個別専門家の純資産**

$$
dn^i=\tfrac{n^i}{N}d\tau+(1-\varphi)(qk^i)\Big[\tfrac{a-\iota}{q}+\Phi(\iota)-\delta+\mu^q+\sigma\sigma^q\Big]dt+\varphi\Big[(a-\iota)k^i\,dt+d(qk^i)\Big]-\tfrac{n^i}{N}dC\tag{74}
$$

> 専門家は、資本の期待収益の割合 $1-\varphi$（無リスク）と、実現収益の割合 $\varphi$ を受け取る。$k^i=\psi K\,n^i/N$。論文の表記では第2項の括弧内の $k^i$ が脱落しているので、次元が合うように補った。

**第一最善を達成する政策（命題4）**

$$
\boxed{\begin{aligned}
&dC_0=N_0,\quad d\underline{C}_0=-N_0,\quad \iota_t=\iota(\bar q),\quad \psi_t=1\ \ (t\ge0),\\
&dC_t=0,\quad d\underline{C}_t=(a-\iota(\bar q))K_t\,dt\ \ (t\gt0),\\
&\underline{\xi}_t=(1-\varphi_t)\psi_tK_t\ \ (\varphi_t\ge\tilde\varphi),\quad d\tau_t:\text{専門家の純資産を非負に保つ}
\end{aligned}}\tag{75}
$$

> 制約付き実行可能で第一最善を達成するための必要十分条件。専門家は時刻0で純資産を全額消費し、その後は消費せず、すべての資本が専門家に配分されて第一最善の投資率で運用される。移転 $d\tau_t$ の役割は、専門家の純資産を非負に保つこと。価格過程 $q_t$ の選択でも同じことができる：価格安定化政策（$\sigma^q=-\sigma$ とすれば、専門家の純資産は非ランダムになる）は、純資産の変動を減らしてインセンティブ制約を緩める。

| 記号・項目 | 意味 |
|---|---|
| $\bar q$ | 第一最善の資本価格 |
| $dC_t$, $d\underline{C}_t$ | 専門家・家計の総消費 |
| $d\tau_t$, $d\underline{\tau}_t$ | 専門家・家計への移転（合計0） |
| $N_t$, $\underline{N}_t$ | 専門家・家計の代表的純資産 |

### 1.16 外部性

**ファイアセールの外部性と価格に依存する契約**

> 個々の主体は価格を所与とするが、集団としては価格に影響する。不完備市場では、この金銭的外部性は一般に非効率を生む（完備市場では包絡線定理により厚生への影響がない）。ファイアセールの外部性は、危機で専門家が別の部門（家計など）に資産を売り、買い手の需要曲線が右下がりのとき、事前にレバレッジを上げる専門家が自分の投げ売りが他者の売却価格を下げる影響を内部化しないために生じる。社会計画者ならレバレッジを抑える。

**価格に依存する契約の例**

$$
\varphi_t=\frac{\Xi}{q_t}\tag{76}
$$

> 専門家が資本の管理を誤って減耗を速めることで私的便益（産出で測る）を得られるとき、(76) のように $\varphi_t$ が価格に依存し、外部性が生じる（§1.17 のエージェンシー問題の微視的基礎）。ほかにも、(i) 借入条件（スプレッド）が価格に依存する（§1.13 の固有ジャンプの設定）、(ii) マージン要求が価格の水準とボラティリティに依存する、(iii) 資産運用で投資家が短期の収益（市場価格）で資金を引き揚げる、がある。多くの外部性は、将来の履歴に波及し正負が混在するので、個別に定量化しにくい。全体の影響と規制の厚生効果は、キャリブレーション済みモデルで数値的に評価するのが望ましい。

### 1.17 ミクロ的基礎づけと金融仲介（エージェンシー・モデル）

専門家を、資本を運用する**起業家**と、起業家を監視する**仲介機関**に分けます（Holmström–Tirole 1997 の連続時間版）。二重のモラルハザードがあります。

**モニタリング付きの資本**

$$
dk=\Big(\Phi(\iota)-\delta+\underbrace{\Omega(m)}_{\text{モニタリングの付加価値}}-\underbrace{m}_{\text{モニタリング費用}}-\underbrace{b}_{\text{資本の流用}}\Big)k\,dt+\sigma k\,dZ\tag{77}
$$

> 起業家は資本を率 $b\in[0,\bar b]$ で流用して私的便益を得られる。仲介機関は資本1単位あたり率 $m\in[0,\bar m]$ でモニタリングすると、起業家の私的便益を下げられる。起業家の私的便益は $\Xi(m)b$（$\Xi$ は $m$ について減少かつ弱凸、$\Xi\lt1$ で流用は非効率）。$\Omega$ は弱凹で $\Omega'(m)\le1$。

**投資の価値の運動**

$$
\frac{dV}{V}=\Big(\frac{a-\iota(q)}{q}+g(q)+\mu^q+\sigma\sigma^q+\Omega(m)-m-b\Big)dt+(\sigma+\sigma^q)\,dZ\tag{78}
$$

**契約に関する前提**

> **A**　利益配分は資本の総価値 $kq$ で決まり、$k$ と $q$ は別々には契約できない。**B**　ロックアップはなく、いつでも契約を解除でき、資産の分け方は誰が解除しても同じ。Bはデリバティブの日次の値洗い（マーク・トゥ・マーケット）に関連し、長期契約は値洗いを伴う短期契約で実装できる（Fudenberg–Holmström–Milgrom 1990）。Aは本モデルのベースラインの前提（A5）と同じ。

**利益配分（最も一般的な契約）**

$$
n^e+n^i+n^h=V,\quad dn^e=\varphi^e\,dV+f^e\,dt,\quad dn^i=\varphi^i\,dV+f^i\,dt,\quad dn^h=\varphi^h\,dV-(f^e+f^i)\,dt\tag{79}
$$

> $\varphi^e,\varphi^i,1-\varphi^e-\varphi^i$ は、起業家・仲介機関・家計の株式保有割合。$f^e,f^i$ は、各当事者の拠出資本費用と運用手数料の調整。

**起業家のインセンティブ制約**

$$
\underbrace{\Xi(m)\,b\,\theta^e}_{\text{私的便益の価値}}-\underbrace{\varphi^e\,b\,\theta^e}_{\text{自己持分の損失}}\le0\ \Longrightarrow\ \varphi^e\ge\Xi(m)\equiv\varphi^e(m)\tag{80}
$$

> 流用しない条件。$\Xi(m)\gt0$ のとき、(80) は支払能力制約も含意する（純資産が正の間だけ報酬・罰が可能）。$\Xi(m)=0$ となる $m$ では、モニタリングが起業家のエージェンシー問題を完全に解消し、純資産ゼロの起業家も雇える。

**仲介機関のインセンティブ制約**

$$
\varphi^i\,\Omega(m')-m'\ \ge\ \varphi^i\,\big(\Omega(0)-\bar b\big)\ \Longleftrightarrow\ \varphi^i\ge\varphi^i(m')\equiv\frac{m'}{\Omega(m')-\Omega(0)+\bar b}\tag{81}
$$

> $\Omega'(m)\le1$ なので、モニタリングの限界費用は生産性への直接便益を常に上回り、仲介機関は、所与の行動を誘導する最低限のモニタリング水準（$0$、または $\Xi(m')=\varphi^e$ となる最小の $m'$）を選ぶ。

**流用を防ぐ契約の集合**

$$
\Big\{(\varphi^e,\varphi^i):\ \varphi^e=\varphi^e(m)\ \text{かつ}\ \varphi^i\ge\varphi^i(m),\ \ \text{ある}\ m\in[0,\bar m]\Big\}\tag{82}
$$

**流用が起きる場合の価値の運動**

$$
\frac{dV}{V}=\Big(\frac{a-\iota(q)}{q}+g(q)+\mu^q+\sigma\sigma^q-\bar b\Big)dt+(\sigma+\sigma^q)\,dZ\tag{83}
$$

> $\varphi^i\lt\varphi^i(m)$（$\varphi^e=\varphi^e(m)$ に対応する $m$）なら、仲介機関はモニタリングせず、起業家は流用する。$\bar b$ は十分に大きく、流用する起業家の運用は家計より非効率とする。

**均衡条件（モニタリング強度の選択）**

$$
\max_{m\ge0}\Big\{\frac{a-\iota(q)}{q}+g(q)+\mu^q+\sigma\sigma^q+\Omega(m)-m-r+\big(\varphi^e(m)\sigma^{\theta,e}+\varphi^i(m)\sigma^{\theta,i}\big)(\sigma+\sigma^q)\Big\}=0\tag{84}
$$

**均衡条件（$\theta$ のドリフトとリスク配分）**

$$
\mu^{\theta,e}=\rho^e-r,\quad \mu^{\theta,i}=\rho^i-r,\quad \varphi^e_t=\varphi^e(m_t),\quad \varphi^i_t=\varphi^i(m_t)\tag{85}
$$

**均衡条件（家計）**

$$
\frac{\underline{a}}{q}-\underline{\delta}+\mu^q+\sigma\sigma^q\ge r,\qquad \text{等号は }1-\psi\gt0\text{ のとき}\tag{86}
$$

> ここで $\rho^e,\rho^i$ は起業家・仲介機関の割引率。ベルマン方程式から出る2条件と合わせて、7本の条件が7つの均衡過程 $\theta^e,\theta^i,q,\psi,m,(\varphi^e,\varphi^i)$ を決める。状態変数は $\eta^e=N^e/K$, $\eta^i=N^i/K$（$N^e,N^i$ は起業家・仲介機関部門の総純資産）。

**部門別の純資産と総資本の運動**

$$
dN^e=rN^e\,dt+\psi\varphi^e(\sigma+\sigma^q)K\big(-\sigma^{\theta,e}dt+dZ\big)-dC^e\tag{87}
$$

$$
dN^i=rN^i\,dt+\psi\varphi^i(\sigma+\sigma^q)K\big(-\sigma^{\theta,i}dt+dZ\big)-dC^i\tag{88}
$$

$$
dK=\Big(\psi\big(g(q)+\Omega(m)-m\big)-(1-\psi)\underline{\delta}\Big)K\,dt+\sigma K\,dZ\tag{89}
$$

**1状態変数に帰着する3つのケース（命題5）**

> (a) $N^e=0$：起業家を規律できるのは完全なモニタリング（$\Xi(\bar m)=0$、$\Omega(\bar m)=\bar m$ と正規化）だけ。このとき資本はベースラインと同じ $dk/k=(\Phi(\iota)-\delta)dt+\sigma dZ$ に従う。(b) $N^i=0$：BGG・KMのように、起業家を監視できる仲介機関がない（$m=0$、$\Omega(0)=0$ と正規化）。(c) $N^e$ と $N^i$ が完全代替で、合計 $N=N^e+N^i$ だけが重要：例えば $\rho^e=\rho^i=\rho$、$\Omega(m)=m$、すべての $m$ で $\varphi^e(m)+\varphi^i(m)=\tilde\varphi$（起業家と仲介機関が合計で株式の $\tilde\varphi$ を保有）。

**エクイティ制約の下限 $\tilde\varphi$ の微視的基礎**

$$
\text{(a)}\ \ \tilde\varphi\equiv\varphi^i(\bar m)=\frac{\bar m}{\Omega(\bar m)-\Omega(0)+\bar b},\qquad \text{(b)}\ \ \tilde\varphi=\Xi(0)\tag{90}
$$

> (a) のとき、$\varphi^i_t\ge\tilde\varphi$、$\rho=\rho^i$、仲介機関が「専門家」になり、起業家の価値関数は純資産ゼロなので無関係（命題5）。(b) のとき $\varphi^e_t\ge\tilde\varphi=\Xi(0)$。(c) のときは、起業家と仲介機関が合計で $\tilde\varphi$ 以上を保有する制約になる。

**固有ジャンプとCSVの下での契約（§7.2）**

$$
dk=(\Phi(\iota)-\delta)k\,dt+\sigma k\,dZ+k\,dJ^i-dB\tag{91}
$$

> 便益の抽出は非減少過程 $B_t$ で表し、起業家は $\tilde\varphi\,dB$ 単位の資本相当の便益を得る。ジャンプは直前の資本 $k_{t-}$ で抑えられ、離散的な抽出も許される。外部投資家は、資本が $k_{t-}$ から $k_t$ に落ちたときに監視を発動でき、(i) 抽出の有無と額を知り、(ii) 流用された資本をすべて回収し、(iii) 回収額に比例する監視費用 $c(k_{t-}+dJ^i_t)$ を払う。監視は確率的ではなく、資産価値の履歴で決まる（Townsend 1979, BGG と同じ）。

**命題6：最適契約**

$$
dn=rn\,dt+(kq)\Big[\Big(\tfrac{a-\iota(q)}{q}+g(q)+\mu^q+\sigma\sigma^q-r-L(\vartheta)-C(\vartheta)\Big)dt+dJ^i+\tilde\varphi(\sigma+\sigma^q)\,dZ\Big]-dc\tag{92}
$$

> $\sigma^q\ge0$, $\sigma^\theta\le0$ のとき、専門家が株式の割合 $\tilde\varphi$ を保有し、純資産が正の間だけ運営し、資産価値が $n_{t-}/\tilde\varphi$ を超えて下がったとき（負債超過）にだけ監視付き不履行（CSV）を発動する契約が最適。不履行時に専門家は回収価値を受け取らない。$\vartheta=1-n/(\tilde\varphi qk)$ は専門家の負債比率。純資産の運動は (58) と同じ。

| 記号・項目 | 意味 |
|---|---|
| $b$, $\bar b$ | 起業家の資本流用率とその上限 |
| $m$, $\bar m$ | 仲介機関のモニタリング強度とその上限 |
| $\Xi(m)$ | 起業家の私的便益の係数（$m$ の減少関数、$\Xi\lt1$） |
| $\Omega(m)$ | モニタリングの付加価値（弱凹、$\Omega'\le1$） |
| $\theta^e,\theta^i$ | 起業家・仲介機関の純資産1単位の限界価値 |
| $\varphi^e,\varphi^i$ | 起業家・仲介機関のリスク保有割合 |
| $\varphi^e(m)$, $\varphi^i(m)$ | インセンティブ両立に必要な最低保有割合 |
| $N^e,N^i$ | 起業家・仲介機関部門の総純資産 |
| $B_t$ | 便益抽出の累積過程 |

### 1.18 補論：$k_t$ に直接契約できる場合

起業家の資本を $dk=(\Phi(\iota)-\delta-b)k\,dt+\sigma k\,dZ$、産出を $(a-\iota)dt$ とし、起業家は流用1単位につき資本 $\tilde\varphi\le1$ 単位の便益を得ます。契約の成果指標が $kq$ ではなく $k$ そのものの場合です。

**資本の運動**

$$
dk=(\Phi(\iota)-\delta-b)\,k\,dt+\sigma k\,dZ\tag{93}
$$

**「公式」の純資産**

$$
dn=rn\,dt+\beta\big(dk-g(q)k\,dt\big)-\sigma^\theta\beta\sigma k\,dt\tag{94}
$$

**インセンティブ制約**

$$
\beta\ge\tilde\varphi\,q\tag{95}
$$

> 流用1単位で起業家は $\tilde\varphi q$ 単位の純資産（他で効用 $\tilde\varphi q\theta$ を生む）を得るので、$\beta\ge\tilde\varphi q$。(94) の確率項・決定項は $k$ に直接依存するので、家計が $k$ を直接観察できる必要がある。起業家が流用しないとき、$e^{-\rho t}\theta_tn_t$ はマルチンゲールで、$\mu^\theta=\rho-r$ が再び出る。

**資本の価格式（家計の期待収益 $=r$）**

$$
\frac{a-\iota(q)}{q}+\mu^q+g(q)+\sigma\sigma^q-r+\tilde\varphi\,\sigma^\theta\,\sigma=0\tag{96}
$$

> $\sigma^\theta\lt0$ なら家計は $\beta=\tilde\varphi q$ にする。(29) との違いは、リスクプレミアムが外生リスク $\sigma$ だけに基づく点（内生的リスクの項 $\sigma^q$ がない）。

**純資産の運動と $\eta$ のボラティリティ**

$$
dn=rn\,dt+(kq)\Big[\Big(\tfrac{a-\iota(q)}{q}+\mu^q+g(q)+\sigma\sigma^q-r\Big)dt+\tilde\varphi\,\sigma\,dZ\Big]-dc\tag{97}
$$

$$
\sigma^\eta=\Big(\frac{\psi\tilde\varphi q}{\eta}-1\Big)\sigma,\qquad \sigma^q=\frac{q'(\eta)}{q}\,\sigma^\eta\eta\tag{98}
$$

> 内生的リスクの項がないので、$\sigma^\eta$ の分母が1になる（(40) と比較）。レバレッジによる増幅は残るが、価格を通じたフィードバック増幅はない。

### 1.19 主要帰結

**主要式（ベースラインのマルコフ均衡）**

$$
\boxed{\begin{aligned}
&\underbrace{E[r^k]-r=-\tilde\varphi\,\sigma^\theta(\sigma+\sigma^q)}_{\text{(29) 資本のリスクプレミアム}},\qquad \underbrace{\mu^\theta=\rho-r}_{\text{(28)}},\qquad \underbrace{\tfrac{\underline{a}}{q}-\underline{\delta}+\mu^q+\sigma\sigma^q\le r}_{\text{(22) 家計}}\\[4pt]
&\sigma^\eta=\underbrace{\frac{\psi\tilde\varphi q/\eta-1}{1-\psi\tilde\varphi\,q'(\eta)}\,\sigma}_{\text{(40) レバレッジ}\ \div\ \text{フィードバック}},\qquad \sigma^q=\frac{q'}{q}\sigma^\eta\eta,\qquad \sigma^\theta=\frac{\theta'}{\theta}\sigma^\eta\eta\\[4pt]
&q''=\frac{2(\mu^qq-q'\mu^\eta\eta)}{(\sigma^\eta\eta)^2},\qquad \theta''=\frac{2[(\rho-r)\theta-\theta'\mu^\eta\eta]}{(\sigma^\eta\eta)^2}\\[4pt]
&q(0)=\underline{q},\quad \theta(\eta^\ast)=1,\quad q'(\eta^\ast)=\theta'(\eta^\ast)=0,\quad \theta(0)=\infty
\end{aligned}}\tag{99}
$$

**比較静学と特殊ケース**

| 変化・ケース | 結果 | 符号・式 |
|---|---|---|
| $\eta$ が $\eta^\ast$ から下がる | 価格 $q$ 低下、$\theta$ 上昇、資本の総ボラティリティ $\sigma+\sigma^q$ が急上昇、資産間の相関が上昇 | $q'\gt0$, $\theta'\lt0$, (45), (51) |
| $\eta=\eta^\ast$ | 増幅なし（$q'=0$）、ボラティリティは低く、専門家は配当を払う | (45), (43) |
| 外生リスク $\sigma$ の低下 | レバレッジ上昇、$\eta^\ast$ 低下、定常点を下回る領域の増幅が強まる（ボラティリティ・パラドックス） | (52) |
| 固有リスクのヘッジが可能（証券化） | 借入コストが $r+C/\vartheta$ から $r$ に、レバレッジ上昇、システムは不安定化 | (67) |
| $k_t$ に直接契約できる | 価格フィードバックが消える（分母が1） | (98) |
| $\sigma\to0$ | 決定論的定常状態は $\eta^\ast\to0$（専門家は純資産を蓄積しない） | §1.10 |
| $\tilde\varphi=1$ の固有ジャンプ設定 | 離散時間のBGGの定常状態モデルにほぼ一致 | §1.13 |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 持続性（一時的なショックが長く続く） | 専門家の純資産 $\eta$ の低下が資本配分と生産性を悪化させ、次期の純資産も低くする。 |
| 増幅（レバレッジとフィードバック） | レバレッジで純資産がショックを拡大して受け、価格下落がさらに純資産を傷める。増幅率は (45)。 |
| 通常時と危機時の違い | 定常点 $\eta^\ast$ 近傍では配当調整でショックを吸収でき、増幅は弱い。下回ると制約が効き、内生的リスクが急上昇する。 |
| 二峰型の定常分布（エルゴード的不安定性） | $\eta^\ast$ の近傍と $0$ の近傍に密度が集中し、中間の高ボラティリティ領域は素早く通過する。 |
| 危機時の資産価格の高い相関 | 内生的リスクがすべての資産に共通して効き、(51) の相関が $\sigma^q$ とともに上昇する。 |
| 時間変動するリスクプレミアム | 全員がリスク中立でも、(29) により、内生的リスクが予備的動機を通じて期待収益を引き上げる。 |
| ボラティリティ・スマーク（低ボラティリティ期でもアウト・オブ・ザ・マネーのプットが割高） | 下落局面のボラティリティが高い非線形性（内生的な裾の厚さ）による。 |
| 指数オプションでスマークが強い（分散トレード） | 指数は集計リスクで動き、個別株は固有リスクも受けるので、危機時の相関上昇が指数オプションのスマークを強める。 |
| ボラティリティ・パラドックス | 外生リスクが低いと専門家がレバレッジを高め、システミック・リスクが増す（"great moderation" の後の危機と整合）。 |
| 金融イノベーションの逆説 | 固有リスクのヘッジはコストを下げるが、レバレッジを高めて不安定性を増幅する。 |
| 信用スプレッドの逆循環性 | 固有ジャンプの設定では、$\eta$ が低いほどスプレッド $(L+C)/\vartheta$ が高い。 |
| 過大なレバレッジの外部性 | 価格に依存する制約・契約（ファイアセール等）の金銭的外部性により、市場均衡は制約付き効率的でない。 |

## 3. 整理している点 {#sec3}

- **増幅の2つの源泉の分離**：純資産のレバレッジ効果（(40) の分子）と、価格を通じたフィードバック（(40) の分母）を分けて、増幅が状態依存であることを示している。契約が $kq$ ではなく $k$ に基づけば後者は消える（§1.18）。
- **内生的リスクと外生的リスクの区別**：外生リスク $\sigma$ は定数で、内生的リスク $\sigma^q(\eta)$ が状態とともに変わる。通常時と危機時の違い、資産相関の上昇、リスクプレミアムの時間変動が、すべてこの1つの量から出る。
- **線形近似との違い**：線形化では定常状態近傍の正規的な分布になるが、フル均衡では二峰型で、定常点の置き方も内生的に決まる。確率的定常状態は、決定論的定常状態（$\sigma\to0$ の極限）とは別物。

## 4. 対象外の現象 {#sec4}

- 政府・中央銀行による貸出ファシリティや資本注入の役割は、モデルに含まれない（論文は、政策の役割を捉えていないと明記している）。
- 労働部門や実物経済への波及は、本モデルの対象外（論文は、以前のドラフトの拡張で扱ったと述べるにとどまる）。
- 業種ごとに特化した専門家やネットワーク構造は、モデル化していない。論文は、ショックが最も強い結びつきを伝わり、最も弱い結節点で増幅されるという仮説を述べるだけ。
- マルコフ均衡の一意性は予想にとどまり、証明されていない。
- 家計がリスク回避的な場合は扱わない（そうなれば外部株式の収益にも予測可能性が出ると述べるにとどまる）。
- 規制の最適設計は主張しない。厚生分析は「最初の小さな一歩」で、外部性の定量化は、キャリブレーション済みモデルでの数値分析に委ねている。
- 数値例（$\sigma=0.35$ など）は例示であり、現実の危機確率や期待損失額の予測を主張するものではない。
- 銀行取付け（run）、名目金利・貨幣・金融政策の効果は扱わない。

## 5. 主要文献・関連論文 {#sec5}

- **[金字塔的論文]** Bernanke, B., & Gertler, M. (1989). Agency Costs, Net Worth, and Business Fluctuations. *American Economic Review*, 79(1), 14–31.
  - **位置づけ**: 借り手の純資産が投資・景気変動を増幅する「金融アクセラレータ」の原型。本論文が、定常状態近傍の線形近似から、フル均衡の非線形ダイナミクスへ拡張した出発点。
- **[金字塔的論文]** Kiyotaki, N., & Moore, J. (1997). Credit Cycles. *Journal of Political Economy*, 105(2), 211–248.
  - **位置づけ**: 担保価値と借入制約の相互作用で、ショックが増幅・持続する信用循環を示した。本論文の価格を通じたフィードバックの直接の先行研究で、§1.13 でKM型の制約を特殊ケースとして含めている。
- **[関連文献]** Holmström, B., & Tirole, J. (1997). Financial Intermediation, Loanable Funds, and the Real Sector. *Quarterly Journal of Economics*, 112(3), 663–691.
  - **位置づけ**: 起業家・仲介機関・投資家の二重モラルハザードのモデル。本論文の §1.17（仲介部門のミクロ的基礎づけ）の離散時間の原型。
- **[関連文献]** Brunnermeier, M. K., & Pedersen, L. H. (2009). Market Liquidity and Funding Liquidity. *Review of Financial Studies*, 22(6), 2201–2238.
  - **位置づけ**: 資金流動性（マージン）と市場流動性が相互に強め合う「流動性スパイラル」を示した。本論文の増幅ループと内生的リスクの議論の背景にある。
- **[発展文献]** He, Z., & Krishnamurthy, A. (2013). Intermediary Asset Prices. *American Economic Review*, 103(2), 732–770.
  - **位置づけ**: 金融仲介機関のエクイティ制約から資産価格を導く連続時間モデル。本論文と最も近い関連研究（制約が効くと危機でリスクプレミアムが急上昇する）。

---


## 付録：導出手順 {#appendix}

### A.0 構造図

```
技術 (1)(2) → 価格・収益 (5)-(8) ─┐
                                   ├→ 専門家 (9)(10) → ベルマン (24)(25) → 命題1 (27)-(29)
家計 (13)-(15) → 最適性 (22) ──────┘                                          │
投資の一階条件 (23) ──────────────────────────────────────────────────────────┤
                                                                               ↓
状態変数 (31) → 補題3 (32)-(35) → 命題2 (36)-(43) → 定理1 (44)(45) → 定常分布 (46)(47)
                                       │
        ┌──────────────┬───────────────┼───────────────┬──────────────────┐
        ↓              ↓               ↓               ↓                  ↓
 資産間の相関     σのパラドックス   固有ジャンプ+CSV   証券化 (64)-(67)    効率性 (68)-(75)
 (48)-(51)        (52)             (53)-(63)                              外部性 (76)
                                       │
                                       ↓
                       ミクロ的基礎づけ (77)-(92)    補論：k への契約 (93)-(98)
```

### A.1 使う道具

**T1　伊藤の補題（積の公式）**

$dX=\mu_Xdt+\sigma_XdZ$, $dY=\mu_Ydt+\sigma_YdZ$ のとき、

$$
d(XY)=Y\,dX+X\,dY+\sigma_X\sigma_Y\,dt
$$

ここで $(dZ)^2=dt$, $dt\,dZ=0$, $(dt)^2=0$。

**T2　伊藤の補題（1変数関数・逆数）**

$d\eta=\mu\,dt+\sigma\,dZ$ のとき、関数 $f(\eta)$ について

$$
df=f'(\eta)\,d\eta+\tfrac12f''(\eta)\,\sigma^2\,dt
$$

とくに $dK=\mu_KK\,dt+\sigma K\,dZ$ のとき、$d(1/K)=-(\mu_K-\sigma^2)(1/K)\,dt-\sigma(1/K)\,dZ$。

**T3　（優）マルチンゲール論法**

任意の許容戦略について $\Theta_t=\int_0^te^{-\rho s}dc_s+e^{-\rho t}\theta_tn_t$ が優マルチンゲール、最適戦略について**マルチンゲール**であることから、ベルマン方程式を得る。

**T4　線形目的関数の最大化**

$k\ge0$ に関して線形の目的関数 $A\,k$ は、$A\lt0$ なら $k=0$、$A=0$ なら任意の $k$、$A\gt0$ なら $k=\infty$（均衡ではありえない）。

**T5　フォワード・コルモゴロフ方程式**

$dX=\mu^x(X)dt+\sigma^x(X)dZ$ の密度 $d(x,t)$ は $\partial_td=-\partial_x(\mu^xd)+\tfrac12\partial_{xx}\big((\sigma^x)^2d\big)$ に従う。反射境界では $-\mu^xd+\tfrac12\partial_x\big((\sigma^x)^2d\big)=0$（確率の流れがゼロ）。

**T6　単調収束定理**

$dc\ge0$ なので、$\lim_{t\to\infty}E\big[\int_0^te^{-\rho s}dc_s\big]=E\big[\int_0^\infty e^{-\rho s}dc_s\big]$。期待値と極限を交換できる。

### A.2 資本の価値と収益：式(7)(8)

**Step 1　積の公式（T1）**

$$
d(kq)=q\,dk+k\,dq+dk\,dq
$$

$dk=(\Phi-\delta)k\,dt+\sigma k\,dZ$, $dq=\mu^qq\,dt+\sigma^qq\,dZ$ を代入。

**Step 2　共分散項**

$$
dk\,dq=\sigma\sigma^q\,kq\,dt\qquad(\because (dZ)^2=dt)
$$

**Step 3　整理 → 式(7)**

$$
d(kq)=(\Phi-\delta+\mu^q+\sigma\sigma^q)(kq)\,dt+(\sigma+\sigma^q)(kq)\,dZ
$$

**Step 4　産出を加えて収益率へ → 式(8)**

資本は純産出 $(a-\iota)k\,dt$ も生むので、$kq$ で割って $dr^k=\frac{a-\iota}{q}dt+\frac{d(kq)}{kq}$ → 式(8)。

**確認**

$\sigma^q=0,\ \mu^q=0$ なら、$dr^k=\big(\frac{a-\iota}{q}+\Phi-\delta\big)dt+\sigma\,dZ$（価格が一定のときの資本収益と一致）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(1), (5) | 資本と価格の運動 |
| T1 | 積の公式（共分散項 $\sigma\sigma^q$ を出す） |

### A.3 内部投資の一階条件：式(23)

**Step 1　目的関数**

$$
\max_\iota\ kq\,\Phi(\iota)-k\,\iota
$$

資本1単位あたり、価値の増加 $q\Phi(\iota)$ から投資費用 $\iota$ を引く（静学）。

**Step 2　$\iota$ で微分**

$$
kq\,\Phi'(\iota)-k=0\ \Longrightarrow\ q\,\Phi'(\iota)=1
$$

$\Phi''\le0$ なので二階条件を満たし、$\iota=\iota(q)$。

**Step 3　$q$ への依存 → 式(23)**

$\Phi''\lt0$ なら陰関数定理で $\iota'(q)=-\Phi'/(q\Phi'')\gt0$（価格が高いほど投資が多い）。最適成長率を $g(q)\equiv\Phi(\iota(q))-\delta$ とおく。

**確認**

$\Phi(\iota)=\iota$（線形）なら $q=1$ のときだけ内点解。論文の数値例（$\iota(q)=0$, $g=4\%$）は生産集合が退化したケース。

| 入力・使う道具 | 内容 |
|---|---|
| 式(1) | $\Phi(0)=0$, 増加, 凹 |
| 一階条件 | 限界のトービン $q$ |

### A.4 価値関数の比例性：式(24)

**Step 1　背理法の設定**

専門家 A, B の純資産を $n^A_t,n^B_t$、最大期待効用を $u^A_t,u^B_t$ とする。$u^A_t/n^A_t\gt u^B_t/n^B_t$ と仮定。

**Step 2　戦略のスケーリング**

A の最適戦略 $\{k^A_s,dc^A_s,\varphi^A_s\}$ を $\varsigma=n^B_t/n^A_t$ 倍し、B の戦略 $\{\varsigma k^A_s,\varsigma dc^A_s,\varphi^A_s\}$ とする。(9) は $n$, $k$, $c$ について線形同次なので、B の純資産は $\varsigma n^A_s\ge0$（実行可能）。

**Step 3　効用の比較**

B の効用は $\varsigma u^A_t$。B の最適値 $u^B_t\ge\varsigma u^A_t$ だが、これは仮定 $u^B_t/n^B_t\lt u^A_t/n^A_t$（すなわち $u^B_t\lt\varsigma u^A_t$）と矛盾する。

**Step 4　結論 → 式(24)**

$u^A_t/n^A_t=u^B_t/n^B_t\equiv\theta_t$。価値関数は $\theta_tn_t$。

| 入力・使う道具 | 内容 |
|---|---|
| 式(9) | 予算制約の線形同次性 |
| A3（価格受容） | 規模を変えても価格が不変 |

### A.5 命題1：式(25)–(29)

**Step 1　優マルチンゲール（T3）**

$\Theta_t=\int_0^te^{-\rho s}dc_s+e^{-\rho t}\theta_tn_t$ について、任意の戦略で $\theta_tn_t\ge E_t\big[\int_t^{t+s}e^{-\rho(s'-t)}dc_{s'}+e^{-\rho s}\theta_{t+s}n_{t+s}\big]$（最適戦略で等号）。よって $\Theta_t\ge E_t[\Theta_{t+s}]$。

**Step 2　ベルマン方程式 → 式(25)**

$d\Theta_t=e^{-\rho t}\big(dc_t-\rho\theta_tn_t\,dt+d(\theta_tn_t)\big)$ の期待値が、任意の戦略で $\le0$、最適戦略で $=0$。よって

$$
\rho\theta n\,dt=\max\{dc+E[d(\theta n)]\}
$$

横断性条件は、(a) $\theta_0n_0=\lim_tE\big[\int_0^te^{-\rho s}dc_s\big]$（T6）と、(b) 任意の $t$ で $\theta_0n_0=E\big[\int_0^te^{-\rho s}dc_s+e^{-\rho t}\theta_tn_t\big]$ から、$t\to\infty$ で $E[e^{-\rho t}\theta_tn_t]\to0$。

**Step 3　伊藤展開（T1）**

$$
d(\theta n)=\theta\,dn+n\,d\theta+d\theta\,dn,\quad d\theta\,dn=\theta\sigma^\theta\,(kq)\varphi(\sigma+\sigma^q)\,dt
$$

(9), (26) を代入して期待値をとると、

$$
\rho\theta n=\max_{k\ge0,\ \varphi\ge\tilde\varphi}\theta\Big[rn+(kq)\big(E[r^k]-r+\varphi\sigma^\theta(\sigma+\sigma^q)\big)\Big]+\theta\mu^\theta n+\max_{dc\ge0}(1-\theta)\,dc
$$

**Step 4　消費の項 → 式(27)**

$(1-\theta)dc$ について、$\theta\lt1$ なら $dc\to\infty$ で発散する。$\theta=1$（実際、純資産を全額消費して $\theta n\ge n$ を保証できる）かつ $\theta\gt1$ なら $dc=0$ が最適。よって $\theta\ge1$、$dc\gt0$ は $\theta=1$ のときのみ。最大値は0。

**Step 5　$\varphi$ の選択**

$\sigma^q\ge0$ なので $\sigma+\sigma^q\gt0$、$\sigma^\theta\le0$ より $\varphi\sigma^\theta(\sigma+\sigma^q)\le0$。右辺は $\varphi$ について非増加なので、$\varphi=\tilde\varphi$。

**Step 6　資本保有 → 式(29)(28)**

$k$ について線形（T4）。$k\gt0$ が最適なら、$k$ の係数がゼロ：

$$
E[r^k]-r+\tilde\varphi\sigma^\theta(\sigma+\sigma^q)=0\ \Longrightarrow\ \text{式(29)}
$$

このとき任意の $k$ が最適で、残りは $\rho\theta n=\theta rn+\theta\mu^\theta n$、すなわち $\mu^\theta=\rho-r$ → 式(28)。

**Step 7　$k=0$ のとき**

$k=0$ だけが最適なら $E[r^k]-r\lt-\tilde\varphi\sigma^\theta(\sigma+\sigma^q)$（そうでなければ $\varphi=\tilde\varphi$ で $k$ を増やして右辺を改善できる）。このときも $\rho-r=\mu^\theta$。

**Step 8　逆（十分性）**

(27)–(29) と横断性条件が成り立てばベルマン方程式が成り立つので、$\theta_t$ は限界価値で戦略は最適。

**確認**

$\sigma^\theta=0$（$\theta\equiv1$）なら (29) は $E[r^k]=r$（リスクプレミアムなし）。$\sigma^\theta\lt0$ でのみプレミアムが生じる。

| 入力・使う道具 | 内容 |
|---|---|
| 式(9), (25), (26) | 純資産の運動・ベルマン・$\theta$ の運動 |
| T1, T3, T4, T6 | 積の公式、優マルチンゲール、線形最大化、単調収束 |
| 推測 | $\sigma^q\ge0$, $\sigma^\theta\le0$ |

### A.6 $\eta$ の運動：式(32)–(35)

**Step 1　専門家の集計**

(9) を専門家で積分し、$\int_Ik^i\,di=\psi K$、$\varphi=\frac{1}{\psi K}\int_I\varphi^ik^i\,di$、$\iota$ に最適値を使うと、

$$
dN=rN\,dt+\psi Kq\big[(E[r^k]-r)\,dt+\varphi(\sigma+\sigma^q)\,dZ\big]-dC
$$

**Step 2　総資本（式(20)）と逆数（T2）**

$dK=(\psi g(q)-(1-\psi)\underline{\delta})K\,dt+\sigma K\,dZ$。

$$
d(1/K)=-\big(\psi g-(1-\psi)\underline{\delta}\big)(1/K)\,dt+\sigma^2(1/K)\,dt-\sigma(1/K)\,dZ
$$

**Step 3　積の公式（T1）：$\eta=N\cdot(1/K)$**

$$
d\eta=\tfrac{dN}{K}+N\,d(1/K)+dN\,d(1/K),\qquad dN\,d(1/K)=-\sigma\psi q\varphi(\sigma+\sigma^q)\,dt
$$

**Step 4　整理**

ドリフトは $\big(r-\psi g+(1-\psi)\underline{\delta}+\sigma^2\big)\eta+\psi q(E[r^k]-r)-\sigma\psi q\varphi(\sigma+\sigma^q)$、拡散は $\big(\psi q\varphi(\sigma+\sigma^q)-\sigma\eta\big)dZ$。

**Step 5　$\sigma^\eta$ の定義 → 式(34)(33)(32)**

拡散係数を $\eta$ で割って $\sigma^\eta=\frac{\psi\varphi q}{\eta}(\sigma+\sigma^q)-\sigma$ → 式(34)。これを使うと $-\sigma\psi q\varphi(\sigma+\sigma^q)+\sigma^2\eta=-\sigma\sigma^\eta\eta$ なので、ドリフトは式(33)の形 → 式(32)。

**Step 6　（29）の代入 → 式(35)**

$\sigma^q\ge0$, $\sigma^\theta\le0$, $\psi\gt0$ なら $\varphi=\tilde\varphi$、$E[r^k]-r=-\tilde\varphi\sigma^\theta(\sigma+\sigma^q)$。よって

$$
\frac{\psi q}{\eta}(E[r^k]-r)=-\sigma^\theta\cdot\frac{\psi\tilde\varphi q(\sigma+\sigma^q)}{\eta}=-\sigma^\theta(\sigma^\eta+\sigma)
$$

式(33)に代入し、$-\sigma^\theta(\sigma^\eta+\sigma)-\sigma\sigma^\eta=-\sigma^\eta(\sigma+\sigma^\theta)-\sigma\sigma^\theta$ → 式(35)。

**確認**

$\psi=1$, $\varphi=1$, $\sigma^q=0$ のとき $\sigma^\eta=q\sigma/\eta-\sigma$（レバレッジ $q/\eta$ が $\sigma$ を拡大する、という直観と一致）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(9), (20), (29) | 専門家の純資産、総資本、リスクプレミアム |
| T1, T2 | 積の公式、逆数の伊藤の補題 |

### A.7 マルコフ均衡：式(36)–(43)

**Step 1　$q(\eta)$ への伊藤の補題（T2）**

$$
dq=q'(\eta)\,d\eta+\tfrac12q''(\eta)(\sigma^\eta\eta)^2\,dt
$$

拡散係数を比べて $\sigma^qq=q'(\eta)\sigma^\eta\eta$。同様に $\sigma^\theta\theta=\theta'(\eta)\sigma^\eta\eta$ → 式(41)。

**Step 2　$\sigma^\eta$ について解く → 式(40)**

式(34)に $\sigma^q=q'\sigma^\eta\eta/q$ を代入：

$$
\sigma^\eta=\frac{\psi\tilde\varphi q\sigma}{\eta}+\psi\tilde\varphi q'\sigma^\eta-\sigma\ \Longrightarrow\ \sigma^\eta\big(1-\psi\tilde\varphi q'\big)=\Big(\frac{\psi\tilde\varphi q}{\eta}-1\Big)\sigma
$$

$1-\psi\tilde\varphi q'\ne0$ のとき割って式(40)。

**Step 3　価格のドリフト → 式(39)**

式(29)を $\mu^q$ について解く：$\mu^q=-\big[\frac{a-\iota}{q}+g+\sigma\sigma^q-r+\tilde\varphi\sigma^\theta(\sigma+\sigma^q)\big]$。

**Step 4　$q$ の微分方程式 → 式(37)**

ドリフトを比べて $\mu^qq=q'\mu^\eta\eta+\tfrac12(\sigma^\eta\eta)^2q''$。$q''$ について解く → 式(37)。

**Step 5　$\theta$ の微分方程式 → 式(38)**

$\mu^\theta=\rho-r$ より $\theta'\mu^\eta\eta+\tfrac12(\sigma^\eta\eta)^2\theta''=(\rho-r)\theta$。$\theta''$ について解く → 式(38)。

**Step 6　$\psi$ の決め方 → 式(42)**

式(29)から $\mu^q+\sigma\sigma^q=r-\frac{a-\iota}{q}-g-\tilde\varphi\sigma^\theta(\sigma+\sigma^q)$。式(22)に代入すると

$$
\frac{\underline{a}}{q}-\underline{\delta}+r-\frac{a-\iota}{q}-g-\tilde\varphi\sigma^\theta(\sigma+\sigma^q)\le r
$$

両辺を整理して $-1$ 倍：

$$
D\equiv\frac{a-\underline{a}-\iota}{q}+g+\underline{\delta}+\tilde\varphi\sigma^\theta(\sigma+\sigma^q)\ge0
$$

等号は $\psi\lt1$ のとき（式(22)）。よって $D\gt0$ なら $\psi=1$、$D=0$ なら $D=0$ を $\psi$ について解く。

**Step 7　境界条件 → 式(43)**

- $q(0)=\underline{q}$：$\eta=0$ では専門家は支払能力制約にかかり、資本をすべて家計に売る。家計は資本を永久保有するので $\underline{q}=\underline{a}/(r+\underline{\delta})$。
- $\theta(\eta^\ast)=1$：$\eta^\ast$ は専門家が配当を払う点。式(27)より。
- $q'(\eta^\ast)=0$：反射境界。$q'(\eta^\ast)\lt0$ なら、$\eta^\ast$ で資本を持つ専門家の損失が無限の速さになる（$\eta_{t+\epsilon}\approx\eta^\ast-\sigma^\eta\sqrt\epsilon$ なので、損失率 $q'\sigma^\eta\sqrt\epsilon/\epsilon\to\infty$）。
- $\theta'(\eta^\ast)=0$：$\theta'(\eta^\ast)\lt0$ なら $\theta(\eta_t)$ のドリフトが $\eta^\ast$ で無限大になり、命題1に反する。
- $\theta(0)=\infty$：$\eta=0$ は吸収的。そこで無限小の資本を持つ専門家は永久に価格 $\underline{q}$ に直面し、レバレッジなしでも $\frac{a-\iota(\underline{q})}{\underline{q}}+g(\underline{q})\gt r$、十分なレバレッジなら収益が $\rho$ を超え、リスク中立なので無限の効用を得る。

**確認**

境界条件は5本、未知は2階微分方程式2本の積分定数4個と $\eta^\ast$ の計5個で過不足がない。$q'=0$ とおけば $\sigma^\eta=(\psi\tilde\varphi q/\eta-1)\sigma$ で、式(98)（$k$ への契約）と一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(22), (29), (34) | 家計・専門家の最適性、$\eta$ の拡散 |
| T2 | 伊藤の補題（$q(\eta)$, $\theta(\eta)$） |
| 推測 | $\sigma^q\ge0$, $\sigma^\theta\le0$, $\psi\gt0$ |

### A.8 増幅（定理1）：式(44)(45)

**Step 1　ショックの直接効果 → 式(44)**

$dK=\sigma K\,dZ$。専門家の純資産への直接の影響は、価格反応を除くと $dN=\psi\tilde\varphi q\sigma K\,dZ$。商の公式から

$$
d\!\left(\frac NK\right)=\frac{dN\,K-N\,dK}{K^2}=\sigma(\psi\tilde\varphi q-\eta)\,dZ
$$

**Step 2　価格を通じたフィードバック**

$\eta$ が $\sigma(\psi\tilde\varphi q-\eta)dZ$ 変化すると、$q$ が $q'\cdot\sigma(\psi\tilde\varphi q-\eta)dZ$ 変化し、純資産がさらに動く。1周のたびに $\psi\tilde\varphi q'$ 倍される。

**Step 3　等比級数 → 式(45)**

$$
\sum_{n=0}^\infty(\psi\tilde\varphi q')^n=\frac{1}{1-\psi\tilde\varphi q'}\quad(\psi\tilde\varphi q'\lt1)
$$

これは式(40)の分母と一致（式(34)に $\sigma^q=q'\sigma^\eta\eta/q$ を入れたときに出る）。$\eta=\eta^\ast$ では $q'=0$ で増幅率は1。$\psi\tilde\varphi q'\ge1$ なら不安定化（無限のボラティリティ）。

**確認**

$k_t$ に直接契約できる場合（§1.18）、$\sigma^q$ は $\sigma^\eta$ に戻らない（式(98)）ので分母は1。

| 入力・使う道具 | 内容 |
|---|---|
| 式(34), (40), (41) | $\eta$ のボラティリティと価格感応度 |
| 等比級数 | フィードバックの総和 |

### A.9 定常分布：式(46)(47)

**Step 1　フォワード・コルモゴロフ方程式（T5）**

$X=\eta$, $\mu^x=\mu^\eta\eta$, $\sigma^x=\sigma^\eta\eta$ とすると、密度 $d(\eta,t)$ は

$$
\partial_td=-\partial_\eta(\mu^x d)+\tfrac12\partial_{\eta\eta}\big((\sigma^x)^2d\big)
$$

**Step 2　定常条件**

$\partial_td=0$ を $\eta$ で積分すると、定数が出る。反射境界で $-\mu^xd+\tfrac12\partial_\eta((\sigma^x)^2d)=0$ なので定数は0 → 式(46)。

**Step 3　$D(\eta)$ の導入 → 式(47)**

$D=(\sigma^x)^2d$ とおくと、(46) は $\tfrac12D'=\mu^xd=\mu^xD/(\sigma^x)^2$。よって $D'=\frac{2\mu^x}{(\sigma^x)^2}D$、$d=D/(\sigma^x)^2$。

**Step 4　吸収境界のある場合（$\eta=0$）**

非退化な定常分布が存在する条件は、$D(0)=0$ かつ $x_0\gt0$ で $D(x_0)\gt0$ とできること。$\log D(x)=\log D(x_0)-\int_x^{x_0}\frac{2\mu^x}{(\sigma^x)^2}dx'$ なので、条件は $\int_0^{x_0}\frac{2\mu^x}{(\sigma^x)^2}dx=\infty$。境界から離れるドリフト（$\mu^x\gt0$）が、境界に近づくボラティリティに勝てば満たされる。例：$\mu^x=\mu x$, $\sigma^x=\sigma x$（$\mu\gt0$）なら、$\int_0^{x_0}\frac{2\mu}{\sigma^2x}dx=\infty$。

**確認**

$\mu^\eta\gt0$（$[0,\eta^\ast)$ で正、図3）で、$\eta\to0$ では $\mu^\eta\eta,\ \sigma^\eta\eta\to0$ なので上のGBM型の例に近い挙動。

| 入力・使う道具 | 内容 |
|---|---|
| 式(32), (33), (40) | $\eta$ のドリフトと拡散 |
| T5 | フォワード・コルモゴロフ方程式 |

### A.10 資産間の相関：式(50)(51)

**Step 1　種類 $l$ の資本の価値 → 式(50)**

A.2 と同じ積の公式を $dk^l=gk^l\,dt+\sigma k^l\,dZ+\sigma'k^l\,dZ^l$ に適用。$dq\,dZ^l=0$（独立）なので共分散項は $\sigma\sigma^q$ のみ。

**Step 2　分散・共分散**

$$
\mathrm{Var}\big[d(qk^l)\big]=(qk^l)^2\big[(\sigma+\sigma^q)^2+(\sigma')^2\big]dt,\qquad \mathrm{Cov}\big[d(qk^l),d(qk^{l'})\big]=(qk^l)(qk^{l'})(\sigma+\sigma^q)^2dt\ \ (l\ne l')
$$

**Step 3　相関 → 式(51)**

$$
\frac{(\sigma+\sigma^q)^2}{(\sigma+\sigma^q)^2+(\sigma')^2}
$$

**確認**

$\sigma^q=0$（$\eta=\eta^\ast$）で $\frac{\sigma^2}{\sigma^2+(\sigma')^2}$。$x\mapsto\frac{x^2}{x^2+(\sigma')^2}$ は $x\gt0$ で増加、$x\to\infty$ で1。

| 入力・使う道具 | 内容 |
|---|---|
| 式(48)–(50) | 種類別の資本と価値 |
| T1 | 積の公式 |

### A.11 固有ジャンプとCSV：式(53)–(63)

**Step 1　負債比率 → 式(54)**

債務は $kq-n/\tilde\varphi$。これを $\vartheta kq$ とおくと、$\vartheta=1-n/(\tilde\varphi qk)$。したがって $kq/n=1/(\tilde\varphi(1-\vartheta))$。

**Step 2　不履行条件と損失 → 式(55)**

ジャンプ後に資本の割合 $x$ が残るとき、資産 $xkq$。$xkq\lt\vartheta kq$（$x\lt\vartheta$）で不履行。債権者は不足分 $kq(\vartheta-x)$ と検証費用 $c\cdot xkq$ を負担する。

**Step 3　期待損失 → 式(56)**

強度 $\lambda$、分布 $F$ で期待し、$L(\vartheta)=\lambda\int_0^\vartheta(\vartheta-x)dF$、$C(\vartheta)=\lambda\int_0^\vartheta cx\,dF$。期待損失率 $=(kq)(L+C)$。

**Step 4　スプレッド → 式(57)**

債務額 $\vartheta kq$ で割る：$(L+C)/\vartheta$。債権者の要求収益は $r$ なので、借入金利は $r+(L+C)/\vartheta$。

**Step 5　個別専門家の純資産 → 式(58)**

専門家は $kq$ の資産の収益から、利払い（$r$ 超過分 $=kq(L+C)$）を負担する：$E[r^k]-r$ が $E[r^k]-r-L-C$ に変わる。固有ジャンプ $dJ^i$ は補償過程で、期待値ゼロ。

**Step 6　集計 → 式(59)(60)**

破産する専門家は有限責任なので損失の一部を負担せず、$L$ に相当する移転が集計で相殺される。残るのは死荷重 $C$ のみ：式(59)。T1, T2 で A.6 と同様に計算し、式(60)（拡散項は式(34)と同じ）。

**Step 7　ベルマン方程式 → 式(61)(62)**

A.5 Step 3 と同じ展開で、$E[r^k]-r$ を $E[r^k]-r-C(\vartheta)$ に置き換え、$\mu^\theta\theta n$ と $\sigma^\theta\theta(kq)\tilde\varphi(\sigma+\sigma^q)$ を加える → 式(61)。両辺を $n\theta$ で割り、$kq/n=1/(\tilde\varphi(1-\vartheta))$ を代入 → 式(62)。

**Step 8　$\vartheta$ の一階条件 → 式(63)**

$A\equiv E[r^k]-r+\tilde\varphi\sigma^\theta(\sigma+\sigma^q)$ とおくと、(62) の最大化対象は $\frac{A-C(\vartheta)}{\tilde\varphi(1-\vartheta)}$。

$$
\frac{d}{d\vartheta}\frac{A-C}{1-\vartheta}=\frac{-C'(1-\vartheta)+(A-C)}{(1-\vartheta)^2}=0\ \Longrightarrow\ A-C(\vartheta)-(1-\vartheta)C'(\vartheta)=0
$$

→ 式(63)。

**確認**

$C\equiv0$ なら最大化対象は $A/(\tilde\varphi(1-\vartheta))$（$\vartheta$ について単調）で、内点解には $A=0$ が必要、すなわち式(29)に戻る。

| 入力・使う道具 | 内容 |
|---|---|
| 式(9), (29), (53) | 純資産・リスクプレミアム・ジャンプ |
| T1, T2, T3 | 積の公式、伊藤、ベルマン |
| Townsend (1979) | 費用のかかる状態検証 |

### A.12 証券化（命題3）：式(66)(67)

**Step 1　固有リスクの除去**

固有リスクが専門家間で契約可能なら、各専門家は自分の固有リスクを手放し、他の全員のリスクを少しずつ引き受ける（合計では打ち消し合う）。市場は $\omega^i=0$ で清算する → 式(67)の前半。固有リスクが除去されたので、純資産の運動は

$$
dn=rn\,dt+(kq)\big[(E[r^k]-r)dt+\tilde\varphi(\sigma+\sigma^q)dZ\big]-dc-\varsigma(\omega\,dt+dZ)
$$

**Step 2　ベルマン方程式 → 式(66)**

A.5 Step 3 と同じ展開に、ヘッジ項 $-\varsigma\omega\theta$ と、$\theta$ との共分散 $-\sigma^\theta\theta\varsigma$ を加える。

**Step 3　$\varsigma$ の一階条件 → 式(67)**

$\varsigma$ の係数は $-\theta\omega-\sigma^\theta\theta$。ヘッジ市場の清算（$\varsigma=0$）が最適であるためには、係数が0：

$$
-\theta\omega-\sigma^\theta\theta=0\ \Longrightarrow\ \omega=-\sigma^\theta\ge0
$$

**確認**

固有ジャンプが完全にヘッジされるので、借入コストは $r+C(\vartheta)/\vartheta$ ではなく $r$（式(57)でスプレッドが消える）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(64)–(66) | ヘッジ契約とベルマン方程式 |
| 市場清算 | 契約の総量はゼロ |

### A.13 効率性・外部性：式(68)–(76)

**Step 1　第一最善の価格 → 式(68)**

摩擦がなければ専門家が資本を永久に運用する。資本1単位の純産出 $a-\iota$ が成長率 $\Phi(\iota)-\delta$ で増え、割引率 $r$ で評価すると、$\int_0^\infty(a-\iota)e^{-(r-\Phi+\delta)t}dt=\frac{a-\iota}{r-\Phi(\iota)+\delta}$。$\iota$ について最大化 → 式(68)。

**Step 2　$\eta^\ast$ での分解 → 式(69)**

$\theta(\eta^\ast)=1$ を使うと $\theta N=N$。専門家の利得は価値関数 $\theta N$ に等しく、家計の利得は富 $qK-N$ に等しい。

**Step 3　一般形 → 式(70)**

$\theta\ge1$ より $N\le\theta N$。

**Step 4　制約付き実行可能政策 → 式(71)–(74)**

専門家・家計の純資産の運動は、各主体の運動 (9), (13) を、移転 $d\tau,d\underline{\tau}$ を加えて、代表的主体として書いたもの。資源制約 (73) と $N+\underline{N}=qK$ から、移転の合計は0。移転があるので無リスク金利を0にできる。専門家 $i$ の純資産 (74) は、期待収益の割合 $1-\varphi$ と実現収益の割合 $\varphi$ を受け取る形。

**Step 5　命題4の確認 → 式(75)**

(75) の政策では、専門家は時刻0に全額を消費して、以降は消費しない。すべての資本が専門家に配分され（$\psi=1$）、第一最善の投資率 $\iota(\bar q)$ で運用される。以降の移転 $d\tau$ で専門家の純資産を非負に保てば、制約付き実行可能で、第一最善と同じ配分になる。

**Step 6　価格安定化**

$\sigma^q=-\sigma$ とすると、総リスク $\sigma+\sigma^q=0$ で (71) の $dZ$ の項が消え、専門家の純資産は非ランダムになる。

**Step 7　インセンティブ両立性（脚注21）**

専門家が率 $b_tk_t$ で価値を流用すると、便益 $\tilde\varphi b_tk_t\theta_t$ を得る一方、自分の持分の価値は $\varphi_tb_tk_t\theta_t$ 減る。外部に出る資金の価値は $\tilde\varphi b_tk_t\theta_t\le\varphi_tb_tk_t\theta_t$（$\varphi_t\ge\tilde\varphi$）。私的費用が便益を上回るので流用しない。

**確認**

$\eta=\eta^\ast$ では (69) が成り立ち、$\eta\lt\eta^\ast$ では $\theta\gt1$ で (70) の不等号が厳密に成り立つ。

| 入力・使う道具 | 内容 |
|---|---|
| 式(27), (31) | $\theta(\eta^\ast)=1$, $\theta\ge1$ |
| 式(71)–(73) | 制約付き実行可能政策 |

### A.14 ミクロ的基礎づけ：式(79)–(92)

**Step 1　起業家のインセンティブ → 式(80)**

流用率 $b$ で、起業家の自己持分は $\varphi^eb\theta^e$ 失われ、私的便益として $\Xi(m)b$ の資本相当、価値 $\Xi(m)b\theta^e$ を得る。流用しない条件は $\Xi(m)b\theta^e-\varphi^eb\theta^e\le0$ すなわち $\varphi^e\ge\Xi(m)$。これが満たされなければ $b=\bar b$。

**Step 2　仲介機関のインセンティブ → 式(81)**

モニタリング強度 $m'$ を選ぶと、仲介機関の利得は $\varphi^i\Omega(m')-m'$（費用 $m'$ は全額自己負担、付加価値は持分 $\varphi^i$ だけ受け取る）。モニタリングしないと $m=0$ で、起業家が $\bar b$ を流用し、利得は $\varphi^i(\Omega(0)-\bar b)$。モニタリングを選ぶ条件：

$$
\varphi^i\Omega(m')-m'\ge\varphi^i\big(\Omega(0)-\bar b\big)\ \Longleftrightarrow\ \varphi^i\big[\Omega(m')-\Omega(0)+\bar b\big]\ge m'
$$

→ 式(81)。

**Step 3　契約の集合 → 式(82)(83)**

流用を防ぐ契約は、$\varphi^e=\varphi^e(m)$ かつ $\varphi^i\ge\varphi^i(m)$。満たされなければ価値の運動は式(83)。

**Step 4　均衡条件 → 式(84)–(86)**

資本を保有する専門家の最適性（式(29)の類似）に、モニタリングの付加価値と費用 $\Omega(m)-m$ を加え、$m$ で最大化して0に等しいとする → 式(84)。$\mu^{\theta,e}=\rho^e-r$, $\mu^{\theta,i}=\rho^i-r$ はベルマン方程式から（式(85)）。家計の条件は式(86)。

**Step 5　命題5：1状態変数への帰着 → 式(90)**

(a) $N^e=0$：起業家を規律できるのは完全なモニタリング $\bar m$（$\Xi(\bar m)=0$）だけ。$\Omega(\bar m)=\bar m$ と正規化すると $dk/k=(\Phi-\delta)dt+\sigma dZ$、$\tilde\varphi=\varphi^i(\bar m)$。(b) $N^i=0$：$m=0$、$\Omega(0)=0$ と正規化。$\varphi^e\ge\tilde\varphi=\Xi(0)$。(c) 完全代替：$N=N^e+N^i$ が1つの状態変数。

**Step 6　命題6：最適契約 → 式(91)(92)**

(i) 資産価値が $n_{t-}/\tilde\varphi$ 未満しか下がらないジャンプには監視が不要：流用でないと保証するため、内部持分から $\tilde\varphi k_t|dJ^i_t|$ を引く（専門家はジャンプ・リスクにリスク中立で、$\theta$ と無相関なのでコストがかからない）。監視は死荷重を生むだけ。また、連続的な流用に対して監視は有効でない（無限小の逸脱に正の費用を払うことになる。確率的監視は禁止）。(ii) $n_{t-}/\tilde\varphi$ を超える下落には、監視が必要（そのような大きな流用を防ぐ唯一の手段）。(iii) 回収資本は、一般性を失わず、すべて債権者に渡してよい（専門家は固有リスクにリスク中立）。(iv) 債権者の補償のため純資産は (92) に従い、$\varphi=\tilde\varphi$ が集計リスクの最小化になる。

**確認**

(a), (b) は、ベースラインの境界 $\tilde\varphi$ に一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(77)–(79) | モニタリング付き技術と利益配分 |
| 式(29)（類似） | 資本保有の最適性 |
| 仮定A, B | 総価値への契約、ロックアップなし |

### A.15 補論：$k_t$ への契約：式(94)–(98)

**Step 1　$\theta n$ のマルチンゲール性**

(94) の $n$ について、

$$
d(\theta n)=\theta\big(rn\,dt+\beta\sigma k\,dZ-\sigma^\theta\beta\sigma k\,dt\big)+(\mu^\theta dt+\sigma^\theta dZ)\theta n+\sigma^\theta\theta\beta\sigma k\,dt
$$

$-\sigma^\theta\theta\beta\sigma k$ と $+\sigma^\theta\theta\beta\sigma k$ が打ち消し合い、$\mu^\theta=\rho-r$ で $d(\theta n)=\rho\theta n\,dt+(\text{拡散})$。よって $e^{-\rho t}\theta n$ はマルチンゲール。

**Step 2　インセンティブ制約 → 式(95)**

流用1単位で $\tilde\varphi q$ 単位の純資産を得る（他で効用 $\tilde\varphi q\theta$）ので、$\beta\ge\tilde\varphi q$。

**Step 3　資本の価格式 → 式(96)**

家計の資本収益：$(kq)r^k=(a-\iota)k\,dt+d(qk)-\beta k\sigma\,dZ+\beta\sigma^\theta\sigma k\,dt$。期待収益 $=r$ とし、$\beta=\tilde\varphi q$ を代入、$kq$ で割ると

$$
\frac{a-\iota}{q}+\mu^q+g+\sigma\sigma^q-r+\tilde\varphi\sigma^\theta\sigma=0
$$

**Step 4　純資産と $\eta$ → 式(97)(98)**

(94) に (96) を使うと $dn$ は (97) の形で、$dZ$ の係数は $\tilde\varphi\sigma$（$\sigma^q$ なし）。集計して A.6 と同様に計算：

$$
\sigma^\eta=\Big(\frac{\psi\tilde\varphi q}{\eta}-1\Big)\sigma,\qquad \sigma^q=\frac{q'}{q}\sigma^\eta\eta
$$

**確認**

式(40)で $q'$ を分母から外した形（分母=1）。レバレッジの増幅は残るが、価格のフィードバックはない。

| 入力・使う道具 | 内容 |
|---|---|
| 式(94)–(96) | $k$ への契約の純資産・制約・価格式 |
| T1, T2 | 積の公式、伊藤の補題 |

### A.16 著者について

**Markus K. Brunnermeier**
- **アカデミックな経歴**: Princeton大学 Edwards S. Sanford 経済学教授、同大学 Bendheim Center for Finance のディレクター。London School of Economics（LSE）で博士号（1998年）を取得。
- **主要な研究分野**: マクロ経済学・金融経済学。流動性、金融危機、バブル、システミック・リスク、資産価格。
- **評判・学術的貢献**: Bernácer賞（2007年）などを受賞。Econometric Society フェロー。代表的業績は、"Market Liquidity and Funding Liquidity"（Brunnermeier and Pedersen, *RFS* 2009）、"Deciphering the Liquidity and Credit Crunch 2007–2008"（*JEP* 2009）、CoVaR（Adrian との共著）、本論文など。

**Yuliy Sannikov**
- **アカデミックな経歴**: ロシア出身。Stanford大学で博士号を取得。UC Berkeley、Princeton大学を経て、現在はStanford大学 Graduate School of Business の教授。
- **主要な研究分野**: 連続時間のコントラクト理論（動的エージェンシー問題）、マクロ・ファイナンス、金融摩擦。
- **評判・学術的貢献**: John Bates Clark Medal（2016年）、MacArthur Fellowship を受賞。"A Continuous-Time Version of the Principal–Agent Problem"（*REStud* 2008）で連続時間のコントラクト理論を切り開き、DeMarzo との共著（*JF* 2006）とともに、本論文の連続時間の手法の基礎になっている。

> 著者情報は公知の情報に基づく。所属・受賞歴の最新状況は、各自のウェブサイトで確認してください。

---

**© 2014 Markus K. Brunnermeier and Yuliy Sannikov**.（原論文の著作権表記。本記事は原論文（2011年2月22日版ワーキングペーパー）の数理モデルを整理した早見表で、原論文の著作権は著者・掲載誌に帰属します。）
{% endraw %}
