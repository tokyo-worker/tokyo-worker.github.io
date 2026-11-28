---
layout: post
title: "ソブリン・ファンドによる公的年金給付の最適カバー率：数理モデルと設例"
date: 2026-11-28 00:00:00 +0900
categories: [マクロファイナンス, 公的年金・ソブリンリスク]
math: true
excerpt_separator: ""
---

{% raw %}
# ソブリン・ファンドによる公的年金給付の最適カバー率：数理モデルと設例

## 1. 前提（仮定）

| 記号 | 仮定 | 内容 | 外した場合の帰結 |
| ----- | ----- | ----- | ----- |
| **A1** | **リスクプレミアムと対価** | ファンド期待実質利回り $r_p(\mathbf{w})$ は政府調達実質金利 $r_g$ を上回る（$r_p(\mathbf{w}) \gt r_g$）。超過リターンはボラティリティ $\sigma_p(\mathbf{w}) \gt 0$ とテールリスクの対価である。 | 無リスクで無限の給付財源を生める非現実的な結果になる。 |
| **A2** | **期間構造ミスマッチとウェッジ** | 統合政府は長期リスク資産（デュレーション $D^A$）を短期負債（$D^L \lt D^A$）で調達する。金融抑圧等によるリターン・ウェッジ $\omega_t \le 0$ が存在しうる。 | 金利上昇ショック時の純債務急膨張やスプレッド縮小リスクが消える。 |
| **A3** | **年金最低保証のオプション構造** | 運用益充当給付 $\lambda\,\mathrm{Ben}_t$ に対し暗黙の最低保証バリア $B_{\mathrm{Pen}}(\lambda)$ が存在し、下振れ不足分は一般財政が補填する。 | 政府が負う非線形テールリスク（プット・ショート構造）が消失する。 |
| **A4** | **リスクおよび期間構造の許容上限** | 保証プット価値・デルタ・ソブリン資産テールリスク（$\mathrm{SAaR}$）・デュレーション乖離に許容上限（$\bar{P}, \bar{\Delta}, \alpha, \bar{D}_{\text{gap}}$）を課す。 | リスクを無視した過大なカバー率 $\lambda = 1$ が選ばれる。 |

## 2. 変数・パラメータ一覧

