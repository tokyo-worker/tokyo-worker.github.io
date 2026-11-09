---
layout: post
title: "Abel, Mankiw, Summers & Zeckhauser (1989) \"Assessing Dynamic Efficiency: Theory and Evidence\"、Review of Economic Studies: 数理モデル"
date: 2026-11-02 00:00:00 +0900
categories: [経済学, マクロ経済学]
math: true
---

{% raw %}
# Abel, Mankiw, Summers & Zeckhauser (1989) "Assessing Dynamic Efficiency: Theory and Evidence"、Review of Economic Studies: 数理モデル
### 不確実性下の世代重複モデルにおける動学的効率性の判定基準（キャッシュフロー基準）

---

## 論文の紹介（この記事について）

**論文について。** Abel, Mankiw, Summers and Zeckhauser の "Assessing Dynamic Efficiency: Theory and Evidence" は、経済が資本を過剰に蓄積していないか（動学的効率性）を、観察可能なデータでどう判定するかを論じた論文です。Diamond (1965) の世代重複モデルを、人口成長率と生産技術が確率的で、技術も一般的な設定に拡張します。そのうえで「資本部門から家計への純キャッシュフロー（利潤マイナス投資＝配当）が常に正なら効率的、常に負なら非効率」という判定基準を示します。これを米国と主要OECD諸国のデータに当てはめ、いずれも動学的に効率的だと結論します。さらに、安全利子率と平均成長率の比較では判定できないこと、永久に負の安全利子率でも効率的でありうること（「果樹」の例）も示します。

**論文リンク**：
- 無料で全文を読める版：<https://www.nber.org/papers/w2097> （NBER ワーキングペーパー版（Working Paper 2097、1986年12月））
- 無料で読める別の版：<https://scholar.harvard.edu/sites/scholar.harvard.edu/files/rzeckhauser/files/assessing_dynamic_efficiency.pdf> （共著者 Zeckhauser のハーバード大学サイトに置かれた刊行版のPDF。**非公式のコピー**（著者サイト）であり、リンク切れや公開状況の変更がありうる）
- 公式版（出版社・DOI）：<https://doi.org/10.2307/2297746> （The Review of Economic Studies, 56(1), 1–19（1989）。閲覧に契約や所属機関経由のアクセスが必要な場合がある）

**この記事について。** この記事は、その論文の**背景にある数理モデル**（モデル設定・命題・証明・「果樹」の例）だけを早見表として整理したものです。実証部分（表1〜3）は、モデルとの対応づけに必要な範囲でのみ触れます。

※ 参照した版は NBER Working Paper No. 2097（1986年12月）です。刊行版は Review of Economic Studies, 56(1), 1989, pp. 1–19 で、細部が異なる可能性があります。数式は元の論文の記述をそのまま用い、簡略化していません。式番号は本記事独自の通し番号です。

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

各個人は2期間（若年期・老年期）生きます。時点 $t=0,1,2,\dots$ に生まれる世代（コーホート）の人数は $N_t$ で、$N_t$ と生産技術のショックは確率的です。状態 $\theta_t$ は時点 $t$ の自然の状態（$t$ までの履歴を含むベクトル）で、$E_t$ は時点 $t$ の情報で条件づけた期待値です。企業は資本と労働から生産し、企業の集合が「市場ポートフォリオ」をなします。

**A1 期待効用・加法分離**

個人はフォン・ノイマン＝モルゲンシュテルン型の効用関数を持ち、2期間の消費について加法分離的です（簡単化のための仮定）。

**A2 労働供給**

若年者は労働を非弾力的に供給し、老年者は働きません。したがって $N_t$ は時点 $t$ の労働供給でもあります。

**A3 貯蓄手段**

若年者は労働所得の一部を消費し、残りで新規企業・既存企業の株式（市場ポートフォリオ）を買います。老年期に配当を受け取り、配当落ちの株式を次の若年世代に売って、総収入を全て消費します。

**A4 一般的な生産技術・規模に関して収穫一定**

生産は過去 $n$ 期の投資と現在の労働に依存し、調整費用、建設期間、ヴィンテージ資本、体化・非体化技術進歩を特殊ケースとして含みます。$F(\cdot)$ は過去の投資と現在の労働について1次同次（収穫一定）です。外すと、賃金の決定（式(12)）と利潤の分解（式(13)）が成り立ちません。

**A5 競争的要素価格・資本は限界生産物を受け取る**

賃金は労働の限界生産物に等しく、資本所得は独占利潤を実質的に含みません。外すと、キャッシュフロー基準の適用可能性が失われます。

**A6 効率性の定義：出生状態別ウェイト**

出生時の状態に対する保険市場がないことだけを理由に非効率とは呼びません。そのため社会計画者は、同じ個人でも出生状態ごとに別のウェイト $\mu(\theta_t)$ を置けます。外すと世代間リスク分担の欠如まで「非効率」に含まれ、過剰蓄積の問題と区別できません。

**A7 正則条件**

$\epsilon$ は正の定数で、全期間・全状態で一様に成り立つことを要求します。証明の中で $0\le I_t/V_t\le 1$ が用いられます（論文は「観察により」として使い、理由は示していません）。

$$
\epsilon\gt 0,\qquad 0\le \frac{I_t}{V_t}\le 1
$$

### 1.1 個人の問題

**効用・予算制約・一階条件**

$$
\underbrace{u(c^{y}_{t})}_{\text{若年期の効用}}+\underbrace{E_t\,v(c^{o}_{t+1})}_{\text{老年期の期待効用}}\tag{1}
$$

$$
c^{y}_{t}=\underbrace{w_t}_{\text{賃金}}-\underbrace{V_t s_t}_{\text{株式購入額}}\tag{2}
$$

$$
c^{o}_{t+1}=\underbrace{(D_{t+1}+V_{t+1})}_{\text{配当＋売却価値}}\,\underbrace{s_t}_{\text{保有株数}}\tag{3}
$$

$$
E_t\!\left[\underbrace{\frac{v'(c^{o}_{t+1})\,R_{t+1}}{u'(c^{y}_{t})}}_{\text{確率的割引×収益率}}\right]=1\tag{4}
$$

$$
R^{M}_{t+1}\equiv\underbrace{\frac{V_{t+1}+D_{t+1}}{V_t}}_{\text{市場ポートフォリオの収益率}}\tag{5}
$$

> 式(4)は任意の資産の収益率 $R_{t+1}$ について成り立つ標準的な資産価格の一階条件です。式(5)の市場ポートフォリオにも当てはまります。

| 記号・項目 | 意味 |
|---|---|
| $c^{y}_{t}$ | 時点 $t$ の若年者の消費 |
| $c^{o}_{t+1}$ | 時点 $t+1$ の老年者の消費 |
| $u, v$ | 若年期・老年期の効用関数 |
| $w_t$ | 賃金 |
| $s_t$ | 個人が持つ市場ポートフォリオの持ち分 |
| $V_t$ | 市場ポートフォリオ（配当落ち）の総価値 |
| $D_t$ | 総配当 |
| $R_{t+1}$ | 時点 $t$ から $t+1$ への任意資産の収益率 |
| $R^{M}_{t+1}$ | 市場ポートフォリオの収益率 |

### 1.2 集計恒等式

**消費・利潤・投資・配当**

