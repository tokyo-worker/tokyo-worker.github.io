---
layout: post
title: "国債の発行市場・流通市場と中央銀行：数理モデル"
date: 2026-10-19 00:00:00 +0900
categories: [金融論, 国債市場]
math: true
---

{% raw %}
# 国債の発行市場・流通市場と中央銀行：数理モデル
### Theoretical Minimum（信用創造の理論的最小限モデルの拡張）

---

## 目次

- [1. 数理モデル](#sec1)
- [2. 説明できる現象](#sec2)
- [3. モデルが整理している点](#sec3)
- [4. 対象外の現象](#sec4)
- [付録：導出手順](#appendix)

---

## 1. 数理モデル {#sec1}


### 1.0 前提

**主体・時間**

政府（財務省）・銀行・非銀行投資家（年金・保険・家計など）・中央銀行の4主体、1期間の静学モデル。発行市場（発行日の入札・決済・財政支出）と流通市場（発行後の売買）を、同じ需要関数で扱う。添字 $j=\mathrm{B}$ は銀行、$j=\mathrm{N}$ は非銀行投資家。

**A1 国債の性質**

自国通貨建てで、名目のデフォルトはない。割引債（満期に額面 $F$ を支払う）、残存期間 $n$ 年、年率複利の利回り $y$。国債は代表的な1銘柄に集約する。外すと、デフォルト確率と回収率（信用リスクプレミアム）が必要になる。

**A2 平均分散基準**

各投資家は1期間保有し、期待収益と価格変動リスクで評価する（平均分散効用、リスク回避度 $\gamma_j$）。信用創造モデルのリスク中立を外す理由は、名目で安全な国債でも価格は変動し、リスク中立のままだと需要が $y=a_j$ で水平になって数量が定まらないため。

**A3 価格変動の大きさ**

利回りの標準偏差 $\sigma_y$ は外生。価格変動の標準偏差 $\sigma_P=\mu\sigma_y$（$\mu$ は修正デュレーション）を、$y$ の近傍で一定とみなす。外すと $y$ と $\sigma_P$ が相互依存し、閉じた解が得られない。

**A4 内点解・空売りなし**

保有額は $b_j\ge0$。本稿は全投資家が国債を保有する内点解（$y>a_j$）を扱う。

**A5 決済**

国債の代金は中央銀行当座預金（準備）で決済し、政府は中央銀行に口座を持つ。政府支出は発行収入と同額で、受取人は非銀行部門。支出された資金は受取人の銀行の準備として戻る。

**A6 中央銀行の行動**

政策金利 $i_R$（準備への付利）、準備の供給、国債の保有額 $b_C$ は外生の政策変数。目的関数は特定しない。発行市場での直接引受 $b_U$ の基準値は0とする（日本では財政法第5条が原則として禁止している）。中央銀行の利益は全額が政府に納付されるとする。

**A7 流通市場の取引**

投資家は回転率 $h_j$ で売買し、売買のたびに半スプレッド $\delta/2$ を支払う。ディーラーは売買の相手方となり、在庫の費用を賄えるスプレッドを求める。

**A8 市場構造**

価格受容。入札方式（コンベンショナル方式・ダッチ方式など）の違いは扱わない。

**A9 正則条件**

$$
\sigma_P>0,\ \gamma_j>0,\ \gamma_d>0,\ n>0,\ y>-1,\ G\ge b_U\ge0,\ F>0,\ h_j\ge0,\ \delta\ge0,\ c>0,\ \beta\in[0,1],\ y>a_j\ \ (j=\mathrm{B},\mathrm{N})
$$

| 記号・項目 | 意味 |
|---|---|
| $j$ | 投資家の種類（B：銀行、N：非銀行投資家） |
| $F$ | 発行する額面 |
| $G$ | 発行収入（市場価値）＝政府の調達額 |
| $b_j$ | 投資家 $j$ の国債保有額（市場価値） |
| $b_U$ | 中央銀行の発行市場での直接引受額 |
| $\gamma_j$ | 投資家 $j$ のリスク回避度 |


### 1.1 国債の価格と利回り

**価格**

$$
P(y)=\underbrace{(1+y)^{-n}}_{\text{割引債の価格}}\tag{1}
$$

> 額面1円あたりの価格。利回り $y$ が上がれば価格は下がる

**修正デュレーションと価格変動**

$$
\mu\equiv-\dfrac{P'(y)}{P(y)}=\underbrace{\dfrac{n}{1+y}}_{\text{利回りへの感応度}}\tag{2}
$$

$$
\dfrac{\Delta P}{P}\approx\underbrace{-\mu\,\Delta y}_{\text{1次近似}}\tag{3}
$$

$$
\sigma_P=\underbrace{\mu\,\sigma_y}_{\text{価格の変動の大きさ}}\tag{4}
$$

> 満期が長いほど $\mu$ と $\sigma_P$ が大きい。2次の項（凸性）は無視する

| 記号・項目 | 意味 |
|---|---|
| $P$ | 額面1円あたりの価格 |
| $y$ | 利回り（年率・複利） |
| $n$ | 残存期間（年） |
| $\mu$ | 修正デュレーション |
| $\sigma_y$ | 利回りの標準偏差 |
| $\sigma_P$ | 価格変動（収益率）の標準偏差 |


### 1.2 会計恒等式：発行・決済・財政支出

**発行収入**

$$
G=\underbrace{P(y)\,F}_{\text{価格×額面}}=\underbrace{b_{\mathrm{B}}+b_{\mathrm{N}}+b_U}_{\text{購入者の合計}}\tag{5}
$$

**各主体の増減（市場価値）**

| 主体・項目 | 発行決済時 | 財政支出後 |
|---|---|---|
| 銀行　国債（資産） | $+b_{\mathrm{B}}$ | $+b_{\mathrm{B}}$ |
| 銀行　準備（資産） | $-(b_{\mathrm{B}}+b_{\mathrm{N}})$ | $+b_U$ |
| 銀行　預金（負債） | $-b_{\mathrm{N}}$ | $+b_{\mathrm{B}}+b_U$ |
| 非銀行　国債（資産） | $+b_{\mathrm{N}}$ | $+b_{\mathrm{N}}$ |
| 非銀行　預金（資産） | $-b_{\mathrm{N}}$ | $+G-b_{\mathrm{N}}$ |
| 政府　中央銀行預金 $Z$（資産） | $+G$ | $0$ |
| 政府　国債（負債） | $+G$ | $+G$ |
| 中央銀行　国債（資産） | $+b_U$ | $+b_U$ |
| 中央銀行　準備（負債） | $-(b_{\mathrm{B}}+b_{\mathrm{N}})$ | $+b_U$ |
| 中央銀行　政府預金（負債） | $+G$ | $0$ |

> 発行決済時に購入代金の準備が政府預金へ移り、財政支出で準備が銀行に戻る。非銀行の純資産は支出の受取分 $G$ だけ増え、政府の純資産は同額減る（支出の内容は扱わない）

**預金と準備の純増（財政支出後）**

$$
\underbrace{\Delta D}_{\text{預金の純増}}=\underbrace{G-b_{\mathrm{N}}}_{\text{受取額−非銀行の購入額}}=\underbrace{b_{\mathrm{B}}+b_U}_{\text{銀行購入分＋引受分}},\qquad\underbrace{\Delta M}_{\text{準備の純増}}=b_U\tag{6}
$$

> 信用創造の $\Delta D=\Delta L$ に対応する恒等式。銀行が買った分だけ預金が純増する。非銀行が買った分は、預金を国債に置き換えるだけで、支出で戻るため純増しない

**決済制約**

$$
\underbrace{b_{\mathrm{B}}+b_{\mathrm{N}}}_{\text{発行日に必要な準備}}\ \le\ \underbrace{M_0+L}_{\text{既存の準備＋中央銀行借入}}\tag{7}
$$

> 貸出は実行時に貸出資産と預金を同時に記帳するが、国債の購入は準備の移動を伴う。準備が足りなければ中央銀行から借りる（金利 $i_L$）

| 記号・項目 | 意味 |
|---|---|
| $D$ | 非銀行部門の預金残高 |
| $M$ | 銀行の準備（中央銀行当座預金） |
| $M_0$ | 発行前の準備残高 |
| $L$ | 中央銀行からの借入（補完貸付など） |
| $Z$ | 政府の中央銀行預金 |


### 1.3 発行市場

**投資家の問題**

$$
\max_{b_j\ge0}\ U_j=\underbrace{b_j\,(y-a_j)}_{\text{超過期待収益}}-\underbrace{\dfrac{\gamma_j}{2}\,\sigma_P^{2}\,b_j^{2}}_{\text{価格変動の費用}}\tag{8}
$$

**代替運用利回り**

$$
a_j\equiv\underbrace{i_j}_{\text{代替運用の利回り}}-\underbrace{\ell_j}_{\text{流動性便益}}+\underbrace{h_j\dfrac{\delta}{2}}_{\text{売買コスト}},\qquad i_{\mathrm{B}}=i_R,\ \ i_{\mathrm{N}}=i_D\tag{9}
$$

> 銀行の代替運用は準備への付利 $i_R$、非銀行の代替運用は預金金利 $i_D$（信用創造モデルの費用最小化の預金金利に相当）。$\ell_j$ は国債が担保・流動性規制の算入資産として持つ便益

**参加制約　PC-j**

$$
\underbrace{y-a_j}_{\text{最初の1円の期待利得}}\ \ge\ \underbrace{0}_{\text{留保水準}}\tag{10}
$$

**需要**

$$
b_j^{\ast}=\underbrace{\lambda_j}_{\text{リスク負担能力}}\,(y-a_j),\qquad\lambda_j\equiv\dfrac{1}{\gamma_j\sigma_P^{2}},\qquad\Lambda\equiv\sum_j\lambda_j=\dfrac{1}{\Gamma\sigma_P^{2}}\tag{11}
$$

**約定利回り（市場清算）**

$$
y^{\ast}=\underbrace{\bar a}_{\text{代替利回りの平均}}+\underbrace{\Gamma\,\sigma_P^{2}\,(G-b_U)}_{\text{期間プレミアム}}\tag{12}
$$

$$
\bar a\equiv\sum_j\omega_j\,a_j,\qquad\omega_j\equiv\dfrac{\Gamma}{\gamma_j},\qquad\Gamma\equiv\Big(\sum_j\dfrac{1}{\gamma_j}\Big)^{-1}\tag{13}
$$

> $G-b_U$ は民間が吸収すべき調達額。$\omega_j$ は投資家 $j$ の重み（$\omega_{\mathrm{B}}+\omega_{\mathrm{N}}=1$）、$\Gamma$ は集計リスク回避度

**額面と償還額**

$$
F=\underbrace{G\,(1+y^{\ast})^{n}}_{\text{調達額×複利}}\tag{14}
$$

**政府のPC　PC-gov と発行可能額**

$$
\underbrace{y^{\ast}}_{\text{約定利回り}}\ \le\ \underbrace{\bar y}_{\text{許容上限}}\iff G\ \le\ G_{\max}\equiv\underbrace{b_U}_{\text{引受}}+\underbrace{\dfrac{\bar y-\bar a}{\Gamma\sigma_P^{2}}}_{\text{民間が吸収できる額}}\tag{15}
$$

> 満たさなければ、発行額の縮小か引受 $b_U$ の増加が必要になる

**購入者別の配分**

$$
b_j^{\ast}=\underbrace{\omega_j\,(G-b_U)}_{\text{能力に応じた按分}}+\underbrace{\lambda_j\,(\bar a-a_j)}_{\text{代替利回りの差}}\tag{16}
$$

> $a_j$ が低い投資家ほど取り分が大きい。決済制約（式(7)）が拘束して銀行が準備を借りて買うとき、銀行の限界的な代替運用は $i_R$ ではなく $i_L$ になる

| 記号・項目 | 意味 |
|---|---|
| $U_j$ | 投資家 $j$ の効用 |
| $a_j$ | 投資家 $j$ が国債に求める最低利回り |
| $i_j$ | 代替運用の利回り（$i_{\mathrm{B}}=i_R$、$i_{\mathrm{N}}=i_D$） |
| $i_R$ | 準備への付利（政策金利） |
| $i_D$ | 預金金利 |
| $\ell_j$ | 流動性便益（担保・規制上の価値） |
| $h_j$ | 売買の回転率 |
| $\delta$ | 売買スプレッド（価格に対する比率） |
| $\lambda_j,\ \Lambda$ | リスク負担能力（個別・合計） |
| $\Gamma$ | 集計リスク回避度 |
| $\omega_j$ | 重み（$\lambda_j/\Lambda$ に等しい） |
| $\bar a$ | 代替利回りの加重平均 |
| $y^{\ast}$ | 発行市場の約定利回り |
| $\bar y$ | 政府が許容する利回りの上限 |
| $G_{\max}$ | 許容上限の下で発行できる調達額 |


### 1.4 流通市場

**市場清算（流通）**

$$
\underbrace{P(y)\,F}_{\text{国債の市場価値 }S}=\underbrace{\Lambda\,(y-\bar a)}_{\text{民間の需要}}+\underbrace{b_C}_{\text{中央銀行の保有}}\tag{17}
$$

> 発行市場と同じ需要関数。違いは、発行市場では調達額 $G$ を所与として額面 $F$ が決まり、流通市場では額面残高 $F$ を所与として利回り $y$ が決まる点。$y$ が上がると $S$ が減る（価格が下がる）効果が加わるため陰関数になる。式(12)で $G\to S,\ b_U\to b_C$ とした形でもある

**売買（取引量）**

$$
\Delta q_j=\underbrace{\dfrac{b_j'}{P'}}_{\text{変化後の額面保有}}-\underbrace{\dfrac{b_j}{P}}_{\text{変化前の額面保有}},\qquad\sum_j\Delta q_j+\Delta q_C=0\tag{18}
$$

> プライム付きは条件（$a_j$、$\lambda_j$、$b_C$ など）が変化した後。額面で数えるので評価替えによる見かけの増減は取引に含まれず、額面残高 $F$ が不変なので取引量の合計は0

**評価損益**

$$
\Delta E_{\mathrm{B}}\approx\underbrace{-\mu\,b_{\mathrm{B}}}_{\text{時価評価の感応度}}\Delta y\tag{19}
$$

> 時価評価の対象となる保有分について、利回りの上昇は銀行の自己資本 $E$ を減らす。信用創造モデルの自己資本規制を通じて貸出規模に影響し得るが、本稿は接続点を示すにとどめる

**ディーラーのPC　PC-dealer とスプレッド**

$$
\underbrace{\dfrac{\delta}{2}\,V}_{\text{スプレッド収入}}\ \ge\ \underbrace{c\,Q}_{\text{在庫の保有費用}}+\underbrace{\dfrac{\gamma_d}{2}\,\sigma_P^{2}\,Q^{2}}_{\text{在庫のリスク費用}}\tag{20}
$$

$$
\delta^{\ast}=\dfrac{\underbrace{2cQ+\gamma_d\sigma_P^{2}Q^{2}}_{\text{在庫にかかる費用}}}{\underbrace{V}_{\text{売買代金}}},\qquad V=\sum_jh_j\,b_j\tag{21}
$$

> ディーラー間の競争でPCが等号になる点がスプレッド。$\delta$ は $a_j$ を通じて利回りに入り、$b_j$ は $V$ を通じて $\delta$ に入る（連立。解の存在と一意性は扱わない）

| 記号・項目 | 意味 |
|---|---|
| $S$ | 国債の市場価値の残高（$S=PF$） |
| $b_C$ | 中央銀行の国債保有額（市場価値） |
| $q_j,\ q_C$ | 額面で数えた保有 |
| $E_{\mathrm{B}}$ | 銀行の自己資本 |
| $Q$ | ディーラーの在庫（市場価値） |
| $c$ | 在庫の保有費用率（調達費用等−保有利回り、正と仮定） |
| $\gamma_d$ | ディーラーのリスク回避度 |
| $V$ | 売買代金 |
| $\delta^{\ast}$ | ディーラー競争の下のスプレッド |


### 1.5 中央銀行の役割

**① 政策金利**

$$
\dfrac{\partial\bar a}{\partial i_R}=\underbrace{\omega_{\mathrm{B}}}_{\text{銀行の重み}}+\underbrace{\beta\,\omega_{\mathrm{N}}}_{\text{預金金利経由}},\qquad\beta\equiv\dfrac{\partial i_D}{\partial i_R}\tag{22}
$$

> 準備への付利は銀行の代替運用利回り $a_{\mathrm{B}}$ を直接動かし、非銀行には預金金利を通じて届く。$\beta$ は外生

**② 準備の供給**

式(7)の右辺 $M_0+L$。

> 発行日に消化できる額の上限を決める。準備が潤沢なら制約は拘束せず、発行は準備の量に制約されない

**③ 資産買入（量的緩和）**

$$
\underbrace{\Delta M}_{\text{準備の増加}}=\underbrace{\Delta b_C}_{\text{買入額}}=\Delta b_C^{\mathrm{B}}+\Delta b_C^{\mathrm{N}},\qquad\underbrace{\Delta D}_{\text{預金の増加}}=\Delta b_C^{\mathrm{N}}\tag{23}
$$

> 銀行から買えば準備だけが増え、非銀行から買えば準備と預金が同額増える。利回りへの効果は式(36)で、民間が持つデュレーション・リスクの量が減ることによる

**④ 中央銀行の損益**

$$
\Pi_C=\underbrace{y\,b_C}_{\text{国債の利息収入}}-\underbrace{i_R\,b_C}_{\text{準備への付利}}=\underbrace{(y-i_R)\,b_C}_{\text{利ざや}}\tag{24}
$$

> 買入・引受の資金がすべて準備で賄われ（$\Delta M=b_C$）、他の項目は不変とする。$i_R>y$ のとき逆ざや（$\Pi_C\lt 0$）

**⑤ 統合政府の利払い費**

$$
I_{cons}=\underbrace{y\,(S-b_C)}_{\text{民間保有分の利払い}}+\underbrace{i_R\,b_C}_{\text{準備への付利}}\tag{25}
$$

> 中央銀行が持つ国債の利息は納付金で政府に戻る（A6）。買入は、固定的な長期債の利払いを、政策金利に連動する準備の付利に置き換える。年あたりの利払いを市場価値×利回りで近似している

**⑥ 利回り目標**

$$
b_C^{T}=\underbrace{P(y_T)\,F}_{\text{目標利回りでの時価}}-\underbrace{\Lambda\,(y_T-\bar a)}_{\text{民間の需要}}\ \ \ (\ge0)\tag{26}
$$

> 目標 $y_T$ を維持するために、民間が持たない分を中央銀行がすべて保有する。保有額が内生になる。$b_C^{T}\ge0$ となるのは、$y_T$ が $b_C=0$ のときの市場の利回り以下の場合

**⑦ 直接引受**

$$
b_U=G\ \Rightarrow\ b_{\mathrm{B}}=b_{\mathrm{N}}=0,\quad\Delta D=\Delta M=G\tag{27}
$$

> 民間の購入がなくなり、利回りは市場でなく中央銀行が決める

| 記号・項目 | 意味 |
|---|---|
| $\beta$ | 政策金利の預金金利への波及度 |
| $i_L$ | 中央銀行借入の金利 |
| $\Delta b_C^{\mathrm{B}},\ \Delta b_C^{\mathrm{N}}$ | 銀行・非銀行からの買入額 |
| $\Pi_C$ | 中央銀行の期待収益（1期間） |
| $I_{cons}$ | 統合政府（政府＋中央銀行）の利払い費 |
| $y_T$ | 利回り目標 |
| $b_C^{T}$ | 目標を維持するための保有額 |


### 1.6 主要帰結

**主要式**

$$
\boxed{\begin{aligned}y^{\ast}&=\underbrace{\bar a}_{\text{代替利回り}}+\underbrace{\Gamma\sigma_P^{2}(G-b_U)}_{\text{期間プレミアム}}\\ \Delta D&=\underbrace{b_{\mathrm{B}}+b_U}_{\text{銀行購入分＋引受分}},\quad\Delta M=b_U\\ P(y)F&=\underbrace{\Lambda(y-\bar a)+b_C}_{\text{流通市場の清算}}\\ I_{cons}&=\underbrace{y(S-b_C)+i_R\,b_C}_{\text{統合政府の利払い}}\end{aligned}}\tag{28}
$$

> 発行収入が預金を創る範囲は、銀行と中央銀行が買った分に限られる。利回りは需給（発行量−中央銀行の保有）と代替運用利回りで決まる

**比較静学**

| 変化 | 結果 | 符号・式 |
|---|---|---|
| $G\uparrow$（発行増） | $y^{\ast}$ | 上昇　$+\Gamma\sigma_P^{2}$ |
| $b_U\uparrow$（引受増） | $y^{\ast}$ | 低下　$-\Gamma\sigma_P^{2}$ |
| $i_R\uparrow$ | $y^{\ast}$ | 上昇　$\omega_{\mathrm{B}}+\beta\omega_{\mathrm{N}}$ |
| $\ell_j\uparrow$ | $y^{\ast}$ | 低下　$-\omega_j$ |
| $\delta\uparrow$ | $y^{\ast}$ | 上昇　$\sum_j\omega_jh_j/2$ |
| $\sigma_P\uparrow$（長期化） | $y^{\ast}$ | 上昇　$2\Gamma\sigma_P(G-b_U)$ |
| $F\uparrow$（流通） | $y$ | 上昇　$P/(\Lambda+\mu S)$ |
| $b_C\uparrow$（買入） | $y$ | 低下　$-1/(\Lambda+\mu S)$ |
| $\bar a\uparrow$（流通） | $y$ | 上昇　$\Lambda/(\Lambda+\mu S)$（1未満） |
| $V\uparrow$ | $\delta^{\ast}$ | 低下　$-\delta^{\ast}/V$ |
| $Q\uparrow$ | $\delta^{\ast}$ | 上昇　$(2c+2\gamma_d\sigma_P^{2}Q)/V$ |
| $i_R\uparrow$ | $\Pi_C$ | 低下　$-b_C$ |

> 導出は付録 A.6、A.7、A.9。$\Pi_C$ の行は $b_C$ を所与とした場合

**特殊ケース**

$$
b_U=0\Rightarrow y^{\ast}=\bar a+\Gamma\sigma_P^{2}\,G\ \text{（基準ケース）}
$$

$$
\sigma_P\to0\Rightarrow y^{\ast}\to\bar a\ \text{（価格変動がなければ、発行額は利回りに影響しない）}
$$

$$
a_{\mathrm{B}}=a_{\mathrm{N}}=a\Rightarrow\bar a=a,\quad b_j^{\ast}=\omega_j\,(G-b_U)
$$

$$
b_{\mathrm{B}}=b_U=0\Rightarrow\Delta D=0\ \text{（非銀行だけが購入）},\qquad b_{\mathrm{N}}=b_U=0\Rightarrow\Delta D=G\ \text{（銀行だけが購入）}
$$

$$
b_U=G\Rightarrow\Delta D=\Delta M=G\ \text{（直接引受）}
$$

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 国債発行で預金が増える場合と増えない場合 | $\Delta D=b_{\mathrm{B}}+b_U$。銀行が買った分と中央銀行が引き受けた分だけ預金が純増する。非銀行が買った分は、預金から国債への置き換えで純増しない（式(6)）。 |
| 発行が準備を一時的に吸収する | 発行決済時に購入代金の準備が政府預金へ移り、財政支出で銀行に戻る。発行日の消化には準備が要る（式(7)）。 |
| 発行額が増えると利回りが上がる | 民間が吸収する額 $G-b_U$ に比例して期間プレミアムが上がる。傾きは集計リスク回避度と価格変動の分散の積（式(12)）。 |
| 長期債ほど利回りが高い傾向 | 満期が長いほど $\mu$ と $\sigma_P$ が大きく、民間のリスク負担能力 $\Lambda$ が縮む（式(2)(4)(11)）。 |
| 政策金利が長期金利に波及する | 準備への付利が銀行の最低要求利回りを動かし、預金金利を通じて非銀行にも届く。流通市場での波及は1未満（式(22)(36)）。 |
| 量的緩和で金利が下がる | 買入で民間が持つデュレーション・リスクの量が減り、利回りが下がる。準備が買入額だけ増える（式(23)(36)）。 |
| 利回り上昇で銀行の自己資本が減る | 時価評価の保有分に $-\mu b_{\mathrm{B}}\Delta y$ の評価損が出る（式(19)）。 |
| 流通市場の流動性（スプレッド） | ディーラーの在庫費用と売買代金で決まり、売買代金が多いほどスプレッドは狭い。スプレッドは投資家の要求利回りに入る（式(21)(9)）。 |
| 中央銀行の逆ざや | 買入が準備で賄われると、$i_R>y$ のとき損失。統合政府では長期債の利払いが準備の付利に置き換わる（式(24)(25)）。 |
| 利回り目標の下での保有額の増減 | 目標を市場の均衡より低く設定すると、民間が持たない分を中央銀行が保有する（式(26)）。 |
| 直接引受の性質 | 引受額が調達額に等しいと民間の購入はなく、利回りは市場で決まらない（式(27)）。 |

## 3. モデルが整理している点 {#sec3}

- 国債発行を、準備の移動（発行日）と財政支出（預金の純増）の2段階に分け、「預金の純増＝銀行購入分＋中央銀行の保有分」という信用創造と同じ形の恒等式にまとめている。
- 発行市場と流通市場を同じ需要関数で扱い、違いを「調達額 $G$ を所与とするか、額面残高 $F$ を所与とするか」に絞っている。
- 中央銀行の役割を、政策金利（$a_j$ への作用）、準備の供給（決済制約）、国債の保有（$b_U$、$b_C$）の三つの経路として式の中の位置で区別している。

## 4. 対象外の現象 {#sec4}

モデル自身が明示的に「主張しない／範囲外」としているもの：

- 信用リスク（デフォルト確率・回収率）、インフレと実質金利、為替と海外投資家
- 償還・借換え・多期間の債務動学、財政の持続可能性
- 複数の満期（イールドカーブ全体の形）。国債は代表的な1銘柄に集約している
- 入札方式の違い、入札の不調、プライマリーディーラー制度の詳細
- 中央銀行の目的関数と最適な政策、期待形成、フォワードガイダンス
- 準備の水準が拘束する局面でのコール市場や中央銀行借入の詳細な動き
- 年金・保険など非銀行投資家の規制・負債構造
- 買入や発行が株式・社債・貸出市場に及ぼす波及（評価損益を通じた接続点を示すにとどまる）
- 財政ファイナンスや量的緩和のマクロ的な帰結（物価・為替・景気）
- $\delta$ と $b_j$ の連立の解の存在と一意性
- 「国債の発行量に制約がない」という意味の主張

---

## 付録：導出手順 {#appendix}

各Stepは「操作→結果」の順に書く。式番号は本文からの通し番号。


### A.0 構造図

**全体像**

```
            国債の発行・流通・中央銀行
                      │
      ┌───────────────┼───────────────┐
      │               │               │
  会計レイヤー      市場レイヤー      中央銀行レイヤー
      │               │               │
ΔD=b_B+b_U 式(6)  投資家の需要 式(11)  政策金利 式(22)
決済制約 式(7)     │            準備供給 式(7)
      │        ┌────────┴───────┐    資産買入 式(23)
      │        │                │    損益 式(24)(25)
      │    発行市場 (G所与)  流通市場 (F所与)  利回り目標 式(26)
      │     式(12)       式(17)
      │        └────────┬───────┘
      │                 │
      │          スプレッド 式(21)
      │                 │
      └────────┬────────┘
               ▼
       評価損益 式(19)
       （銀行の自己資本へ）
```

**読み方**

左の会計レイヤーが預金と準備の増減を決め、中央の市場レイヤーが需要関数から利回りを決める。右の中央銀行レイヤーは、利回りの決まり方の三か所（$a_j$、決済制約、$b_U$・$b_C$）に別々に入る。最後に利回りの変化が評価損益を通じて銀行の自己資本に届く。

### A.1 使う道具

**T1 平均分散効用**

$$
\text{効用}=\underbrace{b\,e}_{\text{期待収益}}-\underbrace{\dfrac{\gamma}{2}\,\sigma^{2}b^{2}}_{\text{リスクの費用}}\quad\text{（保有額 }b\text{、超過期待収益率 }e\text{、標準偏差 }\sigma\text{）}
$$

**T2 二次関数の最大化**

$$
f(b)=pb-\dfrac{q}{2}b^{2},\ q>0\Rightarrow b^{\ast}=\dfrac{p}{q},\quad f(b^{\ast})=\dfrac{p^{2}}{2q}
$$

**T3 不等式**

両辺への加減は可。正の数の乗除で向きは不変、負の数の乗除で反転。0では割れない。

**T4 加重平均**

$$
\sum_j\omega_j=1,\qquad\sum_j\omega_ja_j=\bar a
$$

**T5 べき関数の微分**

$$
\dfrac{d}{dy}(1+y)^{-n}=-n\,(1+y)^{-n-1}
$$

**T6 陰関数の微分**

$$
H(y,\theta)=0,\ \dfrac{\partial H}{\partial y}\ne0\ \Rightarrow\ \dfrac{dy}{d\theta}=-\dfrac{\partial H/\partial\theta}{\partial H/\partial y}
$$

**T7 商の微分**

$$
\Big(\dfrac{u}{v}\Big)'=\dfrac{u'v-uv'}{v^{2}}
$$

**T8 代入法**

一つの式から変数を解き、他の式へ代入して未知数を減らす。

**T9 偏微分**

他の変数を定数とみなして一つの変数で微分する。

### A.2 国債の価格とデュレーション

**Step 1　T5で価格を微分**

$$
P'(y)=-n\,(1+y)^{-n-1}\tag{29}
$$

**Step 2　Pで割る**

$$
-\dfrac{P'}{P}=\dfrac{n\,(1+y)^{-n-1}}{(1+y)^{-n}}=\dfrac{n}{1+y}
$$

これが修正デュレーション $\mu$ で、式(2)を得る。

**Step 3　1次近似**

$\Delta P\approx P'(y)\,\Delta y$ の両辺を $P$ で割り、式(2)を使うと式(3)を得る。

**Step 4　価格のばらつき**

式(3)の右辺は $\Delta y$ の定数倍（$-\mu$）なので、標準偏差は $\mu$ 倍になる。$\sigma_P=\mu\sigma_y$、すなわち式(4)。

**Step 5　保有者の評価損益**

銀行の時価評価の保有分 $b_{\mathrm{B}}$ の増減は $b_{\mathrm{B}}\,\Delta P/P$。式(3)を代入すると式(19)。

**確認**

$n=10$ で $y$ が 1.00% から 1.10% に上がると、$P$ は 0.90529 から 0.89637 に変わり、変化率は $-0.98\%$。式(3)の近似値は $-\mu\Delta y=-(10/1.01)\times0.001=-0.99\%$ で、ほぼ一致する。

| 記号・項目 | 内容 |
|---|---|
| 入力 | 式(1) |
| T5 | べき関数の微分 |

### A.3 会計恒等式

**Step 1　購入者の合計**

発行収入は価格×額面で、購入者（銀行・非銀行・中央銀行の引受）の支払いの合計に等しい。式(5)。

**Step 2　発行決済**

銀行の購入代金は自らの準備から、非銀行の購入代金は顧客の預金と銀行の準備から支払われ、中央銀行は準備を政府預金に付け替える。中央銀行の引受分 $b_U$ は準備を減らさず政府預金だけを増やす。

$$
\Delta M^{s}=-(b_{\mathrm{B}}+b_{\mathrm{N}}),\qquad\Delta Z^{s}=b_{\mathrm{B}}+b_{\mathrm{N}}+b_U=G\tag{30}
$$

**Step 3　財政支出**

政府預金が減り、受取人の預金と受取人の銀行の準備が同額増える。

$$
\Delta Z^{e}=-G,\qquad\Delta M^{e}=+G,\qquad\Delta D^{e}=+G\tag{31}
$$

**Step 4　合算（T8）**

準備は $\Delta M=\Delta M^{s}+\Delta M^{e}=-(b_{\mathrm{B}}+b_{\mathrm{N}})+G=b_U$。預金は購入で $-b_{\mathrm{N}}$、支出で $+G$ なので $\Delta D=G-b_{\mathrm{N}}=b_{\mathrm{B}}+b_U$。式(6)を得る。

**Step 5　銀行のバランスシート**

$$
\underbrace{b_{\mathrm{B}}+\Delta M}_{\text{銀行の資産の増加}}=b_{\mathrm{B}}+b_U=\underbrace{\Delta D}_{\text{預金の増加}}\tag{32}
$$

> 式(6)が銀行の貸借対照表と整合している

**Step 6　決済制約**

発行日に銀行システムから流出する準備は $b_{\mathrm{B}}+b_{\mathrm{N}}$（式(30)）。これが $M_0$ を超える分は中央銀行借入 $L$ で賄うので、式(7)。

**確認**

非銀行だけが買う（$b_{\mathrm{B}}=b_U=0$）と $\Delta D=G-b_{\mathrm{N}}=0$。銀行だけが買う（$b_{\mathrm{N}}=b_U=0$）と $\Delta D=G$。

| 記号・項目 | 内容 |
|---|---|
| 入力 | A5、式(5) |
| T8 | 代入法 |

### A.4 投資家の最適化と参加制約

**Step 1　超過期待収益**

国債の期待収益は利回り $y$ に流動性便益 $\ell_j$ を足し、売買コスト $h_j\delta/2$ を引いたもの。代替運用の $i_j$ との差は $y+\ell_j-h_j\delta/2-i_j=y-a_j$（式(9)）。

**Step 2　T1で効用**

保有額 $b_j$、超過期待収益率 $y-a_j$、標準偏差 $\sigma_P$ を T1 に代入すると式(8)。

**Step 3　最初の1円の利得**

$b_j=0$ のとき効用の傾きは $y-a_j$。これが非負でなければ保有しない。式(10)。

**Step 4　T2で最大化**

$p=y-a_j$、$q=\gamma_j\sigma_P^{2}>0$ とすると $b_j^{\ast}=(y-a_j)/(\gamma_j\sigma_P^{2})$。式(11)の第1式。合計 $\Lambda=\sum_j\lambda_j=\dfrac{1}{\sigma_P^{2}}\sum_j\dfrac{1}{\gamma_j}=\dfrac{1}{\Gamma\sigma_P^{2}}$ が第3式。

**Step 5　最大値**

$$
U_j^{\ast}=\dfrac{(y-a_j)^{2}}{2\gamma_j\sigma_P^{2}}=\dfrac{\lambda_j}{2}\,(y-a_j)^{2}\ \ge0\tag{33}
$$

**確認**

$y=a_j$ のとき $b_j^{\ast}=0$、$U_j^{\ast}=0$。保有しない場合と同じ利得になる境目が参加制約の等号。

| 記号・項目 | 内容 |
|---|---|
| 入力 | A2、A4、式(9) |
| T1 | 平均分散効用 |
| T2 | 二次関数の最大化 |

### A.5 発行市場の清算解

**Step 1　需要の合計**

式(11)を足し合わせる。

$$
\sum_jb_j^{\ast}=\Lambda\,y-\sum_j\lambda_ja_j
$$

**Step 2　T4で平均にまとめる**

$\lambda_j=\Lambda\omega_j$（$\omega_j=\lambda_j/\Lambda=\Gamma/\gamma_j$）なので $\sum_j\lambda_ja_j=\Lambda\bar a$。式(13)。

**Step 3　市場清算**

式(5)の $G=\sum_jb_j+b_U$ に代入すると $G-b_U=\Lambda\,(y-\bar a)$。

**Step 4　$\Lambda>0$ で割って解く**

$$
y^{\ast}=\bar a+\dfrac{G-b_U}{\Lambda}=\bar a+\Gamma\sigma_P^{2}\,(G-b_U)
$$

不等号の向きは不変（T3）。式(12)を得る。

**Step 5　額面**

$P(y^{\ast})F=G$ を $F$ について解くと $F=G/P(y^{\ast})=G(1+y^{\ast})^{n}$。式(14)。

**Step 6　政府のPC**

$y^{\ast}\le\bar y$ に Step 4 を代入し、$\Lambda>0$ を掛けると $G-b_U\le\Lambda\,(\bar y-\bar a)$。$\Lambda=1/(\Gamma\sigma_P^{2})$ と $b_U$ の移項で式(15)。

**Step 7　配分**

$b_j^{\ast}=\lambda_j(y^{\ast}-a_j)$ に Step 4 を代入する。

$$
b_j^{\ast}=\lambda_j(\bar a-a_j)+\lambda_j\,\Gamma\sigma_P^{2}\,(G-b_U)
$$

$\lambda_j\Gamma\sigma_P^{2}=\omega_j$ なので式(16)。

**確認**

$a_{\mathrm{B}}=a_{\mathrm{N}}=a$ なら $\bar a=a$ で、配分は $b_j^{\ast}=\omega_j(G-b_U)$。合計は $\sum_j\omega_j(G-b_U)=G-b_U$ で式(5)と整合する。

| 記号・項目 | 内容 |
|---|---|
| 入力 | 式(11)、式(5) |
| T3 | 不等式 |
| T4 | 加重平均 |
| T8 | 代入法 |

### A.6 流通市場の陰関数と比較静学

**Step 1　清算条件を関数にする**

$$
H(y)\equiv P(y)\,F-\Lambda\,(y-\bar a)-b_C=0\tag{34}
$$

式(17)を移項したもの。

**Step 2　$y$ で偏微分（T5・T9）**

$$
\dfrac{\partial H}{\partial y}=P'(y)F-\Lambda=-\big(\mu S+\Lambda\big)\lt0\tag{35}
$$

> 式(2)より $P'F=-\mu PF=-\mu S$

**Step 3　他の変数で偏微分**

$$
\dfrac{\partial H}{\partial F}=P,\qquad\dfrac{\partial H}{\partial b_C}=-1,\qquad\dfrac{\partial H}{\partial\bar a}=\Lambda
$$

**Step 4　T6で $y$ の変化**

$$
\dfrac{\partial y}{\partial F}=\dfrac{P}{\Lambda+\mu S},\qquad\dfrac{\partial y}{\partial b_C}=-\dfrac{1}{\Lambda+\mu S},\qquad\dfrac{\partial y}{\partial\bar a}=\dfrac{\Lambda}{\Lambda+\mu S}\tag{36}
$$

**Step 5　符号**

$\Lambda>0$、$\mu S>0$ なので分母は正。前の2式は符号が定まり、第3式は0と1の間。

**Step 6　取引量の保存**

額面で数えた保有は $q_j=b_j/P$、$q_C=b_C/P$。額面残高 $\sum_jq_j+q_C=F$ が一定なので、条件変化後も合計は同じで、増減の合計は0。式(18)。

**確認**

$\mu S\to0$（価格が利回りに反応しない）では、$\partial y/\partial b_C\to-1/\Lambda=-\Gamma\sigma_P^{2}$ で、発行市場の式(12)の $b_U$ の係数に一致する。

| 記号・項目 | 内容 |
|---|---|
| 入力 | 式(17)、式(2) |
| T5 | べき関数の微分 |
| T6 | 陰関数の微分 |
| T9 | 偏微分 |

### A.7 スプレッドと売買コスト

**Step 1　投資家の売買コスト**

売買代金 $h_jb_j$ に半スプレッド $\delta/2$ を掛けた $h_jb_j\delta/2$ を支払う。保有額1円あたり $h_j\delta/2$ で、式(9)の第3項。

**Step 2　売買代金**

$V=\sum_jh_jb_j$（式(21)の第2式）。

**Step 3　ディーラーの収入と費用**

収入は売買代金に半スプレッドを掛けた $(\delta/2)V$。費用は在庫の保有費用 $cQ$ と、T1と同じ形のリスク費用 $\dfrac{\gamma_d}{2}\sigma_P^{2}Q^{2}$。

**Step 4　PCと等号**

収入が費用以上という条件が式(20)。競争で等号とし、$V>0$ で割って $\delta$ について解くと式(21)。

**Step 5　微分（T7）**

$$
\dfrac{\partial\delta^{\ast}}{\partial V}=-\dfrac{2cQ+\gamma_d\sigma_P^{2}Q^{2}}{V^{2}}=-\dfrac{\delta^{\ast}}{V},\qquad\dfrac{\partial\delta^{\ast}}{\partial Q}=\dfrac{2c+2\gamma_d\sigma_P^{2}Q}{V}\tag{37}
$$

**Step 6　$\bar a$ への入り方**

式(9)と式(13)より、$\bar a$ の $\delta$ に関する微分は次のとおり。

$$
\dfrac{\partial\bar a}{\partial\delta}=\sum_j\omega_j\,\dfrac{h_j}{2}\ge0\tag{38}
$$

**確認**

在庫がなければ（$Q=0$）$\delta^{\ast}=0$。売買代金が増えるほどスプレッドは狭まる。

| 記号・項目 | 内容 |
|---|---|
| 入力 | A7、式(9)、式(13) |
| T1 | 平均分散効用 |
| T7 | 商の微分 |

### A.8 中央銀行：買入・損益・統合政府・利回り目標

**Step 1　買入の会計**

銀行から買うと、銀行の国債が減り準備が同額増える。非銀行から買うと、非銀行の国債が減り預金が増え、その銀行の準備と預金が同額増える。準備は両方で増えるので $\Delta M=\Delta b_C^{\mathrm{B}}+\Delta b_C^{\mathrm{N}}$、預金は非銀行からの買入分だけ増える。式(23)。

**Step 2　損益**

保有額 $b_C$ の利息収入は $yb_C$。買入・引受の資金は準備なので、付利は $i_Rb_C$（式(6)(23)）。差が式(24)。

**Step 3　統合政府**

政府が払う利息は国債の残高全体で $yS$。中央銀行の利益 $\Pi_C$ は納付金で政府に戻るので、統合政府の利払いは次のとおり。

$$
I_{cons}=yS-\Pi_C=yS-(y-i_R)\,b_C=y\,(S-b_C)+i_R\,b_C
$$

式(25)を得る。

**Step 4　利回り目標**

式(17)に $y=y_T$ を代入し $b_C$ について解く。式(26)。

**Step 5　$b_C^{T}\ge0$ の条件**

式(34)の $H$ は $y$ について減少（式(35)）。$b_C=0$ のときの市場の利回りを $y^{0}$ とすると $H(y^{0})=0$ なので、$y_T\le y^{0}$ のとき $b_C^{T}=H(y_T)\ge0$（T3）。

**Step 6　直接引受**

$b_U=G$ を式(6)に代入すると $\Delta D=G$、$\Delta M=G$。民間の購入は $G-b_U=0$ で、空売りがなければ $b_{\mathrm{B}}=b_{\mathrm{N}}=0$（A4）。式(27)。

**確認**

$y=0.5\%$、$i_R=1.0\%$、$b_C=100$ なら $\Pi_C=(0.5\%-1.0\%)\times100=-0.5$（逆ざや）。このとき統合政府の利払いは民間保有分に $y$、中央銀行保有分に $i_R$ がかかる。

| 記号・項目 | 内容 |
|---|---|
| 入力 | 式(6)、式(17)、式(34) |
| T3 | 不等式 |
| T8 | 代入法 |

### A.9 発行市場の比較静学

**Step 1　式(12)を偏微分（T9）**

$\bar a$ は $\Gamma$、$\omega_j$ を通じて $\sigma_P$ に依存しない。$a_j$ は式(9)で $i_R$、$\ell_j$、$\delta$ に依存し、$i_{\mathrm{N}}=i_D$ は $\beta$ を通じて $i_R$ に依存する。

**Step 2　各変数の微分**

$$
\begin{aligned}\dfrac{\partial y^{\ast}}{\partial G}&=\Gamma\sigma_P^{2},\qquad\dfrac{\partial y^{\ast}}{\partial b_U}=-\Gamma\sigma_P^{2}\\ \dfrac{\partial y^{\ast}}{\partial i_R}&=\omega_{\mathrm{B}}+\beta\,\omega_{\mathrm{N}},\qquad\dfrac{\partial y^{\ast}}{\partial\ell_j}=-\omega_j\\ \dfrac{\partial y^{\ast}}{\partial\delta}&=\sum_j\omega_j\dfrac{h_j}{2},\qquad\dfrac{\partial y^{\ast}}{\partial\sigma_P}=2\,\Gamma\sigma_P\,(G-b_U)\end{aligned}\tag{39}
$$

**Step 3　符号**

$\Gamma>0$、$\sigma_P>0$、$G\ge b_U$（A9）、$\omega_j>0$、$\beta\in[0,1]$、$h_j\ge0$ より、$G$、$i_R$、$\delta$、$\sigma_P$ についての微分は正または0、$b_U$ と $\ell_j$ についての微分は負。

**確認**

$\sigma_P\to0$ では $\Gamma\sigma_P^{2}\to0$ で、$G$、$b_U$、$\sigma_P$ への感応度はいずれも0。利回りは $\bar a$ だけで決まる（特殊ケース）。

| 記号・項目 | 内容 |
|---|---|
| 入力 | 式(12)、式(9)、式(13) |
| T9 | 偏微分 |

---

**© 2026 Kaoru**. 本記事および数理モデルの著作権は著者に帰属します。学術的リサーチ・引用・非営利目的の共有は [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/deed.ja) の下で許可されます。商用利用・共同研究・モデルの拡張は別途ご相談ください。
{% endraw %}