| 記号 | 区分 | 定義 |
| ----- | ----- | ----- |
| $t,\ T$ | 添字 | 離散時点 $t = 0, 1, 2, \dots$、およびリスク評価ホライズン $T$ |
| $\lambda \in [0, 1]$ | **決定変数** | 公的年金給付 $\mathrm{Ben}_t$ のうち運用益で賄うカバー率（残余 $1-\lambda$ は賦課・税） |
| $\mathbf{w}$ | **決定変数** | 資産配分・テールヘッジ強度・ダム資産（無リスク流動性バッファ）比率を表す戦略ベクトル |
| $F_t,\ F_t^{\mathrm{risk}},\ F_t^{\mathrm{dam}}$ | 状態変数 | ソブリン・ファンド総残高（$F_t = F_t^{\mathrm{risk}} + F_t^{\mathrm{dam}}$：リスク資産部分＋無リスク・ダム資産部分） |
| $\mathrm{Ben}_t$ | 外生変数 | $t$ 期の公的年金総給付額 |
| $r_p(\mathbf{w}),\ c(\mathbf{w}),\ \tilde{r}_p(\mathbf{w})$ | パラメータ | ファンド期待実質利回り、ヘッジ・ダム保有コスト率、純期待実質利回り（$\tilde{r}_p \equiv r_p - c$） |
| $r_g,\ R$ | パラメータ | 政府基準調達実質金利、および実質金利ファクター（$R \equiv 1 + r_g$） |
| $\sigma_p(\mathbf{w}),\ \varepsilon_{t+1}$ | 確率変数 | ファンドの純ボラティリティ、および平均 $0$・分散 $1$ の標準化ショック |
| $D_t,\ A_t,\ ND_t$ | 状態変数 | 統合政府の負債時価、資産時価、および純債務時価（$ND_t \equiv D_t - A_t$） |
| $D^L,\ D^A,\ D^{ND},\ D^{T-G}$ | パラメータ | 統合負債・統合資産・純債務・将来基礎的財政収支の各実効デュレーション |
| $G_t,\ T_t,\ Y_t,\ x$ | 状態変数 | 基礎的財政支出、税収等収入、名目GDP、および定常名目成長率（累積成長率 $X_{t-j,t}$） |
| $R_t^A,\ R_t^D,\ R_t^f,\ M_{t+1}$ | 確率変数 | 統合資産粗リターン、負債粗コスト、無リスク粗金利、確率的割引ファクター（SDF） |
| $\omega_t,\ \beta_t^S,\ \beta_t^A,\ \alpha_t$ | パラメータ | リターン・ウェッジ、財政収支・資産のSDFベータ、およびSDF分散比率 |
| $B_{\mathrm{Pen}}(\lambda)$ | 関数 | カバー率 $\lambda$ に対応する年金最低保証バリア（プット行使価格） |
| $P_{\mathrm{Pen}},\ \Delta_{P,\mathrm{Pen}}$ | 関数 | 年金保証プットの現在価値、およびファンド残高に対するデルタ（$\partial P_{\mathrm{Pen}}/\partial F_t$） |
| $d_{1,\mathrm{Pen}},\ d_{2,\mathrm{Pen}},\ N(\cdot)$ | 関数 | 保証バリアまでの標準化距離（距離-to-distress）、および標準正規累積分布関数 |
| $V_{\mathrm{Sov},t},\ R_{\mathrm{FX},t},\ \mathrm{NFA}_t,\ P_{\mathrm{Other},t}$ | 状態変数 | 統合ソブリン資産、外貨準備、ネット財政資産、その他暗黙保証プット価値 |
| $\bar{P},\ \bar{\Delta},\ \alpha,\ V_{\min},\ \bar{D}_{\text{gap}}$ | 制約パラメータ | プット上限、デルタ上限、許容危機確率、ソブリン資産危機閾値、デュレーション乖離上限 |
| $U(\lambda, \mathbf{w}),\ \Delta W_i,\ D_i^\theta,\ D_i^{c-y},\ \theta_i$ | 厚生変数 | 政府目的関数、家計 $i$ の厚生変化、家計資産デュレーション、超過消費デュレーション、金融資産額 |

## 3. 数理モデル（全13式）

### 3.1 コアモデル：積立動態・期間構造・保証プット・最適化（式(1)〜(6)）

**式(1) ソブリン・ファンドの積立動態**

$$
\underbrace{\Delta F_t}_{\text{ファンド純増額}}
=
\underbrace{\bigl(r_p(\mathbf{w}) - c(\mathbf{w})\bigr) F_t}_{\text{ヘッジ・ダムコスト控除後期待運用益}}
-
\underbrace{\lambda\,\mathrm{Ben}_t}_{\text{運用益充当給付}}
+
\underbrace{\sigma_p(\mathbf{w}) F_t \varepsilon_{t+1}}_{\text{確率的リターン変動}}
\tag{1}
$$

> **補足**：ファンド残高の変化を表す遷移式。期待値ベースで第1項が第2項を上回れば残高は増加し賦課負担を軽減できるが、第3項の確率ショックにより下振れ局面では残高が減少する。

**式(2) 統合政府純債務の金利弾力性**

$$
\underbrace{\frac{\partial \ln ND_t}{\partial \ln R}}_{\text{純債務の金利弾力性}} = \underbrace{-\,D^{ND}(\mathbf{w})}_{\text{純債務デュレーションの符号反転}} \gt \underbrace{0}_{\text{金利上昇で純債務増加}} \tag{2}
$$

> **補足**：短期負債・長期資産構造により純債務デュレーションが負（$D^{ND} \lt 0$）の場合、実質金利上昇（$d\ln R \gt 0$）に対して統合純債務 $ND_t$ が非線形に膨張することを示す。

**式(3) 年金最低保証プット価値（ソブリンCCA）**

