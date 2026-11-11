---
layout: post
title: "Gerald A. Feltham & James A. Ohlson (1995) \"Valuation and Clean Surplus Accounting for Operating and Financial Activities\", Contemporary Accounting Research: 数理モデル"
date: 2026-11-06 00:00:00 +0900
categories: [会計学, 財務金融論]
math: true
paper_summary: "企業の自己資本の市場価値は期待配当の現在価値に等しい（配当割引モデル）という関係と、クリーン・サープラス関係を土台に、営業活動と財務活動を分けて会計を扱い、営業資産の会計が保守的な場合の株価と会計数値の関係を導く。保守的会計と営業資産の成長が重なると株価収益率（P/E）が永続的に高くなることなどを説明する。"
paper_position: "この記事は、この論文の背景にある数理モデルを、式・前提・記号・導出を中心に早見表として整理した記事です。"
---

{% raw %}
# Gerald A. Feltham & James A. Ohlson (1995) "Valuation and Clean Surplus Accounting for Operating and Financial Activities", Contemporary Accounting Research: 数理モデル
### 営業・財務活動の分離および保守的会計の下でのクリーン・サープラス評価モデル

---

## 本記事について（論文紹介）

本記事は、会計学・動的財務エクイティ評価理論の金字塔的論文である **Gerald A. Feltham & James A. Ohlson (1995) "Valuation and Clean Surplus Accounting for Operating and Financial Activities" (Contemporary Accounting Research, Vol. 11, No. 2, pp. 689-731)** で提示された背景・理論の数理モデルを一切簡易化せず、完全な形で定式化・整理した解説・早見表記事です。

本論文は、Ohlson (1995) の残余利益モデル（残余利益による株価評価）を拡張し、企業の活動を「財務活動（Financial Activities）」と「営業活動（Operating Activities）」に不可分に分離しました。完全市場で取引される財務資産に対しては帳簿価額と市場価額の一致（無偏会計）を仮定する一方、非完全市場で取引される営業資産に対しては保守的会計（のれん/帳簿価額のアンダーステートメント）を許容し、線形情報動態（Linear Information Model: LIM）を用いて株価、異常営業利益、資産成長率、会計の保守性パラメータの間の相互関係を閉形式（Closed-form）で導出しています。

---

## 目次

