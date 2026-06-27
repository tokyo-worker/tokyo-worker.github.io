---
layout: post
title: "確率的ボラティリティ（Hestonモデル）と高次グリーク（Volga/Vanna）：Theoretical Minimum"
date: 2026-06-27 00:00:00 +0900
categories: [金融工学, リスク管理]
math: true
---

# 確率的ボラティリティ（Hestonモデル）と高次グリーク（Volga/Vanna）
### Theoretical Minimum

> **本稿の位置付け．** ブラック–ショールズモデルが仮定する「$\sigma$ は定数」は現実の市場では成立しない——ボラティリティは自らランダムに動き，株価が暴落すると一斉に跳ね上がる「負の相関」を持つ．本稿は，$\sigma$ 自体を確率変数として扱う Heston（1993）モデルの連立 SDE から出発し，アイアンコンドルなどのオプション戦略の運用に直結する高次グリーク（Volga・Vanna）を 2 次元テイラー展開によって導出する．楽天RSSで板情報をキャリブレーションする具体的手順も示す．

---
## 目次
- [1. 数理的俯瞰と厳密な導出](#1-数理的俯瞰と厳密な導出前提から結論への最短経路)
- [2. 設例：楽天RSSデータを使った段階的計算](#2-設例楽天rssデータを使った段階的計算)
- [3. 知識体系における位置付け](#3-知識体系における位置付け表)
- [4. 参考文献・先行研究](#4-参考文献先行研究)
- [補論 A：Heston PDE の完全な導出](#補論-aheston-pde-の完全な導出)

---
## 1. 数理的俯瞰と厳密な導出：前提から結論への最短経路

### 1.1 中心命題と帰結（結論の明示）

Heston モデルでは，原資産価格 $S_t$ と瞬間分散 $v_t$（$= \sigma_t^2$）が以下の連立 SDE に従う：

{% raw %}
$$\boxed{\begin{aligned} dS_t &= r S_t\,dt + \sqrt{v_t}\,S_t\,dW_t^S \\ dv_t &= \kappa(\theta - v_t)\,dt + \xi\sqrt{v_t}\,dW_t^v \end{aligned}} \quad \text{ただし} \quad dW_t^S\,dW_t^v = \rho\,dt \tag{1}$$
{% endraw %}

*2つのブラウン運動の相関係数 $\rho$（通常 $< 0$）が，株価暴落時のボラティリティ急騰（レバレッジ効果）を自動生成する．*

> **定理（Heston PDE）．** 仮定 H1–H3 のもと，オプション価格 $U(S, v, t)$ は以下の偏微分方程式を満たす：
>
> {% raw %}
> $$\frac{\partial U}{\partial t} + rS\Delta + \kappa(\theta - v)\mathcal{V} + \frac{1}{2}vS^2\Gamma + \frac{1}{2}\xi^2 v\,\text{Volga} + \rho\xi v S\,\text{Vanna} = rU \tag{2}$$
> {% endraw %}
>
> **含意1（Volga の危険）．** アイアンコンドル（ディープOTM 売り）は Volga $= \partial^2 U/\partial v^2$ が大きなマイナスになる．ボラティリティが急騰すると，価格変化が Volga の 2 次関数的な加速によって含み損が爆発する．
>
> **含意2（Vanna の落とし穴）．** Vanna $= \partial^2 U/\partial S\partial v$ は，株価の動きとボラティリティの動きの複合リスクである．デルタをゼロにしていても，株価急落 × ボラティリティ急騰が同時に起きると（これはまさに $\rho < 0$ のとき）Vanna が爆発してポートフォリオが崩壊する．

---

### 1.2 基礎定義と前提

#### 1.2.1 仮定

| 番号 | 内容 | 理由 |
|:---|:---|:---|
| H1 | $v_t$ は Cox-Ingersoll-Ross（CIR）過程に従う | 分散が負にならず，かつ $\theta$ への平均回帰を持つ最小限のモデル |
| H2 | フェラーの条件 $2\kappa\theta > \xi^2$ が成立 | $v_t$ が確率1で 0 に到達しないことを保証 |
| H3 | ボラティリティ・リスク・プレミアムは $v$ に比例（$\lambda v$ の形）| リスク中立変換後も CIR 型を維持するため |

#### 1.2.2 変数リスト

| 記号 | 内容 | 確率的性質 |
|:---|:---|:---|
| $v_t$ | 瞬間分散（$= \sigma_t^2$）| 確率変数（それ自体がランダムに動く）|
| $\kappa$ | 平均回帰スピード | 確定値（推定対象）|
| $\theta$ | 長期平均分散 | 確定値（推定対象）|
| $\xi$ | ボラティリティのボラティリティ（Volga の源泉）| 確定値（推定対象）|
| $\rho$ | $W^S$ と $W^v$ の相関（Vanna・スキューの源泉）| 確定値（推定対象）|

#### 1.2.3 用語定義

**Volga**（$= \partial^2 U/\partial v^2$）：オプション価格のボラティリティに対するガンマ．「ベガのベガ」とも呼ばれ，ボラティリティが急変したときにベガ自体がどれだけ加速するかを示す．OTM オプションを売るポジションは常に Volga ショートになる．

**Vanna**（$= \partial^2 U/\partial S\partial v$）：株価とボラティリティのクロス感応度．$\rho < 0$ の市場（株価下落＝ボラティリティ上昇）では，株価が下がるたびにデルタとベガが双方向に激変する「連鎖爆発」のリスクを定量化する．

**平均回帰（Mean Reversion）**：$dv_t = \kappa(\theta - v_t)\,dt + \xi\sqrt{v_t}\,dW_t^v$ において，$v_t > \theta$ ならドリフトは負（$v_t$ を引き下げる方向），$v_t < \theta$ ならドリフトは正（引き上げる方向）に働く．現実のボラティリティは長期的に $\theta$ へ回帰する性質を持つ．

---

### 1.3 導出

#### ステップ1：2次元テイラー展開で全グリークを一覧に出す

$U(S, v, t)$ の微小変化を $(S, v, t)$ の各方向で 2 次まで展開する：

{% raw %}
$$\Delta U = \underbrace{\frac{\partial U}{\partial t}\,\Delta t}_{\Theta\,\Delta t} + \underbrace{\frac{\partial U}{\partial S}\,\Delta S}_{\Delta\cdot\Delta S} + \underbrace{\frac{\partial U}{\partial v}\,\Delta v}_{\mathcal{V}\cdot\Delta v} + \underbrace{\frac{1}{2}\frac{\partial^2 U}{\partial S^2}(\Delta S)^2}_{\frac{1}{2}\Gamma(\Delta S)^2} + \underbrace{\frac{1}{2}\frac{\partial^2 U}{\partial v^2}(\Delta v)^2}_{\frac{1}{2}\text{Volga}(\Delta v)^2} + \underbrace{\frac{\partial^2 U}{\partial S\partial v}\Delta S\,\Delta v}_{\text{Vanna}\cdot\Delta S\,\Delta v} + \cdots \tag{3}$$
{% endraw %}

#### ステップ2：伊藤の補題の 2 次元版乗算規則を適用する

SDE（1）から，$dt$ のオーダーに生き残る 2 次項を特定する：

| 乗算 | 結果 |
|:---|:---|
| $(dW^S)^2 = dt$ → $(\Delta S)^2 = v S^2\,dt$ | $\frac{1}{2}\Gamma \cdot vS^2\,dt$（ガンマ項）|
| $(dW^v)^2 = dt$ → $(\Delta v)^2 = \xi^2 v\,dt$ | $\frac{1}{2}\text{Volga}\cdot\xi^2 v\,dt$（Volga 項）|
| $dW^S\,dW^v = \rho\,dt$ → $\Delta S\,\Delta v = \rho\xi v S\,dt$ | $\text{Vanna}\cdot\rho\xi v S\,dt$（Vanna 項）|

#### ステップ3：2つの確率変数（$S, v$）を同時にヘッジして確定的ポートフォリオを作る

$S$ の変動をデルタヘッジ，$v$ の変動をベガヘッジ（ボラティリティスワップなどで）する 3 資産ポートフォリオ $\Pi = -U + \Delta \cdot S + \mathcal{V} \cdot (\text{ボラティリティ資産})$ を構成すると，ランダム成分（$dW^S$, $dW^v$）が消え，残るのは式(3)の 2 次項のみとなる（補論 A に詳述）．無裁定条件 $d\Pi = r\Pi\,dt$ を課して整理すると，式(2) の Heston PDE が完成する．$\blacksquare$

---

### 1.4 極端な状態の解剖

**$\xi \to 0$（ボラティリティが全く動かない）の場合：** Volga 項 $\frac{1}{2}\xi^2 v\cdot\text{Volga}\,dt \to 0$，Vanna 項 $\rho\xi v S\cdot\text{Vanna}\,dt \to 0$．式(2)はブラック–ショールズ PDE に完全に帰着する（BSモデルは Heston モデルの特殊ケース）．

**$\rho \to -1$（株価暴落とボラティリティ急騰が完全連動）の場合：** Vanna 項の係数 $\rho\xi v S$ が最大のマイナスになり，OTM プットを売るポートフォリオは株価下落の瞬間に Vanna が爆発する．これはリーマン・ショック型の「右下がりスキュー」が極端になったシナリオそのものである．

**$\theta \gg v_0$（現在のボラティリティが将来の平均値より低い）の場合：** ドリフト $\kappa(\theta - v_0) > 0$ により $v_t$ は上昇方向に引っ張られる（平均回帰）．この時期にアイアンコンドルを売ると，時間の経過とともに Volga リスクが拡大するため，エントリー前に $\kappa(\theta - v_0)$ の符号を確認することが必須である．

---

### 1.5 知識の構造図

```
【Heston 連立 SDE】
  dS = rS dt + √v·S·dW^S
  dv = κ(θ-v)dt + ξ√v·dW^v    ← 相関 ρ·dt = dW^S·dW^v
          ↓ 2次元テイラー展開 + 伊藤乗算規則
【2次元テイラー展開の各グリーク項】
  1次: Δ（デルタ），V（ベガ）
  2次: Γ（ガンマ），Volga（ベガのベガ），Vanna（クロス）
          ↓ 3資産ヘッジ + 無裁定条件
【Heston PDE】: ∂U/∂t + rSΔ + κ(θ-v)V + (1/2)vS²Γ + (1/2)ξ²v·Volga + ρξvS·Vanna = rU
          ↓ ξ→0 の特殊化
【BS PDE】: ∂C/∂t + rSΔ + (1/2)σ²S²Γ = rC （Volga・Vanna が消える）
```

---

## 2. 設例：楽天RSSデータを使った段階的計算

### 2.1 初歩的設例：アイアンコンドルの Volga と Vanna の数値シミュレーション

楽天RSSで取得したスナップショットと，ATM 付近の板からキャリブレーションしたと仮定する Heston パラメータ：

| 変数 | 値 |
|:---|:---|
| 原資産価格 $S$ | 38,000 円 |
| 現在の瞬間分散 $v_0$ | 0.04（$= \sigma_0 = 20\%$）|
| 平均回帰スピード $\kappa$ | 2.0 |
| 長期平均分散 $\theta$ | 0.04（$= 20\%$）|
| ボラティリティのボラティリティ $\xi$ | 0.30 |
| 相関係数 $\rho$ | $-0.70$ |

アイアンコンドル（コール売り 40,000，プット売り 36,000，各買い翼 1,000 円幅）のポジション全体の高次グリークが以下であったとする：

| グリーク | 合計値 |
|:---|:---|
| デルタ $\Delta_{\text{total}}$ | 0.00 （デルタ中立）|
| ベガ $\mathcal{V}_{\text{total}}$ | $-5,000$ 円/分散単位 |
| Volga $\text{Volga}_{\text{total}}$ | $-1,200$ 円/(分散単位)² |
| Vanna $\text{Vanna}_{\text{total}}$ | $+350$ 円/(円 × 分散単位)|

#### 市場パニック時の損益シミュレーション

日経225が $-1,000$ 円（$\Delta S = -1000$），分散が $\Delta v = +0.04$（ボラティリティ換算 +2%）急変したとき：

{% raw %}
$$\Delta U \approx \underbrace{0 \times (-1000)}_{\text{デルタ:}0} + \underbrace{(-5000)\times 0.04}_{\text{ベガ:}-200} + \underbrace{\frac{1}{2}(-1200)\times(0.04)^2}_{\text{Volga:}-0.96} + \underbrace{350 \times (-1000) \times 0.04}_{\text{Vanna:}-14000} \tag{4}$$
{% endraw %}

{% raw %}
$$\Delta U \approx 0 - 200 - 0.96 - 14{,}000 \approx \boxed{-14{,}201 \text{ 円}} \tag{5}$$
{% endraw %}

> **解読：** デルタはゼロなのに総損失の98%以上が Vanna（$\rho < 0$ による株価下落 × ボラティリティ上昇の掛け算）から来ている．ベガ損（200円）は誤差に過ぎない．プロのトレーダーはこのシミュレーションを事前に行い，Vanna のシナリオ損失が許容範囲内かを確認してからアイアンコンドルを仕掛ける．

### 2.2 中級設例：楽天RSSから Heston パラメータをキャリブレーションする手順

#### Step 1：流動性のある銘柄を選別してフィルタリングする

楽天RSSで `RSS("銘柄コード","最良買気配")` と `RSS("銘柄コード","最良売気配")` を取得し，以下の条件でフィルタリングする：

```
セルL1: =E_ask - E_bid    ← スプレッド計算
セルL2: =IF(L1/((E_ask+E_bid)/2) < 0.20, "使用", "除外")
        ← スプレッド率 20% 未満のみ有効な板とみなす
```

通常，ATM 付近の 5〜10 銘柄だけが有効と判定される（ディープ OTM は板が薄く除外される）．

#### Step 2：WLS（重み付き最小二乗法）の重みを設定する

{% raw %}
$$w_i = \frac{1}{(\text{Ask}_i - \text{Bid}_i)^2} \tag{6}$$
{% endraw %}

スプレッドが広い銘柄は $w_i$ が小さく（ほぼ無視），スプレッドが狭い ATM 付近は $w_i$ が大きく（重くペナルティ）なる．

#### Step 3：Solver でパラメータを逆算する

{% raw %}
$$\text{最小化：} \sum_{i} w_i \left[C_{\text{BS}}(S,K_i,T_i,r,\hat{\sigma}_i) - C_{\text{mkt},i}\right]^2 \tag{7}$$
{% endraw %}

ここで $\hat{\sigma}_i = \sqrt{\theta + (v_0 - \theta)e^{-\kappa T_i} + \xi^2/\cdots}$（Heston の平均分散の時間構造を簡略化した近似）とし，Solver で $(\kappa, \theta, \xi, \rho, v_0)$ の 5 パラメータを最適化する（VBA で自動化可能）．

### 2.3 上級設例：日経平均 VI をキャリブレーションに使う裏技

個別の板が薄い場合，大阪取引所が発表する日経平均 VI の時系列と，VI 先物の価格を直接使ってパラメータを固定する：

- $v_0 = (\text{日経平均 VI} / 100)^2$（例：VI = 20 なら $v_0 = 0.04$）
- $\theta = (\text{過去90日間の VI の平均} / 100)^2$
- $\kappa$ = VI 先物のタームストラクチャーから逆算

これにより，個別の薄い板を一切使わずに Heston モデルのマクロな骨格を瞬時に確定できる．この骨格に，ATM 付近の厚い板から $\xi$ と $\rho$ を局所的に補正すれば，信頼性の高いキャリブレーションが完成する．

---

## 3. 知識体系における位置付け（表）

| グリーク | 定義 | アイアンコンドル（OTM 売り）の符号 | パニック時の挙動 |
|:---|:---|:---|:---|
| デルタ $\Delta$ | $\partial U/\partial S$ | 初期ゼロ（中立）| 株価変動で急変 → 要再ヘッジ |
| ガンマ $\Gamma$ | $\partial^2 U/\partial S^2$ | マイナス（ショートガンマ）| 株価大きく動くほど損失が加速 |
| ベガ $\mathcal{V}$ | $\partial U/\partial v$ | マイナス（ショートベガ）| $v$ 上昇で直線的に損失 |
| **Volga** | $\partial^2 U/\partial v^2$ | **強烈なマイナス** | $v$ 急騰で **2次関数的に損失爆発** |
| **Vanna** | $\partial^2 U/\partial S\partial v$ | 配置次第（非対称）| $\Delta S \times \Delta v$ の掛け算 → **連鎖爆発** |

---

## 4. 参考文献・先行研究

### 4.1 原典

- Heston, S. L. (1993). "A Closed-Form Solution for Options with Stochastic Volatility with Applications to Bond and Currency Options." *Review of Financial Studies*, 6(2), 327–343.
- Cox, J. C., Ingersoll, J. E., & Ross, S. A. (1985). "A Theory of the Term Structure of Interest Rates." *Econometrica*, 53(2), 385–408.（CIR 過程の原典）

### 4.2 関連・発展論文

- Gatheral, J. (2006). *The Volatility Surface: A Quant's Guide*. Wiley Finance.（Heston モデルの実務的キャリブレーション手法の定番書）
- Castagna, A., & Mercurio, F. (2007). "The Vanna-Volga Method for Implied Volatilities." *Risk Magazine*, 20(1), 106–111.（Vanna-Volga を使ったオプション価格補正の実務論文）

---

## 補論 A：Heston PDE の完全な導出

#### 補論A-1：2つの確率変数を同時にヘッジする 3 資産ポートフォリオ

$U(S, v, t)$ をヘッジするため，以下の 3 資産ポートフォリオを構築する：

{% raw %}
$$\Pi = -U + \Delta \cdot S + h_v \cdot (\text{ボラティリティ資産 } V_1) \tag{A1}$$
{% endraw %}

$V_1$ はボラティリティ $v$ に感応する別のオプション（例：ATM コール）である．

#### 補論A-2：ランダム成分の消去条件を連立する

$d\Pi$ を計算すると $dW^S$ と $dW^v$ の 2 つのランダム項が現れる：

- $dW^S$ の係数 $= -\frac{\partial U}{\partial S} + \Delta + h_v\frac{\partial V_1}{\partial S} = 0$
- $dW^v$ の係数 $= -\frac{\partial U}{\partial v} + h_v\frac{\partial V_1}{\partial v} = 0$

この連立方程式を解くと，$h_v = (\partial U/\partial v)/(\partial V_1/\partial v)$，$\Delta = \partial U/\partial S - h_v\partial V_1/\partial S$ が決まる．

#### 補論A-3：無裁定条件の適用と Heston PDE の完成

$d\Pi = r\Pi\,dt$ を代入して $\Delta$ と $h_v$ を消去し，$(\partial U/\partial t)$ などを整理すると，ボラティリティ・リスク・プレミアム $\lambda v$ の処理を経て式(2) の Heston PDE が完成する．$\blacksquare$