$$
C_t\equiv\underbrace{N_t c^{y}_{t}}_{\text{若年者の消費計}}+\underbrace{N_{t-1}c^{o}_{t}}_{\text{老年者の消費計}}\tag{6}
$$

集計の持ち分は $N_t s_t=1$ です。式(2)(3)と合わせると、消費は労働所得と配当の和になります。

$$
C_t\equiv\underbrace{w_tN_t}_{\text{労働所得}}+\underbrace{D_t}_{\text{配当}}\tag{7}
$$

$$
\pi_t\equiv\underbrace{Y_t}_{\text{総産出}}-\underbrace{w_tN_t}_{\text{賃金総額}}\tag{8}
$$

$$
I_t\equiv Y_t-C_t\tag{9}
$$

$$
D_t\equiv\underbrace{\pi_t}_{\text{利潤}}-\underbrace{I_t}_{\text{投資}}\tag{10}
$$

> 配当は利潤マイナス投資（同値に、消費マイナス労働所得）と定義されます。自社株買いは配当、新株発行は負の配当に含まれます。配当は企業から家計への財の純フローで、符号に制約はありません（新規企業が新株発行を続ければ、既存企業が常に正の配当を払っていても集計配当は負になりえます）。

| 記号・項目 | 意味 |
|---|---|
| $C_t$ | 集計消費 |
| $N_t$ | 時点 $t$ に生まれた世代の人数（労働供給） |
| $Y_t$ | 総産出 |
| $\pi_t$ | 利潤（資本への総支払い） |
| $I_t$ | 総投資 |
| $D_t$ | 配当（企業から家計への純フロー） |

### 1.3 生産技術

**生産関数・賃金・資本の総収益**

$$
Y_t=\underbrace{F(I_{t-1},I_{t-2},\dots,I_{t-n};N_t,\theta_t)}_{\text{過去の投資と労働から産出}}\tag{11}
$$

$$
w_t=\underbrace{\partial F(I_{t-1},I_{t-2},\dots,I_{t-n};N_t,\theta_t)/\partial N_t}_{\text{労働の限界生産物}}\tag{12}
$$

$$
\pi_t=\sum_{i=1}^{\infty}\underbrace{F^{i}_{t}}_{\text{ヴィンテージ }t-i\text{ の限界生産物}}\underbrace{I_{t-i}}_{\text{過去の投資}}\tag{13}
$$

> $F^{i}_{t}$ は $F$ のヴィンテージ $t-i$ の投資についての偏微分で、$F^{i}_{t}\ge 0$、$i\gt n$ では $F^{i}_{t}\equiv 0$ です。資本が毎期完全に減耗する通常の仮定のもとでは $Y_t=F(I_{t-1};N_t,\theta_t)$ に帰着します。

| 記号・項目 | 意味 |
|---|---|
| $F(\cdot)$ | 生産関数（1次同次） |
| $n$ | 産出に影響する過去の投資の期数 |
| $I_{t-i}$ | ヴィンテージ $t-i$ の投資 |
| $F^{i}_{t}$ | ヴィンテージ $t-i$ の投資の限界生産物 |
| $\theta_t$ | 時点 $t$ の状態 |

### 1.4 動学的効率性の定義

**世代の事前効用と社会厚生関数**

$$
\Omega(\theta_t)=\underbrace{u\big(c^{y}_{t}(\theta_t)\big)}_{\text{若年期の効用}}+\underbrace{E\big(v\big(c^{o}_{t+1}(\theta_{t+1})\big)\,\big|\,\theta_t\big)}_{\text{老年期の期待効用}}\tag{14}
$$

$$
W=\underbrace{v(c^{o}_{0})}_{\text{初期の老年世代}}+\sum_{t=0}^{\infty}\sum_{\theta_t}\underbrace{\mu(\theta_t)}_{\text{出生状態別ウェイト}}\,\Omega(\theta_t)\tag{15}
$$

> 初期均衡が**動学的に非効率**とは、ある $\theta_s$ について $\Omega(\theta_s)$ を、他のどの $\theta_t$ の $\Omega(\theta_t)$ も下げずに上げられること（パレート改善が可能）です。そのような改善が不可能なら**動学的に効率的**です。同値に、ある正のウェイト $\mu(\theta_t)$ について均衡が $W$ を最大化していれば効率的です。

| 記号・項目 | 意味 |
|---|---|
| $\Omega(\theta_t)$ | 状態 $\theta_t$ で生まれた世代の事前期待効用 |
| $W$ | 社会厚生関数 |
| $\mu(\theta_t)$ | 社会計画者が $\Omega(\theta_t)$ に与えるウェイト（正） |
| $c^{o}_{0}$ | 初期の老年世代の消費 |

### 1.5 主要命題：キャッシュフロー基準（命題1）

**命題1**

$$
\underbrace{\frac{D_t}{V_t}\ge\epsilon\gt 0}_{\text{全期間・全状態で配当が正}}\;\Longrightarrow\;\text{均衡は動学的に効率的}\tag{16}
$$

$$
\underbrace{\frac{D_t}{V_t}\le-\epsilon\lt 0}_{\text{全期間・全状態で配当が負}}\;\Longrightarrow\;\text{均衡は動学的に非効率}\tag{17}
$$

> 財が純額で常に企業から投資家へ流れるなら効率的、常に投資家から企業へ流れるなら非効率です。Phelps (1961) の黄金律（定常状態で総利潤より多く投資する経済は非効率）の一般化です。いずれも十分条件で、$D_t/V_t$ の符号が時期や状態によって変わる場合はこの命題では判定できません。

**特殊ケース（Diamond の定常状態）**

Diamond モデルの定常状態では、資本の総収益が $rK$、新規投資が $nK$ なので $D=rK-nK$ です。命題1は伝統的な条件「資本の限界生産物 $r$ が人口成長率 $n$ を上回れば効率的」と整合します。

| 記号・項目 | 意味 |
|---|---|
| $\epsilon$ | 正の定数（下限・上限の余裕） |
| $D_t/V_t$ | 配当価値比率（配当÷市場価値） |
| $r$ | 資本の限界生産物（Diamond モデル） |
| $n$ | 人口成長率（Diamond 定常状態の資本成長率に等しい） |
| $K$ | 集計資本ストック |

### 1.6 収益率による判定（系1・命題2）

**市場価値の成長率と収益率**

$$
G_{t+1}\equiv\underbrace{V_{t+1}/V_t}_{\text{市場価値の成長率}}\tag{18}
$$

$$
\underbrace{R^{M}_{t+1}/G_{t+1}}_{\text{収益率÷成長率}}\equiv 1+\underbrace{D_{t+1}/V_{t+1}}_{\text{配当価値比率}}\tag{19}
$$

**系1**

$$
R^{M}_{t}/G_{t}\ge 1+\epsilon\gt 1\;\Longrightarrow\;\text{動学的に効率的}\tag{20}
$$

$$
R^{M}_{t}/G_{t}\le 1-\epsilon\lt 1\;\Longrightarrow\;\text{動学的に非効率}\tag{21}
$$

**命題2（任意の資産）**

$$
\underbrace{R_t/G_t\ge 1+\epsilon\gt 1}_{\text{ある資産の収益率が成長率を上回る}}\;\Longrightarrow\;\text{動学的に効率的}\tag{22}
$$

