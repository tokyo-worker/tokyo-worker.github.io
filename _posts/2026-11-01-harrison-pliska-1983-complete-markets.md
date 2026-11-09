---
layout: post
title: "Harrison & Pliska (1983) \"A Stochastic Calculus Model of Continuous Trading: Complete Markets\"、Stochastic Processes and Their Applications: 数理モデル"
date: 2026-11-01 00:00:00 +0900
categories: [金融数学, 資産価格理論]
math: true
---

{% raw %}
# Harrison & Pliska (1983) "A Stochastic Calculus Model of Continuous Trading: Complete Markets"、Stochastic Processes and Their Applications: 数理モデル
### 連続取引モデルにおける市場の完備性とマルチンゲール測度の一意性

---

## 論文の紹介

> **この記事について**：本稿は、Harrison & Pliska (1983) の**背景にある数理モデル**（確率解析にもとづく連続取引モデル）を、式・前提・記号・導出を中心にまとめた早見表です。論文の主題は、1981年の同著者による論文（*Martingales and Stochastic Integrals in the Theory of Continuous Trading*, Stochastic Processes and Their Applications, 11(3), 215–260）で提示された一般モデルについて、「**市場の完備性**」の特徴づけを厳密に証明し、拡張することです。

**論文リンク**：
- 無料で全文を読める版：確認できなかった
- 公式版（出版社・DOI）：<https://doi.org/10.1016/0304-4149(83)90038-8> （Stochastic Processes and their Applications, 15(3), 313–316（1983）。DOIは他論文の文献リストで確認。閲覧に契約や所属機関経由のアクセスが必要な場合がある）

**論文の概要**

- **書誌**：J. Michael Harrison（Stanford University）、Stanley R. Pliska（Northwestern University）。*A Stochastic Calculus Model of Continuous Trading: Complete Markets*。Stochastic Processes and Their Applications, 15(3), 313–316（1983）。本稿の元資料は Northwestern University, Center for Mathematical Studies in Economics and Management Science の Discussion Paper No. 489（1981年7月）。
- **問い**：1981年論文は、「すべての可積分な偶発請求権が到達可能（＝モデルが完備）」であることと「すべてのマルチンゲールが割引価格過程に関する確率積分で表現できる」ことが同値であると述べ、証明はスケッチのみでした。また、同値マルチンゲール測度が一意ならば完備、という片側だけを主張していました。
- **結果**：本論文は、**(a) モデルの完備性、(b) マルチンゲールの表現性、(c) 同値マルチンゲール測度の集合が一点集合**、の三つが**すべて同値**であることを詳細に証明します（式(11)）。
- **証明の道具**：(a)⇔(b) は初等的な構成で示し、(b)⇔(c) は Jacod (1979) の端点（extreme point）に関する理論を使います。
- **後半の補足**：表現性 (b) が成り立つ具体例（拡散過程、Wiener・Poisson マルチンゲール）を、Yamada–Watanabe、Jacod–Yor、Yor らの結果として紹介しています。

> 数理モデルの部分（第1章）は、元資料の記法・条件を簡略化せずそのまま採用しています。式番号と、記号の衝突の回避（後述の $\lambda$）のみ本稿で付け直しました。

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

確率空間 $(\Omega,\mathcal{F},P)$、固定された有限の時間horizon $T\lt\infty$、フィルトレーション $\mathbb{F}=\{\mathcal{F}_t;\ 0\le t\le T\}$ を考える。$\mathbb{F}$ は通常の条件（les conditions habituelles）を満たし、$\mathcal{F}_0$ は $\Omega$ と $P$-零集合のみを含み、$\mathcal{F}_T=\mathcal{F}$ とする。

**A1 証券価格過程**

$S=\{S_t;\ 0\le t\le T\}$ は $K+1$ 個の成分 $S^0,S^1,\dots,S^K$ をもつベクトル過程で、各成分は適合的・右連続（左極限あり）・狭義正。さらに $S^0$ は半マルチンゲールで $S^0_0=1$。$S^k_t$ は第 $k$ 証券の時点 $t$ の価値。$S^0$ が割引（ニュメレール）に使われる。

**A2 割引価格過程**

$\beta=1/S^0$ とおき、割引価格過程 $Z=(Z^1,\dots,Z^K)$ を次で定める。

$$
\underbrace{\beta_t=\frac{1}{S^0_t}}_{\text{割引係数}},\qquad \underbrace{Z^k_t=\beta_t\,S^k_t}_{\text{割引価格}}\quad(k=1,\dots,K)\tag{1}
$$

