---
layout: post
title: "Bohn (2002) \"Government Asset and Liability Management in an Era of Vanishing Public Debt\"、Cleveland連銀会議報告論文: 数理モデル"
date: 2026-11-05 00:00:00 +0900
categories: [マクロ経済学, 財政・公債管理]
math: true
---

{% raw %}
# Bohn (2002) "Government Asset and Liability Management in an Era of Vanishing Public Debt"、Cleveland連銀会議報告論文: 数理モデル
### 公債消滅の時代における政府の資産・負債管理：バランスシート恒等式と「ロビー活動（レントシーキング）モデル」

---

## 論文の紹介 {#intro}

本記事は、Henning Bohn（カリフォルニア大学サンタバーバラ校）の論文 "Government Asset and Liability Management in an Era of Vanishing Public Debt"（2002年1月稿。2001年10月25–26日開催のクリーブランド連銀「公債残高の縮小」会議での報告論文）の**背景にある数理モデルだけを整理した早見表**です。論文の解説ではなく、式・前提・記号・導出が中心です。

**論文の内容（要約）**：2001年当時の財政見通し（OMB・CBO）では、米国の公債は2012–15年頃に完済される軌道にあり、財務省証券は連銀の公開市場操作に必要な量を割り込む。一方、社会保障は退職するベビーブーム世代への巨額の債務を負っており、信託基金が財務省証券を吸収している。この結果、政府は運用先の決まらない「未コミット資金（uncommitted funds）」を抱える。論文は次の3点を扱う。

1. **バランスシート分析**：財務省・社会保障・連銀を連結した恒等式から、社会保障債務と通貨発行残高の合計が純債務を超えると、公債が消えるか未コミット資金が積み上がることが避けられないと示す。
2. **ロビー活動モデル**：2期間の世代重複モデルで、政府の証券購入が企業価値を押し上げるため企業家がロビー活動をすることを定式化し、価格効果が証券のリスクに比例して大きくなることを示す。したがってレントシーキングは、低リスク証券またはインデックスファンドへの投資制限で避けられる。
3. **政策選択肢の整理**：未コミット資金の運用主体としては社会保障が最適であり、「財務省証券市場の流動性」「レントシーキングの回避（未コミット資金の抑制）」「世代間リスク分担」の三つを同時には満たせない（トリレンマ）と結論する。

---

## 目次

