---
layout: post
title: "Keiichi Morimoto(2026) \"Debt Rollover and Term Structure in an Overlapping Generations Economy\" 債務ロールオーバーと期間構造（世代重複経済）：数理モデル"
date: 2026-10-27 00:00:00 +0900
categories: [マクロ経済学, 期間構造]
math: true
---

{% raw %}
# 債務ロールオーバーと期間構造（世代重複経済）：数理モデル
### Morimoto (2026) の確率的OLG経済における内生的な価格づけ作用素

---

## 論文の紹介

**対象の論文**：Keiichi Morimoto (2026年1月27日), 「Debt Rollover and Term Structure in an Overlapping Generations Economy」（明治大学 政治経済学部）。

**論文の内容**：政府が非状態依存債（ノンコンティンジェント債）の定常的な満期ポートフォリオを毎期ロールオーバーし、その純キャッシュフローを一括移転として若年世代と老年世代に分けて家計へ還元する、確率的成長の世代重複（OLG）経済を扱います。この分割が世代間の限界効用を変えるため、全満期の債券を価格づけする1期の確率的割引因子（SDF）が内生的に決まります。均衡は債券価格の不動点として特徴づけられ、論文は次の結果を示します。

- 均衡価格系の存在と一意性の条件
- 満期選択によって作れる状態依存ロールオーバー収入の範囲
- ロールオーバー収益の厳密分解（成長に伴う割引、期待債券価格の変化、リスク補償＝期間プレミアム）
- 2状態・対数効用でのイールドカーブ傾きの状態間反転
- 世代間消費配分の変化が小さくても、利回りと期間プレミアムが大きく動くことを示す数値例

**この記事について**：本記事は、この論文の背景にある**数理モデル**についての記事です。論文の主張の解説ではなく、モデルの式・前提・記号・導出を早見表の形にまとめました。数理モデルは簡易化せず、論文の式をそのまま使っています。記号が衝突する箇所だけ記法を変えており、変更点は 1.0 に一覧しています。

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

**主体・時間**

純粋交換・確率的成長の世代重複経済。各世代は若年と老年の2期だけ生き、毎期新しい世代が生まれる。時間は $t=0,1,2,\dots$。老年は消費した後に退出する。

**情報構造**

不確実性は有限状態のマルコフ連鎖 $\{s_t\}_{t\ge0}$（状態空間 $\{1,\dots,S\}$、遷移確率 $\phi_{ss'}$、遷移行列 $\Phi$）が駆動する。全員が現在状態を観察し、価格と配分は現在状態の関数（定常マルコフ）である。

**A1 非状態依存債の再取引**

$J\ge1$ 種類のゼロクーポン債（満期 $j=1,\dots,J$）が毎期再取引される。若年が長期債を買い、老年になって売却できるため、全満期が1期のSDFで価格づけされる。外すと（状態依存債を導入すると）、満期選択による保険機能の議論が変わる。

**A2 政府の定常ロールオーバーと一括移転**

政府は状態不変の満期ポートフォリオ $f$（産出比）を毎期ロールオーバーする。純キャッシュフローは一括移転として家計に還元され、政策パラメータ $\theta\in[0,1]$ が若年と老年への分割を決める。外すと、世代間の帰着が定まらず、SDFが内生化されない。

**A3 選好**

時間分離的なCRRA効用（相対的危険回避度 $\gamma$、割引因子 $\beta$）。$\gamma\neq1$ を一般形とし、対数効用 $\gamma=1$ は2状態の解析ケース（1.7）で別に扱う。

**A4 均衡概念**

定常マルコフ均衡。債券価格・消費配分は状態のみの関数で、均衡は債券価格の不動点（1.5）として定義される。

**A5 ポートフォリオの符号（仮定1）**

基準ケースでは $f^j\ge0$（全満期でネット発行者）とする。外した場合は、総エクスポージャー $\lVert f\rVert_1$ で評価する保守的な条件に置き換わる（1.6）。

**A6 2状態ケース**

解析的な特徴づけ（1.7、1.8）では、2状態 $\{\mathrm{n},\mathrm{d}\}$（通常状態・災害状態）と対数効用に限る。

**正則条件**

$$
n\gt-1,\quad\beta\in(0,1),\quad\gamma\gt0,\quad\theta\in[0,1],\quad\sum_{s'=1}^{S}\phi_{ss'}=1\ \ \forall s,\quad\tilde c_y(s;\theta)\gt0,\ \ \tilde c_o(s;\theta)\gt0\ \ \forall s\tag{1}
$$

> 最後の2条件（detrend後の消費が全状態で正）は均衡の定義の一部。$\tilde c_y,\tilde c_o$ は 1.3 で定義する。

**記法の変更点（論文との対応）**

| 論文の記号 | 本記事の記号 | 理由 |
|---|---|---|
| 状態名 $n,d$ | $\mathrm{n},\mathrm{d}$（立体） | 人口成長率 $n$ と区別 |
| ロールダウン価値 $B_s$ | $V_s$ | 政府債券残高 $B^j_t$ と区別 |
| 総ポートフォリオ量 $F$ | $\bar f\equiv\sum_jf^j$ | 家計の債券保有 $F^j_t$ と区別 |
| 2状態の均衡系 $F(\tilde c,\theta)$ | $\Psi(\tilde c,\theta)$ | 同上 |
| 比 $r(\theta)=\lambda_2/\lambda_1$ | $\xi(\theta)$ | 長期利回り $r_\infty$ と区別 |
| OA.4.1 の $D_G$ | $D_z$ | $D_{\mathcal G}^{-1}$ と区別 |
| OA.5.2 の $\Delta(\theta)=Q^1_{\mathrm n}-Q^1_{\mathrm d}$ | $\delta(\theta)$ | 行列式 $\Delta$ と区別 |

> 上線・下線（$\underline{m},\overline{m}$ など）の付き方はPDFの文字抽出で失われていたため、論文の証明の流れから復元した（補った箇所）。

### 1.1 経済環境

**産出と人口**

$$
G_s\equiv\underbrace{e^{g}(1-b_s)}_{\text{トレンド×ショック}},\quad g_s\equiv\ln G_s,\quad\underbrace{y_t=G_{s_t}\,y_{t-1}}_{\text{若年1人当たり産出}}\tag{2}
$$

$$
N_t=(1+n)N_{t-1},\quad Y_t\equiv N_ty_t,\quad\underbrace{\mathcal G_s}_{\text{総産出成長率}}\equiv\frac{Y_t}{Y_{t-1}}=(1+n)G_s\iff\frac{Y_{t-1}}{Y_t}=\frac{1}{\mathcal G_{s_t}}\tag{3}
$$

> 外生トレンド $g\in\mathbb R$ と状態依存の乗法ショック $(1-b_s)$ で産出が成長する。若年1人当たりの成長率が $G_s$、総産出の成長率が $\mathcal G_s$。

**財市場の均衡**

$$
\underbrace{N_tc_{y,t}}_{\text{若年の消費}}+\underbrace{N_{t-1}c_{o,t}}_{\text{老年の消費}}=\underbrace{N_ty_t}_{\text{産出}}\quad\Longrightarrow\quad c_{y,t}+\frac{1}{1+n}\,c_{o,t}=y_t\tag{4}
$$

> 若年だけが産出 $y_t$ を受け取り、老年の賦存はゼロ。時点 $t$ の老年の質量は若年の $1/(1+n)$ 倍。

| 記号・項目 | 意味 |
|---|---|
| $t$, $s_t$ | 時点、状態 |
| $S$, $\phi_{ss'}$, $\Phi$ | 状態数、遷移確率 $\mathrm P(s_{t+1}=s'\mid s_t=s)$、遷移行列 |
| $g$, $b_s$ | 外生トレンド、状態 $s$ のショック（$G_s=e^{g}(1-b_s)$） |
| $G_s$, $g_s$ | 若年1人当たり産出の成長率とその対数 |
| $y_t$ | 若年1人当たり産出 |
| $N_t$, $n$ | 若年コーホートの質量、人口成長率 |
| $Y_t$, $\mathcal G_s$ | 総産出、総産出の成長率 |
| $c_{y,t}$, $c_{o,t}$ | 若年1人当たり消費、老年1人当たり消費 |

### 1.2 債券と政府

**債券市場と移転**

$$
N_tF^j_t=B^j_t\quad(j=1,\dots,J)\tag{5}
$$

$$
\Pi_t=\kappa_{s_t}\,Y_t\tag{6}
$$

$$
\text{若年1人当たり移転}=\underbrace{\theta\,\kappa_{s_t}\,y_t}_{\text{若年への移転}},\qquad\text{老年1人当たり移転}=\underbrace{(1-\theta)(1+n)\,\kappa_{s_t}\,y_t}_{\text{老年への移転}}\tag{7}
$$

> $\Pi_t\gt0$ は家計への移転、$\Pi_t\lt0$ は純租税。総移転のうち $\theta\Pi_t$ が若年、$(1-\theta)\Pi_t$ が老年に渡り、(7) は人数 $N_t$、$N_{t-1}$ で割った1人当たり表現。

**政府予算制約とロールオーバー**

$$
\underbrace{\sum_{j=1}^{J}Q^j_tB^j_t}_{\text{新規発行の収入}}=\underbrace{\Pi_t}_{\text{移転}}+\underbrace{\sum_{j=1}^{J}Q^{j-1}_tB^j_{t-1}}_{\text{既発債の買戻し}}\tag{8}
$$

$$
f^j\equiv\frac{B^j_t}{Y_t}\ \ (\text{時間・状態に依らない}),\qquad B^j_t=f^jY_t,\qquad F^j_t=f^jy_t\tag{9}
$$

$$
\kappa_s=\sum_{j=1}^{J}\Bigl(Q^j_s-\frac{1}{\mathcal G_s}\,Q^{j-1}_s\Bigr)f^j\tag{10}
$$

$$
R^j_s\equiv\underbrace{Q^j_s}_{\text{新規発行の価格}}-\underbrace{\frac{1}{\mathcal G_s}Q^{j-1}_s}_{\text{成長調整した買戻し価格}}\quad(s=1,\dots,S;\ j=1,\dots,J)\tag{11}
$$

$$
\kappa=\pi=R\,f,\qquad\pi\equiv R f,\quad R=\bigl(R^j_s\bigr)_{s,j}\in\mathbb R^{S\times J}\tag{12}
$$

> $\pi$ は産出比の状態別ロールオーバー純キャッシュフロー（債務収入ベクトル）。政府の予算制約から、均衡では移転比率 $\kappa$ と一致する。

| 記号・項目 | 意味 |
|---|---|
| $Q^j_t$, $Q^j_s$ | $j$ 期債の価格（$Q^0\equiv1$） |
| $F^j_t$ | 若年1人当たりの $j$ 期債の保有額面（取引後） |
| $B^j_t$ | 政府の $j$ 期債の発行残高（額面）。$t$ 期末時点 |
| $\Pi_t$, $\kappa_s$ | 政府の純移転、移転の産出比（$\Pi_t=\kappa_{s_t}Y_t$） |
| $\theta$ | 移転のうち若年に渡る割合（政策パラメータ） |
| $f^j$, $f$ | 満期別ポートフォリオ比（産出比）とそのベクトル |
| $R^j_s$, $R$ | ロールオーバー係数、$S\times J$ のロールオーバー行列 |
| $\pi$ | ロールオーバー純キャッシュフロー（債務収入）ベクトル |

### 1.3 家計

**選好**

$$
u(c)=\frac{c^{1-\gamma}-1}{1-\gamma}\ \ (\gamma\gt0,\ \gamma\neq1),\qquad\max_{c_{y,t},\,\{F^j_t\}_j}\ u(c_{y,t})+\beta\,\mathrm E_t\bigl[u(c_{o,t+1})\bigr]\tag{13}
$$

> 対数効用 $u(c)=\log c$（$\gamma=1$）は別扱い（1.7）。

**予算制約（実質額）**

$$
\underbrace{c_{y,t}+\sum_{j=1}^{J}Q^j_tF^j_t}_{\text{若年の支出}}=\underbrace{y_t}_{\text{賦存}}+\underbrace{\theta\kappa_{s_t}y_t}_{\text{移転}}\tag{14}
$$

$$
\underbrace{c_{o,t}}_{\text{老年の消費}}=\underbrace{(1-\theta)(1+n)\kappa_{s_t}y_t}_{\text{移転}}+\underbrace{\sum_{j=1}^{J}Q^{j-1}_tF^j_{t-1}}_{\text{債券の売却収入}}\tag{15}
$$

> 老年は退出するため、債券は若年のうちに買い、老年で再売却する。$j$ 期債の翌期の売却価格は $Q^{j-1}_{t+1}$。

**トレンド除去（detrend）後の予算制約**

$$
\tilde c_y(s)\equiv\frac{c_{y,t}}{y_t}\Bigm|_{s_t=s},\qquad\tilde c_o(s)\equiv\frac{c_{o,t}}{y_t}\Bigm|_{s_t=s}\tag{16}
$$

$$
\tilde c_y(s)+\sum_{j=1}^{J}Q^j_sf^j=1+\theta\kappa_s\tag{17}
$$

$$
\tilde c_o(s)=(1-\theta)(1+n)\kappa_s+\frac{1}{G_s}\sum_{j=1}^{J}Q^{j-1}_sf^j\tag{18}
$$

$$
\tilde c_y(s)+\frac{1}{1+n}\,\tilde c_o(s)=1\tag{19}
$$

> (17)(18) と政府予算 $\kappa=Rf$ が成り立てば、(19) はワルラス法則により自動的に成立する。(18) の $1/G_s$ は $y_{t-1}/y_t$ による。

| 記号・項目 | 意味 |
|---|---|
| $u$, $\gamma$, $\beta$ | 効用関数、相対的危険回避度、若年・老年間の主観的割引因子 |
| $\mathrm E_t$ | 時点 $t$ の条件付き期待 |
| $\tilde c_y(s)$, $\tilde c_o(s)$ | detrend後の若年・老年の消費（状態 $s$、$y_t$ に対する比） |

### 1.4 均衡価格：1期SDFと価格づけ作用素

**一階条件**

$$
Q^j_s\,u'(c_{y,t})=\beta\,\mathrm E\bigl[u'(c_{o,t+1})\,Q^{j-1}_{s_{t+1}}\mid s_t=s\bigr]\tag{20}
$$