> $S^0$ は割引に使うだけの証券（通常の債券・マネー口座に相当）。$Z^0=\beta S^0\equiv 1$ となるので、$Z$ は $k=1,\dots,K$ のみ。

**A3 無裁定（同値マルチンゲール測度の存在）**

$P$ と同値で、$Z$ がそのもとで（ベクトル）マルチンゲールとなる確率測度 $Q$ の集合を $\mathbb{P}$ とする。

$$
\underbrace{\mathbb{P}}_{\text{測度の集合}}=\{\,Q:\ \underbrace{Q\sim P}_{P\text{と同値}},\ \underbrace{Z\ \text{は}\ Q\text{-マルチンゲール}}_{\text{割引価格がマルチンゲール}}\,\},\qquad \mathbb{P}\ne\emptyset\tag{2}
$$

> $\mathbb{P}\ne\emptyset$ を仮定すると、$S$ と $Z$ は $P$ のもとで半マルチンゲールになる。この仮定は、投資家が不合理な利益を得る裁定機会を排除するためのもの。

**A4 基準測度**

$\mathbb{P}$ の任意の要素 $P^{\ast}\in\mathbb{P}$ を選んで**基準測度**とし、対応する期待値作用素を $E^{\ast}$ と書く。

> 後述の許容戦略の条件 (iv) のみが基準測度の選び方に依存し得る（元資料の注記）。

| 記号・項目 | 意味 |
|---|---|
| $(\Omega,\mathcal{F},P)$ | 確率空間 |
| $T$ | 固定された有限の時間horizon |
| $\mathbb{F}=\{\mathcal{F}_t\}$ | フィルトレーション（通常の条件を満たす） |
| $S^k_t$ | 第 $k$ 証券の時点 $t$ の価値（$k=0,1,\dots,K$） |
| $S^0$ | 割引に使う証券（半マルチンゲール、$S^0_0=1$） |
| $\beta_t$ | 割引係数 $1/S^0_t$ |
| $Z^k_t$ | 第 $k$ 証券の割引価格 |
| $\mathbb{P}$ | 同値マルチンゲール測度の集合 |
| $P^{\ast}$, $E^{\ast}$ | 基準測度とその期待値作用素 |

### 1.1 許容取引戦略

**積分可能な戦略のクラス**

$L(Z)$ を、半マルチンゲール $Z$ について積分可能なすべてのベクトル値・可予測過程 $H=(H^1,\dots,H^K)=\{H_t;\ 0\le t\le T\}$ の集合とする（詳細は Jacod (1979, p.52)）。

**価値過程と利得過程**

取引戦略 $\Phi=(\Phi^0,\Phi^1,\dots,\Phi^K)=\{\Phi_t;\ 0\le t\le T\}$ は可予測なベクトル値過程。$\Phi^k_t$ は時点 $t$ に投資家が保有する第 $k$ 証券の数量（単位数）。

$$
\underbrace{V^{\ast}(\Phi)}_{\text{割引価値過程}}=\underbrace{\beta\,\Phi S}_{\text{割引後の保有価値}}=\beta\sum_{k=0}^{K}\Phi^{k}S^{k}\tag{3}
$$

$$
\underbrace{G^{\ast}(\Phi)}_{\text{割引利得過程}}=\underbrace{\int\Phi\,dZ}_{\text{確率積分}}=\sum_{k=1}^{K}\int\Phi^{k}\,dZ^{k}\tag{4}
$$

> $V^{\ast}(\Phi)$ はポートフォリオの割引価値、$G^{\ast}(\Phi)$ は投資家の取引による割引後の純損益。

**許容取引戦略（admissible trading strategy）**

可予測過程 $\Phi$ が次の (i)〜(iv) をすべて満たすとき、許容的という。

$$
\begin{aligned}
&\text{(i)}\quad \underbrace{(\Phi^{1},\dots,\Phi^{K})\in L(Z)}_{\text{Zで積分可能}}\\
&\text{(ii)}\quad \underbrace{V^{\ast}(\Phi)\ge 0}_{\text{価値は負にならない}}\\
&\text{(iii)}\quad \underbrace{V^{\ast}(\Phi)=V^{\ast}_0(\Phi)+G^{\ast}(\Phi)}_{\text{価値の変化は投資損益のみ}}\\
&\text{(iv)}\quad \underbrace{V^{\ast}(\Phi)\ \text{は}\ P^{\ast}\text{-マルチンゲール}}_{\text{愚かな戦略の排除}}
\end{aligned}\tag{5}
$$

