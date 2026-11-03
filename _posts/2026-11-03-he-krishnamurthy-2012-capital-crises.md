---
layout: post
title: "He and Krishnamurthy (2012) \"A Model of Capital and Crises\"、Review of Economic Studies: 数理モデル"
date: 2026-11-03 00:00:00 +0900
categories: [金融経済学, 仲介者資産価格理論]
math: true
---

{% raw %}
# He and Krishnamurthy (2012) "A Model of Capital and Crises"、Review of Economic Studies: 数理モデル
### 限定参加＋モラルハザード＝仲介者の資本制約：連続時間・対数効用の閉形式均衡

---

## この記事について

本記事で扱うのは、Zhiguo He と Arvind Krishnamurthy の論文 "A Model of Capital and Crises"（Review of Economic Studies, 2012, 79(2), 735–777）です。この論文は、**金融仲介者（ヘッジファンドのような専門投資家）の資本**が資産価格を決める、という見方を動学的一般均衡モデルとして定式化したものです。家計はリスク資産に直接投資できず、専門家（specialist）に運用を委ねます。しかし専門家にはモラルハザードがあるため、最適契約の下で家計が得られるリスク・エクスポージャーには上限（専門家の保有量の $m$ 倍）が付きます。専門家の資本が減ると、この上限が効いて、リスクプレミアム・シャープレシオ・ボラティリティ・資産間相関が上がり、無リスク金利が下がります。これは金融危機で観察されるパターンです。

**本記事は、この論文の背景にある数理モデルだけを整理した早見表です。** 論文の叙述（先行研究との比較、実証的背景、図の解釈など）は最小限にとどめ、前提・式・導出を中心にまとめます。論文の数理モデルは簡易化せず、そのまま取り上げます。

- 元資料：NBER Working Paper No. 14366（2008年9月、2010年7月改訂版）。記事化の際の式はこの版に基づきます。刊行版（RES 2012）と細部が異なる可能性があります。
- 原文の式番号は引き継がず、本記事内で (1) から通し番号を振り直しています。
- 原文の印刷上の誤りと思われる箇所は、本文の補足で「読み替えた」と明示しています（命題3の手数料の符号、式(50)のオイラー方程式の符号など）。

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

**主体・時間・情報構造**

無限期間・連続時間の交換経済（Lucas 1978型）。消費財は1種類で非貯蔵、これをニュメレールとする。資産は2つ：供給ゼロの無リスク債券と、供給1単位のリスク資産。主体は家計と専門家（specialist）の2クラスで、各クラスの測度は1に正規化する。情報は標準ブラウン運動 $\{Z_t\}$ が生成するフィルトレーション $\{\mathcal{F}_t\}$。リスク資産の価格 $P_t$ と金利 $r_t$ は均衡で決まる漸進可測過程。

**A1 限定参加**

家計はリスク資産に直接投資できず、債券にのみ直接投資できる（情報上の取引費用を想定）。専門家は債券とリスク資産の両方を取引でき、家計の資金を仲介してリスク資産に投資する。外すと、仲介の役割そのものがなくなる。

**A2 短期の仲介関係**

仲介関係は $t$ から $t+dt$ までの短期で、$t+dt$ で解消される。1期間の主人・代理人問題（Holmstrom and Tirole 1997型）の $\Delta t \to dt$ の極限として解釈する。長期の動学的契約は扱わない。

**A3 二重のモラルハザード**

専門家は (i) 観察できない努力 $s_t\in\{0,1\}$（$0$=働く、$1$=怠ける）と、(ii) 観察できないポートフォリオ選択 $\mathcal{E}^I_t$ を決める。怠けると仲介者の収益が $X_t\,dt$ 減る一方、専門家は私的便益 $B_t\,dt$ を得る（$X_t\gt B_t\gt 0$）。$X_t$ は十分大きく、常に「働く」を実装するのが最適であるとする（十分条件は原文の付録A.2）。結論に効くのは (i) であり、(ii) が観察可能でも結果は実質的に同じ（原文の付録A.9）。

**A4 契約空間**

契約はアフィン（線形分配＋固定手数料）に限る。専門家の報酬は自分の成果のみに依存し、ベンチマーク契約は認めない。ベンチマークを許すとモラルハザードを無費用で解消できてしまう。非線形契約（オプション型）も扱わない。

**A5 専門家の私的取引制約**

専門家の仲介者外の資産は債券（利子率 $r_t$）のみで、リスク資産を個人口座で空売りできない。

**A6 競争的仲介市場**

家計が契約 $(\beta_t, K_t)$ を提示し、専門家が受諾か拒否（自己運用）を選ぶ。家計は任意の連合を組める。均衡の条件（コアに相当する連合の非存在）は定義1で与える。専門家は、契約の下でワルラス的な株式・債券市場で取引する。

**A7 割引率と成長**

$\rho\gt 0$（専門家）、$\rho^h\gt 0$（家計）で、**$\rho^h\gt\rho$** を仮定する。流動性価値（清算価値）の低さを表すための設定である。

**正則条件**

$$
g\gt 0,\quad \sigma\gt 0,\quad \frac{B_t}{X_t}\equiv\frac{1}{1+m}\lt 1\ \ (m\gt 0\ \text{は定数}),\quad \rho^h\gt\rho\gt 0
\tag{R}
$$

状態変数は $(W_t, D_t)$。対数効用と幾何ブラウン運動の配当により、規模不変性が成り立ち、スケール済みの専門家資産 $w_t\equiv W_t/D_t$ だけが本質的な状態になる。

### 1.1 資産と選好

**配当過程**

$$
\frac{dD_t}{D_t}=\underbrace{g}_{\text{成長率}}\,dt+\underbrace{\sigma}_{\text{配当ボラ}}\,dZ_t\quad(D_0\ \text{所与})
\tag{1}
$$

**リスク資産の総収益**

$$
dR_t=\frac{D_t\,dt+dP_t}{P_t}=\underbrace{\mu_{R,t}}_{\text{期待収益率}}\,dt+\underbrace{\sigma_{R,t}}_{\text{収益ボラ}}\,dZ_t
\tag{2}
$$

**リスクプレミアム**

$$
\pi_{R,t}\equiv\underbrace{\mu_{R,t}}_{\text{期待収益率}}-\underbrace{r_t}_{\text{無リスク金利}}
\tag{3}
$$

**専門家の効用**

$$
E\!\left[\int_0^{\infty}e^{-\rho t}\ln c_t\,dt\right]
\tag{4}
$$

**家計の効用**

$$
E\!\left[\int_0^{\infty}e^{-\rho^h t}\ln c^h_t\,dt\right]
\tag{5}
$$

> $\rho$ と $\rho^h$ が異なってよい点は、経済の境界条件（$W_t\to 0$ と $W^h_t\to 0$ の極限）を指定するための自由度である。

| 記号・項目 | 意味 |
|---|---|
| $D_t$, $g$, $\sigma$ | 配当、その成長率、ボラティリティ |
| $P_t$, $r_t$ | リスク資産価格、無リスク金利（内生） |
| $\mu_{R,t}$, $\sigma_{R,t}$, $\pi_{R,t}$ | リスク資産の期待収益率、ボラティリティ、リスクプレミアム |
| $c_t$, $c^h_t$ | 専門家・家計の消費率 |
| $\rho$, $\rho^h$ | 専門家・家計の時間割引率 |

### 1.2 仲介の構造と予算制約

**仲介者の総収益**

$$
T^I_t\,\widetilde{dR}_t(s_t,\mathcal{E}^I_t)=\underbrace{\mathcal{E}^I_t\,(dR_t-r_t\,dt)}_{\text{超過収益}}+\underbrace{T^I_t\,r_t\,dt}_{\text{債券収益}}-\underbrace{X_t\,s_t\,dt}_{\text{怠けの損失}}
\tag{6}
$$

**契約と動学的予算制約（一般の $s_t$）**

専門家が拠出する額を $T_t\in[0,W_t]$、家計の拠出を $T^h_t\in[0,W^h_t]$、仲介者の総資本を $T^I_t=T_t+T^h_t$ とする。専門家への分配率を $\beta_t\in[0,1]$、固定手数料を $\hat K_t\,dt$ とする。契約は $\Pi_t=(T_t,T^h_t,\beta_t,\hat K_t)$。

$$
\begin{cases}
dW_t=\beta_t\,T^I_t\,\widetilde{dR}_t(\mathcal{E}^I_t,s_t)+(W_t-T_t)\,r_t\,dt+\hat K_t\,dt-c_t\,dt+\underbrace{B_t\,s_t\,dt}_{\text{私的便益}}\\[4pt]
dW^h_t=(1-\beta_t)\,T^I_t\,\widetilde{dR}_t(\mathcal{E}^I_t,s_t)+(W^h_t-T^h_t)\,r_t\,dt-\hat K_t\,dt-c^h_t\,dt
\end{cases}
\tag{7}
$$

**$s_t=0$（働く）の予算制約**

$$
\begin{cases}
dW_t=\beta_t\,\mathcal{E}^I_t\,(dR_t-r_t\,dt)+(\beta_t T^I_t+W_t-T_t)\,r_t\,dt+\hat K_t\,dt-c_t\,dt\\[4pt]
dW^h_t=(1-\beta_t)\,\mathcal{E}^I_t\,(dR_t-r_t\,dt)+\big((1-\beta_t)T^I_t+W^h_t-T^h_t\big)\,r_t\,dt-\hat K_t\,dt-c^h_t\,dt
\end{cases}
\tag{8}
$$

**固定移転の再定義**

$$
K_t\equiv\underbrace{(\beta_t T^I_t-T_t)\,r_t}_{\text{拠出の利子差}}+\underbrace{\hat K_t}_{\text{手数料}}
\tag{9}
$$

**簡約形の予算制約**

$$
\begin{cases}
dW_t=\underbrace{\beta_t\,\mathcal{E}^I_t}_{\text{専門家の露出}}(dR_t-r_t\,dt)+\underbrace{K_t\,dt}_{\text{家計から受取}}+W_t\,r_t\,dt-c_t\,dt\\[4pt]
dW^h_t=\underbrace{(1-\beta_t)\,\mathcal{E}^I_t}_{\text{家計の露出}}(dR_t-r_t\,dt)-K_t\,dt+W^h_t\,r_t\,dt-c^h_t\,dt
\end{cases}
\tag{10}
$$

> 一般性を失わずに、契約は $\Pi_t=(\beta_t,K_t)$ の組だけで表せる。$K_t$ は家計から専門家への移転であり、第1.5節で仲介サービスの価格として解釈される。

| 記号・項目 | 意味 |
|---|---|
| $W_t$, $W^h_t$ | 専門家・家計の資産 |
| $T_t$, $T^h_t$, $T^I_t$ | 専門家・家計の拠出額、仲介者の総資本 |
| $\mathcal{E}^I_t$ | 仲介者のリスク資産へのドル建てエクスポージャー（観察不可） |
| $s_t$, $X_t$, $B_t$ | 努力選択（0=働く、1=怠ける）、怠けによる収益減、私的便益 |
| $\beta_t$, $\hat K_t$, $K_t$ | 専門家の分配率、固定手数料、再定義した固定移転 |
| $m$ | $B_t/X_t=1/(1+m)$ で定まる仲介乗数（エージェンシー問題の逆指標） |

### 1.3 消費・ポートフォリオ問題

均衡価格を所与とし、手数料の構造について推測を置いてから、第1.5節で検証する（guess and verify）。

**家計・専門家が認識する手数料**

$$
K_t=\underbrace{k_t}_{\text{単位露出の価格}}\,\mathcal{E}^h_t
\tag{11}
$$

$$
K_t=\underbrace{q_t}_{\text{単位資産の手数料}}\,W_t
\tag{12}
$$

> 家計は、露出を2倍買えば手数料も2倍払うと理解する（式(11)）。専門家は、資産が2倍なら手数料も2倍もらえると理解する（式(12)）。