$$
\frac{u'(c_{o,t+1})}{u'(c_{y,t})}=\Bigl(\frac{c_{y,t}}{c_{o,t+1}}\Bigr)^{\gamma}=\Bigl(\frac{\tilde c_y(s)}{\tilde c_o(s')\,G_{s'}}\Bigr)^{\gamma}\quad(s_t=s,\ s_{t+1}=s')\tag{21}
$$

> $j$ 期債を1単位増やすと、今の消費が $Q^j_s$ 減り、翌期の老年消費が $Q^{j-1}_{s'}$ 増える。(21) は $u'(c)=c^{-\gamma}$ と $c_{o,t+1}=\tilde c_o(s')G_{s'}y_t$ から。

**SDFと価格づけ作用素**

$$
m_{ss'}(\theta)\equiv\beta\Bigl(\frac{\tilde c_y(s;\theta)}{\tilde c_o(s';\theta)\,G_{s'}}\Bigr)^{\gamma}\tag{22}
$$

$$
X_{ss'}(\theta)\equiv\underbrace{\phi_{ss'}}_{\text{遷移確率}}\,\underbrace{m_{ss'}(\theta)}_{\text{若年のSDF}}\tag{23}
$$

$$
Q^j_s=\sum_{s'=1}^{S}X_{ss'}(\theta)\,Q^{j-1}_{s'},\qquad Q^0_s=1\tag{24}
$$

$$
Q^j=X(\theta)^{j}\,\mathbf 1,\qquad Q^j=(Q^j_1,\dots,Q^j_S)^{\top},\quad\mathbf 1=(1,\dots,1)^{\top}\tag{25}
$$

> (24)(25) の形は代表的個人の場合（Morimoto 2025）と同じだが、$X(\theta)$ は所与ではない。$\tilde c_y,\tilde c_o$ を通じて $\theta$ と $f$、ひいては価格そのものに依存する。取引される満期は $j\le J$ だが、(25) は任意の長さの満期の価格を与える。

| 記号・項目 | 意味 |
|---|---|
| $u'$ | 限界効用 |
| $m_{ss'}(\theta)$ | 状態 $s\to s'$ の若年の1期SDF |
| $X(\theta)$, $X_{ss'}$ | $S\times S$ の価格づけ作用素（SDFを遷移確率で重みづけ） |
| $Q^j$, $\mathbf 1$ | 状態別価格ベクトル、すべて1のベクトル |

### 1.5 均衡の不動点表現

**不動点写像 $T_\theta$（$f,\theta$ を固定）**

- Step 1：価格 $\{Q^j\}$ から (11) で $R$ を作り、(12) で $\kappa=Rf$
- Step 2：(17)(18) を解いて消費を求める
- Step 3：(22)(23) で $X(\theta)$ を作る
- Step 4：新しい価格 $Q^{j,\mathrm{new}}=X(\theta)^j\mathbf 1$ を得る

$$
\tilde c_y(s;\theta)=1+\theta\kappa_s-\sum_{j=1}^{J}Q^j_sf^j,\qquad\tilde c_o(s;\theta)=(1-\theta)(1+n)\kappa_s+\frac{1}{G_s}\sum_{j=1}^{J}Q^{j-1}_sf^j\tag{26}
$$

$$
\{Q^j\}_{j=1}^{J}=T_\theta\bigl(\{Q^j\}_{j=1}^{J}\bigr)\tag{27}
$$

> (26) は Step 2 の結果。(27) の解を、$\tilde c_y\gt0,\ \tilde c_o\gt0$（全状態）のもとで定常マルコフ均衡と呼ぶ。数値解法は、$Q^{(k+1)}=(1-\omega)Q^{(k)}+\omega\,T_\theta(Q^{(k)})$（$\omega\in(0,1]$）の減衰つきPicard反復で、$\theta$ ごとにウォームスタートする。

**定義1（定常マルコフ均衡）**

| 条件 | 内容 |
|---|---|
| 1 | 価格が $Q^j=X(\theta)^j\mathbf 1$（$j=1,\dots,J$） |
| 2 | 作用素が (22)(23) を満たす |
| 3 | 移転が $\kappa=Rf$（$R$ は (11) と均衡価格から作る） |
| 4 | 世代別予算制約 (26) が各状態で成立 |
| 5 | $\tilde c_y(s;\theta)\gt0$、$\tilde c_o(s;\theta)\gt0$（全状態） |

| 記号・項目 | 意味 |
|---|---|
| $T_\theta$ | 価格 $\to$ 価格の不動点写像（Step 1〜4 の合成） |
| $Q^{j,\mathrm{new}}$ | Step 4 で更新された価格 |
| $\omega$, $k$ | 減衰係数、反復回数 |

### 1.6 存在と一意性

**仮定1（ポートフォリオの符号）**

$$
f^j\ge0\ \ (j=1,\dots,J),\qquad\sum_{j=1}^{J}f^j\gt0\tag{28}
$$

> 政府がネット発行者のケース。外した場合の置換は本節末尾（(43)〜(45)）。

**価格汎関数と消費の縮約形**

$$
A_s(Q)\equiv\underbrace{\sum_{j=1}^{J}f^jQ^j_s}_{\text{新規発行の市場価値}},\qquad V_s(Q)\equiv\underbrace{\sum_{j=1}^{J}f^jQ^{j-1}_s}_{\text{ロールダウン価値}}\quad(Q^0_s\equiv1)\tag{29}
$$

$$
\tilde c_y(s;\theta)=1-(1-\theta)A_s(Q)-\frac{\theta}{\mathcal G_s}V_s(Q)\tag{30}
$$

$$
\tilde c_o(s;\theta)=(1-\theta)(1+n)A_s(Q)+\frac{\theta}{G_s}V_s(Q)\tag{31}
$$

> $\kappa_s=A_s-V_s/\mathcal G_s$ を (17)(18) に代入した形で、消費は価格の行ごとの加重和だけに依存する。

**価格フィードバックのループ**

$$
\{Q^j_s\}_{s,j}\Longrightarrow\bigl(A_s,\ \mathcal G_s^{-1}V_s\bigr)\Longrightarrow\bigl(\tilde c_y(s),\tilde c_o(s)\bigr)\Longrightarrow X(\theta)\Longrightarrow\{Q^j_s\}_{s,j}\tag{32}
$$

**許容価格集合**

$$
\underline m(\varepsilon)\equiv\beta\Bigl(\frac{\varepsilon}{(1+n)(1-\varepsilon)\,\overline G}\Bigr)^{\gamma},\qquad\overline m(\varepsilon)\equiv\beta\Bigl(\frac{1-\varepsilon}{(1+n)\,\varepsilon\,\underline G}\Bigr)^{\gamma}\tag{33}
$$

$$
\underline q_j(\varepsilon)\equiv\underline m(\varepsilon)^{j},\qquad\overline q_j(\varepsilon)\equiv\overline m(\varepsilon)^{j}\tag{34}
$$

$$
\begin{aligned}
\underline A(\varepsilon)&=\sum_{j=1}^{J}f^j\underline q_j(\varepsilon),&\overline A(\varepsilon)&=\sum_{j=1}^{J}f^j\overline q_j(\varepsilon),\\
\underline V(\varepsilon)&=f^1+\sum_{j=2}^{J}f^j\underline q_{j-1}(\varepsilon),&\overline V(\varepsilon)&=f^1+\sum_{j=2}^{J}f^j\overline q_{j-1}(\varepsilon)
\end{aligned}\tag{35}
$$

$$
\begin{aligned}
1-(1-\theta)\,\overline A(\varepsilon)-\frac{\theta}{\underline{\mathcal G}}\,\overline V(\varepsilon)&\ge\varepsilon,\\
1-(1-\theta)\,\underline A(\varepsilon)-\frac{\theta}{\overline{\mathcal G}}\,\underline V(\varepsilon)&\le1-\varepsilon
\end{aligned}\tag{36}
$$

$$
K(\varepsilon)\equiv\Bigl\{Q\in\mathbb R^{S\times J}\colon\ \underline q_j(\varepsilon)\le Q^j_s\le\overline q_j(\varepsilon)\ \ \forall s,j\Bigr\}\tag{37}
$$

> $\underline G=\min_sG_s$、$\overline G=\max_sG_s$、$\underline{\mathcal G}=(1+n)\underline G$、$\overline{\mathcal G}=(1+n)\overline G$。(36) は $\tilde c_y\in[\varepsilon,1-\varepsilon]$ を保証する条件（許容性）。

**補題1・命題1（存在）**

仮定1のもとで、(36) を満たす $\varepsilon\in(0,1/2)$ が存在すれば、次が成り立つ。

- $K(\varepsilon)$ は空でないコンパクト凸集合
- $Q\in K(\varepsilon)$ なら $\tilde c_y\in[\varepsilon,1-\varepsilon]$、$\tilde c_o\in[(1+n)\varepsilon,(1+n)(1-\varepsilon)]$
- $T_\theta(K(\varepsilon))\subseteq K(\varepsilon)$

したがって $T_\theta$ は連続で、少なくとも1つの定常マルコフ均衡が存在する（**命題1**。本文の条件は「$A_s$ と $\mathcal G_s^{-1}V_s$ が全状態で産出を使い切らない」）。

**リプシッツ評価と命題2（一意性）**

$$
\lVert X(Q)\rVert_\infty\equiv\max_s\sum_{s'}X_{ss'}(Q)\le\overline m(\varepsilon)\tag{38}
$$

$$
\lvert\tilde c_y(s;Q)-\tilde c_y(s;Q')\rvert\le\Bigl((1-\theta)+\frac{\theta}{\underline{\mathcal G}}\Bigr)\bar f\,\lVert Q-Q'\rVert_\infty,\quad\lvert\tilde c_o(s;Q)-\tilde c_o(s;Q')\rvert\le\Bigl((1-\theta)(1+n)+\frac{\theta}{\underline G}\Bigr)\bar f\,\lVert Q-Q'\rVert_\infty\tag{39}
$$

$$
\lVert X(Q)-X(Q')\rVert_\infty\le C_X(\varepsilon)\lVert Q-Q'\rVert_\infty,\quad C_X(\varepsilon)\equiv\gamma\,\overline m(\varepsilon)\Bigl[\frac{1}{\varepsilon}\Bigl((1-\theta)+\frac{\theta}{\underline{\mathcal G}}\Bigr)\bar f+\frac{1}{(1+n)\varepsilon}\Bigl((1-\theta)(1+n)+\frac{\theta}{\underline G}\Bigr)\bar f\Bigr]\tag{40}
$$

$$
\lVert T_\theta(Q)-T_\theta(Q')\rVert_\infty\le L(\varepsilon)\lVert Q-Q'\rVert_\infty,\qquad L(\varepsilon)\equiv C_X(\varepsilon)\max_{1\le j\le J}\bigl(j\,\overline m(\varepsilon)^{j-1}\bigr)\tag{41}
$$

> **命題2**：価格フィードバック（$A_s,\mathcal G_s^{-1}V_s$ 経由）が十分弱い、すなわち $L(\varepsilon)\lt1$ なら、$T_\theta$ は $K(\varepsilon)$ 上の縮小写像で均衡は一意。任意の初期値からPicard反復が収束する。$L\lt1$ は十分条件。

**命題3（実現可能な移転比率）**

$$
\kappa=R(\theta)f,\qquad\mathcal I(\theta)\equiv\mathrm{Im}\,R(\theta)=\bigl\{R(\theta)f\colon f\in\mathbb R^J\bigr\}\tag{42}
$$

- $\mathrm{rank}\,R(\theta)=S$ なら $\mathcal I(\theta)=\mathbb R^S$
- $\mathrm{rank}\,R(\theta)\lt S$ なら $\mathcal I(\theta)$ は真部分空間で、満期構成では任意の状態別移転比率を作れない
- この縮退は $R(\theta)$ の性質で、$X(\theta)$ がランク落ちしている必要はない

**符号制約を外した場合（オンライン付録 OA.2・OA.3）**

$$
f^{j,+}\equiv\max\{f^j,0\},\quad f^{j,-}\equiv\max\{-f^j,0\},\quad\lVert f\rVert_1\equiv\sum_{j=1}^{J}\lvert f^j\rvert\tag{43}
$$

$$
\begin{aligned}
\underline A(\varepsilon)&=\sum_jf^{j,+}\underline q_j-\sum_jf^{j,-}\overline q_j,&\overline A(\varepsilon)&=\sum_jf^{j,+}\overline q_j-\sum_jf^{j,-}\underline q_j,\\
\underline V(\varepsilon)&=f^1+\sum_{j\ge2}f^{j,+}\underline q_{j-1}-\sum_{j\ge2}f^{j,-}\overline q_{j-1},&\overline V(\varepsilon)&=f^1+\sum_{j\ge2}f^{j,+}\overline q_{j-1}-\sum_{j\ge2}f^{j,-}\underline q_{j-1}
\end{aligned}\tag{44}
$$

$$
\begin{aligned}
1-(1-\theta)\overline A-\frac{\theta}{\underline{\mathcal G}}\,\overline V^{+}+\frac{\theta}{\overline{\mathcal G}}\,\overline V^{-}&\ge\varepsilon,\\
1-(1-\theta)\underline A-\frac{\theta}{\overline{\mathcal G}}\,\underline V^{+}+\frac{\theta}{\underline{\mathcal G}}\,\underline V^{-}&\le1-\varepsilon
\end{aligned}\tag{45}
$$

> (44)(45) が (35)(36) の置換（$x^{+}=\max\{x,0\}$、$x^{-}=\max\{-x,0\}$）。(45) の上線・下線は導出から復元した（補った箇所）。このとき (39)〜(41) の $\bar f$ は $\lVert f\rVert_1$ に置き換わり（命題9・10）、条件は総エクスポージャーで決まるため保守的になる。

| 記号・項目 | 意味 |
|---|---|
| $A_s(Q)$, $V_s(Q)$ | 新規発行ポートフォリオの市場価値、ロールダウン価値（産出比） |
| $\varepsilon$ | 若年消費の下限・上限のスラック（$\tilde c_y\in[\varepsilon,1-\varepsilon]$） |
| $\underline G$, $\overline G$ | $\min_sG_s$、$\max_sG_s$ |
| $\underline{\mathcal G}$, $\overline{\mathcal G}$ | $(1+n)\underline G$、$(1+n)\overline G$ |
| $\underline m(\varepsilon)$, $\overline m(\varepsilon)$ | SDFの下限・上限 |
| $\underline q_j$, $\overline q_j$ | $j$ 期債価格の下限・上限 |
| $\underline A,\overline A,\underline V,\overline V$ | $A_s,V_s$ の下限・上限 |
| $K(\varepsilon)$ | 許容価格集合（箱） |
| $\bar f$ | $\sum_jf^j$（総ポートフォリオ量） |
| $\lVert\cdot\rVert_\infty$ | 価格配列の最大値ノルム（$\max_{s,j}\lvert Q^j_s\rvert$）、行列には行和ノルム |
| $C_X(\varepsilon)$, $L(\varepsilon)$ | $X$ のリプシッツ定数、$T_\theta$ のリプシッツ定数 |
| $\mathcal I(\theta)$ | 満期選択で作れる移転比率の集合（$R(\theta)$ の像） |
| $f^{j,\pm}$, $\lVert f\rVert_1$ | $f^j$ の正部・負部、総エクスポージャー |

### 1.7 2状態・対数効用のケース

**2状態の価格づけ作用素**

状態を $\{\mathrm n,\mathrm d\}$、効用を $u(c)=\log c$（$\gamma=1$）とする。

$$
\tilde c_o(s;\theta)=(1+n)\bigl(1-\tilde c_y(s;\theta)\bigr),\qquad s\in\{\mathrm n,\mathrm d\}\tag{46}
$$

$$
X_{ss'}(\theta)=\frac{\beta}{1+n}\,\underbrace{\phi_{ss'}}_{\text{遷移確率}}\,\underbrace{\frac{\tilde c_y(s;\theta)}{\bigl(1-\tilde c_y(s';\theta)\bigr)G_{s'}}}_{\text{世代間の消費比}}\tag{47}
$$

$$
y^j_s(\theta)\equiv-\frac{1}{j}\log Q^j_s(\theta)\quad(j\ge1),\qquad r_\infty(\theta)\equiv-\log\lambda_1(\theta)\tag{48}
$$

> (46) は財市場 (19) から。$Q^j(\theta)=X(\theta)^j\mathbf 1$（(25) と同じ）。$y^j_s$ は幾何平均利回り、$\lambda_1(\theta)\gt\lambda_2(\theta)$ は $X(\theta)$ の（実）固有値。

**命題4（2つの固有モード）**

$X(\theta)$ が対角化可能で $\lambda_1(\theta)\gt\lambda_2(\theta)\gt0$ とする。このとき各状態 $s$ に $\eta_s(\theta)\in\mathbb R$ があり、すべての $j\ge0$ で

$$
Q^j_s(\theta)=\underbrace{\bigl(1-\eta_s(\theta)\bigr)\lambda_1(\theta)^{j}}_{\text{支配モード}}+\underbrace{\eta_s(\theta)\,\lambda_2(\theta)^{j}}_{\text{第2モード}}\tag{49}
$$

$$
\eta_s(\theta)=\frac{Q^1_s(\theta)-\lambda_1(\theta)}{\lambda_2(\theta)-\lambda_1(\theta)},\qquad Q^1_s(\theta)=\sum_{s'\in\{\mathrm n,\mathrm d\}}X_{ss'}(\theta)\tag{50}
$$

$$
y^j_s(\theta)=-\log\lambda_1(\theta)-\frac{1}{j}\log\Bigl(\bigl(1-\eta_s(\theta)\bigr)+\eta_s(\theta)\,\xi(\theta)^{j}\Bigr),\qquad\xi(\theta)\equiv\frac{\lambda_2(\theta)}{\lambda_1(\theta)}\in(0,1)\tag{51}
$$

> 状態 $s$ のイールドカーブ全体は、$(\lambda_1,\lambda_2)$ と1つの負荷 $\eta_s$ で決まる。$2\times2$ では $\lambda_1\lambda_2=\det X$ で、$\lambda_2\gt0\iff\det X\gt0$。

**命題5（傾きの判定）**

| 条件 | 状態 $s$ のイールドカーブ |
|---|---|
| $\eta_s(\theta)\le0$ | （弱い）右上がり：$y^{j+1}_s\ge y^j_s$ |
| $0\lt\eta_s(\theta)\lt1$ | （弱い）右下がり：$y^{j+1}_s\le y^j_s$ |
| $\eta_s(\theta)=0$ | フラット：$Q^j_s=\lambda_1^{j}$、$y^j_s=r_\infty$ |

**系1（状態間の傾き逆転）**

$\lambda_1\gt\lambda_2\gt0$ とする。$Q^1_{\mathrm n}(\theta)\neq Q^1_{\mathrm d}(\theta)$ なら $\eta_{\mathrm n},\eta_{\mathrm d}$ は逆符号で、一方の状態は右上がり、他方は右下がり。$Q^1_{\mathrm n}(\theta^{\ast})=Q^1_{\mathrm d}(\theta^{\ast})$ となる $\theta^{\ast}$ では $\eta_{\mathrm n}=\eta_{\mathrm d}=0$ で、期間構造は状態に依らずフラット：$Q^j_s(\theta^{\ast})=\lambda_1(\theta^{\ast})^{j}$。

> $X\gg0$ より $1-\eta_s\gt0$、すなわち $\eta_s\lt1$。したがって逆符号のとき、一方が $\eta_s\le0$（右上がり）、他方が $0\lt\eta_s\lt1$（右下がり）。

**スイッチ点の特徴づけ**

$c_s(\theta)\equiv\tilde c_y(s;\theta)$、$z_s(\theta)\equiv\dfrac{1}{(1-c_s(\theta))\,G_s}$ とおく。

$$
Q^1_s(\theta)=\frac{\beta}{1+n}\,c_s(\theta)\bigl(\phi_{s\mathrm n}z_{\mathrm n}(\theta)+\phi_{s\mathrm d}z_{\mathrm d}(\theta)\bigr),\qquad s\in\{\mathrm n,\mathrm d\}\tag{52}
$$

$$
c_{\mathrm n}(\theta^{\ast})\bigl(\phi_{\mathrm{nn}}z_{\mathrm n}+\phi_{\mathrm{nd}}z_{\mathrm d}\bigr)=c_{\mathrm d}(\theta^{\ast})\bigl(\phi_{\mathrm{dn}}z_{\mathrm n}+\phi_{\mathrm{dd}}z_{\mathrm d}\bigr)\tag{53}
$$

$$
\frac{c_{\mathrm n}(\theta^{\ast})}{c_{\mathrm d}(\theta^{\ast})}=\frac{\phi_{\mathrm{dn}}z_{\mathrm n}+\phi_{\mathrm{dd}}z_{\mathrm d}}{\phi_{\mathrm{nn}}z_{\mathrm n}+\phi_{\mathrm{nd}}z_{\mathrm d}}\tag{54}
$$

> (53) は $(c_{\mathrm n},c_{\mathrm d})$ 平面上のスイッチ曲線。$\theta$ を動かすと均衡配分 $(c_{\mathrm n}(\theta),c_{\mathrm d}(\theta))$ は配分軌跡を描き、$\theta^{\ast}$ はその軌跡がスイッチ曲線と交わる点。$\delta(\theta)\equiv Q^1_{\mathrm n}(\theta)-Q^1_{\mathrm d}(\theta)$ が区間内で符号を変えれば、中間値の定理で $\theta^{\ast}$ が存在する。$\Phi$ の2行が同一なら (54) の右辺は1で、交差には $c_{\mathrm n}=c_{\mathrm d}$ が要る。

**共分散分解と期間プレミアム（2状態）**

$$
Q^j_s=\mathrm E_s\bigl[M_{t+1}Q^{j-1}_{s_{t+1}}\bigr]=\underbrace{\mathrm E_s[M_{t+1}]\,\mathrm E_s\bigl[Q^{j-1}_{s_{t+1}}\bigr]}_{\text{期待仮説の水準}}+\underbrace{\mathrm{Cov}_s\bigl(M_{t+1},Q^{j-1}_{s_{t+1}}\bigr)}_{\text{リスク補償}}\tag{55}
$$

$$
\mathrm{Cov}_s\bigl(M_{t+1},Q^{j-1}_{s_{t+1}}\bigr)=\phi_{s\mathrm n}\phi_{s\mathrm d}\,\bigl(m_{s\mathrm n}-m_{s\mathrm d}\bigr)\bigl(Q^{j-1}_{\mathrm n}-Q^{j-1}_{\mathrm d}\bigr)\qquad(j\ge2)\tag{56}
$$

> (56) が系2。$\theta$ は SDFの状態間の開き $m_{s\mathrm n}-m_{s\mathrm d}$ を通じて期間プレミアムを動かす。

**行列表示・固有値・SDFの開き（OA.4）**

$$
X(\theta)=\frac{\beta}{1+n}\,D_y(\theta)\,\Phi\,D_z(\theta),\quad D_y\equiv\mathrm{diag}(c_{\mathrm n},c_{\mathrm d}),\quad D_z\equiv\mathrm{diag}(z_{\mathrm n},z_{\mathrm d})\tag{57}
$$

$$
\tau(\theta)=\frac{\beta}{1+n}\bigl[\phi_{\mathrm{nn}}c_{\mathrm n}z_{\mathrm n}+\phi_{\mathrm{dd}}c_{\mathrm d}z_{\mathrm d}\bigr],\qquad\Delta(\theta)=\Bigl(\frac{\beta}{1+n}\Bigr)^{2}\bigl(\phi_{\mathrm{nn}}\phi_{\mathrm{dd}}-\phi_{\mathrm{nd}}\phi_{\mathrm{dn}}\bigr)c_{\mathrm n}c_{\mathrm d}z_{\mathrm n}z_{\mathrm d}\tag{58}
$$

$$
\lambda_{1,2}(\theta)=\frac{1}{2}\Bigl(\tau(\theta)\pm\sqrt{\tau(\theta)^{2}-4\Delta(\theta)}\Bigr),\qquad m_{s\mathrm n}-m_{s\mathrm d}=\frac{\beta}{1+n}\,c_s\,\bigl(z_{\mathrm n}-z_{\mathrm d}\bigr)\tag{59}
$$

| 記号・項目 | 意味 |
|---|---|
| $\mathrm n$, $\mathrm d$ | 通常状態、災害状態 |
| $c_s(\theta)$ | 若年の消費シェア $\tilde c_y(s;\theta)$ |
| $z_s(\theta)$ | $1/((1-c_s)G_s)$ |
| $\lambda_1,\lambda_2$ | $X(\theta)$ の固有値（$\lambda_1$ はフロベニウス根） |
| $\eta_s(\theta)$ | 状態 $s$ の第2モード負荷 |
| $\xi(\theta)$ | 固有値比 $\lambda_2/\lambda_1$ |
| $y^j_s$, $r_\infty$ | $j$ 期の幾何平均利回り、長期利回り |
| $\theta^{\ast}$ | 共通スイッチ点（$Q^1_{\mathrm n}=Q^1_{\mathrm d}$） |
| $\delta(\theta)$ | $Q^1_{\mathrm n}(\theta)-Q^1_{\mathrm d}(\theta)$ |
| $M_{t+1}$ | 実現した1期SDF $m_{s_ts_{t+1}}(\theta)$ |
| $\mathrm E_s$, $\mathrm{Cov}_s$ | $s_t=s$ で条件づけた期待・共分散 |
| $D_y$, $D_z$ | 対角行列 $\mathrm{diag}(c_s)$、$\mathrm{diag}(z_s)$ |
| $\tau$, $\Delta$ | $X$ のトレース、行列式 |

### 1.8 $\theta$ の比較静学（2状態・対数効用）

**配分系の定義**

候補 $\tilde c=(\tilde c_y(\mathrm n),\tilde c_y(\mathrm d))^{\top}\in(0,1)^2$ に対し、

$$
X(\tilde c)_{ss'}=\frac{\beta}{1+n}\phi_{ss'}\frac{\tilde c_y(s)}{(1-\tilde c_y(s'))G_{s'}},\quad Q^j(\tilde c)=X(\tilde c)^{j}\mathbf 1,\quad\kappa(\tilde c)=A(\tilde c)-D_{\mathcal G}^{-1}V(\tilde c)\tag{60}
$$

$$
\Psi(\tilde c,\theta)\equiv\tilde c-\mathbf 1+(1-\theta)A(\tilde c)+\theta\,D_{\mathcal G}^{-1}V(\tilde c),\qquad\Psi\bigl(\tilde c(\theta),\theta\bigr)=0\tag{61}
$$

> $A(\tilde c)=(A_s)_s$、$V(\tilde c)=(V_s)_s$（(29) を $Q^j(\tilde c)$ で評価）、$D_{\mathcal G}^{-1}=\mathrm{diag}(\mathcal G_{\mathrm n}^{-1},\mathcal G_{\mathrm d}^{-1})$。(61) は (30) と同じ式。

**局所比較静学（陰関数定理）**

$$
\frac{d\tilde c(\theta)}{d\theta}=-\Psi_{\tilde c}(\theta)^{-1}\Psi_\theta(\theta)=\underbrace{\Psi_{\tilde c}(\theta)^{-1}}_{\text{GEフィードバック}}\,\underbrace{\kappa(\theta)}_{\text{直接の帰着}}\tag{62}
$$

$$
\frac{d\tilde c_o(s;\theta)}{d\theta}=-(1+n)\frac{d\tilde c_y(s;\theta)}{d\theta},\qquad s\in\{\mathrm n,\mathrm d\}\tag{63}
$$

$$
\Psi_{\tilde c}(\theta)=I_2+(1-\theta)\frac{\partial A}{\partial\tilde c}(\theta)+\theta\,D_{\mathcal G}^{-1}\frac{\partial V}{\partial\tilde c}(\theta)\tag{64}
$$

$$
dQ^j=\sum_{k=0}^{j-1}X^{\,j-1-k}\,(dX)\,X^{k}\,\mathbf 1\qquad(j\ge1)\tag{65}
$$

> 内部均衡で $\Psi_{\tilde c}$ が正則と仮定。$\Psi_\theta=-\kappa$（(61) より）。価格を固定すれば $\partial_\theta\tilde c_y(s)=\kappa_s$ で、これが直接の帰着の経路。(65) は任意の摂動 $dX$ に対する満期別の価格反応で、全満期が $X$ の反応を通じて世代間配分に載る（1.10 でも使う）。

| 記号・項目 | 意味 |
|---|---|
| $\tilde c$ | 若年の消費シェアの候補ベクトル |
| $X(\tilde c)$, $Q^j(\tilde c)$ | 候補に対する作用素・価格 |
| $A(\tilde c)$, $V(\tilde c)$, $\kappa(\tilde c)$ | 状態別の価格汎関数・移転比率ベクトル |
| $D_{\mathcal G}^{-1}$ | $\mathrm{diag}(\mathcal G_s^{-1})$ |
| $\Psi$, $\Psi_{\tilde c}$, $\Psi_\theta$ | 均衡系とそのヤコビ行列、$\theta$ 偏微分 |
| $dX$, $dQ^j$ | $X$ の摂動、$j$ 期債価格の反応 |

### 1.9 ロールオーバー係数の厳密分解と期間プレミアム

**命題6（厳密分解）**

$$
\mathrm{TP}^j_s\equiv\mathrm{Cov}_s\bigl(M_{t+1},\,Q^{j-1}_{s_{t+1}}\bigr)\tag{66}
$$

$$
R^j_s=\underbrace{\Bigl(\mathrm E_s[M_{t+1}]-\frac{1}{\mathcal G_s}\Bigr)Q^{j-1}_s}_{\text{成長ウェッジ}}+\underbrace{\mathrm E_s[M_{t+1}]\Bigl(\mathrm E_s\bigl[Q^{j-1}_{s_{t+1}}\bigr]-Q^{j-1}_s\Bigr)}_{\text{期待遷移ウェッジ}}+\underbrace{\mathrm{TP}^j_s}_{\text{期間プレミアム}}\qquad(j\ge2)\tag{67}
$$

$$
R^1_s=Q^1_s-\frac{1}{\mathcal G_s}=\mathrm E_s[M_{t+1}]-\frac{1}{\mathcal G_s}\tag{68}
$$

> 債務収入は $\pi_s=\sum_jf^jR^j_s$ なので、(67)(68) を満期ごとにウェイト $f^j$ で足せばそのまま分解になる。$j=1$ では $Q^0\equiv1$ より共分散項がない。

**$\theta$ の符号効果**

$$
\frac{\partial}{\partial\theta}\mathrm{TP}^j_s=\mathrm{Cov}_s\Bigl(\frac{\partial M_{t+1}}{\partial\theta},\,Q^{j-1}_{s_{t+1}}\Bigr)+\mathrm{Cov}_s\Bigl(M_{t+1},\,\frac{\partial Q^{j-1}_{s_{t+1}}}{\partial\theta}\Bigr)\tag{69}
$$

$$
\frac{\partial}{\partial\theta}\ln M_{t+1}=\gamma\,\frac{\partial_\theta\tilde c_y(s_t;\theta)}{\tilde c_y(s_t;\theta)}-\gamma\,\frac{\partial_\theta\tilde c_o(s_{t+1};\theta)}{\tilde c_o(s_{t+1};\theta)}\tag{70}
$$

$$
\partial_\theta\tilde c_y(s;\theta)=\kappa_s,\qquad\partial_\theta\tilde c_o(s;\theta)=-(1+n)\,\kappa_s\qquad(\text{価格固定})\tag{71}
$$

> (71) は価格を固定したときの直接効果。$\kappa_s\gt0$ なら $\theta$ を上げるとその状態の移転が若年側へ移り、$\kappa_s\lt0$ では逆。均衡配分への一般均衡のフィードバックは 1.8 と 1.10。

| 記号・項目 | 意味 |
|---|---|
| $\mathrm{TP}^j_s$ | $j$ 期債の（1期の）期間プレミアム成分（SDFと継続価格の共分散） |
| 成長ウェッジ | $(\mathrm E_s[M]-1/\mathcal G_s)Q^{j-1}_s$ |
| 期待遷移ウェッジ | $\mathrm E_s[M](\mathrm E_s[Q^{j-1}]-Q^{j-1}_s)$ |

### 1.10 一般状態の不動点比較静学

$$
H(Q,\theta)\equiv Q-T_\theta(Q),\qquad H\bigl(Q^{\ast}(\theta),\theta\bigr)=0\tag{72}
$$

$$
\frac{d\,\mathrm{vec}\bigl(Q^{\ast}(\theta)\bigr)}{d\theta}=\underbrace{\bigl(I-\partial_QT_\theta(Q^{\ast})\bigr)^{-1}}_{\text{価格を通じたGE効果}}\ \underbrace{\partial_\theta\mathrm{vec}\bigl(T_\theta(Q^{\ast})\bigr)}_{\text{直接効果}}\tag{73}
$$

$$
\frac{dr_\infty(\theta)}{d\theta}=-\frac{1}{\rho(\theta)}\,v(\theta)^{\top}\,\frac{dX(\theta)}{d\theta}\,w(\theta)\tag{74}
$$

> (73) は $T_\theta$ が $(Q^{\ast}(\theta),\theta)$ の近傍で微分可能で $H_Q=I-\partial_QT_\theta$ が正則という仮定のもと。(74) は $X(\theta)$ が原始的でフロベニウス根 $\rho(\theta)$ が単根（左右固有ベクトル $v,w\gg0$、$v^{\top}w=1$）のとき。(73) と (65) と (67) を組み合わせると $dQ^{\ast}/d\theta$ が $(\kappa,\mathrm{TP}^j)$ の変化に結びつく。

| 記号・項目 | 意味 |
|---|---|
| $Q^{\ast}(\theta)$ | 均衡価格（$S\times J$ 配列） |
| $H$ | 残差写像 $Q-T_\theta(Q)$ |
| $\mathrm{vec}$ | 配列をベクトルに並べ替える作用素 |
| $I$ | 単位行列（$\mathbb R^{S\times J}$ 上、vec 後） |
| $\rho(\theta)$ | $X(\theta)$ のスペクトル半径（フロベニウス根） |
| $v(\theta)$, $w(\theta)$ | 左・右フロベニウス固有ベクトル（$v^{\top}w=1$） |

### 1.11 長期極限とロールオーバーの幾何

**命題7（長期の価格・利回り）**

$X(\theta)$ が原始的（正の行列を含む）とする。

$$
\rho^{-j}X^{j}\to w\,v^{\top},\qquad\rho^{-j}Q^{j}\to\bigl(v^{\top}\mathbf 1\bigr)\,w,\qquad y^j_s\to-\log\rho(\theta)=r_\infty(\theta)\quad(j\to\infty)\tag{75}
$$

> 長期利回りは状態に依らないが、$X(\theta)$ が内生なので $\theta$ とともに動く。2状態では $\rho=\lambda_1$。

**命題8（スペクトル表現とランク）**

$X(\theta)$ が対角化可能（固有値 $\lambda_k$、右固有ベクトル $w_k$、左固有ベクトル $v_k$、$v_k^{\top}w_\ell=\mathbf 1\{k=\ell\}$）とする。$a_k\equiv v_k^{\top}\mathbf 1$ として、

$$
Q^j(\theta)=\sum_{k=1}^{S}a_k\,\lambda_k^{\,j}\,w_k,\qquad R^j(\theta)\equiv Q^j-D_{\mathcal G}^{-1}Q^{j-1}\tag{76}
$$

$$
R^j(\theta)=\sum_{k=1}^{S}a_k\,\lambda_k^{\,j-1}\,\bigl(\lambda_kI-D_{\mathcal G}^{-1}\bigr)w_k,\qquad\mathrm{rank}\,R(\theta)\le\#\{k\colon a_k\neq0\}\tag{77}
$$

> $R(\theta)=[R^1,\dots,R^J]$ の列空間は $\mathrm{span}\{(\lambda_kI-D_{\mathcal G}^{-1})w_k\colon a_k\neq0\}$ に含まれる。価格行列 $[Q^1,\dots,Q^J]$ も $\mathrm{rank}\le\#\{k\colon a_k\neq0\}$。

**系3（長満期のロールオーバー・ベクトル）**

$$
\rho^{-(j-1)}R^j(\theta)\to\bigl(v^{\top}\mathbf 1\bigr)\bigl(\rho\,I-D_{\mathcal G}^{-1}\bigr)w\qquad(j\to\infty)\tag{78}
$$

> 長満期では $R^j(\theta)$ がほぼ同一方向（共線）になり、満期を足しても状態別収入の独立な変動は増えない。

**スイッチ点でのランク1**

$$
Q^j(\theta^{\ast})=\lambda_1(\theta^{\ast})^{j}\mathbf 1,\qquad R^j(\theta^{\ast})=\lambda_1(\theta^{\ast})^{j-1}\bigl(\lambda_1(\theta^{\ast})I-D_{\mathcal G}^{-1}\bigr)\mathbf 1\tag{79}
$$

> すべての $R^j(\theta^{\ast})$ が共線になり、共通方向がゼロベクトルでなければ $\mathrm{rank}\,R(\theta^{\ast})=1$。ただしこれは $R$ のランクの話で、$X(\theta^{\ast})$ は可逆でありうる（$2\times2$ では $\det X\neq0$）。

**補題9（$R(\theta)$ が満ランクとなる十分条件、2状態・$J\ge2$）**

$X(\theta)\in\mathbb R^{2\times2}_{++}$ が対角化可能で $\lambda_1\neq\lambda_2$、$u_k\equiv(\lambda_kI-D_{\mathcal G}^{-1})w_k$ とする。$a_2\neq0$ かつ $\det[u_1,u_2]\neq0$ なら $\mathrm{rank}\,R(\theta)=2$ で、

$$
\det[R^1(\theta),R^2(\theta)]=(\lambda_2-\lambda_1)\,a_1\,a_2\,\det[u_1,u_2]\neq0\tag{80}
$$

> $a_1\gt0$ は常に成り立つ（フロベニウス左固有ベクトルが正）。スイッチ点 $\theta^{\ast}$ では第2モードが落ちて $a_2(\theta^{\ast})=0$、すなわち $\mathrm{rank}\,R(\theta^{\ast})=1$。$\det[u_1,u_2]=0$ は $G_{\mathrm n}\neq G_{\mathrm d}$ なら固有構造に対する余次元1の制約で、一般には起こらない。

| 記号・項目 | 意味 |
|---|---|
| $w_k$, $v_k$, $\lambda_k$ | 右・左固有ベクトルと固有値 |
| $a_k$ | 価格再帰への第 $k$ モードの負荷 $v_k^{\top}\mathbf 1$ |
| $D_{\mathcal G}^{-1}$ | $\mathrm{diag}(\mathcal G_1^{-1},\dots,\mathcal G_S^{-1})$ |
| $R^j(\theta)$ | $j$ 期債のロールオーバー・ベクトル $(R^j_1,\dots,R^j_S)^{\top}$ |
| $u_k$ | 変換後の固有ベクトル $(\lambda_kI-D_{\mathcal G}^{-1})w_k$ |
| $\mathrm{SVR}(\theta)$ | 特異値比 $\sigma_2(R)/\sigma_1(R)\in[0,1]$（0に近いほど共線に近い。数値診断で使用） |

### 1.12 数値例の設定と配分の恒等式

**パラメータ（図1〜4）**

| 項目 | 値 |
|---|---|
| 選好 | $\gamma=3$、$\beta=0.96$（CRRA） |
| 人口 | $1+n=1.01$ |
| 成長 | $G_{\mathrm n}=1.02$、$G_{\mathrm d}=0.97$（$\mathcal G_s=(1+n)G_s$） |
| 遷移 | $\phi_{\mathrm{nn}}=0.90$、$\phi_{\mathrm{nd}}=0.10$、$\phi_{\mathrm{dn}}=0.20$、$\phi_{\mathrm{dd}}=0.80$ |
| 債券メニュー | $J=30$ |
| ポートフォリオ | (81) |

$$
f^j=\bar f\,\frac{e^{-0.08\,(j-1)}}{\sum_{k=1}^{J}e^{-0.08\,(k-1)}},\qquad\bar f=\sum_{j=1}^{J}f^j=0.25\tag{81}
$$

> $f^j\propto\exp\{-\mathrm{decay}\,(j-1)\}$、$\mathrm{decay}=0.08$。$(f,\Phi,G,n,\beta,\gamma)$ を固定し、$\theta\in[0,1]$ について比較静学を行う。図は説明用で、キャリブレーションではない。

**配分の恒等式と価格フィードバック分解**

若年の消費シェアは (30) そのもの：

$$
\tilde c_y(s;\theta)=1-(1-\theta)A_s(\theta)-\theta\,\mathcal G_s^{-1}V_s(\theta)
$$

これを $\theta$ で微分すると、

$$
\frac{d}{d\theta}\tilde c_y(s;\theta)=\underbrace{\kappa_s(\theta)}_{\text{価格固定の直接効果}}-\underbrace{\Bigl((1-\theta)\frac{dA_s(\theta)}{d\theta}+\theta\,\frac{d\bigl(\mathcal G_s^{-1}V_s(\theta)\bigr)}{d\theta}\Bigr)}_{\text{価格を通じたGEフィードバック}}\tag{82}
$$

> 第1項は価格固定のとき $\theta$ が若年シェアを $\kappa_s$ だけ押し上げる効果。第2項は、$\theta$ が消費・SDF・作用素・全債券価格を変え、$A_s$ と $V_s$ を動かして配分に戻る効果。

| 記号・項目 | 意味 |
|---|---|
| $\kappa_s(\theta)$ | $A_s(\theta)-\mathcal G_s^{-1}V_s(\theta)=\sum_jf^jR^j_s(\theta)$ |
| $A_s(\theta)$, $V_s(\theta)$ | 均衡価格 $Q^j_s(\theta)$ で評価した (29) |

### 1.13 主要帰結

**主要式**

$$
\boxed{\begin{aligned}
X_{ss'}(\theta)&=\underbrace{\phi_{ss'}}_{\text{遷移確率}}\ \underbrace{\beta\Bigl(\frac{\tilde c_y(s;\theta)}{\tilde c_o(s';\theta)\,G_{s'}}\Bigr)^{\gamma}}_{\text{若年のSDF}},\qquad Q^j=\underbrace{X(\theta)^{j}\mathbf 1}_{\text{全満期の価格}}\\
\kappa&=\underbrace{R(\theta)f}_{\text{ロールオーバー収入}},\qquad R^j_s=Q^j_s-\mathcal G_s^{-1}Q^{j-1}_s\\
\tilde c_y(s;\theta)&=\underbrace{1-(1-\theta)A_s-\theta\,\mathcal G_s^{-1}V_s}_{\text{世代間配分の恒等式}}\\
R^j_s&=\underbrace{\bigl(\mathrm E_s[M]-\mathcal G_s^{-1}\bigr)Q^{j-1}_s}_{\text{成長}}+\underbrace{\mathrm E_s[M]\bigl(\mathrm E_s[Q^{j-1}]-Q^{j-1}_s\bigr)}_{\text{期待遷移}}+\underbrace{\mathrm{TP}^j_s}_{\text{期間プレミアム}}
\end{aligned}}\tag{83}
$$

**比較静学**

| 変化 | 結果 | 符号・式 |
|---|---|---|
| $\theta\uparrow$（価格固定） | 状態 $s$ の若年消費が $\kappa_s$ だけ動く | $\partial_\theta\tilde c_y(s)=\kappa_s$、(71) |
| $\theta\uparrow$（GE） | 配分は $\Psi_{\tilde c}^{-1}\kappa$ だけ動く（フィードバックで直接効果が相殺されうる） | (62)、(82) |
| $\theta\uparrow$ | 全満期の価格が $X$ の反応を通じて動く | (65)、(73) |
| $\theta\uparrow$ | 長期利回りは $v^{\top}(dX/d\theta)w/\rho$ に沿って動く | (74) |
| $Q^1_{\mathrm n}$ と $Q^1_{\mathrm d}$ の大小が逆転 | $\eta_{\mathrm n},\eta_{\mathrm d}$ の符号が反転し、傾きが状態間で逆転 | 命題5・系1 |
| $\theta\to\theta^{\ast}$ | 期間プレミアム（共分散項）が縮小、期間構造が状態独立に近づく | (56)、(79) |
| $j\to\infty$ | $R^j$ が共線に近づく | (78) |

**特殊ケース**

| ケース | 結果 |
|---|---|
| 価格固定（$\partial A=\partial V=0$） | $\Psi_{\tilde c}=I_2$ なので $d\tilde c/d\theta=\kappa$ |
| $\theta^{\ast}$ で $Q^1_{\mathrm n}=Q^1_{\mathrm d}$ | $Q^j=\lambda_1^{j}\mathbf 1$、$\eta_s=0$、$\mathrm{rank}\,R=1$ |
| $\Phi$ の2行が同一 | (54) の右辺が1。スイッチには $c_{\mathrm n}=c_{\mathrm d}$ が必要 |
| $j=1$ | $\mathrm{TP}^1_s=0$、$R^1_s=\mathrm E_s[M]-\mathcal G_s^{-1}$ |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 利回り・期間プレミアムが移転の世代間分割で動く | ロールオーバー収入の分割 $\theta$ が世代別の限界効用を変え、1期SDFと作用素 $X(\theta)$ が内生的に動くため（(22)(23)(62)） |
| 状態ごとにイールドカーブの傾きが逆転する（2状態） | $\theta$ が1期債価格 $Q^1_s$ の状態間の大小を入れ替えると、負荷 $\eta_s$ の符号が反転する（命題5・系1）。数値例でも低い $\theta$ と高い $\theta$ で傾きが入れ替わる |
| 長期金利が $\theta$ とともに動く | 長期利回り $r_\infty=-\log\rho(X(\theta))$ は状態に依らないが、$X(\theta)$ が内生なので $\theta$ に依存する（(74)(75)） |
| ロールオーバー収益が成長・期待・リスクの3要因に分けられる | 恒等式 (67)(68)。成長ウェッジ・期待遷移ウェッジ・期間プレミアムが厳密に足し上がる |
| 満期を増やしても状態別収入の自由度が増えにくい | 長満期で $R^j$ が共線に近づき（(78)）、数値例では $R(\theta)$ が一次元に近い。スイッチ点ではランク1（(79)） |
| 配分がほぼ不変でも価格・期間プレミアムが大きく動く | 価格フィードバックが直接効果 $\kappa_s$ をほぼ相殺し（(82)）、配分の変化は小さいが、利回り・期間プレミアムは $\theta$ とともに大きく動く |

## 3. 整理している点 {#sec3}

- **価格づけ作用素の内生化**：債券の全満期を価格づけする1期SDF（作用素 $X(\theta)$）が、移転の世代間帰着 $\theta$ と満期ポートフォリオ $f$ の関数として均衡で決まる。期間構造は政策の関数になる。
- **ロールオーバー収入の構造**：債務収入 $\pi=R f$ を、成長・期待遷移・リスク補償に恒等的に分け、満期選択の自由度（$R(\theta)$ の像とランク）の限界を式で示している。
- **数量と価格の区別**：直接の帰着 $\kappa_s$ と価格を通じたフィードバックを分けて、配分の変化が小さいことと、価格効果が小さいことを区別している。

## 4. 対象外の現象 {#sec4}

- 資本・生産、より豊かなライフサイクル（2期を超える異質性）は扱わない。
- 名目債・インフレリスク、歪みのある財政手段（歪曲的課税）は扱わない。
- 最適な債務管理・最適な移転の帰着は扱わない。$f$ と $\theta$ は外生で、$\pi$ だけを所与として $f$ を内生化することもしない。
- 無限ロールオーバー（全状態で $\pi_s\ge0$）の可否は目的ではない。バブル均衡は分析しない。
- 状態依存債や追加資産、利便性利回りは扱わない。
- 均衡の存在・一意性の条件 (36)(41) は十分条件で、必要条件ではない。スイッチ点 $\theta^{\ast}$ が存在するかは $\Phi$ や配分軌跡に依存し、常に存在するとは主張しない。解析的な特徴づけは2状態・対数効用に限られ、一般状態の傾き逆転は主張しない。
- 数値例はキャリブレーションではなく、実際の利回りや期間プレミアムを定量的に説明しない。論文が示す米国債の中間満期スプレッドの逆転（世界金融危機・コロナ禍）は、メカニズムの動機づけにとどまる。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
前提(1)(2)(3)(4) ─→ 政府予算(8)(9) ─→ κ = R f (10)(11)(12)
                                    │
家計(13)(14)(15) ─→ detrend(16)(17)(18)(19) ─→ 縮約形 (29)(30)(31)
   │
   └─ 一階条件(20) ─→ SDF(21)(22) ─→ 作用素 X(23) ─→ Q^j = X^j 1 (24)(25)
                                       ↑                      │
均衡：Q ─→ (A_s, V_s) ─→ (c_y, c_o) ─→ X ─→ Q   (T_θ, (26)(27)) ←┘
   ├ 存在・一意：(33)〜(41) ─→ 命題1・2
   ├ 命題3：(42)
   ├ 2状態・対数：(46)(47) ─→ 命題4 (49)(50)(51) ─→ 命題5・系1 ─→ (52)〜(54)
   │                   └─ 共分散 (55)(56)、行列表示 (57)〜(59)
   ├ θ比較静学：(60)〜(65)
   ├ 命題6：(66)〜(68) ─→ θの符号効果 (69)〜(71)
   ├ 一般状態：(72)〜(74)
   ├ 長期・幾何：命題7(75)、命題8(76)(77)、系3(78)、(79)、補題9(80)
   └ 数値例：(81)(82) ─→ 主要式 (83)
```

### A.1 使う道具

**T1　一階条件（オイラー方程式）**

効用最大化の一階条件は、債券 $j$ を1単位増やしたときの限界費用と限界便益の等式になる。

$$
-Q^j_s\,u'(c_{y,t})+\beta\,\mathrm E\bigl[u'(c_{o,t+1})\,Q^{j-1}_{s_{t+1}}\mid s_t=s\bigr]=0\tag{84}
$$

**T2　条件付き期待の積と共分散**

$$
\mathrm E[ZW]=\mathrm E[Z]\,\mathrm E[W]+\mathrm{Cov}(Z,W)\tag{85}
$$

**T3　2点分布の共分散**

次期状態が $\mathrm n$、$\mathrm d$ の2値（確率 $\phi_{\mathrm n},\phi_{\mathrm d}=1-\phi_{\mathrm n}$）のとき、

$$
\mathrm{Cov}(Z,W)=\phi_{\mathrm n}\phi_{\mathrm d}\,(Z_{\mathrm n}-Z_{\mathrm d})(W_{\mathrm n}-W_{\mathrm d})\tag{86}
$$

**T4　テレスコーピング恒等式とノルム評価**

$$
Y^{j}-Z^{j}=\sum_{k=0}^{j-1}Y^{\,j-1-k}\,(Y-Z)\,Z^{k},\qquad\lVert Y^{j}-Z^{j}\rVert\le\sum_{k=0}^{j-1}\lVert Y\rVert^{j-1-k}\lVert Y-Z\rVert\lVert Z\rVert^{k}\tag{87}
$$

> 2つ目はノルムの劣乗法性による。$\lVert Y\rVert,\lVert Z\rVert\le m$ なら右辺は $j\,m^{j-1}\lVert Y-Z\rVert$ 以下。

**T5　ペロン・フロベニウス**

非負行列 $X$ で、フロベニウス根は最小行和と最大行和の間にある。$X$ が原始的なら $\rho^{-j}X^j\to wv^{\top}$。

$$
\min_s\sum_{s'}X_{ss'}\le\rho(X)\le\max_s\sum_{s'}X_{ss'},\qquad\rho^{-j}X^{j}\to w\,v^{\top}\ \ (v^{\top}w=1)\tag{88}
$$

**T6　スペクトル分解**

$X$ が対角化可能なら、

$$
X=\sum_{k=1}^{S}\lambda_k\,w_k\,v_k^{\top},\qquad X^{j}=\sum_{k=1}^{S}\lambda_k^{\,j}\,w_k\,v_k^{\top}\tag{89}
$$

**T7　陰関数定理**

$H(x,\theta)=0$ で $H_x$ が正則なら、

$$
\frac{dx}{d\theta}=-H_x^{-1}H_\theta\tag{90}
$$

**T8　不動点定理**

Brouwer：コンパクト凸集合から自身への連続写像は不動点をもつ。Banach：完備距離空間上の縮小写像は一意の不動点をもち、反復はそこへ収束する。

**T9　原点からの傾き**

$g(0)=0$ で $g$ が凸なら $g(j)/j$ は非減少、凹なら非増加。

$$
g\ \text{convex},\ g(0)=0\ \Longrightarrow\ \frac{g(j)}{j}\ \text{nondecreasing in}\ j\gt0\tag{91}
$$

**T10　$2\times2$ の固有値と対数微分**

$$
\lambda_{1,2}=\frac{1}{2}\Bigl(\mathrm{tr}\,X\pm\sqrt{(\mathrm{tr}\,X)^{2}-4\det X}\Bigr),\qquad d\ln m=\gamma\Bigl(\frac{dc_y}{c_y}-\frac{dc_o}{c_o}\Bigr)\tag{92}
$$

### A.2 政府予算制約とdetrend後の予算制約（式(10)(11)(12)(17)(18)(19)(30)(31)）

**Step 1　両辺を $Y_t$ で割る**

(8) を $Y_t$ で割り、$B^j_t/Y_t=f^j$、$\Pi_t/Y_t=\kappa_s$、$B^j_{t-1}/Y_t=f^jY_{t-1}/Y_t=f^j/\mathcal G_s$ を使う。

$$
\sum_{j}Q^j_sf^j=\kappa_s+\frac{1}{\mathcal G_s}\sum_{j}Q^{j-1}_sf^j
$$

**Step 2　$\kappa_s$ について解く**

$$
\kappa_s=\sum_{j=1}^{J}\Bigl(Q^j_s-\frac{1}{\mathcal G_s}Q^{j-1}_s\Bigr)f^j\ \to\ \text{式(10)}
$$

**Step 3　係数を定義して行列表示**

$R^j_s\equiv Q^j_s-Q^{j-1}_s/\mathcal G_s$ と置けば $\kappa=Rf$。均衡では予算制約から移転 $=$ ロールオーバー収入なので $\kappa=\pi=Rf$ $\to$ 式(11)(12)。

**Step 4　若年の予算制約をdetrendする**

(5) と (9) より $F^j_t=B^j_t/N_t=f^jY_t/N_t=f^jy_t$。(14) を $y_t$ で割る。

$$
\tilde c_y(s)+\sum_jQ^j_sf^j=1+\theta\kappa_s\ \to\ \text{式(17)}
$$

**Step 5　老年の予算制約をdetrendする**

$F^j_{t-1}=B^j_{t-1}/N_{t-1}=f^jy_{t-1}$ で、$y_{t-1}/y_t=1/G_s$。(15) を $y_t$ で割る。

$$
\tilde c_o(s)=(1-\theta)(1+n)\kappa_s+\frac{1}{G_s}\sum_jQ^{j-1}_sf^j\ \to\ \text{式(18)}
$$

**Step 6　財市場をdetrendする**

(4) を $y_t$ で割ると $\tilde c_y+\tilde c_o/(1+n)=1$ $\to$ 式(19)。(17)(18) の和で確かめる：

$$
\tilde c_y+\frac{\tilde c_o}{1+n}=1+\theta\kappa-A_s+(1-\theta)\kappa+\frac{V_s}{\mathcal G_s}=1+\kappa-A_s+\frac{V_s}{\mathcal G_s}=1
$$

最後の等号は $\kappa=A_s-V_s/\mathcal G_s$ による。

**Step 7　縮約形**

$A_s,V_s$ ((29)) を使うと $\kappa_s=A_s-V_s/\mathcal G_s$。(17) に代入する。

$$
\tilde c_y=1+\theta\Bigl(A_s-\frac{V_s}{\mathcal G_s}\Bigr)-A_s=1-(1-\theta)A_s-\frac{\theta}{\mathcal G_s}V_s\ \to\ \text{式(30)}
$$

(18) に代入し、$(1+n)/\mathcal G_s=1/G_s$ を使う。

$$
\tilde c_o=(1-\theta)(1+n)A_s+\frac{V_s}{G_s}\bigl(1-(1-\theta)\bigr)=(1-\theta)(1+n)A_s+\frac{\theta}{G_s}V_s\ \to\ \text{式(31)}
$$

**確認**

$\theta=0$ なら $\tilde c_y=1-A_s$（若年は新規発行の価値を負担し、移転は老年のみ）、$\theta=1$ なら $\tilde c_y=1-V_s/\mathcal G_s$（移転は若年のみ）。どちらも $\tilde c_y+\tilde c_o/(1+n)=1$ を満たす（$\theta=1$：$1-V/\mathcal G+V/(G(1+n))=1$）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(4)(5)(8)(9)(14)(15) | 財市場、債券市場、政府予算、家計の予算制約 |
| 式(3) | $Y_{t-1}/Y_t=1/\mathcal G_s$、$y_{t-1}/y_t=1/G_s$ |

### A.3 SDFと価格づけ作用素（式(21)(22)(23)(24)(25)）

**Step 1　一階条件**

T1（(84)）を使い、(20) を得る。$j$ 期債の保有を1単位増やすと、$c_{y,t}$ が $Q^j_s$ 減り、$c_{o,t+1}$ が $Q^{j-1}_{s_{t+1}}$ 増える。

$$
Q^j_su'(c_{y,t})=\beta\,\mathrm E\bigl[u'(c_{o,t+1})Q^{j-1}_{s_{t+1}}\mid s_t=s\bigr]\ \to\ \text{式(20)}
$$

**Step 2　限界効用の比**

$u'(c)=c^{-\gamma}$ より $u'(c_{o,t+1})/u'(c_{y,t})=(c_{y,t}/c_{o,t+1})^{\gamma}$。

**Step 3　detrend表現を代入する**

$c_{y,t}=\tilde c_y(s)y_t$、$c_{o,t+1}=\tilde c_o(s')y_{t+1}=\tilde c_o(s')G_{s'}y_t$ を代入する。

$$
\frac{u'(c_{o,t+1})}{u'(c_{y,t})}=\Bigl(\frac{\tilde c_y(s)}{\tilde c_o(s')G_{s'}}\Bigr)^{\gamma}\ \to\ \text{式(21)}
$$

**Step 4　SDFと作用素を定義する**

$$
m_{ss'}=\beta\Bigl(\frac{\tilde c_y(s;\theta)}{\tilde c_o(s';\theta)G_{s'}}\Bigr)^{\gamma}\ \to\ \text{式(22)},\qquad X_{ss'}=\phi_{ss'}m_{ss'}\ \to\ \text{式(23)}
$$

**Step 5　期待値を行列の積に直す**

(20) を $u'(c_{y,t})$ で割ると $Q^j_s=\sum_{s'}\phi_{ss'}m_{ss'}Q^{j-1}_{s'}=\sum_{s'}X_{ss'}Q^{j-1}_{s'}$ $\to$ 式(24)。

**Step 6　再帰を反復する**

$Q^0=\mathbf 1$ から $Q^j=XQ^{j-1}=X^j\mathbf 1$ $\to$ 式(25)。

**確認**

$j=1$ では $Q^1_s=\sum_{s'}X_{ss'}=\mathrm E_s[M_{t+1}]$（1期債価格 $=$ 期待SDF）。$\gamma=1$ では $m_{ss'}=\beta\tilde c_y(s)/(\tilde c_o(s')G_{s'})$ となり、1.7 の (47) の出発点に一致する。

| 入力・使う道具 | 内容 |
|---|---|
| T1 | 一階条件の導出 |
| 式(16)(2) | detrend後の消費、$y_{t+1}=G_{s'}y_t$ |

### A.4 存在：補題1と命題1（式(33)〜(37)）

**Step 1　$A_s,V_s$ の範囲**

$f^j\ge0$（仮定1）と箱 $K(\varepsilon)$ から、$Q^j_s\in[\underline q_j,\overline q_j]$ より $A_s(Q)\in[\underline A,\overline A]$。$Q^0_s=1$ に注意すると $V_s(Q)=f^1+\sum_{j\ge2}f^jQ^{j-1}_s\in[\underline V,\overline V]$ $\to$ 式(35)。

**Step 2　$\tilde c_y$ の範囲**

(30) の係数 $-(1-\theta)$、$-\theta/\mathcal G_s$ は負で $\mathcal G_s\in[\underline{\mathcal G},\overline{\mathcal G}]$ なので、

$$
\tilde c_y\ge1-(1-\theta)\overline A-\frac{\theta}{\underline{\mathcal G}}\overline V\ge\varepsilon,\qquad\tilde c_y\le1-(1-\theta)\underline A-\frac{\theta}{\overline{\mathcal G}}\underline V\le1-\varepsilon
$$

最後の不等号は (36)。

**Step 3　$\tilde c_o$ の範囲**

(19) の財市場から $\tilde c_o=(1+n)(1-\tilde c_y)\in[(1+n)\varepsilon,(1+n)(1-\varepsilon)]$。

**Step 4　SDFの範囲**

$\tilde c_y\in[\varepsilon,1-\varepsilon]$、$\tilde c_o\in[(1+n)\varepsilon,(1+n)(1-\varepsilon)]$、$G_{s'}\in[\underline G,\overline G]$ から、(22) の分子を最小に分母を最大にして下限、その逆で上限が得られる。

$$
\underline m(\varepsilon)\le m_{ss'}\le\overline m(\varepsilon)\ \to\ \text{式(33)}
$$

**Step 5　行和の範囲**

$\sum_{s'}\phi_{ss'}=1$ なので、$\underline m\le\sum_{s'}X_{ss'}\le\overline m$。

**Step 6　自己写像**

$X\ge0$（要素ごと）で各行和が $[\underline m,\overline m]$ にあるから、帰納法で $\underline m^{\,j}\le Q^{j,\mathrm{new}}_s\le\overline m^{\,j}$ $\to$ 式(34)(37)。すなわち $T_\theta(K)\subseteq K$。

**Step 7　不動点**

$K(\varepsilon)$ は有限個の閉区間の積なのでコンパクト凸。$K$ 上で $\tilde c_y\gt0$、$\tilde c_o\gt0$ なので (22) の冪乗は連続で、$T_\theta$ は連続。T8（Brouwer）より不動点 $Q^{\ast}\in K$ が存在 $\to$ 命題1。

**確認**

$\theta=0$ なら (36) は $\overline A,\underline A$ だけで決まり、$\theta=1$ なら $\overline V,\underline V$ だけで決まる。どちらも $\tilde c_y\in[\varepsilon,1-\varepsilon]$ の保証という役割に合っている。

| 入力・使う道具 | 内容 |
|---|---|
| 式(30)(46) | 消費の縮約形、財市場 |
| 仮定1（式(28)） | 単調性（符号）の確保 |
| T8 | Brouwerの不動点定理 |

### A.5 一意性：リプシッツ評価と命題2（式(38)〜(41)）

**Step 1　行和ノルム**

A.4 Step 5 から $\lVert X(Q)\rVert_\infty=\max_s\sum_{s'}X_{ss'}\le\overline m(\varepsilon)$ $\to$ 式(38)。

**Step 2　消費のリプシッツ性**

(30)(31) より、$\lvert A_s(Q)-A_s(Q')\rvert\le\bar f\lVert Q-Q'\rVert_\infty$、$\lvert V_s(Q)-V_s(Q')\rvert\le\bar f\lVert Q-Q'\rVert_\infty$。係数の絶対値は $(1-\theta)$、$\theta/\mathcal G_s\le\theta/\underline{\mathcal G}$（$\tilde c_y$）、$(1-\theta)(1+n)$、$\theta/G_s\le\theta/\underline G$（$\tilde c_o$）なので式(39)。

**Step 3　$X$ のリプシッツ性（平均値定理）**

T10（(92)）より $d\ln m=\gamma(dc_y/c_y-dc_o/c_o)$。$m\le\overline m$、$\tilde c_y\ge\varepsilon$、$\tilde c_o\ge(1+n)\varepsilon$ を使うと、

$$
\lvert m_{ss'}(Q)-m_{ss'}(Q')\rvert\le\gamma\overline m\Bigl(\frac{\lvert\Delta\tilde c_y\rvert}{\varepsilon}+\frac{\lvert\Delta\tilde c_o\rvert}{(1+n)\varepsilon}\Bigr)
$$

$\sum_{s'}\phi_{ss'}=1$ で行和ノルムに移し、Step 2 を代入して式(40)。

**Step 4　満期ごとの価格のリプシッツ性**

$Q^{j,\mathrm{new}}-Q'^{j,\mathrm{new}}=(X^j-X'^j)\mathbf 1$ で $\lVert\mathbf 1\rVert_\infty=1$。T4（(87)）で $\lVert X\rVert,\lVert X'\rVert\le\overline m$ を使うと、

$$
\lVert X^{j}-X'^{j}\rVert_\infty\le j\,\overline m^{\,j-1}\lVert X-X'\rVert_\infty\le j\,\overline m^{\,j-1}C_X(\varepsilon)\lVert Q-Q'\rVert_\infty
$$

**Step 5　$j$ について最大をとる**

$$
\lVert T_\theta(Q)-T_\theta(Q')\rVert_\infty\le C_X(\varepsilon)\max_{1\le j\le J}\bigl(j\,\overline m^{\,j-1}\bigr)\lVert Q-Q'\rVert_\infty=L(\varepsilon)\lVert Q-Q'\rVert_\infty\ \to\ \text{式(41)}
$$

**Step 6　縮小写像原理**

$L(\varepsilon)\lt1$ なら、$K(\varepsilon)$ はコンパクト（したがって完備）な有限次元ノルム空間の部分集合で、$T_\theta(K)\subseteq K$ と合わせて T8（Banach）により一意の不動点とPicard反復の収束を得る $\to$ 命題2。

**確認**

$j=1$ のとき $\max_j(j\,\overline m^{\,j-1})$ の項は $1$ で、$L\ge C_X$。$\bar f\to0$ なら $C_X\to0$ で $L\lt1$ となる。

| 入力・使う道具 | 内容 |
|---|---|
| 式(30)(31)(33) | 消費の縮約形、SDFの上限 |
| T4、T8、T10 | テレスコーピング恒等式、Banachの原理、対数微分 |

### A.6 命題3：実現可能な移転比率（式(42)）

**Step 1　均衡の移転は $R(\theta)f$**

定義1の条件3から $\kappa=R(\theta)f$（$R$ は均衡価格から (11) で作る）。

**Step 2　価格固定でポートフォリオを動かす**

$R(\theta)$ を固定し、$f\in\mathbb R^J$ を動かすと、取れる $\kappa$ の集合は線形像 $\mathrm{Im}\,R(\theta)$ $\to$ 式(42)。

**Step 3　ランク**

$\mathrm{rank}\,R(\theta)=S$（行フルランク）なら $\mathrm{Im}\,R(\theta)=\mathbb R^S$。$\mathrm{rank}\,R(\theta)\lt S$ なら真部分空間。

**Step 4　$X$ のランクとの関係**

$R^j=Q^j-D_{\mathcal G}^{-1}Q^{j-1}$ は価格ベクトルの1次結合で、$R$ のランク低下に $X$ のランク低下は要らない（A.13 の (79) 参照）。

**確認**

2状態でスイッチ点 $\theta^{\ast}$ では $Q^j=\lambda_1^{j}\mathbf 1$ なので $R^j$ がすべて共線となり $\mathrm{rank}\,R=1\lt2$。このとき $\det X(\theta^{\ast})\neq0$ でありうる。

| 入力・使う道具 | 内容 |
|---|---|
| 式(11)(12) | $\kappa=Rf$ |
| 線形代数 | 線形像とランク |

### A.7 命題4：2つの固有モード（式(49)(50)(51)）

**Step 1　対角化**

$X=PDP^{-1}$、$D=\mathrm{diag}(\lambda_1,\lambda_2)$、$\lambda_1\gt\lambda_2\gt0$。

**Step 2　価格を固有値の冪で表す**

$Q^j=X^j\mathbf 1=PD^jP^{-1}\mathbf 1$ より、各成分は定数 $a_s,b_s$（$s$ と $\theta$ に依存）で $Q^j_s=a_s\lambda_1^{j}+b_s\lambda_2^{j}$。

**Step 3　$j=0$ の条件**

$Q^0_s=1$ より $a_s+b_s=1$。$\eta_s\equiv b_s$ と置くと

$$
Q^j_s=(1-\eta_s)\lambda_1^{j}+\eta_s\lambda_2^{j}\ \to\ \text{式(49)}
$$

**Step 4　$j=1$ の条件**

$Q^1_s=(1-\eta_s)\lambda_1+\eta_s\lambda_2$ を $\eta_s$ について解く。

$$
\eta_s=\frac{Q^1_s-\lambda_1}{\lambda_2-\lambda_1},\qquad Q^1_s=(X\mathbf 1)_s=\sum_{s'}X_{ss'}\ \to\ \text{式(50)}
$$

**Step 5　利回り**

$Q^j_s=\lambda_1^{j}\bigl((1-\eta_s)+\eta_s\xi^{j}\bigr)$（$\xi=\lambda_2/\lambda_1$）の対数をとって $-1/j$ 倍する。

$$
y^j_s=-\log\lambda_1-\frac{1}{j}\log\bigl((1-\eta_s)+\eta_s\xi^{j}\bigr)\ \to\ \text{式(51)}
$$

**確認**

$j=0$：$(1-\eta_s)+\eta_s=1$。$j=1$：(50) を (49) に戻すと $Q^1_s$ に一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(25)(47) | $Q^j=X^j\mathbf 1$、2状態の作用素 |
| T6、T10 | 対角化、$2\times2$ の固有値 |

### A.8 命題5と系1：傾きの判定とスイッチ（命題5、系1）

**Step 1　$g(j)=\log Q^j_s$ を定義する**

実数 $j\ge0$ で $g(j)=\log\bigl((1-\eta)\lambda_1^{j}+\eta\lambda_2^{j}\bigr)$、$g(0)=0$。$y^j_s=-g(j)/j$。

**Step 2　$0\lt\eta\lt1$ の場合**

$Q^j_s$ は $j$ の指数関数の正の重みつき和なので $g$ は凸（log-sum-exp）。T9（(91)）より $g(j)/j$ は非減少で、$y^j_s$ は非増加、すなわち $y^{j+1}_s\le y^j_s$（右下がり）。

**Step 3　$\eta\le0$ の場合**

$\eta=-k$（$k\ge0$）と置くと $Q^j_s=\lambda_1^{j}\bigl((1+k)-k\xi^{j}\bigr)$。$\xi^{j}=e^{j\ln\xi}$（$\ln\xi\lt0$）なので $h(j)=\log\bigl((1+k)-k\xi^{j}\bigr)$ は凹で、$g(j)=j\log\lambda_1+h(j)$ も凹（$g(0)=0$）。凹関数では $g(j)/j$ は非増加なので $y^j_s$ は非減少（右上がり）。

**Step 4　$\eta=0$ の場合**

$Q^j_s=\lambda_1^{j}$、$y^j_s=-\log\lambda_1=r_\infty$（フラット）$\to$ 命題5。

**Step 5　系1：逆符号**

(50) で $\lambda_2-\lambda_1\lt0$ なので $\eta_s$ の符号は $Q^1_s-\lambda_1$ の符号と逆。T5（(88)）より $\min(Q^1_{\mathrm n},Q^1_{\mathrm d})\le\lambda_1\le\max(Q^1_{\mathrm n},Q^1_{\mathrm d})$ で、$Q^1_{\mathrm n}\neq Q^1_{\mathrm d}$ なら一方は $\lambda_1$ より上、他方は下。よって $\eta_{\mathrm n},\eta_{\mathrm d}$ は逆符号。$X\gg0$ より $Q^j_s\gt0$ なので $1-\eta_s\gt0$、$\eta_s\lt1$。

**Step 6　$Q^1_{\mathrm n}=Q^1_{\mathrm d}$ の場合**

$X\mathbf 1=Q^1\mathbf 1$ で、$\mathbf 1$ は正の固有ベクトルだから対応する固有値はフロベニウス根 $\lambda_1$。(50) より $\eta_{\mathrm n}=\eta_{\mathrm d}=0$、$Q^j_s=\lambda_1^{j}$ $\to$ 系1。

**確認**

$\eta_s=0$ のとき (51) は $y^j_s=-\log\lambda_1=r_\infty$ に帰着し、Step 4 と整合する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(49)(50)(51) | 2モード表現、利回り |
| T5、T9 | 行和の境界、原点からの傾き |

### A.9 スイッチ点・共分散・行列表示（式(52)〜(59)）

**Step 1　1期債価格の明示形**

(47) の行和：$Q^1_s=\sum_{s'}X_{ss'}=\dfrac{\beta}{1+n}c_s\bigl(\phi_{s\mathrm n}z_{\mathrm n}+\phi_{s\mathrm d}z_{\mathrm d}\bigr)$ $\to$ 式(52)。

**Step 2　スイッチ条件**

$Q^1_{\mathrm n}(\theta^{\ast})=Q^1_{\mathrm d}(\theta^{\ast})$ の両辺の共通因子 $\beta/(1+n)$ を消す。

$$
c_{\mathrm n}(\phi_{\mathrm{nn}}z_{\mathrm n}+\phi_{\mathrm{nd}}z_{\mathrm d})=c_{\mathrm d}(\phi_{\mathrm{dn}}z_{\mathrm n}+\phi_{\mathrm{dd}}z_{\mathrm d})\ \to\ \text{式(53)}
$$

**Step 3　比の形**

$c_{\mathrm d}\gt0$ と $\phi_{\mathrm{nn}}z_{\mathrm n}+\phi_{\mathrm{nd}}z_{\mathrm d}\gt0$ で割る $\to$ 式(54)。

**Step 4　共分散分解**

$Q^j_s=\mathrm E_s[M_{t+1}Q^{j-1}_{s_{t+1}}]$ に T2（(85)）を使う。

$$
Q^j_s=\mathrm E_s[M_{t+1}]\,\mathrm E_s[Q^{j-1}_{s_{t+1}}]+\mathrm{Cov}_s(M_{t+1},Q^{j-1}_{s_{t+1}})\ \to\ \text{式(55)}
$$

**Step 5　2状態の共分散**

T3（(86)）に $Z=M_{t+1}$、$W=Q^{j-1}_{s_{t+1}}$、$\phi_{\mathrm n}=\phi_{s\mathrm n}$、$\phi_{\mathrm d}=\phi_{s\mathrm d}$ を入れる。

$$
\mathrm{Cov}_s=\phi_{s\mathrm n}\phi_{s\mathrm d}(m_{s\mathrm n}-m_{s\mathrm d})(Q^{j-1}_{\mathrm n}-Q^{j-1}_{\mathrm d})\ \to\ \text{式(56)}
$$

**Step 6　行列表示**

$X_{ss'}=\dfrac{\beta}{1+n}c_s\phi_{ss'}z_{s'}$ は $D_y\Phi D_z$ の $(s,s')$ 成分に $\beta/(1+n)$ を掛けたもの $\to$ 式(57)。

**Step 7　トレースと行列式**

$\mathrm{tr}\,X=\dfrac{\beta}{1+n}(\phi_{\mathrm{nn}}c_{\mathrm n}z_{\mathrm n}+\phi_{\mathrm{dd}}c_{\mathrm d}z_{\mathrm d})$、$\det X=\Bigl(\dfrac{\beta}{1+n}\Bigr)^{2}c_{\mathrm n}c_{\mathrm d}z_{\mathrm n}z_{\mathrm d}\det\Phi$ $\to$ 式(58)。T10 から固有値 $\to$ 式(59)の前半。

**Step 8　SDFの開き**

$m_{s\mathrm n}-m_{s\mathrm d}=\dfrac{\beta}{1+n}c_s\Bigl(\dfrac{1}{(1-c_{\mathrm n})G_{\mathrm n}}-\dfrac{1}{(1-c_{\mathrm d})G_{\mathrm d}}\Bigr)=\dfrac{\beta}{1+n}c_s(z_{\mathrm n}-z_{\mathrm d})$ $\to$ 式(59)の後半。

**確認**

$\Phi$ の2行が同一なら (54) の右辺は $1$ で、$c_{\mathrm n}=c_{\mathrm d}$ がスイッチ条件になる（1.7 の注意と一致）。$z_{\mathrm n}=z_{\mathrm d}$ なら SDFの開きがゼロで (56) の共分散がゼロになる。

| 入力・使う道具 | 内容 |
|---|---|
| 式(47)(46) | 2状態の作用素、財市場 |
| T2、T3、T5、T10 | 共分散、2点分布、固有値 |

### A.10 $\theta$ の比較静学（式(60)〜(65)(82)）

**Step 1　均衡系を作る**

(30) を $c\equiv\tilde c_y$ について整理し、ベクトルで書く。

$$
\tilde c=\mathbf 1-(1-\theta)A(\tilde c)-\theta D_{\mathcal G}^{-1}V(\tilde c)\ \Longleftrightarrow\ \Psi(\tilde c,\theta)=0\ \to\ \text{式(60)(61)}
$$

**Step 2　$\theta$ 偏微分**

$\Psi_\theta=-A(\tilde c)+D_{\mathcal G}^{-1}V(\tilde c)=-\kappa(\tilde c)$。

**Step 3　陰関数定理**

T7（(90)）に $x=\tilde c$、$H=\Psi$ を入れると、

$$
\frac{d\tilde c}{d\theta}=-\Psi_{\tilde c}^{-1}\Psi_\theta=\Psi_{\tilde c}^{-1}\kappa\ \to\ \text{式(62)}
$$

**Step 4　老年の消費**

(46) を $\theta$ で微分：$d\tilde c_o/d\theta=-(1+n)d\tilde c_y/d\theta$ $\to$ 式(63)。

**Step 5　ヤコビ行列**

(61) を $\tilde c$ で微分：$\Psi_{\tilde c}=I_2+(1-\theta)\partial A/\partial\tilde c+\theta D_{\mathcal G}^{-1}\partial V/\partial\tilde c$ $\to$ 式(64)。

**Step 6　満期別の価格反応**

$Q^j=X^j\mathbf 1$ に積の微分を使う。

$$
d(X^{j})=\sum_{k=0}^{j-1}X^{\,j-1-k}(dX)X^{k}\ \Longrightarrow\ dQ^j=\sum_{k=0}^{j-1}X^{\,j-1-k}(dX)X^{k}\mathbf 1\ \to\ \text{式(65)}
$$

**Step 7　$\tilde c_y$ の $\theta$ 微分（1.12）**

$\tilde c_y=1-(1-\theta)A_s-\theta\mathcal G_s^{-1}V_s$ を $\theta$ で微分する（積の微分）。

$$
\frac{d\tilde c_y}{d\theta}=A_s-\mathcal G_s^{-1}V_s-(1-\theta)\frac{dA_s}{d\theta}-\theta\frac{d(\mathcal G_s^{-1}V_s)}{d\theta}\ \to\ \text{式(82)}
$$

**確認**

価格固定（$\partial A=\partial V=0$）なら $\Psi_{\tilde c}=I_2$ で $d\tilde c/d\theta=\kappa$（(62)）。同じく (82) では価格フィードバックの項がゼロとなり $d\tilde c_y/d\theta=\kappa_s$ で一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(30)(46) | 配分の恒等式、財市場 |
| T7 | 陰関数定理 |
| 式(25) | $Q^j=X^j\mathbf 1$ |

### A.11 命題6：厳密分解と $\theta$ の符号効果（式(66)〜(71)）

**Step 1　$j\ge2$ の価格を共分散で書く**

$\mu_s\equiv\mathrm E_s[M_{t+1}]$、$\bar Q^{j-1}_s\equiv\mathrm E_s[Q^{j-1}_{s_{t+1}}]$。T2（(85)）より

$$
Q^j_s=\mu_s\bar Q^{j-1}_s+\mathrm{Cov}_s\bigl(M_{t+1},Q^{j-1}_{s_{t+1}}\bigr)
$$

**Step 2　$R^j_s$ に代入する**

$R^j_s=Q^j_s-Q^{j-1}_s/\mathcal G_s$（(11)）に Step 1 を代入。

$$
R^j_s=\mu_s\bar Q^{j-1}_s+\mathrm{Cov}_s(\cdot)-\frac{1}{\mathcal G_s}Q^{j-1}_s
$$

**Step 3　$\mu_sQ^{j-1}_s$ を足して引く**

$$
R^j_s=\Bigl(\mu_s-\frac{1}{\mathcal G_s}\Bigr)Q^{j-1}_s+\mu_s\bigl(\bar Q^{j-1}_s-Q^{j-1}_s\bigr)+\mathrm{Cov}_s(\cdot)\ \to\ \text{式(66)(67)}
$$

**Step 4　$j=1$**

$Q^1_s=\mathrm E_s[M_{t+1}]$（$Q^0\equiv1$ で共分散ゼロ）より $R^1_s=Q^1_s-1/\mathcal G_s=\mathrm E_s[M_{t+1}]-1/\mathcal G_s$ $\to$ 式(68)。

**Step 5　ウェイトをかけて足す**

$\pi_s=\sum_jf^jR^j_s$ に (67)(68) を代入すると、各満期の3項がそのまま足し上がる。

**Step 6　$\theta$ の効果：共分散の微分**

$\mathrm{TP}^j_s=\mathrm{Cov}_s(M_{t+1},Q^{j-1}_{s_{t+1}})$ を $\theta$ で微分し、積の微分則を使う $\to$ 式(69)。

**Step 7　SDFの対数微分**

$\ln M_{t+1}=\ln\beta+\gamma\ln\tilde c_y(s_t)-\gamma\ln\tilde c_o(s_{t+1})-\gamma\ln G_{s_{t+1}}$ を $\theta$ で微分する。$G_{s_{t+1}}$ は $\theta$ に依らない。

$$
\frac{\partial}{\partial\theta}\ln M_{t+1}=\gamma\frac{\partial_\theta\tilde c_y(s_t)}{\tilde c_y(s_t)}-\gamma\frac{\partial_\theta\tilde c_o(s_{t+1})}{\tilde c_o(s_{t+1})}\ \to\ \text{式(70)}
$$

**Step 8　価格固定の直接効果**

(17) より $\tilde c_y=1+\theta\kappa_s-A_s$ なので $\partial_\theta\tilde c_y=\kappa_s$。(18) より $\tilde c_o=(1-\theta)(1+n)\kappa_s+\cdots$ なので $\partial_\theta\tilde c_o=-(1+n)\kappa_s$ $\to$ 式(71)。

**確認**

$j=1$：(67) で $\mathrm{TP}^1_s=0$ と置くと、(68) と一致する（$Q^0_s=1$、$\mathrm E_s[Q^0_{s_{t+1}}]=1$ で期待遷移ウェッジもゼロ）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(11)(24) | $R^j_s$ の定義、価格再帰 |
| T2 | 条件付き共分散分解 |
| 式(17)(18) | 価格固定の予算制約 |

### A.12 一般状態の不動点比較静学（式(72)(73)(74)）

**Step 1　残差写像**

$H(Q,\theta)=Q-T_\theta(Q)$ とおくと $H(Q^{\ast}(\theta),\theta)=0$ $\to$ 式(72)。

**Step 2　陰関数定理**

T7（(90)）で $H_Q=I-\partial_QT_\theta$、$H_\theta=-\partial_\theta T_\theta$ とおくと、

$$
\frac{dQ^{\ast}}{d\theta}=-H_Q^{-1}H_\theta=\bigl(I-\partial_QT_\theta\bigr)^{-1}\partial_\theta T_\theta\ \to\ \text{式(73)}
$$

**Step 3　固有値の摂動**

$Xw=\rho w$ の微分：$dX\,w+X\,dw=d\rho\,w+\rho\,dw$。左から $v^{\top}$ を掛け、$v^{\top}X=\rho v^{\top}$ を使うと $v^{\top}dX\,w=d\rho\,v^{\top}w=d\rho$。

**Step 4　長期利回り**

$r_\infty=-\log\rho$ より $dr_\infty=-d\rho/\rho$。$d\rho=v^{\top}(dX/d\theta)w\,d\theta$ を代入して式(74)。

**確認**

$dX/d\theta=0$ なら $dr_\infty/d\theta=0$（$\theta$ が作用素に影響しなければ長期利回りは動かない）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(27)(25) | 不動点写像、価格の反復 |
| T5、T7 | フロベニウス固有ベクトル、陰関数定理 |

### A.13 長期極限とロールオーバーの幾何（式(75)〜(80)）

**Step 1　命題7：長期の価格**

T5（(88)）より $\rho^{-j}X^j\to wv^{\top}$。$\mathbf 1$ を掛ける：$\rho^{-j}Q^j=\rho^{-j}X^j\mathbf 1\to w(v^{\top}\mathbf 1)$。

**Step 2　長期利回り**

$Q^j_s=\rho^{j}\bigl((v^{\top}\mathbf 1)w_s+o(1)\bigr)$（$w_s\gt0$）の対数をとって $-1/j$ 倍：

$$
y^j_s=-\log\rho-\frac{1}{j}\log\bigl((v^{\top}\mathbf 1)w_s+o(1)\bigr)\to-\log\rho=r_\infty\ \to\ \text{式(75)}
$$

**Step 3　命題8：価格のスペクトル表現**

T6（(89)）より $X^j\mathbf 1=\sum_k\lambda_k^{j}w_k(v_k^{\top}\mathbf 1)=\sum_ka_k\lambda_k^{j}w_k$ $\to$ 式(76)の前半。

**Step 4　ロールオーバー・ベクトル**

$R^j=Q^j-D_{\mathcal G}^{-1}Q^{j-1}$（$j\ge1$）に Step 3 を代入する。

$$
R^j=\sum_ka_k\lambda_k^{j}w_k-D_{\mathcal G}^{-1}\sum_ka_k\lambda_k^{j-1}w_k=\sum_ka_k\lambda_k^{j-1}\bigl(\lambda_kI-D_{\mathcal G}^{-1}\bigr)w_k\ \to\ \text{式(76)の後半・(77)の前半}
$$

**Step 5　ランクの上界**

$R(\theta)$ の全列が $\mathrm{span}\{(\lambda_kI-D_{\mathcal G}^{-1})w_k\colon a_k\neq0\}$ に入るので $\mathrm{rank}\,R\le\#\{k\colon a_k\neq0\}$ $\to$ 式(77)の後半。

**Step 6　系3**

$Q^j=\rho^{j}(v^{\top}\mathbf 1)w+o(\rho^{j})$、$Q^{j-1}=\rho^{j-1}(v^{\top}\mathbf 1)w+o(\rho^{j-1})$ を $R^j=Q^j-D_{\mathcal G}^{-1}Q^{j-1}$ に入れ、$\rho^{-(j-1)}$ を掛ける。

$$
\rho^{-(j-1)}R^j\to(v^{\top}\mathbf 1)(\rho I-D_{\mathcal G}^{-1})w\ \to\ \text{式(78)}
$$

**Step 7　スイッチ点**

$Q^1_{\mathrm n}(\theta^{\ast})=Q^1_{\mathrm d}(\theta^{\ast})$ なら (A.8 Step 6) $Q^j=\lambda_1^{j}\mathbf 1$。$R^j=\lambda_1^{j}\mathbf 1-D_{\mathcal G}^{-1}\lambda_1^{j-1}\mathbf 1=\lambda_1^{j-1}(\lambda_1I-D_{\mathcal G}^{-1})\mathbf 1$ $\to$ 式(79)。

**Step 8　補題9：行列の因数分解**

$S=2$ では (77) より $R^j=\sum_{k=1}^{2}a_k\lambda_k^{j-1}u_k$。$j=1,2$ を並べる。

$$
[R^1,R^2]=[u_1,u_2]\begin{pmatrix}a_1&a_1\lambda_1\\a_2&a_2\lambda_2\end{pmatrix}
$$

**Step 9　行列式**

$$
\det[R^1,R^2]=\det[u_1,u_2]\,(a_1a_2\lambda_2-a_1\lambda_1a_2)=(\lambda_2-\lambda_1)a_1a_2\det[u_1,u_2]\ \to\ \text{式(80)}
$$

$a_2\neq0$ と $\det[u_1,u_2]\neq0$ なら $\neq0$ で、$R(\theta)$ は2行の行列でこの2列を含むから $\mathrm{rank}\,R=2$。

**確認**

スイッチ点では $Q^j=\lambda_1^{j}\mathbf 1$ で $\mathbf 1$ が固有ベクトルなので $a_1w_1=\mathbf 1$、$a_2=0$。(80) の右辺はゼロで、(79) のランク1と整合する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(25)(11) | $Q^j=X^j\mathbf 1$、$R^j$ の定義 |
| T5、T6 | フロベニウスの極限、スペクトル分解 |
| A.8 Step 6 | スイッチ点での $Q^j=\lambda_1^{j}\mathbf 1$ |

---

**© 2026 Keiichi Morimoto**（原論文）. 本記事は原論文の数理モデルを整理したもので、式・モデルの著作権は原著者に帰属します。
{% endraw %}