- [1. 数理モデル](#sec1)
- [2. 説明できる現象](#sec2)
- [3. モデルが整理している点](#sec3)
- [4. モデルの対象外](#sec4)
- [5. 主要文献・関連論文](#sec5)
- [付録：導出手順](#appendix)

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間・情報構造**

離散時間の多期間モデル（$$t = 0, 1, 2, \dots$$）。無リスク金利 $$R_F - 1 > 0$$（ただし $$R_F \equiv 1 + r$$）は時間に対して一定であり、フラットな金利の期間構造を形成する。投資家はリスク中立的であり、市場は摩擦がない（Modigliani-Millerの分離定理が成立する）。

**A1 配当割引モデル（PVR: Present Value Relation）**

時点 $$t$$ における企業の自己資本の市場価値 $$P_t$$ は、将来の期待配当列の無リスク金利 $$R_F$$ による現在価値に等しい。

$$
P_{t} = \sum_{\tau=1}^{\infty} R_{F}^{-\tau} E_{t}\left[\tilde{d}_{t+\tau}\right]\tag{1}
$$

> リスク中立性の仮定を外すと、将来キャッシュフローに対するリスク調整（危険付与）が必要となり、割引率が状態依存となる。

**A2 クリーン・サープラス関係（CSR: Clean Surplus Relation）**

自己資本の純資産帳簿価額 $$bv_t$$ のすべての変動は、当期純利益 $$x_t$$ または株主への配当 $$d_t$$（自己株式取得や増資を含む純額）として報告される。

$$
bv_{t} = \underbrace{bv_{t-1}}_{\text{前期末純資産帳簿価額}} + \underbrace{x_{t}}_{\text{当期純利益}} - \underbrace{d_{t}}_{\text{当期配当}}\tag{2}
$$

> 配当 $$d_t$$ は期末に決定・支払われ、純資産帳簿価額を直接減少させるが（$$\partial bv_t / \partial d_t = -1$$）、当期純利益 $$x_t$$ には影響を与えない（$$\partial x_t / \partial d_t = 0$$）。

**A3 営業活動と財務活動の明示的分離と資産関係**

純資産帳簿価額 $$bv_t$$ は正味の財務資産 $$fa_t$$（有価証券等の財務資産から有利子負債を控除した額）と正味の営業資産 $$oa_t$$（営業用資産から営業負債を控除した額）に二分され、純利益 $$x_t$$ も正味の純利息損益 $$i_t$$ と営業利益 $$ox_t$$ に二分される。

$$
bv_{t} = \underbrace{fa_{t}}_{\text{正味財務資産}} + \underbrace{oa_{t}}_{\text{正味営業資産}}\tag{3}
$$

$$
x_{t} = \underbrace{i_{t}}_{\text{純利息損益}} + \underbrace{ox_{t}}_{\text{営業利益}}\tag{4}
$$

正味財務資産についての純利息関係（NIR: Net Interest Relation）および財務資産関係（FAR: Financial Assets Relation）は以下を満たす。

$$
i_{t} = (R_{F}-1) \underbrace{fa_{t-1}}_{\text{前期末財務資産}}\tag{5}
$$

$$
fa_{t} = \underbrace{fa_{t-1}}_{\text{前期末財務資産}} + \underbrace{i_{t}}_{\text{当期利息}} - (\underbrace{d_{t}}_{\text{配当}} - \underbrace{c_{t}}_{\text{営業キャッシュフロー}})\tag{6}
$$

営業資産関係（OAR: Operating Assets Relation）は、CSR、FAR、および式(3)(4)より従属的に定まる。

$$
oa_{t} = \underbrace{oa_{t-1}}_{\text{前期末営業資産}} + \underbrace{ox_{t}}_{\text{当期営業利益}} - \underbrace{c_{t}}_{\text{当期営業キャッシュフロー}}\tag{7}
$$

> 財務資産に関しては無偏会計（帳簿価額＝市場価額）が成立し、未記録のれんは営業活動（$$oa_t$$）のみから生じる。$$c_t$$ は営業活動から得られる正味の自由キャッシュフロー（Free Cash Flow）である。

---

### 1.1 会計数値による一般評価式（Proposition 1）

**残余利益モデルおよび営業残余利益モデル**

自己資本の異常利益（Abnormal Earnings）$$x_t^a$$、および営業異常利益（Abnormal Operating Earnings）$$ox_t^a$$ を以下のように定義する。

$$
x_{t}^{a} \equiv x_{t} - (R_{F}-1)bv_{t-1}\tag{8}
$$

$$
ox_{t}^{a} \equiv ox_{t} - (R_{F}-1)oa_{t-1}\tag{9}
$$

**評価式と同値性**

遠方の期待帳簿価額が割引条件 $$R_F^{-\tau} E_t [\tilde{bv}_{t+\tau}] \to 0$$ を満たすとき、市場価値 $$P_t$$ は以下の3つの同値な表現を持つ。

$$
P_{t} = \underbrace{fa_{t}}_{\text{財務資産帳簿価額}} + \sum_{\tau=1}^{\infty} R_{F}^{-\tau} E_{t}[\tilde{c}_{t+\tau}]\tag{10}
$$

$$
P_{t} = \underbrace{bv_{t}}_{\text{純資産帳簿価額}} + \sum_{\tau=1}^{\infty} R_{F}^{-\tau} E_{t}[\tilde{x}_{t+\tau}^{a}]\tag{11}
$$

$$
P_{t} = \underbrace{bv_{t}}_{\text{純資産帳簿価額}} + \underbrace{\sum_{\tau=1}^{\infty} R_{F}^{-\tau} E_{t}[o\tilde{x}_{t+\tau}^{a}]}_{\text{未記録のれん } g_t}\tag{12}
$$

> **補足**: 式(10)はファイナンスにおける標準的な自由キャッシュフロー割引モデル、式(11)はOhlson (1995) の残余利益モデル、式(12)はFeltham-Ohlsonモデルの基本式である。未記録のれん $$g_t \equiv P_t - bv_t$$ は将来の営業異常利益の現在価値に完全に収斂する。

| 記号・項目 | 意味 |
|---|---|
| $$P_t$$ | 時点 $$t$$ における自己資本の市場価値（株価総額） |
| $$bv_t$$ | 時点 $$t$$ の純資産帳簿価額 ($$fa_t + oa_t$$) |
| $$fa_t$$ | 時点 $$t$$ の正味財務資産帳簿価額（市場価額と一致） |
| $$oa_t$$ | 時点 $$t$$ の正味営業資産帳簿価額 |
| $$x_t$$ | 期間 $$(t-1, t)$$ の当期純利益 ($$i_t + ox_t$$) |
| $$ox_t$$ | 期間 $$(t-1, t)$$ の営業利益 |
| $$c_t$$ | 時点 $$t$$ に実現した正味営業キャッシュフロー |
| $$x_t^a$$ | 期間 $$(t-1, t)$$ の異常利益（残余利益） |
| $$ox_t^a$$ | 期間 $$(t-1, t)$$ の営業異常利益 |
| $$g_t$$ | 時点 $$t$$ における未記録のれん（未計上含み益: $$P_t - bv_t$$） |

---

### 1.2 無偏会計 vs 保守的会計の定義（Proposition 2）

**定義（漸近的挙動による定式化）**

すべての配当政策および情報のもとで、限界極限として未記録のれん $$g_{t+\tau}$$ の条件付き期待値がゼロに収束するか、正にとどまるかによって定義される。

$$
\text{無偏会計 (Unbiased Accounting):} \quad \lim_{\tau\to\infty} E_{t}[\tilde{g}_{t+\tau}] = 0\tag{13}
$$

$$
\text{保守的会計 (Conservative Accounting):} \quad \lim_{\tau\to\infty} E_{t}[\tilde{g}_{t+\tau}] > 0\tag{14}
$$

**等価条件**

無偏会計は、十分大きな $$T$$ に対して営業資産帳簿価額が将来キャッシュフローの現在価値の不偏推定量であること、または将来の営業異常利益の現在価値の期待値がゼロになることと同値である。

$$
\text{無偏会計:} \quad E_{t}[o\tilde{a}_{t+T}] = E_{t}\left[ \sum_{\tau=1}^{\infty} R_{F}^{-\tau} E_{t+T}[\tilde{c}_{t+T+\tau}] \right] \quad (T \to \infty)\tag{15}
$$

$$
\iff \lim_{T\to\infty} E_{t}\left[ \sum_{\tau=1}^{\infty} R_{F}^{-\tau} E_{t+T}[o\tilde{x}_{t+T+\tau}^{a}] \right] = 0\tag{16}
$$

> 保守的会計の場合は、式(15)の `=` が `\lt`（帳簿価額が将来キャッシュフロー現在価値を下回る）、式(16)の `= 0` が `> 0`（将来の営業異常利益が正に偏向する）に置き換わる。

---

### 1.3 線形情報動態（LIM: Linear Information Model）

将来の営業異常利益および営業資産の変動プロセスを、現在の会計変数および「その他の情報（非会計情報）」$$v_t = (v_{1t}, v_{2t})$$ を用いて以下の4元連立一次マルコフ形（LIM）で定式化する。

$$
o\tilde{x}_{t+1}^{a} = \underbrace{\omega_{11} ox_{t}^{a}}_{\text{営業異常利益の持続性}} + \underbrace{\omega_{12} oa_{t}}_{\text{会計の保守性}} + \underbrace{v_{1t}}_{\text{その他の利益情報}} + \tilde{\epsilon}_{1, t+1}\tag{17}
$$

$$
o\tilde{a}_{t+1} = \underbrace{\omega_{22} oa_{t}}_{\text{営業資産の成長率}} + \underbrace{v_{2t}}_{\text{その他の資産成長情報}} + \tilde{\epsilon}_{2, t+1}\tag{18}
$$

$$
\tilde{v}_{1, t+1} = \gamma_{1} v_{1t} + \tilde{\epsilon}_{3, t+1}\tag{19}
$$

$$
\tilde{v}_{2, t+1} = \gamma_{2} v_{2t} + \tilde{\epsilon}_{4, t+1}\tag{20}
$$

ここで、攪乱項 $$\tilde{\epsilon}_{j, t+\tau}$$ は平均 0、予測不可能（$$E_t[\tilde{\epsilon}_{j, t+\tau}] = 0$$）なイノベーションである。

**パラメータ制約条件**

1. $$|\gamma_{h}| < 1 \quad (h=1,2)$$：その他情報のノイズは過渡的であり、長期的に減衰する。
2. $$0 \le \omega_{11} < 1$$：営業異常利益の限界的持続性。
3. $$1 \le \omega_{22} < R_{F}$$：$$\omega_{22} = 1$$ は無成長経済（No-growth）、$$\omega_{22} > 1$$ は成長経済（Growth）。$$R_F$$ 未満の条件は現在価値の収束条件である。
4. $$\omega_{12} \ge 0$$：会計の保守性パラメータ。$$\omega_{12} = 0$$ は無偏会計、$$\omega_{12} > 0$$ は保守的会計を表す。

> パラメータ $$\omega_{12}$$ は、現在の営業資産ベース $$oa_t$$ が将来の営業異常利益 $$ox_{t+1}^a$$ に与えるプラスの寄与度を示しており、帳簿価額を過小評価（保守主義）するほど、将来報告される残余利益が高まるメカニズムを定式化している。

---

### 1.4 閉形式の株価評価関数（Proposition 3 & Proposition 4）

**閉形式評価式（Proposition 3）**

式(12)の基本式に式(17)-(20)のLIMを代入して無限和を計算することにより、市場価値 $$P_t$$ は現在の会計数値および非会計数値の線形結合として厳密に導出される。

$$
P_{t} = \underbrace{bv_{t}}_{\text{帳簿価額}} + \underbrace{\alpha_{1} ox_{t}^{a}}_{\text{持続的異常利益効果}} + \underbrace{\alpha_{2} oa_{t}}_{\text{保守主義調整}} + \underbrace{\beta_{1} v_{1t} + \beta_{2} v_{2t}}_{\text{非会計情報効果}}\tag{21}
$$

各評価係数は以下のパラメータの関数として一意に決定される。

$$
\alpha_{1} = \frac{\omega_{11}}{R_{F} - \omega_{11}}\tag{22}
$$

$$
\alpha_{2} = \frac{\omega_{12} R_{F}}{(R_{F} - \omega_{22})(R_{F} - \omega_{11})}\tag{23}
$$

$$
\beta_{1} = \frac{R_{F}}{(R_{F} - \omega_{11})(R_{F} - \gamma_{1})}\tag{24}
$$

$$
\beta_{2} = \frac{\alpha_{2}}{R_{F} - \gamma_{2}} = \frac{\omega_{12} R_{F}}{(R_{F} - \omega_{22})(R_{F} - \omega_{11})(R_{F} - \gamma_{2})}\tag{25}
$$

> **無偏会計 vs 保守的会計（Proposition 4）**:
> - 会計が無偏的であること（$$\lim_{\tau\to\infty} E_t[\tilde{g}_{t+\tau}] = 0$$）は、$$\omega_{12} = 0 \iff \alpha_2 = 0$$ と必要十分である。
> - 会計が保守的であること（$$\lim_{\tau\to\infty} E_t[\tilde{g}_{t+\tau}] > 0$$）は、$$\omega_{12} > 0 \iff \alpha_2 > 0$$ と必要十分である。

---

### 1.5 株価評価関数の構造と集計可能性（Corollaries 1 & 2）

**無偏会計の場合の評価関数（Corollary 1）**

$$\omega_{12} = 0$$（$$\alpha_2 = 0$$）のとき、株価評価式は Ohlson (1995) モデルと完全に一致し、ストックモデル（帳簿価額ベース）とフローモデル（利益・配当ベース）の加重平均となる。

$$
P_{t} = k (\phi x_{t} - d_{t}) + (1 - k) bv_{t} + \beta_{1} v_{1t}\tag{26}
$$

$$
\text{または} \quad P_{t} = fa_{t} + k (\phi ox_{t} - c_{t}) + (1 - k) oa_{t} + \beta_{1} v_{1t}\tag{27}
$$

ここで、$$\phi \equiv \frac{R_F}{R_F - 1}$$、$$k \equiv \omega_{11} \frac{R_F - 1}{R_F - \omega_{11}} \in [0, 1)$$ である。

> 無偏会計においては、損益計算書項目（$$i_t + ox_t = x_t$$）および貸借対照表項目（$$fa_t + oa_t = bv_t$$）を合算（集計）しても株価評価情報を一切失わない。キャッシュフロー $$c_t$$ は株価形成において完全な「情報的冗長（Redundant）」となる。

**保守的会計の場合の評価関数（Corollary 2）**

$$\omega_{12} > 0$$（$$\alpha_2 > 0$$）のとき、資産のアンダーステートメントを補正する項 $$\alpha_2 oa_t$$ が追加される。

$$
P_{t} = k (\phi x_{t} - d_{t}) + (1 - k) bv_{t} + \alpha_{2} oa_{t} + \beta_{1} v_{1t} + \beta_{2} v_{2t}\tag{28}
$$

$$
\text{または} \quad P_{t} = fa_{t} + k_{1} (\phi ox_{t} - c_{t}) + k_{2} oa_{t} + \beta_{1} v_{1t} + \beta_{2} v_{2t}\tag{29}
$$

ここで、$$k_1 = k \ge 0$$、$$k_2 = 1 - k + \alpha_2 > 0$$ であり、$$k_1 + k_2 > 1$$ が成り立つ。

> 保守的会計のもとでは、貸借対照表を財務資産 $$fa_t$$ と営業資産 $$oa_t$$ に分解することが必要不可欠となる。ただし驚くべきことに、損益項目の集計（純利益 $$x_t$$ への統合）は依然として情報損失を伴わない。

| 記号・項目 | 意味 |
|---|---|
| $$\alpha_1$$ | 営業異常利益 $$ox_t^a$$ に対する株価評価倍率 |
| $$\alpha_2$$ | 営業資産 $$oa_t$$ に対する保守主義補正評価倍率 |
| $$\phi$$ | 永久還元倍率 ($$R_F / (R_F - 1)$$) |
| $$k$$ | フローモデル対ストックモデルの相対的ウェイトパラメータ ($$0 \le k < 1$$) |
| $$k_1, k_2$$ | 保守的会計下での営業利益フローおよび営業資産ストックに対する評価倍率 |

---

### 1.6 比較静学および感応度分析（Proposition 8）

**現金利益 vs 会計発生額（アクルーアル）の価値評価インパクト**

複式簿記の貸借一致制約（Debits equal Credits）を満たす以下の3つの増分変動の価値インプリケーションを検証する。

- **A. 現金営業利益の1ドルの増加（Cash Earnings）**: $$\delta ox_t = 1, \delta c_t = 1, \delta oa_t = 0$$ （正味影響: $$\delta x_t = \delta bv_t = \delta fa_t = 1$$）
- **B. 発生営業利益の1ドルの増加（Accrued Earnings）**: $$\delta ox_t = 1, \delta c_t = 0, \delta oa_t = 1$$ （正味影響: $$\delta x_t = \delta bv_t = 1, \delta fa_t = 0$$）
- **C. 営業資産投資の1ドルの増加（Investment）**: $$\delta ox_t = 0, \delta c_t = -1, \delta oa_t = 1$$ （正味影響: $$\delta x_t = \delta bv_t = 0, \delta fa_t = -1$$）

**命題（Proposition 8）**

以下の5つの条件はすべて同値である。

$$
\begin{aligned}
\text{(a)} & \quad \text{会計が無偏的である} (\omega_{12} = 0) \\
\text{(b)} & \quad \frac{\partial P_t}{\partial \text{Accrued Earnings}} = \frac{\partial P_t}{\partial \text{Cash Earnings}} \\
\text{(c)} & \quad \frac{\partial P_t}{\partial \text{Investment}} = 0 \\
\text{(d)} & \quad \frac{\partial E_t[\tilde{x}_{t+1}]}{\partial \text{Accrued Earnings}} = \frac{\partial E_t[\tilde{x}_{t+1}]}{\partial \text{Cash Earnings}} \\
\text{(e)} & \quad \frac{\partial E_t[\tilde{x}_{t+1}]}{\partial \text{Investment}} = 0
\end{aligned}\tag{30}
$$

> 会計が保守的（$$\omega_{12} > 0$$）である場合、すべての等号 `=` は `>` に変わる。すなわち、**保守的会計のもとでは、1ドルの発生利益（非現金利益）は1ドルの現金利益よりも株価評価および次期期待利益に対して高い価値（High Quality）を持つ**。

---

### 1.7 主要帰結

**主要式（閉形式のFeltham-Ohlson株価評価式）**

$$
\boxed{\begin{aligned}
P_{t} &= bv_{t} + \alpha_{1} ox_{t}^{a} + \alpha_{2} oa_{t} + \beta_{1} v_{1t} + \beta_{2} v_{2t} \\
\text{where:} \quad & \alpha_{1} = \frac{\omega_{11}}{R_{F} - \omega_{11}}, \quad \alpha_{2} = \frac{\omega_{12} R_{F}}{(R_{F} - \omega_{22})(R_{F} - \omega_{11})} \\
& \beta_{1} = \frac{R_{F}}{(R_{F} - \omega_{11})(R_{F} - \gamma_{1})}, \quad \beta_{2} = \frac{\omega_{12} R_{F}}{(R_{F} - \omega_{22})(R_{F} - \omega_{11})(R_{F} - \gamma_{2})}
\end{aligned}}\tag{31}
$$

**主要式の読み方**

**ひと目で言うと**：株価は、帳簿価額に、営業異常利益、営業資産、その他の情報の4つの項を加えたもので、閉形式で書ける。営業異常利益の持続性が高いほど、その分が株価に乗る。保守的会計（$$\omega_{12}\gt0$$）は営業資産の項を作り、営業資産が成長する経済では、これが株価を押し上げる。保守的会計と成長が同時に起きたときにのみ、高P/E倍率が永続する。

**① 株価の評価式**

$$
P_{t}=bv_{t}+\alpha_{1}\,ox_{t}^{a}+\alpha_{2}\,oa_{t}+\beta_{1}\,v_{1t}+\beta_{2}\,v_{2t}
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$bv_t$$ | 純資産の帳簿価額 | 株価の基準。$$bv_t=fa_t+oa_t$$（正味財務資産と正味営業資産の和） |
| $$\alpha_1\,ox^a_t$$ | 営業異常利益の項 | $$ox^a_t$$ は営業異常利益（残余利益）。持続するほど、将来に利益が続く |
| $$\alpha_2\,oa_t$$ | 営業資産の項（保守主義補正） | 帳簿が保守的に過小評価されているほど、営業資産に未計上の価値がある |
| $$\beta_1\,v_{1t},\ \beta_2\,v_{2t}$$ | その他の情報の項 | $$v_1$$ は将来の異常利益に関する会計外の情報、$$v_2$$ は営業資産の成長に関する会計外の情報 |

**意味**：株価は、帳簿価額に、将来の異常利益の現在価値を足したものである。異常利益は、現在の異常利益、営業資産、その他の情報から予想される。

**結論へのつながり**：Ohlson (1995) の線形情報動学を、営業と財務に分けて拡張したモデルで、株価が、会計情報（帳簿価額、営業異常利益、営業資産）と、非会計情報で決まる。

**② 各係数（倍率）**

$$
\alpha_{1}=\frac{\omega_{11}}{R_{F}-\omega_{11}},\qquad
\alpha_{2}=\frac{\omega_{12}R_{F}}{(R_{F}-\omega_{22})(R_{F}-\omega_{11})}
$$

$$
\beta_{1}=\frac{R_{F}}{(R_{F}-\omega_{11})(R_{F}-\gamma_{1})},\qquad
\beta_{2}=\frac{\omega_{12}R_{F}}{(R_{F}-\omega_{22})(R_{F}-\omega_{11})(R_{F}-\gamma_{2})}
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$R_F$$ | 無リスク総収益率 | $$R_F=1+r_F$$。割引因子 $$1/R_F$$ の逆数 |
| $$\omega_{11}$$ | 営業異常利益の持続性 | $$0\le\omega_{11}\lt1$$。式(17)で、翌期の異常利益に持ち越される割合。大きいほど $$\alpha_1$$ が大きい |
| $$\omega_{12}$$ | 会計の保守性 | $$\omega_{12}\ge0$$。0なら無偏会計。営業資産が、将来の異常利益にプラスに寄与する度合い（式(17)） |
| $$\omega_{22}$$ | 営業資産の成長率 | $$1\le\omega_{22}\lt R_F$$。1なら無成長、1より大きいと成長（式(18)）。$$R_F$$ 未満は、現在価値の収束条件 |
| $$\gamma_1,\ \gamma_2$$ | その他の情報 $$v_1,v_2$$ の持続性 | これらが大きいほど、$$\beta_1,\beta_2$$ が大きい |

**意味**：各係数は、持続性や成長率を、割引率 $$R_F$$ との差で割った形で、将来の価値を現在価値に直したものである（等比級数の和）。

**結論へのつながり**：$$\alpha_2$$ と $$\beta_2$$ は、保守性 $$\omega_{12}$$ に比例し、$$\omega_{22}$$ が $$R_F$$ に近づくほど大きくなる。これが、保守的会計と成長の相乗効果の源である。

**③ 漸近的な挙動（相乗効果）**

| 会計性質と成長 | 株価と利益の漸近関係 | 結果 |
|---|---|---|
| 無偏会計（$$\omega_{12}=0$$） | $$\lim E_t[(P+d)-\phi x]=0$$ | 株価は利益の $$\phi$$ 倍に漸近する。完全配当の漸近利益は $$(R_F-1)\,bv_t$$ |
| 保守的会計・無成長（$$\omega_{12}\gt0,\ \omega_{22}=1$$） | 同上 $$=0$$ | 高P/Eは生じない。漸近利益は有限 |
| 保守的会計・成長（$$\omega_{12}\gt0,\ \omega_{22}\gt1$$） | $$\gt0$$ | 高P/Eが永続し、会計利益は経済的価値の増加を過少表示する |

**意味**：保守的会計だけ、または成長だけでは、高P/E倍率は生じない。両方が同時に起きたときにだけ、株価が利益に比して、永続的に高く評価される。

**結論へのつながり**：これが、論文の主要な理論的結論である（Propositions 5, 6, 7）。保守的会計のもとで成長する企業ほど、P/Eが高く、利益が株価の変化を過少に表す。

**主要式のつながり**

```
① 株価 = 帳簿価額 + 異常利益の項 + 営業資産の項 + その他の情報
② 係数は持続性・成長率・保守性と R_F から決まる（等比級数）
③ 保守的会計（ω12>0）× 成長（ω22>1）→ 高P/Eが永続
```

**漸近的挙動（P/E倍率および株価変化と利益の関係: Propositions 5, 6, 7）**

| 会計性質および成長環境 | 株価と利益の漸近関係 $$\lim_{\tau\to\infty} E_t[(\tilde{P}_{t+\tau}+\tilde{d}_{t+\tau}) - \phi \tilde{x}_{t+\tau}]$$ | 株価変化と利益の漸近関係 $$\lim_{\tau\to\infty} E_t[(\tilde{P}_{t+\tau}+\tilde{d}_{t+\tau}-\tilde{P}_{t+\tau-1}) - \tilde{x}_{t+\tau}]$$ | 完全配当（$$d=x$$）時の漸近期待利益 $$\lim_{\tau\to\infty} E_t[\tilde{x}_{t+\tau}]$$ |
|---|---|---|---|
| **無偏会計** ($$\omega_{12}=0$$) | $$= 0$$ | $$= 0$$ | $$= (R_F - 1) bv_t$$ |
| **保守的会計・無成長** ($$\omega_{12}>0, \omega_{22}=1$$) | $$= 0$$ | $$= 0$$ | $$= (R_F - 1) bv_t + K_t < \infty$$ |
| **保守的会計・成長** ($$\omega_{12}>0, \omega_{22}>1$$) | **$$> 0$$ (高P/E化)** | **$$> 0$$ (会計利益の過少表示)** | **$$\to \infty$$ (会計上のROE無限増大)** |

> **理論の結論**: 保守的会計のみ、あるいは成長のみでは高P/E倍率は生じない。「保守的会計」と「営業資産の成長」が**相乗効果（Synergistic Effect）**を起こしたときにはじめて、株価は利益に比して永続的に高く評価され（高P/E）、会計利益は経済的価値の増加を過少表示する。

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 成長企業の永続的な高P/E（株価収益率）倍率 | 単なる企業の成長ではなく、「保守的会計（R&Dや広告費の即時費用化、加速償却）」と「営業資産の成長（$$\omega_{22}>1$$）」が組み合わさることで、株価が会計利益に対して永続的に高く評価される現象を厳密に説明する。 |
| 会計発生額（アクルーアル）の高品質性 | 実証会計学における「キャッシュフローよりもアクルーアルの方が株価予測力が高い」という現象に対し、保守的会計下では発生額（$$\Delta oa_t$$）が将来の未記録のれんの実現を反映するため、1ドルの現金利益より価値が高いことを理論証明する。 |
| 創業初期の赤字と将来の著しい高ROE | NPV=0の正常投資であっても、保守的会計の下では初期に大規模な費用処理（異常赤字）が発生し、長期的に帳簿価額が過小表示されることで、将来の会計上のROE（自己資本利益率）が著しく高騰する現象。 |
| 貸借対照表の営業・財務分離の重要性 | 財務資産（$$fa_t$$）と営業資産（$$oa_t$$）で会計の保守性が異なる（前者は無偏、後者は保守的）ため、市場が企業価値を正しく評価するには貸借対照表の資産を機能別に分離して開示することが不可欠であるという実務的現象。 |

---

## 3. モデルが整理している点 {#sec3}

- **Ohlson (1995) 残余利益モデルの一般化と拡張**: 会計帳簿数値を「財務活動」と「営業活動」に明確に分離し、資本市場の完全性と会計基準の保守性が株価形成に及ぼすメカニズムを定式化した点。
- **保守的会計と成長の相乗効果（Synergy）の発見**: 保守的会計単体では無成長下で長期的評価バイアスが消滅するのに対し、営業資産の成長が加わることで未記録のれんが指数関数的に拡大することを閉形式で証明した点。
- **複式簿記制約下の比較静学手法の確立**: 「貸借一致（Debits equal Credits）」の制約を守った形で現金利益、発生利益、営業投資の限界価値を評価する構造的な感応度分析手法を提示した点。

---

## 4. モデルの対象外 {#sec4}

- **市場の摩擦と負債の税節約効果**: 有利子負債と財務資産を相殺した正味財務資産 $$fa_t$$ のみを扱い、税制上の利子控除可能性や破産コスト、資本構成（デット・エクイティ比率）の最適選択は考慮していない。
- **投資家の不確実性・リスク回避性**: リスク中立的な代表的投資家を前提としており、資産価格の体系的なリスクプレミアム（CAPMのリスクβなど）やリスク回避度の変動による影響。
- **情報非対称性とシグナリング**: 配当政策 $$d_t$$ は株価の現在価値に影響を与えない（Modigliani-Miller配当無関連命題が成立）ため、経営者が配当や会計選択を通じて非公開情報をシグナリングする行動。

---

## 5. 主要文献・関連論文 {#sec5}

- **[原著/金字塔論文]** Ohlson, J. A. (1995). Earnings, book values, and dividends in security valuation. *Contemporary Accounting Research*, 11(2), 661-687.
  - **位置づけ**: クリーン・サープラス関係に基づき、株価を純資産帳簿価額と異常利益（残余利益）の割引現在価値に分解した、動的会計評価理論の seminal paper。本論文の直接の基盤。
- **[原著/金字塔論文]** Modigliani, F., & Miller, M. H. (1958). The cost of capital, corporation finance and the theory of investment. *American Economic Review*, 48(3), 261-297.
  - **位置づけ**: 本モデルにおける財務活動の分離（NIRおよびFARの無裁定評価）および配当無関連命題の基礎をなすコーポレート・ファイナンスの金字塔的論文。
- **[先駆的論文]** Preinreich, G. A. D. (1938). Annual survey of economic theory: The theory of depreciation. *Econometrica*, 6(1), 219-231.
  - **位置づけ**: 会計帳簿価額と残余利益の現在価値による株価評価式（式(11)）の数学的基礎を連続時間モデルで世界で初めて定式化した歴史的名著。
- **[発展/関連文献]** Feltham, G. A., & Ohlson, J. A. (1996). Uncertainty resolution and the theory of depreciation measurement. *Journal of Accounting Research*, 34(2), 209-234.
  - **位置づけ**: 本モデルの保守的会計モデルを固定資産の減価償却プロセス（定額法 vs 加速償却法）に具体的に適用・拡張した研究。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
           [前提 A1: 配当割引モデル PVR (式 1)]
                         │
        ┌────────────────┴────────────────┐
        │ [前提 A2: Clean Surplus CSR (式 2)]
        ▼                                 ▼
 【一般化残余利益モデル (式 11)】    [前提 A3: 営業/財務の分離 NIR, FAR, OAR (式 3-7)]
   P_t = bv_t + ∑ R_F^{-τ} x_{t+τ}^a     │
        │                                │
        └────────────────┬───────────────┘
                         ▼
             【Feltham-Ohlson基本式 (式 12)】
               P_t = bv_t + ∑ R_F^{-τ} ox_{t+τ}^a
                         │
                         ▼  <─── 【線形情報動態 LIM (式 17-20)】
                         │       (持続性 ω11, 保守性 ω12, 成長率 ω22)
                         ▼
           【閉形式株価評価関数 (式 21, Proposition 3)】
             P_t = bv_t + α1 ox_t^a + α2 oa_t + β1 v1t + β2 v2t
                         │
        ┌────────────────┴────────────────┐
        ▼ (ω12 = 0: 無偏会計)              ▼ (ω12 > 0: 保守的会計)
  【Ohlsonモデル収斂 (式 26-27)】    【保守的評価式 (式 28-29)】
   ・株価はストックとフローの加重平均   ・営業資産補正 α2 oa_t が追加
   ・損益・貸借の完全集計が可能       ・貸借対照表の営業/財務分離が不可欠
   ・キャッシュフローは完全冗長      ・発生額(Accrual)が cash より高価値
```

---

### A.1 使う道具

**T1 未記録のれん（Goodwill）の無裁定再帰方程式**

式(1)の配当割引モデル $$P_t = \sum_{\tau=1}^\infty R_F^{-\tau} E_t[\tilde{d}_{t+\tau}]$$ の両辺に $$R_F$$ を乗じることで、無裁定条件が得られる。

$$
R_{F} P_{t} = E_{t}\left[ \tilde{P}_{t+1} + \tilde{d}_{t+1} \right]\tag{32}
$$

同様に、クリーン・サープラス関係 $$bv_{t+1} = bv_t + x_{t+1} - d_{t+1}$$ および異常利益の定義 $$x_{t+1}^a = x_{t+1} - (R_F - 1)bv_t$$ を用いると、未記録のれん $$g_t \equiv P_t - bv_t$$ に関する基本再帰方程式が得られる。

$$
R_{F} g_{t} = E_{t}\left[ \tilde{g}_{t+1} + o\tilde{x}_{t+1}^{a} \right]\tag{33}
$$

---

### A.2 閉形式評価式の導出（Proposition 3 の証明）

**Step 1 未確定定数法の適用**

未記録のれん $$g_t = P_t - bv_t$$ が、LIMの状態変数 $$(ox_t^a, oa_t, v_{1t}, v_{2t})$$ の線形結合として表現できると予想（Conjecture）する。

$$
g_{t} = \alpha_{1} ox_{t}^{a} + \alpha_{2} oa_{t} + \beta_{1} v_{1t} + \beta_{2} v_{2t}\tag{34}
$$

**Step 2 状態変数の1期先期待値の代入**

式(34)の1期先期待値 $$E_t[\tilde{g}_{t+1}]$$ をLIMの定義式(17)-(20)を用いて展開する。

$$
E_{t}[\tilde{g}_{t+1}] = \alpha_{1} (\omega_{11} ox_{t}^{a} + \omega_{12} oa_{t} + v_{1t}) + \alpha_{2} (\omega_{22} oa_{t} + v_{2t}) + \beta_{1} \gamma_{1} v_{1t} + \beta_{2} \gamma_{2} v_{2t}\tag{35}
$$

同様に、$$E_t[o\tilde{x}_{t+1}^a]$$ は LIM 式(17) より、

$$
E_{t}[o\tilde{x}_{t+1}^{a}] = \omega_{11} ox_{t}^{a} + \omega_{12} oa_{t} + v_{1t}\tag{36}
$$

**Step 3 再帰方程式(33)への代入と係数比較**

式(35)および式(36)を再帰方程式 $$R_F g_t = E_t[\tilde{g}_{t+1} + o\tilde{x}_{t+1}^a]$$ の右辺に代入する。

$$
\begin{aligned}
R_{F} (\alpha_{1} ox_{t}^{a} + \alpha_{2} oa_{t} + \beta_{1} v_{1t} + \beta_{2} v_{2t}) &= (\alpha_{1} + 1) (\omega_{11} ox_{t}^{a} + \omega_{12} oa_{t} + v_{1t}) \\
&\quad + \alpha_{2} (\omega_{22} oa_{t} + v_{2t}) + \beta_{1} \gamma_{1} v_{1t} + \beta_{2} \gamma_{2} v_{2t}
\end{aligned}\tag{37}
$$

式(37)がすべての状態変数の実現値に対して恒等的に成り立つ必要があるため、各変数の係数を比較して以下の4元連立一次方程式を得る。

$$
\begin{aligned}
ox_t^a \text{ の係数:} \quad & R_{F} \alpha_{1} = (\alpha_{1} + 1) \omega_{11} \tag{38} \\
oa_t \text{ の係数:} \quad & R_{F} \alpha_{2} = (\alpha_{1} + 1) \omega_{12} + \alpha_{2} \omega_{22} \tag{39} \\
v_{1t} \text{ の係数:} \quad & R_{F} \beta_{1} = (\alpha_{1} + 1) + \beta_{1} \gamma_{1} \tag{40} \\
v_{2t} \text{ の係数:} \quad & R_{F} \beta_{2} = \alpha_{2} + \beta_{2} \gamma_{2} \tag{41}
\end{aligned}
$$

**Step 4 未定係数の解出**

式(38)より：

$$
(R_{F} - \omega_{11}) \alpha_{1} = \omega_{11} \implies \alpha_{1} = \frac{\omega_{11}}{R_{F} - \omega_{11}} \quad (\text{式 } 22 \text{ と一致})\tag{42}
$$

式(42)の系として、$$\alpha_1 + 1 = 1 + \frac{\omega_{11}}{R_F - \omega_{11}} = \frac{R_F}{R_F - \omega_{11}}$$ である。これを式(39)に代入して：

$$
(R_{F} - \omega_{22}) \alpha_{2} = \left(\frac{R_{F}}{R_{F} - \omega_{11}}\right) \omega_{12} \implies \alpha_{2} = \frac{\omega_{12} R_{F}}{(R_{F} - \omega_{22})(R_{F} - \omega_{11})} \quad (\text{式 } 23 \text{ と一致})\tag{43}
$$

式(40)より：

$$
(R_{F} - \gamma_{1}) \beta_{1} = \frac{R_{F}}{R_{F} - \omega_{11}} \implies \beta_{1} = \frac{R_{F}}{(R_{F} - \omega_{11})(R_{F} - \gamma_{1})} \quad (\text{式 } 24 \text{ と一致})\tag{44}
$$

式(41)より：

$$
(R_{F} - \gamma_{2}) \beta_{2} = \alpha_{2} \implies \beta_{2} = \frac{\alpha_{2}}{R_{F} - \gamma_{2}} = \frac{\omega_{12} R_{F}}{(R_{F} - \omega_{22})(R_{F} - \omega_{11})(R_{F} - \gamma_{2})} \quad (\text{式 } 25 \text{ と一致})\tag{45}
$$

以上により、Proposition 3（式 21）が完全に証明された。

---

### A.3 会計発生額 vs 現金利益の感応度導出（Proposition 8 の証明）

**Step 1 変動の定式化と代入**

株価評価式(21)を会計要素に展開した Corollaries 1 & 2 の表現を用いる。

$$
P_{t} = fa_{t} + oa_{t} + \alpha_{1} [ox_{t} - (R_{F}-1)oa_{t-1}] + \alpha_{2} oa_{t} + \beta_{1} v_{1t} + \beta_{2} v_{2t}\tag{46}
$$

- **現金利益の増加（Case A）**: $$\delta ox_t = 1, \delta c_t = 1, \delta oa_t = 0 \implies \delta fa_t = 1$$

$$
\delta P_{t} = \underbrace{\delta fa_{t}}_{1} + \underbrace{\delta oa_{t}}_{0} + \alpha_{1} \underbrace{\delta ox_{t}}_{1} + \alpha_{2} \underbrace{\delta oa_{t}}_{0} = 1 + \alpha_{1}\tag{47}
$$

- **発生利益の増加（Case B）**: $$\delta ox_t = 1, \delta c_t = 0, \delta oa_t = 1 \implies \delta fa_t = 0$$

$$
\delta P_{t} = \underbrace{\delta fa_{t}}_{0} + \underbrace{\delta oa_{t}}_{1} + \alpha_{1} \underbrace{\delta ox_{t}}_{1} + \alpha_{2} \underbrace{\delta oa_{t}}_{1} = 1 + \alpha_{1} + \alpha_{2}\tag{48}
$$

**Step 2 差分の評価**

両者の価値評価インパクトの差は次式となる。

$$
\frac{\partial P_t}{\partial \text{Accrued Earnings}} - \frac{\partial P_t}{\partial \text{Cash Earnings}} = (1 + \alpha_{1} + \alpha_{2}) - (1 + \alpha_{1}) = \alpha_{2}\tag{49}
$$

したがって、$$\alpha_2 = 0 \iff \omega_{12} = 0$$（無偏会計）のときに限り、両者の価値インパクトは完全に等しくなり、$$\alpha_2 > 0 \iff \omega_{12} > 0$$（保守的会計）のとき、発生利益の価値インパクトが現金利益を $$\alpha_2$$ だけ上回る（Proposition 8 の証明完了）。

---

### A.4 著者について

**Gerald A. Feltham（ジェラルド・A・フェルサム）**
- **アカデミックな経歴**: カリフォルニア大学バークレー校にてPh.D.を取得。スタンフォード大学助教授を経て、ブリティッシュ・コロンビア大学（UBC）名誉教授。
- **主要な研究分野**: 管理会計、財務会計理論、情報経済学、エージェンシー理論。
- **評判・学術的貢献**: 会計学における「情報経済学（Information Economics）」および「残余利益評価理論」の開拓者。アメリカ会計学会（AAA） Outstanding Accounting Educator Award、Wildman Medal Award、および最高栄誉である **Accounting Hall of Fame（会計の殿堂）** 入り（2004年）。

**James A. Ohlson（ジェームズ・A・オールソン）**
- **アカデミックな経歴**: カリフォルニア大学バークレー校にてPh.D.（1972年）を取得。コロンビア大学、ニューヨーク大学（NYU）、アリゾナ州立大学教授等を歴任。
- **主要な研究分野**: 財務会計理論、エイクティ・バリュエーション、会計数値に基づく株価評価モデル。
- **評判・学術的貢献**: **Ohlson (1995) 残余利益モデル（Ohlson Model）** および本論文の **Feltham-Ohlson Model** を構築し、近代会計理論・ファンダメンタル分析を数学的に厳密な科学へと変革させた現代会計学の最高峰の一人。AAA Seminal Contributions to Accounting Literature Award、Accounting Hall of Fame 入り（2015年）。

---

**© 1995 Canadian Academic Accounting Association (CAAA)**. (本記事は学術研究・数理モデル紹介を目的とした要約・解説です)
{% endraw %}