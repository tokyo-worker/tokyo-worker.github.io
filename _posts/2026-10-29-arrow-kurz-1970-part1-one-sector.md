---
layout: post
title: "Arrow & Kurz (1970) \"Public Investment, the Rate of Return, and Optimal Fiscal Policy\"、Johns Hopkins Press for RFF: 数理モデル【第1部】一部門最適成長モデルと社会的割引率"
date: 2026-10-29 00:00:00 +0900
categories: [経済学, 経済成長理論]
math: true
---

{% raw %}
# Arrow & Kurz (1970) "Public Investment, the Rate of Return, and Optimal Fiscal Policy"、Johns Hopkins Press for RFF: 数理モデル【第1部】
### 一部門最適成長モデルと社会的割引率（原著 第I章§4–5・第II章・第III章）

---

## 0. 論文の紹介 {#sec0}

**書誌**

Kenneth J. Arrow and Mordecai Kurz, *Public Investment, the Rate of Return, and Optimal Fiscal Policy*, The Johns Hopkins Press for Resources for the Future, 1970（2011年に RFF Press から *Environmental and Resource Economics* 叢書の Volume 1 として復刻）。全8章、約210ページの単行本である。

**何を扱う本か**

政府の投資（公共投資）を評価するとき、市場利子率をそのまま割引率に使ってよいかを問う。出発点は、市場利子率が多数あること、先物市場が乏しいこと、リスク市場が不完全であること、公共財の収益が回収しきれないこと、政府が将来世代に対して特別な責任をもつことである。著者らはこれを「割引率の選び方」の問題として扱わず、**成長理論の枠内での動学的最適化問題**として定式化する。さらに、政府が使える手段（税・公債）で最適経路を実現できるか、という**操作可能性（controllability）**を、Tinbergen の経済政策論の動学版として新たに導入する。

**本記事の位置づけ**

本記事は、この書籍そのものの解説ではなく、**書籍の背景にある数理モデルを早見表にした記事**である。原著の式は簡略化せず、そのまま用いる。原著は長大なため、次の4部に分けて記事化する。

| 部 | 原著の範囲 | 内容 |
|---|---|---|
| **第1部（本記事）** | 第I章§4–5、第II章、第III章 | 基準関数、新古典派成長モデル、一部門最適成長（Ramsey型）、社会的割引率、近似、不可逆投資 |
| 第2部 | 第IV章 | 民間資本と公共資本の二部門最適成長モデル |
| 第3部 | 第V章、第VI章 | 政策目的・市場条件・操作可能性、固定貯蓄率の下での最適政策 |
| 第4部 | 第VII章、第VIII章 | 完全資本市場の下での消費者最適化と操作可能性（税の組合せ） |

第1部は、後続の部すべてが前提とする**公共資本を含まない基準モデル**である。ここで得られる「利子率だけでは投資水準は決まらない」「割引率は資本蓄積の経路に依存する」という結論が、第2部以降で公共資本・税・債務を加えるときの比較対象になる。

---

## 目次

