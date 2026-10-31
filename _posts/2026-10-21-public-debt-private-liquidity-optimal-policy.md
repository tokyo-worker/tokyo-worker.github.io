---
layout: post
title: "Angeletos–Collard–Dellas (2022) \"Public Debt as Private Liquidity: Optimal Policy\" 公的債務は民間の流動性（最適政策）：数理モデル"
date: 2026-10-21 00:00:00 +0900
categories: [マクロ経済学, 最適財政政策]
math: true
---

{% raw %}
# 公的債務は民間の流動性（最適政策）：数理モデル
### Angeletos–Collard–Dellas (2022) "Public Debt as Private Liquidity: Optimal Policy" の数理モデル早見表

---

## この記事で扱う論文

George-Marios Angeletos（MIT）、Fabrice Collard（トゥールーズ経済学院）、Harris Dellas（ベルン大学）の論文 **"Public Debt as Private Liquidity: Optimal Policy"**（2022年5月3日版ワーキングペーパー。2016年の "Optimal Public Debt Management and Liquidity Provision" の後継）を紹介します。

この論文は、国債が民間の担保やバッファーストックとして働く経済で、最適な財政政策がどうなるかを分析しています。国債を増やすと民間の金融摩擦が緩んで厚生が上がります。しかし、民間が国債に払うプレミアムが下がるので、政府の借入コストは上がります。論文は、このトレードオフが、長期の最適な債務水準、短期における税平滑化からの乖離、低金利が「安い借入」を意味する条件を決めると主張します。

> **この記事は、その論文の背景にある数理モデルだけを早見表にしたものです。** 論文の本文の解説や文献紹介は最小限にとどめ、簡約形のラムゼー問題、三つのミクロ的基礎、最適条件、位相図の分析、導出を、簡易化せず論文の設定のまま整理しています。

> **記号について**：論文は複数のモデルで同じ文字を別の意味に使っています（例：$A$、$\epsilon$、$\phi$、$\delta$、$\omega$、$\Omega$）。この記事では一つの記号に一つの意味を割り当てるため、一部を改めました。各節の記号表に、改めた記号の論文での表記を併記しています。

---

## 目次

