---
layout: post
title: "Cochrane & Piazzesi (2005) \"Bond Risk Premia\"、American Economic Review: 数理モデル"
date: 2026-11-16 00:00:00 +0900
categories: [金融経済学, 債券・期間構造]
math: true
---

{% raw %}
# Cochrane & Piazzesi (2005) "Bond Risk Premia"、American Economic Review: 数理モデル
### フォワードレートの単一のテント型ファクターが全満期の期待超過リターンを決める：数理モデル早見表

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

**書誌**：Cochrane, J. H. and Piazzesi, M., "Bond Risk Premia," *American Economic Review*, Vol. 95, No. 1 (2005年3月), pp. 138–160.（DOI: 10.1257/0002828053828581）

**論文リンク**：
- 無料で全文を読める版（著者サイト掲載のPDF）：https://www.johnhcochrane.com/s/cochrane_piazzesi_bonds_aer.pdf （著者の個人サイトが公開するコピーで、リンク切れや公開状況の変更がありうる。公式版そのものかは確認していない）
- 著者による論文紹介ページ（付録・データ・NBERワーキングペーパーへのリンクあり）：https://www.johnhcochrane.com/research-all/bond-risk-premia
- NBERワーキングペーパー版（2002年、内容は掲載版と異なる）：http://www.nber.org/papers/w9178.pdf
- 公式版（アメリカ経済学会）：http://www.aeaweb.org/articles.php?doi=10.1257/0002828053828581 （全文の閲覧には契約や所属機関経由のアクセスが必要な場合がある）
- オンライン付録（アメリカ経済学会）：http://www.aeaweb.org/aer/data/mar05_app_cochrane.pdf （公開状況は確認していない）

**論文の内容**：米国債（Fama-Bliss の1〜5年ゼロクーポン債、1964〜2003年の月次観測）の1年超過リターンを期初のフォワードレートに回帰し、フォワードレートの単一のテント型線形結合（リターン予測ファクター）が全満期の期待超過リターンを共通に説明することを示した。決定係数は0.35（ラグを加えると最大0.44）に達し、このファクターは水準・傾き・曲率の動きとは別の情報（4〜5年の利回りスプレッド）を含み、株式の超過リターンも予測する。測定誤差ではこの結果を説明できず、むしろ測定誤差が単一ファクター構造を覆い隠すこと、およびこの予測パターンを再現するアフィン型の割引ファクターが容易に構成できることも示した。

**本記事の位置づけ**：この記事は、この論文の背景にある数理モデルについての記事です。対象は、超過リターン回帰（無制約・単一ファクター）、利回りファクターとの関係、アフィン型割引ファクターの構成、ラグと測定誤差の扱い、GMMによる検定であり、数式は原論文のものを簡略化せず使います。実証結果の数値は、モデルの主要帰結の確認に必要な範囲にとどめます。

**式番号の対応**：本記事の式番号は本文から付録まで通しで付け直しています。原論文の式番号との対応は次のとおりです（「本記事補足」は、原論文が文章でのみ述べている、または原論文にない式です）。

| 本記事 | 原論文 | 本記事 | 原論文 |
|---|---|---|---|
| (1)〜(6) | I.A 節の定義（番号なし） | (7) | (1) |
| (8) | (2) | (9) | I.B 節の本文（規格化） |
| (10) | (3) | (11) | I.B 節の本文（$$\boldsymbol\beta=\mathbf b\boldsymbol\gamma^\top$$） |
| (12) | 冒頭の本文（期待仮説、本記事補足を含む） | (13) | 表2の注 |
| (14) | 脚注2 | (15) | II.A 節の本文（番号なし） |
| (16) | (4) | (17) | I.E 節の本文・表3 |
| (18) | (5) | (19) | II.B 節の本文 |
| (20) | (6) | (21) | (7) |
| (22) | (7) と (8) の間（番号なし） | (23) | (8) |
| (24) | (9) | (25) | (9) の直後の本文 |
| (26) | III.A 節の本文 | (27) | (10) |
| (28) | (10) の直後の本文 | (29) | (11) |
| (30) | (12) | (31) | III.D 節の本文 |
| (32) | III.C 節の本文 | (33) | (13) |
| (34) | (14) | (35) | (15) |
| (36) | (16) | (37) | V.A 節の本文 |
| (38) | V.D 節の本文 | (39) | V.B 節の本文 |
| (40) | V.B 節の本文 | (41) | 本記事の要約（対応なし） |
| (42)〜 | 付録の導出（本記事補足） | | |

> 記号の変更：原論文では $$\beta$$ が回帰係数行列と主観的割引因子、$$b$$ が予測ファクターの感応度とスロープ回帰の係数・カルマンフィルタの定数、$$\alpha$$ がラグの重みと定数項、$$v$$ が価格ショックと測定誤差、$$u$$ が限界効用とVAR誤差に使われています。本記事では一つの記号に一つの意味を持たせるため、それぞれ別の記号（$$\vartheta, d, \kappa, a_n^{\text{FB}}, \nu_t, \xi_t, \mathbf u_{t+1}$$ など）に替えました。

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間・データ**

離散時間。対象は1〜5年満期の割引債（ゼロクーポン債）で、価格は Fama-Bliss データ（CRSP）。観測は月次で、各月に「1年借りて $$n$$ 年債を買い、1年後に $$n-1$$ 年債として売る」1年保有のリターンを作る。したがってリターンの区間は月次観測のあいだで重なる（オーバーラップ）。標本は1964〜2003年。

**A1 対数債券価格**

$$p_t^{(n)}$$ は $$n$$ 年割引債の対数価格。満期は丸括弧付きの添字で表し、べき乗と区別する。

**A2 1年の保有期間**

リターンは常に1年ホライズンで測る。外すと、月次VAR(1)から推定した年次予測と一致しなくなる（1.7節）。

**A3 期待仮説（帰無仮説）**

長期利回りは将来の予想短期利回りの平均に等しい。これは超過リターンが予測不能であることと同値で、検定の帰無仮説となる。

**A4 線形予測**

超過リターンを期初のフォワードレートの線形関数で予測する。価格・利回り・フォワードレートは互いに線形変換なので、どれを右辺に使っても予測値は同じ。

**A5 単一ファクター制約**

全満期の期待超過リターンは、共通の $$\boldsymbol\gamma^\top\mathbf f_t$$ の定数倍で表せる。外すと、満期ごとに別の係数ベクトルが必要になる（式(7)）。

**A6 推定・検定**

標準誤差は Hansen-Hodrick（HH, 12ラグ）、Newey-West（NW, 18ラグ）、簡略化HH、非オーバーラップ標本で計算する。小標本分布は、5本の利回りの12ラグ月次VARのブートストラップ、共通トレンドを1本課した共和分VAR、および期待仮説下での1年利回りの12ラグ自己回帰から、各50,000回のシミュレーションで求める。

**A7 アフィンモデルの前提**

割引ファクターのショック $$\boldsymbol\varepsilon_{t+1}$$ は正規分布に従う。5本の債券が独立に動けるよう、割引ファクターは5つの状態変数を反映する。

$$
\boldsymbol\Sigma=\operatorname{cov}_t(\boldsymbol\varepsilon_{t+1}\boldsymbol\varepsilon_{t+1}^\top)\ \text{は正則},\qquad \mathbf V=\operatorname{cov}(\mathbf v_{t+1},\mathbf v_{t+1}^\top)\ \text{は正則}
$$

> 正則でないと、5年債価格が他の4債券から厳密に復元でき、重回帰が成り立たない。

**A8 測定誤差**

価格やフォワードレートに、時間について系列相関のない小さな誤差がありうる。この誤差は、期初のデータと同時に使うと見かけの予測性を作る。

### 1.1 記号と定義

**対数利回り**

$$
y_t^{(n)}\equiv\underbrace{-\frac{1}{n}\,p_t^{(n)}}_{\text{対数利回り}}\tag{1}
$$

**フォワードレート**

$$
f_t^{(n)}\equiv\underbrace{p_t^{(n-1)}-p_t^{(n)}}_{\text{先渡金利}}\tag{2}
$$

> $$t+n-1$$ から $$t+n$$ までの貸借の対数フォワードレート。（本記事による補足）$$p_t^{(0)}=0$$ より $$f_t^{(1)}=y_t^{(1)}$$。

**保有期間リターン**

$$
r_{t+1}^{(n)}\equiv\underbrace{p_{t+1}^{(n-1)}-p_t^{(n)}}_{n\text{年債を買い1年後に売る}}\tag{3}
$$

**超過リターン**

$$
rx_{t+1}^{(n)}\equiv\underbrace{r_{t+1}^{(n)}}_{\text{保有期間リターン}}-\underbrace{y_t^{(1)}}_{\text{1年利回り}}\tag{4}
$$

**ベクトル表記**（右辺変数に使うときは定数項 $$1$$ を含める）

$$
\begin{aligned}
\mathbf{rx}_{t+1}&\equiv\begin{bmatrix}rx_{t+1}^{(2)}&rx_{t+1}^{(3)}&rx_{t+1}^{(4)}&rx_{t+1}^{(5)}\end{bmatrix}^{\top}\\
\mathbf y_t&\equiv\begin{bmatrix}1&y_t^{(1)}&y_t^{(2)}&y_t^{(3)}&y_t^{(4)}&y_t^{(5)}\end{bmatrix}^{\top}\\
\mathbf f_t&\equiv\begin{bmatrix}1&y_t^{(1)}&f_t^{(2)}&f_t^{(3)}&f_t^{(4)}&f_t^{(5)}\end{bmatrix}^{\top}
\end{aligned}\tag{5}
$$

**満期平均の超過リターン**

$$
\overline{rx}_{t+1}\equiv\underbrace{\frac{1}{4}\sum_{n=2}^{5}rx_{t+1}^{(n)}}_{\text{4債券の平均}}\tag{6}
$$

| 記号・項目 | 意味 |
|---|---|
| $$p_t^{(n)}$$ | 時点 $$t$$ の $$n$$ 年割引債の対数価格 |
| $$y_t^{(n)}$$ | $$n$$ 年債の対数利回り |
| $$f_t^{(n)}$$ | $$t+n-1$$ から $$t+n$$ までの対数フォワードレート |
| $$r_{t+1}^{(n)}$$ | $$n$$ 年債を $$t$$ に買い $$t+1$$ に売る対数保有期間リターン |
| $$rx_{t+1}^{(n)}$$ | 1年利回りを超える対数超過リターン |
| $$\mathbf{rx}_{t+1},\ \mathbf y_t,\ \mathbf f_t$$ | 満期をまとめたベクトル（右辺では定数項を含む） |
| $$\overline{rx}_{t+1}$$ | 満期 $$n=2,\dots,5$$ の平均超過リターン |