$$
\underbrace{P_{\mathrm{Pen}}(\lambda, \mathbf{w})}_{\text{年金保証プット現在価値}}
=
\underbrace{B_{\mathrm{Pen}}(\lambda) e^{-r_g T} N\bigl(-d_{2,\mathrm{Pen}}(\lambda, \mathbf{w})\bigr)}_{\text{リスク中立期待保証支払額}}
-
\underbrace{F_t N\bigl(-d_{1,\mathrm{Pen}}(\lambda, \mathbf{w})\bigr)}_{\text{下振れ時のファンド回収価値}}
\tag{3}
$$

> **補足**：運用益充当給付 $\lambda\,\mathrm{Ben}_t$ の最低保証は、政府によるプット・オプションのショートと同値である。$\lambda$ の上昇やボラティリティ $\sigma_p$ の急騰によりプット価値が凸に増大する。

**式(4)〜(6) 制約付き最適カバー率および戦略決定問題**

$$\begin{aligned}
\max_{\lambda \in [0, 1],\; \mathbf{w}} \; \underbrace{U(\lambda, \mathbf{w})}_{\text{厚生・負担軽減目的関数}} \quad \text{s.t.} \quad
\underbrace{\tilde{r}_p(\mathbf{w}) F_t}_{\text{純期待実質運用益}} &\ge \underbrace{\lambda\,\mathrm{Ben}_t}_{\text{運用益充当給付}} \tag{4} \\
\underbrace{P_{\mathrm{Pen}}(\lambda, \mathbf{w})}_{\text{保証プット価値}} \le \underbrace{\bar{P}}_{\text{プット上限}}, \qquad
\underbrace{1 - N\bigl(d_{1,\mathrm{Pen}}(\lambda, \mathbf{w})\bigr)}_{\text{保証プット・デルタ } |\Delta_{P,\mathrm{Pen}}|} &\le \underbrace{\bar{\Delta}}_{\text{デルタ上限}} \tag{5} \\
\underbrace{\mathrm{Prob}\bigl(V_{\mathrm{Sov},T}(\lambda, \mathbf{w}) \le V_{\min}\bigr)}_{\text{ソブリン資産テール確率（SAaR）}} \le \underbrace{\alpha}_{\text{許容危機確率}}, \qquad
\underbrace{\bigl|D^{ND}(\mathbf{w}) - D^{T-G}(\lambda)\bigr|}_{\text{デュレーション乖離幅}} &\le \underbrace{\bar{D}_{\text{gap}}}_{\text{乖離上限}} \tag{6}
\end{aligned}$$

> **補足**：期待収支条件(4)は $\lambda$ の上限候補を与えるが、非線形プット・デルタ制約(5)と統合バランスシート制約(6)がバインドすることで、最適カバー率は内点解 $\lambda^{\ast} \in (0, 1)$ に決まる。

### 3.2 完全展開式：統合政府・CCA詳細・家計厚生（式(7)〜(13)）

**式(7) 統合政府の純債務動態（GDP比）**

$$
\underbrace{\frac{ND_t}{Y_t}}_{\text{期末純債務GDP比}}
=
\underbrace{\sum_{j=0}^{t} \left(\frac{G_{t-j} - T_{t-j}}{Y_{t-j}}\right) \frac{R_{t-j,t}^D}{X_{t-j,t}}}_{\text{累積基礎的財政赤字の寄与}}
-
\underbrace{\sum_{j=0}^{t} \frac{A_{t-j}}{Y_{t-j}} \frac{R_{t-j,t}^A - R_{t-j,t}^D}{X_{t-j,t}}}_{\text{資産・負債スプレッド収益の寄与}}
+
\underbrace{\frac{R_{0,t}^D}{X_{0,t}} \frac{ND_{-1}}{Y_{-1}}}_{\text{初期純債務の利払い・成長調整後残高}}
\tag{7}
$$

> **補足**：一般政府・中央銀行・公的年金の予算制約を統合し後方代入した遷移式。第2項の超過リターン $(R^A - R^D)$ が第1項の財政赤字と第3項の利払い増を相殺する構造を示す。

**式(8) 定常状態における純債務比率安定条件**