> (ii) は価値が負になることを許さない。(iii) は資金の注入・引出しがないこと（自己充足性）。(iv) は資金を捨てるような愚かな戦略を排除し、**条件 (iv) だけが基準測度 $P^{\ast}$ の選択に依存し得る**。

| 記号・項目 | 意味 |
|---|---|
| $L(Z)$ | $Z$ で積分可能なベクトル値・可予測過程の集合 |
| $\Phi^k_t$ | 時点 $t$ に保有する第 $k$ 証券の数量 |
| $V^{\ast}(\Phi)$ | 割引価値過程（$V^{\ast}_t(\Phi)$ は時点 $t$ の値） |
| $G^{\ast}(\Phi)$ | 割引利得過程 |
| $V^{\ast}_0(\Phi)$ | 割引価値過程の初期値 |

### 1.2 偶発請求権と完備性

**到達可能性**

偶発請求権 $X$ は正の確率変数（$\mathcal{F}=\mathcal{F}_T$ 可測）。許容取引戦略 $\Phi$ が存在して次を満たすとき、$X$ は**到達可能**といい、$\Phi$ は $X$ を**生成する**という。

$$
\underbrace{V^{\ast}_T(\Phi)}_{\text{満期の割引価値}}=\underbrace{\beta_T\,X}_{\text{割引後の請求権}}\tag{6}
$$

**可積分性**

$$
\underbrace{E^{\ast}(\beta_T X)}_{\text{割引請求権の期待値}}\lt\infty\tag{7}
$$

**完備性**

モデルが**完備**であるとは、可積分な偶発請求権がすべて到達可能であること。

$$
\underbrace{E^{\ast}(\beta_T X)\lt\infty}_{\text{式(7)：可積分}}\ \Longrightarrow\ \underbrace{\exists\ \Phi\ \text{（許容）}:\ V^{\ast}_T(\Phi)=\beta_T X}_{\text{式(6)：到達可能}}\qquad(\text{すべての偶発請求権}\ X)\tag{8}
$$

> 偶発請求権はストックオプションなど様々な金融商品のモデルとなる。モデルの完備性を知ることは、請求権の価格計算を容易にする（元資料の記述）。

| 記号・項目 | 意味 |
|---|---|
| $X$ | 偶発請求権（正の確率変数、$\mathcal{F}_T$ 可測） |
| $\beta_T X$ | 満期 $T$ の割引後の請求権 |
| 生成する | $\Phi$ が式(6)を満たすこと |

### 1.3 表現性と同値マルチンゲール測度

**マルチンゲールの表現性（representation property）**

ここでのマルチンゲールは、フィルトレーション $\mathbb{F}$ と基準測度 $P^{\ast}$ に関する通常の意味での実数値確率過程 $M=\{M_t;\ 0\le t\le T\}$ をいう。

$$
\underbrace{M}_{\text{任意のマルチンゲール}}=\underbrace{M_0}_{\text{初期値}}+\underbrace{\int H\,dZ}_{\text{Zによる確率積分}},\qquad H\in L(Z)\tag{9}
$$

**同値マルチンゲール測度の一意性**

$$
\underbrace{\mathbb{P}\ \text{は一点集合}}_{\text{同値マルチンゲール測度が一意}}\quad\Longleftrightarrow\quad\mathbb{P}=\{P^{\ast}\}\tag{10}
$$

> $P^{\ast}\in\mathbb{P}$ は A4 で選ばれているため、$\mathbb{P}$ が一点集合であることは $\mathbb{P}=\{P^{\ast}\}$ と同じ。

| 記号・項目 | 意味 |
|---|---|
| $M_t$ | マルチンゲール（$\mathbb{F}$ と $P^{\ast}$ に関して） |
| $H$ | $L(Z)$ に属する可予測過程（積分の被積分関数） |
| $\int H\,dZ$ | $\sum_{k=1}^K\int H^k\,dZ^k$ |
| 一点集合 | 要素がただ一つの集合 |

### 1.4 主要帰結

**定理（Harrison & Pliska）**

