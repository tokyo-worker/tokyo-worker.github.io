---
layout: post
title: "Can Deficits Finance Themselves?：数理モデル"
date: 2026-10-18 00:00:00 +0900
categories: [Macroeconomics, Fiscal Policy]
math: true
---

{% raw %}
# Can Deficits Finance Themselves?：数理モデル
### 名目価格の粘着性とリカードの等価性の崩壊のもとでの、財政赤字の自己ファイナンス

---

## 論文の紹介 {#intro}

**Can Deficits Finance Themselves?**（George-Marios Angeletos, Chen Lian, and Christian K. Wolf, NBER Working Paper No. 31185, 2023年4月発表、2024年2月改訂、Econometrica掲載）

この論文は、名目価格の粘着性とリカードの等価性の崩壊（有限の生存確率や流動性制約による需要側摩擦）という2つの重要な特徴を持つ経済環境において、財政赤字がどのようにファイナンスされるかを分析しています[cite: 4]。著者は、赤字が総需要のブームを引き起こすことで、①税収基盤の拡大（自動的な税収増）と、②インフレによる名目政府債務の実質価値の目減り（債務浸食）という2つのチャネルを通じて、赤字が自ら財源をまかなう（自己ファイナンスする）可能性があることを示しています[cite: 4]。さらに、財政調整（将来の増税や歳出削減）が遅れるほど自己ファイナンスの程度が高まり、極限においては将来の増税なしに債務が初期水準へ収束する「完全な自己ファイナンス」が達成されることを理論的に証明しています[cite: 4]。

この記事は、その**論文の背景にある数理モデル**だけを抜き出した早見表です。数式・前提・記号・導出を中心に整理し、実証分析や数量評価の議論は、モデルの計算に使われる数値を除いて省いています。数式は論文のものを簡略化せずに用いています（記号の衝突の解消や明らかな表記の誤りの修正は、該当箇所に明記しました）。

---

## 目次