### 1.2 超過リターンの予測回帰

**無制約回帰（各満期を全フォワードレートに回帰）**

$$
rx_{t+1}^{(n)}=\underbrace{\beta_0^{(n)}}_{\text{定数項}}+\underbrace{\beta_1^{(n)}y_t^{(1)}+\beta_2^{(n)}f_t^{(2)}+\cdots+\beta_5^{(n)}f_t^{(5)}}_{\text{フォワードレートへの回帰}}+\underbrace{\varepsilon_{t+1}^{(n)}}_{\text{予測誤差}},\qquad n=2,3,4,5\tag{7}
$$

> 係数 $$[\beta_1^{(n)}\ \cdots\ \beta_5^{(n)}]$$ を満期 $$n$$ の関数として描くと、どの満期でも同じ形（テント型）で、長期ほど振幅が大きい。これが単一ファクター化の動機。

**単一ファクターモデル**

$$
rx_{t+1}^{(n)}=\underbrace{b_n}_{\text{満期ごとの感応度}}\Bigl(\underbrace{\gamma_0+\gamma_1y_t^{(1)}+\gamma_2f_t^{(2)}+\cdots+\gamma_5f_t^{(5)}}_{\boldsymbol\gamma^\top\mathbf f_t:\ \text{共通ファクター}}\Bigr)+\underbrace{\varepsilon_{t+1}^{(n)}}_{\text{予測誤差}}\tag{8}
$$

**規格化**

$$
\underbrace{\frac{1}{4}\sum_{n=2}^{5}b_n}_{b_n\text{の平均}}=1\tag{9}
$$

> $$b_n$$ と $$\boldsymbol\gamma$$ は単独では識別できない（$$b$$ を2倍し $$\gamma$$ を半分にしても同じ）。そこで平均を1に固定する。

**推定の第1段階：満期平均の回帰で $$\boldsymbol\gamma$$ を求める**

$$
\begin{aligned}
\frac14\sum_{n=2}^{5}rx_{t+1}^{(n)}&=\gamma_0+\gamma_1y_t^{(1)}+\gamma_2f_t^{(2)}+\cdots+\gamma_5f_t^{(5)}+\overline\varepsilon_{t+1}\\
\overline{rx}_{t+1}&=\underbrace{\boldsymbol\gamma^\top\mathbf f_t}_{\text{期待超過リターン}}+\underbrace{\overline\varepsilon_{t+1}}_{\text{誤差}}
\end{aligned}\tag{10}
$$

> 第2段階として、$$\hat{\boldsymbol\gamma}$$ を固定し、式(8)を $$n=2,3,4,5$$ それぞれの回帰で推定して $$b_n$$ を得る。

**単一ファクター制約**

$$
\underbrace{\boldsymbol\beta}_{4\times 6}=\underbrace{\mathbf b}_{4\times 1}\ \underbrace{\boldsymbol\gamma^\top}_{1\times 6}\tag{11}
$$

> 無制約係数行列 $$\boldsymbol\beta$$（式(7)の係数を並べた $$4\times6$$ 行列）にランク1を課す制約。1本の線形結合 $$\boldsymbol\gamma^\top\mathbf f_t$$ が全満期の期待超過リターンの状態変数となる。

| 記号・項目 | 意味 |
|---|---|
| $$\beta_j^{(n)}$$ | 満期 $$n$$ の回帰での、$$j$$ 番目の右辺変数の係数（$$j=0$$ は定数項） |
| $$\boldsymbol\beta$$ | 無制約回帰の係数行列（$$4\times6$$） |
| $$\varepsilon_{t+1}^{(n)},\ \overline\varepsilon_{t+1}$$ | 予測誤差（個別債券、満期平均） |
| $$b_n$$ | 満期 $$n$$ のリターン予測ファクターへの感応度。式(9)で平均1 |
| $$\mathbf b$$ | $$b_2,\dots,b_5$$ を並べた列ベクトル |
| $$\gamma_0,\dots,\gamma_5$$ | ファクターを作る線形結合の係数（$$\gamma_0$$ は定数項） |
| $$\boldsymbol\gamma$$ | $$[\gamma_0\ \cdots\ \gamma_5]^\top$$ |

**推定値（原論文の表1）**

| 項目 | 推定値 |
|---|---|
| $$\gamma_0,\ \gamma_1,\ \gamma_2,\ \gamma_3,\ \gamma_4,\ \gamma_5$$ | $$-3.24,\ -2.14,\ 0.81,\ 3.00,\ 0.80,\ -2.08$$ |
| HH（12ラグ）標準誤差 | $$(1.45),\ (0.36),\ (0.74),\ (0.50),\ (0.45),\ (0.34)$$ |
| $$b_2,\ b_3,\ b_4,\ b_5$$ | $$0.47,\ 0.87,\ 1.24,\ 1.43$$ |
| $$R^2$$（平均リターン、式(10)） | $$0.35$$ |
| $$R^2$$（制約付き、$$n=2,\dots,5$$） | $$0.31,\ 0.34,\ 0.37,\ 0.34$$ |
| $$R^2$$（無制約、$$n=2,\dots,5$$） | $$0.32,\ 0.34,\ 0.37,\ 0.35$$ |
| 期待仮説下の $$R^2$$ の95%区間 | $$[0,\ 0.17]$$ |

> 制約付きと無制約の定数項は近い（無制約 $$-1.62,-2.67,-3.80,-4.89$$、制約付き $$b_n\gamma_0=-1.52,-2.82,-4.02,-4.63$$）。両者の差の $$t$$ 統計量は最大でも0.9。

### 1.3 期待仮説と Fama-Bliss 回帰

**期待仮説**

$$
y_t^{(n)}=\underbrace{\frac{1}{n}\sum_{j=0}^{n-1}E_t\bigl[y_{t+j}^{(1)}\bigr]}_{\text{将来の予想1年利回りの平均}}\quad\Longleftrightarrow\quad E_t\bigl[rx_{t+1}^{(n)}\bigr]=0\tag{12}
$$

> 原論文は両者が同値であることを文章で述べる。（本記事による補足）左の式は、1年を1期とする対数版で書いたもので、$$y_{t+j}^{(1)}$$ は $$j$$ 年後の1年利回り。同値の確認は付録 A.6。

**Fama-Bliss 回帰（比較対象）**

$$
rx_{t+1}^{(n)}=\underbrace{a_n^{\text{FB}}}_{\text{定数項}}+\underbrace{\beta_n^{\text{FB}}}_{\text{係数}}\Bigl(\underbrace{f_t^{(n)}-y_t^{(1)}}_{\text{同満期のフォワードスプレッド}}\Bigr)+\varepsilon_{t+1}^{(n)}\tag{13}
$$

> 各満期の超過リターンを、同じ満期のフォワードスプレッド1本だけで予測する。満期ごとに説明変数が異なる点が、式(8)の「全満期共通のファクター」と異なる。

| 満期 $$n$$ | $$\beta_n^{\text{FB}}$$ | 標準誤差 | $$R^2$$ |
|---|---|---|---|
| 2 | 0.99 | (0.33) | 0.16 |
| 3 | 1.35 | (0.41) | 0.17 |
| 4 | 1.61 | (0.48) | 0.18 |
| 5 | 1.27 | (0.64) | 0.09 |

| 記号・項目 | 意味 |
|---|---|
| $$a_n^{\text{FB}},\ \beta_n^{\text{FB}}$$ | Fama-Bliss 回帰の定数項と傾き（原論文では $$\alpha,\beta$$） |
| $$E_t[\cdot]$$ | 時点 $$t$$ の情報の下での期待値 |

### 1.4 利回りファクターとの関係

**ファクターの利回り表現**

$$
\underbrace{\boldsymbol\gamma^{\ast\top}\mathbf y_t}_{\text{利回りで表した}}=\boldsymbol\gamma^\top\mathbf f_t=\gamma_0+(\gamma_1-\gamma_2)y_t^{(1)}+2(\gamma_2-\gamma_3)y_t^{(2)}+3(\gamma_3-\gamma_4)y_t^{(3)}+4(\gamma_4-\gamma_5)y_t^{(4)}+5\gamma_5y_t^{(5)}\tag{14}
$$

> フォワードレートと利回りは同じ空間を張るので、予測ファクターは利回りの関数としても書ける。テント型の $$\boldsymbol\gamma$$ に満期が掛かり、係数 $$\boldsymbol\gamma^{\ast}$$ は $$\boldsymbol\gamma$$ の差分になる。定数項 $$\gamma_0$$ を明示したのは本記事による補足。導出は付録 A.3。

**傾きファクターのみで予測する制約付き回帰**

$$
\overline{rx}_{t+1}=a+d\times\text{slope}_t+\varepsilon_{t+1}=a+d\times\bigl(\mathbf q_2^\top\mathbf y_t\bigr)+\varepsilon_{t+1}\tag{15}
$$

> $$\mathbf q_2$$ は利回りの共分散行列の固有値分解から作る傾きファクターの係数（水準・傾き・曲率は第1〜3主成分）。

**検定用の無制約回帰（3つの利回りを加える）**

$$
\overline{rx}_{t+1}=a+d\times\text{slope}_t+\underbrace{c_2y_t^{(2)}+c_3y_t^{(3)}+c_4y_t^{(4)}+c_5y_t^{(5)}}_{\text{追加する4本の利回り}}+\overline\varepsilon_{t+1}\tag{16}
$$

> 帰無仮説 $$c_2=c_3=c_4=c_5=0$$ が「傾きだけで予測できる」という制約。右辺が全利回りを張る限り、どの利回りを加えても結果は同じ。式(15)は $$\boldsymbol\gamma^{\ast\top}\mathbf y_t$$ の特殊ケース。

| 記号・項目 | 意味 |
|---|---|
| $$\boldsymbol\gamma^{\ast}$$ | 予測ファクターを利回りで表したときの係数（式(14)） |
| $$\text{slope}_t$$ | 傾きファクター $$\mathbf q_2^\top\mathbf y_t$$ |
| $$\mathbf q_2$$ | 利回りから傾きファクターを作る係数ベクトル |
| $$a,\ d$$ | 式(15)(16)の定数項と傾きファクターの係数（原論文は $$a,\ b$$） |
| $$c_2,\dots,c_5$$ | 追加した利回りの係数 |