$$
\underbrace{R_t/G_t\le 1-\epsilon\lt 1}_{\text{ある資産の収益率が成長率に下回られる}}\;\Longrightarrow\;\text{動学的に非効率}\tag{23}
$$

> （22）(23)は全期間・全状態で成り立つ場合の条件です。特に $R_t$ を安全利子率とすると、「安全利子率が市場価値の成長率を常に上回れば効率的、常に下回れば非効率」となります。比較対象は産出や資本ストックの平均成長率ではなく、市場価値の成長率 $G_t$ です。

| 記号・項目 | 意味 |
|---|---|
| $G_{t+1}$ | 市場ポートフォリオの価値の成長率 |
| $R^{M}_{t}$ | 市場ポートフォリオの収益率 |
| $R_t$ | 任意の資産の競争的収益率 |

### 1.7 例：「果樹」経済（資産価格リスク）

**設定**

本節では前節までと異なり、無限期間生きる単一の代表的消費者を仮定します（効率性は社会計画問題の解と一致するので自明）。経済の生産資産は、生産も伐採もできない「果樹」だけです。果樹の産出は全て毎期消費されるので、投資は常にゼロです。$g\gt 0$、$\nu_t$ は i.i.d.（平均ゼロ、$\nu_t\gt-(1+g)$）、$0\lt\beta\lt 1$ とします（$\beta\lt 1$ は式(29)から暗黙に必要）。

$$
E_t\sum_{i=0}^{\infty}\underbrace{\beta^{i}}_{\text{割引}}U(C_{t+i})\tag{24}
$$

$$
D_t=\underbrace{D_{t-1}}_{\text{前期の産出}}\underbrace{(1+g+\nu_t)}_{\text{ドリフト付き乱歩の成長}}\tag{25}
$$

**資産価格の一階条件**

$$
E_t\!\left(R_{t+1}\,\beta\,U'(C_{t+1})/U'(C_t)\right)=1\tag{26}
$$

対数効用 $U(C)=\ln C$ と $C_t=D_t$ を用いると、

$$
E_t\!\left(R_{t+1}\,\beta/(1+g+\nu_{t+1})\right)=1\tag{27}
$$

**安全資産と果樹の価値**

$$
R^{F}_{t+1}=\frac{1}{E_t\!\left[\underbrace{\dfrac{\beta}{1+g+\nu_{t+1}}}_{\text{確率的割引因子}}\right]}\tag{28}
$$

$$
V_t=\underbrace{\left(\frac{\beta}{1-\beta}\right)}_{\text{価値÷配当}}D_t\tag{29}
$$

**対数正規分布の仮定（脚注4）**

$1+g+\nu_{t+1}$ が平均 $1+g$ の対数正規分布に従い、$\ln(1+g+\nu_{t+1})\sim N(\mu,\sigma^{2})$ とします。

$$
E(1+g+\nu_{t+1})=\exp\!\left(\mu+\tfrac{1}{2}\sigma^{2}\right)\tag{30}
$$

$$
E\!\left[(1+g+\nu_{t+1})^{-1}\right]=\exp\!\left(-\mu+\tfrac{1}{2}\sigma^{2}\right)\tag{31}
$$

$$
E\!\left[(1+g+\nu_{t+1})^{-1}\right]=\exp(\sigma^{2})/E(1+g+\nu_{t+1})\tag{32}
$$

$$
R^{F}_{t+1}=\underbrace{\left[(1+g)/\beta\right]}_{\text{果樹の平均収益率}}\underbrace{\exp(-\sigma^{2})}_{\text{不確実性による低下}}\tag{33}
$$

> 配当価値比率は定数です。果樹の平均収益率は不確実性の大きさによらず $(1+g)/\beta$ です。したがって不確実性が増すと、リスクプレミアムはもっぱら安全利子率の低下を通じて大きくなります。$\sigma^{2}$ が十分大きければ $R^{F}\lt 1$（純利子率が負）となり、安全利子率は全期間で一定なので、どの期間についても負になります。それでも $D_t\gt 0=I_t$ なので、命題1の基準は満たされ、経済は効率的です。

| 記号・項目 | 意味 |
|---|---|
| $\beta$ | 主観的割引因子 |
| $U(\cdot)$ | 代表的消費者の効用関数 |
| $g$ | 産出の平均ドリフト（$g\gt 0$） |
| $\nu_t$ | i.i.d. の産出ショック（平均0） |
| $R^{F}_{t+1}$ | 安全資産の総収益率（定数） |
| $\mu,\sigma^{2}$ | $\ln(1+g+\nu)$ の平均・分散 |

### 1.8 観測データへの対応（キャッシュフローの測り方）

**資本キャッシュフローと配当**

$$
\text{資本キャッシュフロー}\equiv\underbrace{\text{国民所得}+\text{資本減耗引当}}_{\text{総所得}}-\underbrace{\text{賃金・給与}-0.67\times\text{自営業者所得}}_{\text{労働所得（自営業者所得の67%を労働に帰属）}}\tag{34}
$$

$$
D\equiv\text{資本キャッシュフロー}-\text{総投資（住宅・非住宅・在庫増）}\tag{35}
$$

非金融法人部門では、次のように測ります（分母 $V$ は株式時価と純金融負債の合計）。

$$
D\equiv\text{配当}+\text{利払い}+\text{法人税}-\text{純金融投資}\;\approx\;\text{税引前総営業利潤}-\text{総資本投資}\tag{36}
$$

> 判定には資本利得・損失の情報も、減価償却などの会計上の慣行も不要で、必要なのは生産部門への資金の出入りだけです。ただし論文自身が指摘するように、資本所得が独占利潤を大きく含む場合は成り立ちません。「動学的効率性は有限期間の観察だけでは原理的に判定できない」ため、結論は「経済が今後も過去と同様に振る舞えば効率的な均衡が実現する」という形になります。

### 1.9 主要帰結

**主要式**

$$
\boxed{\begin{aligned}
D_t&=\underbrace{\pi_t-I_t}_{\text{利潤マイナス投資}}\\
D_t/V_t\ge\epsilon\gt 0&\Rightarrow\text{効率的},\qquad D_t/V_t\le-\epsilon\lt 0\Rightarrow\text{非効率}\\
R^{M}_{t+1}/G_{t+1}&=\underbrace{1+D_{t+1}/V_{t+1}}_{\text{収益率÷成長率}}\\
R_t/G_t\ge 1+\epsilon&\Rightarrow\text{効率的},\qquad R_t/G_t\le 1-\epsilon\Rightarrow\text{非効率}\\
R^{F}&=\underbrace{\left[(1+g)/\beta\right]\exp(-\sigma^{2})}_{\text{果樹経済の安全利子率}}
\end{aligned}}\tag{37}
$$

**比較静学（果樹経済）**

| 変化 | 結果 | 符号・式 |
|---|---|---|
| $\sigma^{2}$ の上昇 | 安全利子率が低下。平均収益率は不変で、リスクプレミアム比 $\exp(\sigma^{2})$ が上昇 | $\partial\ln R^{F}/\partial\sigma^{2}=-1$ |
| $\beta$ の上昇 | 安全利子率が低下。価値÷配当は上昇し、配当価値比率は低下 | $\partial\ln R^{F}/\partial\beta=-1/\beta$、$D/V=(1-\beta)/\beta$ |
| $g$ の上昇 | 安全利子率が上昇 | $\partial\ln R^{F}/\partial g=1/(1+g)$ |