- [論文の紹介](#intro)
- [1. 数理モデル](#sec1)
- [2. 説明できる現象](#sec2)
- [3. 整理している点](#sec3)
- [4. 対象外の現象](#sec4)
- [付録：導出手順](#appendix)

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間**

離散時間 $t\in\{0,1,2,\dots\}$。主体は、生存確率 $\omega\in(0,1]$ をもつ家計（Blanchard型のパーペチュアル・ユースOLG）、家計の労働供給をとりまとめる労働組合、Calvo型の価格粘着をもつ独占的競争の小売企業、1期の名目無リスク債を発行して税を決める財政当局、名目金利を決める金融当局である。分析は定常状態まわりの対数線形化で行い、大文字は水準、小文字は対数偏差を表す。財政変数 $d_t$, $\hat T_t$ だけは、定常状態からの乖離を定常状態の産出 $Y^{\text{ss}}$ で割った値である。実験は、定常状態から出発して、予期されない一回限りの一括給付（赤字ショック）を与えるものである。

**A1 リカードの等価性の崩壊（$\omega\lt 1$）**

家計は死亡リスクのために将来の可処分所得（したがって将来の税）を強く割り引き、短期の限界消費性向が高い。外すと（$\omega=1$、PIH-RANK）、リカードの等価性が成立し、赤字ショックも財政調整のタイミングも総需要に影響せず、自己ファイナンスの二つのチャネルはどちらも働かない。

**A2 名目価格の粘着性（NKPC、$\kappa\ge0$）**

総供給は標準的なニューケインジアン・フィリップス曲線で表される。需要の増加が実質産出とインフレに反映される。$\kappa$ が大きいほど、自己ファイナンスの担い手は税収基盤の拡大から債務の浸食へ移る。

**A3 受動的な財政ルールと財政調整の遅延**

税は所得（$\tau_y\gt 0$）と債務（$\tau_d\in(0,1)$、または時点 $H$ での一括調整）に反応し、債務は最終的に定常状態へ戻る。外すと（$\tau_d\to1$、即時の財源手当）、赤字は将来世代への移転にならず需要を刺激しない。調整が遅れる（$\tau_d\to0$ または $H\to\infty$）ほど自己ファイナンスは強まる。

**A4 中立的な金融政策（$\phi=0$）**

基準ケースでは期待実質金利を固定する。$\phi\neq0$ は1.8で一般化する。

**A5 均衡の選択**

有界な均衡（Blanchard–Kahn の意味）に限り、債務は no-Ponzi 条件（式(19)）を満たす。

**正則条件（定常状態）**

$$
R^{\text{ss}}=\beta^{-1}\gt 1,\qquad \Pi^{\text{ss}}=1,\qquad T^{\text{ss}}=(1-\beta)D^{\text{ss}}\tag{1}
$$

> 補足: 社会基金（1.1）により、定常状態は $\omega$ と $D^{\text{ss}}$ に依存せず、RANKの定常状態と一致する。$D^{\text{ss}}\ge0$ を許す。

| 記号・項目 | 意味 |
|---|---|
| $R^{\text{ss}}$ | 定常状態の実質金利（$r\gt g$ に相当） |
| $\Pi^{\text{ss}}$ | 定常状態の総インフレ率 |
| $T^{\text{ss}}$ | 定常状態の実質税収 |
| $D^{\text{ss}}$ | 定常状態の実質政府債務 |
| $\beta$ | 主観的割引因子 |

---

### 1.1 家計

**期待生涯効用**

$$
\mathbb{E}_t\left[\sum_{k=0}^{\infty}\underbrace{(\beta\omega)^k}_{\text{生存込み割引}}\Bigl[\underbrace{u(C_{i,t+k})}_{\text{消費の効用}}-\underbrace{v(L_{i,t+k})}_{\text{労働の不効用}}\Bigr]\right]\tag{2}
$$

> 補足: $u(C)\equiv\frac{C^{1-1/\sigma}-1}{1-1/\sigma}$、$v(L)\equiv\chi_L\frac{L^{1+1/\varphi}}{1+1/\varphi}$。家計は後継世代の効用を利他的には評価しない。

**予算制約**

$$
A_{i,t+1}=\underbrace{\frac{I_t}{\omega}}_{\text{年金の収益率}}\Bigl(A_{i,t}+P_t\bigl(\underbrace{W_tL_{i,t}+Q_{i,t}}_{\text{所得 }Y_{i,t}}-C_{i,t}-T_{i,t}+S_{i,t}\bigr)\Bigr)\tag{3}
$$

> 補足: 取引できる資産は、生存を条件に $I_t/\omega$ を支払う実質的に公正な名目年金のみ。社会基金は新生児に $S^{\text{new}}=D^{\text{ss}}$ を渡し、高齢者から $S^{\text{old}}=-\frac{1-\omega}{\omega}D^{\text{ss}}$ を徴収し、収支は $(1-\omega)S^{\text{new}}+\omega S^{\text{old}}=0$ で均衡する。これで全世代が定常状態で同じ富と消費をもつ。

**労働組合の条件**

$$
(1-\tau_y)W_t=\frac{\chi_L\,L_t^{1/\varphi}}{\int_0^1C_{i,t}^{-1/\sigma}\,di}\tag{4}
$$

> 補足: 組合が全家計に同じ労働時間を要求し、税引後実質賃金を消費と労働の限界代替率の平均に等しくする。これにより全家計が同じ所得 $Y_{i,t}=Y_t$ と同じ税 $T_{i,t}=T_t$ をもつ。

| 記号・項目 | 意味 |
|---|---|
| $i=(i_1,i_2)$ | 家計の指標（$i_1\in\{0,1,\dots\}$ は年齢、$i_2\in[0,1]$ は名前） |
| $\omega$ | 家計の期間生存確率（$1-\omega$ は死亡率） |
| $C_{i,t},\,L_{i,t}$ | 家計 $i$ の消費、労働供給（生存条件付き） |
| $\sigma$ | 異時点間の代替弾力性 |
| $\varphi$ | 労働供給のフリッシュ弾力性 |
| $\chi_L$ | 労働の不効用の係数（原論文では $\chi$。均衡係数 $\chi$ と区別するため改記） |
| $A_{i,t}$ | 期初の名目貯蓄 |
| $I_t$ | 国債の名目金利 |
| $P_t$ | 物価水準 |
| $W_t,\;Q_{i,t}$ | 実質賃金、実質配当 |
| $Y_{i,t}$ | 家計の実質総所得 |
| $T_{i,t}$ | 家計の実質税負担 |
| $S_{i,t}$ | 社会基金との受払い（新生児 $S^{\text{new}}$、高齢者 $S^{\text{old}}$） |
| $\tau_y$ | 労働所得・配当所得にかかる時間不変の比例税率 |

---

### 1.2 政府の予算制約

**名目フロー予算制約**

$$
\frac{1}{I_t}B_{t+1}=B_t-P_tT_t\tag{5}
$$

**実質表示**

$$
D_{t+1}=R_t\,(D_t-T_t)\,\underbrace{\frac{\mathbb{E}_t[\Pi_{t+1}]}{\Pi_{t+1}}}_{\text{インフレ・サプライズ}}\tag{6}
$$

**対数線形化**

$$
d_{t+1}=\underbrace{\beta^{-1}(d_t-\hat T_t)}_{\text{利払い後の債務}}+\underbrace{\frac{D^{\text{ss}}}{Y^{\text{ss}}}\,r_t}_{\text{予想される利払い増}}-\underbrace{\frac{D^{\text{ss}}}{Y^{\text{ss}}}\bigl(\pi_{t+1}-\mathbb{E}_t[\pi_{t+1}]\bigr)}_{\text{サプライズ・インフレ}}\tag{7}
$$

> 補足: $T_t\equiv\int T_{i,t}\,di$。インフレのサプライズが名目債務の実質価値を目減りさせる。貨幣のない経済（または貨幣が国債と同じ利子を稼ぐ経済）を想定するので、シニョレッジは財源にならない。

| 記号・項目 | 意味 |
|---|---|
| $B_t$ | 期初の名目政府債務の総量 |
| $D_t$ | 実質政府債務 $B_t/P_t$ |
| $R_t$ | 期待実質金利 $I_t/\mathbb{E}_t[\Pi_{t+1}]$ |
| $\Pi_{t+1}$ | 実現した総インフレ率 $P_{t+1}/P_t$ |
| $T_t$ | 実質税収の総額 |
| $d_t$ | 債務の定常状態乖離 $(D_t-D^{\text{ss}})/Y^{\text{ss}}$ |
| $\hat T_t$ | 税収の定常状態乖離 $(T_t-T^{\text{ss}})/Y^{\text{ss}}$ |
| $r_t$ | 実質金利の対数偏差 $\log(R_t/R^{\text{ss}})$ |
| $\pi_{t+1}$ | インフレ率の対数 $\log(\Pi_{t+1}/\Pi^{\text{ss}})$ |
| $D^{\text{ss}}/Y^{\text{ss}}$ | 定常状態の政府債務／GDP比 |

---

### 1.3 財政・金融政策のルール

**基準財政ルール（$\tau_d$ ルール）**

$$
T_{i,t}=\underbrace{\tau_yY_{i,t}}_{\text{比例所得税}}+\bar T-\underbrace{\mathcal{E}_t}_{\text{赤字ショック}}+\underbrace{\tau_d\bigl(D_t-D^{\text{ss}}+\mathcal{E}_t\bigr)}_{\text{財政調整}}\tag{8}
$$

対数線形化すると次になる。

$$
\hat T_t=\underbrace{\tau_y\,y_t}_{\text{税収基盤}}+\underbrace{\tau_d\,(d_t+\varepsilon_t)}_{\text{財政調整}}-\underbrace{\varepsilon_t}_{\text{赤字ショック}}\tag{9}
$$

> 補足: $\bar T\equiv T^{\text{ss}}-\tau_yY^{\text{ss}}$ は定常状態の収支を合わせる定数。$\tau_d\to1^-$ で調整は無限に速く、$\tau_d\to0^+$ で無限に遅い。$\tau_d$ の項は Leeper (1991) のルールにあたり、$\tau_yy_t$ が税収基盤チャネルである。$\mathcal{E}_t$ は平均ゼロの i.i.d.。

**代替財政ルール（$H$ ルール）**

$$
\hat T_t=\begin{cases}\tau_y\,y_t-\varepsilon_0 & t=0\\[2pt] \tau_y\,y_t & t\in\{1,\dots,H-1\}\\[2pt] d_t & t\ge H\end{cases}\tag{10}
$$

> 補足: 時点0のショックの後、時点 $H$ まで財政調整を行わず、$H$ 以降に債務を定常状態へ戻す。$t\ge1$ では赤字ショックを止める。債務の水準にかかわらず $t=H$ で債務を戻すことを約束するので「受動的（リカード的）」である。遅延は $\tau_d$ が小さいこと、または $H$ が大きいことで表される。

**金融政策ルール**

$$
\frac{I_t}{\Pi^{\text{ss}}}=R^{\text{ss}}\;\mathbb{E}_t\!\left[\frac{\Pi_{t+1}}{\Pi^{\text{ss}}}\right]\left(\frac{Y_t}{Y^{\text{ss}}}\right)^{\phi}\tag{11}
$$

これは次の式と同値である。

$$
r_t=\underbrace{\phi}_{\text{実質金利の感応度}}\,y_t\tag{12}
$$

> 補足: $\phi=0$ が中立的金融政策（期待実質金利を固定、基準ケース）。$\phi\lt0$ は緩和的、$\phi\gt0$ は引き締め的。

| 記号・項目 | 意味 |
|---|---|
| $\tau_d$ | 財政調整の速度（債務に対する税の反応） |
| $\bar T$ | 定常状態の収支を合わせる定数 |
| $\mathcal{E}_t$ | 赤字ショック（一括給付）の水準 |
| $\varepsilon_t$ | 赤字ショックの比率 $\mathcal{E}_t/Y^{\text{ss}}$ |
| $y_t$ | 産出の対数偏差 $\ln(Y_t/Y^{\text{ss}})$ |
| $H$ | 赤字から財政調整までの遅れ |
| $\phi$ | 実質金利の産出への反応 |

---

### 1.4 総需要

**家計の消費関数（対数線形）**

$$
c_{i,t}=(1-\beta\omega)\Bigl(\underbrace{\tilde a_{i,t}}_{\text{実質金融資産}}+\underbrace{\mathbb{E}_t\Bigl[\sum_{k=0}^{\infty}(\beta\omega)^k(y_{t+k}-\hat T_{t+k})\Bigr]}_{\text{将来の可処分所得}}\Bigr)-\underbrace{\gamma\,\mathbb{E}_t\Bigl[\sum_{k=0}^{\infty}(\beta\omega)^kr_{t+k}\Bigr]}_{\text{実質金利の効果}}\tag{13}
$$

**集計消費関数（$r_t=0$）**

$$
c_t=(1-\beta\omega)\,d_t+(1-\beta\omega)\,\mathbb{E}_t\Bigl[\sum_{k=0}^{\infty}(\beta\omega)^k\,(y_{t+k}-\hat T_{t+k})\Bigr]\tag{14}
$$

**総需要曲線**

$$
y_t=\underbrace{\mathcal{F}_1\,(d_t+\varepsilon_t)}_{\text{赤字の直接効果}}+\underbrace{\mathcal{F}_2\;\mathbb{E}_t\Bigl[(1-\beta\omega)\sum_{k=0}^{\infty}(\beta\omega)^k\,y_{t+k}\Bigr]}_{\text{動学的ケインジアン・クロス}}\tag{15}
$$

> 補足: $\mathcal{F}_1\gt 0$ となるのは $\omega\lt 1$（リカード等価性の崩壊）かつ $\tau_d\lt 1$（即時の財源手当なし）のとき、かつそのときに限る。$\omega=1$ では $\mathcal{F}_1=0$、$\mathcal{F}_2=1$ となり、(15) は $y_t=\mathbb{E}_t\bigl[(1-\beta)\sum_{k\ge0}\beta^ky_{t+k}\bigr]$、すなわち $y_t=\mathbb{E}_t[y_{t+1}]$ に退化する（債務と税は需要に入らない）。$\mathcal{F}_2$ は、全期間の将来支出の予想を1上げたときの現在支出の増分（クロスの傾き）である。

| 記号・項目 | 意味 |
|---|---|
| $c_{i,t}$ | 家計 $i$ の消費の対数偏差 |
| $c_t$ | 集計消費（市場清算 $c_t=y_t$） |
| $\tilde a_{i,t}$ | 家計 $i$ の実質金融資産（社会基金の受払いを含む）。集計すると $d_t$ に等しい |
| $\gamma$ | 実質金利の代替効果と富効果をまとめた係数 $\sigma\beta\omega-(1-\beta\omega)\beta\frac{\tilde A^{\text{ss}}}{P^{\text{ss}}Y^{\text{ss}}}$ |
| $\tilde A^{\text{ss}}$ | 定常状態の金融資産 |
| $\mathcal{F}_1$ | $\frac{(1-\beta\omega)(1-\omega)(1-\tau_d)}{1-\omega(1-\tau_d)}$ |
| $\mathcal{F}_2$ | $1-\frac{(1-\omega)\tau_y}{1-\omega(1-\tau_d)}$ |

---

### 1.5 総供給

**ニューケインジアン・フィリップス曲線（NKPC）**

$$
\pi_t=\underbrace{\kappa\,y_t}_{\text{需給ギャップ}}+\underbrace{\beta\,\mathbb{E}_t[\pi_{t+1}]}_{\text{予想インフレ}}\tag{16}
$$

> 補足: 労働供給の対数線形式 $\frac1\varphi\ell_t=w_t-\frac1\sigma c_t$ に $c_t=\ell_t=y_t$ を入れると実質賃金は $w_t=\xi y_t$ となり、企業の最適価格設定から (16) が得られる。$\kappa$ と $\theta$ は一対一に対応し、財政・金融政策から独立なので、以後 $\kappa$ を外生パラメータとして価格粘着性を表す。$\kappa=0$ は価格完全粘着。

| 記号・項目 | 意味 |
|---|---|
| $\pi_t$ | インフレ率（対数偏差） |
| $\ell_t,\;w_t$ | 労働時間、実質賃金の対数偏差 |
| $\xi$ | 実質限界費用の循環性 $\frac1\varphi+\frac1\sigma\gt 0$ |
| $\theta$ | Calvo の価格据え置き確率（$1-\theta$ は改定確率） |
| $\kappa$ | NKPC の傾き $\frac{(1-\theta)(1-\beta\theta)\xi}{\theta}\ge0$ |

---

### 1.6 債務動学と均衡

**債務の運動法則**

$$
d_{t+1}=\beta^{-1}\Bigl(d_t+\varepsilon_t-\underbrace{\tau_d\,(d_t+\varepsilon_t)}_{\text{財政調整}}-\underbrace{\tau_y\,y_t}_{\text{税収基盤}}\Bigr)-\underbrace{\frac{D^{\text{ss}}}{Y^{\text{ss}}}\bigl(\pi_{t+1}-\mathbb{E}_t[\pi_{t+1}]\bigr)}_{\text{債務浸食}}\tag{17}
$$

**初期条件**

$$
d_0=-\frac{D^{\text{ss}}}{Y^{\text{ss}}}\,\pi_0\tag{18}
$$

**no-Ponzi 条件**

$$
\lim_{k\to\infty}\mathbb{E}_t\bigl[\beta^k\,d_{t+k}\bigr]=0\tag{19}
$$

> 補足: (17) は (7)（$r_t=0$）に (9) を入れたもの。(18) は、$B_0=B^{\text{ss}}$ が前決定で、$d_0$ が時点0の物価の跳ね $\pi_0$ だけで動くことを表す。均衡とは、(15)、(16)、(17)、(18)、(19) を満たす、Blanchard–Kahn の意味で有界な確率過程 $\{y_t,\pi_t,d_t\}_{t\ge0}$ である。

**命題1（均衡の特徴づけ）**

$\omega\lt 1$、$\tau_y\gt 0$、基準ルール (9) とする。有界な均衡が一意に存在し、次が成り立つ。

$$
y_t=\underbrace{\chi}_{\text{ブームの大きさ}}\,(d_t+\varepsilon_t),\qquad \mathbb{E}_t[d_{t+1}]=\underbrace{\rho_d}_{\text{債務の持続性}}\,(d_t+\varepsilon_t)\tag{20}
$$

係数 $\chi\gt 0$、$\rho_d\in(0,1)$ は次の不動点問題の解であり、インフレは $y_t$ に比例する。

$$
\chi=\frac{\mathcal{F}_1}{1-\mathcal{F}_2\dfrac{1-\beta\omega}{1-\beta\omega\rho_d}},\qquad \rho_d=\beta^{-1}\bigl(1-\tau_d-\tau_y\chi\bigr),\qquad \pi_t=\frac{\kappa}{1-\beta\rho_d}\,y_t\tag{21}
$$

> 補足: 需要から債務への帰還（$\tau_y\gt 0$）と、債務から需要への作用（$\omega\lt 1$）の双方向のフィードバックが $\chi$ と $\rho_d$ を決める。$\chi$ と $\rho_d$ は $\kappa$ に依存しない。$\kappa$ は時点0の価格の跳ね（$d_0$ の再スケール）を通じてのみ効く。

| 記号・項目 | 意味 |
|---|---|
| $\chi$ | 産出の $d_t+\varepsilon_t$ に対する比例係数 |
| $\rho_d$ | 債務（とブーム）の期待持続性 |

---

### 1.7 自己ファイナンスの定義

**現在価値制約**

$$
\varepsilon_0=\underbrace{\tau_d\Bigl(\varepsilon_0+\sum_{k=0}^{\infty}\beta^k\,\mathbb{E}_0[d_k]\Bigr)}_{\text{財政調整}}+\underbrace{\tau_y\sum_{k=0}^{\infty}\beta^k\,\mathbb{E}_0[y_k]}_{\text{税収基盤}}+\underbrace{\frac{D^{\text{ss}}}{Y^{\text{ss}}}\bigl(\pi_0-\mathbb{E}_{-1}[\pi_0]\bigr)}_{\text{債務浸食}}\tag{22}
$$

**自己ファイナンス率**

$$
\nu\equiv\frac{\tau_y\Bigl(\sum_{k=0}^{\infty}\beta^k\,\mathbb{E}_0[y_k]\Bigr)+\dfrac{D^{\text{ss}}}{Y^{\text{ss}}}\,\pi_0}{\varepsilon_0}\tag{23}
$$

**二つのチャネルへの分解**

$$
\nu=\nu_y+\nu_p,\qquad \nu_y\equiv\frac{\tau_y\sum_{k=0}^{\infty}\beta^k\,\mathbb{E}_0[y_k]}{\varepsilon_0},\qquad \nu_p\equiv\frac{1}{\varepsilon_0}\frac{D^{\text{ss}}}{Y^{\text{ss}}}\,\pi_0\tag{24}
$$

> 補足: (22) の右辺第1項が従来型の財政調整、第2項と第3項が自己ファイナンス。$1-\nu$ は、赤字1単位あたりに将来必要となる増税の割引現在価値である。$\mathbb{E}_{-1}[\pi_0]=0$ なので、第3項は $\frac{D^{\text{ss}}}{Y^{\text{ss}}}\pi_0$ に等しい。(23) は基準ルール (9) と $H$ ルール (10) の両方に使える。

| 記号・項目 | 意味 |
|---|---|
| $\nu$ | 自己ファイナンス率（初期赤字のうち、税収基盤と債務浸食で賄われる割合） |
| $\nu_y$ | 税収基盤チャネルの寄与 |
| $\nu_p$ | 債務浸食（時点0のインフレ）チャネルの寄与 |
| $\mathbb{E}_{-1}[\cdot]$ | ショック前（時点 $-1$）の期待 |

---

### 1.8 拡張

**一般の金融政策（$\phi\neq0$）**

実質金利が動く場合、(22) の左辺に利払い費用の項が加わる。

$$
\varepsilon_0+\frac{D^{\text{ss}}}{Y^{\text{ss}}}\sum_{k=0}^{\infty}\beta^{k+1}\mathbb{E}_0[r_k]=\tau_d\Bigl(\varepsilon_0+\sum_{k=0}^{\infty}\beta^k\mathbb{E}_0[d_k]\Bigr)+\tau_y\sum_{k=0}^{\infty}\beta^k\mathbb{E}_0[y_k]+\frac{D^{\text{ss}}}{Y^{\text{ss}}}\bigl(\pi_0-\mathbb{E}_{-1}[\pi_0]\bigr)\tag{25}
$$

$$
\nu\equiv\frac{\tau_y\sum_{k=0}^{\infty}\beta^k\mathbb{E}_0[y_k]+\dfrac{D^{\text{ss}}}{Y^{\text{ss}}}\pi_0}{\varepsilon_0+\dfrac{D^{\text{ss}}}{Y^{\text{ss}}}\sum_{k=0}^{\infty}\beta^{k+1}\mathbb{E}_0[r_k]}\tag{26}
$$

> 補足: $r_t=\phi y_t$（式(12)）で、$\phi\in[-1/\sigma,\hat\phi)$、$\hat\phi\equiv\frac{\tau_y}{\beta}\frac{D^{\text{ss}}}{Y^{\text{ss}}}$ に限る。$\phi=-1/\sigma$ では即時に自己ファイナンスされ、$\phi\ge\hat\phi$ では利払い増が税収基盤チャネルを完全に打ち消す。$\phi=0$ で (25), (26) は (22), (23) に戻る。

**一般化した総需要**

$$
c_t=\underbrace{M_d\,d_t}_{\text{資産からの消費}}+M_y\Bigl(\underbrace{(y_t-\hat T_t)}_{\text{現在の可処分所得}}+\underbrace{\delta\,\mathbb{E}_t\Bigl[\sum_{k=1}^{\infty}(\beta\omega)^k(y_{t+k}-\hat T_{t+k})\Bigr]}_{\text{将来の可処分所得}}\Bigr)\tag{27}
$$

> 補足: $M_y,M_d\in(0,1)$、$M_d\le M_y$、$\delta\in[0,1]$。$M_d=M_y=1-\beta\omega$、$\delta=1$ が基準のOLG (14)。

**仮定1（割引）**: $\omega\lt 1$。

**仮定2（前倒しの支出）**:

$$
M_d+\frac{1-\beta}{\tau_y}\,(1-\tau_y)\,M_y\Bigl(1+\delta\sum_{k=1}^{\infty}(\beta\omega)^k\Bigr)\gt\frac{1-\beta}{\tau_y}\tag{28}
$$

すべての $\tau_y\in(0,1]$ で (28) が成り立つ必要十分条件は次である。

$$
M_d\gt1-\beta\quad\text{かつ}\quad M_y\Bigl(1+\delta\,\frac{\beta\omega}{1-\beta\omega}\Bigr)\ge1\tag{29}
$$

> 補足: 仮定1は、遠い将来の増税が現在の需要を動かさないこと（割引）、仮定2は、追加所得が速く支出されて（$\lim_{\ell\to\infty}\mathcal{M}_{t+\ell,t}=0$）ブームが前倒しになることを保証する。ハンド・トゥ・マウス家計の割合 $\mu\in(0,1)$ を加えたハイブリッド・モデルは、$M_y=\mu+(1-\mu)(1-\beta\omega)$、$M_d=1-\beta\omega$、$\delta=\frac{(1-\mu)(1-\beta\omega)}{\mu+(1-\mu)(1-\beta\omega)}$ として (27) に入り、$\omega\lt 1$ なら仮定1と2を満たす。恒常所得（PIH）家計が一定割合いる場合は仮定2を満たさない。

| 記号・項目 | 意味 |
|---|---|
| $\hat\phi$ | 税収基盤チャネルが完全に打ち消される $\phi$ の上限 $\frac{\tau_y}{\beta}\frac{D^{\text{ss}}}{Y^{\text{ss}}}$ |
| $M_d,\;M_y$ | 資産、現在所得からの限界消費性向 |
| $\delta$ | 将来所得に対する追加の定数割引 |
| $\mu$ | ハンド・トゥ・マウス家計の割合 |
| $\mathcal{M}_{t,s}$ | 異時点間限界消費性向（iMPC）行列の $(t,s)$ 要素（$s$ 期の所得変化への $t$ 期の消費反応） |

---

### 1.9 主要帰結

**主要式（自己ファイナンス率とその分解）**

$$
\boxed{
\begin{aligned}
\nu'&=\underbrace{\frac{\tau_y\,\chi}{1-\beta\rho_d}}_{\text{価格完全粘着の }\nu}=\frac{\tau_y\,\chi}{\tau_d+\tau_y\,\chi}\\[4pt]
\nu&=\frac{\Bigl(\tau_y+\kappa\frac{D^{\text{ss}}}{Y^{\text{ss}}}\Bigr)\,\nu'}{\tau_y+\kappa\frac{D^{\text{ss}}}{Y^{\text{ss}}}\,\nu'}\\[4pt]
\nu_y&=\underbrace{\frac{\tau_y}{\tau_y+\kappa\frac{D^{\text{ss}}}{Y^{\text{ss}}}}\,\nu}_{\text{税収基盤}},\qquad
\nu_p=\underbrace{\frac{\kappa\frac{D^{\text{ss}}}{Y^{\text{ss}}}}{\tau_y+\kappa\frac{D^{\text{ss}}}{Y^{\text{ss}}}}\,\nu}_{\text{債務浸食}}
\end{aligned}
}\tag{30}
$$

> 補足: $\nu'$ は価格完全粘着（$\kappa=0$）の経済の自己ファイナンス率。$\nu'$ の第2の等号は基準ルール (9) のとき。$H$ ルール (10) のときの $\nu'$ は式(48)。$\nu'$ の単調性と極限が定理1、$\nu$ の配分が命題2にあたる。

**定理1（遅延と完全自己ファイナンス）**

$\omega\lt 1$、$\tau_y\gt 0$、財政ルールは (9) または (10) とする。

1. $\nu$ は財政調整の遅延に対して増加する（(9) では $\tau_d$ について減少、(10) では $H$ について増加）。
2. $\tau_d\to0^+$ または $H\to\infty$ で $\nu\to1$（下から）。両極限は同じ経路 $\{y_t,\pi_t,d_t\}$ を導き、その極限で債務は定常状態に戻る（(9) で $\lim_{k\to\infty}\mathbb{E}_t[d_{t+k}]=0$、(10) で $\lim_{H\to\infty}\mathbb{E}_0[d_H]=0$）。

**命題2（価格粘着性の役割）**

$\kappa$ は定理1の単調性と極限を変えず、$\nu_y$ と $\nu_p$ の配分だけを決める（式(30)）。$\kappa=0$ ならすべて税収基盤経由（$\nu_y=\nu$）、$\kappa$ が大きいほど債務浸食の比率 $\nu_p/\nu$ が高まる。

**命題3（$\omega$ に関する比較静学、ルール (9)）**

1. 任意の $\tau_d\gt 0$ で、$\omega$ が小さいほど $\nu$ は大きく $\rho_d$ は小さい。
2. $\tau_d\to0^+$ での $\rho_d$ の極限を $\rho_d^{\text{full}}$ と書くと、$\omega\lt 1$ なら $\rho_d^{\text{full}}\lt1$、かつ $\omega\to1$ で $\rho_d^{\text{full}}\to1$。

**比較静学・特殊ケース**

| 変化・条件 | 結果 | 符号・式 |
|---|---|---|
| 財政調整の遅延（$\tau_d\downarrow$ または $H\uparrow$） | 自己ファイナンス率が上がる | 定理1-1、$\partial\nu/\partial\tau_d\lt0$ |
| 遅延の極限（$\tau_d\to0^+$ または $H\to\infty$） | $\nu\to1$、債務は定常状態へ | 定理1-2、式(46),(48) |
| $\omega$ の低下 | $\nu$ 上昇、$\rho_d$ 低下 | 命題3-1、式(49) |
| $\omega\to1$（$\tau_d\gt 0$ 固定） | $\nu\to0$（極限の順序に依存） | 命題3-2 |
| 価格完全粘着（$\kappa=0$） | $\nu_y=\nu,\;\nu_p=0$ | 式(30) |
| $\kappa$ の上昇 | $\nu_p/\nu=\frac{\kappa D^{\text{ss}}/Y^{\text{ss}}}{\tau_y+\kappa D^{\text{ss}}/Y^{\text{ss}}}$ が上昇 | 式(30) |
| 金融政策の引き締め $\phi\lt\bar\phi$ | $\tau_d\to0^+$ で $\nu\to1$ | 定理2-1 |
| 金融政策の引き締め $\phi\gt\bar\phi$ | 任意の有界均衡で $\nu\lt\bar\nu(\phi)\lt1$ | 定理2-2 |
| 仮定1・2を満たす一般需要 (27) | $\tau_d\to0^+$ または $H\to\infty$ で $\nu\to1$ | 定理3 |

> 補足: 定理2は、ある $\bar\phi\in\bigl(0,\hat\phi\bigr)$ が存在して表の2行が成り立つことを述べる。定理3は、基準ルール (9) の $\tau_d\to0^+$ で、$y_t=\chi_dd_t+\chi_\varepsilon\varepsilon_t$、$\mathbb{E}_t[d_{t+1}]=\rho_dd_t+\rho_\varepsilon\varepsilon_t$（$\rho_d\in(0,1)$）の形の有界な均衡が一意に存在することを含む。

| 記号・項目 | 意味 |
|---|---|
| $\nu'$ | 価格完全粘着（$\kappa=0$）の経済での自己ファイナンス率 |
| $\rho_d^{\text{full}}$ | $\tau_d\to0^+$ での $\rho_d$ の極限 |
| $\bar\phi$ | $\rho_d^{\text{full}}(\bar\phi)=1$ となる $\phi$ の閾値（$0\lt\bar\phi\lt\hat\phi$） |
| $\bar\nu(\phi)$ | $\phi\gt\bar\phi$ のときの $\nu$ の上限（$0\lt\bar\nu\lt1$） |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 将来の増税なしで赤字が返済される | 遅延された財政調整のもとで、赤字がケインジアン・ブームを起こし、税収基盤の拡大と時点0のインフレが債務を減らす。$\tau_d\to0$ または $H\to\infty$ の極限で $\nu\to1$。 |
| 一括給付（スティミュラス・チェック）が需要を刺激する | $\omega\lt 1$ で赤字が将来世代から現在世代への実質的な移転となり、$\mathcal{F}_1\gt 0$ となるため。$\omega=1$ では需要は動かない。 |
| 税率を上げずに税収が増える | 産出が1増えると税収が $\tau_y$ 増える（税収基盤チャネル）。累積乗数は、価格完全粘着で遅延が大きい極限で $1/\tau_y$ に近づく。 |
| インフレによる債務の目減り | 名目債務のもとで、時点0のインフレのサプライズが実質債務を $\frac{D^{\text{ss}}}{Y^{\text{ss}}}\pi_0$ だけ減らす。価格が柔軟なほど（$\kappa$ が大きいほど）この比率が高まる。 |
| 金融政策が強く引き締めるときの自己ファイナンスの限界 | 実質金利が上がるとブームが遅れ、利払い費用も増えるため、$\phi\gt\bar\phi$ では $\nu\lt\bar\nu(\phi)\lt1$。 |
| 恒常所得家計が一定割合いるときの自己ファイナンスの消失 | 将来の増税が現在の需要に及び、ブームの一部が無限の将来へ先送りされるため（仮定2の違反）。 |

---

## 3. 整理している点 {#sec3}

- **自己ファイナンスの二つのチャネルの定式化**: 赤字の返済を、(22) のように、財政調整、税収基盤の拡大、サプライズ・インフレによる債務浸食に分け、自己ファイナンス率 $\nu=\nu_y+\nu_p$ を定義した。価格粘着性 $\kappa$ は両者の配分だけを決める（式(30)）。
- **完全自己ファイナンスの条件**: $r\gt g$（$R^{\text{ss}}=\beta^{-1}\gt1$）の環境で、$\omega\lt 1$ と財政調整の遅延があれば、$\tau_d\to0$ または $H\to\infty$ の極限で将来の増税なしに債務が定常状態へ戻る。$\omega$ が1に近いほど、債務が戻るのに時間がかかる。
- **FTPL（物価の財政理論）との違い**: リカード等価性の崩壊を、有限の期間または流動性制約という需要側の摩擦に求め、均衡選択に頼らない。均衡は通常の唯一の有界均衡であり、「能動的」な金融当局と「受動的」な財政当局のもとでも成り立つ。$r\lt g$ も、国債の convenience yield によるシニョレッジも必要としない。

---

## 4. 対象外の現象 {#sec4}

- **$r\lt g$ や convenience yield による財政余地**: 定常状態の実質金利は $\beta^{-1}\gt1$ に固定されており、これらに頼る議論は対象外。
- **強く引き締める金融政策のもとでの完全自己ファイナンス**: $\phi\gt\bar\phi$ では完全自己ファイナンスは成立せず、必要な財政調整は0から離れる。
- **恒常所得家計が一定割合いる経済**: 仮定2を満たさず、本文のルールでは $\nu=0$ となる（スペンダー・セイバー・モデルなど）。極限の順序（$\omega\to1$ と $\tau_d\to0$）で結果が変わる。調整負担の配分を変えると連続性が回復する場合があるが、本記事では扱わない。
- **対数線形化の範囲を超える現象**: 結果は定常状態の近傍のみで意味をもつ。債務は1期債のみ（満期構成は原論文でも脚注で触れられるにとどまる）。シニョレッジは財源にならない。ゼロ金利制約は $\phi\lt0$ の解釈として言及されるにとどまる。
- **規範的な議論**: 最適な刺激策や財源調達の設計は扱わず、実証的（positive）な分析のみ。
- **数量評価（原論文第6章）**: MPCや財政調整速度の較正にもとづく自己ファイナンス率の数値は、本記事の数理モデルには含めない。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
[赤字ショック ε_0]
        │   F1：ω<1 かつ τ_d<1                      … 式(15)
        ▼
[総需要 y_t = χ(d_t + ε_t)] ◄── ケインジアン・クロス F2 … 式(15),(20),(21)
        │
        ├──► [税収基盤 τ_y Σ β^k y_k] ─────► ν_y        … 式(24)
        │
        └──► [NKPC：π_0 = κ Σ β^k y_k] ──► [債務浸食 (D/Y) π_0] ─► ν_p … 式(16),(24)

        ν = ν_y + ν_p ──► 現在価値制約 … 式(22)
                          │
                          └─► τ_d → 0 または H → ∞ で ν → 1 … 式(30),(46),(48)
```

---

### A.1 使う道具

**T1 無限和の再帰分解**

$0\lt x\lt1$、$z_t$ が有界のとき、次が成り立つ。

$$
\mathbb{E}_t\Bigl[\sum_{k=0}^{\infty}x^k\,z_{t+k}\Bigr]=z_t+x\,\mathbb{E}_t\Bigl[\sum_{k=0}^{\infty}x^k\,z_{t+1+k}\Bigr]\tag{31}
$$

**T2 NKPC の前方展開**

$0\lt\beta\lt1$ と $\pi_t$ の有界性を使い、(16) を繰り返し代入すると次を得る。

$$
\pi_t=\kappa\sum_{k=0}^{\infty}\beta^k\,\mathbb{E}_t[y_{t+k}]\tag{32}
$$

**T3 債務の前方展開と横断性**

(17) の期待値をとって $\beta^{t+1}$ を掛け、$t=0$ から足し上げ、no-Ponzi 条件 (19) で端点項を落とす。

**T4 2変数の線形再帰系の有界解**

$\mathbb{E}_t[\mathbf{x}_{t+1}]=\mathbf{M}\,\mathbf{x}_t$（$\mathbf{x}_t=(d_t+\varepsilon_t,\,y_t)'$）の有界解は、$\mathbf{x}_t$ が絶対値1未満の固有値に対応する固有ベクトルの上にあるときに限る。固有値は特性方程式 $\lambda^2-\mathrm{tr}(\mathbf{M})\lambda+\det(\mathbf{M})=0$ の根である。

**T5 後方帰納と単調列**

$H$ ルール (10) では $t\ge H$ から時間を遡って解く。有界な単調列は収束する。

---

### A.2 総需要 (15) の導出

**Step 1　集計消費関数を作る**

(13) で $r_t=0$（$\phi=0$）とすると実質金利の項が消える。全家計の所得と税が同じなので差は金融資産 $\tilde a_{i,t}$ のみで、集計した民間金融資産は政府債務 $d_t$ に等しい（原論文の前提）。市場清算 $c_t=y_t$ とあわせて式(14)を得る。$0\lt\beta\omega\lt1$ が必要。

**Step 2　債務の割引和を再帰で閉じる**

$\Sigma^x_t\equiv\mathbb{E}_t\sum_{k=0}^{\infty}(\beta\omega)^kx_{t+k}$ と書く。(17) の期待値は、$k=1$ で $\mathbb{E}_t[d_{t+1}]=\beta^{-1}\bigl[(1-\tau_d)(d_t+\varepsilon_t)-\tau_yy_t\bigr]$、$k\ge2$ で $\mathbb{E}_t[d_{t+k}]=\beta^{-1}\bigl[(1-\tau_d)\mathbb{E}_t[d_{t+k-1}]-\tau_y\mathbb{E}_t[y_{t+k-1}]\bigr]$（サプライズ項の期待値は0、$t+k$ 以降の $\varepsilon$ の期待値も0）。$(\beta\omega)^k\beta^{-1}=\omega(\beta\omega)^{k-1}$ を使って道具T1の形に直すと、

$$
\Sigma^d_t=d_t+\omega\bigl[(1-\tau_d)\Sigma^d_t-\tau_y\Sigma^y_t\bigr]+\omega(1-\tau_d)\,\varepsilon_t
$$

$\Delta\equiv1-\omega(1-\tau_d)$（$\omega\lt 1$ なので $\Delta\ge1-\omega\gt0$、0で割れる心配はない）で割って解く。

$$
\Sigma^d_t=\frac{d_t+\omega(1-\tau_d)\,\varepsilon_t-\omega\tau_y\,\Sigma^y_t}{\Delta}\tag{33}
$$

**Step 3　税の割引和を作る**

(9) より、$t+k$（$k\ge1$）の $\varepsilon$ の期待値は0なので、

$$
\Sigma^T_t=\tau_d\,\Sigma^d_t+\tau_y\,\Sigma^y_t-(1-\tau_d)\,\varepsilon_t\tag{34}
$$

(33) を代入し、$\tau_y$ の係数を $1-\frac{\omega\tau_d}{\Delta}=\frac{1-\omega}{\Delta}$ で整理する。

$$
\Sigma^T_t=\frac{\tau_d}{\Delta}\,d_t+\frac{\tau_y(1-\omega)}{\Delta}\,\Sigma^y_t-\frac{(1-\tau_d)(1-\omega)}{\Delta}\,\varepsilon_t\tag{35}
$$

**Step 4　式(14)に代入して整理する**

(14) は $y_t=(1-\beta\omega)\bigl(d_t+\Sigma^y_t-\Sigma^T_t\bigr)$。$d_t$ の係数は $1-\frac{\tau_d}{\Delta}=\frac{(1-\omega)(1-\tau_d)}{\Delta}$、$\varepsilon_t$ の係数も同じ、$\Sigma^y_t$ の係数は $1-\frac{\tau_y(1-\omega)}{\Delta}=\mathcal{F}_2$。したがって $(1-\beta\omega)\frac{(1-\omega)(1-\tau_d)}{\Delta}=\mathcal{F}_1$ より式(15)を得る。

**確認**

$\omega=1$ では $\Delta=\tau_d$、$\mathcal{F}_1=0$、$\mathcal{F}_2=1$ となり、(15) は $y_t=\mathbb{E}_t[(1-\beta)\sum_{k\ge0}\beta^ky_{t+k}]$ に退化する。債務と赤字が需要に入らない PIH-RANK と一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(13),(14) | 家計の消費関数と集計 |
| 式(9),(17) | 財政ルールと債務の運動法則 |
| T1 | 割引和の再帰分解（式(31)） |

---

### A.3 命題1（式(20),(21)）の導出

$\Lambda \equiv\frac{(1-\beta\omega)(1-\omega)}{\beta\omega}$、$a\equiv\frac{1-\tau_d}{\beta}$、$b\equiv \Lambda \tau_y$ と書く（補った略記）。$\omega\lt 1$、$\tau_y\gt 0$ より $\Lambda \gt 0$、$b\gt 0$。$\tau_d\lt 1$ より $a\gt 0$。

**Step 1　債務の期待経路を書く**

(17) の期待値をとる。サプライズ項の期待値は0、$k\ge1$ で $\mathbb{E}_t[\varepsilon_{t+k}]=0$ である。

$$
\mathbb{E}_t[d_{t+1}]=\beta^{-1}\bigl[(1-\tau_d)(d_t+\varepsilon_t)-\tau_y\,y_t\bigr]\tag{36}
$$

**Step 2　総需要を再帰形にする**

$Z_t\equiv y_t-\mathcal{F}_1(d_t+\varepsilon_t)=\mathcal{F}_2(1-\beta\omega)\,\Sigma^y_t$ とおく。T1 より $Z_t=\mathcal{F}_2(1-\beta\omega)\,y_t+\beta\omega\,\mathbb{E}_t[Z_{t+1}]$。$\mathbb{E}_t[Z_{t+1}]=\mathbb{E}_t[y_{t+1}]-\mathcal{F}_1\mathbb{E}_t[d_{t+1}]$ に (36) を入れると、

$$
y_t\bigl[1-(1-\beta\omega)\mathcal{F}_2-\omega\tau_y\mathcal{F}_1\bigr]=\mathcal{F}_1\bigl[1-\omega(1-\tau_d)\bigr](d_t+\varepsilon_t)+\beta\omega\,\mathbb{E}_t[y_{t+1}]
$$

$\mathcal{F}_1,\mathcal{F}_2$ の定義から、左辺の括弧は $\beta\omega+(1-\beta\omega)(1-\omega)\tau_y$、右辺の係数は $(1-\beta\omega)(1-\omega)(1-\tau_d)$ になる。$\beta\omega\gt 0$ で割る。

$$
(1+\Lambda \tau_y)\,y_t=\Lambda (1-\tau_d)\,(d_t+\varepsilon_t)+\mathbb{E}_t[y_{t+1}]\tag{37}
$$

**Step 3　固有値を求める**

(36)、(37) は $\mathbb{E}_t[(d_{t+1},y_{t+1})']=\mathbf{M}\,(d_t+\varepsilon_t,\,y_t)'$ の形で、$\mathrm{tr}(\mathbf{M})=a+b+1$、$\det(\mathbf{M})=a$。特性方程式は

$$
p(\lambda)\equiv\lambda^2-(a+b+1)\,\lambda+a=0\tag{38}
$$

$p(0)=a\gt0$、$p(1)=-b\lt0$、根の和 $a+b+1\gt0$ なので、根は $0\lt\lambda_2\lt1\lt\lambda_1$ を満たす（補った導出）。T4 より、有界な解は $\lambda_2$ に対応する固有ベクトル上にある。$\rho_d\equiv\lambda_2$ とおく。

**Step 4　固有ベクトルから $\chi$ を求める**

固有ベクトルを $(1,\chi)'$ とする。(36) の行から $\rho_d=\beta^{-1}(1-\tau_d-\tau_y\chi)$（式(21)の第2式）。(37) の行から $\chi\,(1+\Lambda \tau_y-\rho_d)=\Lambda (1-\tau_d)$。$\rho_d\lt1$ より $1+\Lambda \tau_y-\rho_d\gt0$ なので割ってよい。

$$
\chi=\frac{\Lambda \,(1-\tau_d)}{1+\Lambda \tau_y-\rho_d}\gt0,\qquad \rho_d=\frac{a+b+1-\sqrt{(a+b-1)^2+4b}}{2}\in(0,1)\tag{39}
$$

$\rho_d$ の第2の等号は (38) の小さい根（$(a+b+1)^2-4a=(a+b-1)^2+4b$ を使用）。

**Step 5　式(21)の第1式を導く**

(20) より $k\ge0$ で $\mathbb{E}_t[y_{t+k}]=\chi\rho_d^k(d_t+\varepsilon_t)$（$k\ge1$ では $\varepsilon_{t+k}$ の期待値が0）。したがって

$$
\mathbb{E}_t\Bigl[\sum_{k=0}^{\infty}(\beta\omega)^ky_{t+k}\Bigr]=\frac{\chi}{1-\beta\omega\rho_d}\,(d_t+\varepsilon_t)\tag{40}
$$

これを (15) に代入すると $\chi=\mathcal{F}_1+\mathcal{F}_2\frac{(1-\beta\omega)\chi}{1-\beta\omega\rho_d}$。$\chi$ について解くと式(21)の第1式を得る。

**Step 6　インフレと初期債務を求める**

(32) と (20) より $\pi_t=\kappa\sum_{k\ge0}\beta^k\mathbb{E}_t[y_{t+k}]=\frac{\kappa\chi}{1-\beta\rho_d}(d_t+\varepsilon_t)=\frac{\kappa}{1-\beta\rho_d}y_t$（式(21)の第3式）。$\hat\kappa\equiv\kappa\frac{D^{\text{ss}}}{Y^{\text{ss}}}$ とおき（補った略記）、$\pi_0$ を (18) に入れて $d_0$ について解く。

$$
d_0=-\frac{\hat\kappa\,\chi/(1-\beta\rho_d)}{1+\hat\kappa\,\chi/(1-\beta\rho_d)}\;\varepsilon_0\tag{41}
$$

これで $\{y_t,\pi_t,d_t\}$ が一意に決まる。

**確認**

$\omega=1$ では $\mathcal{F}_1=0$、$\mathcal{F}_2=1$ となる。(21) の第1式の分子が0で、$\rho_d\neq1$ なら $\chi=0$（需要は債務に反応しない）。ただし命題1は $\omega\lt1$ を前提とする。$\omega=1$ では (15) は $y_t=\mathbb{E}_t[y_{t+1}]$ に退化し、(14) の議論どおり $y_t$ を債務や赤字に結びつける多重均衡が残る。

| 入力・使う道具 | 内容 |
|---|---|
| 式(15),(17),(18) | 総需要、債務動学、初期条件 |
| T1 | 割引和の再帰分解 |
| T2 | NKPC の前方展開（式(32)） |
| T4 | 2変数線形系の有界解 |

---

### A.4 現在価値制約 (22) の導出

**Step 1　債務の期待値を各時点で書く**

(17) の $\mathbb{E}_0$ をとり、サプライズ項の期待値0と $\mathbb{E}_0[\varepsilon_t]=0$（$t\ge1$）を使い、$\beta^{t+1}$ を掛ける。

$$
\beta^{t+1}\mathbb{E}_0[d_{t+1}]=(1-\tau_d)\,\beta^t\,\mathbb{E}_0[d_t+\varepsilon_t]-\tau_y\,\beta^t\,\mathbb{E}_0[y_t]\tag{42}
$$

**Step 2　$t=0,\dots,T$ で足し上げる**

$\sum_{k=0}^{T}\beta^k\mathbb{E}_0[d_k]$ を $S_T$ と書くと、左辺の和は $S_{T+1}-d_0$。

$$
S_{T+1}-d_0=(1-\tau_d)\bigl(\varepsilon_0+S_T\bigr)-\tau_y\sum_{k=0}^{T}\beta^k\mathbb{E}_0[y_k]\tag{43}
$$

**Step 3　$T\to\infty$ とし、初期条件を入れる**

no-Ponzi 条件 (19) より $\beta^{T+1}\mathbb{E}_0[d_{T+1}]\to0$、すなわち $S_{T+1}$ と $S_T$ は同じ極限 $S$ に収束する。整理すると $\varepsilon_0=\tau_d(\varepsilon_0+S)+\tau_y\sum\beta^k\mathbb{E}_0[y_k]-d_0$。ここに (18) の $-d_0=\frac{D^{\text{ss}}}{Y^{\text{ss}}}\pi_0$ を入れ、ショックが予期されないので $\mathbb{E}_{-1}[\pi_0]=0$（補った説明）として $\pi_0=\pi_0-\mathbb{E}_{-1}[\pi_0]$ と書き直すと、式(22)を得る。

**確認**

$\omega=1$（リカード成立）では $y_t=0$、$\pi_t=0$、$d_0=0$ となり、(22) は $\varepsilon_0=\tau_d(\varepsilon_0+S)$、すなわち $\nu=0$（赤字は将来の増税だけで返済される）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(17),(18) | 債務の運動法則と初期条件 |
| T3 | 債務の前方展開と横断性 |

---

### A.5 定理1と命題2（式(30),(44)〜(48)）の導出

**Step 1　$\nu_p$ と $\nu_y$ の比を求める**

(32) より $\pi_0=\kappa\sum\beta^k\mathbb{E}_0[y_k]$ なので、(24) から $\nu_p\varepsilon_0=\hat\kappa\sum\beta^k\mathbb{E}_0[y_k]$、$\nu_y\varepsilon_0=\tau_y\sum\beta^k\mathbb{E}_0[y_k]$。したがって $\nu_p=\frac{\hat\kappa}{\tau_y}\nu_y$。$\nu=\nu_y+\nu_p$ とあわせて、式(30)の最後の行を得る。$\tau_y+\hat\kappa\gt0$ なので割れる。

**Step 2　価格完全粘着の $\nu'$**

$\kappa=0$ なら $\hat\kappa=0$、$\pi_0$ の跳ねがないので $d_0=0$。(20) より $\mathbb{E}_0[y_k]=\chi\rho_d^k\varepsilon_0$（$k\ge1$）、$y_0=\chi\varepsilon_0$ なので $\sum\beta^k\mathbb{E}_0[y_k]=\frac{\chi}{1-\beta\rho_d}\varepsilon_0$。

$$
\nu'=\frac{\tau_y\,\chi}{1-\beta\rho_d}\tag{44}
$$

(21) の第2式から $1-\beta\rho_d=\tau_d+\tau_y\chi$ なので、式(30)の第1行の第2の等号を得る（基準ルール）。

**Step 3　一般の $\kappa$ に拡張する**

$d_0=-\nu_p\varepsilon_0$（(18) と (24) より）。総和は $\sum\beta^k\mathbb{E}_0[y_k]=\frac{\chi\,(d_0+\varepsilon_0)}{1-\beta\rho_d}=(1-\nu_p)\frac{\chi\,\varepsilon_0}{1-\beta\rho_d}$ なので、

$$
\nu_y=(1-\nu_p)\,\nu'\tag{45}
$$

Step 1 の $\nu_p=\frac{\hat\kappa}{\tau_y}\nu_y$ と連立すると、$\nu_y=\frac{\tau_y\nu'}{\tau_y+\hat\kappa\nu'}$、$\nu_p=\frac{\hat\kappa\nu'}{\tau_y+\hat\kappa\nu'}$（$\tau_y+\hat\kappa\nu'\gt0$）。足して式(30)の第2行 $\nu=\frac{(\tau_y+\hat\kappa)\nu'}{\tau_y+\hat\kappa\nu'}$ を得る。これは $\nu'$ について増加（導関数 $\frac{(\tau_y+\hat\kappa)\tau_y}{(\tau_y+\hat\kappa\nu')^2}\gt0$）で、$\nu'=1$ のとき $\nu=1$。これで命題2が従う。

**Step 4　定理1-1（ルール (9)）の単調性**

(39) の $\rho_d=f(a,b)$ について $\frac{\partial f}{\partial a}=\frac12-\frac12\frac{a+b-1}{\sqrt{(a+b-1)^2+4b}}\gt0$（分母の平方根が $\lvert a+b-1\rvert$ より大きいため）。$a=\frac{1-\tau_d}{\beta}$ は $\tau_d$ について減少なので、$\rho_d$ は $\tau_d$ について減少する。(39) の $\chi=\frac{\Lambda (1-\tau_d)}{1+\Lambda \tau_y-\rho_d}$ は、分子が減少し分母が増加するので $\tau_d$ について減少する。(44) と (21) より $\frac{\chi}{1-\beta\rho_d}=\frac{1}{\tau_d/\chi+\tau_y}$ で、$\tau_d/\chi$ が $\tau_d$ について増加するので、$\nu'$ は $\tau_d$ について減少し、Step 3 の単調性から $\nu$ も減少する。また $\nu'=\frac{\tau_y\chi}{\tau_d+\tau_y\chi}\lt1$（$\tau_d\gt0$）なので、$\nu\lt1$（下から）。

**Step 5　定理1-2（ルール (9)）の極限**

$\tau_d\to0^+$ で、$\rho_d$ と $\chi$ は $\tau_d\in[0,1)$ で連続。$a\to\frac1\beta$ として、

$$
\rho_d^{\text{full}}=\frac{\frac1\beta+b+1-\sqrt{\bigl(\frac1\beta+b-1\bigr)^2+4b}}{2}\lt1,\qquad \chi^{\text{full}}=\frac{1-\beta\rho_d^{\text{full}}}{\tau_y}\gt0\tag{46}
$$

$\rho_d^{\text{full}}\lt1$ は A.3 Step 3 の根の位置による（$\tau_d=0$ でも $p(1)=-b\lt0$）。$\chi^{\text{full}}\gt0$ から、$\frac{\chi}{1-\beta\rho_d}=\frac{\chi}{\tau_d+\tau_y\chi}\to\frac{1}{\tau_y}$ となり、(44) より $\nu'\to1$、Step 3 より $\nu\to1$。$\rho_d^{\text{full}}\lt1$ から $\lim_{k\to\infty}\mathbb{E}_t[d_{t+k}]=0$。

**Step 6　$H$ ルール (10) の再帰**

$t\ge H$ では $d_t-\hat T_t=0$ で $y_t=\mathbb{E}_t[y_{t+1}]$。標準NKモデルから引き継ぐサンスポット均衡を除くため、$y_t=0$（$t\ge H$）を選ぶ（原論文の脚注15）。$t\le H-1$ では、まず (14) に T1 を適用して1期ずらし、$\mathbb{E}_t[d_{t+1}]=\beta^{-1}(d_t-\hat T_t)$ を使う。

$$
c_t=(1-\beta\omega)\,y_t+(1-\beta\omega)(1-\omega)(d_t-\hat T_t)+\beta\omega\,\mathbb{E}_t[c_{t+1}]
$$

$c_t=y_t$ を入れて $\beta\omega$ で割ると $y_t=\Lambda (d_t-\hat T_t)+\mathbb{E}_t[y_{t+1}]$。(10) より $t\le H-1$ で $d_t-\hat T_t=d_t+\varepsilon_t-\tau_yy_t$ だから、$(1+\Lambda \tau_y)\,y_t=\Lambda (d_t+\varepsilon_t)+\mathbb{E}_t[y_{t+1}]$。$y_t=\chi_{H-t}(d_t+\varepsilon_t)$ とおくと $\mathbb{E}_t[d_{t+1}]=\beta^{-1}(1-\tau_y\chi_{H-t})(d_t+\varepsilon_t)$ なので、

$$
\chi_{H-t}\,(1+\Lambda \tau_y)=\Lambda +\beta^{-1}\chi_{H-t-1}\,(1-\tau_y\chi_{H-t})
$$

$\chi_{H-t}$ について解く。$\chi_0=0$（$y_H=0$）から後方帰納で（T5）、

$$
\chi_{k}=g(\chi_{k-1}),\qquad g(\chi)\equiv\frac{\Lambda +\chi/\beta}{1+\tau_y\bigl(\Lambda +\chi/\beta\bigr)}\tag{47}
$$

$g(\chi)=\frac{u}{1+\tau_yu}\lt\frac{1}{\tau_y}$（$u=\Lambda +\chi/\beta\gt0$）、$g'(\chi)=\frac{1}{\beta}\frac{1}{(1+\tau_yu)^2}\gt0$。$\chi_1=g(0)\gt0=\chi_0$ と $g$ の単調性より、$\chi_k$ は $(0,1/\tau_y)$ で増加する有界列で、$g$ の不動点 $\chi^{\text{full}}$ に収束する。これは (46) の $\chi^{\text{full}}$ と一致する（原論文）。

**Step 7　$H$ ルールの $\nu'$**

価格完全粘着では $d_0=0$。$t\le H-1$ で $q_t\equiv\prod_{j=0}^{t-1}(1-\tau_y\chi_{H-j})$ とおくと、$\mathbb{E}_0[d_t]=\beta^{-t}q_t\,\varepsilon_0$、$\beta^t\mathbb{E}_0[y_t]=\chi_{H-t}\,q_t\,\varepsilon_0$（$q_0=1$）。$q_t-q_{t+1}=q_t\,\tau_y\chi_{H-t}$ なので、和が望遠鏡和になる。

$$
\nu'=\sum_{t=0}^{H-1}\tau_y\chi_{H-t}\,q_t=1-\prod_{j=0}^{H-1}\bigl(1-\tau_y\chi_{H-j}\bigr)\tag{48}
$$

$H\to H+1$ では、積が $\prod_{k=1}^{H}(1-\tau_y\chi_k)$ から $\prod_{k=1}^{H+1}(1-\tau_y\chi_k)$ になり、追加の因子 $1-\tau_y\chi_{H+1}\in(0,1)$ のぶん積が小さくなる。よって $\nu'$ は $H$ について増加（定理1-1）。各因子は $1-\tau_y\chi_1\lt1$ 以下なので、積は $(1-\tau_y\chi_1)^H\to0$、$\nu'\to1$。一般の $\kappa$ では Step 3 の写像で $\nu\to1$。債務は $\mathbb{E}_0[d_H]=\beta^{-H}\prod_{k=1}^{H}(1-\tau_y\chi_k)\,\varepsilon_0$ で、各因子 $\frac{1-\tau_y\chi_k}{\beta}$ は $\rho_d^{\text{full}}\lt1$ に収束するので $\to0$。

**確認**

$\kappa=0$ なら $\hat\kappa=0$ で $\nu=\nu'$、$\nu_p=0$。$\tau_d\to0$ の極限は、価格完全粘着なら累積乗数が $\frac{\nu'}{\tau_y}\to\frac{1}{\tau_y}$。2期間の静的な例（$y=\frac{\text{MPC}}{1-(1-\tau_y)\text{MPC}}\varepsilon$、$\nu=\frac{\tau_y\,\text{MPC}}{1-(1-\tau_y)\text{MPC}}$）で $\text{MPC}\to1$ のとき $\nu\to1$ となるのと同じ構造である。

| 入力・使う道具 | 内容 |
|---|---|
| 式(20),(21),(24),(32) | 命題1、自己ファイナンス率、NKPC の前方展開 |
| 式(39),(46) | $\rho_d,\chi$ の式と極限 |
| T2, T5 | NKPC の前方展開、後方帰納と単調列 |

---

### A.6 命題3（式(49)）の導出

**Step 1　$\rho_d$ を別の形に書く**

(39) の $\rho_d$ の有理化により、

$$
\rho_d=\frac{2a}{a+b+1+\sqrt{(a+b+1)^2-4a}}\tag{49}
$$

**Step 2　$\omega$ への依存**

$b=\Lambda \tau_y$ で、$\Lambda =\frac{(1-\beta\omega)(1-\omega)}{\beta\omega}$ は $\omega$ について減少する（各因子が正で、分母の $\omega$ が大きいほど小さい）。(49) の分母は $b$ について増加するので、$\rho_d$ は $b$ について減少し、したがって $\omega$ について増加する。$\chi=\frac{1-\tau_d-\beta\rho_d}{\tau_y}$（(21) の第2式）は $\omega$ について減少し、$\nu'=\frac{\tau_y\chi}{\tau_d+\tau_y\chi}$ も減少、A.5 Step 3 より $\nu$ も減少する。これが命題3-1。

**Step 3　$\omega\to1$ の極限**

$\omega\to1$ で $\Lambda \to0$、$b\to0$ なので、(46) は $\rho_d^{\text{full}}\to\frac{\frac1\beta+1-\bigl\lvert\frac1\beta-1\bigr\rvert}{2}=1$（$\frac1\beta\gt1$）。一方 $\omega\lt1$ では A.5 Step 5 より $\rho_d^{\text{full}}\lt1$。これが命題3-2。

**確認**

$\omega\to1$ で $\tau_d\gt0$ を固定すると、$\mathcal{F}_1\to0$ で $\chi\to0$、$\nu'\to0$、$\nu\to0$。逆に $\omega\lt1$ を固定して $\tau_d\to0$ なら $\nu\to1$。2つの極限の順序で結果が変わる（原論文の「極限の順序」）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(21),(39) | $\chi,\rho_d$ の式 |
| 式(46) | $\rho_d^{\text{full}}$ の式 |

---

### A.7 拡張（定理2・3）の扱い

定理2（一般の金融政策）と定理3（一般化した総需要）の証明は、本記事では再現しない。原論文のオンライン付録 D.5, D.6 を参照のこと。証明の骨子は、基準モデルと同様に、$\tau_d\to0$ での極限均衡の持続性 $\rho_d^{\text{full}}$ が1より小さいかどうかに帰着する。定理2では $\rho_d^{\text{full}}(\bar\phi)=1$ となる $\phi$ が閾値 $\bar\phi$、定理3では仮定2 (28) がそれを保証する条件である。

---

**© 2023 by George-Marios Angeletos, Chen Lian, and Christian K. Wolf**. All rights reserved. (NBER Working Paper No. 31185, April 2023, Revised February 2024. Published in Econometrica, Vol. 92, No. 5, 2024)
{% endraw %}