$$
\boxed{\begin{aligned}
&\text{(a)}\ \underbrace{\text{モデルは}\ P^{\ast}\ \text{のもとで完備}}_{\text{式(8)}}\\
&\Longleftrightarrow\ \text{(b)}\ \underbrace{M=M_0+\int H\,dZ,\ H\in L(Z)}_{\text{式(9)：表現性}}\\
&\Longleftrightarrow\ \text{(c)}\ \underbrace{\mathbb{P}\ \text{は一点集合}}_{\text{式(10)}}
\end{aligned}}\tag{11}
$$

**生成戦略の価値過程**（証明 (a)⇒(b) の中で用いる関係）

可積分な請求権 $X$ を生成する許容戦略 $\Phi$ について、

$$
\underbrace{V^{\ast}_t(\Phi)}_{\text{割引価値}}=\underbrace{E^{\ast}\bigl(\beta_T X\mid\mathcal{F}_t\bigr)}_{\text{割引請求権の条件付期待値}}\tag{12}
$$

> 式(5)(iv) の「$V^{\ast}(\Phi)$ は $P^{\ast}$-マルチンゲール」と式(6)から従う。

**本論文と1981年論文の関係**

| 項目 | 1981年論文（定理(3.35)とその系） | 本論文 |
|---|---|---|
| (c)⇒(a) | 主張のみ | 証明あり |
| (a)⇔(b) | 主張、証明はスケッチのみ | 詳細な証明 |
| (b)⇒(c) | なし | 新規（Jacod の端点理論を使用） |
| (c)⇐(b)、すなわち (c)⇒(b) | (c)⇒(a)⇔(b) 経由 | 直接証明（式(18)〜(20)） |

**表現性 (b) が成り立つ条件**（元資料第3章の補足）

| 条件 | 内容 | 出典（元資料の引用） |
|---|---|---|
| 拡散過程＋Stroock–Varadhan問題の解の一意性 | マルチンゲールである拡散過程で、Stroock–Varadhan問題が一意解をもてば表現性が成り立つ（例：拡散係数が Lipschitz） | Yamada & Watanabe (1971) |
| 非退化な拡散行列＋連続な係数 | マルチンゲールである拡散過程で、拡散行列が非退化かつ係数が連続なら表現性が成り立つ | Jacod & Yor (1977)、Yor (1977) |
| 定常増分をもつ1次元マルチンゲール | 表現性を満たすのは Wiener および Poisson マルチンゲールのみ（増分の独立性は仮定せず、他の条件から従う） | Yor (1978)（J. de Sam Lazaro との付録） |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 裁定機会の排除 | $\mathbb{P}\ne\emptyset$（式(2)）を仮定することで、不合理な利益を得る機会を排除する（元資料の記述） |
| 偶発請求権の複製可能性（完備性） | 可積分な請求権はすべて許容戦略で生成できる（式(8)）。ストックオプションなどのモデルに対応し、価格計算を容易にする |
| 複製と測度の一意性の対応 | 完備性は、同値マルチンゲール測度が一意であること（式(10)）と同値（式(11)） |
| 複製と確率積分表現の対応 | 完備性は、マルチンゲールが $Z$ による確率積分で表現できること（式(9)）と同値 |
| 完備になる具体的な価格過程 | 拡散過程（マルチンゲール）や Wiener・Poisson マルチンゲールで表現性が成り立つ（1.4節の表） |

## 3. 整理している点 {#sec3}

- **完備性の三つの顔を同値でつないだ点**：経済的な性質（すべての請求権が複製可能）、確率論的な性質（マルチンゲールの確率積分表現）、測度論的な性質（同値マルチンゲール測度の一意性）が、式(11)で一つにまとまる。
- **1981年論文の片側主張を両側に完成させた点**：(c)⇒(a)⇔(b) のみだった主張に、(b)⇒(c)（および直接の (c)⇒(b)）を加えて完全な同値にした。
- **許容戦略の定義と基準測度の関係を明確にした点**：条件 (iv) のみが基準測度に依存すること、$P^{\ast}$ を $\mathbb{P}$ の任意の要素から選べることを前提として、証明を組み立てている。

## 4. 対象外の現象 {#sec4}

- **不完備市場**：論文の題名が示すとおり完備市場のみを扱う。$\mathbb{P}$ が一点集合でない場合の価格づけや複製は主張しない。
- **価格の具体的な計算式**：請求権の価格計算の詳細は1981年論文に譲っており、本論文では導かない。
- **無裁定条件 $\mathbb{P}\ne\emptyset$ の導出**：これは仮定であり、裁定機会の不存在との同値性などは本論文の主張ではない。
- **表現性 (b) の判定法の網羅**：1.4節の表は補足的なコメントであり、(b) が成り立つ必要十分条件の完全な分類ではない。
- **取引費用・流動性などの市場摩擦**：モデルは摩擦のない取引を前提とし、これらは扱わない。