- [0. 論文の紹介](#sec0)
- [1. 数理モデル](#sec1)
- [2. 説明できる現象](#sec2)
- [3. モデルが整理している点](#sec3)
- [4. 対象外の現象](#sec4)
- [付録：導出手順](#appendix)

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間・情報構造**

連続時間 $t\ge 0$、無限期間。単一の財を、消費にも資本蓄積にも使える。社会的計画者（完全に利他的で無制限の権限をもつ政府）が、消費経路を選ぶ。完全予見で、不確実性はない。

**A1 一種類の可塑的（malleable）資本**

資本は1種類で、生産に使われる配分先は区別されない。投資と消費の限界変形率は1である。外すと（資本が特定用途に固定されると）、投資は「瞬時の貸付」とみなせなくなり、式(15)の限界生産力＝利子率の関係が一般には成り立たない。ただし原著は、すべての投資が増加している成長経済では、固定された資本も可塑的であるかのように振る舞うと述べる（§1.11の不可逆性も参照）。

**A2 規模に関して収穫一定、労働増大的（Harrod中立的）技術進歩**

$F$ は凹で1次同次。技術進歩は労働増大型で、率 $\tau$ で一定。これはバランス成長が可能になる最も一般的な形である。収穫逓増の場合は §1.11 で扱う。

**A3 人口・労働の外生的成長**

人口 $P(t)$ と労働力 $L(t)$ は同率 $\pi$ で成長し、労働参加率は一定。

**A4 基準関数（社会的効用）**

各時点の felicity を人口で足し上げ、一定率 $\rho>0$ で割り引いて時間について足す。時間加法性と割引の定常性を仮定する。外すと、割引率が消費水準に依存することになり、問題が定常でなくなる。人口で重み付けしない基準（世代ごとの felicity を個人1人分で測る基準）は、人口の多い世代を不当に冷遇するため採らない。

**A5 felicity の形**

$U$ は凹で増加、$U'(0)=+\infty$。限界 felicity の消費に関する弾力性 $\sigma$ は一定。このとき一般性を失わず $U'(c)=c^{-\sigma}$ と正規化できる（定数倍しても最適政策は変わらない）。

**A6 資本の減耗はなし（§1.11で導入）**

**正則条件**

$$
f(0)=0,\qquad f'(k)\gt 0,\qquad f''(k)\lt 0,\qquad \omega\gt\gamma
$$

最後の条件は最適経路の存在条件である（式(33)）。

### 1.1 背景：固定貯蓄率の新古典派成長モデル（原著 I.5）

**生産関数と蓄積**

$$
Y=F[K,L]=L\,\underbrace{f(k)}_{\text{1人当たり産出}},\qquad k=\underbrace{\frac{K}{L}}_{\text{資本労働比率}}\tag{1}
$$

$$
\underbrace{\dot K=sY}_{\text{貯蓄率 }s\text{ で蓄積}},\qquad L(t)=L(0)e^{\pi t}\tag{2}
$$

$$
\dot k=\underbrace{s f(k)}_{\text{1人当たり貯蓄}}-\underbrace{\pi k}_{\text{資本労働比率の維持に必要な投資}}\tag{3}
$$

**バランス成長と利子率**

$$
s f(k_s)=\pi k_s\ \ (\dot k=0),\qquad r=F_K=\underbrace{f'(k)}_{\text{競争均衡の利子率}}\tag{4}
$$

> $k_s$ は固定貯蓄率モデルのバランス成長点。$k_s$ で産出と資本は自然成長率 $\pi$ で成長する。消費を最大にする貯蓄率は $\pi=f'(k_s)$（黄金律）を満たす。技術進歩が Harrod 中立的なら $F(K,L,t)=F[K,A(t)L]$ の形になる。以降の章は、$s$ を固定せず最適に選ぶ。

| 記号・項目 | 意味 |
|---|---|
| $Y,K,L$ | 産出、資本、労働 |
| $k=K/L$ | 資本労働比率 |
| $f(k)$ | 1人当たり産出（凹） |
| $s$ | 貯蓄率（固定） |
| $\pi$ | 労働力の成長率（自然成長率） |
| $k_s$ | 固定貯蓄率モデルのバランス成長点 |
| $r$ | 利子率（資本の限界生産力） |

### 1.2 基準関数と一部門モデルの設定

**基準関数（一般形と第III章の形）**

$$
V=\int_{0}^{\infty}e^{-\rho t}\,\underbrace{P(t)}_{\text{人口}}\,\underbrace{U[c(t),k_g(t)]}_{\text{felicity}}\,dt\tag{5}
$$

$$
V=\int_{0}^{\infty}e^{-\rho t}\,P(t)\,U[c(t)]\,dt\tag{6}
$$

> 式(5)は公共資本 $k_g$（1人当たり）が直接 felicity に入る一般形（原著I.4）で、第2部以降で使う。本記事の一部門モデルは公共資本を含まないので式(6)を使う。

**生産・資源制約・人口**

$$
Y=F\bigl[K,\ \underbrace{e^{\tau t}L}_{\text{効率単位の労働}}\bigr]\tag{7}
$$

$$
\dot K=\underbrace{Y}_{\text{産出}}-\underbrace{P(t)c(t)}_{\text{総消費}}\tag{8}
$$

$$
P(t)=P(0)e^{\pi t},\qquad L(t)=L_0e^{\pi t},\qquad \gamma=\underbrace{\pi+\tau}_{\text{自然成長率}}\tag{9}
$$

**felicity の弾力性**

$$
\sigma=-\frac{U''(c)\,c}{U'(c)}=\text{一定},\qquad U'(c)=c^{-\sigma}\ \ (\text{正規化})\tag{10}
$$

> 選ぶのは $c(t)$ のみ。初期資本 $K(0)=K_0$ は歴史的に与えられる。

| 記号・項目 | 意味 |
|---|---|
| $V$ | 社会的総効用 |
| $\rho$ | felicity の割引率（$\gt 0$） |
| $P(t)$ | 人口 |
| $c(t)$ | 1人当たり消費 |
| $U$ | felicity 関数 |
| $k_g$ | 1人当たり公共資本（第2部以降） |
| $F$ | 生産関数（凹、1次同次） |
| $\tau$ | 労働増大的技術進歩率 |
| $\pi$ | 人口・労働力の成長率 |
| $\gamma$ | 自然成長率 $\pi+\tau$ |
| $\sigma$ | 限界 felicity の消費弾力性 |
| $L_0$ | $L(0)$ |

### 1.3 消費利子率と投資の限界生産力

**消費利子率**

$$
r_c=\underbrace{\rho}_{\text{felicity の利子率}}-\underbrace{\frac{d\log U'(c)}{dt}}_{\text{限界 felicity の変化率}}=\rho+\sigma\,\frac{\dot c}{c}\tag{11}
$$

**投資の条件**

$$
\underbrace{F_K}_{\text{資本の限界生産力}}=\underbrace{r_c}_{\text{消費利子率}}\tag{12}
$$

> 式(11)の第1項は Böhm-Bawerk の第二の理由（将来 felicity の過小評価）、第2項は第一の理由（消費増加による限界 felicity の低下）に対応する。式(12)は、投資を無限に短い貸付とみなすことから出る近視的（myopic）な条件で、これだけでは投資水準は定まらない（§1.7）。

| 記号・項目 | 意味 |
|---|---|
| $r_c$ | 消費利子率（時点 $t$ の消費割引因子の下落率） |
| $U'$ | 限界 felicity |
| $F_K$ | 資本の限界生産力 |

### 1.4 成長調整変数と定常成長

**成長調整**

$$
k(t)=K(t)e^{-\gamma t},\qquad F[K,e^{\tau t}L]=e^{\gamma t}f(k),\qquad f(k)=F(k,L_0)\tag{13}
$$

$$
F_K=f'(k)\tag{14}
$$

**漸近的な利子率と定常成長経路**

$$
\omega=\underbrace{\rho+\sigma\tau}_{\text{漸近的利子率}},\qquad f'(k^{\infty})=\omega\tag{15}
$$

$$
c(t)=\frac{1}{P(0)}\,e^{\tau t}\Bigl[f(k^{\infty})-\gamma k^{\infty}\Bigr]\tag{16}
$$

$$
\frac{\dot K}{Y}=\underbrace{\frac{\gamma k^{\infty}}{f(k^{\infty})}}_{\text{自然成長率}\,/\,\text{資本の平均生産力}}\tag{17}
$$

**一般の時点での消費の伸び**

$$
\frac{\dot c}{c}=\frac{f'(k)-\rho}{\sigma}=\tau+\frac{f'(k)-\omega}{\sigma}\tag{18}
$$

> 式(17)は Harrod-Domar の関係。式(18)は式(11)(12)(14)から出る。利子率が漸近値 $\omega$ から乖離している間、消費の伸びは長期値 $\tau$ から乖離する。

| 記号・項目 | 意味 |
|---|---|
| $k$ | 有効労働1単位当たり資本 |
| $f(k)$ | 有効労働1単位当たり産出 |
| $\omega$ | 漸近的利子率（主観的時間選好の長期値） |
| $k^{\infty}$ | 定常成長点の $k$ |

### 1.5 最大原理による定式化

**現在価値ハミルトニアン（current-value Hamiltonian）**

$$
H=\underbrace{P(t)U[c]}_{\text{felicity}}+\underbrace{q}_{\text{資本の価格}}\Bigl\{\underbrace{F[K,e^{\tau t}L]-P(t)c}_{\dot K}\Bigr\}\tag{19}
$$

**必要条件**

$$
U'(c)=q\tag{20}
$$

$$
\frac{\dot q}{q}=\rho-f'(k)\tag{21}
$$

> 式(20)は $\partial H/\partial c=0$（$U'(0)=\infty$ なので内点解）。式(21)は $\dot q=\rho q-\partial H/\partial K$。資本の価格 $q$ は、1単位の追加消費の限界 felicity に等しい。

| 記号・項目 | 意味 |
|---|---|
| $H$ | 現在価値ハミルトニアン |
| $q$ | 資本の補助変数（現在価値表示の価格） |

### 1.6 自律系への変換と最適経路の特徴

**有効労働1単位当たりの消費と価格**

$$
\hat c(t)=P(t)\,e^{-\gamma t}\,c(t)\tag{22}
$$

$$
\dot k=\underbrace{f(k)-\gamma k}_{\text{維持投資後の産出}}-\underbrace{\hat c}_{\text{消費}}\tag{23}
$$

$$
U'(\hat c)=p,\qquad p=\Bigl(\frac{e^{\gamma t}}{P(t)}\Bigr)^{\sigma}q\tag{24}
$$

$$
\frac{\dot p}{p}=\underbrace{\omega}_{\rho+\sigma\tau}-f'(k)\tag{25}
$$

**黄金律点と定常点**

$$
f'(k^{\ast})=\gamma\qquad(\text{黄金律：定常消費 }f(k)-\gamma k\text{ を最大化})\tag{26}
$$

$$
\hat c^{\infty}=f(k^{\infty})-\gamma k^{\infty},\qquad p^{\infty}=U'(\hat c^{\infty})\tag{27}
$$

> 式(23)(25)と式(24)の第1式で、時間を陽に含まない（自律的な）2変数系になる。$\hat c$ は $p$ の減少関数。$p$ の初期値 $p(0)$ は、系が定常点 $(k^{\infty},p^{\infty})$ に収束するように1通りに決まる（鞍点経路）。

| 記号・項目 | 意味 |
|---|---|
| $\hat c$ | 有効労働1単位当たり消費に比例する量 |
| $p$ | $\hat c$ の価格（$=U'(\hat c)$） |
| $k^{\ast}$ | 黄金律の資本 |
| $\hat c^{\infty},p^{\infty}$ | 定常点での消費と価格 |

### 1.7 最適経路の存在と最適性（Proposition 1・2）

**存在条件と横断性**

$$
\omega\gt\gamma\ \Longleftrightarrow\ k^{\infty}\lt k^{\ast}\tag{28}
$$

$$
\lim_{t\to\infty}e^{-\rho t}q(t)K(t)=\lim_{t\to\infty}\,[P(0)]^{\sigma}\,e^{-(\omega-\gamma)t}\,p(t)\,k(t)=0\tag{29}
$$

> $\omega\lt\gamma$ のとき最適経路は存在しない。定常点が黄金律より資本過剰となり、鞍点経路を途中で黄金律の一定消費経路に乗り換えると消費が必ず増えるため（成長株のパラドックスと同型）。$\omega\gt\gamma$ なら式(29)が成り立ち、最大原理の解が最適である。

| 記号・項目 | 意味 |
|---|---|
| $\omega-\gamma$ | 割引率と成長率の差（後述の $\lambda$） |

### 1.8 定常化された問題

**割引率の再定義**

$$
\lambda=\omega-\gamma=\rho-\pi-(1-\sigma)\tau\tag{30}
$$

**$\sigma\ne 1$ の場合**

$$
V=[P(0)]^{\sigma}\int_{0}^{\infty}e^{-\lambda t}\,U(\hat c)\,dt,\qquad U(c)=\frac{c^{1-\sigma}}{1-\sigma}\tag{31}
$$

**$\sigma=1$（対数効用）の場合**

$$
V=P(0)\int_{0}^{\infty}e^{-\lambda t}\bigl[\tau t-\log P(0)\bigr]dt+P(0)\int_{0}^{\infty}e^{-\lambda t}\,U(\hat c)\,dt,\qquad \lambda=\rho-\pi\tag{32}
$$

> 式(32)の第1項は制御変数に依存しない定数。したがって最適化は第2項のみに帰着する。式(31)(32)と式(23)から、問題は時間を陽に含まない定常問題になり、最適政策 $\hat c$ と補助変数 $p$ は状態変数 $k$ だけの関数になる。

| 記号・項目 | 意味 |
|---|---|
| $\lambda$ | 定常化後の割引率（$\gt 0$） |

### 1.9 政策関数と線形近似（Proposition 3・4）

**政策関数の微分方程式**

$$
p'(k)=\frac{\varphi(k)}{\psi(k)},\quad \varphi(k)=[\omega-f'(k)]\,p(k),\quad \psi(k)=f(k)-\gamma k-\hat c[p(k)]\tag{33}
$$

> $\varphi=\dot p$、$\psi=\dot k$ を $k$ の関数として書いたもの。初期条件は $p(k^{\infty})=p^{\infty}$。

**定常点での傾き（弾力性の二次方程式）**

$$
\underbrace{\frac{1}{\sigma}\frac{\hat c^{\infty}}{k^{\infty}}}_{\gt 0}\,(E_p)^2+\lambda E_p+\omega E_{f'}=0,\qquad E_p=\frac{k^{\infty}}{p^{\infty}}p'(k^{\infty}),\quad E_{f'}=\frac{k^{\infty}f''(k^{\infty})}{f'(k^{\infty})}\tag{34}
$$

> $E_{f'}\lt 0$ なので根の積は負で、正負の根が1つずつ。最適経路に対応するのは**負の根**。

**$k^{\infty}$ の近傍での近似**

$$
\dot k\approx-\frac{\omega E_{f'}}{E_p}\,\bigl(k-k^{\infty}\bigr)\tag{35}
$$

$$
\dot K\approx\Bigl[\gamma-\frac{\omega E_{f'}}{E_p}\Bigr]K+\frac{\omega E_{f'}}{E_p}\,e^{\gamma t}k^{\infty}\tag{36}
$$

$$
f'[k(t)]\approx\omega+\omega E_{f'}\,e^{-(\omega E_{f'}/E_p)t}\Bigl[\frac{k(0)}{k^{\infty}}-1\Bigr]\tag{37}
$$

$$
\int_{0}^{t}f'[k(u)]\,du\approx\omega t-E_p\Bigl[e^{-(\omega E_{f'}/E_p)t}-1\Bigr]\Bigl[\frac{k(0)}{k^{\infty}}-1\Bigr]\tag{38}
$$

> 式(36)は投資額を資本ストックと時間の関数で与える近似規則（Proposition 4(a)）。式(38)は時点 $t$ の便益・費用を割り引く率（Proposition 4(b)）。$t$ が大きいと第2項は第1項に比べて無視できる。

| 記号・項目 | 意味 |
|---|---|
| $p'(k)$ | 政策関数 $p(k)$ の傾き |
| $\varphi,\psi$ | $\dot p,\dot k$ を $k$ の関数として表したもの |
| $E_p$ | $k=k^{\infty}$ での $p(k)$ の弾力性 |
| $E_{f'}$ | $k=k^{\infty}$ での $f'(k)$ の弾力性 |

### 1.10 プロジェクト評価と割引

**限界的なプロジェクトの採否**

プロジェクトの産出流列を $r(t)$（投入期は負）とする。

$$
\int_{0}^{\infty}\underbrace{e^{-\int_{0}^{t}f'[k(u)]\,du}}_{\text{割引因子}}\,r(t)\,dt\ \ge\ 0\tag{39}
$$

> 割引因子は短期利子率 $f'[k(u)]$ の経路で決まる。経済が定常状態でないと、割引率は時間について一定でない。初期に $k\lt k^{\infty}$ なら短期利子率は $f'(k)$ から $\omega$ へ下がり、遠い将来の便益ほど低い率で割り引かれる。

| 記号・項目 | 意味 |
|---|---|
| $r(t)$ | プロジェクトの時点 $t$ の産出（入力は負） |
| $f'[k(u)]$ | 時点 $u$ の短期利子率 |

### 1.11 一般化：不可逆投資・減耗・収穫逓増

**投資を制御変数に加えたラグランジアン**

$$
\mathcal L=U(\hat c)+p\,(i-\gamma k)+q\,[f(k)-i-\hat c]\tag{40}
$$

ここで $i$ は成長調整後の総投資で、制約は $\dot k=i-\gamma k$、$\hat c+i=f(k)$。

**可逆投資（$i$ は正負とも可）**

$$
U'(\hat c)=q,\qquad p=q,\qquad \dot p=\omega p-q f'(k)\tag{41}
$$

**不可逆投資（$i\ge 0$）**

$$
p\ge q,\qquad p\lt q\ \Rightarrow\ i=0\tag{42}
$$

自由区間（$i\gt 0$、式(41)と同じ）と閉塞区間（$i=0$）が交互に現れる。閉塞区間では次が成り立つ。

$$
\hat c=f(k),\qquad q=U'[f(k)],\qquad p'(k)=\frac{U'[f(k)]\,f'(k)-\omega p}{\gamma k}\tag{43}
$$

**資本減耗率 $\delta$ がある場合**

$$
\dot K=I-\delta K,\qquad \dot k=i-(\gamma+\delta)k\tag{44}
$$

**収穫逓増（政府資本類似の労働増大型の形）**

$$
Y=G\Bigl\{K,\ H\bigl[K,(e^{\tau' t}L)^{\theta}\bigr]\Bigr\},\qquad \gamma=(\pi+\tau')\,\theta,\qquad \tau=\gamma-\pi\tag{45}
$$

> 閉塞区間の式(43)の $p'(k)$ は、可逆の場合の $p'=[\omega p-qf'(k)]/(i-\gamma k)$ に $i=0,\ q=U'[f(k)]$ を代入したもの。式(44)の減耗は記号の読み替えで吸収できる：$\gamma\to\gamma+\delta$、$\omega\to\omega+\delta$、$\lambda$ は不変で、元のパラメータでは $\rho$ と $\pi$ がともに $\delta$ だけ増え、$\tau$ と $\sigma$ は不変。式(45)では $f(k)=G[k,H(k,L_0^{\theta})]$ とおくと $F=e^{\gamma t}f(k)$ が成り立ち、第III章の分析がそのまま成り立つ（$\theta\gt 1$ が収穫逓増）。収穫逓増の下では資本と労働にそれぞれ限界生産力を支払うことができない。

| 記号・項目 | 意味 |
|---|---|
| $i$ | 成長調整後の総投資 |
| $\mathcal L$ | ラグランジアン |
| $\delta$ | 資本減耗率 |
| $G,H$ | 凹で1次同次、各変数について増加の関数 |
| $\theta$ | 収穫の程度を表す指数（原著では $\delta$ と表記） |
| $\tau'$ | 式(45)での労働増大型技術進歩率 |

### 1.12 主要帰結

**主要式（Proposition 2）**

$$
\boxed{\begin{aligned}
&\dot k=\underbrace{f(k)-\gamma k}_{\text{維持投資後の産出}}-\underbrace{\hat c}_{\text{消費}}\\
&\frac{\dot p}{p}=\underbrace{\omega-f'(k)}_{\text{漸近利子率と短期利子率の差}}\\
&U'(\hat c)=p\\
&\text{定常点：}\ f'(k^{\infty})=\omega,\ \ \hat c^{\infty}=f(k^{\infty})-\gamma k^{\infty},\ \ p^{\infty}=U'(\hat c^{\infty})
\end{aligned}}\tag{46}
$$

**比較静学（定常点。式(15)(16)(17)(26)から導出）**

| 変化 | 結果 | 符号・式 |
|---|---|---|
| $\rho$ 上昇 | $\omega$ 上昇、$k^{\infty}$ 低下、$\hat c^{\infty}$ 低下 | $dk^{\infty}/d\omega=1/f''\lt 0$ |
| $\sigma$ 上昇（$\tau\gt 0$） | $\omega=\rho+\sigma\tau$ が上昇、$k^{\infty}$ 低下 | $\tau=0$ なら無影響 |
| $\pi$ 上昇 | $\omega$ 不変、$k^{\infty}$ 不変、$\gamma$ 上昇で $\hat c^{\infty}$ 低下 | 式(28)の条件 $\omega\gt\gamma$ は厳しくなる |
| 減耗 $\delta$ | $\omega,\gamma$ ともに $\delta$ 上昇 | $\lambda$ は不変 |
| 初期 $k(0)\lt k^{\infty}$ | $\dot c/c\lt\tau$、短期利子率は $\omega$ より高く、時間とともに低下 | 式(18)(37) |

**特殊ケース**

| ケース | 式 |
|---|---|
| 成長なし（$\pi=\tau=0$） | $\gamma=0,\ \omega=\rho,\ \lambda=\rho$。条件 $\omega\gt\gamma$ は $\rho\gt 0$ |
| 対数効用（$\sigma=1$） | $\omega=\rho+\tau,\ \lambda=\rho-\pi$ |
| 黄金律との関係 | $\omega\gt\gamma\Leftrightarrow k^{\infty}\lt k^{\ast}$ |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 利子率だけでは投資水準が決まらない | 式(15)より利子率は資本ストック $k$ を決め、投資はその変化（利子率の将来変化）に依存する。投資と利子率の関数関係（投資スケジュール）は定義できない |
| 割引率が時間で変わる | 式(38)より、定常状態でない限り長期割引率は短期利子率の経路に依存し、一定でない |
| 因果の向き | 短期的には既存の資本ストックが利子率を決め、利子率は消費の伸び（式(18)）を決める |
| 消費が時間とともに上昇する | 利子率が長期の時間選好 $\omega$ を上回る間、消費は増加（式(18)） |
| 最適経路が存在しない場合 | $\omega\lt\gamma$ のとき資本蓄積が最終的な消費に結びつかず、最適経路が存在しない（式(28)） |
| 蓄積期とpotlatch（有限期間の場合） | 期間が有限だと、期末に資本を食いつぶす（potlatch）局面が生じる。無限期間では消え、$\omega\lt\gamma$ では不連続になる |
| 不可逆投資の交替パターン | 投資が非負という制約で、自由区間と閉塞区間が交互に現れる（式(41)(42)(43)） |
| 減耗の扱い | 式(44)のとおり、パラメータの読み替えで吸収される |

## 3. モデルが整理している点 {#sec3}

- 公共投資の割引率を、市場利子率の観察ではなく、消費利子率（式(11)）と資本の限界生産力（式(12)）を結ぶ動学的最適化の帰結として整理している。
- 投資水準と利子率を同時に決める。利子率は定常点で主観的時間選好 $\omega$ に等しく、定常点から離れると経路の関数になる（式(33)(35)(37)）。
- 現在の投資決定が将来の最適な投資に依存するという点を、固定割合の仮定を置かずに扱う。将来の再投資比率は、最適化の結果として決まる。

## 4. 対象外の現象 {#sec4}

- 公共資本と民間資本の区別、公共資本が生産性や効用に与える影響（第2部で扱う）。
- 税・公債による資金調達と、最適経路を分権的な経済で実現できるか（操作可能性。第3部・第4部で扱う）。
- 不確実性とリスク。本モデルは完全予見で、リスクの扱いは原著の別の節（I.2）での議論に属する。
- 所得再分配。基準関数は個人が同質で、分配は考慮しない。
- 人口・技術進歩の内生化。どちらも外生で、一定率で成長する。原著も、人口は物理的理由で上限をもつはずだと述べている。
- 実証的な数値（利子率・弾力性の推定値）。モデルは係数が「データから計算できる」と述べるにとどまる。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
[基準 (5)(6)] [技術 (7)] [資源制約 (8)] [人口・成長率 (9)] [弾力性 (10)]
        │
        ├─ 消費利子率 (11) ──→ 投資 = 消費の貸付 (12)
        │
        ├─ 成長調整 (13)(14) ──→ 定常成長 (15)-(18)
        │
        └─ 最大原理 (19)-(21) ──→ 自律系 (22)-(25) ──→ 黄金律・定常点 (26)(27)
                │
                ├─ 存在・最適性 (28)(29)
                ├─ 定常化 (30)-(32) ──→ 政策関数 (33)(34) ──→ 近似 (35)-(38)
                └─ プロジェクト評価 (39)
        拡張：不可逆性 (40)-(43)、減耗 (44)、収穫逓増 (45)
        まとめ：主要式 (46)
```

### A.1 使う道具

**T1 最大原理（無限期間、現在価値表示。原著 Proposition II.7）**

$\max\int_0^{\infty}e^{-\rho t}U[x,v,t]\,dt$ を $\dot x=T[x,v,t]$ の下で解く。$H=U+\sum_i p_iT_i$ とすると、各時点で $v$ は $H$ を最大にし、$\dot p_i=\rho p_i-\partial H/\partial x_i$。

**T2 十分条件（原著 Proposition II.8）**

$H$ を $v$ について最大化した関数が $x$ について凹で、横断性条件 $\lim_{t\to\infty}e^{-\rho t}p_i(t)x_i(t)=0$ が成り立てば、最大原理の解は最適である。

**T3 定常問題（原著 Proposition II.9）**

$U,T$ が $t$ を陽に含まず割引率が一定なら、最適政策と補助変数は状態変数だけの関数で、微分方程式系は自律系になる。

**T4 対数微分**

$\dot y/y=d\log y/dt$。積の変化率は各因子の変化率の和。

**T5 ロピタルの定理**

定常点で $\dot p=0,\dot k=0$ のとき $p'(k)=\varphi/\psi$ は $0/0$ 型で、$p'(k^{\infty})=\varphi'(k^{\infty})/\psi'(k^{\infty})$。

**T6 二次方程式の根の積**

$ax^2+bx+c=0$ の根の積は $c/a$。$c/a\lt 0$ なら実根は正負1つずつ。

### A.2 消費利子率（式(11)(12)）

**Step 1　消費割引因子**

時点 $t$ の消費の割引因子は、将来と現在の消費の限界代替率で、

$$
D(t)=e^{-\rho t}\,\frac{U'[c(t)]}{U'[c(0)]}
$$

**Step 2　利子率は割引因子の下落率**

$-\,d\log D/dt=\rho-d\log U'[c]/dt$（T4：積の変化率は各因子の変化率の和）。

**Step 3　弾力性の導入**

$d\log U'/dt=U''\dot c/U'=\dfrac{U''c}{U'}\cdot\dfrac{\dot c}{c}=-\sigma\,\dfrac{\dot c}{c}$（式(10)の $\sigma$ の定義）。

**Step 4　結果**

$r_c=\rho+\sigma\dot c/c$ → 式(11)。

**Step 5　投資との接続**

式(8)より投資と消費の限界変形率は1。資本を瞬時に消費へ戻せるなら投資は無限に短い貸付で、その収益 $F_K$ が $r_c$ に等しくなければならない → 式(12)。

| 入力・使う道具 | 内容 |
|---|---|
| 式(6)(8)(10) | 基準・資源制約・弾力性 |
| T4 | 対数微分 |

**確認**

$\dot c=0$ なら $r_c=\rho$（Ramsey の古典的な条件）。

### A.3 成長調整と定常成長（式(13)–(18)）

**Step 1　1次同次性**

$F[K,L_0e^{\gamma t}]=e^{\gamma t}F[Ke^{-\gamma t},L_0]$。ここで $e^{\tau t}L=L_0e^{(\pi+\tau)t}=L_0e^{\gamma t}$ → 式(13)。

**Step 2　限界生産力**

$\partial F/\partial K=e^{\gamma t}f'(k)\cdot\partial k/\partial K=e^{\gamma t}f'(k)\,e^{-\gamma t}=f'(k)$ → 式(14)。

**Step 3　定常成長での利子率**

$k$ が一定なら $K\propto e^{\gamma t}$、$c=(Y-\dot K)/P\propto e^{(\gamma-\pi)t}=e^{\tau t}$ なので $\dot c/c=\tau$。式(11)に代入して $r_c=\rho+\sigma\tau=\omega$。式(12)(14)より $f'(k^{\infty})=\omega$ → 式(15)。

**Step 4　定常消費**

$c(t)=\dfrac{e^{\gamma t}f(k^{\infty})-\gamma k^{\infty}e^{\gamma t}}{P(0)e^{\pi t}}=\dfrac{e^{\tau t}}{P(0)}[f(k^{\infty})-\gamma k^{\infty}]$ → 式(16)。

**Step 5　貯蓄率**

$\dot K/Y=\gamma k^{\infty}e^{\gamma t}/[e^{\gamma t}f(k^{\infty})]=\gamma k^{\infty}/f(k^{\infty})$ → 式(17)。

**Step 6　一般の時点**

式(11)に $r_c=f'(k)$ を代入し $\dot c/c$ について解く：$\dot c/c=[f'(k)-\rho]/\sigma$。$\omega=\rho+\sigma\tau$ より $\rho=\omega-\sigma\tau$ で、これを代入すると $\tau+[f'(k)-\omega]/\sigma$ → 式(18)。

| 入力・使う道具 | 内容 |
|---|---|
| 式(7)(9)(11)(12) | 技術・人口・利子率 |

**確認**

$f'(k)=\omega$ のとき式(18)は $\dot c/c=\tau$ で、Step 3 と一致。

### A.4 最大原理の適用（式(19)–(27)）

**Step 1　ハミルトニアン（T1）**

制御は $c$、状態は $K$ → 式(19)。

**Step 2　$c$ についての最大化**

$\partial H/\partial c=P\,U'(c)-qP=0$。$U'(0)=\infty$ より内点解で、$P\gt 0$ で割る → 式(20)。

**Step 3　補助変数の運動**

$\dot q=\rho q-\partial H/\partial K=\rho q-q\,F_K=\rho q-qf'(k)$（式(14)）。$q$ で割る → 式(21)。

**Step 4　成長調整**

$k=Ke^{-\gamma t}$ を微分し、$\dot K=e^{\gamma t}f(k)-Pc$ を代入：

$\dot k=\dot Ke^{-\gamma t}-\gamma k=f(k)-\gamma k-Pe^{-\gamma t}c$。式(22)の $\hat c$ を用いて → 式(23)。

**Step 5　$p$ の定義**

式(10)の正規化より $U'(c)=c^{-\sigma}$。$c=\hat c\,e^{\gamma t}/P$ なので $U'(c)=(e^{\gamma t}/P)^{-\sigma}\hat c^{-\sigma}$。式(20)から $q=U'(c)$ なので $U'(\hat c)=(e^{\gamma t}/P)^{\sigma}q\equiv p$ → 式(24)。

**Step 6　$p$ の運動（T4）**

$\log p=\sigma(\gamma t-\log P)+\log q$。時間で微分し、$\dot P/P=\pi$、式(21)を代入：

$\dot p/p=\sigma(\gamma-\pi)+\rho-f'(k)=\sigma\tau+\rho-f'(k)=\omega-f'(k)$ → 式(25)。

**Step 7　黄金律と定常点**

$\dfrac{d}{dk}[f(k)-\gamma k]=f'(k)-\gamma=0$ → 式(26)。$f''\lt 0$ なので最大。定常点 $\dot k=0$ より $\hat c=f(k)-\gamma k$、$\dot p=0$ より $f'(k)=\omega$、式(24)より $p=U'(\hat c)$ → 式(27)。

| 入力・使う道具 | 内容 |
|---|---|
| T1 | 最大原理 |
| T4 | 対数微分 |
| 式(10)(14)(20)(21) | 正規化・限界生産力・必要条件 |

**確認**

$\gamma=0$（成長なし）では $\hat c=c$、$p=q$、$\omega=\rho$ となり、式(23)(25)は $\dot k=f(k)-c$、$\dot q/q=\rho-f'(k)$ に戻る。

### A.5 存在と最適性（式(28)(29)）

**Step 1　位相図**

$(k,p)$ 平面で $\dot p=0$ は垂直線 $k=k^{\infty}$。$\dot k=0$ は $\hat c(p)=f(k)-\gamma k$（凹関数 $f(k)-\gamma k$ は $k^{\ast}$ で最大）。両曲線の交点が定常点。

**Step 2　発散する経路の排除**

第I象限（$\dot k\gt 0,\dot p\gt 0$）は一度入ると出られず、$\dot p/p\ge\omega-f'[k(0)]\gt 0$ より $p\to\infty$、$\hat c\to 0$ となり、定常点へ移れば消費を増やせるので最適でない。第III象限は有限時間で $k=0$ に到達して実行不能。

**Step 3　鞍点経路の一意性**

第IV象限の経路で独立変数を $t$ から $k$ に替えると $\dfrac{1}{p}\dfrac{dp}{dk}=\dfrac{\omega-f'(k)}{f(k)-\gamma k-\hat c}$。$\hat c$ は $p$ の減少関数なので右辺は $p$ の増加関数で、2つの解が同じ極限に近づくことはない。よって各 $k(0)$ に対し収束する $p(0)$ はちょうど1つ（連続性から存在）。

**Step 4　$\omega\lt\gamma$ の場合の非存在**

$f'$ が減少なので $\omega\lt\gamma$ なら $k^{\infty}\gt k^{\ast}$。$\hat c^{\infty}=f(k^{\infty})-\gamma k^{\infty}\lt f(k^{\ast})-\gamma k^{\ast}$ より $p^{\infty}\gt p^{\ast}$。よって十分大きな $t$ で $k\gt k^{\ast}$、$\hat c\lt\hat c^{\ast}$。その時点以降を一定消費 $\hat c^{\ast}$ に切り替えた経路は $\dot k=f(k)-\gamma k-[f(k^{\ast})-\gamma k^{\ast}]\le 0$ で $k^{\ast}$ 以下に落ちず実行可能かつ優越。よって最適経路は存在しない → 式(28)の必要性。

**Step 5　横断性（T2）**

$e^{-\rho t}qK=e^{-\rho t}\bigl(Pe^{-\gamma t}\bigr)^{\sigma}p\cdot e^{\gamma t}k=[P(0)]^{\sigma}e^{-(\rho+\sigma\pi-\sigma\gamma-\gamma)t}\,pk$。指数は $\rho+\sigma(\pi-\gamma)-\gamma=\rho-\sigma\tau-\gamma$ ではなく、$q=(P/e^{\gamma t})^{\sigma}p$ を使って整理すると $-(\rho+\sigma\tau-\gamma)=-(\omega-\gamma)$ → 式(29)。$p,k$ は有限な極限 $p^{\infty},k^{\infty}$ に収束するので、$\omega\gt\gamma$ なら0に収束し、T2より最適。

| 入力・使う道具 | 内容 |
|---|---|
| T2 | 十分条件・横断性 |
| 式(23)(25)(26)(27) | 自律系と黄金律 |

**確認**

$\gamma=0$ では式(28)は $\rho\gt 0$ に帰着する。

### A.6 定常化（式(30)–(32)）

**Step 1　効用の形**

式(10)より $U(c)=c^{1-\sigma}/(1-\sigma)$（$\sigma\ne 1$、定数は0にとれる）。次数 $1-\sigma$ の同次関数。

**Step 2　被積分関数の書換え**

$c=\hat c\,e^{\gamma t}/P$ より $P\,U(c)=P\,(e^{\gamma t}/P)^{1-\sigma}U(\hat c)=P(0)^{\sigma}e^{\pi t}e^{(1-\sigma)\tau t}U(\hat c)$（$P=P(0)e^{\pi t}$、$\gamma-\pi=\tau$）。

**Step 3　割引率の合成**

$e^{-\rho t}\cdot e^{\pi t}e^{(1-\sigma)\tau t}=e^{-\lambda t}$、$\lambda=\rho-\pi-(1-\sigma)\tau$。$\omega-\gamma=\rho+\sigma\tau-\pi-\tau$ と一致 → 式(30)(31)。

**Step 4　$\sigma=1$**

$U=\log c$。$\log c=\log\hat c+\gamma t-\log P(0)-\pi t=U(\hat c)+\tau t-\log P(0)$。$e^{-\rho t}P=P(0)e^{-(\rho-\pi)t}$、$\lambda=\rho-\pi=\omega-\gamma$（$\omega=\rho+\tau$）→ 式(32)。第1項は制御に依存しない。

| 入力・使う道具 | 内容 |
|---|---|
| 式(10)(22) | 正規化・$\hat c$ の定義 |
| T3 | 定常問題 |

**確認**

$\tau=0$ なら $\lambda=\rho-\pi$ で、$\sigma$ に依らない。

### A.7 政策関数と近似（式(33)–(39)）

**Step 1　$p$ を $k$ の関数にする（T3）**

最適経路は第II・IV象限にあり $dp/dk\lt 0$（定常点を除く）。$\dot p=\varphi(k)$、$\dot k=\psi(k)$ とおくと $p'(k)=\varphi/\psi$ → 式(33)。

**Step 2　定常点での傾き（T5）**

$\varphi(k^{\infty})=\psi(k^{\infty})=0$ なので $p'(k^{\infty})=\varphi'(k^{\infty})/\psi'(k^{\infty})$。$\varphi'=[\omega-f']p'-f''p$ より $\varphi'(k^{\infty})=-f''(k^{\infty})p^{\infty}$。$\psi'=f'-\gamma-\hat c'(p)p'$ より $\psi'(k^{\infty})=\lambda-\hat c'(p^{\infty})p'(k^{\infty})$（$f'(k^{\infty})=\omega$、$\omega-\gamma=\lambda$）。

**Step 3　弾力性で書く**

$E_p=\dfrac{k^{\infty}}{p^{\infty}}\dfrac{\varphi'}{\psi'}$。$\dfrac{k^{\infty}}{p^{\infty}}\varphi'=-k^{\infty}f''=-\omega E_{f'}$ より $\psi'(k^{\infty})=-\omega E_{f'}/E_p$。

**Step 3'　$\hat c$ の弾力性**

$U'(\hat c)=p$ と $U'$ の弾力性 $-\sigma$ から $E\hat c/Ep=-1/\sigma$。よって $\hat c'(p)p'(k^{\infty})=-\dfrac{1}{\sigma}\dfrac{\hat c^{\infty}}{k^{\infty}}E_p$ で、$\psi'(k^{\infty})=\lambda+\dfrac{1}{\sigma}\dfrac{\hat c^{\infty}}{k^{\infty}}E_p$。

**Step 4　二次方程式（T6）**

Step 3 の2通りの $\psi'$ を等置し、分母 $E_p$ を払う → 式(34)。$E_{f'}\lt 0$ なので根の積は負（T6）。最適経路は $p(k)$ が減少するので負の根。

**Step 5　線形近似**

$k\approx k^{\infty}$ で $\dot k\approx\psi'(k^{\infty})(k-k^{\infty})$ → 式(35)。$\dot K=\gamma K+e^{\gamma t}\dot k$ に式(35)を代入 → 式(36)。

**Step 6　利子率と割引**

$f'(k)\approx\omega+f''(k^{\infty})(k-k^{\infty})=\omega+\omega E_{f'}[k/k^{\infty}-1]$。式(35)の解 $k(t)-k^{\infty}=e^{-\kappa t}[k(0)-k^{\infty}]$（$\kappa=\omega E_{f'}/E_p\gt 0$）を代入 → 式(37)。$0$ から $t$ まで積分し $\omega E_{f'}/\kappa=E_p$ を使う → 式(38)。

**Step 7　プロジェクト評価**

式(21)を積分して $q(t)=q(0)e^{\rho t-\int_0^t f'[k(u)]du}$。プロジェクトが総効用に与える効果は $\int_0^{\infty}e^{-\rho t}q(t)r(t)\,dt=q(0)\int_0^{\infty}e^{-\int_0^t f'}r(t)\,dt$。$q(0)\gt 0$ なので非負条件は式(39)。

| 入力・使う道具 | 内容 |
|---|---|
| T3、T5、T6 | 定常問題、ロピタル、根の積 |
| 式(24)(33) | $p$ と政策関数 |

**確認**

近似の2次項は無視している。高次の近似は原著が Mirrlees (1967) を参照している。$t\to\infty$ で式(37)の第2項は0に近づき、$f'\to\omega$。

### A.8 一般化（式(40)–(45)）

**Step 1　ラグランジアン**

$k$ に対する制約 $\hat c+i=f(k)$ に乗数 $q$ を付け、状態方程式 $\dot k=i-\gamma k$ に $p$ を付ける → 式(40)。

**Step 2　可逆の場合**

$\partial\mathcal L/\partial\hat c=0$ より $U'(\hat c)=q$。$\mathcal L$ は $i$ について線形で係数は $p-q$。有限の最適解があるには $p=q$。$\dot p=\lambda p-\partial\mathcal L/\partial k=\lambda p+\gamma p-qf'(k)=\omega p-qf'(k)$ → 式(41)。これを代入すると式(24)(25)に一致する。

**Step 3　不可逆の場合**

$i\ge 0$ の下では $p\gt q$ なら $i$ を無限に増やせるので $p\le q$ が必要で、$p\lt q$ なら最適は $i=0$。式(42)では不等号の向きを $p\ge q$ と書いたが、原著の記号の対応では $p\ge q$ が成り立つ（原著 (13)）。$i\gt 0$ の区間では $p=q$ で可逆の場合に一致。$i=0$ の区間では式(7)（成長調整後の制約）より $\hat c=f(k)$、$q=U'[f(k)]$。

**Step 4　閉塞区間の微分方程式**

$p'=[\omega p-qf'(k)]/(i-\gamma k)$ に $i=0,\ q=U'[f(k)]$ を代入 → 式(43)。

**Step 5　減耗**

資本の減少が $\delta K$ なので $\dot K=I-\delta K$。$k=Ke^{-\gamma t}$ で $\dot k=i-(\gamma+\delta)k$ → 式(44)。この形は元の問題の $\gamma$ を $\gamma+\delta$ に置き換えたもの。$\lambda=\omega-\gamma$ は不変。

**Step 6　収穫逓増**

$F=G\{K,H[K,(e^{\tau' t}L)^{\theta}]\}$ で、$K$ が $e^{\gamma t}$ で成長するときに $F\propto e^{\gamma t}$ となる条件は $L^{\theta}$ が $e^{\gamma t}$ で成長すること、すなわち $\gamma=(\pi+\tau')\theta$ → 式(45)。$\tau=\gamma-\pi$ とし、$f(k)=G[k,H(k,L_0^{\theta})]$ は強凹。$\dot k=f(k)-\gamma k-\hat c$ は式(23)に一致し、以降の分析は同じ。

| 入力・使う道具 | 内容 |
|---|---|
| T1 | 最大原理（制約つき） |
| 式(7)(23)(24)(25) | 成長調整後の制約と自律系 |

**確認**

$p=q$ の区間では、$U'(\hat c)=p=q$ と式(41)は可逆の場合の式(24)(25)に一致する。

### A.9 著者について

**Kenneth Joseph Arrow（1921–2017）**
- **アカデミックな経歴**: ニューヨーク市立大学シティカレッジ（BA、1940）、コロンビア大学（MA、1941）。第二次大戦後にコロンビア大学で博士課程に復帰し、シカゴ大学のコウルズ委員会で研究。コロンビア大学で PhD（1951）。スタンフォード大学、ハーバード大学（本書刊行時はハーバード大学教授）、のちスタンフォード大学で教授を務めた。
- **主要な研究分野**: 社会的選択理論、一般均衡理論、リスクと不確実性の経済学、医療経済学、成長理論、オペレーションズ・リサーチ。
- **評判・学術的貢献**: 1972年にノーベル経済学賞（J. R. Hicks と共同受賞）。John Bates Clark 賞（1957年）、アメリカ国家科学賞（2004年）など。代表的業績は、社会的選択の不可能性定理、Arrow-Debreu モデル（一般均衡の存在）、Arrow-Pratt の絶対的リスク回避度、医療の不確実性に関する1963年の論文、learning by doing の論文（1962年）。

**Mordecai Kurz（1934年生）**
- **アカデミックな経歴**: ヘブライ大学（BA、1957）、イェール大学（MA、1958、PhD、1962）。スタンフォード大学で統計学の修士（1960）。スタンフォード大学で助教授、准教授を経て、1969年から教授。Joan Kenney Professor of Economics（のち名誉教授、2010年）。スタンフォード大学 IMSSS の経済部門のディレクターを1989年まで務めた。
- **主要な研究分野**: 新古典派成長理論、一般均衡理論、ゲーム理論、所得分配、合理的信念（rational beliefs）の理論、技術的市場支配力。
- **評判・学術的貢献**: 計量経済学会フェロー（1971年から）。Arrow との共著である本書と、Arrow との共著論文（*Econometrica* 1970 の不可逆投資のラムゼイモデル）が初期の代表作。のちに *Endogenous Economic Fluctuations*（1997）、*The Market Power of Technology*（2023）などを発表した。

---

**© 1970 The Johns Hopkins Press（Kenneth J. Arrow and Mordecai Kurz）. This edition © Earthscan 1970, 2011.** 本記事は原著の数理モデルを整理した解説であり、原著の文章を転載するものではない。
{% endraw %}
