---
layout: post
title: "全グリークの偏微分定義と多変数環境における動的プロファイル解剖：Theoretical Minimum"
date: 2026-06-27 00:00:00 +0900
categories: [金融工学, リスク管理]
math: true
---

# 全グリークの偏微分定義と多変数環境における動的プロファイル解剖
### Theoretical Minimum

> **本稿の位置付け．** デルタ・ガンマ・ベガ・セータ・ロー・ボルガ・バンナの各グリークは，いずれも「オプション価格 $C(S, \sigma, r, t)$ を何らかの変数で偏微分したもの」である．本稿は各グリークの数理的定義と，「行使価格までの距離」「残存日数」「ボラティリティ」という 3 つの環境パラメータが変化するとき，グリークのプロファイル（形状）がどのように劇的に変形するかを，ATM ガンマ爆発の数値計算を中心に self-contained に解剖する．楽天RSSでの実装セルも示す．

---
## 目次
- [1. 数理的俯瞰と厳密な導出](#1-数理的俯瞰と厳密な導出全グリークの定義と動的プロファイル)
- [2. 設例：楽天RSSデータを使った段階的計算](#2-設例楽天rssデータを使った段階的計算)
- [3. 知識体系における位置付け](#3-知識体系における位置付け表)
- [4. 参考文献・先行研究](#4-参考文献先行研究)

---
## 1. 数理的俯瞰と厳密な導出：全グリークの定義と動的プロファイル

### 1.1 中心命題と帰結（結論の明示）

オプション価格 $C(S, \sigma, r, t)$ を各変数で偏微分した感応度のリストは以下の通りである：

{% raw %}
$$\boxed{\begin{aligned}
\Delta &= \frac{\partial C}{\partial S} = N(d_1) \\
\Gamma &= \frac{\partial^2 C}{\partial S^2} = \frac{n(d_1)}{S\sigma\sqrt{T}} \\
\mathcal{V} &= \frac{\partial C}{\partial \sigma} = S\,n(d_1)\sqrt{T} \\
\Theta &= \frac{\partial C}{\partial t} = -\frac{S\,n(d_1)\sigma}{2\sqrt{T}} - rKe^{-rT}N(d_2) \\
\rho &= \frac{\partial C}{\partial r} = KTe^{-rT}N(d_2) \\
\text{Volga} &= \frac{\partial^2 C}{\partial \sigma^2} = S\,n(d_1)\sqrt{T}\cdot d_1 d_2 / \sigma \\
\text{Vanna} &= \frac{\partial^2 C}{\partial S\partial\sigma} = -n(d_1)\cdot d_2/\sigma
\end{aligned}} \tag{1}$$
{% endraw %}

これらは全て同一の $d_1, d_2, n(d_1), N(d_1)$ を通じて相互に連結されている．$\sigma$ が決まれば全グリークが確定する．

> **定理（3 軸プロファイル変形の定理）．** 以下 3 つの環境パラメータの変化に対して，グリークのプロファイルは独立かつ非線形に変形する：
>
> **軸①：ストライクの距離（$|S - K|$ の変化）** デルタは単調増加，ガンマ・ベガは ATM で最大の釣鐘型を描く．
>
> **軸②：残存日数（$T \to 0$ の変化）** ATM のガンマ・セータは分母 $\sqrt{T}$ のため $T \to 0$ で爆発（$\to \infty$），OTM のガンマ・ベガは消滅（$\to 0$）する．
>
> **軸③：ボラティリティ（$\sigma$ の変化）** $\sigma$ 増大は ATM のガンマを削って左右に平滑化し，「死んでいた」OTM のガンマ・ベガを「覚醒」させる．

---

### 1.2 基礎定義と前提

#### 1.2.1 変数リスト（全グリーク一覧）

| グリーク | 偏微分定義 | 経済的意味 | ATM での符号 |
|:---|:---|:---|:---|
| $\Delta$ | $\partial C/\partial S$ | 原資産 1 円上昇によるプレミアム変化 | $\approx +0.5$（コール）|
| $\Gamma$ | $\partial^2 C/\partial S^2$ | デルタ自体の感応度（凸性）| $= n(d_1)/(S\sigma\sqrt{T}) > 0$ |
| $\mathcal{V}$（ベガ）| $\partial C/\partial\sigma$ | $\sigma$ 1% 上昇によるプレミアム変化 | $= Sn(d_1)\sqrt{T} > 0$ |
| $\Theta$（セータ）| $\partial C/\partial t$ | 時間の経過 1 日あたりのプレミアム減少 | $< 0$（タイムディケイ）|
| $\rho$ | $\partial C/\partial r$ | 金利 1% 上昇によるプレミアム変化 | $> 0$（コール），$< 0$（プット）|
| Volga | $\partial^2 C/\partial\sigma^2$ | ベガの $\sigma$ 感応度 | OTM 売りでは $< 0$ |
| Vanna | $\partial^2 C/\partial S\partial\sigma$ | デルタの $\sigma$ 感応度 / ベガの $S$ 感応度 | ATM 付近で符号変化 |

#### 1.2.2 用語定義

**プロファイル（Profile）**：グリークの値を縦軸，株価（または他の変数）を横軸に取ったグラフの形状のこと．同じグリークでも残存日数や $\sigma$ が変化するとプロファイルが大きく変形するため，「今の市場環境でのプロファイルはどの形か」を把握することが実務的なリスク管理の基本になる．

**ATMガンマ爆発**：残存日数 $T \to 0$ の極限において，ATM（$S = K$）のガンマ $\Gamma_{\text{ATM}} = n(0)/(S\sigma\sqrt{T}) \approx 0.3989/(S\sigma\sqrt{T})$ が分母 $\sqrt{T} \to 0$ によって $\to +\infty$ に発散する現象．満期直前の ATM オプションは「1 円の株価変動でデルタが 0 から 1 に飛ぶ可能性がある」というリスクを具現化した爆発である．

---

### 1.3 導出（3 軸プロファイル変形の解剖）

#### ① ストライク距離によるプロファイル変形

ATM から OTM へ離れるほど $d_1$ の絶対値が大きくなる．各グリークへの影響を確認する：

**デルタ：** $\Delta = N(d_1)$．$d_1 \to +\infty$（深く ITM）で $N(d_1) \to 1$，$d_1 \to -\infty$（深く OTM）で $N(d_1) \to 0$．ATM では $N(0) = 0.5$ を中心に単調増加する S 字カーブ．

**ガンマ・ベガ：** $\Gamma \propto n(d_1)$，$\mathcal{V} \propto n(d_1)$．標準正規密度 $n(d_1) = \frac{1}{\sqrt{2\pi}}e^{-d_1^2/2}$ は $d_1 = 0$（ATM）で最大値 $\approx 0.3989$ を取り，$|d_1| \to \infty$ で急速に 0 に収束する．よってガンマとベガは**ATM を頂点とする釣鐘型（ベルカーブ）**を描く．

#### ② 残存日数によるプロファイル変形

ATM（$S = K$，$r \approx 0$ で近似）でのガンマの閉形式簡略式：

{% raw %}
$$\Gamma_{\text{ATM}} = \frac{n(0)}{S\sigma\sqrt{T}} = \frac{1}{\sqrt{2\pi}} \cdot \frac{1}{S\sigma\sqrt{T}} \approx \frac{0.3989}{S\sigma\sqrt{T}} \tag{2}$$
{% endraw %}

$T$ を 30 日 → 1 日と変化させると：

| 残存日数 | $T$ (年) | $\sqrt{T}$ | $\Gamma_{\text{ATM}}$（$S=38000,\sigma=20\%$）| 倍率 |
|:---:|:---:|:---:|:---:|:---:|
| 30 日 | 0.08219 | 0.28669 | 0.000183 | 基準 |
| 7 日 | 0.01918 | 0.13849 | 0.000379 | 2.07 倍 |
| 1 日 | 0.00274 | 0.05234 | 0.001003 | 5.48 倍 |

**残存 1 日になるとガンマは 5.48 倍に爆発する．** 一方 OTM では $n(d_1^{\text{OTM}}) \to 0$ が $1/\sqrt{T} \to \infty$ より速いため，OTM ガンマは満期に向けて消滅する（二極化）．

#### ③ ボラティリティによるプロファイル変形

ATM のガンマは式(2)から $\sigma$ に反比例する（$\Gamma_{\text{ATM}} \propto 1/\sigma$）：

{% raw %}
$$\Gamma_{\text{ATM}}(\sigma_1) / \Gamma_{\text{ATM}}(\sigma_2) = \sigma_2 / \sigma_1 \tag{3}$$
{% endraw %}

$\sigma$ が 20% → 40% に上昇するとATMガンマは半減する．しかしその一方で，OTM の $d_1$ の絶対値が $\sigma$ 増大で小さくなるため（$d_1 \propto 1/\sigma$），OTM 銘柄のガンマが「覚醒」して浮上する．

**トレーダーへの影響：** $\sigma$ 急上昇時にアイアンコンドルの OTM 売り翼のガンマが突然覚醒し，デルタの非線形な変化が爆発する——これが「ガンマが死んでいたはずの OTM に突如牙を剥く」現象の数学的根拠である．

#### セータとガンマのトレードオフ（BS 方程式から直接読む）

BS 方程式 $\Theta + rS\Delta + \frac{1}{2}\sigma^2 S^2\Gamma = rC$ を変形すると：

{% raw %}
$$\Theta = rC - rS\Delta - \frac{1}{2}\sigma^2 S^2\Gamma \tag{4}$$
{% endraw %}

ATM・$r \approx 0$ のとき $C \approx S\sigma\sqrt{T/2\pi}$ より $rC \approx 0$，$rS\Delta \approx 0$，したがって：

{% raw %}
$$\Theta_{\text{ATM}} \approx -\frac{1}{2}\sigma^2 S^2\Gamma_{\text{ATM}} \tag{5}$$
{% endraw %}

**セータとガンマは同じ係数でトレードオフになっている**——高いガンマ（凸性利益）を持つポジションは，必ず同程度のセータ（時間的損失）を払い続けなければならない．

---

### 1.4 知識の構造図

```
【環境変数が変化するとき，グリークプロファイルはどう変形するか】

                 ストライク距離 |S-K| ↑
               ┌────────────────────────────┐
               │ デルタ: S字  → 単調増加      │
               │ ガンマ: 鐘型 → 頂点がATMで最大│
               │ ベガ:   鐘型 → 頂点がATMで最大│
               └────────────────────────────┘

                 残存日数 T → 0
               ┌────────────────────────────┐
               │ ATM ガンマ: √T 分母で→ ∞爆発│
               │ OTM ガンマ: n(d1)→0 で 消滅 │
               │ セータ ATM: 同様に → -∞爆発 │
               └────────────────────────────┘

                 ボラティリティ σ ↑
               ┌────────────────────────────┐
               │ ATM ガンマ: 1/σ で→ 縮小    │
               │ OTM ガンマ: d1 縮小で → 覚醒│
               │ ATM ベガ:   Sn(d1)√T 変化なし│
               └────────────────────────────┘
```

---

## 2. 設例：楽天RSSデータを使った段階的計算

### 2.1 初歩的設例：ATM ガンマ爆発を数値で追う（残存 30 日 → 1 日）

#### 設定数値

$S = 38{,}000$ 円，$K = 38{,}000$ 円，$r = 0.01$，$\sigma = 0.20$

#### Step 1：残存 30 日のガンマ

{% raw %}
$$d_1^{(30)} = \frac{0 + (0.01 + 0.02)\times 0.08219}{0.20\times 0.28669} \approx 0.0540$$
$$n(d_1^{(30)}) = \frac{1}{\sqrt{2\pi}}e^{-0.0540^2/2} \approx 0.3989$$
$$\Gamma^{(30)} = \frac{0.3989}{38000\times 0.20\times 0.28669} \approx \frac{0.3989}{2178.8} \approx 0.0001831 \tag{6}$$
{% endraw %}

#### Step 2：残存 1 日のガンマ

{% raw %}
$$d_1^{(1)} = \frac{0 + (0.01 + 0.02)\times 0.00274}{0.20\times 0.05234} \approx 0.01564$$
$$n(d_1^{(1)}) \approx 0.3990$$
$$\Gamma^{(1)} = \frac{0.3990}{38000\times 0.20\times 0.05234} \approx \frac{0.3990}{397.8} \approx 0.001003 \tag{7}$$
{% endraw %}

{% raw %}
$$\text{倍率} = 0.001003 / 0.0001831 \approx \boxed{5.48 \text{ 倍}} \tag{8}$$
{% endraw %}

#### Step 3：セータとのトレードオフを確認する

{% raw %}
$$\Theta_{\text{ATM}}^{(30)} \approx -\frac{1}{2}\times (0.20)^2\times (38000)^2 \times 0.0001831 \approx -5295 \text{ 円/年} \approx -14.5 \text{ 円/日} \tag{9}$$
{% endraw %}

{% raw %}
$$\Theta_{\text{ATM}}^{(1)} \approx -\frac{1}{2}\times (0.20)^2\times (38000)^2 \times 0.001003 \approx -28979 \text{ 円/年} \approx -79.4 \text{ 円/日} \tag{10}$$
{% endraw %}

**ガンマが 5.48 倍になると，セータも同じ比率で 5.48 倍になる**（式(5)が $1:1$ のトレードオフを保証する）．

### 2.2 中級設例：σ 変化によるOTMガンマの「覚醒」

$K = 36{,}000$ 円（ATM から −2,000 円のプット）で，$\sigma$ を 15% → 30% に変化させた場合：

| $\sigma$ | $d_1$ | $n(d_1)$ | $\Gamma$ | ATM ガンマ比 |
|:---:|:---:|:---:|:---:|:---:|
| 15% | $-0.870$ | $0.2736$ | $0.000253$ | 基準 |
| 20% | $-0.541$ | $0.3407$ | $0.000224$ | 0.89 倍 |
| 30% | $-0.268$ | $0.3847$ | $0.000168$ | 0.66 倍 |

$\sigma$ が倍になると OTM のガンマが 0.66 倍に「浮上」する（消滅から覚醒へ移行する）一方，ATM のガンマは $1/\sigma$ で縮小している．実際のアイアンコンドルの IV 急騰局面（VIX が 2 倍になるとき）に，翼のガンマが突如として問題を起こすのはこのメカニズムによる．

### 2.3 上級設例：楽天RSSで全グリークをリアルタイム表示するセル設計

前稿の IV 逆算（ゴールシークまたは VBA ニュートン法）で $\hat{\sigma}$ が確定した後，全グリークを一括計算するセル：

```
（前稿からの継続：A1=S，A2=K，A3=T，A4=r，A5=σ̂，B1=d1，B2=d2）

【1次グリーク】
セルC1: =NORMSDIST(B1)                               ← Δ（デルタ）
セルC2: =NORM.S.DIST(B1,FALSE)/(A1*A5*SQRT(A3))     ← Γ（ガンマ）
セルC3: =A1*NORM.S.DIST(B1,FALSE)*SQRT(A3)          ← V（ベガ）
セルC4: =-(A1*NORM.S.DIST(B1,FALSE)*A5)/(2*SQRT(A3)) - A4*A2*EXP(-A4*A3)*NORMSDIST(B2)
                                                     ← Θ（セータ，年次）
セルC5: =C4/365                                      ← Θ（セータ，日次）
セルC6: =A2*A3*EXP(-A4*A3)*NORMSDIST(B2)            ← ρ_call

【2次グリーク】
セルD1: =C3*B1*B2/A5                                 ← Volga
セルD2: =-NORM.S.DIST(B1,FALSE)*B2/A5               ← Vanna

【BS方程式の内部整合性チェック】
セルE1: =C4 + A4*A1*C1 + 0.5*A5^2*A1^2*C2          ← BS左辺
セルE2: =A4*(A1*C1 - A2*EXP(-A4*A3)*NORMSDIST(B2)) ← BS右辺（rΠ）
セルE3: =ABS(E1-E2)/MAX(ABS(E2),0.001)             ← 残差率（0.1%以下なら良好）
```

---

## 3. 知識体系における位置付け（表）

| 環境変化 | ガンマへの影響 | ベガへの影響 | セータへの影響 | 実務的な意味 |
|:---|:---|:---|:---|:---|
| **$T \to 0$（ATM）** | **爆発 $\to \infty$** | 収縮 | **爆発 $\to -\infty$** | SQ 直前 ATM 売りは超危険 |
| **$T \to 0$（OTM）** | 消滅 $\to 0$ | 消滅 $\to 0$ | 消滅 $\to 0$ | OTM 買いは紙くず化が加速 |
| **$\sigma \uparrow$** | ATM で縮小，OTM で覚醒 | 全域で拡大 | ATM で縮小 | 板情報から IV が上昇するとき OTM ガンマに要注意 |
| **$|S-K| \uparrow$**（OTM 方向）| 単調減少（鐘の裾）| 単調減少（鐘の裾）| 単調減少 | ストライクを遠くするとリスクは下がるが収入も減る |

---

## 4. 参考文献・先行研究

### 4.1 原典

- Black, F., & Scholes, M. (1973). "The Pricing of Options and Corporate Liabilities." *Journal of Political Economy*, 81(3), 637–654.
- Taleb, N. N. (1997). *Dynamic Hedging: Managing Vanilla and Exotic Options*. Wiley Finance.（グリークのプロファイル変形の実務的解説の決定版）

### 4.2 関連・発展論文

- Hull, J. C. (2021). *Options, Futures, and Other Derivatives* (11th ed.). Pearson.（第19章：グリークの包括的な数値例と解説）
- Carr, P., & Madan, D. (1999). "Option Valuation Using the Fast Fourier Transform." *Journal of Computational Finance*, 2(4), 61–73.（高次グリークの数値計算手法）