## 5. 主要文献・関連論文 {#sec5}

- **[金字塔的論文]** Black, F., & Scholes, M. (1973). The pricing of options and corporate liabilities. *Journal of Political Economy*, 81(3), 637–654.
  - **位置づけ**: 連続時間でのオプション価格理論の出発点。複製戦略によるオプション評価という発想は、本モデルの「到達可能性」の原型。
- **[基礎論文]** Harrison, J. M., & Kreps, D. M. (1979). Martingales and arbitrage in multiperiod securities markets. *Journal of Economic Theory*, 20(3), 381–408.
  - **位置づけ**: 無裁定と同値マルチンゲール測度の存在を結びつけた基礎論文。本モデルの前提 $\mathbb{P}\ne\emptyset$ の背景。
- **[原モデル]** Harrison, J. M., & Pliska, S. R. (1981). Martingales and stochastic integrals in the theory of continuous trading. *Stochastic Processes and Their Applications*, 11(3), 215–260.
  - **位置づけ**: 本稿の数理モデル（許容戦略・偶発請求権・完備性）を最初に提示した論文。本論文はその完備性に関する主結果の厳密な証明と拡張。
- **[発展・一般化]** Delbaen, F., & Schachermayer, W. (1994). A general version of the fundamental theorem of asset pricing. *Mathematische Annalen*, 300(1), 463–520.
  - **位置づけ**: 無裁定と同値（シグマ）マルチンゲール測度の存在との対応を、一般の半マルチンゲール価格過程で確立した主要文献。
- **[証明の道具]** Jacod, J. (1979). *Calcul stochastique et problèmes de martingales* (Lecture Notes in Mathematics, 714). Springer-Verlag.
  - **位置づけ**: 本論文が (b)⇔(c) の証明で使う、表現性と端点の関係（Theorem 11.2、Corollary 11.4）の出典。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
価格過程 S=(S^0,...,S^K)  --β=1/S^0-->  割引価格 Z=βS                 式(1)
        |
        v
同値マルチンゲール測度の集合 P ≠ ∅,  基準測度 P* ∈ P               式(2)
        |
        v
許容戦略 Φ: (i)〜(iv) → V*(Φ) = V*_0(Φ) + ∫Φ dZ                  式(3)(4)(5)
        |
        v
偶発請求権 X: 到達可能 (6)・可積分 (7) → 完備性 (8)

        完備性 (a) 式(8)
          ^  |
   A.3    |  | A.2          (a)<=>(b)  初等的な構成
          |  v
        表現性 (b) 式(9)
          ^  |
   A.4    |  | A.4          (b)<=>(c)  Jacodの端点理論
          |  v
        P は一点集合 (c) 式(10)