**特殊ケース**

| ケース | 結果 |
|---|---|
| Diamond の定常状態 | $D=rK-nK$ で、$r\gt n$ なら効率的 |
| 果樹経済 | $I_t=0$、$D_t\gt 0$ で命題1の条件を満たし、効率的。$R^{M}/G=1/\beta$（補：式(19)と式(29)から） |
| 安全利子率が負（$\sigma^{2}\gt\ln[(1+g)/\beta]$） | それでも効率的（補：式(33)から、$R^{F}\lt 1$ となる条件） |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 米国経済は資本を過剰蓄積していない | 総資本所得が総投資を常に上回る（表1：$D/\text{GNP}$ は 1929〜1985 年を通じて正）ので、命題1により効率的 |
| 主要OECD諸国（英・仏・独・伊・加・日）も効率的 | 表3の（総利潤−投資）/GNP が 1960〜1984 年の全ての国・年で正。日本のように高投資の国は利潤率も高い（1984年：米国は投資16%・資本キャッシュフロー28%、日本は28%・38%） |
| 安全利子率が平均成長率より低い | 果樹経済では、資産価格リスクにより安全利子率が $R^{F}=[(1+g)/\beta]\exp(-\sigma^{2})$ まで低下しうる |
| 利潤率は高いのに安全利子率は低い | 資本のリスクは来期の賃料より市場価値の変動にあり、安全利子率の低下で吸収される |
| 負の安全利子率でも効率的 | 全期間で $R^{F}\lt 1$ でも $D_t\gt 0=I_t$ なので命題1を満たす |
| 平均成長率との比較が誤解を招く | 判定に必要なのは市場価値の成長率 $G_t$ との比較（命題2）で、産出や資本ストックの平均成長率との比較ではない |

> 注：論文本文は「資本所得と投資の差が 1929 年以降毎年 GNP の 15% 超」「配当価値比率が 4% 超」と述べますが、表1の数値とは一致しません。表1では $D/\text{GNP}$ の最小が 8.1%（1973 年）、$D/V$ は 2.7〜4.3%（1952〜1985 年）です。いずれも正である点は変わらないため、この記事では表の値に基づいて記しました。

## 3. 整理している点 {#sec3}

- **効率性の判定基準の一般化**：Phelps/Diamond の黄金律「$r\gt n$」を、確率的な人口・技術と一般的な生産技術のもとで「配当 $D_t/V_t$ の符号」の基準に拡張し、判定に必要な観測量を投資と資本所得の比較に絞りました。
- **収益率・成長率比較の正しい形**：安全利子率は市場価値の成長率と比べるべきで、産出や資本ストックなどの会計上の集計量の成長率と比べるのは適切ではないことを、命題2で整理しました。
- **低い安全利子率と効率性の両立**：資産価格リスクがあれば、永続的に生産的な資産が負の安全利子率のもとで均衡し、しかも効率的でありえることを、果樹の例で示しました。

## 4. 対象外の現象 {#sec4}

- 出生状態に対する保険市場の欠如（世代間リスク分担）は、非効率の定義から除いています。ex ante のリスク分担を含む評価は、将来の研究課題とされています。
- 命題1・2は十分条件です。$D_t/V_t$ や $R_t/G_t$ の符号が時期・状態により変わる経済については、判定できません。
- 有限期間の観察だけでは、動学的な効率・非効率は原理的に判定できません（過剰な資本が後で消費される可能性が残ります）。
- 資本所得が大きな独占利潤を含む場合は、キャッシュフロー基準の適用が前提から外れます。
- 非効率でないことは、望ましいことを意味しません。動学的効率性はパレート基準の動的な類似にすぎず、より強い社会厚生基準による経路の評価は扱いません。
- 観察される低い安全利子率を果樹の例で完全に説明するとは主張しません。資産価格リスクの大きさは測っておらず、流動性制約など市場の不完全性との関係も未検討です（Mehra and Prescott の結果を踏まえた留保）。
- 非合理的なバブル（fads）は扱いません。Tirole (1985) の合理的バブルは効率的経済では排除されますが、論文はこの結果が不確実性のある経済に一般化されることを「予想するが証明していない」としています。
- 平均成長率との比較に基づく賦課方式年金（社会保障）の実行可能性判断は、産出が減少しうる限り保証されません。

## 5. 主要文献・関連論文 {#sec5}

- **[原著・金字塔論文]** Phelps, E. S. (1961). The Golden Rule of Accumulation: A Fable for Growthmen. *American Economic Review*, 51(4), 638–643.
  - **位置づけ**: 黄金律の原型となった先駆的論文。本モデルの命題1は、この結果を不確実性下に一般化したものです。
- **[基礎モデル]** Diamond, P. A. (1965). National Debt in a Neoclassical Growth Model. *American Economic Review*, 55(5), 1126–1150.
  - **位置づけ**: 世代重複モデルで、競争均衡が資本過剰（動学的非効率）になりうることを示した論文。本モデルの出発点です。
- **[効率性の完全な特徴づけ]** Cass, D. (1972). On Capital Overaccumulation in the Aggregative, Neoclassical Model of Economic Growth: A Complete Characterization. *Journal of Economic Theory*, 4(2), 200–223.
  - **位置づけ**: 命題1の非効率性の証明で、パレート改善を構成的に示す方法の原型。
- **[関連：バブル]** Tirole, J. (1985). Asset Bubbles and Overlapping Generations. *Econometrica*, 53(6), 1499–1528.
  - **位置づけ**: 動学的に非効率な経済でのみ合理的バブルが成立することを示した論文。本論文の効率性の結論の含意として引かれます。
- **[関連：資産価格]** Lucas, R. E. (1978). Asset Prices in an Exchange Economy. *Econometrica*, 46(6), 1429–1445.
  - **位置づけ**: 「果樹」の枠組みの原型。本論文の第III節の例はこのモデルに基づきます。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
[個人の問題] 式(1)-(5)
      |
      +-- 集計 --> 式(6)-(10)  --> D_t = π_t − I_t
      |
[技術] 式(11)-(13) ---------------+
      |                           |
      v                           v
[命題1：非効率] 式(38)-(45)   [命題1：効率] 式(46)-(68)
  (Cass型の構成的証明)           (計画問題の一階条件＋横断性条件)
      |                           |
      +-----------+---------------+
                  v
         [式(16)(17)] 命題1
                  |
                  +--> [式(18)-(21)] 系1
                  |
                  +--> [式(69)-(75)] 命題2 --> 式(22)(23)
                  |
