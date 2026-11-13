---
layout: post
title: "Merton (1976) \"Option Pricing When Underlying Stock Returns Are Discontinuous\"、Journal of Financial Economics: 数理モデル"
date: 2026-11-14 00:00:00 +0900
categories: [ファイナンス, オプション価格理論]
math: true
---

{% raw %}
# Merton (1976) "Option Pricing When Underlying Stock Returns Are Discontinuous"、Journal of Financial Economics: 数理モデル
### 株価がジャンプを含むときのオプション価格：数理モデル早見表

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

**書誌**：Robert C. Merton, "Option Pricing When Underlying Stock Returns Are Discontinuous," *Journal of Financial Economics*, Vol. 3, No. 1–2 (1976), pp. 125–144.（本記事が参照した原稿は MIT Sloan Working Paper WP 787-75, 1975年4月）

**論文リンク**：
- 無料で全文を読める版：[MIT DSpace（ワーキングペーパー WP 787-75。出版前の原稿で、本記事が式の根拠にした版）](https://dspace.mit.edu/handle/1721.1/1899)
- 無料で全文を読める版：[NYU Stern の講義資料サイトにあるJFE掲載版PDF](https://pages.stern.nyu.edu/~dbackus/Disasters/Merton%20jumps%20JFE%2076.pdf)（非公式のコピーで、リンク切れや公開状況の変更がありうる）
- 公式版：[DOI（Elsevier）](https://doi.org/10.1016/0304-405x(76)90022-2)（閲覧に契約や所属機関経由のアクセスが必要な場合がある）

**論文の内容**：株価が、連続的な拡散（正常な価格変動）と、ポアソン到着する重要情報によるジャンプの混合で動くとき、株・オプション・無リスク資産では無リスクのヘッジが組めず、ブラック＝ショールズの無裁定論法がそのままでは使えないことを示す。ジャンプリスクが分散可能（CAPMのもとで市場と無相関、または多数の株でジャンプが互いに独立）であれば、オプション価格はジャンプ項を含む偏微分差分方程式を満たし、ブラック＝ショールズ式のポアソン加重和として表せる。さらに、連続過程を信じてブラック＝ショールズ式を使う投資家の評価額と真の価格を比べ、深いイン・ザ・マネー、深いアウト・オブ・ザ・マネー、短期のオプションで実際の価格が高くなりやすいという方向性を導く。

**本記事の位置づけ**：この記事は、この論文の背景にある数理モデルについての記事です。論文の第II〜IV章の式・仮定を、脚注の式も含めて原文のまま整理し、論文が略している導出の中間式を付録で補います。論文は実証分析を行っていないため、実証結果は扱いません。

**式番号の対応**：本記事の式番号は通し番号です。原論文は上記ワーキングペーパー版の式番号です。

| 本記事 | 原論文 | 本記事 | 原論文 | 本記事 | 原論文 |
|---|---|---|---|---|---|
| (1) | (1) | (17) | (10) | (33) | 本文（p.19） |
| (2) | 本文（p.5） | (18) | (10') | (34) | 本文（p.20） |
| (3) | (2) | (19) | (11) | (35) | (22) |
| (4) | (2') | (20) | (12) | (36) | (23) |
| (5) | (3) | (21) | (12a), (12b) | (37) | 本文（p.22） |
| (6) | (4) | (22) | (13) | (38) | (24) |
| (7) | 本文（p.8） | (23) | (14) | (39) | (25) |
| (8) | (5a) | (24) | (15) | (40) | (26) |
| (9) | (5b) | (25) | (16) | (41) | (27) |
| (10) | (6) | (26) | (17) | (42) | (28) |
| (11) | (7a) | (27) | (18) | (43) | 本文（p.23） |
| (12) | (7b) | (28) | (19) | (44) | (29) |
| (13) | (7c) | (29) | 脚注16の(18') | (45) | (14), (16), (19)の再掲 |
| (14) | 本文（p.9） | (30) | (20) | (46) | (27), (28)の再掲 |
| (15) | (8) | (31) | (21) | | |
| (16) | (9) | (32) | (21a)〜(21c) | | |

**記号の扱い（本記事による整理）**：原論文は、オプション価格 $$W$$ とブラック＝ショールズ式 $$W(S,\tau;E,r,\sigma^2)$$ に同じ記号を使っています。本記事では一つの記号に二つの意味を持たせないため、ブラック＝ショールズ式を $$\mathrm{B}(S,\tau;E,r,\sigma^2)$$、原論文の略記 $$W(X,\tau')$$ を $$\mathrm{B}_1(X,\tau')$$ と書きます。期待値の記号 $$\varepsilon$$ は $$\mathcal{E}$$ と書きます。原論文の(16)(17)は引数の並びが $$E,\sigma^2,r$$ になっていますが、本記事は(24)の並び $$E,r,\sigma^2$$ にそろえます。

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間・情報構造**

連続時間。株（1銘柄）、その株を原資産とする欧州型コール・オプション（権利行使価格 $$E$$、満期までの残り時間 $$\tau$$）、短期利子率 $$r$$ の無リスク資産が取引される。原論文は「option」でコールを指し、プットにも同様の分析が当てはまるとする。

**A1 摩擦のない市場**

取引費用・差別課税なし。取引は連続的に行える。借入と空売りは制約なく、売却代金を全額使える。貸借金利は等しい。外すと、ヘッジ戦略が組めなくなる。

**A2 一定の利子率**

短期利子率 $$r$$ は既知で一定。

**A3 配当なし**

オプションの存続期間中、株は配当その他の分配を行わない。

**A4 欧州型**

オプションは満期にのみ行使できる。

**A5 連続部分（正常な価格変動）**

株価の連続部分は、一定の分散率 $$\sigma^2$$ をもつ幾何ブラウン運動で、標本経路は連続。需給の一時的な不均衡や経済見通しの変化など、価格を限界的にしか動かさない情報に対応する。

**A6 ジャンプ部分（異常な価格変動）**

重要な情報（株価に限界を超える影響を与える、多くは企業固有または産業固有の情報）が、ポアソン過程で到着する。到着率 $$\lambda$$ は一定。ジャンプ後の株価は $$SY$$ で、$$Y$$ は $$Y\ge 0$$ で台がコンパクトな確率測度をもち、各回の $$Y$$ は互いに独立で同一分布。ジャンプ部分（ポアソン過程 $$q$$）と連続部分（ウィーナー過程 $$Z$$）は独立。外すと、本モデルは $$\lambda=0$$ のブラック＝ショールズに戻る。

**A7 価格付けの追加仮定（どちらか一方）**

(i) 資本資産価格モデル（CAPM）が成り立ち、ジャンプ成分は市場と無相関（非系統的リスク）。(ii) Ross型の設定として、多数の株のジャンプ成分が同時点で互いに独立。どちらも、ジャンプリスクが分散できることを意味する。外すと、価格は期待収益 $$\alpha$$ や均衡収益率 $$g$$ に依存する(20)の形になる。

**A8 オプション価格の滑らかさ**

オプション価格は株価と時間の $$C^2$$ 級関数 $$W(t)=F(S,t)$$ と書ける。

### 1.1 ジャンプ拡散の株価過程

**ジャンプ到着の確率**（$$O(h)$$ は $$\lim_{h\to 0}\psi(h)/h=0$$ となる $$\psi(h)$$ の記号）

$$
\begin{aligned}
\underbrace{\mathrm{prob}\{\text{到着なし}\}}_{\text{区間}(t,t+h)}&=1-\lambda h+O(h)\\
\underbrace{\mathrm{prob}\{\text{ちょうど1回到着}\}}_{\text{区間}(t,t+h)}&=\lambda h+O(h)\\
\underbrace{\mathrm{prob}\{\text{2回以上到着}\}}_{\text{区間}(t,t+h)}&=O(h)
\end{aligned}\tag{1}
$$

**ジャンプ時の株価**

$$
S(t+h)=\underbrace{S(t)\,Y}_{\text{区間に1回到着、連続部分は無視}}\tag{2}
$$

**株価の確率微分方程式**（$$S(t)=S$$ を条件とする）

$$
\frac{dS}{S}=\underbrace{(\alpha-\lambda k)\,dt}_{\text{ドリフト}}+\underbrace{\sigma\,dZ}_{\text{連続部分}}+\underbrace{dq}_{\text{ジャンプ部分}}\tag{3}
$$

**場合分けの形**

$$
\begin{aligned}
\frac{dS}{S}&=(\alpha-\lambda k)\,dt+\sigma\,dZ &&\text{ポアソン事象が起きないとき}\\
\frac{dS}{S}&=(\alpha-\lambda k)\,dt+\sigma\,dZ+(Y-1) &&\text{ポアソン事象が起きるとき}
\end{aligned}\tag{4}
$$

**$$\alpha,\lambda,k,\sigma$$ が定数のときの株価比**（$$S(0)=S$$ を条件とする）

$$
\frac{S(t)}{S}=\exp\!\Big[\underbrace{(\alpha-\tfrac12\sigma^2-\lambda k)t}_{\text{ドリフト}}+\underbrace{\sigma Z(t)}_{\text{連続部分}}\Big]\,\underbrace{Y(n)}_{\text{ジャンプの積}}\tag{5}
$$

ここで $$Z(t)$$ は平均0・分散 $$t$$ のガウス確率変数、$$Y(0)=1$$、$$n\ge 1$$ では $$Y(n)=\prod_{j=1}^{n}Y_j$$（$$Y_j$$ は独立同一分布）、$$n$$ は母数 $$\lambda t$$ のポアソン分布に従う。

> $$Y$$ が対数正規なら、$$S(t)/S$$ は「分散パラメータがポアソン分布する」対数正規になる（Press (1967) と同型）。$$\lambda=0$$ なら(3)はブラック＝ショールズ、Merton (1973) の力学と同一。

| 記号・項目 | 意味 |
|---|---|
| $$S$$ | 株価 |
| $$\alpha$$ | 株の瞬間的な期待収益率 |
| $$\sigma^2$$ | ジャンプが起きないとき（条件付き）の瞬間的な収益率の分散 |
| $$\lambda$$ | 単位時間あたりの平均到着回数 |
| $$Y$$ | ジャンプが起きたときの株価の乗数（$$Y-1$$ が変化率） |
| $$k$$ | $$k\equiv\mathcal{E}(Y-1)$$。ジャンプ時の平均変化率 |
| $$\mathcal{E}$$ | $$Y$$ についての期待値演算子 |
| $$Z,\ q$$ | 標準ガウス＝ウィーナー過程、(1)のポアソン過程（$$dZ$$ と $$dq$$ は独立） |

### 1.2 オプション価格の動学

**オプション収益率の確率微分方程式**

$$
\frac{dW}{W}=\underbrace{(\alpha_W-\lambda k_W)\,dt}_{\text{ドリフト}}+\underbrace{\sigma_W\,dZ}_{\text{連続部分}}+\underbrace{dq_W}_{\text{ジャンプ部分}}\tag{6}
$$

**オプションのジャンプ乗数**

$$
Y_W\equiv\underbrace{\frac{F(SY,t)}{F(S,t)}}_{\text{ジャンプ後／前の価格}}\tag{7}
$$

**伊藤の補題（連続部分）とそのジャンプ版による関係**

$$
\alpha_W\equiv\Big[\underbrace{\tfrac12\sigma^2S^2F_{SS}}_{\text{曲率}}+\underbrace{(\alpha-\lambda k)SF_S}_{\text{株のドリフト}}+\underbrace{F_t}_{\text{時間}}+\underbrace{\lambda\,\mathcal{E}\{F(SY,t)-F(S,t)\}}_{\text{ジャンプの平均}}\Big]\Big/F(S,t)\tag{8}
$$

$$
\sigma_W\equiv\underbrace{F_S(S,t)\,\sigma S}_{\text{株の揺れの転写}}\Big/F(S,t)\tag{9}
$$

> $$F$$ の下付き添字は偏導関数を表す。オプションのポアソン事象は、株のポアソン事象が起きるとき、かつそのときに限り起きる。株のジャンプが $$Y=y$$ なら、オプションの乗数は $$F(Sy,t)/F(S,t)$$。両者は完全に従属するが、$$F$$ が $$S$$ の非線形関数なので**線形には従属しない**。

| 記号・項目 | 意味 |
|---|---|
| $$W,\ F(S,t)$$ | オプション価格。$$W(t)=F(S,t)$$ |
| $$\alpha_W$$ | オプションの瞬間的な期待収益率 |
| $$\sigma_W^2$$ | ジャンプが起きないとき（条件付き）のオプション収益率の分散 |
| $$q_W$$ | 母数 $$\lambda$$ の独立なポアソン過程（原論文の記述） |
| $$k_W$$ | $$k_W\equiv\mathcal{E}(Y_W-1)$$ |
| $$F_S,\ F_{SS},\ F_t$$ | $$F$$ の偏導関数 |

### 1.3 ポートフォリオとブラック＝ショールズ・ヘッジの破綻

株・オプション・無リスク資産を比率 $$w_1,w_2,w_3$$（$$\sum_{j=1}^{3}w_j=1$$）で持つポートフォリオの価値を $$P$$ とする。

**ポートフォリオの収益率**

$$
\frac{dP}{P}=\underbrace{(\alpha_P-\lambda k_P)\,dt}_{\text{ドリフト}}+\underbrace{\sigma_P\,dZ}_{\text{連続部分}}+\underbrace{dq_P}_{\text{ジャンプ部分}}\tag{10}
$$

$$
\alpha_P\equiv\underbrace{w_1(\alpha-r)+w_2(\alpha_W-r)}_{\text{リスクプレミアム}}+r\tag{11}
$$

$$
\sigma_P\equiv\underbrace{w_1\sigma+w_2\sigma_W}_{\text{連続リスクの合成}}\tag{12}
$$

$$
Y_P-1\equiv\underbrace{w_1(Y-1)}_{\text{株}}+\underbrace{w_2\,[F(SY,t)-F(S,t)]/F(S,t)}_{\text{オプション}}\tag{13}
$$

ここで $$w_3=1-w_1-w_2$$ を消去してある。

**ブラック＝ショールズのヘッジ（$$\lambda=0$$ のとき）**

$$
w_1^{\ast}\sigma+w_2^{\ast}\sigma_W=0\tag{14}
$$

このとき連続リスクが消え、無裁定のためにはポートフォリオの期待収益は $$r$$ に等しい。(11)(12)から

$$
\frac{\alpha-r}{\sigma}=\frac{\alpha_W-r}{\sigma_W}\tag{15}
$$

(8)（$$\lambda=0$$）、(9)、(15)から、ブラック＝ショールズの偏微分方程式を得る。

$$
\tfrac12\sigma^2S^2F_{SS}+rSF_S-rF+F_t=0\tag{16}
$$

**ジャンプがあるとき：ヘッジ・ポートフォリオ $$P^{\ast}$$ の収益率**

$$
\frac{dP^{\ast}}{P^{\ast}}=\underbrace{(\alpha_P^{\ast}-\lambda k_P^{\ast})\,dt}_{\text{予測可能な部分}}+\underbrace{dq_P^{\ast}}_{\text{純粋なジャンプ}}\tag{17}
$$

$$
\begin{aligned}
\frac{dP^{\ast}}{P^{\ast}}&=(\alpha_P^{\ast}-\lambda k_P^{\ast})\,dt &&\text{ポアソン事象が起きないとき}\\
\frac{dP^{\ast}}{P^{\ast}}&=(\alpha_P^{\ast}-\lambda k_P^{\ast})\,dt+(Y_P^{\ast}-1) &&\text{ポアソン事象が起きるとき}
\end{aligned}\tag{18}
$$

$$
Y_P^{\ast}-1=\underbrace{w_2^{\ast}}_{\text{オプション保有比率}}\,\underbrace{\big[F(SY,t)-F(S,t)-F_S(S,t)(SY-S)\big]}_{\text{接線からの乖離（凸性）}}\Big/F(S,t)\tag{19}
$$

> (13)から、$$Y$$ に分散があるかぎり、どの $$(w_1,w_2)$$ でも $$Y_P-1$$ は $$Y$$ の一部の値で0にならない（ポートフォリオの混合は線形、オプション価格は非線形だから）。連続時間の極限でもブラック＝ショールズのヘッジは無リスクにならない。(19)の括弧内は、$$F$$ が $$S$$ について厳密に凸なので $$Y\ne 1$$ のとき正。したがって $$w_2^{\ast}\gt 0$$ なら $$Y_P^{\ast}-1\gt 0$$（予期せぬ収益は常に正）、$$w_2^{\ast}\lt 0$$ なら負。$$k_P^{\ast}$$ の符号は $$w_2^{\ast}$$ の符号と同じ。株を買いオプションを売るヘッジ（$$w_2^{\ast}\lt 0$$）は、普段は期待収益 $$\alpha_P^{\ast}$$ を上回って稼ぎ（$$-\lambda k_P^{\ast}\gt 0$$）、まれなジャンプのときに大きく損をする。この大損は分散率の過小評価の結果ではなく、有限の分散率ではジャンプの損失を「守る」ことはできない。

| 記号・項目 | 意味 |
|---|---|
| $$P$$ | ポートフォリオの価値 |
| $$w_1,w_2,w_3$$ | 株・オプション・無リスク資産の比率 |
| $$\alpha_P,\ \sigma_P^2$$ | ポートフォリオの期待収益率、ジャンプなし条件付きの分散 |
| $$k_P,\ Y_P$$ | ポートフォリオのジャンプ乗数 $$Y_P$$ と $$k_P\equiv\mathcal{E}(Y_P-1)$$ |
| $$w_1^{\ast},w_2^{\ast}$$ | (14)を満たすヘッジの比率。これで作るポートフォリオが $$P^{\ast}$$ |

### 1.4 価格方程式

**均衡収益率を使う方程式（そのまま解くには $$\alpha$$ と $$g$$ が必要）**

オプションの均衡における瞬間的な期待収益率を $$g(S,\tau)$$ とし、満期までの残り時間 $$\tau$$ の関数として $$F$$ を書くと（$$F_t=-F_\tau$$）、(8)から

$$
0=\tfrac12\sigma^2S^2F_{SS}+(\alpha-\lambda k)SF_S-F_\tau-g(S,\tau)F+\lambda\,\mathcal{E}\{F(SY,\tau)-F(S,\tau)\}\tag{20}
$$

境界条件は

$$
\begin{aligned}
F(0,\tau)&=0\\
F(S,0)&=\max[0,\,S-E]
\end{aligned}\tag{21}
$$

> (20)は「混合の」偏微分差分方程式で線形だが解きにくい。さらに、(20)を解くには $$\alpha$$ と $$g$$ の両方が要る。ブラック＝ショールズの導出の強みは、どちらも不要なことだった。

**CAPMによる導出（A7 (i)）**

ジャンプが企業固有の情報に由来し市場と無相関なら、$$P^{\ast}$$ の不確実性は(17)よりジャンプ成分だけで、ベータは0。CAPMが成り立つなら、ベータ0の証券の期待収益は $$r$$ に等しいので $$\alpha_P^{\ast}=r$$。(11)から $$w_1^{\ast}(\alpha-r)+w_2^{\ast}(\alpha_W-r)=0$$、$$w_1^{\ast},w_2^{\ast}$$ を代入して

$$
\frac{\alpha-r}{\sigma}=\frac{\alpha_W-r}{\sigma_W}\tag{22}
$$

(22)と(8)(9)から $$F$$ は次を満たす。

$$
0=\tfrac12\sigma^2S^2F_{SS}+\underbrace{(r-\lambda k)SF_S}_{\alpha\text{ が消えて }r}-F_\tau-\underbrace{rF}_{\text{割引}}+\underbrace{\lambda\,\mathcal{E}\{F(SY,\tau)-F(S,\tau)\}}_{\text{ジャンプ項}}\tag{23}
$$

境界条件は(21)。

> (23)は(20)と同じ型の方程式だが、$$\alpha$$ も $$g$$ も現れず、金利 $$r$$ だけが入る。$$\lambda=0$$ なら(16)に一致する。ジャンプが「純粋に非系統的」でも、ジャンプ成分は均衡価格に影響する。「ジャンプがないものとして」計算した価格は正しくない。

### 1.5 解

**ブラック＝ショールズ式**（ジャンプなしの場合。(16)と(21)を満たす）

$$
\begin{aligned}
\mathrm{B}(S,\tau;E,r,\sigma^2)&=S\,\Phi(d_1)-Ee^{-r\tau}\,\Phi(d_2)\\
\Phi(y)&\equiv\frac{1}{\sqrt{2\pi}}\int_{-\infty}^{y}e^{-s^2/2}\,ds\\
d_1&\equiv\frac{\log(S/E)+(r+\tfrac12\sigma^2)\tau}{\sigma\sqrt{\tau}}\\
d_2&\equiv d_1-\sigma\sqrt{\tau}
\end{aligned}\tag{24}
$$

**一般の $$Y$$ に対する解**

$$X_n$$ を、$$Y$$ と同一分布の独立な $$n$$ 個の積と同じ分布をもつ確率変数（$$X_0\equiv 1$$）とし、$$\mathcal{E}_n$$ を $$X_n$$ についての期待値演算子とする。(23)の解（閉じた形ではないが、$$X_n$$ の密度が複雑でなければ計算できる）：

$$
F(S,\tau)=\sum_{n=0}^{\infty}\underbrace{\frac{e^{-\lambda\tau}(\lambda\tau)^n}{n!}}_{n\text{ 回ジャンプする確率}}\,\mathcal{E}_n\Big\{\mathrm{B}\big(S\,X_n\,e^{-\lambda k\tau},\,\tau;\,E,\,r,\,\sigma^2\big)\Big\}\tag{25}
$$

**特殊ケース1：Samuelson型（ジャンプで株価が0になる）**

$$Y\equiv 0$$（確率1）。このとき $$n\ne 0$$ で $$X_n=0$$、$$k=-1$$。

$$
\begin{aligned}
F(S,\tau)&=e^{-\lambda\tau}\,\mathrm{B}\big(Se^{\lambda\tau},\tau;E,r,\sigma^2\big)\\
&=\underbrace{\mathrm{B}(S,\tau;E,r+\lambda,\sigma^2)}_{\text{利子率が }r+\lambda\text{ に増えたBS式}}
\end{aligned}\tag{26}
$$

> オプション価格は利子率の増加関数（Merton (1973)）なので、全損の可能性がある株のオプションは、ない株のオプションより価値が高い。Samuelsonの推測の確認になる。

**特殊ケース2：$$Y$$ が対数正規で $$\mathcal{E}(Y)=1$$**

$$\delta^2$$ を $$\ln Y$$ の分散とする。ジャンプ時の期待変化率は0（$$k=0$$）。$$X_n$$ も対数正規で、$$\ln X_n$$ の分散は $$n\delta^2$$、$$\mathcal{E}_n(X_n)=1$$。

$$
f_n(S,\tau)\equiv\mathrm{B}\Big(S,\tau;E,\ \underbrace{\sigma^2+\tfrac{n}{\tau}\delta^2}_{\text{「形式的」な分散率}},\ r\Big)\tag{27}
$$

$$
F(S,\tau)=\sum_{n=0}^{\infty}\frac{e^{-\lambda\tau}(\lambda\tau)^n}{n!}\,f_n(S,\tau)\tag{28}
$$

> (27)の第3引数は分散率なので、(24)の並び $$E,r,\sigma^2$$ に直すと $$\mathrm{B}(S,\tau;E,r,\sigma^2+n\delta^2/\tau)$$。$$f_n$$ は、満期までにちょうど $$n$$ 回ジャンプすると知っているときのオプション価値で、$$\tau=0$$ を除き、分散率が $$\sigma^2+n\delta^2/\tau$$ のブラック＝ショールズ・オプションに等しい（原論文は、満期に近づくと分散率が非ゼロの極限に近づく時間比例でない分散をもつ株のオプションと説明する）。$$F$$ は、$$n$$ についての $$f_n$$ の期待値である。

**$$k\ne 0$$ のときの修正（原論文の脚注16。スキャンの判読に基づく）**

$$
f_n(S,\tau)\equiv\exp\!\big[(n-\lambda\tau)k\big]\;\mathrm{B}\big(S,\tau;E,r_n,\sigma^2+n\delta^2/\tau\big),\qquad r_n\equiv r+\frac{(n-\lambda\tau)k}{\tau}\tag{29}
$$

> $$k$$ は(28)の形では正味で消えないが、株の総期待収益 $$\alpha$$ は消える。(29)の $$\exp[(n-\lambda\tau)k]$$ と $$r_n$$ は、スキャンの判読に基づく表記（$$\lambda$$ の位置が不鮮明）。付録A.5で、$$k=\mathcal{E}(Y-1)$$ の定義から厳密に導いた形を補う（本記事による補足）。

| 記号・項目 | 意味 |
|---|---|
| $$\mathrm{B}(S,\tau;E,r,\sigma^2)$$ | ブラック＝ショールズ式（原論文の $$W(S,\tau;E,r,\sigma^2)$$） |
| $$\Phi$$ | 標準正規分布の累積分布関数 |
| $$d_1,d_2$$ | (24)で定義 |
| $$E,\ \tau$$ | 権利行使価格、満期までの残り時間 |
| $$X_n,\ \mathcal{E}_n$$ | $$n$$ 個の $$Y$$ の積、その期待値演算子（$$X_0=1$$） |
| $$\delta^2$$ | $$\ln Y$$ の分散（対数正規の場合） |
| $$f_n$$ | ちょうど $$n$$ 回ジャンプすると知っているときのオプション価値 |
| $$g(S,\tau)$$ | オプションの均衡期待収益率（(20)のみ） |

### 1.6 Ross型の導出（A7 (ii)）

**$$m$$ 銘柄それぞれのヘッジ・ポートフォリオ**（$$P_j^{\ast}$$ は銘柄 $$j$$ のヘッジ・ポートフォリオの価値）

$$
\frac{dP_j^{\ast}}{P_j^{\ast}}=(\alpha_j^{\ast}-\lambda_jk_j^{\ast})\,dt+dq_j^{\ast},\qquad j=1,2,\ldots,m\tag{30}
$$

**ヘッジ・ポートフォリオのポートフォリオ**（価値 $$H$$。$$x_j$$ は第 $$j$$ ヘッジ・ポートフォリオへの比率、$$1-\sum_{j=1}^{m}x_j$$ が無リスク資産）

$$
\frac{dH}{H}=\underbrace{(\alpha_H-\lambda_Hk_H)\,dt}_{\text{予測可能な部分}}+\underbrace{dq_H}_{\text{ジャンプ部分}}\tag{31}
$$

$$
\begin{aligned}
\alpha_H&\equiv\sum_{j=1}^{m}x_j(\alpha_j^{\ast}-r)+r\\
\lambda_Hk_H&\equiv\sum_{j=1}^{m}x_j\lambda_jk_j^{\ast}\\
dq_H&\equiv\sum_{j=1}^{m}x_j\,dq_j^{\ast}
\end{aligned}\tag{32}
$$

**分散投資の制約**（Rossの「十分に分散された」ポートフォリオ）

$$x_j\equiv\mu_j/m$$ とし、$$\mu_j$$ は銘柄数 $$m$$ に依存しない有限の定数とする。$$ds_j\equiv\mu_j\,dq_j^{\ast}$$ とおくと：

$$
\begin{aligned}
\text{単位時間あたりの瞬間的な期待値}&=\mu_j\lambda_jk_j^{\ast}\\
\text{単位時間あたりの瞬間的な分散}&=\lambda_j\mu_j^{2}\,\mathrm{Var}(Y_{P_j}^{\ast}-1)
\end{aligned}\tag{33}
$$

ここで $$Y_{P_j}^{\ast}-1$$ は、第 $$j$$ 株でジャンプが起きたときの第 $$j$$ ヘッジ・ポートフォリオの変化率（原論文は $$Y_j-1$$ と書く）。$$\mu_j$$ への仮定から、$$ds_j$$ の平均と分散は有界で $$m$$ に依存しない。

**大数の法則**

$$
dq_H=\frac{1}{m}\sum_{j=1}^{m}ds_j\ \longrightarrow\ \lambda_Hk_H\,dt\quad(m\to\infty,\ \text{確率1})\tag{34}
$$

($$dq_j^{\ast}$$ が独立なので $$ds_j$$ も独立。) $$H$$ は事実上無リスクとなり、「仮想的な」裁定を排除するため $$\alpha_H=r$$。(32)に代入して、大きな $$m$$ で

$$
\frac{1}{m}\sum_{j=1}^{m}\mu_j\,(\alpha_j^{\ast}-r)=0\tag{35}
$$

> $$\{\mu_j\}$$ は任意で、(35)はほとんどすべての $$\mu_j$$ の選び方で成り立たねばならないから、ほぼ確実に $$\alpha_j^{\ast}=r$$（$$j=1,\ldots,m$$）。これは1.4の第1導出で(22)を導いた条件である。2つの導出は仮定が違うが、「ジャンプリスクが分散できれば均衡価格は(25)を満たす」という同じ結論に至る。厳密な独立性の仮定は、同じ産業内などある程度の依存を許すように弱めても結論は変わらない（原論文脚注19、Ross）。

| 記号・項目 | 意味 |
|---|---|
| $$m$$ | 株の銘柄数 |
| $$P_j^{\ast},\ \alpha_j^{\ast},\ \lambda_j,\ k_j^{\ast},\ q_j^{\ast}$$ | 銘柄 $$j$$ のヘッジ・ポートフォリオの価値・期待収益率・到着率・平均ジャンプ・ポアソン過程 |
| $$H,\ x_j$$ | ヘッジ・ポートフォリオのポートフォリオの価値、比率 |
| $$\alpha_H,\ k_H,\ q_H$$ | $$H$$ の期待収益率・平均ジャンプ・ジャンプ過程（(32)で定義） |
| $$\mu_j$$ | $$x_j=\mu_j/m$$ の有限定数 |
| $$s_j$$ | $$ds_j=\mu_j\,dq_j^{\ast}$$ で定義される過程 |

### 1.7 モデル誤指定の影響

ある投資家が株価を連続標本経路の定分散過程だと信じ、ブラック＝ショールズ式(24)で評価する。真の過程は(3)。その評価額を $$F_e(S,\tau)$$、真の価格を $$F(S,\tau)$$ とする。分析は特殊ケース2（$$\ln Y$$ の分散 $$\delta^2$$、$$\mathcal{E}(Y)=1$$）で行う。

**投資家の分散推定**

観測間隔 $$h$$ の対数収益率を、ちょうど $$n$$ 回のジャンプを条件にすると、平均まわりで正規分布、単位時間あたりの分散は $$\sigma^2+n\delta^2/h$$。「活発な」期間と「静かな」期間では推定値が変わり、見かけ上、分散は非定常で回帰効果をもつ。投資家が十分に長い時系列をもつなら、推定値は真の無条件分散になる。

$$
v^2(h)=\sigma^2+\lambda\delta^2=v^2\quad(\text{すべての }h\text{ で同じ})\tag{36}
$$

**確率変数 $$T$$**

$$n=0,1,2,\ldots$$ について

$$
T_n\equiv\sigma^2\tau+n\delta^2\tag{37}
$$

$$N$$ を母数 $$\lambda\tau$$ のポアソン確率変数とし、$$N=n$$ のとき値 $$T_n$$ をとる確率変数を $$T$$ とする。$$\mathcal{E}$$ を $$T$$ についての期待値演算子として

$$
\bar T\equiv\mathcal{E}(T)=(\sigma^2+\lambda\delta^2)\tau=v^2\tau\tag{38}
$$

**ブラック＝ショールズ式の恒等変形**（Merton (1973) 式(38)）

$$
\mathrm{B}(S,\tau;E,r,u^2)=E\,e^{-r\tau}\,\mathrm{B}_1(X,\tau'),\qquad X\equiv\frac{Se^{r\tau}}{E},\quad\tau'\equiv u^2\tau\tag{39}
$$

ここで $$\mathrm{B}_1(X,\tau')\equiv\mathrm{B}(X,\tau';1,0,1)$$（原論文の $$W(X,\tau')$$）。(39)と(27)から

$$
f_n(S,\tau)=E\,e^{-r\tau}\,\mathrm{B}_1(X,T_n)\tag{40}
$$

(28)と(40)から、真の価格と投資家の評価額は

$$
F(S,\tau)=E\,e^{-r\tau}\,\mathcal{E}\{\mathrm{B}_1(X,T)\}\tag{41}
$$

$$
F_e(S,\tau)=E\,e^{-r\tau}\,\mathrm{B}_1(X,\bar T)\tag{42}
$$

**どちらが大きいか**

$$
F(S,\tau)-F_e(S,\tau)=E\,e^{-r\tau}\big[\underbrace{\mathcal{E}\{\mathrm{B}_1(X,T)\}-\mathrm{B}_1(X,\bar T)}_{\text{符号がイェンセンの不等式で決まる}}\big]\tag{43}
$$

$$\mathrm{B}_1(X,\tau')$$ が $$\tau'$$ について厳密に凸（凹）なら、イェンセンの不等式で符号は一意に決まる。しかし $$\partial\mathrm{B}_1/\partial\tau'\gt 0$$ である一方、$$a\equiv\ln X$$ として

$$
\frac{\partial^2\mathrm{B}_1/\partial\tau'^2}{\partial\mathrm{B}_1/\partial\tau'}=\frac{a^2-\big(\tau'+(\tau')^2/4\big)}{2(\tau')^2}\ \gtrless\ 0\tag{44}
$$

> (44)の右辺は $$a$$ と $$\tau'$$ しだいで正にも負にもなる。符号を調べると：**$$a=0$$**（$$S=E\exp(-r\tau)$$）では $$\mathrm{B}_1$$ は $$\tau'$$ の凹関数なので $$F_e\gt F$$（ブラック＝ショールズ評価が真の価値より大きい）。$$r\tau$$ が小さい（オプションでは通常そうである）なら、連続性により、行使価格に十分近い株価でも同じ不等式が成り立つ。**$$a^2\gg 1$$**（$$S\gg E$$ または $$S\ll E$$）では、$$T$$ の確からしい範囲の大半で $$\mathrm{B}_1$$ は凸になると見込まれ、$$F\gt F_e$$（ブラック＝ショールズ評価が真の価値より小さい）。差は短期のオプションでより大きく現れる。$$F$$ も $$F_e$$ も $$S-E$$ 以上 $$S$$ 以下に挟まれるので、$$S\gg E$$ のとき百分率の差は大きくなりえず、アウト・オブ・ザ・マネーでは大きくなりうる。

| 記号・項目 | 意味 |
|---|---|
| $$F_e$$ | 誤指定した投資家の評価額 |
| $$v^2$$ | 投資家が推定する無条件の分散率 |
| $$T_n,\ T,\ \bar T$$ | (37)(38)の確率変数とその平均 |
| $$N$$ | 母数 $$\lambda\tau$$ のポアソン確率変数 |
| $$X,\ \tau',\ a$$ | $$X\equiv Se^{r\tau}/E$$、$$\tau'\equiv u^2\tau$$、$$a\equiv\ln X$$ |
| $$u^2$$ | (39)の任意の分散率 |
| $$\mathrm{B}_1$$ | $$\mathrm{B}(X,\tau';1,0,1)$$ |

### 1.8 主要帰結

**主要式（価格の方程式と解）**

$$
\boxed{\begin{aligned}
0&=\underbrace{\tfrac12\sigma^2S^2F_{SS}}_{\text{曲率}}+\underbrace{(r-\lambda k)SF_S}_{\text{ドリフト}}-F_\tau-\underbrace{rF}_{\text{割引}}+\underbrace{\lambda\,\mathcal{E}\{F(SY,\tau)-F(S,\tau)\}}_{\text{ジャンプ項}}\\
F(S,\tau)&=\sum_{n=0}^{\infty}\underbrace{\frac{e^{-\lambda\tau}(\lambda\tau)^n}{n!}}_{\text{ポアソン重み}}\,\mathcal{E}_n\Big\{\mathrm{B}\big(S\,X_n\,e^{-\lambda k\tau},\,\tau;\,E,\,r,\,\sigma^2\big)\Big\}\\
F(S,\tau)&=\sum_{n=0}^{\infty}\frac{e^{-\lambda\tau}(\lambda\tau)^n}{n!}\,\underbrace{f_n(S,\tau)}_{\text{ちょうど }n\text{ 回のジャンプ}}
\end{aligned}}\tag{45}
$$

**主要式（誤指定の比較）**

$$
\boxed{\begin{aligned}
F(S,\tau)&=\underbrace{E\,e^{-r\tau}\,\mathcal{E}\{\mathrm{B}_1(X,T)\}}_{\text{真の価格}}\\
F_e(S,\tau)&=\underbrace{E\,e^{-r\tau}\,\mathrm{B}_1(X,\bar T)}_{\text{誤指定の評価額}}
\end{aligned}}\tag{46}
$$

**主要式の読み方**

**ひと目で言うと**：ジャンプがあると株とオプションだけでは無リスクのヘッジが作れないが、ジャンプリスクが分散できる（市場と無相関、または銘柄間で独立）なら、価格は期待収益 $$\alpha$$ に依存せず、$$r$$ だけで決まる。その価格は、「ちょうど $$n$$ 回ジャンプする」場合のブラック＝ショールズ価格をポアソン確率で平均したものになる。この価格を連続過程を前提にしたブラック＝ショールズ式で代用すると、行使価格から遠い（深いイン／アウト）オプションと短期のオプションでは過小評価に、行使価格近辺では過大評価になりやすい。

**① 価格の方程式**

$$
0=\tfrac12\sigma^2S^2F_{SS}+(r-\lambda k)SF_S-F_\tau-rF+\lambda\,\mathcal{E}\{F(SY,\tau)-F(S,\tau)\}
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$\tfrac12\sigma^2S^2F_{SS}$$ | 連続部分（拡散）の曲率項 | $$\sigma^2$$ はジャンプを除いた分散のみ。(3)(23) |
| $$(r-\lambda k)SF_S$$ | 株のドリフト項 | $$\alpha$$ の代わりに $$r$$ が入る。$$-\lambda k$$ はジャンプの平均寄与を差し引いて、ジャンプ込みの総期待収益が $$r$$ になるようにする。(22)(23) |
| $$-F_\tau-rF$$ | 時間と割引 | ブラック＝ショールズ方程式(16)と同じ |
| $$\lambda\,\mathcal{E}\{F(SY,\tau)-F(S,\tau)\}$$ | ジャンプ項 | 外す（$$\lambda=0$$）と(16)に一致。ジャンプがあると価格は(16)の解に一致しない。非系統的リスクの仮定(A7)のもとで、ジャンプの確率的効果は平均として入る |

**意味**：ジャンプが分散できるとき、オプション価格は「リスク中立」型の方程式を満たし、均衡期待収益率 $$g$$ や $$\alpha$$ が不要になる。ジャンプ項は、ジャンプが起きたときの価値の変化の平均である。

**結論へのつながり**：ブラック＝ショールズの「観測可能な変数だけで価格が決まる」という強みが、ジャンプがあっても保たれる（$$\lambda,\delta$$ などのジャンプの分布は必要）。ただしジャンプは「純粋に非系統的」でも価格に影響する。(20)(22)(23)。

**② 一般の解**

$$
F(S,\tau)=\sum_{n=0}^{\infty}\frac{e^{-\lambda\tau}(\lambda\tau)^n}{n!}\,\mathcal{E}_n\Big\{\mathrm{B}\big(S\,X_n\,e^{-\lambda k\tau},\,\tau;\,E,\,r,\,\sigma^2\big)\Big\}
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$e^{-\lambda\tau}(\lambda\tau)^n/n!$$ | 満期までに $$n$$ 回ジャンプする確率 | (1)のポアソン過程から。$$\sum_n$$ で1 |
| $$X_n$$ | $$n$$ 回のジャンプの乗数の積 | $$X_0=1$$。分布は $$Y$$ の $$n$$ 個の独立な積(25) |
| $$e^{-\lambda k\tau}$$ | ドリフトの補正 | (23)のドリフト $$r-\lambda k$$ に対応。$$k=0$$ なら消える |
| $$\mathrm{B}(\cdots)$$ | ブラック＝ショールズ式 | ジャンプを乗数として開始価格に織り込んだ連続部分の価値(24) |

**意味**：ジャンプ回数 $$n$$ ごとに「その回数を知っていればこの価値」という計算をし、回数の確率で加重平均する。

**結論へのつながり**：(23)の解を、BS式という既知の関数の混合として計算できる。$$\lambda=0$$ では $$n=0$$ の項のみ残りBS式になる。(25)。

**③ 対数正規ジャンプの場合**

$$
F(S,\tau)=\sum_{n=0}^{\infty}\frac{e^{-\lambda\tau}(\lambda\tau)^n}{n!}\,f_n(S,\tau)
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$f_n(S,\tau)$$ | ちょうど $$n$$ 回のジャンプを知っているときの価値 | 分散率 $$\sigma^2+n\delta^2/\tau$$ のBS価値(27)。$$\mathcal{E}(Y)=1$$（$$k=0$$）が前提 |
| 重み | ポアソン確率 | ②と同じ |

**意味**：ジャンプ回数が増えるほど、BS式に入る総分散が $$\delta^2$$ ずつ増える。

**結論へのつながり**：ジャンプがあると、オプションは「分散が確率的に大きい」株のオプションとして評価される。(27)(28)。

**④ 誤指定の比較**

$$
F(S,\tau)=E\,e^{-r\tau}\,\mathcal{E}\{\mathrm{B}_1(X,T)\},\qquad F_e(S,\tau)=E\,e^{-r\tau}\,\mathrm{B}_1(X,\bar T)
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$\mathcal{E}\{\mathrm{B}_1(X,T)\}$$ | 真の価格を決める、総分散 $$T$$ の平均 | $$T$$ は確率的で $$T_n=\sigma^2\tau+n\delta^2$$(37) |
| $$\mathrm{B}_1(X,\bar T)$$ | 誤指定の評価額を決める、平均の総分散での値 | $$\bar T=v^2\tau$$(38)。平均分散率を使うBS式 |
| 差 | $$\mathcal{E}\{\mathrm{B}_1(X,T)\}-\mathrm{B}_1(X,\bar T)$$ | $$\mathrm{B}_1$$ の $$\tau'$$ についての曲率で符号が決まる(43)(44) |

**意味**：真の価格は「分散の平均を取った価値」でなく「価値の平均」であり、両者の差は $$\mathrm{B}_1$$ の $$\tau'$$ についての凸凹で決まる。

**結論へのつながり**：マネーネス（$$a=\ln X$$）で符号が変わるため、実務家が観測すると言う、深いイン／アウト・短期が割高、アット・ザ・マネー近辺・長期が割安という傾向の方向性を説明する。論文は「説明した」とは主張しない（第4章）。(44)。

**主要式のつながり**

```
(3)(6)(8)(9) 株とオプションの動学
      │
      ▼
(13)(19) ジャンプで無リスクのヘッジは作れない
      │
      ├─ CAPM + ジャンプが市場と無相関 ── (22)
      └─ Ross型 + ジャンプが銘柄間で独立 ── (35)
      │
      ▼
①(23)  価格の方程式
      │
      ▼
②(25)  一般の解 ──→ ③(27)(28) 対数正規ジャンプ
      │
      ▼
④(41)(42)(44)  BS式を誤用したときの偏り
```

**比較静学と性質**

| 変化 | 結果 | 符号・式 |
|---|---|---|
| ジャンプの導入（$$\lambda$$ の増加、$$\lambda=0$$ の近傍） | オプション価格は上がる | $$\partial F/\partial\lambda\gt 0$$（$$\lambda=0$$）。付録A.6で導出 |
| 全損ジャンプ（$$Y\equiv0$$） | 利子率が $$r+\lambda$$ のBS式 | (26) |
| $$a=0$$（$$S=Ee^{-r\tau}$$）近傍 | $$F_e\gt F$$（BSが過大） | (44) |
| $$a^2\gg 1$$（深いイン／アウト） | $$F\gt F_e$$（BSが過小）の見込み | (44) |
| 満期が短い | 差が拡大 | 本文の主張 |
| ヘッジ（株の買い、オプションの売り） | 通常は超過収益、まれに大損 | (19) |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 静かな期間にオプションの売り手が稼ぎ、買い手が「負ける」 | (17)(19)。ヘッジ後の収益は、普段 $$\alpha_P^{\ast}-\lambda k_P^{\ast}$$ で予測可能（$$w_2^{\ast}\lt 0$$ なら超過収益） |
| 活発な期間に売り手が大損、買い手が「勝つ」 | ジャンプ時に $$Y_P^{\ast}-1$$ が $$w_2^{\ast}$$ と同じ符号で現れる(19) |
| 売り手の大損は分散率の過小評価の結果ではない | 有限の分散率では、ジャンプの損失を「守る」ことはできない |
| 株価が突然大きく動く（アナウンスなど） | ジャンプ過程(3)(5) |
| 分散が一定に見えない（非定常で回帰効果が出る） | 観測期間ごとの $$n$$ で、見かけの分散が変わる(1.7) |
| 行使価格から遠いオプションの割高 | 連続過程ではほぼ到達しない価格帯にジャンプが到達させるため(44) |
| 短期オプションで差が大きい | $$\tau'$$ が小さいとき(44)の符号の差が拡大 |

## 3. 整理している点 {#sec3}

- ブラック＝ショールズの核は「連続な標本経路」と連続取引であり、これが崩れる（ジャンプ）と、連続時間の極限でもヘッジは無リスクにならない。
- ジャンプリスクが分散できるなら、$$\alpha$$ や $$g$$ を知らなくても $$r$$ だけで価格が決まる。ただしジャンプ項は価格に影響し、「ジャンプがないものとして」計算してはいけない。
- 一般のジャンプ分布では、価格はブラック＝ショールズ式の、ジャンプ回数に関するポアソン加重和。対数正規ジャンプでは分散率 $$\sigma^2+n\delta^2/\tau$$ のBS価値の加重和。

## 4. 対象外の現象 {#sec4}

- ジャンプリスクが分散できない場合（市場と相関するジャンプなど）。(20)の形に戻り、$$\alpha$$ と $$g$$ が必要になる。
- 実証的な主張。論文は、ジャンプ成分と市場収益の相関の実証研究も、十分に分散されたポートフォリオにジャンプが見られるかの検定も、知る限り存在しないと述べる。CAPMとジャンプの無相関に強い実証的根拠があるとは言わない。
- 論文のモデルが「実務家の観測を説明する」こと。論文は、定性的な対応が実務家の主張と一致すると述べるにとどまり、「説明する」と言うのは僭越だとする。(44)の、$$a^2\gg 1$$ での凸性は論文自身が「見込み」として述べる。
- 売り手と買い手の間で「活発な」期間の到来を予測して搾取する方法。到来が確率的なら、体系的な方法はない。
- 配当、金利の確率的変動、アメリカ型、プット（原論文は A1〜A5 を維持し、プットには同様の分析が当てはまるとだけ述べる）の詳細。
- ジャンプの到着率 $$\lambda$$ や分布 $$Y$$ の推定方法。

## 5. 主要文献・関連論文 {#sec5}

- **[金字塔的論文]** Black, F., Scholes, M. (1973). The pricing of options and corporate liabilities. *Journal of Political Economy*, 81(3), 637–654.
  - **位置づけ**: 連続な幾何ブラウン運動のもとで無リスクのヘッジによりオプション価格を導いた原点。本モデルは、その連続性の仮定を外すとどうなるかを扱う。
- **[基礎となる定式化]** Merton, R. C. (1973). Theory of rational option pricing. *Bell Journal of Economics and Management Science*, 4(1), 141–183.
  - **位置づけ**: 確率的利子率・配当・早期行使でもブラック＝ショールズの論法が使えることを示し、連続標本経路が決定的な仮定であることを指摘した。
- **[導出の基礎]** Ross, S. A. (1976). The arbitrage theory of capital asset pricing. *Journal of Economic Theory*, 13(3), 341–360.
  - **位置づけ**: 本論文が引用する Ross の1973年ワーキングペーパーの出版版。多数の資産による分散と裁定からジャンプリスクを分散する導出(1.6)の基礎。
- **[同時期の関連論文]** Cox, J. C., Ross, S. A. (1976). The valuation of options for alternative stochastic processes. *Journal of Financial Economics*, 3(1–2), 145–166.
  - **位置づけ**: 同じ号に掲載され、ジャンプ過程などの代替的な確率過程のもとでのオプション評価を扱う。
- **[発展]** Merton, R. C. (1976). The impact on option pricing of specification error in the underlying stock price returns. *Journal of Finance*, 31(2), 333–350.
  - **位置づけ**: 本論文の第IV章（誤指定の影響）を発展させた論文。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
前提A1〜A8
  │
  ├─ A.2  伊藤の補題（連続＋ジャンプ）:  (3) → (8)(9)
  ├─ A.3  ポートフォリオ代数:           (10)〜(13), (19)
  │        └ BSヘッジ(14) ⇒ (15)(16)、ジャンプで破綻(19)
  ├─ A.4  CAPM: α_P*=r ⇒ (22) ⇒ (23)
  │        Ross: 大数の法則 ⇒ (35) ⇒ (22)
  ├─ A.5  解の導出:  (23) → (25) → (26)(27)(28)(29)
  └─ A.6  誤指定:   (36)〜(44)、λ=0近傍の符号
```

### A.1 使う道具

**T1 伊藤の補題（連続部分とポアソン・ジャンプ部分）**

連続部分：$$dS=\mu S\,dt+\sigma S\,dZ$$ のとき $$dF=[F_t+\mu SF_S+\tfrac12\sigma^2S^2F_{SS}]dt+\sigma SF_S\,dZ$$。ジャンプ部分：事象が起きたとき $$S$$ は $$SY$$ に飛び、$$F$$ は $$F(S,t)$$ から $$F(SY,t)$$ に飛ぶ（Merton (1971), Kushner (1967)）。

**T2 ポアソン過程の性質**

区間 $$\tau$$ 内のジャンプ回数 $$N$$ は $$\mathrm{prob}\{N=n\}=e^{-\lambda\tau}(\lambda\tau)^n/n!$$、$$\mathcal{E}(N)=\lambda\tau$$。

**T3 ポートフォリオの線形性とオプション価格の凸性**

$$\dfrac{dP}{P}=w_1\dfrac{dS}{S}+w_2\dfrac{dW}{W}+w_3r\,dt$$（収益率は比率について線形）。コールの価格 $$F$$ は $$S$$ について厳密に凸。

**T4 CAPMのベータ0**

ベータ0の証券の期待収益率は $$r$$。

**T5 大数の法則**

独立で平均・分散が有界な確率変数の平均は、$$m\to\infty$$ で確率1で平均に収束する。

**T6 ファインマン＝カッツ型の表現（本記事による補足）**

(23)は、過程 $$dS/S=(r-\lambda k)dt+\sigma\,dZ+dq$$ の後ろ向き方程式で、満期ペイオフ $$\max[0,S_\tau-E]$$ の割引期待値が解。

**T7 対数正規の合成とBS式の条件付き期待値表現**

$$\mathrm{B}(S',\tau;E,r,\sigma^2)=e^{-r\tau}\,\mathcal{E}\big[\max(S'e^{(r-\sigma^2/2)\tau+\sigma\sqrt{\tau}\,\zeta}-E,\,0)\big]$$（$$\zeta\sim N(0,1)$$）。

**T8 イェンセンの不等式**

凸関数 $$\phi$$ について $$\mathcal{E}\phi(T)\ge\phi(\mathcal{E}T)$$（厳密に凸なら $$T$$ が退化しない限り不等号が厳密）。

### A.2 オプション収益率の係数 (8)(9)

**Step 1　連続部分に伊藤の補題（T1）**

ジャンプのない運動は $$dS=(\alpha-\lambda k)S\,dt+\sigma S\,dZ$$。よって
$$dF=[F_t+(\alpha-\lambda k)SF_S+\tfrac12\sigma^2S^2F_{SS}]\,dt+\sigma SF_S\,dZ$$。

**Step 2　ジャンプ部分（T1）**

事象が起きると $$F$$ は $$F(SY,t)-F(S,t)=F\,(Y_W-1)$$ だけ飛ぶ。ここで(7)の $$Y_W$$。

**Step 3　収益率に直す**

$$F$$ で割ると、$$dW/W=[\ldots]/F\,dt+\sigma SF_S/F\,dZ+(Y_W-1)\,dq$$。$$dZ$$ の係数が(9)の $$\sigma_W$$。$$\alpha_W$$ は期待収益率 $$=$$（ドリフト）$$+\lambda k_W$$、$$k_W=\mathcal{E}\{F(SY,t)-F(S,t)\}/F$$ から(8)。(6)の形になる。

| 入力・使う道具 | 内容 |
|---|---|
| (3)、A8、T1 | 株の動学と $$F\in C^2$$ |
| 結果 | (6)(7)(8)(9) |

### A.3 ポートフォリオ (10)〜(13)、(19)

**Step 1　線形結合（T3）**

$$\dfrac{dP}{P}=w_1\dfrac{dS}{S}+w_2\dfrac{dW}{W}+(1-w_1-w_2)\,r\,dt$$。

**Step 2　係数を整理**

$$dt$$ の係数：$$w_1(\alpha-\lambda k)+w_2(\alpha_W-\lambda k_W)+r(1-w_1-w_2)=\alpha_P-\lambda k_P$$、ただし $$\alpha_P=w_1(\alpha-r)+w_2(\alpha_W-r)+r$$（(11)）、$$\lambda k_P=w_1\lambda k+w_2\lambda k_W$$。$$dZ$$ の係数：(12)。ジャンプの大きさ：(13)。

**Step 3　BSヘッジ(14)のもとでのジャンプ**

(14)から $$w_1^{\ast}=-w_2^{\ast}\sigma_W/\sigma=-w_2^{\ast}SF_S/F$$（(9)）。(13)に代入して
$$Y_P^{\ast}-1=w_2^{\ast}\big[F(SY,t)-F(S,t)-F_S\,S(Y-1)\big]/F$$、$$S(Y-1)=SY-S$$ なので(19)。

**Step 4　符号**

$$F$$ が $$S$$ について厳密に凸なので、$$Y\ne1$$ で $$F(SY,t)-F(S,t)-F_S(SY-S)\gt0$$。よって $$w_2^{\ast}$$ の符号が $$Y_P^{\ast}-1$$ と $$k_P^{\ast}$$ の符号を決める。

| 入力・使う道具 | 内容 |
|---|---|
| (3)(6)、T3 | 線形結合 |
| 結果 | (10)〜(13)、(19) |

**確認**：$$\lambda=0$$ なら $$dq=0$$ で(14)により連続リスクが消え、(15)(16)に至る。

### A.4 方程式 (22)(23)

**Step 1　CAPM条件（T4）**

(17)の不確実性はジャンプ成分のみで、市場と無相関 ⇒ ベータ0 ⇒ $$\alpha_P^{\ast}=r$$。

**Step 2　(11)に代入**

$$w_1^{\ast}(\alpha-r)+w_2^{\ast}(\alpha_W-r)=0$$。$$w_1^{\ast}/w_2^{\ast}=-\sigma_W/\sigma$$ で割ると $$(\alpha_W-r)=\sigma_W(\alpha-r)/\sigma$$ ⇒ (22)。

**Step 3　$$\alpha_W$$ を消去**

(9)から $$\sigma_WF=\sigma SF_S$$。よって $$(\alpha_W-r)F=(\alpha-r)SF_S$$、すなわち $$\alpha_WF=rF+(\alpha-r)SF_S$$。

**Step 4　(8)と等置**

$$\tfrac12\sigma^2S^2F_{SS}+(\alpha-\lambda k)SF_S+F_t+\lambda\mathcal{E}\{\cdots\}=rF+(\alpha-r)SF_S$$。$$SF_S$$ の項：$$(\alpha-\lambda k)-(\alpha-r)=r-\lambda k$$。$$F_t=-F_\tau$$ で(23)。

**Ross型（(35)から(22)へ）**

**Step 5　大数の法則（T5）**

$$dq_H=\tfrac1m\sum_jds_j$$ で $$ds_j$$ は独立、平均・分散が有界（(33)）。$$m\to\infty$$ で $$dq_H\to\lambda_Hk_H\,dt$$（確率1）。

**Step 6　無裁定**

$$H$$ は事実上無リスクなので $$\alpha_H=r$$。(32)の第1式に代入すると $$\sum_jx_j(\alpha_j^{\ast}-r)=0$$、$$x_j=\mu_j/m$$ で(35)。

**Step 7　任意の $$\mu_j$$**

(35)は任意の（ほとんどすべての）$$\{\mu_j\}$$ で成り立つから、$$\alpha_j^{\ast}=r$$。Step 2〜4と同じ計算で(22)(23)。

| 入力・使う道具 | 内容 |
|---|---|
| (11)(14)(17)、T4、T5 | CAPM条件、大数の法則 |
| 結果 | (22)(23)、(35) |

**確認**：$$\lambda=0$$ で(23)は(16)に一致。

### A.5 解 (25)〜(29)

**Step 1　確率表現（T6、本記事による補足）**

(23)は $$dS/S=(r-\lambda k)\,dt+\sigma\,dZ+dq$$ の後ろ向き方程式なので、$$F(S,\tau)=e^{-r\tau}\mathcal{E}[\max(S_\tau-E,0)]$$。

**Step 2　$$S_\tau$$ の形**

(5)で $$\alpha\to r$$：$$S_\tau=S\exp[(r-\tfrac12\sigma^2-\lambda k)\tau+\sigma Z(\tau)]\,Y(N)$$。

**Step 3　$$N=n$$ と $$X_n$$ を条件にする（T7）**

$$S_\tau=(SX_ne^{-\lambda k\tau})\exp[(r-\tfrac12\sigma^2)\tau+\sigma Z(\tau)]$$。これは開始価格 $$SX_ne^{-\lambda k\tau}$$ のBS式の確率変数の形で、割引期待値は $$\mathrm{B}(SX_ne^{-\lambda k\tau},\tau;E,r,\sigma^2)$$。

**Step 4　ポアソン加重（T2）**

$$N=n$$ の確率 $$e^{-\lambda\tau}(\lambda\tau)^n/n!$$ で平均 ⇒ (25)。境界条件：$$\mathrm{B}(0,\cdot)=0$$ から $$F(0,\tau)=0$$。$$\tau\to0$$ で $$n=0$$ の重みが1、$$\mathrm{B}(S,0)=\max[0,S-E]$$ から(21)。

**Step 5　(26)**

$$Y\equiv0$$：$$n\ge1$$ で $$X_n=0$$、$$\mathrm{B}(0,\cdot)=0$$。$$n=0$$ のみ、$$k=-1$$ で $$F=e^{-\lambda\tau}\mathrm{B}(Se^{\lambda\tau},\tau;E,r,\sigma^2)$$。$$d_1$$ の分子は $$\log(Se^{\lambda\tau}/E)+(r+\tfrac12\sigma^2)\tau=\log(S/E)+(r+\lambda+\tfrac12\sigma^2)\tau$$、第2項は $$Ee^{-(r+\lambda)\tau}$$ となり、$$e^{-\lambda\tau}$$ を掛けると利子率 $$r+\lambda$$ のBS式。

**Step 6　(27)**

$$\mathcal{E}(Y)=1$$、$$\ln Y$$ の分散 $$\delta^2$$ ⇒ $$\ln Y\sim N(-\delta^2/2,\delta^2)$$、$$k=0$$。$$\ln X_n\sim N(-n\delta^2/2,\,n\delta^2)$$。T7で、条件付き $$S_\tau=S\exp[(r-\tfrac12\sigma^2)\tau-\tfrac12n\delta^2+\sigma\sqrt{\tau}\zeta+\sqrt{n}\,\delta\xi]$$（$$\zeta,\xi$$ 独立な標準正規）。指数部は $$(r-\tfrac12(\sigma^2+n\delta^2/\tau))\tau+\sqrt{\sigma^2\tau+n\delta^2}\,\eta$$（$$\eta\sim N(0,1)$$）。これは分散率 $$\sigma^2+n\delta^2/\tau$$ のBSと同じ ⇒ (27)。(28)は(25)に代入。

**Step 7　(29)の厳密形（本記事による補足）**

$$k\ne0$$、$$Y$$ 対数正規、$$\mathcal{E}(Y)=1+k$$ とすると $$\ln Y\sim N(\ln(1+k)-\delta^2/2,\delta^2)$$、$$\ln X_n\sim N(n\ln(1+k)-n\delta^2/2,\,n\delta^2)$$。開始価格 $$SX_ne^{-\lambda k\tau}$$ の指数部を $$\gamma_n\equiv n\ln(1+k)-\lambda k\tau$$ とおき、Step 6と同様に平均すると $$\mathrm{B}(Se^{\gamma_n},\tau;E,r,\sigma^2+n\delta^2/\tau)$$。$$\mathrm{B}(Se^{\gamma},\tau;E,r,v)=e^{\gamma}\mathrm{B}(S,\tau;E,r+\gamma/\tau,v)$$ なので
$$f_n=\exp[\gamma_n]\,\mathrm{B}(S,\tau;E,\,r+\gamma_n/\tau,\,\sigma^2+n\delta^2/\tau)$$。(29)は $$\gamma_n=(n-\lambda\tau)k$$ とした形で、$$n\ln(1+k)$$ を $$nk$$ としたものに当たる（$$k$$ が小さいときの近似、または $$\mathcal{E}(Y)=e^{k}$$ と定義した場合の厳密形）。

| 入力・使う道具 | 内容 |
|---|---|
| (5)(23)、T2、T6、T7 | 確率表現、ポアソン重み、対数正規の合成 |
| 結果 | (25)〜(29) |

**確認**：$$\lambda=0$$ で $$n=0$$ のみ残り(24)。$$\delta=0$$（かつ $$k=0$$）では $$f_n=\mathrm{B}(S,\tau;E,r,\sigma^2)$$ で、重みの和が1なので $$F=\mathrm{B}$$。

### A.6 誤指定 (36)〜(44)と $$\lambda=0$$ 近傍の符号

**Step 1　(36)**

観測間隔 $$h$$ の対数収益率の分散は、$$n$$ 回のジャンプを条件に $$\sigma^2h+n\delta^2$$（単位時間あたり $$\sigma^2+n\delta^2/h$$）。$$n$$ はポアソン（母数 $$\lambda h$$）なので $$\mathcal{E}(n)=\lambda h$$（T2）。無条件の分散率：$$\sigma^2+\lambda h\delta^2/h=\sigma^2+\lambda\delta^2$$。

**Step 2　(38)**

$$\mathcal{E}(T)=\sigma^2\tau+\delta^2\mathcal{E}(N)=\sigma^2\tau+\lambda\tau\delta^2=(\sigma^2+\lambda\delta^2)\tau$$。

**Step 3　(39)**

$$u^2$$ を分散率とすると、$$d_1=[\ln X+\tfrac12\tau']/\sqrt{\tau'}$$（$$\tau'=u^2\tau$$）、$$S\Phi(d_1)-Ee^{-r\tau}\Phi(d_2)=Ee^{-r\tau}[X\Phi(d_1)-\Phi(d_2)]$$。$$\mathrm{B}_1(X,\tau')=X\Phi(d_1)-\Phi(d_2)$$ で、$$d_1=(a+\tau'/2)/\sqrt{\tau'}$$、$$d_2=d_1-\sqrt{\tau'}$$。

**Step 4　(40)(41)(42)**

(27)の分散率 $$\sigma^2+n\delta^2/\tau$$ に対し $$u^2\tau=T_n$$ ⇒ (40)。(28)に代入して(41)。投資家は $$u^2=v^2$$（(36)）を使うので $$u^2\tau=\bar T$$ ⇒ (42)。差は(43)。

**Step 5　(44)**

$$d_1^2/2-d_2^2/2=a$$ から $$\phi(d_2)=X\phi(d_1)$$（$$\phi$$ は標準正規密度）。
$$\dfrac{\partial\mathrm{B}_1}{\partial\tau'}=X\phi(d_1)\Big(\dfrac{\partial d_1}{\partial\tau'}-\dfrac{\partial d_2}{\partial\tau'}\Big)=\dfrac{X\phi(d_1)}{2\sqrt{\tau'}}\gt0$$。
対数微分：$$d_1^2=a^2/\tau'+a+\tau'/4$$ なので $$\dfrac{\partial\ln[\phi(d_1)/\sqrt{\tau'}]}{\partial\tau'}=\dfrac{a^2}{2\tau'^2}-\dfrac18-\dfrac1{2\tau'}$$。したがって
$$\dfrac{\partial^2\mathrm{B}_1/\partial\tau'^2}{\partial\mathrm{B}_1/\partial\tau'}=\dfrac{a^2-\tau'-\tau'^2/4}{2\tau'^2}$$（$$X$$ は $$\tau'$$ に依存しない）。(44)。

**Step 6　符号の判断（T8）**

$$a=0$$ ではすべての $$\tau'\gt0$$ で負 ⇒ 凹 ⇒ イェンセンで $$\mathcal{E}\{\mathrm{B}_1(X,T)\}\le\mathrm{B}_1(X,\bar T)$$（$$T$$ が退化しなければ厳密）⇒ $$F\lt F_e$$。$$a^2\gg1$$ では $$\tau'$$ の通常の範囲で正 ⇒ 凸 ⇒ $$F\gt F_e$$（原論文の「見込み」）。

**Step 7　$$\partial F/\partial\lambda\gt0$$（$$\lambda=0$$、本記事による補足）**

(25)の $$n=0$$ 項 $$e^{-\lambda\tau}\mathrm{B}(Se^{-\lambda k\tau},\cdot)$$ の $$\lambda$$ 微分（$$\lambda=0$$）：$$-\tau\mathrm{B}-k\tau S\mathrm{B}_S$$。$$n=1$$ 項 $$\lambda\tau e^{-\lambda\tau}\mathcal{E}\{\mathrm{B}(SYe^{-\lambda k\tau},\cdot)\}$$ の微分：$$\tau\,\mathcal{E}\{\mathrm{B}(SY,\cdot)\}$$。$$n\ge2$$ 項は $$\lambda^n$$ で消える。$$k=\mathcal{E}(Y-1)$$ を使って
$$\dfrac{\partial F}{\partial\lambda}\Big|_{\lambda=0}=\tau\,\mathcal{E}\big\{\mathrm{B}(SY)-\mathrm{B}(S)-\mathrm{B}_S(S)(SY-S)\big\}\gt0$$
（$$\mathrm{B}$$ が $$S$$ について厳密に凸なので）。(19)と同じ凸性の項である。

| 入力・使う道具 | 内容 |
|---|---|
| (27)(28)、T2、T8 | 分散率・ポアソン・イェンセン |
| 結果 | (36)〜(44)、$$\partial F/\partial\lambda\gt0$$ |

**確認**：$$\delta=0$$（ジャンプが無効）では $$T_n=\sigma^2\tau$$（定数）、$$\bar T=T$$ で差は0。

### A.7 著者について

**ロバート・C・マートン（Robert C. Merton）**
- **アカデミックな経歴**: 1944年生まれ。コロンビア大学で工学数学（B.S.）、カリフォルニア工科大学で応用数学（M.S.）、MITで経済学のPh.D.（1970年。指導教員はPaul A. Samuelson）。MITスローン経営大学院の教員を経て、ハーバード・ビジネス・スクール教授（University Professor）を務め、MITスローンのDistinguished Professor of Financeに移った。本論文の原稿（1975年）の時点では、MITのファイナンス教授。
- **主要な研究分野**: 連続時間ファイナンス（異時点間の消費・ポートフォリオ選択、異時点間資本資産価格モデル、オプション・偶発請求権評価、企業負債の評価）。
- **評判・学術的貢献**: 1997年にMyron Scholesとともにノーベル経済学賞（デリバティブ価値の新しい決定方法）を受賞。「Theory of Rational Option Pricing」（1973）、企業負債の評価モデル（1974）、異時点間CAPM（1973）が代表的業績。ジャンプ拡散モデルは、今日の実務・学術のオプション評価モデルの基礎のひとつとなった。

---

**© 1976 Robert C. Merton**（原論文）。本記事はこの論文の数理モデルを整理したものです。
{% endraw %}