```

### A.1 使う道具

**T1 正のマルチンゲールの差による表現**

任意のマルチンゲールは、二つの正のマルチンゲールの差として表せる（元資料より）。

**T2 マルチンゲールの条件付期待値表現**

$M$ が $P^{\ast}$-マルチンゲールなら $M_t=E^{\ast}(M_T\mid\mathcal{F}_t)$。

**T3 局所マルチンゲールの測度集合と端点**

$Z$ が各 $Q$ のもとで局所マルチンゲールとなる $(\Omega,\mathcal{F})$ 上の確率測度全体を $M(Z)$ と書く。

$$
M(Z)=\{\,Q:\ Z\ \text{は}\ Q\text{のもとで局所マルチンゲール}\,\},\qquad \mathbb{P}\subset M(Z)\tag{13}
$$

$Q\in M(Z)$ が $M(Z)$ の異なる二つの要素の狭義の凸結合として表せないとき、$Q$ を**端点**という。端点全体を $M_e(Z)$ と書く。

$$
Q\in M_e(Z)\ \Longleftrightarrow\ \lnot\,\exists\,\alpha\in(0,1),\ Q'\ne Q''\in M(Z):\ Q=\alpha Q'+(1-\alpha)Q''\tag{14}
$$

**T4 Jacod (1979) Theorem (11.2)**

$$
Q\in M_e(Z)\ \Longleftrightarrow\ Z\ \text{は}\ Q\text{のもとで全ての}\ H^1\ \text{マルチンゲールを表現できる}\tag{15}
$$

> 局所化（localization）により、「全ての $H^1$ マルチンゲール」は「全ての局所マルチンゲール」に置き換えられる（元資料より）。

**T5 Jacod (1979) Corollary (11.4)（Theorem (11.3) の条件 (iv) も参照）**

$P^{\ast}\in M_e(Z)$ ならば、$P^{\ast}$ と同値な $Q\in M(Z)$ で $P^{\ast}$ と異なるものは存在しない（特に $Q\in\mathbb{P}$ について）。

**T6 Jacod (1979) Proposition (11.14) の証明の考え方**

測度の不等式 $Q'\le P^{\ast}/\alpha$ から、$Z$ が $Q'$ のもとでマルチンゲールになることが示せる（元資料は「示せる」と述べるのみで詳細は書かない）。

| 入力・使う道具 | 内容 |
|---|---|
| T1 | 正のマルチンゲールの差による分解（A.2 で使用） |
| T2 | 条件付期待値表現（A.2, A.3 で使用） |
| T3〜T5 | 端点の定義と Jacod の定理（A.4 で使用） |
| T6 | $Q'\le P^{\ast}/\alpha$ からのマルチンゲール性（A.4 で使用） |

### A.2 (a)⇒(b)：完備性から表現性へ

**Step 1　任意のマルチンゲールを正に限定する**（T1）

$M$ を任意のマルチンゲールとする。T1 より $M$ は二つの正のマルチンゲールの差で表せるので、一般性を失わず $M$ は正としてよい。

> 補足（本稿で補った点）：二つの正のマルチンゲールがそれぞれ式(9)の表現をもてば、確率積分の線形性により差も同じ形の表現をもつ。

**Step 2　偶発請求権を構成する**

$$
X=S^0_T\,M_T
$$

$M$ は正なので $X$ は偶発請求権。$\beta_T S^0_T=1$ だから $E^{\ast}(\beta_T X)=E^{\ast}(M_T)=M_0\lt\infty$ で、$X$ は式(7)を満たし可積分。

**Step 3　完備性を適用する**（式(8)）

モデルは完備なので、$X$ は到達可能。すなわち許容取引戦略 $\Phi$ が存在して $V^{\ast}_T(\Phi)=\beta_T X=M_T$。

**Step 4　$V^{\ast}(\Phi)$ の確率積分表現**（式(5)(iii)）

許容戦略の定義 (iii) より、$H=(\Phi^1,\dots,\Phi^K)$ として

$$
V^{\ast}(\Phi)=V^{\ast}_0(\Phi)+\int H\,dZ
$$

**Step 5　$M$ と $V^{\ast}(\Phi)$ の一致**（T2、式(12)）

$M$ はマルチンゲールなので $M_t=E^{\ast}(M_T\mid\mathcal{F}_t)=E^{\ast}(\beta_T X\mid\mathcal{F}_t)$。一方、(iv) より $V^{\ast}(\Phi)$ もマルチンゲールなので $V^{\ast}_t(\Phi)=E^{\ast}\bigl(V^{\ast}_T(\Phi)\mid\mathcal{F}_t\bigr)=E^{\ast}(\beta_T X\mid\mathcal{F}_t)$（式(12)）。したがって $M_t=V^{\ast}_t(\Phi)$。

**Step 6　結論**（式(9)）

Step 4 と Step 5 より $M=V^{\ast}_0(\Phi)+\int H\,dZ$。$t=0$ で $M_0=V^{\ast}_0(\Phi)$ なので、$M=M_0+\int H\,dZ$、$H\in L(Z)$ となり、式(9)が得られる。

**確認**

$\Phi$ が許容的であることは (i) $H\in L(Z)$、(ii) $V^{\ast}(\Phi)=M\ge 0$ を満たすことと整合する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(5)(iii)(iv) | 価値過程の積分表現とマルチンゲール性 |
| 式(7)(8) | 可積分性と完備性 |
| T1, T2 | 正のマルチンゲールへの還元、条件付期待値表現 |

### A.3 (b)⇒(a)：表現性から完備性へ

**Step 1　偶発請求権とマルチンゲールを定める**

$X$ を任意の可積分な偶発請求権とする（式(7)）。次でマルチンゲール $M$ を定める。

$$
M_t=E^{\ast}\bigl(\beta_T X\mid\mathcal{F}_t\bigr)
$$

**Step 2　表現性を適用する**（式(9)）

(b) より、$H\in L(Z)$ が存在して $M=M_0+\int H\,dZ$。

**Step 3　取引戦略を構成する**

$$
\Phi^{1}=H^{1},\ \dots,\ \Phi^{K}=H^{K},\qquad \Phi^{0}=M_0+\int H\,dZ-HZ\tag{16}
$$

**Step 4　$V^{\ast}(\Phi)=M$ を確かめる**（式(3)）

$\beta S^0=1$、$\beta S^k=Z^k$ より $V^{\ast}(\Phi)=\Phi^0+HZ=M_0+\int H\,dZ=M$。

**Step 5　許容性を確かめる**（式(5)）

(i) $H\in L(Z)$。(ii) $X\gt 0$ より $M\ge 0$。(iii) $V^{\ast}_0(\Phi)=M_0$ で $V^{\ast}(\Phi)=M_0+\int H\,dZ$。(iv) $M$ は $P^{\ast}$-マルチンゲール。よって $\Phi$ は許容取引戦略。

> 補足：元資料は「これは許容取引戦略 $\Phi$ を与える」と述べるのみ。上記の確認 (i)〜(iv) は本稿で補った。$\Phi^0$ の可予測性は、元資料では明示的に確認されていない。

**Step 6　結論**（式(6)(8)）

$V^{\ast}_T(\Phi)=M_T=E^{\ast}(\beta_T X\mid\mathcal{F}_T)=\beta_T X$（$X$ は $\mathcal{F}_T$ 可測）。したがって $X$ は到達可能で、モデルは完備（式(8)）。

**確認**

$H\equiv 0$ なら $M\equiv M_0$（定数のマルチンゲール）で、$\Phi=(M_0,0,\dots,0)$ は定数の請求権 $\beta_T X=M_0$ を生成する。式(16)と整合する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(9) | 表現性 |
| 式(3)(5) | 価値過程の定義、許容性 |
| T2 | 条件付期待値によるマルチンゲールの構成 |

### A.4 (b)⇔(c)：表現性と同値マルチンゲール測度の一意性

**Step 1　表現性と端点の対応**（T3, T4）

T4（式(15)）と局所化により、$Q\in M_e(Z)$ は「$Z$ が $Q$ のもとで全ての局所マルチンゲールを表現できる」ことと同値。$Q=P^{\ast}$ とおくと、

$$
P^{\ast}\in M_e(Z)\ \Longleftrightarrow\ \text{表現性 (b) が成り立つ}\tag{17}
$$

**Step 2　(b)⇒(c)**（T5）

(b) が成り立つなら、式(17)より $P^{\ast}\in M_e(Z)$。T5 より、$P^{\ast}$ と同値な $Q\in M(Z)$ で $P^{\ast}$ と異なるものはない。$\mathbb{P}\subset M(Z)$ で、$\mathbb{P}$ の要素は $P$ と同値、したがって $P^{\ast}$ とも同値なので、$\mathbb{P}$ は $P^{\ast}$ のみを含む。よって $\mathbb{P}$ は一点集合。

**Step 3　(c)⇒(b)：背理法の設定**（式(17)）

式(17)より、$P^{\ast}\in M_e(Z)$ を示せば十分。成り立たないと仮定すると、式(14)より、$\alpha\in(0,1)$ と異なる $Q',Q''\in M(Z)$ が存在して

$$
P^{\ast}=\alpha Q'+(1-\alpha)Q''\tag{18}
$$

**Step 4　$Z$ が $Q'$, $Q''$ のもとでマルチンゲール**（T6）

式(18)より

$$
Q'\le P^{\ast}/\alpha\tag{19}
$$

Jacod (1979) の Proposition (11.14) の証明と同じ考え方で、$Z$ は $Q'$ のもとでマルチンゲールとなる。$Q''$ も同様（$Q''\le P^{\ast}/(1-\alpha)$）。

**Step 5　混合測度の構成**

$\lambda\in(0,1)$ に対し

$$
Q_\lambda\equiv\lambda Q'+(1-\lambda)Q''\tag{20}
$$

> 元資料はこの混合係数にも $\beta$ を使うが、本稿では割引係数 $\beta$ との衝突を避けて $\lambda$ と書く。

任意の $s\lt t$ と $A\in\mathcal{F}_s$ で、$E_{Q'}[(Z_t-Z_s)\mathbf 1_A]=0$、$E_{Q''}[(Z_t-Z_s)\mathbf 1_A]=0$。期待値が測度について線形なので $E_{Q_\lambda}[(Z_t-Z_s)\mathbf 1_A]=0$。よって $Z$ は $Q_\lambda$ のもとでマルチンゲール。

> 補足（本稿で補った点）：上の線形性の確認と、次の同値性の確認は元資料に明記されていない。

**Step 6　$Q_\lambda\sim P^{\ast}$ の確認**

$Q',Q''\ll P^{\ast}$（式(18)）より $Q_\lambda\ll P^{\ast}$。逆に $Q_\lambda(A)=0$ なら、$\lambda\in(0,1)$ なので $Q'(A)=Q''(A)=0$、式(18)より $P^{\ast}(A)=0$。よって $Q_\lambda\sim P^{\ast}$。$P^{\ast}\sim P$ なので $Q_\lambda\sim P$。

**Step 7　矛盾**

Step 5, 6 より、全ての $\lambda\in(0,1)$ で $Q_\lambda\in\mathbb{P}$。$Q'\ne Q''$ なので $Q_\lambda$ は $\lambda$ ごとに異なり、$\mathbb{P}$ は無限個の要素をもつ。これは (c)（$\mathbb{P}$ が一点集合）と矛盾。したがって $P^{\ast}\in M_e(Z)$、すなわち (b)。

**確認**

$\mathbb{P}$ が二点 $P^{\ast},Q$ を含むなら、$\lambda P^{\ast}+(1-\lambda)Q$ も全て $\mathbb{P}$ に含まれる（Step 5, 6 と同じ議論）。$\mathbb{P}$ は凸集合なので、一点集合でなければ連続体の濃度をもつ。

| 入力・使う道具 | 内容 |
|---|---|
| T3, T4（式(13)〜(15)） | $M(Z)$、端点、Jacod の端点定理 |
| T5 | $P^{\ast}\in M_e(Z)$ なら他の同値測度は存在しない |
| T6 | $Q'\le P^{\ast}/\alpha$ からマルチンゲール性 |
| 式(18)〜(20) | 凸結合の分解と混合測度 |

### A.5 著者について

**J. Michael Harrison（ジョン・マイケル・ハリソン）**
- **アカデミックな経歴**: Lehigh University で産業工学の BS（1966）、Stanford University で産業工学の MS（1967）と、オペレーションズ・リサーチの PhD（1970、指導教員は Frederick S. Hillier）。1970年から Stanford Graduate School of Business に在籍し、1973年に准教授、1978年に教授。Adams Distinguished Professor of Management を務め、2011年に退職（名誉教授）。1982–83年に Northwestern University の客員教授。
- **主要な研究分野**: 待ち行列ネットワーク、Brownian モデル、確率的処理ネットワークの性能解析・制御。1970年代末から1980年代初頭には数理ファイナンスにも取り組み、オプション理論の数学的基礎を整備した。
- **評判・学術的貢献**: David Kreps とともに同値マルチンゲール測度の概念を導入し、現在の理論分析の標準的な道具となった（Harrison & Kreps, 1979）。INFORMS Expository Writing Award（1998）、Frederick W. Lanchester Prize（2001）、John von Neumann Theory Prize（2004）を受賞。全米工学アカデミー会員、INFORMS Fellow、Institute of Mathematical Statistics Fellow。著書に *Brownian Motion and Stochastic Flow Systems*（Wiley, 1985）。

**Stanley R. Pliska（スタンレー・R・プリスカ）**
- **アカデミックな経歴**: Stanford University で PhD（1972、学位論文 "Single and Multi-Person Controlled Diffusions"、指導教員は Arthur F. Veinott, Jr.）。Northwestern University で教え、1975〜1987年に同大学で博士学位取得者の指導を行った。後に University of Illinois at Chicago の Department of Finance に所属。
- **主要な研究分野**: 確率制御、数理ファイナンス（裁定価格理論、離散時間モデル）。
- **評判・学術的貢献**: Harrison との1981年論文は、当時発展した確率解析を裁定価格理論に適用した論文として知られる。この論文の成立経緯と影響について、2018年に首都大学東京の研究会で "The Harrison Pliska story: its origins and consequences" と題して講演した。著書に *Introduction to Mathematical Finance: Discrete Time Models*（Blackwell, 1997）。

---

**© 1981 J. Michael Harrison, Stanley R. Pliska**. 元資料：Discussion Paper No. 489, Center for Mathematical Studies in Economics and Management Science, Kellogg School of Management, Northwestern University（EconStor 提供）。本稿は同論文の数理モデルを整理した解説であり、元資料の著作権は著者に帰属します。
{% endraw %}
