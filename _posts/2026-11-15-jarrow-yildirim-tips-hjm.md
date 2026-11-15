---
layout: post
title: "Jarrow & Yildirim (2003) \"Pricing Treasury Inflation Protected Securities and Related Derivatives using an HJM Model\"、Journal of Financial and Quantitative Analysis: 数理モデル"
date: 2026-11-15 00:00:00 +0900
categories: [ファイナンス, 期間構造・インフレ連動債]
math: true
---

{% raw %}
# Jarrow & Yildirim (2003) "Pricing Treasury Inflation Protected Securities and Related Derivatives using an HJM Model"、Journal of Financial and Quantitative Analysis: 数理モデル
### 外国通貨のアナロジーで、TIPS・名目国債・インフレ指数オプションを一つの3ファクター無裁定モデルで評価する

---

## 目次

- [0. 論文の紹介](#sec0)
- [1. 数理モデル](#sec1)
- [2. 説明できる現象](#sec2)
- [3. 整理している点](#sec3)
- [4. モデルの対象外](#sec4)
- [5. 主要文献・関連論文](#sec5)
- [付録：導出手順](#appendix)

---

## 0. 論文の紹介 {#sec0}

**書誌**：Jarrow, R. & Yildirim, Y., "Pricing Treasury Inflation Protected Securities and Related Derivatives using an HJM Model," *Journal of Financial and Quantitative Analysis*, Vol. 38, No. 2 (June 2003), pp. 337–358.

**論文リンク**：
- 無料で全文を読める版：Web検索では、出版社・著者・リポジトリが公開する無料の全文は確認できなかった（リンクは確認できなかった）。
- 公式版（Cambridge University Press）：<https://www.cambridge.org/core/journals/journal-of-financial-and-quantitative-analysis/article/pricing-treasury-inflation-protected-securities-and-related-derivatives-using-an-hjm-model/3F0CB6D9E24EBE754299F98AFF76ACD6>（閲覧に契約や所属機関経由のアクセスが必要な場合がある）
- 書誌データベース（RePEc/IDEAS、書誌情報のみ）：<https://ideas.repec.org/a/cup/jfinqa/v38y2003i02p337-358_00.html>
- 著者の論文集の章としても再録されている（World Scientific、有料）：<https://www.worldscientific.com/doi/abs/10.1142/9789812819222_0016>

**論文の内容**：米国のインフレ連動国債（TIPS）と通常の米国債、およびその派生証券を、HJM（Heath–Jarrow–Morton）モデルで整合的に価格付け・ヘッジするという問いに取り組んだ論文である。外国通貨のアナロジーで、名目価格を国内通貨、実質価格を外国通貨、インフレ指数（CPI-U）を為替レートに対応させ、3ファクターの無裁定期間構造モデルを構成する。クーポン債価格から実質・名目ゼロクーポン債価格を剥がして拡張Vasicek型のボラティリティと相関を推定し、実質金利とインフレ率が負の相関を持つこと、TIPS同士・TIPSと国債によるヘッジの誤差が小さくモデルが妥当であることを示す。最後に、インフレ指数に対するヨーロピアン・コール・オプションの閉形式価格を導く。

**本記事の位置づけ**：この記事は、この論文の背景にある数理モデルについての記事です。論文の仮定・式・記号を原文のまま使い、価格の定義、無裁定条件、価格過程、ストリッピングとパラメータ推定の枠組み、ヘッジ比率、オプション価格までを対象とします。実証結果（推定値、ヘッジ誤差、オプション値）は、モデルの主要帰結の確認に必要な範囲の数値にとどめます。

**式番号の対応**：本記事の式番号は通し番号に付け直してある。原論文との対応は次のとおり。

| 本記事 | 原論文 |
|---|---|
| (1)–(4) | (1)–(4)（(3) は (17) と同じ式） |
| (5) | 本文中の相関の記述（式番号なし） |
| (6)–(8) | (5)–(7) |
| (9), (10) | (8), (9) |
| (11) | 脚注5 |
| (12)–(14) | (10.a)–(10.c) |
| (15)–(20) | (11)–(16) |
| (21), (22) | (18), (19) |
| (23)–(26) | (20)–(23) |
| (27)–(32) | (24)–(29) |
| (33)–(35) | (30)–(32) |
| (36), (37) | (33), (34) |
| (38)–(40) | (35)–(37) |
| (41) | (37) に付随する η の定義 |
| (42) | 本記事で新設した主要帰結のまとめ（原論文にはない） |

> 注1：記事の元にしたPDFは、2002年2月19日改訂のワーキングペーパー版（2000年8月31日初版）である。掲載版（JFQA 2003）と細部が異なる可能性がある。
> 注2：PDFのテキストでは、式(11)・(20)・(40)・(41)などの符号や添え字が崩れて判読しにくい箇所があった。そうした箇所は、前後の式（特に(15)–(19)の整合性と本文の記述）および付録の導出で確認した形で記し、該当箇所に「（本記事による補足）」と注記した。
> 注3：原論文は、相関を本文では $$\rho_{nr}$$、推定の節では $$\rho_{rn}$$ と書く。同じものである。

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間・情報構造**

連続取引経済で、取引区間は $$[0,\tau]$$。確率空間 $$(\Omega,\mathcal F,P)$$ 上に、0から出発する3本のブラウン運動 $$(W_n(t),W_r(t),W_I(t))$$ があり、フィルトレーション $$\{\mathcal F_t\}$$ はこの3本で生成される。3本の間には相関 $$\rho_{nr},\rho_{nI},\rho_{rI}$$ がある（式(5)）。したがって3ファクターモデルである。

**A1 外国通貨のアナロジー**

実質価格を外国価格、名目価格を国内価格、CPI-U 指数を為替レート（1 CPI-U 単位あたりのドル）に対応させる。Amin & Jarrow (1991) の外国通貨オプションの枠組みをそのまま使う。外すと、実質と名目の期間構造を一つの無裁定モデルにまとめる根拠がなくなる。

**A2 無摩擦・競争市場**

取引費用なし、取引制限なし、クーポン所得とキャピタルゲインの課税差なし。これにより、クーポン債の価格がゼロクーポン債価格の和になる（式(2)(3)）。外すと、この無裁定の分解が成り立たない。論文は脚注で、州税の違いが社債利回りに影響するという最近の証拠に触れている。

**A3 名目フォワードレートのボラティリティ**

ドリフト $$\alpha_n$$ はランダム、ボラティリティ $$\sigma_n$$ は時間の決定論的関数（式(6)）。名目期間構造はガウス型になる。外すと、名目フォワードレートはガウス型でなくなる。

**A4 実質フォワードレートのボラティリティ**

実質側も同様に、$$\alpha_r$$ はランダム、$$\sigma_r$$ は決定論的（式(7)）。実質期間構造もガウス型になる。

**A5 インフレ指数の幾何ブラウン運動**

ドリフト $$\mu_I$$ はランダム、ボラティリティ $$\sigma_I$$ は決定論的（式(8)）。指数の対数が正規分布に従う。A3・A4と合わせ、ガウスHJM経済になる。

**A6 完備性と無裁定**

式(9)の3つの比率が同時にマルチンゲールとなる同値マルチンゲール測度 $$Q$$ が一意に存在する（市場は完備）。

**A7 指数のラグとデフレ保護の扱い**

指数は2か月ラグのCPI-Uで、論文は以降「2か月ラグ」の語を省く。2か月のラグは評価式の数学に影響しない（経路依存性を持ち込まない）。影響するのはTIPSの収益の経済的解釈だけで、TIPSは正確な実質収益ではなく近似的な実質収益を与える。満期時にインフレ調整後元本が額面を下回ると額面が支払われる埋め込みプットは、過去51年間CPI-Uが毎月上昇しているため価値がほとんどないとして、評価では無視する。

**正則条件**

$$\alpha_n(v,T)$$ は $$\mathcal F_t$$ 適合で可測、$$\sigma_n$$ とともに次を満たす（$$\alpha_r,\sigma_r$$ も同条件）。

$$
\int_0^T\lvert\alpha_n(v,T)\rvert\,dv<\infty,\qquad \int_0^T\sigma_n(v,T)^2\,dv<\infty\qquad P\text{-a.s.}
$$

インフレ指数については、$$\mu_I$$ は $$\mathcal F_t$$ 適合で $$E\bigl[\int_0^\tau\lvert\mu_I(t)\rvert^2dt\bigr]<\infty$$、$$\sigma_I$$ は決定論的で $$\int_0^\tau\sigma_I(v)^2dv<\infty$$（$$P$$-a.s.）。（脚注3・4。$$\mu_I$$ の条件は判読に基づく。本記事による補足）

> 脚注6：命題1・2の証明は、期間構造とインフレ指数のボラティリティが決定論的であるという仮定に依存しない。この仮定は、閉形式のオプション価格とヘッジ比率に使われる。

### 1.1 価格と記号の定義

**ゼロクーポン債・スポットレート・マネー・マーケット勘定**

$$
\begin{aligned}
&\underbrace{P_k(t,T)=\exp\Bigl(-\int_t^Tf_k(t,u)\,du\Bigr)}_{\text{ゼロ債価格}},\qquad
\underbrace{r_k(t)=f_k(t,t)}_{\text{スポットレート}},\\
&\underbrace{B_k(t)=\exp\Bigl(\int_0^tr_k(v)\,dv\Bigr)}_{\text{マネー・マーケット勘定}},\qquad k\in\{r,n\}
\end{aligned}\tag{1}
$$

**名目クーポン債（通常の国債）**

$$
B_n(0)=\underbrace{\sum_{t=1}^{T}C\,P_n(0,t)}_{\text{クーポン部分}}+\underbrace{F\,P_n(0,T)}_{\text{額面部分}}\tag{2}
$$

**TIPS（インフレ連動クーポン債）**

$$
B_{TIPS}(0)=\frac{\underbrace{\sum_{t=1}^{T}C\,I(0)P_r(0,t)}_{\text{実質クーポン}}+\underbrace{F\,I(0)P_r(0,T)}_{\text{実質額面}}}{\underbrace{I(t_0)}_{\text{発行時の指数}}}\tag{3}
$$

**発行日調整なしの実質ゼロ債のドル価格**

$$
P_{TIPS}(t,T)=\underbrace{I(t)}_{\text{ドル/指数単位}}\underbrace{P_r(t,T)}_{\text{指数単位の価格}}\tag{4}
$$

> 式(2)は、無摩擦・競争市場（A2）のもとで成り立つ無裁定の制約である。式(3)のTIPSは、発行日以降のインフレ分だけ補償されるので、比 $$I(0)/I(t_0)$$ が現れる（$$t_0\le0$$ は発行日）。

| 記号・項目 | 意味 |
|---|---|
| $$k$$ | $$r$$ は実質、$$n$$ は名目 |
| $$P_n(t,T)$$ | 時点 $$t$$ における、満期 $$T$$ の名目ゼロクーポン債のドル価格 |
| $$P_r(t,T)$$ | 時点 $$t$$ における、満期 $$T$$ の実質ゼロクーポン債の CPI-U 単位での価格 |
| $$I(t)$$ | 時点 $$t$$ の CPI-U 指数（1 CPI-U 単位あたりのドル。2か月ラグ） |
| $$f_k(t,T)$$ | 時点 $$t$$ における満期 $$T$$ のフォワードレート |
| $$r_k(t)$$ | 時点 $$t$$ のスポットレート |
| $$B_k(t)$$ | 時点 $$t$$ のマネー・マーケット勘定の値 |
| $$B_n(0)$$ | 名目クーポン債の時点0のドル価格 |
| $$B_{TIPS}(0)$$ | TIPSの時点0のドル価格 |
| $$C,F,T$$ | 1期あたりのクーポン、額面、満期（TIPSでは $$C,F$$ は CPI-U 単位） |
| $$t_0$$ | TIPSの発行時点（$$t_0\le0$$） |
| $$P_{TIPS}(t,T)$$ | 発行日調整なしの実質ゼロ債のドル価格 |

### 1.2 確率過程の仮定

**3つのブラウン運動の相関**

$$
dW_n(t)\,dW_r(t)=\underbrace{\rho_{nr}}_{\text{名目・実質}}dt,\quad dW_n(t)\,dW_I(t)=\underbrace{\rho_{nI}}_{\text{名目・指数}}dt,\quad dW_r(t)\,dW_I(t)=\underbrace{\rho_{rI}}_{\text{実質・指数}}dt\tag{5}
$$

**名目フォワードレート**

$$
df_n(t,T)=\underbrace{\alpha_n(t,T)}_{\text{ランダムなドリフト}}dt+\underbrace{\sigma_n(t,T)}_{\text{決定論的ボラ}}dW_n(t)\tag{6}
$$

**実質フォワードレート**

$$
df_r(t,T)=\underbrace{\alpha_r(t,T)}_{\text{ランダムなドリフト}}dt+\underbrace{\sigma_r(t,T)}_{\text{決定論的ボラ}}dW_r(t)\tag{7}
$$

**インフレ指数**

$$
\frac{dI(t)}{I(t)}=\underbrace{\mu_I(t)}_{\text{ランダムなドリフト}}dt+\underbrace{\sigma_I(t)}_{\text{決定論的ボラ}}dW_I(t)\tag{8}
$$

> 決定論的ボラティリティにより、名目・実質のフォワードレートは正規分布に従い、$$I(t)$$ は幾何ブラウン運動になる。$$\alpha_n,\alpha_r,\mu_I$$ は次の無裁定条件で決まる。

| 記号・項目 | 意味 |
|---|---|
| $$W_n,W_r,W_I$$ | 名目金利、実質金利、インフレ指数を動かすブラウン運動（$$P$$ の下） |
| $$\rho_{nr},\rho_{nI},\rho_{rI}$$ | 3本のブラウン運動の間の相関 |
| $$\alpha_k(t,T)$$ | フォワードレートのドリフト（ランダム） |
| $$\sigma_k(t,T)$$ | フォワードレートのボラティリティ（決定論的） |
| $$\mu_I(t),\sigma_I(t)$$ | インフレ指数のドリフト（ランダム）、ボラティリティ（決定論的） |

### 1.3 無裁定条件（命題1）

**マルチンゲール条件と市場価格**

$$
\frac{P_n(t,T)}{B_n(t)},\qquad \frac{I(t)P_r(t,T)}{B_n(t)},\qquad \frac{I(t)B_r(t)}{B_n(t)}\qquad\text{は}\ Q\text{-マルチンゲール}\tag{9}
$$

$$
\tilde W_k(t)=W_k(t)-\int_0^t\lambda_k(s)\,ds,\qquad k\in\{n,r,I\}\tag{10}
$$

ここで $$\tilde W_k$$ は $$Q$$-ブラウン運動、$$\lambda_k$$ は $$\mathcal F_t$$-予測可能な市場価格（リスクプレミアム）。式(9)(10)のGirsanovの定理による $$Q$$ の密度は次で与えられる（脚注5）。

$$
\left.\frac{dQ}{dP}\right|_{T}=\exp\Bigl(\int_0^T\sum_{k\in\{n,r,I\}}\lambda_k(s)\,dW_k(s)-\frac12\Bigl\langle\int_0^{\cdot}\sum_{k}\lambda_k\,dW_k,\ \int_0^{\cdot}\sum_{k}\lambda_k\,dW_k\Bigr\rangle_T\Bigr)\tag{11}
$$

**命題1：無裁定な期間構造**

式(9)が成り立つ必要十分条件は、次の3式である。

$$
\alpha_n(t,T)=\sigma_n(t,T)\Bigl[\underbrace{\int_t^T\sigma_n(t,s)\,ds}_{\text{HJMの標準ドリフト}}-\underbrace{\lambda_n(t)}_{\text{名目の価格}}\Bigr]\tag{12}
$$

$$
\alpha_r(t,T)=\sigma_r(t,T)\Bigl[\int_t^T\sigma_r(t,s)\,ds-\underbrace{\rho_{rI}\sigma_I(t)}_{\text{為替との相関項}}-\underbrace{\lambda_r(t)}_{\text{実質の価格}}\Bigr]\tag{13}
$$

$$
\mu_I(t)=\underbrace{r_n(t)-r_r(t)}_{\text{金利差}}-\underbrace{\sigma_I(t)\lambda_I(t)}_{\text{インフレ・リスクプレミアム}}\tag{14}
$$

> 式(12)は元のHJMモデルの無裁定ドリフト条件、式(13)は実質フォワードレート版で、インフレのボラティリティと相関が現れる。式(14)はフィッシャー方程式で、名目と実質の2つのスポットレートの差が、期待インフレ率とインフレ・リスクプレミアムの調整で結ばれることを表す。証明は Amin & Jarrow (1991) と同様で、$$P_n/B_n$$ と $$IB_r/B_n$$ がマルチンゲールであることを使う（原論文では省略。付録A.2で補う）。

| 記号・項目 | 意味 |
|---|---|
| $$Q$$ | 同値マルチンゲール測度（国内通貨＝ドル建てで基準化） |
| $$\tilde W_k$$ | $$Q$$ の下のブラウン運動 |
| $$\lambda_k(t)$$ | 要因 $$k$$ の市場価格（リスクプレミアム） |
| $$\sigma_{n}\!\int\sigma_n$$ | 名目フォワードレートの標準的なHJMドリフト項 |

### 1.4 マルチンゲール測度の下の価格過程（命題2）

**フォワードレート**

$$
df_n(t,T)=\underbrace{\sigma_n(t,T)\int_t^T\sigma_n(t,s)\,ds}_{\text{ドリフトはボラだけで決まる}}dt+\sigma_n(t,T)\,d\tilde W_n(t)\tag{15}
$$

$$
df_r(t,T)=\sigma_r(t,T)\Bigl[\int_t^T\sigma_r(t,s)\,ds-\underbrace{\rho_{rI}\sigma_I(t)}_{\text{指数との相関}}\Bigr]dt+\sigma_r(t,T)\,d\tilde W_r(t)\tag{16}
$$

**インフレ指数**

$$
\frac{dI(t)}{I(t)}=\underbrace{\bigl[r_n(t)-r_r(t)\bigr]}_{\text{金利差}}dt+\sigma_I(t)\,d\tilde W_I(t)\tag{17}
$$

**ゼロクーポン債（名目、TIPS、実質）**

$$
\frac{dP_n(t,T)}{P_n(t,T)}=r_n(t)\,dt-\underbrace{\int_t^T\sigma_n(t,s)\,ds}_{\text{名目債のボラ}}\,d\tilde W_n(t)\tag{18}
$$

$$
\frac{dP_{TIPS}(t,T)}{P_{TIPS}(t,T)}=\underbrace{r_n(t)}_{\text{ドリフトは名目金利}}dt+\underbrace{\sigma_I(t)}_{\text{指数リスク}}d\tilde W_I(t)-\underbrace{\int_t^T\sigma_r(t,s)\,ds}_{\text{実質債のボラ}}\,d\tilde W_r(t)\tag{19}
$$

$$
\frac{dP_r(t,T)}{P_r(t,T)}=\Bigl[r_r(t)+\underbrace{\rho_{rI}\sigma_I(t)\int_t^T\sigma_r(t,s)\,ds}_{\text{相関による補正}}\Bigr]dt-\int_t^T\sigma_r(t,s)\,ds\,d\tilde W_r(t)\tag{20}
$$

> 式(20)の補正項の符号は、PDFのテキストで判読しにくかったため、式(16)(17)(19)との整合（付録A.3）と、本文の「実質債の期待収益は $$r_r(t)+\rho_{rI}\sigma_I(t)\int_t^T\sigma_r(t,s)ds$$」という記述に従って記した。（本記事による補足）
> 名目・実質のフォワードレートは正規分布に、インフレ指数は幾何ブラウン運動に従う。

| 記号・項目 | 意味 |
|---|---|
| $$\int_t^T\sigma_k(t,s)\,ds$$ | ゼロ債 $$k$$ の価格ボラティリティ（本記事では $$b_k(t,T)$$、$$\sigma_{P_k}(t,T)$$ とも書く。1.7・1.9） |
| $$P_{TIPS}(t,T)$$ | $$I(t)P_r(t,T)$$（式(4)）。ドル建ての取引資産なので、$$Q$$ の下のドリフトは $$r_n$$ |

### 1.5 ゼロクーポン債価格のストリッピング

**TIPSの実質ゼロ債（実質フォワードレートの推定）**

債券ごとのクーポンは $$C_j$$、額面は $$F_j$$、発行時点は $$t_{0,j}$$、債券数は $$m$$。実質フォワードレート曲線は、4区間の階段関数（0〜3年、3〜5年、5〜10年、10〜30年で一定）とする。日ごとに、全債券の市場価格とモデル価格の二乗誤差の和を最小化する。

$$
\min_{\{f_r(0,i)\ge0\}}\sum_{j=1}^{m}\Bigl(\underbrace{B_{TIPS,j}(0)}_{\text{市場価格}}-\Bigl\{\underbrace{\sum_{t=1}^{T}C_j\frac{I(0)}{I(t_{0,j})}\exp\Bigl(-\sum_{i=0}^{t-1}f_r(0,i)\Bigr)+F_j\frac{I(0)}{I(t_{0,j})}\exp\Bigl(-\sum_{i=0}^{T-1}f_r(0,i)\Bigr)}_{\text{モデル価格（式(3)）}}\Bigr\}\Bigr)^2\tag{21}
$$

**区間内で一定の先渡金利からのゼロ債価格**

$$
\frac{P_r(t,T+\theta)}{P_r(t,T)}=\exp\Bigl(-\int_T^{T+\theta}f_r(t,s)\,ds\Bigr)=\exp\bigl(-\theta f_r(t,T)\bigr)\tag{22}
$$

> $$\theta$$ は、先渡金利が一定とした区間の長さ（3年、2年、5年、20年）。名目ゼロ債は、式(2)を使い同様の階段関数で推定する（本文の記述。式は省略されている）。区間は4つ、TIPSは推定に5本使うので、最小化問題は解を持つ。推定には非線形最小二乗法（二次計画法）を使う。
> 名目債のデータ処理：満期ごとの直近発行（オン・ザ・ラン）銘柄を使い、利回りの外れ値を次の手順で除く。全銘柄の平均利回りと標準偏差 $$\sigma_{yield}$$ を計算し、$$\lvert\text{yield}-\text{mean}(\text{yield})\rvert/\sigma_{yield}\le3$$ を満たさない銘柄を除き、全銘柄が満たすまで繰り返す。
> 検証：推定に使わなかったTIPS（TII1, TII5, TII6）の理論価格との誤差は、TII1は小さい（−0.0080%）が、満期が最も長いTII5（−0.0374%）、TII6（−0.0985%）では大きい。4区間の曲線は、データのない長期側を十分に捉えない。

| 記号・項目 | 意味 |
|---|---|
| $$f_r(0,i)$$ | 区間内で一定とした実質フォワードレート（4個） |
| $$B_{TIPS,j}(0)$$ | TIPS $$j$$ の市場価格（経過利子込み） |
| $$C_j,F_j,t_{0,j}$$ | TIPS $$j$$ のクーポン、額面、発行時点 |
| $$m$$ | データ中のTIPSの数 |
| $$\theta$$ | 先渡金利を一定と置く区間の長さ |

### 1.6 ボラティリティ関数（拡張Vasicek型）と推定

**指数型ボラティリティ**

$$
\sigma_k(t,T)=\underbrace{\sigma_k}_{\text{水準}}\,e^{-\underbrace{a_k}_{\text{減衰率}}(T-t)},\qquad k\in\{n,r\}\tag{23}
$$

> 論文は実質側（$$k=r$$）で式を書き、名目側は同様の手順（拡張Vasicekモデル）と述べる。$$k=n$$ の式は本記事による補足。このとき $$\int_t^T\sigma_k(t,s)\,ds=\frac{\sigma_k}{a_k}\bigl(1-e^{-a_k(T-t)}\bigr)$$ となる（付録A.4）。

**債券の収益率の分布**

$$
\frac{\Delta P_r(t+\Delta,T)}{P_r(t,T)}\sim N\Bigl(\underbrace{\Bigl[r_r(t)+\rho_{rI}\sigma_I(t)\int_t^T\sigma_r(t,s)\,ds\Bigr]\Delta}_{\text{平均（小さい）}},\ \underbrace{\Bigl[\int_t^T\sigma_r(t,s)\,ds\Bigr]^2\Delta}_{\text{分散}}\Bigr)\tag{24}
$$

> 日次データ（$$\Delta=1/360$$）では、平均は標準偏差に比べて小さく無視できる。これにより、インフレ指数のボラティリティや相関を先に推定せずに、実質スポットレートのボラティリティを推定できる。

**実質ゼロ債収益率の分散（回帰式）**

$$
\operatorname{var}\Bigl(\frac{\Delta P_r(t+\Delta,T)}{P_r(t,T)}\Bigr)=\sigma_r^2\Bigl(\frac{e^{-a_r(T-t)}-1}{a_r}\Bigr)^2\Delta\tag{25}
$$

> 左辺は標本分散で推定し、満期の異なるゼロ債を横断して、非線形回帰で $$(\sigma_r,a_r)$$ を推定する。名目側も同様に $$(\sigma_n,a_n)$$ を推定する。

**指数のボラティリティと相関の推定量**

$$
\begin{aligned}
\hat\sigma_I&=\Bigl(\frac1\Delta\operatorname{var}\Bigl(\frac{\Delta I(t)}{I(t)}\Bigr)\Bigr)^{1/2},\qquad
\hat\rho_{rI}=\operatorname{cor}\Bigl(\Delta r_r(t),\frac{\Delta I(t)}{I(t)}\Bigr),\\
\hat\rho_{nI}&=\operatorname{cor}\Bigl(\Delta r_n(t),\frac{\Delta I(t)}{I(t)}\Bigr),\qquad
\hat\rho_{rn}=\operatorname{cor}\bigl(\Delta r_r(t),\Delta r_n(t)\bigr)
\end{aligned}\tag{26}
$$

> ここでは月次データ（$$\Delta=1/12$$、標本28個）を使う。日次の指数値は線形補間で作られ決定論的で、日次のインフレ率のボラティリティを誤って推定してしまうためである。

**推定値（原論文 Table 3。括弧内は標準誤差、ある場合のみ）**

| 記号 | 推定値 | 標準誤差 |
|---|---|---|
| $$\hat\sigma_n$$ | 0.00566 | 0.00178 |
| $$\hat a_n$$ | 0.03398 | 0.00029 |
| $$\hat\sigma_r$$ | 0.00299 | 0.00072 |
| $$\hat a_r$$ | 0.04339 | 0.00004 |
| $$\hat\sigma_I$$ | 0.00874 | 0.02259 |
| $$\hat\rho_{rI}$$ | −0.32127 | なし |
| $$\hat\rho_{nI}$$ | 0.06084 | なし |
| $$\hat\rho_{rn}$$ | 0.01482 | なし |

> 名目フォワードレートのボラティリティは、実質の2倍以上。実質金利とインフレ率は負の相関、名目金利とインフレ率はわずかに正の相関、名目と実質のスポットレートはほぼ無相関。

| 記号・項目 | 意味 |
|---|---|
| $$\sigma_k,a_k$$ | 指数型ボラティリティの水準と減衰率（$$k\in\{n,r\}$$） |
| $$\Delta$$ | 推定の時間間隔（日次 $$1/360$$、月次 $$1/12$$） |
| $$\hat\sigma_I$$ | インフレ指数のボラティリティの推定量 |
| $$\hat\rho_{rI},\hat\rho_{nI},\hat\rho_{rn}$$ | 相関の推定量 |

### 1.7 ヘッジ比率（命題3）

状態変数は3つ $$(I(t),r_n(t),r_r(t))$$ で、ボラティリティが決定論的なので、名目・実質ゼロ債の価格はこの3変数についてマルコフ的になる。ここで $$b_k(t,T)$$ はゼロ債 $$k$$ の価格ボラティリティ、すなわち $$b_k(t,T)=\int_t^T\sigma_k(t,s)\,ds$$ である（原論文は $$b_r$$ を使うが定義式を明示しない。本記事による補足）。

**ゼロ債のデルタ**

$$
\frac{\partial P_r(t,T)}{\partial r_r(t)}=-\underbrace{\frac{b_r(t,T)}{\sigma_r}}_{\text{デュレーション}}P_r(t,T)\tag{27}
$$

$$
\frac{\partial\bigl[I(t)P_r(t,T)\bigr]}{\partial r_n(t)}=\underbrace{0}_{\text{名目金利に依存せず}}\tag{28}
$$

$$
\frac{\partial\bigl[I(t)P_r(t,T)\bigr]}{\partial I(t)}=P_r(t,T)\tag{29}
$$

$$
\frac{\partial\bigl[I(t)P_r(t,T)\bigr]}{\partial r_r(t)}=I(t)\frac{\partial P_r(t,T)}{\partial r_r(t)}=-I(t)P_r(t,T)\,b_r(t,T)/\sigma_r\tag{30}
$$

$$
\frac{\partial P_n(t,T)}{\partial I(t)}=0\tag{31}
$$

$$
\frac{\partial P_n(t,T)}{\partial r_r(t)}=0\tag{32}
$$

**クーポン債のデルタ（時点0）**

$$
\frac{\partial B_{TIPS,j}(0)}{\partial I(0)}=\frac{\sum_{t=1}^{T}C_j\,P_r(0,t)+F_j\,P_r(0,T)}{I(t_{0,j})}\tag{33}
$$

$$
\frac{\partial B_{TIPS,j}(0)}{\partial r_r(0)}=-\frac1{\sigma_r}\frac{I(0)}{I(t_{0,j})}\Bigl[\sum_{t=1}^{T}C_j\,b_r(0,t)P_r(0,t)+F_j\,b_r(0,T)P_r(0,T)\Bigr]\tag{34}
$$

$$
\frac{\partial B_{n,j}(0)}{\partial r_n(0)}=-\frac1{\sigma_n}\Bigl[\sum_{t=1}^{T}C_j\,b_n(0,t)P_n(0,t)+F_j\,b_n(0,T)P_n(0,T)\Bigr]\tag{35}
$$

> 式(28)より、TIPSのゼロ債価格は名目スポットレートに直接依存せず、TIPSの期間構造は2ファクターである。式(31)(32)より、名目ゼロ債は実質スポットレートにも指数にも依存せず、名目の期間構造は1ファクターである。ただし2つの期間構造のファクターは互いに相関している。TIPSは、ゼロ債ではなくクーポン債として取引されるので、式(33)–(35)で分解する。

| 記号・項目 | 意味 |
|---|---|
| $$b_k(t,T)$$ | $$\int_t^T\sigma_k(t,s)\,ds$$。ゼロ債 $$k$$ の価格ボラティリティ |
| $$B_{TIPS,j}(0)$$ | TIPS $$j$$ のドル価格（式(3)） |
| $$B_{n,j}(0)$$ | 名目クーポン債 $$j$$ のドル価格（式(2)） |
| $$C_j,F_j,t_{0,j}$$ | 債券 $$j$$ のクーポン、額面、TIPSの発行時点 |

### 1.8 ヘッジによるモデルの検証

**TIPSの合成**

TIPS1 を1単位、名目国債 $$n_1$$ 単位、TIPS2 を $$n_2$$ 単位、TIPS3 を $$n_3$$ 単位で複製する。各期間 $$[t,t+\Delta]$$ で次の連立方程式を解く。

$$
\begin{aligned}
&\underbrace{v(t)=B_{TIPS1}(t)+n_1B_n(t)+n_2B_{TIPS2}(t)+n_3B_{TIPS3}(t)=0}_{\text{価値が0}}\\
&\underbrace{\frac{\partial B_{TIPS1}}{\partial I}+n_1\frac{\partial B_n}{\partial I}+n_2\frac{\partial B_{TIPS2}}{\partial I}+n_3\frac{\partial B_{TIPS3}}{\partial I}=0}_{\text{指数デルタが0}}\\
&\underbrace{\frac{\partial B_{TIPS1}}{\partial r_r}+n_1\frac{\partial B_n}{\partial r_r}+n_2\frac{\partial B_{TIPS2}}{\partial r_r}+n_3\frac{\partial B_{TIPS3}}{\partial r_r}=0}_{\text{実質金利デルタが0}}
\end{aligned}\tag{36}
$$

**名目国債の合成（比較用）**

$$
\begin{aligned}
&v(t)=B_{n1}(t)+n_1B_{n2}(t)+n_2B_{n3}(t)=0\\
&\frac{\partial B_{n1}}{\partial r_n}+n_1\frac{\partial B_{n2}}{\partial r_n}+n_2\frac{\partial B_{n3}}{\partial r_n}=0
\end{aligned}\tag{37}
$$

> $$\Delta=1$$ 日として、各日に式(36)または(37)を解き、翌日のポートフォリオ価値 $$v(t+\Delta)$$ を記録する。複製が完全なら $$v(t+\Delta)=0$$、そうでなければその値がヘッジ誤差である。額面100ドルで割って百分率の誤差とする。名目国債の比較は、満期の近い他の国債だけで構成する。市場は3ファクターでTIPS5本と多数の国債が取引されるので完備であり、モデルが正しければ一部の証券で残りを複製できる。式(31)(32)により、$$B_n$$ の指数・実質金利デルタは0になる。

**ヘッジ誤差（原論文 Table 4。額面あたりのドル誤差。括弧内は標準偏差）**

| ヘッジ対象と手段 | TIPSのヘッジ誤差 | 満期の近い名目国債のヘッジ誤差 |
|---|---|---|
| TII2 を 国債＋TII3＋TII4 で | −0.0000059974（0.0006542544） | −0.0000550762（0.0104833940） |
| TII3 を 国債＋TII7＋TII8 で | −0.0000988699（0.0148444645） | 0.0000183935（0.0010804914） |
| TII4 を 国債＋TII7＋TII8 で | −0.0001002904（0.0138545551） | 0.0000589931（0.0033523966） |
| TII7 を 国債＋TII3＋TII4 で | 0.0001355476（0.0054760469） | −0.0000231790（0.0011665032） |
| TII8 を 国債＋TII3＋TII4 で | 0.0001395635（0.0054824311） | 0.0327398871（0.0139387438） |

> どの場合もTIPSのヘッジ誤差は小さく、満期の近い名目国債のヘッジ誤差と同程度である。論文はこれをモデルの妥当性の確認とする（本文は同じ値を「ベーシスポイント」と記すが、表の注記は「ドル誤差／額面」であり、ここでは表の値を載せた）。名目国債側の誤差には、名目フォワードレートを4区間の階段関数で近似した影響がある。

| 記号・項目 | 意味 |
|---|---|
| $$v(t)$$ | 合成ポートフォリオの価値 |
| $$n_1,n_2,n_3$$ | ヘッジに使う各証券の数量 |
| $$B_{TIPS1},B_{TIPS2},B_{TIPS3}$$ | TIPSのドル価格 |
| $$B_{n},B_{n1},B_{n2},B_{n3}$$ | 名目国債のドル価格 |
| $$\Delta$$ | ヘッジの更新間隔（1日） |

### 1.9 インフレ指数のオプション価格

**ペイオフと評価式**

行使価格 $$K$$（指数単位）、満期 $$T$$ のヨーロピアン・コール。指数はドルではなく「ドル/CPI-U単位」なので、オプション1単位は CPI-U 1単位を対象とする。

$$
C_T=\max\bigl[I(T)-K,\,0\bigr]\tag{38}
$$

$$
C_t=\tilde E_t\Bigl[\max\bigl[I(T)-K,\,0\bigr]\underbrace{e^{-\int_t^Tr_n(s)\,ds}}_{\text{名目割引}}\Bigr]\tag{39}
$$

**閉形式の価格**

$$
C_t=\underbrace{I(t)P_r(t,T)}_{\text{TIPSゼロ債のドル価格}}N\Bigl(\frac{\log\dfrac{I(t)P_r(t,T)}{KP_n(t,T)}+\frac12\eta^2}{\eta}\Bigr)-\underbrace{KP_n(t,T)}_{\text{行使価格の現在価値}}N\Bigl(\frac{\log\dfrac{I(t)P_r(t,T)}{KP_n(t,T)}-\frac12\eta^2}{\eta}\Bigr)\tag{40}
$$

$$
\begin{aligned}
&\sigma_{P_k}(t,T)=\int_t^T\sigma_k(t,u)\,du,\qquad k\in\{n,r\},\\
&\eta^2=\int_t^T\Bigl[\underbrace{\sigma_{P_n}(u,T)^2+\sigma_{P_r}(u,T)^2+\sigma_I(u)^2}_{\text{各要因の分散}}-2\rho_{nr}\sigma_{P_n}\sigma_{P_r}-2\rho_{rI}\sigma_{P_r}\sigma_I+2\rho_{nI}\sigma_{P_n}\sigma_I\Bigr]du
\end{aligned}\tag{41}
$$

> $$\sigma_I$$ が定数なら、$$\sigma_I^2$$ の項の積分は $$\sigma_I^2(T-t)$$ になる。式(41)の各項の符号は、PDFのテキストで判読しにくかったため、付録A.8の導出で確認した形で記した。（本記事による補足）
> このオプションは取引されていないが、完備市場の標準的なヘッジ手順で複製できる。

**数値例（原論文 Table 5。2001年7月31日時点のコール価値）**

行使価格 $$K$$ は、CPI-U 指数の基準値 158.4354（1997年1月15日の値）に対する割合。

| $$K$$ の割合 | 3年 | 5年 | 10年 | 30年 |
|---|---|---|---|---|
| 0.98 | 0.2447 | 0.3685 | 0.3922 | 0.2601 |
| 0.90 | 0.2936 | 0.4074 | 0.4152 | 0.2676 |
| 0.82 | 0.3398 | 0.4429 | 0.4359 | 0.2742 |
| 0.77 | 0.3826 | 0.4753 | 0.4547 | 0.2802 |
| 0.72 | 0.4218 | 0.5047 | 0.4717 | 0.2857 |

> 数値は原論文の Table 5 のとおりで、単位・スケールの定義は原論文に明示されていないため、本記事では検算していない。

| 記号・項目 | 意味 |
|---|---|
| $$C_t$$ | 時点 $$t$$ のコール価値（ドル） |
| $$K$$ | 行使価格（CPI-U 単位） |
| $$\tilde E_t$$ | $$Q$$ の下の条件付き期待値 |
| $$N(\cdot)$$ | 標準正規分布の累積分布関数 |
| $$\sigma_{P_k}(t,T)$$ | ゼロ債 $$k$$ の価格ボラティリティ（$$b_k(t,T)$$ と同じ） |
| $$\eta$$ | フォワード価格 $$I(t)P_r(t,T)/P_n(t,T)$$ の満期までの累積ボラティリティ |

### 1.10 主要帰結

**主要式**

$$
\boxed{\begin{aligned}
\alpha_n(t,T)&=\sigma_n(t,T)\Bigl[\underbrace{\int_t^T\sigma_n(t,s)\,ds}_{\text{標準ドリフト}}-\underbrace{\lambda_n(t)}_{\text{名目の価格}}\Bigr]\\
\alpha_r(t,T)&=\sigma_r(t,T)\Bigl[\int_t^T\sigma_r(t,s)\,ds-\underbrace{\rho_{rI}\sigma_I(t)}_{\text{指数との相関}}-\underbrace{\lambda_r(t)}_{\text{実質の価格}}\Bigr]\\
\mu_I(t)&=\underbrace{r_n(t)-r_r(t)}_{\text{金利差}}-\underbrace{\sigma_I(t)\lambda_I(t)}_{\text{リスクプレミアム}}\\
\frac{dP_{TIPS}(t,T)}{P_{TIPS}(t,T)}&=\underbrace{r_n(t)\,dt}_{\text{名目金利で成長}}+\underbrace{\sigma_I(t)\,d\tilde W_I(t)}_{\text{指数リスク}}-\underbrace{\int_t^T\sigma_r(t,s)\,ds\,d\tilde W_r(t)}_{\text{実質金利リスク}}\\
C_t&=\underbrace{I(t)P_r(t,T)}_{\text{TIPSゼロ債}}N(d_1)-\underbrace{KP_n(t,T)}_{\text{行使価格の現在価値}}N(d_2)\\
d_{1,2}&=\frac{\log\frac{I(t)P_r(t,T)}{KP_n(t,T)}\pm\frac12\eta^2}{\eta}
\end{aligned}}\tag{42}
$$

> 式(42)は、式(12)(13)(14)(19)(40)をまとめたもの（本記事による再掲）。$$\eta$$ は式(41)。

**主要式の読み方**

**ひと目で言うと**：名目金利・実質金利・インフレ指数の3つが無裁定で動くための条件は、各ドリフトがボラティリティ・相関・市場価格だけで書けることである。その下でTIPSのゼロ債価格は、名目金利で成長しつつ、インフレ指数のリスクと実質金利のリスクだけに晒される。インフレ指数のヨーロピアン・コールは、実質ゼロ債・名目ゼロ債の価格と3要因の分散・共分散 $$\eta$$ だけで閉形式の価格が決まり、取引されていなくても複製できる。

**① 無裁定ドリフト条件（名目・実質）**

$$
\alpha_n(t,T)=\sigma_n(t,T)\Bigl[\int_t^T\sigma_n(t,s)\,ds-\lambda_n(t)\Bigr]
$$

$$
\alpha_r(t,T)=\sigma_r(t,T)\Bigl[\int_t^T\sigma_r(t,s)\,ds-\rho_{rI}\sigma_I(t)-\lambda_r(t)\Bigr]
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$\alpha_n(t,T),\alpha_r(t,T)$$ | フォワードレートの実世界ドリフト | ボラティリティと市場価格で決まる従属量で、自由に置けない（式(12)(13)） |
| $$\sigma_k(t,T)\int_t^T\sigma_k(t,s)\,ds$$ | HJMの標準ドリフト | $$Q$$ の下のドリフト（式(15)(16)）。ボラティリティだけで決まる |
| $$\lambda_n(t),\lambda_r(t)$$ | 名目・実質金利リスクの市場価格 | $$P$$ から $$Q$$ に移るときのドリフトのずれ（式(10)） |
| $$\rho_{rI}\sigma_I(t)$$ | 実質金利とインフレ指数の共分散項 | 実質債が外国資産のようにドル建てで評価される分の補正。外すと実質側の無裁定条件が名目側と同じ形になる |

**意味**：名目側は通常のHJMの条件、実質側はそれにインフレ指数との相関を加えた条件である。

**結論へのつながり**：実質金利とインフレ率の負の相関（推定値 $$\hat\rho_{rI}=-0.32127$$）は、実質側のドリフトにだけ効く。2つの期間構造を一つの $$Q$$ で評価できる根拠になる（式(13)(16)）。

**② フィッシャー方程式**

$$
\mu_I(t)=r_n(t)-r_r(t)-\sigma_I(t)\lambda_I(t)
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$\mu_I(t)$$ | インフレ指数の実世界ドリフト（期待インフレ率） | 式(14)で決まる従属量（式(8)） |
| $$r_n(t)-r_r(t)$$ | 名目と実質のスポットレートの差 | $$Q$$ の下のインフレ指数のドリフト（式(17)）。為替の金利平価に対応 |
| $$\sigma_I(t)\lambda_I(t)$$ | インフレ・リスクプレミアム | 2つの金利差と期待インフレ率の差を埋める調整。決定論的な $$\sigma_I$$ と $$\lambda_I$$ で決まる |

**意味**：名目金利と実質金利の差は、期待インフレ率にインフレ・リスクプレミアムの調整を加えたものに等しい。

**結論へのつながり**：インフレ指数の動きを $$Q$$ の下で $$r_n-r_r$$ のドリフトに固定する（式(17)）。これにより、指数に連動するTIPSとオプションの評価が名目・実質の期間構造だけで決まる。

**③ TIPSゼロ債の価格過程**

$$
\frac{dP_{TIPS}(t,T)}{P_{TIPS}(t,T)}=r_n(t)\,dt+\sigma_I(t)\,d\tilde W_I(t)-\int_t^T\sigma_r(t,s)\,ds\,d\tilde W_r(t)
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$r_n(t)\,dt$$ | $$Q$$ の下のドリフト | ドル建ての取引資産なので、ドリフトは名目スポットレート。式(17)(20)の補正が打ち消し合った結果（付録A.3） |
| $$\sigma_I(t)\,d\tilde W_I(t)$$ | インフレ指数のリスク | $$I(t)$$ のボラティリティが、そのまま価格のボラティリティになる（式(4)(17)） |
| $$\int_t^T\sigma_r(t,s)\,ds\,d\tilde W_r(t)$$ | 実質金利のリスク | 実質ゼロ債の価格ボラティリティ。符号がマイナスなので、実質金利が上がると価格が下がる（式(20)） |

**意味**：TIPSゼロ債のドル価格は、インフレ指数のリスクと実質金利のリスクを持ち、名目金利のリスクを直接は持たない。

**結論へのつながり**：名目金利に直接依存しないので、TIPSの期間構造は2ファクターになる（式(28)）。ヘッジでは、指数と実質金利のデルタを合わせ、名目国債は価値の調整に使える（式(36)）。

**④ インフレ指数コールの閉形式価格**

$$
C_t=I(t)P_r(t,T)N(d_1)-KP_n(t,T)N(d_2)
$$

$$
d_{1,2}=\frac{\log\frac{I(t)P_r(t,T)}{KP_n(t,T)}\pm\frac12\eta^2}{\eta}
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$I(t)P_r(t,T)$$ | TIPSゼロ債のドル価格 | 満期に指数 $$I(T)$$ を受け取る権利の現在価値（式(4)）。$$N(d_1)$$ の重み |
| $$KP_n(t,T)$$ | 行使価格の現在価値 | 名目ゼロ債で割り引く。$$N(d_2)$$ の重み |
| $$N(d_1),N(d_2)$$ | 標準正規分布の累積分布関数 | ガウス型の期間構造と対数正規の指数（A3〜A5）で閉形式になる |
| $$\eta$$ | フォワード価格 $$I(t)P_r(t,T)/P_n(t,T)$$ の累積ボラティリティ | 名目債・実質債・指数の分散と3つの相関で決まる（式(41)） |

**意味**：Black–Scholes型の公式で、原資産が「TIPSゼロ債」、割引が名目ゼロ債に置き換わっている。

**結論へのつながり**：取引されないインフレ指数オプションも、完備市場のモデルの中で、TIPSと名目国債で複製して価格を決められる（式(40)）。このモデルは、ヨーロピアン・コールの範囲で、ボラティリティが決定論的である場合の価格を主張する。

**主要式のつながり**

```
無裁定（式(9)）
   ├─→ ①ドリフト条件 (12)(13) ─→ Q下のフォワードレート (15)(16)
   └─→ ②フィッシャー式 (14)   ─→ Q下の指数 (17)
                                     │
        (16)(17) → 実質債 (20) ─→ ③TIPS価格 (19)（ドリフトは r_n）
                                     │
       (18)(19)の分散・共分散 ─→ η (41) ─→ ④コール価格 (40)
                                     │
                     ヘッジ比率 (27)–(35) ─→ 複製 (36)
```

**比較静学（数値例・原論文 Table 5）**

| 変化 | 結果 | 符号・式 |
|---|---|---|
| 行使価格を下げる（0.98 → 0.72） | どの満期でもコール価値が上がる（例：3年で 0.2447 → 0.4218） | 正（式(40)） |
| 満期を延ばす（3年 → 5年 → 10年） | 価値が上がる（例：$$K=0.98$$ で 0.2447 → 0.3685 → 0.3922） | 正 |
| 満期を30年にする | 3年・5年・10年より小さい（$$K=0.98$$ で 0.2601） | 論文は、ヨーロピアン（満期前に行使できない）ためと説明 |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| TIPSと通常国債の整合的な価格付け | 同じ $$Q$$ の下で、名目・実質ゼロ債価格から、クーポン債が式(2)(3)の和として価格づけされる |
| 実質金利とインフレ率の負の相関 | 相関 $$\rho_{rI}$$ が実質側の無裁定ドリフトに入り、推定値は −0.32127（式(13)） |
| 名目金利のボラティリティが実質の2倍以上 | 推定値 $$\hat\sigma_n=0.00566$$ に対し $$\hat\sigma_r=0.00299$$（式(23)） |
| TIPS価格が名目金利に直接依存しない | TIPSゼロ債 $$I(t)P_r(t,T)$$ の名目スポットレートへのデルタは0（式(28)） |
| TIPS同士・国債によるヘッジ誤差が小さい | 3ファクターの完備モデルのデルタ（式(27)–(35)）で複製でき、誤差は名目国債のヘッジと同程度（式(36)） |
| 取引されないインフレ指数オプションの価格 | 閉形式のヨーロピアン・コール価格（式(40)） |
| コール価値が満期について山型 | 3年・5年・10年で増え、30年では小さくなる（ヨーロピアンのため。数値例） |

## 3. 整理している点 {#sec3}

- 名目金利・実質金利・インフレ指数の3つのリスク要因を、外国通貨のアナロジーで一つの無裁定モデルにまとめ、フィッシャー方程式（式(14)）を、インフレ・リスクプレミアムの調整込みで位置づけている。
- 3つの要因のボラティリティを決定論的（ガウスHJM）にすることで、価格過程（式(15)–(20)）、ヘッジ比率（式(27)–(35)）、オプション価格（式(40)）が解析的に書ける。
- TIPS5本と名目国債が取引される市場を完備として扱い、一部の証券で残りを複製するヘッジ誤差で、モデルの妥当性を検証できる形にしている。

## 4. 対象外の現象 {#sec4}

- 2か月ラグの経済的な含意：TIPSは正確な実質収益ではなく近似的な実質収益を与えるにとどまり、モデルは、ラグ付き指数を $$I(t)$$ として扱うだけである。
- デフレ時の元本保証（額面を下回らない埋め込みプット）：価値がほとんどないとして評価から除いている。
- 課税の違い：クーポンとキャピタルゲインの課税差、州税の影響などは、無摩擦の仮定により扱わない。
- 確率的なボラティリティや水準依存のボラティリティ：ボラティリティは決定論的である。
- 市場価格 $$\lambda_n,\lambda_r,\lambda_I$$ の水準の推定：推定するのは、ボラティリティと相関である。
- 長期（10年超）の実質フォワードレート曲線の精密な当てはめ：4区間の階段関数は、推定にデータのない長期側を十分に捉えない（TII5・TII6の誤差が大きい）。
- アメリカン型オプションなど、早期行使を持つインフレ指数の派生証券：扱うのはヨーロピアン・コールだけである。

## 5. 主要文献・関連論文 {#sec5}

- **[金字塔論文（HJMモデル）]** Heath, D., Jarrow, R., & Morton, A. (1992). Bond pricing and the term structure of interest rates: A new methodology for contingent claims valuation. *Econometrica*, 60(1), 77–105.
  - **位置づけ**: 本モデルの土台となる、フォワードレートの無裁定ドリフト条件を与えた論文。式(12)(13)の出発点。
- **[原著（外国通貨オプション）]** Amin, K., & Jarrow, R. (1991). Pricing foreign currency options under stochastic interest rates. *Journal of International Money and Finance*, 10(3), 310–329.
  - **位置づけ**: 実質＝外国、名目＝国内、指数＝為替レートとするアナロジーの技術的な基礎。命題1・2の証明の元になる。
- **[原著（短期金利モデル）]** Vasicek, O. (1977). An equilibrium characterization of the term structure. *Journal of Financial Economics*, 5(2), 177–188.
  - **位置づけ**: 指数型ボラティリティ（式(23)）の「拡張Vasicekモデル」の元になる、ガウス型の短期金利モデル。
- **[関連文献（短期金利モデル）]** Cox, J. C., Ingersoll, J. E., & Ross, S. A. (1985). A theory of the term structure of interest rates. *Econometrica*, 53(2), 385–407.
  - **位置づけ**: 英国の物価連動債の実質期間構造を扱った先行研究が使ったモデル。本論文は、これらと違い、HJMの枠組みを使う。
- **[関連文献（多重期間構造）]** Jarrow, R., & Turnbull, S. (1998). A unified approach for pricing contingent claims on multiple term structures. *Review of Quantitative Finance and Accounting*, 10(1), 5–19.
  - **位置づけ**: 外国通貨のアナロジーで、HJMを複数の期間構造に拡張した論文。本論文の枠組みの直接の元になる。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
[A1〜A6：ガウスHJM、完備市場]
      │
      ├─ 価格の定義 (1)–(4)
      │
      ├─ A.2 無裁定条件 (9)–(14)
      │       └─ A.3 Q下の価格過程 (15)–(20)
      │
      ├─ A.4 指数型ボラ (23) ─→ A.5 推定の回帰式 (24)(25)
      │
      ├─ A.6 ヘッジ比率 (27)–(35) ─→ A.7 ヘッジ連立方程式 (36)(37)
      │
      └─ A.8 オプション価格 (38)–(41) ─→ 主要帰結 (42)
```

### A.1 使う道具

**T1 伊藤の補題**

$$X$$ が伊藤過程で $$g$$ が $$C^2$$ なら、$$dg(X)=g'(X)\,dX+\frac12g''(X)\,d\langle X\rangle$$。相関のあるブラウン運動の積は $$dW_k\,dW_l=\rho_{kl}\,dt$$。

**T2 Girsanovの定理**

式(10)より、$$P$$ の下で $$dW_k=d\tilde W_k+\lambda_k\,dt$$。$$Q$$ の下のドリフトは、この置き換えで得られる。

**T3 マルチンゲール条件とドリフト**

連続な正の過程 $$M$$ の $$dM/M$$ のドリフトが0なら（かつ正則条件が成り立てば）$$M$$ はマルチンゲールである。逆も成り立つ。

**T4 ライプニッツ則と確率的フビニの定理**

$$\dfrac{\partial}{\partial T}\int_t^Tg(t,u)\,du=g(t,T)$$。また $$\int_t^T\Bigl(\int\sigma(t,u)\,dW\Bigr)du=\int\Bigl(\int_t^T\sigma(t,u)\,du\Bigr)dW$$（積分順序の交換）。

**T5 対数正規分布の期待値**

$$X\sim N(m,\eta^2)$$ なら、$$E[(e^X-K)^+]=e^{m+\eta^2/2}N\Bigl(\dfrac{m+\eta^2-\log K}{\eta}\Bigr)-K\,N\Bigl(\dfrac{m-\log K}{\eta}\Bigr)$$。

**T6 ニュメレールの変更（フォワード測度）**

ゼロ債 $$P_n(t,T)$$ をニュメレールとすると、ドル建て資産の価格を $$P_n(t,T)$$ で割った過程は $$Q^T$$ の下でマルチンゲールになる。

### A.2 式(12)(13)(14)の導出

以下、ゼロ債の価格ボラティリティを $$S_k(t,T)=\int_t^T\sigma_k(t,u)\,du$$（$$=b_k=\sigma_{P_k}$$）と書く。

**Step 1　ゼロ債の価格過程（$$P$$ の下）**

$$\log P_k(t,T)=-\int_t^Tf_k(t,u)\,du$$ を $$t$$ で微分する（T4。境界項 $$+f_k(t,t)=r_k(t)$$）。

$$
d\log P_k=r_k\,dt-\int_t^T\alpha_k(t,u)\,du\,dt-S_k\,dW_k
$$

伊藤の補題（T1）で指数をとる。

$$
\frac{dP_k(t,T)}{P_k(t,T)}=\Bigl[r_k-\int_t^T\alpha_k(t,u)\,du+\frac12S_k^2\Bigr]dt-S_k\,dW_k\qquad(k\in\{n,r\})
$$

**Step 2　名目：$$P_n/B_n$$ のマルチンゲール条件（T3）**

$$B_n$$ は拡散項を持たないので、$$d(P_n/B_n)/(P_n/B_n)=\bigl[-\int_t^T\alpha_n\,du+\frac12S_n^2\bigr]dt-S_n\,dW_n$$。T2で $$dW_n=d\tilde W_n+\lambda_n\,dt$$ を代入し、ドリフトを0とする。

$$
-\int_t^T\alpha_n(t,u)\,du+\frac12S_n(t,T)^2-S_n(t,T)\lambda_n(t)=0
$$

**Step 3　$$T$$ で微分（T4）**

$$\partial S_n/\partial T=\sigma_n(t,T)$$ より、$$-\alpha_n(t,T)+S_n\sigma_n-\sigma_n\lambda_n=0$$。

$$
\alpha_n(t,T)=\sigma_n(t,T)\bigl[S_n(t,T)-\lambda_n(t)\bigr]\quad\Rightarrow\quad\text{式(12)}
$$

**Step 4　$$IB_r/B_n$$ のマルチンゲール条件**

$$B_r,B_n$$ は拡散項を持たない。$$\dfrac{d(IB_r/B_n)}{IB_r/B_n}=\bigl[\mu_I+r_r-r_n\bigr]dt+\sigma_I\,dW_I$$。T2で $$dW_I=d\tilde W_I+\lambda_I\,dt$$ を代入し、ドリフトを0とする。

$$
\mu_I+r_r-r_n+\sigma_I\lambda_I=0\quad\Rightarrow\quad\mu_I(t)=r_n(t)-r_r(t)-\sigma_I(t)\lambda_I(t)\quad\Rightarrow\quad\text{式(14)}
$$

**Step 5　$$IP_r/B_n$$ のマルチンゲール条件**

式(8)とStep 1（$$k=r$$）から、$$dW_I\,dW_r=\rho_{rI}\,dt$$ より交差項は $$-\rho_{rI}\sigma_IS_r\,dt$$。

$$
\frac{d(IP_r/B_n)}{IP_r/B_n}=\Bigl[\mu_I+r_r-r_n-\int_t^T\alpha_r\,du+\frac12S_r^2-\rho_{rI}\sigma_IS_r\Bigr]dt+\sigma_I\,dW_I-S_r\,dW_r
$$

T2で $$dW_I,dW_r$$ を置き換えると、ドリフトは $$\mu_I+r_r-r_n+\sigma_I\lambda_I-\int_t^T\alpha_r\,du+\frac12S_r^2-\rho_{rI}\sigma_IS_r-S_r\lambda_r$$。Step 4の結果より最初の4項の和は0なので、

$$
-\int_t^T\alpha_r(t,u)\,du+\frac12S_r^2-\rho_{rI}\sigma_IS_r-S_r\lambda_r=0
$$

**Step 6　$$T$$ で微分（T4）**

$$
\alpha_r(t,T)=\sigma_r(t,T)\bigl[S_r(t,T)-\rho_{rI}\sigma_I(t)-\lambda_r(t)\bigr]\quad\Rightarrow\quad\text{式(13)}
$$

逆（十分性）は、Step 2〜5のドリフトが0なら3つの比率が局所マルチンゲールになることから従う。

**確認**

$$\rho_{rI}=0$$ なら、式(13)は式(12)と同じ形になる。$$\lambda_I=0$$ なら、式(14)は $$\mu_I=r_n-r_r$$ になる（リスク中立のフィッシャー方程式）。

| 入力・使う道具 | 内容 |
|---|---|
| 式(6)(7)(8)、式(5) | フォワードレートと指数の過程、相関 |
| T1, T2, T3, T4 | 伊藤の補題、Girsanov、マルチンゲール条件、微分 |
| 出力 | 式(12)(13)(14) |

### A.3 式(15)–(20)の導出

**Step 1　フォワードレート（式(15)(16)）**

式(6)に $$dW_n=d\tilde W_n+\lambda_n\,dt$$ を代入し、式(12)を使う。

$$
df_n=(\alpha_n+\sigma_n\lambda_n)\,dt+\sigma_n\,d\tilde W_n=\sigma_nS_n\,dt+\sigma_n\,d\tilde W_n\quad\Rightarrow\quad\text{式(15)}
$$

式(7)と式(13)から、$$\alpha_r+\sigma_r\lambda_r=\sigma_r(S_r-\rho_{rI}\sigma_I)$$ より式(16)。

**Step 2　インフレ指数（式(17)）**

式(8)に $$dW_I=d\tilde W_I+\lambda_I\,dt$$ を代入し、式(14)から $$\mu_I+\sigma_I\lambda_I=r_n-r_r$$ より式(17)。

**Step 3　名目ゼロ債（式(18)）**

A.2のStep 1に、式(15)の $$Q$$ ドリフト $$\sigma_nS_n$$ を使う。$$-\int_t^T\sigma_n(t,u)S_n(t,u)\,du=-\frac12S_n(t,T)^2$$ なので、伊藤の補正 $$+\frac12S_n^2$$ と打ち消し合う。

$$
\frac{dP_n}{P_n}=r_n\,dt-S_n\,d\tilde W_n\quad\Rightarrow\quad\text{式(18)}
$$

**Step 4　実質ゼロ債（式(20)）**

A.2のStep 1（$$k=r$$）に式(16)のドリフトを使う。$$-\int_t^T\sigma_r(t,u)\bigl[S_r(t,u)-\rho_{rI}\sigma_I\bigr]du=-\frac12S_r^2+\rho_{rI}\sigma_IS_r$$。伊藤の補正 $$+\frac12S_r^2$$ と合わせて、

$$
\frac{dP_r}{P_r}=\bigl[r_r+\rho_{rI}\sigma_IS_r\bigr]dt-S_r\,d\tilde W_r\quad\Rightarrow\quad\text{式(20)}
$$

**Step 5　TIPSゼロ債（式(19)）**

$$P_{TIPS}=IP_r$$（式(4)）。積の伊藤の補題（T1）で、交差項は $$\sigma_I\cdot(-S_r)\rho_{rI}\,dt$$。

$$
\frac{dP_{TIPS}}{P_{TIPS}}=\bigl[(r_n-r_r)+(r_r+\rho_{rI}\sigma_IS_r)-\rho_{rI}\sigma_IS_r\bigr]dt+\sigma_I\,d\tilde W_I-S_r\,d\tilde W_r=r_n\,dt+\sigma_I\,d\tilde W_I-S_r\,d\tilde W_r\quad\Rightarrow\quad\text{式(19)}
$$

**確認**

ドル建ての取引資産（$$P_n$$、$$P_{TIPS}$$）のドリフトは $$r_n$$ で、これは $$P_n/B_n$$、$$IP_r/B_n$$ が $$Q$$-マルチンゲールである条件（式(9)）と一致する。式(20)の補正項の符号をマイナスにすると、式(19)のドリフトは $$r_n$$ にならない。

| 入力・使う道具 | 内容 |
|---|---|
| 式(6)–(8)、(12)–(14) | $$P$$ の下の過程と無裁定ドリフト |
| T1, T2, T4 | 伊藤の補題、Girsanov、積分の交換 |
| 出力 | 式(15)–(20) |

### A.4 指数型ボラティリティ（式(23)）

**Step 1　価格ボラティリティ**

$$\sigma_k(t,u)=\sigma_ke^{-a_k(u-t)}$$ を $$u$$ で $$t$$ から $$T$$ まで積分する。

$$
S_k(t,T)=b_k(t,T)=\frac{\sigma_k}{a_k}\bigl(1-e^{-a_k(T-t)}\bigr)
$$

**Step 2　状態変数への依存**

$$\sigma_k(t,u)=\sigma_ke^{-a_k(u-t)}$$ は $$g(u)/g(t)$$ の形（$$g(u)=e^{-a_ku}$$）なので、フォワードレートは $$f_k(t,u)=\text{（決定論的な関数）}+e^{-a_k(u-t)}\,x_k(t)$$ の形で、状態は $$r_k(t)$$ の一つだけになる（拡張Vasicek型。本記事による補足）。

$$
\int_t^Tf_k(t,u)\,du=\text{（決定論的）}+\frac{1-e^{-a_k(T-t)}}{a_k}\,r_k(t)\quad\Rightarrow\quad\frac{\partial P_k}{\partial r_k}=-\frac{1-e^{-a_k(T-t)}}{a_k}P_k=-\frac{b_k(t,T)}{\sigma_k}P_k
$$

この結果は、式(27)で $$k=r$$ の場合に使われる。

### A.5 推定の回帰式（式(24)(25)）

**Step 1　式(20)の離散化**

$$Q$$ の下の式(20)の拡散項は $$-S_r\,d\tilde W_r$$。小さな $$\Delta$$ では、$$\Delta P_r/P_r\approx\text{（ドリフト）}\Delta-S_r\,\Delta\tilde W_r$$。ドリフトは $$r_r(t)+\rho_{rI}\sigma_I(t)S_r$$、分散は $$S_r^2\Delta$$ なので、式(24)を得る。

**Step 2　分散の式**

A.4のStep 1の $$S_r$$ を代入する。

$$
\operatorname{var}\Bigl(\frac{\Delta P_r}{P_r}\Bigr)=S_r^2\Delta=\sigma_r^2\Bigl(\frac{1-e^{-a_r(T-t)}}{a_r}\Bigr)^2\Delta=\sigma_r^2\Bigl(\frac{e^{-a_r(T-t)}-1}{a_r}\Bigr)^2\Delta\quad\Rightarrow\quad\text{式(25)}
$$

**Step 3　推定**

日次データではドリフトが標準偏差に比べて小さいので無視し、左辺を標本分散で置き換えて、満期ごとの式を $$(\sigma_r,a_r)$$ について非線形回帰する。

### A.6 ヘッジ比率（式(27)–(35)）

**Step 1　ゼロ債のデルタ（式(27)(30)）**

A.4のStep 2の結果が式(27)。式(30)は、$$I(t)$$ が $$r_r$$ に依存しないことから $$\partial[IP_r]/\partial r_r=I\,\partial P_r/\partial r_r$$。

**Step 2　名目金利・指数への依存（式(28)(29)(31)(32)）**

$$IP_r$$ は $$r_n$$ に依存しない（式(28)）。$$I$$ について線形（式(29)）。$$P_n$$ は $$r_n$$ だけに依存するので、$$I$$ と $$r_r$$ へのデルタは0（式(31)(32)）。

**Step 3　クーポン債（式(33)–(35)）**

式(3)の $$B_{TIPS,j}(0)$$ は $$I(0)$$ について線形で、各 $$P_r(0,t)$$ は $$r_r(0)$$ に依存する。

$$
\frac{\partial B_{TIPS,j}(0)}{\partial I(0)}=\frac{\sum_tC_jP_r(0,t)+F_jP_r(0,T)}{I(t_{0,j})}\quad\Rightarrow\quad\text{式(33)}
$$

各 $$P_r(0,t)$$ に式(27)を使うと式(34)。式(2)の $$B_{n,j}(0)$$ に、名目側の式（A.4のStep 2で $$k=n$$）を使うと式(35)。

| 入力・使う道具 | 内容 |
|---|---|
| 式(2)(3)(4)、A.4 | クーポン債の価格式、Vasicek型の依存関係 |
| 出力 | 式(27)–(35) |

### A.7 ヘッジの連立方程式（式(36)(37)）

**Step 1　TIPSの合成（式(36)）**

未知数は $$n_1,n_2,n_3$$ の3つで、条件は価値・指数デルタ・実質金利デルタの3つ。式(31)(32)から、$$\partial B_n/\partial I=\partial B_n/\partial r_r=0$$。

$$
\begin{pmatrix}\partial B_{TIPS2}/\partial I&\partial B_{TIPS3}/\partial I\\\partial B_{TIPS2}/\partial r_r&\partial B_{TIPS3}/\partial r_r\end{pmatrix}\begin{pmatrix}n_2\\n_3\end{pmatrix}=-\begin{pmatrix}\partial B_{TIPS1}/\partial I\\\partial B_{TIPS1}/\partial r_r\end{pmatrix}
$$

を解いて $$n_2,n_3$$ を得る（行列式が0でないとき）。価値の条件から $$n_1=-\bigl(B_{TIPS1}+n_2B_{TIPS2}+n_3B_{TIPS3}\bigr)/B_n$$。（本記事による補足）

**Step 2　名目国債の合成（式(37)）**

未知数は $$n_1,n_2$$ の2つで、条件は価値と $$r_n$$ のデルタの2つ。デルタには式(35)を使う。

**Step 3　ヘッジ誤差**

翌日のポートフォリオ価値 $$v(t+\Delta)$$ が、ヘッジ誤差である。

### A.8 オプション価格（式(38)–(41)）

**Step 1　ニュメレールの変更（T6）**

式(39)から、$$C_t=P_n(t,T)\,E^T_t\bigl[\max(I(T)-K,0)\bigr]$$。

**Step 2　マルチンゲールの設定**

$$Z(t)=I(t)P_r(t,T)/P_n(t,T)$$ は、ドル建て資産 $$P_{TIPS}$$ を $$P_n$$ で割ったので $$Q^T$$-マルチンゲールで、$$Z(T)=I(T)$$（$$P_r(T,T)=P_n(T,T)=1$$）。

**Step 3　$$Z$$ の拡散項**

式(18)(19)から、$$\log Z$$ の拡散項は $$\sigma_I\,dW_I-S_r\,dW_r+S_n\,dW_n$$（$$S_k$$ は決定論的）。分散率は、式(5)の相関を使って

$$
\sigma_I^2+S_r^2+S_n^2-2\rho_{rI}\sigma_IS_r+2\rho_{nI}\sigma_IS_n-2\rho_{nr}S_rS_n
$$

これを $$u\in[t,T]$$ で積分したものが式(41)の $$\eta^2$$ である（$$S_k=\sigma_{P_k}$$）。

**Step 4　$$\log Z(T)$$ の分布**

$$Z$$ は $$Q^T$$-マルチンゲールで拡散項が決定論的なので、$$\log Z(T)\sim N\bigl(\log Z(t)-\tfrac12\eta^2,\ \eta^2\bigr)$$。

**Step 5　期待値の計算（T5）**

$$m=\log Z(t)-\frac12\eta^2$$ と置くと $$e^{m+\eta^2/2}=Z(t)$$。

$$
E^T_t\bigl[(Z(T)-K)^+\bigr]=Z(t)N(d_1)-K\,N(d_2),\qquad d_{1,2}=\frac{\log\bigl(Z(t)/K\bigr)\pm\frac12\eta^2}{\eta}
$$

**Step 6　$$P_n$$ をかける**

$$P_n(t,T)Z(t)=I(t)P_r(t,T)$$ より、

$$
C_t=I(t)P_r(t,T)N(d_1)-KP_n(t,T)N(d_2)\quad\Rightarrow\quad\text{式(40)}
$$

**確認**

- $$\sigma_n=\sigma_r=0$$（金利が決定論的）なら、$$S_n=S_r=0$$ で $$\eta^2=\sigma_I^2(T-t)$$（$$\sigma_I$$ が定数）。$$P_r=e^{-r_r(T-t)}$$、$$P_n=e^{-r_n(T-t)}$$ として、$$r_r$$ を配当利回りとするBlack–Scholes型の公式（本記事による補足）になる。
- $$K\to0$$ なら $$N(d_1),N(d_2)\to1$$ で、$$C_t\to I(t)P_r(t,T)-0=P_{TIPS}(t,T)$$。行使価格0のコールは、TIPSゼロ債のドル価格（式(4)）に一致する。

| 入力・使う道具 | 内容 |
|---|---|
| 式(18)(19)、式(5) | ゼロ債の価格過程、相関 |
| T5, T6 | 対数正規分布の期待値、ニュメレールの変更 |
| 出力 | 式(40)(41) |

### A.9 著者について

**Robert A. Jarrow**
- **アカデミックな経歴**: デューク大学で数学とManagement Scienceの学士号（1974年、magna cum laude）、ダートマス大学Tuck School of BusinessでMBA（1976年）、MIT Sloan School of Managementで財務論の博士号（Robert C. Merton に師事）を取得。1979年からコーネル大学Johnson Graduate School of Managementで教え、Ronald P. and Susan E. Lynch Professor of Investment Management。1995年からKamakura CorporationのDirector of Research。
- **主要な研究分野**: 数理ファイナンス、デリバティブの評価とヘッジ、金利の期間構造、信用リスクの誘導型モデル、資産価格バブル。
- **評判・学術的貢献**: HJMモデル、誘導型の信用リスクモデル、フォワード価格マルチンゲール測度の共同創始者。1982年CBOE Pomerance Prize、2001年Graham and Dodd Scrolls Award、1997年IAFE/SunGard Financial Engineer of the Year、IAFE Senior Fellow。Fixed Income Analysts Society Hall of Fame と Risk Magazine の Hall of Fame に選ばれている。

**Yildiray Yildirim**
- **アカデミックな経歴**: コーネル大学でM.A.（経済学）とPh.D.（統計学）を取得。本論文の執筆時はシラキュース大学School of Managementに所属。現在はバルーク・カレッジ（CUNY）Zicklin School of BusinessのWilliam Newman Chair Professor in Real Estate Finance、Steven L. Newman Real Estate Instituteのディレクター。
- **主要な研究分野**: 不動産金融（証券化、商業用リース）、信用リスク、債券、インフレのモデル化、仕組み証券。
- **評判・学術的貢献**: Weimer School of Advanced Studies in Real Estate and Land Economics のフェロー。Jarrow との共著に、本論文のほか、インフレ連動債・スワップ・デリバティブのレビュー（*Annual Review of Financial Economics*, 2023）がある。

---

**© 2003 Robert Jarrow and Yildiray Yildirim**（原論文）。本記事は、原論文の数理モデルを整理・再構成したものである。
{% endraw %}