**専門家の問題**（$\mathcal{E}_t\equiv\beta_t\mathcal{E}^I_t$）

$$
\max_{\{c_t,\mathcal{E}_t\}}E\!\left[\int_0^{\infty}e^{-\rho t}\ln c_t\,dt\right]\quad\text{s.t.}\quad dW_t=\mathcal{E}_t\,(dR_t-r_t\,dt)+q_t W_t\,dt+W_t r_t\,dt-c_t\,dt
\tag{13}
$$

**家計の問題**（$\mathcal{E}^h_t\equiv(1-\beta_t)\mathcal{E}^I_t$）

$$
\max_{\{c^h_t,\mathcal{E}^h_t\}}E\!\left[\int_0^{\infty}e^{-\rho^h t}\ln c^h_t\,dt\right]\quad\text{s.t.}\quad dW^h_t=\mathcal{E}^h_t\,(dR_t-r_t\,dt)-k_t\mathcal{E}^h_t\,dt+W^h_t r_t\,dt-c^h_t\,dt
\tag{14}
$$

**補題1（最適消費・最適露出）** 価値関数は $J(W_t)=Y_t+\frac{1}{\rho}\ln W_t$、$J^h(W^h_t)=Y^h_t+\frac{1}{\rho^h}\ln W^h_t$ の形になる。

$$
c^{\ast}_t=\underbrace{\rho}_{\text{割引率}}\,W_t
\tag{15}
$$

$$
\mathcal{E}^{\ast}_t=\underbrace{\frac{\pi_{R,t}}{\sigma_{R,t}^2}}_{\text{リスク1単位あたり}}\,W_t
\tag{16}
$$

$$
c^{h\ast}_t=\rho^h\,W^h_t
\tag{17}
$$

$$
\mathcal{E}^{h\ast}_t=\underbrace{\frac{\pi_{R,t}-k_t}{\sigma_{R,t}^2}}_{\text{手数料後の超過収益}}\,W^h_t
\tag{18}
$$

> 専門家の最適政策は、超過収益 $\pi_{R,t}$・ボラティリティ $\sigma_{R,t}$ に直面する対数投資家のものと同じで、手数料 $q_t$ に影響されない（手数料が自分の資産に比例し、収益過程への加算になるため）。家計の場合、手数料は露出1単位あたり $k_t$ だけ超過収益を引き下げる。需要 $\mathcal{E}^{h\ast}_t$ は $k_t$ の減少関数。

| 記号・項目 | 意味 |
|---|---|
| $k_t$ | 家計が買う単位露出あたりの価格（手数料） |
| $q_t$ | 専門家の単位資産あたりの手数料収入 |
| $\mathcal{E}_t$, $\mathcal{E}^h_t$ | 専門家・家計の（実効）リスクエクスポージャー |
| $\mathcal{E}^{\ast}_t$, $\mathcal{E}^{h\ast}_t$ | 最適エクスポージャー |
| $J$, $J^h$, $Y_t$, $Y^h_t$ | 価値関数と、価格・集計状態の関数である定数項 |

### 1.4 インセンティブ両立性と家計の最大エクスポージャー

**補題2：努力のインセンティブ**

「働く」を実装する条件は、怠けの価値が働く価値を上回らないこと：

$$
J'(W_t)\,\underbrace{(B_t-\beta_t X_t)}_{\text{怠けの純便益}}\le 0\ \ \Longleftrightarrow\ \ \beta_t\ge\frac{B_t}{X_t}
\tag{19}
$$

$$
\beta_t\ \ge\ \underbrace{\frac{1}{1+m}}_{\text{専門家の最低持分}}
\tag{20}
$$

> 専門家が十分な「自己の持分（skin in the game）」を持つ必要がある。式(20)をインセンティブ両立性（IC）制約と呼ぶ。

**補題3：ポートフォリオの打ち消し（undoing）**

均衡で提示される任意の契約 $\Pi_t=(\beta_t,K_t)$ の下で、専門家は仲介者の持ち高を調整して

$$
\beta_t\,\mathcal{E}^I_t=\mathcal{E}^{\ast}_t
\tag{21}
$$

とする。$\mathcal{E}^{\ast}_t$ は式(16)で、契約 $\Pi_t$ に依存しない。

**家計の露出**

$$
\mathcal{E}^h_t=(1-\beta_t)\,\mathcal{E}^I_t=\frac{1-\beta_t}{\beta_t}\,\mathcal{E}^{\ast}_t
\tag{22}
$$

**最大エクスポージャー**（$\beta_t$ を IC の下限 $1/(1+m)$ に置く）

$$
\frac{1-\frac{1}{1+m}}{\frac{1}{1+m}}\,\mathcal{E}^{\ast}_t=m\,\mathcal{E}^{\ast}_t
\tag{23}
$$

$$
\boxed{\ \mathcal{E}^h_t\ \le\ m\,\mathcal{E}^{\ast}_t\ }
\tag{24}
$$

> 式(24)がモデルの核（資産価格の含意を駆動する制約）：家計は「部外者」として、専門家（内部者）の最適露出の高々 $m$ 倍までしかリスクを取れない。$1/m$ がエージェンシー問題の深刻さの指標。$\mathcal{E}^h_t+\mathcal{E}^{\ast}_t$ は経済全体のリスクなので、リスク分担制約でもある。

| 記号・項目 | 意味 |
|---|---|
| $J'(W_t)$ | 専門家の価値関数の資産に関する微分（$\gt 0$） |
| $\beta_t$ | 専門家の分配率（持分）。下限が $1/(1+m)$ |
| $m$ | 仲介乗数。専門家の資本1に対し、調達できる家計資本の上限 |

### 1.5 均衡仲介契約

**定義1（契約均衡）** 時点 $t$ で、家計が $(\beta_t,K_t)$ を提示し専門家が受諾か拒否を選ぶ。均衡は次の2条件を満たす：(1) $\beta_t$ は式(20)の意味でICを満たす。(2) 家計をより良くし、専門家を悪くしない別契約を作る連合が存在しない。

**補題4（対称性）** 開始時点で専門家（家計）が対称ならば、均衡も対称：全専門家が同じ手数料 $K_t$ を受け取り、全家計が同じ露出 $\mathcal{E}^h_t$ を得て同じ総額 $K_t$ を払う。

**補題5（価格受容）** 対称均衡で $k_t\equiv K_t/\mathcal{E}^h_t$ と定義する。

$$
k_t\equiv\frac{K_t}{\mathcal{E}^h_t}
\tag{25}
$$

競争的仲介市場で家計は価格受容者で、露出 $\mathcal{E}^h_t$ を得るには $K_t=k_t\mathcal{E}^h_t$ を払う。これは式(14)で仮定した手数料構造を検証する。

**最大露出供給**（式(16)と式(24)）

$$
m\,\mathcal{E}^{\ast}_t=\underbrace{m}_{\text{仲介乗数}}\,\underbrace{\frac{\pi_{R,t}}{\sigma_{R,t}^2}}_{\text{リスク1単位あたり}}\,W_t
\tag{26}
$$

> 供給は $k_t$ に依存せず、専門家の資産 $W_t$ に比例して増える。均衡の $k_t$ は需要と供給を一致させる。専門家には自己運用という外部選択肢があるので $k_t\ge 0$。

**命題1（2つの均衡）** 任意の時点で経済は次のどちらかにある。

$$
\begin{cases}
\text{制約なし：}&\mathcal{E}^{h\ast}_t(k_t=0)\le m\,\mathcal{E}^{\ast}_t\ \Rightarrow\ k_t=0,\ \ \beta_t\gt\dfrac{1}{1+m}\ (\text{IC は緩い})\\[8pt]
\text{制約あり：}&\text{それ以外}\ \Rightarrow\ \exists\,k_t\gt 0:\ \mathcal{E}^{h\ast}_t(k_t)=m\,\mathcal{E}^{\ast}_t,\ \ \beta_t=\dfrac{1}{1+m}\ (\text{IC は拘束})
\end{cases}
\tag{27}
$$

**補題6（専門家から見た手数料）** 単位資産あたりの手数料を

$$
q_t\equiv
\begin{cases}
0 & \text{制約なし領域}\\[4pt]
\underbrace{\dfrac{m\,\pi_{R,t}}{\sigma_{R,t}^2}}_{\text{最大露出供給の係数}}\,k_t & \text{制約あり領域}
\end{cases}
\tag{28}
$$

と定義すると、専門家が受け取る手数料は資産に線形で $K_t=q_t W_t$。

> 制約あり領域の $k_t\gt 0$ は専門家資本の希少性（シャドウプライス）を表す。仲介者の資本が少ないほど手数料が高い。

| 記号・項目 | 意味 |
|---|---|
| $k_t$ | 単位露出価格（式(25)） |
| $q_t$ | 単位資産あたりの手数料収入（式(28)） |
| $\mathcal{E}^{h\ast}_t(k)$ | 手数料 $k$ の下での家計の最適露出（式(18)） |
| $m\mathcal{E}^{\ast}_t$ | 家計への最大露出供給 |

### 1.6 株式による実装と均衡の定義

**定義2（株式実装）** (1) 専門家は全資産 $W_t$ を仲介者に拠出し、家計は $T^h_t\le W^h_t$ を拠出する。(2) 専門家の持分は $W_t/(W_t+T^h_t)$、家計の持分は $T^h_t/(W_t+T^h_t)$。(3) 拠出は**株式資本制約**を満たす：

$$
T^h_t\ \le\ \underbrace{m}_{\text{仲介乗数}}\,W_t
\tag{29}
$$

(4) 家計は拠出1ドルあたり手数料 $f_t$ を払い、総移転は

$$
K_t=f_t\,T^h_t
\tag{30}
$$

> 式(29)は、家計の持分が高々 $m/(1+m)$ であること（外部者の最大持分）を意味する。

**系1：手数料の関係**

$$
f_t=\frac{q_t}{m}=
\begin{cases}
0 & \text{制約なし}\\[4pt]
\dfrac{\pi_{R,t}}{\sigma_{R,t}^2}\,k_t & \text{制約あり}
\end{cases}
\tag{31}
$$

$$
K_t=f_t\,T^h_t=q_t\,W_t=m\,f_t\,W_t
\tag{32}
$$

> 専門家から見ると、自分の資産1単位あたり $m f_t$ の手数料を得る。

**株式実装での専門家の問題**（$\alpha_t$：リスク資産への投資比率）

$$
\max_{\{c_t,\alpha_t\}}E\!\left[\int_0^{\infty}e^{-\rho t}\ln c_t\,dt\right]\ \ \text{s.t.}\ \ dW_t=-c_t\,dt+W_t\,\widetilde{dR}_t(\alpha_t)+\underbrace{m f_t W_t\,dt}_{\text{手数料収入}}
\tag{33}
$$

$$
\widetilde{dR}_t(\alpha_t)=\alpha_t\,(dR_t-r_t\,dt)+r_t\,dt
\tag{34}
$$

**株式実装での家計の問題**

$$
\widetilde{dR}^{\,h}_t=\Big(1-\frac{T^h_t}{W^h_t}\Big)r_t\,dt+\frac{T^h_t}{W^h_t}\Big(\widetilde{dR}_t(\alpha_t)-f_t\,dt\Big)
\tag{35}
$$

$$
\max_{\{c^h_t,T^h_t\}}E\!\left[\int_0^{\infty}e^{-\rho^h t}\ln c^h_t\,dt\right]\ \ \text{s.t.}\ \ dW^h_t=-c^h_t\,dt+W^h_t\,\widetilde{dR}^{\,h}_t
\tag{36}
$$

**定義3（株式実装での均衡）** 価格過程 $\{P_t\},\{r_t\},\{f_t\}$ と意思決定 $\{T^h_t,c_t,c^h_t,\alpha_t\}$ の組で、(1) 式(33)と式(36)を解き、(2) 系1と命題3の均衡条件を満たし、(3) 株式市場が清算し、(4) 財市場が清算するもの：

$$
\alpha_t\,(W_t+T^h_t)=P_t
\tag{37}
$$