**利回りファクターによる予測力（原論文の表4・NW 18ラグ）**

| 右辺変数 | $$R^2$$ | $$\chi^2$$ | 5%臨界値 |
|---|---|---|---|
| 傾き | 0.22 | 60.6 | 9.5 |
| 水準・傾き | 0.24 | 37.0 | 7.8 |
| 水準・傾き・曲率 | 0.26 | 31.9 | 6.0 |
| $$y^{(5)}-y^{(1)}$$ | 0.15 | 85.5 | 9.5 |
| $$y^{(1)},\ y^{(5)}$$ | 0.22 | 45.7 | 7.8 |
| $$y^{(1)},\ y^{(4)},\ y^{(5)}$$ | 0.33 | 9.1 | 6.0 |
| 全フォワードレート（$$\boldsymbol\gamma^\top\mathbf f_t$$） | 0.35 | － | － |

**分散の配分（原論文 II.A 節）**

| 因子 | 利回りの分散に占める割合（%） | $$\boldsymbol\gamma^\top\mathbf f_t$$ の分散に占める割合（%） |
|---|---|---|
| 水準 | 98.6 | 9.1 |
| 傾き | 1.4 | 58.7 |
| 曲率 | 0.03 | 7.6 |
| 第4因子 | 0.02 | 24.3 |
| 第5因子 | 0.01 | 0.3 |

### 1.5 株式の超過リターンへの拡張

**株式超過リターンの予測**

$$
rx_{t+1}^{\text{stock}}=a_s+c_s\bigl(\boldsymbol\gamma^\top\mathbf f_t\bigr)+\varepsilon_{t+1}^{\text{stock}}\tag{17}
$$

> 原論文は表3の第1行の回帰を文章で述べる。式の形は本記事による補足。左辺は、NYSE の時価加重株式の1年リターンから1年債利回りを引いたもの。株式は「長期債にキャッシュフロー・リスクが加わったもの」とみなせるので、債券のリターン予測ファクターは株式のリターンも予測するはず、という論理。

| 記号・項目 | 意味 |
|---|---|
| $$rx_{t+1}^{\text{stock}}$$ | 株式の1年超過リターン |
| $$a_s,\ c_s$$ | 定数項とファクターへの係数 |

| 右辺変数 | 係数（$$t$$ 統計量） | $$R^2$$ |
|---|---|---|
| $$\boldsymbol\gamma^\top\mathbf f_t$$ | 1.73（2.20） | 0.07 |
| $$\boldsymbol\gamma^\top\mathbf f_t$$ と期間スプレッド | 1.87（2.38） | 0.07 |
| $$\boldsymbol\gamma^\top\mathbf f_t$$ と配当利回り | 1.49（2.17） | 0.10 |
| 全フォワードレート（無制約） | － | 0.10 |
| ラグ付き移動平均 $$\boldsymbol\gamma^\top\mathbf f$$（3ラグ） | 2.11（3.39） | 0.12 |

### 1.6 アフィンモデルによる再現

**予測回帰（再掲、ベクトル形）**

$$
\mathbf{rx}_{t+1}=\underbrace{\boldsymbol\beta\mathbf f_t}_{\text{期待超過リターン}}+\underbrace{\boldsymbol\varepsilon_{t+1}}_{\text{ショック}},\qquad\operatorname{cov}_t\bigl(\boldsymbol\varepsilon_{t+1}\boldsymbol\varepsilon_{t+1}^\top\bigr)=\boldsymbol\Sigma\tag{18}
$$

**債券価格と名目割引ファクター**

$$
P_t^{(n)}=E_t\bigl(M_{t+1}M_{t+2}\cdots M_{t+n}\bigr),\qquad M_{t+1}=\underbrace{\vartheta\,\frac{u'(c_{t+1})}{u'(c_t)}}_{\text{限界効用の成長}}\times\underbrace{\frac{1}{\pi_{t+1}}}_{\text{インフレ率}}\tag{19}
$$

> 原論文は、効用・消費・インフレから $$M_{t+1}$$ を作る形を文章で述べ、アフィンモデルの慣行に従って $$M_{t+1}$$ の過程を直接指定すると述べる。

**構成する割引ファクター**

$$
M_{t+1}=\exp\Bigl(-\underbrace{y_t^{(1)}}_{\text{1年利回り}}-\underbrace{\tfrac12\boldsymbol\lambda_t^\top\boldsymbol\Sigma\boldsymbol\lambda_t}_{\text{ログ正規の調整}}-\underbrace{\boldsymbol\lambda_t^\top\boldsymbol\varepsilon_{t+1}}_{\text{リスク価格×ショック}}\Bigr)\tag{20}
$$

**1期の超過リターンが満たす条件**（$$1=E_t(M_{t+1}R_{t+1})$$ より）

$$
\underbrace{E_t\bigl(rx_{t+1}^{(n)}\bigr)}_{\text{期待超過リターン}}+\underbrace{\tfrac12\sigma_t^2\bigl(rx_{t+1}^{(n)}\bigr)}_{\text{分散の調整}}=\underbrace{\operatorname{cov}_t\bigl(rx_{t+1}^{(n)},\boldsymbol\varepsilon_{t+1}^\top\bigr)\boldsymbol\lambda_t}_{\text{共分散×リスク価格}}\tag{21}
$$

**回帰の記法での条件**

$$
\boldsymbol\beta\mathbf f_t+\tfrac12\operatorname{diag}(\boldsymbol\Sigma)=\boldsymbol\Sigma\boldsymbol\lambda_t\tag{22}
$$

**市場リスク価格の選び方**

$$
\boldsymbol\lambda_t=\boldsymbol\Sigma^{-1}\Bigl[\underbrace{\boldsymbol\beta\mathbf f_t}_{\text{期待超過リターン}}+\underbrace{\tfrac12\operatorname{diag}(\boldsymbol\Sigma)}_{\text{分散の調整}}\Bigr]\tag{23}
$$

> Hansen-Jagannathan (1991) の割引ファクター構成の対数版。$$\boldsymbol\lambda_t$$ は $$\mathbf f_t$$ の線形関数なので、時変の市場リスク価格となり、モデルはアフィン型になる。

**価格のVAR**

$$
\mathbf p_{t+1}=\underbrace{\boldsymbol\mu}_{\text{定数}}+\underbrace{\boldsymbol\Phi\mathbf p_t}_{\text{持続性}}+\mathbf v_{t+1},\qquad\operatorname{cov}\bigl(\mathbf v_{t+1},\mathbf v_{t+1}^\top\bigr)=\mathbf V\tag{24}
$$

**超過リターンと価格の関係**

$$
rx_{t+1}^{(n)}=p_{t+1}^{(n-1)}-p_t^{(n)}+p_t^{(1)}\tag{25}
$$

> 式(25)から、超過リターンのショック $$\boldsymbol\varepsilon_{t+1}$$ は価格ショック $$\mathbf v_{t+1}$$ の最初の4本に等しく、$$\boldsymbol\Sigma$$ は $$\mathbf V$$ の最初の4行4列になる。これにより、回帰(18)から $$\boldsymbol\Phi$$ の最初の4行を復元できる。式(24)で $$\mathbf p_t$$ を一般の状態変数と読み替え、式(20)(23)で割引ファクターを与えると、モデルが出す価格 $$\log E_t(M_{t+1}\cdots M_{t+n})$$ は状態変数 $$p_t^{(n)}$$ に一致する（原論文の付録）。このモデルは Ang-Piazzesi (2003) の離散時間・指数ガウス型モデルの特殊ケース。

| 記号・項目 | 意味 |
|---|---|
| $$\boldsymbol\Sigma$$ | 超過リターンのショックの共分散行列 |
| $$P_t^{(n)}$$ | $$n$$ 年割引債の価格（水準） |
| $$M_{t+1}$$ | 名目割引ファクター |
| $$\vartheta,\ u'(\cdot),\ c_t,\ \pi_{t+1}$$ | 主観的割引因子（原論文は $$\beta$$）、限界効用、消費、総インフレ率 |
| $$\boldsymbol\lambda_t$$ | 時変の市場リスク価格（割引ファクターの係数） |
| $$\sigma_t^2(\cdot)$$ | 条件付き分散 |
| $$\mathbf p_t$$ | 対数債券価格のベクトル |
| $$\boldsymbol\mu,\ \boldsymbol\Phi,\ \mathbf v_{t+1},\ \mathbf V$$ | 価格VARの定数、係数行列、ショック、ショックの共分散行列 |

### 1.7 ラグと測定誤差

**1ラグ（$$i$$ か月前のフォワードレート）での回帰**

$$
\overline{rx}_{t+1}=\boldsymbol\gamma^{[i]\top}\mathbf f_{t-i/12}+\varepsilon_{t+1}\tag{26}
$$

> $$\boldsymbol\gamma^{[i]}$$ はラグ $$i$$ ごとに推定する（原論文は同じ記号 $$\boldsymbol\gamma$$）。$$R^2$$ はラグ $$i=0,1,2,3$$ で $$0.35,\ 0.35,\ 0.32,\ 0.31$$ と緩やかに下がる。テント形は保たれ、ピークはやや右へ移る。

**複数ラグの単一ファクター構造**

$$
rx_{t+1}^{(n)}=b_n\,\boldsymbol\gamma^\top\Bigl[\alpha_0\mathbf f_t+\alpha_1\mathbf f_{t-1/12}+\alpha_2\mathbf f_{t-2/12}+\cdots+\alpha_k\mathbf f_{t-k/12}\Bigr]+\varepsilon_{t+1}^{(n)}\tag{27}
$$

**ラグの重みの規格化**

$$
\sum_{j=0}^{k}\alpha_j=1\tag{28}
$$

**満期平均のリターンで見た形**

$$
\overline{rx}_{t+1}=\boldsymbol\gamma^\top\Bigl[\alpha_0\mathbf f_t+\alpha_1\mathbf f_{t-1/12}+\alpha_2\mathbf f_{t-2/12}+\cdots+\alpha_k\mathbf f_{t-k/12}\Bigr]+\overline\varepsilon_{t+1}\tag{29}
$$

**ファクター自体にラグを入れる読み方**

