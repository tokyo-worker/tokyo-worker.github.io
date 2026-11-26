---
layout: post
title: "Lando (1998) \"On Cox Processes and Credit Risky Securities\"、Review of Derivatives Research: 数理モデル"
date: 2026-11-26 00:00:00 +0900
categories: [金融工学, 信用リスク]
math: true
---

{% raw %}
# Lando (1998) "On Cox Processes and Credit Risky Securities"、Review of Derivatives Research: 数理モデル
### デフォルト時刻を Cox 過程の最初のジャンプで作り、信用リスク付き証券を「デフォルトフリー＋強度」で評価する

---

## 目次

- [0. 論文の紹介](#sec0)
- [1. 数理モデル](#sec1)
  - 1.0 前提 ／ 1.1 Cox 過程によるデフォルト時刻の構成 ／ 1.2 3つの基本ブロックの価格（命題3.1） ／ 1.3 拡散状態変数のファインマン＝カッツ表現 ／ 1.4 部分回収と薄化 ／ 1.5 一般化マルコフ・モデル（格付け遷移） ／ 1.6 一般化マルコフ・モデルでの債券とデリバティブの価格 ／ 1.7 一般の生成行列に対する数値近似 ／ 1.8 スプレッドとその感応度の較正（Vasicek の例） ／ 1.9 主要帰結：信用リスク付き証券は、割引率に強度を足せば評価できる
- [2. 説明できる現象](#sec2)
- [3. 整理している点](#sec3)
- [4. 対象外の現象](#sec4)（4.1 主張しないこと／4.2 暗黙の仮定／4.4 今後の課題）
- [5. 主要文献・関連論文](#sec5)
- [付録：導出手順](#appendix)

---

## 0. 論文の紹介 {#sec0}

**書誌**：Lando, D., "On Cox Processes and Credit Risky Securities," *Review of Derivatives Research*, Vol. 2, Issue 2–3 (December 1998), pp. 99–120.

**論文リンク**：
- 公式版（出版社・DOI）：https://doi.org/10.1007/bf01531332 （DOIはScilitの書誌で確認。閲覧に契約や所属機関経由のアクセスが必要な場合がある）／掲載号の目次：https://rd.springer.com/journal/11147/volumes-and-issues/2-2 （同上）
- 無料で読める関連版：https://www.math.ku.dk/bibliotek/arkivet/preprints-fra-ims/1994/preprint_1994_-_no_9_lando__david_-_on_cox_processes_and_credit_risky_bonds.pdf （コペンハーゲン大学の数理統計学研究所のアーカイブにある1994年のプレプリント「On Cox Processes and Credit Risky Bonds」。**題名と内容が刊行版と異なる初期版**で、本記事の式と一致する保証はない）

**論文の内容**：Cox 過程（二重確率ポアソン過程）を使い、デフォルトのある証券とクレジット・デリバティブの価格づけの枠組みを示す。デフォルト時刻を、単位指数分布の確率変数と、強度の積分の「最初の到達時刻」として構成し、デフォルト・リスクと金利などの市場リスク要因が（強度を通じて）従属できるようにする。この構成から、デフォルトのある請求権の価格は、デフォルトフリー割引率に強度を足した率での割引に帰着し、通常の期間構造モデルと同じ技術的な問題になる。応用として、Jarrow, Lando & Turnbull (1997) の格付け遷移のマルコフ・モデルを、遷移強度が状態変数に依存する形に一般化し、固有ベクトルが時間不変という構造を課して、全格付けの債券価格を、アフィン・モデルの和として閉形式で与える。Vasicek 金利の1因子の例で、短期スプレッドと、その短期金利変化への感応度を、全格付けで同時に較正する。

**本記事の位置づけ**：この記事は、この論文の背景にある数理モデルについての記事です。論文が文章と式で示す Cox 過程の構成、3つの基本ブロックの価格式、格付け遷移の一般化モデルと較正の式を、論文の式と仮定のまま整理し、論文が略した中間式を付録で補っています。

**読解の手がかり（5C）**：

- **Category**：デフォルト時刻を強度の確率過程から構成し、信用リスク付き証券を評価する、強度（縮約型）モデルの理論論文。
- **Context**：Jarrow & Turnbull (1995)、Jarrow, Lando & Turnbull (1997)、Duffie & Singleton (1999)、Duffie, Schroder & Skiadas (1996) の強度型モデルの系譜。5章の文献に対応する。
- **Correctness（鍵となる仮定）**：A2（単位指数変数 $$E_1$$ が状態過程 $$X$$ と独立）を外すと、価格の条件づけを $$\mathcal F_t$$ から $$\mathcal G_t$$ に置き換えられず、A5（遷移行列が時間不変の固有ベクトルをもつ）を外すと閉形式が失われる。
- **Contributions**：デフォルト・リスクと金利の依存を、強度を状態変数の関数にするだけで扱えることを示し、格付け遷移モデルを状態依存に一般化した点。
- **Clarity**：論文は式 (3.0) など存在しない式番号を参照しているところがあり、本記事では対応する式を明記した。ブラウン運動、金利のマネー・マーケット勘定、固有ベクトルの行列が、原論文では同じ記号 $$B$$ に近く、本記事で別の記号にした。

**式番号の対応**：本記事の式番号と原論文の式番号の対応は次のとおり。

| 本記事の式 | 原論文の式 |
|---|---|
| (1)–(3) | 2章冒頭（非同次ポアソン過程）、式(2.1) |
| (4)–(9) | 2章（Cox 過程）、(2.2)–(2.4) |
| (10)–(16) | 3章（マネー・マーケット勘定、情報）、命題3.1、(3.1)–(3.4) |
| (17)–(19) | 例3.4（(3.7), (3.8) とコーシー問題） |
| (20) | 例3.5 |
| (21)–(28) | 4章（式(4.1)、構成、後ろ向き方程式） |
| (29)–(36) | 5章（命題5.1、補題5.2、命題5.3、(5.1)、命題5.4） |
| (37), (38) | 5章末の近似 |
| (39)–(46) | 6章、命題6.1 |
| (47) | 本記事のまとめ（(13)、(14)、(33) の再掲） |

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間・情報**

確率空間 $$(\Omega,\mathcal F,P)$$ に、$$\mathbb R^d$$ 値の状態過程 $$X=\{X_t:0\le t\le T_f\}$$（右連続・左極限あり）と、$$X$$ から独立な単位指数分布の確率変数 $$E_1$$ がある。時点 $$t$$ の情報は、状態の履歴 $$\mathcal G_t=\sigma\{X_s:0\le s\le t\}$$ と、デフォルトの有無 $$\mathcal H_t=\sigma\{\mathbf 1_{\{\tau\le s\}}:0\le s\le t\}$$ を合わせた $$\mathcal F_t=\mathcal G_t\vee\mathcal H_t$$。期待値はすべてリスク中立測度（同値マルチンゲール測度）についてとる。

**A1 強度は状態変数の関数**

デフォルトの強度は $$l(s,\omega)=\lambda(X_s)$$（$$\lambda:\mathbb R^d\to[0,\infty)$$ は非負連続）。強度が履歴全体ではなく現在の状態に依存するのは、応用での便利さのためで、数学的には必要ない。状態変数には、無リスク金利、時間、株価、格付けなど、デフォルトの確率の予測に関係する変数が入る。

**A2 独立性**

$$E_1$$ は $$X$$ と独立。この性質が、価格の条件づけを $$\mathcal F_t$$ から $$\mathcal G_t$$ に置き換える議論（付録A.3）の鍵となる。

**A3 金利**

無リスクの短期金利は $$r_t=R(X_t)$$（状態変数の関数）。マネー・マーケット勘定と割引債の価格は式(10)、(11)。

**A4 デフォルトの時刻**

デフォルト時刻 $$\tau$$ は、式(5)の最初のジャンプ時刻。強度の積分が有限区間で無限大になる経路では、デフォルトが必ず起きる。

**A5 格付け遷移のモデル（1.5以降）**

遷移強度の行列 $$A_X(s)$$ は状態の関数で、$$K$$ 番目の状態（デフォルト）が吸収状態。1.6の閉形式では、$$A_X(s)=B\mu(X_s)B^{-1}$$（固有ベクトルの行列 $$B$$ が時間に依存しない）と仮定する（強い仮定）。

**A6 回収**

1.6以降の債券は、簡単のためゼロ回収の割引債。部分回収は1.4で薄化として扱う。

**記号表**

| 記号・項目 | 意味 |
|---|---|
| $$\tau$$ | デフォルト時刻 |
| $$\lambda(X_s)$$ | デフォルト強度（状態変数の関数） |
| $$E_1$$ | 単位指数分布の確率変数（$$X$$ と独立） |
| $$\mathcal G_t$$, $$\mathcal H_t$$, $$\mathcal F_t$$ | 状態の履歴、デフォルトの有無、両者を合わせた情報 |
| $$r_t=R(X_t)$$ | 無リスク短期金利 |
| $$K$$ | 格付けの状態数（$$K$$ 番目がデフォルト） |

### 1.1 Cox 過程によるデフォルト時刻の構成

非負の強度関数 $$l(\cdot)$$ をもつ非同次ポアソン過程 $$N$$ は、次を満たす。

$$
\underbrace{P(N_t-N_s=k)}_{\text{区間内の事象数の確率}}\qquad=\qquad\underbrace{\frac{\bigl(\int_s^tl(u)\,du\bigr)^{k}}{k!}}_{\text{べき乗と階乗}}\qquad\times\qquad\underbrace{\exp\Bigl(-\int_s^tl(u)\,du\Bigr)}_{\text{事象なしの確率}}\qquad k=0,1,\ldots\tag{1}
$$

> （式の意図・補足）区間 $$(s,t]$$ の事象数がポアソン分布に従う、という定義的な式である。以下の構成は、この $$k=0$$ のケースに帰着する。

$$
\underbrace{P(N_t=0)}_{\text{事象なしの確率}}\qquad=\qquad\underbrace{\exp\Bigl(-\int_0^tl(u)\,du\Bigr)}_{\text{積分強度の指数}}\tag{2}
$$

> （式の意図・補足）$$N_0=0$$ としたときの、$$t$$ までにジャンプがない確率。これは $$\tau\gt t$$ の確率で、次の式(3)のシミュレーションにつながる。

最初のジャンプ時刻 $$\tau$$ は、単位指数分布の確率変数 $$E_1$$ を使って、次のようにシミュレーションできる。

$$
\underbrace{\tau}_{\text{最初のジャンプ時刻}}\qquad=\qquad\underbrace{\inf\Bigl\{t:\int_0^tl(u)\,du\ge E_1\Bigr\}}_{\text{積分強度が }E_1\text{ に達する時刻}}\tag{3}
$$

> （式の意図・補足）論文の (2.1)。$$P(\tau\gt t)=P(E_1\gt\int_0^tl)=\exp(-\int_0^tl)$$ となり、式(2)と一致する。過程をどう構成するかを知ることは、モデルを実装（シミュレーション）することであり、後の命題の証明の鍵にもなる。

Cox 過程は、強度がランダムであるポアソン過程の一般化で、強度の実現値 $$l(\cdot,\omega)$$ を条件にすると、非同次ポアソン過程になる。本論文では強度を次の形に書く。

$$
\underbrace{l(s,\omega)}_{\text{確率的な強度}}\qquad=\qquad\underbrace{\lambda\bigl(X_s(\omega)\bigr)}_{\text{状態変数の関数}}\tag{4}
$$

> （式の意図・補足）A1 の定義。直観的には、企業が時点 $$t$$ まで生存し、$$X$$ の履歴が与えられたとき、次の短い期間 $$\Delta t$$ でデフォルトする確率は、$$\lambda(X_t)\Delta t+o(\Delta t)$$ である。

$$
\underbrace{\tau}_{\text{デフォルト時刻}}\qquad=\qquad\underbrace{\inf\Bigl\{t:\int_0^t\lambda(X_s)\,ds\ge E_1\Bigr\}}_{\text{積分強度が }E_1\text{ に達する時刻}}\tag{5}
$$

> （式の意図・補足）論文の (2.2)。式(3)の、決定論的な強度を確率的な強度 $$\lambda(X_s)$$ に置き換えたもので、強度をもつ Cox 過程の最初のジャンプ時刻と見なせる。$$\lambda(X_s)$$ が大きいと積分が速く $$E_1$$ に達し、$$\tau$$ が小さくなる確率が高くなる。

この定義から、次の2つの鍵となる関係が得られる。

$$
\underbrace{P\bigl(\tau\gt t\mid(X_s)_{0\le s\le t}\bigr)}_{\text{状態の履歴を条件とした生存確率}}\qquad=\qquad\underbrace{\exp\Bigl(-\int_0^t\lambda(X_s)\,ds\Bigr)}_{\text{積分強度の指数}}\qquad t\in[0,T_f]\tag{6}
$$

> （式の意図・補足）論文の (2.3)。$$E_1$$ が $$X$$ と独立（A2）なので、条件つき確率は $$P(E_1\gt\int_0^t\lambda(X_s)ds)$$ になる。

$$
\underbrace{P(\tau\gt t)}_{\text{生存確率}}\qquad=\qquad\underbrace{E\exp\Bigl(-\int_0^t\lambda(X_s)\,ds\Bigr)}_{\text{積分強度の指数の期待値}}\qquad t\in[0,T_f]\tag{7}
$$

> （式の意図・補足）論文の (2.4)。式(6)の期待値をとったもの。生存確率が、積分強度の指数関数の期待値、つまり「$$\lambda$$ に等しい利子率の割引債の価格」と同じ形になる。

第1ジャンプ以降も扱う（4章の格付け遷移で必要）には、積分強度が有限区間で有限でなければならない（爆発の回避）。標準的な単位強度ポアソン過程 $$N$$（$$N_0=0$$）と、$$N$$ と独立な、非負で右連続・有限区間で可積分な確率過程 $$\lambda(t)$$ を用意する。

$$
\underbrace{\Lambda(t)}_{\text{積分強度}}\qquad=\qquad\underbrace{\int_0^t\lambda(s)\,ds}_{\text{強度の積分}}\qquad\lt\qquad\underbrace{\infty}_{\text{有限}}\qquad t\in[0,T]\tag{8}
$$

> （式の意図・補足）$$\Lambda(0)=0$$ で、$$\Lambda$$ の実現値は非減少。式(9)で定義する過程が意味をもつための条件で、技術的な条件は Grandell (1976) の pp. 9–16 にある。

$$
\underbrace{\tilde N_t}_{\text{Cox 過程}}\qquad=\qquad\underbrace{N\bigl(\Lambda(t)\bigr)}_{\text{積分強度で時間を変えたポアソン過程}}\tag{9}
$$

> （式の意図・補足）強度測度が $$\Lambda$$ の Cox 過程。同じ企業が繰り返しデフォルトするモデルへの拡張にも使える。

| 記号・項目 | 意味 |
|---|---|
| $$N$$, $$N_t$$ | ポアソン過程、その時点 $$t$$ の事象数 |
| $$l(\cdot)$$ | 強度（関数または確率過程） |
| $$\Lambda(t)$$ | 積分強度 $$\int_0^t\lambda(s)\,ds$$ |
| $$\tilde N_t$$ | 強度測度 $$\Lambda$$ の Cox 過程 |
| $$T_f$$ | 状態過程の終端時刻 |

### 1.2 3つの基本ブロックの価格（命題3.1）

デフォルトフリーの期間構造は、短期金利過程、マネー・マーケット勘定、同値マルチンゲール測度で与える。

$$
\underbrace{\mathcal B(t)}_{\text{マネー・マーケット勘定}}\qquad=\qquad\underbrace{\exp\Bigl(\int_0^tr_s\,ds\Bigr)}_{\text{短期金利の累積}}\tag{10}
$$

> （式の意図・補足）論文の記号は $$B(t)$$。本記事では、4章以降の固有ベクトルの行列 $$B$$ と区別するため、$$\mathcal B(t)$$ と書く。

$$
\underbrace{p(t,T)}_{\text{デフォルトフリー割引債}}\qquad=\qquad\underbrace{E\Bigl(\frac{\mathcal B(t)}{\mathcal B(T)}\Bigm|\mathcal F_t\Bigr)}_{\text{割引因子の期待値}}\tag{11}
$$

> （式の意図・補足）満期 $$T$$ の無リスク割引債の価格。$$r_t=R(X_t)$$ の状態変数の形でも書ける。

デフォルトのある請求権の価格には、約束された支払とデフォルト時の支払（回収）が必要で、次の3つの基本ブロックから作れる。

1. $$X\mathbf 1_{\{\tau\gt T\}}$$：$$X\in\mathcal G_T$$ を固定日 $$T$$ に、それまでにデフォルトがなければ支払う（脆弱なヨーロピアン・オプションなど）。
2. $$Y_s\mathbf 1_{\{\tau\gt s\}}$$：$$\mathcal G_t$$ 適合な過程 $$Y$$ の率で、デフォルトまで続く支払の流れ（理想化したスワップなど）。
3. $$Z_\tau$$：デフォルト時の支払（再決済）。$$Z$$ は $$\mathcal G_t$$ 適合な確率過程。満期 $$T$$ の請求権では、$$T$$ のあとは $$Z=0$$。

部分回収は、(1) 満期に $$\delta_T\mathbf 1_{\{\tau\le T\}}=\delta_T-\delta_T\mathbf 1_{\{\tau\gt T\}}$$ を受け取る形（デフォルトのない請求権と第1のブロックの差）か、(3) のブロックでデフォルト時に受け取る形で表せる。

$$
\underbrace{E\Bigl(\exp\Bigl(-\int_t^Tr_s\,ds\Bigr)X\mathbf 1_{\{\tau\gt T\}}\Bigm|\mathcal F_t\Bigr)}_{\text{ブロック1の価格}}\qquad=\qquad\underbrace{\mathbf 1_{\{\tau\gt t\}}\,E\Bigl(\exp\Bigl(-\int_t^T(r_s+\lambda_s)\,ds\Bigr)X\Bigm|\mathcal G_t\Bigr)}_{\text{強度を足した割引}}\tag{12}
$$

> （式の意図・補足）論文の (3.1)。生存を条件にした満期の支払は、割引率を $$r+\lambda$$ に変えたデフォルトフリーの請求権として評価でき、条件づけも $$\mathcal F_t$$ から $$\mathcal G_t$$ に簡単になる。命題3.1の仮定は、$$E(\exp(-\int_t^Tr_s\,ds)|X|)$$、$$E\int_t^T|Y_s|\exp(-\int_t^sr_u\,du)\,ds$$、$$E\int_t^T|Z_s\lambda_s|\exp(-\int_t^s(r_u+\lambda_u)\,du)\,ds$$ がすべて有限であること。

$$
\underbrace{E\Bigl(\int_t^TY_s\mathbf 1_{\{\tau\gt s\}}\exp\Bigl(-\int_t^sr_u\,du\Bigr)ds\Bigm|\mathcal F_t\Bigr)}_{\text{ブロック2の価格}}\qquad=\qquad\underbrace{\mathbf 1_{\{\tau\gt t\}}\,E\Bigl(\int_t^TY_s\exp\Bigl(-\int_t^s(r_u+\lambda_u)\,du\Bigr)ds\Bigm|\mathcal G_t\Bigr)}_{\text{強度を足した割引}}\tag{13}
$$

> （式の意図・補足）論文の (3.2)。生存を条件にした支払の流れも、割引率 $$r+\lambda$$ で評価できる。

$$
\underbrace{E\Bigl(\exp\Bigl(-\int_t^{\tau}r_s\,ds\Bigr)Z_\tau\Bigm|\mathcal F_t\Bigr)}_{\text{ブロック3の価格}}\qquad=\qquad\underbrace{\mathbf 1_{\{\tau\gt t\}}\,E\Bigl(\int_t^TZ_s\lambda_s\exp\Bigl(-\int_t^s(r_u+\lambda_u)\,du\Bigr)ds\Bigm|\mathcal G_t\Bigr)}_{\text{事象の密度で重みづけした割引}}\tag{14}
$$

> （式の意図・補足）論文の (3.3)。デフォルト時の支払は、$$s$$ にデフォルトする密度 $$\lambda_s\exp(-\int_t^s\lambda_u\,du)$$ に支払 $$Z_s$$ をかけて積分した形になる。

3つの式の共通点は、価格の計算がデフォルトフリー請求権の評価と同じ形になることで、論文はこれが設定の鍵となる利点であるとする。証明は、まず次の補題を示す。

$$
\underbrace{E\bigl(\mathbf 1_{\{\tau\ge T\}}\mid\mathcal G_T\vee\mathcal H_t\bigr)}_{\text{生存の条件つき確率}}\qquad=\qquad\underbrace{\mathbf 1_{\{\tau\gt t\}}\,\exp\Bigl(-\int_t^T\lambda_s\,ds\Bigr)}_{\text{区間 }[t,T]\text{ の生存確率}}\tag{15}
$$

> （式の意図・補足）論文の (3.4)。$$\{\tau\gt t\}$$ が $$\mathcal H_t$$ のアトム（最小の事象）であることと、$$\{\tau\le t\}$$ 上で条件つき期待値が0であることを使って示される（付録A.3）。

次の式は、式(15)の補題を使って $$\mathcal F_t$$ を $$\mathcal G_t$$ に置き換える核心の等式である。

$$
\underbrace{E\Bigl(\exp\Bigl(-\int_t^T(r_s+\lambda_s)\,ds\Bigr)X\Bigm|\mathcal G_t\vee\mathcal H_t\Bigr)}_{\mathcal G_t\vee\mathcal H_t\text{ での期待値}}\qquad=\qquad\underbrace{E\Bigl(\exp\Bigl(-\int_t^T(r_s+\lambda_s)\,ds\Bigr)X\Bigm|\mathcal G_t\Bigr)}_{\mathcal G_t\text{ での期待値}}\tag{16}
$$

> （式の意図・補足）論文の (3.5)、(3.6) と、$$\mathcal G_t\subset\mathcal G_t\vee\mathcal H_t\subset\mathcal G_t\vee\sigma(E_1)$$ の包含関係から導かれる。$$E_1$$ が $$\sigma(\exp(-\int_t^T(r_s+\lambda_s)ds)X)\vee\mathcal G_t$$ と独立（A2）なので、$$\sigma(E_1)$$ を条件に加えても期待値は変わらない（Williams 1991 の 9.7(k)）。

| 記号・項目 | 意味 |
|---|---|
| $$\mathcal B(t)$$ | マネー・マーケット勘定（論文の $$B(t)$$） |
| $$p(t,T)$$ | デフォルトフリー割引債の価格 |
| $$X\mathbf 1_{\{\tau\gt T\}}$$, $$Y_s\mathbf 1_{\{\tau\gt s\}}$$, $$Z_\tau$$ | 基本ブロック1〜3 |
| $$\delta_T$$ | $$\mathcal G_T$$ 可測な部分回収の確率変数 |

### 1.3 拡散状態変数のファインマン＝カッツ表現

$$\mathcal G_t=\sigma\{X_s:0\le s\le t\}$$ で、$$X$$ が拡散行列 $$a(x,t)$$、ドリフト $$b(x,t)$$ の $$\mathbb R^d$$ 値拡散のとき、$$T=T_f$$、連続関数 $$f:\mathbb R^d\to\mathbb R$$、$$g:[0,T]\times\mathbb R^d\to\mathbb R$$、$$k:[0,T]\times\mathbb R^d\to[0,\infty)$$ とする。式(12)–(14)は、すべて次の形になる（論文は「(3.0), (3.1), (3.2)」と記すが、(3.0) は存在せず、(3.1)–(3.3) の意と解される）。

$$
\underbrace{v(t,x)}_{\text{価格関数}}\qquad=\qquad\underbrace{E^{t,x}\Bigl(f(X_T)\exp\Bigl(-\int_t^Tk(u,X_u)\,du\Bigr)\Bigr)}_{\text{満期の支払の割引}}\qquad+\qquad\underbrace{E^{t,x}\Bigl(\int_t^Tg(s,X_s)\exp\Bigl(-\int_t^sk(u,X_u)\,du\Bigr)ds\Bigr)}_{\text{連続的な支払の割引}}\tag{17}
$$

> （式の意図・補足）$$E^{t,x}$$ は $$X_t=x$$ からの期待値。信用リスク付き証券では、割引率 $$k$$ が $$r+\lambda$$（式(12)、(13)）、デフォルト時の支払の項では $$g=Z\lambda$$（式(14)）になる。

$$
\underbrace{\mathcal A_tF(x)}_{\text{無限小生成作用素}}\qquad=\qquad\underbrace{\tfrac12\sum_{i=1}^{d}\sum_{k=1}^{d}a_{ik}(t,x)\frac{\partial^2F(x)}{\partial x_i\,\partial x_k}}_{\text{拡散項}}\qquad+\qquad\underbrace{\sum_{i=1}^{d}b_i(t,x)\frac{\partial F(x)}{\partial x_i}}_{\text{ドリフト項}}\qquad F\in C^2(\mathbb R^d)\tag{18}
$$

> （式の意図・補足）拡散の生成作用素（例3.4）。技術的な条件（Karatzas & Shreve (1988)、Duffie (1992)）のもとで、式(17)の $$v$$ は、次のコーシー問題の解になる。

$$
\underbrace{-\frac{\partial v}{\partial t}+k\,v}_{\text{時間微分と割引}}\qquad=\qquad\underbrace{\mathcal A_tv+g}_{\text{生成作用素と支払}}\qquad[0,T]\times\mathbb R^d,\qquad v(T,x)=f(x)\tag{19}
$$

> （式の意図・補足）ファインマン＝カッツ公式による偏微分方程式。信用リスク付き証券を、デフォルトフリー証券と同じ手法で扱えることを示す（デフォルトは、強度 $$\lambda$$ で状態が「殺される」拡散、つまり killing の特殊ケースになる）。

**独立の場合（例3.3）**：$$X=(X^1,X^2)$$ で $$X^1$$ と $$X^2$$ が独立なら、金利を $$r(X^1)$$、強度を $$\lambda(X^2)$$ として、独立のケースも表せる。**クレジット・スプレッドのオプション（例3.2）**：強度 $$\lambda$$ のモデルが、全満期の債券の利回りスプレッドのモデルを生むので、スプレッドのオプションも評価できる。

| 記号・項目 | 意味 |
|---|---|
| $$a(x,t)$$, $$b(x,t)$$ | $$X$$ の拡散行列、ドリフト |
| $$f$$, $$g$$, $$k$$ | 満期の支払、連続的な支払、割引率の関数 |
| $$\mathcal A_t$$ | 拡散の無限小生成作用素 |
| $$E^{t,x}$$ | $$X_t=x$$ を条件とする期待値 |

### 1.4 部分回収と薄化

Duffie & Singleton (1999) と Duffie, Schroder & Skiadas (1996) の部分回収は、点過程の薄化（thinning）として解釈できる。デフォルト時に、デフォルト前の価値の分数 $$\phi_t$$ を受け取ることは、価値全体を（マルチンゲール測度のもとの）確率 $$\phi_t$$ で受け取り、確率 $$1-\phi_t$$ で0を受け取る「くじ」と、価格づけの上で同じである。これは、ゼロ回収のデフォルトで、強度が $$\phi$$ で間引かれ、新しい強度 $$\lambda(1-\phi)$$ になる、と見なせる。

$$
\underbrace{c_t}_{\text{請求権の価格}}\qquad=\qquad\underbrace{E\Bigl(\exp\Bigl(-\int_t^Tr_s\,ds\Bigr)X\mathbf 1_{\{\tau\gt T\}}+\exp\Bigl(-\int_t^\tau r_s\,ds\Bigr)Z_\tau\mathbf 1_{\{t\lt\tau\le T\}}\Bigm|\mathcal F_t\Bigr)}_{\text{約束された支払とデフォルト時の支払}}\qquad=\qquad\underbrace{\mathbf 1_{\{\tau\gt t\}}\,E\Bigl(\exp\Bigl(-\int_t^T\bigl(r_s+\lambda_s(1-\phi_s)\bigr)ds\Bigr)X\Bigm|\mathcal G_t\Bigr)}_{\text{薄化した強度を足した割引}}\tag{20}
$$

> （式の意図・補足）例3.5の結果である。約束された支払 $$X_T$$ と、デフォルト時の分数回収 $$Z_\tau=\phi_\tau c_{\tau-}$$ をもつ請求権は、割引率 $$r+\lambda(1-\phi)$$ で評価できる。$$\phi=0$$ なら式(12)に、$$\phi=1$$ ならデフォルトフリーに一致する。損失の分数 $$1-\phi$$ と強度 $$\lambda$$ の積 $$\lambda(1-\phi)$$ が、Duffie & Singleton (1999) の $$hL$$ に当たる。

| 記号・項目 | 意味 |
|---|---|
| $$\phi_t$$ | デフォルト時に受け取る、デフォルト前の価値の分数（回収率） |
| $$c_t$$ | 部分回収つき請求権の価格 |
| $$\lambda(1-\phi)$$ | 薄化した強度（期待損失の速度） |

### 1.5 一般化マルコフ・モデル（格付け遷移）

Jarrow, Lando & Turnbull (1997) では、デフォルト時刻は、次の生成行列をもつマルコフ連鎖の状態 $$K$$ への吸収時刻である。

$$
\underbrace{A}_{\text{生成行列}}\qquad=\qquad\underbrace{\begin{pmatrix}-\lambda_1&\lambda_{12}&\lambda_{13}&\cdots&\lambda_{1K}\\\lambda_{21}&-\lambda_2&\lambda_{23}&\cdots&\lambda_{2K}\\\vdots&\vdots&\ddots&\cdots&\vdots\\\lambda_{K-1,1}&\lambda_{K-1,2}&\cdots&-\lambda_{K-1}&\lambda_{K-1,K}\\0&0&\cdots&\cdots&0\end{pmatrix}}_{\text{遷移強度の行列}}\tag{21}
$$

> （式の意図・補足）論文の (4.1)。各行の和が0で、最後の行（デフォルト状態 $$K$$）が0の吸収状態。次の式(22)で対角成分を定義する。

$$
\underbrace{\lambda_i}_{\text{状態 }i\text{ からの離脱強度}}\qquad=\qquad\underbrace{\sum_{j=1,\,j\ne i}^{K}\lambda_{ij}}_{\text{他の状態への強度の和}}\qquad(\lambda_{ij}\ge0,\ i\ne j;\ i=1,\ldots,K-1)\tag{22}
$$

> （式の意図・補足）定数の強度では、Fons & Kimball (1991) の、低格付け企業のデフォルト率の大きな時間変動と、最高格付けでの相対的に大きな標準偏差と整合しない。Duffee (1996) は、国債利回りが上がると社債スプレッドが縮むことを示している。そこで、強度を状態変数の関数にする（次の式(23)）。

$$
\underbrace{A_X(s)}_{\text{確率的な生成行列}}\qquad=\qquad\underbrace{\begin{pmatrix}-\lambda_1(X_s)&\lambda_{12}(X_s)&\cdots&\lambda_{1K}(X_s)\\\lambda_{21}(X_s)&-\lambda_2(X_s)&\cdots&\lambda_{2K}(X_s)\\\vdots&\vdots&\ddots&\vdots\\\lambda_{K-1,1}(X_s)&\lambda_{K-1,2}(X_s)&\cdots&\lambda_{K-1,K}(X_s)\\0&0&\cdots&0\end{pmatrix}}_{\text{状態に依存する強度の行列}},\qquad\lambda_i(X_s)=\sum_{j\ne i}\lambda_{ij}(X_s)\tag{23}
$$

> （式の意図・補足）遷移・デフォルト強度が状態変数の関数になり、格付けの遷移の合間にも信用スプレッドが確率的に変動できる。$$\lambda_1(X_s)\Delta t$$ は、格付け1の企業が（小さい）時間 $$\Delta t$$ に別の格付けかデフォルトに移る確率。状態変数に時間を含めてもよい。

厳密な構成は、シミュレーションに必要である。独立な単位指数変数 $$E_{11},\ldots,E_{1K},E_{21},\ldots,E_{2K},\ldots$$ を用意し（厳密には、各ジャンプで $$K-1$$ 個で足りる）、企業が格付け $$\eta_0$$ から始まるとする。

$$
\underbrace{\tau_{\eta_0,i}}_{\text{競合リスク }i\text{ の時刻}}\qquad=\qquad\underbrace{\inf\Bigl\{t:\int_0^t\lambda_{\eta_0,i}(X_s)\,ds\ge E_{1i}\Bigr\}}_{\text{積分強度が }E_{1i}\text{ に達する時刻}}\qquad i=1,\ldots,K\tag{24}
$$

> （式の意図・補足）初期格付け $$\eta_0$$ から他の格付け $$i$$ への遷移ごとに、式(5)と同じ構成を使う。

$$
\underbrace{\tau_{\eta_0}}_{\text{最初の遷移時刻}}\qquad=\qquad\underbrace{\min_{i\ne\eta_0}\tau_{\eta_0,i}}_{\text{競合リスクの最小}},\qquad\underbrace{\eta_1}_{\text{新しい格付け}}\qquad=\qquad\underbrace{\arg\min_{i\ne\eta_0}\tau_{\eta_0,i}}_{\text{最小を与える状態}}\tag{25}
$$

> （式の意図・補足）$$\tau_{\eta_0}$$ は、格付けが $$\eta_0$$ から変わる時刻で、$$\eta_0$$ から引き離そうとする「競合リスク」のうち最初にジャンプしたものが決める。$$\eta_1=K$$ ならデフォルト。次の遷移は、$$\tau_{\eta_1,i}=\inf\{t:\int_{\tau_{\eta_0}}^t\lambda_{\eta_1,i}(X_s)\,ds\ge E_{2i}\}$$、$$\tau_{\eta_1}=\min_{i\ne\eta_1}\tau_{\eta_1,i}$$、$$\eta_2=\arg\min_{i\ne\eta_1}\tau_{\eta_1,i}$$ のように、同様に続く。

$$
\underbrace{\tau}_{\text{デフォルト時刻}}\qquad=\qquad\underbrace{\inf\{t:\eta_t=K\}}_{\text{状態 }K\text{ への最初の到達}}\tag{26}
$$

> （式の意図・補足）この構成により、状態変数の発展を条件にすると、時間非同次のマルコフ連鎖になる連続時間過程 $$\eta$$ が得られる。

状態変数の発展を条件にすると、遷移確率 $$P_X(s,t)$$ は次の後ろ向き方程式を満たす。

$$
\underbrace{\frac{\partial P_X(s,t)}{\partial s}}_{\text{遷移確率の }s\text{ 微分}}\qquad=\qquad\underbrace{-A_X(s)\,P_X(s,t)}_{\text{生成行列と遷移確率}}\tag{27}
$$

> （式の意図・補足）時間非同次の場合の後ろ向きコルモゴロフ方程式。解の表現には、積分積（product integral。Gill & Johansen (1990)）を使う。

$$
\underbrace{P_X(s,t)}_{\text{遷移確率の解}}\qquad\ne\qquad\underbrace{\exp\Bigl(\int_s^tA_X(u)\,du\Bigr)}_{\text{行列指数（一般には不一致）}}\tag{28}
$$

> （式の意図・補足）時間非同次の場合、式(27)の解は一般に行列指数 $$\exp(\int_s^tA_X(u)du)$$ に等しくない。行列 $$A$$、$$B$$ では、$$\exp(A+B)=\exp(A)\exp(B)$$ が成り立つのは、$$A$$ と $$B$$ が可換なときだけだからである。次の1.6の補題5.2は、この可換性が成り立つ構造を課して、行列指数による閉形式を得る。

| 記号・項目 | 意味 |
|---|---|
| $$K$$ | 格付けの数（$$K$$ 番目がデフォルト、吸収状態） |
| $$\lambda_{ij}$$, $$\lambda_i$$ | 状態 $$i$$ から $$j$$ への遷移強度、状態 $$i$$ からの離脱強度 |
| $$A_X(s)$$ | 状態に依存する生成行列 |
| $$E_{ni}$$ | 独立な単位指数変数 |
| $$\eta_t$$, $$\eta_n$$ | 時点 $$t$$ の格付け、$$n$$ 回目の遷移後の格付け |
| $$\tau_{\eta,i}$$, $$\tau_\eta$$ | 競合リスク $$i$$ の時刻、その最小（遷移時刻） |
| $$P_X(s,t)$$ | $$X$$ を条件とした格付けの遷移確率行列 |

### 1.6 一般化マルコフ・モデルでの債券とデリバティブの価格

**命題5.1**　時点 $$t$$ の格付けが $$i$$ の企業が発行する、満期 $$T$$ のゼロ回収の割引債の価格は、次のとおり。

$$
\underbrace{v^i(t,T)}_{\text{格付け }i\text{ の割引債価格}}\qquad=\qquad\underbrace{E\Bigl(\exp\Bigl(-\int_t^TR(X_s)\,ds\Bigr)\bigl(1-P_X(t,T)_{i,K}\bigr)\Bigm|\mathcal G_t\Bigr)}_{\text{無リスク割引×生存確率}}\tag{29}
$$

> （式の意図・補足）$$P_X(t,T)_{i,K}$$ は行列 $$P_X(t,T)$$ の $$(i,K)$$ 成分で、$$X$$ を条件にした $$T$$ までのデフォルト確率。$$1-P_X(t,T)_{i,K}$$ が生存確率。式(12)と同様に、$$\mathcal F_t$$ を $$\mathcal G_t$$ に置き換える議論による。

閉形式のために、生成行列に構造を課す（補題5.2）。$$\mu_i:\mathbb R^d\to[0,\infty)$$ を非負関数とし、ほぼすべての $$X$$ の標本経路で $$\int_0^{T_f}\mu_i(X_s)\,ds\lt\infty$$ とする。$$\mu(X_s)$$ は、対角 $$\mathrm{diag}(\mu_1(X_s),\ldots,\mu_{K-1}(X_s),0)$$ の $$K\times K$$ 行列。

$$
\underbrace{A_X(s)}_{\text{生成行列}}\qquad=\qquad\underbrace{B\,\mu(X_s)\,B^{-1}}_{\text{時間不変の固有ベクトルで対角化}}\tag{30}
$$

> （式の意図・補足）$$B$$ は $$A_X(s)$$ の $$K$$ 個の固有ベクトルを列にもつ $$K\times K$$ 行列で、時間に依存しない（A5。強い仮定）。固有値だけが状態変数に応じて確率的に変わる。この構造では、$$A_X(s)$$ が異なる $$s$$ で可換になる。

$$
\underbrace{E_X(s,t)}_{\text{対角行列}}\qquad=\qquad\underbrace{\mathrm{diag}\Bigl(\exp\Bigl(\int_s^t\mu_1(X_u)\,du\Bigr),\ldots,\exp\Bigl(\int_s^t\mu_{K-1}(X_u)\,du\Bigr),1\Bigr)}_{\text{固有値の積分の指数}}\tag{31}
$$

> （式の意図・補足）対角行列の指数は、各固有値の積分の指数をとったもの。最後の成分は、吸収状態に対応する1。

$$
\underbrace{P_X(s,t)}_{\text{遷移確率}}\qquad=\qquad\underbrace{B\,E_X(s,t)\,B^{-1}}_{\text{固有ベクトルで戻す}}\tag{32}
$$

> （式の意図・補足）補題5.2の主張：このとき $$P_X(s,t)$$ は後ろ向き方程式(27)を満たし、時間非同次のマルコフ連鎖の遷移確率になる（付録A.4）。固有ベクトルが時間不変という仮定は強いが、その単純化は大きな利益をもたらす。

**命題5.3**　デフォルト状態の行が0、デフォルトフリー短期金利が $$R(X)$$ のとき、格付け $$i$$ のゼロ回収の割引債の価格は次のとおり。

$$
\underbrace{v^i(t,T)}_{\text{格付け }i\text{ の割引債価格}}\qquad=\qquad\underbrace{\sum_{j=1}^{K-1}\beta_{ij}\,E\Bigl(\exp\Bigl(\int_t^T\bigl(\mu_j(X_u)-R(X_u)\bigr)du\Bigr)\Bigm|\mathcal G_t\Bigr)}_{\text{アフィン型の汎関数の和}}\tag{33}
$$

> （式の意図・補足）全格付けの債券を同時にモデル化する価格式。$$\mu_j$$ と $$R$$ を、アフィンな拡散の（アフィンな）関数にすれば、各項は、アフィン期間構造モデルの結果から閉形式で得られ、債券価格は「アフィン・モデルの和」になる。係数 $$\beta_{ij}$$ は次の式(35)で定義する。

$$
\underbrace{1-P_X(t,T)_{i,K}}_{\text{生存確率}}\qquad=\qquad\underbrace{\sum_{j=1}^{K-1}\beta_{ij}\exp\Bigl(\int_t^T\mu_j(X_u)\,du\Bigr)}_{\text{固有値の指数の和}}\tag{34}
$$

> （式の意図・補足）論文の (5.1)。$$P_X(t,T)_{i,K}=\sum_{j=1}^{K}b_{ij}\exp(\int_t^T\mu_j(X_u)du)\,b^{-1}_{jK}$$ と、行の和が0、最後の行が0であることから $$b_{iK}b^{-1}_{KK}=1$$ を使って得られる（付録A.5）。

$$
\underbrace{\beta_{ij}}_{\text{係数}}\qquad=\qquad\underbrace{-\,b_{ij}\,b^{-1}_{jK}}_{\text{固有ベクトルの成分}}\tag{35}
$$

> （式の意図・補足）$$b_{ij}$$ は $$B$$ の $$(i,j)$$ 成分、$$b^{-1}_{jK}$$ は $$B^{-1}$$ の $$(j,K)$$ 成分。$$v^i(t,t)=1$$ から、$$\sum_{j=1}^{K-1}\beta_{ij}=1$$ が成り立つ（後の式(43)で使う）。

**命題5.4**　債券だけでなく、支払が、満期 $$T$$ の状態 $$X_T$$ と、ある企業の格付け $$\eta_T$$ に依存する請求権 $$C_T=C(X_T,\eta_T)$$ も評価できる（クレジット・オプション、クレジット・トリガーつきスワップなど）。

$$
\underbrace{C_t^i}_{\text{時点 }t\text{ の価格}}\qquad=\qquad\underbrace{\sum_{m=1}^{K}\sum_{k=1}^{K}E\Bigl(b_{ik}\,b^{-1}_{km}\,C(X_T,m)\exp\Bigl(\int_t^T\bigl(\mu_k(X_u)-R(X_u)\bigr)du\Bigr)\Bigm|\mathcal G_t\Bigr)}_{\text{格付けごとの支払の重みづけ和}}\tag{36}
$$

> （式の意図・補足）時点 $$t$$ の格付けが $$i$$ のときの価格。$$P_X(t,T)_{i,m}=\sum_kb_{ik}b^{-1}_{km}\exp(\int_t^T\mu_k\,du)$$ が、$$T$$ に格付け $$m$$ にいる確率であることを使う。支払を格付けに直接結びつけられる。デフォルトに信用リスクのない契約でも、ある企業の格付けに支払が依存しうる（例：信用保険）。

論文は、ここで課したパラメータの仮定が強いと明記する。固有ベクトルのスケーリングにより、$$(K-1)^2$$ 個の遷移・デフォルト強度が $$K-1$$ 次元の部分空間で確率的に変動でき、高格付けと低格付けの企業に違う形で影響しうる。

| 記号・項目 | 意味 |
|---|---|
| $$v^i(t,T)$$ | 格付け $$i$$ の企業のゼロ回収の割引債価格 |
| $$\mu_j(X_s)$$ | 生成行列の固有値（非負）。$$\mu(X_s)=\mathrm{diag}(\mu_1,\ldots,\mu_{K-1},0)$$ |
| $$B$$, $$b_{ij}$$, $$b^{-1}_{jK}$$ | 固有ベクトルの行列、その成分、逆行列の成分 |
| $$E_X(s,t)$$ | 固有値の積分の指数をとった対角行列 |
| $$\beta_{ij}$$ | 債券価格の展開係数（$$\sum_j\beta_{ij}=1$$） |
| $$C(X_T,\eta_T)$$ | 状態と格付けに依存する満期の支払 |

### 1.7 一般の生成行列に対する数値近似

生成行列を自由に指定すると、計算は複雑になる（固有ベクトルの仮定を外す）が、シミュレーションが唯一の方法ではない。区間 $$s=s_0\lt s_1\lt\cdots\lt s_n=t$$ の分割で、$$P_X(s,t)$$ を次の再帰式で近似する。

$$
\underbrace{P_X(t,t)}_{\text{終端条件}}\qquad=\qquad\underbrace{I}_{\text{単位行列}}\tag{37}
$$

$$
\underbrace{P_X(s_i,t)}_{\text{時点 }s_i\text{ の遷移確率}}\qquad=\qquad\underbrace{P_X(s_{i+1},t)}_{\text{次の時点の値}}\qquad-\qquad\underbrace{A_X(s_{i+1})\,P_X(s_{i+1},t)\,(s_i-s_{i+1})}_{\text{生成行列による変化}}\qquad i=0,\ldots,n-1\tag{38}
$$

> （式の意図・補足）後ろ向き方程式(27)の差分近似を、終端条件(37)から逆向きに解く（論文の近似。$$s_i-s_{i+1}$$ は負）。この近似の各項は、$$X$$ の $$n+1$$ 個の時点の値の関数になるので、問題は拡散 $$X$$ だけの標準的な数値問題に帰着する。

| 記号・項目 | 意味 |
|---|---|
| $$s_0\lt s_1\lt\cdots\lt s_n=t$$ | 時間の分割 |
| $$I$$ | 単位行列 |

### 1.8 スプレッドとその感応度の較正（Vasicek の例）

モデルを、短期スプレッドと、その短期金利変化への感応度に合わせる例（実装と検証は後続の研究に委ねられ、パラメータや価格は「例示」とされる）。無リスクの短期金利を Vasicek モデルとする。

$$
\underbrace{dr_t}_{\text{短期金利の変化}}\qquad=\qquad\underbrace{b(a-r_t)\,dt}_{\text{平均回帰}}\qquad+\qquad\underbrace{\sigma\,dW_t}_{\text{ショック}}\tag{39}
$$

> （式の意図・補足）論文は、ブラウン運動を $$B_t$$ と記すが、本記事では固有ベクトルの行列 $$B$$ と区別するため $$W_t$$ と書く。$$a$$ は平均水準、$$b$$ は平均回帰の速さ。論文の例のパラメータは $$a=0.05$$、$$b=0.01$$、$$\sigma=0.015$$、$$r_0=0.05$$。

較正は次の手順で行う。(1) 経験的な生成行列 $$A$$ を推定し、列が固有ベクトルの行列 $$B$$ が存在すると仮定する。(2) 固有値を $$r_s$$ の1次関数にする。

$$
\underbrace{\mu_j(r_s)}_{\text{固有値}}\qquad=\qquad\underbrace{\gamma_j}_{\text{定数}}\qquad+\qquad\underbrace{\kappa_j\,r_s}_{\text{金利への感応度}}\qquad j=1,\ldots,K-1\tag{40}
$$

> （式の意図・補足）$$\gamma_j,\kappa_j$$ は定数。$$\mu(r_s)$$ を、第 $$K-1$$ 要素まで式(40)、最後の要素が0の $$K\times K$$ 対角行列とし、$$A_X(s)=B\mu(r_s)B^{-1}$$ と定義する。(3) 利回り曲線の「2つの特性」を全格付けで同時に合わせるように $$(\gamma_j,\kappa_j)$$ を選ぶ。

この特定化では、強度が負になりうる。ガウス型金利が金利が負になる確率を許す近似として使われるのと同じで、リスク中立測度のもとの強度の近似が正の確率で負になることを許す。パラメータは、負になる確率が非常に小さくなるように選ぶべきである。

デフォルト前の割引債（ゼロ回収）の価格は次のとおり（式(33)で $$\mu_j-R$$ に式(40)を代入）。

$$
\underbrace{v^i(t,T)}_{\text{格付け }i\text{ の割引債価格}}\qquad=\qquad\underbrace{\sum_{j=1}^{K-1}\beta_{ij}\,E\Bigl(\exp\Bigl(\int_t^T\bigl(\gamma_j-(1-\kappa_j)\,r_s\bigr)ds\Bigr)\Bigm|\mathcal G_t\Bigr)}_{\text{Vasicek 型の割引の和}}\tag{41}
$$

> （式の意図・補足）$$R(X_s)=r_s$$ のとき、$$\mu_j-R=\gamma_j+\kappa_jr_s-r_s=\gamma_j-(1-\kappa_j)r_s$$。各項は Vasicek モデルの割引債に似ていて、閉形式で計算できる。

格付け $$i$$ のスポット・スプレッドを次のとおり定義する。

$$
\underbrace{s^i(r_t)}_{\text{スポット・スプレッド}}\qquad=\qquad\underbrace{\lim_{T\to t}\Bigl(-\frac{\partial}{\partial T}\log v^i(t,T)\Bigr)}_{\text{瞬間的な利回り}}\qquad-\qquad\underbrace{r_t}_{\text{短期金利}}\tag{42}
$$

> （式の意図・補足）満期が $$t$$ に近づく極限の瞬間的な利回りから短期金利を引いたもの。

**命題6.1**　スポット・スプレッドとその感応度は、次のとおり。

$$
\underbrace{s^i(r_t)}_{\text{スポット・スプレッド}}\qquad=\qquad\underbrace{-\sum_{j=1}^{K-1}\beta_{ij}\,\mu_j(r_t)}_{\text{固有値の重みづけ和}}\tag{43}
$$

$$
\underbrace{\frac{\partial}{\partial r_t}s^i(r_t)}_{\text{スプレッドの感応度}}\qquad=\qquad\underbrace{-\sum_{j=1}^{K-1}\beta_{ij}\,\kappa_j}_{\text{感応度の重みづけ和}}\tag{44}
$$

> （式の意図・補足）式(43)は、$$\sum_j\beta_{ij}=1$$ と優収束定理（条件つき期待値）で得られる（付録A.6）。式(44)は、(43) を $$r_t$$ で微分したもの。したがって、$$\kappa$$ がスプレッドの短期金利への感応度を決める。

時点0の金利水準が $$r_0$$ で、スポット利回りスプレッドのベクトル $$\hat s_0=(\hat s^1(r_0),\ldots,\hat s^{K-1}(r_0))'$$ と、推定された感応度のベクトル $$\widehat{ds}_0=(\widehat{ds}^1(r_0),\ldots,\widehat{ds}^{K-1}(r_0))'$$ が観測されたとき、命題6.1から、次の連立一次方程式を解けばよい。

$$
\underbrace{-\beta\,(\gamma+\kappa\,r_0)}_{\text{モデルのスプレッド}}\qquad=\qquad\underbrace{\hat s_0}_{\text{観測のスプレッド}}\tag{45}
$$

$$
\underbrace{-\beta\,\kappa}_{\text{モデルの感応度}}\qquad=\qquad\underbrace{\widehat{ds}_0}_{\text{観測の感応度}}\tag{46}
$$

> （式の意図・補足）$$\beta=(\beta_{ij})_{i,j=1,\ldots,K-1}$$、$$\kappa=(\kappa_1,\ldots,\kappa_{K-1})'$$、$$\gamma=(\gamma_1,\ldots,\gamma_{K-1})'$$。まず (46) から $$\kappa$$、次に (45) から $$\gamma$$ が決まる。線形方程式なので、較正が簡単になる。

**数値例**：Jarrow, Lando & Turnbull (1997) の生成行列（8状態：AAA から CCC と、デフォルト）は次のとおり。

| 格付け | AAA | AA | A | BBB | BB | B | CCC | D |
|---|---|---|---|---|---|---|---|---|
| AAA | −0.1153 | 0.1019 | 0.0083 | 0.0020 | 0.0031 | 0.0000 | 0.0000 | 0.0000 |
| AA | 0.0091 | −0.1043 | 0.0787 | 0.0105 | 0.0030 | 0.0030 | 0.0000 | 0.0000 |
| A | 0.0010 | 0.0309 | −0.1172 | 0.0688 | 0.0107 | 0.0048 | 0.0000 | 0.0010 |
| BBB | 0.0007 | 0.0047 | 0.0713 | −0.1711 | 0.0701 | 0.0174 | 0.0020 | 0.0049 |
| BB | 0.0005 | 0.0025 | 0.0089 | 0.0813 | −0.2530 | 0.1181 | 0.0144 | 0.0273 |
| B | 0.0000 | 0.0021 | 0.0034 | 0.0073 | 0.0568 | −0.1928 | 0.0479 | 0.0753 |
| CCC | 0.0000 | 0.0000 | 0.0142 | 0.0142 | 0.0250 | 0.0928 | −0.4318 | 0.2856 |
| D | 0.0000 | 0.0000 | 0.0000 | 0.0000 | 0.0000 | 0.0000 | 0.0000 | 0.0000 |

（行が現在の格付け、列が遷移先。論文の行列の、格付け名の表記は本記事による補足。各行の和は0）

Vasicek の設定（上記）で、AAA から CCC までのスプレッド（bp）を $$\hat s_0=(16,20,27,44,89,150,255)$$、スプレッドの感応度を例示として $$\widehat{ds}_0=(-0.2,-0.3,-0.4,-0.5,-0.6,-1.0,-2.0)$$ とすると、較正の結果は次のとおり。

| 格付け | AAA | AA | A | BBB | BB | B | CCC |
|---|---|---|---|---|---|---|---|
| $$\gamma_j$$ | −0.1745 | −0.1687 | −0.1175 | −0.0934 | −0.0831 | −0.0721 | −0.0325 |
| $$\kappa_j$$ | 2.8004 | 2.7181 | 1.8026 | 1.4139 | 1.2640 | 1.1200 | 0.5348 |

（論文は、スプレッドを JP Morgan の CreditMetrics による1997年7月11日の産業債の1年スプレッドの推定と整合的、感応度は Longstaff & Schwartz (1995) や Duffee (1996) の、スプレッドが金利水準と負に相関し、低格付けほど感応度が強いという結果にもとづく例示とする。）得られた利回りスプレッドの期間構造は、投資適格（AAA から BBB）では右上がり（図1）、投機的格付けでは BB、B が右上がり、CCC は右下がり（図2）になる。

この固有値の調整は、閉形式を保つため便利だが、すべての強度が非負であること、格付けとデフォルトの過程の望ましい確率的単調性が保たれることを保証できない。したがって、推定パラメータを代入すると、**異なる格付けの利回り曲線が交差しうる**。生成行列のすべての成分を（固有値の次元に限らず）自由に確率的に変動させれば、これを制御できる。デフォルト強度だけを確率的にして、非デフォルト状態間の遷移強度を固定する方法もあり、部分回収を強度に取り込む自然な方法になる。いずれも、数値的な問題が多く、別稿で扱うとされる。

| 記号・項目 | 意味 |
|---|---|
| $$a$$, $$b$$, $$\sigma$$, $$r_0$$ | Vasicek の平均水準、回帰の速さ、ボラティリティ、初期金利 |
| $$W_t$$ | ブラウン運動（論文の $$B_t$$） |
| $$\gamma_j$$, $$\kappa_j$$ | 固有値 $$\mu_j(r)=\gamma_j+\kappa_jr$$ の係数 |
| $$s^i(r_t)$$ | 格付け $$i$$ のスポット・スプレッド |
| $$\hat s_0$$, $$\widehat{ds}_0$$ | 観測のスプレッド、感応度のベクトル |
| $$\beta$$ | 行列 $$(\beta_{ij})_{i,j=1,\ldots,K-1}$$ |

### 1.9 主要帰結：信用リスク付き証券は、割引率に強度を足せば評価できる

**主要式**

$$
\boxed{\begin{aligned}\underbrace{E\Bigl(\exp\Bigl(-\int_t^Tr_s\,ds\Bigr)X\mathbf 1_{\{\tau\gt T\}}\Bigm|\mathcal F_t\Bigr)}_{\text{生存条件つきの満期の支払}}&=\underbrace{\mathbf 1_{\{\tau\gt t\}}\,E\Bigl(\exp\Bigl(-\int_t^T(r_s+\lambda_s)\,ds\Bigr)X\Bigm|\mathcal G_t\Bigr)}_{\text{強度を足した割引}}\\\underbrace{E\Bigl(\exp\Bigl(-\int_t^\tau r_s\,ds\Bigr)Z_\tau\Bigm|\mathcal F_t\Bigr)}_{\text{デフォルト時の支払}}&=\underbrace{\mathbf 1_{\{\tau\gt t\}}\,E\Bigl(\int_t^TZ_s\lambda_s\exp\Bigl(-\int_t^s(r_u+\lambda_u)\,du\Bigr)ds\Bigm|\mathcal G_t\Bigr)}_{\text{事象密度で重みづけ}}\\\underbrace{v^i(t,T)}_{\text{格付け }i\text{ の債券価格}}&=\underbrace{\sum_{j=1}^{K-1}\beta_{ij}\,E\Bigl(\exp\Bigl(\int_t^T\bigl(\mu_j-R\bigr)du\Bigr)\Bigm|\mathcal G_t\Bigr)}_{\text{アフィン型の和}}\end{aligned}}\tag{47}
$$

**主要式の読み方**

**ひと目で言うと**：デフォルト時刻を、独立な単位指数変数が積分強度に到達する時刻として作ると、デフォルトのある証券の価格は、割引率に強度を足した「デフォルトフリーのような」計算になる。強度を金利と共通の状態変数の関数にすれば、デフォルトと金利の従属も同じ枠組みで扱える。格付け遷移のモデルでは、生成行列の固有ベクトルが時間に依存しないと仮定すれば、全格付けの債券価格が、アフィン・モデルの和として閉形式で得られる。

**① 生存条件つきの満期の支払**

$$
\underbrace{E\Bigl(\exp\Bigl(-\int_t^Tr_s\,ds\Bigr)X\mathbf 1_{\{\tau\gt T\}}\Bigm|\mathcal F_t\Bigr)}_{\text{生存条件つきの満期の支払}}\qquad=\qquad\underbrace{\mathbf 1_{\{\tau\gt t\}}\,E\Bigl(\exp\Bigl(-\int_t^T(r_s+\lambda_s)\,ds\Bigr)X\Bigm|\mathcal G_t\Bigr)}_{\text{強度を足した割引}}
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$X\mathbf 1_{\{\tau\gt T\}}$$ | 生存した場合だけ払う満期の支払 | 基本ブロック1。A4 のデフォルト時刻 $$\tau$$ で決まる |
| $$\mathbf 1_{\{\tau\gt t\}}$$ | 時点 $$t$$ までの生存の指示 | 既にデフォルトしていれば価値は0（式(15)） |
| $$r_s+\lambda_s$$ | 強度を足した割引率 | $$\lambda=\lambda(X_s)$$（A1）。$$r_s=R(X_s)$$（A3）で、状態変数を通じて金利と従属できる |
| $$\mathcal G_t$$ | 状態の履歴 | $$E_1$$ が $$X$$ と独立（A2）なので、条件づけを $$\mathcal F_t$$ から置換できる（式(16)） |

**意味**：生存条件つきの支払は、生存確率 $$\exp(-\int\lambda)$$ を割引に取り込んだ、デフォルトフリーの請求権になる。

**結論へのつながり**：論文の主要な貢献「信用リスクのモデル化の技術的な問題を、通常の期間構造のモデル化と同じものに帰着させる」を表す。式(12)。デフォルトのある請求権の価格は、$$\lambda$$ を含む割引率だけで計算できる。

**② デフォルト時の支払**

$$
\underbrace{E\Bigl(\exp\Bigl(-\int_t^\tau r_s\,ds\Bigr)Z_\tau\Bigm|\mathcal F_t\Bigr)}_{\text{デフォルト時の支払}}\qquad=\qquad\underbrace{\mathbf 1_{\{\tau\gt t\}}\,E\Bigl(\int_t^TZ_s\lambda_s\exp\Bigl(-\int_t^s(r_u+\lambda_u)\,du\Bigr)ds\Bigm|\mathcal G_t\Bigr)}_{\text{事象密度で重みづけ}}
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$Z_\tau$$ | デフォルト時の支払（回収） | 基本ブロック3。$$Z$$ は $$\mathcal G_t$$ 適合の過程 |
| $$\lambda_s\exp(-\int_t^s\lambda_u\,du)$$ | $$s$$ にデフォルトする条件つき密度 | 式(14)の証明の鍵。$$\mathcal G_T$$ を条件にした密度 |
| $$\exp(-\int_t^s(r_u+\lambda_u)\,du)$$ | 生存と割引 | $$s$$ までの生存確率と無リスクの割引の積 |

**意味**：デフォルト時の支払は、各時点でデフォルトする確率密度で重みづけした支払の割引積分である。

**結論へのつながり**：部分回収（薄化、式(20)）や再決済つきの契約の評価にも使える。式(14)、(20)。

**③ 格付け別の債券価格**

$$
\underbrace{v^i(t,T)}_{\text{格付け }i\text{ の債券価格}}\qquad=\qquad\underbrace{\sum_{j=1}^{K-1}\beta_{ij}\,E\Bigl(\exp\Bigl(\int_t^T\bigl(\mu_j-R\bigr)du\Bigr)\Bigm|\mathcal G_t\Bigr)}_{\text{アフィン型の和}}
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$\beta_{ij}$$ | 固有ベクトルから決まる係数 | 式(35)。$$\sum_j\beta_{ij}=1$$。A5（時間不変の固有ベクトル）が条件 |
| $$\mu_j$$ | 生成行列の固有値 | 非負（A5）。$$\mu_j-R$$ がアフィンなら、各項が閉形式になる |
| $$R$$ | 無リスク短期金利 | $$R(X)$$（A3）。強度と共通の状態変数で従属 |

**意味**：各格付けの債券価格は、無リスクの割引に固有値の指数を掛けた汎関数の線形結合であり、全格付けが同じ状態変数の動きで同時にモデル化される。

**結論へのつながり**：状態変数が拡散なら、ファインマン＝カッツ（式(17)–(19)）で偏微分方程式に落とせ、Vasicek の例（式(39)–(46)）のように、スポット・スプレッドと感応度の較正が線形方程式になる。式(33)。

**主要式のつながり**

```
(A1, A2, A4) ──> 式(5): τ = inf{t: ∫λ(X)ds ≥ E1} ──> 式(6),(7)
                      │
                      └─(A2: E1 ⟂ X)─> 式(15),(16) ──> 式(12)–(14) ──> ①, ②
                                              │
                                              ├─ 拡散 ──> 式(17)–(19)
                                              └─ 薄化（部分回収）──> 式(20)
格付け遷移：式(21)–(28) ──> 式(29)
     └─(A5: A_X = B μ B⁻¹)──> 式(30)–(32) ──> 式(33)–(36) ──> ③
                                   └─ Vasicek 例 ──> 式(39)–(46)
```

**比較静学**

| 変化 | 結果 | 符号・式 |
|---|---|---|
| 強度 $$\lambda$$ が上昇 | 割引率 $$r+\lambda$$ が上がり、生存条件つきの支払の価値は下がる | 式(12)。$$\partial(r+\lambda)/\partial\lambda=1$$ |
| 回収率 $$\phi$$ が上昇 | 薄化後の強度 $$\lambda(1-\phi)$$ が下がり、価値は上がる | 式(20) |
| 金利 $$r$$ が上昇（強度が独立） | 価格は下がる | 式(12) |
| 金利と強度が従属 | 結合分布が価格に影響する。状態変数の共通化で扱える | 式(12)、例3.3の独立ケースとの比較 |
| 金利 $$r_t$$ が上昇 | スポット・スプレッドは $$-\sum_j\beta_{ij}\kappa_j$$ だけ変化（数値例では負） | 式(44)。例では $$\widehat{ds}_0$$ が負で、低格付けほど大きい |
| 格付けが低い | スプレッドが大きい（数値例） | 式(43)。例の $$\hat s_0$$ は AAA の16bp から CCC の255bp |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| デフォルト・リスクと金利の従属 | 強度と金利が共通の状態変数 $$X$$ の関数なので、従属を扱える（式(4)、(12)）。独立の場合も同じ枠組み（例3.3） |
| 社債スプレッドが国債利回りの上昇で縮む（Duffee (1996)）、低格付けほどその感応度が強い | 固有値を $$r$$ の1次関数にし、$$\kappa_j$$ を調整して感応度を合わせる（式(40)、(44)、(46)）。数値例では感応度 $$-0.2$$ から $$-2.0$$ |
| デフォルト率の時間変動（Fons & Kimball (1991)） | 遷移・デフォルト強度が状態変数の関数で、格付けの遷移の合間にも、スプレッドが確率的に変動する（式(23)） |
| 投資適格債のスプレッド期間構造は右上がり、CCC は右下がり | 較正後の期間構造（図1、2）。BB と B は右上がり、CCC は右下がり |
| 格付けに支払が結びついた契約（クレジット・トリガー、信用保険） | 命題5.4（式(36)）で、支払が格付けと状態変数に依存する請求権を評価できる |

## 3. 整理している点 {#sec3}

- デフォルト時刻の構成（式(5)）と、価格の計算（式(12)–(14)）が、$$E_1$$ の独立性という1点でつながっていることを示している。構成を知ることがシミュレーションと証明の両方の鍵になる。
- デフォルト・リスクと金利が従属する場合も、強度と金利を共通の状態変数の関数にするだけで、独立の場合と同じ形の計算になる。
- 格付けの遷移を含むモデルに、状態依存の強度と、固有ベクトルの時間不変という構造を課すことで、閉形式の価格が得られる。その代償（強度が負になりうる、利回り曲線が交差しうる）を、論文自身が明記している。

## 4. 対象外の現象 {#sec4}

### 4.1 論文が主張しないこと

- 両サイドのデフォルト（取引相手の双方のデフォルト）は扱わない。Duffie & Huang (1996) を参照するとされる。
- 再帰的な方法を使わない代わりに、一般性を犠牲にしており、片側の信用リスクだけの応用を対象とする（Duffie & Singleton、Duffie, Schroder & Skiadas との違い）。
- 実装と検証は本論文では行わない。パラメータと価格は、較正手順を確認するための例示である。
- 構造型モデル（Black & Scholes (1973)、Merton (1974)）との優劣は議論しない（他の文献に委ねる）。
- すべての強度が非負、格付け過程の確率的単調性が保たれることは、固有値の調整では保証できない。

### 4.2 結論を支えている暗黙の仮定

| 暗黙の仮定 | 外すと何が変わるか | 原論文は検討しているか |
|---|---|---|
| 同値マルチンゲール測度のもとで強度が $$\lambda(X_s)$$ の形で与えられる（本記事による補足） | 実際の確率のもとの強度との関係（リスクプレミアム）は別の問題になる | 論文は、条件つきで「非系統的なデフォルト・リスク」と経験的なハザード関数の関係を別稿で議論したと記す（プレプリントの要旨） |
| 債券はゼロ回収の割引債（5、6章、A6） | 回収を入れると、薄化（式(20)）や再決済の項（式(14)）の導入が必要 | 部分回収は例3.5、6章末で触れる |
| 強度の積分が有限（式(8)） | 爆発（有限時間に積分が無限大）があるとデフォルトが必ず起きる | 2章で明記 |
| $$A_X(s)$$ の固有ベクトルが時間に依存しない（A5） | 閉形式が失われ、数値近似（式(37)、(38)）かシミュレーションが必要 | 「強い仮定」と論文が明記 |

### 4.4 未解決の問い・今後の課題

- 強度の非負性と、格付け過程の確率的単調性を保つ、固有値の調整に代わる方法（論文は、すべての成分を自由に確率的にする方法と、デフォルト強度だけを確率的にする方法を挙げる）。
- 上記の方法を使うときの数値的な問題の扱い（論文は別稿で扱うとする）。
- 提案モデルの実証的な性能の検証（論文は、現在検討中とする）。

## 5. 主要文献・関連論文 {#sec5}

- **[前提]** Jarrow, R. A., Lando, D., & Turnbull, S. M. (1997). A Markov model for the term structure of credit risk spreads. *Review of Financial Studies*, 10(2), 481–523.
  - **位置づけ**: 格付け遷移のマルコフ連鎖でデフォルトをモデル化した論文。本論文の1.5〜1.8が一般化する対象。
- **[前提]** Jarrow, R. A., & Turnbull, S. M. (1995). Pricing derivatives on financial securities subject to credit risk. *Journal of Finance*, 50(1), 53–85.
  - **位置づけ**: ハザード率と回収で信用リスクを表す縮約型モデルの代表的な先行論文。デフォルトと金利の独立性を仮定する。
- **[前提]** Duffie, D., & Singleton, K. J. (1999). Modeling term structures of defaultable bonds. *Review of Financial Studies*, 12(4), 687–720.
  - **位置づけ**: 損失率と強度の積を割引率に足す枠組みで、本論文の薄化（式(20)）と対応する。
- **[手法]** Grandell, J. (1976). *Doubly stochastic Poisson processes* (Lecture Notes in Mathematics, Vol. 529). Springer.
  - **位置づけ**: Cox 過程（二重確率ポアソン過程）の数学的な基礎。本論文の式(8)、(9)の技術条件の出典。
- **[後続]** Lando, D. (2004). *Credit risk modeling: Theory and applications*. Princeton University Press.
  - **位置づけ**: 同じ著者による信用リスクのモデリングの教科書で、強度モデルと構造型モデルの両方を体系的に扱う。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
式(1),(2) ポアソン ──> 式(3) 第1ジャンプの構成
                          │
                 式(4),(5) Cox 過程のデフォルト時刻 ──> 式(6),(7) 生存確率
                          │
                 式(15) 補題 ──(A2: E1 ⟂ X)──> 式(16) ──> 式(12)–(14)（命題3.1）
                          │
        ┌─────────────────┼────────────────────┐
   式(17)–(19)           式(20)             式(21)–(28)
   ファインマン＝カッツ    薄化              格付け遷移
                                              │
                                  (A5) 式(30)–(32) ──> 式(33)–(36)
                                              │
                                      式(39)–(46) 較正
```

### A.1 使う道具

**T1 条件つき期待値の性質**

$$\{\tau\gt t\}$$ は $$\mathcal H_t$$ のアトムで、$$\{\tau\le t\}$$ 上では条件つき期待値が $$\mathbf 1_{\{\tau\ge T\}}$$ に対して0。

**T2 独立性による条件づけの置換**

$$E_1$$ が $$\mathcal G_T$$ と独立なら、$$\sigma(E_1)$$ を条件に加えても、$$\mathcal G_T$$ 可測な量の期待値は変わらない（Williams 1991, 9.7(k)）。

**T3 指数分布の構成**

単位指数変数 $$E_1$$ について $$P(E_1\gt x)=e^{-x}$$。

**T4 ファインマン＝カッツの公式**

式(17)の期待値は、式(19)のコーシー問題の解になる。

**T5 行列の対角化**

$$A=B\mu B^{-1}$$ のとき、$$\exp(\int A)=B\exp(\int\mu)B^{-1}$$（$$\mu$$ が対角で可換なとき）。

### A.2 式(6)、(7)の導出

**Step 1　条件つき生存確率**〔使う仮定：A2, A4〕

式(5)から $$\{\tau\gt t\}=\{\int_0^t\lambda(X_s)ds\lt E_1\}$$（連続性と単調性）。$$E_1$$ が $$X$$ と独立（A2）で $$P(E_1\gt x)=e^{-x}$$（T3）なので、$$X$$ の履歴を条件にすると $$P(\tau\gt t\mid X)=\exp(-\int_0^t\lambda(X_s)ds)$$（式(6)）。

**Step 2　期待値**〔使う仮定：A2〕

式(6)の両辺の期待値をとって式(7)。

**確認**

$$\lambda\equiv0$$ なら $$P(\tau\gt t)=1$$（デフォルトなし）。$$\lambda$$ が定数 $$h$$ なら $$e^{-ht}$$ で、指数分布。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(5)、$$E_1$$ の独立性 |
| 使う道具 | T3 |

### A.3 式(12)–(16)の導出（命題3.1）

**Step 1　補題(15)**〔使う仮定：A2〕

条件つき期待値は $$\{\tau\le t\}$$ 上で0で、$$\{\tau\gt t\}$$ は $$\mathcal H_t$$ のアトム（T1）。よって
$$E(\mathbf 1_{\{\tau\ge T\}}\mid\mathcal G_T\vee\mathcal H_t)=\mathbf 1_{\{\tau\gt t\}}\dfrac{P(\tau\ge T\mid\mathcal G_T)}{P(\tau\gt t\mid\mathcal G_T)}=\mathbf 1_{\{\tau\gt t\}}\dfrac{\exp(-\int_0^T\lambda_s\,ds)}{\exp(-\int_0^t\lambda_s\,ds)}=\mathbf 1_{\{\tau\gt t\}}\exp(-\int_t^T\lambda_s\,ds)$$（式(15)）。

**Step 2　$$\mathcal F_t$$ を $$\mathcal G_T\vee\mathcal H_t$$ に拡大**〔使う仮定：A2〕

タワー則で、$$E(\exp(-\int_t^Tr_s\,ds)X\mathbf 1_{\{\tau\gt T\}}\mid\mathcal F_t)=E(\exp(-\int_t^Tr_s\,ds)X\,E(\mathbf 1_{\{\tau\gt T\}}\mid\mathcal G_T\vee\mathcal H_t)\mid\mathcal F_t)$$。式(15)を代入して $$\mathbf 1_{\{\tau\gt t\}}E(\exp(-\int_t^T(r_s+\lambda_s)ds)X\mid\mathcal F_t)$$。

**Step 3　条件づけの置換（式(16)）**〔使う仮定：A2〕

$$E_1$$ が $$\sigma(\exp(-\int_t^T(r_s+\lambda_s)ds)X)\vee\mathcal G_t$$ と独立なので、$$\sigma(E_1)$$ を加えても期待値が変わらない（T2）。$$\mathcal G_t\subset\mathcal G_t\vee\mathcal H_t\subset\mathcal G_t\vee\sigma(E_1)$$ から、式(16)、そして式(12)を得る。

**Step 4　式(13)**〔使う仮定：A2〕

支払の流れ $$Y_s\mathbf 1_{\{\tau\gt s\}}$$ に、Step 1–3 と同じ議論を $$s$$ ごとに適用する。

**Step 5　式(14)**〔使う仮定：A2〕

$$\mathcal G_T$$ を条件に、$$s\gt t$$ でのデフォルト時刻の条件つき密度は $$\dfrac{\partial}{\partial s}P(\tau\le s\mid\tau\gt t,\mathcal G_T)=\lambda_s\exp(-\int_t^s\lambda_u\,du)$$。これを $$Z_s\exp(-\int_t^sr_u\,du)$$ に掛けて $$s$$ で積分し、Step 3 と同様に $$\mathcal F_t$$ を $$\mathcal G_t$$ に置き換えて式(14)。

**確認**

$$\lambda\equiv0$$ なら式(12)はデフォルトフリー割引債の価格、式(14)は0。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(5)、(6)、補題(15) |
| 使う道具 | T1, T2 |

### A.4 式(30)–(32)の導出（補題5.2）

**Step 1　固有値と固有ベクトル**〔使う仮定：A5〕

$$A_X(s)B=B\mu(X_s)$$（式(30)）。

**Step 2　$$P_X$$ の微分**〔使う仮定：A5〕

$$P_X(s,t)=BE_X(s,t)B^{-1}$$（式(32)）の $$s$$ 微分は、$$\dfrac{\partial}{\partial s}\exp(\int_s^t\mu_j(X_u)du)=-\mu_j(X_s)\exp(\int_s^t\mu_j(X_u)du)$$ より $$B(-\mu(X_s))E_X(s,t)B^{-1}$$。

**Step 3　後ろ向き方程式**〔使う仮定：A5〕

$$B(-\mu(X_s))E_XB^{-1}=-A_X(s)BE_XB^{-1}=-A_X(s)P_X(s,t)$$（Step 1 の $$B\mu=A_XB$$ を使用）、つまり式(27)。

**Step 4　マルコフ連鎖であること**〔使う仮定：A5〕

Gill & Johansen (1990) の4.4節から、式(27)の解は一意で、強度の密度が $$A_X(s)$$ のマルコフ連鎖の遷移行列になる。よって $$P_X$$ は遷移確率。

**確認**

$$s=t$$ で $$E_X(t,t)=I$$ より $$P_X(t,t)=BIB^{-1}=I$$（式(37)と整合）。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(27)、(30) |
| 使う道具 | T5 |

### A.5 式(33)–(35)の導出（命題5.3）

**Step 1　デフォルト確率**〔使う仮定：A5〕

状態変数を条件にしたデフォルト確率は $$P_X(t,T)_{i,K}=\sum_{j=1}^{K}b_{ij}\exp(\int_t^T\mu_j(X_u)du)\,b^{-1}_{jK}$$（式(32)の $$(i,K)$$ 成分）。

**Step 2　最後の項**〔使う仮定：A5〕

$$\mu_K=0$$ なので $$j=K$$ の項は $$b_{iK}b^{-1}_{KK}$$。行の和が0（最終行が0）から $$b_{iK}b^{-1}_{KK}=1$$。

**Step 3　生存確率**〔使う仮定：A5〕

$$1-P_X(t,T)_{i,K}=1-1-\sum_{j=1}^{K-1}b_{ij}b^{-1}_{jK}\exp(\int\mu_j)=\sum_{j=1}^{K-1}\beta_{ij}\exp(\int_t^T\mu_j)$$、$$\beta_{ij}=-b_{ij}b^{-1}_{jK}$$（式(34)、(35)）。

**Step 4　価格式**〔使う仮定：A3, A5〕

命題5.1（式(29)）に代入し、指数をまとめて式(33)。

**確認**

$$T=t$$ で $$v^i(t,t)=1$$ より $$\sum_j\beta_{ij}=1$$。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(29)、(32) |
| 使う道具 | T5 |

### A.6 式(42)–(44)の導出（命題6.1）

**Step 1　対数微分**〔使う仮定：A5〕

$$-\dfrac{\partial}{\partial T}\log v^i(t,T)=\dfrac{-1}{v^i(t,T)}\dfrac{\partial}{\partial T}v^i(t,T)$$。式(41)の $$T$$ 微分は、各項で $$E\bigl((\gamma_j+(\kappa_j-1)r_T)\exp(\int_t^T(\gamma_j+\kappa_jr_s-r_s)ds)\mid\mathcal G_t\bigr)$$。

**Step 2　極限 $$T\to t$$**〔使う仮定：A5〕

優収束定理（条件つき期待値）で極限をとり、$$v^i(t,t)=1$$ を使うと、$$-\sum_j\beta_{ij}(\gamma_j+(\kappa_j-1)r_t)$$。

**Step 3　短期金利を引く**〔使う仮定：A5〕

$$\sum_j\beta_{ij}=1$$ から $$\sum_j\beta_{ij}r_t=r_t$$。よって $$s^i(r_t)=-\sum_j\beta_{ij}(\gamma_j+\kappa_jr_t)+r_t-r_t=-\sum_j\beta_{ij}\mu_j(r_t)$$（式(43)）。

**Step 4　感応度**〔使う仮定：A5〕

式(43)を $$r_t$$ で微分して式(44)。

**確認**

全 $$\mu_j$$ が0（デフォルトなし）なら $$s^i=0$$。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | 式(41)、$$\sum_j\beta_{ij}=1$$ |
| 使う道具 | 優収束定理 |

### A.7 著者について

**David Lando（デイヴィッド・ランド）**
- **アカデミックな経歴**: コペンハーゲン大学の数学・経済学の合同プログラムで修士号を取得し、Cornell University で統計学の博士号を取得。コペンハーゲン大学（応用数学・統計学）の教授を経て、2003年からコペンハーゲン・ビジネススクールのファイナンス教授。
- **主要な研究分野**: 信用リスクのモデル化とリスク管理、デリバティブ市場、期間構造理論。
- **評判・学術的貢献**: 信用リスクのモデル化に関する単著（Princeton University Press、2004年）。Econometrica、Journal of Financial Economics、Review of Financial Studies などに論文。2012年にデンマーク王立科学文学アカデミーの会員。2012年から2022年まで、Center for Financial Frictions（FRIC）のディレクター。2014年から2018年にデンマーク金融監督庁の理事会の副議長、2018年から2020年に議長を務めた。

---

**© 1998 Kluwer Academic Publishers**（原論文の著作権表記）. 本記事は原論文の数理モデルの整理であり、式と仮定は原論文に基づく。
{% endraw %}
