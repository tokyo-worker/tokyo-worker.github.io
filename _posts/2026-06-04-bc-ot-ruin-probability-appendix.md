---
layout: post
title: "BC-OT財政安定性フレームワーク：Technical Appendix — ギャンブラーの破産確率と政府部門入りRBCの統合"
date: 2026-06-04 09:00:00 +0900
categories: economics
math_scripts:
  - https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/katex.min.js
  - https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/contrib/auto-render.min.js
---

<style>
  h1 { font-size: 1.4rem; margin-top: 2.8rem; margin-bottom: 1.2rem; font-weight: bold; border-bottom: 1px solid #eee; padding-bottom: 0.3rem; }
  h2 { font-size: 1.25rem; margin-top: 2.4rem; margin-bottom: 1.0rem; font-weight: bold; }
  h3 { font-size: 1.15rem; margin-top: 2.0rem; margin-bottom: 0.8rem; font-weight: bold; }
  h4 { font-size: 1.05rem; margin-top: 1.6rem; margin-bottom: 0.6rem; font-weight: bold; }
  p, table, blockquote, pre { line-height: 1.25; margin-bottom: 1.3rem; }
  .eq-label { float: right; color: #888; font-size: 0.9rem; }
  .regime-table { width: 100%; border-collapse: collapse; margin-bottom: 1.3rem; }
  .regime-table th { background: #f0f0f0; padding: 0.5rem 0.8rem; border: 1px solid #ddd; text-align: left; }
  .regime-table td { padding: 0.45rem 0.8rem; border: 1px solid #ddd; vertical-align: top; }
  .regime-table tr:nth-child(even) td { background: #fafafa; }
  .boxed-eq { border: 1.5px solid #1a3a6c; border-radius: 4px; padding: 0.6rem 1.2rem; margin: 1rem 0; background: #f6f8fc; }
  .loop-chain { font-family: monospace; font-size: 0.95rem; background: #f4f4f4; border-left: 3px solid #1a3a6c; padding: 0.6rem 1rem; margin: 1rem 0; overflow-x: auto; }
  .section-tag { display: inline-block; background: #1a3a6c; color: white; font-size: 0.72rem; letter-spacing: 0.08em; padding: 0.15rem 0.5rem; border-radius: 2px; margin-right: 0.5rem; font-family: monospace; }
  .callout { background: #f0f4fa; border-left: 4px solid #1a3a6c; padding: 0.8rem 1.2rem; margin: 1rem 0; }
  .callout-warn { background: #fff8f0; border-left: 4px solid #b8860b; padding: 0.8rem 1.2rem; margin: 1rem 0; }
</style>

---

> **本 Appendix の位置づけ**
> BC-OT整理（「BC-OT・ギャンブラーの破産・インフレ動学の整理」）の設定を基礎として、(1) インフレがランダムに動くケース、(2) 政府部門入りRBCを前提としたケース、の二段階で財政破産確率の解析解を導出する。変数・項はすべて言語化し、高校〜大学初期の知識で本質を掴めるよう離散時間の補足説明を付す。

---

# <span class="section-tag">PART A</span> 財政構造の基本設定

## A.1　BC-OT 実質税収関数

インフレ率 $\pi$ の関数として、実質税収 $R^{\mathrm{real}}(\pi)$ を以下のように構成する。

$$\underbrace{R^{\mathrm{real}}(\pi)}_{\text{実質税収}} = \underbrace{\tau(\pi)}_{\substack{\text{BC効果} \\ \text{実効税率}}} \times \underbrace{(1+\pi)}_{\substack{\text{名目課税} \\ \text{ベース拡大}}} \times \underbrace{e^{-\pi \ell(\pi)}}_{\substack{\text{OT効果} \\ \text{徴税ラグ侵食}}} \times \underbrace{(1-\lambda\tau(\pi))}_{\substack{\text{バロー型} \\ \text{歪みコスト}}} \tag{A.1}$$

**各項の意味：**

- $\tau(\pi)$：ブラケット・クリープ（BC）効果による実効税率。インフレで納税者が高税率ブラケットに移動するため $\tau'(\pi) > 0$、ただし最高税率 $\tau_{\max}$ で飽和するため**有界**。
- $(1+\pi)$：インフレによる名目課税ベースの拡大。実質所得が同じでも名目所得が膨らむため、課税対象が増える。
- $e^{-\pi \ell(\pi)}$：オリベラ＝タンジ（OT）侵食因子。$\ell(\pi)$ は徴税タイムラグ（月数）で、高インフレ下でロジスティック的に急増（$\ell'(\pi) > 0$）。この因子は $[0,1]$ に有界だが、その**急落速度**（$\ell(\pi) + \pi\ell'(\pi)$）に上限はない。
- $(1-\lambda\tau(\pi))$：バロー型の歪みコスト項。実効税率上昇が成長を抑制し、課税ベースを縮小させることを反映（$\lambda > 0$）。

<div class="callout">
<strong>BC有界性 vs OT累積支配性（直感）：</strong><br>
高校数学で言えば、BC効果は「有限の天井がある等比数列の和」、OT効果の限界侵食力は「収束しない調和級数」に似ている。インフレが上昇し続けると、前者は頭打ちになる一方、後者は加速し続ける。これが臨界点 $\pi^*$ の存在根拠である。
</div>

$$\underbrace{\frac{\partial R^{\mathrm{real}}(\pi^*)}{\partial \pi} = 0}_{\text{BC効果の限界増収 ＝ OT効果の限界侵食}} \tag{A.2}$$

---

## A.2　政府の純資産（財産）過程

ギャンブラーの破産モデルを政府に適用するために、政府の「財産」を純資産 $W_t$ として定義する。

$$\underbrace{W_{t+1}}_{\text{来期の純資産}} = \underbrace{W_t}_{\text{今期の純資産}} + \underbrace{R^{\mathrm{real}}(\pi_t)}_{\text{実質税収（収入）}} - \underbrace{G^{\mathrm{nec}}_t}_{\text{必要政府支出}} - \underbrace{r_t \cdot D_t}_{\text{政府負債の利息払い}} \tag{A.3}$$

**各項の意味：**

- $W_t$：政府のBS純資産（債務超過 $W_t < 0$ も許容）。政府の目的は利潤最大化でないため、民間企業と異なり適度な債務超過は正常状態。
- $R^{\mathrm{real}}(\pi_t)$：式(A.1)の実質税収。インフレ率によって内生的に変動する。
- $G^{\mathrm{nec}}_t$：必要政府支出。公共財（GDPにカウントされる支出）と社会保険給付等（GDPにカウントされない支出）を含む。
- $r_t \cdot D_t$：政府負債残高 $D_t$ に対する実質利息払い。

<div class="callout">
<strong>離散時間での直感（高校数学の複利計算）：</strong><br>
$r_t$ を期の実質金利とすると、$D_{t+1} \approx (1 + r_t) D_t + (G^{\mathrm{nec}}_t - R^{\mathrm{real}}_t)$ であり、「元本 × 金利 + 新規借入」という複利計算の構造と同じ。利払いが税収を上回り続けると $W_t$ は雪だるま式に悪化する。
</div>

---

## A.3　ゲームの勝率：BC-OT の綱引きを確率で表現する

各期 $t$ に、インフレの実現値 $\pi_t$ に応じて「財政が改善したか（勝ち）、悪化したか（負け）」を定義する。

$$\underbrace{p(\pi)}_{\text{勝率（財政改善確率）}} = \Pr\!\left[\Delta W_t > 0 \,\Big|\, \pi_t = \pi\right] = \Pr\!\left[R^{\mathrm{real}}(\pi) > G^{\mathrm{nec}}_t + r_t D_t\right] \tag{A.4}$$

BC-OT分析から、勝率は以下の三つのレジームに分類される。

<table class="regime-table">
<thead>
<tr><th>レジーム</th><th>条件</th><th>勝率の性質</th></tr>
</thead>
<tbody>
<tr><td><strong>BC優勢</strong></td><td>$\pi &lt; \pi^*$（上限臨界未満）</td><td>$p(\pi) &gt; 1/2$：財政が期待値ベースで改善</td></tr>
<tr><td><strong>均衡点</strong></td><td>$\pi = \pi^*$</td><td>$p(\pi) = 1/2$：BC効果 ＝ OT効果</td></tr>
<tr><td><strong>OT優勢</strong></td><td>$\pi &gt; \pi^*$</td><td>$p(\pi) &lt; 1/2$：財政が期待値ベースで悪化</td></tr>
</tbody>
</table>

---

# <span class="section-tag">PART B</span> ケース１：インフレがランダムに動く場合の破産確率

## B.1　モデル設定

インフレが毎期独立に、確率 $p$ で「勝ち（財政改善）」、確率 $q = 1 - p$ で「負け（財政悪化）」をもたらすと仮定する。

$$\underbrace{W_{t+1} = W_t + \Delta}_{\text{改善（確率 }p\text{）}} \qquad \text{または} \qquad \underbrace{W_{t+1} = W_t - \Delta}_{\text{悪化（確率 }q = 1-p\text{）}} \tag{B.1}$$

<div class="callout">
<strong>直感：</strong>これは高校確率で習う「コインを投げて賭けを繰り返すゲーム」とまったく同じ構造である。ただしコインの表が出る確率 $p$ は「インフレ率が BC優勢フェーズにあるか OT優勢フェーズにあるか」によって決まる点が、純粋な確率ゲームとの決定的な違いである。
</div>

## B.2　標準的なギャンブラーの破産問題の設定

政府の初期純資産を $W_0$（単位は $\Delta$ で正規化して $w_0 = W_0 / \Delta \in \mathbb{Z}$）、破産吸収壁を $w = 0$、国債の民間引受け上限を $w = N$ とする。

$$\underbrace{Q(w)}_{\text{初期財産 }w\text{ からの破産確率}} = \underbrace{p \cdot Q(w+1)}_{\text{今期勝ち→財産 }w{+}1\text{ から再出発}} + \underbrace{q \cdot Q(w-1)}_{\text{今期負け→財産 }w{-}1\text{ から再出発}} \tag{B.2}$$

境界条件：$Q(0) = 1$（財産ゼロ＝破産確定）、$Q(N) = 0$（発行上限到達＝安定）。

<div class="callout">
<strong>離散時間での補足（オイラー方程式の破産版）：</strong><br>
式(B.2)は「来期に財産が1増える確率 $p$ と1減る確率 $q$ の加重平均が今期の破産確率に等しい」という整合性条件である。初期財産が $w+1$ の場合の破産確率と $w-1$ の場合を $p, q$ で加重した値が、$w$ の場合に一致しなければならない（ベルマン方程式）。
</div>

## B.3　解析解

特性方程式の一般解は $Q(w) = A + B \cdot r^w$（$r = q/p$ が特性根）であり、境界条件を適用すると：

<div class="boxed-eq">

$$Q(w) = \frac{(q/p)^w - (q/p)^N}{1 - (q/p)^N} \qquad (p \neq q \text{ の場合}) \tag{B.3a}$$

$$Q(w) = 1 - \frac{w}{N} \qquad (p = q = 1/2 \text{ の場合、臨界点 } \pi = \pi^*) \tag{B.3b}$$

</div>

**各項の意味：**

- $(q/p)^w$：初期財産 $w$ の「不利さ指数」。OT優勢（$q > p$）なら $q/p > 1$ となり、初期財産が多くても破産確率が高い。
- $(q/p)^N$：国債発行上限 $N$ における確率。上限が大きいほど生き残りやすい。
- $1 - w/N$（臨界点）：公平なコイン投げと同じ状況。破産確率は財産の欠乏率 $(N - w)/N$ に等しい。

**特別ケース：上限なし（$N \to \infty$）**

国債の民間引受け能力に上限がない（完全資本市場）と仮定すると：

$$\underbrace{Q(w)}_{\text{破産確率（上限なし）}} = \begin{cases} \left(\dfrac{q}{p}\right)^{\!w} & p > q \;\text{（BC優勢：有限の破産確率）} \\[8pt] 1 & p \leq q \;\text{（OT優勢：確率1で必ず破産）} \end{cases} \tag{B.4}$$

<div class="callout-warn">
<strong>OT優勢レジームの帰結：</strong>$p &lt; 1/2$ のとき、国債が無限に発行できても最終的には必ず破産する。「不公平なコインで無限に賭け続けると胴元（民間債権者）が必ず勝つ」という確率論の基本定理の財政版である。逆にBC優勢なら、初期財産 $w$ が大きいほど破産確率 $(q/p)^w$ は指数関数的に小さくなる。
</div>

---

## B.4　BC-OT 設定と勝率の対応（まとめ）

勝率 $p(\pi)$ を式(A.4)で内生化すると、破産確率 $Q$ は $\pi$ の関数となる。

$$\underbrace{Q_{\mathrm{BC}}(w, \pi)}_{\text{BC優勢レジームの破産確率}} = \left(\frac{1-p(\pi)}{p(\pi)}\right)^{\!w}, \qquad p(\pi) > \frac{1}{2} \quad (\pi < \pi^*) \tag{B.5a}$$

$$\underbrace{Q_{\mathrm{OT}}(w, \pi)}_{\text{OT優勢レジームの破産確率}} = 1 \qquad (N \to \infty \text{ 極限}), \qquad p(\pi) < \frac{1}{2} \quad (\pi > \pi^*) \tag{B.5b}$$

**要点：** 臨界点 $\pi^*$ はゲームの「公平性が逆転するインフレ率」であり、その前後で破産確率の挙動が劇的に変化する。$N \to \infty$ の極限では $\pi^*$ 超過の瞬間に確率が不連続に1へジャンプする（相転移）。

---

# <span class="section-tag">PART C</span> ケース２：政府部門入りRBC との統合

## C.1　RBC モデルの枠組み（政府部門あり）

政府部門入りRBCでは、以下の均衡体系が成立する。

$$\underbrace{1 = R_{t+1}\beta\!\left(\frac{C_{t+1}}{C_t}\right)^{\!-\sigma}}_{\text{家計のオイラー方程式}} \tag{C.1}$$

$$\underbrace{R_t = \alpha A_t\!\left(\frac{K_t}{L_t}\right)^{\!\alpha-1} + 1 - \delta}_{\text{資本の限界生産物 ＝ 資本収益率}} \tag{C.2}$$

$$\underbrace{b_{t+1} = R_t b_t + G_t - \tau_t}_{\text{政府のフロー予算制約}} \tag{C.3}$$

$$\underbrace{Y_t = C_t + I_t + G_t}_{\text{財市場清算}} \tag{C.4}$$

ここで $R_t$ は実質グロス金利、$b_t$ は政府の実質国債残高、$G_t$ は政府実質支出、$\tau_t$ は実質税収（本モデルでは BC-OT 関数により内生化）。

## C.2　名目化：インフレと金利の相互依存関係の導出

### Step 1：フィッシャー方程式による名目化

$$\underbrace{\tilde{R}_t}_{\text{名目金利}} = \underbrace{R_t}_{\text{実質金利}} \times \underbrace{(1 + \pi_t)}_{\text{インフレ調整}} \approx R_t + \pi_t \qquad (\text{低インフレ近似}) \tag{C.5}$$

### Step 2：税収の内生化

BC-OT関数(A.1)により実質税収 $\tau_t$ をインフレ率の関数として内生化する。

$$\tau_t = R^{\mathrm{real}}(\pi_t) = \tau(\pi_t) \cdot (1+\pi_t) \cdot e^{-\pi_t \ell(\pi_t)} \cdot (1-\lambda\tau(\pi_t)) \tag{C.6}$$

### Step 3：相互依存ループの成立

RBCのオイラー方程式(C.1)から定常状態では $\bar{R} = 1/\beta$。名目金利にはリスクプレミアム $\rho^{\mathrm{risk}}$ が加わる。

$$\underbrace{\tilde{R}_t}_{\text{名目金利}} = \underbrace{R^f_t}_{\text{安全資産金利}} + \underbrace{\rho^{\mathrm{risk}}_t(\pi_t,\, Q_t)}_{\text{リスクプレミアム}} + \underbrace{\pi^e_t}_{\text{期待インフレ}} \tag{C.7}$$

合理的期待（$\pi^e_t \approx \pi_t$）のもとで、以下の**閉じた相互依存ループ**が成立する。

<div class="loop-chain">
π<sub>t</sub>  →  τ<sub>t</sub> = R<sup>real</sup>(π<sub>t</sub>)  →  W<sub>t</sub>  →  Q<sub>t</sub>(π<sub>t</sub>, W<sub>t</sub>)  →  ρ<sup>risk</sup><sub>t</sub>  →  R̃<sub>t</sub>  →  π<sub>t</sub>
</div>

$$\pi_t \;\longrightarrow\; \tau_t = R^{\mathrm{real}}(\pi_t) \;\longrightarrow\; W_t \;\longrightarrow\; Q_t(\pi_t, W_t) \;\longrightarrow\; \rho^{\mathrm{risk}}_t \;\longrightarrow\; \tilde{R}_t \;\longrightarrow\; \pi_t \tag{C.8}$$

**相互依存関係は成立するか？** → **成立する。**

経路(C.8)は「インフレ → 実質税収（BC-OT）→ 政府純資産 → 破産確率 → リスクプレミアム → 名目金利 → 期待インフレ → インフレ」という閉じたフィードバックループを形成する。RBCの実質部門（資本蓄積・消費のオイラー方程式）と財政の名目部門（BC-OT・破産確率）が名目金利を通じて結びつくことで、このループが**内生化**される。

---

## C.3　対数線形化：動学方程式への統合

RBC の対数線形化体系に BC-OT 税収関数と財政純資産過程を追加する。

**追加状態変数：** $\hat{W}_t := (W_t - \bar{W})/\bar{W}$（純資産の定常値からの対数偏差）。

**BC-OT 税収の線形化：** $R^{\mathrm{real}}(\pi_t)$ を定常値 $\bar{\pi}$ 周りで一次近似すると、

$$\underbrace{\hat{\tau}_t}_{\text{実質税収の対数偏差}} \approx \underbrace{\left(\epsilon^{\mathrm{BC}}_\pi - \epsilon^{\mathrm{OT}}_\pi\right)}_{\text{ネット弾力性 }\epsilon^{\mathrm{net}}_\pi} \cdot \hat{\pi}_t \tag{C.9}$$

ここで：

- $\epsilon^{\mathrm{BC}}_\pi := \left.\dfrac{\partial \log[\tau(\pi)(1+\pi)(1-\lambda\tau(\pi))]}{\partial \log(1+\pi)}\right|_{\bar{\pi}}$：BC効果の弾力性（正）
- $\epsilon^{\mathrm{OT}}_\pi := \left.\dfrac{\partial [\pi \ell(\pi)]}{\partial \pi}\right|_{\bar{\pi}} = \ell(\bar{\pi}) + \bar{\pi}\ell'(\bar{\pi})$：OT効果の限界侵食力（正）

$\epsilon^{\mathrm{net}}_\pi > 0$ ならば BC 優勢フェーズ（$\hat{\pi}_t > 0$ で税収増）、$\epsilon^{\mathrm{net}}_\pi < 0$ ならば OT 優勢フェーズ（$\hat{\pi}_t > 0$ で税収減）。

**財政純資産の線形化：**

$$\underbrace{\hat{W}_{t+1}}_{\text{純資産偏差}} = \underbrace{\bar{R} \cdot \hat{W}_t}_{\text{既存純資産の運用}} + \underbrace{\epsilon^{\mathrm{net}}_\pi \cdot \hat{\pi}_t}_{\text{BC-OT ネット税収}} - \underbrace{\psi_D \cdot \hat{D}_t}_{\text{利払い負担}} - \underbrace{\hat{G}_t}_{\text{政府支出ショック}} \tag{C.10}$$

ここで $\psi_D = \bar{r}\bar{D}/\bar{W}$ は純資産に対する利払い負担比率。

**リスクプレミアムの線形化：**

$$\underbrace{\hat{\rho}^{\mathrm{risk}}_t}_{\text{リスクプレミアム偏差}} = \underbrace{\phi_Q \cdot \hat{Q}_t}_{\text{破産確率への感応度}} \approx \underbrace{-\phi_Q \cdot \phi_W \cdot \hat{W}_t}_{\text{純資産経由の金利上昇}} \tag{C.11}$$

ここで $\phi_W = -\partial \log Q / \partial \hat{W}\big|_{\bar{W}} > 0$（純資産改善 → 破産確率低下）。

---

## C.4　拡張状態空間表現

RBC の標準的な $2 \times 2$ 状態空間に純資産 $\hat{W}_t$ を第3の状態変数として追加する。

$$\underbrace{\begin{bmatrix} \hat{K}_{t+1} \\ \hat{C}_{t+1} \\ \hat{W}_{t+1} \end{bmatrix}}_{\text{拡張状態ベクトル}} = \underbrace{\begin{bmatrix} \gamma_{11} & \gamma_{12} & 0 \\ \gamma_{21} & \gamma_{22} & \gamma_{23} \\ 0 & 0 & \gamma_{33} \end{bmatrix}}_{\text{拡張遷移行列 }\tilde{\Gamma}} \begin{bmatrix} \hat{K}_t \\ \hat{C}_t \\ \hat{W}_t \end{bmatrix} + \underbrace{\begin{bmatrix} \omega_1 \\ \omega_2 \\ \omega_3 \end{bmatrix}}_{\tilde{\Omega}} \varepsilon_{t+1} \tag{C.12}$$

**新たな行列要素の意味：**

- $\gamma_{23}$：純資産 $\hat{W}_t$ が消費成長 $\hat{C}_{t+1}$ に与える影響。経路は $\hat{W}_t \to \hat{\rho}^{\mathrm{risk}}_t \to \tilde{R}_t \to \hat{C}_{t+1}$（オイラー方程式経由）。

$$\gamma_{23} = \frac{\phi_Q \phi_W}{\sigma \mu} \quad \left(< 0 \text{ ：純資産改善} \to \text{リスクプレミアム低下} \to \text{消費成長加速}\right) \tag{C.13}$$

- $\gamma_{33} = \bar{R} - \psi_D$：純資産の自己回帰係数。$\gamma_{33} > 1$ ならば純資産は発散（財政不安定）、$\gamma_{33} < 1$ ならば収束（財政安定）。
- $\omega_3$：$G_t$ のショック（$= -1$）または TFPショック経由のインフレ変動効果（$= \epsilon^{\mathrm{net}}_\pi \cdot \partial \hat{\pi}/\partial \varepsilon$）。

**BK条件の拡張：** 本拡張では先決変数が $\hat{K}_t, \hat{W}_t$ の2本、ジャンプ変数が $\hat{C}_t$ の1本となる。$\tilde{\Gamma}$ の固有値のうち**絶対値 > 1 のものが正確に1本**であることがBK条件（均衡一意性の必要十分条件）。

---

## C.5　RBC 統合下での破産確率

### C.5.1　勝率の内生化

RBC均衡では $\hat{\pi}_t$ は TFP ショック $\varepsilon_t$ および状態変数から内生的に決まるため、勝率 $p_t$ も内生変数となる：

$$\underbrace{p_t(\hat{K}_t, \hat{C}_t, \hat{W}_t, \varepsilon_t)}_{\text{内生的勝率}} = \Pr\!\left[\epsilon^{\mathrm{net}}_\pi \cdot \hat{\pi}_t(\hat{K}_t, \hat{C}_t, \varepsilon_t) > \psi_D \hat{D}_t + \hat{G}_t\right] \tag{C.14}$$

TFPショックが起きると $\hat{\pi}_t$ が変動し、BC-OT のネット税収に影響する。これはRBCと財政が「同じ外的ショックに反応する」という意味での内生的相互依存である。

### C.5.2　条件付き破産確率の解析解

対数線形化の正規性仮定のもとで $\hat{\pi}_t \sim \mathcal{N}(\mu_\pi(\hat{K}_t, \hat{C}_t),\, \sigma^2_\pi)$ とすると、勝率は：

$$p_t = \Phi\!\left(\frac{\epsilon^{\mathrm{net}}_\pi \mu_\pi - (\psi_D \hat{D}_t + \hat{G}_t)}{\sigma_\pi \lvert\epsilon^{\mathrm{net}}_\pi\rvert}\right) \tag{C.15}$$

ここで $\Phi(\cdot)$ は標準正規分布の累積分布関数。これをケース1の解析解に代入すると、定常状態近傍での破産確率は：

$$\underbrace{Q(w_0)}_{\text{初期純資産 }w_0\text{ からの破産確率}} \approx \left(\frac{\bar{q}}{\bar{p}}\right)^{\!w_0} \cdot \exp\!\left(-2 w_0 \sum_{t=1}^{\infty} \beta^t \,\mathrm{Cov}[p_t - \bar{p},\; w_t - w_0]\right) \tag{C.16}$$

第1項はケース1の解析解(B.4)に対応し、第2項は **RBC 動学が生み出す財政改善確率の時系列共分散**による修正項である。

### C.5.3　「死のフィードバック・ループ」の解析的特徴付け

式(C.8)のフィードバックループが自己実現的に強化される（スパイラル入り）条件は：

<div class="boxed-eq">

$$\underbrace{\phi_Q \cdot \phi_W \cdot \frac{1}{\sigma \mu}}_{\text{破産確率→金利→消費→純資産のフィードバック強度}} > \underbrace{\epsilon^{\mathrm{net}}_\pi \cdot \bar{\pi}}_{\text{BC-OT ネット税収の定常バッファー}} \tag{C.17}$$

</div>

左辺がバッファーを超えると、小さなインフレ上昇がリスクプレミアムを通じて金利を上昇させ、それがさらに財政を悪化させる「死のスパイラル」が発生する。このスパイラルに入ると式(B.5b)の $Q = 1$ 吸収壁へ引き込まれ、破産が確定的となる。

---

# <span class="section-tag">PART D</span> 結果の整理と含意

## D.1　解析解の比較

<table class="regime-table">
<thead>
<tr><th>設定</th><th>破産確率の解析解</th><th>特徴</th></tr>
</thead>
<tbody>
<tr>
  <td><strong>ケース1：ランダムインフレ</strong><br>（定常勝率 $p$、有限上限 $N$）</td>
  <td>$Q(w) = \dfrac{(q/p)^w - (q/p)^N}{1-(q/p)^N}$</td>
  <td>閉形式解。$\pi$ の関数として直接評価可能</td>
</tr>
<tr>
  <td><strong>ケース1：ランダムインフレ</strong><br>（上限なし $N \to \infty$）</td>
  <td>BC優勢：$(q/p)^w$<br>OT優勢：$1$</td>
  <td>相転移：$\pi^*$ 超過で確率が不連続に1へジャンプ</td>
</tr>
<tr>
  <td><strong>ケース2：RBC統合</strong><br>（定常状態近傍）</td>
  <td>$Q(w_0) \approx (\bar{q}/\bar{p})^{w_0} \times \text{（動学補正項）}$</td>
  <td>TFPショックとBC-OTが絡む内生的勝率</td>
</tr>
<tr>
  <td><strong>ケース2：死のループ</strong><br>（条件(C.17)成立時）</td>
  <td>$Q \to 1$（確率1で破産）</td>
  <td>自己実現的均衡：金利急騰が財政を引き込む</td>
</tr>
</tbody>
</table>

## D.2　パラメーター感応度の直感

$$\frac{\partial Q(w)}{\partial w}\bigg|_{\text{ケース1}} = \ln\!\left(\frac{q}{p}\right)\!\left(\frac{q}{p}\right)^{\!w} < 0 \qquad (p > q) \tag{D.1}$$

初期純資産が1単位（$\Delta$）増えるたびに、破産確率は $q/p$ 倍ずつ指数関数的に低下する。これは「財政バッファーの限界的価値が対数的に逓減する」ことを意味し、財政規律の**早期確立**が後からの改善よりも劇的に効果的であることを示す。

## D.3　次のステップ：数値シミュレーションへの橋渡し

解析解(B.3)と(C.16)は、以下のパラメーター設定のもとで数値的に評価される（§ E 以降で展開予定）。

| パラメーター | 内容 | 設定方法 |
|:---|:---|:---|
| $\epsilon^{\mathrm{BC}}_\pi,\, \epsilon^{\mathrm{OT}}_\pi$ | BC-OT弾力性 | データからのカリブレーション |
| $\alpha = 1/3,\, \beta = 0.99,\, \delta = 0.025,\, \sigma = 2,\, \gamma = 1$ | RBCパラメーター | 標準値（米国長期統計） |
| $\bar{D}/\bar{Y},\; \bar{G}/\bar{Y}$ | 財政パラメーター | 国債GDP比・政府支出比 |
| $\phi_Q,\; \phi_W$ | リスク感応度 | 推計が必要（感応度分析の対象） |

---

*（本 Technical Appendix ドラフト版。数値シミュレーション・カリブレーション章は § E 以降に追加予定）*

---

## ブログ設定ガイド：KaTeXを正しく表示するために

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
      {left: '\\(', right: '\\)', display: false},
      {left: '\\[', right: '\\]', display: true}
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