$$
\overline{rx}_{t+1}=\alpha_0\bigl(\boldsymbol\gamma^\top\mathbf f_t\bigr)+\alpha_1\bigl(\boldsymbol\gamma^\top\mathbf f_{t-1/12}\bigr)+\alpha_2\bigl(\boldsymbol\gamma^\top\mathbf f_{t-2/12}\bigr)+\cdots+\alpha_k\bigl(\boldsymbol\gamma^\top\mathbf f_{t-k/12}\bigr)+\overline\varepsilon_{t+1}\tag{30}
$$

> 推定（原論文の脚注5）：$$\boldsymbol\alpha$$ を固定して式(29)で $$\boldsymbol\gamma$$ を回帰で求め、次に $$\boldsymbol\gamma$$ を固定して式(30)で $$\boldsymbol\alpha$$ を回帰で求める。収束するまで繰り返し、最後に式(27)で $$b_n$$ を推定する。パラメータが非線形に入るため、この反復（または探索）が必要。$$\boldsymbol\gamma$$ を全ラグで共通にするのは、ラグ数が少ない場合に限った近似。

**測定誤差の下での真の状態変数のフィルタリング**

$$
\begin{aligned}
x_t&=\boldsymbol\gamma^\top\mathbf f_t,\qquad x_t=\rho\,x_{t-1}+\xi_t\\
\tilde x_t&=x_t+\nu_t,\qquad\nu_t\ \text{は i.i.d.}\\
E\bigl(x_t\mid\tilde x_t,\tilde x_{t-1},\tilde x_{t-2},\dots\bigr)&=\underbrace{\kappa}_{\text{定数}}\sum_{j=0}^{\infty}\underbrace{\phi^{\,j}}_{\text{幾何減衰}}\tilde x_{t-j}
\end{aligned}\tag{31}
$$

> 真のファクターが AR(1)、観測が i.i.d. の測定誤差つきなら、標準的なカルマンフィルタにより、真の値の最良の推測は観測値の幾何的な移動平均になる。表5の $$\alpha_j$$ の減衰パターンと整合する。

**月次VAR(1)から導かれる年次の予測**

$$
\mathbf y_{t+1/12}=\mathbf A\,\mathbf y_t+\mathbf e_{t+1/12}\quad\Longrightarrow\quad\mathbf y_{t+1}=\mathbf A^{12}\mathbf y_t+\mathbf u_{t+1}\tag{32}
$$

> 月次のマルコフ型（ラグなし）の表現を年次に直すと、テント形も単一ファクター構造も現れず、予測の $$R^2$$ は $$22$$〜$$26\%$$ に下がる（直接の年次回帰は $$32$$〜$$37\%$$）。図5はこの帰結が純粋な測定誤差のパターン（図4）に似ることを示す。

| 記号・項目 | 意味 |
|---|---|
| $$i,\ k$$ | ラグの月数、追加するラグの最大数 |
| $$\alpha_0,\dots,\alpha_k$$ | 各ラグの重み（式(28)で和が1） |
| $$x_t,\ \tilde x_t$$ | 真のファクター、測定誤差を含む観測値 |
| $$\rho$$ | 真のファクターの1次自己相関 |
| $$\xi_t,\ \nu_t$$ | 真のファクターの innovations、測定誤差（原論文は $$u_t,\ v_t$$） |
| $$\kappa,\ \phi$$ | カルマンフィルタ解の定数と減衰率（原論文は $$b,\ \phi$$） |
| $$\mathbf A$$ | 月次VAR(1)の係数行列 |
| $$\mathbf e_{t+1/12},\ \mathbf u_{t+1}$$ | 月次VARの誤差、年次VARの誤差 |

**ラグ付き回帰の推定（原論文の表5）**

| 最大ラグ $$k$$ | $$\gamma_0$$ | $$\gamma_1$$ | $$\gamma_2$$ | $$\gamma_3$$ | $$\gamma_4$$ | $$\gamma_5$$ | $$R^2$$ |
|---|---|---|---|---|---|---|---|
| 0 | $$-3.24$$ | $$-2.14$$ | 0.81 | 3.00 | 0.80 | $$-2.08$$ | 0.35 |
| 1 | $$-3.22$$ | $$-2.44$$ | 1.07 | 3.68 | 1.18 | $$-3.11$$ | 0.41 |
| 2 | $$-3.18$$ | $$-2.56$$ | 1.33 | 3.47 | 1.76 | $$-3.62$$ | 0.43 |
| 3 | $$-3.20$$ | $$-2.61$$ | 1.43 | 3.36 | 2.17 | $$-3.98$$ | 0.44 |

| 最大ラグ $$k$$ | $$\alpha_0$$ | $$\alpha_1$$ | $$\alpha_2$$ | $$\alpha_3$$ | $$t$$ 統計量（$$\alpha_0,\dots,\alpha_3$$） |
|---|---|---|---|---|---|
| 0 | 1.00 | － | － | － | (8.44) |
| 1 | 0.50 | 0.50 | － | － | (8.95), (6.60) |
| 2 | 0.38 | 0.35 | 0.28 | － | (6.81), (6.45), (4.46) |
| 3 | 0.31 | 0.29 | 0.20 | 0.21 | (4.82), (7.17), (4.53), (3.07) |

### 1.8 検定とモデルの診断

**無制約回帰のモーメント条件**

$$
g_T(\boldsymbol\beta)=E\bigl(\boldsymbol\varepsilon_{t+1}\otimes\mathbf f_t\bigr)=\mathbf 0\tag{33}
$$

**2段階推定（単一ファクターモデル）が0にするモーメント**

$$
E\bigl[(\mathbf 1_4^\top\boldsymbol\varepsilon_{t+1})\otimes\mathbf f_t\bigr]=\mathbf 0\tag{34}
$$

$$
E\bigl[\boldsymbol\varepsilon_{t+1}\otimes(\boldsymbol\gamma^\top\mathbf f_t)\bigr]=\mathbf 0\tag{35}
$$

> 式(34)(35)は式(10)と式(8)（$$n=2,\dots,5$$）の直交条件。制約付きモデル $$\boldsymbol\beta=\mathbf b\boldsymbol\gamma^\top$$ は式(33)のモーメントすべてを0にはしない。$$J_T$$ 検定は残りのモーメントが大きすぎないかを検定する。そのため、式(34)(35)を式(33)の線形結合 $$\mathbf H_T g_T=\mathbf 0$$ として表し、Hansen (1982) の定理3.1を使う。もう一つの検定は、$$\boldsymbol\beta=\mathbf b\boldsymbol\gamma^\top$$ の Wald 検定（式(37)）。

**単一ファクターモデルの失敗を予測する回帰**

$$
\begin{aligned}
\mathbf{rx}_{t+1}-\mathbf b\times\overline{rx}_{t+1}&=\underbrace{\tilde{\boldsymbol\Gamma}^\top\mathbf f_t}_{\text{制約からのずれの予測}}+\mathbf w_{t+1}\\
\tilde{\boldsymbol\Gamma}^\top&=\boldsymbol\beta-\mathbf b\boldsymbol\gamma^\top
\end{aligned}\tag{36}
$$

> 左辺は「$$n$$ 番目の債券をロング、満期平均の $$b_n$$ 倍をショート」するポートフォリオの超過リターン。式(11)のとき、この種のポートフォリオは予測できない（$$\tilde{\boldsymbol\Gamma}=\mathbf 0$$）。

**Wald 統計量**

$$
\chi^2=\bigl[\operatorname{vec}(\mathbf b\boldsymbol\gamma^\top)-\operatorname{vec}(\boldsymbol\beta)\bigr]^\top\operatorname{cov}\bigl[\operatorname{vec}(\boldsymbol\beta)\bigr]^{-1}\bigl[\operatorname{vec}(\mathbf b\boldsymbol\gamma^\top)-\operatorname{vec}(\boldsymbol\beta)\bigr]\tag{37}
$$

**効率的GMM**

$$
\min_{\mathbf b,\boldsymbol\gamma}\ g_T(\mathbf b\boldsymbol\gamma^\top)^\top\,\mathbf S^{-1}\,g_T(\mathbf b\boldsymbol\gamma^\top)\tag{38}
$$

> 単一ファクターモデルが真なら漸近的に効率的。ただしモデルは棄却されるため、「近似モデルの良い推定」が目的となる本研究では2段階推定を使う（付録 A.8）。

**期待リターンの主成分分析**

$$
\operatorname{cov}\bigl(\boldsymbol\beta\mathbf f_t,\ \mathbf f_t^\top\boldsymbol\beta^\top\bigr)=\mathbf Q\,\boldsymbol\Lambda\,\mathbf Q^\top\tag{39}
$$

> 固有値分解の記法 $$\mathbf Q,\boldsymbol\Lambda$$ は本記事による補足。

**ファクターで説明されないポートフォリオ**

$$
E_t\bigl(\boldsymbol\delta^\top\mathbf{rx}_{t+1}\bigr)=\boldsymbol\delta^\top\mathbf b\,\bigl(\boldsymbol\gamma^\top\mathbf f_t\bigr)=0\qquad\text{（}\boldsymbol\delta^\top\mathbf b=0\text{ のとき）}\tag{40}
$$

| 記号・項目 | 意味 |
|---|---|
| $$g_T(\boldsymbol\beta)$$ | 無制約回帰のモーメント（24本） |
| $$\otimes$$ | クロネッカー積 |
| $$\mathbf 1_4$$ | 要素がすべて1の4次元ベクトル |
| $$\mathbf H_T$$ | モーメント(34)(35)を(33)の線形結合にする行列（原論文は $$a_T$$） |
| $$J_T$$ | 残りのモーメントがすべて0かの $$\chi^2$$ 検定 |
| $$\mathbf S$$ | モーメントの長期共分散行列 |
| $$\tilde{\boldsymbol\Gamma}$$ | 無制約係数と制約付き係数の差（式(36)） |
| $$\mathbf w_{t+1}$$ | 式(36)の誤差 |
| $$\boldsymbol\delta$$ | ポートフォリオの重み |
| $$\mathbf Q,\ \boldsymbol\Lambda$$ | 期待リターンの共分散の固有ベクトル行列・固有値行列 |

**検定結果（原論文の表1・表6・表7）**

