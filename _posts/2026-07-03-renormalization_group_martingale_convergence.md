---
layout: post
title: "時間スケールのくりこみ群とマルチンゲール収束定理：Theoretical Minimum"
date: 2026-07-03 00:00:00 +0900
categories: [確率過程, 市場マイクロストラクチャー]
math: true
---

# 時間スケールのくりこみ群とマルチンゲール収束定理
### Theoretical Minimum

> **本稿の位置付け．** 物理学の**くりこみ群（Renormalization Group, RG）**は，ミクロなスケールの詳細を粗視化（coarse-graining）していったときに，系を特徴づけるパラメータがどのように「流れる（flow）」かを追跡し，最終的にたどり着く不動点（fixed point）を特定する理論的枠組みである．
> 本稿は，計算資源の有限性に由来する市場の「予測可能な歪み（非マルチンゲール項）」が，観測時間スケールを粗視化するにつれて減衰し，ガウス的な不動点（＝経済学のマルチンゲール・無裁定の世界）へ収束する過程を，Ornstein-Uhlenbeck型の線形確率システムを用いて self-contained に導出する．下流モデルとして，戦略のロールオーバー周期（メゾスコピック時間軸）の最適化（別稿：改善版戦略レポート）への接続点を明示する．

---

## 目次

1. [数理的俯瞰と厳密な導出](#1-数理的俯瞰と厳密な導出)
   - 1.1 [中心命題と帰結](#11-中心命題と帰結結論の明示)
   - 1.2 [基礎定義と前提](#12-基礎定義と前提)
   - 1.3 [導出](#13-導出厳密な数理変形と言葉による直感的理解の並行)
   - 1.4 [式(1)の解釈](#14-式1の解釈極端な状態の解剖)
   - 1.5 [知識の構造図](#15-知識の構造図)
2. [設例：3段階の具体例と詳細解説](#2-設例3段階の具体例と詳細解説)
   - 2.1 [初歩的設例](#21-初歩的設例完全な数値計算と詳細なステップ解説)
   - 2.2 [中級設例](#22-中級設例隣接理論との代数的接続)
   - 2.3 [上級設例](#23-上級設例現実データ実証パズルへの接続)
3. [知識体系における位置付け](#3-知識体系における位置付け表)
4. [参考文献・先行研究](#4-参考文献先行研究)
5. [補論](#補論a-オルンシュタインウーレンベック過程の解の完全導出)

---

## 1. 数理的俯瞰と厳密な導出

### 1.1 中心命題と帰結（結論の明示）

{% raw %}
$$\boxed{S_{t+T}-S_t = \int_t^{t+T}\epsilon_s\,ds + \int_t^{t+T}\sigma\,dW_s, \qquad \frac{\mathrm{SNR}(T)}{\mathrm{SNR}(0)} = O\!\left(T^{-1/2}\right)\ \ (T\gg\tau_{\text{arb}})} \tag{1}$$
{% endraw %}

*すなわち，価格変化は「計算資源の有限性に由来する予測可能な歪み $\epsilon_s$（緩和時間 $\tau_{\text{arb}}$ で減衰）」と「純粋なランダムノイズ」の和として書け，観測期間 $T$ を裁定緩和時間 $\tau_{\text{arb}}$ より十分大きく取ると，予測可能な歪みが価格変化全体に占める相対的な大きさ（信号対雑音比 SNR）は $T^{-1/2}$ で減衰し，マクロには純粋なマルチンゲールへ収束する．*

> **定理（時間スケールのくりこみによるマルチンゲール収束）．** 後述の仮定 A1–A4 のもと，歪み項 $\epsilon_t$ がOrnstein-Uhlenbeck（OU）過程 $d\epsilon_t=-\epsilon_t/\tau_{\text{arb}}\,dt+\nu\,dB_t$ に従うとき，式(1)のSNRの減衰則が成り立つ．
>
> **含意1（時間スケール分離）．** $T\ll\tau_{\text{arb}}$ のミクロな世界では歪み項が支配的（非平衡・非マルチンゲール）であり，$T\gg\tau_{\text{arb}}$ のマクロな世界では歪みが相対的に消え去りマルチンゲールが復元される．
>
> **含意2（くりこみ群としての解釈）．** 観測時間を $\tau$ 倍に粗視化する操作を繰り返すと，歪みの実効的な強さを表すパラメータは指数関数的に減衰する「無関係演算子（irrelevant operator）」として振る舞い，スケール不変な白色ノイズのみが「ガウス不動点」として生き残る．
>
> **含意3（実務上の意味）．** 戦略の時間軸（ロールオーバー周期）を $\tau_{\text{arb}}$ に対してどこに置くかによって，捕捉できる歪みの大きさが本質的に変わる．$\tau_{\text{arb}}$ をデータから逆算することが，時間軸設計の鍵となる．

---

### 1.2 基礎定義と前提

**設定と仮定**

| 番号 | 仮定 | 理由・補足 |
|:---|:---|:---|
| A1 | 価格は $dS_t=\epsilon_t\,dt+\sigma\,dW_t$ に従う（$W_t$ は標準ブラウン運動） | ドリフト項 $\epsilon_t$ とノイズ項を明示的に分離するための最小限のモデル化 |
| A2 | 歪み $\epsilon_t$ 自体はOU過程 $d\epsilon_t=-\epsilon_t/\tau_{\text{arb}}\,dt+\nu\,dB_t$ に従う（$B_t$ は $W_t$ と独立なブラウン運動） | 「計算資源の限界で生じた予測可能な偏りは，裁定によって時間とともに自己緩和する」という物理学的直感（線形緩和）を最も単純な形で定式化 |
| A3 | 初期時刻 $t=0$ で $\epsilon_0$ は既知（あるいはその分布が既知）である | 条件付き期待値・分散を評価する基準点を固定するため |
| A4 | $\nu,\sigma,\tau_{\text{arb}}$ は既知の定数（局所的に一定）とみなす | 短期的にはボラティリティ・緩和時間が一定という近似（次数の異なる長期変動は別稿のフラクショナル記憶モデルで扱う） |

**変数リスト**

| 記号 | 内容 | 分類 | 確率的性質 |
|:---|:---|:---|:---|
| $S_t$ | 価格水準 | 内生変数 | 確率変数 |
| $\epsilon_t$ | 予測可能な歪み（非マルチンゲール成分） | 内生変数 | 確率変数 |
| $\tau_{\text{arb}}$ | 裁定緩和時間（歪みが消滅するまでの代表的タイムスケール） | パラメータ | 確定値 |
| $\sigma$ | 価格の瞬間ボラティリティ | パラメータ | 確定値 |
| $\nu$ | 歪みプロセスの拡散係数 | パラメータ | 確定値 |
| $T$ | 観測（集計）時間幅 | 外生変数 | 確定値 |
| $\mathrm{SNR}(T)$ | 期間 $T$ における歪み寄与とノイズ寄与の比 | 内生変数 | 確定値（期待値ベース） |
| $R_\tau$ | くりこみ変換（時間スケール $\tau$ への粗視化操作） | パラメタ関数 | 確定的作用素 |

**用語定義**

**裁定緩和時間（Arbitrage Relaxation Time）$\tau_{\text{arb}}$**：市場に生じた予測可能な歪みが，裁定取引によって検出・解消されるまでに要する代表的な時間スケール．OU過程の平均回帰速度の逆数として定義される．

**くりこみ変換（Renormalization Transformation）$R_\tau$**：時間軸を $\tau$ 倍に引き伸ばして系を観測する操作．物理学におけるブロックスピン変換の時間版であり，本稿ではブロック和 $\Delta S_t^{(\tau)}=\sum_{k=1}^{\tau}\Delta S_{t+k}$ として具体化する．

**ガウス不動点（Gaussian Fixed Point）**：くりこみ変換を繰り返し適用した極限で系が収束する先．本稿の文脈では，歪み項がゼロに潰れ，純粋な白色ノイズ（ブラウン運動増分）のみが残る状態を指す．

---

### 1.3 導出（厳密な数理変形と言葉による直感的理解の並行）

**Step A（入力：OU過程の定義 → 操作：線形1階ODEの積分因子法 → 出力：$\epsilon_t$ の閉形式解）**

$d\epsilon_t=-\epsilon_t/\tau_{\text{arb}}\,dt+\nu\,dB_t$ は線形の確率微分方程式であり，決定論的な線形1階ODEと同様に積分因子 $e^{t/\tau_{\text{arb}}}$ を用いて解ける（伊藤の公式により，決定論的な場合と同じ積分因子法がそのまま適用できることが知られている）．$d\!\left(e^{s/\tau_{\text{arb}}}\epsilon_s\right) = e^{s/\tau_{\text{arb}}}\nu\,dB_s$ の両辺を $0$ から $t$ まで積分すると，

{% raw %}
$$\epsilon_t = \epsilon_0\,e^{-t/\tau_{\text{arb}}} + \nu\int_0^t e^{-(t-s)/\tau_{\text{arb}}}\,dB_s \tag{2}$$
{% endraw %}

（この完全な証明は補論Aで行間なく示す．）

**Step B（入力：式(2) → 操作：区間 $[0,T]$ での積分と期待値の線形性 → 出力：累積歪みの条件付き期待値）**

式(1)右辺第1項の条件付き期待値を計算する．$\mathbb{E}[dB_s\mid\mathcal{F}_0]=0$ であるから，式(2)の確率積分項の期待値はゼロであり，

{% raw %}
$$\mathbb{E}\!\left[\int_0^T \epsilon_s\,ds\ \middle|\ \mathcal{F}_0\right] = \int_0^T \epsilon_0\,e^{-s/\tau_{\text{arb}}}\,ds = \epsilon_0\,\tau_{\text{arb}}\left(1-e^{-T/\tau_{\text{arb}}}\right) \tag{3}$$
{% endraw %}

> **式(3)の意図．** 積分は初等的な指数関数の積分（大学1年の微積の範囲）であり，$\int_0^T e^{-s/\tau_{\text{arb}}}ds = \left[-\tau_{\text{arb}}e^{-s/\tau_{\text{arb}}}\right]_0^T = \tau_{\text{arb}}(1-e^{-T/\tau_{\text{arb}}})$ から直ちに従う．重要なのは，$T\to\infty$ でこの値が $\epsilon_0\tau_{\text{arb}}$ という**有限の値に収束（発散しない）**することである．

**Step C（入力：式(3)の有界性 → 操作：ノイズ項の標準偏差との比較 → 出力：SNRのスケーリング則）**

一方，式(1)右辺第2項の標準偏差は，ブラウン運動の分散公式 $\mathrm{Var}(W_T-W_0)=T$ より，

{% raw %}
$$\mathrm{sd}\!\left(\int_0^T\sigma\,dW_s\right) = \sigma\sqrt{T} \tag{4}$$
{% endraw %}

したがって，予測可能な歪み（式3，$T\to\infty$ で有界な定数 $\epsilon_0\tau_{\text{arb}}$ に収束）とノイズの標準偏差（式4，$\sqrt{T}$ で発散）の比を信号対雑音比 $\mathrm{SNR}(T)$ と定義すると，

{% raw %}
$$\mathrm{SNR}(T) \equiv \frac{\left|\mathbb{E}\left[\int_0^T\epsilon_s ds\mid\mathcal{F}_0\right]\right|}{\mathrm{sd}\left(\int_0^T\sigma dW_s\right)} = \frac{|\epsilon_0|\,\tau_{\text{arb}}\left(1-e^{-T/\tau_{\text{arb}}}\right)}{\sigma\sqrt{T}} \tag{5}$$
{% endraw %}

$T\gg\tau_{\text{arb}}$ の領域では分子は定数 $|\epsilon_0|\tau_{\text{arb}}$ に漸近し，分母は $\sqrt T$ で増大し続けるため，

{% raw %}
$$\mathrm{SNR}(T) \sim \frac{|\epsilon_0|\,\tau_{\text{arb}}}{\sigma}\cdot T^{-1/2} \qquad (T\gg\tau_{\text{arb}}) \tag{6}$$
{% endraw %}

が得られ，式(1)のSNR減衰則 $O(T^{-1/2})$ が示された．$\mathrm{SNR}(T)\to0$ は $\mathbb{E}[S_{t+T}\mid\mathcal{F}_t]/S_t \to$（マルチンゲール的な予測不可能性）を意味し，マクロな時間スケールでのマルチンゲール収束を定量的に示す．

---

### 1.4 式(1)の解釈（極端な状態の解剖）

| 状態 | 領域 | SNRの挙動 | 解釈 |
|:---|:---|:---|:---|
| ミクロ極限 | $T\ll\tau_{\text{arb}}$ | 式(3)の指数を1次近似すると分子 $\approx\epsilon_0 T$，分母 $\approx\sigma\sqrt T$ となりSNR $\propto\sqrt T\to0$（$T\to0$）だが有限 $T$ では歪みが支配的 | 非平衡統計力学（ランジュバン方程式）が有効な領域 |
| クロスオーバー | $T\approx\tau_{\text{arb}}$ | SNRが最大に近い領域 | 「メゾスコピック領域」．物理学的な歪みを最も効率よく捕捉できる時間軸 |
| マクロ極限 | $T\gg\tau_{\text{arb}}$ | 式(6)の通り $T^{-1/2}$ で単調減少 | 経済学のマルチンゲール・無裁定が実効的に成立する領域 |

---

### 1.5 知識の構造図

```
【時間スケールのくりこみ群】

     観測時間 T を粗視化（τ → 2τ → 4τ → …）
              │
              ▼
  歪み ε_t の寄与（式3）: 有界（τ_arbで頭打ち）
  ノイズ寄与（式4）    : √T で増大し続ける
              │
              ▼
        SNR(T) ~ T^{-1/2} → 0
              │
              ▼
   ガウス不動点（純粋な白色ノイズ＝マルチンゲール）

【時間軸の使い分け】
  T << τ_arb : 物理学（非平衡ランジュバン方程式）が主役
  T ~  τ_arb : メゾスコピック領域 ← 戦略のロールオーバー周期の狙い目
  T >> τ_arb : 経済学（マルチンゲール・無裁定）が主役
```

---

## 2. 設例：3段階の具体例と詳細解説

### 2.1 初歩的設例（完全な数値計算と詳細なステップ解説）

$\epsilon_0=50$（円/日，仮の初期歪み），$\sigma=2{,}000$円/$\sqrt{\text{日}}$，$\tau_{\text{arb}}=0.5$日（12時間）とする．

**Step 1**：$T=0.1$日（超短期）での分子（式3）を計算する．$1-e^{-0.1/0.5}=1-e^{-0.2}\approx1-0.8187=0.1813$．よって分子 $=50\times0.5\times0.1813\approx4.53$円．

**Step 2**：$T=0.1$日での分母（式4）を計算する．$\sigma\sqrt{T}=2{,}000\times\sqrt{0.1}\approx2{,}000\times0.3162\approx632.5$円．

**Step 3**：$\mathrm{SNR}(0.1)=4.53/632.5\approx\mathbf{0.72\%}$．

**Step 4**：$T=5$日（マクロ，$\tau_{\text{arb}}$の10倍）での分子を計算する．$1-e^{-5/0.5}=1-e^{-10}\approx1-0.0000454\approx0.99995$．よって分子 $\approx50\times0.5\times0.99995\approx25.0$円．

**Step 5**：$T=5$日での分母を計算する．$\sigma\sqrt5\approx2{,}000\times2.236\approx4{,}472$円．

**Step 6**：$\mathrm{SNR}(5)=25.0/4{,}472\approx\mathbf{0.56\%}$．

**Step 7**：$T=0.1$日から$T=5$日（50倍）へ観測期間を延ばすと，SNRは$0.72\%$から$0.56\%$へと低下する．式(6)の理論値 $\mathrm{SNR}(T)\propto T^{-1/2}$ で近似すると，比は $\sqrt{0.1/5}=\sqrt{0.02}\approx0.1414$ 倍になるはずだが，実測比は $0.56/0.72\approx0.778$ にとどまる．これは $T=0.1$ 日が $\tau_{\text{arb}}=0.5$ 日より短く，式(6)の漸近近似（$T\gg\tau_{\text{arb}}$）がまだ十分に成立していない領域であるためであり，式(5)の厳密式を用いれば正しく整合することが直接確認できる．

**Step 8**：$T=50$日（$\tau_{\text{arb}}$の100倍，$T\gg\tau_{\text{arb}}$ が十分満たされる）を計算すると，分子 $\approx50\times0.5\times1=25.0$円（一定），分母 $=2{,}000\sqrt{50}\approx14{,}142$円，$\mathrm{SNR}(50)\approx\mathbf{0.18\%}$．$T=5$日から$T=50$日（10倍）で理論比 $\sqrt{5/50}=\sqrt{0.1}\approx0.3162$，実測比 $0.18/0.56\approx0.321$ とほぼ一致し，式(6)の漸近則が $T\gg\tau_{\text{arb}}$ の領域で精度良く成立することが数値的に確認できる．

### 2.2 中級設例（隣接理論との代数的接続）

式(2)において $\tau_{\text{arb}}\to0$ の極限を取ると，$\epsilon_0 e^{-t/\tau_{\text{arb}}}\to0$（$t>0$ で瞬時に緩和）となり，式(1)は $S_{t+T}-S_t=\int_t^{t+T}\sigma dW_s$ という**純粋なブラウン運動（標準的な無裁定マルチンゲール・モデル）**に厳密に退化する．これは，「合理的な投資家が瞬時に裁定を実行する（計算リソースが無限大）」という経済学の理想化された仮定が，本稿のOUモデルにおいて $\tau_{\text{arb}}\to0$ という特殊化として代数的に内包されることを示す．逆に $\tau_{\text{arb}}\to\infty$ の極限では緩和が起こらず，$\epsilon_t\equiv\epsilon_0$（定数ドリフト）というBlack-Scholesの定数ドリフト付き幾何ブラウン運動（の算術版）に退化する．

### 2.3 上級設例（現実データ・実証・パズルへの接続）

添付の物理学モデル議論ログでは，日経225先物の板情報や歩み値のミクロな衝突が，1秒〜数十秒のスケールで記憶効果（非マルチンゲール性）を生み，時間軸を数時間〜1日単位に粗視化すると経済学のマルチンゲール性が復元される，という直感が示されている．本理論はこれを $\tau_{\text{arb}}$ という単一パラメータで定量化する枠組みを与える．実務的な $\tau_{\text{arb}}$ の推定は，分散比検定（Variance Ratio Test, Lo and MacKinlay, 1988）を異なる時間スケール $T$ で系統的に実施し，分散比が1（マルチンゲール仮説と整合）に収束し始める $T$ を $\tau_{\text{arb}}$ の実証的な代理指標とする方法が標準的である．この推定値を用いて，戦略のロールオーバー周期を「$\tau_{\text{arb}}$よりわずかに大きい領域（1.4節のクロスオーバー領域）」に設定することの数理的な妥当性は，改善版戦略レポート（別ファイル）第1節で扱う．

---

## 3. 知識体系における位置付け（表）

| 理論 | 何を「くりこむ」か | 不動点 | 対応する経済学の概念 |
|:---|:---|:---|:---|
| 統計力学のくりこみ群（Wilson） | 空間スケール（ブロックスピン） | 臨界指数を特徴づける固定点 | ― |
| 本稿：時間スケールのくりこみ | 観測時間スケール $T$ | ガウス不動点（白色ノイズ） | 効率的市場仮説・マルチンゲール性 |
| 分散比検定（Lo–MacKinlay） | （くりこみ理論とは独立に）複数の時間幅での分散比較 | 分散比＝1 | ランダムウォーク仮説の検定 |
| 補論的関連：フラクショナル記憶モデル（別稿） | 記憶パラメータ $d$ | $d=0$（$H=0.5$） | 同じくマルチンゲール性 |

---

## 4. 参考文献・先行研究

### 4.1 原典（Classic Papers）

- Wilson, K. G. (1971). "Renormalization Group and Critical Phenomena. I. Renormalization Group and the Kadanoff Scaling Picture." *Physical Review B*, 4(9), 3174–3183.
  → くりこみ群の理論的基礎を確立した原典．本稿の「時間スケールの粗視化と不動点」という発想の物理学的源泉．

- Uhlenbeck, G. E. and Ornstein, L. S. (1930). "On the Theory of the Brownian Motion." *Physical Review*, 36(5), 823–841.
  → OU過程の原典．本稿の歪み項 $\epsilon_t$ のモデル化の直接的基礎．

- Lo, A. W. and MacKinlay, A. C. (1988). "Stock Market Prices Do Not Follow Random Walks: Evidence from a Simple Specification Test." *Review of Financial Studies*, 1(1), 41–66.
  → 分散比検定の原典．異なる時間スケールでのマルチンゲール性の実証的検証手法を提示．

### 4.2 関連・発展論文（Contemporary Literature）

- Cont, R. and Bouchaud, J.-P. (2000). "Herd Behavior and Aggregate Fluctuations in Financial Markets." *Macroeconomic Dynamics*, 4(2), 170–196.
  → 市場参加者間の相互作用が短期的な非効率性（本稿の歪み項に相当）を生む機構の実証的・理論的分析．

- Zumbach, G. (2009). "Time Reversal Invariance in Finance." *Quantitative Finance*, 9(5), 505–515.
  → 異なる時間スケール間の非対称性（本稿のミクロ・マクロのクロスオーバー）を実証的に扱った研究．

- 日本取引所グループ（JPX），「商品概要：日経225先物」，https://www.jpx.co.jp/derivatives/products/domestic/225-futures/
  → 本稿の設例で想定する原資産の商品仕様の実務的根拠．

---

## 補論A：オルンシュタイン・ウーレンベック過程の解の完全導出

**主張**：$d\epsilon_t=-\dfrac{1}{\tau_{\text{arb}}}\epsilon_t\,dt+\nu\,dB_t,\ \epsilon_0$ 既知，の解は式(2)で与えられる．

**証明**．積分因子 $I_t=e^{t/\tau_{\text{arb}}}$ を考える．伊藤の公式（積の微分法則の確率版）を $f(t,\epsilon_t)=I_t\epsilon_t$ に適用すると，$I_t$ は決定論的関数（確率項を含まない）であるため通常の積の微分則がそのまま成立し，

{% raw %}
$$d(I_t\epsilon_t) = I_t\,d\epsilon_t + \epsilon_t\,dI_t = I_t\left(-\frac{\epsilon_t}{\tau_{\text{arb}}}dt+\nu\,dB_t\right) + \epsilon_t\cdot\frac{1}{\tau_{\text{arb}}}I_t\,dt$$
{% endraw %}

右辺の $-\dfrac{I_t\epsilon_t}{\tau_{\text{arb}}}dt$ の項と $\dfrac{I_t\epsilon_t}{\tau_{\text{arb}}}dt$ の項が厳密に打ち消し合うため，

{% raw %}
$$d(I_t\epsilon_t) = I_t\,\nu\,dB_t = \nu\,e^{s/\tau_{\text{arb}}}dB_s$$
{% endraw %}

両辺を $s=0$ から $s=t$ まで積分すると，

{% raw %}
$$I_t\epsilon_t - I_0\epsilon_0 = \nu\int_0^t e^{s/\tau_{\text{arb}}}\,dB_s$$
{% endraw %}

$I_0=1$ であるから，$\epsilon_t = e^{-t/\tau_{\text{arb}}}\epsilon_0 + \nu\,e^{-t/\tau_{\text{arb}}}\int_0^t e^{s/\tau_{\text{arb}}}\,dB_s$ となり，積分の中に $e^{-t/\tau_{\text{arb}}}$ を入れると

{% raw %}
$$\epsilon_t = \epsilon_0\,e^{-t/\tau_{\text{arb}}} + \nu\int_0^t e^{-(t-s)/\tau_{\text{arb}}}\,dB_s$$
{% endraw %}

が得られ，式(2)が示された．$\blacksquare$

---

## 補論B：くりこみ変換のスケール変化に対するパラメータの流れ

くりこみ変換 $R_\tau$ をブロック和 $\Delta S_t^{(\tau)}=\sum_{k=1}^{\tau}\Delta S_{t+k}$ として定義すると，本稿のモデルの下で，$\Delta S_t^{(\tau)}$ に対する実効的な歪み寄与の分散比（1.3節のSNRの2乗に相当）は，式(6)より $\mathrm{SNR}(\tau)^2 \propto \tau^{-1}$ で減衰する．物理学のくりこみ群の記法に合わせ，実効的な歪みパラメータを $\hat\epsilon(\tau)\equiv\mathrm{SNR}(\tau)$ とおくと，そのベータ関数は

{% raw %}
$$\tau\frac{d\hat\epsilon(\tau)}{d\tau} = -\frac12\hat\epsilon(\tau) \equiv \beta(\hat\epsilon)$$
{% endraw %}

であり（式(6)の $\tau^{-1/2}$ 依存性をそのまま $\tau$ で微分すれば直ちに得られる），$\beta(\hat\epsilon)<0$（$\hat\epsilon>0$ のとき）は，スケール $\tau$ を大きくするほど歪みパラメータが単調に減少し，$\hat\epsilon=0$（ガウス不動点）へ流れ込むことを意味する．これは物理学議論ログで言及された「くりこみ群のベータ関数」の直接的な数理的実体である．