$$
\underbrace{\frac{r^A - r^D}{1+x}\frac{A}{Y}}_{\text{資産スプレッドによる債務圧縮項}} + \underbrace{\frac{x - r^D}{1+x}\frac{D}{Y}}_{\text{成長率・金利差（ドーマー条件）項}} = \underbrace{\frac{G - T}{Y}}_{\text{定常基礎的財政赤字GDP比}} \tag{8}
$$

> **補足**：式(7)の定常均衡条件。たとえ $r^D \gt x$（金利＞成長率）で第2項が負であっても、第1項のスプレッド $(r^A - r^D)$ と資産規模 $A/Y$ が十分大きければ財政赤字を相殺できる。

**式(9) 無裁定リスク価格とリターン・ウェッジ** $\omega_t$

$$
\underbrace{\omega_t}_{\text{リターン・ウェッジ}}
\equiv
\underbrace{\mathbb{E}_t\bigl[R_{t+1}^D - R_t^f\bigr]}_{\text{実際の政府調達超過リターン}}
-
\underbrace{\left[ \left(1 - \frac{A_t}{D_t}\right)\beta_t^S + \frac{A_t}{D_t}\beta_t^A \right]\alpha_t}_{\text{SDFリスク価格に基づく理論超過リターン}}
\tag{9}
$$

> **補足**：$\omega_t \lt 0$ は金融抑圧や規制による低利調達を表す。$\omega_t \to 0$ へ回帰すると調達金利 $r_g$ が上昇し、スプレッドと財政余地が縮小する。

**式(10) 保証バリアまでの標準化距離（距離-to-distress）**

$$
\underbrace{d_{1,\mathrm{Pen}}(\lambda, \mathbf{w})}_{\text{標準化距離 } d_1}
=
\underbrace{\frac{\ln\bigl(F_t / B_{\mathrm{Pen}}(\lambda)\bigr) + \bigl(r_g + \frac{1}{2}\sigma_p(\mathbf{w})^2\bigr)T}{\sigma_p(\mathbf{w})\sqrt{T}}}_{\text{対数バッファ・ドリフトのボラティリティ基準化}},
\qquad
\underbrace{d_{2,\mathrm{Pen}}(\lambda, \mathbf{w})}_{\text{標準化距離 } d_2}
=
\underbrace{d_{1,\mathrm{Pen}}(\lambda, \mathbf{w})}_{\text{距離 } d_1}
-
\underbrace{\sigma_p(\mathbf{w})\sqrt{T}}_{\text{拡散項調整}}
\tag{10}
$$

> **補足**：式(3)および式(5)に代入される距離指標。カバー率 $\lambda$ 上昇によるバリア $B_{\mathrm{Pen}}(\lambda)$ 引き上げ、またはボラティリティ $\sigma_p$ 上昇により $d_1, d_2$ は急速に縮小する。

**式(11) 統合ソブリン資産価値**

$$
\underbrace{V_{\mathrm{Sov},t}(\lambda, \mathbf{w})}_{\text{統合ソブリン資産価値}}
=
\underbrace{R_{\mathrm{FX},t}}_{\text{外貨準備}}
+
\underbrace{\mathrm{NFA}_t}_{\text{ネット財政資産}}
+
\underbrace{F_t}_{\text{ソブリン・ファンド残高}}
-
\underbrace{P_{\mathrm{Other},t}}_{\text{その他暗黙保証プット}}
-
\underbrace{P_{\mathrm{Pen}}(\lambda, \mathbf{w})}_{\text{年金保証プット}}
\tag{11}
$$

> **補足**：国家全体のバランスシートから暗黙の保証債務（プット価値）を控除した正味ソブリン資産。危機時は $\mathrm{NFA}_t$ と $F_t$ の減少と $P_{\mathrm{Other},t}, P_{\mathrm{Pen}}$ の急増が同時に起こる。

**式(12) ソブリン資産リスク（SAaR）制約**

$$
\underbrace{\mathrm{SAaR}_\alpha\bigl(V_{\mathrm{Sov},T}(\lambda, \mathbf{w})\bigr)}_{\text{信頼水準 } 1-\alpha \text{ の下側分位点}} \ge \underbrace{V_{\min}}_{\text{危機閾値}} \quad \iff \quad \underbrace{\mathrm{Prob}\bigl(V_{\mathrm{Sov},T}(\lambda, \mathbf{w}) \le V_{\min}\bigr)}_{\text{ソブリン危機発生確率}} \le \underbrace{\alpha}_{\text{許容危機確率}} \tag{12}
$$