| 検定 | 統計量 | 結果 |
|---|---|---|
| 5つのフォワードレートの同時有意性（NW 18ラグ、$$\chi^2(5)$$） | 105.5 | 1%臨界値15.1を大きく超え、期待仮説を棄却 |
| 同（小標本・12ラグVAR / 共和分VAR） | 40.2 / 38.1 | 棄却 |
| 単一ファクター制約 $$J_T$$（ラグ0、NW 18） | 1269 | 5%臨界値25.0、1%臨界値30.6。棄却 |
| 同 Wald（ラグ0、NW 18） | 3460 | 棄却 |
| 同 $$J_T$$ / Wald（ラグ0、簡略化 $$\mathbf S$$） | 110 / 133 | 棄却 |
| 同 $$J_T$$ / Wald（ラグ1、簡略化 $$\mathbf S$$） | 19.8 / 20.0 | 棄却されない（$$p$$ 値 0.18） |

| 項目（式(36)の左辺ごと） | $$n=2$$ | $$n=3$$ | $$n=4$$ | $$n=5$$ |
|---|---|---|---|---|
| $$y_t^{(n)}$$ への係数（対角） | 0.80 | 2.36 | 1.84 | 0.72 |
| $$R^2$$ | 0.15 | 0.37 | 0.33 | 0.12 |
| 期待ポートフォリオ・リターンの標準偏差（%ポイント） | 0.17 | 0.21 | 0.18 | 0.21 |
| 単一ファクター予測の標準偏差（%ポイント） | 1.12 | 2.09 | 2.98 | 3.45 |

| 主成分 | 1 | 2 | 3 | 4 |
|---|---|---|---|---|
| 標準偏差（%ポイント） | 5.16 | 0.26 | 0.20 | 0.16 |
| 期待リターンの分散に占める割合（%） | 99.51 | 0.25 | 0.15 | 0.09 |

### 1.9 主要帰結

**主要式**

$$
\boxed{\begin{aligned}
&\text{①}\quad rx_{t+1}^{(n)}=\underbrace{b_n}_{\text{満期ごとの感応度}}\underbrace{\bigl(\boldsymbol\gamma^\top\mathbf f_t\bigr)}_{\text{共通ファクター}}+\varepsilon_{t+1}^{(n)}\\
&\text{②}\quad \overline{rx}_{t+1}=\underbrace{\boldsymbol\gamma^\top\mathbf f_t}_{\text{テント型の結合}}+\overline\varepsilon_{t+1}\\
&\text{③}\quad \boldsymbol\gamma^\top\mathbf f_t=\underbrace{\boldsymbol\gamma^{\ast\top}\mathbf y_t}_{\text{利回りでの表現}}\\
&\text{④}\quad \boldsymbol\lambda_t=\boldsymbol\Sigma^{-1}\Bigl[\underbrace{\boldsymbol\beta\mathbf f_t}_{\text{期待超過リターン}}+\tfrac12\operatorname{diag}(\boldsymbol\Sigma)\Bigr]\\
&\text{⑤}\quad rx_{t+1}^{(n)}=b_n\,\boldsymbol\gamma^\top\underbrace{\Bigl[\alpha_0\mathbf f_t+\alpha_1\mathbf f_{t-1/12}+\cdots+\alpha_k\mathbf f_{t-k/12}\Bigr]}_{\text{フォワードレートの移動平均}}+\varepsilon_{t+1}^{(n)}
\end{aligned}}\tag{41}
$$

**主要式の読み方**

**ひと目で言うと**：米国債の1年超過リターンの期待値は、フォワードレートの単一のテント型線形結合 $$\boldsymbol\gamma^\top\mathbf f_t$$ に、満期ごとの係数 $$b_n$$（長期債ほど大きい）を掛けたものでほぼ決まる。このファクターは、利回りの水準・傾き・曲率の動きでは捉えきれない4〜5年の利回りスプレッド情報を含む。ラグ付きの平均にすると決定係数は0.44まで上がり、予測性を再現するアフィン型の割引ファクターも構成できるので、予測性は測定誤差の産物ではなく、時変リスクプレミアムの存在を示す。

**① 満期ごとの予測（単一ファクターモデル）**

$$
rx_{t+1}^{(n)}=b_n\bigl(\boldsymbol\gamma^\top\mathbf f_t\bigr)+\varepsilon_{t+1}^{(n)}
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$b_n$$ | 満期 $$n$$ の債券のファクターへの感応度 | 平均が1に規格化（式(9)）。推定値は $$0.47,\ 0.87,\ 1.24,\ 1.43$$ と満期とともに増加する |
| $$\boldsymbol\gamma^\top\mathbf f_t$$ | フォワードレートの線形結合で作った共通の状態変数 | 全満期に共通。$$\boldsymbol\gamma$$ は約3年にピークを持つテント型（式(10)） |
| $$\varepsilon_{t+1}^{(n)}$$ | 予測誤差 | 満期ごとの回帰で推定（式(8)）。制約 $$\boldsymbol\beta=\mathbf b\boldsymbol\gamma^\top$$（式(11)）が許す誤差の範囲で無制約回帰と一致 |

**意味**：どの満期の債券でも、期待超過リターンは同じ線形結合 $$\boldsymbol\gamma^\top\mathbf f_t$$ の定数倍で動き、長期債ほど倍率 $$b_n$$ が大きい。

**結論へのつながり**：Fama-Bliss（式(13)）が満期ごとに別のスプレッドを使うのに対し、本式は1本の共通ファクターで全満期を説明する。これが論文の主張「単一のリターン予測ファクターが全債券の時間変動を決める」にあたる。ただしラグなしでは統計的に棄却される（式(36)(37)）。

**② 平均リターンでの表現**

$$
\overline{rx}_{t+1}=\boldsymbol\gamma^\top\mathbf f_t+\overline\varepsilon_{t+1}
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$\overline{rx}_{t+1}$$ | 満期2〜5年の平均超過リターン | 式(6)。$$\boldsymbol\gamma$$ を推定する第1段階の被説明変数 |
| $$\boldsymbol\gamma^\top\mathbf f_t$$ | 期待超過リターンそのもの | $$b_n$$ の平均が1（式(9)）なので、平均すると係数が1になる |
| $$\overline\varepsilon_{t+1}$$ | 平均リターンの予測誤差 | 式(10)の誤差。$$\boldsymbol\gamma$$ を最も精度よく測る |

**意味**：平均リターンの期待値が、そのまま $$\boldsymbol\gamma^\top\mathbf f_t$$ になる。

**結論へのつながり**：$$R^2=0.35$$ は期待仮説下の95%区間上限0.17を大きく上回り、$$\chi^2(5)$$ は NW 18ラグで105.5、小標本でも約40で、期待仮説を棄却する（式(10)）。Fama-Bliss の $$R^2$$（0.09〜0.18）の2倍以上になる。

**③ 利回りでの表現**

$$
\boldsymbol\gamma^\top\mathbf f_t=\boldsymbol\gamma^{\ast\top}\mathbf y_t
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$\boldsymbol\gamma^\top\mathbf f_t$$ | フォワードレートで表した予測ファクター | 傾きの線形な動きとは無関係（ほぼ対称なテント型） |
| $$\boldsymbol\gamma^{\ast\top}\mathbf y_t$$ | 利回りで表した同じファクター | 係数は $$\gamma$$ の差分に満期を掛けたもの（式(14)）。推定値は約 $$-2.95,\ -4.38,\ 6.60,\ 11.52,\ -10.40$$（満期1〜5年の順）（本記事による計算） |

**意味**：同じファクターを利回りの言葉で書くと、長期側（4〜5年）で大きく振れる係数になる。

**結論へのつながり**：水準・傾き・曲率の3因子で予測しても $$R^2$$ は0.26にとどまり、0.35には届かない（式(16)の検定で棄却）。4〜5年の利回りスプレッドという、利回り自体の変動には小さな成分が予測に重要という主張を支える。

**④ 市場リスク価格（アフィンモデル）**

$$
\boldsymbol\lambda_t=\boldsymbol\Sigma^{-1}\Bigl[\boldsymbol\beta\mathbf f_t+\tfrac12\operatorname{diag}(\boldsymbol\Sigma)\Bigr]
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$\boldsymbol\Sigma^{-1}$$ | ショックの共分散行列の逆行列 | 正則が必要（前提A7）。リターンの共分散を市場リスク価格に換算する |
| $$\boldsymbol\beta\mathbf f_t$$ | 期待超過リターン | 式(18)。単一ファクターなら $$\mathbf b(\boldsymbol\gamma^\top\mathbf f_t)$$ |
| $$\tfrac12\operatorname{diag}(\boldsymbol\Sigma)$$ | 対数リターンの分散による調整項 | 式(21)の $$\tfrac12\sigma_t^2$$ に由来する |

**意味**：期待超過リターンが決まれば、それを再現する時変の市場リスク価格 $$\boldsymbol\lambda_t$$ が決まる。

**結論へのつながり**：予測回帰を厳密に再現するアフィン型の割引ファクターが容易に構成でき、観測される予測性に整合する経済モデルが存在する（式(20)〜(24)）。ただしこれは候補となる限界効用過程であり、マクロの消費・インフレに結びつけた真の過程とは主張しない。

**⑤ ラグ付きの形**

$$
rx_{t+1}^{(n)}=b_n\,\boldsymbol\gamma^\top\Bigl[\alpha_0\mathbf f_t+\alpha_1\mathbf f_{t-1/12}+\cdots+\alpha_k\mathbf f_{t-k/12}\Bigr]+\varepsilon_{t+1}^{(n)}
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$\alpha_j$$ | $$j$$ か月前のフォワードレートの重み | 和が1（式(28)）。ラグを増やすと幾何的に減衰する形になる |
| $$\alpha_0\mathbf f_t+\cdots+\alpha_k\mathbf f_{t-k/12}$$ | フォワードレートの移動平均 | 測定誤差があるとき、真の状態変数の最良の推測（式(31)） |
| $$b_n\,\boldsymbol\gamma^\top$$ | ① と同じ共通のテント型ファクター | ラグを足しても $$\boldsymbol\gamma$$ の形はほぼ変わらず、右に少しずれるだけ（表5） |

**意味**：同じ単一ファクターの構造が、時点 $$t$$ だけでなく過去のフォワードレートの平均にも当てはまる。

**結論へのつながり**：移動平均にすると $$R^2$$ が0.35から0.44に上がる。測定誤差だけでは、全満期共通のテント型は作れず（図4）、測定誤差は単一ファクター構造を覆い隠す方向に働く。

**主要式のつながり**

