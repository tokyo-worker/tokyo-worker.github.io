---
layout: post
title: "板情報スナップショットからのキャリブレーション実務：WLS・日経平均VIの活用：Theoretical Minimum"
date: 2026-06-27 00:00:00 +0900
categories: [金融工学, マーケットマイクロストラクチャ]
math: true
---

# 板情報スナップショットからのキャリブレーション実務：WLS・日経平均VIの活用
### Theoretical Minimum

> **本稿の位置付け．** 日経225オプション市場の現実は，ATM 付近を除けばほぼスカスカの板（広いスプレッド・約定なし）である．このノイズに汚染されたデータから，どうやって Heston モデル等のパラメータ（ひいては全グリーク）を信頼できる精度で逆算（キャリブレーション）するのか——その実務アルゴリズムを self-contained に提示する．重み付き最小二乗法（WLS）の数学的根拠から，日経平均 VI のバイパス活用法，VBA による自動化まで，楽天RSSで実際に動くコードとともに解説する．

---
## 目次
- [1. 数理的俯瞰と厳密な導出](#1-数理的俯瞰と厳密な導出板情報からのパラメータ逆算アルゴリズム)
- [2. 設例：楽天RSSデータを使った段階的計算](#2-設例楽天rssデータを使った段階的計算)
- [3. 知識体系における位置付け](#3-知識体系における位置付け表)
- [4. 参考文献・先行研究](#4-参考文献先行研究)
- [補論 A：WLS の最良線形不偏推定量（BLUE）性の証明](#補論-awls-の最良線形不偏推定量blue性の証明)

---
## 1. 数理的俯瞰と厳密な導出：板情報からのパラメータ逆算アルゴリズム

### 1.1 中心命題と帰結（結論の明示）

$N$ 銘柄の板情報（Bid/Ask）スナップショットから，モデルパラメータベクトル $\Phi$ の最良推定値 $\hat{\Phi}$ は，以下の重み付き最小二乗問題の解として与えられる：

{% raw %}
$$\boxed{\hat{\Phi} = \arg\min_{\Phi}\; E(\Phi), \quad E(\Phi) = \sum_{i=1}^{N} w_i \bigl(C_{\text{model},i}(\Phi) - P_{\text{mid},i}\bigr)^2} \tag{1}$$
{% endraw %}

ただし仲値 $P_{\text{mid},i} = (P_{\text{bid},i} + P_{\text{ask},i})/2$，重み $w_i = 1/(P_{\text{ask},i} - P_{\text{bid},i})^2$．

*スプレッドが広い銘柄（薄い板）は $w_i$ が小さくなり，最適化から実質的に除外される仕組みが自動的に作られる．*

> **定理（WLS の最良線形不偏推定量性）．** 測定誤差の分散がスプレッドの 2 乗に比例するという仮定（補論 A を参照）のもと，WLS 推定量 $\hat{\Phi}$ はガウス–マルコフ定理により「不偏推定量の中で最も分散が小さい（最良線形不偏推定量：BLUE）」になる．
>
> **含意1（薄い板を捨てる理由が数学的に正当化される）．** 均等な重みで最小化する OLS（通常の最小二乗法）は，スカスカな OTM 銘柄のノイズに全体のパラメータが引きずられ，BLUE 性を失う．
>
> **含意2（VI バイパスの戦略的根拠）．** 遠方銘柄のスプレッドが全て 0 に収束した世界（つまり流動性が無限大）では，全銘柄の重みが均等になり，その積分に相当するのが日経平均 VI の「モデルフリー積分」である．したがって日経平均 VI は「板が完全に厚い仮想市場の WLS 推定値」という理論的根拠を持つ．

---

### 1.2 基礎定義と前提

#### 1.2.1 仮定

| 番号 | 内容 | 理由 |
|:---|:---|:---|
| C1 | 仲値 $(P_{\text{bid}} + P_{\text{ask}})/2$ に真の市場価格が存在する | キャリブレーションの入力を統計的に安定させるため |
| C2 | 測定誤差 $\epsilon_i = P_{\text{mid},i} - C_{\text{true},i}$ の分散 $\propto (P_{\text{ask},i} - P_{\text{bid},i})^2$ | WLS が BLUE になるためのガウス–マルコフ条件 |
| C3 | 日経平均 VI はモデルフリー・インプライドボラティリティ（MFIV）として計算される | 正規分布仮定に依存しない VI の信頼性の根拠 |

#### 1.2.2 変数リスト

| 記号 | 内容 | 楽天RSS取得方法 |
|:---|:---|:---|
| $P_{\text{bid},i}$ | 銘柄 $i$ の最良買い気配 | `RSS("銘柄コード","最良買気配")` |
| $P_{\text{ask},i}$ | 銘柄 $i$ の最良売り気配 | `RSS("銘柄コード","最良売気配")` |
| $P_{\text{mid},i}$ | 仲値 $= (P_{\text{bid}} + P_{\text{ask}})/2$ | 計算セル |
| $w_i$ | WLS 重み $= 1/(P_{\text{ask}} - P_{\text{bid}})^2$ | 計算セル |
| $\Phi$ | モデルパラメータ（例：Heston の $\kappa,\theta,\xi,\rho,v_0$ の 5 次元ベクトル）| Solver の変数セル |
| $C_{\text{model},i}(\Phi)$ | パラメータ $\Phi$ によるモデル理論価格 | BS 公式または Heston のフーリエ近似 |
| $\text{VI}$ | 日経平均 VI（ボラティリティ・インデックス）| `RSS("NKV","現在値")` 等 |

#### 1.2.3 用語定義

**モデルフリー IV（MFIV）**：日経平均 VI・VIX などに使われる計算手法で，BS モデル（正規分布仮定）を一切使わず，全ストライクの OTM プット・コール価格の重み付き積分によってボラティリティを計算する：

{% raw %}
$$\text{MFIV}^2 = \frac{2}{T}\left[\int_0^{F} \frac{P(K)}{K^2}\,dK + \int_F^{\infty} \frac{C(K)}{K^2}\,dK\right] \tag{2}$$
{% endraw %}

ここで $F$ は先物価格，$P(K)$・$C(K)$ はそれぞれ行使価格 $K$ のプット・コール価格．この積分により，ファットテールや歪みの情報が「分布を仮定せずに」ボラティリティという 1 つの数字に圧縮される．

**レベンバーグ–マルカート法（Levenberg-Marquardt）**：非線形最小二乗問題 $\min E(\Phi)$ を高速に解く勾配法の一種．ニュートン法（2 次収束）とステップ幅の安定化を組み合わせ，初期値依存性が低く実用的．Excel の Solver アドイン内部でも類似の手法が使われている．

---

### 1.3 導出（WLS アルゴリズムの完全な代数的構造）

#### ステップ1：スプレッド幅を「ノイズの大きさ」とモデル化する

板の仲値を真のフェアバリュー $C_{\text{true},i}$ に対するノイズ入り観測値とみなす：

{% raw %}
$$P_{\text{mid},i} = C_{\text{true},i} + \epsilon_i, \quad \epsilon_i \sim (0,\, \lambda_0^2\, s_i^2) \tag{3}$$
{% endraw %}

ここで $s_i = P_{\text{ask},i} - P_{\text{bid},i}$（スプレッド），$\lambda_0^2$ は定数（測定誤差のスケール）．これは「板が薄くスプレッドが広いほど，仲値の誤差も大きい」という自然な仮定である．

#### ステップ2：目的関数を重み付き残差平方和として構築する

各観測の逆分散 $w_i = 1/\text{Var}(\epsilon_i) \propto 1/s_i^2$ を重みとして，目的関数を構築する：

{% raw %}
$$E(\Phi) = \sum_{i=1}^{N} w_i \bigl(C_{\text{model},i}(\Phi) - P_{\text{mid},i}\bigr)^2 = \sum_{i=1}^{N} \frac{1}{s_i^2}\bigl(C_{\text{model},i}(\Phi) - P_{\text{mid},i}\bigr)^2 \tag{4}$$
{% endraw %}

#### ステップ3：最適化の 1 次条件（定常条件）を導く

$E(\Phi)$ を各パラメータ $\phi_j$ で偏微分してゼロと置く：

{% raw %}
$$\frac{\partial E}{\partial \phi_j} = 2\sum_{i=1}^{N} w_i \bigl(C_{\text{model},i}(\Phi) - P_{\text{mid},i}\bigr)\frac{\partial C_{\text{model},i}}{\partial \phi_j} = 0 \quad \forall j \tag{5}$$
{% endraw %}

$\frac{\partial C_{\text{model},i}}{\partial \phi_j}$ は各パラメータに対するモデル理論価格の感応度（例えば Heston モデルなら $\kappa$ に対するフーリエ積分の微分）であり，数値微分や解析的計算で求める．

式(5)は非線形連立方程式のため，Levenberg-Marquardt 法などの数値最適化で $\hat{\Phi}$ を求める．

#### ステップ4：$\hat{\Phi}$ が確定したら全グリークを一斉出力する

{% raw %}
$$\hat{\Phi} \to d_1(\hat{\Phi}),\, d_2(\hat{\Phi}) \to \Delta_i,\, \Gamma_i,\, \mathcal{V}_i,\, \Theta_i,\, \text{Volga}_i,\, \text{Vanna}_i \quad \forall i \tag{6}$$
{% endraw %}

全銘柄の全グリークが，一瞬の板スナップショットから連鎖的に確定する．

---

### 1.4 日経平均 VI の理論的根拠と信頼限界

#### 信頼できる理由（モデルフリー性）

式(2)に示す MFIV 積分は BS モデル（正規分布）を一切仮定しない——ファットテール・スキューが何であっても，それを「そのまま 1 数値に圧縮」する．

#### 信頼できない理由（3 つの構造的罠）

**罠①：ディーププットの需給ノイズ：** 式(2)の積分に遠方プットが入るが，日本では機関投資家の保険需要でプット価格が恒常的に吊り上がっており，VI が適正値より高めにバイアスされる．

**罠②：夜間・流動性クライシス時のバグ：** 夜間に板がスカスカになると，マーケットメイカーが広げたスプレッドを VI の積分が拾い，「株価が動いていないのに VI が 2〜3 pt 急上昇する」という算出ノイズが頻繁に発生する．

**罠③：限月ブレンドの補間歪み：** VI は「30 日満期」換算になるよう期近・期先の 2 限月をブレンドするが，SQ 直前に期近の流動性が急低下するタイミングで補間が不安定になり，不自然なスパイクが現れる．

**結論：** VI は「マクロな恐怖度の温度計」として信頼できるが，「個別のオプション理論値の基準」として盲信するのは危険——ATM 付近の厚い板での WLS キャリブレーションを常にセカンドオピニオンとして持つべきである．

---

### 1.5 知識の構造図

```
【楽天RSSからの完全なパイプライン】

Step 1: 板スナップショット取得
  P_bid_i, P_ask_i ← RSS("銘柄コード","最良買/売気配")

Step 2: 仲値とWLS重みの計算
  P_mid_i = (P_bid + P_ask)/2
  w_i = 1/(P_ask - P_bid)²

Step 3: フィルタリング（スプレッド率 > 20% → 除外 or w=0 とみなす）

Step 4: モデルパラメータの最適化（WLS最小化）
  Φ̂ = argmin Σ w_i (C_model(Φ) - P_mid)²
  → Solver(Excel) または VBA Levenberg-Marquardt

       【オプション：VI バイパス】
       薄い板が多い日 → v0 = (VI/100)² で強制固定
       → 残り 4 パラメータ (κ, θ, ξ, ρ) だけを最適化

Step 5: Φ̂ から全グリークを一斉出力
  → Δ, Γ, V, Θ, ρ, Volga, Vanna が全銘柄で確定

Step 6: BS方程式による内部整合性チェック
  残差率 = |Θ + rSΔ + (1/2)σ²S²Γ - rC| / |rC| < 0.1%
```

---

## 2. 設例：楽天RSSデータを使った段階的計算

### 2.1 初歩的設例：WLS がノイズを無効化する数値追跡（3 銘柄）

以下の板スナップショットを仮定する：

| 銘柄 | $P_{\text{bid}}$ | $P_{\text{ask}}$ | スプレッド $s_i$ | $P_{\text{mid}}$ | 重み $w_i$ |
|:---|:---:|:---:|:---:|:---:|:---:|
| ATM コール（$K=38000$）| 840 | 860 | 20 円 | 850 円 | $1/400 = 0.00250$ |
| OTM コール（$K=39000$）| 240 | 260 | 20 円 | 250 円 | $1/400 = 0.00250$ |
| ディープOTM（$K=41000$）| 5 | 45 | 40 円 | 25 円 | $1/1600 = 0.000625$ |

OLS（単純平均）の場合の目的関数：

{% raw %}
$$E_{\text{OLS}} = (C_1 - 850)^2 + (C_2 - 250)^2 + (C_3 - 25)^2 \tag{7}$$
{% endraw %}

WLS の目的関数：

{% raw %}
$$E_{\text{WLS}} = 0.00250(C_1 - 850)^2 + 0.00250(C_2 - 250)^2 + 0.000625(C_3 - 25)^2 \tag{8}$$
{% endraw %}

**影響力の比率：** ATM : OTM : ディープ OTM = $0.00250 : 0.00250 : 0.000625 = 4 : 4 : 1$

ディープ OTM の影響力は ATM の **1/4 に削減**される．OLS では 3 銘柄が等しい影響力を持つため，25 円という「ほぼ意味のない数字」がパラメータを 1/3 の影響力で歪める——WLS はこれを数学的に防衛する．

### 2.2 中級設例：楽天RSSでの WLS キャリブレーション実装（Excel + Solver）

#### 板情報の取得セル群（ATM 付近 6 銘柄を対象）

```
セルA列:  銘柄コード（"9C38000L", "9P38000L", "9C39000L" など）
セルB列:  =RSS(A1,"最良買気配")   ← P_bid
セルC列:  =RSS(A1,"最良売気配")   ← P_ask
セルD列:  =(B1+C1)/2             ← P_mid
セルE列:  =(C1-B1)               ← スプレッド s_i
セルF列:  =IF(E1/D1>0.20, 0, 1/E1^2)   ← 重み w_i（スプレッド率20%超は除外）
```

#### パラメータセル（Solver の変化させるセル）

```
セルH1: κ = 2.0   ← 初期値
セルH2: θ = 0.04  ← 初期値（VI²で固定してもよい）
セルH3: ξ = 0.30  ← 初期値
セルH4: ρ = -0.70 ← 初期値
セルH5: v0 = 0.04 ← 初期値（日経平均VI²で固定推奨）
```

#### モデル理論価格（BS 近似で簡略化した場合）

```
セルI列:  =CALL_BS(S, K_i, T_i, r, SQRT(H2+(H5-H2)*EXP(-H1*T_i)))
          ← Heston の近似分散 E[v_T] ≈ θ + (v0-θ)e^{-κT} を σ とする簡略版
```

#### WLS 目的関数と Solver の設定

```
セルJ1:  =SUMPRODUCT(F1:F6, (I1:I6 - D1:D6)^2)   ← E(Φ)（WLS目的関数）

【Solver 設定】
  目的セル: J1（最小化）
  変化セル: H1:H4（κ, θ, ξ, ρ）
  ※ H5（v0）は日経平均VIの2乗で固定（バイパス法）
  制約: H1>0, H2>0, H3>0, -1<H4<0
```

### 2.3 上級設例：VBA による自動キャリブレーション（毎分更新）

```vba
Sub AutoCalibrate()
    ' 板情報を楽天RSSから更新（RTDLink 機能を利用）
    Application.CalculateFull
    DoEvents
    
    ' v0 を日経平均VIから自動固定（バイパス法）
    Dim VI As Double
    VI = Range("VI_Cell").Value / 100  ' 例：VI=20 → 0.20
    Range("H5").Value = VI ^ 2         ' v0 = VI²
    
    ' Solver で κ, θ, ξ, ρ を最適化
    SolverReset
    SolverOk SetCell:="$J$1", MaxMinVal:=2, ByChange:="$H$1:$H$4"
    SolverAdd CellRef:="$H$1", Relation:=3, FormulaText:="0.01"  ' κ > 0.01
    SolverAdd CellRef:="$H$2", Relation:=3, FormulaText:="0.001" ' θ > 0.001
    SolverAdd CellRef:="$H$3", Relation:=3, FormulaText:="0.01"  ' ξ > 0.01
    SolverAdd CellRef:="$H$4", Relation:=5, FormulaText:="-0.99" ' ρ < -0.99 は除外
    SolverSolve UserFinish:=True
    
    ' 全グリークを一括再計算（セルを強制更新）
    Range("C_Greeks").Calculate
    
    ' 結果をログシートに記録（タイムスタンプ付き）
    Dim ts As String
    ts = Format(Now(), "yyyy-mm-dd hh:mm:ss")
    With Sheets("Log")
        .Cells(.Rows.Count, 1).End(xlUp).Offset(1, 0).Value = ts
        .Cells(.Rows.Count, 1).End(xlUp).Value = Range("H1:H5").Value
    End With
End Sub
```

このマクロをタイマー（`Application.OnTime`）で毎分呼び出すことで，楽天RSS の板情報が更新されるたびに全グリークが自動再キャリブレーションされる環境が構築できる．

---

## 3. 知識体系における位置付け（表）

| キャリブレーション手法 | 使用するデータ源 | 適用場面 | 長所 | 短所 |
|:---|:---|:---|:---|:---|
| **OLS（単純最小二乗）**| 全銘柄の仲値（均等重み）| データが均質な場合 | 実装が簡単 | 薄い板ノイズに引きずられる |
| **WLS（重み付き最小二乗）**| 全銘柄の仲値 + スプレッド | 通常の実務（推奨）| 薄い板を数学的に無効化 | スプレッド率の閾値設定が必要 |
| **VI バイパス（$v_0$ 固定）**| 日経平均 VI 指数 | ナイトセッション・板が壊滅的に薄い時 | 個別板を全て無視できる | VI 自体のバグ（罠①〜③）を引き継ぐ |
| **ハイブリッド** | VI（マクロ固定）＋ ATM 板（局所補正）| 実務のベストプラクティス | VI のマクロ精度 ＋ 板の局所精度 | 実装が複雑 |

---

## 4. 参考文献・先行研究

### 4.1 原典

- Heston, S. L. (1993). "A Closed-Form Solution for Options with Stochastic Volatility with Applications to Bond and Currency Options." *Review of Financial Studies*, 6(2), 327–343.
- Demeterfi, K., Derman, E., Kamal, M., & Zou, J. (1999). "A Guide to Volatility and Variance Swaps." *Journal of Derivatives*, 6(3), 9–32.（日経平均 VI の計算に使われる分散スワップ公式の原典）

### 4.2 関連・発展論文

- Cont, R., & Larrard, A. (2013). "Price Dynamics in a Markovian Limit Order Market." *SIAM Journal on Financial Mathematics*, 4(1), 1–25.（板の需給構造とキャリブレーションへの影響）
- Gatheral, J., & Jacquier, A. (2014). "Arbitrage-Free SVI Volatility Surfaces." *Quantitative Finance*, 14(1), 59–71.（SVI モデルによる IV サーフェス全体の WLS フィッティングの実務論文）

---

## 補論 A：WLS の最良線形不偏推定量（BLUE）性の証明

**目標：** ガウス–マルコフ定理を使い，WLS 推定量が不偏推定量の中で最も分散が小さい（BLUE）ことを確認する．

#### 補論A-1：仮定の確認

仮定 C2 より，$\text{Var}(\epsilon_i) = \lambda_0^2 s_i^2$（各観測の誤差分散がスプレッドの 2 乗に比例する不均一分散：heteroscedasticity）．

#### 補論A-2：均一化変換

各観測を $\sqrt{w_i} = 1/s_i$ で割ってスケールする：

{% raw %}
$$\tilde{P}_i = \frac{P_{\text{mid},i}}{s_i}, \quad \tilde{C}_i = \frac{C_{\text{model},i}}{s_i}, \quad \tilde{\epsilon}_i = \frac{\epsilon_i}{s_i} \tag{A1}$$
{% endraw %}

変換後の誤差 $\tilde{\epsilon}_i$ の分散は $\text{Var}(\tilde{\epsilon}_i) = \text{Var}(\epsilon_i)/s_i^2 = \lambda_0^2$（定数）となり，均一分散（homoscedasticity）を満たす．

#### 補論A-3：OLS の適用と BLUE の確認

変換後の問題 $\min\sum(\tilde{C}_i - \tilde{P}_i)^2$ は均一分散の下での OLS であり，ガウス–マルコフ定理から直ちに BLUE が保証される．変換後の OLS は元の表記では WLS に対応するため，**WLS は BLUE である．** $\blacksquare$

均一な重みで元のデータに OLS を適用すると，誤差分散が不均一なためガウス–マルコフの条件が破れ，BLUE 性を失う——これが「単純 OLS は使ってはいけない」という数学的根拠の全体像である．