> **補足**：式(6)第1式の同値表現。将来時点 $T$ において統合ソブリン資産が危機閾値 $V_{\min}$ を割り込む確率を $\alpha$ 以下に制限する。

**式(13) 金利変化に伴う家計グループ** $i$ **の厚生変化（十分統計量）**

$$
\underbrace{\Delta W_i}_{\text{家計 } i \text{ の貨幣換算厚生変化}} \approx \underbrace{\bigl(D_i^{c-y} - D_i^\theta\bigr)}_{\text{超過消費と保有資産のデュレーション差}} \cdot \underbrace{\theta_i}_{\text{初期金融資産額}} \cdot \underbrace{d\ln R}_{\text{実質金利ファクター変化率}} \tag{13}
$$

> **補足**：預金中心で $D_i^\theta \approx 0 \lt D_i^{c-y}$ である若年・中低所得層は、金利低下（$d\ln R \lt 0$）によって厚生損失（$\Delta W_i \lt 0$）を被る逆進的分配効果を示す。

## 4. 特殊ケースでの検算

| ケース | 極限条件 | 数式の帰結 | 経済学的整合性 |
| ----- | ----- | ----- | ----- |
| **1. 無リスク運用** | $\sigma_p \to 0,\ r_p \to r_g$ | $d_1, d_2 \to +\infty \implies P_{\mathrm{Pen}} = 0,\ |\Delta_{P,\mathrm{Pen}}| = 0$。式(4)は $r_g F_t \ge \lambda\,\mathrm{Ben}_t$ に帰着。 | 国債利子のみで賄う純粋積立基金に一致。 |
| **2. 完全賦課方式** | $\lambda \to 0$ | $B_{\mathrm{Pen}}(0) = 0 \implies P_{\mathrm{Pen}}(0, \mathbf{w}) = 0$。 | 年金は全額現役世代の保険料・税で賄われ、保証プットは消滅。 |
| **3. 無制約最適化** | 式(5)・(6)を除去 | $F_t \ge \mathrm{Ben}_t / \tilde{r}_p$ ならコーナー解 $\lambda^{\ast} = 1$ を選択。危機時に $|\Delta_{P,\mathrm{Pen}}| \to 1$。 | リスク制約を外すと全額運用益依存を選び、危機時に財政破綻リスクを抱える。 |

## 5. 数値設例（5つの局面における各式の変動）

基準パラメータ（単位：兆円、年率）：総給付 $\mathrm{Ben} = 50$、基準調達金利 $r_g = 1.5\%$、最適カバー率 $\lambda^{\ast} = 0.20$（運用益充当給付 $\lambda^{\ast}\mathrm{Ben} = 10$、賦課・税負担 $40$）、保証バリア $B_{\mathrm{Pen}}(0.20) = 150$、許容上限 $\bar{P} = 2.0,\ \bar{\Delta} = 0.25$。

### 設例1：平常時（標準ポートフォリオ・ダムなし）

* **設定**：$F_0 = 250$、純期待利回り $\tilde{r}_p = 5.0\%$、ボラティリティ $\sigma_p = 10\%$、金利一定（$d\ln R = 0$）。
* **各式の変動**：
  * **式(1)・(4)**：期待運用益 $\tilde{r}_p F_0 = 12.5 \ge \lambda^{\ast}\mathrm{Ben} = 10.0$。差額 $\Delta F_t = +2.5$ が毎年積み上がる。
  * **式(10)・(3)・(5)**：$F_0 = 250 \gg B_{\mathrm{Pen}} = 150$ より距離 $d_{1,\mathrm{Pen}}$ は大きく、保証プット $P_{\mathrm{Pen}} \approx 0.4 \le \bar{P}(2.0)$、デルタ $|\Delta_{P,\mathrm{Pen}}| \approx 0.04 \le \bar{\Delta}(0.25)$ で制約内に収まる。

### 設例2：危機時における「無リスク・ダム資産」の効果と限界（危機継続 $3$ 年想定）