$$
c_t+c^h_t=D_t
\tag{38}
$$

> 債券市場はワルラス法則により清算する。リスク資産を直接保有するのは仲介者のみ。

**命題2（同値性）** 株式実装での主体のポートフォリオ決定は、元の経済でのものと同じで、資産価格均衡も同じ。

**命題3（資本制約の2領域）**

$$
\begin{cases}
mW_t\ge W^h_t: & \text{制約なし。}\ T^h_t=W^h_t,\ \ f_t=0\\[4pt]
mW_t\lt W^h_t: & \text{制約あり。}\ T^h_t=mW_t,\ \ f_t\gt 0
\end{cases}
\tag{39}
$$

> 制約なし領域では、家計は全資産を仲介者に預け、両者が同じポートフォリオ（リスク資産100%）を持つ。リスク分担は資産比率 $W_t:W^h_t$ に比例し、摩擦のない異質主体経済の第一最善を達成する。制約あり領域では、リスク分担 $\mathcal{E}^{\ast}_t:\mathcal{E}^{h\ast}_t=1:m$ が資産比率より資産の少ない専門家に偏る。
>
> 【読み替え】原文の命題3(2)は「制約あり」の場合にも $f_t=0$ と印刷されているが、系1(2)・式(31)・命題9と整合しないため、$f_t\gt 0$ と読み替えた。

| 記号・項目 | 意味 |
|---|---|
| $\alpha_t$ | 仲介者（＝専門家の自己資産）のリスク資産への投資比率 |
| $f_t$ | 家計が仲介者への拠出1ドルあたり払う手数料 |
| $T^h_t$ | 家計の仲介者への拠出（＝委託資金） |
| $\widetilde{dR}_t(\alpha_t)$ | 仲介者の収益（式(34)） |
| $\widetilde{dR}^{\,h}_t$ | 家計の資産収益（式(35)） |

### 1.7 リスク資産価格と資本制約の境界

財市場清算 $c_t+c^h_t=D_t$ と、債券が供給ゼロであることから $W_t+W^h_t=P_t$ が成り立つ。これに最適消費則（式(15)、式(17)）を使う。

**リスク資産価格（閉形式）**

$$
P_t=\underbrace{\frac{D_t}{\rho^h}}_{\text{家計のみの価格}}+\underbrace{\Big(1-\frac{\rho}{\rho^h}\Big)W_t}_{\text{専門家資産の寄与}}
\tag{40}
$$

**資本制約が効き始める境界**（$mW_t=W^h_t=P_t-W_t$ となるスケール済み資産 $w_t\equiv W_t/D_t$）

$$
w^c=\underbrace{\frac{1}{m\rho^h+\rho}}_{\text{境界}}
\tag{41}
$$

**命題4（価格・配当比率）**

$$
\frac{P_t}{D_t}=\underbrace{\frac{1}{\rho^h}}_{\text{下限（}w=0\text{）}}+\underbrace{\Big(1-\frac{\rho}{\rho^h}\Big)w_t}_{\text{専門家資産の寄与}}
\tag{42}
$$

$w_t\ge w^c$ なら制約なし、$w_t\lt w^c$ なら制約あり。

**命題5（専門家の投資比率）** 制約なし領域では $\alpha_t=1$。制約あり領域では、仲介者の総資本が $W_t+mW_t$ で、リスク資産市場の清算 $\alpha_t(1+m)W_t=P_t$ から

$$
\alpha_t=
\begin{cases}
1 & w_t\ge w^c\\[6pt]
\underbrace{\dfrac{P_t}{W_t+mW_t}}_{\text{市場清算}}=\dfrac{1+(\rho^h-\rho)\,w_t}{(1+m)\,\rho^h\,w_t} & w_t\lt w^c
\end{cases}
\tag{43}
$$

> 制約あり領域では $\alpha_t\gt 1$（レバレッジ）で、$w_t$ が小さいほど大きい。$\rho^h\gt\rho$ により資産価格は $W_t$ の増加関数で、$W_t\to 0$ で $P_t\to D_t/\rho^h$（家計だけの経済の価格＝清算価値）、$W^h_t\to 0$ で $P_t\to D_t/\rho$。

| 記号・項目 | 意味 |
|---|---|
| $w_t$ | スケール済み専門家資産 $W_t/D_t$（唯一の本質的状態変数） |
| $w^c$ | 資本制約が拘束し始める閾値 |
| $\alpha_t$ | 仲介者のリスク資産への投資比率 |

### 1.8 ボラティリティ

専門家の資産の均衡動学を

$$
\frac{dW_t}{W_t}=\mu_{W,t}\,dt+\sigma_{W,t}\,dZ_t
\tag{44}
$$

と書く。式(33)の拡散項と比較して

$$
\sigma_{W,t}=\underbrace{\alpha_t}_{\text{投資比率}}\,\underbrace{\sigma_{R,t}}_{\text{資産ボラ}}
\tag{45}
$$

式(40)の拡散項から

$$
\sigma_{R,t}=\frac{1}{P_t}\Big(\underbrace{\sigma\frac{D_t}{\rho^h}}_{\text{配当由来}}+\underbrace{\Big(1-\frac{\rho}{\rho^h}\Big)W_t\,\sigma_{W,t}}_{\text{専門家資産由来}}\Big)
\tag{46}
$$

式(45)と式(46)を連立して

$$
\sigma_{W,t}=\frac{\sigma}{\dfrac{\rho^h}{\alpha_t}\dfrac{P_t}{D_t}-(\rho^h-\rho)\,w_t}
\tag{47}
$$

**命題6（専門家資産のボラティリティ）**

$$
\sigma_{W,t}=
\begin{cases}
\sigma & w_t\ge w^c\\[6pt]
\dfrac{\sigma}{w_t\,(m\rho^h+\rho)} & w_t\lt w^c
\end{cases}
\tag{48}
$$

**命題7（リスク資産のボラティリティ）** $\sigma_{R,t}=\sigma_{W,t}/\alpha_t$ より

$$
\sigma_{R,t}=
\begin{cases}
\sigma & w_t\ge w^c\\[6pt]
\sigma\Big(\dfrac{(1+m)\rho^h}{m\rho^h+\rho}\Big)\Big(\dfrac{1}{1+(\rho^h-\rho)\,w_t}\Big) & w_t\lt w^c
\end{cases}
\tag{49}
$$

> 制約あり領域では、$w_t\sigma_{W,t}$ が定数になる。$w_t$ が下がると $P_t/D_t$ が下がり、$\sigma_{R,t}$ が上がる（安値売り＝ファイアセールの割引と整合）。$w^c$ で $\sigma_{R,t}=\sigma$ に連続的につながる。

| 記号・項目 | 意味 |
|---|---|
| $\mu_{W,t}$, $\sigma_{W,t}$ | 専門家資産のドリフトとボラティリティ（均衡で決まる） |
| $\sigma_{R,t}$ | リスク資産収益のボラティリティ |

### 1.9 リスクプレミアム

専門家は仲介者への投資を決める限界的な投資家なので、価格は専門家のオイラー方程式で決まる。

**専門家のオイラー方程式**

$$
\underbrace{m f_t\,dt}_{\text{手数料の効果}}-\rho\,dt-E_t\!\Big[\frac{dc^{\ast}_t}{c^{\ast}_t}\Big]+\mathrm{Var}_t\!\Big[\frac{dc^{\ast}_t}{c^{\ast}_t}\Big]+E_t[dR_t]=\mathrm{Cov}_t\!\Big[\frac{dc^{\ast}_t}{c^{\ast}_t},\,dR_t\Big]
\tag{50}
$$

**CAPM型の関係**（$c^{\ast}_t=\rho W_t$ より $dc^{\ast}_t/c^{\ast}_t=dW_t/W_t$）

$$
\pi_{R,t}\,dt=E_t[dR_t-r_t\,dt]=\underbrace{\sigma_{R,t}\,\sigma_{W,t}}_{\text{収益と富の共分散}}\,dt
\tag{51}
$$

**命題8（リスクプレミアム）**

$$
\pi_{R,t}=
\begin{cases}
\sigma^2 & w_t\ge w^c\\[6pt]
\dfrac{\sigma^2}{w_t\,(m\rho^h+\rho)}\Big(\dfrac{(1+m)\rho^h}{m\rho^h+\rho}\Big)\Big(\dfrac{1}{1+(\rho^h-\rho)\,w_t}\Big) & w_t\lt w^c
\end{cases}
\tag{52}
$$

> 式(50)は、通常のオイラー方程式に手数料項 $m f_t\,dt$ が加わった形である。専門家が今日の消費を $\delta$ 減らして仲介者に投資すると、翌日の収益に加え、家計の追加投資を呼び込み手数料 $q_t\delta=m f_t\delta$ をすぐに得られる（補題6・注記）。制約なし領域では $f_t=0$ で通常の式に一致する。
>
> 【読み替え】原文の式(27)は、印刷上 $E_t[dc^{\ast}_t/c^{\ast}_t]$ と $\mathrm{Var}_t$ の符号が上式と異なる。対数効用の限界効用 $e^{-\rho t}/c_t$ から導出し直すと上式の符号になり（付録A.8で検算）、均衡の式(51)と整合する。以降の結果は式(51)から出るので影響しない。
>
> 式(51)の両辺を $\sigma_{R,t}$ で割ると、シャープレシオが $\pi_{R,t}/\sigma_{R,t}=\sigma_{W,t}$ となる（原文は「同様の形で上がる」とのみ述べ、この式は本記事で補った）。

| 記号・項目 | 意味 |
|---|---|
| $\pi_{R,t}$ | リスク資産のリスクプレミアム |
| $\pi_{R,t}/\sigma_{R,t}$ | シャープレシオ（$=\sigma_{W,t}$） |
| $m f_t$ | 専門家が単位資産あたり得る手数料（貸出スプレッドの源） |

### 1.10 仲介手数料と貸出スプレッド

制約あり領域で $\mathcal{E}^{h\ast}_t=m\mathcal{E}^{\ast}_t$、$\mathcal{E}^{h\ast}_t+\mathcal{E}^{\ast}_t=P_t$、$P_t=W^h_t+W_t$ より、露出価格は

$$
k_t=\underbrace{\frac{P_t-(1+m)W_t}{P_t-W_t}}_{\text{超過需要の割合}}\,\pi_{R,t}
\tag{53}
$$

**命題9（仲介手数料）** 式(31)の $f_t=k_t\,\pi_{R,t}/\sigma_{R,t}^2$ を用いて

$$
f_t=
\begin{cases}
0 & w_t\ge w^c\\[6pt]
\dfrac{\sigma^2}{(\rho+m\rho^h)^2}\,\dfrac{1-(\rho+m\rho^h)\,w_t}{1-\rho\,w_t}\,\Big(\dfrac{1}{w_t}\Big)^{2}\ \gt\ 0 & w_t\lt w^c
\end{cases}
\tag{54}
$$

**例：貸出スプレッド**

仲介者を、二次市場の購入者だけでなく一次市場の貸し手とみなす。デフォルトリスクのない $dt$ 期間の貸出金利 $\hat r_t$ は、貸出に使う資本 $\delta$ の機会費用（債券投資の利子 $r_t\delta$ と、家計からの手数料 $m f_t\delta$）を反映して

$$
\hat r_t=\underbrace{r_t}_{\text{無リスク金利}}+\underbrace{m\,f_t}_{\text{資本の機会費用}}
\tag{55}
$$

> 資本が不足する領域では、無リスクの借り手にも追加スプレッド $m f_t$ が乗る。$w_t$ が下がると $f_t$ が上がるので、スプレッドも上がる。

| 記号・項目 | 意味 |
|---|---|
| $k_t$ | 単位露出価格（制約あり領域で正） |
| $f_t$ | 仲介者への拠出1ドルあたり手数料（仲介資本のシャドウプライス） |
| $\hat r_t$ | 仲介者を介した無リスク貸出の金利 |

### 1.11 無リスク金利（質への逃避）

