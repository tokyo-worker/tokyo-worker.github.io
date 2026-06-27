---
layout: post
title: "伊藤の補題とブラック・ショールズ方程式：Theoretical Minimum"
date: 2026-06-27 00:00:00 +0900
categories: [金融工学, 確率微分方程式]
math: true
---

# 伊藤の補題とブラック・ショールズ方程式
### Theoretical Minimum

> **本稿の位置付け．** 伊藤の補題は，「株価のランダムな動きの2乗が時間に収束する（$(\Delta S)^2 \to S^2\sigma^2\,dt$）」という驚くべき事実を定式化した定理であり，ブラック・ショールズ（BS）偏微分方程式の導出に不可欠な道具立てである．本稿は，パスカルの三角形（二項ツリー）から出発し，テイラー展開とのつながりを通じて，大学1年生でも追跡できるレベルで BS 方程式 $\Theta + rS\Delta + \frac{1}{2}\sigma^2 S^2 \Gamma = rC$ を導く．楽天RSSで取れる数値を用いたセータ（時間価値の減少率）の具体的な計算方法も示す．

---
## 目次
- [1. 数理的俯瞰と厳密な導出](#1-数理的俯瞰と厳密な導出前提から結論への最短経路)
- [2. 設例：楽天RSSデータを使った段階的計算](#2-設例楽天rssデータを使った段階的計算)
- [3. 知識体系における位置付け](#3-知識体系における位置付け表)
- [4. 参考文献・先行研究](#4-参考文献先行研究)
- [補論 A：二次変動の厳密な計算](#補論-a二次変動の厳密な計算)

---
## 1. 数理的俯瞰と厳密な導出：前提から結論への最短経路

### 1.1 中心命題と帰結（結論の明示）

オプション価格 $C(S,t)$ が満たすべき普遍的なルールを与える BS 方程式は，

{% raw %}
$$\boxed{\Theta + rS\,\Delta + \frac{1}{2}\sigma^2 S^2\,\Gamma = rC} \tag{1}$$
{% endraw %}

ここで $\Theta = \partial C/\partial t$，$\Delta = \partial C/\partial S$，$\Gamma = \partial^2 C/\partial S^2$（前稿の定義と一致）．

*（式(1)は「オプションの時間価値の減少（セータ）＋ デルタヘッジの収益 ＋ ガンマから来る凸性の利益 ＝ 無リスク資産の収益」という収支バランス方程式である．）*

> **定理（ブラック–ショールズ偏微分方程式）．** 前稿の仮定 A1–A4 のもとで，無裁定条件を適用すると，任意のオプション価格 $C(S,t)$ は式(1)を満たさなければならない．
>
> **含意1（$\frac{1}{2}\sigma^2 S^2$の正体）．** この係数は，伊藤の補題から「$(\Delta S)^2$ が $S^2\sigma^2\,dt$ に確率的に収束する」という事実と，テイラー展開の二次項の係数 $\frac{1}{2}$ が合わさって生まれる．どちらが欠けても現れない．
>
> **含意2（テイラー展開の打ち切り位置）．** 時間を無限小にする極限では，$(\Delta S)^3 \propto (\Delta t)^{3/2}$ は $\Delta t$ より速くゼロへ消えるため，三階微分（スピード）以降は理論上の BS 方程式に現れない．現実の有限時間ヘッジでは三階微分が残ることに注意されたい．

---

### 1.2 基礎定義と前提（設定・仮定・変数・用語）

#### 1.2.1 仮定

| 番号 | 内容 | 必要な理由 |
|:---|:---|:---|
| A1 | 株価の微小変化 $\Delta S = \mu S\,\Delta t + S\sigma\,\Delta W$ に従う（前稿から継承） | 二次変動 $(\Delta S)^2 \to S^2\sigma^2\,dt$ の出所 |
| A5 | デルタヘッジされたポートフォリオ（オプション $-1$ 枚 $+$ 株 $\Delta$ 枚）は無リスク金利で成長する | 無裁定条件から BS 方程式が導かれる |

#### 1.2.2 変数リスト

| 記号 | 内容 | 分類 | 確率的性質 |
|:---|:---|:---|:---|
| $\Delta t$ | 微小時間ステップ（後に $dt$ へ） | 外生変数 | 確定値 |
| $\Delta W$ | ブラウン運動の増分（$\sim\mathcal{N}(0,\Delta t)$） | 外生変数 | 確率変数 |
| $\Pi$ | ヘッジポートフォリオの価値 | 内生変数 | 確率変数 |
| $\Theta$ | セータ $= \partial C/\partial t$（前稿のデルタ・ガンマと並ぶグリーク） | 内生変数 | 確定値（$S,t$ の関数）|

#### 1.2.3 用語定義

**テイラー展開（Taylor Expansion）**：滑らかな関数 $f(x)$ の，基準点 $x_0$ 付近での近似式 $f(x_0 + h) = f(x_0) + f'(x_0)h + \frac{1}{2}f''(x_0)h^2 + \cdots$．二次項の係数 $\frac{1}{2}$ は「2階微分（Γ）のパーツ」から生まれる数学的な必然である．

**二次変動（Quadratic Variation）**：確率過程 $S$ の動きを細かく刻んだ各ステップの増分の2乗の和 $\sum_i (\Delta S_i)^2$．通常の決定論的関数では $\to 0$ だが，ブラウン運動の場合は $\to \sigma^2 S^2 T$（非ゼロの確定値）に収束する．これが伊藤の補題の核心である．

**デルタヘッジポートフォリオ**：オプションを $-1$ 枚（売り）し，同時に原資産を $\Delta$ 単位（買い）保有する組み合わせ．デルタの定義上，この組み合わせの価値変化は一次の「$\Delta S$ への感応度」がキャンセルされ，残るのは二次の「ガンマ項」のみとなる（これが BS 方程式の $\frac{1}{2}\sigma^2 S^2\Gamma$ 項の意味である）．

---

### 1.3 導出（伊藤の補題 → テイラー展開 → BS方程式）

#### ステップ1：二項ツリー（パスカルの三角形）で「なぜ2乗が残るか」を直感的に理解する

1ステップ $\Delta t$ の間に，株価 $S$ は以下の2パターンで動くとする：

{% raw %}
$$\Delta S = \begin{cases} +S\sigma\sqrt{\Delta t} & \text{確率 } 1/2 \\ -S\sigma\sqrt{\Delta t} & \text{確率 } 1/2 \end{cases}$$
{% endraw %}

（$\sqrt{\Delta t}$ スケーリングはランダムウォークの標準偏差が $\propto \sqrt{\text{時間}}$ であることから来る．）

これを2乗する：

{% raw %}
$$(\Delta S)^2 = (+S\sigma\sqrt{\Delta t})^2 = S^2\sigma^2\,\Delta t \quad \text{（上がる場合）}$$
{% endraw %}

{% raw %}
$$(\Delta S)^2 = (-S\sigma\sqrt{\Delta t})^2 = S^2\sigma^2\,\Delta t \quad \text{（下がる場合）}$$
{% endraw %}

**どちらに進んでも $(\Delta S)^2 = S^2\sigma^2\,\Delta t$ と同じ値になる．** これがランダム性が消える瞬間である．

次に $n$ ステップ（時間 $T = n\,\Delta t$）繰り返すと，パスカルの三角形のどのルートを通っても，各ステップの2乗の和は，

{% raw %}
$$\sum_{i=1}^{n} (\Delta S_i)^2 = n \times S^2\sigma^2\,\Delta t = S^2\sigma^2 \times n\,\Delta t = S^2\sigma^2 T \tag{2}$$
{% endraw %}

$n \to \infty$（連続時間の極限）でも，この等式は確率1で成立する（補論 A で厳密に示す）．

{% raw %}
$$\boxed{(\Delta S)^2 \to S^2\sigma^2\,dt \quad (n \to \infty)} \tag{3}$$
{% endraw %}

#### ステップ2：オプション価値 $C(S,t)$ をテイラー展開する

$C$ は $S$ と $t$ の2変数関数である．$(S,t)$ から微小変化 $(S+\Delta S,\; t+\Delta t)$ に移ったときの $\Delta C$ を，多変数テイラー展開で展開する：

{% raw %}
$$\Delta C = \frac{\partial C}{\partial t}\,\Delta t + \frac{\partial C}{\partial S}\,\Delta S + \frac{1}{2}\frac{\partial^2 C}{\partial S^2}\,(\Delta S)^2 + \frac{1}{2}\frac{\partial^2 C}{\partial t^2}\,(\Delta t)^2 + \frac{\partial^2 C}{\partial S\,\partial t}\,\Delta S\,\Delta t + \cdots \tag{4}$$
{% endraw %}

> **式(4)の意図．** これは「$C$ を $S$ の関数としてテイラー展開する（①）」のが正確な表現である—$\Delta C$ を $\Delta S$ の関数として展開する（②）のではない．$C(S,t)$ という「地図」を与えられ，現在地 $(S_0, t_0)$ から少し動いた先 $(S_0+\Delta S,\; t_0+\Delta t)$ での高さを近似するのがテイラー展開の本質である．

#### ステップ3：高次項を整理して伊藤の補題を得る

$\Delta t \to dt$ の極限で，各項のオーダーを比較する：

| 項 | オーダー | 扱い |
|:---|:---|:---|
| $\partial C/\partial t \cdot dt$ | $O(dt)$ | 残る（セータ） |
| $\partial C/\partial S \cdot dS$ | $O(\sqrt{dt})$（確率的） | 残る（デルタ項） |
| $\frac{1}{2}\partial^2 C/\partial S^2 \cdot (dS)^2$ | $O(dt)$（ステップ1より） | **残る（ガンマ項）** |
| $\frac{1}{2}\partial^2 C/\partial t^2 \cdot (dt)^2$ | $O(dt^2)$ | $dt \to 0$ で消える |
| $\partial^2 C/\partial S\partial t \cdot dS\cdot dt$ | $O(dt^{3/2})$ | 消える |
| 三階微分以降 | $O(dt^{3/2})$ 以上 | 消える |

$(dS)^2 = S^2\sigma^2\,dt$（式(3)）を代入すると，**伊藤の補題**が得られる：

{% raw %}
$$dC = \underbrace{\frac{\partial C}{\partial t}\,dt}_{\Theta\,dt} + \underbrace{\frac{\partial C}{\partial S}\,dS}_{\Delta\,dS} + \underbrace{\frac{1}{2}\frac{\partial^2 C}{\partial S^2} S^2\sigma^2\,dt}_{\frac{1}{2}\Gamma S^2\sigma^2\,dt} \tag{5}$$
{% endraw %}

**式(5)の伊藤の補題は，「テイラー展開で二階微分までとる際に，$(dS)^2$ が消えずに $S^2\sigma^2\,dt$ として残る」という確率微積分特有のルールを示している．**

#### ステップ4：デルタヘッジポートフォリオの損益を整理する

ポートフォリオ価値 $\Pi = -C + \Delta \cdot S$（オプション売り + 株 $\Delta$ 枚保有）の変化は，

{% raw %}
$$d\Pi = -dC + \Delta\,dS \tag{6}$$
{% endraw %}

式(5)を代入すると，

{% raw %}
$$d\Pi = -\Theta\,dt - \Delta\,dS - \frac{1}{2}\Gamma S^2\sigma^2\,dt + \Delta\,dS = -\Theta\,dt - \frac{1}{2}\Gamma S^2\sigma^2\,dt \tag{7}$$
{% endraw %}

$\Delta\,dS$ の項がキャンセルされ（これがデルタヘッジの目的），ポートフォリオ変化に確率的な項（$dW$）が含まれなくなる．つまり $d\Pi$ は確定的（リスクフリー）になる．

#### ステップ5：無裁定条件を適用してBS方程式を得る

リスクフリーのポートフォリオ $\Pi$ は，無裁定条件より無リスク金利 $r$ で成長しなければならない：

{% raw %}
$$d\Pi = r\Pi\,dt = r(-C + \Delta S)\,dt \tag{8}$$
{% endraw %}

式(7) $=$ 式(8) として整理する：

{% raw %}
$$-\Theta\,dt - \frac{1}{2}\Gamma S^2\sigma^2\,dt = -rC\,dt + r\Delta S\,dt$$
{% endraw %}

両辺を $dt$ で割り，符号を整理すると，

{% raw %}
$$\boxed{\Theta + rS\,\Delta + \frac{1}{2}\sigma^2 S^2\,\Gamma = rC} \tag{9}$$
{% endraw %}

これがブラック–ショールズ偏微分方程式（式(1)）の完全な導出である．

---

### 1.4 各項の解釈（極端な状態の解剖）

**ガンマ項 $\frac{1}{2}\sigma^2 S^2\,\Gamma$：** 式(1)のなかでボラティリティ $\sigma$ が明示的に現れる唯一の項．これはデルタヘッジ後に残る「凸性の利益（ロングガンマポジション）」であり，株価が大きく動くほど大きくなる．ガンマが高いオプション（ATM・満期近く）の買い手はこの恩恵を受ける一方，セータ（$\Theta$）として時間価値が侵食される．

**ガンマとセータのトレードオフ：** 式(1)を $\Theta = rC - rS\Delta - \frac{1}{2}\sigma^2 S^2\Gamma$ と変形すると，セータ（時間価値の減少）はガンマ（凸性利益）と正確に反対方向に動くことが見て取れる．「ガンマを稼ごうとするとセータを払う，セータを稼ごうとするとガンマリスクを背負う」というトレーダーが日々直面するトレードオフは，この方程式そのものである．

---

### 1.5 知識の構造図

```
【パスカルの三角形（二項ツリー）】
  各ステップ: ΔS = ±S·σ·√Δt
  2乗すると: (ΔS)² = S²·σ²·Δt（ランダム性消滅）
          ↓
【伊藤の補題（連続時間の極限）】
  dC = Θ·dt + Δ·dS + (1/2)·Γ·S²σ²·dt
          ↓
【デルタヘッジポートフォリオ（Δ·dS を消す）】
  dΠ = -Θ·dt - (1/2)·Γ·S²σ²·dt（確定的）
          ↓
【無裁定条件（= r·Π·dt）を適用】
  Θ + rS·Δ + (1/2)·σ²·S²·Γ = rC
          ↓
【境界条件 C(S,T) = max(S-K,0) を与えて解く】
  → ブラック–ショールズの解析解（前稿の式(2)）
```

---

## 2. 設例：楽天RSSデータを使った段階的計算

### 2.1 初歩的設例：セータ（時間価値減少率）の計算

楽天RSSで取得した数値を使い，ATMコールのセータ $\Theta$ を計算する．セータはBS方程式を $t$ で微分して導かれる（コール）：

{% raw %}
$$\Theta = -\frac{S\,n(d_1)\,\sigma}{2\sqrt{T}} - rK e^{-rT} N(d_2) \tag{10}$$
{% endraw %}

#### 設定数値（楽天RSSスナップショット）

- $S = 38{,}000$，$K = 38{,}000$（ATM），$T = 30/365 \approx 0.08219$ 年
- $r = 0.001$，$\sigma = 0.20$（IV）
- 前稿より $d_1 \approx 0.0301$，$d_2 \approx -0.0272$
- $n(d_1) \approx 0.3989$，$N(d_2) \approx 0.4891$

#### 計算 Step 1：第1項（ガンマ関連のセータ）

{% raw %}
$$-\frac{S\,n(d_1)\,\sigma}{2\sqrt{T}} = -\frac{38000 \times 0.3989 \times 0.20}{2 \times 0.28669}$$
{% endraw %}

{% raw %}
$$= -\frac{38000 \times 0.07978}{0.57338} = -\frac{3031.6}{0.57338} \approx -5286 \text{ 円/年} \tag{11}$$
{% endraw %}

#### 計算 Step 2：第2項（金利関連のセータ）

{% raw %}
$$-rK e^{-rT} N(d_2) = -0.001 \times 38000 \times 0.99992 \times 0.4891 \approx -18.6 \text{ 円/年} \tag{12}$$
{% endraw %}

#### 計算 Step 3：日次セータを求める

{% raw %}
$$\Theta_{\text{年間}} \approx -5286 - 18.6 \approx -5305 \text{ 円/年} \tag{13}$$
{% endraw %}

{% raw %}
$$\Theta_{\text{1日}} = \frac{-5305}{365} \approx \boxed{-14.5 \text{ 円/日}} \tag{14}$$
{% endraw %}

**解釈：** 株価が全く動かなくても，このATMコールオプション1枚（日経225なら $\times 1000$ 倍で契約）の価値は，1日経過するごとに約14.5円（＝1枚で14,500円）ずつ目減りする．これが「タイムディケイ（時間価値の喪食）」の実体である．

#### 楽天RSSでのセータ計算セル

```
セルD2: =-(A1*NORM.S.DIST(B1,FALSE)*A5)/(2*SQRT(A3)) - A4*A2*EXP(-A4*A3)*NORMSDIST(B2)
        ← 年次セータ（円/年）
セルD3: =D2/365
        ← 日次セータ（円/日）
```

（セル番号は前稿から継続：A1=$S$，A2=$K$，A3=$T$，A4=$r$，A5=$\sigma$，B1=$d_1$，B2=$d_2$）

---

### 2.2 中級設例：残存日数が変わるとセータはどう変化するか

同じATMオプション（$\sigma = 20\%$）で，$T$ を60日→30日→7日→1日と変えて比較する．

| 残存日数 | $T$ (年) | $\Theta_{\text{年間}}$ | $\Theta_{\text{1日}}$ |
|:---:|:---:|:---:|:---:|
| 60日 | 0.1644 | −3,743 円/年 | **−10.2 円/日** |
| 30日 | 0.08219 | −5,305 円/年 | **−14.5 円/日** |
| 7日 | 0.01918 | −10,984 円/年 | **−30.1 円/日** |
| 1日 | 0.00274 | −29,055 円/年 | **−79.6 円/日** |

**観察：** 残存日数が $1/30$ に縮んでも，セータの絶対値は単純に30倍（$1/\sqrt{1/30} \approx 5.5$倍）になる．分母に $\sqrt{T}$ が入っているため，満期が近づくほどセータの悪化が「加速度的」になるのがわかる．

---

### 2.3 上級設例：BS方程式による内部整合性チェック

楽天RSSで実際の板情報（コール価格 $C$，$S$，$T$）を取得したあと，前稿で求めたデルタ・ガンマと本稿のセータを使い，BS方程式が成立しているかを確認することで「モデルのキャリブレーション状態」を簡易チェックできる．

BS方程式 $\Theta + rS\Delta + \frac{1}{2}\sigma^2 S^2\Gamma = rC$ の左辺と右辺を計算し，差の割合（残差率）を見る：

{% raw %}
$$\text{残差率} = \frac{\left|\Theta + rS\Delta + \frac{1}{2}\sigma^2 S^2\Gamma - rC\right|}{rC} \tag{15}$$
{% endraw %}

残差率が小さい（例：$<0.1\%$）なら，使用した $\sigma$（IV）が板情報と整合していることを確認できる．残差が大きい場合は，板情報の仲値の誤りまたはIVの再推定が必要なことを示す．

**楽天RSSでのチェックセル：**

```
セルE1: =D2 + A4*A1*B3 + 0.5*A5^2*A1^2*C2    ← BS方程式左辺
セルE2: =A4*C1                                  ← BS方程式右辺（rC）
セルE3: =ABS(E1-E2)/ABS(E2)                    ← 残差率（0.1%以下なら良好）
```

---

## 3. 知識体系における位置付け（表）

| 数学的構造 | オプション理論での役割 | 楽天RSSで「見える」変数 |
|:---|:---|:---|
| テイラー展開（2次まで） | $\Delta C \approx \Theta\,dt + \Delta\,dS + \frac{1}{2}\Gamma\,(dS)^2$ | $C$（コール価格）の時刻間差分 |
| 伊藤の補題（$(dS)^2 \to S^2\sigma^2\,dt$） | テイラー展開の二次項が消えずに残る理由 | $\sigma$（IV）として板から逆算 |
| BS偏微分方程式 | グリーク間のバランス式（内部整合性） | 全グリークの整合性チェックに利用 |
| 無裁定条件 | リスクフリーポートフォリオの収益 $= r\Pi$ | $r$（金利）として外生的に与える |

---

## 4. 参考文献・先行研究

### 4.1 原典

- Itô, K. (1951). "On Stochastic Differential Equations." *Memoirs of the American Mathematical Society*, 4, 1–51.
- Black, F., & Scholes, M. (1973). "The Pricing of Options and Corporate Liabilities." *Journal of Political Economy*, 81(3), 637–654.

### 4.2 関連・発展論文

- Cox, J. C., Ross, S. A., & Rubinstein, M. (1979). "Option Pricing: A Simplified Approach." *Journal of Financial Economics*, 7(3), 229–263.（二項ツリーからBSモデルへの収束を示した古典）
- Shreve, S. E. (2004). *Stochastic Calculus for Finance II*. Springer.（確率微積分の教科書的標準）

---

## 補論 A：二次変動の厳密な計算

**目標：** $n \to \infty$（連続時間極限）で $\sum_{i=1}^{n}(\Delta S_i)^2 \to S^2\sigma^2 T$ が確率1で成立することを，大学1年レベルの議論で示す．

#### 補論A-1：ランダムウォークの設定

各ステップで $\epsilon_i = +1$ または $-1$（等確率）を取る独立な確率変数を使い，$\Delta S_i = S\sigma\sqrt{\Delta t}\,\epsilon_i$ と定義する（$\Delta t = T/n$）．

#### 補論A-2：2乗の計算

{% raw %}
$$(\Delta S_i)^2 = S^2\sigma^2\,\Delta t\,\epsilon_i^2 = S^2\sigma^2\,\Delta t \tag{A1}$$
{% endraw %}

$\epsilon_i^2 = (+1)^2 = (-1)^2 = 1$ であるから，$\epsilon_i$ がどの値を取ってもこの等式は成立する．

#### 補論A-3：$n$ ステップの合計

{% raw %}
$$\sum_{i=1}^{n}(\Delta S_i)^2 = n \times S^2\sigma^2\,\Delta t = n \times S^2\sigma^2 \times \frac{T}{n} = S^2\sigma^2 T \tag{A2}$$
{% endraw %}

これは $n$ によらず常に $S^2\sigma^2 T$ である（$n$ と $\Delta t = T/n$ が打ち消し合う）．$n \to \infty$ でも値は変わらない．$\blacksquare$

#### 補論A-4：三階微分項が消える理由

三階微分の項は $(\Delta S)^3 = (S\sigma\sqrt{\Delta t}\,\epsilon_i)^3 = S^3\sigma^3\,(\Delta t)^{3/2}\,\epsilon_i^3$ を含む．$n$ ステップの合計は，

{% raw %}
$$\sum_{i=1}^{n}(\Delta S_i)^3 \sim S^3\sigma^3\,n\,(\Delta t)^{3/2} = S^3\sigma^3\,n \cdot \left(\frac{T}{n}\right)^{3/2} = S^3\sigma^3 T^{3/2} \cdot \frac{1}{\sqrt{n}} \tag{A3}$$
{% endraw %}

$n \to \infty$（$\Delta t \to 0$）のとき，式(A3)は $\to 0$ に収束する．したがって三階微分以降のテイラー展開の項は，連続時間極限では完全に消える．$\blacksquare$