```
単一ファクター制約 β = bγ'（式(11)）
   ├─ ① 各満期  rx(n) = b_n(γ'f_t) + ε（式(8)）
   │     └─ 平均化（式(9)）→ ② 平均  rx̄ = γ'f_t + ε̄（式(10)）
   │              ├─ ③ 利回りで表すと γ*'y_t（式(14)）… 水準・傾き・曲率だけでは捉えきれない
   │              └─ ④ 割引ファクター λ_t = Σ^{-1}[βf_t + ½diag(Σ)]（式(23)）… ①②を再現するアフィンモデル
   └─ ⑤ 測定誤差・ラグ  γ' の移動平均（式(27)〜(31)）… R² 0.35 → 0.44
```

**比較静学（条件を変えたときの結果）**

| 変化 | 結果 | 符号・式 |
|---|---|---|
| 満期を $$n=2$$ から $$5$$ へ | 感応度 $$b_n$$ が $$0.47$$ から $$1.43$$ へ増加する | $$b_5\gt b_2$$、式(8) |
| 予測変数を水準・傾き・曲率にする | $$R^2$$ が $$0.35$$ から $$0.26$$ へ下がり、制約は棄却される | 式(15)(16)、表4 |
| 予測変数を同満期の1つのスプレッドにする | $$R^2$$ は $$0.09$$〜$$0.18$$ | 式(13) |
| ラグを $$k=3$$ まで加える | $$R^2$$ は $$0.35$$ から $$0.44$$ へ上がる | 式(27)〜(30)、表5 |
| ファクターで株式の超過リターンを予測する | 係数 $$1.73$$、$$R^2=0.07$$（3ラグ：$$2.11$$、$$R^2=0.12$$） | 式(17) |
| フォワードカーブを線形に傾ける（傾き $$s$$） | $$\boldsymbol\gamma^\top\mathbf f_t$$ の変化は $$s\sum_{k=1}^{5}\gamma_k(k-3)\approx 0.11\,s$$ でほぼ0 | 本記事による計算。$$\boldsymbol\gamma$$ がほぼ対称なため |
| 純粋な測定誤差だけが予測を生む（真の予測性なし） | 係数は階段状（フォワード $$f^{(2)},\dots,f^{(n)}$$ に1、他に0）で、満期ごとに形が違う | 原論文の図4、付録 A.7 |

**特殊ケース**

| ケース | 内容 |
|---|---|
| 期待仮説 | $$\boldsymbol\beta=\mathbf 0$$（式(12)）。$$R^2$$ の95%区間は $$[0,\ 0.17]$$ |
| Fama-Bliss | 各満期を同満期のフォワードスプレッドのみで予測する（式(13)）。$$\beta_n^{\text{FB}}$$ は1に近い |
| 利回りファクターのみ | 式(15)(16)の制約。右辺が利回り全体を張るときだけ式(11)と一致 |
| ラグなしの単一ファクター | 統計的には棄却されるが、期待リターンの分散の99.5%を説明する（式(36)〜(39)） |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 超過債券リターンの予測可能性 | 期待仮説（式(12)）の下では予測不能のはずの超過リターンが、フォワードレートで予測できる。$$R^2=0.35$$、$$\chi^2$$ は小標本でも約40 |
| 全満期に共通する予測パターン | 無制約回帰の係数が全満期で同じ形になり、単一ファクター（式(8)）で近似できる。長期債ほど $$b_n$$ が大きい |
| Fama-Bliss・Campbell-Shiller 回帰より高い予測力 | 同満期の1スプレッドの $$R^2$$ は $$0.09$$〜$$0.18$$。単一ファクターは2倍以上で、複数回帰でスプレッドを押し出す |
| イールドカーブの形（テント）が予測に効く | 水準・傾きが同じでもカーブの形が違えば予測が変わる。1981年12月は平坦なカーブでもテント形が強い予測を出した |
| 水準・傾き・曲率で捉えきれない成分 | 4〜5年の利回りスプレッドが予測に重要。3因子は $$R^2=0.26$$ 止まり |
| 景気循環との関係 | 予測ファクターは景気後退の谷で高く、山で低い（原論文の図6）。株式の超過リターンも予測する |
| 傾きだけの予測が外れる局面 | 1983年4月は傾きが急でもファクターは予測を出さず、その後長期債は $$-5\%$$ より悪化した。1985年8月は傾きが同じでもファクターは約10%を予測し実現した |
| 月次VAR(1)の年次予測が弱い理由 | ラグが効くため、マルコフ型の月次モデルは予測性の多くを見逃し、単一ファクター構造を完全に見逃す（式(32)） |
| ラグ付きフォワードレートの有用性 | 測定誤差があれば移動平均が信号雑音比を高める（式(31)）。$$R^2$$ は 0.44 まで上がる |
| 単一ファクター棄却が小さい理由 | 棄却の源は小さな特異的ファクターで、標準偏差は17〜21ベーシスポイント程度。期待リターンの分散の99.5%は単一ファクターが説明する |

## 3. 整理している点 {#sec3}

- 債券の期待超過リターンの変動は、フォワードレートの単一の線形結合 $$\boldsymbol\gamma^\top\mathbf f_t$$ でほぼ尽くされる（分散の99.5%）。これは回帰の形（式(8)）、利回り表現（式(14)）、主成分分析（式(39)）から一貫して読み取れる。
- 利回りの変動を説明する因子（水準・傾き・曲率）と、期待リターンを説明する因子（テント型ファクター）は別物である。前者は利回り変動の99.97%を説明するが、後者に必要な4〜5年スプレッドは小さな成分として無視されがちである。
- 測定誤差は、予測性の源ではなく、単一ファクター構造を覆い隠す要因として働く。信号雑音比を高める手段（年次ホライズンの直接回帰、ラグの移動平均）を使うと構造が見え、アフィン型の割引ファクターでこれを再現できる。

## 4. 対象外の現象 {#sec4}

- 1〜5年満期の割引債と1年の保有期間だけを扱う。他のホライズンや、すべての満期への拡張は扱わない。
- 分散・共分散（時間変動する2次モーメント）、シャープレシオ、最適ポートフォリオは扱わない。
- 時間変動するリスクプレミアムを、マクロ経済・金融政策のファンダメンタルズに結びつけない。テント型の関数や4〜5年スプレッドの深い解釈は与えない。景気循環との相関を示唆するにとどまる。
- 式(19)(20)の割引ファクターは、アフィン型の一つの構成であり、真の限界効用過程でも、一般的な目的に適した期間構造モデルでもない。月次・連続時間への埋め込み、条件付き分散、非マルコフ構造への対応は指定していない。
- 単一ファクター構造が厳密に成り立つとは主張しない。ラグなしの回帰では統計的に棄却される。残る小さな特異的ファクターを、現実の価格付けの歪みとみなすか測定誤差とみなすかは確定せず、著者は測定誤差の解釈を支持する。取引費用後の裁定機会の有無は、使用データ（補間したゼロクーポン債）からは答えられない。
- 実時間推定、サブサンプル、売買ルールの利益など、オンライン付録で扱う頑健性の確認は本記事の対象外とする。標準誤差の共分散行列の公式（HH, NW）も付録にあり、本記事では扱わない。

## 5. 主要文献・関連論文 {#sec5}

- **[金字塔的論文]** Fama, E. F., Bliss, R. R. (1987). The Information in Long-Maturity Forward Rates. *American Economic Review*, 77(4), 680–692.
  - **位置づけ**: 各満期の超過リターンを同満期のフォワードスプレッドで予測する古典的な回帰。本モデルが拡張し、単一ファクターで置き換える出発点。
- **[関連文献]** Campbell, J. Y., Shiller, R. J. (1991). Yield Spreads and Interest Rate Movements: A Bird's Eye View. *Review of Economic Studies*, 58(3), 495–514.
  - **位置づけ**: 利回りスプレッドが将来の利回り変化を予測するという、期待仮説に反する証拠を示した。本モデルがさらに強める。
- **[関連文献]** Stambaugh, R. F. (1988). The Information in Forward Rates: Implications for Models of the Term Structure. *Journal of Financial Economics*, 21(1), 41–70.
  - **位置づけ**: 隣り合う満期の債券を使って測定誤差を補正し、本論文と同様のテント形の係数を見つけた。基本パターンが測定誤差でないことの裏付け。
- **[モデルの基盤]** Hansen, L. P., Jagannathan, R. (1991). Implications of Security Market Data for Models of Dynamic Economies. *Journal of Political Economy*, 99(2), 225–262.
  - **位置づけ**: 割引ファクターの構成法。本モデルのアフィン型割引ファクター（式(20)(23)）は、その対数版にあたる。
- **[発展・関連文献]** Ang, A., Piazzesi, M. (2003). A No-Arbitrage Vector Autoregression of Term Structure Dynamics with Macroeconomic and Latent Variables. *Journal of Monetary Economics*, 50(4), 745–787.
  - **位置づけ**: 離散時間の指数ガウス型アフィンモデル。本モデルは、その特殊ケースとして構成される。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
定義 (1)〜(6): 対数価格 p → 利回り y, フォワード f, リターン r, 超過リターン rx
   │
   ├─ A.2  恒等式: f と y の線形変換 (43)(44) ──→ どちらでも回帰の予測値は同じ
   │        │
   │        ├─ A.3  ファクターの利回り表現 (14)  [式(45)(46)]
   │        └─ A.4  単一ファクター ⇒ 平均リターン (10)  [式(47)]
   │
   ├─ A.5  アフィンモデル: (19)(20) と 1 = E_t(M R) ⇒ (21)(22)(23)  [式(48)(49)]
   │        └─ 価格VAR (24) との対応 (25)
   │
   ├─ A.6  期待仮説 (12) の同値性  [式(50)(51)]
   │
   ├─ A.7  ラグ・測定誤差: (30), (31), (32) と純粋な測定誤差のパターン  [式(52)〜(55)]
   │
   └─ A.8  GMM・検定: (33)〜(40)  [式(56)〜(58)]