* **設定**：危機時にリスク資産を安値売却（投げ売り）せず乗り切るため、運用益充当給付 $3$ 年分（$10 \times 3 = 30$ 兆円）を無リスク・ダム資産 $F_0^{\mathrm{dam}} = 30$（利回り $r_g = 1.5\%$）として別枠保有し、残り $F_0^{\mathrm{risk}} = 220$ をリスク資産（利回り $5.5\%$、総残高 $F_0 = 250$）で運用する。危機発生でリスク資産が $30\%$ 下落（$220 \to 154$）し、$\sigma_p$ が $28\%$ へ急騰、実質金利が $+1.0\%$ 上昇。
* **各式の変動**：
  * **式(1)・(4)（平常時キャリーと危機時切り出し）**：ダム保有によりファンド全体の加重期待利回りは $\tilde{r}_p = (30 \times 1.5\% + 220 \times 5.5\%)/250 = 5.02\%$（ヘッジ・ダムコスト控除後 $4.6\%$）へやや低下する。しかし危機発生後 $3$ 年間は $F^{\mathrm{dam}} = 30$ から毎年 $10$ ずつ給付を支払えるため、下落した $F^{\mathrm{risk}} = 154$ を取り崩さずに温存できる。
  * **式(10)・(3)・(5)（非線形プット・デルタの抑制）**：総残高は $F_1 = 154 + 30 = 184$ となり、バリア $150$ を上回る水準を維持する。テール・ヘッジ $\mathbf{w}^{\ast}$ と併用することで $|\Delta_{P,\mathrm{Pen}}| \approx 0.24 \le \bar{\Delta}(0.25)$ に踏みとどまる。
  * **限界（危機長期化・$\lambda \to 1$ への壁）**：危機が $4$ 年以上続く場合や、長期で $\lambda$ を $0.20 \to 1.00$ へ引き上げようとすると、ダム必要額の急増と期待運用益不足により制約に抵触する。

### 設例3：危機時における高カバー率・ヘッジなしとの比較（リスク顕在化）

* **設定**：設例2と同じショック（株安 $-30\%$、$\sigma_p = 28\%$、実質金利 $+1.0\%$）のもとで、事前から過大なカバー率 $\lambda = 0.60$（充当給付 $30$、バリア $B_{\mathrm{Pen}}(0.60) = 220$）かつヘッジ・ダムなし（$F_0 = 250 \to 175$）を選んでいた場合。
* **各式の変動**：
  * **式(10)・(3)・(5)**：$F_1 = 175 \lt B_{\mathrm{Pen}} = 220$（イン・ザ・マネー）となり、距離 $d_{1,\mathrm{Pen}} \lt 0$ へ転落。デルタ $|\Delta_{P,\mathrm{Pen}}| \approx 0.68 \gg \bar{\Delta}(0.25)$ へ跳ね上がり、プット価値 $P_{\mathrm{Pen}}$ が急膨張する。
  * **式(2)・(6)・(11)**：負の純債務デュレーション（$D^{ND} \lt 0$）のもとで金利上昇が純債務 $ND_t$ を押し上げ、税収 $\mathrm{NFA}_t$ の減少と合わせて統合ソブリン資産 $V_{\mathrm{Sov},T}$ が閾値 $V_{\min}$ に接近（$\mathrm{SAaR}$ 制約違反）。

### 設例4：賦課方式（$\lambda = 0$）からハイブリッド方式（$\lambda^{\ast} = 0.20$）への移行時

* **設定**：完全賦課方式（$\lambda = 0$、現役世代が毎年 $50$ を負担）から、ファンド $F_0 = 250$ を構築して $\lambda^{\ast} = 0.20$ へ移行する過渡期。
* **各式の変動**：
  * **式(7)・(8)（移行期の二重負担と純債務）**：既裁定年金 $50$ を支払いながら原資 $250$ を国債増発や増税で積み立てると、移行期の純債務比率 $ND_t/Y_t$ が一時的に上昇する。定常状態（式(8)）へ到達して初めてスプレッド項 $(r^A - r^D)(A/Y)$ が現役世代の負担を $50 \to 40$ へ軽減する。
  * **式(9)・(13)（ウェッジと家計厚生）**：移行期に金融抑圧（$\omega_t \lt 0$）で低利調達（$d\ln R \lt 0$）を行うと純債務は抑えられるが、式(13)より預金中心の若年・中低所得層（$D_i^\theta \approx 0 \lt D_i^{c-y}$）に逆進的な厚生損失 $\Delta W_i \lt 0$ が生じる。