**家計のオイラー方程式**（債券は無リスク資産）

$$
r_t\,dt=\rho^h\,dt+E_t\!\Big[\frac{dc^{h\ast}_t}{c^{h\ast}_t}\Big]-\mathrm{Var}_t\!\Big[\frac{dc^{h\ast}_t}{c^{h\ast}_t}\Big]
\tag{56}
$$

**家計の消費成長率**

$$
\frac{dc^{h\ast}_t}{c^{h\ast}_t}=\frac{d(\rho^h W^h_t)}{\rho^h W^h_t}=\frac{d(P_t-W_t)}{P_t-W_t}
\tag{57}
$$

**専門家の資産の動学（比率形）**

$$
\frac{dW_t}{W_t}=\alpha_t\,(dR_t-r_t\,dt)+r_t\,dt-\rho\,dt+m f_t\,dt
\tag{58}
$$

**命題10（金利）** 制約なし領域では

$$
r_t=\rho^h+g+\rho\,(\rho-\rho^h)\,w_t-\sigma^2
\tag{59}
$$

制約あり領域では

$$
r_t=\rho^h+g+\rho\,(\rho-\rho^h)\,w_t-\sigma^2\,\frac{\rho\Big((1+m)\Big(\dfrac{1}{w_t}-\rho\Big)-m^2\rho^h\Big)+(m\rho^h)^2}{(1-\rho\,w_t)\,(\rho+m\rho^h)^2}
\tag{60}
$$

> 制約なし領域では $r_t$ は $w_t$ の減少関数（$\rho\lt\rho^h$ の反映）。専門家だけの極限（$W_t=D_t/\rho$）では $\rho+g-\sigma^2$ に収束する。制約あり領域では逆で、$w_t$ が下がるほど $r_t$ が下がる（図7の数値例）。理由は2つ：(i) 専門家資産のボラティリティ上昇により、消費成長率の変動が高まり予備的貯蓄が増える。(ii) 専門家資産の減少で家計が仲介者から資金を引き揚げ、債券に回す。この2つの債券需要が金利を押し下げる＝質への逃避。
>
> 式(59)と式(60)は、$w^c$ で連続的につながる（付録A.9で検算）。

| 記号・項目 | 意味 |
|---|---|
| $r_t$ | 均衡の無リスク金利 |
| $c^{h\ast}_t$ | 家計の最適消費（式(17)） |

### 1.12 相関と流動性（2つの例）

**例1：直交する配当を持つ第2資産**

仲介者が保有する微小供給の第2資産を考える（供給が微小なので均衡は変わらない）。$\hat Z_t$ は $Z_t$ と直交するブラウン運動、$\hat\sigma$ は固有ボラティリティ。

$$
\frac{d\hat D_t}{\hat D_t}=g\,dt+\sigma\,dZ_t+\hat\sigma\,d\hat Z_t=\frac{dD_t}{D_t}+\hat\sigma\,d\hat Z_t
\tag{61}
$$

価格は市場資産と同じ $P/D$ 比率を使って

$$
\hat P_t=\hat D_t\,\frac{P_t}{D_t}=\hat D_t\Big[\frac{1}{\rho^h}+\Big(1-\frac{\rho}{\rho^h}\Big)w_t\Big]
\tag{62}
$$

収益 $d\hat R_t=dR_t+\hat\sigma\,d\hat Z_t$ との相関は

$$
\mathrm{corr}(dR_t,\,d\hat R_t)=\frac{1}{\sqrt{1+(\hat\sigma/\sigma_{R,t})^2}}
\tag{63}
$$

> 制約なし領域では $\sigma_{R,t}$ が定数で相関も定数。制約あり領域では $\sigma_{R,t}$ が上がるため共通成分が拡大し、相関が上がる。

**例2：清算に敏感な資産**

時点0で $(W_0,D_0=1)$ とし、満期 $T$ に次のペイオフを払う微小な割引債を考える。

$$
X(W_T,D_T)=
\begin{cases}
1 & W_T\gt\underline{W}\\[4pt]
0 & \text{それ以外}
\end{cases}
\tag{64}
$$

> 時点0の価格 $Q_0(W_0,1)$ は、この経済の価格付けカーネルの下での $X$ の現在価値。計算は制約あり領域で数値的に行われる（閉形式なし）。符号が状態で切り替わる2つの効果がある。**金利効果**：$W$ の下落が金利を下げ債券価格を上げ、市場資産との相関は負。**清算効果**：$W_0$ が清算境界 $\underline{W}$ の近傍に下がると、強制清算の確率が高まり価格が下がるため、相関は正に転じる。原文の数値例（$m=4$）では $\underline{W}=3.57$。

| 記号・項目 | 意味 |
|---|---|
| $\hat D_t$, $\hat P_t$, $d\hat R_t$ | 第2資産の配当、価格、収益 |
| $\hat\sigma$ | 第2資産の固有ボラティリティ |
| $\underline{W}$ | 強制清算の閾値（外生） |
| $Q_0(W_0,1)$ | 清算敏感資産の時点0価格 |

### 1.13 主要帰結

**主要式**（制約あり領域 $w_t\lt w^c$。制約なし領域の値は下表）

$$
\boxed{
\begin{aligned}
w^c&=\underbrace{\frac{1}{m\rho^h+\rho}}_{\text{制約の境界}}\\[6pt]
\frac{P_t}{D_t}&=\underbrace{\frac{1}{\rho^h}+\Big(1-\frac{\rho}{\rho^h}\Big)w_t}_{\text{価格は}w_t\text{の増加関数}}\\[6pt]
\alpha_t&=\underbrace{\frac{1+(\rho^h-\rho)\,w_t}{(1+m)\,\rho^h\,w_t}}_{\text{レバレッジ}}\\[6pt]
\sigma_{W,t}&=\underbrace{\frac{\sigma}{w_t\,(m\rho^h+\rho)}}_{\text{専門家資産ボラ}}\\[6pt]
\sigma_{R,t}&=\underbrace{\sigma\frac{(1+m)\rho^h}{m\rho^h+\rho}\frac{1}{1+(\rho^h-\rho)w_t}}_{\text{資産ボラ}}\\[6pt]
\pi_{R,t}&=\underbrace{\sigma_{R,t}\,\sigma_{W,t}}_{\text{リスクプレミアム}}\\[6pt]
f_t&=\underbrace{\frac{\sigma^2}{(\rho+m\rho^h)^2}\frac{1-(\rho+m\rho^h)w_t}{1-\rho w_t}\frac{1}{w_t^2}}_{\text{仲介手数料}}
\end{aligned}}
\tag{65}
$$

金利 $r_t$ は式(60)、貸出スプレッドは式(55)、相関は式(63)。

**領域ごとの値**

| 変数 | 制約なし（$w_t\ge w^c$） | 制約あり（$w_t\lt w^c$） |
|---|---|---|
| $\alpha_t$ | $1$ | 式(43)（$1$ より大） |
| $\sigma_{W,t}$ | $\sigma$ | 式(48) |
| $\sigma_{R,t}$ | $\sigma$ | 式(49)（$\sigma$ より大） |
| $\pi_{R,t}$ | $\sigma^2$ | 式(52)（$\sigma^2$ より大） |
| シャープレシオ | $\sigma$ | $\sigma_{W,t}$（$\sigma$ より大） |
| $f_t$ | $0$ | 式(54)（正） |
| $r_t$ | 式(59) | 式(60) |

**比較静学**（$w_t$ の低下＝仲介者資本の毀損に対する反応）

| 変化 | 結果 | 符号・式 |
|---|---|---|
| $w_t$ が低下（制約あり領域） | 投資比率 $\alpha_t$ が上昇 | $\partial\alpha_t/\partial w_t\lt 0$（式(43)） |
| 同上 | 専門家資産のボラティリティが上昇 | $\partial\sigma_{W,t}/\partial w_t\lt 0$（式(48)） |
| 同上 | リスク資産のボラティリティが上昇 | $\partial\sigma_{R,t}/\partial w_t\lt 0$（式(49)） |
| 同上 | リスクプレミアム・シャープレシオが上昇 | 式(52)、$\pi_{R,t}/\sigma_{R,t}=\sigma_{W,t}$ |
| 同上 | 価格・配当比率が下落 | $\partial(P_t/D_t)/\partial w_t=1-\rho/\rho^h\gt 0$ |
| 同上 | 仲介手数料・貸出スプレッドが上昇 | $\partial f_t/\partial w_t\lt 0$（式(54)、$w_t=w^c$ で0） |
| 同上 | 無リスク金利が低下（質への逃避） | 式(60)（原文は図7の数値例で示す） |
| 同上 | 資産間の相関が上昇 | 式(63)、$\sigma_{R,t}$ の上昇による |
| $m$ が上昇（制約効果） | 閾値 $w^c$ が下がり、制約なし領域が広がる | $\partial w^c/\partial m=-\rho^h(m\rho^h+\rho)^{-2}\lt 0$ |
| $m$ が上昇（感応度効果） | 同じ $\alpha_t$ で $\lvert d\alpha_t/dw_t\rvert$ が大きく、衝撃が増幅される | $\dfrac{d}{dm}\Big\lvert\dfrac{d\alpha_t}{dw_t}\Big\rvert=\dfrac{\rho^h\big((1+m)^2\alpha_t^2-(1-\rho/\rho^h)^2\big)}{(1+m)^2}\gt 0$ |

> 感応度効果の式は $\lvert d\alpha_t/dw_t\rvert=\dfrac{1}{(1+m)\rho^h w_t^2}=\dfrac{\big[\alpha_t(1+m)\rho^h-(\rho^h-\rho)\big]^2}{(1+m)\rho^h}$ を $m$ で微分したもの（$\alpha_t\ge 1$、$\rho^h\gt\rho$ より正）。制約効果と感応度効果により、危機は稀だが、起きれば劇的になる。

**パラメータ例**（原文の表1。精密なキャリブレーションではなく、ヘッジファンド危機シナリオの例示）

| パラメータ | 値 | 備考 |
|---|---|---|
| $m$ | $4$、$6$ | $m=4$ は専門家の持分 $1/5=20\%$（ヘッジファンドの成功報酬に対応） |
| $g$ | $1.84\%$ | 株式市場全体を参考 |
| $\sigma$ | $12\%$ | 同上 |
| $\rho^h$ | $1.67\%$ | |
| $\rho$ | $1\%$ | 制約なし領域の金利が約1%になるよう設定。$\rho/\rho^h\approx 60\%$ |
| $w^c$ | $13.02$（$m=4$）、$9.07$（$m=6$） | 式(41)から計算 |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 危機時のボラティリティ上昇（VIX の上昇） | 制約あり領域で $w_t$ が下がると、専門家が資産の少ない状態で高い投資比率 $\alpha_t$ を保つため $\sigma_{W,t}$ が急上昇し、$P_t/D_t$ の下落を通じて $\sigma_{R,t}$ も上がる（式(48)(49)） |
| リスクプレミアム・シャープレシオの上昇 | 限界投資家の専門家の資本が減り、リスク負担能力が低下する。$\pi_{R,t}=\sigma_{R,t}\sigma_{W,t}$ が上がる（式(51)(52)） |
| 無リスク金利の低下（質への逃避） | 家計の仲介者からの資金引き揚げと専門家の予備的貯蓄が、債券需要を高め金利を下げる（式(60)） |
| 資産間の相関の上昇 | 共通のリスク価格（$\sigma_{R,t}$）が上がると、同じ共通ショックを持つ資産が連動しやすくなる（式(63)） |
| ファイアセール（資産価格の下落） | $P_t/D_t$ が $w_t$ の増加関数で、専門家資産が減ると下落する。下限は家計だけの経済の価格 $D_t/\rho^h$（式(42)） |
| 貸出スプレッドの上昇・市場流動性の低下 | 仲介資本が不足して $f_t$ が上昇し、無リスクの借り手にも $m f_t$ が乗る。家計の間接参加が減り、買い手の集合が縮小する（式(54)(55)） |
| 危機が稀だが劇的である理由 | $m$ が大きい経済は制約領域が狭い（制約効果）が、入ると感応度が高い（感応度効果）（1.13の比較静学） |
| 清算敏感資産の相関の符号転換 | 金利効果（負の相関）と清算効果（正の相関）の2つの力（例2） |

