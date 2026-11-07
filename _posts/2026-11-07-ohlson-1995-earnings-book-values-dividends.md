---
layout: post
title: "Ohlson (1995) \"Earnings, Book Values, and Dividends in Equity Valuation\"、Contemporary Accounting Research: 数理モデル"
date: 2026-11-07 00:00:00 +0900
categories: [会計学, 株式評価]
math: true
---

{% raw %}
# Ohlson (1995) "Earnings, Book Values, and Dividends in Equity Valuation"、Contemporary Accounting Research: 数理モデル
### クリーンサープラス関係と「配当は簿価を減らすが当期利益は減らさない」という会計構造から導く、利益・簿価・配当と株式価値の数理モデル早見表

---

## 目次

- [0. 論文の紹介](#sec0)
- [1. 数理モデル](#sec1)
- [2. 説明できる現象](#sec2)
- [3. 整理している点](#sec3)
- [4. 対象外の現象](#sec4)
- [5. 主要文献・関連論文](#sec5)
- [付録：導出手順](#appendix)

---

## 0. 論文の紹介 {#sec0}

**書誌**：Ohlson, J. A., "Earnings, Book Values, and Dividends in Equity Valuation," *Contemporary Accounting Research*, Vol. 11, No. 2 (Spring 1995), pp. 661–687.

**論文リンク**：
- 無料で全文を読める版：Web検索では確認できなかった（リンクは載せない）。
- 公式版（Wiley、DOI）：https://doi.org/10.1111/j.1911-3846.1995.tb00461.x （Web検索で確認した書誌ページに記載されていたDOI。閲覧に契約や所属機関経由のアクセスが必要な場合がある）

**論文の内容**：企業の株式価値が、当期および将来の利益・簿価・配当とどう結びつくかを問う。出発点は「価値は期待配当の現在価値に等しい」という新古典派の想定である。ここにクリーンサープラス関係（簿価の変化は利益から配当を引いたものに等しい）を課すと、価値は簿価に将来の期待異常利益の現在価値を足したものになる。異常利益が（「他の情報」を伴う）線形の自己回帰過程に従うと仮定すると、株価は簿価・当期異常利益・他の情報の線形関数として閉じた形で解け、同じ式が「利益を資本化した値（配当調整後）」と「簿価」の加重平均としても書ける。さらに「配当は簿価を減らすが当期利益は減らさない」という会計構造を使うと、配当の1ドルが株価を1ドル減らすこと（MMの配当無関連性）と、配当が将来の期待利益を減らすことが同時に得られる。論文は、配当の予測を経由せず、配当が会計数値にどう影響するかに着目することで「期待配当が価値を決めるのに配当政策が無関係」という見かけ上の逆説を解く。

**本記事の位置づけ**：この記事は、この論文の背景にある数理モデルについての記事です。論文本文の仮定・式・性質（P1〜P7）、命題、リスクについての議論、付録1〜5、脚注の式を原文の記号のまま対象にしています。この論文は理論論文であり、実証結果はありません。

**式番号の対応**：本記事は式番号を通し番号に付け直しています。原論文の番号との対応は次のとおりです（原論文の付録の式で番号のないものは、記事側だけの番号です）。

| 本記事 | 原論文 |
|---|---|
| (1) | (A1) PVED |
| (2) | (A2a) |
| (3) | (A2b) |
| (4) | 本文の定義式（式(1)の直前） |
| (5) | 本文の式（定義式の直後） |
| (6) | (1) |
| (7), (8) | 脚注4 |
| (9) | (A3), (2a) |
| (10) | (A3), (2b) |
| (11) | (3) |
| (12) | (4) |
| (13), (14) | (5) |
| (15) | (6) |
| (16), (17) | (7) とその直後の定義 |
| (18), (19) | (8), (9) |
| (20), (21) | (10), (11) |
| (23) | (P1) |
| (24) | (P2) |
| (25) | (P3) |
| (26), (27) | (P4a), (P4b) |
| (28) | P4の後の段落の式（次期利益予測の不偏性） |
| (29), (30), (31) | $$V_t^T$$ の定義, (P5a), (P5b) |
| (32), (33) | (12) と付録4の係数 |
| (34) | 本文の式（(12)の後） |
| (35) | 脚注12 |
| (36) | 本文の式（$$P_t=V_t^1$$） |
| (37), (38), (39) | $$W_t^T$$ の定義, (P6a), (P6b) |
| (40) | (P7) |
| (22) | (13) |
| (41) | (14) |
| (42) | 付録5の結果 |
| (43) | 命題の後の線形配当政策の式 |
| (44) | 命題の後の偏微分の式 |
| (45) | リスクの節の $$\rho$$ の式 |
| (46) | 主要帰結（本記事でまとめた式） |

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間・情報構造**

離散時間（日付 $$t$$）の経済で、1つの企業の株式を評価する。リスク中立で、信念は同質（「客観的信念」）。利子率は非確率的でフラットな期間構造をもつ。$$E_t[\cdot]$$ は日付 $$t$$ の情報で条件づけた期待値。$$d_t$$ は資本拠出を差し引いた純配当で、負にもなりうる（本文では単に「配当」と呼ぶ）。初期化条件は $$y_0=-d_0$$。

**A1 PVED（期待配当の現在価値）**

市場価値は将来の期待配当を無リスク利子率で割り引いた現在価値に等しい。割引率は無リスク利子率（リスク調整は1.9）。式は1.1。

**A2 持分会計（owners' equity accounting）**

A2a クリーンサープラス関係：簿価の変化は利益から配当を引いたものに等しい。A2b：配当は当期の簿価を減らすが、当期利益には影響しない。式は1.2。A2aだけで式(6)が得られ、A2bは使わない。A2bを外すと、MM的な価値の置き換わり（式(25)）が導けなくなる。

**A3 情報動態（線形）**

異常利益と「他の情報」$$v_t$$ が線形の確率過程に従う。式は1.4。パラメータ $$\omega,\gamma$$ は固定で既知とし、非負で1より小さいとする（脚注6：ざっくり言えば、企業の経済環境と会計原則が $$\omega,\gamma$$ を決める）。誤差項は予測不能で平均ゼロ、分散・共分散には制約をおかない（不均一分散でもよい）。$$v_t$$ を $$v_t\equiv0$$ とおく（$$v_0=\varepsilon_{2,\tau}=0$$）と、異常利益は通常の自己回帰過程になる。

**正則条件**

　$$E_t[\tilde{y}_{t+\tau}]/R_f^{\tau}\to0\ (\tau\to\infty)$$ が成り立つとする（式(6)の成立に必要）。

> 脚注15：$$\omega\ge1$$ または $$\gamma\ge1$$ でも、収束（$$\lvert\omega\rvert,\lvert\gamma\rvert\lt R_f$$）すれば性質 P1, P2, P3, P5, P6 は成り立つが、P4 と P7 は一般に成り立たない（P4, P7 は $$\lvert\omega\rvert,\lvert\gamma\rvert\lt1$$ を必要とする）。

| 記号・項目 | 意味 |
|---|---|
| $$P_t$$ | 日付 $$t$$ の株式の市場価値（株価） |
| $$d_t$$ | 日付 $$t$$ の純配当（資本拠出を差し引いたもの） |
| $$R_f$$ | 無リスク利子率に1を足したもの（総収益率） |
| $$E_t[\cdot]$$ | 日付 $$t$$ の情報による条件付き期待値 |
| $$x_t$$ | 期間 $$(t-1,t)$$ の利益 |
| $$y_t$$ | 日付 $$t$$ の（純）簿価 |
| $$x_t^a$$ | 異常利益（1.3で定義） |
| $$v_t$$ | 会計数値と配当以外の情報（スカラー） |
| $$\omega,\gamma$$ | 異常利益・他の情報の持続性パラメータ |
| $$\varepsilon_{1,t},\varepsilon_{2,t}$$ | 予測不能で平均ゼロの撹乱項 |

### 1.1 価値の出発点

**PVED**

$$
\underbrace{P_t}_{\text{株価}}=\sum_{\tau=1}^{\infty}\underbrace{R_f^{-\tau}}_{\text{割引}}\,\underbrace{E_t[\tilde{d}_{t+\tau}]}_{\text{期待配当}}\tag{1}
$$

> 割引率が無リスク利子率であるのは、リスク中立の想定による。リスクの扱いは1.9。

### 1.2 持分会計の2つの性質

**クリーンサープラス関係（A2a）**

$$
\underbrace{y_{t-1}}_{\text{前期末簿価}}=\underbrace{y_t}_{\text{当期末簿価}}+\underbrace{d_t}_{\text{配当}}-\underbrace{x_t}_{\text{利益}}\tag{2}
$$

**配当は簿価を減らすが当期利益は減らさない（A2b）**

$$
\frac{\partial y_t}{\partial d_t}=-1,\qquad\frac{\partial x_t}{\partial d_t}=0\tag{3}
$$

> A2bは式(2)から導かれない。ただし式(2)と整合的である：式(2)を $$d_t$$ で偏微分すると $$\partial y_{t-1}/\partial d_t=\partial y_t/\partial d_t+\partial d_t/\partial d_t-\partial x_t/\partial d_t=-1+1-0=0$$ となる。多くの結論はA2aだけに依存する。

### 1.3 異常利益と残余利益評価式

**異常利益の定義**

$$
\underbrace{x_t^a}_{\text{異常利益}}\equiv\underbrace{x_t}_{\text{利益}}-\underbrace{(R_f-1)\,y_{t-1}}_{\text{資本コスト}}\tag{4}
$$

> 期首簿価に利子率をかけた「資本の使用料」を利益から引いたもの（文献では「残余利益」とも呼ばれる）。$$x_{t+1}^a\gt0$$ は、簿価利益率 $$x_{t+1}/y_t$$ が資本コスト $$R_f-1$$ を上回る「収益的な期間」を意味する。

式(2)と式(4)から配当は次のように書ける。

$$
d_t=\underbrace{x_t^a}_{\text{異常利益}}-y_t+R_f\,y_{t-1}\tag{5}
$$

**残余利益評価式**

$$
P_t=\underbrace{y_t}_{\text{簿価}}+\sum_{\tau=1}^{\infty}\underbrace{R_f^{-\tau}\,E_t[\tilde{x}^a_{t+\tau}]}_{\text{期待異常利益の現在価値}}\tag{6}
$$

> 式(1)、式(2)、正則条件から得られる（付録A.2）。式(6)の解釈には会計の概念（簿価・利益）が現れるが、式自体は会計原則の中身に依存しない。式(3)（A2b）も使わない。

**価値の変化の分解（脚注4）**

$$
P_{t+1}+d_{t+1}-R_fP_t=\sum_{\tau=1}^{\infty}R_f^{-(\tau-1)}\,\Delta E_{t+1}\!\left[\tilde{x}^a_{t+\tau}\right]\tag{7}
$$

$$
P_{t+1}+d_{t+1}-R_fP_t=\sum_{\tau=1}^{\infty}R_f^{-(\tau-1)}\,\Delta E_{t+1}\!\left[\tilde{d}_{t+\tau}\right]\tag{8}
$$

> $$\Delta E_{t+1}[\cdot]\equiv E_{t+1}[\cdot]-E_t[\cdot]$$。式(7)と式(8)は並行しているが、一般には $$\tilde{x}^a_{t+\tau}\ne\tilde{d}_{t+\tau}$$ である。式(7)は式(1)、式(2)（脚注4：A1とA2aだけ）から得られる。

> 脚注5（貯蓄口座）：$$x_t^a=0$$（すべての $$t$$）なら $$P_t=y_t$$ である。このときも配当（利益）の系列は確定的とは限らず、ランダムな事象に依存しうるが、確率1で $$\sum_{\tau=1}^{T}R_f^{-\tau}\tilde{d}_{t+\tau}\to P_t$$（$$T\to\infty$$）となる。

| 記号・項目 | 意味 |
|---|---|
| $$x_t^a$$ | 異常利益（利益 − 期首簿価 × 資本コスト） |
| $$\Delta E_{t+1}[\cdot]$$ | 日付 $$t$$ から $$t+1$$ の期待の改訂 |

### 1.4 情報動態（A3）

**異常利益と他の情報の動態**

$$
\tilde{x}^a_{t+1}=\underbrace{\omega\,x_t^a}_{\text{持続}}+\underbrace{v_t}_{\text{他の情報}}+\underbrace{\tilde{\varepsilon}_{1,t+1}}_{\text{利益の驚き}}\tag{9}
$$

$$
\tilde{v}_{t+1}=\underbrace{\gamma\,v_t}_{\text{持続}}+\underbrace{\tilde{\varepsilon}_{2,t+1}}_{\text{情報の驚き}}\tag{10}
$$

$$
E_t[\tilde{\varepsilon}_{k,t+\tau}]=0\quad(k=1,2;\ \tau\ge1),\qquad 0\le\omega\lt1,\ \ 0\le\gamma\lt1,\qquad\frac{\partial v_t}{\partial d_t}=0
$$

> 式(9)の $$v_t$$ の係数を1としても一般性は失われない（スケーリングの問題）。$$v_t$$ の予測は $$v_t$$ だけに依存し、$$x_t^a$$ には依存しない。$$v_t$$ は「まだ財務諸表に現れていない価値関連事象」を要約する変数であり、その実現（や $$\varepsilon_{2,t}$$）は財務諸表を「迂回」できず、$$x^a_{t+1},x^a_{t+2},\dots$$ を通じて簿価に取り込まれる。$$\omega,\gamma\lt1$$ により、$$x^a_t$$ と $$v_t$$ の無条件平均はゼロになる。

**簿価の漸化式**

$$
y_t=\underbrace{x_t^a}_{\text{異常利益}}+R_f\,y_{t-1}-\underbrace{d_t}_{\text{配当}}\tag{11}
$$

> 式(11)は式(5)の書き換え（式(2)に等しい）。撹乱項の実現 $$\{\varepsilon_{1,\tau},\varepsilon_{2,\tau}\}_{\tau=1}^{t}$$ と配当の系列 $$\{d_\tau\}_{\tau=0}^{t}$$ が簿価 $$y_t$$ を決め、不確実性の解消は現在と将来の簿価へ徐々に流れ込む。

**次期利益の期待**

$$
E_t[\tilde{x}_{t+1}]=\underbrace{(R_f-1)\,y_t}_{\text{簿価の正常利益}}+\underbrace{\omega\,x_t^a}_{\text{異常利益の持続}}+\underbrace{v_t}_{\text{他の情報}}\tag{12}
$$

> 式(12)は日付 $$t$$ の情報で次期の利益を予測するのに問題はないが、$$\tau\ge2$$ 期先の利益 $$E_t[\tilde{x}_{t+\tau}]$$ は、将来の配当 $$E_t[\tilde{d}_{t+1}],\dots$$ の予測が必要になり、このモデルは予測を与えない。期待配当の系列はA2とA3からは決まらない。それでも価値は決まる（これが見かけ上の逆説で、結論で解かれる）。

| 記号・項目 | 意味 |
|---|---|
| $$\omega$$ | 異常利益の持続性（自己回帰係数） |
| $$\gamma$$ | 他の情報の持続性（自己回帰係数） |
| $$\varepsilon_{1,t+1}$$ | 予測不能な利益（異常利益）の驚き |
| $$\varepsilon_{2,t+1}$$ | 他の情報の驚き |

### 1.5 評価関数と収益率

**評価関数**

$$
\underbrace{P_t}_{\text{株価}}=\underbrace{y_t}_{\text{簿価}}+\underbrace{\alpha_1\,x_t^a}_{\text{当期異常利益}}+\underbrace{\alpha_2\,v_t}_{\text{他の情報}}\tag{13}
$$

$$
\alpha_1=\frac{\omega}{R_f-\omega}\ge0,\qquad\alpha_2=\frac{R_f}{(R_f-\omega)(R_f-\gamma)}\gt0\tag{14}
$$

> 簿価に、当期の収益性（異常利益）と他の情報による将来の収益性の修正を足したものが株価。$$v_t\equiv0$$ なら、異常利益 $$x_t^a$$ だけが「のれん」$$P_t-y_t$$ を決める。これは、異常利益が自己回帰過程に従うこと、すなわち当期異常利益が将来異常利益の予測に十分であることと同値（「のれんが当期異常利益だけで決まる」⟺「異常利益が自己回帰過程」）。$$\omega=0$$ の境界では $$E_t[\tilde{x}^a_{t+\tau}]$$ が $$x_t^a$$ に依存せず、$$P_t$$ も $$x_t^a$$ に依存しない。$$\alpha_1(\omega)$$, $$\alpha_2(\omega,\gamma)$$ はそれぞれの引数について増加関数で、$$\omega,\gamma$$ は持続性を表し、大きいほど $$P_t$$ が $$(x_t^a,v_t)$$ の実現に敏感になる。

**収益率**

$$
\frac{\tilde{P}_{t+1}+\tilde{d}_{t+1}}{P_t}=R_f+\underbrace{(1+\alpha_1)\frac{\tilde{\varepsilon}_{1,t+1}}{P_t}}_{\text{利益の驚き}}+\underbrace{\alpha_2\frac{\tilde{\varepsilon}_{2,t+1}}{P_t}}_{\text{情報の驚き}}\tag{15}
$$

> 収益率の不確実性は2つの驚き（予期せぬ利益 $$\varepsilon_{1,t+1}$$ と他の情報の革新 $$\varepsilon_{2,t+1}$$）で説明され、配当の予測不能性に関する項は現れない。係数は評価関数と同じだが、利益の驚きの係数は $$\alpha_1$$ でなく $$1+\alpha_1$$ である（評価関数に簿価が入るため）。簿価・利益の1ドルが市場価値のちょうど1ドルに対応するのは、$$\omega=\alpha_1=0$$（異常利益の持続性がゼロ）のときだけである。

| 記号・項目 | 意味 |
|---|---|
| $$\alpha_1$$ | 当期異常利益の評価係数 |
| $$\alpha_2$$ | 他の情報の評価係数 |

### 1.6 評価関数の再表現（利益・簿価・配当）

**定義**

$$
\varphi\equiv\frac{R_f}{R_f-1},\qquad k\equiv(R_f-1)\,\alpha_1=\frac{(R_f-1)\,\omega}{R_f-\omega}\tag{16}
$$

**利益モデルと簿価モデルの加重平均**

$$
P_t=\underbrace{k\left(\varphi\,x_t-d_t\right)}_{\text{利益（配当調整後）モデル}}+\underbrace{(1-k)\,y_t}_{\text{簿価モデル}}+\underbrace{\alpha_2\,v_t}_{\text{他の情報}}\tag{17}
$$

> $$\varphi$$ は利益の乗数。$$k$$ は $$\omega$$（と $$\alpha_1$$）と1対1に対応する増加関数で、$$0\le\omega\le1$$ のとき $$0\le k\le1$$、境界で $$k(0)=0$$, $$k(1)=1$$、内点では $$k\ne\omega$$（$$k\lt\omega$$）。式(13)の $$x_t^a$$ に定義式(4)と式(2)の $$y_{t-1}$$ を代入して整理すると得られる（付録A.5）。

**特殊ケース（$$v_t\equiv0$$）：純粋な利益・配当モデル（$$\omega=k=1$$）**

$$
P_t=\varphi\,x_t-d_t\tag{18}
$$

$$
\tilde{x}_{t+1}=R_f\,x_t-(R_f-1)\,d_t+\tilde{\varepsilon}_{1,t+1}\tag{19}
$$

**特殊ケース（$$v_t\equiv0$$）：純粋な簿価モデル（$$\omega=k=0$$）**

$$
P_t=y_t\tag{20}
$$

$$
\tilde{x}_{t+1}=(R_f-1)\,y_t+\tilde{\varepsilon}_{1,t+1}\tag{21}
$$

> 前者では利益と配当で次期の期待利益が予測でき、この2変数が価値を決める。後者では簿価だけが利益を予測し、簿価だけで価値が決まる。両者は非対称（配当が前者にだけ現れる）だが、これは式(3)（配当は簿価を減らすが当期利益は減らさない）の反映である。評価関数式(17)は式(18)と式(20)を重み $$k$$, $$1-k$$ で平均したものである。動態の式(19)と式(21)を重み $$\omega$$, $$1-\omega$$ で平均すると、動態(9)に一致する（付録A.5）。重みは2組（$$(k,1-k)$$ と $$(\omega,1-\omega)$$）あるが、$$k(\omega)$$ は増加関数であり、$$\omega$$ を利益対簿価の相対的重要性を決める外生要因と考えれば整合的である。

**次期の期待利益の別表現**

$$
E_t[\tilde{x}_{t+1}]=\underbrace{\omega R_f\,x_t}_{\text{利益}}+\underbrace{(1-\omega)(R_f-1)\,y_t}_{\text{簿価}}-\underbrace{\omega(R_f-1)\,d_t}_{\text{配当}}+v_t\tag{22}
$$

> 式(12)に式(4)と式(2)を使って $$x_t^a$$ を消した形。自由度は $$\omega$$ の1つだけ。線形の一般形では $$(x_t,y_t,d_t)$$ の各係数が自由なので3自由度。1.8で、会計の性質からこの1自由度形が出ることを示す。

| 記号・項目 | 意味 |
|---|---|
| $$\varphi$$ | 利益の乗数 $$R_f/(R_f-1)$$ |
| $$k$$ | 利益モデルの重み（$$0\le k\le1$$） |

### 1.7 モデルの性質（P1〜P7）

**P1　配当は次期の期待利益を無リスク利子率だけ減らす**

$$
\frac{\partial E_t[\tilde{x}_{t+1}]}{\partial d_t}=-(R_f-1)\tag{23}
$$

> 式(3)、$$\partial v_t/\partial d_t=0$$、式(12)から出る。配当を借入で増やすと、翌期の利息費用が増えるという発生主義の見方（MM 1958の資本構造無関連性の論法と同様、脚注11）に対応する。

**P2　配当は2期分の期待利益の合計を2期の複利率だけ減らす**

$$
\frac{\partial E_t\!\left[\tilde{x}_{t+2}+\tilde{x}_{t+1}+\tilde{d}_{t+1}(R_f-1)\right]}{\partial d_t}=-(R_f^{2}-1)\tag{24}
$$

> 期をまたぐ利益の単純合計（重みなし）と、$$t+1$$ 期の配当を私的に運用して得る利益 $$\tilde{d}_{t+1}(R_f-1)$$ の加算が必要。P2は P1より強い性質で、P1からP2は出ない。

**P3　配当の支払は価値を1ドルずつ置き換える（MMの配当無関連性）**

$$
\frac{\partial P_t}{\partial d_t}=-1\tag{25}
$$

> 評価関数(13)と式(3)から出る。評価関数自体はA2bに依存しないが、P3の導出にはA2bが不可欠である。たとえば $$\partial y_t/\partial d_t=0$$, $$\partial x_t/\partial d_t=1$$ と仮定しても式(2)とは整合し、式(13)も満たされるが、$$\partial P_t/\partial d_t\ne-1$$ となる。

**P4　簿価と利益の不偏性**

$$
E_t\!\left[\tilde{P}_{t+\tau}-\tilde{y}_{t+\tau}\right]\to0\quad(\tau\to\infty)\tag{26}
$$

$$
E_t\!\left[\tilde{P}_{t+\tau}+\tilde{d}_{t+\tau}-\varphi\,\tilde{x}_{t+\tau}\right]\to0\quad(\tau\to\infty)\tag{27}
$$

> 平均的に、のれん $$P-y$$ はゼロ（簿価は価値の不偏推定量）で、利益に $$\varphi$$ をかけたものは配当込みの価値に等しい。系列に自己相関があっても、十分長期の平均はゼロに近づく。

次期利益の2つの予測成分も平均的に不偏である。

$$
\begin{aligned}
&E_t\!\left[\tilde{x}_{t+\tau+1}-\left(R_f\,\tilde{x}_{t+\tau}-(R_f-1)\,\tilde{d}_{t+\tau}\right)\right]\to0\\
&E_t\!\left[\tilde{x}_{t+\tau+1}-(R_f-1)\,\tilde{y}_{t+\tau}\right]\to0
\end{aligned}\quad(\tau\to\infty)\tag{28}
$$

> 最良の予測は式(22)で与えられ、その2成分（利益・配当型と簿価型）がそれぞれ不偏。上段は式(27)から、下段は式(26)から出る（付録A.8）。

**P5　期待利益の合計による近似価値（フロー）**

$$
V_t^{T}\equiv\frac{E_t\!\left[\displaystyle\sum_{\tau=1}^{T}\tilde{x}_{t+\tau}+\sum_{\tau=1}^{T}\left(R_f^{T-\tau}-1\right)\tilde{d}_{t+\tau}\right]}{R_f^{T}-1}\tag{29}
$$

$$
\text{(a)}\ \ V_t^{T}\to P_t\ \ (T\to\infty)\tag{30}
$$

$$
\text{(b)}\ \ V_t^{T}-P_t\ \text{は配当政策に依存しない},\qquad\frac{\partial V_t^{T}}{\partial d_t}=-1\tag{31}
$$

> (a)は式(1)と式(2)だけ、(b)は A2b と A3 も使う。$$\sum(R_f^{T-\tau}-1)d_{t+\tau}$$ は配当を無リスク資産で運用して私的に得る利益の合計。$$V_t^T$$ は評価関数と同じ構造をもつ。

$$
V_t^{T}=y_t+\alpha_1(T)\,x_t^a+\alpha_2(T)\,v_t\tag{32}
$$

$$
\alpha_1(T)=\frac{\omega}{R_f-\omega}\cdot\frac{R_f^{T}-\omega^{T}}{R_f^{T}-1},\qquad
\alpha_2(T)=\frac{1}{\omega-\gamma}\left\{\alpha_1(T)-\frac{\gamma}{R_f-\gamma}\cdot\frac{R_f^{T}-\gamma^{T}}{R_f^{T}-1}\right\}\tag{33}
$$

> $$T\to\infty$$ で $$\alpha_1(T)\to\alpha_1$$, $$\alpha_2(T)\to\alpha_2$$。ただし $$T\lt\infty$$ では係数は正しい値からずれる。

式(1)と式(2)だけから、任意の $$T$$ について次が成り立つ。

$$
V_t^{T}=y_t+\underbrace{\varphi_T}_{\text{拡大係数}}\sum_{\tau=1}^{T}R_f^{-\tau}E_t[\tilde{x}^a_{t+\tau}],\qquad\varphi_T\equiv\frac{R_f^{T}}{R_f^{T}-1}\tag{34}
$$

> $$\varphi_1=\varphi$$。$$T\to\infty$$ で式(6)に近づく。

誤差の表現（脚注12）：

$$
P_t-V_t^{T}=\frac{E_t\!\left[\left(\tilde{P}_{t+T}-\tilde{y}_{t+T}\right)-\left(P_t-y_t\right)\right]}{R_f^{T}-1}\tag{35}
$$

> $$P_t=V_t^T$$ ⟺ $$E_t[\tilde{P}_{t+T}-\tilde{y}_{t+T}]=P_t-y_t$$。証明は式(1)と式(2)だけを使う。

有限の $$T$$ で誤差がゼロになる場合がある。$$(\omega,\gamma)=(1,0)$$ または $$(0,1)$$ のとき、すべての $$T$$ で $$\alpha_1(T)=\alpha_1$$, $$\alpha_2(T)=\alpha_2$$ となり、

$$
P_t=V_t^{1}=(R_f-1)^{-1}E_t[\tilde{x}_{t+1}]\quad\text{（任意の }T\ge1\text{ で }P_t=V_t^{T}\text{）}\tag{36}
$$

> 価値は次期の期待利益を資本化したものに等しい。このとき P1 と P3 は互いに同値：$$\partial E_t[\tilde{x}_{t+1}]/\partial d_t=-(R_f-1)$$ ⟺ $$\partial P_t/\partial d_t=-1$$。一般に $$P_t=(R_f-1)^{-1}E_t[\tilde{x}_{t+1}]+\text{error}_t$$ と書けるなら、$$\partial\,\text{error}_t/\partial d_t=0$$ のもとで P1 と P3 は互いに含意する（これは P5b、すなわちA2bによる）。

**P6　期待簿価による近似価値（ストック）**

$$
W_t^{T}\equiv R_f^{-T}E_t\!\left[\tilde{y}_{t+T}+\sum_{\tau=1}^{T}R_f^{T-\tau}\,\tilde{d}_{t+\tau}\right]\tag{37}
$$

$$
\text{(a)}\ \ W_t^{T}\to P_t\ \ (T\to\infty)\tag{38}
$$

$$
\text{(b)}\ \ W_t^{T}-P_t\ \text{は配当政策に依存しない},\qquad\frac{\partial W_t^{T}}{\partial d_t}=-1\tag{39}
$$

> 括弧内は、日付 $$t+T$$ の簿価に、配当を私的に運用して積み上がった価値を足したもの（P5のフローに対するストック版）。近似誤差は $$W_t^T-P_t=R_f^{-T}E_t[\tilde{y}_{t+T}-\tilde{P}_{t+T}]$$ で、$$T\to\infty$$ でゼロに近づく。$$W_t^T-y_t$$ も $$(x_t^a,v_t)$$ の線形関数で、配当政策は $$W_t^T$$ にも誤差にも影響しない。

> 脚注13：$$V_t^T=W_t^T$$ ⟺ $$V_t^T=y_t$$ または $$W_t^T=y_t$$（式(2)だけを使う）。例：$$(\omega,\gamma)=(0,0)$$ では $$T=1$$ で $$W_t^1=P_t$$ だが $$V_t^1\ne P_t$$ である。この例は、$$(x_t^a,v_t)\ne(0,0)$$ であっても $$T=1$$ でP6の近似が完全に成り立ちうることも示している。

**P7　長期の「恒久」利益（Ramakrishnan 1990）**

$$
\text{すべての }\tau\ge1\text{ で }x_{t+\tau}=d_{t+\tau}\ \text{ならば}\quad E_t[\tilde{x}_{t+\tau}]\to(R_f-1)\,y_t\quad(\tau\to\infty)\tag{40}
$$

> 配当を利益に等しくおくと簿価が一定（$$y_{t+\tau}=y_t$$）になり、異常利益の期待がゼロに収束するため、遠い将来の期待利益は現在の簿価だけで決まる。「長期的には資産が利益を生み、資産なしに利益は期待できない」。脚注14：P7は $$\omega=1$$ では成り立たない（$$\gamma\lt1$$, $$\omega=1$$ のとき $$E_t[\tilde{x}_{t+\tau}]\to x_t+(1-\gamma)^{-1}v_t$$ に収束する）。$$\omega=\gamma=1$$ では $$E_t[\tilde{x}_{t+\tau}]$$ は一般に収束しない。

| 記号・項目 | 意味 |
|---|---|
| $$V_t^T$$ | 期待利益の $$T$$ 期合計と私的運用益による近似価値（フロー） |
| $$W_t^T$$ | $$T$$ 期先の期待簿価と私的運用の蓄積による近似価値（ストック） |
| $$\varphi_T$$ | $$R_f^T/(R_f^T-1)$$ |
| $$\alpha_1(T),\alpha_2(T)$$ | $$V_t^T$$ の評価係数（$$T\to\infty$$ で $$\alpha_1,\alpha_2$$） |

### 1.8 異常利益の動態を会計の性質から導く（命題）

**次期利益の線形予測モデル**

$$
E_t[\tilde{x}_{t+1}]=\theta_1x_t+\theta_2y_t+\theta_3d_t+v_t\tag{41}
$$

**命題**　式(41)が成り立ち、さらに次の3条件が成り立つとする。

- (i) 持分会計：式(2)と式(3)。
- (ii) 配当の2期分の利益への影響：式(24)。
- (iii) 他の情報：$$E_t[\tilde{v}_{t+1}]=\gamma\,v_t$$ かつ $$\partial v_t/\partial d_t=0$$。

このとき、式(41)は式(22)に帰着し、同値に、次が成り立つ。

$$
\theta_1=\omega R_f,\quad\theta_2=(R_f-1)(1-\omega),\quad\theta_3=-(R_f-1)\,\omega,\qquad E_t[\tilde{x}^a_{t+1}]=\omega\,x_t^a+v_t\tag{42}
$$

> 式(42)の最後の式が式(9)に対応する。つまりA3（情報動態）は、A1、A2、P2、条件(iii)から再導出できる（式(41)の線形性は前提）。構成要素は、(a) 市場価値は期待配当の現在価値（A1）、(b) 持分会計の性質（A2とP2）、(c) 他の情報の期待が現在・将来の配当に依存しないこと、の3つで、配当政策も期待配当の系列も参照しない。ただし命題はパラメータ $$\omega,\gamma$$ の大きさについて何も述べないので、$$0\lt\omega,\gamma\lt1$$ という制約までは復元されず、$$\sum R_f^{-\tau}E_t[\tilde{x}^a_{t+\tau}]$$ の収束も保証されない（脚注15：収束は $$\lvert\omega\rvert,\lvert\gamma\rvert\lt R_f$$ のとき）。

**配当政策を明示する別の導出**

$$
\tilde{d}_{t+1}=\pi_1x_t+\pi_2y_t+\pi_3d_t+\pi_4v_t+\tilde{u}_{t+1}\tag{43}
$$

> $$\pi_1,\dots,\pi_4$$ は政策パラメータ、$$\tilde{u}_{t+1}$$ は $$\varepsilon_{1,t+1},\varepsilon_{2,t+1}$$ と相関しうる撹乱項（$$d_{t+1}=Kx_{t+1}$$ は特殊ケース）。A2とA3を使って $$E_t[\tilde{d}_{t+\tau}]$$ の系列を求め、PVED を評価すると式(13)が得られ、$$\pi_1,\dots,\pi_4$$ は価値に影響しない。計算は煩雑だが線形のまま閉じる（正則条件：$$R_f^{-T}E_t[(\tilde{x}_{t+T},\tilde{y}_{t+T},\tilde{d}_{t+T})]\to0$$）。原論文は計算を省略しており、本記事も補わない（原論文の脚注16：Ohlson 1989 が同型の仮定で導出）。

**変数の役割**　A2とA3のもとで、$$(x_t,y_t,d_t,v_t)$$ は配当への限界反応で区別される。

$$
\frac{\partial x_t}{\partial d_t}=0,\quad\frac{\partial y_t}{\partial d_t}=-1,\quad\frac{\partial d_t}{\partial d_t}=1,\quad\frac{\partial v_t}{\partial d_t}=0,\qquad\frac{\partial E_t[\tilde{x}_{t+1}]}{\partial d_t}=-(R_f-1),\quad\frac{\partial E_t[\tilde{v}_{t+1}]}{\partial d_t}=0\tag{44}
$$

> したがって $$(x_t,y_t,d_t,v_t)$$ ＝（利益、簿価、配当、他の情報）という名づけは、各変数が固有の役割をもつ唯一の意味のあるものである。

### 1.9 リスクの扱い

> リスク中立の仮定（A1の割引率が無リスク利子率）を緩める3つの方法を、論文は簡潔に論じる。

**アプローチ1：割引率の置き換え**　$$R_f$$ をリスク調整した $$\rho$$ に置き換える。

$$
\rho=R_f+\text{risk premium}=R_f+\beta\left(E[\text{市場ポートフォリオの収益率}]-R_f\right)\ \ \text{（CAPMの場合）}\tag{45}
$$

> 分析・技術上の問題はなく、実証や実務（P5の近似価値の実装）には十分だが、理論的には不十分である（リスクの出所が不明で、リスクを割引率の引き上げだけで捉えられるかも自明でない：「ad hoc で外生的」）。

**アプローチ2：分子の調整**　Rubinstein (1976) に代表される現代ファイナンス理論の一般的枠組みで、割引率（分母）ではなく、式(1)の分子（期待値演算子）でリスクを調整する。確率構造の代わりに一般化された測度論を用い、演算子を $$E^{\ast}_t[\cdot]$$ とする（星は、測度が経済の暗黙の（事象別の）価格体系に関係することを示す。通常の確率のように働く）。本論文の分析は解析上の複雑さなしに修正できるが、それだけでは具体的な含意が出ない。

**アプローチ3：構造を足す**　$$E^{\ast}_t[\cdot]$$ に構造を加える（Garman and Ohlson 1980 が撹乱項 $$\varepsilon_{1t},\varepsilon_{2t}$$ と暗黙の価格体系との相関をモデル化）。期待市場収益率は情報変数 $$(x_t^a,v_t)$$ のリスクを反映して内生化される。本論文のモデルでの有用性は未検討。

> 限界：モデルには負債（レバレッジ）の概念がなく、営業リスクと財務リスクを分けられない。

### 1.10 主要帰結

**主要式**

$$
\boxed{\begin{aligned}
P_t&=\underbrace{y_t}_{\text{簿価}}+\underbrace{\tfrac{\omega}{R_f-\omega}\,x_t^a}_{\text{当期異常利益}}+\underbrace{\tfrac{R_f}{(R_f-\omega)(R_f-\gamma)}\,v_t}_{\text{他の情報}}\\
&=k\left(\varphi\,x_t-d_t\right)+(1-k)\,y_t+\alpha_2\,v_t\\
\frac{\tilde{P}_{t+1}+\tilde{d}_{t+1}}{P_t}&=R_f+\frac{(1+\alpha_1)\,\tilde{\varepsilon}_{1,t+1}+\alpha_2\,\tilde{\varepsilon}_{2,t+1}}{P_t}\\
\frac{\partial P_t}{\partial d_t}&=-1,\qquad\frac{\partial E_t[\tilde{x}_{t+1}]}{\partial d_t}=-(R_f-1)
\end{aligned}}\tag{46}
$$

**比較静学と特殊ケース**

| 変化・ケース | 結果 | 符号・式 |
|---|---|---|
| 異常利益の持続性 $$\omega$$ が上昇 | $$\alpha_1,\alpha_2,k$$ が増加し、価値が $$(x_t^a,v_t)$$ に敏感になる | $$\partial\alpha_1/\partial\omega\gt0$$, $$\partial\alpha_2/\partial\omega\gt0$$, $$dk/d\omega\gt0$$ |
| 他の情報の持続性 $$\gamma$$ が上昇 | $$\alpha_2$$ が増加 | $$\partial\alpha_2/\partial\gamma\gt0$$ |
| 配当 $$d_t$$ が1ドル増える | 価値が1ドル減り、次期の期待利益が $$R_f-1$$ 減る | 式(25), 式(23) |
| $$\omega=k=1$$（$$v_t\equiv0$$） | 純粋な利益・配当モデル | $$P_t=\varphi\,x_t-d_t$$ |
| $$\omega=k=0$$（$$v_t\equiv0$$） | 純粋な簿価モデル | $$P_t=y_t$$ |
| $$(\omega,\gamma)=(1,0)$$ または $$(0,1)$$ | 価値は次期期待利益の資本化 | $$P_t=(R_f-1)^{-1}E_t[\tilde{x}_{t+1}]$$ |
| $$x_t^a=0$$（貯蓄口座） | 価値は簿価に等しい | $$P_t=y_t$$ |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 株価が簿価と乖離する（のれん） | のれんは将来の期待異常利益の現在価値で、$$\omega$$ のもとでは当期異常利益と他の情報の線形関数（式(13)） |
| 配当を払うと株価が下がる | 配当は簿価を1ドル減らし、異常利益の系列には影響しないので、価値が1ドル置き換わる（式(25)） |
| 配当を払うと将来の利益が減る | 配当は簿価（資本）を減らし、翌期の期待利益を $$R_f-1$$ だけ、2期分を $$R_f^2-1$$ だけ減らす（式(23)、式(24)） |
| 利益の資本化（PER）と簿価（PBR）の両方が価値の指標になる | 価値は利益モデルと簿価モデルの加重平均で、重みは異常利益の持続性 $$\omega$$ で決まる（式(17)） |
| 簿価は価値の粗い推定値 | のれんの無条件期待値はゼロ（簿価の不偏性）で、長期の平均は簿価に近づく（式(26)） |
| 株価が会計利益に先行して動く | 他の情報 $$v_t$$ は将来の異常利益を通じてのみ会計に現れ、現在の価値に先に反映される（式(13)） |
| 株式収益率が予想外の利益で説明される | 収益率は予期せぬ利益と他の情報の革新に線形に依存する（式(15)） |
| 長期の利益は資産で決まる | 配当を利益と等しくおくと、遠い将来の期待利益は簿価 × 無リスク利子率に収束する（式(40)） |
| 次期期待利益だけで価値が決まる場合がある | $$(\omega,\gamma)=(1,0)$$ または $$(0,1)$$ では、価値は次期の期待利益を $$R_f-1$$ で割ったものに等しい（式(36)） |

## 3. 整理している点 {#sec3}

- 利益・簿価・配当の3変数に、それぞれ別の役割を与える。簿価は価値の基礎（ストック）、利益（異常利益）は将来の収益性の指標（フロー）、配当は価値の分配であり、価値の創造とは区別される。
- 「期待配当が価値を決める」と「配当政策は価値に無関係」という見かけ上の逆説を、配当の予測ではなく、配当が会計数値（簿価・将来の利益）に与える影響に着目して解く。価値は配当政策に依存しない系列（将来の異常利益）の予測で決まる。
- 異常利益の動態の仮定が、分析上の便宜だけでなく、持分会計（クリーンサープラス、配当は簿価を減らす）と整合する意味をもつ。

## 4. 対象外の現象 {#sec4}

- 実証的な検証は行わない（論文は評価関数と収益率の式の実証研究での可能性に触れるが、追求していない）。
- リスク回避の下での価値は、本論文のモデルとしては完成していない（1.9の3つのアプローチはいずれも、割引率の置き換え、または未完の一般的枠組みにとどまる）。
- 負債（レバレッジ）の概念がなく、営業リスクと財務リスクを区別しない。
- 会計数値を生み出す具体的な会計原則は扱わない（モデルは会計原則について沈黙しており、仮定が会計数値に課す大まかな性質（P4など）を示すにとどまる）。式(6)自体は会計原則に依存しない。
- 将来の配当の系列（$$\tau\ge2$$ 期先の期待利益・期待配当）の予測は与えない。
- $$\omega\ge1$$ または $$\gamma\ge1$$ の場合は、P1〜P3, P5, P6 のみが成り立つ可能性があり、P4, P7 は一般に成り立たない。命題は $$\omega,\gamma$$ の大きさを決めない。
- 「経済利益」や「経済利益＋ランダム誤差」といった理想的な会計概念には依存しない（つまりそれらについての主張もしない）。

## 5. 主要文献・関連論文 {#sec5}

- **[金字塔的論文]** Miller, M. H., & Modigliani, F. (1961). Dividend policy, growth, and the valuation of shares. *Journal of Business*, 34(4), 411–433.
  - **位置づけ**: 配当政策の無関連性（配当が価値を1ドルずつ置き換える）を示した古典。本モデルのP3はこの性質の会計版。
- **[関連文献]** Peasnell, K. V. (1982). Some formal connections between economic values and yields and accounting numbers. *Journal of Business Finance & Accounting*, 9(3), 361–381.
  - **位置づけ**: クリーンサープラスのもとで、期待配当の現在価値と簿価＋期待異常利益の現在価値の同値性（本記事の式(6)）を整理した文献の一つ。
- **[発展文献]** Feltham, G. A., & Ohlson, J. A. (1995). Valuation and clean surplus accounting for operating and financial activities. *Contemporary Accounting Research*, 11(2), 689–731.
  - **位置づけ**: 本論文と同じ号に掲載。営業活動と財務活動を分け、会計の保守主義と成長を扱う拡張で、本論文の「レバレッジの欠如」という限界に対応する。
- **[関連文献]** Ohlson, J. A. (1991). The theory of value and earnings, and an introduction to the Ball–Brown analysis. *Contemporary Accounting Research*, 8(1), 1–19.
  - **位置づけ**: 本論文が $$\omega=1$$ などの極端なパラメータ化として含む「純粋なフロー（利益）モデル」「純粋なストック（簿価）モデル」を分析した先行研究（本論文はこれを凸結合に一般化する）。
- **[関連文献]** Ohlson, J. A. (2001). Earnings, book values, and dividends in equity valuation: An empirical perspective. *Contemporary Accounting Research*, 18(1), 107–120.
  - **位置づけ**: 1995年のモデルを再訪し、「他の情報」に実証的な内容を与える議論を展開する。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
A1 PVED (1)
   │  + A2a クリーンサープラス (2)
   ▼
(5) d_t = x^a_t − y_t + R_f y_{t−1}
   ▼
(6)  P_t = y_t + Σ R_f^{−τ} E_t[x^a_{t+τ}]        ──→ (7)(8)  価値の変化の分解
   │  + A3 情報動態 (9)(10)   （行列級数）
   ▼
(13)(14)  P_t = y_t + α1 x^a_t + α2 v_t
   │                                   │
   │  + 式(9)(10) と代入      │  y_{t−1} を (2) で消去
   ▼                                   ▼
(15) 収益率                     (17) 利益・簿価の加重平均 ──→ (18)(19)(20)(21)
   
 + A2b (3) ──→ P1 (23), P2 (24), P3 (25), P5b (31), P6b (39)
 + (9)(10) の収束 ──→ P4 (26)(27)(28), P7 (40)
 + 簿価の漸化式 (11) ──→ P5 (29)〜(35), P6 (37)
 P2 + (41) + 条件(iii) ──→ 命題 (42)
```

### A.1 使う道具

**T1　線形性と繰り返し期待値の法則**

　$$E_t[E_{t+1}[\cdot]]=E_t[\cdot]$$、$$E_t$$ は線形。撹乱項は $$E_t[\tilde{\varepsilon}_{k,t+\tau}]=0$$。

**T2　望遠鏡和（クリーンサープラスの漸化式）**

式(11)を繰り返し代入して $$y_{t+T}$$ を $$y_t$$ と $$x^a$$、$$d$$ で書く：

$$y_{t+T}=\sum_{\tau=1}^{T}R_f^{T-\tau}x^a_{t+\tau}+R_f^{T}y_t-\sum_{\tau=1}^{T}R_f^{T-\tau}d_{t+\tau}$$

**T3　等比級数と行列級数**

　$$\sum_{\tau=1}^{T}r^{\tau}=\dfrac{r(1-r^{T})}{1-r}$$（$$r\ne1$$）、$$\sum_{\tau=1}^{\infty}M^{\tau}=M(I-M)^{-1}$$（$$M$$ の固有値の絶対値が1未満のとき）。

**T4　偏微分（連鎖律）**

　$$\partial/\partial d_t$$ を、式(3)と式(2)で結ばれた各変数に適用する。$$\partial y_{t-1}/\partial d_t=0$$ より $$\partial x_t^a/\partial d_t=\partial x_t/\partial d_t-(R_f-1)\,\partial y_{t-1}/\partial d_t=0$$。

**T5　対角化**

　$$M=QDQ^{-1}$$ として $$M^{\tau}=QD^{\tau}Q^{-1}$$。

### A.2 残余利益評価式 (6) の導出

**Step 1　配当を異常利益で書く（式(4)と式(2)）**

式(2)より $$d_t=x_t-y_t+y_{t-1}$$。$$x_t=x_t^a+(R_f-1)y_{t-1}$$ を入れると $$d_t=x_t^a-y_t+R_fy_{t-1}$$ → 式(5)。

**Step 2　式(1)に代入**

　$$E_t[\tilde{d}_{t+\tau}]=E_t[\tilde{x}^a_{t+\tau}]+R_fE_t[\tilde{y}_{t+\tau-1}]-E_t[\tilde{y}_{t+\tau}]$$ を $$R_f^{-\tau}$$ 倍して $$\tau=1,\dots,T$$ で足す。

**Step 3　簿価の項は望遠鏡和になる**

$$\sum_{\tau=1}^{T}\left(R_f^{-(\tau-1)}E_t[\tilde{y}_{t+\tau-1}]-R_f^{-\tau}E_t[\tilde{y}_{t+\tau}]\right)=y_t-R_f^{-T}E_t[\tilde{y}_{t+T}]$$

**Step 4　$$T\to\infty$$**

正則条件 $$R_f^{-T}E_t[\tilde{y}_{t+T}]\to0$$ により、$$P_t=y_t+\sum_{\tau=1}^{\infty}R_f^{-\tau}E_t[\tilde{x}^a_{t+\tau}]$$ → 式(6)。

**確認**　貯蓄口座（$$x_t^a=0$$）では式(6)は $$P_t=y_t$$（脚注5）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(1), 式(2), 式(4) | 出発点 |
| T1, T3, 正則条件 | 望遠鏡和と極限 |

### A.3 価値の変化の分解 (7) の導出（脚注4）

**Step 1　式(6)を日付 $$t$$ と $$t+1$$ で書く**

　$$P_{t+1}=y_{t+1}+\sum_{s=1}^{\infty}R_f^{-s}E_{t+1}[\tilde{x}^a_{t+1+s}]$$、$$P_t=y_t+\sum_{\tau=1}^{\infty}R_f^{-\tau}E_t[\tilde{x}^a_{t+\tau}]$$。

**Step 2　$$R_fP_t$$ を作り、$$\tau=1$$ の項を分ける**

　$$R_fP_t=R_fy_t+E_t[\tilde{x}^a_{t+1}]+\sum_{s=1}^{\infty}R_f^{-s}E_t[\tilde{x}^a_{t+1+s}]$$。

**Step 3　差をとる**

式(11)より $$y_{t+1}+d_{t+1}-R_fy_t=x^a_{t+1}$$。よって

　$$P_{t+1}+d_{t+1}-R_fP_t=\left(x^a_{t+1}-E_t[\tilde{x}^a_{t+1}]\right)+\sum_{s=1}^{\infty}R_f^{-s}\Delta E_{t+1}[\tilde{x}^a_{t+1+s}]=\sum_{\tau=1}^{\infty}R_f^{-(\tau-1)}\Delta E_{t+1}[\tilde{x}^a_{t+\tau}]$$ → 式(7)。

**Step 4　配当版（式(8)）**

式(1)を同様に日付 $$t$$ と $$t+1$$ で書くと $$P_{t+1}+d_{t+1}-R_fP_t=\left(d_{t+1}-E_t[\tilde{d}_{t+1}]\right)+\sum_{s=1}^{\infty}R_f^{-s}\Delta E_{t+1}[\tilde{d}_{t+1+s}]$$ → 式(8)。

| 入力・使う道具 | 内容 |
|---|---|
| 式(6), 式(1), 式(11) | 出発点 |
| T1 | 期待の改訂 $$\Delta E_{t+1}$$ |

### A.4 評価関数 (13) の導出（付録1）

**Step 1　行列で書く**

行列 $$M\equiv R_f^{-1}\begin{pmatrix}\omega&1\\0&\gamma\end{pmatrix}$$ とおく（原論文ではこの行列を $$P$$ と書くが、株価 $$P_t$$ と区別するため $$M$$ とした）。式(9)(10)は

$$(\tilde{x}^a_{t+1},\tilde{v}_{t+1})^{\top}=R_fM(x_t^a,v_t)^{\top}+(\tilde{\varepsilon}_{1,t+1},\tilde{\varepsilon}_{2,t+1})^{\top},\qquad R_f^{-\tau}E_t[\tilde{x}^a_{t+\tau}]=(1,0)M^{\tau}(x_t^a,v_t)^{\top}$$

**Step 2　級数の和（T3）**

　$$\sum_{\tau=1}^{\infty}M^{\tau}=M(I-M)^{-1}$$（$$M$$ の固有値 $$\omega/R_f,\gamma/R_f$$ は1未満なので収束）。

**Step 3　逆行列を計算する**

　$$I-M=R_f^{-1}\begin{pmatrix}R_f-\omega&-1\\0&R_f-\gamma\end{pmatrix}$$ より

　$$(I-M)^{-1}=\frac{R_f}{(R_f-\omega)(R_f-\gamma)}\begin{pmatrix}R_f-\gamma&1\\0&R_f-\omega\end{pmatrix}$$。

**Step 4　積をとる**

　$$M(I-M)^{-1}=\frac{1}{(R_f-\omega)(R_f-\gamma)}\begin{pmatrix}\omega(R_f-\gamma)&R_f\\0&\gamma(R_f-\omega)\end{pmatrix}$$。

**Step 5　第1行を取り出す**

　$$(\alpha_1,\alpha_2)=(1,0)M(I-M)^{-1}=\left(\dfrac{\omega}{R_f-\omega},\ \dfrac{R_f}{(R_f-\omega)(R_f-\gamma)}\right)$$ → 式(14)。これを式(6)に入れて式(13)。

**確認**　$$\omega=0$$ なら $$\alpha_1=0$$（$$P_t$$ は $$x_t^a$$ に依存しない）。$$v_t\equiv0$$ なら $$P_t=y_t+\omega x_t^a/(R_f-\omega)$$。

| 入力・使う道具 | 内容 |
|---|---|
| 式(6), 式(9), 式(10) | 出発点 |
| T3 | 行列級数 |

### A.5 収益率 (15) と再表現 (17) の導出

**収益率（付録2）**

**Step 1　$$P_{t+1}+d_{t+1}-R_fP_t$$ を作る**

式(13)より $$P_{t+1}+d_{t+1}-R_fP_t=(y_{t+1}+d_{t+1}-R_fy_t)+\alpha_1x^a_{t+1}+\alpha_2v_{t+1}-R_f\alpha_1x_t^a-R_f\alpha_2v_t$$。括弧は式(11)より $$x^a_{t+1}$$ なので

　$$=(\alpha_1+1)\tilde{x}^a_{t+1}+\alpha_2\tilde{v}_{t+1}-R_f\alpha_1x_t^a-R_f\alpha_2v_t$$。

**Step 2　式(9)(10)を代入**

　$$=(\alpha_1+1)\tilde{\varepsilon}_{1,t+1}+\alpha_2\tilde{\varepsilon}_{2,t+1}+\beta_1x_t^a+\beta_2v_t$$、ただし $$\beta_1\equiv(\alpha_1+1)\omega-\alpha_1R_f$$, $$\beta_2\equiv(\alpha_1+1)+\alpha_2\gamma-\alpha_2R_f$$。

**Step 3　$$\beta_1=\beta_2=0$$ を確かめる**

　$$\beta_1=\omega-\alpha_1(R_f-\omega)=\omega-\omega=0$$。$$\beta_2=1+\alpha_1-\alpha_2(R_f-\gamma)=1+\frac{\omega}{R_f-\omega}-\frac{R_f}{R_f-\omega}=0$$。

**Step 4　$$P_t$$ で割る**　→ 式(15)。

**再表現（式(17)）**

**Step 5　式(13)に定義式を代入**

　$$x_t^a=x_t-(R_f-1)y_{t-1}$$、式(2)より $$y_{t-1}=y_t+d_t-x_t$$。よって $$x_t^a=R_fx_t-(R_f-1)y_t-(R_f-1)d_t$$。

**Step 6　整理**

　$$P_t=y_t+\alpha_1\left[R_fx_t-(R_f-1)y_t-(R_f-1)d_t\right]+\alpha_2v_t=(1-(R_f-1)\alpha_1)y_t+\alpha_1R_fx_t-\alpha_1(R_f-1)d_t+\alpha_2v_t$$。$$k=(R_f-1)\alpha_1$$、$$\alpha_1R_f=k\varphi$$ なので式(17)。

**Step 7　動態の加重平均**

式(19)と式(21)の加重平均は $$\tilde{x}_{t+1}=\omega\left[R_fx_t-(R_f-1)d_t\right]+(1-\omega)(R_f-1)y_t+\tilde{\varepsilon}_{1,t+1}$$。$$d_t=y_{t-1}+x_t-y_t$$ を代入すると $$\omega\left[x_t-(R_f-1)y_{t-1}\right]+(R_f-1)y_t+\tilde{\varepsilon}_{1,t+1}$$ となり、$$(R_f-1)y_t$$ を左辺に移すと $$\tilde{x}^a_{t+1}=\omega x^a_t+\tilde{\varepsilon}_{1,t+1}$$（式(9)で $$v_t\equiv0$$）。

**確認**　$$\omega=1$$ なら $$k=1$$（式(18)）。$$\omega=0$$ なら $$k=0$$（式(20)）。$$0\lt\omega\lt1$$ なら $$k\lt\omega$$（$$R_f-1\lt R_f-\omega$$）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(13), 式(9), 式(10), 式(11), 式(2) | 出発点 |

### A.6 性質 P1, P2, P3 と式(12)の導出

**Step 1　次期利益の期待（式(12)）**

　$$\tilde{x}_{t+1}=\tilde{x}^a_{t+1}+(R_f-1)y_t$$ に式(9)の期待をとる。

**Step 2　P1（式(23)）**

式(3)、T4（$$\partial x^a_t/\partial d_t=0$$）、$$\partial v_t/\partial d_t=0$$ より $$\partial E_t[\tilde{x}_{t+1}]/\partial d_t=-(R_f-1)+0+0$$。

**Step 3　P2（式(24)）の準備**

　$$x_{t+2}+d_{t+1}(R_f-1)=x^a_{t+2}+(R_f-1)(y_{t+1}+d_{t+1})$$。式(2)より $$y_{t+1}+d_{t+1}=y_t+x_{t+1}=R_fy_t+x^a_{t+1}$$。また $$x_{t+1}=x^a_{t+1}+(R_f-1)y_t$$。

**Step 4　合計**

　$$x_{t+2}+x_{t+1}+d_{t+1}(R_f-1)=x^a_{t+2}+R_fx^a_{t+1}+(R_f^2-1)y_t$$。

**Step 5　期待をとって偏微分**

　$$E_t$$ の項は $$d_t$$ に依存しない（T4）。$$\partial y_t/\partial d_t=-1$$ より $$-(R_f^2-1)$$ → 式(24)。

**Step 6　P3（式(25)）**

式(13)を偏微分：$$\partial P_t/\partial d_t=\partial y_t/\partial d_t+\alpha_1\partial x^a_t/\partial d_t+\alpha_2\partial v_t/\partial d_t=-1$$。

**確認**　貯蓄口座では式(23)は $$\partial x_{t+1}/\partial d_t=-(R_f-1)$$（脚注9）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(3), 式(12), 式(13) | 出発点 |
| T4 | 偏微分 |

### A.7 P4（式(26)〜(28)）の導出

**Step 1　P4a**

式(13)より $$E_t[\tilde{P}_{t+\tau}-\tilde{y}_{t+\tau}]=\alpha_1E_t[\tilde{x}^a_{t+\tau}]+\alpha_2E_t[\tilde{v}_{t+\tau}]$$。$$0\le\omega,\gamma\lt1$$ より $$E_t[\tilde{x}^a_{t+\tau}],E_t[\tilde{v}_{t+\tau}]\to0$$ → 式(26)。

**Step 2　P4b のための恒等式**

式(2)と式(4)から $$y_{t-1}=(x_t-x^a_t)/(R_f-1)$$、$$y_t+d_t=y_{t-1}+x_t$$。よって $$y_t+d_t=\varphi x_t-x_t^a/(R_f-1)$$。

**Step 3　$$P_t+d_t-\varphi x_t$$**

式(13)より $$P_t+d_t-\varphi x_t=\left(\alpha_1-\frac{1}{R_f-1}\right)x_t^a+\alpha_2v_t=\frac{k-1}{R_f-1}\,x_t^a+\alpha_2v_t$$。右辺の期待は $$\tau\to\infty$$ で0に収束 → 式(27)。

**Step 4　P4c**

式(1)より $$E_t[\tilde{P}_{t+\tau+1}+\tilde{d}_{t+\tau+1}-R_f\tilde{P}_{t+\tau}]=0$$（$$\tau\ge0$$）。

上段：$$\varphi(R_f-1)=R_f$$ なので $$\varphi\left[x_{t+\tau+1}-R_fx_{t+\tau}+(R_f-1)d_{t+\tau}\right]=\varphi x_{t+\tau+1}-R_f\varphi x_{t+\tau}+R_fd_{t+\tau}$$。式(27)を $$\tau+1$$ と $$\tau$$ に使うと、期待は漸近的に $$E_t[\tilde{P}_{t+\tau+1}+\tilde{d}_{t+\tau+1}-R_f(\tilde{P}_{t+\tau}+\tilde{d}_{t+\tau})+R_f\tilde{d}_{t+\tau}]=0$$ に等しく、上段が従う。

下段：式(2)より $$x_{t+\tau+1}-(R_f-1)y_{t+\tau}=y_{t+\tau+1}+d_{t+\tau+1}-R_fy_{t+\tau}$$。これは $$\left(P_{t+\tau+1}+d_{t+\tau+1}-R_fP_{t+\tau}\right)-\left(P_{t+\tau+1}-y_{t+\tau+1}\right)+R_f\left(P_{t+\tau}-y_{t+\tau}\right)$$ に等しく、第1項の期待は0、他の項の期待は式(26)により0に収束する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(13), 式(1) | 出発点 |
| T1, $$\omega,\gamma\lt1$$ | 収束 |

### A.8 P5（式(29)〜(35)）の導出（付録3・4）

**Step 1　式(11)から簿価の累積（T2）**

　$$y_{t+T}=\sum_{\tau=1}^{T}R_f^{T-\tau}x^a_{t+\tau}+R_f^{T}y_t-\sum_{\tau=1}^{T}R_f^{T-\tau}d_{t+\tau}$$。

**Step 2　両辺から $$y_t$$ を引き、$$\sum d_{t+\tau}$$ を足す**

左辺は式(2)の累積で $$y_{t+T}-y_t+\sum d_{t+\tau}=\sum_{\tau=1}^{T}x_{t+\tau}$$。右辺は $$\sum R_f^{T-\tau}x^a_{t+\tau}+(R_f^{T}-1)y_t-\sum(R_f^{T-\tau}-1)d_{t+\tau}$$。

**Step 3　整理して $$R_f^{T}-1$$ で割る**

　$$\dfrac{\sum x_{t+\tau}+\sum(R_f^{T-\tau}-1)d_{t+\tau}}{R_f^{T}-1}=y_t+\dfrac{R_f^{T}}{R_f^{T}-1}\sum_{\tau=1}^{T}R_f^{-\tau}x^a_{t+\tau}$$。$$E_t$$ をとると式(34)。

**Step 4　P5a**

　$$\varphi_T\to1$$ と式(6)より式(30)。

**Step 5　行列を対角化（T5）**

　$$D\equiv\begin{pmatrix}\omega&0\\0&\gamma\end{pmatrix}$$、$$Q^{-1}\equiv\begin{pmatrix}1&(\omega-\gamma)^{-1}\\0&1\end{pmatrix}$$ とおく。$$Q=\begin{pmatrix}1&-(\omega-\gamma)^{-1}\\0&1\end{pmatrix}$$ で、直接計算により $$QDQ^{-1}=\begin{pmatrix}\omega&1\\0&\gamma\end{pmatrix}$$。よって $$R_f^{-\tau}E_t[\tilde{x}^a_{t+\tau}]=(1,0)\,Q\,\mathrm{diag}\!\left((\omega/R_f)^{\tau},(\gamma/R_f)^{\tau}\right)Q^{-1}(x_t^a,v_t)^{\top}$$。

**Step 6　$$\tau=1,\dots,T$$ の和（T3）**

　$$a_T\equiv\sum_{\tau=1}^{T}(\omega/R_f)^{\tau}=\dfrac{\omega}{R_f-\omega}\left(1-(\omega/R_f)^{T}\right)$$、$$b_T\equiv\sum_{\tau=1}^{T}(\gamma/R_f)^{\tau}=\dfrac{\gamma}{R_f-\gamma}\left(1-(\gamma/R_f)^{T}\right)$$。

**Step 7　行列の積**

　$$(1,0)\,Q\begin{pmatrix}a_T&0\\0&b_T\end{pmatrix}Q^{-1}=\left(a_T,\ (\omega-\gamma)^{-1}(a_T-b_T)\right)$$。

**Step 8　係数**

　$$\alpha_1(T)=\varphi_Ta_T=\dfrac{\omega}{R_f-\omega}\cdot\dfrac{R_f^{T}-\omega^{T}}{R_f^{T}-1}$$、$$\alpha_2(T)=(\omega-\gamma)^{-1}\varphi_T(a_T-b_T)$$ → 式(32)(33)。

**Step 9　$$T\to\infty$$**

　$$\alpha_2(T)\to(\omega-\gamma)^{-1}\left(\dfrac{\omega}{R_f-\omega}-\dfrac{\gamma}{R_f-\gamma}\right)=\dfrac{R_f}{(R_f-\omega)(R_f-\gamma)}$$。

**Step 10　P5b**

式(34)を $$d_t$$ で偏微分：$$\partial y_t/\partial d_t=-1$$、期待異常利益は $$d_t$$ に依存しない（式(9)(10)とT4）ので $$\partial V_t^T/\partial d_t=-1$$。式(6)でも同様に $$\partial P_t/\partial d_t=-1$$。よって $$V_t^T-P_t$$ は配当に依存しない → 式(31)。

**Step 11　誤差（式(35)）**

式(1)より $$R_f^{T}P_t=\sum R_f^{T-\tau}E_t[\tilde{d}_{t+\tau}]+E_t[\tilde{P}_{t+T}]$$。Step 2 の左辺の関係を使うと $$V_t^T=\dfrac{E_t[\tilde{y}_{t+T}]-y_t+R_f^{T}P_t-E_t[\tilde{P}_{t+T}]}{R_f^{T}-1}$$。$$P_t-V_t^T$$ を計算すると式(35)。

**確認（式(36)）**　$$(\omega,\gamma)=(1,0)$$ では $$\alpha_1=\alpha_2=1/(R_f-1)$$ で、$$\alpha_1(T)=1/(R_f-1)$$、$$\alpha_2(T)=\alpha_1(T)$$ となり、すべての $$T$$ で $$\alpha_i(T)=\alpha_i$$。式(12)より $$E_t[\tilde{x}_{t+1}]/(R_f-1)=y_t+(x_t^a+v_t)/(R_f-1)=P_t$$。$$(0,1)$$ でも $$\alpha_1=0$$, $$\alpha_2=1/(R_f-1)$$ で同様。

| 入力・使う道具 | 内容 |
|---|---|
| 式(11), 式(2), 式(6), 式(9), 式(10) | 出発点 |
| T2, T3, T4, T5 | 累積、級数、偏微分、対角化 |

### A.9 P6（式(37)〜(39)）の導出

**Step 1　式(1)を $$T$$ 期で切る**

　$$P_t=\sum_{\tau=1}^{T}R_f^{-\tau}E_t[\tilde{d}_{t+\tau}]+R_f^{-T}E_t[\tilde{P}_{t+T}]$$。

**Step 2　$$W_t^T-P_t$$**

式(37)より $$W_t^T=R_f^{-T}E_t[\tilde{y}_{t+T}]+\sum R_f^{-\tau}E_t[\tilde{d}_{t+\tau}]$$ なので $$W_t^T-P_t=R_f^{-T}E_t[\tilde{y}_{t+T}-\tilde{P}_{t+T}]$$。

**Step 3　P6a**

式(13)より $$\tilde{y}_{t+T}-\tilde{P}_{t+T}=-\alpha_1\tilde{x}^a_{t+T}-\alpha_2\tilde{v}_{t+T}$$。期待は有界に減衰するので $$R_f^{-T}$$ を掛けて0 → 式(38)。

**Step 4　P6b**

　$$W_t^T-y_t$$ は $$(x_t^a,v_t)$$ の線形関数。式(3)より $$\partial W_t^T/\partial d_t=-1$$、誤差も配当政策に依存しない → 式(39)。

| 入力・使う道具 | 内容 |
|---|---|
| 式(1), 式(13), 式(3) | 出発点 |

### A.10 P7（式(40)）の導出

**Step 1　簿価が一定**

　$$x_{t+\tau}=d_{t+\tau}$$ なら式(2)より $$y_{t+\tau}=y_t$$（$$\tau\ge1$$）。

**Step 2　異常利益の期待は0に収束**

　$$E_t[\tilde{x}^a_{t+\tau}]\to0$$（$$\omega,\gamma\lt1$$）。

**Step 3　利益の期待**

　$$E_t[\tilde{x}_{t+\tau}]=E_t[\tilde{x}^a_{t+\tau}]+(R_f-1)\,y_{t+\tau-1}\to(R_f-1)\,y_t$$ → 式(40)。

**確認**　$$\omega=1$$ では $$E_t[\tilde{x}^a_{t+\tau}]\to x_t^a+(1-\gamma)^{-1}v_t$$（$$\gamma\lt1$$）となり、一般に0にならないので P7 は成り立たない（脚注14）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(2), 式(9), 式(10) | 出発点 |

### A.11 命題（式(42)）の導出（付録5）

**Step 1　$$v_t\equiv0$$ とおく**

条件(iii)により $$v_t$$ の有無は結論に影響しない。

**Step 2　P2 の左辺を式(41)で展開**

　$$E_t[\tilde{x}_{t+2}+\tilde{x}_{t+1}+\tilde{d}_{t+1}(R_f-1)]=E_t\left[(1+\theta_1)\tilde{x}_{t+1}+\theta_2\tilde{y}_{t+1}+(\theta_3+R_f-1)\tilde{d}_{t+1}\right]$$。

**Step 3　$$y_{t+1}$$ と $$x_{t+1}$$ を消す**

　$$y_{t+1}=y_t+x_{t+1}-d_{t+1}$$ と $$E_t[\tilde{x}_{t+1}]=\theta_1x_t+\theta_2y_t+\theta_3d_t$$ を使うと

　$$=(1+\theta_1+\theta_2)(\theta_1x_t+\theta_2y_t+\theta_3d_t)+\theta_2y_t+(\theta_3-\theta_2+R_f-1)E_t[\tilde{d}_{t+1}]$$。

**Step 4　$$d_t$$ で偏微分**

式(3)より

　$$-(1+\theta_1+\theta_2)(\theta_2-\theta_3)-\theta_2+(\theta_3-\theta_2+R_f-1)\dfrac{\partial E_t[\tilde{d}_{t+1}]}{\partial d_t}=-(R_f^2-1)$$。

**Step 5　配当政策は任意**

　$$\partial E_t[\tilde{d}_{t+1}]/\partial d_t$$ は任意（ランダムでもよい）なので、その係数はゼロ：$$-\theta_2+\theta_3=-(R_f-1)$$（これはP1）。

**Step 6　$$\theta_2$$ を解く**

　$$\theta_2-\theta_3=R_f-1$$ を入れると $$(1+\theta_1+\theta_2)(R_f-1)+\theta_2=R_f^2-1$$ → $$\theta_2=(R_f-1)(1-\theta_1/R_f)$$。

**Step 7　$$\omega\equiv\theta_1/R_f$$ と定義**

　$$\theta_1=\omega R_f$$、$$\theta_2=(R_f-1)(1-\omega)$$、$$\theta_3=\theta_2-(R_f-1)=-(R_f-1)\omega$$。

**Step 8　$$x^a$$ の形へ**

　$$E_t[\tilde{x}_{t+1}]=\omega R_fx_t+(R_f-1)(1-\omega)y_t-\omega(R_f-1)d_t+v_t$$（式(22)）。$$-(R_f-1)y_t$$ を引き、$$d_t=y_{t-1}+x_t-y_t$$ を使うと $$E_t[\tilde{x}^a_{t+1}]=\omega\left[x_t-(R_f-1)y_{t-1}\right]+v_t=\omega x_t^a+v_t$$ → 式(42)。

**確認**　$$\omega=1$$ なら $$\theta_2=0$$（簿価に依存しない）、$$\omega=0$$ なら $$\theta_1=\theta_3=0$$（簿価だけ）で、1.6の2つの特殊ケースに一致。

| 入力・使う道具 | 内容 |
|---|---|
| 式(41), 式(2), 式(3), 式(24) | 出発点 |
| T1, T4 | 期待の反復、偏微分 |

### A.12 著者について

**ジェームズ・A・オールソン（James A. Ohlson）**
- **アカデミックな経歴**: 1943年スウェーデン・ストックホルム生まれ。ストックホルム大学で学んだ後、カリフォルニア大学バークレー校でMBA（1968年）とPh.D.（経営学、1970年代初頭。資料により1971年または1972年）を取得。スタンフォード大学、バークレー校（L. H. Penney Professor of Accounting）、コロンビア大学（George O. May Professor of Accounting、1987〜1998年）、ニューヨーク大学スターン経営大学院（Leonard N. Stern Professor of Business、1998〜2004年と2008年以降）、アリゾナ州立大学（W. P. Carey Chair、2004〜2008年）で教鞭をとり、2013年から香港理工大学の講座教授。長江商学院（CKGSB）の客員・兼任教授も務めた。1996年にストックホルム経済大学から名誉博士号。
- **主要な研究分野**: 会計データと株式評価（残余利益評価モデル、クリーンサープラス関係）、財務会計理論、財務諸表分析。
- **評判・学術的貢献**: 米国会計学会（AAA）の Notable Contributions to Accounting Literature Award（1995年、2000年）と Seminal Contributions to Accounting Literature Award（2013年）を受賞。2015年にAccounting Hall of Fame入り（93人目）。60本以上の論文を *The Accounting Review*, *Journal of Accounting Research*, *Review of Accounting Studies*, *Contemporary Accounting Research* などに発表。破産予測モデル（Ohlson O-score、1980年）でも知られる。

---

**© 1995 CAAA**. 原論文 *Contemporary Accounting Research*, Vol. 11, No. 2 (Spring 1995), pp. 661–687 の著作権は著者・出版社に帰属します。本記事は原論文の数理モデルを整理したものです。
{% endraw %}