[果樹経済] 式(24)-(33)（A.8で導出、命題1の基準を満たす例）
```

### A.1 使う道具

**T1 ラグランジュ乗数法（状態別制約）**

状態ごとの資源制約 $g(\theta_t)=0$ に乗数 $\lambda(\theta_t)$ を付け、$L=W-\sum\lambda(\theta_t)\,g(\theta_t)$ を各変数で微分してゼロとおく（内点解）。

**T2 1次同次関数のオイラーの定理**

$F$ が $(I_{t-1},\dots,I_{t-n},N_t)$ について1次同次なら、
$F=N_t\,\partial F/\partial N_t+\sum_{i}F^{i}_{t}I_{t-i}$。

**T3 全微分と線形斉次差分方程式**

状態 $\theta_t$ と $N_t$ を固定して投資を摂動させると $dY_t=\sum_i F^{i}_{t}\,dI_{t-i}$。係数の和が1未満なら、解は有界で、ゼロに収束する。

**T4 条件付き確率の連鎖と履歴の木**

$\sum_{\theta_{t+1}\mid\theta_t}p(\theta_{t+1}\mid\theta_t)=1$。各 $\theta_{t+1}$ には、その履歴上の直前の $\theta_t$ が1つだけ対応するので、$\sum_{\theta_t}\sum_{\theta_{t+1}\mid\theta_t}=\sum_{\theta_{t+1}}$。

**T5 添字のずらし（総和の変数変換）**

$\sum_{j}\sum_{i}a_{j+i}$ で $j'=j-1$、$i'=i+1$ などと置き換えると、和の下限が変わるだけで値は変わらない。

**T6 再帰代入**

$x_{t+1}\le\rho\,x_t$ なら $x_t\le\rho^{t}x_0$、$x_{t+1}\ge\rho\,x_t$ なら $x_t\ge\rho^{t}x_0$。

**T7 対数正規分布のモーメント**

$\ln X\sim N(\mu,\sigma^{2})$ なら $E[X^{k}]=\exp\!\left(k\mu+\tfrac{1}{2}k^{2}\sigma^{2}\right)$。

### A.2 式(7)と式(10)の導出

**Step 1　集計の持ち分**

$N_ts_t=1$。

**Step 2　若年者の消費の集計**

式(2)に $N_t$ を掛ける：$N_tc^{y}_{t}=w_tN_t-V_tN_ts_t=w_tN_t-V_t$。

**Step 3　老年者の消費の集計**

式(3)を1期ずらして $N_{t-1}$ を掛ける：$N_{t-1}c^{o}_{t}=(D_t+V_t)N_{t-1}s_{t-1}=D_t+V_t$。

**Step 4　和をとる**

式(6)に代入すると $C_t=w_tN_t-V_t+D_t+V_t=w_tN_t+D_t$ → 式(7)。

**Step 5　配当の定義**

式(7)(8)(9)より $D_t=C_t-w_tN_t=(Y_t-I_t)-w_tN_t=\pi_t-I_t$ → 式(10)。

**確認**

果樹経済では $I_t=0$、$C_t=D_t=\pi_t$ なので、$w_tN_t=0$（労働なし）と整合します。

| 入力・使う道具 | 内容 |
|---|---|
| 式(2)(3)、集計の持ち分 | 予算制約の集計 |
| 式(6)(8)(9) | 定義 |

### A.3 式(13)の確認（補）

**Step 1　オイラーの定理（T2）**

$Y_t=N_t\,\partial F/\partial N_t+\sum_{i}F^{i}_{t}I_{t-i}$。

**Step 2　賃金の代入**

式(12)より $N_t\,\partial F/\partial N_t=w_tN_t$。

**Step 3　利潤の定義**

式(8)より $\pi_t=Y_t-w_tN_t=\sum_{i}F^{i}_{t}I_{t-i}$ → 式(13)。$i\gt n$ では $F^{i}_{t}=0$ なので和は $i=n$ までで足ります。

| 入力・使う道具 | 内容 |
|---|---|
| T2 | 1次同次性 |
| 式(8)(12) | 利潤・賃金 |

### A.4 命題1（非効率）の導出：式(17)

**Step 1　パレート改善の構成**

期間1に各老年者の消費を $\delta$ 増やし、期間1の若年者と将来の全世代の消費は変えない。これは明らかにパレート改善なので、実行可能なら初期均衡は非効率。

**Step 2　期間1の投資**

期間1の集計消費は $\delta N_0$ 増えるので、期間1の投資の変化は $dI_1=-\delta N_0$。

**Step 3　期間2の投資**

$I_1$ の減少は期間2の産出を $F^{1}_{2}\,dI_1$ だけ減らす。期間2の消費を不変にするには、投資も同額減らす：

$$
dI_2=F^{1}_{2}\,dI_1\tag{38}
$$

**Step 4　一般の期（T3）**

以降の各期も、産出の減少を同額の投資の減少で吸収する。生産関数を全微分すると（$dI_t=0$（$t\le 0$）、$\theta_t$・$N_t$ は不変）、

$$
dI_t=\sum_{i=1}^{n}F^{i}_{t}\,dI_{t-i}\tag{39}
$$

**Step 5　比率で表す**

$\Delta_t$ を投資の比例変化とし、式(39)の両辺を $I_t$ で割る。

$$
\Delta_t\equiv dI_t/I_t\tag{40}
$$

$$
\Delta_t=\sum_{i=1}^{n}\left(F^{i}_{t}I_{t-i}/I_t\right)\Delta_{t-i}\tag{41}
$$

**Step 6　実行可能性の条件**

$\Delta_t$ が常に有限で、$t\to\infty$ でゼロに収束するなら、十分小さな $\delta$ について介入は実行可能。係数 $F^{i}_{t}I_{t-i}/I_t$（$i=1,\dots,n$）が常に正で、和が1未満なら、これが成り立つ。

（補：和が $1-\epsilon$ 以下なら、$M_t=\max_{t-n\lt s\le t}|\Delta_s|$ について $M_{t+n}\le(1-\epsilon)M_t$ となり、$\Delta_t$ は有界で、幾何的にゼロへ収束する。）

**Step 7　$D_t/V_t\le-\epsilon$ から係数の和の条件へ**

$D_t/V_t\le-\epsilon\lt 0$ と式(10)(13)より、

$$
\Big[\Big(\sum_{i=1}^{n}F^{i}_{t}I_{t-i}\Big)-I_t\Big]/V_t\le-\epsilon\lt 0\tag{42}
$$

$0\le I_t/V_t\le 1$ より $-\epsilon\le-\epsilon I_t/V_t$ なので、

$$
\Big[\Big(\sum_{i=1}^{n}F^{i}_{t}I_{t-i}\Big)-I_t\Big]/V_t\le-\epsilon I_t/V_t\lt 0\tag{43}
$$

移項して、

$$
\sum_{i=1}^{n}F^{i}_{t}I_{t-i}/V_t\le(1-\epsilon)\,I_t/V_t\tag{44}
$$

両辺を $I_t/V_t$ で割る（$I_t\gt 0$ を前提）と、

$$
\sum_{i=1}^{n}F^{i}_{t}I_{t-i}/I_t\le 1-\epsilon\lt 1\tag{45}
$$

これは式(41)の係数の和が1未満という条件そのもの。したがって介入は実行可能で、初期均衡は非効率 → 式(17)。

**確認**

Diamond の定常状態（$n=1$、$I_t=nK_{t}$ の増分、$F^{1}=r$）では式(45)は $rK/(nK)\lt 1$、つまり $r\lt n$ で、伝統的な非効率条件と一致します。

| 入力・使う道具 | 内容 |
|---|---|
| T3 | 全微分と線形斉次差分方程式 |
| 式(10)(13) | $D_t=\pi_t-I_t$、$\pi_t=\sum F^{i}I_{t-i}$ |
| 仮定 A7 | $0\le I_t/V_t\le 1$ |

### A.5 命題1（効率）の導出：式(16)

**Step 1　計画問題**

社会計画者は、式(15)の $W$ を、全ての $\theta_t$ について次の資源制約のもとで最大化する。

$$
N_tc^{y}_{t}+N_{t-1}c^{o}_{t}+I_t=F(I_{t-1},I_{t-2},\dots,I_{t-n};N_t,\theta_t)\tag{46}
$$

**Step 2　ラグランジュ関数（T1）**

$p(\theta_{t+1}\mid\theta_t)$ は $\theta_t$ のもとで $\theta_{t+1}$ が生じる確率。

$$
\begin{aligned}
L={}&v(c^{o}_{0})+\sum_{t=0}^{\infty}\sum_{\theta_t}\mu(\theta_t)\Big\{u\big(c^{y}_{t}(\theta_t)\big)+\sum_{\theta_{t+1}}p(\theta_{t+1}\mid\theta_t)\,v\big[c^{o}_{t+1}(\theta_{t+1})\big]\Big\}\\
&-\sum_{t=0}^{\infty}\sum_{\theta_t}\lambda(\theta_t)\Big\{N_t(\theta_t)c^{y}_{t}(\theta_t)+N_{t-1}(\theta_{t-1})c^{o}_{t}(\theta_t)+I_t(\theta_t)-F(I_{t-1},I_{t-2},\dots,I_{t-n};N_t,\theta_t)\Big\}
\end{aligned}\tag{47}
$$

**Step 3　一階条件**

$c^{o}_{0}$、$c^{y}_{t}(\theta_t)$、$c^{o}_{t}(\theta_t)$、$I_t(\theta_t)$ で微分する。$I_t$ は期 $t+j$ の産出に、$F^{j}_{t+j}$ を通して入る点に注意（T5）。

$$
v'(c^{o}_{0})=\lambda_0N_{-1}\tag{48}
$$

$$
\mu(\theta_t)\,u'\big[c^{y}_{t}(\theta_t)\big]=\lambda(\theta_t)N_t(\theta_t)\tag{49}
$$

$$
\mu(\theta_{t-1})\,p(\theta_t\mid\theta_{t-1})\,v'\big[c^{o}_{t}(\theta_t)\big]=\lambda(\theta_t)N_{t-1}(\theta_{t-1}),\quad\theta_t\mid\theta_{t-1}\tag{50}
$$

$$
\sum_{j=1}^{\infty}\sum_{\theta_{t+j}\mid\theta_t}\lambda(\theta_{t+j})F^{j}_{t+j}=\lambda(\theta_t)\tag{51}
$$

式(48)で $\lambda_0$ が定まり、式(49)(50)で全ての $\lambda(\theta_t)$ と $\mu(\theta_t)$ が初期均衡から一意に定まる。したがって、均衡が計画問題の解であることを示すには、式(51)と次の横断性条件を示せばよい。

$$
\lim_{t\to\infty}\sum_{\theta_t}\lambda(\theta_t)V(\theta_t)=0\tag{52}
$$

ここで、資本ストックの価値は次で表される（論文はこの $V$ を市場価値として扱う）。

$$
\sum_{\theta_t}\lambda(\theta_t)V(\theta_t)=\sum_{j=0}^{\infty}\sum_{i=1}^{\infty}\sum_{\theta_{t+j+1}}\lambda(\theta_{t+j+1})\,F^{j+i}_{t+j+1}(\theta_{t+j+1})\,I_{t+1-i}(\theta_{t+1-i})\tag{53}
$$

**Step 4　式(51)の導出：資本の価格 $q$**

$q^{j}_{t+j}$ を、期 $t$ に設置された投資1単位の期 $t+j$ 末の価格（消費財表示）とし、$q^{0}_{t}=1$、$q^{n}_{t}=0$。期 $t+j$ から $t+j+1$ への、期 $t$ 設置の資本1単位の収益率は、

$$
R^{j+1}_{t+j+1}(\theta_{t+j+1})=\big[F^{j+1}_{t+j+1}(\theta_{t+j+1})+q^{j+1}_{t+j+1}(\theta_{t+j+1})\big]/q^{j}_{t+j}(\theta_{t+j})\tag{54}
$$

式(54)を式(4)に入れ、$q^{j}_{t+j}$ について解く：

$$
q^{j}_{t+j}(\theta_{t+j})=\sum_{\theta_{t+j+1}}\big[F^{j+1}_{t+j+1}+q^{j+1}_{t+j+1}\big]\,p(\theta_{t+j+1}\mid\theta_{t+j})\,v'\big[c^{o}_{t+j+1}(\theta_{t+j+1})\big]\big/u'\big[c^{y}_{t+j}(\theta_{t+j})\big]\tag{55}
$$

式(49)（時点 $t+j$）と式(50)（時点 $t+j+1$）の比をとる（$N_{t+j}$ が消える）：

$$
p(\theta_{t+j+1}\mid\theta_{t+j})\,v'\big[c^{o}_{t+j+1}(\theta_{t+j+1})\big]\big/u'\big[c^{y}_{t+j}(\theta_{t+j})\big]=\lambda(\theta_{t+j+1})/\lambda(\theta_{t+j}),\quad\theta_{t+j+1}\mid\theta_{t+j}\tag{56}
$$

式(56)を式(55)に代入：

$$
q^{j}_{t+j}(\theta_{t+j})=\sum_{\theta_{t+j+1}\mid\theta_{t+j}}\big[F^{j+1}_{t+j+1}+q^{j+1}_{t+j+1}\big]\lambda(\theta_{t+j+1})/\lambda(\theta_{t+j})\tag{57}
$$

$q^{0}_{t}=1$ から式(57)を前向きに再帰的に解く（$q^{n}=0$ で打ち切られる）と、

$$
\lambda(\theta_t)=\sum_{j=0}^{\infty}\sum_{\theta_{t+j+1}\mid\theta_t}F^{j+1}_{t+j+1}(\theta_{t+j+1})\,\lambda(\theta_{t+j+1})\tag{58}
$$

$j+1$ を $j$ に読み替えると式(51)に一致 → 式(51)。

**Step 5　横断性条件(52)の確認：式(53)を分解する（T5）**

式(53)で $j=0$ の項と $j\ge 1$ の項に分ける：

$$
\sum_{\theta_t}\lambda(\theta_t)V(\theta_t)=\sum_{\theta_{t+1}}\sum_{i=1}^{\infty}\lambda(\theta_{t+1})F^{i}_{t+1}I_{t+1-i}+\sum_{j=1}^{\infty}\sum_{i=1}^{\infty}\sum_{\theta_{t+j+1}}\lambda(\theta_{t+j+1})F^{j+i}_{t+j+1}I_{t+1-i}\tag{59}
$$

（状態の記法は、曖昧でない限り省略。）第1項は式(13)より $\sum_{\theta_{t+1}}\lambda(\theta_{t+1})\pi_{t+1}$。第2項は $j'=j-1$、$i'=i+1$ と置くと、

$$
\sum_{\theta_t}\lambda(\theta_t)V(\theta_t)=\sum_{\theta_{t+1}}\lambda(\theta_{t+1})\pi_{t+1}+\sum_{j=0}^{\infty}\sum_{i=2}^{\infty}\sum_{\theta_{t+j+2}}\lambda(\theta_{t+j+2})F^{j+i}_{t+j+2}I_{t+2-i}\tag{60}
$$

第2項は、式(53)を時点 $t+1$ で書いたもの（$i\ge 1$）から $i=1$ の項を引いたもの。したがって、

$$
\begin{aligned}
\sum_{\theta_t}\lambda(\theta_t)V(\theta_t)={}&\sum_{\theta_{t+1}}\lambda(\theta_{t+1})\pi_{t+1}+\sum_{\theta_{t+1}}\lambda(\theta_{t+1})V(\theta_{t+1})\\
&-\sum_{j=0}^{\infty}\sum_{\theta_{t+j+2}}\lambda(\theta_{t+j+2})F^{j+1}_{t+j+2}I_{t+1}
\end{aligned}\tag{61}
$$

式(61)の第3項で $j$ を1つずらす（添字を1から始める）と、

$$
\sum_{j=0}^{\infty}\sum_{\theta_{t+j+2}}\lambda(\theta_{t+j+2})F^{j+1}_{t+j+2}I_{t+1}=\sum_{j=1}^{\infty}\sum_{\theta_{t+j+1}}\lambda(\theta_{t+j+1})F^{j}_{t+j+1}I_{t+1}\tag{62}
$$

T4 により、これは恒等的に次に等しい：

$$
\sum_{j=1}^{\infty}\sum_{\theta_{t+j+1}}\lambda(\theta_{t+j+1})F^{j}_{t+j+1}I_{t+1}=\sum_{j=1}^{\infty}\sum_{\theta_{t+1}}\sum_{\theta_{t+j+1}\mid\theta_{t+1}}\lambda(\theta_{t+j+1})F^{j}_{t+j+1}I_{t+1}\tag{63}
$$

式(51)を時点 $t+1$ で用いると（内側の和が $\lambda(\theta_{t+1})$ になる）、

$$
\sum_{j=1}^{\infty}\sum_{\theta_{t+j+1}}\lambda(\theta_{t+j+1})F^{j}_{t+j+1}I_{t+1}=\sum_{\theta_{t+1}}\lambda(\theta_{t+1})I_{t+1}\tag{64}
$$

式(64)を式(61)に戻す：

$$
\sum_{\theta_t}\lambda(\theta_t)V(\theta_t)=\sum_{\theta_{t+1}}\lambda(\theta_{t+1})\pi_{t+1}+\sum_{\theta_{t+1}}\lambda(\theta_{t+1})V(\theta_{t+1})-\sum_{\theta_{t+1}}\lambda(\theta_{t+1})I_{t+1}\tag{65}
$$

式(10)（$D_{t+1}=\pi_{t+1}-I_{t+1}$）を用いると、

$$
\sum_{\theta_t}\lambda(\theta_t)V(\theta_t)=\sum_{\theta_{t+1}}\big(1+D_{t+1}/V_{t+1}\big)\lambda(\theta_{t+1})V(\theta_{t+1})\tag{66}
$$

**Step 6　$D_t/V_t\ge\epsilon$ の仮定を使う**

仮定 $D_{t+1}/V_{t+1}\ge\epsilon\gt 0$ より、

$$
\sum_{\theta_t}\lambda(\theta_t)V(\theta_t)\ge(1+\epsilon)\sum_{\theta_{t+1}}\lambda(\theta_{t+1})V(\theta_{t+1})\tag{67}
$$

再帰代入（T6）で、

$$
\sum_{\theta_t}\lambda(\theta_t)V(\theta_t)\le(1+\epsilon)^{-t}\lambda_0V_0\tag{68}
$$

$\epsilon\gt 0$ なので右辺は $t\to\infty$ でゼロに収束し、左辺は非負だから、式(52)が成り立つ。均衡は計画問題の最適解として表せる → 式(16)。

**確認**

果樹経済（代表的個人、対数効用）では $D/V=(1-\beta)/\beta$ なので $1+\epsilon=1/\beta$ で、式(68)の減衰は $\beta^{t}$ に対応します（補）。Diamond の定常状態では $\epsilon=r-n$ です。

| 入力・使う道具 | 内容 |
|---|---|
| T1 | ラグランジュ乗数法 |
| T4・T5 | 履歴の木、添字のずらし |
| T6 | 再帰代入 |
| 式(4)(10)(13) | 資産価格の一階条件、配当、利潤 |

### A.6 命題2の導出：式(22)(23)

**Step 1　資産価格の一階条件**

式(4)を書き直す：

$$
\sum_{\theta_{t+1}\mid\theta_t}R(\theta_{t+1})\,p(\theta_{t+1}\mid\theta_t)\,v'\big(c^{o}_{t+1}(\theta_{t+1})\big)\big/u'\big(c^{y}_{t}(\theta_t)\big)=1\tag{69}
$$

**Step 2　乗数との関係**

式(56)で $j=0$ とおいて式(69)に代入：

$$
\lambda(\theta_t)=\sum_{\theta_{t+1}\mid\theta_t}R(\theta_{t+1})\,\lambda(\theta_{t+1})\tag{70}
$$

**Step 3　$V(\theta_t)$ を掛ける**

$$
\lambda(\theta_t)V(\theta_t)=\sum_{\theta_{t+1}\mid\theta_t}R(\theta_{t+1})\,\lambda(\theta_{t+1})V(\theta_{t+1})\big[V(\theta_t)/V(\theta_{t+1})\big]\tag{71}
$$

**Step 4　成長率 $G$ の導入**

$G(\theta_{t+1})\equiv V(\theta_{t+1})/V(\theta_t)$ より、

$$
\lambda(\theta_t)V(\theta_t)=\sum_{\theta_{t+1}\mid\theta_t}\big[R(\theta_{t+1})/G(\theta_{t+1})\big]\lambda(\theta_{t+1})V(\theta_{t+1})\tag{72}
$$

**Step 5　$\theta_t$ について和をとる（T4）**

$$
\sum_{\theta_t}\lambda(\theta_t)V(\theta_t)=\sum_{\theta_{t+1}}\big[R(\theta_{t+1})/G(\theta_{t+1})\big]\lambda(\theta_{t+1})V(\theta_{t+1})\tag{73}
$$

**Step 6　効率の場合**

$R/G\ge 1+\epsilon\gt 1$ なら、式(73)から式(67)(68)が成り立ち、横断性条件が満たされる。均衡は計画問題の最適解として表せる → 式(22)。

**Step 7　非効率の場合**

$R/G\le 1-\epsilon\lt 1$ なら、

$$
\sum_{\theta_t}\lambda(\theta_t)V(\theta_t)\le(1-\epsilon)\sum_{\theta_{t+1}}\lambda(\theta_{t+1})V(\theta_{t+1})\tag{74}
$$

再帰代入（T6）で、

$$
\sum_{\theta_t}\lambda(\theta_t)V(\theta_t)\ge(1-\epsilon)^{-t}\lambda_0V_0\tag{75}
$$

右辺は $t\to\infty$ で発散する（$\lambda_0V_0\gt 0$）ので、横断性条件を満たせない。したがって、均衡は式(15)の形の社会厚生関数を最大化しえない → 式(23)。

（注：式(15)は $\Omega(\theta_t)$ について線形ですが、論文は、この証明が $\Omega(\theta_t)$ について非線形な一般的な社会厚生関数にも適用でき、そのとき $\mu(\theta_t)$ は均衡で評価した社会厚生の $\Omega(\theta_t)$ に関する微分と解釈できると述べています。）

**確認**

$R=R^{M}$ とすると、式(19)より $R/G=1+D/V$ なので、条件 $R/G\ge 1+\epsilon$ は $D/V\ge\epsilon$ と同値で、命題1(16)に帰着します。

| 入力・使う道具 | 内容 |
|---|---|
| 式(4)(56) | 資産価格の一階条件、割引と乗数の関係 |
| T4・T6 | 履歴の木、再帰代入 |
| 式(18) | $G$ の定義 |

### A.7 系1の導出：式(19)〜(21)

**Step 1　収益率の分解**

式(5)と式(18)より、

$$
R^{M}_{t+1}/G_{t+1}=\frac{(V_{t+1}+D_{t+1})/V_t}{V_{t+1}/V_t}=\frac{V_{t+1}+D_{t+1}}{V_{t+1}}=1+\frac{D_{t+1}}{V_{t+1}}
$$

→ 式(19)。

**Step 2　命題1への帰着**

$R^{M}_{t}/G_{t}\ge 1+\epsilon$ は $D_t/V_t\ge\epsilon$ と同値、$R^{M}_{t}/G_{t}\le 1-\epsilon$ は $D_t/V_t\le-\epsilon$ と同値。命題1(16)(17)をそのまま適用 → 式(20)(21)。

**確認**

配当が常に正なら、式(19)の右辺は常に1より大きく、系1の効率条件に対応します。

| 入力・使う道具 | 内容 |
|---|---|
| 式(5)(18) | 収益率と成長率の定義 |
| 式(16)(17) | 命題1 |

### A.8 果樹経済の導出：式(27)〜(33)

**Step 1　消費の特定**

果樹の産出は全て消費され、投資はゼロなので $C_t=D_t$。

**Step 2　対数効用の一階条件**

$U'(C)=1/C$ より、$U'(C_{t+1})/U'(C_t)=D_t/D_{t+1}=1/(1+g+\nu_{t+1})$（式(25)より）。式(26)に代入して → 式(27)。

**Step 3　安全資産の収益率**

安全資産の収益率 $R^{F}_{t+1}$ は $t+1$ の状態によらないので、期待値の外に出せる：$R^{F}_{t+1}\,E_t[\beta/(1+g+\nu_{t+1})]=1$ → 式(28)。$\nu_t$ は i.i.d. なので $R^{F}$ は時間によらず一定で、どの期間の安全利子率も同じ符号になる。

**Step 4　果樹の価値（補：検証）**

$V_t=\kappa D_t$ と推測する。収益率は $R_{t+1}=(V_{t+1}+D_{t+1})/V_t=\dfrac{(\kappa+1)D_{t+1}}{\kappa D_t}=\dfrac{(\kappa+1)(1+g+\nu_{t+1})}{\kappa}$。式(27)に代入すると $E_t\!\left[\dfrac{(\kappa+1)\beta}{\kappa}\right]=1$、つまり $\kappa=\beta/(1-\beta)$ → 式(29)。

このとき、果樹の収益率は $R_{t+1}=(1+g+\nu_{t+1})/\beta$、平均収益率は $(1+g)/\beta$（不確実性によらない）。配当価値比率は $D_t/V_t=(1-\beta)/\beta$（定数）。

**Step 5　対数正規分布のモーメント（T7）**

$X=1+g+\nu_{t+1}$、$\ln X\sim N(\mu,\sigma^{2})$ とする。$k=1$ で式(30)、$k=-1$ で式(31)。

**Step 6　式(32)**

式(30)より $\exp(-\mu)=\exp(\tfrac{1}{2}\sigma^{2})/E(X)$。これを式(31)に代入すると、$E[X^{-1}]=\exp(\tfrac{1}{2}\sigma^{2})\cdot\exp(\tfrac{1}{2}\sigma^{2})/E(X)=\exp(\sigma^{2})/E(X)$ → 式(32)。

**Step 7　安全利子率**

式(28)に式(32)と $E(X)=1+g$ を代入する：

$R^{F}_{t+1}=\dfrac{1}{\beta\,E[X^{-1}]}=\dfrac{E(X)}{\beta\exp(\sigma^{2})}=\dfrac{1+g}{\beta}\exp(-\sigma^{2})$ → 式(33)。

**Step 8　負の純利子率の条件（補）**

$R^{F}\lt 1$ となるのは $\sigma^{2}\gt\ln[(1+g)/\beta]$ のとき。

**確認**

$\sigma^{2}=0$（不確実性なし）では $R^{F}=(1+g)/\beta$ で、確実性下の通常の結果（$\beta R=1+g$）と一致します。

| 入力・使う道具 | 内容 |
|---|---|
| 式(25)(26) | 産出過程、一階条件 |
| T7 | 対数正規分布のモーメント |
| 対数効用、$C_t=D_t$ | 設定 |

### A.9 著者について

**Andrew B. Abel**
- **アカデミックな経歴**: MIT で Ph.D.（1978年）。本論文当時は ペンシルベニア大学ウォートン・スクール財務学部。後に同校の Robert Morris Professor of Banking。1993〜94年に米国大統領経済諮問委員会（CEA）委員。
- **主要な研究分野**: マクロ経済学、投資理論（不確実性下の投資、$q$ 理論）、資産価格、動学的効率性。
- **評判・学術的貢献**: Abel and Eberly の投資モデルなど投資理論の業績で知られる。Bernanke との共著マクロ経済学の教科書でも広く知られる。

**N. Gregory Mankiw**
- **アカデミックな経歴**: プリンストン大学で学士、MIT で Ph.D.（1984年）。本論文当時はハーバード大学経済学部。後に同大学の Robert M. Beren Professor of Economics。2003〜05年に米国大統領経済諮問委員会（CEA）委員長。
- **主要な研究分野**: マクロ経済学（ニュー・ケインジアン経済学、経済成長、金融政策）。
- **評判・学術的貢献**: メニュー・コストの理論、Mankiw–Romer–Weil の成長モデルなどで知られる。『マクロ経済学』『経済学原理』は世界的に広く使われる教科書。

**Lawrence H. Summers**
- **アカデミックな経歴**: MIT で学士、ハーバード大学で Ph.D.（1982年）。1983年にハーバード大学経済学部の正教授に就任（史上最年少級）。世界銀行チーフエコノミスト、米国財務長官（1999〜2001年）、ハーバード大学学長（2001〜2006年）などを歴任。
- **主要な研究分野**: マクロ経済学、公共経済学、金融経済学。
- **評判・学術的貢献**: ジョン・ベイツ・クラーク賞（1993年）を受賞。株式市場の非合理性やノイズ・トレーダー、後年の長期停滞論などの業績で知られる。

**Richard J. Zeckhauser**
- **アカデミックな経歴**: ハーバード大学で学士・Ph.D.（1968年）。同大学ケネディスクールで Frank P. Ramsey Professor of Political Economy。
- **主要な研究分野**: 意思決定論、リスクと不確実性、医療・公共政策の経済分析。
- **評判・学術的貢献**: リスク配分やエージェンシー問題、政策評価における不確実性の扱いの研究で知られる。

---

**出典**: Abel, A. B., Mankiw, N. G., Summers, L. H., and Zeckhauser, R. J., "Assessing Dynamic Efficiency: Theory and Evidence", NBER Working Paper No. 2097 (December 1986)（刊行版: *Review of Economic Studies*, 56(1), 1989, pp. 1–19）。数式の出典は原論文で、式番号の付け替えと導出の整理は本記事による。
{% endraw %}