## 3. 整理している点 {#sec3}

- **仲介の役割を契約理論から内生化している**：限定参加（家計はリスク資産に直接投資できない）とモラルハザード（専門家の怠けと観察不能なポートフォリオ）から、家計の露出に対する上限 $\mathcal{E}^h_t\le m\mathcal{E}^{\ast}_t$ が最適契約として導かれる（式(24)）。
- **資本制約の2状態を閉形式で解いている**：対数効用と幾何ブラウン運動の配当により、状態変数 $w_t$ だけで価格・ボラティリティ・リスクプレミアム・手数料・金利がすべて解析解で得られ、閾値 $w^c$ を境に挙動が切り替わる（式(41)〜(60)）。
- **状態依存の資産価格を標準的な選好から作っている**：習慣形成や時変的リスク回避を仮定せず、CRRA（対数）効用のまま、仲介者資本という状態変数を通じてリスクプレミアムが危機時に上がることを内生的に導く。

## 4. 対象外の現象 {#sec4}

- **定常分布は退化している**：専門家が最終的に全資産を持つため、モデルをシミュレーションできない（原文の結論）。定常分布を持つ関連モデルは数値解のみで、閉形式はない。
- **家計がリスク資産に直接投資できる状況**：家計の直接保有資産と仲介資産を同時に扱う拡張や、「仲介されない資産」への波及は扱わない（原文が今後の課題とする）。
- **ベンチマーク契約・非線形契約・長期の動学的契約**：契約空間はアフィン契約に限定し、専門家は自らの成果のみで評価される。非線形契約を許しても結果は実質的に変わらないという主張は原文の議論で、本モデルでは導出しない。
- **破産・清算の明示的モデル**：清算価値の低さは $\rho^h\gt\rho$ という割引率の差で表現している。均衡では資産は清算されない（例2の清算閾値は外生）。
- **危機時に手数料が上がるという含意の実証的な裏付け**：原文は、危機時に専門家が高い手数料を要求するのは反事実的に見えると認めている（脚注20）。
- **政策分析・厚生評価、実物投資・生産**：このモデルは禀賦（配当）経済で、政策介入や実物経済の資本蓄積は扱わない。
- **精密なキャリブレーション**：表1のパラメータは、ヘッジファンドの危機シナリオを例示するもので、定量的な予測を目的としない。

## 5. 主要文献・関連論文 {#sec5}

- **[基礎的枠組み]** Lucas, R. E., Jr. (1978). Asset prices in an exchange economy. *Econometrica*, 46(6), 1429–1445.
  - **位置づけ**: 消費財1種類の交換経済で、配当を生むリスク資産の価格を均衡で決める枠組みを確立した金字塔的論文。本モデルの経済環境（式(1)）の出発点。
- **[契約理論の原型]** Holmstrom, B., & Tirole, J. (1997). Financial intermediation, loanable funds, and the real sector. *Quarterly Journal of Economics*, 112(3), 663–691.
  - **位置づけ**: 仲介者の資本とモラルハザードから、企業が調達できる資金の上限が決まることを示した。本モデルの短期仲介契約とIC制約（式(20)）の原型で、本モデルはその比較静学を動学一般均衡に置き換えたものと位置づけられる。
- **[信用サイクル]** Kiyotaki, N., & Moore, J. (1997). Credit cycles. *Journal of Political Economy*, 105(2), 211–248.
  - **位置づけ**: 担保制約が資産価格と生産の動学を増幅することを示した、金融摩擦マクロ経済学の基礎文献。資本制約が価格を動かす点で本モデルと関係が深い。
- **[同時期の発展]** Brunnermeier, M. K., & Sannikov, Y. (2014). A macroeconomic model with a financial sector. *American Economic Review*, 104(2), 379–421.
  - **位置づけ**: 連続時間で金融部門の資本が内生的に危機・増幅を生むモデル。本論文と同じ系譜に属し、動学的・非線形な増幅を数値的に解析する。
- **[本論文の発展]** He, Z., & Krishnamurthy, A. (2013). Intermediary asset pricing. *American Economic Review*, 103(2), 732–770.
  - **位置づけ**: 同じ著者による関連モデル。専門家のリスク回避が家計より高い設定で、非退化な定常分布を持つモデルを数値的に解き、仲介者資本が資産価格を決める枠組みを分析する（本論文の注記・結論で言及される関連モデルに対応）。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
[前提 A1〜A7, 式(1)(2)(3)(4)(5)]
        │
        ▼
[契約と予算制約] 式(6)→(7)→(8)→(9)→(10)     ← A.2
        │
        ▼
[HJB と 最適政策] 式(13)(14)→ 式(15)(16)(17)(18)   ← A.2
        │
        ├─ [努力のIC] 式(19)(20) ──┐
        │                          ├─→ 最大露出 式(22)(23)(24)   ← A.3
        └─ [undoing] 式(21) ───────┘
                      │
                      ▼
[均衡契約] 式(25)(26)(27)(28)               ← A.4
        │
        ▼
[株式実装・資本制約] 式(29)〜(39)            ← A.5
        │
        ▼
[市場清算] 式(37)(38) → 価格 式(40)(42)・閾値 式(41)・投資比率 式(43)   ← A.6
        │
        ├─→ ボラティリティ 式(44)〜(49)       ← A.7
        ├─→ リスクプレミアム 式(50)〜(52)・手数料 式(53)(54)・スプレッド 式(55)  ← A.8
        ├─→ 金利 式(56)〜(60)                  ← A.9
        └─→ 相関・例 式(61)〜(64)              ← A.10
                      │
                      ▼