### 設例5：完全自賄い極限（$\lambda = 1$：給付の $100\%$ を運用益で賄う場合）の破綻メカニズム

* **設定**：現役世代の保険料・税負担をゼロにし、公的年金総給付 $\mathrm{Ben} = 50$ の全額（$\lambda = 1.00$）をファンド運用益で賄う制度設計。無リスク・ダム資産を給付 $3$ 年分（$F_0^{\mathrm{dam}} = 150$、利回り $1.5\%$）確保したうえで、残余をリスク資産（利回り $5.5\%$）で運用するケースを考える。
* **各式の変動**：
  * **式(1)・(4)（必要ファンド規模の巨大化と期待収支の逼迫）**：ダム $150$ 兆円が生む運用益は $150 \times 1.5\% = 2.25$ 兆円にすぎないため、残り $47.75$ 兆円をリスク資産の純期待利回り（ヘッジ・コスト控除後 $4.5\%$ 想定）で賄うには $F_0^{\mathrm{risk}} \ge 47.75 / 0.045 \approx 1,061$ 兆円、すなわち総ファンド残高 $F_0 \ge 1,211$ 兆円（GDP比約 $200\%$ 超）が必要となる。さらに規模拡大による市場インパクトやCIP乖離増大で $c(\mathbf{w})$ が上昇し、リターン・ウェッジ $\omega_t$（式(9)）も消失してスプレッドが縮小するため、式(4)の定常維持自体が困難化する。
  * **式(10)・(3)・(5)（保証バリア上昇によるプット・デルタの常時超過）**：$\lambda = 1$ では全給付 $50$ 兆円を途切れなく守るため保証バリア $B_{\mathrm{Pen}}(1.0)$ が初期残高 $F_0$ に近接（アット・ザ・マネー近傍）する。その結果、平時（$\sigma_p = 10\%$）であっても距離 $d_{1,\mathrm{Pen}}$ が小さく、プット・デルタ $|\Delta_{P,\mathrm{Pen}}| = 1 - N(d_{1,\mathrm{Pen}}) \approx 0.45 \gt \bar{\Delta}(0.25)$ となり、**危機が起きる前から制約式(5)に違反する**。市場が $30\%$ 下落するとデルタは $0.90$ 超へ張り付き、事実上政府が巨額リスク資産の価格変動を丸抱えする状態になる。
  * **式(2)・(6)・(11)・(12)（統合バランスシートの脆弱化と $\mathrm{SAaR}$ 違反）**：巨大なリスク資産保有（$D^A$ 大）と調達負債により統合政府の負の純債務デュレーション $D^{ND} \lt 0$ が極端に拡大し、実質金利 $+1.0\%$ 上昇時の純債務膨張（式(2)）がデュレーション制約（式(6)第2式）を突破する。複合ショック時には年金保証プット $P_{\mathrm{Pen}}(1.0, \mathbf{w})$ が統合ソブリン資産 $V_{\mathrm{Sov},T}$（式(11)）を押し下げ、ソブリン危機確率が許容上限 $\alpha$ を超過（式(12)違反）するため、$\lambda = 1$ は実行可能解から排除される。

## 6. サージェントの「12のレッスン」によるモデル監査

トーマス・サージェント（Sargent, 2007）の12の経済学レッスンに基づく本モデルの整合性チェック結果は以下の通りである。

