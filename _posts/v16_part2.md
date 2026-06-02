# Part II：Technical Appendix（数理モデル・証明編）

---

## 目次（Technical Appendix）

- [A. 基本環境：変数の定義と分類](#vars)
- [B. 税の歪みと成長率：BC有界性の経済学的基礎](#distortion)
- [C. ブラケット・クリープ関数：定義とBC有界性の証明](#bc)
- [D. オリベラ＝タンジ関数：定義とOT累積支配性の証明](#ot)
- [E. 統合BC-OT実質収入関数](#unified)
- [F. インフレ・ラッファー曲線と臨界インフレ率 $\pi^*$（Existence Theorem）](#laffer)
- [G. 財政余力・財政安定フロンティアの比較静学](#margin)
- [H. FTPL整合性条件：将来黒字現在価値の侵食](#ftpl)
- [I. 需要プル・コストプッシュとインフレ原因の非対称性](#demandpush)
- [J. 確率動学拡張：財政バッファ過程とギャンブラーの破産](#stoch)
- [K. 統合政府予算制約式とデュレーション項の厳密化](#budget)
- [L. リスク調整最低税率と最大許容金利](#taumin)
- [M. 日本への適用：破産確率・ストレスシナリオ](#japan)
- [N. G8諸国比較：OT破産確率 vs 国債CDSスプレッド](#g8)
- [O. ハイパーインフレ史的検証](#hyperinflation)
- [P. 感度分析・ストレスシナリオ](#sensitivity)
- [Q. ロバストネスと拡張可能性](#robustness)
- [**R. 現代マクロ経済学とBCOTの接続（V16新設）**](#modern-macro)
- [付録Z. 数学・確率論用語解説](#appendix-z)
- [参考文献](#refs)

---

## A〜Q（V15から継続）

（§A〜§Q の内容はV15 Technical Appendixと同一。以下に変更点のみ記載。）

### A.1 内生変数・状態変数（V16追加分）

| 記号 | 定義 | モデルでの役割 |
| :--- | :--- | :--- |
| $\pi^*_{\text{upper}}$ | 上限臨界インフレ率（V15の $\pi^*$ に相当） | インフレ・ラッファー曲線の極大点 |
| $\pi^*_{\text{lower}}$ | 下限臨界インフレ率（V16新設） | 凍死方向への相転移点 |
| $FM_{\text{upper}}$ | 上限財政余力：$\pi^*_{\text{upper}} - \pi$ | 熱死方向の距離指標 |
| $FM_{\text{lower}}$ | 下限財政余力：$\pi - \pi^*_{\text{lower}}$ | 凍死方向の距離指標（V16新設） |
| $FIM_{\text{lower}}$ | 金利下限余力：$r - r_{\min}$ | ZLB・凍死危険域の距離指標（V16新設） |
| $FSM_{\text{upper}}$ | 税率上限余力：$\tau_{\max} - \tau$ | 過大課税までの余裕（V16新設） |
| $\mathcal{C}(\pi)$ | 生存の回廊：許容政策ペアの集合 | 財政持続可能領域（V16新設） |

### G.1（V16更新） 財政余力の定義と性質

$$FM_{\text{upper}}(\pi, \tau, r) \equiv \pi^*_{\text{upper}}(\tau, r) - \pi \tag{式30a}$$

$$FM_{\text{lower}}(\pi, \tau, r) \equiv \pi - \pi^*_{\text{lower}}(\tau, r) \tag{式30b}$$

比較静学（上限側はV15と同一）：

$$\frac{\partial FM_{\text{lower}}}{\partial \pi} = 1 > 0 \quad (\text{インフレ上昇は}FM_{\text{lower}}\text{を拡大：凍死危険からの脱出}) \tag{式31d}$$

$$\frac{\partial FM_{\text{lower}}}{\partial r} \text{ の符号}: \quad r \uparrow \text{ は ZLB制約を} \pi^*_{\text{lower}} \text{の上方へシフトさせる場合に} FM_{\text{lower}} \downarrow \tag{式31e}$$

### L.0（V16更新） 六指標の統合設計思想

| 指標 | 方向 | 評価基準 | 時間軸 |
|:---|:---|:---|:---|
| $FM_{\text{upper}} = \pi^*_{\text{upper}} - \pi$ | 上限 | インフレ空間の余裕 | 中期 |
| $FM_{\text{lower}} = \pi - \pi^*_{\text{lower}}$ | 下限 | デフレ方向の余裕 | 中期 |
| $FSM = \tau - \tau_{\min}^{\text{risk}}$ | 下限 | 長期確率的持続可能性 $Q(n) \le \epsilon$ | 長期 |
| $FSM_{\text{upper}} = \tau_{\max} - \tau$ | 上限 | BC飽和・成長阻害限界 | 中期 |
| $FIM = r_{\max} - r$ | 上限 | PS≥0（単年度フロー） | 短期 |
| $FIM_{\text{lower}} = r - r_{\min}$ | 下限 | ZLB・国債市場機能維持 | 短期 |

---

## R. 現代マクロ経済学とBCOTの接続（V16新設） {#modern-macro}

本Appendixは、現代マクロ経済学の10の革新的パラダイムとBCOTフレームワークとの接続を、**数式レベル**と**経済的本質レベル**の両面で整理する。これは後日の別記事（「BCOTフレームワークと現代マクロ経済学の接続」）への土台である。

### R.0 接続の大局的視点

BCOTモデルの核心は「徴税タイムラグ $\ell(\pi)$ という制度的摩擦」である。標準的なRBC・NKモデルが暗黙に前提とする「徴税ラグ＝ゼロ（完全・即時の税回収）」という仮定を緩めたとき、何が起きるか——これがBCOTと現代マクロの接続の根本的問いである。

---

### R.1 RBC・NK定常状態のBCOTストレステスト

#### 数式レベル

標準的なNKモデルの定常状態 $\{\pi_{SS}, b_{SS}, g_{SS}, r_{SS}\}$ をBCOTモデルの初期値として代入する。NK均衡条件より：

$$r_{SS} = \rho, \quad g_{SS} = g_0, \quad \pi_{SS} = \pi^{\text{CB}}_{\text{target}} \tag{R-1}$$

BCOTモデルにおけるプライマリーバランス（NK初期値代入後）：

$$PS_{SS}^{\text{BCOT}} = R^{\mathrm{real}}(\pi_{SS}; \tau_0) - g^{\mathrm{gov}} - \mathcal{D}_{SS} \cdot b_{SS}$$

$$= \tau_0 \cdot (1 + \pi_{SS}) \cdot e^{-\pi_{SS} \cdot \ell(\pi_{SS})} \cdot (1 - \lambda\tau_0) - g^{\mathrm{gov}} - (r_{SS} - g_{SS}) b_{SS} \tag{R-2}$$

**ストレステスト条件：** NK定常状態が「BCOT安定」であるための必要条件は：

$$PS_{SS}^{\text{BCOT}} \ge PS^*(\epsilon) \quad \Leftrightarrow \quad \tau_0 \ge \tau_{\min}^{\text{risk}}(\pi_{SS}, r_{SS}, b_{SS}) \tag{R-3}$$

#### 経済的本質レベル

NKモデルでは「均衡が美しく解ける」が、それはテイラー・ルールが機能し徴税ラグがゼロに近い制度的条件を前提とする。BCOTは「徴税インフラが現実の制度的摩擦を持つとき、NK均衡が実は空中楼閣（プライマリーバランスが崩壊する）になりうること」を示す。

> **命題R1（NK定常状態のBCOTストレステスト）：** NKモデルの定常均衡 $\{\pi_{SS}, b_{SS}\}$ が式R-3を満たさない場合（$\tau_0 < \tau_{\min}^{\text{risk}}$）、その均衡はBCOT環境下では維持不能であり、実際の財政収支は動学的に発散する。

---

### R.2 10パラダイムのBCOT解釈

#### パラダイム①：$m > g > r$（Reis, 2021）

**数式レベル：**

Reisの拡張FTPL式：

$$v_t = E_t \sum_{j=1}^{\infty} \left(\prod_{k=1}^j \frac{1+g_{t+k}}{1+m_{t+k}}\right) s_{t+j} + (m_{t+j} - r_{t+j})b_{t+j-1} \tag{R-4}$$

BCOTでは $s_{t+j} = R^{\mathrm{real}}(\pi_{t+j}) - g^{\mathrm{gov}} - \mathcal{D}_{t+j} b^{\mathrm{net}}_{t+j}$ であり、OT効果が $R^{\mathrm{real}}$ を侵食すると $(m-r)b$ によるバブル収入がそれを補填するかどうかが財政安定の鍵となる。

BCOTフレームでの $r_{\max}$ 修正式：

$$r_{\max}^{\text{Reis}} = g(\tau) + \frac{R^{\mathrm{real}}(\pi) - g^{\mathrm{gov}}}{b^{\mathrm{net}}} + (m - g) \cdot \frac{b^{\mathrm{safe}}}{b^{\mathrm{net}}} \tag{R-5}$$

ここで第3項は安全資産プレミアムによる $r_{\max}$ の上方修正分。

**経済的本質レベル：** 「安全資産としての国債が流動性プレミアムを生む」という事実は、$r_{\max}$ を引き上げる（生存の回廊を上方に拡大する）。ただしBCOT的には、そのプレミアムはOT効果が侵食した実質税収を補填する「保険料」であり、プレミアムが消失すれば（信任危機）回廊が急激に収縮する。

---

#### パラダイム②：自己完結的資金調達（Angeletos et al., 2024）

**数式レベル：**

Angeletos et al.の自己完結比率 $\nu$：

$$\epsilon_0 = \text{Adjustment} + \tau_y \sum_{k=0}^{\infty} \beta^k E_0 y_k + \frac{D^{ss}}{Y^{ss}} (\pi_0 - E_{-1}\pi_0) \tag{R-6}$$

BCOTフレームでは、税基盤拡大項 $\tau_y \sum \beta^k y_k$ を修正：

$$\tau_y^{\text{BCOT}} = \tau_y \cdot e^{-\pi \cdot \ell(\pi)} \quad (\text{OT効果による実効税率の目減り補正}) \tag{R-7}$$

**経済的本質レベル：** 「減税が自己完結する（税収が自動的に拡大する）」メカニズムは、BC優勢フェーズ（$\pi < \pi^*_{\text{upper}}$）では有効だが、OT優勢フェーズでは $\tau_y^{\text{BCOT}} \ll \tau_y$ となり自己完結比率が劇的に低下する。BCOTは「自己完結が成立する制度的条件（生存の回廊内にいること）」を明示する。

---

#### パラダイム③：連結政府のキャリー・トレード（Chien et al., 2025）

**数式レベル：**

連結政府のキャリー収益とBCOTの接続：

$$C_t = \sum_i a_{it}(r_{it} - r_t^f) \quad \text{（連結キャリー）} \tag{R-8}$$

BCOTの $r_{\max}$ 修正（キャリー収益を考慮）：

$$r_{\max}^{\text{carry}} = g(\tau) + \frac{R^{\mathrm{real}}(\pi) - g^{\mathrm{gov}} + C_t}{b^{\mathrm{gross}}} \tag{R-9}$$

デュレーション・ミスマッチによる利上げ時の純資産毀損：

$$\Delta W \approx -(D_A \cdot A - D_L \cdot L) \Delta r \tag{R-10}$$

BCOTフレームでは $\Delta W < 0$（利上げによる資産価値毀損）が $b^{\mathrm{net}}$ を実効的に拡大させ、$r_{\max}$ を低下させる（生存の回廊の上限が収縮）。

**経済的本質レベル：** 日本の連結政府は「低利の変動負債で借り、高利の長期資産で運用するキャリー・トレード」を行っており、これがBCOT的には $r_{\max}$ を見かけ上引き上げている。しかし利上げ時にはデュレーション・ミスマッチにより $\Delta W \ll 0$ となり、突然 $r_{\max}$ が低下して生存の回廊が収縮する——これが「負のデュレーション・ミスマッチ」リスクのBCOT的表現である。

---

#### パラダイム④：安全資産のバブル採掘（Brunnermeier et al., 2022）

**数式レベル：**

国債の安全資産サービス・フローをBCOTの $r_{\max}$ に組み込む：

$$r_{\max}^{\text{bubble}} = r_{\max} + \frac{S_t}{b^{\mathrm{net}}} \tag{R-11}$$

ここで $S_t$ は国債が提供する流動性・保険サービスの価値（採掘されるバブル収入）。

**経済的本質レベル：** 国債が「安全資産」として機能する限り、そのサービス・フロー $S_t$ は実質的に $r_{\max}$ を引き上げる（回廊を広げる）。しかし信任危機（$\pi \to \pi^*_{\text{upper}}$ への接近・Q(n)の急増）により $S_t \to 0$ となった瞬間、BCOTの回廊は突然収縮する。これが「バブルの消失（サドン・ストップ）」のBCOT的メカニズムである。

---

#### パラダイム⑤：ゴールドリックス・ゾーン（Mian et al., 2021）

**数式レベル：**

Mian et al.のゴールドリックス・ゾーン：$b \in [b_{\text{ZLB}}, \bar{b}]$

BCOTの生存の回廊との対応：

$$b_{\text{ZLB}} \leftrightarrow \text{凍死フロンティア（FM}_{\text{lower}} = 0\text{）に対応する債務水準}$$
$$\bar{b} \leftrightarrow \text{熱死フロンティア（FM}_{\text{upper}} = 0\text{）に対応する債務水準}$$

より正確には、$r(b) > g(b)$ となる $\bar{b}$ が $r_{\max}$ 制約に相当し、$R(b) < G_{ZLB}$ となる $b_{\text{ZLB}}$ が $r_{\min}$ 制約に相当する：

$$PS(b) = R^{\mathrm{real}}(\pi; \tau) - g^{\mathrm{gov}} - (r(b) - g(b)) \cdot b = 0 \quad \text{が生存の回廊の境界} \tag{R-12}$$

**経済的本質レベル：** ゴールドリックス・ゾーンは「債務水準」で安全域を定義するが、BCOTは同じ安全域を「インフレ率・税率・金利の政策ペア $(\pi, \tau, r)$」の多次元空間で定義する。両フレームは式R-12で接続され、BCOTの方が政策変数の自由度を明示的に扱えるという利点を持つ。

---

#### パラダイム⑥：FTPL（Cochrane, 2023）

**数式レベル：**（本文§7・Technical Appendix §Hで詳述済み）

BCOTとFTPLの接続の要点：

$$\frac{B_t}{P_t} = PV(PS) \quad \Leftrightarrow \quad P_t = \frac{B_t}{PV(R^{\mathrm{real}}(\pi) - g^{\mathrm{gov}} - \mathcal{D} b)} \tag{R-13}$$

OT効果（$\pi \to \pi^*_{\text{upper}}$）で $R^{\mathrm{real}}$ が崩落すると $PV(PS) \to 0$ となり $P_t \to \infty$（ハイパーインフレ）が自己実現的に発生する——これがBCOTとFTPLの交点である。

**経済的本質レベル：** FTPLは「なぜ財政危機がインフレをもたらすか」の理論。BCOTは「なぜ高インフレが財政を崩壊させるか」の理論。両者は双方向の因果を持ち、$\pi > \pi^*_{\text{upper}}$ において「相互強化的な自己崩壊ループ」が完成する。

---

#### パラダイム⑦：無限の借り換え（Morimoto, 2026）

**数式レベル：**

Morimotoの固有値条件（国債価格作用素の最大固有値 $\lambda_1 < e^{-g}$）をBCOTに接続する。

財政バッファの確率過程（式38-41）において、BCOTの勝率 $p(\pi)$ と固有値条件の関係：

$$p(\pi) > 1/2 \quad \Leftrightarrow \quad \lambda_1(\pi) < e^{-g(\tau)} \tag{R-14}$$

これはBCOT安定条件（$\pi < \pi^*_{\text{upper}}$、すなわち $\gamma < 1$）と固有値条件が同値であることを示す。

**経済的本質レベル：** 「無限の借り換えが持続可能」であることは、BCOTでは「生存の回廊内にシステムがある」ことと等価である。固有値 $\lambda_1$ がBCOTの $\gamma = (1-p)/p$ に対応し、$\gamma < 1$（すなわち $p > 1/2$）がBC優勢フェーズと直接対応する。

---

#### パラダイム⑧：現代版トリフィン・ジレンマ（Farhi & Maggiori, 2018）

**数式レベル：**

安全資産供給量 $b$ とデフォルト確率 $\alpha(b)$ の非線形関係（式8-1）をBCOT生存の回廊に接続する。

生存の回廊の幅を $W(\pi, \tau, r) \equiv \pi^*_{\text{upper}} - \pi^*_{\text{lower}}$ とすると：

$$W(b) = W_0 - \kappa_b \cdot b \quad (\kappa_b > 0: \text{債務増大による回廊収縮係数}) \tag{R-15}$$

$b$ が増大するほど $\alpha(b)$ が上昇し、安全資産プレミアム $(R_r - R_s)$ が消失して $r_{\max}$ が低下（回廊上限が内側に移動）する。

**経済的本質レベル：** 「安全資産を出しすぎると安全でなくなる」逆説は、BCOTでは「債務増大が生存の回廊を収縮させる動学」として表現される。回廊の幅 $W(b)$ が $b$ に対して単調減少するならば、ある閾値 $b^*$ で $W(b^*) = 0$ となり、生存の回廊が消失する（財政の制度的破綻点）。

---

#### パラダイム⑨：公共流動性（Angeletos et al., 2023）

**数式レベル：**

民間担保制約：$k_{it+1} \le \phi(k_{it}, b_{it+1})$（式9-2）をBCOTに接続する。

国債 $b$ が民間の投資制約を緩和する場合、課税ベース $Y_t$ が拡大する：

$$Y_t^{\text{liquidity}} = Y_t \cdot (1 + \mu_b \cdot b^{\mathrm{net}}) \quad (\mu_b > 0: \text{流動性乗数}) \tag{R-16}$$

BCOTの統合実質収入関数に組み込むと：

$$R^{\mathrm{real,liq}}(\pi) = \tau(\pi) \cdot (1 + \pi) \cdot e^{-\pi\ell(\pi)} \cdot (1 - \lambda\tau) \cdot (1 + \mu_b b^{\mathrm{net}}) \tag{R-17}$$

**経済的本質レベル：** 「国債が担保として民間投資を増やす」効果はBCOTフレームでは課税ベース拡大（$Y_t$ の増加）として表現される。これは $\pi^*_{\text{upper}}$ を引き上げる（回廊を広げる）好循環をもたらすが、過大な国債供給（トリフィン的限界）と拮抗する。最適な国債供給量 $b^*$ は式R-16の $\mu_b b$ 効果と式R-15の回廊収縮効果が均衡する点として内生的に決定される。

---

#### パラダイム⑩：確率的債務持続可能性分析（Blanchard et al., 2021）

**数式レベル：**

Blanchardの確率的ファン・チャートとBCOTの破産確率 $Q(n)$ の対応：

$$\Pr\left[d_T > d_{\max}\right] \le \epsilon \quad \Leftrightarrow \quad Q(n) \le \epsilon \tag{R-18}$$

ここで $d_T$ は $T$ 期後の債務GDP比、$Q(n)$ はBCOTの財政破産確率。両者はインフレ率の確率過程（OU過程・式38）を通じて接続される。

BCOTの勝率 $p(\pi)$ がOU過程上で確率的に変動する場合の修正破産確率：

$$Q^{\text{stoch}}(n) = E_\pi\left[Q(n; p(\pi))\right] = \int Q(n; p(\pi)) f(\pi) d\pi \tag{R-19}$$

**経済的本質レベル：** Blanchardの「点ではなく分布で評価する」アプローチは、BCOTの「$\pi$ の確率的変動を通じた破産確率 $Q(n)$ の期待値評価」に対応する。BCOTは更に「インフレ率が $\pi^*_{\text{upper}}$ を超えた瞬間に $p(\pi)$ が $1/2$ を下回る非線形な相転移」を明示することで、ファン・チャートには捉えにくい「尾部リスクの急変」を自然に記述する。

---

### R.3 統一BCOTフレームによる10パラダイムのまとめ

<div style="overflow-x:auto;">
<table style="border-collapse:collapse; width:100%; font-size:0.85em;">
<thead>
<tr style="background:#3a3a5c; color:white; text-align:center;">
  <th style="padding:8px 10px; text-align:left;">#</th>
  <th style="padding:8px 10px; text-align:left;">パラダイム</th>
  <th style="padding:8px 10px;">BCOTへの組み込み先</th>
  <th style="padding:8px 10px; text-align:left;">経済的本質（BCOT視点）</th>
  <th style="padding:8px 10px;">回廊への効果</th>
</tr>
</thead>
<tbody>
<tr>
  <td style="padding:6px 10px; font-weight:bold;">①</td>
  <td style="padding:6px 10px;">m&gt;g&gt;r（Reis）</td>
  <td style="padding:6px 10px; text-align:center;">r_max修正（式R-5）</td>
  <td style="padding:6px 10px;">安全資産プレミアムが r_max を引き上げる</td>
  <td style="padding:6px 10px; text-align:center; color:green;">拡大↑</td>
</tr>
<tr style="background:#f8f8f8;">
  <td style="padding:6px 10px; font-weight:bold;">②</td>
  <td style="padding:6px 10px;">自己完結的資金調達（Angeletos et al.）</td>
  <td style="padding:6px 10px; text-align:center;">τ_y^BCOT修正（式R-7）</td>
  <td style="padding:6px 10px;">BC優勢域でのみ自己完結が成立；OT域では劇的低下</td>
  <td style="padding:6px 10px; text-align:center; color:green;">条件付き拡大</td>
</tr>
<tr>
  <td style="padding:6px 10px; font-weight:bold;">③</td>
  <td style="padding:6px 10px;">連結政府キャリー（Chien et al.）</td>
  <td style="padding:6px 10px; text-align:center;">r_max^carry（式R-9）</td>
  <td style="padding:6px 10px;">キャリー収益が r_max を見かけ上引き上げるが利上げで突然収縮</td>
  <td style="padding:6px 10px; text-align:center; color:orange;">短期拡大・利上げ時収縮</td>
</tr>
<tr style="background:#f8f8f8;">
  <td style="padding:6px 10px; font-weight:bold;">④</td>
  <td style="padding:6px 10px;">バブルの採掘（Brunnermeier et al.）</td>
  <td style="padding:6px 10px; text-align:center;">r_max^bubble（式R-11）</td>
  <td style="padding:6px 10px;">信任がある間は回廊拡大；信任崩壊（Q(n)急増）で突然消失</td>
  <td style="padding:6px 10px; text-align:center; color:orange;">信任依存型拡大</td>
</tr>
<tr>
  <td style="padding:6px 10px; font-weight:bold;">⑤</td>
  <td style="padding:6px 10px;">ゴールドリックス・ゾーン（Mian et al.）</td>
  <td style="padding:6px 10px; text-align:center;">生存の回廊の債務表現（式R-12）</td>
  <td style="padding:6px 10px;">BCOTは政策ペア空間で、ゴールドリックスは債務空間で同じ安全域を定義</td>
  <td style="padding:6px 10px; text-align:center;">等価な表現</td>
</tr>
<tr style="background:#f8f8f8;">
  <td style="padding:6px 10px; font-weight:bold;">⑥</td>
  <td style="padding:6px 10px;">FTPL（Cochrane）</td>
  <td style="padding:6px 10px; text-align:center;">§H・式R-13</td>
  <td style="padding:6px 10px;">FTPLとBCOTは双方向の因果で接続；π*_upper が両理論の交点</td>
  <td style="padding:6px 10px; text-align:center;">相互強化的崩壊</td>
</tr>
<tr>
  <td style="padding:6px 10px; font-weight:bold;">⑦</td>
  <td style="padding:6px 10px;">無限の借り換え（Morimoto）</td>
  <td style="padding:6px 10px; text-align:center;">固有値条件（式R-14）</td>
  <td style="padding:6px 10px;">固有値 λ_1 &lt; e^{-g} ≡ BCOT勝率 p &gt; 1/2 （BC優勢フェーズ）</td>
  <td style="padding:6px 10px; text-align:center;">等価な条件</td>
</tr>
<tr style="background:#f8f8f8;">
  <td style="padding:6px 10px; font-weight:bold;">⑧</td>
  <td style="padding:6px 10px;">現代版トリフィン（Farhi &amp; Maggiori）</td>
  <td style="padding:6px 10px; text-align:center;">回廊収縮動学（式R-15）</td>
  <td style="padding:6px 10px;">債務増大が回廊幅 W(b) を単調収縮させる；臨界点 b* で回廊消失</td>
  <td style="padding:6px 10px; text-align:center; color:red;">収縮↓</td>
</tr>
<tr>
  <td style="padding:6px 10px; font-weight:bold;">⑨</td>
  <td style="padding:6px 10px;">公共流動性（Angeletos et al.）</td>
  <td style="padding:6px 10px; text-align:center;">課税ベース拡大（式R-17）</td>
  <td style="padding:6px 10px;">国債が担保として課税ベースを拡大し R^real を押し上げる</td>
  <td style="padding:6px 10px; text-align:center; color:green;">拡大↑（最適量あり）</td>
</tr>
<tr style="background:#f8f8f8;">
  <td style="padding:6px 10px; font-weight:bold;">⑩</td>
  <td style="padding:6px 10px;">確率的持続可能性（Blanchard et al.）</td>
  <td style="padding:6px 10px; text-align:center;">確率的破産（式R-18-19）</td>
  <td style="padding:6px 10px;">BCOTのQ(n)がファン・チャートに相当；非線形相転移を自然に記述</td>
  <td style="padding:6px 10px; text-align:center;">尾部リスクの明示化</td>
</tr>
</tbody>
</table>
</div>

### R.4 統一BCOTフレームの拡張定式化

10パラダイムを統合した拡張BCOTの財政余力 $\widetilde{FM}$ を以下のように定義する：

$$\widetilde{FM}_{\text{upper}} \equiv \pi^*_{\text{upper}}(\tau, r, \ell_0, g, S_t, C_t, \mu_b, b) - \pi \tag{R-20}$$

ここで $S_t$（安全資産プレミアム）・$C_t$（連結キャリー収益）・$\mu_b$（公共流動性乗数）・$b$（回廊収縮効果）が $\pi^*_{\text{upper}}$ を内生的に決定する。

生存の回廊の幅の動学方程式（V16-拡張版）：

$$\dot{W} = \dot{W}^{\text{reform}} - \kappa_b \dot{b} - \kappa_S \dot{S}^{-}_t + \kappa_g \dot{g} \tag{R-21}$$

- $\dot{W}^{\text{reform}}$：構造改革（徴税ラグ短縮化・成長政策）による回廊拡大
- $-\kappa_b \dot{b}$：債務増大による回廊収縮（トリフィン効果）
- $-\kappa_S \dot{S}^{-}_t$：安全資産プレミアム消失による収縮（$\dot{S}^{-} \equiv \max(0, -\dot{S})$）
- $+\kappa_g \dot{g}$：成長率上昇による回廊拡大（$\pi^*_{\text{lower}}$ の下方シフト）

> **命題R2（生存の回廊の持続条件）：** $\dot{W} \ge 0$ を維持する（回廊が収縮しない）ためには、構造改革と成長の効果が債務増大とプレミアム消失を上回る必要がある。これが「生産性向上・徴税デジタル化・ALM最適化」を財政改革の最優先課題とする数理的根拠である。

---

## Z. 数学・確率論用語解説（V15から継続）

（Z.1〜Z.5：V15と同一）

### Z.6 式番号一覧（V16更新版）

| 式番号 | 内容 | 掲載箇所 |
|:---|:---|:---|
| 式1 | $\pi^*_{\text{upper}}$ の定義条件（実質税収極大） | §2.3 |
| 式2 | 財政余力 $FM_{\text{upper}} \equiv \pi^*_{\text{upper}} - \pi$ | §4.1 |
| 式3 | 財政安定フロンティア | §4.2 |
| 式3b | 税率下限臨界 $\tau_{\min}$（V16新設） | §4.4 |
| 式3c | 金利下限臨界 $r_{\min}$（V16新設） | §4.4 |
| 式4〜6 | 比較静学（τ・r・ℓ₀の効果） | §4.2 |
| 式7 | リスク調整最低税率 $\tau_{\min}^{\text{risk}}$ | §5.1 |
| 式8 | 財政安全マージン $FSM$ | §5.1 |
| 式9 | 最大許容金利 $r_{\max}$ | §5.2 |
| 式9b | 金利下限臨界（V16新設） | §5.4 |
| 式10 | 死のフィードバック・ループ | §5.2 |
| 式10b | 凍死フィードバック・ループ（V16新設） | §5.4 |
| 式11 | 財政金利余力 $FIM$ | §5.3 |
| 式11b | 金利下限余力 $FIM_{\text{lower}}$（V16新設） | §5.4 |
| 式12〜13 | 減税判定条件 | §6.1〜6.2 |
| 式14〜15 | FTPL基本式・安定指標 | §7 |
| 式16 | 破産確率の解析解 $Q(n)$ | §8.2 |
| 式17〜18 | 需要プル・コストプッシュ課税ベース | §9 |
| 式19〜29 | Technical Appendix B〜F | Part II |
| 式30a-b | FM上下限の定義（V16） | Part II §G |
| 式31a〜e | FM比較静学（V16更新） | Part II §G |
| 式32〜45 | Technical Appendix G〜L | Part II |
| 式46〜49 | 生存の回廊の定義（V16新設） | §4.4 |
| 式R-1〜R-21 | 現代マクロとの接続（V16新設） | Appendix R |

---

## ブログ設定ガイド：MermaidとKaTeXを正しく表示するために {#blog-config}

（V15から継続し、Mermaidベストプラクティスを強化）

### KaTeX数式が表示されない場合

**対処（`_layouts/post.html` または `_includes/head.html` に追加）：**

```html
<link rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/katex.min.css">
<script defer
  src="https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/katex.min.js"></script>
<script defer
  src="https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/contrib/auto-render.min.js"
  onload="renderMathInElement(document.body, {
    delimiters: [
      {left: '$$', right: '$$', display: true},
      {left: '$',  right: '$',  display: false},
      {left: '\\\\(', right: '\\\\)', display: false},
      {left: '\\\\[', right: '\\\\]', display: true}
    ],
    throwOnError: false
  });"></script>
```

**`_config.yml` の確認：**

```yaml
markdown: kramdown
kramdown:
  math_engine: null
  input: GFM
```

### Mermaid図が表示されない場合

**対処（`_layouts/post.html` の `</body>` 直前に追加）：**

```html
<script src="https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.min.js"></script>
<script>
  mermaid.initialize({
    startOnLoad: true,
    theme: 'default',
    flowchart: { useMaxWidth: true, htmlLabels: true }
  });
</script>
```

### Mermaidベストプラクティス（V16強化版）

**重要ルール一覧：**

1. **改行は `\n` でなく `<br>` を使用**（最重要）：
   ```
   × BASE["課税ベース\nY₀·e^{g(τ)·t}"]
   ○ BASE["課税ベース<br>Y₀ × exp(g(τ)×t)"]
   ```

2. **中括弧 `{ }` はノード内で使用不可**（Mermaidの構文と衝突）：
   ```
   × FM["FM\nπ*−π"]
   ○ FM["FM（財政余力）<br>π_upper* − π"]
   ```

3. **アスタリスク `*` は最小限に**（Markdownのイタリック・太字と衝突リスク）：
   ```
   × π*   ○ π_upper*  または  π*_upper
   ```

4. **下付き文字は `<sub>min</sub>` を使用**（HTMLタグが有効）：
   ```
   ○ τ<sub>min</sub>    ○ r<sub>max</sub>
   ```

5. **特殊文字 `( )` `[ ]` `< >` はダブルクォート内に閉じ込める**：
   ```
   ○ NODE["(τ, r) ∈ C(π)"]
   ```

6. **テーブル内の数式はプレーンテキストで記述**：
   ```
   × $FM < 0$   ○ FM < 0   または   FM &lt; 0（HTML内）
   ```

### リポジトリ全体の修正について

Mermaid・KaTeX の表示問題を根本的に修正するには、以下のファイルへのアクセスが必要です：

- `_layouts/post.html`（または対応するレイアウトファイル）
- `_includes/head.html`（またはhead相当）
- `_config.yml`

Jekyllリポジトリ全体（または上記ファイルのみ）をzip等で共有いただければ、直接修正して返却できます。GitHubリポジトリのURLを共有いただく場合は、`_layouts/` と `_includes/` フォルダの確認が必要です。

---

## 参考文献 {#refs}

**OT効果の原典：**
- Olivera, J. H. G. (1967). "Money, Prices and Fiscal Lags." *Banca Nazionale del Lavoro Quarterly Review*, 77, 258–267.
- Tanzi, V. (1977). "Inflation, Lags in Collection, and the Real Value of Tax Revenue." *IMF Staff Papers*, 24(1), 154–167.
- Tanzi, V. (1978). "Inflation, Real Tax Revenue, and the Case for Inflationary Finance." *IMF Staff Papers*, 25(3), 417–451.

**FTPL・財政理論：**
- Leeper, E. M. (1991). "Equilibria under 'Active' and 'Passive' Monetary and Fiscal Policies." *Journal of Monetary Economics*, 27(1), 129–147.
- Sims, C. A. (1994). "A Simple Model for Study of the Determination of the Price Level." *Economic Theory*, 4(3), 381–399.
- Woodford, M. (1995). "Price-Level Determinacy without Control of a Monetary Aggregate." *Carnegie-Rochester Conference Series*, 43, 1–46.
- Sims, C. A. (2013). "Paper Money." *American Economic Review*, 103(2), 563–584.
- Cochrane, J. H. (2023). *The Fiscal Theory of the Price Level*. Princeton University Press.
- Blanchard, O. (2019). "Public Debt and Low Interest Rates." *American Economic Review*, 109(4), 1197–1229.

**現代マクロ経済学（V16追加）：**
- Reis, R. (2021). "The Constraint on Public Debt when r < g but g < m." *CEPR Discussion Paper*.
- Angeletos, G.-M., Lian, C., & Wolf, C. K. (2024). "Can Deficits Finance Themselves?" *NBER Working Paper* 31185.
- Chien, Y.-L., Cole, H. L., & Lustig, H. (2025). "What about Japan?" *NBER Working Paper*.
- Brunnermeier, M., Merkel, S., & Sannikov, Y. (2022). "Debt as a Safe Asset: Mining the Bubble." *NBER Working Paper*.
- Mian, A., Straub, L., & Sufi, A. (2021). "A Goldilocks Theory of Fiscal Policy." *NBER Working Paper*.
- Farhi, E., & Maggiori, M. (2018). "A Model of the International Monetary System." *QJE*, 133(1), 295–355.
- Angeletos, G.-M., Collard, F., & Dellas, H. (2023). "Public Debt as Private Liquidity: Optimal Policy." *JPE*, 131(11), 2893–2947.
- Blanchard, O., Leandro, Á., & Zettelmeyer, J. (2021). "Redesigning EU fiscal rules: From rules to standards." *Economic Policy*, 36(106), 195–236.
- Morimoto, K. (2026). "Debt Rollover and Term Structure in an Overlapping Generations Economy." *Working Paper*.

**ハイパーインフレ・財政崩壊：**
- Cagan, P. (1956). "The Monetary Dynamics of Hyperinflation." In *Studies in the Quantity Theory of Money* (Ed. Friedman, M.). University of Chicago Press.
- Sargent, T. J. (1982). "The Ends of Four Big Inflations." In *Inflation: Causes and Effects* (Ed. Hall, R. E.). NBER / University of Chicago Press.
- Bruno, M., & Fischer, S. (1990). "Seigniorage, Operating Rules, and the High Inflation Trap." *QJE*, 105(2), 353–374.
- Fischer, S., Sahay, R., & Végh, C. A. (2002). "Modern Hyper- and High Inflations." *JEL*, 40(3), 837–880.

**確率論・数理ファイナンス：**
- Feller, W. (1968). *An Introduction to Probability Theory and Its Applications, Vol. 1* (3rd ed.). Wiley. [定理9.2（ギャンブラーの破産）]

**財政持続性・動学：**
- Barro, R. J. (1979). "On the Determination of Public Debt." *JPE*, 87(5), 940–971.
- Saez, E. (2001). "Using Elasticities to Derive Optimal Income Tax Rates." *RES*, 68(1), 205–229.
- Creedy, J. (1985). *Dynamics of Income Distribution*. Basil Blackwell.

**統計・データ出典：**
- 財務省 (2025).「国の財務書類」.
- GPIF (2025).「2024年度運用状況報告書」.
- IMF (2025). *World Economic Outlook*, April 2025.
- OECD (2025). *Fiscal Monitor*, October 2025.