- [論文の紹介](#intro)
- [1. 数理モデル](#sec1)
- [2. 説明できる現象](#sec2)
- [3. モデルが整理している点](#sec3)
- [4. 対象外の現象](#sec4)
- [5. 主要文献・関連論文](#sec5)
- [付録：導出手順](#appendix)

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間**

世代重複（OG）経済。各世代 $t$ は $n$ 人の個人からなり、2期間（勤労期・退職期）生きる。政府は財務省・社会保障・連銀を連結した主体として扱う。時点 $t$ の勤労期に労働（1単位、非弾力的）を供給して賃金 $w_t$ を得て、貯蓄・借入・起業を行う。

**記号の扱いについて**：原論文PDFではギリシャ文字の多くが文字化けしている。式の構造・本文の説明・Table 2〜10から復元した記号・指数には「※」を付ける。復元できず原文に式が見えない係数（例：$\alpha$）は、導出から整合する形を補い、付録で導出を示す。

**A1 世代重複と有限の計画期間**

個人の計画期間が有限であるため、財政政策が実物効果を持つ（リカード中立性を回避）。社会保障も自然に組み込める。外すと、国債・移転は現在世代の純資産に影響せず、政策の資産選択問題が意味を失う。

**A2 企業家資本と増加費用**

全個人が賃金所得を企業家資本 $e_{it}$ に変換できる。その消費コストは $e_{it}^{\gamma}$（$\gamma>1$）で逓増する（技能・時間の制約）。企業家資本はすべて所有者が拠出する。

**A3 生産技術・共通生産性**

規模に関して収穫一定のコブ＝ダグラス型。確率的生産性は企業間で共通（$A_{it}=A_t$）とし、異質性は資本の再販価値 $v_{it}$ のみに現れる。外すと、企業間の異質性が賃金にも及び、式(14)(15)の簡約が成り立たない。

**A4 完備な金融市場と世代内リスクプーリング**

任意の金融資産が取引でき、同一世代内で限界代替率が均等化する。このため共通の確率割引因子 $m_{t+1}^{-\sigma}$ が存在する。企業家資本は取引できないが、資本 $k_{it}$ の請求権と同じリスククラスにあるため、リスクプーリングには足りる。

**A5 同型（ホモセティック）選好**

効用は $u(c^1_{it})+u(c^2_{it+1})$（割引なし）、$u(c)=c^{1-\sigma}/(1-\sigma)$、$\sigma>0$ は相対的リスク回避度。

**A6 確定給付と政府の外生変数**

老年期の移転は確定給付。したがって、政府資産の予想外の高収益（や政府債務の低い利払い）は将来の納税者に帰属する。この仮定が、政府の保有資産・発行債務が現在の貯蓄者の純資産に入らない理由であり、実物効果の源泉となる。政府は $F_t^G$（資産規模）、$B_t$（給付）、$D_t$ と $R^D_t$（債務）を外生とし、問題は $F_t^G$ の**運用方法だけ**とする。政府債務・政府資産は単価1に基準化する。

**A7 取引対象と監視不能性**

政府の投資対象は公開取引される証券（市場価格のある資産）のみ。同一資産クラス内の銘柄選択は公衆が監視できず、選択する官僚はロビー活動の対象になり得る。

**A8 影響関数**

ロビー活動 $\ell_i\ge 0$ が政府投資の配分に与える効果は影響関数 $\Phi$ で表す。論文は、政策担当者が実際にロビーに動かされると主張するわけではない（$\Phi\equiv 0$ は特殊ケース）。

**A9 企業家は政府投資の価格効果を認識する**

価格受容的な要素市場の仮定と形式上は緊張関係にある。産業団体を通じた政治的な協調（要素市場では独立、政治では協力）、または独占的競争の解釈を採れば、同じ一階条件が得られる（式(37)）。

**A10 対称な参照点**

企業固有リスク $v_{it}$ の同時分布は企業間で対称、政府の運用方針も対称（$\Delta^G_{it}=\bar\Delta^G_t$）とし、$n$ は大きいとする。

**A11 純債務不変の資産負債管理**

分析対象は純債務を変えない構成替えのみ。社会保障債務は法律で固定、通貨発行残高（ベースマネー）は独立した連銀が決定、その他項目は所与とする。

**正則条件**

$$
0<\alpha<1,\quad \sigma>0,\quad \gamma>1,\quad 1\lt\psi\lt\gamma\ (\text{※}),\quad \Phi_1>0,\ \Phi_2\lt 0,\quad \Phi_{11}+\Phi_{12}\lt 0
$$

### 1.1 政府バランスシートと流動性供給

**連結バランスシート恒等式**

$$
\underbrace{\mathrm{ND}_t}_{\text{連結純債務}}=\underbrace{D^p_t}_{\text{民間保有の公債}}+\underbrace{\mathrm{SSO}_t}_{\text{社会保障債務}}+\underbrace{\mathrm{MB}_t}_{\text{ベースマネー}}-\underbrace{\mathrm{OI}_t}_{\text{その他項目}}-\underbrace{\mathrm{UF}_t}_{\text{未コミット資金}}\tag{1}
$$

> 論文Table 4の連結バランスシート（2000年9月：$2900+9630+560-90=13000$、単位10億ドル）に対応。純債務・社会保障債務・ベースマネー・その他項目が所与なら、民間保有公債は残余として決まる。

**民間保有公債は残余**

$$
D^p_t=\underbrace{\mathrm{ND}_t-\mathrm{SSO}_t-\mathrm{MB}_t+\mathrm{OI}_t}_{\text{所与の項}}+\underbrace{\mathrm{UF}_t}_{\text{唯一の調整項}}\ \ge 0\tag{2}
$$

> 公債を増やす唯一の方法は、未コミット資産を加えてバランスシートを「伸ばす」こと。さもなければ連銀運営か社会保障制度への介入が必要になる。

**避けられない条件**

$$
\mathrm{SSO}_t+\mathrm{MB}_t\ \ge\ \mathrm{ND}_t\ \ \Longrightarrow\ \ D^p_t=0\ \text{かつ／または}\ \mathrm{UF}_t>0\tag{3}
$$

> 論文の記述（その他項目 $\mathrm{OI}$ は所与として別扱い）。社会保障債務は純債務の構成要素なので、条件は社会保障債務の評価額に依存しない。予測では2012年頃に成立。

**公債の下限と未コミット資金の発生**

$$
D_t=\max\{\underbrace{I_t}_{\text{公債純残高}},\ \underbrace{\bar D_t}_{\text{償還不能な旧債}}\},\qquad \mathrm{UF}^{T}_t=D_t-I_t\tag{4}
$$

> ※Table 2の注から整理した定義。$I_t$ は公債から財務省の未コミット資金を引いた「公債純残高（public indebtedness）」。純残高が旧債を下回ると、財務省に未コミット資金が溜まる。

**流動性供給と連銀の未コミット資産**

$$
\begin{aligned}
A^F_t&=\underbrace{D_t-D^{old,p}_t}_{\text{連銀が保有可能な量}}\\
S_t&=\underbrace{\max\{0,\ A^F_t-H_t\}}_{\text{流動性供給}},\qquad
\mathrm{UF}^{F}_t=\underbrace{\max\{0,\ H_t-A^F_t\}}_{\text{連銀の未コミット資産}}
\end{aligned}\tag{5}
$$

> ※Table 2の注（供給 ＝ 公債 − 償還不能債 − 連銀保有）から整理。

**連銀の保有目標と流動性の代替指標**

$$
H_t=\eta Y_t\ (\eta\approx 5\%),\qquad \text{代替指標：}\ D_t\ \lt\ 3H_t\approx 15\%\,Y_t\ \Rightarrow\ \text{流動性不足}\tag{6}
$$

> 連銀は1銘柄の35–40%までしか保有しない方針（FOMC 2000）のため、必要な公債は連銀保有の約3倍。

| 記号・項目 | 意味 |
|---|---|
| $\mathrm{ND}_t$ | 連結政府の純債務 |
| $D^p_t$ | 民間保有の公債（純） |
| $\mathrm{SSO}_t$ | 社会保障債務（現参加者に対する純額） |
| $\mathrm{MB}_t$ | ベースマネー（通貨と準備） |
| $\mathrm{OI}_t$ | その他項目の残高（所与） |
| $\mathrm{UF}_t=\mathrm{UF}^T_t+\mathrm{UF}^F_t$ | 未コミット資金（財務省＋連銀） |
| $D_t,\ I_t,\ \bar D_t$ | 公債、公債純残高、償還不能な旧債の総額 |
| $D^{old,p}_t$ | 民間が保有する償還不能な旧債 |
| $A^F_t,\ H_t,\ S_t$ | 連銀が保有可能な量、連銀の保有目標、流動性供給 |
| $Y_t,\ \eta$ | GDP、連銀保有の対GDP比（約5%） |

### 1.2 個人と企業

**生産（企業 $i$、時点 $t+1$）**

$$
y_{it+1}=\underbrace{A_{t+1}}_{\text{生産性}}\,\underbrace{l_{it+1}^{\,1-\alpha}}_{\text{労働投入}}\,\underbrace{k_{it}^{\alpha\theta}e_{it}^{\alpha(1-\theta)}}_{\text{物的×企業家資本}}=A_{t+1}\,l_{it+1}^{\,1-\alpha}\,(k^{\ast}_{it})^{\alpha},\qquad k^{\ast}_{it}=k_{it}^{\theta}e_{it}^{1-\theta}\tag{7}
$$

> ※$\theta\in(0,1)$ は物的資本と企業家資本の配分指数（原論文PDFでは判読不能）。$k^{\ast}_{it}$ は両資本を合成した資本財。

**勤労期の予算制約**

$$
c^1_{it}=\underbrace{w_t}_{\text{賃金}}-\underbrace{T_t/n}_{\text{一括税}}-\underbrace{f_{it}}_{\text{金融資産}}-\underbrace{e_{it}^{\gamma}}_{\text{企業家資本の費用}}-\underbrace{k_{it}}_{\text{物的資本}}-\underbrace{\ell_{it}}_{\text{ロビー費用}}\tag{8}
$$

**退職期の予算制約**

$$
c^2_{it+1}=\underbrace{B_{t+1}/n}_{\text{給付}}+\underbrace{R^f_{t+1}f_{it}}_{\text{金融資産の収益}}+\underbrace{\Pi_{it+1}}_{\text{企業価値}}\tag{9}
$$

> ※$R^f_{t+1}f_{it}$ の符号は、式(23)と整合する形に復元した（原論文PDF上では判読困難）。

**企業価値**

$$
\Pi_{it+1}=\underbrace{A_{t+1}l_{it+1}^{\,1-\alpha}(k^{\ast}_{it})^{\alpha}}_{\text{収入}}-\underbrace{w_{t+1}l_{it+1}}_{\text{賃金支払}}+\underbrace{v_{it+1}k^{\ast}_{it}}_{\text{旧資本の価値}}\tag{10}
$$

| 記号・項目 | 意味 |
|---|---|
| $c^1_{it},\ c^2_{it+1}$ | 個人 $i$ の勤労期・退職期の消費 |
| $w_t,\ T_t,\ B_{t+1}$ | 賃金、総税額（一括税）、給付総額 |
| $f_{it},\ R^f_{t+1}$ | 金融資産の購入額、その収益率 |
| $e_{it},\ k_{it},\ k^{\ast}_{it}$ | 企業家資本、物的資本、合成資本 |
| $\ell_{it}$ | ロビー活動費用 |
| $\alpha,\ \theta,\ \gamma$ | 資本分配率、資本合成指数※、企業家資本の費用指数 |
| $v_{it+1}$ | 企業 $i$ の旧資本の再販価値（企業固有リスク） |

### 1.3 企業の利潤最大化と賃金・資本収益

**労働需要（賃金＝限界生産力）**

$$
w_{t+1}=\underbrace{(1-\alpha)A_{t+1}\Big(\frac{k^{\ast}_{it}}{l_{it+1}}\Big)^{\alpha}}_{\text{労働の限界生産力}}\ \Longleftrightarrow\ l_{it+1}=k^{\ast}_{it}\Big(\frac{(1-\alpha)A_{it+1}}{w_{t+1}}\Big)^{1/\alpha}\tag{11}
$$

**均衡賃金（生産性が企業ごとに異なる場合）**

$$
w_{t+1}=\underbrace{(1-\alpha)\,n^{-\alpha}}_{\text{定数}}\Big[\sum_i k^{\ast}_{it}A_{it+1}^{1/\alpha}\Big]^{\alpha}\qquad\Big(\textstyle\sum_i l_{it+1}=n\Big)\tag{12}
$$

**資本1単位あたりの収益**

$$
V_{it+1}=\frac{\Pi_{it+1}}{k^{\ast}_{it}}=\underbrace{\alpha A_{it+1}^{1/\alpha}\Big[\frac{1-\alpha}{w_{t+1}}\Big]^{(1-\alpha)/\alpha}}_{\text{営業利潤部分}}+\underbrace{v_{it+1}}_{\text{再販価値}}\tag{13}
$$

**共通生産性 $A_{it}=A_t$ の場合の簡約**

$$
w_{t+1}=(1-\alpha)A_{t+1}(\bar k^{\ast}_t)^{\alpha},\qquad \bar k^{\ast}_t=\frac{1}{n}\sum_i k^{\ast}_{it}\tag{14}
$$

$$
V_{it+1}=\underbrace{\alpha A_{t+1}(\bar k^{\ast}_t)^{-(1-\alpha)}}_{\text{共通部分}}+\underbrace{v_{it+1}}_{\text{企業固有}}\tag{15}
$$

> 式(15)の係数 $\alpha$ は原論文PDFで欠落。式(13)(14)から導出した（付録A.2）。

| 記号・項目 | 意味 |
|---|---|
| $l_{it+1}$ | 企業 $i$ の労働投入（総労働供給は $n$） |
| $V_{it+1}$ | 資本1単位あたりの収益（時点 $t+1$） |
| $\bar k^{\ast}_t$ | 合成資本の平均 |

### 1.4 政府予算と世代会計

**政府の予算制約**

$$
T_{t+1}=\underbrace{B_{t+1}}_{\text{給付}}+\underbrace{R^D_{t+1}D_t-D_{t+1}}_{\text{債務の純償還}}-\underbrace{\big[R^{FG}_{t+1}F^G_t-F^G_{t+1}\big]}_{\text{金融資産の純収益}}\tag{16}
$$

**世代会計**

$$
\mathrm{GA}_{t+1}=B_{t+1}+R^D_{t+1}D_t-R^{FG}_{t+1}F^G_t\tag{17}
$$

**純債務（世代会計の現在価値）**

$$
\mathrm{ND}_t=\underbrace{D_t-F^G_t}_{\text{明示的な純債務}}+\underbrace{E_t\big[B_{t+1}m_{t+1}^{-\sigma}\big]}_{\text{給付の現在価値}}=E_t\big[\mathrm{GA}_{t+1}m_{t+1}^{-\sigma}\big]\tag{18}
$$

> 資産負債管理とは、純債務 $\mathrm{ND}_t$ を所与として、世代会計 $\mathrm{GA}_{t+1}$ の確率的な構造を選ぶことである。

| 記号・項目 | 意味 |
|---|---|
| $D_t,\ R^D_{t+1}$ | 政府債務、その収益率 |
| $F^G_t,\ R^{FG}_{t+1}$ | 政府保有の金融資産、その収益率 |
| $\mathrm{GA}_{t+1}$ | 世代 $t$ の世代会計 |

### 1.5 異時点選択・価格付け・集計

**選好**

$$
U_i=u(c^1_{it})+u(c^2_{it+1}),\qquad u(c)=\frac{c^{1-\sigma}}{1-\sigma}\tag{19}
$$

**世代内の消費成長率と価格付け核**

$$
m_{t+1}=\frac{c^2_{it+1}}{c^1_{it}}\ (\text{全員共通}),\qquad P^x_t=E_t\big[V^x_{t+1}m_{t+1}^{-\sigma}\big]\tag{20}
$$

> 完備市場・世代内リスクプーリングにより、限界代替率は全員で同じになる。任意の資産 $x$ の価格は $m_{t+1}^{-\sigma}$ を核とする期待値で与えられる。

**政府資産・債務の基準化と安全利子率**

$$
E_t\big[R^D_{t+1}m_{t+1}^{-\sigma}\big]=E_t\big[R^{FG}_{t+1}m_{t+1}^{-\sigma}\big]=1,\qquad R_{0t}=\frac{1}{E_t\big[m_{t+1}^{-\sigma}\big]}\tag{21}
$$

**状態条件付き請求権の需要**

$$
f^{\ast}_{it+1}=c^2_{it+1}-B_{t+1}/n-\Pi_{it+1},\qquad f_{it}=E_t\big[f^{\ast}_{it+1}m_{t+1}^{-\sigma}\big]\tag{22}
$$

**現在価値の予算制約**

$$
c^1_{it}+\underbrace{E_t\big[(c^2_{it+1}-B_{t+1}/n)m_{t+1}^{-\sigma}\big]}_{\text{退職期消費の現在価値}}=w_t-T_t/n+\mathrm{NPV}_{it}\tag{23}
$$

$$
\mathrm{NPV}_{it}=\underbrace{E_t\big[\Pi_{it+1}m_{t+1}^{-\sigma}\big]}_{\text{企業の市場価値 }P_{it}}-e_{it}^{\gamma}-k_{it}-\ell_{it}\tag{24}
$$

**退職世代の集計消費**

$$
C^2_{t+1}=\sum_i c^2_{it+1}=\underbrace{\alpha A_{t+1}(\bar k^{\ast}_t)^{\alpha-1}\sum_i k^{\ast}_{it}+\sum_i v_{it+1}k^{\ast}_{it}}_{\text{集計資本の収益}}+\underbrace{\big[B_{t+1}+R^D_{t+1}D_t-R^{FG}_{t+1}F^G_t\big]}_{\text{政策項 }\mathrm{GA}_{t+1}}\tag{25}
$$

> $m_{t+1}$ の変動は、すべて資本収益の確率変動と、政府の移転・資産・負債の状態依存性から生じる。

**企業規模の決定**

$$
\psi(k^{\ast}_{it})=e_{it}^{\gamma}+k_{it}=\psi_0\,(k^{\ast}_{it})^{\psi}\quad(\psi_0>0)\tag{26}
$$

$$
P^k_{it}=E_t\big[V_{it+1}m_{t+1}^{-\sigma}\big]=\psi'(k^{\ast}_{it})=\psi_0\psi\,(k^{\ast}_{it})^{\psi-1}\tag{27}
$$

> ※$\psi$ の範囲（$1\lt\psi\lt\gamma$）は文脈から復元（原論文では「inessential constants」）。$e,k$ の最適配分で費用関数が形式 (26) になる。

| 記号・項目 | 意味 |
|---|---|
| $m_{t+1}$ | 世代内共通の消費成長率 |
| $m_{t+1}^{-\sigma}$ | 確率的割引因子（価格付け核） |
| $R_{0t}$ | 安全利子率 |
| $P_{it},\ P^k_{it}$ | 企業 $i$ の市場価値、資本1単位あたりの価格 |
| $C^2_{t+1}$ | 退職世代の集計消費 |
| $\psi,\ \psi_0$ | 費用関数の指数※、定数 |

### 1.6 政府の証券ポートフォリオ（リスククラス $\delta$）

**証券のリスククラス $\delta$**

> $\delta$：証券に埋め込まれたオプションのデルタ（企業価値リスクへの感応度）。$\delta=1$ は無レバレッジの株式、$\delta\approx 0$ は最上位の債券、$\delta\in(0,1)$ はリスク債、$\delta\gg 1$ はレバレッジ株・ワラント・デリバティブ。各企業は発行証券の平均 $\delta$ が1になる証券メニューで企業価値 $P_{it}$ を使い切る。

**クラス $\delta$ の証券の収益（線形）**

$$
R^{\delta}_{it+1}=\underbrace{\delta\,\Pi_{it+1}/P_{it}}_{\text{企業リスク部分}}+\underbrace{(1-\delta)R_{0t}}_{\text{安全部分}}\tag{28}
$$

**政府ポートフォリオの収益**

$$
R^{FG}_{t+1}F^G_t=\sum_i\underbrace{\Delta^G_{it}}_{\text{保有リスク比率}}\Pi_{it+1}+\underbrace{(1-\bar\Delta^G_t)R_{0t}F^G_t}_{\text{安全部分}}\tag{29}
$$

**退職世代の集計消費（政府投資あり）**

$$
C^2_{t+1}=\alpha A_{t+1}(\bar k^{\ast}_t)^{\alpha-1}\Big[\sum_i k^{\ast}_{it}(1-\Delta^G_{it})\Big]+\sum_i v_{it+1}k^{\ast}_{it}(1-\Delta^G_{it})+\big[B_{t+1}+R^D_{t+1}D_t-(1-\bar\Delta^G_t)R_{0t}F^G_t\big]\tag{30}
$$

> 政府が企業 $i$ のリスクを保有すると、退職世代は当該企業の価値リスク $v_{it+1}$ と全体の生産性リスク $A_{t+1}$ の両方への曝露が減り、リスクは将来の納税者に移る。

| 記号・項目 | 意味 |
|---|---|
| $\delta$ | 証券のリスククラス（オプション・デルタ） |
| $f^{G\delta}_{it}$ | 政府が企業 $i$ のクラス $\delta$ に投じた額 |
| $f^G_{it}=\sum_\delta f^{G\delta}_{it}$ | 政府の企業 $i$ への投資総額 |
| $F^G_t=\sum_i f^G_{it}$ | 政府投資の総額 |
| $\Delta^G_{it}=\sum_\delta \delta f^{G\delta}_{it}/P_{it}$ | 政府が保有する企業 $i$ の株式リスク比率 |
| $\bar\Delta^G_t=\sum_i\Delta^G_{it}P_{it}/F^G_t$ | 政府ポートフォリオの平均リスク |

### 1.7 政府投資の価格効果

**ポートフォリオ組換えによる消費成長率の変化**

$$
\frac{\partial m_{t+1}}{\partial\Delta^G_{it}}=-\underbrace{\frac{(v_{it+1}-\bar v_{-i})\,k^{\ast}_t}{C^1_t}}_{\text{固有リスクの偏差}},\qquad \bar v_{-i}=\frac{1}{n-1}\sum_{j\neq i}v_{jt+1}\tag{31}
$$

> $\bar\Delta^G_t$ を一定に保ち、$\Delta^G_{it}$ を $d\Delta$ だけ増やし、他の全企業 $j\neq i$ の $\Delta^G_{jt}$ を $d\Delta/(n-1)$ ずつ減らす。$C^1_t=\sum_i c^1_{it}$。

**価格効果（相対価格の感応度）**

$$
\hat P\equiv\frac{1}{P^k_t}\frac{\partial\big(P^k_{it}-\bar P^k_{-i,t}\big)}{\partial\Delta^G_{it}}=\underbrace{\sigma\,\frac{E_t\big[(v_{it+1}-\bar v_{-i})^2m_{t+1}^{-\sigma-1}\big]\,k^{\ast}_t}{P^k_tC^1_t}}_{\text{固有リスクの分散に比例}}>0\tag{32}
$$

> 厳密な比例関係は、$v_{it+1}-\bar v_{-i}$ と $m_{t+1}$ が独立なとき（たとえば $v_j$ が同時正規分布のとき）に成り立つ。一般には近似的な比例。固有リスクが非ゼロである限り $\hat P>0$。

| 記号・項目 | 意味 |
|---|---|
| $\hat P$ | 価格効果：政府保有の増加に対する企業 $i$ の相対価格の上昇率 |
| $C^1_t$ | 勤労世代の集計消費 |
| $\bar v_{-i}$ | 他企業の固有リスクの平均 |

### 1.8 影響関数とロビー活動

**政府投資の配分（影響関数）**

$$
f^G_i=\underbrace{F^G/n}_{\text{対称な基準配分}}+\underbrace{\Phi(\ell_i,\bar\ell_{-i},F^G)}_{\text{ロビーによる歪み}},\qquad \bar\ell_{-i}=\frac{1}{n-1}\sum_{j\neq i}\ell_j\tag{33}
$$

$$
\Phi_1=\frac{\partial\Phi}{\partial\ell_i}>0,\qquad \Phi_2=\frac{\partial\Phi}{\partial\bar\ell_{-i}}\lt 0\tag{34}
$$

**影響関数が満たす性質**

$$
\sum_i\Phi(\ell_i,\bar\ell_{-i},F^G)=0,\qquad \Phi(\ell,\ell,F^G)=0,\qquad \frac{\Phi}{F^G}\in\Big[-\frac{1}{n},\,1-\frac{1}{n}\Big]\tag{35}
$$

> 第1式（足し上げ制約）から $\Phi_1(\ell_i,\bar\ell_{-i},F^G)=-\sum_{j\neq i}\Phi_2(\ell_j,\bar\ell_{-j},F^G)/(n-1)$。第3式（非負の投資）から、$\ell_i\to\infty$ で $\Phi_1\to 0$（限界効果の逓減）。$\Phi$ が $F^G$ に依存するのは、ロビーの規模の経済を許すため。

**影響関数の例**

$$
\Phi=\phi_0F^G\Big(\frac{\ell_i}{\sum_j\ell_j}-\frac{1}{n}\Big),\qquad \phi_0\in(0,1]\tag{36}
$$

> ※形はPDF上でやや判読困難。(34)(35)の全制約を満たす関数が存在することを示す例。

**企業家のロビー活動の一階条件**

$$
\frac{\partial\,\mathrm{NPV}_i}{\partial\ell_i}=\hat P\,\delta\,\Phi_1-1\ \le 0,\quad\text{等号は }\ell_i>0\text{ のとき}\tag{37}
$$

> ※政府が保有する企業 $i$ の証券のリスククラス $\delta$ が、$\Delta^G_{i}=\sum_\delta\delta f^{G\delta}_i/P_i$ を通じて $\Phi_1$ に掛かる（原論文PDFでは $\delta$ が欠落）。ロビーの便益は価格上昇、費用は $\ell_i$ 自身（単位1）。

| 記号・項目 | 意味 |
|---|---|
| $\ell_i,\ \bar\ell_{-i}$ | 企業 $i$ のロビー努力、他企業の平均 |
| $\Phi(\cdot)$ | 影響関数 |
| $\Phi_1,\ \Phi_2$ | $\Phi$ の第1・第2引数に関する偏微分 |
| $\phi_0$ | 例における規模パラメータ |

### 1.9 結果1〜4と投資制限

**結果1：対称なロビー ⇒ 配分は不変で、浪費のみ**

$$
\ell_i=\ell\ \ \forall i\ \Longrightarrow\ \Phi(\ell,\ell,F^G)=0\ \Longrightarrow\ \text{実物配分への効果なし。浪費 }\ell>0\text{ が所得効果で負に作用}\tag{38}
$$

**結果2・3：低リスク資産への制限でロビーは消える（コーナー解）**

$$
\ell_i=0\ \ \text{for all }\delta\le\delta_0\equiv\big[\hat P\,\Phi_1(0,0,F^G)\big]^{-1}\tag{39}
$$

> 低 $\delta$、または低い $\hat P$（＝固有リスクの分散が小さい）でコーナー解 $\ell=0$ になる。$\hat P$ が小さければ $\delta_0$ は大きい。インデックスファンドは固有リスクがほぼ零。

**結果4：ロビーが起きる場合の均衡水準（線形近似）**

$$
\ell^{\ast}(\delta)\approx\frac{\Phi_1(0,0,F^G)}{-\Phi_{11}-\Phi_{12}}\Big(1-\frac{\delta_0}{\delta}\Big)\ \approx\ \frac{\Phi_1(0,0,F^G)}{-\Phi_{11}-\Phi_{12}}\cdot\frac{\delta-\delta_0}{\delta_0}\quad(\delta>\delta_0)\tag{40}
$$

> ※原論文は線形近似とだけ記す。式(37)の対称均衡 $\hat P\delta\Phi_1(\ell,\ell,F^G)=1$ から導出した形（付録A.6）。総浪費は $n\ell^{\ast}$。

**投資制限と財務省証券のみの方針**

$$
\delta\in[0,\delta^{+}]\ \ \text{（制限的方針）},\qquad (D_t,F^G_t)\to(D_t-F^G_t,\,0)\ \ \text{（財務省証券のみ）}\tag{41}
$$

$$
\text{実行可能条件：}\quad D_t-F^G_t\ \ge\ D_{\min}>0\tag{42}
$$

> $D_{\min}$ は旧債と連銀の必要量で決まる。$D_t\lt D_{\min}+F^G_t$ なら財務省証券のみの方針は不可能で、民間証券への投資が必要になる。

### 1.10 流動性プレミアムと準シニョレッジ

**財務省証券の特別なプレミアム**

$$
\mathrm{PR}=1-E_t\big[R^D_{t+1}m_{t+1}^{-\sigma}\big]>0,\qquad \text{安全債なら}\ R^D_{t+1}-R_{0t}\ \text{のスプレッド}\tag{43}
$$

**準シニョレッジ収入の最大化**

$$
\max_{D}\ \mathrm{PR}(D)\cdot D\ \ \Longrightarrow\ \ D=D_{\max}\ (\text{有限}),\qquad \text{ロビーがあれば}\ D^{\ast}\lt D_{\max}\tag{44}
$$

> $\mathrm{PR}$ が公債残高に対して逓減し、過大な債務で零になる場合。ロビーの限界損失と限界収入が釣り合う点が最適債務。

### 1.11 内生的な財政反応

**低債務に対する基礎的財政収支の反応**

$$
s_{t+1}=s^{CBO}_{t+1}+\rho\,(b_t-b^{\ast}),\qquad \rho=0.05,\ b^{\ast}=0.35,\ b_t=I_t/Y_t\tag{45}
$$

> $s$ は基礎的収支の対GDP比、$b$ は公債純残高の対GDP比、$\rho$ はBohn (1998) の推計値、$b^{\ast}$ は定常状態の民間保有債務比。債務が定常値を下回るほど基礎的黒字が減る（減税・歳出増）。その値を翌期の債務の決定に戻す（債務の蓄積式は標準の恒等式で、原論文は明示しない）。符号の解釈は、原論文の記述「実際と定常状態の債務比率の乖離の5%だけ黒字を下げる」に基づく。

### 1.12 主要帰結

**主要式**

$$
\boxed{\begin{aligned}
D^p_t&=\underbrace{\mathrm{ND}_t-\mathrm{SSO}_t-\mathrm{MB}_t+\mathrm{OI}_t}_{\text{所与}}+\underbrace{\mathrm{UF}_t}_{\text{調整項}}\\
\hat P&=\underbrace{\sigma\,E_t\big[(v_{it+1}-\bar v_{-i})^2m_{t+1}^{-\sigma-1}\big]\tfrac{k^{\ast}_t}{P^k_tC^1_t}}_{\text{固有リスク分散に比例}}\\
\ell_i&=0\ \ \text{for}\ \delta\le\delta_0=\big[\hat P\Phi_1(0,0,F^G)\big]^{-1}\\
\ell^{\ast}&\approx\tfrac{\Phi_1(0,0,F^G)}{-\Phi_{11}-\Phi_{12}}\big(1-\tfrac{\delta_0}{\delta}\big)\ \ (\delta>\delta_0)
\end{aligned}}\tag{46}
$$

**比較静学（ロビーが起きる場合の浪費 $\ell^{\ast}$）**

| 変化 | 結果 | 符号・式 |
|---|---|---|
| 政府投資のリスク $\delta$ の上昇 | $\ell^{\ast}$ は増加 | $\partial\ell^{\ast}/\partial\delta=\Phi_1\delta_0/\big[(-\Phi_{11}-\Phi_{12})\delta^2\big]>0$ |
| ロビーの限界効果 $\Phi_1$ の低下 | $\ell^{\ast}$ は減少 | $\partial\ell^{\ast}/\partial\Phi_1=1/(-\Phi_{11}-\Phi_{12})>0$（$\delta_0$ の変化は別） |
| 利得の逓減の強まり（$\lvert\Phi_{11}+\Phi_{12}\rvert$ 大） | $\ell^{\ast}$ は減少 | $\ell^{\ast}>0$ のとき分母の増加で縮小 |
| 固有リスクの分散の低下 | $\hat P$ 低下、$\delta_0$ 上昇、コーナー解へ | 式(32)(39) |
| インデックスファンド化 | $v_{it+1}-\bar v_{-i}\approx 0$ で $\hat P\approx 0$ | ロビーの誘因が消える |

**特殊ケースと政策の含意**

| ケース | 結果 |
|---|---|
| $\Phi\equiv 0$（ロビーに動かされない） | レントシーキングは消え、政策は通常の厚生基準で決まる |
| 全企業が同じクラス $\delta$ で同一のロビー | $\ell_i=\ell$、$\Phi=0$、配分は不変で浪費のみ（式(38)） |
| $\delta\le\delta_0$（低リスク債・リバースレポ） | $\ell=0$。財務省証券なしでもレントシーキングは起きない |
| インデックスファンドへの全企業の合意 | 全員一致で承認され、ロビー費用なしで均衡配分を実現（実行可能性・信憑性は未解決） |
| 財務省証券のみ方針は $D_t\lt D_{\min}+F^G_t$ のとき不可能 | 民間証券への投資か、社会保障改革かが必要 |

**政策選択肢（純債務不変）とトリレンマ**

| 政策 | 流動性 | 未コミット資金 | 世代間リスク分担 |
|---|---|---|---|
| 現行（公債完済） | 失う | 最小 | 現状維持 |
| 社会保障の非財務省証券投資（ $\mathrm{UF}\uparrow$ ） | 維持 | 増加（ロビーの懸念） | 維持 |
| 民間口座・認識債（社会保障債務 $\downarrow$ ） | 維持 | 回避 | 悪化（賃金連動の給付が安全な請求権に） |

> 三つの目的を同時には満たせない。バランスシート恒等式(2)から、社会保障給付・流動性・未コミット資金回避の三者は同時に満たせない。

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 公債の消滅と未コミット資金の発生 | 恒等式(2)(3)：社会保障債務＋ベースマネーが純債務を超えると、公債残高が消えるか未コミット資金が積み上がる |
| 政府の証券購入への反対論 | 式(32)：購入は企業価値を押し上げ、売り手にロビーの誘因を与える |
| 低リスク債・インデックス投資ならロビーが起きにくい | 式(39)：$\delta\le\delta_0$ または固有リスク分散が小さければ $\ell=0$ |
| 連銀のリバースレポ案の正当化 | リバースレポは実質 $\delta\approx 0$ の証券で、価格を歪めない |
| 財務省証券のみの運用方針への疑問 | 式(42)：公債が $D_{\min}+F^G$ を割ると維持不能。ロビーは低リスク債の購入への反対論にならない |
| 社会保障を運用主体とする根拠 | 信託基金の受託者責任など、ロビー感応度（影響関数 $\Phi$）が低い主体に委ねるのが望ましい |
| 流動性・ロビー・リスク分担のトリレンマ | 恒等式(2)の制約下で三つを同時には満たせない |
| 低債務による減税・歳出増の圧力 | 式(45)：2001〜2010年の累積減税額の予測は1370億ドル（実際のCBO推計は1220億ドル） |

## 3. 整理している点 {#sec3}

- 政府の資産・負債管理を、純債務を所与とした**バランスシートの構成替え**として定式化し、民間保有公債が残余であることを恒等式で示した。
- 政府投資への反対論（ロビー）を前提として受け入れたうえで、リスククラス $\delta$ と固有リスクの分散を通じて、どの投資ならレントシーキングが起きるかを分けた。
- 世代間リスク分担（世代会計 $\mathrm{GA}_{t+1}$ の構造）、ロビー、流動性という三つの目的の間の**トレードオフ**を、同一の枠組みで比較した。

## 4. 対象外の現象 {#sec4}

- ロビー活動が現実に政策を動かすこと、企業が実際にロビーを行うことは**主張していない**（$\Phi\equiv 0$ は特殊ケース）。
- 財務省証券市場の流動性が経済厚生を高めるかどうかは不明とされる（ベンチマーク効果は文献に依拠）。ロビーの規模の大きさも評価していない。
- 三つの目的の相対的な重要度の判断（政府の大きさなど政治的な価値判断）は経済学の範囲外であり、単一の政策提言はしない。
- 予算見通しは点予測ではなく、政策比較の道具。式(45)の内生的な財政反応は標本外の外挿であり、予測ではなく粗い推計。
- 純債務を変える政策（減税・歳出増）、非公開の私的資産への「投資」、連銀の独立性に関する詳細な分析は対象外。
- 債券と株式の最適な構成は、ロビー・分散投資・世代間リスク分担の兼ね合いで決まり、このモデルだけでは一意に定まらない。

## 5. 主要文献・関連論文 {#sec5}

- **[OG枠組みの原著]** Diamond, P. A. (1965). National debt in a neoclassical growth model. *American Economic Review*, 55(5), 1126–1150.
  - **位置づけ**: 世代重複モデルで公債の実物効果を分析した古典的論文。本モデルの世代重複の枠組みの基礎。
- **[レントシーキングの金字塔]** Krueger, A. O. (1974). The political economy of the rent-seeking society. *American Economic Review*, 64(3), 291–303.
  - **位置づけ**: 「レントシーキング」の概念を確立した先駆的論文。本モデルのロビー活動の概念的な基礎。
- **[公債管理の基礎理論]** Barro, R. J. (1979). On the determination of the public debt. *Journal of Political Economy*, 87(5), 940–971.
  - **位置づけ**: 課税平準化に基づく公債の決定理論。公債が緩やかな平均回帰を示すという通常の振る舞いの理論的背景（原論文が引用）。
- **[実証的な基礎]** Bohn, H. (1998). The behavior of U.S. public debt and deficits. *Quarterly Journal of Economics*, 113(3), 949–963.
  - **位置づけ**: 公債比率の上昇に対して基礎的黒字が正に反応することを示した実証研究。本モデルの内生的財政反応（式(45)）の係数 $\rho$ の出典。
- **[同一著者の関連研究]** Bohn, H. (1999). Should the Social Security Trust Fund hold equities? An intergenerational welfare analysis. *Review of Economic Dynamics*, 2(3), 666–697.
  - **位置づけ**: 世代間リスク分担の観点から、政府が株式を保有する利点を分析。本モデルのリスク分担とロビーのトレードオフの、もう一方の議論。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
[恒等式] (1) ND = D^p + SSO + MB - OI - UF
            │
            ├─ (2)(3) D^p は残余 → UF>0 または D^p=0 が不可避
            └─ (4)(5)(6) 流動性供給 S と未コミット資金 UF の測り方

[OGモデル] (7)(8)(9)(10) 個人・企業
            ├─ (11)-(15) 賃金 w と資本収益 V
            ├─ (16)-(18) 政府予算・世代会計
            ├─ (19)-(27) 価格付け核 m^{-σ}、集計消費 C²、企業規模
            └─ (28)-(30) 政府ポートフォリオ δ → C² の組換え
                    │
                    ▼
            (31)(32) 価格効果 P̂ > 0（固有リスクの分散に比例）
                    │
                    ▼
            (33)-(36) 影響関数 Φ → (37) ロビーの一階条件
                    │
                    ▼
            (38)(39)(40) 結果1〜4 → (41)(42) 投資制限
            (43)(44) 流動性プレミアム、(45) 内生財政反応
```

### A.1 使う道具

**T1 コブ＝ダグラス型生産の一階条件**

$y=Al^{1-\alpha}k^{\alpha}$ のとき、$w=\partial y/\partial l=(1-\alpha)A(k/l)^{\alpha}$。$y-wl=\alpha y$。

**T2 CRRAの限界代替率と確率的割引因子**

$u'(c)=c^{-\sigma}$。限界代替率は $u'(c^2)/u'(c^1)=(c^2/c^1)^{-\sigma}=m^{-\sigma}$。状態 $s$ の請求権の価格は $\pi(s)m(s)^{-\sigma}$（割引なし）。

**T3 オプション・デルタによる線形表現**

クラス $\delta$ の証券は企業価値に対して線形（オプション価格理論）：$R^{\delta}=\delta\Pi/P+(1-\delta)R_0$。

**T4 べき関数の微分**

$\partial m^{-\sigma}/\partial m=-\sigma m^{-\sigma-1}$。$m=C^2/C^1$ で $C^1$ は時点 $t$ の決定済みの量。

**T5 一階条件のクーン＝タッカー型扱い**

$\ell\ge0$ の最大化：$\partial\mathrm{NPV}/\partial\ell\le 0$、$\ell>0$ なら等号（コーナー解 $\ell=0$）。

**T6 1次のテイラー近似**

$\Phi_1(\ell,\ell,F)\approx\Phi_1(0,0,F)+(\Phi_{11}+\Phi_{12})\ell$（両引数が同時に動く）。

### A.2 賃金・資本収益（式(11)〜(15)）

**Step 1　利潤最大化（T1）→ 式(11)**

式(10)の利潤を $l$ で微分して $w=(1-\alpha)A(k^{\ast}/l)^{\alpha}$。$l$ について解いて $l_i=k^{\ast}_i\big((1-\alpha)A_i/w\big)^{1/\alpha}$。

**Step 2　労働市場の均衡 → 式(12)**

$\sum_il_i=n$ に代入：$w^{1/\alpha}=(1-\alpha)^{1/\alpha}\sum_ik^{\ast}_iA_i^{1/\alpha}/n$。両辺を $\alpha$ 乗して式(12)。

**Step 3　資本1単位あたりの収益 → 式(13)**

$\Pi_i-vk^{\ast}=\alpha Al^{1-\alpha}k^{\ast\alpha}$（T1）。$k^{\ast}$ で割り、Step 1 の $l/k^{\ast}=((1-\alpha)A/w)^{1/\alpha}$ を使うと $\alpha A\big((1-\alpha)A/w\big)^{(1-\alpha)/\alpha}=\alpha A^{1/\alpha}\big[(1-\alpha)/w\big]^{(1-\alpha)/\alpha}$。$v_i$ を足して式(13)。

**Step 4　共通生産性への簡約 → 式(14)(15)**

$A_i=A$ のとき、$\sum_ik^{\ast}_i=n\bar k^{\ast}$ なので式(12)は $w=(1-\alpha)A(\bar k^{\ast})^{\alpha}$（式(14)）。$(1-\alpha)/w=1/(A\bar k^{\ast\alpha})$ を式(13)に代入すると $\alpha A^{1/\alpha}(A\bar k^{\ast\alpha})^{-(1-\alpha)/\alpha}=\alpha A(\bar k^{\ast})^{-(1-\alpha)}$。よって式(15)。

**確認**

$\alpha\to1$ では $V\to A+v$（賃金への分配が消え、資本が収益を全て受け取る）。$n=1$ で $l=1$ のとき $w=(1-\alpha)Ak^{\ast\alpha}$ で式(14)と一致。

| 入力・使う道具 | 内容 |
|---|---|
| 式(7)(10) | 生産・利潤の定義 |
| T1 | 限界生産力、$y-wl=\alpha y$ |
| 労働市場均衡 | $\sum l_i=n$ |

### A.3 価格付けと集計消費（式(18)〜(27)）

**Step 1　世代内リスクプーリング（T2）→ 式(20)**

任意の資産取引で限界代替率は均等になる。$m=c^2_i/c^1_i$ が全員共通で、価格は $P^x=E[V^xm^{-\sigma}]$。

**Step 2　政府資産・債務の基準化 → 式(21)**

単価1：$E[R^Dm^{-\sigma}]=E[R^{FG}m^{-\sigma}]=1$。安全資産 $R_0$ は $R_0E[m^{-\sigma}]=1$ から $R_0=1/E[m^{-\sigma}]$。

**Step 3　現在価値の予算制約 → 式(22)(23)(24)**

式(9)から $f^{\ast}_{it+1}=c^2_{it+1}-B/n-\Pi_{it+1}$（式(22)）。費用 $f_{it}=E[f^{\ast}m^{-\sigma}]$ を式(8)に入れると $c^1+f=w-T/n-e^{\gamma}-k-\ell$ なので、$f=E[(c^2-B/n)m^{-\sigma}]-E[\Pi m^{-\sigma}]$ を代入して式(23)(24)。

**Step 4　集計消費 → 式(25)**

式(9)を $i$ で足す：$\sum_ic^2_i=B+\sum_iR^f_{t+1}f_i+\sum_i\Pi_i$。金融資産は世代内で相殺（ネットゼロ）し、政府の $R^DD-R^{FG}F^G$ が残る。$\sum_i\Pi_i=\alpha A\bar k^{\ast\alpha}n+\sum_iv_ik^{\ast}_i=\alpha A(\bar k^{\ast})^{\alpha-1}\sum_ik^{\ast}_i+\sum_iv_ik^{\ast}_i$ から式(25)。

**Step 5　世代会計と純債務 → 式(17)(18)**

式(21)を使うと、$E[\mathrm{GA}m^{-\sigma}]=E[Bm^{-\sigma}]+D\,E[R^Dm^{-\sigma}]-F^G\,E[R^{FG}m^{-\sigma}]=E[Bm^{-\sigma}]+D-F^G$。式(18)。

**Step 6　企業規模 → 式(26)(27)**

$\min\ e^{\gamma}+k$ s.t. $k^{\theta}e^{1-\theta}=k^{\ast}$ を解くと費用関数は $\psi_0(k^{\ast})^{\psi}$（※指数 $\psi$ は $\gamma$ と $\theta$ の関数。原論文は「inessential constants」とのみ記す）。NPVを最大化する $k^{\ast}$ は、価格 $P^k$ と限界費用の一致 $P^k=\psi'(k^{\ast})$（式(27)）。

**確認**

政府が資産・債務を持たない（$D=F^G=0$、$B=0$）なら $\mathrm{GA}=0$、$\mathrm{ND}=0$ で標準的な新古典派の世代重複経済に戻る。

| 入力・使う道具 | 内容 |
|---|---|
| T2 | 限界代替率と確率的割引因子 |
| 式(8)(9)(16) | 予算制約 |

### A.4 政府ポートフォリオと集計消費（式(28)〜(30)）

**Step 1　線形収益（T3）→ 式(28)**

クラス $\delta$ の証券の価値は企業価値の線形関数。$R^{\delta}f^{\delta}=\delta\Pi\,f^{\delta}/P+(1-\delta)R_0f^{\delta}$ の形で、$\delta$ は企業リスクへの感応度。

**Step 2　政府ポートフォリオ → 式(29)**

$\sum_{\delta}f^{G\delta}_iR^{\delta}_i=\Delta^G_i\Pi_i+(f^G_i-\sum_\delta\delta f^{G\delta}_i)R_0$。$i$ で足すと $\sum_i\Delta^G_i\Pi_i+(F^G-\bar\Delta^GF^G)R_0$（$\bar\Delta^GF^G=\sum_i\sum_\delta\delta f^{G\delta}_i$）。

**Step 3　集計消費の書き換え → 式(30)**

式(25)の政策項に式(29)を代入。企業収益の $\sum_i\Pi_i$ から政府取り分 $\sum_i\Delta^G_i\Pi_i$ を引くと $\sum_i(1-\Delta^G_i)\Pi_i$。$\Pi_i=V_ik^{\ast}_i$ に式(15)を使って式(30)。

**確認**

$\Delta^G_i=0$（政府は企業リスクを持たない）なら式(30)は式(25)に一致。

| 入力・使う道具 | 内容 |
|---|---|
| T3 | オプション・デルタ表現 |
| 式(25) | 集計消費 |

### A.5 価格効果（式(31)(32)）

**Step 1　組換え → 式(31)**

$d\Delta^G_i=d\Delta$、$d\Delta^G_j=-d\Delta/(n-1)$（$j\ne i$）、$\bar\Delta^G$ は不変。式(30)から $dC^2=-\big(\Pi_i-\bar\Pi_{-i}\big)d\Delta$。対称（$k^{\ast}_i=\bar k^{\ast}$）なら共通部分が打ち消し $\Pi_i-\bar\Pi_{-i}=(v_i-\bar v_{-i})\bar k^{\ast}$。$m=C^2/C^1$（$C^1$ は確定量）から式(31)。

**Step 2　各企業の価格変化（T4）**

$P^k_j=E[V_jm^{-\sigma}]$ の微分：$dP^k_j=-\sigma E[V_jm^{-\sigma-1}\,\partial m]=\sigma\frac{k^{\ast}}{C^1}E[V_j(v_i-\bar v_{-i})m^{-\sigma-1}]\,d\Delta$。$m$ は全企業の価格に共通。

**Step 3　企業 $i$ と他企業の差 → 式(32)**

$P^k_i-\bar P^k_{-i}$ の変化は $V_i-\bar V_{-i}=v_i-\bar v_{-i}$（共通部分 $\alpha A\bar k^{\ast-(1-\alpha)}$ は消える）を使い、$\sigma\frac{k^{\ast}}{C^1}E[(v_i-\bar v_{-i})^2m^{-\sigma-1}]\,d\Delta$。$P^k$ で割って $\hat P$（式(32)）。$m^{-\sigma-1}>0$ かつ二乗は非負なので、固有リスクが非ゼロなら $\hat P>0$。

**Step 4　比例関係**

$v_i-\bar v_{-i}$ と $m$ が独立なら $E[(v_i-\bar v_{-i})^2m^{-\sigma-1}]=\mathrm{Var}(v_i-\bar v_{-i})\,E[m^{-\sigma-1}]$（平均零。対称性より）。一般には近似的な比例。

**確認**

$v_i\equiv\bar v_{-i}$（固有リスクなし）なら $\hat P=0$：政府がどの企業を買っても価格に影響しない。

| 入力・使う道具 | 内容 |
|---|---|
| T4 | $\partial m^{-\sigma}/\partial m=-\sigma m^{-\sigma-1}$ |
| 式(15)(30) | 資本収益、集計消費 |

### A.6 ロビー活動の一階条件と結果1〜4（式(37)〜(40)）

**Step 1　目的関数**

企業 $i$ は $\mathrm{NPV}_i=P_i-e^{\gamma}-k-\ell_i$（式(24)）を $\ell_i\ge0$ で最大化。ロビーは $f^G_i$（式(33)）を通じて $\Delta^G_i=\sum_\delta\delta f^{G\delta}_i/P_i$ を動かし、$\partial\Delta^G_i/\partial\ell_i=\delta\Phi_1/P_i$（※$\delta$ は政府が保有する当該企業証券のクラス）。

**Step 2　一階条件（T5）→ 式(37)**

$\dfrac{\partial\mathrm{NPV}_i}{\partial\ell_i}=\dfrac{\partial P_i}{\partial\Delta^G_i}\cdot\dfrac{\delta\Phi_1}{P_i}-1=\hat P\delta\Phi_1-1\le0$、$\ell_i>0$ なら等号。

**Step 3　結果1 → 式(38)**

全企業が同一の影響関数・同一の $\delta$ なら $\ell_i=\ell$ 。式(35)の $\Phi(\ell,\ell,F^G)=0$ から配分は不変。費やした資源 $\ell>0$ は所得効果として厚生を下げる（浪費）。

**Step 4　結果2・3 → 式(39)**

$\ell=0$ を代入すると式(37)は $\hat P\delta\Phi_1(0,0,F^G)\le1$ すなわち $\delta\le\delta_0\equiv[\hat P\Phi_1(0,0,F^G)]^{-1}$。$\hat P,\Phi_1$ が有界なら $\delta$ が零付近で成立（結果2）。$\hat P$ が小さいと $\delta_0$ が大きく、広い範囲でコーナー解（結果3）。

**Step 5　結果4 → 式(40)（T6）**

内点解の対称均衡 $\hat P\delta\Phi_1(\ell,\ell,F^G)=1$ に T6 を適用：$\hat P\delta\big[\Phi_1(0,0,F^G)+(\Phi_{11}+\Phi_{12})\ell\big]=1$。$\ell$ について解く：

$$
\ell^{\ast}=\frac{\Phi_1(0,0,F^G)-1/(\hat P\delta)}{-\Phi_{11}-\Phi_{12}}=\frac{\Phi_1(0,0,F^G)}{-\Phi_{11}-\Phi_{12}}\Big(1-\frac{\delta_0}{\delta}\Big)
$$

$\delta_0$ の定義を用いた。$\delta=\delta_0$ の近傍で $(\delta-\delta_0)/\delta\approx(\delta-\delta_0)/\delta_0$。

**Step 6　比較静学**

$\partial\ell^{\ast}/\partial\delta=\Phi_1\delta_0/\big[(-\Phi_{11}-\Phi_{12})\delta^2\big]>0$。$\Phi_{11}+\Phi_{12}\lt0$ が $\ell^{\ast}$ の一意性にも必要。

**Step 7　投資制限 → 式(41)(42)**

債券は保有、株式は不可とする方針は $\delta\le\delta^{+}\lt1$ の制約。財務省証券のみは、債務と投資の対 $(D,F^G)$ を $(D-F^G,0)$ に置き換え（相殺）。純債務 $D-F^G\ge D_{\min}$ のときのみ可能。

**確認**

$\delta=\delta_0$ で $\ell^{\ast}=0$（コーナーと内点の接続）。$\Phi_1\to0$ なら $\delta_0\to\infty$ で全クラスがコーナー解。

| 入力・使う道具 | 内容 |
|---|---|
| T5, T6 | クーン＝タッカー、1次近似 |
| 式(32)(33)(35) | 価格効果、影響関数 |

### A.7 バランスシート恒等式（式(1)〜(6)）

**Step 1　連結 → 式(1)**

財務省：資産（その他項目 $\mathrm{OI}^T$、未コミット資金 $\mathrm{UF}^T$）、負債（社会保障保有債 $D^{SSA}$、連銀保有債 $D^{Fed}$、民間保有債 $D^p$）。社会保障：資産は財務省証券 $D^{SSA}$、負債は $\mathrm{SSO}$。連銀：資産は財務省証券 $D^{Fed}$、$\mathrm{OI}^F$、$\mathrm{UF}^F$、負債はベースマネー $\mathrm{MB}$ と純資産。足し合わせると政府内の債権債務（$D^{SSA},D^{Fed}$）が相殺され、$\mathrm{ND}=D^p+\mathrm{SSO}+\mathrm{MB}-\mathrm{OI}-\mathrm{UF}$。

**Step 2　残余の式 → 式(2)**

式(1)を $D^p$ について解く。$\mathrm{ND},\mathrm{SSO},\mathrm{MB},\mathrm{OI}$ が所与なら、$D^p$ を動かせるのは $\mathrm{UF}$ のみ。

**Step 3　避けられない条件 → 式(3)**

$D^p\ge0$ かつ $\mathrm{UF}\ge0$。$\mathrm{UF}=0$ とすると $D^p=\mathrm{ND}-\mathrm{SSO}-\mathrm{MB}+\mathrm{OI}\ge0$ が必要。$\mathrm{SSO}+\mathrm{MB}$ が $\mathrm{ND}$ を超える（$\mathrm{OI}$ は所与で別扱い）と、$D^p$ は零に張り付くか、$\mathrm{UF}>0$ が積み上がる。

**Step 4　流動性指標 → 式(4)(5)(6)**

Table 2の注に従い、旧債・連銀保有目標を用いて定義。たとえば Panel A（OMB予測）の2010年：$D=953$、$D^{old,p}=893$ なので $A^F=60$、$H=838$ から $\mathrm{UF}^F=778$、$S=0$（表の値と一致）。

**確認**

Table 4（2000年9月）：$2900+9630+560-90=13000$。Table 5（2010年）：$890+18750+910-140-910=19500$（表の純債務と一致）。

| 入力・使う道具 | 内容 |
|---|---|
| Table 2〜5 | 各バランスシート、流動性指標の定義 |
| 債権債務の相殺 | 政府内保有分の連結消去 |

### A.8 内生的財政反応（式(45)）

**Step 1　反応係数の出典**

Bohn (1998) の推計：債務比率の変化は翌年の基礎的黒字に約 $-5\%$ の影響（景気循環・軍事支出を制御）。これを低債務の側に適用する（標本外）。

**Step 2　経路の計算 → 式(45)**

CBO（2001a）の減税前の予測を「非政治的な最適予測」として基準にとり、$s_{t+1}=s^{CBO}_{t+1}+\rho(b_t-b^{\ast})$ を毎期更新し、得られた $s_{t+1}$ を翌期の債務に反映する。

**確認**

2001〜2010年の累積減税額は、モデル予測 1370億ドル、CBO推計（実際に成立した減税）1220億ドルで、近い値。1836年の公債完済後の粗い応答係数は 0.088（$=0.88\%/10\%$）で、回帰推計の 0.05 より高い。

| 入力・使う道具 | 内容 |
|---|---|
| Bohn (1998) | $\rho=0.05$、$b^{\ast}=0.35$ |
| CBO (2001a) | 減税前の基準経路 |

### A.9 著者について

**Henning Bohn**
- **アカデミックな経歴**: カリフォルニア大学サンタバーバラ校（UCSB）経済学部教授（本論文の所属表記による）。博士号はMIT（※学位取得年・前職の詳細は要確認）。
- **主要な研究分野**: 財政政策・公債管理、財政の持続可能性、社会保障と世代間リスク分担、資産価格とマクロ経済。
- **評判・学術的貢献**: 代表的業績は、米国の公債と基礎的財政収支の関係を実証した Bohn (1998, *Quarterly Journal of Economics*)。同論文の「公債比率が上がれば基礎的黒字が増える」という検証は、財政の持続可能性の標準的な検定として広く引用される。ほかに、政府会計（Bohn 1992, *Carnegie-Rochester Conference Series*）、社会保障信託基金の株式保有（Bohn 1999, *Review of Economic Dynamics*）、低い実質利子率の下での財政赤字の厚生効果（Bohn 1999, *Journal of Money, Credit, and Banking*）などがある。受賞歴は確認できなかったため記載しない。

---

**原論文**: Henning Bohn, "Government Asset and Liability Management in an Era of Vanishing Public Debt", January 2002（Conference on Declining Treasury Debt, Federal Reserve Bank of Cleveland, Oct. 25–26, 2001 報告論文）。本記事は原論文の数理モデルを整理した解説であり、原論文の著作権は著者に帰属します。
{% endraw %}