[主要帰結] 式(65)・比較静学                  ← A.11
```

### A.1 使う道具

**T1 伊藤の公式**

$f(t,W_t)$ について、$dW=\mu\,dt+\sigma\,dZ$ のとき

$$
df=\Big(f_t+f_W\,\mu+\tfrac{1}{2}f_{WW}\,\sigma^2\Big)dt+f_W\,\sigma\,dZ
$$

**T2 HJB 方程式と推測検証**

価値関数 $J$ について $\rho J=\max\big\{u+\tfrac{1}{dt}E[dJ]\big\}$。価値関数の関数形を推測し、HJB の1階条件で最適政策を求めて整合性を確かめる。

**T3 2次式の最大化**

$\max_x\{ax-\tfrac{1}{2}bx^2\}$（$b\gt 0$）は $x=a/b$。

**T4 市場清算**

財市場 $c+c^h=D$、リスク資産市場 $\alpha(W+T^h)=P$。債券は供給ゼロなので $W+W^h=P$。ワルラス法則により債券市場は自動的に清算される。

**T5 オイラー方程式**

限界効用 $M_t=e^{-\rho t}/c_t$（対数効用）について、資産収益 $dR$ の価格付けは $E[dM/M]+E[dR]+\mathrm{Cov}(dM/M,dR)=0$。ここで $dM/M=-\rho\,dt-dc/c+(dc/c)^2$。

**T6 コアの等価分配（equal treatment）と凹性**

非対称な配分の平均を取ると、目的関数が凹ならば平均配分は平均値以上を実現する（イェンセンの不等式）。最悪の組が必ず改善されるので、対称配分以外の均衡は連合に阻止される。

**T7 代数整理と比較静学**

分数式の通分、商の微分、符号の判定。$w_t\ge w^c$ と $w_t\lt w^c$ で場合分けする。

### A.2 補題1：最適消費・最適露出（式(15)〜(18)）

**Step 1　関数形の推測（T2）**

専門家の価値関数を $J(W_t,Y_t)=Y_t+\frac{1}{\rho}\ln W_t$、$dY_t=\mu_{Y,t}\,dt$ と推測する。予算制約は式(13)：$dW_t=\mathcal{E}_t(dR_t-r_t\,dt)+q_tW_t\,dt+W_tr_t\,dt-c_t\,dt$。

**Step 2　偏微分（T1）**

$$
J_W=\frac{1}{\rho W_t},\qquad J_{WW}=-\frac{1}{\rho W_t^2},\qquad J_t=\mu_{Y,t}
$$

**Step 3　HJB 方程式（T2）**

$$
\rho\Big(Y_t+\tfrac{1}{\rho}\ln W_t\Big)=\max_{c_t,\mathcal{E}_t}\Big[\ln c_t+\mu_{Y,t}+\big(\mathcal{E}_t\pi_{R,t}+(q_t+r_t)W_t-c_t\big)\frac{1}{\rho W_t}-\tfrac{1}{2}\mathcal{E}_t^2\sigma_{R,t}^2\frac{1}{\rho W_t^2}\Big]
$$

**Step 4　消費の1階条件 → 式(15)**

$1/c_t=1/(\rho W_t)$ より $c^{\ast}_t=\rho W_t$。

**Step 5　露出の1階条件（T3） → 式(16)**

$\pi_{R,t}/(\rho W_t)-\mathcal{E}_t\sigma_{R,t}^2/(\rho W_t^2)=0$ より $\mathcal{E}^{\ast}_t=\dfrac{\pi_{R,t}}{\sigma_{R,t}^2}W_t$。目的関数は $\mathcal{E}_t$ について凹（$J_{WW}\lt 0$）。

**Step 6　整合性の確認**

Step 4, 5 を Step 3 に代入すると、$\ln W_t$ の項が両辺で一致し、$Y_t$ の微分方程式が残る：

$$
\mu_{Y,t}=\rho Y_t-\ln\rho-\frac{1}{\rho}\Big(\tfrac{1}{2}\Big(\frac{\pi_{R,t}}{\sigma_{R,t}}\Big)^2+q_t+r_t-\rho\Big)
$$

これで推測の形が整合する。$q_t$ は $\mathcal{E}^{\ast}_t$ に現れず、式(15)(16)に影響しない。

> 【読み替え】原文は最後の括弧の前が $+$ と印刷されているが、Step 3 から導くと $-$ になる。$Y_t$ の具体形は以降の結果に使わない。

**Step 7　家計の問題**

式(14)に同じ手続きを適用する。$\pi_{R,t}\to\pi_{R,t}-k_t$、$q_t\to 0$、$\rho\to\rho^h$ と置き換えて

$$
\rho^h\Big(Y^h_t+\tfrac{1}{\rho^h}\ln W^h_t\Big)=\max\Big[\ln c^h_t+\mu_{Y^h,t}+\big(\mathcal{E}^h_t(\pi_{R,t}-k_t)+r_tW^h_t-c^h_t\big)\frac{1}{\rho^hW^h_t}-\tfrac{1}{2}(\mathcal{E}^h_t)^2\sigma_{R,t}^2\frac{1}{\rho^h(W^h_t)^2}\Big]
$$

1階条件から式(17)(18)を得る。

**確認**

$k_t=0$ のとき、式(18)は $\mathcal{E}^{h\ast}_t=\dfrac{\pi_{R,t}}{\sigma_{R,t}^2}W^h_t$ で、式(16)と同じ形（同じ対数投資家）になる。

| 入力・使う道具 | 内容 |
|---|---|
| 式(13)(14)、仮定 A7 | 予算制約、$\rho^h\gt\rho$ |
| T1, T2, T3 | 伊藤の公式、HJB、2次式の最大化 |
| 出力 | 式(15)〜(18) |

### A.3 補題2・補題3：インセンティブ制約と最大露出（式(19)〜(24)）

**Step 1　怠けた場合の予算制約**

式(7)の第1式から、任意の $\mathcal{E}^I_t$ について

$$
dW_t=\beta_tT^I_t\widetilde{dR}_t(\mathcal{E}^I_t)+(W_t-T_t)r_t\,dt+\hat K_t\,dt-c_t\,dt+s_t\,(B_t-\beta_tX_t)\,dt
$$

$s_t$ に依存する項は $s_t(B_t-\beta_tX_t)\,dt$ だけ。怠ける専門家は損失 $\beta_tX_t\,dt$ を負担し、私的便益 $B_t\,dt$ を得る。

**Step 2　価値の差（T1：1次近似）**

契約が短期なので将来の価値関数 $J(\cdot)$ は所与。

$$
E_t[J(W_{t+dt})\mid s_t=1]-E_t[J(W_{t+dt})\mid s_t=0]=J'(W_t)\,(B_t-\beta_tX_t)\,dt
$$

**Step 3　「働く」が最適となる条件 → 式(19)(20)**

差が $0$ 以下であればよい：$J'(W_t)(B_t-\beta_tX_t)\le 0$。$J'(W_t)\gt 0$ なので $\beta_t\ge B_t/X_t$。$B_t/X_t=1/(1+m)$ を代入して式(20)。

> 原文は差を逆の順（働く−怠ける）で書いているように印刷されているが、結論の符号は上の向きで整合する。

**Step 4　undoing（補題3） → 式(21)**

$K_t=q_tW_t$ を均衡水準に固定する。専門家の問題は式(13)で、$\beta_t\mathcal{E}^I_t$ だけが効くので、最適な持ち高は $\mathcal{E}^I_t=\mathcal{E}^{\ast}_t/\beta_t$（$\beta_t$ が変わると持ち高を逆比例で調整）。

**Step 5　$K_t$ を上げても専門家のポートフォリオを動かせない**

$K_t$ を $\epsilon$ だけ上げると、家計の費用は $\epsilon\,dt$ のオーダー。専門家の資産が $\epsilon\,dt$ 増え、式(16)より

$$
\mathcal{E}^{\ast}_t(\epsilon)=\frac{\mu_{R,t}-r_t}{\sigma_{R,t}^2}\,(W_t+\epsilon\,dt)
$$

と $dt$ のオーダーだけ露出が増える。家計の価値は $\mathcal{E}^h=(1-\beta)\mathcal{E}^{\ast}$ の変化に対し $dt$ のオーダー、全体の便益は $(dt)^2$ で押さえられ、費用 $\epsilon\,dt$ に及ばない。

**Step 6　家計の露出 → 式(22)**

$$
\mathcal{E}^h_t=(1-\beta_t)\,\mathcal{E}^I_t=\frac{1-\beta_t}{\beta_t}\,\mathcal{E}^{\ast}_t
$$

$\beta_t$ を下げるほど家計の露出は増え、$\beta_t=1$ で $0$。

**Step 7　IC 制約の下での最大化 → 式(23)(24)**

式(22)は $\beta_t$ の減少関数。式(20)の下限 $\beta_t=1/(1+m)$ で最大：

$$
\frac{1-\frac{1}{1+m}}{\frac{1}{1+m}}=\frac{\frac{m}{1+m}}{\frac{1}{1+m}}=m
$$

よって $\mathcal{E}^h_t\le m\,\mathcal{E}^{\ast}_t$。

**確認**

$m\to 0$ では $\beta_t\to 1$ で、家計は露出を持てない（$\mathcal{E}^h_t\to 0$）。$m=4$ では専門家の持分が $1/5=20\%$、家計の露出は専門家の4倍。

| 入力・使う道具 | 内容 |
|---|---|
| 式(7)、補題1の $J(W)=Y+\frac{1}{\rho}\ln W$ | 怠けの予算制約、$J'\gt 0$ |
| T1, T3 | 1次近似、最大化 |
| 出力 | 式(19)〜(24) |

### A.4 補題4〜6・命題1：均衡契約（式(25)〜(28)）

**Step 1　対称性（補題4、T6）**

非対称な均衡 $\big(\mathcal{E}^h(i),K(i)\big)$ があるとする。平均配分 $\overline{\mathcal{E}^h}\equiv\int\mathcal{E}^h(i)di$、$\overline{K}\equiv\int K(i)di$ を考える。

1. 実現可能：$\mathcal{E}^h(i)=\frac{1-\beta(i)}{\beta(i)}\mathcal{E}^{\ast}$（$\mathcal{E}^{\ast}$ は全員共通）と $\beta(i)\ge\frac{1}{1+m}$ より、$\frac{1-\overline\beta}{\overline\beta}=\int\frac{1-\beta(i)}{\beta(i)}di$ を満たす $\overline\beta\ge\frac{1}{1+m}$ が存在。
2. 専門家は $\overline K\ge\min_iK(i)$ なので弱く改善。
3. 家計の価値は $\mathcal{E}^h$ について厳密に凹（項 $-\tfrac{1}{2}\frac{(\mathcal{E}^h)^2\sigma_{R}^2}{\rho^h(W^h)^2}$）なので、$U^h(\overline{\mathcal{E}^h},\overline K)\ge\int U^h(i)di\ge\min_iU^h(i)$。

最悪の家計と最悪の専門家を組ませると連合が阻止するので、均衡は対称。

**Step 2　価格受容（補題5） → 式(25)**

測度 $n$ の家計が露出を $\epsilon$ だけ減らすと、連合の専門家の測度を $n\epsilon/\mathcal{E}^h_t$ 減らせる。節約できる手数料は $\frac{n\epsilon}{\mathcal{E}^h_t}K_t=n\epsilon k_t$。家計1人あたり、露出1単位あたり $k_t=K_t/\mathcal{E}^h_t$ の節約。

**Step 3　需要と供給**

需要は式(18)：$\mathcal{E}^{h\ast}_t(k)=\dfrac{\pi_{R,t}-k}{\sigma_{R,t}^2}W^h_t$（$k$ について線形・減少）。供給は式(26)：$m\mathcal{E}^{\ast}_t=m\dfrac{\pi_{R,t}}{\sigma_{R,t}^2}W_t$（$k$ に依存しない）。

**Step 4　2つの均衡（命題1） → 式(27)**

- $\mathcal{E}^{h\ast}_t(0)\le m\mathcal{E}^{\ast}_t$ のとき、手数料を払う理由がなく $k_t=0$。$\beta_t\gt\frac{1}{1+m}$（IC は緩い）なら、連合は $\beta$ を下げて手数料を $0$ にできるので、均衡は $k_t=0$。
- それ以外のとき、需要が $k$ について線形・供給が一定なので、$\mathcal{E}^{h\ast}_t(k)=m\mathcal{E}^{\ast}_t$ を満たす $k_t\gt 0$ が存在する。IC が緩いと、連合が $\beta$ を下げて価格 $k$ を下げられるので、$\beta_t=\frac{1}{1+m}$ で拘束。

$k_t\gt 0$ の解（後で式(53)で使う）：

$$
\frac{\pi_{R,t}-k_t}{\sigma_{R,t}^2}W^h_t=m\frac{\pi_{R,t}}{\sigma_{R,t}^2}W_t\ \Rightarrow\ k_t=\pi_{R,t}\Big(1-\frac{mW_t}{W^h_t}\Big)=\pi_{R,t}\,\frac{W^h_t-mW_t}{W^h_t}
$$

**Step 5　専門家から見た手数料（補題6） → 式(28)**

資産が $\widehat W_t$ の専門家（均衡外の仮想的な値）は、式(26)より $m\frac{\pi_{R,t}}{\sigma_{R,t}^2}\widehat W_t$ の露出を供給でき、手数料は $m\frac{\pi_{R,t}}{\sigma_{R,t}^2}\widehat W_t\,k_t=q_t\widehat W_t$。制約なし領域では $k_t=0$ より $q_t=0$。

**確認**

$k_t$ は、需要が供給と一致する $W^h_t=mW_t$ で $0$ になり（上の式）、制約なし領域の $k_t=0$ と連続的につながる。

| 入力・使う道具 | 内容 |
|---|---|
| 式(18)(22)(24) | 需要と最大供給 |
| T3, T6 | 線形需給、凹性と平均配分 |
| 出力 | 式(25)〜(28)、制約あり領域の $k_t$ |

### A.5 命題2・命題3：株式実装と資本制約の2領域（式(29)〜(39)）

**Step 1　手数料の対応 → 式(31)(32)**

式(28)と $f_t=q_t/m$ から、制約あり領域で $f_t=\frac{\pi_{R,t}}{\sigma_{R,t}^2}k_t=\alpha^{\ast}_tk_t$（$\alpha^{\ast}_t=\pi_{R,t}/\sigma_{R,t}^2$ は式(16)から、専門家の最適投資比率）。総移転 $K_t=f_tT^h_t=q_tW_t=mf_tW_t$（制約が拘束すると $T^h_t=mW_t$）。

**Step 2　専門家の問題（式(33)(34)）**

専門家は全資産を仲介者に拠出し、$\alpha_t$ を選ぶ。式(13)の $\mathcal{E}_t=\alpha_tW_t$、$q_t=mf_t$ と置いたもの。

**Step 3　家計の拠出の最適化（T3） → 命題2**

専門家が $\alpha^{\ast}_t=\pi_{R,t}/\sigma_{R,t}^2$ を選ぶとき、家計から見た手数料後の期待超過収益は $\alpha^{\ast}_t\pi_{R,t}-f_t$、ボラティリティは $\alpha^{\ast}_t\sigma_{R,t}$。対数投資家の最適拠出は

$$
T^{h\ast}_t(f_t)=\frac{\alpha^{\ast}_t\pi_{R,t}-f_t}{(\alpha^{\ast}_t\sigma_{R,t})^2}\,W^h_t
$$

これが生むリスク資産へのドル露出は、$f_t=\alpha^{\ast}_tk_t$ を代入して

$$
\alpha^{\ast}_tT^{h\ast}_t(f_t)=\frac{\pi_{R,t}-f_t/\alpha^{\ast}_t}{\sigma_{R,t}^2}\,W^h_t=\frac{\pi_{R,t}-k_t}{\sigma_{R,t}^2}\,W^h_t
$$

で、式(18)と一致。よって株式実装でも主体の決定は同じ（命題2）。

**Step 4　制約なし領域（命題3(1)）**

$mW_t\ge W^h_t$ とする。$f_t=0$ では、家計と専門家が同じ投資機会に直面し、対数選好なので同じポートフォリオが最適。家計は全資産を預け（$T^h_t=W^h_t\le mW_t$）、式(29)を満たす。

**Step 5　制約あり領域（命題3(2)）**

$mW_t\lt W^h_t$ とする。$T^h_t=W^h_t$ では式(29)を破る。A.4 Step 4 と同様に、$f_t\gt 0$ が $T^{h\ast}_t(f_t)=mW_t$ となるまで上がる。リスク分担は

$$
\mathcal{E}^{\ast}_t:\mathcal{E}^{h\ast}_t=\alpha_tW_t:\alpha_tmW_t=1:m
$$

で、資産比率 $W_t:W^h_t$ より専門家に偏る。

**確認**

$mW_t=W^h_t$ で $f_t=0$（連続）。制約あり領域の $\mathcal{E}^{h\ast}_t=\alpha_tT^h_t=m\alpha_tW_t=m\mathcal{E}^{\ast}_t$ で、式(24)の上限が拘束する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(16)(18)(28)(31) | 最適露出、手数料の対応 |
| T3, T4 | 対数投資家の最適拠出、株式市場の清算 |
| 出力 | 式(32)(39)、命題2 |

### A.6 命題4・命題5：価格・閾値・投資比率（式(40)〜(43)）

**Step 1　集計資産**

債券が供給ゼロなので $W_t+W^h_t=P_t$（T4）。

**Step 2　財市場の清算 → 式(40)**

$c^{\ast}_t+c^{h\ast}_t=\rho W_t+\rho^hW^h_t=D_t$ に $W^h_t=P_t-W_t$ を代入：

$$
\rho W_t+\rho^h(P_t-W_t)=D_t\ \Rightarrow\ P_t=\frac{D_t}{\rho^h}+\Big(1-\frac{\rho}{\rho^h}\Big)W_t
$$

$D_t$ で割って式(42)。

**Step 3　閾値 → 式(41)**

$mW_t=W^h_t=P_t-W_t$ に式(40)を代入：

$$
(1+m)W_t=\frac{D_t}{\rho^h}+\Big(1-\frac{\rho}{\rho^h}\Big)W_t\ \Rightarrow\ \Big(m+\frac{\rho}{\rho^h}\Big)W_t=\frac{D_t}{\rho^h}\ \Rightarrow\ W_t(m\rho^h+\rho)=D_t
$$

よって $w^c=1/(m\rho^h+\rho)$。$W_t$ が $w^c D_t$ 以上のとき制約なし（命題3(1)の条件 $mW_t\ge W^h_t$ に対応）。

**Step 4　投資比率 → 式(43)**

制約なし：家計と専門家が同じポートフォリオで、債券の純供給が $0$ なので $\alpha_t=1$。制約あり：式(37)に $T^h_t=mW_t$ を代入して

$$
\alpha_t=\frac{P_t}{W_t+mW_t}=\frac{1}{(1+m)w_t}\frac{P_t}{D_t}=\frac{1+(\rho^h-\rho)\,w_t}{(1+m)\rho^h\,w_t}
$$

**確認**

$w_t=w^c$ のとき $1/w^c=m\rho^h+\rho$ を代入すると、分子 $1+(\rho^h-\rho)/(m\rho^h+\rho)=(1+m)\rho^h/(m\rho^h+\rho)$ で、$\alpha_t=\dfrac{(1+m)\rho^h/(m\rho^h+\rho)}{(1+m)\rho^h/(m\rho^h+\rho)}=1$（連続）。$m=4$、$\rho^h=1.67\%$、$\rho=1\%$ で $w^c=1/0.0768=13.02$（原文の図と一致）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(15)(17)(37)(38)(39) | 消費則、市場清算、$T^h_t=mW_t$ |
| T4, T7 | 市場清算、代数整理 |
| 出力 | 式(40)〜(43) |

### A.7 命題6・命題7：ボラティリティ（式(44)〜(49)）

**Step 1　専門家資産の拡散項 → 式(45)**

式(33)と式(34)から $dW_t/W_t=\alpha_t(dR_t-r_tdt)+(\cdots)dt$。拡散項は $\alpha_t\sigma_{R,t}dZ_t$。式(44)と比べて $\sigma_{W,t}=\alpha_t\sigma_{R,t}$。

**Step 2　価格の拡散項（T1） → 式(46)**

式(40)に伊藤の公式（右辺は線形）を使うと $dP_t=\frac{dD_t}{\rho^h}+\big(1-\frac{\rho}{\rho^h}\big)dW_t$。拡散項は $\sigma_{R,t}P_t=\sigma\frac{D_t}{\rho^h}+\big(1-\frac{\rho}{\rho^h}\big)W_t\sigma_{W,t}$。

**Step 3　連立 → 式(47)**

式(45)の $\sigma_{R,t}=\sigma_{W,t}/\alpha_t$ を Step 2 に代入：

$$
\frac{\sigma_{W,t}P_t}{\alpha_t}-\Big(1-\frac{\rho}{\rho^h}\Big)W_t\sigma_{W,t}=\sigma\frac{D_t}{\rho^h}
$$

両辺を $D_t/\rho^h$ で割って $\sigma_{W,t}\Big[\dfrac{\rho^h}{\alpha_t}\dfrac{P_t}{D_t}-(\rho^h-\rho)w_t\Big]=\sigma$。

**Step 4　領域ごとの値 → 式(48)**

- 制約なし（$\alpha_t=1$、式(42)）：括弧内は $1+(\rho^h-\rho)w_t-(\rho^h-\rho)w_t=1$ より $\sigma_{W,t}=\sigma$。
- 制約あり：$\dfrac{\rho^h}{\alpha_t}\dfrac{P_t}{D_t}=\rho^h\cdot\dfrac{P_t}{D_t}\cdot\dfrac{(1+m)\rho^hw_t}{1+(\rho^h-\rho)w_t}=(1+m)\rho^hw_t$（$\rho^hP_t/D_t=1+(\rho^h-\rho)w_t$ を使用）。括弧内は $(1+m)\rho^hw_t-(\rho^h-\rho)w_t=w_t(m\rho^h+\rho)$ なので $\sigma_{W,t}=\dfrac{\sigma}{w_t(m\rho^h+\rho)}$。

**Step 5　リスク資産のボラティリティ → 式(49)**

$\sigma_{R,t}=\sigma_{W,t}/\alpha_t$。制約あり領域：

$$
\sigma_{R,t}=\frac{\sigma}{w_t(m\rho^h+\rho)}\cdot\frac{(1+m)\rho^hw_t}{1+(\rho^h-\rho)w_t}=\sigma\,\frac{(1+m)\rho^h}{m\rho^h+\rho}\,\frac{1}{1+(\rho^h-\rho)w_t}
$$

**確認**

$w_t=w^c$ で $1+(\rho^h-\rho)w^c=\dfrac{(1+m)\rho^h}{m\rho^h+\rho}$（A.6 の確認）より $\sigma_{R,t}=\sigma$、$\sigma_{W,t}=\sigma/(w^c(m\rho^h+\rho))=\sigma$。制約なし領域と連続。

| 入力・使う道具 | 内容 |
|---|---|
| 式(33)(40)(42)(43) | 資産の動学、価格、投資比率 |
| T1, T7 | 伊藤の公式、代数整理 |
| 出力 | 式(45)〜(49) |

### A.8 リスクプレミアム・手数料・貸出スプレッド（式(50)〜(55)）

**Step 1　限界効用（T5）**

$c^{\ast}_t=\rho W_t$ より $M_t=e^{-\rho t}/c^{\ast}_t$、$dM_t/M_t=-\rho\,dt-dc^{\ast}_t/c^{\ast}_t+(dc^{\ast}_t/c^{\ast}_t)^2$。

**Step 2　リスク資産のオイラー方程式 → 式(50)**

追加で1ドル貯蓄して仲介者に投資すると、収益 $dR_t$ に加え、家計の追加投資を呼び込み手数料 $q_t=mf_t$ をすぐに得る。価格付け条件に手数料項を加えて

$$
E\Big[\frac{dM_t}{M_t}\Big]+E[dR_t]+mf_t\,dt+\mathrm{Cov}\Big(\frac{dM_t}{M_t},dR_t\Big)=0
$$

$E[dM/M]=-\rho\,dt-E[dc^{\ast}/c^{\ast}]+\mathrm{Var}[dc^{\ast}/c^{\ast}]$、$\mathrm{Cov}(dM/M,dR)=-\mathrm{Cov}(dc^{\ast}/c^{\ast},dR)$ を代入して式(50)。

**Step 3　債券のオイラー方程式**

債券（収益 $r_tdt$、共分散 $0$）にも同じ手続きを適用：

$$
mf_t\,dt-\rho\,dt-E_t\Big[\frac{dc^{\ast}_t}{c^{\ast}_t}\Big]+\mathrm{Var}_t\Big[\frac{dc^{\ast}_t}{c^{\ast}_t}\Big]+r_t\,dt=0
$$

**Step 4　差を取る → 式(51)**

Step 2 から Step 3 を引くと手数料項・消費項が消えて $E_t[dR_t-r_tdt]=\mathrm{Cov}_t\big[dc^{\ast}_t/c^{\ast}_t,\,dR_t\big]$。$dc^{\ast}_t/c^{\ast}_t=dW_t/W_t$ の拡散は $\sigma_{W,t}dZ_t$、$dR_t$ の拡散は $\sigma_{R,t}dZ_t$ なので $\pi_{R,t}=\sigma_{R,t}\sigma_{W,t}$。

**Step 5　符号の検算（原文印刷との相違）**

式(58)から $\mu_{W,t}=\alpha_t\pi_{R,t}+r_t-\rho+mf_t$。これを Step 3 に入れると $\sigma_{W,t}^2=\alpha_t\pi_{R,t}$ となり、$\sigma_{W,t}=\alpha_t\sigma_{R,t}$ から $\pi_{R,t}=\alpha_t\sigma_{R,t}^2$、すなわち式(16)（$\alpha_t=\pi_{R,t}/\sigma_{R,t}^2$）と一致する。原文の印刷どおり $E[dc^{\ast}/c^{\ast}]$ に $+$ を付けると、債券の式が成り立たない。よって上の符号を採用した。

**Step 6　リスクプレミアム → 式(52)**

式(48)と式(49)の積：制約なし領域は $\sigma\cdot\sigma=\sigma^2$。制約あり領域は

$$
\pi_{R,t}=\frac{\sigma}{w_t(m\rho^h+\rho)}\cdot\sigma\frac{(1+m)\rho^h}{m\rho^h+\rho}\frac{1}{1+(\rho^h-\rho)w_t}
$$

**Step 7　手数料 → 式(53)(54)**

A.4 Step 4 の $k_t=\pi_{R,t}\dfrac{W^h_t-mW_t}{W^h_t}$ に $W^h_t=P_t-W_t$ を代入して式(53)。式(31)に代入：

$$
f_t=\frac{\pi_{R,t}}{\sigma_{R,t}^2}k_t=\frac{\pi_{R,t}^2}{\sigma_{R,t}^2}\,\frac{P_t-(1+m)W_t}{P_t-W_t}=\sigma_{W,t}^2\,\frac{P_t-(1+m)W_t}{P_t-W_t}
$$

最後の等号は $\pi_{R,t}=\sigma_{R,t}\sigma_{W,t}$ による。$D_t$ で割って式(42)を代入すると、$\rho^h\Big[\dfrac{P_t-(1+m)W_t}{D_t}\Big]=1-(\rho+m\rho^h)w_t$、$\rho^h\Big[\dfrac{P_t-W_t}{D_t}\Big]=1-\rho w_t$ なので比は $\dfrac{1-(\rho+m\rho^h)w_t}{1-\rho w_t}$。式(48)の $\sigma_{W,t}^2=\dfrac{\sigma^2}{w_t^2(\rho+m\rho^h)^2}$ と合わせて式(54)。

**Step 8　貸出スプレッド → 式(55)**

貸し手が規模 $\delta$ の貸出をすると、仲介者に投入できる資本が $\delta$ 減り、制約あり領域では家計の資金が $m\delta$ 減る。同じ $\delta$ を債券に投資していれば $r_t\delta$ に加え、家計から手数料 $mf_t\delta$ を得られた。どちらも無リスクなので $\hat r_t=r_t+mf_t$。

**確認**

$w_t=w^c$ で $1-(\rho+m\rho^h)w^c=0$ より $f_t=0$（連続）。$w_t$ が下がると、比 $\dfrac{1-(\rho+m\rho^h)w}{1-\rho w}$ と $\dfrac{1}{w^2}$ がともに増加し、$f_t$ は上がる。

| 入力・使う道具 | 内容 |
|---|---|
| 式(16)(45)(48)(49)(58) | 最適露出、ボラティリティ、予算制約 |
| T5, T7 | オイラー方程式、代数整理 |
| 出力 | 式(50)〜(55) |

### A.9 命題10：無リスク金利（式(56)〜(60)）

**Step 1　家計のオイラー方程式（T5） → 式(56)**

債券の収益 $r_tdt$、$M^h_t=e^{-\rho^h t}/c^{h\ast}_t$：$-\rho^h\,dt-E[dc^h/c^h]+\mathrm{Var}[dc^h/c^h]+r_t\,dt=0$。

**Step 2　家計の消費成長率 → 式(57)**

$c^{h\ast}_t=\rho^hW^h_t=\rho^h(P_t-W_t)$ より $\dfrac{dc^{h\ast}_t}{c^{h\ast}_t}=\dfrac{d(P_t-W_t)}{P_t-W_t}$。

**Step 3　$P_t-W_t$ の動学（T1）**

式(40)より $P_t-W_t=\dfrac{D_t-\rho W_t}{\rho^h}$ で、$d(P_t-W_t)=\dfrac{dD_t-\rho\,dW_t}{\rho^h}$。$(P_t-W_t)$ で割ると、ドリフトとボラティリティは

$$
\frac{g-\rho w_t\mu_{W,t}}{1-\rho w_t},\qquad\frac{\sigma-\rho w_t\sigma_{W,t}}{1-\rho w_t}
$$

**Step 4　$\mu_{W,t}$（式(58)）を入れて $r_t$ を解く**

式(56)に Step 3 を代入し、$\mu_{W,t}=\alpha_t\pi_{R,t}+r_t-\rho+mf_t$ を使う：

$$
r_t=\rho^h+\frac{g-\rho w_t(\alpha_t\pi_{R,t}+r_t-\rho+mf_t)}{1-\rho w_t}-\frac{(\sigma-\rho w_t\sigma_{W,t})^2}{(1-\rho w_t)^2}
$$

両辺に $(1-\rho w_t)$ をかけ、$r_t$ の項（$r_t(1-\rho w_t)+\rho w_tr_t=r_t$）を左辺にまとめると、両領域に共通の式が得られる：

$$
r_t=\rho^h+g+\rho(\rho-\rho^h)w_t-\rho w_t\,(\alpha_t\pi_{R,t}+mf_t)-\frac{(\sigma-\rho w_t\sigma_{W,t})^2}{1-\rho w_t}
$$

**Step 5　制約なし領域 → 式(59)**

$\alpha_t\pi_{R,t}=\sigma^2$（$\alpha_t=1$、$\pi_{R,t}=\sigma^2$）、$f_t=0$、$\sigma_{W,t}=\sigma$：

$$
r_t=\rho^h+g+\rho(\rho-\rho^h)w_t-\rho w_t\sigma^2-\sigma^2(1-\rho w_t)=\rho^h+g+\rho(\rho-\rho^h)w_t-\sigma^2
$$

**Step 6　制約あり領域 → 式(60)**

$c\equiv\rho+m\rho^h$ とおく。$\alpha_t\pi_{R,t}=\sigma_{W,t}^2=\dfrac{\sigma^2}{w_t^2c^2}$（$\pi_{R,t}=\alpha_t\sigma_{R,t}^2$ と $\sigma_{W,t}=\alpha_t\sigma_{R,t}$ から）、$mf_t=\dfrac{m\sigma^2}{w_t^2c^2}\dfrac{1-cw_t}{1-\rho w_t}$、$\sigma-\rho w_t\sigma_{W,t}=\sigma\Big(1-\dfrac{\rho}{c}\Big)=\sigma\dfrac{m\rho^h}{c}$。Step 4 の最後の2項をまとめると

$$
\rho w_t\Big[\frac{\sigma^2}{w_t^2c^2}+\frac{m\sigma^2}{w_t^2c^2}\frac{1-cw_t}{1-\rho w_t}\Big]+\frac{\sigma^2m^2(\rho^h)^2}{c^2(1-\rho w_t)}=\frac{\sigma^2}{c^2(1-\rho w_t)}\Big[\frac{\rho}{w_t}\big(1+m-(\rho+mc)w_t\big)+m^2(\rho^h)^2\Big]
$$

括弧内を展開し、$\rho(\rho+mc)=\rho^2(1+m)+m^2\rho\rho^h$ を使うと

$$
\frac{\rho}{w_t}(1+m)-\rho^2(1+m)-m^2\rho\rho^h+m^2(\rho^h)^2=\rho\Big((1+m)\Big(\frac{1}{w_t}-\rho\Big)-m^2\rho^h\Big)+(m\rho^h)^2
$$

となり、式(60)に一致。

**確認**

$w_t=w^c$（$1/w^c=c$）では $(1+m)(c-\rho)-m^2\rho^h=(1+m)m\rho^h-m^2\rho^h=m\rho^h$、$1-\rho w^c=m\rho^h/c$ より、分数は $\dfrac{m\rho^h(\rho+m\rho^h)}{m\rho^h\,c}=1$。よって式(60)は式(59)と一致する（連続）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(17)(40)(43)(48)(52)(54)(58) | 消費則、価格、各均衡変数 |
| T1, T5, T7 | 伊藤の公式、オイラー方程式、代数整理 |
| 出力 | 式(56)〜(60) |

### A.10 例1・例2：相関と清算に敏感な資産（式(61)〜(64)）

**Step 1　第2資産の価格 → 式(62)**

推測：$\hat P_t/\hat D_t=P_t/D_t$。このとき $d\hat P_t/\hat P_t=dP_t/P_t+\hat\sigma\,d\hat Z_t$ なので、収益は $d\hat R_t=\dfrac{\hat D_t}{\hat P_t}dt+\dfrac{d\hat P_t}{\hat P_t}=dR_t+\hat\sigma\,d\hat Z_t$。この収益が専門家のオイラー方程式（式(50)(51)）を満たすことを確かめる（$\hat Z$ は $Z$ と直交するので、共分散と期待収益は $dR_t$ と同じ）。

**Step 2　相関 → 式(63)**

$\mathrm{Cov}(dR,d\hat R)=\sigma_{R,t}^2\,dt$、$\mathrm{Var}(d\hat R)=(\sigma_{R,t}^2+\hat\sigma^2)\,dt$ より

$$
\mathrm{corr}(dR_t,d\hat R_t)=\frac{\sigma_{R,t}^2}{\sigma_{R,t}\sqrt{\sigma_{R,t}^2+\hat\sigma^2}}=\frac{1}{\sqrt{1+(\hat\sigma/\sigma_{R,t})^2}}
$$

$\sigma_{R,t}$ について増加関数。

**Step 3　清算に敏感な資産 → 式(64)**

ペイオフ $X(W_T,D_T)=\mathbf{1}\{W_T\gt\underline{W}\}$ の時点0価格は、この経済の価格付けカーネルの下での現在価値で、制約あり領域では数値的に求める。$dQ_0(W_0,1)$ と $dR_t$ の瞬間共分散の符号が、金利効果（$W$ が下がる→金利が下がる→債券価格が上がる→負）と清算効果（$W_0$ が $\underline{W}$ に近づく→清算確率が上がる→正）の大小で切り替わる。

**確認**

制約なし領域では $\sigma_{R,t}=\sigma$ が定数で、相関も定数。$\hat\sigma=\sigma$ のとき相関は $1/\sqrt 2\approx 0.707$（原文の図8の水準と一致）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(49)(50)(51)(60) | リスク資産のボラティリティ、オイラー、金利 |
| T1, T5 | 伊藤の公式、オイラー方程式 |
| 出力 | 式(62)(63)、例2の定性的結果 |

### A.11 主要帰結と比較静学（式(65)）

**Step 1　式(65)の組み立て**

式(41)(42)(43)(48)(49)(52)(54)の制約あり領域の値を並べたもの。

**Step 2　$w_t$ に関する符号（T7）**

- $\alpha_t=\dfrac{1}{(1+m)\rho^hw_t}+\dfrac{\rho^h-\rho}{(1+m)\rho^h}$：$w_t$ の減少関数。
- $\sigma_{W,t}=\dfrac{\sigma}{w_t(m\rho^h+\rho)}$、$\sigma_{R,t}\propto\dfrac{1}{1+(\rho^h-\rho)w_t}$：ともに $w_t$ の減少関数。$\pi_{R,t}=\sigma_{R,t}\sigma_{W,t}$ は2つの正の減少関数の積なので減少。
- $f_t$：$\dfrac{1-cw}{1-\rho w}$ の微分は $\dfrac{-(c-\rho)}{(1-\rho w)^2}\lt 0$（$c=\rho+m\rho^h\gt\rho$）で、$1/w^2$ も減少。$w\lt w^c\lt 1/\rho$ で両者とも正なので、$f_t$ は減少し $w=w^c$ で $0$。
- $P_t/D_t$：傾き $1-\rho/\rho^h\gt 0$。

**Step 3　$m$ に関する比較静学**

制約効果：$w^c=(m\rho^h+\rho)^{-1}$ より $\partial w^c/\partial m=-\rho^h(m\rho^h+\rho)^{-2}\lt 0$。感応度効果：$\lvert d\alpha_t/dw_t\rvert=\dfrac{1}{(1+m)\rho^hw_t^2}$ で、式(43)から $1/w_t=\alpha_t(1+m)\rho^h-(\rho^h-\rho)$。$u\equiv(1+m)\rho^h$、$\delta\equiv\rho^h-\rho$ とおくと

$$
\Big\lvert\frac{d\alpha_t}{dw_t}\Big\rvert=\frac{(\alpha_tu-\delta)^2}{u}\ \Rightarrow\ \frac{d}{du}\Big[\frac{(\alpha_tu-\delta)^2}{u}\Big]=\frac{\alpha_t^2u^2-\delta^2}{u^2}
$$

$du/dm=\rho^h$ を使うと $\dfrac{\rho^h\big((1+m)^2\alpha_t^2-(1-\rho/\rho^h)^2\big)}{(1+m)^2}$。$\alpha_t\ge 1$、$0\lt 1-\rho/\rho^h\lt 1$ より正。

**確認**

$m=4$（$w^c=13.02$）と $m=6$（$w^c=9.07$）で $w^c$ は $m$ について減少し、原文の図2〜8の閾値と一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(41)〜(54) | 各均衡変数 |
| T7 | 商の微分、符号判定 |
| 出力 | 式(65)、比較静学の符号 |

### A.12 著者について

**Zhiguo He（何治国）**
- **アカデミックな経歴**: 清華大学（経済管理学院）で学士・修士（1999年学士、2001年修士）。Northwestern University の Kellogg School of Management で Finance の Ph.D.（2008年）。Princeton University 経済学部でポスドク（2007–08年）。University of Chicago Booth School of Business で教員（2008年助教授、2012年准教授、2015年教授、2019年から Fuji Bank and Heller Professor of Finance。2023年末まで）。2024年から Stanford University Graduate School of Business の James Irvin Miller Professor of Finance。NBER のファカルティ・リサーチ・アソシエイト。
- **主要な研究分野**: 金融仲介と金融危機、資産価格、契約理論、銀行・コーポレートファイナンス、中国の金融市場。
- **評判・学術的貢献**: Alfred P. Sloan Research Fellowship（2014年）、Lehman Brothers Fellowship for Research Excellence in Finance、Swiss Finance Institute Outstanding Paper Award、Journal of Finance の Dimensional Fund Advisors Distinguished Paper（2023年）、劉詩白経済学賞（2023年）などを受賞。Review of Asset Pricing Studies の編集者。Becker Friedman Institute China のディレクター（2020–2023年）を務めた。本論文のほか、Journal of Finance、Econometrica、American Economic Review 等に論文を発表している。

**Arvind Krishnamurthy**
- **アカデミックな経歴**: University of Pennsylvania で経済学と電気工学の学士。MIT で Ph.D.。Northwestern University の Kellogg School of Management で教員（1998–2014年）。2014年から Stanford University Graduate School of Business の John S. Osterweis Professor of Finance。Stanford Institute for Economic Policy Research（SIEPR）のシニア・フェロー、NBER のリサーチ・アソシエイト。MIT Sloan で Fischer Black Visiting Professor も務めた。
- **主要な研究分野**: 金融危機、金融仲介、金融政策（量的緩和等）、債券市場、住宅市場、金融規制、流動性危機。
- **評判・学術的貢献**: Smith Breeden Prize（Journal of Finance 掲載論文）、Western Finance Association Corporate Finance Award、Swiss Finance Institute Outstanding Paper Award などを受賞。2020年に Stanford GSB の PhD Faculty Distinguished Service Award。金融危機と金融政策に関する研究は、各国の中央銀行にも引用されている。

---

**© 2008 by Zhiguo He and Arvind Krishnamurthy. All rights reserved.** 本記事は NBER Working Paper No. 14366 "A Model of Capital and Crises"（2008年9月、2010年7月改訂）の数理モデルを整理した解説であり、原著作物の著作権は著者に帰属します。
{% endraw %}
