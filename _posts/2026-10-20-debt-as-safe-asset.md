---
layout: post
title: "Debt as Safe Asset（Brunnermeier・Merkel・Sannikov）：数理モデル"
date: 2026-10-20 00:00:00 +0900
categories: [マクロ経済学, 安全資産]
math: true
---

{% raw %}
# Debt as Safe Asset：数理モデル
### 特異リスク下の再取引サービスフローと政府債務の評価：数理モデル早見表

---

## 目次

- [0. 論文の紹介](#sec0)
- [1. 数理モデル](#sec1)
- [2. 説明できる現象](#sec2)
- [3. 整理している点](#sec3)
- [4. モデルの対象外](#sec4)
- [付録：導出手順](#appendix)

---

## 0. 論文の紹介 {#sec0}

**書誌**

Markus K. Brunnermeier（Princeton）, Sebastian A. Merkel（Bristol）, Yuliy Sannikov（Stanford）, "Debt as Safe Asset", NBER Working Paper No. 29626, 2022年1月（2025年6月改訂）, JEL E44, G11, G12。この論文は、旧題 "Debt as Safe Asset: Mining the Bubble"、"Safe Assets: A Dynamic Retrading Perspective" などの版を置き換えるものです。

**論文の内容**

安全資産の価格は、将来のキャッシュフローの割引現在価値だけでなく、再取引によって得られる自己保険のサービスフローの割引現在価値も含む、というのが論文の中心的な主張です。市場が不完備で個人ごとの特異リスクを消せないとき、家計は不運なショックの後に安全資産を売ることで部分的に保険をかけられます。このサービスフローは、特異リスクが高まる不況期に大きくなるため、政府債務の価値は反循環的になり、CAPM の β は負になりえます。その結果、次のことが整理されます。

- 政府債務評価パズル（Jiang et al.）が解ける。
- 実質利子率が成長率を下回る状況（$r\lt g$）で、債務を返済せずに恒常的な基礎的財政赤字を続けられる（バブルの採掘）。ただし債務の価値という課税ベースが縮むため「債務ラッファー曲線」が現れる。
- 株式市場では、特異リスクの上昇が安全資産への逃避を生み、株価の変動が大きくなる。

**この記事について**

この記事は、上の論文の背景にある数理モデルだけを早見表の形で整理したものです。論文の本文・付録にある設定、均衡の解、評価式、拡張モデルを、式を簡略化せずにそのまま書き出し、各式の導出を付録に置きました。論文の校正（キャリブレーション）の詳細、図表の数値、先行研究の整理は扱いません。式番号は本記事独自の通し番号で、論文の番号とは一致しません。

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間**

連続時間・無限期間。$[0,1]$ 上の連続体の家計 $i$ が、それぞれ1つの企業を運営する。政府が1つ。集計ショックは1次元ブラウン運動 $Z_t$、特異ショックは家計ごとの $\tilde Z_t^i$（家計間で独立同分布、$Z_t$ とも独立）。

**A1 対数効用**

全家計が同一の対数効用、割引率 $\rho\gt 0$。論文の数値例では、時間選好の弾力性（EIS）が1で相対的危険回避度 $\gamma$ の確率的微分効用に置き換える（1.13、$\gamma=1$ で対数効用に戻る）。

**A2 AK型の生産と資本調整費用**

企業 $i$ の産出は $a_tk_t^i$。資本投入 $k_t^i$ の調整費用は $\Phi(\iota)=\frac1\phi\log(1+\phi\iota)$、$\phi\ge0$。外生の生産性 $a_t$ は全家計共通で、$a_t\gt g+\underline\iota$（$\underline\iota:=-1/\phi$）を満たす。

**A3 特異ショックと不完全な危険分散**

資本は特異ショック $\tilde\sigma_t d\tilde Z_t^i$ にさらされる。家計は外部株式を売って特異リスクを減らせるが、自分の資本の割合 $\bar\chi\in(0,1]$ 以上を分散できない形で持たねばならない（skin-in-the-game 制約）。これにより、少なくとも $\bar\chi\tilde\sigma_t d\tilde Z_t^i$ の特異リスクが資本1単位あたり残る。この制約以外に金融摩擦はなく、資産市場はすべて完全に流動的である（取引費用・情報の非対称性なし）。

**A4 政府と外生政策**

政府は名目債券を発行し、利子率 $i_t$、残高 $B_t$、成長率 $\mu_t^B$（$dB_t=\mu_t^BB_tdt$）を外生に決める。実質支出 $gK_t$ を賄うため、産出への比例税 $\tau_t$ を内生的に調整する。

**A5 外生過程のマルコフ性**

$a_t$, $\tilde\sigma_t$, $\mu_t^B$, $i_t$ は $Z_t$ が駆動する同時マルコフ拡散過程。

**A6 均衡の選択**

均衡は対称均衡（全家計が同じ $\hat c$, $\iota$, 各ポートフォリオ比率を選ぶ。純資産の水準 $n_t^i$ だけが異なる）。さらに、債券が正の価値を持つ定常な「貨幣的」均衡を選ぶ（1.8）。複数均衡に関する論文の議論は1.12にまとめた。

**正則条件**

$$
\rho\gt 0,\qquad \phi\ge0,\qquad \bar\chi\in(0,1],\qquad a_t\gt g+\underline\iota,\qquad \vartheta_t\in[0,1]
$$

### 1.1 技術・政府・資源制約

**資本の運動**

$$
\frac{dk_t^i}{k_t^i}=\underbrace{\bigl(\Phi(\iota_t^i)-\delta\bigr)dt}_{\text{投資と減耗}}+\underbrace{\tilde\sigma_t\,d\tilde Z_t^i}_{\text{特異ショック}}+\underbrace{d\Delta_t^{k,i}}_{\text{資本の売買}}\tag{1}
$$

$$
\Phi(\iota)=\frac1\phi\log(1+\phi\iota)\ \ (\iota\ge\underline\iota:=-1/\phi),\qquad \Phi(\iota)=-\infty\ \ (\iota\lt\underline\iota)\tag{2}
$$

> 資本の売買 $d\Delta^{k,i}_t$ は家計間で相殺するので、集計資本は $dK_t=(\Phi(\iota_t)-\delta)K_tdt$ に従う（1.4）。

**政府の予算制約**

$$
\underbrace{i_tB_t}_{\text{利払い}}+\underbrace{P_tgK_t}_{\text{実質支出}}=\underbrace{\mu_t^BB_t}_{\text{債券発行}}+\underbrace{P_t\tau_ta_tK_t}_{\text{税収}}\tag{3}
$$

**資源制約**

$$
\underbrace{C_t}_{\text{消費}}+\underbrace{gK_t}_{\text{政府支出}}+\underbrace{\iota_tK_t}_{\text{投資}}=\underbrace{a_tK_t}_{\text{産出}}\tag{4}
$$

> $K_t=\int k_t^idi$、$C_t=\int c_t^idi$、$\iota_t=\int\iota_t^ik_t^i/K_tdi$。

| 記号・項目 | 意味 |
|---|---|
| $k_t^i$, $K_t$ | 企業 $i$ の資本、集計資本 |
| $\iota_t^i$, $\iota_t$ | 投資率（資本1単位あたりの産出財）、平均投資率 |
| $\Phi$, $\phi$, $\delta$ | 資本蓄積関数（増加・凹）、調整費用パラメータ、減耗率 |
| $\tilde\sigma_t$, $\tilde Z_t^i$ | 特異リスクの大きさ、特異ブラウン運動 |
| $a_t$ | 外生の生産性 |
| $B_t$, $P_t$ | 名目債券の額面、物価水準 |
| $\mu_t^B$, $i_t$ | 債券の成長率、名目利子率（ともに外生） |
| $g$, $\tau_t$ | 資本あたり政府支出（定数）、産出への税率（内生。負なら補助金） |
| $c_t^i$, $C_t$ | 消費、集計消費 |

### 1.2 家計の問題

**選好**

$$
V_0^i=\mathbb E\Bigl[\int_0^\infty\underbrace{e^{-\rho t}}_{\text{割引}}\underbrace{\log c_t^i}_{\text{対数効用}}\,dt\Bigr]\tag{5}
$$

**純資産の運動**

$$
\frac{dn_t^i}{n_t^i}=\underbrace{-\frac{c_t^i}{n_t^i}dt}_{\text{消費}}+\underbrace{dr_t^B}_{\text{債券収益}}+\underbrace{\theta_t^{K,i}\bigl(dr_t^{K,i}(\iota_t^i)-dr_t^B\bigr)}_{\text{資本の超過収益}}+\underbrace{\theta_t^{E,i}\bigl(dr_t^{E,i}-dr_t^B\bigr)}_{\text{自社外部株式}}+\underbrace{\theta_t^{\bar E,i}\bigl(d\bar r_t^E-dr_t^B\bigr)}_{\text{分散株式}}\tag{6}
$$

> 右辺のうち $-c/n\,dt$ を除いた部分を $dr_t^{n,i}$ と書く。残りの純資産は債券に投じられる。自社外部株式の比率 $\theta^{E,i}_t$ は自分が発行するので通常負。

**制約**

$$
\underbrace{-\theta_t^{E,i}}_{\text{発行する外部株式}}\le\underbrace{(1-\bar\chi)\,\theta_t^{K,i}}_{\text{分散可能な上限}},\qquad n_t^i\ge0\ \ (\text{非ポンジ条件})\tag{7}
$$

家計は $c_t^i$, $\iota_t^i$, $\theta_t^{K,i}$, $\theta_t^{E,i}$, $\theta_t^{\bar E,i}$ を選んで $V_0^i$ を最大化する。

| 記号・項目 | 意味 |
|---|---|
| $n_t^i$ | 家計 $i$ の純資産 |
| $\theta_t^{K,i}$, $\theta_t^{E,i}$, $\theta_t^{\bar E,i}$ | 純資産に占める資本、自社外部株式、分散株式の比率 |
| $dr_t^B$, $dr_t^{K,i}$, $dr_t^{E,i}$, $d\bar r_t^E$ | 債券、資本、自社外部株式、分散株式の収益（1.3） |
| $\bar\chi$ | 分散できない資本の最小割合 |

### 1.3 価格と収益

**債券価値と債券収益**

$q_t^B:=\dfrac{B_t}{P_tK_t}$（実質債務の資本に対する比）、$\breve\mu_t^B:=\mu_t^B-i_t$（利払い後の債券発行率）として、

$$
dr_t^B=i_tdt+\frac{d(1/P_t)}{1/P_t}=\underbrace{\frac{d\bigl(q_t^BK_t\bigr)}{q_t^BK_t}}_{\text{実質債務の価値変化}}-\underbrace{\breve\mu_t^B\,dt}_{\text{希薄化}}\tag{8}
$$

**資本収益**

$$
dr_t^{K,i}(\iota_t^i)=\underbrace{\frac{(1-\tau_t)a_t-\iota_t^i}{q_t^K}dt}_{\text{配当利回り}}+\underbrace{\frac{d\bigl(q_t^K\tilde k_t^i\bigr)}{q_t^K\tilde k_t^i}}_{\text{キャピタルゲイン}}\tag{9}
$$

> $\tilde k_t^i$ は式(1)で資本の売買 $d\Delta_t^{k,i}$ を0とした資本。$q_t^K$ は資本1単位の価格。家計は $\iota^i\mapsto dr_t^{K,i}(\iota^i)$ を所与とするが、自分の投資が収益に与える影響は織り込む。

**外部株式の収益**

$$
dr_t^{E,i}=\mathbb E_t\bigl[dr_t^{E,i}\bigr]+\bigl(dr_t^{K,i}-\mathbb E_t[dr_t^{K,i}]\bigr),\qquad d\bar r_t^E=\int dr_t^{E,i}\,di\tag{10}
$$

> 外部株式は資本と同じリスクを持つが、期待収益が低くてよい（インサイダー・プレミアム）。期待収益 $\mathbb E_t[dr_t^{E,i}]$ は均衡で決まる。

**債券の富シェア**

$$
\vartheta_t:=\underbrace{\frac{B_t/P_t}{B_t/P_t+q_t^KK_t}}_{\text{債券 / 総資産}}=\frac{q_t^B}{q_t^B+q_t^K}\tag{11}
$$

> $\vartheta_t$ は債券と資本の相対価格とみなせる主要な均衡変数。

| 記号・項目 | 意味 |
|---|---|
| $q_t^B$, $q_t^K$ | 資本あたりの実質債務、資本1単位の価格 |
| $\breve\mu_t^B$ | 債券成長率から名目利子率を引いたもの（希薄化の尺度）。外生 |
| $\vartheta_t$ | 総資産に占める債券の割合 |
| $\tilde k_t^i$ | 売買を除いた資本の運動を与える資本 |

### 1.4 均衡の定義

**対称競争均衡**

外生過程 $a_t$, $\tilde\sigma_t$, $\breve\mu_t^B$ と初期資本 $K_0\gt 0$ を所与として、$Z$ に適合する過程 $q_t^B$, $q_t^K$, $\mathbb E_t[dr_t^E]$, $\hat c_t:=c_t^i/n_t^i$, $\iota_t$, $\theta_t^K$, $\theta_t^E$, $\theta_t^{\bar E}$, $\tau_t$, $K_t$ が次を満たすものを対称競争均衡という。

$$
\begin{aligned}
&\text{(i)}\ \ dK_t=\bigl(\Phi(\iota_t)-\delta\bigr)K_tdt\\
&\text{(ii)}\ \ \underbrace{\tau_ta_tK_t}_{\text{税収}}+\underbrace{\breve\mu_t^Bq_t^BK_t}_{\text{実質債券発行収入}}=\underbrace{gK_t}_{\text{支出}}\\
&\text{(iii)}\ \ c_t^i=\hat c_tn_t^i,\ \iota_t^i=\iota_t,\ \theta_t^{K,i}=\theta_t^K,\ \theta_t^{E,i}=\theta_t^E,\ \theta_t^{\bar E,i}=\theta_t^{\bar E}\ \text{が任意の }n_0^i\text{ に対し家計の最適解}\\
&\text{(iv)}\ \ \text{式(4)が成立，}\ \ \theta_t^K=\frac{q_t^KK_t}{(q_t^K+q_t^B)K_t}=1-\vartheta_t,\ \ \theta_t^E+\theta_t^{\bar E}=0
\end{aligned}\tag{12}
$$

> (ii)は式(3)を $P_t$ で割り $\mu_t^B$ と $i_t$ をまとめた形。(iii)では全家計の $\mathbb E[dr_t^{E,j}]$ が等しいと仮定する。債券市場は(iv)からワルラス法則で清算する。名目量 $B_t$, $P_t$ は意思決定に入らず、均衡は $\breve\mu_t^B$ と実質量だけで定まる。個人の変数は、$(Z,\tilde Z^i)$ の履歴に依存してよい。

**基礎的財政収支**

$$
s_t:=\tau_ta_t-g=-\breve\mu_t^B\,q_t^B\qquad(\text{資本1単位あたり})\tag{13}
$$

> 式(12)(ii)から。$s_t$ が負（赤字）でも、$q_t^B\gt 0$ で $\breve\mu_t^B\gt 0$ なら成立する。

| 記号・項目 | 意味 |
|---|---|
| $\hat c_t$ | 消費・純資産比 $c_t^i/n_t^i$ |
| $\theta_t^K$, $\theta_t^E$, $\theta_t^{\bar E}$ | 均衡のポートフォリオ比率（全家計共通） |
| $s_t$ | 資本あたり基礎的財政収支（黒字が正） |

### 1.5 モデルの解（補題）

**家計の最適条件**

$$
\underbrace{c_t^i=\rho\,n_t^i}_{\text{恒常所得（対数効用）}},\qquad\underbrace{q_t^K=\frac1{\Phi'(\iota_t^i)}=1+\phi\iota_t^i}_{\text{トービンの }q}\tag{14}
$$

> 全家計が同じ $q_t^K$ に直面するので、全家計が同じ投資率 $\iota_t$ を選ぶ。

**均衡の価格と投資（補題1）**

$$
\boxed{\begin{aligned}
\iota_t&=\underbrace{\frac{(1-\vartheta_t)(a_t-g)-\rho}{1-\vartheta_t+\phi\rho}}_{\text{投資率}}\\
q_t^B&=\vartheta_t\underbrace{\frac{1+\phi(a_t-g)}{1-\vartheta_t+\phi\rho}}_{\text{共通因子}}\\
q_t^K&=(1-\vartheta_t)\frac{1+\phi(a_t-g)}{1-\vartheta_t+\phi\rho}
\end{aligned}}\tag{15}
$$

> $a_t$ と $\vartheta_t$ が決まれば $\iota_t$, $q_t^B$, $q_t^K$ が一意に決まる。残りの均衡変数は、$\hat c_t=\rho$、$\tau_t$ は式(12)(ii)、$K_t$ は式(12)(i)から決まる。

| 記号・項目 | 意味 |
|---|---|
| $\rho$ | 時間選好率。均衡の消費・純資産比に等しい |
| $a_t-g$ | 政府支出を除いた生産性 |

### 1.6 ϑ の運動方程式（命題1）

**ϑ の方程式**

$$
\mathbb E_t[d\vartheta_t]=\Bigl(\underbrace{\rho}_{\text{時間選好}}+\underbrace{\breve\mu_t^B}_{\text{債券の希薄化}}-\underbrace{(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2}_{\text{残存する特異リスクの価格}}\Bigr)\vartheta_t\,dt\tag{16}
$$

> 任意の $[0,1]$ 値の解 $\vartheta$ が競争均衡に対応する。式(16)は後ろ向き確率微分方程式（BSDE）で、固定点方程式なので複数の解を持ちうる（1.8）。

**ポートフォリオ・リスク価格・株式スプレッド**

$$
\begin{aligned}
&\theta_t^K=1-\vartheta_t,\quad\theta_t^E=-(1-\bar\chi)(1-\vartheta_t),\quad\theta_t^{\bar E}=(1-\bar\chi)(1-\vartheta_t)\\
&\underbrace{\tilde\varsigma_t}_{\text{特異リスクの価格}}=(1-\vartheta_t)\bar\chi\tilde\sigma_t,\qquad\mathbb E_t\bigl[dr_t^E-dr_t^K\bigr]=-\underbrace{(1-\vartheta_t)\bar\chi^2\tilde\sigma_t^2}_{\text{インサイダー・プレミアム}}
\end{aligned}\tag{17}
$$

> 制約(7)は常に拘束的で、家計は許される最大量の外部株式を発行する。株式スプレッドの左辺は、論文では $\mathbb E[dr_t^E]$ と略記されているが、導出（付録 A.5）から、資本収益との期待収益の差と読める（本記事による読み替え）。

| 記号・項目 | 意味 |
|---|---|
| $\mathbb E_t[d\vartheta_t]$ | $\vartheta_t$ の期待変化。$\mu_t^\vartheta\vartheta_t\,dt$（$\mu_t^\vartheta$ は幾何ドリフト） |
| $\tilde\varsigma_t$ | 特異ショックのリスク価格（家計の SDF の特異ショックへの負荷） |
| $\theta^E_t$ | 家計が発行する自社外部株式の比率（負） |

### 1.7 定常状態（バランス成長経路）

$a$, $\tilde\sigma$, $\breve\mu^B$ が定数のとき、$d\vartheta=0$ とおくと式(16)は3次方程式 $\vartheta\bigl[(1-\vartheta)^2\bar\chi^2\tilde\sigma^2-\rho-\breve\mu^B\bigr]=0$ になる。

**3つの解**

$$
\vartheta=0,\qquad\vartheta=\frac{\bar\chi\tilde\sigma+\sqrt{\rho+\breve\mu^B}}{\bar\chi\tilde\sigma},\qquad\vartheta=\underbrace{\frac{\bar\chi\tilde\sigma-\sqrt{\rho+\breve\mu^B}}{\bar\chi\tilde\sigma}}_{\text{貨幣的定常解}}\tag{18}
$$

> 3番目だけが $(0,1)$ に入りうる。条件は $\bar\chi\tilde\sigma\ge\sqrt{\rho+\breve\mu^B}$（$\breve\mu^B$ が大きすぎると家計が債券を持たない。残存リスク $\bar\chi\tilde\sigma$ が大きいほど緩い条件）。注：等号のとき $\vartheta=0$ なので、非退化の解には不等号が厳密に成り立つ必要がある。

**定常状態の投資と資産価値**

$$
\iota=\frac{\sqrt{\rho+\breve\mu^B}\,(a-g)-\rho\bar\chi\tilde\sigma}{\sqrt{\rho+\breve\mu^B}+\phi\rho\bar\chi\tilde\sigma}\tag{19}
$$

$$
q^B=\frac{\bigl(\bar\chi\tilde\sigma-\sqrt{\rho+\breve\mu^B}\bigr)\bigl(1+\phi(a-g)\bigr)}{\sqrt{\rho+\breve\mu^B}+\phi\rho\bar\chi\tilde\sigma},\qquad q^K=\frac{\sqrt{\rho+\breve\mu^B}\,\bigl(1+\phi(a-g)\bigr)}{\sqrt{\rho+\breve\mu^B}+\phi\rho\bar\chi\tilde\sigma}\tag{20}
$$

> 資本の成長率は $\Phi(\iota)-\delta$（AK型なので定常状態でも $K_t$ は成長する）。比較静学：$\tilde\sigma$ が上がると $q^K$ と $\iota$ は下がり、$q^B$ は上がる（資本から債券への資産再配分）。$\breve\mu^B$ が上がると $q^B$ は下がる。

| 記号・項目 | 意味 |
|---|---|
| $\vartheta$, $q^B$, $q^K$, $\iota$ | 定常値（定数） |
| $\sqrt{\rho+\breve\mu^B}$ | 債券保有の機会費用（時間選好＋希薄化）の平方根 |
| $\bar\chi\tilde\sigma$ | 分散できない特異リスク（資本1単位あたり） |

### 1.8 定常な貨幣的均衡の一意性（命題2）

**定常性（定義2）**

$\tilde\sigma_t$, $a_t$, $\breve\mu_t^B$ が定常であるとは、コンパクトな領域 $\mathcal X\subset\mathbb R^n$ 上のエルゴード的マルコフ過程 $X_t$ と連続関数 $\tilde\sigma$, $a$, $\breve\mu^B:\mathcal X\to\mathbb R$ が存在し、すべての $t\ge0$ で $\tilde\sigma_t=\tilde\sigma(X_t)$, $a_t=a(X_t)$, $\breve\mu_t^B=\breve\mu^B(X_t)$ となることをいう。BSDE の解 $\vartheta_t$ が定常とは、連続関数 $\vartheta:\mathcal X\to[0,1]$ が存在して $\vartheta_t=\vartheta(X_t)$ となることをいう。

**有限期間のBSDE**

$$
\vartheta_t=\mathbb E_t\Bigl[\vartheta_T+\int_t^T\Bigl(\underbrace{(1-\vartheta_s)^2\bar\chi^2\tilde\sigma_s^2}_{\text{特異リスクの価格}}-\rho-\breve\mu_s^B\Bigr)\vartheta_s\,ds\Bigr]\qquad\forall\,t\in[0,T]\tag{21}
$$

**命題2（定常で非退化な解の一意性）**

$\rho+\breve\mu^B(X)\gt 0$（全ての $X\in\mathcal X$）なら、式(16)は定常で非退化（$\vartheta\not\equiv0$）な解を高々1つしか持たない。解 $\vartheta^\ast$ が存在するなら、任意の終端条件 $\vartheta_T=\vartheta^0(X_T)\in(0,1)$ に対する式(21)の解は $T\to\infty$ で $\vartheta^\ast(X_t)$ に収束する。存在しないなら、$0$ に収束する。

> この解が「債券が正の価値を持つ唯一の定常均衡」で、論文は第5章を除いてこれを選ぶ。非定常な解は存在しうるが、すべて遠い将来に0へ収束する。

| 記号・項目 | 意味 |
|---|---|
| $X_t$, $\mathcal X$ | 外生状態のマルコフ過程、その（コンパクトな）状態空間 |
| $\vartheta^\ast$ | 定常で非退化な解 |
| $\vartheta_T$ | 有限期間BSDEの終端条件 |

### 1.9 安全資産の定義（定義3・命題3）

**個人の確率的割引ファクター（SDF）**

$$
\xi_0^i=1,\qquad\frac{d\xi_t^i}{\xi_t^i}=-\underbrace{r_t^f}_{\text{無リスク金利}}dt-\underbrace{\varsigma_t}_{\text{集計リスク価格}}dZ_t-\underbrace{\tilde\varsigma_t^i}_{\text{特異リスク価格}}d\tilde Z_t^i\tag{22}
$$

**安全資産の定義**

$$
\text{資産 }j\text{ は時点 }t\text{ に個人 }i\text{ にとって安全}\iff\mathrm{Cov}_t\Bigl[\frac{d\xi_t^i}{\xi_t^i},\,dr_t^j-dr_t^{n,i}\Bigr]\gt0\tag{23}
$$

> 均衡概念であり、同じキャッシュフローの資産でも均衡によって安全かどうかが変わる。比較対象は個人 $i$ 自身の純資産収益 $dr^{n,i}_t$。時点にも依存する。流動性は、モデルが全資産を完全流動と仮定するため、定義に入れていない。

**SDF と純資産の関係**

$$
\xi_t^i=\frac{n_0^i\,e^{-\rho t}}{n_t^i},\qquad\varsigma_t^i=\sigma_t^{n,i},\qquad\tilde\varsigma_t^i=\tilde\sigma_t^{n,i}=(1-\vartheta_t)\bar\chi\tilde\sigma_t\tag{24}
$$

> $\xi_0^i=1$ に規準化している。規準化前の共状態は $e^{-\rho t}/(\rho n_t^i)$（付録 A.3）。

**命題3**

$\tilde\sigma_t\gt0$ で、$a_t$、$\breve\mu_t^B$、$\tilde\sigma_t$ が集計ショックに依存しない（確定的）なら、政府債券は全家計にとって常に安全資産である。

$$
\mathrm{Cov}_t\Bigl[\frac{d\xi_t^i}{\xi_t^i},dr_t^{n,i}\Bigr]=-(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2\lt0=\mathrm{Cov}_t\Bigl[\frac{d\xi_t^i}{\xi_t^i},dr_t^B\Bigr]\tag{25}
$$

> 債券収益は集計ショックに負荷しない（局所的に確定的）ので右辺は0。したがって式(23)の左辺は $(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2\gt0$ となり、債券は安全資産。

| 記号・項目 | 意味 |
|---|---|
| $\xi_t^i$ | 家計 $i$ の SDF（家計問題の共状態と一致） |
| $\varsigma_t^i$, $\tilde\varsigma_t^i$ | 集計・特異リスクの価格（$\xi^i$ の負荷の符号反転） |
| $\sigma_t^{n,i}$, $\tilde\sigma_t^{n,i}$ | 純資産の集計・特異ボラティリティ |
| $r_t^f$ | 無リスク金利 |

### 1.10 政府債務の2つの評価式（命題4・命題5）

**基礎的財政収支とSDFの平均**

$s_t=\tau_ta_t-g$（式(13)）。個人SDFの単純平均 $\bar\xi_t:=\int\xi_t^idi$ は集計ショックだけに負荷し、$d\bar\xi_t/\bar\xi_t=-r_t^fdt-\varsigma_tdZ_t$ に従う。純資産シェア $\eta_t^i:=n_t^i/N_t$、総純資産 $N_t:=(q_t^K+q_t^B)K_t$ とする。モデルでは全家計が同じポートフォリオ比率を持つので、$\eta_t^i$ は家計 $i$ の債券保有シェアでもある。

**命題4：買い持ち視点**

$$
\frac{B_0}{P_0}=\lim_{T\to\infty}\Bigl\{\underbrace{\mathbb E\Bigl[\int_0^T\bar\xi_t\,s_tK_t\,dt\Bigr]}_{\text{基礎的収支の割引現在価値}}+\underbrace{\mathbb E\Bigl[\bar\xi_T\frac{B_T}{P_T}\Bigr]}_{\text{終端価値（バブル項）}}\Bigr\}\tag{26}
$$

> 終端項は、個人の横断性条件が $\mathbb E[\xi_T^iB_T/P_T]\to0$ を含意しないため0とは限らない（家計は債券を買い持ちせず、常に再取引する）。0に収束すれば、通常の債務評価式になる。

**動的取引視点：債券ポートフォリオの価値**

債券保有 $b_t^i:=(1-\theta_t^{K,i}-\theta_t^{E,i}-\theta_t^{\bar E,i})n_t^i$ は $\dfrac{db_t^i}{b_t^i}=dr_t^B+d\Delta_t^{b,i}$ に従う。$d\Delta_t^{b,i}=\mu_t^{\Delta,i}dt+\sigma_t^{\Delta,i}dZ_t+\tilde\sigma_t^{\Delta,i}d\tilde Z_t^i$ は取引と支払いによる比例的な増減。

$$
b_0^i=-\mathbb E\Bigl[\int_0^\infty\xi_t^ib_t^i\Bigl(\underbrace{\mu_t^{\Delta,i}}_{\text{政府との取引}}-\underbrace{\varsigma_t\sigma_t^{\Delta,i}}_{\text{集計リスク}}-\underbrace{\tilde\varsigma_t^i\tilde\sigma_t^{\Delta,i}}_{\text{特異リスク}}\Bigr)dt\Bigr]\tag{27}
$$

$$
\mu_t^{\Delta,i}=-\frac{s_t}{q_t^B},\qquad\sigma_t^{\Delta,i}=0,\qquad\tilde\sigma_t^{\Delta,i}=(1-\vartheta_t)\bar\chi\tilde\sigma_t\tag{28}
$$

> 全家計が $\theta^i_t=\vartheta_t$ を保つので $b_t^i=\eta_t^iq_t^BK_t$。集計ショックには全員が同じ向きにさらされるので取引しない。特異ショックでは、正のショックの後に資本を売って債券を買い、負のショックの後に債券を売る。

**個人の評価式**

$$
\eta_0^i\frac{B_0}{P_0}=\mathbb E\Bigl[\int_0^\infty\xi_t^i\eta_t^i\,s_tK_t\,dt\Bigr]+\mathbb E\Bigl[\int_0^\infty\xi_t^i\eta_t^i\,(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2\frac{B_t}{P_t}\,dt\Bigr]\tag{29}
$$

**命題5：動的取引視点**

$$
\boxed{\frac{B_0}{P_0}=\mathbb E\Bigl[\int_0^\infty\underbrace{\xi_t^{\ast\ast}}_{\text{加重平均SDF}}\underbrace{s_tK_t}_{\text{基礎的収支}}\,dt\Bigr]+\mathbb E\Bigl[\int_0^\infty\xi_t^{\ast\ast}\underbrace{(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2\frac{B_t}{P_t}}_{\text{サービスフロー}}\,dt\Bigr]}\tag{30}
$$

$$
\xi_t^{\ast\ast}:=\int\xi_t^i\eta_t^i\,di\tag{31}
$$

> 式(29)を $i$ について積分し（フビニの定理で積分の順序を交換）、$\int\eta_0^idi=1$ を使うと得られる。2つの項はともに特異リスクを含まない集計キャッシュフローだが、割引には純資産で加重した $\xi_t^{\ast\ast}$ を使う。個人の $\eta_t^i$ は $\xi_t^i$ と負に共変するため、$\xi^{\ast\ast}_t$ は $\bar\xi_t$ より速く減衰する。

**2つのSDFの比較**

$$
\bar\xi_t\ \text{の減衰率：}\ r_t^f,\qquad\xi_t^{\ast\ast}\ \text{の減衰率：}\ r_t^{\ast\ast}:=r_t^f+\tilde\varsigma_t\tilde\sigma_t^n\ \ \Bigl(\tilde\sigma_t^n=(1-\vartheta_t)\bar\chi\tilde\sigma_t\Bigr)\tag{32}
$$

> 2つは同じ集計リスクプレミアムを持つが、平均的な減衰率（暗黙の無リスク金利）が違う。$r^{\ast\ast}$ は特異リスクへの予備的需要の部分を除いた金利で、「不完備市場の代表的個人の金利」と解釈できる。価格は $\mathrm{price}_t=\mathbb E_t\bigl[\mathrm{PV}_{r^{\ast\ast}}[\text{キャッシュフロー}]\bigr]+\mathbb E_t\bigl[\mathrm{PV}_{r^{\ast\ast}}[\text{サービスフロー}]\bigr]$ と書ける（式(30)）。標準的な資産価格式（SDFが特異リスクのない全資産を正しく値付けする）は式(26)だけで、式(30)はサービスフロー項を付けて初めて資産を正しく値付けする。

| 記号・項目 | 意味 |
|---|---|
| $s_t$ | 資本あたり基礎的財政収支 |
| $\bar\xi_t$, $\xi_t^{\ast\ast}$ | 個人SDFの単純平均、純資産加重平均 |
| $\eta_t^i$ | 純資産シェア $n_t^i/N_t$（債券保有シェアに等しい） |
| $b_t^i$ | 家計 $i$ の債券保有（実質） |
| $d\Delta_t^{b,i}$ | 債券保有の取引・支払いによる比例的増減 |
| $(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2$ | 債券1単位あたりのサービスフロー（部分保険の価値） |
| $r_t^{\ast\ast}$ | $\xi^{\ast\ast}$ の減衰率 |

### 1.11 代表的個人との対応（命題6）

**代表的個人の厚生**

福祉ウェイト $\lambda^i\gt 0$（$\int\lambda^idi=1$）と消費シェア $\eta_t^i=c_t^i/C_t$ に対して

$$
W_0=\int\lambda^iV_0^i\,di=\mathbb E\Bigl[\int_0^\infty e^{-\rho t}\int\lambda^i\log\bigl(\eta_t^iC_t\bigr)di\,dt\Bigr]\tag{33}
$$

> 均衡では $c_t^i=\rho n_t^i$ なので、消費シェアは純資産シェアに等しく、$d\eta_t^i=\tilde\sigma_t^\eta d\tilde Z_t^i$、$\tilde\sigma_t^\eta=(1-\vartheta_t)\bar\chi\tilde\sigma_t$（共通のボラティリティ）。

**代表的個人のSDF**

$$
\Xi_t=e^{-\rho t}\frac{\int\lambda^i\eta_t^iu'(\eta_t^iC_t)\,di}{\int\lambda^i\eta_0^iu'(\eta_0^iC_0)\,di}=\frac{\int\lambda^iu'(c_0^i)\,\xi_t^i\eta_t^i\,di}{\int\lambda^iu'(c_0^i)\,\eta_0^i\,di},\qquad u=\log\tag{34}
$$

**命題6**

$$
\Xi_t=\int\xi_t^i\eta_t^i\,di=\xi_t^{\ast\ast}\tag{35}
$$

> 福祉ウェイトには依存しない（$\lambda^iu'(c_0^i)$ を $i$ に依らない定数にできる）。

**「消費」と「ボラティリティ」の2財表現**

$$
W_0=w_0+\mathbb E\Bigl[\int_0^\infty e^{-\rho t}\Bigl(\underbrace{\log C_t}_{\text{集計消費}}-\underbrace{\frac1{2\rho}\bigl(\tilde\sigma_t^\eta\bigr)^2}_{\text{ボラティリティの負効用}}\Bigr)dt\Bigr],\qquad w_0:=\frac1\rho\int\lambda^i\log\eta_0^i\,di\tag{36}
$$

**ルーカス型の2本の木**

資本 $K_t$（消費財とボラティリティ $\tilde\sigma^\eta_t$ を生む）と「デリバティブ」$X_t$（特異ショックでの取引キャッシュフローを模して、ボラティリティを減らす）を持つ代表的個人の経済。$dX_t/X_t=(g_t+\mu_t^{q,B})dt+\sigma_t^{q,B}dZ_t$（$g_t:=\Phi(\iota_t)-\delta$、$X_0=q_0^BK_0$）、キャッシュフローは $-\breve\mu_t^BX_t$。

$$
\bigl(q_t^KK_t+X_t\bigr)\tilde\sigma_t^\eta=q_t^KK_t\,\bar\chi\tilde\sigma_t\tag{37}
$$

$$
P_0^XX_0=\mathbb E\Bigl[\int_0^\infty\Xi_t\bigl(-\breve\mu_t^BX_t\bigr)dt\Bigr]+\mathbb E\Bigl[\int_0^\infty\Xi_t\,(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2X_t\,dt\Bigr]\tag{38}
$$

> 均衡では $Q_t^K=q_t^K$、$P_t^X=1$、$X_t=q_t^BK_t$（このとき $-\breve\mu_t^BX_t=s_tK_t$）となり、式(38)は式(30)に一致する。

| 記号・項目 | 意味 |
|---|---|
| $\lambda^i$ | 福祉ウェイト |
| $\eta_t^i$ | 消費シェア（ここでは純資産シェアに等しい） |
| $\Xi_t$ | 代表的個人のSDF |
| $\tilde\sigma_t^\eta$ | 消費シェアのボラティリティ |
| $X_t$, $P_t^X$ | デリバティブの額面と価格 |
| $Q_t^K$ | 代表的個人が直面する資本価格 |

### 1.12 バブルと安全資産（第5章）

**バブルが成立する条件**

債務価値 $B_T/P_T$ は長期に経済と同じ率 $g$ で成長するので、割引後の終端価値は平均的に次の率で増減する。

$$
g-r^f-\underbrace{\text{国債のリスクプレミアム}}_{\text{おおむね }\beta\text{ に比例}}\tag{39}
$$

> 終端項 $\mathbb E[\bar\xi_TB_T/P_T]$ が0に収束しない（式(26)）には、この成長率が非負である必要がある。$\beta$ が小さいほど、バブルを維持しやすい。$r\lt g$ のとき、新規債務で満期債務を返済するポンジ・スキームが持続可能になる。

**β と泡の補完性**

式(30)のサービスフロー項は債務の市場価値に比例し、キャッシュフロー項はそれに直接依存しない。バブルが市場価値を高めるとサービスフローの割合が上がり、全体の $\beta$ が下がる。したがって、同じ資産が、バブルがある均衡では $\beta\lt0$（安全）、ない均衡では $\beta\gt0$（安全でない）になりうる。

**政策と均衡の複数性**

政府が基礎的収支を引き上げる（$\breve\mu_t^B$ を下げる）と $\vartheta_t$ が上がり、保険が改善して予備的貯蓄動機が弱まり、割引率が上がってバブルの余地がなくなりうる。この場合も、特異リスクが十分に残れば、債務はバブルなしの「根本的に安全な資産」になりうる。第5章のみ、$\vartheta\equiv0$ を含む複数均衡を許す。

| 記号・項目 | 意味 |
|---|---|
| $g$ | 経済の平均成長率（式(39)のみ。他の箇所の政府支出 $g$ とは別の量だが、論文も同じ文字を使う） |
| $r^f$ | 平均的な無リスク金利 |

### 1.13 拡張A：確率的ボラティリティと再帰効用（第4章・第7章・付録A.7）

**特異リスクの外生過程**

$$
d\tilde\sigma_t^2=-\psi\Bigl(\tilde\sigma_t^2-\bigl(\tilde\sigma^{0}\bigr)^2\Bigr)dt-\sigma\,\tilde\sigma_t\,dZ_t,\qquad\psi,\sigma,\tilde\sigma^{0}\gt 0\tag{40}
$$

$$
a(\tilde\sigma_t)=a^0-\alpha_a\bigl(\tilde\sigma_t-\tilde\sigma^{0}\bigr),\qquad\breve\mu^B(\tilde\sigma_t)=\breve\mu^{B,0}+\alpha_B\bigl(\tilde\sigma_t-\tilde\sigma^{0}\bigr)\tag{41}
$$

> $\tilde\sigma_t$ が高い局面を不況とみなす（$a'\lt0$、$(\breve\mu^B)'\gt0$）。$\alpha_a,\alpha_B\gt 0$ が十分大きければ、産出・消費・基礎的収支 $s_t=-\breve\mu_t^Bq_t^B$ が不況で低下する。状態変数は $\tilde\sigma_t$ の1次元。

**資本調整費用の一般化**

$\hat\Phi(\iota)=\iota_0+\Phi(\iota-\iota_0)$。基本モデルの解は、$a_t$ を $a_t-\iota_0$、$\iota_t$ を $\iota_t-\iota_0$ に置き換えれば成り立つ。

**確率的微分効用（EIS = 1、相対的危険回避度 $\gamma\gt 0$）**

$$
V_t^i=\mathbb E_t\Bigl[\int_t^\infty f(c_s^i,V_s^i)\,ds\Bigr],\qquad f(c,V)=(1-\gamma)\rho V\Bigl(\log c-\frac1{1-\gamma}\log\bigl((1-\gamma)V\bigr)\Bigr)\tag{42}
$$

> $\gamma=1$ で式(5)に一致する。価値関数は $V_t(n^i)=v_t\dfrac{(n^i)^{1-\gamma}}{1-\gamma}$、共状態は $\xi_t^i=v_t(n_t^i)^{-\gamma}$、消費は引き続き $c_t^i=\rho n_t^i$。

**修正されたリスク価格とϑの方程式**

$$
\varsigma_t^i=\gamma\sigma_t^{n,i}-\sigma_t^v,\qquad\tilde\varsigma_t^i=\gamma\tilde\sigma_t^{n,i}=\gamma(1-\vartheta_t)\bar\chi\tilde\sigma_t\tag{43}
$$

$$
\mathbb E_t[d\vartheta_t]=\Bigl(\rho+\breve\mu_t^B-\bigl(\sigma_t^v-(\gamma-1)\sigma_t^{\bar q}\bigr)\sigma_t^\vartheta-\gamma(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2\Bigr)\vartheta_t\,dt\tag{44}
$$

$$
\mathbb E_t[dv_t]=\mu_t^vv_t\,dt,\qquad\mu_t^v=\rho\log v_t+(\gamma-1)\Bigl(\rho\log\rho+\mu_t^{\bar q}+\Phi(\iota_t)-\delta-\frac\gamma2\bigl((\sigma_t^{\bar q})^2+(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2\bigr)\Bigr)+\sigma_t^v\sigma_t^{\bar q}\tag{45}
$$

> $\bar q_t:=q_t^B+q_t^K$、$\mu^{\bar q}_t$ と $\sigma_t^{\bar q}$ はその幾何ドリフトと集計ボラティリティ、$\sigma^v_t$ は $v_t$ の集計ボラティリティ（特異ボラティリティはない）。式(44)と式(45)は同時に数値で解く。式(15)は変わらない。

**サービスフロー項の修正と分解**

$$
q^{B,CF}(\tilde\sigma):=\frac1{K_0}\mathbb E\Bigl[\int_0^\infty\xi_t^{\ast\ast}s_tK_tdt\ \Big|\ \tilde\sigma_0=\tilde\sigma\Bigr],\quad q^{B,SF}(\tilde\sigma):=\frac1{K_0}\mathbb E\Bigl[\int_0^\infty\xi_t^{\ast\ast}\,(1-\vartheta_t)^2\gamma\bar\chi^2\tilde\sigma_t^2\frac{B_t}{P_t}dt\ \Big|\ \tilde\sigma_0=\tilde\sigma\Bigr]\tag{46}
$$

> $q^B=q^{B,CF}+q^{B,SF}$。式(30)のサービスフロー項に因子 $\gamma$ が付く。

| 記号・項目 | 意味 |
|---|---|
| $\psi$, $\sigma$, $\tilde\sigma^0$ | $\tilde\sigma_t^2$ の平均回帰速度、ボラティリティ、平均水準に関するパラメータ |
| $a^0$, $\breve\mu^{B,0}$, $\alpha_a$, $\alpha_B$ | 式(41)の切片と傾き |
| $\iota_0$ | 一般化した調整費用の切片 |
| $\gamma$ | 相対的危険回避度（EIS = 1） |
| $v_t$ | 価値関数の個人の純資産に依らない部分 |
| $\bar q_t$ | $q_t^B+q_t^K$ |
| $q^{B,CF}$, $q^{B,SF}$ | 債務価値のキャッシュフロー成分、サービスフロー成分 |

**数値例のパラメータ（論文 Table 1）**

| 記号 | 値 | 記号 | 値 |
|---|---|---|---|
| $\tilde\sigma^0$ | 0.54 | $g$ | 0.138 |
| $\psi$ | 0.67 | $\breve\mu^{B,0}$ | 0.0026 |
| $\sigma$ | 0.4 | $\alpha_a$ | 0.072 |
| $\bar\chi$ | 0.3 | $\alpha_B$ | 0.12 |
| $\gamma$ | 6 | $\phi$ | 8.1 |
| $\rho$ | 0.138 | $\iota_0$ | -0.022 |
| $a^0$ | 0.625 | $\delta$ | 0.055 |

### 1.14 拡張B：民間発行の安全資産（第6章・付録A.8）

**設定**

各家計 $j$ が名目無リスク債（$j$債）を実質額 $B_t(j)\ge0$ だけ発行し、他家計 $j\ne i$ の債を $b_t^i(j)\ge0$ 保有する。市場清算は $B_t(j)=\int b_t^i(j)di$。民間債の名目利子率 $i_t^p$ は無裁定で政府債と等しい（$i_t^p=i_t$）。民間債の収益は $dr_t^b=(i_t^p-i_t)dt+dr_t^B=dr_t^B$ なので、家計のハミルトニアンは変わらず、実質配分、$q_t^B$, $q_t^K$ は基本モデルと同じになる。民間債の発行量・保有は不定（家計は無差別）。

**例：民間債が政府債に比例する場合**

(a) $B_t^p\propto q_t^BK_t$、(b) $B_t(j)=\eta_t^jB_t^p$、(c) 全家計が $j$ 債（$j\ne i$）と政府債を時価総額ウェイトで保有する。$x_t$ を $j$ 債1実質単位あたりの期待純支払い（発行者から保有者へ）とすると、

$$
b_0^i(j)=\mathbb E\Bigl[\int_0^\infty\xi_t^ix_tb_t^i(j)\,dt\Bigr]+\mathbb E\Bigl[\int_0^\infty\xi_t^i(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2\,b_t^i(j)\,dt\Bigr]\tag{47}
$$

$$
B_0(j)=\mathbb E\Bigl[\int_0^\infty\xi_t^{\ast\ast}x_tB_t(j)\,dt\Bigr]+\mathbb E\Bigl[\int_0^\infty\xi_t^{\ast\ast}(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2B_t(j)\,dt\Bigr]\tag{48}
$$

$$
-B_0(j)=\mathbb E\Bigl[\int_0^\infty\xi_t^j\bigl(-x_t\bigr)B_t(j)\,dt\Bigr]+\mathbb E\Bigl[\int_0^\infty\xi_t^j\Bigl(-(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2\Bigr)B_t(j)\,dt\Bigr]\tag{49}
$$

> 式(48)は式(30)と同じ形で、保有者のサービスフローは政府債と同じ。式(49)は発行者の短期ポジションの評価で、負のサービスフローを持つ。全債種で足し合わせると両者のサービスフローは打ち消し合い、民間の安全資産創出は経済全体に純サービスフローを生まない。

| 記号・項目 | 意味 |
|---|---|
| $B_t(j)$, $b_t^i(j)$ | $j$ 債の発行額、家計 $i$ の保有額（実質） |
| $B_t^p$ | 民間債の総量 $\int B_t(j)dj$ |
| $x_t$ | $j$ 債1単位あたりの期待純支払い |
| $i_t^p$ | 民間債の名目利子率 |

### 1.15 拡張C：利便性イールド（第6章・付録A.9、命題7）

**設定**

家計は債券保有 $b_t^i=(1-\theta_t^{K,i}-\theta_t^{E,i}-\theta_t^{\bar E,i})n_t^i$ から効用を得る。

$$
\mathbb E\Bigl[\int_0^\infty e^{-\rho t}\bigl((1-\upsilon)\log c_t^i+\upsilon\log b_t^i\bigr)dt\Bigr]\tag{50}
$$

> $\upsilon=0$ で基本モデルに一致する。民間債（効用なし）の名目利子率 $i^p_t$ と政府債の差 $\Delta i_t:=i_t^p-i_t$ が利便性イールド。

**均衡の解**

$c_t^i=(1-\upsilon)\rho n_t^i$ となり、式(15)の $\rho$ を $(1-\upsilon)\rho$ に置き換えた次式が成り立つ。

$$
\iota_t=\frac{(1-\vartheta_t)(a_t-g)-(1-\upsilon)\rho}{1-\vartheta_t+\phi(1-\upsilon)\rho},\quad q_t^B=\vartheta_t\frac{1+\phi(a_t-g)}{1-\vartheta_t+\phi(1-\upsilon)\rho},\quad q_t^K=(1-\vartheta_t)\frac{1+\phi(a_t-g)}{1-\vartheta_t+\phi(1-\upsilon)\rho}\tag{51}
$$

$$
\mathbb E_t[d\vartheta_t]=\Bigl(\rho+\breve\mu_t^B-\Delta i_t-(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2\Bigr)\vartheta_t\,dt,\qquad\Delta i_t=\frac{\upsilon\rho}{\vartheta_t}\tag{52}
$$

**命題7：2つの評価式**

買い持ち視点と動的取引視点は、それぞれ次のようになる。

$$
\frac{B_0}{P_0}=\lim_{T\to\infty}\Bigl\{\mathbb E\Bigl[\int_0^T\bar\xi_ts_tK_tdt\Bigr]+\mathbb E\Bigl[\int_0^T\bar\xi_t\Delta i_t\frac{B_t}{P_t}dt\Bigr]+\mathbb E\Bigl[\bar\xi_T\frac{B_T}{P_T}\Bigr]\Bigr\}\tag{53}
$$

$$
\frac{B_0}{P_0}=\mathbb E\Bigl[\int_0^\infty\xi_t^{\ast\ast}s_tK_tdt\Bigr]+\mathbb E\Bigl[\int_0^\infty\xi_t^{\ast\ast}\Bigl(\Delta i_t+(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2\Bigr)\frac{B_t}{P_t}dt\Bigr]\tag{54}
$$

> 動的取引視点では利便性イールド $\Delta i_t$ と再取引のサービスフローが対称に現れる。買い持ち視点では、利便性イールドは明示的なサービスフロー項として残るが、再取引のサービスフローは $\bar\xi_t$ の低い割引率とバブル項に吸収される。

| 記号・項目 | 意味 |
|---|---|
| $\upsilon$ | 債券保有から得る効用のシェア |
| $\Delta i_t$ | 利便性イールド（民間債と政府債の利回り差）。再取引のサービスフローとは別物 |

### 1.16 主要帰結

**主要式**

$$
\boxed{\begin{aligned}
\mathbb E_t[d\vartheta_t]&=\bigl(\underbrace{\rho+\breve\mu_t^B}_{\text{保有の機会費用}}-\underbrace{(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2}_{\text{特異リスク}}\bigr)\vartheta_t\,dt\\
\frac{B_0}{P_0}&=\underbrace{\mathbb E\Bigl[\int_0^\infty\xi_t^{\ast\ast}s_tK_tdt\Bigr]}_{\text{キャッシュフロー}}+\underbrace{\mathbb E\Bigl[\int_0^\infty\xi_t^{\ast\ast}(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2\tfrac{B_t}{P_t}dt\Bigr]}_{\text{サービスフロー}}\\
-s_t&=\underbrace{\breve\mu_t^B}_{\text{税率}}\ \underbrace{q_t^B}_{\text{課税ベース}}
\end{aligned}}\tag{55}
$$

> 3行目は債務ラッファー曲線の構造を表す。$s_t\lt0$ でも $q_t^B\gt 0$ なら恒常的な赤字が可能で、$\breve\mu_t^B$ を上げると課税ベース $q_t^B$ が縮む。

**定常状態のラッファー曲線（補足：本記事による整理、論文にない式）**

対数効用・定常状態で、式(13)と式(20)から

$$
-s=\breve\mu^B\,\frac{\bigl(\bar\chi\tilde\sigma-\sqrt{\rho+\breve\mu^B}\bigr)\bigl(1+\phi(a-g)\bigr)}{\sqrt{\rho+\breve\mu^B}+\phi\rho\bar\chi\tilde\sigma},\qquad-\rho\lt\breve\mu^B\lt\bar\chi^2\tilde\sigma^2-\rho\tag{56}
$$

> $\breve\mu^B=0$ と $\breve\mu^B=\bar\chi^2\tilde\sigma^2-\rho$（$q^B=0$）の両端で $-s=0$。$\bar\chi^2\tilde\sigma^2\gt\rho$ なら $0\lt\breve\mu^B\lt\bar\chi^2\tilde\sigma^2-\rho$ で $-s\gt 0$ となり、内部に最大値がある。論文の数値例は $\gamma=6$ の再帰効用なので、この範囲の条件は式(44)に応じて変わる。

**比較静学**

| 変化 | 結果 | 符号・式 |
|---|---|---|
| $\tilde\sigma$ 上昇（定常状態） | $q^B$ 上昇、$q^K$ と $\iota$ 低下 | 式(19)、式(20)。資本から債券への再配分 |
| $\breve\mu^B$ 上昇（定常状態） | $q^B$ 低下 | 式(20)。課税ベースの縮小 |
| $\bar\chi$ 上昇 | 債券保有が可能な $\breve\mu^B$ の範囲が広がる | $\bar\chi\tilde\sigma\ge\sqrt{\rho+\breve\mu^B}$（式(18)の注） |
| 政府が基礎的収支を引き上げる（$\breve\mu^B$ を下げる） | $\vartheta$ 上昇、予備的貯蓄動機が弱まる | 式(16) |
| 利便性イールド $\Delta i$ | $\vartheta$ の水準を押し上げる | 式(52) |
| 数値例（$\tilde\sigma_t$ 上昇） | $q^B$ 上昇、$q^{B,SF}$ 上昇、$q^{B,CF}$ 低下 | 式(46)。論文の図から（定性的） |

**特殊ケース**

| ケース | 結果 |
|---|---|
| $\gamma=1$ | 式(42)、式(44)は基本モデル（式(5)、式(16)）に一致 |
| $\upsilon=0$ | 式(51)、式(52)は式(15)、式(16)に一致 |
| $\tilde\sigma$ 定数、$a$、$\breve\mu^B$ 定数 | 式(18)から式(20)の定常状態 |
| $\vartheta\equiv0$ | 債券価値0の非貨幣的均衡。$q^B=0$、リスクの高い資本のみ（第5章） |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 政府債の安全資産性 | 特異リスクを消せない家計が、不運なショックの後に債券を売って自己保険する。債券の局所的な収益は確定的で、純資産収益より SDF との共分散が大きい（式(25)） |
| 再取引のサービスフロー | 債務価値はキャッシュフローの現在価値と、$(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2B_t/P_t$ のサービスフローの現在価値の和（式(30)） |
| 債務評価パズルの解消 | 数値例では、基礎的収支の現在価値 $q^{B,CF}$ は小さい（負）。市場価値との差をサービスフロー成分 $q^{B,SF}$ が埋める（式(46)） |
| 債務の負の β（反循環性） | $\tilde\sigma_t$ 上昇で残存リスク $(1-\vartheta_t)\bar\chi\tilde\sigma_t$ が増えサービスフローが増える。資本から債券への資産逃避で $q^B$ 上昇、$q^K$ 低下（式(20)、式(15)） |
| 債務リスクプレミアム・パズル | キャッシュフロー成分は正の β（不況で基礎的収支が下がる）だが、サービスフロー成分は負の β。後者が支配すれば総 β は負になり、低いリスクプレミアムと整合する（1.12） |
| 株式の高いボラティリティ | $\tilde\sigma_t$ が上がると $q^B$ が上がり $q^K$ が下がる安全資産への逃避で、キャッシュフローの現在価値が不変でも株価が変動する。論文の数値例では超過リターンのボラティリティが、債務のないモデルで2.4%、基本の数値例で11.7% |
| 株式は安全資産でない | 資本と外部株式は特異リスクを含み、債券と違って式(23)を満たさない。インサイダーは外部株式を発行して $\bar\chi$ 以上の特異リスクを持ち、外部株主に期待収益の低いスプレッドを払う（式(17)） |
| 恒常的な赤字（バブル採掘） | $r\lt g$ のとき債務で債務を返済できる（式(39)）。式(13)の $-s_t=\breve\mu_t^Bq_t^B$ が正でもよい |
| 債務ラッファー曲線 | $\breve\mu_t^B$ を上げると $q_t^B$ が縮む（式(55)）。論文の校正では、平均の $\breve\mu^B$ が7.3%を超えると追加の実質収入は得られず、持続可能な平均赤字の上限は GDP の約2.25%。$\tilde\sigma$ を定数にすると約0.1% |
| 安全資産のトートロジー | バブルが $\beta$ を下げ、$\beta$ が低いほどバブルを維持しやすい。同じ資産が均衡次第で安全にも非安全にもなり、地位を失いうる（式(39)） |
| 民間債と政府債 | 保有者のサービスフローは同じだが、発行者の負のサービスフローと相殺して、全体で純サービスフローは0（式(48)、式(49)）。民間債と政府債の利回り差 $\Delta i_t$ は0 |
| 利便性イールドとの違い | 再取引のサービスフローは民間債にも生じ、スプレッド $\Delta i_t$ とは無関係（式(54)） |

## 3. 整理している点 {#sec3}

- **2つの評価視点**：買い持ち視点（式(26)）と動的取引視点（式(30)）で同じ債務価値を評価する。前者は終端項（バブル）、後者はサービスフロー項が、債務価値と基礎的収支の現在価値の差を説明する。
- **無リスク金利と割引率**：$\bar\xi_t$ は無リスク金利 $r^f$ で減衰し、$\xi_t^{\ast\ast}$ は特異リスクへの予備的需要を除いた金利 $r^{\ast\ast}$ で減衰する（式(32)）。$\xi^{\ast\ast}$ は代表的個人のSDFに一致する（式(35)）。
- **安全資産とバブルの補完性**：サービスフロー項が債務価値に比例するため、バブルは $\beta$ を下げ、低い $\beta$ はバブルを支える。安全資産の地位は均衡の選択に依存する（1.12）。

## 4. 対象外の現象 {#sec4}

- 流動性や取引費用、情報の非対称性。全資産が完全に流動とされ、リスク特性だけを扱う。
- 名目価格の硬直性。価格は伸縮的で、名目利子率 $i_t$ は実質配分と資産価格に影響しない。論文は、無リスク金利の水準・変動や債務・産出比の変動の過大さが残ることを認めている。
- 民間債による純サービスフローの創出。民間の安全資産創出は経済全体の純サービスフローを生まない（付録A.8）。
- 利便性イールド自体の内生的な根拠。債券保有を効用に直接入れる形で扱う（付録A.15）。
- 数値例は特定の校正（Table 1）に基づく。ラッファー曲線の上限などの数値は、その校正の下での結果である。
- 政府が特定のバブル均衡を選ぶ仕組みの詳細（非ポンジ制約の導入、競合バブル資産への課税、金融抑圧など）。論文は先行研究（Brunnermeier et al. 2021a）に委ね、本論文の枠組みの外としている。
- 最適な債務水準や厚生評価。論文は主張していない。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
外生過程 a_t, σ̃_t, μ̆_t, 集計ショック Z
   │
   ▼
[A.2] 収益の伊藤展開  式(59) 式(60) 式(61) 式(62)
   │
   ▼
[A.3] 家計の最適化（ハミルトニアン 式(64)）
   │    → 式(14) 式(24) 式(65) 式(66) 式(67) 式(68)
   ▼
[A.4] 補題1（資源制約と市場清算）→ 式(15)
   ▼
[A.5] 命題1 → 式(16) 式(17)
   ├─ [A.6] 定常状態 → 式(18) 式(19) 式(20)
   ├─ [A.7] 一意性 → 式(21) 命題2
   ├─ [A.8] 命題3 → 式(25)
   └─ [A.12] ラッファー曲線 → 式(56)
   
[A.9]  買い持ち視点 → 式(26)
[A.10] 動的取引視点 → 式(27) 式(28) 式(29) 式(30)
[A.11] 代表的個人 → 式(35) 式(36) 式(38)
[A.13] 再帰効用 → 式(44) 式(45)
[A.14] 民間債 → 式(47) 式(48) 式(49)
[A.15] 利便性イールド → 式(52) 式(54)
```

### A.1 使う道具

**T1 伊藤の補題・積の法則**

$X$ が $dX/X=\mu\,dt+\sigma\,dZ+\tilde\sigma\,d\tilde Z$（$Z$ と $\tilde Z$ は独立、$(dZ)^2=(d\tilde Z)^2=dt$、$dZ\,d\tilde Z=0$）に従うとき、

$$
d\log X=\Bigl(\mu-\tfrac12\bigl(\sigma^2+\tilde\sigma^2\bigr)\Bigr)dt+\sigma\,dZ+\tilde\sigma\,d\tilde Z,\qquad\frac{d(XY)}{XY}=\frac{dX}X+\frac{dY}Y+\frac{dX}X\frac{dY}Y\tag{57}
$$

**T2 確率的最大原理（現在価値ハミルトニアン）**

状態 $n$ の運動 $dn=n(\mu^ndt+\sigma^ndZ+\tilde\sigma^nd\tilde Z)$ のもとで、共状態 $\xi$（$d\xi/\xi=\mu^\xi dt-\varsigma\,dZ-\tilde\varsigma\,d\tilde Z$）をおき、ハミルトニアン $H=e^{-\rho t}u(c)+\xi n\mu^n-\varsigma\xi n\sigma^n-\tilde\varsigma\xi n\tilde\sigma^n$ を制御変数について最大化する。共状態方程式は $\mathbb E_t[d\xi_t]=-\partial H/\partial n\,dt$。

**T3 価値関数の推測と検証**

対数効用で $V_t(n)=\frac1\rho\log n+v_t$ と推測し、共状態を $\xi_t=e^{-\rho t}\partial_nV_t=e^{-\rho t}/(\rho n)$ とおく。最適条件がこの推測と整合することを確認する。

**T4 市場清算**

財市場（式(4)）、資本市場 $\theta^K=1-\vartheta$、株式市場 $\theta^E+\theta^{\bar E}=0$ を課し、債券市場はワルラス法則で清算する。

**T5 BSDEの比較定理**

ドリフト（生成項）と終端条件が順序づけられた2つの BSDE の解は、同じ順序を保つ。終端条件が大きい解ほど各時点で大きい。

**T6 フビニの定理**

非負（または可積分）な被積分関数について、$\int\mathbb E\bigl[\int_0^\infty\cdots dt\bigr]di=\mathbb E\bigl[\int_0^\infty\int\cdots di\,dt\bigr]$。

**T7 局所マルチンゲールと横断性**

ドリフトが0の局所マルチンゲールの期待値は一定。終端値 $\mathbb E[\xi_Tb_T]\to0$ を、$b\le n$ と $\xi n=e^{-\rho T}/\rho\to0$ から確認する。

### A.2 収益の伊藤展開（式(59)、式(60)、式(61)、式(62)）

**Step 1　価格の拡散表現（仮定）**

外生過程がマルコフで集計ショックだけに駆動されるので、均衡価格を次の形で書く。

$$
\frac{dq_t^j}{q_t^j}=\mu_t^{q,j}dt+\sigma_t^{q,j}dZ_t\ \ (j=B,K),\qquad d\vartheta_t=\mu_t^\vartheta\vartheta_t\,dt+\sigma_t^\vartheta\vartheta_t\,dZ_t\tag{58}
$$

> 式(58)の $\mu_t^\vartheta$ は式(16)の左辺 $\mathbb E_t[d\vartheta_t]=\mu_t^\vartheta\vartheta_tdt$ と同じもの。

**Step 2　債券収益**

式(8)に $d(q^BK)/(q^BK)=d q^B/q^B+dK/K$（$K$ は確定的に成長。T1）を使う。

$$
dr_t^B=\bigl(\Phi(\iota_t)-\delta+\mu_t^{q,B}-\breve\mu_t^B\bigr)dt+\sigma_t^{q,B}dZ_t\tag{59}
$$

**Step 3　資本収益**

式(12)(ii)から $\tau_ta_t=g-\breve\mu_t^Bq_t^B$。よって $(1-\tau_t)a_t-\iota_t^i=a_t-g-\iota_t^i+\breve\mu_t^Bq_t^B$。式(9)のキャピタルゲインに T1（特異ショックの項は $\tilde\sigma_td\tilde Z_t^i$）を使い、

$$
dr_t^{K,i}(\iota_t^i)=\Bigl(\frac{a_t-g-\iota_t^i+\breve\mu_t^Bq_t^B}{q_t^K}+\Phi(\iota_t^i)-\delta+\mu_t^{q,K}\Bigr)dt+\sigma_t^{q,K}dZ_t+\tilde\sigma_td\tilde Z_t^i\tag{60}
$$

**Step 4　$\vartheta$ と価格の関係**

式(11)から $\vartheta/(1-\vartheta)=q^B/q^K$。両辺の対数をとる。

$$
d\log\vartheta:\ \text{ドリフト }\mu^\vartheta-\tfrac12(\sigma^\vartheta)^2,\ \text{拡散 }\sigma^\vartheta;\qquad d\log(1-\vartheta):\ \text{ドリフト }-\tfrac{\vartheta\mu^\vartheta}{1-\vartheta}-\tfrac{\vartheta^2(\sigma^\vartheta)^2}{2(1-\vartheta)^2},\ \text{拡散 }-\tfrac{\vartheta\sigma^\vartheta}{1-\vartheta}
$$

引き算して $d\log(q^B/q^K)$ と比べると、拡散部分から

$$
\sigma_t^{q,B}-\sigma_t^{q,K}=\frac{\sigma_t^\vartheta}{1-\vartheta_t}\tag{61}
$$

ドリフト部分から $\mu^{q,B}-\mu^{q,K}=\dfrac{\mu^\vartheta}{1-\vartheta}-\dfrac{(1-2\vartheta)(\sigma^\vartheta)^2}{2(1-\vartheta)^2}+\dfrac12\bigl((\sigma^{q,B})^2-(\sigma^{q,K})^2\bigr)$。式(61)で $(\sigma^{q,B})^2-(\sigma^{q,K})^2=\frac{\sigma^\vartheta}{1-\vartheta}\bigl(2\sigma^{q,B}-\frac{\sigma^\vartheta}{1-\vartheta}\bigr)$ を代入して整理すると、

$$
\mu_t^{q,K}-\mu_t^{q,B}=-\frac{\mu_t^\vartheta+\bigl(\sigma_t^{q,B}-\sigma_t^\vartheta\bigr)\sigma_t^\vartheta}{1-\vartheta_t}\tag{62}
$$

**Step 5　外部株式の収益**

式(10)より、$dr^{E,i}$ の拡散部分は $dr^{K,i}$ と同じ $\sigma_t^{q,K}dZ_t+\tilde\sigma_td\tilde Z_t^i$。ドリフトだけが $\mathbb E_t[dr_t^{E,i}]/dt$ に置き換わる。

**確認**

$\sigma=0$（外生過程が定数）なら $\sigma^{q,B}=\sigma^{q,K}=\sigma^\vartheta=0$ となり、式(59)のドリフトは $\Phi(\iota)-\delta-\breve\mu^B$（定常状態で $\mu^{q,B}=0$）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(8)、式(9)、式(11)、式(12) | 収益の定義、ϑの定義、政府予算 |
| T1 | 伊藤の補題・積の法則 |

### A.3 家計の最適条件（式(14)、式(24)、式(65)から式(68)）

**Step 1　純資産の拡散表現**

式(6)に式(59)、式(60)、式(61)を代入する。ドリフトを $\mu_t^{n,i}$ と書くと、

$$
\frac{dn_t^i}{n_t^i}=\mu_t^{n,i}dt+\sigma_t^{n,i}dZ_t+\tilde\sigma_t^{n,i}d\tilde Z_t^i,\quad\sigma_t^{n,i}=\sigma_t^{q,B}-\bigl(\theta_t^{K,i}+\theta_t^{E,i}+\theta_t^{\bar E,i}\bigr)\frac{\sigma_t^\vartheta}{1-\vartheta_t},\quad\tilde\sigma_t^{n,i}=\bigl(\theta_t^{K,i}+\theta_t^{E,i}\bigr)\tilde\sigma_t\tag{63}
$$

> 分散株式 $\theta^{\bar E,i}$ は特異リスクを持たない。式(61)で $\sigma^{q,K}-\sigma^{q,B}=-\sigma^\vartheta/(1-\vartheta)$ を使った。

**Step 2　ハミルトニアン**

T2 に従い、制約(7)の乗数を $\lambda_t^i\ge0$ とする。

$$
H_t^i=e^{-\rho t}\log c_t^i+\xi_t^in_t^i\Bigl(\mu_t^{n,i}+\lambda_t^i\bigl((1-\bar\chi)\theta_t^{K,i}+\theta_t^{E,i}\bigr)\Bigr)-\varsigma_t^i\xi_t^in_t^i\sigma_t^{n,i}-\tilde\varsigma_t^i\xi_t^in_t^i\tilde\sigma_t^{n,i}\tag{64}
$$

**Step 3　消費と共状態**

$c$ で微分：$e^{-\rho t}/c_t^i=\xi_t^i$。T3 の推測 $\xi_t^i=e^{-\rho t}/(\rho n_t^i)$ を入れると $c_t^i=\rho n_t^i$。共状態に伊藤の補題（T1）を使う（$\xi=e^{-\rho t}/(\rho n)$ なので $d\xi/\xi$ の負荷は $-d n/n$ の負荷）。

$$
\varsigma_t^i=\sigma_t^{n,i},\qquad\tilde\varsigma_t^i=\tilde\sigma_t^{n,i}\qquad\Bigl(\text{規準化 }\xi_0^i=1\text{ でも負荷は同じ}\Bigr)
$$

これが式(24)の最初の2式。

**Step 4　投資**

$H$ のうち $\iota^i$ を含む項は $\xi n\theta^K\bigl(-\iota/q^K+\Phi(\iota)\bigr)$ だけ。微分して0とおくと $\Phi'(\iota)=1/q^K$。$\Phi'(\iota)=1/(1+\phi\iota)$ なので、

$$
q_t^K=1+\phi\iota_t^i
$$

これが式(14)の後半。

**Step 5　ポートフォリオ**

$\theta^K$、$\theta^E$、$\theta^{\bar E}$ について微分する（期待収益は $\mu^r$ のドリフト）。

$$
\frac{\mathbb E_t[dr_t^{K,i}]-\mathbb E_t[dr_t^B]}{dt}=-\varsigma_t^i\frac{\sigma_t^\vartheta}{1-\vartheta_t}+\tilde\varsigma_t^i\tilde\sigma_t-\lambda_t^i(1-\bar\chi)\tag{65}
$$

$$
\frac{\mathbb E_t[dr_t^{E,i}]-\mathbb E_t[dr_t^B]}{dt}=-\varsigma_t^i\frac{\sigma_t^\vartheta}{1-\vartheta_t}+\tilde\varsigma_t^i\tilde\sigma_t-\lambda_t^i\tag{66}
$$

$$
\frac{\mathbb E_t[d\bar r_t^E]-\mathbb E_t[dr_t^B]}{dt}=-\varsigma_t^i\frac{\sigma_t^\vartheta}{1-\vartheta_t}\tag{67}
$$

**Step 6　乗数の決定**

対称均衡では $\mathbb E[dr^{E,i}]=\mathbb E[d\bar r^E]$（式(10)で全家計同じ）。式(66)と式(67)の差から

$$
\lambda_t^i=\tilde\varsigma_t^i\tilde\sigma_t\tag{68}
$$

> $\tilde\varsigma\tilde\sigma\gt 0$ なので制約(7)は拘束し、$\theta_t^{E,i}=-(1-\bar\chi)\theta_t^{K,i}$。このとき $\tilde\sigma_t^{n,i}=\bar\chi\theta_t^{K,i}\tilde\sigma_t$。

**確認**

対数効用では所得効果と代替効果が打ち消し、消費・純資産比 $\rho$ は収益率に依存しない（Step 3）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(6)、式(59)、式(60)、式(61) | 純資産の拡散表現 |
| T2、T3 | ハミルトニアンと価値関数の推測 |

### A.4 補題1（式(15)）

**Step 1　消費・純資産比**

式(14)より全家計で $\hat c=\rho$。集計すると $C_t=\rho N_t$、$N_t=(q_t^B+q_t^K)K_t=:\bar q_tK_t$（T4）。

**Step 2　資源制約**

式(4)に $C_t=\rho\bar q_tK_t$ を入れ、$K_t$ で割る。

$$
a_t-g-\iota_t=\rho\bar q_t,\qquad\bar q_t=q_t^B+q_t^K=\frac{q_t^K}{1-\vartheta_t}
$$

**Step 3　投資率**

$q_t^K=1+\phi\iota_t$（式(14)）を使い、$(a_t-g-\iota_t)(1-\vartheta_t)=\rho(1+\phi\iota_t)$。$\iota_t$ について解く（係数 $1-\vartheta_t+\phi\rho\gt 0$ で割る）。

$$
\iota_t=\frac{(1-\vartheta_t)(a_t-g)-\rho}{1-\vartheta_t+\phi\rho}
$$

**Step 4　資産価格**

$q_t^K=1+\phi\iota_t=\dfrac{(1-\vartheta_t)\bigl(1+\phi(a_t-g)\bigr)}{1-\vartheta_t+\phi\rho}$。式(11)から $q_t^B=\dfrac{\vartheta_t}{1-\vartheta_t}q_t^K$。これで式(15)の3式が揃う。

**確認**

$\phi=0$ なら $q^K=1$、$q^B=\vartheta/(1-\vartheta)$、$\iota=a-g-\rho/(1-\vartheta)$。これは Step 2 の $a-g-\iota=\rho(q^B+q^K)=\rho/(1-\vartheta)$ と一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(4)、式(14)、式(11) | 資源制約、消費・投資の最適条件、ϑの定義 |
| T4 | 市場清算 |

### A.5 命題1（式(16)、式(17)）

**Step 1　リスク価格**

$\theta^K=1-\vartheta$、$\theta^E+\theta^{\bar E}=0$ より $\theta^K+\theta^E+\theta^{\bar E}=1-\vartheta$。式(63)と式(24)から

$$
\varsigma_t=\sigma_t^{q,B}-\sigma_t^\vartheta,\qquad\tilde\varsigma_t=(1-\vartheta_t)\bar\chi\tilde\sigma_t
$$

> 式(7)が拘束するので $\theta^K+\theta^E=\bar\chi\theta^K$ を使った。

**Step 2　資本の期待超過収益の2通りの表現**

式(65)に式(68)を代入。

$$
\frac{\mathbb E_t[dr_t^K]-\mathbb E_t[dr_t^B]}{dt}=-\varsigma_t\frac{\sigma_t^\vartheta}{1-\vartheta_t}+\bar\chi\tilde\varsigma_t\tilde\sigma_t
$$

一方、式(59)、式(60)から左辺は $\dfrac{a_t-g-\iota_t}{q_t^K}+\Bigl(\dfrac{q_t^B}{q_t^K}+1\Bigr)\breve\mu_t^B+\mu_t^{q,K}-\mu_t^{q,B}$。$\dfrac{q^B}{q^K}+1=\dfrac1{1-\vartheta}$ と式(62)を使うと、

$$
\frac{a_t-g-\iota_t}{q_t^K}+\frac{\breve\mu_t^B-\mu_t^\vartheta}{1-\vartheta_t}-\frac{\bigl(\sigma_t^{q,B}-\sigma_t^\vartheta\bigr)\sigma_t^\vartheta}{1-\vartheta_t}
$$

**Step 3　ボラティリティ項の相殺**

Step 1 から $-\varsigma_t\sigma_t^\vartheta/(1-\vartheta_t)=-(\sigma_t^{q,B}-\sigma_t^\vartheta)\sigma_t^\vartheta/(1-\vartheta_t)$ なので、Step 2 の両辺で同じ項が打ち消し合う。

$$
\frac{a_t-g-\iota_t}{q_t^K}+\frac{\breve\mu_t^B-\mu_t^\vartheta}{1-\vartheta_t}=\bar\chi\tilde\varsigma_t\tilde\sigma_t=(1-\vartheta_t)\bar\chi^2\tilde\sigma_t^2
$$

**Step 4　配当利回りの置き換え**

A.4 Step 2 から $a_t-g-\iota_t=\rho\bar q_t$、$q_t^K=(1-\vartheta_t)\bar q_t$ なので $(a_t-g-\iota_t)/q_t^K=\rho/(1-\vartheta_t)$。

**Step 5　$\mu^\vartheta$ について解く**

Step 3 に Step 4 を入れ、$(1-\vartheta_t)$ を掛けて整理する。

$$
\rho+\breve\mu_t^B-\mu_t^\vartheta=(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2\ \ \Longrightarrow\ \ \mu_t^\vartheta=\rho+\breve\mu_t^B-(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2
$$

両辺に $\vartheta_t$ を掛け、$\mathbb E_t[d\vartheta_t]=\mu_t^\vartheta\vartheta_tdt$ を使うと式(16)。

**Step 6　ポートフォリオ・株式スプレッド**

$\theta^K=1-\vartheta$ は市場清算。$\theta^E=-(1-\bar\chi)\theta^K$、$\theta^{\bar E}=-\theta^E$ は式(68)の注と T4。式(65)から式(66)を引くと、期待収益の差 $\mathbb E_t[dr^K]-\mathbb E_t[dr^E]=\lambda_t\bar\chi\,dt=\bar\chi\tilde\varsigma_t\tilde\sigma_t\,dt=(1-\vartheta_t)\bar\chi^2\tilde\sigma_t^2\,dt$。符号を逆にして式(17)の最後の式。

**確認**

$\tilde\sigma=0$ のとき式(16)は $\mu^\vartheta=\rho+\breve\mu^B\gt 0$ で、$\vartheta$ は爆発的に増えるため $(0,1)$ 内の定常解はない（式(18)の条件 $\bar\chi\tilde\sigma\gt \sqrt{\rho+\breve\mu^B}$ が成り立たない）。

なお、式(17)の最後の式に対応する論文付録A.1の最終式は、左辺が $\mathbb E[dr^E]$ と略記されている。Step 6 のように資本収益との差を表すと読んで整合する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(65)、式(66)、式(68)、式(59)、式(60)、式(62)、式(15) | 最適条件、収益の展開、補題1 |
| T4 | 市場清算 |

### A.6 定常状態（式(18)、式(19)、式(20)）

**Step 1　固定点方程式**

$\mathbb E[d\vartheta]=0$ と $\vartheta\ne0$ の因子分解：$\vartheta\bigl[(1-\vartheta)^2\bar\chi^2\tilde\sigma^2-\rho-\breve\mu^B\bigr]=0$。

**Step 2　3つの解**

大括弧が0になるのは $(1-\vartheta)^2=\dfrac{\rho+\breve\mu^B}{\bar\chi^2\tilde\sigma^2}$、すなわち $1-\vartheta=\pm\dfrac{\sqrt{\rho+\breve\mu^B}}{\bar\chi\tilde\sigma}$（$\rho+\breve\mu^B\gt 0$）。$\vartheta=0$ と合わせて式(18)。

**Step 3　$(0,1)$ の条件**

$\vartheta=1-\sqrt{\rho+\breve\mu^B}/(\bar\chi\tilde\sigma)\gt 0\iff\bar\chi\tilde\sigma\gt \sqrt{\rho+\breve\mu^B}$。$\vartheta\lt 1$ は常に成り立つ。

**Step 4　代入**

$1-\vartheta=\sqrt{\rho+\breve\mu^B}/(\bar\chi\tilde\sigma)$ を式(15)に入れる。分母は $1-\vartheta+\phi\rho=\dfrac{\sqrt{\rho+\breve\mu^B}+\phi\rho\bar\chi\tilde\sigma}{\bar\chi\tilde\sigma}$。分子 $(1-\vartheta)(a-g)-\rho=\dfrac{\sqrt{\rho+\breve\mu^B}(a-g)-\rho\bar\chi\tilde\sigma}{\bar\chi\tilde\sigma}$ を割ると式(19)。$q^K=(1-\vartheta)\frac{1+\phi(a-g)}{1-\vartheta+\phi\rho}$、$q^B=\vartheta\frac{1+\phi(a-g)}{1-\vartheta+\phi\rho}$ に同様に代入して式(20)。

**確認**

$\breve\mu^B=\bar\chi^2\tilde\sigma^2-\rho$（$\sqrt{\rho+\breve\mu^B}=\bar\chi\tilde\sigma$）では $\vartheta=0$、$q^B=0$、$q^K=\dfrac{1+\phi(a-g)}{1+\phi\rho}$。

| 入力・使う道具 | 内容 |
|---|---|
| 式(16)、式(15) | ϑの方程式と補題1 |

### A.7 一意性（命題2）

**Step 1　有限期間BSDEと乗法形**

式(21)は $\vartheta$ について線形の形に書ける。

$$
\vartheta_t=\mathbb E_t\Bigl[\exp\Bigl(\int_t^T\bigl((1-\vartheta_s)^2\bar\chi^2\tilde\sigma_s^2-\rho-\breve\mu_s^B\bigr)ds\Bigr)\vartheta_T\Bigr]\tag{69}
$$

> 有界な $\breve\mu^B$、$\tilde\sigma$ と有界な終端条件に対し、解は一意に存在する（標準的なBSDE理論）。

**Step 2　補題2（単調性と $(0,1)$ の保持）**

終端条件 $\vartheta_T\gt \vartheta_T'$ なら、T5 から全期間で $\vartheta_t\ge\vartheta_t'$（正の確率で $\vartheta_T\gt \vartheta_T'$ なら $\vartheta_t\gt \vartheta_t'$）。$\bar\vartheta_t\equiv1$（生成項0、終端条件1）と比べると、生成項は $f^1(\bar\vartheta)=-(\rho+\breve\mu^B)\lt 0=f^2(\bar\vartheta)$ なので $\vartheta_t\lt 1$（$\rho+\breve\mu^B\gt 0$ のとき）。正値性は式(69)の指数部分が正であることから従う。

**Step 3　補題3（対数スケールでの縮小）**

終端条件が異なる2つの解 $\vartheta,\vartheta'$（値は $(0,1)$）について、

$$
\log\vartheta_t-\log\vartheta_t'\in\Bigl(\mathop{\mathrm{ess\,inf}}\bigl(\log\vartheta_T-\log\vartheta_T'\bigr),\ \mathop{\mathrm{ess\,sup}}\bigl(\log\vartheta_T-\log\vartheta_T'\bigr)\Bigr)\quad(t\lt T)\tag{70}
$$

証明の骨子：$x:=\mathop{\mathrm{ess\,inf}}\vartheta_T/\vartheta_T'$ とし、一般性を失わず $\vartheta_T\le\vartheta_T'$ とする（$\min$ に置き換えると $\vartheta_t$ は弱く下がるだけ）。補題2から $\vartheta_s\le\vartheta_s'\lt1$ なので $(1-\vartheta_s)^2\ge(1-\vartheta_s')^2$。式(69)で

$$
\vartheta_t\ge\mathbb E_t\Bigl[\exp\Bigl(\int_t^T\bigl((1-\vartheta_s')^2\bar\chi^2\tilde\sigma_s^2-\rho-\breve\mu_s^B\bigr)ds\Bigr)x\vartheta_T'\Bigr]=x\vartheta_t'
$$

終端条件が異なれば不等号は厳密。

**Step 4　補題4（時間単調性）**

定常な経済で、$\vartheta(t,X)\gt \vartheta(T,X)$ なら $t$ が過去に戻るほど $\vartheta$ は増える（逆も同様）。時間のずれは終端条件のずれと同じなので、補題2に帰着する。

**Step 5　命題2の証明**

(i) 正値性：ある $X^0$ で $\vartheta(X^0)=0$ なら式(69)から以後の終端値は確率1で0。状態がエルゴード的なので全ての $X$ で $\vartheta=0$。非退化解は至る所で正。

(ii) 一意性：2つの定常非退化解 $\vartheta^1\lt\vartheta^2$（ある $X$ で）があると仮定。$x:=\inf_X\vartheta^1/\vartheta^2\lt 1$（$\mathcal X$ のコンパクト性と連続性で下限は達成される）。その点 $X$ から出発し、終端条件を $\vartheta^1(X_T),\vartheta^2(X_T)$ とすると、解の一意性で $\vartheta_t=\vartheta^1(X)$、$\vartheta_t'=\vartheta^2(X)$ だが、$\vartheta_t/\vartheta_t'=x\le\inf\vartheta_T/\vartheta_T'$ となり、補題3の厳密な不等号に反する。

(iii) 収束：終端条件 $\vartheta_T=1$ から出発した解は、補題2・4により時間を遡るほど単調減少し、ある定常関数に収束する。それが非退化解 $\vartheta^\ast$（存在すれば）または0。小さい終端条件の解は単調増加で $\vartheta^\ast$ に収束する。他の終端条件の解は両者に挟まれ、同じ極限に収束する（T5）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(21)、定義2（定常性） | 有限期間BSDE、エルゴード性 |
| T5 | 比較定理 |

### A.8 命題3（式(25)）

**Step 1　SDFと純資産収益の共分散**

式(24)より $\xi^i=n_0^ie^{-\rho t}/n^i$。$d(1/n)/(1/n)$ と $dn/n$ の共分散（T1）：

$$
\mathrm{Cov}_t\Bigl[\frac{d\xi_t^i}{\xi_t^i},dr_t^{n,i}\Bigr]=\mathrm{Cov}_t\Bigl[\frac{d(1/n_t^i)}{1/n_t^i},\frac{dn_t^i}{n_t^i}\Bigr]=-\Bigl(\bigl(\sigma_t^{n,i}\bigr)^2+\bigl(\tilde\sigma_t^{n,i}\bigr)^2\Bigr)
$$

**Step 2　集計ショックへの負荷が0**

仮定（確定的な $a_t$, $\breve\mu_t^B$, $\tilde\sigma_t$）から $\vartheta_t$ と価格は $dZ_t$ に負荷しない：$\sigma^\vartheta=\sigma^{q,B}=\sigma^{q,K}=0$。式(63)から $\sigma^{n,i}=0$、$\tilde\sigma^{n,i}=(1-\vartheta)\bar\chi\tilde\sigma$。

**Step 3　債券の共分散**

$\sigma^{q,B}=0$ なら式(59)から $dr^B$ は局所的に確定的で、$\mathrm{Cov}_t[d\xi/\xi,dr^B]=0$。

**Step 4　比較**

Step 1・2 から $\mathrm{Cov}[d\xi/\xi,dr^n]=-(1-\vartheta)^2\bar\chi^2\tilde\sigma^2\lt 0$、Step 3 から $\mathrm{Cov}[d\xi/\xi,dr^B]=0$。式(23)の左辺は $0-(-(1-\vartheta)^2\bar\chi^2\tilde\sigma^2)\gt 0$。

| 入力・使う道具 | 内容 |
|---|---|
| 式(24)、式(63)、式(59) | SDFと純資産・債券収益の負荷 |
| T1 | 伊藤の補題 |

### A.9 買い持ち視点（命題4、式(26)）

**Step 1　実質債務の運動**

式(8)から $d(B/P)/(B/P)=dr^B+\breve\mu^Bdt$。式(13)から $\breve\mu^B(B/P)=\breve\mu^Bq^BK=-sK$ なので、

$$
d\Bigl(\frac{B_t}{P_t}\Bigr)=\frac{B_t}{P_t}\,dr_t^B-s_tK_t\,dt
$$

**Step 2　個人SDFとの積**

債券の無裁定価格付け $\mathbb E_t[dr_t^B]=r_t^fdt+\varsigma_t\sigma_t^{q,B}dt$（債券は集計リスクだけを持つ）と T1 から、

$$
\mathbb E_t\Bigl[d\Bigl(\xi_t^i\frac{B_t}{P_t}\Bigr)\Bigr]=\xi_t^i\frac{B_t}{P_t}\bigl(-r_t^f+\mathbb E_t[dr_t^B]/dt-\varsigma_t\sigma_t^{q,B}\bigr)dt-\xi_t^is_tK_tdt=-\xi_t^is_tK_t\,dt
$$

**Step 3　個人にわたる平均**

$i$ について積分し（T6）、特異ショックの項は平均で消える。$\bar\xi_t=\int\xi_t^idi$。

$$
\mathbb E_t\Bigl[d\Bigl(\bar\xi_t\frac{B_t}{P_t}\Bigr)\Bigr]=-\bar\xi_ts_tK_t\,dt
$$

**Step 4　積分**

$[0,T]$ で積分して期待値をとり、$\bar\xi_0=1$ を使う。

$$
\frac{B_0}{P_0}-\mathbb E\Bigl[\bar\xi_T\frac{B_T}{P_T}\Bigr]=\mathbb E\Bigl[\int_0^T\bar\xi_ts_tK_tdt\Bigr]
$$

$T\to\infty$ として式(26)。

**確認**

終端項が0に収束すれば、債務価値は基礎的収支の割引現在価値に一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(8)、式(13)、式(22) | 債券収益、基礎的収支、SDF |
| T1、T6 | 積の法則、フビニの定理 |

### A.10 動的取引視点（命題5、式(27)、式(28)、式(29)、式(30)）

**Step 1　債券ポートフォリオの価値**

$d(\xi^ib^i)$ の期待ドリフトを T1 で求める。$db^i/b^i=dr^B+d\Delta^{b,i}$、債券の無裁定価格付け（A.9 Step 2）、取引過程との共分散から、ドリフトは $\xi^ib^i(\mu^{\Delta,i}-\varsigma\sigma^{\Delta,i}-\tilde\varsigma^i\tilde\sigma^{\Delta,i})$。$[0,\infty)$ で積分する。$b^i=\vartheta n^i\le n^i$、$\xi^in^i=n_0^ie^{-\rho T}\to0$ なので $\mathbb E[\xi_T^ib_T^i]\to0$（T7）。

$$
b_0^i=-\mathbb E\Bigl[\int_0^\infty\xi_t^ib_t^i\bigl(\mu_t^{\Delta,i}-\varsigma_t\sigma_t^{\Delta,i}-\tilde\varsigma_t^i\tilde\sigma_t^{\Delta,i}\bigr)dt\Bigr]
$$

これが式(27)。

**Step 2　取引過程の特定**

$b_t^i=\eta_t^iq_t^BK_t$。$\eta^i=n^i/N$ は、$n^i$ と $N$ のドリフトと集計ボラティリティが等しいので $d\eta_t^i/\eta_t^i=\tilde\sigma_t^\eta d\tilde Z_t^i$、$\tilde\sigma_t^\eta=(1-\vartheta_t)\bar\chi\tilde\sigma_t$（T1）。A.9 Step 1 から $d(q^BK)/(q^BK)=dr^B+\breve\mu^Bdt$。したがって

$$
\frac{db_t^i}{b_t^i}=dr_t^B+\breve\mu_t^Bdt+\tilde\sigma_t^\eta d\tilde Z_t^i\ \Longrightarrow\ d\Delta_t^{b,i}=\breve\mu_t^Bdt+\tilde\sigma_t^\eta d\tilde Z_t^i
$$

式(13)で $\breve\mu^B=-s/q^B$ なので式(28)が従う。

**Step 3　代入**

$b_t^i=\eta_t^iq_t^BK_t=\eta_t^iB_t/P_t$、$\tilde\varsigma_t^i\tilde\sigma_t^{\Delta,i}=(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2$ を Step 1 の式に入れると、

$$
\eta_0^i\frac{B_0}{P_0}=\mathbb E\Bigl[\int_0^\infty\xi_t^i\eta_t^i\bigl(-\breve\mu_t^Bq_t^BK_t\bigr)dt\Bigr]+\mathbb E\Bigl[\int_0^\infty\xi_t^i\eta_t^i(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2\frac{B_t}{P_t}dt\Bigr]
$$

$-\breve\mu^Bq^BK=sK$ を使うと式(29)。

**Step 4　$i$ について足し上げる**

$\int\eta_0^idi=1$ と T6 で積分の順序を交換し、$\xi_t^{\ast\ast}=\int\xi_t^i\eta_t^idi$（式(31)）と書くと式(30)。

**確認**

$\bar\chi\tilde\sigma\to0$ ならサービスフロー項が消え、キャッシュフロー項だけが残る（$\xi^{\ast\ast}\to\bar\xi$）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(8)、式(13)、式(24) | 債券収益、基礎的収支、SDF |
| T1、T6、T7 | 積の法則、フビニ、横断性 |

### A.11 代表的個人（命題6、式(35)、式(36)、式(38)）

**Step 1　$\Xi$ の計算**

対数効用 $u'(c)=1/c$ と $c_t^i=\eta_t^iC_t$ より $\eta_t^iu'(\eta_t^iC_t)=1/C_t$（$i$ に依らない）。式(34)の最初の形に代入すると、

$$
\Xi_t=e^{-\rho t}\frac{C_0}{C_t}
$$

**Step 2　$\xi^{\ast\ast}$ の計算**

$\xi_t^i\eta_t^i=\dfrac{n_0^ie^{-\rho t}}{n_t^i}\cdot\dfrac{n_t^i}{N_t}=\dfrac{n_0^ie^{-\rho t}}{N_t}$。積分して $\xi_t^{\ast\ast}=e^{-\rho t}N_0/N_t$。$C=\rho N$ より $=e^{-\rho t}C_0/C_t$。Step 1 と一致するので式(35)。

**Step 3　厚生の分解**

式(33)で $\log(\eta_t^iC_t)=\log\eta_t^i+\log C_t$。T1 と $d\eta/\eta=\tilde\sigma^\eta d\tilde Z$ から $\mathbb E[\log\eta_t^i]=\log\eta_0^i-\frac12\mathbb E\bigl[\int_0^t(\tilde\sigma_s^\eta)^2ds\bigr]$。$\int_0^\infty e^{-\rho t}\int_0^t\cdots ds\,dt$ の順序を交換（T6）すると $\frac1\rho\int_0^\infty e^{-\rho s}(\cdots)ds$。これで式(36)。

**Step 4　2本の木と一致**

$X_t=q_t^BK_t$ とおくと、式(37)は $(q^K+q^B)K\,\tilde\sigma^\eta=q^KK\bar\chi\tilde\sigma$、すなわち $\tilde\sigma^\eta=(1-\vartheta)\bar\chi\tilde\sigma$ で、Step 3 の前提と一致する。また $-\breve\mu^BX=sK$、$(1-\vartheta)^2\bar\chi^2\tilde\sigma^2X=(1-\vartheta)^2\bar\chi^2\tilde\sigma^2B/P$ なので、$\Xi=\xi^{\ast\ast}$ のもとで式(38)は式(30)に一致する。

**確認**

$\tilde\sigma=0$ なら $\tilde\sigma^\eta=0$、式(36)の第2項が消え、通常の代表的個人の厚生に戻る。

| 入力・使う道具 | 内容 |
|---|---|
| 式(24)、式(14)、式(30) | SDF、消費・純資産比、動的取引視点の評価式 |
| T1、T6 | 伊藤の補題、フビニの定理 |

### A.12 定常状態のラッファー曲線（補足：本記事による整理、式(56)）

**Step 1　赤字の式**

式(13)：$-s=\breve\mu^Bq^B$。

**Step 2　定常 $q^B$ の代入**

式(20)の $q^B$ を代入して式(56)。定義域は式(18)の条件 $\bar\chi\tilde\sigma\gt \sqrt{\rho+\breve\mu^B}$ と $\rho+\breve\mu^B\gt 0$ から $-\rho\lt \breve\mu^B\lt \bar\chi^2\tilde\sigma^2-\rho$。

**Step 3　両端と符号**

$\breve\mu^B=0$ で $-s=0$。$\breve\mu^B\to\bar\chi^2\tilde\sigma^2-\rho$ で $q^B\to0$ なので $-s\to0$。$\bar\chi^2\tilde\sigma^2\gt \rho$ なら区間 $(0,\bar\chi^2\tilde\sigma^2-\rho)$ で $q^B\gt 0$、$\breve\mu^B\gt 0$ より $-s\gt 0$。連続関数が両端で0、内部で正なので、内部に最大値を持つ。

**確認**

$\breve\mu^B\lt 0$ では $-s\lt 0$（黒字）。これは $\breve\mu^B$ が債券の「課税」でなく債務の縮小を表すため。

| 入力・使う道具 | 内容 |
|---|---|
| 式(13)、式(20)、式(18) | 赤字の式、定常 $q^B$、存在条件 |

### A.13 再帰効用（式(43)、式(44)、式(45)）

**Step 1　消費と共状態**

価値関数 $V_t=v_t\dfrac{(n_t^i)^{1-\gamma}}{1-\gamma}$ を式(42)の集計関数 $f$ に入れると、消費の最適条件は式(14)と同じ $c_t^i=\rho n_t^i$。共状態は $\xi_t^i=v_t(n_t^i)^{-\gamma}$。

**Step 2　リスク価格**

T1 を共状態に適用：$d\xi/\xi$ の負荷は $-\gamma\sigma^n+\sigma^v$（集計）と $-\gamma\tilde\sigma^n$（特異）。これが式(43)の第1式と、特異リスク価格の $\tilde\varsigma^i=\gamma\tilde\sigma^{n,i}$。均衡では $\sigma^{n,i}=\sigma^{\bar q}$（$q^B=\vartheta\bar q$ より $\sigma^{q,B}-\sigma^\vartheta=\sigma^{\bar q}$、A.5 Step 1 と同様）なので、集計リスク価格は $\varsigma=\gamma\sigma^{\bar q}-\sigma^v$ となる。

**Step 3　$\vartheta$ の方程式の修正**

A.5 と同じ手順だが、$\varsigma_t=\gamma\sigma_t^{\bar q}-\sigma_t^v$、$\tilde\varsigma_t=\gamma(1-\vartheta_t)\bar\chi\tilde\sigma_t$ を式(65)に代入する。A.5 Step 2 の左辺は変わらず

$$
\frac{\rho}{1-\vartheta}+\frac{\breve\mu^B-\mu^\vartheta}{1-\vartheta}-\frac{\sigma^{\bar q}\sigma^\vartheta}{1-\vartheta}=\frac{\bigl(\sigma^v-\gamma\sigma^{\bar q}\bigr)\sigma^\vartheta}{1-\vartheta}+\gamma(1-\vartheta)\bar\chi^2\tilde\sigma^2
$$

$(1-\vartheta)$ を掛けて $\mu^\vartheta$ について解き、$\vartheta$ を掛けると式(44)。

**Step 4　$v$ の運動**

共状態方程式（T2）は、$c/n=\rho$ と Step 2 を使って

$$
\mathbb E_t[d\xi_t^i]=-\Bigl((1-\gamma)\rho\log\rho-\rho\log v_t+\mu_t^{n,i}-\bigl(\gamma\sigma_t^{n,i}-\sigma_t^v\bigr)\sigma_t^{n,i}-\gamma\bigl(\tilde\sigma_t^{n,i}\bigr)^2\Bigr)\xi_t^idt\tag{71}
$$

一方、$\xi=vn^{-\gamma}$ に T1 を使うと

$$
\mathbb E_t[d\xi_t^i]=\Bigl(\mu_t^v-\gamma\mu_t^{n,i}+\frac{\gamma(\gamma+1)}2\bigl((\sigma_t^{n,i})^2+(\tilde\sigma_t^{n,i})^2\bigr)-\gamma\sigma_t^v\sigma_t^{n,i}\Bigr)\xi_t^idt\tag{72}
$$

式(71)と式(72)を等しいとおいて $\mu_t^v$ について解き、$\mu^{n,i}=\mu^{\bar q}+\Phi(\iota)-\delta$、$\sigma^{n,i}=\sigma^{\bar q}$、$\tilde\sigma^{n,i}=(1-\vartheta)\bar\chi\tilde\sigma$ を代入すると式(45)。

**確認**

$\gamma=1$ では $\xi=v/n$ が対数効用の共状態 $e^{-\rho t}/(\rho n)$ に一致するので $v_t=e^{-\rho t}/\rho$（確定的、$\sigma^v=0$）。このとき式(44)は式(16)に一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(42)、式(65)、式(62) | 再帰効用、ポートフォリオ条件 |
| T1、T2 | 伊藤の補題、共状態方程式 |

### A.14 民間発行の安全資産（式(47)、式(48)、式(49)）

**Step 1　最適条件の不変性**

$dr_t^b=(i_t^p-i_t)dt+dr_t^B$ で $i^p=i$ なら $dr_t^b=dr_t^B$。民間債の発行・保有は期待収益もリスクも変えないので、ハミルトニアン（式(64)）は変わらず、A.3 から A.5 の解がそのまま成り立つ。実質配分、$q_t^B$、$q_t^K$ は基本モデルと同じ。

**Step 2　取引過程**

保有者 $i$ の $j$ 債は $d\Delta^{b,i}(j)=db^i(j)/b^i(j)-dr^b$、発行者 $j$ は $d\Delta^{B,j}=dB^j/B^j-dr^b$（A.10 と同様）。例では $B_t(j)=\eta_t^jB_t^p\propto\eta_t^jq_t^BK_t$ なので、

$$
\mu_t^{\Delta,j}(j)=-x_t,\qquad\sigma_t^{\Delta,j}(j)=0,\qquad\tilde\sigma_t^{\Delta,j}(j)=\tilde\sigma_t^\eta
$$

> $-x_t$ は発行者 $j$ が保有者に支払う期待純額の符号反転。

**Step 3　評価式**

政府債（A.10 Step 1）と同じ導出で保有者の評価式（式(47)）、足し上げて式(48)。発行者の短期ポジションは、符号を反転して $-B_0(j)=-\mathbb E\bigl[\int\xi^j(x_t+(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2)B_t(j)dt\bigr]$（式(49)）。

**Step 4　サービスフローの相殺**

式(48)を全債種 $j$ で足すと保有側の合計サービスフロー、式(49)を足すと発行側の合計（負）が出る。絶対値は等しく符号が反対で、純サービスフローは0。

| 入力・使う道具 | 内容 |
|---|---|
| 式(64)、式(30) | ハミルトニアン、政府債の評価式 |

### A.15 利便性イールド（式(51)、式(52)、式(53)、式(54)）

**Step 1　消費の最適条件**

ハミルトニアンの $\log c$ を $(1-\upsilon)\log c+\upsilon\log\bigl(1-\theta^K-\theta^E-\theta^{\bar E}\bigr)+\upsilon\log n$ に置き換える。同じ価値関数の推測（T3）で消費は $c_t^i=(1-\upsilon)\rho n_t^i$。

**Step 2　投資・価格**

投資の最適条件は不変。A.4 の $\rho$ を $(1-\upsilon)\rho$ に置き換えて式(51)。

**Step 3　ポートフォリオ条件の追加項**

$\theta^K,\theta^E,\theta^{\bar E}$ の3つの最適条件の右辺に共通の追加項 $\dfrac{\rho\upsilon}{1-\theta^K-\theta^E-\theta^{\bar E}}=\rho\upsilon\dfrac{n^i}{b^i}=\Delta i_t$ が入る。A.5 Step 2 の式は右辺に $+\Delta i_t$ が加わり、

$$
\mu_t^\vartheta=(1-\upsilon)\rho+\breve\mu_t^B-(1-\vartheta_t)^2\bar\chi^2\tilde\sigma_t^2-(1-\vartheta_t)\Delta i_t
$$

**Step 4　$\Delta i_t$ の消去**

均衡では $n^i/b^i=1/\vartheta$ なので $\Delta i_t=\upsilon\rho/\vartheta_t$、$(1-\vartheta_t)\Delta i_t+\upsilon\rho=\upsilon\rho/\vartheta_t=\Delta i_t$。これを Step 3 に代入して式(52)。

**Step 5　評価式**

買い持ち視点：A.9 の途中式で、名目SDF $\xi^i/P$ は政府債でなく民間債を価格付けするため、平均で $i^p=i+\Delta i$ の率で減衰し、第2項が0にならず $\mathbb E\bigl[\int\xi^i\Delta i\,B/P\,dt\bigr]$ が残る。平均化して式(53)。

動的取引視点：A.10 Step 1 の無裁定関係が $\mathbb E_t[dr^B]/dt-r^f-\varsigma\sigma^{q,B}=-\Delta i_t$ になる（政府債の期待収益が $\Delta i_t$ だけ低い）。ドリフトに $-\Delta i_t$ が追加され、A.10 Step 3・4 に続けると式(54)。

**確認**

$\upsilon=0$ なら $\Delta i=0$ で式(51)、式(52)、式(53)、式(54)は式(15)、式(16)、式(26)、式(30)に一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(50)、式(64)、式(16) | 修正効用、ハミルトニアン、基本のϑ方程式 |
| T3 | 価値関数の推測 |

---

**© 2022 by Markus K. Brunnermeier, Sebastian A. Merkel, and Yuliy Sannikov. All rights reserved.** 本記事は "Debt as Safe Asset"（NBER Working Paper No. 29626）の数理モデルを要約した早見表で、式の導出手順と説明は本記事による。原論文の著作権は著者に帰属する。
{% endraw %}