```

### A.1 使う道具

**T1 伸縮和（テレスコーピング和）**

$$
\sum_{k=2}^{n}\bigl(p_t^{(k-1)}-p_t^{(k)}\bigr)=p_t^{(1)}-p_t^{(n)}\tag{42}
$$

**T2 線形変換の不変性**

説明変数を可逆な線形変換で置き換えても、回帰の予測値と $$R^2$$ は変わらない（最小二乗法の不変性）。係数は変換に応じて変わる。

**T3 ログ正規変数の期待値**

$$X$$ が正規分布に従うとき、$$\log E\bigl(e^{X}\bigr)=E(X)+\tfrac12\operatorname{Var}(X)$$。

**T4 オーバーラップ標本の推論**

重なる1年リターンの誤差は系列相関を持つ。HH や NW の共分散行列推定が必要になる（公式はオンライン付録）。

**T5 カルマンフィルタの定常解**

状態が AR(1)、観測が i.i.d. の測定誤差つきのとき、定常のカルマンゲイン $$K\ (0\lt K\lt 1)$$ を使い、$$\hat x_t=\rho\hat x_{t-1}+K(\tilde x_t-\rho\hat x_{t-1})$$ が最良の推測になる。

**T6 GMM（Hansen 1982）**

過剰識別制約のモーメントに対し、$$J_T$$ 統計量は $$g_T^\top\operatorname{cov}(g_T)^{+}g_T$$ で、自由度は（モーメント数 − 自由パラメータ数）。

### A.2 フォワードレートと利回りの線形関係（式(2)(5) の準備）

**Step 1　伸縮和を使う** → 式(42)を $$f$$ の定義(2)に適用する。

$$
\sum_{k=2}^{n}f_t^{(k)}=\sum_{k=2}^{n}\bigl(p_t^{(k-1)}-p_t^{(k)}\bigr)=p_t^{(1)}-p_t^{(n)}
$$

**Step 2　利回りに書き直す** → 式(1)から $$p_t^{(1)}=-y_t^{(1)}$$、$$p_t^{(n)}=-n\,y_t^{(n)}$$。

$$
\sum_{k=2}^{n}f_t^{(k)}=n\,y_t^{(n)}-y_t^{(1)}\tag{43}
$$

**Step 3　$$f_t^{(1)}=y_t^{(1)}$$ を加える** → $$p_t^{(0)}=0$$ より $$f_t^{(1)}=-p_t^{(1)}=y_t^{(1)}$$。式(43)の両辺に加えて $$n$$ で割る。

$$
y_t^{(n)}=\frac{1}{n}\sum_{k=1}^{n}f_t^{(k)}\tag{44}
$$

**Step 4　逆向きの関係** → $$n$$ と $$n-1$$ の式(44)の差をとる。

$$
f_t^{(n)}=n\,y_t^{(n)}-(n-1)\,y_t^{(n-1)}
$$

> 式(44)とこの式から、$$\mathbf y_t$$ と $$\mathbf f_t$$ は可逆な線形変換（$$\mathbf f_t=\mathbf T\mathbf y_t$$）で結ばれる。T2 により、どちらを右辺に使っても予測値は同じ。

| 入力・使う道具 | 内容 |
|---|---|
| 式(1)(2) | 利回りとフォワードレートの定義 |
| T1（式(42)） | 伸縮和 |
| 規則 | $$p_t^{(0)}=0$$（本記事による補足） |

**確認**：$$n=2$$ で $$f_t^{(2)}=2y_t^{(2)}-y_t^{(1)}$$。式(43)で $$n=2$$ の左辺は $$f_t^{(2)}$$ で一致する。

### A.3 ファクターの利回り表現（式(14)）

**Step 1　$$f_t^{(k)}$$ を利回りで置き換える** → A.2 Step 4 と $$f_t^{(1)}=y_t^{(1)}$$ を代入。

$$
\sum_{k=1}^{5}\gamma_kf_t^{(k)}=\gamma_1y_t^{(1)}+\gamma_2\bigl(2y_t^{(2)}-y_t^{(1)}\bigr)+\gamma_3\bigl(3y_t^{(3)}-2y_t^{(2)}\bigr)+\gamma_4\bigl(4y_t^{(4)}-3y_t^{(3)}\bigr)+\gamma_5\bigl(5y_t^{(5)}-4y_t^{(4)}\bigr)\tag{45}
$$

**Step 2　同じ利回りでまとめる** → 結果は式(14)。

$$
\sum_{k=1}^{5}\gamma_kf_t^{(k)}=(\gamma_1-\gamma_2)y_t^{(1)}+2(\gamma_2-\gamma_3)y_t^{(2)}+3(\gamma_3-\gamma_4)y_t^{(3)}+4(\gamma_4-\gamma_5)y_t^{(4)}+5\gamma_5y_t^{(5)}\tag{46}
$$

**確認**：表1の推定値 $$\gamma_1,\dots,\gamma_5=-2.14,\ 0.81,\ 3.00,\ 0.80,\ -2.08$$ を代入すると、係数 $$\gamma^{\ast}_1,\dots,\gamma^{\ast}_5$$ は $$-2.95,\ -4.38,\ 6.60,\ 11.52,\ -10.40$$。原論文の図2の左上パネル（約 $$-3,\ -4.5,\ 6.6,\ 11.5,\ -10.4$$）と一致する。

| 入力・使う道具 | 内容 |
|---|---|
| A.2 Step 4 | $$f_t^{(k)}=k\,y_t^{(k)}-(k-1)y_t^{(k-1)}$$ |
| 表1の推定値 | 確認用の数値 |

### A.4 単一ファクターから平均リターンの式(10)へ

**Step 1　式(8)を $$n=2,\dots,5$$ で平均する** → $$b_n$$ だけが $$n$$ に依存する。

$$
\frac14\sum_{n=2}^{5}rx_{t+1}^{(n)}=\underbrace{\Bigl(\frac14\sum_{n=2}^{5}b_n\Bigr)}_{=\,1}\boldsymbol\gamma^\top\mathbf f_t+\frac14\sum_{n=2}^{5}\varepsilon_{t+1}^{(n)}\tag{47}
$$

**Step 2　規格化(9)を使う** → 係数は1。$$\overline\varepsilon_{t+1}\equiv\frac14\sum\varepsilon_{t+1}^{(n)}$$ とおけば、式(10)が得られる。

**確認**：表1の $$b_n=0.47,\ 0.87,\ 1.24,\ 1.43$$ の平均は $$4.01/4\approx1.00$$。制約付きの定数項 $$b_n\gamma_0=-1.52,\ -2.82,\ -4.02,\ -4.63$$ は、無制約の定数項（$$-1.62,\ -2.67,\ -3.80,\ -4.89$$）に近い。

| 入力・使う道具 | 内容 |
|---|---|
| 式(8)(9) | 単一ファクターと規格化 |
| 式(6) | 平均超過リターンの定義 |

### A.5 アフィンモデル（式(21)〜(25)）

**Step 1　ベンチマーク条件を書く** → $$1=E_t(M_{t+1}R_{t+1})$$。式(4)から $$R^{(n)}_{t+1}=\exp\bigl(rx_{t+1}^{(n)}+y_t^{(1)}\bigr)$$。式(20)の $$M_{t+1}$$ を代入すると、$$y_t^{(1)}$$ が相殺する。

$$
1=E_t\Bigl[\exp\Bigl(rx_{t+1}^{(n)}-\tfrac12\boldsymbol\lambda_t^\top\boldsymbol\Sigma\boldsymbol\lambda_t-\boldsymbol\lambda_t^\top\boldsymbol\varepsilon_{t+1}\Bigr)\Bigr]\tag{48}
$$

**Step 2　T3（正規変数の期待値）を使う** → $$X=rx_{t+1}^{(n)}-\boldsymbol\lambda_t^\top\boldsymbol\varepsilon_{t+1}-\tfrac12\boldsymbol\lambda_t^\top\boldsymbol\Sigma\boldsymbol\lambda_t$$ とおく。

$$
\begin{aligned}
E_t(X)&=E_t\bigl(rx_{t+1}^{(n)}\bigr)-\tfrac12\boldsymbol\lambda_t^\top\boldsymbol\Sigma\boldsymbol\lambda_t\\
\operatorname{Var}_t(X)&=\sigma_t^2\bigl(rx_{t+1}^{(n)}\bigr)-2\operatorname{cov}_t\bigl(rx_{t+1}^{(n)},\boldsymbol\varepsilon_{t+1}^\top\bigr)\boldsymbol\lambda_t+\boldsymbol\lambda_t^\top\boldsymbol\Sigma\boldsymbol\lambda_t
\end{aligned}\tag{49}
$$

**Step 3　$$E_t(X)+\tfrac12\operatorname{Var}_t(X)=0$$ に整理する** → $$\tfrac12\boldsymbol\lambda_t^\top\boldsymbol\Sigma\boldsymbol\lambda_t$$ が相殺して、式(21)が得られる。

**Step 4　ベクトル形にする** → 式(18)から $$E_t(\mathbf{rx}_{t+1})=\boldsymbol\beta\mathbf f_t$$、$$\operatorname{cov}_t(\mathbf{rx}_{t+1},\boldsymbol\varepsilon_{t+1}^\top)=\boldsymbol\Sigma$$、$$\sigma_t^2=\operatorname{diag}(\boldsymbol\Sigma)$$。式(21)を4本並べると式(22)、$$\boldsymbol\Sigma$$ が正則なので両辺に $$\boldsymbol\Sigma^{-1}$$ を掛けて式(23)が得られる。

**Step 5　価格VARとの対応** → 式(25)から、$$rx_{t+1}^{(n)}$$ の新しい情報は $$p_{t+1}^{(n-1)}$$ のそれと等しい（$$p_t$$ 側の項は $$t$$ の情報で既知）。よって $$\varepsilon_{t+1}^{(n)}=v_{t+1}^{(n-1)}$$（$$n=2,\dots,5$$）。

**確認**：式(23)に $$\boldsymbol\beta\mathbf f_t=\mathbf 0$$ を入れると $$\boldsymbol\lambda_t=\tfrac12\boldsymbol\Sigma^{-1}\operatorname{diag}(\boldsymbol\Sigma)$$ で、期待超過リターンが $$-\tfrac12\sigma^2$$ に相当する定数（対数リターンの調整分）だけになる。

| 入力・使う道具 | 内容 |
|---|---|
| 式(18)(19)(20) | 回帰、割引ファクターの形 |
| T3 | ログ正規変数の期待値 |
| 前提A7 | $$\boldsymbol\Sigma$$ が正則、ショックが正規 |

> 「モデルが出す価格が状態変数と一致する」ことの代数は、原論文がオンライン付録に回している。本記事では扱わない。

### A.6 期待仮説と超過リターンの同値性（式(12)）

**Step 1　期待仮説の下の1期リターン** → $$E_t\bigl(rx_{t+1}^{(n)}\bigr)=0$$ は、式(3)(4)から $$E_t\bigl(p_{t+1}^{(n-1)}\bigr)-p_t^{(n)}=y_t^{(1)}=-p_t^{(1)}$$。

$$
p_t^{(n)}=p_t^{(1)}+E_t\bigl(p_{t+1}^{(n-1)}\bigr)\tag{50}
$$

**Step 2　繰り返し代入する** → 式(50)を $$n-1,\ n-2,\dots$$ に使う（期待値の繰り返し法則を使う）。

$$
p_t^{(n)}=\sum_{j=0}^{n-1}E_t\bigl(p_{t+j}^{(1)}\bigr)\tag{51}
$$

**Step 3　利回りに直す** → $$p_t^{(n)}=-n\,y_t^{(n)}$$、$$p_{t+j}^{(1)}=-y_{t+j}^{(1)}$$ を代入して $$-n$$ で割ると、式(12)の左の式になる。

**確認**：$$n=1$$ では左辺の和は $$j=0$$ のみで、$$y_t^{(1)}=y_t^{(1)}$$ となり自明に成り立つ。

| 入力・使う道具 | 内容 |
|---|---|
| 式(3)(4) | リターンと超過リターンの定義 |
| 期待値の繰り返し法則 | $$E_t\bigl[E_{t+1}(\cdot)\bigr]=E_t(\cdot)$$ |

### A.7 ラグと測定誤差（式(30)〜(32)）

**Step 1　式(29)から式(30)へ** → $$\boldsymbol\gamma^\top$$ はラグの和の外に出せる（線形性）。

$$
\boldsymbol\gamma^\top\Bigl[\sum_{j=0}^{k}\alpha_j\mathbf f_{t-j/12}\Bigr]=\sum_{j=0}^{k}\alpha_j\bigl(\boldsymbol\gamma^\top\mathbf f_{t-j/12}\bigr)\tag{52}
$$

> 式(28)の規格化があるので、$$\boldsymbol\gamma$$ の単位は変わらない。

**Step 2　カルマンフィルタの定常解（本記事による補足、式(31)の係数）** → T5 の更新式を整理する。

$$
\hat x_t=(1-K)\rho\,\hat x_{t-1}+K\tilde x_t\quad\Longrightarrow\quad\hat x_t=K\sum_{j=0}^{\infty}\bigl[(1-K)\rho\bigr]^{j}\tilde x_{t-j}\tag{53}
$$

> 式(31)の $$\kappa=K$$、$$\phi=(1-K)\rho$$。$$0\lt K\lt 1$$ なので $$\phi\lt\rho$$ で、観測値の重みは幾何的に減衰する。

**Step 3　月次VARから年次VAR（式(32)）** → 月次の式を12回繰り返す。

$$
\mathbf y_{t+1}=\mathbf A^{12}\mathbf y_t+\sum_{j=0}^{11}\mathbf A^{j}\,\mathbf e_{t+(12-j)/12}\tag{54}
$$

> 右辺の和が $$\mathbf u_{t+1}$$。$$\mathbf A^{12}$$ を使うので、予測は月次の1次の構造に縛られ、ラグの効果を表せない。

**Step 4　純粋な測定誤差が作る係数パターン（図4）の読み方** → 原論文の図4では、利回りへの係数は、満期1で $$-1$$、満期 $$n$$ で $$n$$、他は0に見える。A.2 の式(43)を使うと、これはフォワードレートでは満期 $$2,\dots,n$$ の係数が1の階段になる。

$$
n\,y_t^{(n)}-y_t^{(1)}=\sum_{k=2}^{n}f_t^{(k)}\tag{55}
$$

> 図の読み取りと式(55)による変換は本記事による補足。測定誤差が作る予測は満期ごとに形が異なり（$$n$$ 年利回りと1年利回りだけを使う）、全満期共通の単一ファクター構造にならない。

**確認**：式(55)で $$n=2$$ なら $$2y_t^{(2)}-y_t^{(1)}=f_t^{(2)}$$。A.2 Step 4 に一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(29)(30) | ラグ付き回帰 |
| T5 | カルマンフィルタの定常解 |
| 式(43) | フォワードと利回りの恒等式 |

### A.8 GMMと検定（式(33)〜(40)）

**Step 1　モーメントの構成** → 無制約回帰(7)の直交条件は、24本（4本の回帰×6個の右辺変数）。

$$
E\bigl(\boldsymbol\varepsilon_{t+1}\otimes\mathbf f_t\bigr)=\mathbf 0\quad(24\text{本})\tag{56}
$$

> 式(56)は式(33)と同じ。2段階推定が使うのは、式(34)（6本）と式(35)（4本）。

**Step 2　$$J_T$$ の自由度を数える（本記事による補足）** → 制約 $$\boldsymbol\beta=\mathbf b\boldsymbol\gamma^\top$$ の自由パラメータは、$$\mathbf b$$ が4個、$$\boldsymbol\gamma$$ が6個、規格化(9)で1個減って $$4+6-1=9$$ 個。

$$
\text{自由度}=24-9=15\tag{57}
$$

> $$\chi^2(15)$$ の5%・1%臨界値は25.0・30.6で、表6の注の値と一致する。Wald 検定も同じ自由度。

**Step 3　効率的GMMが拾うモーメント** → 式(38)の最小化は、$$\mathbf S$$ に従い「精度よく測れる線形結合」を重視する。表7の左辺のような小さなポートフォリオの回帰は $$R^2$$ が $$0.12$$〜$$0.37$$ で、式(10)の回帰と同程度に精度よく測れるため、効率的GMMはこれらを同程度に重視する。結果として得られる単一ファクターは、式(10)の $$\boldsymbol\gamma$$ と表7の各行の平均のようなものになり、期待リターンの分散のほとんどを説明する第1ファクターを十分に拾えない。2段階推定は $$\mathbf 1^\top\mathbf{rx}_{t+1}$$ だけを使うので、この問題を避けられる。

**Step 4　主成分分析** → 式(11)の下では、期待超過リターンの共分散がランク1になる。

$$
\operatorname{cov}\bigl(\boldsymbol\beta\mathbf f_t,\mathbf f_t^\top\boldsymbol\beta^\top\bigr)=\operatorname{Var}\bigl(\boldsymbol\gamma^\top\mathbf f_t\bigr)\,\mathbf b\mathbf b^\top\tag{58}
$$

> 非ゼロの固有値は1個で、固有ベクトルは $$\mathbf b$$ に比例する。実データでは第1主成分が分散の99.51%（標準偏差5.16%ポイント）で、残りは0.25%、0.15%、0.09%。

**Step 5　$$\boldsymbol\delta^\top\mathbf b=0$$ のポートフォリオ** → 式(40)の左辺は $$\boldsymbol\delta^\top\boldsymbol\beta\mathbf f_t=\boldsymbol\delta^\top\mathbf b(\boldsymbol\gamma^\top\mathbf f_t)=0$$（式(11)による）。表7はこの種の組を回帰で検定したもの。

**確認**：式(39)の標準偏差 $$5.16,\ 0.26,\ 0.20,\ 0.16$$ から分散の割合を計算すると $$99.50\%,\ 0.25\%,\ 0.15\%,\ 0.10\%$$ で、表の $$99.51,\ 0.25,\ 0.15,\ 0.09$$ と丸めの範囲で一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(33)〜(35) | モーメント条件 |
| T6 | $$J_T$$ と自由度 |
| 式(11) | 単一ファクター制約 |

### A.9 著者について

**ジョン・H・コクラン（John H. Cochrane）**
- **アカデミックな経歴**: 1957年シカゴ生まれ。1979年にMITで物理学の学士号（BS）、1986年にカリフォルニア大学バークレー校で経済学の博士号を取得。シカゴ大学経済学部に着任し、その後ブースビジネススクールの AQR Capital Management Distinguished Service Professor of Finance を務めた。2015年からスタンフォード大学フーバー研究所の Rose-Marie and Jack Anderson Senior Fellow（SIEPR のシニアフェロー、スタンフォード大学経営大学院の兼任教授）。NBER の Research Associate。
- **主要な研究分野**: 資産価格、マクロファイナンス、株式・債券・為替市場の動学、物価水準の財政理論（Fiscal Theory of the Price Level）。
- **評判・学術的貢献**: 米国金融学会（AFA）の元会長（2010年）でフェロー、計量経済学会フェロー（2001年）、Journal of Political Economy の編集者。教科書 *Asset Pricing*（Princeton University Press, 2001）で TIAA-CREF Institute の Paul A. Samuelson Award（資産価格）を受賞。ほかに Bradley Prize、APEE の Adam Smith Award、ザンクトガレン大学名誉博士号（2014年）など。ブログ "The Grumpy Economist" でも知られる。

**モニカ・ピアッツェージ（Monika Piazzesi）**
- **アカデミックな経歴**: ハイデルベルク大学で経済学の Vordiplom（1991年）、ボン大学で Diplom（1994年）、スタンフォード大学で経済学の博士号（2000年、指導教員は Darrell Duffie）。UCLA アンダーソン経営大学院の助教授（2000〜2003年）、シカゴ大学経営大学院の助教授・准教授・教授（2003〜2008年）を経て、2008年からスタンフォード大学経済学部教授、2010年から Joan Kenney Professor of Economics。SIEPR のシニアフェロー。
- **主要な研究分野**: 資産価格、債券市場と金利の期間構造、マクロ経済と金融の接点（金融政策、住宅）。
- **評判・学術的貢献**: Germán Bernácer Prize（2005年）、Elaine Bennett Research Prize（2006年）、計量経済学会フェロー（2008年）、American Academy of Arts and Sciences フェロー（2011年）、Guggenheim Fellow（2015〜2016年）、米国科学アカデミー会員（2023年選出）。NBER の資産価格プログラムのディレクターを務めた。代表的業績に、本論文のほか Ang & Piazzesi (2003) "A No-Arbitrage Vector Autoregression of Term Structure Dynamics with Macroeconomic and Latent Variables"（*Journal of Monetary Economics*）、Piazzesi, Schneider & Tuzel (2007) "Housing, consumption and asset pricing"（*Journal of Financial Economics*）がある。

---

**© 原論文の著作権は、著者（John H. Cochrane, Monika Piazzesi）および掲載誌 *American Economic Review* の出版社に帰属します。** 本記事は、原論文の数理モデルを整理・再構成した解説であり、原論文に代わるものではありません。
{% endraw %}