- [1. 数理モデル](#sec1)
- [2. 説明できる現象](#sec2)
- [3. 整理している点](#sec3)
- [4. モデルの対象外](#sec4)
- [付録：導出手順](#appendix)

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間・情報構造**

主体は政府（ラムゼー計画者）と民間部門です。簡約形（1.1）は連続時間 $t\in[0,\infty)$ で、決定論的に書かれます。ミクロ的基礎の例（1.2、1.3、1.4）だけは離散時間です。第1.10節のショックは、予見されない一回限りの変化か、確率的な数値例で扱います。公的債務は無リスク債です（状態依存債務は第1.11節で扱います）。

**A0 （微分可能性）**

$U$、$V$、$\pi$ は連続微分可能です。ただし $V$ と $\pi$ は $b=b^{\mathrm{bliss}}$ で微分不可能（キンク）でもかまいません。第2のミクロ例では借入制約がこの点で拘束から非拘束に切り替わるためです。

**A1 （税の歪み）**

$U$ は $s$ について凹で、最大値を $s=0$ でとります。課税の歪みを Barro (1979) と同じ形で表します。

**A2 （流動性サービス）**

公的債務の量 $b$ が飽和点 $b^{\mathrm{bliss}}$ に達するまでは、債務の社会的限界価値 $V'(b)$ と民間のプレミアム $\pi(b)$ が正です。飽和点を超えると非正です。この仮定が、公的債務が担保・バッファーストック・ライフサイクル貯蓄の手段として本質的な役割を持つことを表します。外すと Barro (1979) の標準的なラムゼー問題に戻ります。

**B0 （飽和点以降の平坦性）**

$b\gt b^{\mathrm{bliss}}$ で $V'(b)=\pi(b)=0$ です。飽和点を超えた債務は害も益もありません（「無害な飽和」）。外して $V'$ と $\pi$ が負になるなら「有害な過剰」になります。

**B1 （社会的価値と私的価値の比）**

$b\lt b^{\mathrm{bliss}}$ で比 $V'(b)/\pi(b)$ が定数 $\eta$ です。$\eta=1$ は、私的価値と社会的価値が一致する（外部性がない）場合です。

**B2 （弾力性の単調性）**

弾力性 $\sigma(b)\equiv-\pi'(b)\,b/\pi(b)$ が $b\in(0,b^{\mathrm{bliss}})$ で増加します。これが債務ラッファー曲線 $\pi(b)b$ の単峰性を保証します。

**B3 （財政余地への需要）**

政府支出 $g$ が十分大きく、借入コストを下げることの影子価値が十分大きいとします。外すと、長期に飽和点（$b^{\ast}=b^{\mathrm{bliss}}$）が最適になる場合が出ます。

**正則条件**

$$
\underbrace{s\in[\underline{s},\bar s]}_{\text{税収の範囲}},\qquad
\underbrace{b\in[0,\bar b]}_{\text{債務の範囲}},\qquad
\underbrace{\bar b\equiv\frac{\bar s-g}{\rho}\gt0}_{\text{持続可能上限}},\qquad
\underbrace{b_0\in[0,\bar b)}_{\text{初期債務}}
\tag{1}
$$

> $\bar s\gt0$ はラッファー曲線の頂点（実現可能な最大税収）、$\underline{s}\le0$ は任意の下限です。$g$ と $\rho$ とあわせて固定パラメータで、内生変数は $s(t)$ と $b(t)$ の経路です。

### 1.1 簡約形の政策問題

**利子率と予算制約**

$$
r=\underbrace{\rho}_{\text{社会的割引率}}-\underbrace{\pi(b)}_{\text{流動性プレミアム}}
\tag{2}
$$

$$
\dot b=\underbrace{r\,b}_{\text{利払い}}+\underbrace{g}_{\text{政府支出}}-\underbrace{s}_{\text{税収}}
\tag{3}
$$

> 民間は公的債務の提供する流動性サービスに $\pi(b)$ を払うので、債務の利子率は社会的割引率 $\rho$ より $\pi(b)$ だけ低くなります。

**計画者問題**

$$
\max_{(s,b)\in\mathcal A}\ \int_0^{\infty}e^{-\rho t}\bigl[\underbrace{U(s)}_{\text{課税の費用}}+\underbrace{V(b)}_{\text{流動性の価値}}\bigr]dt
\tag{4}
$$

$$
\text{s.t.}\quad \dot b=\underbrace{(\rho-\pi(b))\,b}_{\text{利払い}}+g-s\quad\forall t,\qquad b(0)=b_0
\tag{5}
$$

> $\mathcal A\equiv[\underline{s},\bar s]\times[0,\bar b]$ です。Barro (1979) の問題に対して、公的債務が二つの経路で中立でなくなります。第一に、利子率が債務量に依存します（$\pi(b)$）。第二に、厚生が債務量に直接依存します（$V(b)$）。

**金利関数**

$$
R(b)\equiv\rho-\pi(b)
\tag{6}
$$

> 以後 $R(b)\,b=(\rho-\pi(b))\,b$ を利払い費と書きます。

| 記号・項目 | 意味 |
|---|---|
| $t$ | 時間（連続） |
| $s$ | 税収（税の歪みを測る制御変数） |
| $b$ | 公的債務の残高（状態変数） |
| $r$、$R(b)$ | 公的債務の利子率 |
| $g$ | 政府支出（時間不変） |
| $\rho$ | 社会的割引率 |
| $U(s)$ | 課税の社会的費用（A1） |
| $V(b)$ | 公的債務が提供するサービスの社会的価値（総量） |
| $\pi(b)$ | 民間がサービスに払うプレミアム（$V'$の市場上の対応物） |
| $\bar s$、$\underline{s}$ | 税収の上限（ラッファー曲線の頂点）、下限 |
| $\bar b$ | 持続可能な債務の上限 |
| $b_0$ | 初期債務 |
| $\mathcal A$ | 制御変数と状態変数の許容集合（論文の $\mathscr A$） |
| $b^{\mathrm{bliss}}$ | 飽和点（A2） |

### 1.2 ミクロ的基礎1：世代重複モデルと固有リスク

この節だけ離散時間 $t\in\{0,1,\dots\}$ です。二期間生きる家計が、若いとき働いて貯蓄し、老後に確率的な禀賦を受け取ります。貯蓄手段は政府が供給量を決める無リスク債だけです。

**家計の効用と予算制約**

$$
\mathcal U_{it}=\underbrace{c^{y}_{it}}_{\text{若年の消費}}-\underbrace{\nu(h_{it})}_{\text{労働の不効用}}+\underbrace{\delta\,\mathbb E_{it}\bigl[u(c^{o}_{it+1})\bigr]}_{\text{老年の期待効用}}
\tag{7}
$$

$$
c^{y}_{it}+q_t\,a_{it}=(1-\tau_t)\,w_t\,h_{it},\qquad c^{o}_{it+1}=e_{it+1}+a_{it}
\tag{8}
$$

> $e_{it+1}$ は老年の禀賦で、$i,t$ について独立同分布です。値 $k-\epsilon$ を確率 $\phi$、値 $k+\epsilon$ を確率 $1-\phi$ でとります（$k\gt0$、$\epsilon\in(0,k)$、$\phi\in(0,1)$）。$u'\gt0$、$u''\lt0$、$u'''\gt0$（危険回避と慎重性）、$\nu'\gt0$、$\nu''\gt0$、Inada 条件（$\lim_{c\to0}u'(c)=\lim_{h\to\infty}\nu'(h)=\infty$、$\lim_{c\to\infty}u'(c)=\lim_{h\to0}\nu'(h)=0$）を仮定します。

**生産・政府予算・計画者の目的**

$$
y_t=Z\,h_t,\qquad w_t=Z
\tag{9}
$$

$$
b_{t-1}+g=\underbrace{q_t\,b_t}_{\text{新規発行収入}}+\underbrace{\tau_t\,w_t\,h_t}_{\text{税収 }s_t}
\tag{10}
$$

$$
W\equiv\sum_{t=0}^{\infty}\beta^{t}\int \mathcal U_{it}\,di
\tag{11}
$$

> 代表的企業は収穫一定の技術で利潤ゼロです。$s_t\equiv\tau_t w_t h_t$ は税収です。$\beta\in(0,1)$ は社会的割引因子です。

**安全資産の需要**

$$
q_t=\delta\,\mathbb E_t\bigl[u'(c^{o}_{it+1})\bigr]=\delta\Bigl\{\underbrace{\phi\,u'(k-\epsilon+a_t)}_{\text{悪い禀賦}}+\underbrace{(1-\phi)\,u'(k+\epsilon+a_t)}_{\text{良い禀賦}}\Bigr\}
\tag{12}
$$

$$
q_t=Q(b_t;\epsilon,k)
\tag{13}
$$

> 債券市場の均衡 $a_t=b_t$ を代入して、(12) の右辺を $a_t$ の代わりに $b_t$ で書いた関数が $Q$ です。$Q$ は債券価格関数であり、資産需要の逆関数でもあります。

**命題1（需要の性質）**

$$
\underbrace{Q_b\lt0}_{\text{需要は右下がり}},\qquad\underbrace{Q_{\epsilon}\gt0}_{\text{リスクで需要増}},\qquad\underbrace{Q_{k}\lt0}_{\text{内部流動性で需要減}}
\tag{14}
$$

> $k$ は内部流動性（民間が自力で作る安全資産）の代理変数です。

**社会的価値**

$$
c^{y}_{t}=Z\,h_t-b_{t-1}
\tag{15}
$$

$$
W=\sum_{t=0}^{\infty}\beta^{t}\Bigl\{Z h_t-\nu(h_t)+V(b_t)\Bigr\}+C_0,\qquad
V(b)\equiv\underbrace{\phi\,\delta\,u(k-\epsilon+b)+(1-\phi)\,\delta\,u(k+\epsilon+b)}_{\text{老年の期待効用}}-\underbrace{\beta\,b}_{\text{若年の消費の減少}}
\tag{16}
$$

> $C_0$ は政策に依存しない定数です。（補足）論文は (16) の最終項を $\beta^{-1}b$ と書いていますが、(15) と $\sum_t\beta^t(-b_{t-1})$ の計算、および $V'=\pi$ との整合から $\beta b$ と読み替えました（導出は付録A.2）。(15) では政府支出 $g$ が定数として $C_0$ に入ります。

**簡約形への対応**

$$
\pi(b)\equiv Q(b;\epsilon,k)-\beta=V'(b),\qquad Q\bigl(b^{\mathrm{bliss}}\bigr)=\beta
\tag{17}
$$

> 私的価値と社会的価値は一致します（$\pi=V'$）。$Q(0)\gt\beta$ となる十分なリスク（$\epsilon$ が $k$ に近い）があれば、$b^{\mathrm{bliss}}\gt0$ が存在します。$b\gt b^{\mathrm{bliss}}$ では $V'=\pi\lt0$（老年の消費の過剰）で、A2 を満たします。

**税の費用関数**

$$
U(s)\equiv Z\,h-\nu(h)\quad\text{where}\quad s=h\,\bigl(Z-\nu'(h)\bigr)
\tag{18}
$$

> （補足）論文は「$U(s)$ は税収 $s$ のもとで均衡の消費と労働から得る効用」とだけ述べ、A1 を満たすと言っています。(18) はその記述を具体化した式です。労働の FOC $\nu'(h)=(1-\tau)Z$ と $s=\tau Z h$ から導きます。

**命題2（離散時間の計画問題）**

$$
\max_{\{s_t,\,b_t\}_{t=0}^{\infty}}\ \sum_{t=0}^{\infty}\beta^{t}\bigl[U(s_t)+V(b_t)\bigr]
\tag{19}
$$

$$
\text{s.t.}\quad Q(b_t)\,b_t=b_{t-1}+g-s_t
\tag{20}
$$

> 最適な税と債務の経路はこの問題を解き、簡約形（1.1）に含まれます。公的債務はここで、家計の予備的貯蓄の対象（バッファーストック）であると同時に、若年と老年の消費配分を調整する手段（Diamond 1965）でもあります。

| 記号・項目 | 意味 |
|---|---|
| $i$、$t$ | 家計の識別子、出生日（離散時間） |
| $\mathcal U_{it}$ | 家計の生涯効用（論文の $U_{it}$。簡約形の $U(s)$ と区別するため改名） |
| $c^{y}_{it}$、$c^{o}_{it+1}$ | 若年・老年の消費 |
| $h_{it}$、$a_{it}$ | 労働供給、無リスク債への貯蓄（均衡では $a_t=b_t$） |
| $q_t$ | 債券価格（粗利子率の逆数） |
| $w_t$、$Z$ | 賃金、労働生産性（論文の $A$。仮定ラベル A0〜A2 と区別するため改名） |
| $\tau_t$ | 労働所得税率 |
| $e_{it+1}$ | 老年の禀賦（$k-\epsilon$ または $k+\epsilon$） |
| $k$ | 安全な禀賦（内部流動性の代理） |
| $\epsilon$ | 禀賦リスクの大きさ（ミクロ例1） |
| $\phi$ | 悪い禀賦の確率 |
| $\delta$ | 個人の割引因子 |
| $\beta$ | 社会的割引因子 |
| $u$、$\nu$ | 消費の効用関数、労働の不効用関数 |
| $Q(b)$ | 債券価格関数（資産需要の逆関数） |
| $C_0$ | 政策に依存しない定数（論文の $\zeta$） |

### 1.3 ミクロ的基礎2：担保制約（Holmström–Tirole 型）

無限期間の変種です。公的債務は担保として働きます。各期は「午前」と「午後」に分かれます。午前の財は樹木の果実（外生）で、午後の財は企業が労働から作ります。各財はその半期のうちに消費しないと腐ります。

**家計の効用と予算制約**

$$
\mathbb E_0\sum_{t=0}^{\infty}\beta^{t}\Bigl\{c_{it}+\theta_{it}\log x_{it}-\nu(h_{it})\Bigr\}
\tag{21}
$$

$$
c_{it}+p_t\,x_{it}+q_t\,a_{it}=a_{it-1}+(1-\tau_t)\,w_t\,h_{it}+p_t\,e_{it}
\tag{22}
$$

> $c_{it}$ は午後の財（標準的な消費財）、$x_{it}$ は午前の財の消費、$p_t$ は午前の財の価格、$\theta_{it}$ は午前の財への選好、$e_{it}$ は午前の財の禀賦です。特異な状態は2つで、確率 $\varphi$ で $(\theta_{it},e_{it})=(1+\vartheta,0)$（高い選好・禀賦なし）、確率 $1-\varphi$ で $(\theta_{it},e_{it})=(1,\,1/(1-\varphi))$（低い選好・正の禀賦）です（$\varphi,\vartheta\in(0,1)$）。

**担保制約**

$$
z_{it}\equiv p_t\,(x_{it}-e_{it})\ \le\ \underbrace{\xi\,y^{\mathrm{def}}_t}_{\text{民間の内部担保}}+\underbrace{a_{it-1}}_{\text{保有する無リスク債}}
\tag{23}
$$

> $z_{it}\gt0$ の家計は、午後の労働所得を引き当てに IOU を発行して午前の財を買う借り手です。借り手が約束を破ると、貸し手は労働所得の割合 $\xi\in(0,1)$ と全資産を差し押さえられます。$y^{\mathrm{def}}_t=w_t h^{\mathrm{def}}_t$、$h^{\mathrm{def}}_t=(\nu')^{-1}(w_t)$ は債務不履行時の所得（税なし）です。右辺の $a_{it-1}$ が、公的債務が担保として働く経路です。民間の内部担保が乏しいこと（$\xi$ がある閾値より小さいこと）が制約が拘束する条件です。計画者の目的は、ベールの背後の効用（(21) を無作為な $i$ で評価）です。

**命題3（簡約形への対応）**

$$
\text{(i)}\ \text{命題2が拡張される，A0〜A2が成立}\qquad
\text{(ii)}\ \begin{cases}\pi(b)\gt V'(b)\gt0 & b\lt b^{\mathrm{bliss}}\\ \pi(b)=V'(b)=0 & b\gt b^{\mathrm{bliss}}\end{cases}
\tag{24}
$$

> $b\lt b^{\mathrm{bliss}}$ では制約が拘束し、私的価値が社会的価値を上回ります（$\pi\gt V'$）。理由は午前の財の価格 $p_t$ を通じた金銭的外部性です。各家計は、自分の担保が価格を押し上げて他の家計の制約を引き締めることを内部化しません。$b^{\mathrm{bliss}}$ と $b\lt b^{\mathrm{bliss}}$ での $\pi$ は、リスク $\vartheta$ とともに上がり、担保 $\xi$ とともに下がります。

**閉形式（$\log$ 効用・正規化 $\bar\xi\equiv\xi\,y^{\mathrm{def}}$）**

配分の第一最善 $(x^{\ast}_H,x^{\ast}_L)$ と飽和点：

$$
x^{\ast}_H=\frac{1+\vartheta}{1+\varphi\vartheta},\qquad
x^{\ast}_L=\frac{1}{1+\varphi\vartheta},\qquad
\underbrace{b^{\mathrm{bliss}}=1+\vartheta-\bar\xi}_{\text{飽和点}}
\tag{25}
$$

制約が拘束する領域（$b\lt b^{\mathrm{bliss}}$）の均衡。ここで $\Delta_b\equiv b^{\mathrm{bliss}}-b$ です：

$$
\begin{aligned}
x_H&=\frac{1+\vartheta-\Delta_b}{1+\varphi\vartheta-\varphi\Delta_b},\qquad
x_L=\frac{1}{1+\varphi\vartheta-\varphi\Delta_b},\\
\mu&=\underbrace{\frac{\Delta_b}{1+\vartheta-\Delta_b}}_{\text{制約の乗数}},\qquad
p=\underbrace{1+\varphi\vartheta-\varphi\Delta_b}_{\text{午前の財の価格}}
\end{aligned}
\tag{26}
$$

プレミアムと社会的価値：

$$
\pi(b)=\begin{cases}\beta\varphi\,\dfrac{\Delta_b}{1+\vartheta-\Delta_b} & b\lt b^{\mathrm{bliss}}\\[2mm] 0 & b\ge b^{\mathrm{bliss}}\end{cases}
\tag{27}
$$

$$
V(b)=\begin{cases}\beta\Bigl[\varphi(1+\vartheta)\log\bigl(1+\vartheta-\Delta_b\bigr)-(1+\varphi\vartheta)\log\bigl(1+\varphi\vartheta-\varphi\Delta_b\bigr)\Bigr] & b\lt b^{\mathrm{bliss}}\\[2mm] V_{\mathrm{bliss}}\equiv\beta\Bigl[\varphi(1+\vartheta)\log(1+\vartheta)-(1+\varphi\vartheta)\log(1+\varphi\vartheta)\Bigr] & b\ge b^{\mathrm{bliss}}\end{cases}
\tag{28}
$$

金銭的外部性の大きさ：

$$
V'(b)=\pi(b)+\underbrace{\upsilon(b)}_{\text{外部性}},\qquad
\upsilon(b)\equiv-\frac{\beta\varphi^{2}\,\Delta_b}{1+\varphi\vartheta-\varphi\Delta_b}\ \lt0
\tag{29}
$$

> 論文は $\bar\xi$ を単に $\xi$ と書いています。ここでは民間の内部担保の水準を $\bar\xi\equiv\xi y^{\mathrm{def}}$ と書いて、割合 $\xi$ と区別します。

**補題6・補題7・命題16（閉形式の性質）**

$$
b\lt b^{\mathrm{bliss}}:\ \ \pi'\lt0,\ \pi''\gt0,\ V'\gt0,\ V''\lt0,\ \pi\gt V'\ ;\qquad
\frac{\partial b^{\mathrm{bliss}}}{\partial\vartheta}\gt0,\ \ \frac{\partial b^{\mathrm{bliss}}}{\partial\bar\xi}\lt0
\tag{30}
$$

$$
0\lt b^{\mathrm{seig}}\lt b^{\ast}\lt b^{\mathrm{bliss}},\qquad
\frac{\partial b^{\ast}}{\partial\vartheta}\gt0,\quad
\frac{\partial b^{\ast}}{\partial\lambda}\lt0,\quad
\frac{\partial b^{\ast}}{\partial\bar\xi}\ \text{は一般に非単調（逆U字，数値）}
\tag{31}
$$

> $\pi(b)\,b$ と $\Omega(b,\lambda)$ はこの例で $[0,b^{\mathrm{bliss}}]$ 上厳密に凹です（$\Omega$ は1.6で定義）。リスクが大きいほど最適な債務は多く、財政余地の価値 $\lambda$ が大きいほど少なくなります。内部担保 $\bar\xi$ の増加は、公的担保を一部押し出しますが（$b^{\ast}$ が下がりうる）、総担保 $b^{\ast}+\bar\xi$ は常に増えます（完全なクラウドアウトはない）。

| 記号・項目 | 意味 |
|---|---|
| $x_{it}$、$c_{it}$ | 午前の財・午後の財の消費 |
| $\theta_{it}$、$e_{it}$ | 午前の財への選好、午前の財の禀賦 |
| $p_t$ | 午前の財の価格 |
| $z_{it}$ | 午前の財の純取引額（IOUでの純借入） |
| $\xi$、$y^{\mathrm{def}}_t$ | 差し押さえ可能な所得の割合、債務不履行時の所得 |
| $\bar\xi$ | 内部担保の水準 $\xi y^{\mathrm{def}}$（論文の閉形式での $\xi$） |
| $\varphi$ | 高い選好の家計の割合（論文の $\phi$。ミクロ例1の $\phi$ と区別するため改名） |
| $\vartheta$ | 選好のばらつき（論文の $\epsilon$。ミクロ例1の $\epsilon$ と区別するため改名） |
| $\mu_t$ | 担保制約の乗数 |
| $x^{\ast}_H$、$x^{\ast}_L$ | 第一最善の午前の財の配分（高・低選好） |
| $\Delta_b$ | 飽和点までの距離 $b^{\mathrm{bliss}}-b$ |
| $\upsilon(b)$ | 金銭的外部性（$V'$ と $\pi$ の差） |
| $V_{\mathrm{bliss}}$ | 飽和点以上での社会的価値 |

### 1.4 ミクロ的基礎3：生産面の摩擦（企業家モデル，付録A）

担保制約が、企業間の資本と労働の配分を妨げるモデルです。公的債務が経済全体の生産関数に入ります。簡約形は少し複雑になります。

**家計・企業家・制約**

$$
\underbrace{c_{it}-\nu(h_{it})}_{\text{期ごとの効用}},\qquad
y_{it}=\varsigma_{it}\,f(\kappa^{\mathrm u}_{it},n_{it}),\qquad
\kappa_{it}=(1-\delta_k)\,\kappa_{it-1}+\iota_{it-1}
\tag{32}
$$

$$
z_{it}\equiv p^{k}_t\bigl(\kappa^{\mathrm u}_{it}-\kappa_{it}\bigr)\ \le\ \Phi+a_{it}+\zeta_K\,\kappa^{\mathrm u}_{it}+\zeta_Y\,y_{it},\qquad
a_{it+1}\le\Phi+\kappa_{it+1}
\tag{33}
$$

> 各家計は、労働を供給する「労働者」と、私的企業を運営する「企業家」で構成されます。$f$ は強増加かつ強凹です。使用する資本 $\kappa^{\mathrm u}_{it}$ は、事前に決まる保有資本 $\kappa_{it}$ と異なってよく、企業家同士で資本を賃借できます。ただし $\kappa^{\mathrm u}_{it}\gt\kappa_{it}$ の企業家は、短期 IOU $z_{it}$ で借りなければなりません。担保として、定額 $\Phi$、無リスク資産 $a_{it}$、使用資本の割合 $\zeta_K$、予想所得の割合 $\zeta_Y$ を差し出せます。午後は、純資産が $\Phi$ を下回らない範囲で借りられます。

**命題8（一般化された計画問題）**

$$
\max_{\{\tau_t,\,b_t\}_{t=0}^{\infty}}\ \sum_{t=0}^{\infty}\beta^{t}\,\mathcal W(\tau_t,b_t)
\tag{34}
$$

$$
\text{s.t.}\quad \mathcal Q(\tau_{t+1},b_{t+1})\,b_{t+1}=b_t+g-\mathcal S(\tau_t,b_t)
\tag{35}
$$

> $\mathcal W$、$\mathcal Q$、$\mathcal S$ はそれぞれ期ごとの厚生、公的債務の市場価格、税収（基礎的財政収支に関わる項）を表す関数です。$\mathcal W$ は、計画者が $(\tau_t,b_t)$ を与えて、労働・資本・資産保有の横断面配分と総供給を最適化したときの厚生として定義されます。$\mathcal Q$ はその最良の実装可能配分を支える利子率、$\mathcal S$ はそれが生む税収です。これらが $b$ に依存するのは、$b$ が金融摩擦を制御するからです。2つの歪み（税と摩擦）は、厚生・金利・課税ベースに非分離的に効きます。このモデルでは $\tau$ と $s$ の対応が一対一でないため、税率 $\tau$ を制御変数にします。

**連続時間の対応物**

$$
\max\ \int_0^{\infty}e^{-\rho t}\,\mathcal W(\tau,b)\,dt\quad
\text{s.t.}\quad\dot b=\bigl[\rho-\pi(\tau,b)\bigr]b+g-\mathcal S(\tau,b),\quad b(0)=b_0
\tag{36}
$$

> $\mathcal W$、$\mathcal S$、$\pi$ は $(\tau,b)$ について連続微分可能とします。飽和点 $b^{\mathrm{bliss}}(\tau)$ が存在して、$b\lt b^{\mathrm{bliss}}(\tau)$ なら $\rho\gt\pi(\tau,b)\gt0$ かつ $\mathcal W_b\gt0$、$b\ge b^{\mathrm{bliss}}(\tau)$ なら $\pi(\tau,b)=\mathcal W_b=0$ とします。飽和点が税率に依存してもかまいません。

**一般化された「流動性＋レント」と力学系**

$$
b^{\mathrm{seig}}(\tau)\equiv\arg\max_b\bigl\{\pi(\tau,b)\,b+\mathcal S(\tau,b)\bigr\},\qquad
\Omega(b,\lambda)\equiv\max_{\tau}\Bigl\{\mathcal W(\tau,b)+\lambda\bigl[\pi(\tau,b)\,b+\mathcal S(\tau,b)\bigr]\Bigr\}
\tag{37}
$$

$$
\dot\lambda=\Gamma(b,\lambda)\equiv\Omega_b(b,\lambda),\qquad
\dot b=\Psi(b,\lambda)\equiv\bigl[\rho-\pi(\mathcal T(\lambda),b)\bigr]b-\mathcal S(\mathcal T(\lambda),b)
\tag{38}
$$

> ここで $\mathcal T(\lambda)\equiv\arg\max_{\tau}\{\mathcal W(\tau,b)+\lambda[\pi(\tau,b)b+\mathcal S(\tau,b)]\}$ です。（補足）論文の (38) の $\dot b$ の式は $g$ の項を明示していません。(36) の予算制約に従えば $\dot b=[\rho-\pi]b+g-\mathcal S$ の形で、$g$ を $\Psi$ に含めて読むのが自然です。ここでは論文の表記のままにしています。$[\pi(\tau,b)b+\mathcal S(\tau,b)]$ が単峰であれば、位相図は1.8と同じ3領域 L・M・H に分かれます。境界（$b^{\mathrm{seig}}$、$b^{\mathrm{bliss}}$）が税率、すなわち $\lambda$ に依存して曲がります。

| 記号・項目 | 意味 |
|---|---|
| $\varsigma_{it}$ | 企業家の固有の生産性ショック（論文の $\theta_{it}$。ミクロ例2の $\theta$ と区別するため改名） |
| $f$ | 生産関数（強増加・強凹） |
| $\kappa_{it}$、$\kappa^{\mathrm u}_{it}$ | 保有資本、使用資本（論文の $k_{it}$） |
| $n_{it}$ | 雇用 |
| $\delta_k$、$\iota_{it}$ | 資本減耗率（論文の $\delta$）、投資 |
| $p^{k}_t$ | 資本のレンタル率（論文の $p_t$） |
| $\Phi$ | 担保として差し出せる定額、純資産の下限（論文の $\varphi$） |
| $\zeta_K$、$\zeta_Y$ | 担保にできる資本・所得の割合（論文の $\xi_k$、$\xi_y$） |
| $\mathcal W$、$\mathcal Q$、$\mathcal S$ | 期ごとの厚生、債務価格、税収の関数（論文の $W$、$Q$、$S$） |
| $\mathcal T(\lambda)$ | 税率の最適政策関数 |
| $\Gamma$、$\Psi$ | $\dot\lambda$、$\dot b$ を決める関数 |

### 1.5 拡張：資本蓄積との関係

**資本のクラウドアウト（命題7）**

1.2 の例で、無リスク資産に政府債と物理資本（若年が利用できる貯蔵技術）の2種類を許します。若年が $j$ 単位の最終財を投資すると、老年に $k=f_{\mathrm s}(j)$ 単位を得ます。$f_{\mathrm s}'\gt0$、$f_{\mathrm s}''\lt0$、$f_{\mathrm s}(0)=0$ です。

$$
V(b)\equiv\max_{k}\Bigl\{\phi\,\delta\,u(k-\epsilon+b)+(1-\phi)\,\delta\,u(k+\epsilon+b)-\underbrace{f_{\mathrm s}^{-1}(k)}_{\text{投資の費用}}-\beta\,b\Bigr\}
\tag{39}
$$

> 均衡の資本量はこの最大化問題の解です。債務の発行が増えると、民間の資本が押し出されます（クラウドアウト、Diamond 1965、Aiyagari–McGrattan 1998）。無リスク資産が2種類あっても外部性は生じないので $\pi=V'$ は保たれ、命題2も（$V$ の置き換えを除いて）成り立ちます。クラウドアウトは債務発行の費用や便益の別個の要素ではなく、$\pi$ と $V$ の中に含まれます。論文は、第2例に資本を加えても同様だと述べます（この点は以前の版で示されたもので、本稿では扱わない）。1.4 の企業家モデルでは、債務が生産効率を高めて資本をクラウドインする場合があります（論文の数値例）。

| 記号・項目 | 意味 |
|---|---|
| $j$ | 若年の貯蔵投資 |
| $f_{\mathrm s}$ | 貯蔵技術（論文の $f$。企業家モデルの生産関数 $f$ と区別するため改名） |
| $k$ | 貯蔵から得る老年の安全な禀賦（内生化された $k$） |

### 1.6 最適政策の中核：流動性提供と金利抑制のトレードオフ（二期間版）

最初の直観を、二期間の問題で作ります。債務は $t=0$ にゼロで、$t=1$ に発行した債務は $t=2$ に返済します。

**二期間の計画問題**

$$
\max_{s_1,\,b_1,\,s_2}\ \Bigl\{U(s_1)+V(b_1)+\beta\,U(s_2)\Bigr\}\quad
\text{s.t.}\quad Q(b_1)\,b_1+s_1=g_1,\quad s_2=g_2+b_1
\tag{40}
$$

**最適な債務発行**

$$
b^{\ast}=\arg\max_{b_1}\Bigl\{\underbrace{\lambda_1\,Q(b_1)\,b_1}_{\text{1期の予算緩和}}+\underbrace{V(b_1)}_{\text{摩擦の緩和}}-\underbrace{\beta\,\lambda_2\,b_1}_{\text{2期の返済の税}}\Bigr\}
\tag{41}
$$

> $\lambda_1$ と $\beta\lambda_2$ は2本の予算制約のラグランジュ乗数です。

**完全な税平滑化（$\lambda_1=\lambda_2=\lambda$）と $Q=\beta+\pi$ の代入**

$$
b^{\ast}=\arg\max_b\ \Omega(b,\lambda),\qquad
\Omega(b,\lambda)\equiv\underbrace{V(b)}_{\text{流動性サービスの価値}}+\underbrace{\lambda\,\pi(b)\,b}_{\text{レントの影子価値}}
\tag{42}
$$

> $\pi(b)b$ は、金融摩擦が国債金利を割引率より低く保つことで政府が得る「レント（シニョリッジ）」です。国債の量に対するこの曲線を「債務ラッファー曲線」と呼びます。政府の借入が「安い」とは、このレントが正であることを指します。

**債務ラッファー曲線のピークと順序**

$$
b^{\mathrm{seig}}\equiv\arg\max_b\ \pi(b)\,b,\qquad
b^{\mathrm{bliss}}\equiv\arg\max_b\ V(b),\qquad
0\lt b^{\mathrm{seig}}\lt b^{\ast}\lt b^{\mathrm{bliss}}\ \ (\lambda\in(0,\infty))
\tag{43}
$$

> A2 より、$b\in(0,b^{\mathrm{bliss}})$ で $\pi(b)b\gt0$、それ以外で $\le0$ です。したがって $b^{\mathrm{seig}}$ は正かつ飽和点より小さくなります。財政への関心 $\lambda$ が強いほど、$b^{\ast}$ は $b^{\mathrm{seig}}$ に近づきます。$\pi$ が $b$ に依存しない（$0$ または正の定数）なら $b^{\ast}=b^{\mathrm{bliss}}$ となり、$\lambda$ がいくら大きくても飽和が最適です。したがって、流動性を増やす限界費用は増税ではなく**金利の上昇**です。

| 記号・項目 | 意味 |
|---|---|
| $s_1$、$s_2$ | 1期・2期の税収 |
| $g_1$、$g_2$ | 1期・2期の政府支出 |
| $b_1$ | 1期に発行する債務 |
| $\lambda_1$、$\beta\lambda_2$ | 予算制約の乗数（税の歪みの影子価値） |
| $\Omega(b,\lambda)$ | 流動性の価値とレントの合計（「流動性＋シニョリッジ」） |
| $b^{\mathrm{seig}}$ | レントを最大にする債務量 |
| $b^{\ast}$ | 最適な債務（二期間版）、後に長期の定常状態 |

### 1.7 連続時間の最適条件

**ハミルトニアンと税の条件**

$$
H(s,b,\lambda)=U(s)+V(b)+\lambda\bigl[s-R(b)\,b-g\bigr]=U(s)+\lambda\bigl[s-\rho\,b-g\bigr]+\Omega(b,\lambda)
\tag{44}
$$

$$
\lambda=-U'(s)
\tag{45}
$$

> $\lambda$ は予算制約の余り $s-R(b)b-g=-\dot b$ にかかる乗数で、税の歪み、すなわち税収の影子価値を測ります。$\Omega(b,\lambda)$ は 1.6 と同じ定義です。

**オイラー条件（余状態の運動）**

$$
\dot\lambda=\rho\lambda+H_b=\underbrace{\Omega_b(b,\lambda)}_{\text{債務の純効果}}
\tag{46}
$$

$$
\dot\lambda=V'(b)-\lambda\,\pi(b)\,\bigl(\sigma(b)-1\bigr),\qquad
\sigma(b)\equiv-\frac{\pi'(b)\,b}{\pi(b)}\ \ge0
\tag{47}
$$

> $\sigma$ は流動性プレミアムの債務量に対する弾力性です。$V'=\pi=0$ なら $\dot\lambda=0$、つまり $\lambda$ と税が一定になります（Barro の税平滑化）。それ以外では、$\dot\lambda\ne0$ が税平滑化からの乖離を意味します。定常状態は $\Omega_b=0$ に帰着します（二期間の直観と同じ）。$\Omega_b\gt0$ のとき債務を増やす価値があり、それには明日の税を今日より上げる必要があります。税の時間的な傾斜は厚生に響くので、税平滑化の動機は定常状態への調整費用として働きます。

**$\dot\lambda=0$ の軌跡を決める関数**

$$
\mathcal D\equiv\bigl\{b\in[\underline b,b^{\mathrm{bliss}}):\sigma(b)\ne1\bigr\},\qquad
\gamma(b)\equiv\frac{V'(b)}{\pi(b)\,\bigl(\sigma(b)-1\bigr)}\ \ (b\in\mathcal D)
\tag{48}
$$

$$
\dot\lambda=\begin{cases}V'(b)\Bigl[1-\dfrac{\lambda}{\gamma(b)}\Bigr] & b\in\mathcal D\\[2mm] 0 & b\notin\mathcal D\end{cases}
\tag{49}
$$

> $b\in\mathcal D$ では $\dot\lambda=0\iff\lambda=\gamma(b)$ です。$b\notin\mathcal D$ では任意の $\lambda$ で $\dot\lambda=0$ です。$\underline b$ は債務の下限（資産保有を許す）で、付録Bでは $[\underline b,\bar b)$ 上で分析します。

**予算制約と $\dot b=0$ の軌跡**

$$
\dot b=\Psi(b,\lambda)\equiv\bigl(\rho-\pi(b)\bigr)b+g-s(\lambda),\qquad
\Psi\bigl(b,\psi(b)\bigr)=0
\tag{50}
$$

$$
\frac{d\,[\pi(b)\,b]}{db}=\pi'(b)\,b+\pi(b)=-\bigl(\sigma(b)-1\bigr)\,\pi(b)
\tag{51}
$$

> $s(\lambda)$ は最適な税収で、$\lambda=-U'(s)$ を $s$ について解いたものです。ラッファー曲線の上昇側では $\lambda$ の増加関数です。$\dot b=0\iff\lambda=\psi(b)$ で、$\lambda\gt\psi(b)$ なら $\dot b\lt0$、$\lambda\lt\psi(b)$ なら $\dot b\gt0$ です。(51) より、$\sigma=1$ は債務ラッファー曲線の臨界点にあたります。

| 記号・項目 | 意味 |
|---|---|
| $H$ | ハミルトニアン |
| $\lambda$ | 余状態（税の歪みの影子価値、$\lambda=-U'(s)$） |
| $R(b)$ | 金利関数 $\rho-\pi(b)$ |
| $\Omega(b,\lambda)$ | 流動性の価値とレントの合計 |
| $\sigma(b)$ | $\pi$ の債務に対する弾力性 |
| $\gamma(b)$ | $\dot\lambda=0$ をみたす $\lambda$ の値（流動性とレントが釣り合う $\lambda$） |
| $\mathcal D$ | $\gamma$ の定義域（論文の $\Delta$。判別式と区別するため改名） |
| $s(\lambda)$ | 最適な税収（論文の $s(\lambda)$、$S(\lambda)$） |
| $\Psi(b,\lambda)$ | $\dot b$ を与える関数 |
| $\psi(b)$ | $\dot b=0$ をみたす $\lambda$ の値 |
| $\underline b$ | 債務の下限（資産保有を許す場合） |

### 1.8 最適経路の完全な特徴づけ（位相図とSkiba点）

$V$ と $\pi(b)b$ が凹でも、飽和点の近傍では $\pi(b)b$ が正からゼロに切り替わるため非凹になります。そのためオイラー条件と横断性条件をみたす局所最大の経路が複数ありえ、大域最大を決めるには Skiba (1978) の方法が必要です。以下は補助仮定 B0〜B3 のもとでのベンチマークです。

**補題1（$\dot b=0$ の軌跡）**

$$
\psi\ \text{は連続かつ狭義増加},\qquad\psi(\underline b)=0,\qquad\lim_{b\to\bar b}\psi(b)=+\infty
\tag{52}
$$

**補題2（$\dot\lambda=0$ の軌跡）**

B0〜B2 のもとで $\mathcal D=[\underline b,b^{\mathrm{seig}})\cup(b^{\mathrm{seig}},b^{\mathrm{bliss}})$ です。B1 の比 $\eta$ を使うと

$$
\gamma(b)=\frac{\eta}{\sigma(b)-1},\qquad
\gamma\lt0\ \text{かつ減少}\ (b\lt b^{\mathrm{seig}}),\quad
\gamma\gt0\ \text{かつ減少}\ (b\gt b^{\mathrm{seig}}),\quad
\gamma\to\mp\infty\ (b\uparrow\text{または}\downarrow b^{\mathrm{seig}})
\tag{53}
$$

> B1 は $V'=\eta\,\pi$ を意味するので $\gamma=\eta/(\sigma-1)$ と簡単に書けます（論文は比例関係を使って符号と単調性を示します）。B2 より $\sigma$ は増加し、$b^{\mathrm{seig}}$ で $\sigma=1$ と交わります。

**補題3（交点）**

$\gamma_{\mathrm{bliss}}\equiv\lim_{b\uparrow b^{\mathrm{bliss}}}\gamma(b)$ と $\psi_{\mathrm{bliss}}\equiv\psi(b^{\mathrm{bliss}})$ を定義します。

$$
\gamma_{\mathrm{bliss}}\gt\psi_{\mathrm{bliss}}\ \Rightarrow\ \text{交点なし},\qquad
\gamma_{\mathrm{bliss}}\lt\psi_{\mathrm{bliss}}\ \Rightarrow\ \text{ちょうど1点で交わる（}b^{\ast}\in(b^{\mathrm{seig}},b^{\mathrm{bliss}})\text{）}
\tag{54}
$$

**位相図の3領域**

| 領域 | 範囲 | $\dot\lambda$ の符号 | 定常状態 |
|---|---|---|---|
| L | $b\lt b^{\mathrm{seig}}$ | $\Omega_b\gt0$ なので $\dot\lambda\gt0$（$\lambda\ge0$ の範囲で $\gamma\lt0$，軌跡なし） | なし |
| M | $b^{\mathrm{seig}}\lt b\lt b^{\mathrm{bliss}}$ | $\lambda\gt\gamma(b)$ で $\dot\lambda\lt0$、$\lambda\lt\gamma(b)$ で $\dot\lambda\gt0$ | $\gamma=\psi$ の交点 $(b^{\ast},\lambda^{\ast})$ |
| H | $b\gt b^{\mathrm{bliss}}$ | $V'=\pi=0$ なので任意の $\lambda$ で $\dot\lambda=0$ | $\dot b=0$ 上の連続体（Barro 型） |

**補題5（財政余地と交点の存在）**

$$
\psi_{\mathrm{bliss}}\gt\gamma_{\mathrm{bliss}}\ \iff\ g\gt\hat g\quad(\text{ある閾値 }\hat g,\ \text{負でもよい})
\tag{55}
$$

**命題9（長期の債務水準）**

$$
\exists!\,b^{\ast}\in(\underline b,b^{\mathrm{bliss}}]:\ \forall\,b_0\lt b^{\mathrm{bliss}},\ \text{最適債務は }b^{\ast}\text{ に単調収束};\qquad
b^{\ast}\lt b^{\mathrm{bliss}}\iff g\gt\hat g
\tag{56}
$$

> B3 は $g\gt\hat g$ と同値です。$g\lt\hat g$ では $b^{\ast}=b^{\mathrm{bliss}}$（飽和が最適、命題10）になります。

**Skiba の補題（補題4）：候補経路の価値**

$$
\text{値}(b_0,\lambda_0)=\frac{H(b_0,\lambda_0)}{\rho},\qquad
H\ \text{は }\lambda\text{ について狭義凸},\qquad
H_\lambda=-\dot b
\tag{57}
$$

> $H(b,\lambda)$ は $s$ を最適化した後のハミルトニアンです。$\lambda$ について線形な関数の上側包絡線なので凸です。候補経路が複数あるとき、最適経路の初期 $\lambda_0$ は集合 $\Lambda_0(b_0)$ の最大値か最小値のどちらかです。論文は $H_\lambda=\dot b$ と書いていますが、この $H$ の定義では $H_\lambda=s-R(b)b-g=-\dot b$ です。凸性を使う結論は変わりません。

**Skiba 閾値の構成**

$$
\lambda^{\mathrm{skiba}}\in(\psi_{\mathrm{bliss}},\infty):\ b_0=b^{\mathrm{bliss}},\ \lambda(0)=\lambda^{\mathrm{skiba}}\ \text{のとき限り }(b^{\ast},\lambda^{\ast})\text{ に収束};\qquad
b^{\mathrm{skiba}}\equiv\psi^{-1}\bigl(\lambda^{\mathrm{skiba}}\bigr)
\tag{58}
$$

**定理1（最適経路）**

$$
b^{\mathrm{seig}}\lt b^{\ast}\lt b^{\mathrm{bliss}}\lt b^{\mathrm{skiba}},\quad0\lt s^{\ast}\lt\bar s;\qquad
\begin{cases}b_0\lt b^{\mathrm{skiba}}: & b,\ s\ \text{は }b^{\ast},\ s^{\ast}\text{ に単調収束}\\ b_0\ge b^{\mathrm{skiba}}: & b,\ s\ \text{は初期値のまま一定}\end{cases}
\tag{59}
$$

> $[0,b^{\mathrm{skiba}})$ が定常状態 $b^{\ast}$ の吸引域です。$b_0\in(b^{\mathrm{bliss}},b^{\mathrm{skiba}})$ では、飽和点より上で税を平滑化しながら債務を減らし（税は平滑化水準が収支均衡の水準より高い）、飽和点を割った後は債務を $b^{\ast}$ に向けて減らし続けます。この間、税率は $b\in(b^{\mathrm{seig}},b^{\ast})$ で上昇傾向、$b\in(b^{\ast},b^{\mathrm{bliss}})$ で下降傾向、$b\gt b^{\mathrm{bliss}}$ で平滑化されます。

**命題4（長期の最適債務水準）**

$$
b^{\ast}=\arg\max_{b\in[0,b^{\mathrm{bliss}}]}\Bigl\{V(b)+\lambda^{\ast}\pi(b)\,b\Bigr\},\qquad
\lambda^{\ast}=-U'(s^{\ast}),\quad s^{\ast}=g+\bigl(\rho-\pi(b^{\ast})\bigr)\,b^{\ast}
\tag{60}
$$

> 二期間の直観との違いは不動点の構造だけです。$\Omega$ を最大にする $b^{\ast}$ が、$\Omega$ の中の $\lambda^{\ast}$ に政府予算を通じて依存します。Barro / Lucas–Stokey では長期債務は初期債務に依存して不定ですが、ここでは長期債務が唯一に決まります。

**定常状態の局所動学**

$$
J=\begin{pmatrix}\rho+\dfrac{V'}{\gamma} & -\dfrac{1}{\psi'}\Bigl(\rho+\dfrac{V'}{\gamma}\Bigr)\\[3mm] \gamma'\,\dfrac{V'}{\gamma} & -\dfrac{V'}{\gamma}\end{pmatrix}_{(b^{\ast},\lambda^{\ast})},\qquad
\operatorname{tr}J=\rho,\quad
\det J=\frac{V'}{\gamma}\Bigl(\rho+\frac{V'}{\gamma}\Bigr)\Bigl(\frac{\gamma'}{\psi'}-1\Bigr)
\tag{61}
$$

> 基準ケースでは $\gamma'\lt0\lt\psi'$ なので $\det J\lt0$ で、固有値は符号が逆で和は $\rho\gt0$（鞍点）です。安定根は $\varpi_{\mathrm s}=(\rho-\sqrt{\rho^{2}-4\det J})/2$ です。固有ベクトルは両成分が正なので、$b$ と $\lambda$（したがって税）は遷移中に同じ向きに動きます。

| 記号・項目 | 意味 |
|---|---|
| $\eta$ | B1 の比 $V'(b)/\pi(b)$（論文の $\omega$。労働くさび $\omega_t$ と区別するため改名） |
| $\gamma_{\mathrm{bliss}}$、$\psi_{\mathrm{bliss}}$ | 飽和点での $\gamma$ の左極限、$\psi$ の値 |
| $\hat g$ | 政府支出の閾値（B3 に対応） |
| $\Lambda_0(b_0)$ | 初期債務 $b_0$ に対する候補経路の初期 $\lambda$ の集合（論文の $\Lambda$） |
| $\lambda^{\mathrm{skiba}}$、$b^{\mathrm{skiba}}$ | Skiba 閾値（このとき限り定常状態に収束） |
| $b^{\ast}$、$\lambda^{\ast}$、$s^{\ast}$ | 最適な長期の債務・税の歪み・税収 |
| $J$ | 定常状態のヤコビ行列 |

### 1.9 補助仮定を外した一般の場合（付録B.3〜B.7）

**命題12（定常状態の局所安定性）**

$\lambda^{\ast}=\gamma(b^{\ast})=\psi(b^{\ast})$ をみたす飽和点より左の任意の定常状態で、有限のスカラー $\chi\gt0$ が存在し：

$$
\begin{cases}
\text{鞍点安定} & \gamma'(b^{\ast})\lt\psi'(b^{\ast})\\
\text{実固有値の不安定} & \psi'\lt\gamma'\lt\psi'+\chi\\
\text{複素固有値の不安定（循環）} & \gamma'\gt\psi'+\chi
\end{cases}
\qquad
\chi\equiv\frac{\rho^{2}\,\psi'}{4\,(V'/\gamma)\,(\rho+V'/\gamma)}
\tag{62}
$$

**定理2（一般の経済での最適政策）**

$$
\mathcal B^{\#}\equiv\bigl\{b\in(\underline b,b^{\mathrm{bliss}}]:\ \gamma(b)=\psi(b),\ \gamma'(b)\le\psi'(b)\bigr\}
\tag{63}
$$

> $\mathcal B^{\#}$ は $\gamma$ が $\psi$ を上から切る点の集合で、鞍点安定な定常状態です。空でも、複数の点を含んでもかまいません。ある閾値 $b^{\mathrm{skiba}}$ と、$\mathcal B^{\ast}\subseteq\mathcal B^{\#}$ なる集合が存在して、最適政策のもとで次が成り立ちます。（i）$b_0\in\mathcal B^{\ast}$ または $b_0\gt\max\{b^{\mathrm{bliss}},b^{\mathrm{skiba}}\}$ なら債務は $b_0$ のまま一定。（ii）$b_0\lt b^{\mathrm{skiba}}$ かつ $b_0\notin\mathcal B^{\ast}$ なら債務は $\mathcal B^{\ast}$ の点に単調収束。（iii）$b^{\mathrm{skiba}}\lt b^{\mathrm{bliss}}$ かつ $b_0\in(b^{\mathrm{skiba}},b^{\mathrm{bliss}})$ なら債務は $b^{\mathrm{bliss}}$ に単調収束。

**定理3（経済の分類）と命題13**

$$
\text{(i)}\ \mathcal B^{\ast}=\varnothing,\ b^{\mathrm{skiba}}=\underline b;\qquad
\text{(ii)}\ \mathcal B^{\ast}\ne\varnothing,\ b^{\mathrm{skiba}}\in(\underline b,b^{\mathrm{bliss}});\qquad
\text{(iii)}\ \mathcal B^{\ast}\ne\varnothing,\ b^{\mathrm{skiba}}\gt b^{\mathrm{bliss}}
\tag{64}
$$

> 3つの類はどれも空ではありません。類（iii）に属する十分条件は、$g$ が十分大きいこと、または $b\gt b^{\mathrm{bliss}}$ で $V'$ と $\pi$ が負になることです。命題13は、$\psi_{\mathrm{bliss}}\gt\gamma_{\mathrm{bliss}}$ なら、ある $b^{\mathrm{skiba}}\gt b^{\mathrm{bliss}}$ が存在し、$b_0\lt b^{\mathrm{skiba}}$ で債務が飽和点より厳密に下の点に単調収束する、と述べます。B1〜B3 を外すと、定常状態が複数でそれぞれが吸引域を持ち、図9〜11 のように大域動学が分かれる場合があります。$\pi(b)b$ が複数の極値を持つ場合は L 領域と M 領域が繰り返される位相図になります（図12）。

**命題14（遷移中の共動）と命題15（比較静学）**

$$
b_0\in(b^{\ast}-\epsilon_0,\,b^{\ast}):\ b,\ s\ \text{ともに増加};\qquad
b_0\in(b^{\ast},\,b^{\ast}+\epsilon_0):\ b,\ s\ \text{ともに減少}
\tag{65}
$$

$$
V'=\eta\,\pi,\ \ \sigma\ \text{一定のとき}:\quad
\text{小さな }\eta\text{ の上昇、}g\text{ の低下、}\pi\text{ の上昇で }b^{\ast}\text{ は増加}
\tag{66}
$$

**B0 を外す場合**

> $b\gt b^{\mathrm{bliss}}$ で $\pi$ と $V'$ が負になる場合（「有害な過剰」）、H 領域は消え、$\dot\lambda\lt0$ になります。Skiba 点は $\bar b$ に一致し、あらゆる $b_0$ と $g$ で $b^{\ast}\lt b^{\mathrm{bliss}}$ に収束します。B0 を外すことは「$g$ が十分高い」という要件の代わりになります。

| 記号・項目 | 意味 |
|---|---|
| $\chi$ | 固有値が複素数になる境界を決める正の定数 |
| $\mathcal B^{\#}$ | $\gamma$ が $\psi$ を上から切る点の集合（鞍点安定な定常状態、論文の $B^{\#}$） |
| $\mathcal B^{\ast}$ | 最適政策の定常状態の集合（$\subseteq\mathcal B^{\#}$、論文の $B^{\ast}$） |
| $\epsilon_0$ | 近傍の半径（論文の $\epsilon$。ミクロ例1の $\epsilon$ と区別するため改名） |

### 1.10 ショックへの最適反応

**政府支出の恒久的増加（命題5）**

$$
g\uparrow:\quad\psi\ \text{は上にシフト（}\gamma\text{ は不変）},\quad b^{\ast}_{\mathrm{new}}\lt b^{\ast}_{\mathrm{old}};\qquad
\Delta s_{\text{短期}}\gt\Delta g,\quad\Delta s_{\text{長期}}\lt\Delta g
\tag{67}
$$

> $g$ は $\pi$ や $V$ に入らないので、オイラー条件（$\dot\lambda=0$ の軌跡 $\gamma$）は動きません。$\dot b=0$ の軌跡 $\psi$ だけが、より高い税が必要になるため上へ動きます。債務を減らして金利を下げ、後で増税幅を小さくするために、初めに税を $\Delta g$ 以上に上げます。Barro / AMSS では一対一で恒久的に上げるだけです。

**質への逃避（命題6）**

$$
\pi(b)=\Theta\,\tilde\pi(b),\quad V(b)=\Theta\,\tilde V(b),\quad\Theta\uparrow:\qquad
\gamma\ \text{は不変},\quad\psi\ \text{は下にシフト}
\tag{68}
$$

> $\sigma$ と $\gamma$ は $\Theta$ に依存しないので $\dot\lambda=0$ の軌跡は動きません。一方、$\pi$ の上昇は利払い費 $(\rho-\Theta\tilde\pi)b$ を下げるので $\dot b=0$ の軌跡は下に動きます。民間の質への逃避は政府の予算にとって正の所得ショックと同値で、$b^{\ast}$ は増え $\lambda^{\ast}$ は下がります。流動性需要の増加が政府の供給の増加を要請するという通常の直観は、金利抑制の限界収益も上がることを見落としています。

**景気後退（労働くさびショック）**

$$
\nu'(h_t)=(1-\tau_t)(1+\omega_t)
\tag{69}
$$

> 論文の記述のままです（賃金の基準化は論文に従う）。$\omega_t$ は外生的な労働くさびで、負のショックが非効率な不況です。$V$ と $\pi$ は動かず、$U$ が $(\tau_t,\omega_t)$ の関数になります。「伝統的な不況」は $\pi$ と $V$ が不変、「金融的な不況」は金融制約を強めて $\pi$ と $V$ が上に動きます。金融的な不況では（数値例で）より大きな赤字・給与税減税が最適で、同時に債務蓄積は速まりません（既存債務を低い金利で借り換えられるため）。重要なのは金利の水準ではなく、金融摩擦がない場合の金利との乖離（$\pi$）の動きです。$\rho$ と金利がともに下がり $\pi$ が不変なら、債務は安くなりません。

| 記号・項目 | 意味 |
|---|---|
| $\Delta g$ | 政府支出の増加 |
| $\Delta s_{\text{短期}}$、$\Delta s_{\text{長期}}$ | 税収の初期の変化、新定常状態での変化 |
| $\Theta$ | 質への逃避の規模（論文の $\theta$。選好 $\theta_{it}$ と区別するため改名） |
| $\tilde\pi$、$\tilde V$ | $\Theta$ で割った基準のプレミアムと価値 |
| $\omega_t$ | 労働くさびショック |

### 1.11 拡張・他の分析との比較（付録C、第6章）

**フリードマン・ルール：流動性と債務が切り離される場合（付録C.2）**

政府が貨幣的な資産（政府債）の量 $m$ とともに、非貨幣的な資産（社債）を無制限に保有できる場合、純債務は $b=m-\ell$ です（$\ell$ は社債保有）。

$$
\dot b=\rho\,b-\pi(m)\,m+g-s
\tag{70}
$$

$$
b_0+G=\int_0^{\infty}e^{-\rho t}\Bigl[\pi(m)\,m+S(\tau)\Bigr]dt,\qquad
G\equiv\int_0^{\infty}e^{-\rho t}g\,dt
\tag{71}
$$

$$
m^{\star}=\arg\max_m\ \Omega(m,\lambda),\qquad\Omega(m,\lambda)=V(m)+\lambda\,\pi(m)\,m
\tag{72}
$$

> $\pi(m)m$ は貨幣的な資産を発行するレントです。債務の借入コストは $\rho$ で、$\rho-\pi$ ではありません。流動性の供給 $m$ は債務管理から切り離され、トレードオフは消えます。債務と税の最適経路は Barro (1979) と同じになります。$m^{\star}$ は飽和点に一致する場合も、しない場合もあります。社債の保有が不可能なら、本稿の分析がそのまま成り立ちます。ここで $S(\tau)$ は税収関数（論文の $S(\tau)$）で、(71) の積分は政府の異時点間予算制約です。

**Aiyagari–McGrattan (1998) の定常状態アプローチとの比較（付録C.3）**

定常状態の政策（税と債務を一定、予算均衡）だけで厚生を最大にすると：

$$
b^{\mathrm{AM}}=\arg\max_b\Bigl\{V(b)-\lambda^{\mathrm{AM}}\,R(b)\,b\Bigr\}
\tag{73}
$$

$$
b^{\ast}=\arg\max_b\Bigl\{V(b)+\lambda^{\ast}\,\pi(b)\,b\Bigr\}
\tag{74}
$$

> (73) は金利支払い $R(b)b$ 全体を費用と見ます。しかし $\rho\,b$ の部分は費用ではありません。真の定常状態 (74) は、債務発行を $\pi(b)b$ のレントを生む事業として扱います。この差のため、Aiyagari–McGrattan の方法は流動性提供の機会費用を過大評価し、最適な長期債務を過小評価します。複数の定常状態も検出できません。

**状態依存債務（付録C.1）**

> 論文は式を追加せず、次を述べます。Lucas–Stokey 流の状態依存債務が使える場合、計画者は税の歪みを状態間で完全に平滑化できます。しかしここでは、それが担保・流動性の供給の変動を招くため、最適ではありません。税の変動の損失は二次、流動性の変動の損失は一次の効果なので、税の状態間平滑化から乖離します。戦争ショックでは、債務の市場価値の低下幅が Lucas–Stokey より小さく、税は上がります。

**公的債務の中立性と「どの金利か」（第6章）**

$$
\pi=\rho-r^{\mathrm{gov}}\quad\text{が政策問題の十分統計量（}r^{\mathrm{gov}}\equiv r\text{）}
\tag{75}
$$

> 債務が非中立なのは、民間の借入能力が将来の税負担に十分敏感でないからです。担保になる所得が将来の税と一対一で動くなら、債務は中立になります。Krishnamurthy–Vissing-Jorgensen (2012) が測る政府債と民間債のスプレッド（$r^{\mathrm{priv}}-r^{\mathrm{gov}}$）は $\pi$ ではありません。第3章の例では2つの債券が完全代替（$r^{\mathrm{priv}}=r^{\mathrm{gov}}$）でスプレッドはゼロですが、$\pi\gt0$ です。資本の期待収益と国債金利の差（Blanchard 2019）も、集計リスクへの補償だけなら政策に無関係です。より一般的なモデルでは $\rho-r^{\mathrm{gov}}$ が十分統計量であるとは限りません。

| 記号・項目 | 意味 |
|---|---|
| $m$ | 政府が発行する貨幣的な資産（政府債）の量 |
| $\ell$ | 政府が保有する非貨幣的な資産（社債）の量（論文の $n$。雇用 $n_{it}$ と区別するため改名） |
| $G$ | 政府支出の割引現在価値 |
| $S(\tau)$ | 税率 $\tau$ のもとでの税収 |
| $b^{\mathrm{AM}}$、$\lambda^{\mathrm{AM}}$ | Aiyagari–McGrattan 型の定常状態の債務と乗数（論文の $\hat b$、$\hat\lambda$） |
| $r^{\mathrm{gov}}$、$r^{\mathrm{priv}}$ | 政府債・民間債の利子率 |

### 1.12 主要帰結

**主要式**

$$
\boxed{\begin{aligned}
\Omega(b,\lambda)&=\underbrace{V(b)}_{\text{流動性の価値}}+\underbrace{\lambda\,\pi(b)\,b}_{\text{レントの価値}}\\[1mm]
\dot\lambda&=\underbrace{\Omega_b(b,\lambda)}_{\text{税平滑化からの乖離}},\qquad
\dot b=\underbrace{\bigl(\rho-\pi(b)\bigr)b+g-s(\lambda)}_{\text{政府予算}}\\[1mm]
b^{\ast}&=\underbrace{\arg\max_b\Omega(b,\lambda^{\ast})}_{\text{長期の最適債務}},\qquad
b^{\mathrm{seig}}\lt b^{\ast}\lt b^{\mathrm{bliss}}\lt b^{\mathrm{skiba}}
\end{aligned}}
\tag{76}
$$

**比較静学（定常状態 $b^{\ast}$ とその力学）**

| 変化 | 結果 | 符号・式 |
|---|---|---|
| 政府支出 $g$ の恒久的増加 | $\psi$ が上へ。$b^{\ast}$ は低下。税は短期に $\Delta g$ 超、長期に $\Delta g$ 未満 | $\Delta s_{\text{短期}}\gt\Delta g\gt\Delta s_{\text{長期}}$ |
| 質への逃避 $\Theta\uparrow$ | $\psi$ が下へ（$\gamma$ 不変）。$b^{\ast}$ は増加。$\lambda^{\ast}$ は低下 | 政府予算への正の所得ショック |
| 比 $\eta$ の上昇（$\sigma$ 一定） | $\gamma$ が上へ。$b^{\ast}$ は増加 | $\partial b^{\ast}/\partial\eta\gt0$ |
| 財政余地の価値 $\lambda$ の上昇 | $b^{\ast}$ は $b^{\mathrm{seig}}$ に近づく | $\partial b^{\ast}/\partial\lambda\lt0$ |
| リスク $\epsilon$（例1）、選好のばらつき $\vartheta$（例2）の上昇 | $b^{\ast}$ は増加 | $\partial b^{\ast}/\partial\vartheta\gt0$（例2） |
| 内部担保 $\bar\xi$ の上昇（例2） | $b^{\ast}$ は非単調、総担保 $b^{\ast}+\bar\xi$ は増加 | 逆U字（数値） |
| 初期債務 $b_0\ge b^{\mathrm{skiba}}$ | 債務・税は一定のまま（Barro 型） | $\lambda$ 一定 |
| 流動性と債務の切り離し（社債保有が自由） | トレードオフが消え、Barro (1979) に戻る | 借入コストは $\rho$ |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 低い国債金利は「安い借入」の機会か | 金融摩擦が民間にプレミアム $\pi(b)$ を払わせ、金利は $r=\rho-\pi(b)$ に下がります。借入が安いとは、レント $\pi(b)b\gt0$ が存在することです。金利の水準ではなく、摩擦のない場合の金利 $\rho$ との乖離 $\pi$ が重要です（式(2)、式(75)）。$\rho$ と金利がともに下がっても債務は安くなりません。 |
| 長期の最適な債務水準 | 流動性の価値 $V$ と金利抑制のレント $\pi b$ のトレードオフで $b^{\ast}$ が唯一に決まります（式(60)）。Barro では長期債務が初期債務で不定です。 |
| 短期の税平滑化からの乖離 | $\dot\lambda=\Omega_b\ne0$ の間、税は一定にならず、$b^{\ast}$ に向けて動きます（式(46)）。税平滑化の動機は定常状態への調整費用として働きます。 |
| 恒久的な支出増（「戦争」） | 初期に税を $\Delta g$ 以上上げ、債務と金利を下げ、長期の増税幅を $\Delta g$ 未満に抑えます（式(67)）。確率的な戦争では債務が初期水準に戻ります（Barro / AMSS では永続的な痕跡が残ります）。 |
| 質への逃避 | 政府予算への正の所得ショックに等価です。流動性供給を増やす根拠は、影子費用が下がるからです（式(68)）。 |
| 金融的な不況での大きな赤字 | $\pi$ の上昇により既存債務を低い金利で借り換えられ、同じ労働くさびの伝統的な不況より大きな減税・赤字が最適になります。それでも債務の蓄積は速くなりません（式(69)の数値例）。 |
| 債務の複数の定常状態と Skiba 点 | $\pi(b)b$ の非凹性で局所最適が複数になり、$b^{\mathrm{skiba}}$ が吸引域を分けます（式(59)、式(64)）。 |
| 状態依存債務でも税が状態間で変動 | 完全な状態間平滑化は流動性供給の大きな変動を招くので、最適でなくなります（付録C.1）。 |
| 債務による資本のクラウドアウト／クラウドイン | クラウドアウトは $\pi$ と $V$ の中に含まれます。企業家モデルでは債務が生産効率を高めて資本をクラウドインできます（式(39)、式(34)）。 |
| 先行研究の過小評価 | 定常状態だけで最適化する方法は $\rho b$ を費用と誤算し、最適な長期債務を過小評価します（式(73)、式(74)）。 |
| 公的債務が貨幣的性質を持つ条件 | 民間の借入能力が将来の税負担に十分敏感でないときだけ、公的債務は非中立です。 |

---

## 3. 整理している点 {#sec3}

- **三つの力の区別**：税の歪みの平滑化、民間の金融摩擦の緩和（流動性提供）、金利を低く保つレント（シニョリッジ）を、$U$、$V$、$\pi b$ という三つの項に分け、$\Omega=V+\lambda\pi b$ と $\dot\lambda=\Omega_b$ で一つの式にまとめています。
- **限界費用は増税でなく金利上昇**：流動性を増やすことの限界費用は、税の上昇ではなく国債金利の上昇です。「安い借入」の意味を、金利の水準ではなく割引率との乖離 $\pi=\rho-r^{\mathrm{gov}}$ に置き換えます。
- **多様なミクロ的基礎の同一視**：世代重複・担保制約・企業家の3つのモデルで、$V$ と $\pi$ が政策問題の十分統計量になります。金銭的外部性（$\pi\gt V'$）や資本のクラウドアウト／クラウドインを入れても、簡約形の構造は変わりません。非凸性は Skiba の方法で扱い、定常状態が複数あっても主要な教訓が保たれることを示します。

---

## 4. 対象外の現象 {#sec4}

- 論文が範囲外とする論点：債務の持続可能性と債務バブル、不平等、資本課税、金融政策のゼロ金利制約。これらの文献と本稿は、債務が担保やバッファーストックとして働くという発想を共有するので、同じトレードオフを受け継ぐと論文は述べますが、直接は分析しません。
- 簡約形がいつでも成り立つとは主張しません。ミクロ的基礎の例は強い単純化（$u$ や $\log$ 効用、準線形の選好など）に依存し、現実には成り立たないかもしれません。例は、簡約形が損失なく成立するベンチマークとして示されています。
- $\rho-r^{\mathrm{gov}}$ が常に十分統計量だとは主張しません。より豊かなモデルでは成り立たず、社会的割引率も固定パラメータ $\rho$ より複雑になりえます。
- Krishnamurthy–Vissing-Jorgensen (2012) が測る政府債と民間債のスプレッドそのものは、$\pi$ や $V'$ に対応しません。スプレッドの水準や循環性を説明するモデルではありません。
- 金融ショックの追加的な逆効果（課税ベースの縮小、景気刺激の必要など）は、質への逃避の分析に含まれていません。論文は現実がもっと複雑であると明示しています。
- 債務の量的な最適水準の実証的な推定は示しません。図は説明のための数値例です。
- 企業家モデル（1.4）については、一般化した問題の完全な特徴づけは与えられていません。位相図の構造（3領域）が保たれることを示すにとどまります。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
[ミクロ的基礎]                                   [簡約形]
 例1 OLG   : 式(12) → 式(13) → 式(16) → 式(17)  ─┐
 例2 担保  : 式(26) → 式(27) → 式(28)             ─┼→ π(b), V(b)：式(2) 式(4) 式(5)
 例3 企業家: 式(34) 式(35) → 式(36)         ─┘          │
                                                                     ▼
 二期間 : 式(41) → 式(42) ─────────→ ハミルトニアン 式(44) → オイラー 式(46) 式(47)
                                                       │                       │
                         予算 式(50)：ψ(b)          │           式(48) 式(49)：γ(b)
                                   ▼                   ▼                       ▼
                         位相図・補題 式(52) 式(53) 式(54) 式(55) ─→ 命題9 式(56)
                                   │                                           │
              Skiba 式(57) 式(58) ──→ 定理1 式(59)、命題4 式(60) ←──────┘
                                   │
   局所動学 式(61) 式(62) 式(65)    ショック 式(67) 式(68) 式(69)    拡張 式(70) 式(71) 式(72) 式(73) 式(74)
```

### A.1 使う道具

**T1　現在価値ハミルトニアン**

$\max\int_0^{\infty}e^{-\rho t}\mathsf F(s,b)\,dt$ s.t. $\dot b=\mathsf f(s,b)$ に対し、乗数の符号を $\lambda$（$-\dot b$ にかかる乗数）と取ります。$H=\mathsf F+\lambda(-\mathsf f)$ とすると、条件は $H_s=0$、$\dot\lambda=\rho\lambda+H_b$、横断性条件 $e^{-\rho t}\lambda b\to0$ です。

**T2　包絡線定理**

$M(\alpha)=\max_x\mathsf f(x,\alpha)$ なら $M'(\alpha)=\mathsf f_\alpha(x^{\ast}(\alpha),\alpha)$ です。最適化後の関数の微分には、最適値で評価した直接効果だけが残ります。

**T3　陰関数定理**

$\Upsilon(x,\alpha)=0$ なら $dx/d\alpha=-\Upsilon_\alpha/\Upsilon_x$（$\Upsilon_x\ne0$）です。

**T4　2×2 行列の固有値**

$J$ の固有値を $\varpi_1,\varpi_2$ とすると、$\varpi_1+\varpi_2=\operatorname{tr}J$、$\varpi_1\varpi_2=\det J$ です。$\det J\lt0$ なら符号が逆（鞍点）、$\det J\gt0$ かつ $\operatorname{tr}J\gt0$ なら両方が正（不安定）です。判別式 $(\operatorname{tr}J)^{2}-4\det J\lt0$ のとき複素数（循環）です。

**T5　一階条件の比較静学**

$\Omega_b(b^{\ast},\alpha)=0$ なら T3 より $db^{\ast}/d\alpha=-\Omega_{b\alpha}/\Omega_{bb}$ です。$\Omega_{bb}\lt0$（凹）なら符号は $\Omega_{b\alpha}$ と同じです。

**T6　部分和の組み替え**

$\sum_{t=0}^{\infty}\beta^{t}x_{t-1}=x_{-1}+\beta\sum_{t=0}^{\infty}\beta^{t}x_{t}$ です。

**T7　ラグランジュ乗数法**

等式制約・不等式制約つきの最大化を、一階条件と相補性条件（$\mu\ge0$、$\mu\times\text{制約の余裕}=0$）で解きます。

### A.2 ミクロ例1（世代重複）：$Q$、$V$、$\pi$、$U$

**Step 1　貯蓄の一階条件（T2、T7）**

家計は $\max_a\{-q_t a+\delta\,\mathbb E[u(e_{it+1}+a)]\}$ を解きます（若年の消費を予算で消去、労働は $a$ と分離）。→ 式(12)

**Step 2　市場清算**

債券市場で $a_t=b_t$ とおき、(12) の右辺で $a_t$ を $b_t$ に置換します。→ 式(13)

**Step 3　需要の性質**

$Q_b=\delta\,\mathbb E[u'']\lt0$、$Q_k=\delta\,\mathbb E[u'']\lt0$、
$Q_{\epsilon}=\delta\bigl\{-\phi\,u''(k-\epsilon+b)+(1-\phi)\,u''(k+\epsilon+b)\bigr\}$ です。$u'''\gt0$ なら $\lvert u''\rvert$ は消費について減少するので、平均保存の拡散（$\phi=1/2$）では $Q_\epsilon\gt0$ です。→ 式(14)

> （補足）論文は「$u''\lt0\lt u'''$ から成り立つ」と述べます。$\phi\ne1/2$ のときは、$\phi\,\lvert u''(k-\epsilon+b)\rvert\gt(1-\phi)\,\lvert u''(k+\epsilon+b)\rvert$ という追加条件が要ります。論文はこれを明示していません。

**Step 4　資源制約から若年の消費を導く**

財市場で $c^{y}_t+\int c^{o}_{it}\,di=Z h_t+k$ です（政府支出 $g$ は政策に依存しない定数として $C_0$ に回します）。老年の予算を集計して資産市場の均衡を使うと $\int c^{o}_{it}\,di=b_{t-1}+k$ です。→ 式(15)

**Step 5　厚生の組み替え（T6）**

$W=\sum_t\beta^{t}\bigl[Zh_t-b_{t-1}-\nu(h_t)+\delta\,\mathbb E\,u(e+b_t)\bigr]$ で、$\sum_t\beta^{t}(-b_{t-1})=-b_{-1}-\beta\sum_t\beta^{t}b_t$ です。$b_t$ の項を $V(b_t)$ にまとめます。→ 式(16)

**Step 6　私的価値と社会的価値の一致（T2）**

$V'(b)=\delta\,\mathbb E[u'(e+b)]-\beta=Q(b)-\beta$ です。$\pi\equiv Q-\beta$ とおきます。→ 式(17)

**Step 7　税の費用 $U(s)$**

労働の一階条件 $\nu'(h)=(1-\tau)Z$ と $s=\tau Z h$ から $s=h\,(Z-\nu'(h))$ です。均衡の効用 $Zh-\nu(h)$ を $s$ の関数と見て $U(s)$ とおきます。→ 式(18)

**Step 8　計画問題**

政府予算 (10) に $q_t=Q(b_t)$ を入れて $s_t=b_{t-1}+g-Q(b_t)b_t$ とし、目的関数に代入します。→ 式(19)、式(20)

**確認**

$s=0$ なら $\tau=0$、$h=(\nu')^{-1}(Z)$ で $Zh-\nu(h)$ が最大です。したがって A1 の「最大が $s=0$」が成り立ちます。$U'(s)=\tau Z\,h'(s)$ で、ラッファー曲線の上昇側で $h'(s)\lt0$ なので $U'(s)\lt0$（$s\gt0$）です。$Q(b^{\mathrm{bliss}})=\beta$ なら $V'(b^{\mathrm{bliss}})=0$ で、式(17)と整合します。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 効用 (7)、予算 (8)、政府予算 (10)、厚生 (11) |
| T2 | 貯蓄の一階条件、$V'=Q-\beta$ |
| T6 | $\sum\beta^{t}(-b_{t-1})$ の組み替え（$\beta^{-1}b$ でなく $\beta b$ になる理由） |
| T7 | 若年の消費の消去と最適化 |

### A.3 ミクロ例2（担保制約）：閉形式と性質

**Step 1　均衡条件（T7）**

制約 (23) に乗数 $\mu_t\ge0$ をつけます（高選好型でのみ拘束）。貯蓄は $a_t$ が翌期の予算に1単位、翌期の制約を1単位緩めるので、$q_t=\beta\,\mathbb E[1+\mu_{it+1}]=\beta(1+\varphi\mu_{t+1})$ です。

$$
\begin{aligned}
&\frac{1+\vartheta}{x_H}=p(1+\mu),\qquad\frac{1}{x_L}=p,\qquad p\,x_H\le\bar\xi+b,\qquad\mu\ge0,\qquad\mu\,(\bar\xi+b-p\,x_H)=0,\\
&\varphi\,x_H+(1-\varphi)\,x_L=1,\qquad\pi_t\equiv q_t-\beta=\beta\varphi\,\mu_{t+1}\ge0
\end{aligned}
\tag{77}
$$

> 総禀賦は $\varphi\cdot0+(1-\varphi)\cdot\frac{1}{1-\varphi}=1$ です。

**Step 2　第一最善と飽和点**

$\mu=0$ のとき $x_H=(1+\vartheta)x_L$ で、市場清算から $x^{\ast}_L=1/(1+\varphi\vartheta)$、$x^{\ast}_H=(1+\vartheta)/(1+\varphi\vartheta)$、価格 $p^{\ast}=1+\varphi\vartheta$ です。制約 $p^{\ast}x^{\ast}_H=1+\vartheta\le\bar\xi+b$ が $b\ge1+\vartheta-\bar\xi$ と同値です。→ 式(25)

**Step 3　拘束する領域（$b\lt b^{\mathrm{bliss}}$）**

$p\,x_H=\bar\xi+b$ と市場清算から $p=\varphi(b+\bar\xi)+1-\varphi$ です。$\Delta_b\equiv b^{\mathrm{bliss}}-b$ とおくと $b+\bar\xi=1+\vartheta-\Delta_b$ なので、$x_H$、$x_L$、乗数 $\mu=(1+\vartheta)/(b+\bar\xi)-1=\Delta_b/(1+\vartheta-\Delta_b)$ が得られます。→ 式(26)

**Step 4　プレミアム**

Step 1 の $\pi=\beta\varphi\mu$ に Step 3 の $\mu$ を代入します（飽和点以上では $\mu=0$）。→ 式(27)

**Step 5　社会的価値**

期ごとの午前の財の効用は $\mathbb E[\theta\log x]=\varphi(1+\vartheta)\log x_H+(1-\varphi)\log x_L$ です。$b_t$ は翌期の制約に効くので $\beta$ をかけます。$1+\vartheta-\Delta_b=b+\bar\xi$ と $1+\varphi\vartheta-\varphi\Delta_b=\varphi(b+\bar\xi)+1-\varphi$ を使い、$\log x_H$ と $\log x_L$ の項をまとめます（$\varphi(1+\vartheta)+(1-\varphi)=1+\varphi\vartheta$）。→ 式(28)

**Step 6　金銭的外部性**

$V'(b)=\beta\varphi\Bigl[\frac{1+\vartheta}{b+\bar\xi}-\frac{1+\varphi\vartheta}{\varphi(b+\bar\xi)+1-\varphi}\Bigr]$ です。これと (27) の $\pi=\beta\varphi\bigl[\frac{1+\vartheta}{b+\bar\xi}-1\bigr]$ の差をとると、$V'-\pi=\beta\varphi\bigl[1-\frac{1+\varphi\vartheta}{\varphi(b+\bar\xi)+1-\varphi}\bigr]=-\frac{\beta\varphi^{2}\Delta_b}{1+\varphi\vartheta-\varphi\Delta_b}$ です。→ 式(29)

**Step 7　補題6の性質（$\mathcal C\equiv b+\bar\xi$）**

$\pi=\beta\varphi\bigl(\frac{1+\vartheta}{\mathcal C}-1\bigr)$ なので $\pi'=-\frac{\beta\varphi(1+\vartheta)}{\mathcal C^{2}}\lt0$、$\pi''=-\frac{2\pi'}{\mathcal C}\gt0$ です。$V''\lt0$ は $V'$ の2項がともに $b$ について減少することから従います。$\upsilon(b)\lt0$ より $\pi\gt V'$ です。$b^{\mathrm{bliss}}=1+\vartheta-\bar\xi$ は $\vartheta$ について増加、$\bar\xi$ について減少で、$\pi$ と $V'$ は $b$ の減少関数なので、$b^{\mathrm{bliss}}$ が上がるとすべての $b\lt b^{\mathrm{bliss}}$ で上がります。→ 式(30)

**Step 8　補題7（凹性と順序）**

$\varrho(b)\equiv\pi(b)b$ とすると $\varrho''=2\pi'+\pi''b=2\pi'\bigl(1-\frac{b}{\mathcal C}\bigr)=\frac{2\pi'\bar\xi}{\mathcal C}\lt0$ です。$\varrho'(0)=\beta\varphi\,\frac{1+\vartheta-\bar\xi}{\bar\xi}\gt0$、$\varrho'(b^{\mathrm{bliss}})=-\beta\varphi\,\frac{1+\vartheta-\bar\xi}{1+\vartheta}\lt0$ なので、$b^{\mathrm{seig}}\in(0,b^{\mathrm{bliss}})$ が一意です。$\Omega=V+\lambda \varrho$ は凹で、$b^{\mathrm{seig}}$ で $\Omega_b=V'\gt0$、$b^{\mathrm{bliss}}$ で $\Omega_b=\lambda \varrho'\lt0$ なので $b^{\mathrm{seig}}\lt b^{\ast}\lt b^{\mathrm{bliss}}$ です。→ 式(31)（前半）

**Step 9　命題16（比較静学、T5）**

$V'(b)=\beta\varphi\Bigl[\frac{1+\vartheta}{\mathcal C}-\frac{1+\varphi\vartheta}{\varphi\mathcal C+1-\varphi}\Bigr]$、$\varrho'(b)=\pi+\pi'b$ です。$b$ と $\bar\xi$ を固定して $\vartheta$ で偏微分すると

$$
\frac{\partial^{2}\Omega}{\partial b\,\partial\vartheta}=\frac{\beta\varphi(1-\varphi)}{\mathcal C\,(\varphi\mathcal C+1-\varphi)}+\lambda\,\frac{\beta\varphi\,\bar\xi}{\mathcal C^{2}}\gt0,\qquad
\frac{\partial^{2}\Omega}{\partial b\,\partial\lambda}=\varrho'(b)\lt0\ \ (b\gt b^{\mathrm{seig}})
\tag{78}
$$

$$
\frac{\partial^{2}\Omega}{\partial b\,\partial\bar\xi}=V''(b)+\lambda\,\frac{\beta\varphi(1+\vartheta)\,(b-\bar\xi)}{\mathcal C^{3}}
\tag{79}
$$

> $\Omega_{bb}\lt0$ なので T5 より $\partial b^{\ast}/\partial\vartheta\gt0$、$\partial b^{\ast}/\partial\lambda\lt0$ です。(79) の第2項は $b$ と $\bar\xi$ の大小で符号が変わるので、$\bar\xi$ への効果は一般に不定です（論文の数値では逆U字）。（補足）論文は $\partial^{2}\Omega/\partial b\,\partial\lambda$ を $\lambda \varrho'$ と書き、(79) の第2項も不鮮明な表記です。ここでは閉形式から微分し直しました。総担保 $\mathcal C^{\ast}=b^{\ast}+\bar\xi$ については、$\tilde\Omega(\mathcal C,\lambda)=\tilde V(\mathcal C)+\lambda\tilde\pi(\mathcal C)(\mathcal C-\bar\xi)$ とすると $\partial^{2}\tilde\Omega/\partial\mathcal C\,\partial\bar\xi=-\lambda\tilde\pi'(\mathcal C)\gt0$ なので、$\mathcal C^{\ast}$ は $\bar\xi$ とともに増えます。→ 式(31)（後半）

**確認**

$b=b^{\mathrm{bliss}}$（$\Delta_b=0$）で $\mu=0$、$\pi=0$、$\upsilon=0$、$x_H=x^{\ast}_H$、$x_L=x^{\ast}_L$ となり、(25) と連続につながります。$V$ は $b^{\mathrm{bliss}}$ で連続ですが、$\pi$ は左微分が非零（$\pi'(b^{\mathrm{bliss}})=-\beta\varphi/(1+\vartheta)$）なのでキンクを持ちます（A0 の脚注）。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 効用 (21)、予算 (22)、担保制約 (23)、選好・禀賦の分布 |
| T7 | 担保制約つきの一階条件と相補性 |
| T3 | 配分と乗数を $b$ の関数として解く |
| T5 | 比較静学（命題16） |

### A.4 二期間の直観と連続時間の最適条件

**Step 1　二期間のラグランジュ関数（T7）**

$\mathcal L=U(s_1)+V(b_1)+\beta U(s_2)+\lambda_1\bigl[Q(b_1)b_1+s_1-g_1\bigr]+\beta\lambda_2\bigl[s_2-g_2-b_1\bigr]$ です。

**Step 2　一階条件**

$s_1$、$s_2$ について $\lambda_t=-U'(s_t)$ です。$b_1$ について $V'(b_1)+\lambda_1\bigl(Q+Q'b_1\bigr)-\beta\lambda_2=0$ で、これは $\max_{b_1}\{\lambda_1Q(b_1)b_1+V(b_1)-\beta\lambda_2b_1\}$ の条件です。→ 式(41)

**Step 3　完全な税平滑化と $Q=\beta+\pi$**

$\lambda_1=\lambda_2=\lambda$、$Q=\beta+\pi$ を入れると $\lambda\beta b_1$ と $-\beta\lambda b_1$ が相殺します。→ 式(42)

**Step 4　順序の証明**

$\Omega_b=V'+\lambda \varrho'(b)$（$\varrho\equiv\pi b$）です。$b^{\mathrm{seig}}$ で $\varrho'=0$ なので $\Omega_b=V'\gt0$、$b^{\mathrm{bliss}}$ で $V'=0$ かつ $\varrho'\le0$ なので $\Omega_b\le0$ です。$\Omega$ が単峰なら最大点は両者の間にあります。$\lambda\to\infty$ で $b^{\mathrm{seig}}$ に、$\lambda\to0$ で $b^{\mathrm{bliss}}$ に近づきます。→ 式(43)

**Step 5　連続時間のハミルトニアン（T1）**

$R(b)b=\rho b-\pi b$ を使い、$H=U+V+\lambda[s-\rho b+\pi b-g]=U+\lambda[s-\rho b-g]+\Omega$ と整理します。→ 式(44)

**Step 6　税の条件**

$H_s=U'(s)+\lambda=0$ です。→ 式(45)

**Step 7　余状態の運動（T1）**

$H_b=V'-\lambda\bigl(\rho-\pi-\pi'b\bigr)$ なので、$\dot\lambda=\rho\lambda+H_b=V'+\lambda\bigl(\pi+\pi'b\bigr)=\Omega_b$ です（$\rho\lambda$ の項が相殺します）。→ 式(46)

**Step 8　弾力性による書き換え**

$\pi'b=-\sigma\pi$ より $\pi+\pi'b=-(\sigma-1)\pi$ で、これは債務ラッファー曲線の傾きです。→ 式(51)、式(47)

**Step 9　$\gamma$ の導入**

$b\in\mathcal D$ で $V'=\gamma\,\pi(\sigma-1)$ と書けるので $\dot\lambda=V'[1-\lambda/\gamma]$ です。→ 式(48)、式(49)

**Step 10　予算と $\psi$**

$\dot b=(\rho-\pi)b+g-s(\lambda)$ で、$\Psi(b,\psi(b))=0$ をみたす $\psi$ を陰関数として定義します。→ 式(50)

**確認**

$V'=\pi=0$ なら $\dot\lambda=0$ で $\lambda$ は一定、つまり Barro の税平滑化に戻ります。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 計画者問題 (4)、(5)、仮定 A0〜A2 |
| T1 | ハミルトニアン、余状態の運動 |
| T7 | 二期間の乗数 |
| T2 | $\Omega$ の微分（最適化後の $\tau$ や $s$ の直接効果を除く） |

### A.5 位相図、補題、定理1

**Step 1　$s(\lambda)$ の単調性と $\psi$ の傾き（T3）**

$\lambda=-U'(s)$ で $U''\lt0$ なので $s(\lambda)$ は増加です。$\Psi(b,\lambda)$ は $\lambda$ の減少関数です。T3 より

$$
\psi'(b)=\frac{\Psi_b}{-\Psi_\lambda}=\frac{\rho+\pi(b)\bigl(\sigma(b)-1\bigr)}{s'(\psi(b))}
\tag{80}
$$

> $\rho+\pi(\sigma-1)=\rho-\pi-\pi'b$ は利払い費 $R(b)b$ の傾きです。領域 M と H では正です（$\sigma\gt1$ または $\pi=0$）。領域 L では負になりうる（論文脚注7）が、最適経路は領域 L を離れるので結論に影響しません。

**Step 2　補題1**

$\psi$ は増加で連続です。$\psi(\underline b)=0$ は、十分な資産の利子収入で政府支出を賄えるので税がゼロになることに対応します。$b\to\bar b$ で税率がラッファー曲線の頂点に近づき、税の影子価値が発散します。→ 式(52)

**Step 3　補題2**

B1 から $V'=\eta\pi$ なので $\gamma=\eta/(\sigma-1)$ です。B2 より $\sigma$ は増加で、$b^{\mathrm{seig}}$ で $\sigma=1$ です。したがって $b\lt b^{\mathrm{seig}}$ で $\sigma-1\lt0$ から $\gamma\lt0$、$b\gt b^{\mathrm{seig}}$ で $\gamma\gt0$ です。$\gamma'=-\eta\sigma'/(\sigma-1)^{2}\lt0$、$\sigma\to1$ で $\gamma\to\mp\infty$ です。→ 式(53)

**Step 4　補題3**

$\gamma$ は $(b^{\mathrm{seig}},b^{\mathrm{bliss}})$ で $+\infty$ から $\gamma_{\mathrm{bliss}}$ まで減少、$\psi$ は増加です。$\gamma_{\mathrm{bliss}}\gt\psi_{\mathrm{bliss}}$ なら $\gamma$ は常に $\psi$ の上、$\gamma_{\mathrm{bliss}}\lt\psi_{\mathrm{bliss}}$ なら一度だけ交わります。→ 式(54)

**Step 5　位相図の3領域と領域 H の連続体**

領域 L では $\Omega_b\gt0$ なので $\dot\lambda\gt0$（$\gamma\lt0$）です。領域 M では $\lambda\gtrless\gamma(b)$ で $\dot\lambda\lessgtr0$ です。領域 H では $V'=\pi=0$ から $\dot\lambda=0$ で、$\dot b=0$ の軌跡 $\psi$ 上のすべての点が不動点になります。

**Step 6　$\Omega_b$ の符号と命題4**

定常状態 $\lambda^{\ast}=\gamma(b^{\ast})=\psi(b^{\ast})$ で評価すると

$$
\Omega_b(b,\lambda^{\ast})=\bigl(\sigma(b)-1\bigr)\,\pi(b)\,\bigl[\gamma(b)-\lambda^{\ast}\bigr]\quad(b\in\mathcal D)
\tag{81}
$$

です。$b\in(b^{\mathrm{seig}},b^{\ast})$ では $\sigma\gt1$、$\pi\gt0$、$\gamma(b)\gt\gamma(b^{\ast})=\lambda^{\ast}$ なので $\Omega_b\gt0$ です。$b\in(b^{\ast},b^{\mathrm{bliss}})$ では $\gamma(b)\lt\lambda^{\ast}$ なので $\Omega_b\lt0$ です。$b\lt b^{\mathrm{seig}}$ では $\sigma\lt1$ で $\Omega_b=V'+\lambda\pi(1-\sigma)\gt0$ です。したがって $b^{\ast}$ は $\Omega(\cdot,\lambda^{\ast})$ の最大点です。→ 式(60)

> （補足）論文の証明の末尾は不等号の区間が不鮮明です。ここでは上の3区間で符号を確認しました。

**Step 7　補題5（$\hat g$）**

$\psi_{\mathrm{bliss}}$ は $s(\psi_{\mathrm{bliss}})=g+\rho\,b^{\mathrm{bliss}}$ から $g$ について増加で、$g=-\rho\,b^{\mathrm{bliss}}$ で $0$、$g\to\bar s-\rho\,b^{\mathrm{bliss}}$ で $+\infty$ です。$\gamma_{\mathrm{bliss}}$ は $g$ に依存せず、有限と仮定します。したがって $\psi_{\mathrm{bliss}}\gt\gamma_{\mathrm{bliss}}$ となる $g$ の閾値 $\hat g$（負でもよい）が存在します。→ 式(55)

**Step 8　命題9と定理1の前半**

B3 は $g\gt\hat g$ すなわち $\psi_{\mathrm{bliss}}\gt\gamma_{\mathrm{bliss}}$ です。補題3から $(b^{\ast},\lambda^{\ast})$ が一意に存在し、鞍点です（A.7）。$g\lt\hat g$ では $\gamma$ が $\psi$ の上にあり、領域 L・M に定常状態がなく、$b^{\ast}=b^{\mathrm{bliss}}$ に向かう唯一の経路だけが最適候補です。→ 式(56)

**確認**

$g\gt\hat g$ のとき、領域 M では $\gamma$ が $\psi$ を上から切るので、$b\lt b^{\ast}$ で $\dot b\gt0$、$b\gt b^{\ast}$ で $\dot b\lt0$ になります。債務は $b^{\ast}$ に向かい、税は同じ向きに動きます。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(47)、式(48)、式(50)、仮定 B0〜B3 |
| T3 | $\psi$ の傾き (80) |
| T4 | 鞍点の判定（A.7） |
| T5 | $\Omega_b$ の符号による最大点の特定 |

### A.6 Skiba の方法と定理1

**Step 1　$H$ の時間変化（T1）**

$s$ を最適化した後の $H(b,\lambda)$ について、$H_\lambda=s-R(b)b-g=-\dot b$（T2）、$\dot\lambda=\rho\lambda+H_b$ です。したがって

$$
\dot H=H_b\,\dot b+H_\lambda\,\dot\lambda=\dot b\,(H_b-\dot\lambda)=-\rho\,\lambda\,\dot b
$$

です。

**Step 2　フロー効用の書き換え**

$H=U+V+\lambda(-\dot b)$ より $U+V=H+\lambda\dot b$ です。

**Step 3　割引した $H$ の微分**

$\dfrac{d}{dt}\bigl(e^{-\rho t}H\bigr)=e^{-\rho t}(\dot H-\rho H)=-\rho\,e^{-\rho t}\bigl(H+\lambda\dot b\bigr)$ です。

**Step 4　価値の積分（補題4）**

$\displaystyle\int_0^{\infty}e^{-\rho t}(U+V)\,dt=-\frac{1}{\rho}\Bigl[e^{-\rho t}H\Bigr]_0^{\infty}=\frac{H(b_0,\lambda_0)}{\rho}$ です（横断性条件により $e^{-\rho t}H\to0$）。→ 式(57)

**Step 5　凸性による選別**

$H(b,\lambda)=\max_s\{U(s)+\lambda s\}+V-\lambda(\rho b+g)+\lambda\pi b$ は $\lambda$ の線形関数の上側包絡線で、$\lambda$ について凸です。候補経路の価値は $H(b_0,\lambda_0)/\rho$ なので、$\Lambda_0(b_0)$ が1点でないとき、最適な $\lambda_0$ は $\Lambda_0(b_0)$ の最大値か最小値です。→ 式(57)

**Step 6　Barro 型の経路との比較**

Barro 型の経路は $\dot b=0$ なので $H_\lambda=0$、すなわち $H$ の最小点にあたります。$b_0\ge b^{\mathrm{bliss}}$ で $b^{\ast}$ に収束する経路は、黒字を出して債務を減らす（$\dot b\lt0$）ので $\lambda_0$ が大きく、$H_\lambda\gt0$ です。凸性から $H$ は Barro 型より大きく、降下経路が最適です。

**Step 7　$\lambda^{\mathrm{skiba}}$ の存在**

$b_0=b^{\mathrm{bliss}}$ で $\lambda(0)$ を $\psi_{\mathrm{bliss}}$ よりわずかに大きくとると、債務は $b^{\ast}$ に届きません。$\lambda(0)$ を十分大きくとると債務は有限時間で $b^{\ast}$ を下回ります。$b$ の経路は $\lambda(0)$ について連続かつ単調なので、ちょうど $b^{\ast}$ に収束する $\lambda^{\mathrm{skiba}}\in(\psi_{\mathrm{bliss}},\infty)$ が存在します。領域 H では $\dot\lambda=0$ なので、この経路の飽和点より右の部分は $\lambda^{\mathrm{skiba}}$ で水平です。→ 式(58)

**Step 8　$b^{\mathrm{skiba}}$**

$b^{\mathrm{skiba}}\equiv\psi^{-1}(\lambda^{\mathrm{skiba}})$ とします。$\psi$ は連続・単調で、$\lambda^{\mathrm{skiba}}\gt\psi_{\mathrm{bliss}}$、$\psi\to\infty$ なので、$b^{\mathrm{skiba}}\in(b^{\mathrm{bliss}},\bar b)$ が存在します。$b^{\ast}$ に収束する経路が存在するのは $b_0\lt b^{\mathrm{skiba}}$ のときだけです。→ 式(59)

**確認**

$b_0\ge b^{\mathrm{skiba}}$ では降下経路が存在せず、Barro 型の経路（債務・税が一定）が唯一の候補です。$b_0\lt b^{\mathrm{bliss}}$ では領域 M の安定腕が唯一の候補で、$b^{\ast}$ に収束します。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(44)、式(46)、式(50)、補題3 |
| T1 | $\dot H$ の計算、横断性条件 |
| T2 | $H_\lambda=-\dot b$ |
| 凸性 | $\lambda_0$ の最大・最小のどちらかだけが最適 |

### A.7 局所動学（式(61)、命題12、14）

**Step 1　一般のヤコビ行列（T4）**

$(\dot b,\dot\lambda)=(\Psi,\Omega_b)$ を定常状態で線形化します。$\Psi_b=\rho-\pi-\pi'b=\rho+\pi(\sigma-1)$、$\Psi_\lambda=-s'(\lambda)$、$\Omega_{b b}=V''-\lambda\bigl[\pi'(\sigma-1)+\pi\sigma'\bigr]$、$\Omega_{b\lambda}=-\pi(\sigma-1)$ です。

$$
J=\begin{pmatrix}\rho+\pi(\sigma-1) & -s'(\lambda)\\ V''-\lambda\bigl[\pi'(\sigma-1)+\pi\sigma'\bigr] & -\pi(\sigma-1)\end{pmatrix}
\tag{82}
$$

**Step 2　$\psi$ と $\gamma$ の微分で書き換え**

(80) から $s'=(\rho+\pi(\sigma-1))/\psi'$ です。$V'=\gamma\,\pi(\sigma-1)$ を微分して $V''-\gamma[\pi'(\sigma-1)+\pi\sigma']=\gamma'\pi(\sigma-1)=\gamma'V'/\gamma$ を得ます。定常状態で $\lambda=\gamma$ なので、$\pi(\sigma-1)=V'/\gamma$ を使って行列を $V'/\gamma$、$\gamma'$、$\psi'$ だけで書けます。→ 式(61)

**Step 3　トレースと行列式**

$\operatorname{tr}J=\rho+V'/\gamma-V'/\gamma=\rho\gt0$、$\det J=-\dfrac{V'}{\gamma}\Bigl(\rho+\dfrac{V'}{\gamma}\Bigr)+\dfrac{1}{\psi'}\Bigl(\rho+\dfrac{V'}{\gamma}\Bigr)\gamma'\dfrac{V'}{\gamma}$ で、整理すると (61) の $\det J$ になります。

**Step 4　安定性の分類（命題12）**

$V'/\gamma\gt0$ なので $\det J$ の符号は $\gamma'/\psi'-1$ と同じです。$\gamma'\lt\psi'$ なら $\det J\lt0$ で鞍点、$\gamma'\gt\psi'$ なら $\det J\gt0$ かつ $\operatorname{tr}J\gt0$ で両根が正です。判別式 $\rho^{2}-4\det J\lt0$ を $\gamma'$ について解くと $\gamma'\gt\psi'+\chi$ で、$\chi$ は (62) のとおりです。→ 式(62)

**Step 5　安定腕の固有ベクトル（命題14）**

安定根 $\varpi_{\mathrm s}=\bigl(\rho-\sqrt{\rho^{2}-4\det J}\bigr)/2\lt0$ に対し、$J$ の第1行から固有ベクトルは $\bigl(s'(\lambda^{\ast}),\ \rho/2+V'/\gamma+\sqrt{\rho^{2}-4\det J}/2\bigr)$ です。$s'\gt0$、$V'\gt0$、$\gamma\gt0$ なので両成分は正で、$b$ と $\lambda$（税）は同じ向きに動きます。→ 式(65)

**Step 6　飽和点近傍（命題10）**

論文のヤコビ行列は $\begin{pmatrix}\rho&-\rho/\psi'\\ V''-\lambda\pi'(\sigma-1)&0\end{pmatrix}$ で、$\det J=\dfrac{\rho}{\psi'}\bigl(V''-\psi_{\mathrm{bliss}}\,\pi'(\sigma-1)\bigr)$ です。L'Hôpital の定理から $\gamma_{\mathrm{bliss}}=V''/(\pi'(\sigma-1))$ で、$\pi'(\sigma-1)\lt0$ です。$\gamma_{\mathrm{bliss}}\gt\psi_{\mathrm{bliss}}$ なら $V''-\psi_{\mathrm{bliss}}\pi'(\sigma-1)\lt0$ なので $\det J\lt0$ となり、鞍点です。このとき $b_0\lt b^{\mathrm{bliss}}$ から飽和点に向かう唯一の経路があります。$\gamma_{\mathrm{bliss}}\lt\psi_{\mathrm{bliss}}$ なら $\det J\gt0$ で両根が正になり、飽和点に収束する経路はありません。→ 式(83)

$$
\gamma_{\mathrm{bliss}}\gt\psi_{\mathrm{bliss}}\ \Rightarrow\ \det J\lt0\ (\text{鞍点}),\qquad
\gamma_{\mathrm{bliss}}\lt\psi_{\mathrm{bliss}}\ \Rightarrow\ \det J\gt0\ (\text{不安定})
\tag{83}
$$

> （補足）論文のこのヤコビ行列は、飽和点で $\pi(\sigma-1)\to0$ とする記述に従います。$\pi$ にキンクがあり $\pi'(b^{\mathrm{bliss}})\ne0$ の場合の扱いは、論文は明示していません。

**確認**

基準ケース（$\gamma'\lt0\lt\psi'$）では (61) の $\det J\lt0$ です。$V'=\pi=0$（領域 H）では $J$ の第2行が零になり、$\det J=0$ です。これは領域 H の不動点が連続体になることと整合します。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(80)、式(81)、$\gamma$ と $\psi$ の定義 |
| T4 | トレース・行列式・判別式による分類 |
| T3 | $\psi'$ の計算 |

### A.8 ショックへの反応（式(67)、(68)、(66)）

**Step 1　$g$ の増加（命題5）**

$s(\psi(b))=g+(\rho-\pi(b))b$ で $s$ は増加なので、$g$ が上がると $\psi$ が上へ動きます。$\gamma$ は $g$ に依存しません。$\gamma$ 減少・$\psi$ 増加の交点は左へ動き、$b^{\ast}_{\mathrm{new}}\lt b^{\ast}_{\mathrm{old}}$ です。

**Step 2　短期の税**

$b$ は状態変数なので $b_0=b^{\ast}_{\mathrm{old}}$ に留まります。新しい定常状態に向かう債務は減少しなければならないので $\dot b_0\lt0$ で、$s_0=g_{\mathrm{new}}+R(b_0)b_0-\dot b_0\gt g_{\mathrm{new}}+R(b^{\ast}_{\mathrm{old}})b^{\ast}_{\mathrm{old}}=s^{\ast}_{\mathrm{old}}+\Delta g$ です。→ 式(67)（短期）

**Step 3　長期の税**

$s^{\ast}_{\mathrm{new}}-s^{\ast}_{\mathrm{old}}=\Delta g+\bigl[R(b^{\ast}_{\mathrm{new}})b^{\ast}_{\mathrm{new}}-R(b^{\ast}_{\mathrm{old}})b^{\ast}_{\mathrm{old}}\bigr]$ で、$R\,b=\rho b-\pi b$ です。$b$ が下がると $\rho b$ が下がり、$b\gt b^{\mathrm{seig}}$（ラッファー曲線の下降側）なので $\pi b$ は上がります。したがって括弧の中は負で、$\Delta s_{\text{長期}}\lt\Delta g$ です。→ 式(67)（長期）

**Step 4　質への逃避（命題6）**

$\sigma=-\pi'b/\pi$ と $\gamma=V'/(\pi(\sigma-1))$ は $\Theta$ を約分で消去するので、$\gamma$ は不変です。$\psi$ は $s(\psi)=g+(\rho-\Theta\tilde\pi)b$ で定まり、$\Theta$ が上がると右辺が下がるので $\psi$ は下へ動きます。交点は右下へ動き、$b^{\ast}$ は増え、$\lambda^{\ast}=\gamma(b^{\ast})$ は下がります。→ 式(68)

**Step 5　比較静学（命題15、T3）**

$\Upsilon(b)\equiv\gamma(b;\eta)-\psi(b;g,\pi)=0$ を $b^{\ast}$ で解きます。$\Upsilon_b=\gamma'-\psi'\lt0$、$\gamma=\eta/(\sigma-1)$ より $\Upsilon_\eta=1/(\sigma-1)\gt0$、$\Upsilon_g=-\psi_g\lt0$、$\Upsilon_\pi=-\psi_\pi\gt0$（$\pi$ が上がると必要な税が減るので $\psi_\pi\lt0$）です。T3 より $db^{\ast}/d\eta=-\Upsilon_\eta/\Upsilon_b\gt0$、$db^{\ast}/dg=-\Upsilon_g/\Upsilon_b\lt0$、$db^{\ast}/d\pi=-\Upsilon_\pi/\Upsilon_b\gt0$ です。→ 式(66)

**Step 6　労働くさび**

労働の一階条件を (69) と置き換えると、$V$ と $\pi$ は変わらず、$U$ は $(\tau,\omega)$ の関数になります。→ 式(69)

**確認**

$\Delta g=0$ なら $\psi$ は動かず、反応は生じません。$\Theta=1$ で $\Theta$ の変化がないときは、$\gamma$ と $\psi$ ともに不変で $b^{\ast}$ は動きません。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(48)、式(50)、式(80)、定理1 |
| T3 | $b^{\ast}$ の比較静学 |
| T5 | 交点の移動の方向 |

### A.9 企業家モデル（命題8）

**Step 1　企業家の問題**

純資産を $N\equiv a+p^{k}\kappa$ とすると、使用資本に関する制約は $p^{k}\kappa^{\mathrm u}\le\Phi+N+\zeta_K\kappa^{\mathrm u}+\zeta_Y\,y$ です。

$$
\mathcal P(N,p^{k},w;\varsigma)\equiv\max_{\kappa^{\mathrm u}\ge0,\ n\ge0}\Bigl[\varsigma f(\kappa^{\mathrm u},n)+(1-\delta_k)\kappa^{\mathrm u}-p^{k}\kappa^{\mathrm u}-w\,n\Bigr]\ \ \text{s.t.}\ \ p^{k}\kappa^{\mathrm u}\le\Phi+N+\zeta_K\kappa^{\mathrm u}+\zeta_Y\varsigma f(\kappa^{\mathrm u},n)
\tag{84}
$$

$$
\Xi(N,p^{k},w)\equiv\beta\int\mathcal P(N,p^{k},w;\varsigma)\,dF(\varsigma)
\tag{85}
$$

**Step 2　家計の問題と一階条件**

収益の線形性から全家計の労働供給は等しく、代表家計の問題になります。

$$
\nu'(h_t)=(1-\tau_t)\,w_t,\qquad
q_t=\beta\bigl(1+\Xi_N\bigr),\qquad
1=\beta\bigl(1+\Xi_N\bigr)\,p^{k}_{t+1}
\tag{86}
$$

> 後の2式から $p^{k}_{t+1}=1/q_t$ です（金融資産と物理資本の裁定）。$\Xi_N\gt0$ なら $q_t\gt\beta$、つまり利子率は $1/\beta$ より低くなります。

**Step 3　市場清算と集計関数**

労働市場と資本市場の清算で、$\nu'(n(\cdot))=(1-\tau_t)w_t$、$\mathrm K_t=\kappa^{\mathrm u}(\cdot)$ を $(w_t,p^{k}_t)$ について解きます。

$$
h_t=\mathcal H(b_t,\tau_t),\quad\mathrm K_t=\mathcal K(b_t,\tau_t),\quad w_t=w(b_t,\tau_t),\quad p^{k}_t=p^{k}(b_t,\tau_t)
\tag{87}
$$

**Step 4　資源制約と厚生**

$c_t=\mathcal Y(b_t,\tau_t)-\mathrm K_{t+1}$（$\mathcal Y$ は産出から減耗後の資本と政府支出を差し引いた関数）を目的関数に入れます。$\sum_t\beta^{t}\bigl(\mathcal Y-\mathrm K_{t}/\beta-\nu(\mathcal H)\bigr)$ の形になり、$\mathcal W(\tau_t,b_t)$ と定数項（初期資本）に分けます。→ 式(34)

**Step 5　債務価格と税収**

(86) から $q_t=\mathcal Q(\tau_{t+1},b_{t+1})$ です。税収を $\mathcal S(\tau_t,b_t)\equiv\tau_t\,w_t\,h_t$ とおくと、政府予算は $\mathcal Q(\tau_{t+1},b_{t+1})\,b_{t+1}=b_t+g-\mathcal S(\tau_t,b_t)$ です。→ 式(35)

> （補足）論文の付録Dは $\mathcal S$ を $\tau w h-g$ と定義し、予算を $b_t-\mathcal S$ と書きます。本文の命題8と同じ内容で、ここでは $\mathcal S$ を税収とする本文の表記に合わせます。

**Step 6　連続時間の一般化（T1、T2）**

$H=\mathcal W(\tau,b)+\lambda[\mathcal S(\tau,b)-(\rho-\pi)b-g]=\mathcal W+\lambda[\pi b+\mathcal S]-\lambda(\rho b+g)$ です。$\tau$ で最大化した値が (37) の $\Omega$ に $-\lambda(\rho b+g)$ を足したものです。包絡線定理から $H_b=\Omega_b-\lambda\rho$ で、$\dot\lambda=\rho\lambda+H_b=\Omega_b$ です。最適な税率 $\mathcal T(\lambda)$ を予算式に入れて $\Psi$ を得ます。→ 式(37)、式(38)

**確認**

$\mathcal W$、$\mathcal S$、$\pi$ が $\tau$ に依存せず分離的なとき、(37) は $V+\lambda\pi b$ に、(38) は (42) と同じ構造に戻ります。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 企業家・家計の問題、担保制約 (33) |
| T1 | 一般化されたハミルトニアン |
| T2 | $\tau$ で最大化した後の包絡線 |
| T7 | 企業家の制約つき最大化 |

### A.10 資本の拡張、フリードマン・ルール、Aiyagari–McGrattan

**Step 1　資本つきの $V$（命題7、T2）**

若年は $j$ を投資し、$k=f_{\mathrm s}(j)$ を得ます。費用 $j=f_{\mathrm s}^{-1}(k)$ を厚生に加え、$k$ について最大化します。→ 式(39)

**Step 2　$\pi=V'$ の保存（T2）**

$k$ が最適なので包絡線定理で $V'(b)=\delta\,\mathbb E[u'(e+b)]-\beta=Q(b)-\beta=\pi(b)$ です。外部性がないので A.2 と同じです。

**Step 3　フリードマン・ルール**

$b=m-\ell$ で $\dot b=\dot m-\dot\ell=[\rho-\pi(m)]m-\rho\ell+g-s$ です。→ 式(70)

**Step 4　異時点間予算**

$\dfrac{d}{dt}\bigl(e^{-\rho t}b\bigr)=e^{-\rho t}\bigl(g-s-\pi m\bigr)$ を積分し、$e^{-\rho t}b\to0$ を使います。→ 式(71)

**Step 5　$m$ の最適化（T7）**

(71) の乗数を $\lambda$ として $m$ で微分すると、$V'(m)+\lambda(\pi(m)+\pi'(m)m)=0$ で、これは $\Omega(m,\lambda)$ の最大化です。債務 $b$ は予算制約を通じてのみ入り、$m$ の選択から切り離されます。→ 式(72)

**Step 6　Aiyagari–McGrattan の問題**

定常状態（$\dot b=0$、$s=g+R(b)b$）に制限して $\max\{U(s)+V(b)\}$ を解くと、一階条件は $V'-\lambda^{\mathrm{AM}}(\rho-\pi-\pi'b)=0$ です。→ 式(73)

**Step 7　比較**

(73) の一階条件は $\Omega_b(b,\lambda^{\mathrm{AM}})=\rho\,\lambda^{\mathrm{AM}}\gt0$ と書けます。真の定常状態の条件は $\Omega_b=0$（(46) で $\dot\lambda=0$）です。$\Omega$ が凹なら、AM の解は $\Omega_b\gt0$ の点で止まるので、$b^{\ast}$ より小さくなります（$\lambda$ が近いとき）。→ 式(74)

> （補足）この比較は論文の主張（機会費用の過大評価、$b^{\ast}$ の過小評価）を、論文の式 (73)、(74) から導き直したものです。論文は一階条件の書き換えを示していません。

**確認**

社債保有 $\ell=0$ に固定すると $b=m$ で、$\dot b=\rho b-\pi b+g-s$ となり (3) に戻ります。このとき Step 5 の分離は成り立たず、(42) のトレードオフが復活します。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(16)、式(42)、式(46)、式(3) |
| T2 | $k$ の最適化後の $V'$、包絡線 |
| T7 | $m$ の最適化 |
| T1 | 定常状態の一階条件との比較 |

---

**© 2022 George-Marios Angeletos, Fabrice Collard, Harris Dellas（原論文）**. 原論文 "Public Debt as Private Liquidity: Optimal Policy"（2022年5月3日版）の数理モデルを整理した記事です。式・仮定・命題の著作権は原著者に帰属します。記号の改名と補足は、本記事の作者によるものです。
{% endraw %}