| レッスン（Sargent, 2007） | 対応数式・項目 | 監査結果とモデルへの反映 |
| ----- | ----- | ----- |
| **1. 望ましいことの多くは実現不可能** | 式(4)〜(6), (8) | 「運用益による全額給付（$\lambda = 1$）」の実現不可能性を制約条件と定常条件で画定済み（設例5）。 |
| **2. 個人や共同体はトレードオフに直面する** | 式(1), (3)〜(6) | 期待超過リターンとテールリスク、ダム・ヘッジコスト $c(\mathbf{w})$ と純利回り $\tilde{r}_p$ のトレードオフを明示。 |
| **3. 他人は自分の能力・努力・選好に私的情報を持つ** | 式(13) | 家計異質性（$D_i^\theta, D_i^{c-y}$）を導入済み。私的貯蓄・労働供給の内生反応は今後の拡張課題。 |
| **4. 助けたい相手を含め誰もがインセンティブに反応する** | 式(3), (5) | 手厚い最低保証（高い $B_{\mathrm{Pen}}$）は家計の私的貯蓄インセンティブを弱めるモラルハザード要因となる。 |
| **5. 平等と効率性の間にはトレードオフがある** | 式(13) | 統合バランスシートの低金利・期間構造戦略が預金中心層に逆進的厚生損失を与える点を定量化済み。 |
| **6. 均衡では人々は自分の選択に満足している** | 式(9), (13) | SDF無裁定価格と家計最適消費・資産計画を前提に制度変更の限界効果を評価。 |
| **7. 将来の自分もインセンティブに反応する（約束の信認）** | 仮定A1・A3 | 好況期の超過運用益を政治圧力で給付増額・バリア引き上げに流用しないガバナンス規律が不可欠。 |
| **8. 政府や有権者もインセンティブに反応する（不履行）** | 式(3), (6), (12) | 危機時の保証債務急膨張による財政破綻・暗黙のデフォルト確率をプットおよび $\mathrm{SAaR}$ で捕捉。 |
| **9. ある世代から次の世代へコストを移すことは可能** | 式(7), (8) | 賦課比率 $(1-\lambda)$ と移行期の純債務動態を通じた世代間負担移転を明示的に定式化。 |
| **10. 政府が支出すると国民は明示または暗黙の税で払う** | 式(1), (7), (11) | 運用下振れ時の保証不足分は一般財政（将来増税・インフレ調整）で補填される構造を反映。 |
| **11. 多くの人はコストを他人に払ってほしいと思う** | 式(4), (5) | 「運用益で賄える」という楽観バイアスによる $\lambda$ 過大設定圧力をデルタ上限 $\bar{\Delta}$ で抑制。 |
| **12. 市場価格は情報を集約するため予測は難しい** | 式(1), (2), (10) | 将来リターン・金利を確定予測せず、確率ショック $\varepsilon_{t+1}$ と分布テールリスクで最適化。 |

## 主要文献

* **Abel, A. B. (2001).** The Effects of Investing Social Security Funds in the Stock Market When Fixed Costs Prevent Some Households from Holding Stocks. *American Economic Review*, 91(1), 128-148.
* **Chien, Y.-L., Cole, H. L., & Lustig, H. (2025).** What about Japan? *NBER Working Paper*, No. 31850.
* **Du, W., Tepper, A., & Verdelhan, A. (2018).** Deviations from Covered Interest Rate Parity. *Journal of Finance*, 73(3), 915-957.
* **Geanakoplos, J., Mitchell, O. S., & Zeldes, S. P. (1999).** Social Security Money's Worth. In *Prospects for Social Security Reform* (pp. 79-151). University of Pennsylvania Press.
* **Gray, D. F., Merton, R. C., & Bodie, Z. (2007).** Contingent Claims Approach to Measuring and Managing Sovereign Credit Risk. *Journal of Investment Management*, 5(4), 5-28.
* **Jiang, Z., Lustig, H., Van Nieuwerburgh, S., & Xiaolan, M. Z. (2024).** The U.S. Public Debt Valuation Puzzle. *Econometrica*, 92(4), 1309-1347.
* **Merton, R. C. (1977).** An Analytic Derivation of the Cost of Loan Guarantees and Deposit Insurance: An Application of Modern Option Pricing Theory. *Journal of Banking & Finance*, 1(1), 3-11.
* **Sargent, T. J. (2007).** *University of California at Berkeley Graduation Speech* (May 16, 2007). New York University and Hoover Institution.
{% endraw %}