---
layout: post
title: "信用創造RBCと自己資金調達する財政赤字：Angeletos–Lian–Wolf接続のTheoretical Minimum"
date: 2026-10-12 00:00:00 +0900
categories: [金融論, マクロ経済学, 財政]
math: true
---

# 信用創造の層を加えた世代重複NKモデル：預金創造・準備預金・満期構造と自己ファイナンスの3経路
### Theoretical Minimum

> **本稿の位置付け．** Angeletos–Lian–Wolf「Can Deficits Finance Themselves?」（以下ALW）は，世代重複（永続的な若者）と価格硬直性を持つモデルで，財政調整を遅らせるほど赤字が増税なしに賄われる割合 $\nu$（自己ファイナンス度）が1に近づくことを示した．ただし，ALWは現金のない経済で，政府債務は一期の名目債だけである．一方，信用創造の4稿（静学稿・動学稿・付利稿・RBC稿）は，預金契約・準備預金・規制・満期構造を明示する．本稿の目的は，ALWのモデルに信用創造の層を最小限の形で差し込み，(i) 赤字支出が預金・準備の創造として会計に現れること，(ii) 準備預金の無利子が自己ファイナンスの第3の経路 $\nu_m$ になること，(iii) 満期構造が債務侵食の経路を拡大し，$\nu_y$ から $\nu_p$ への再配分を生むことを，ALWの記法のまま一つの体系として示すことにある．

---

## 目次

- [1. モデルの要約](#sec1)
  * [1.1 モデルにした事象の説明](#sec1-1)
  * [1.2 モデルのセットアップと仮定](#sec1-2)
  * [1.3 変数リスト](#sec1-3)
  * [1.4 導出（定式化）](#sec1-4)
  * [1.5 モデルの主要な帰結](#sec1-5)
  * [1.6 モデルの直感的解釈](#sec1-6)
  * [1.7 構造図](#sec1-7)
- [2. 設例](#sec2)
  * [2.1 設例1：具体的な数値を代入したケース](#sec2-1)
  * [2.2 設例2：変数のまま一般的な関係を示したケース](#sec2-2)
  * [2.3 設例3：応用設例](#sec2-3)
- [付録：数理モデルの詳細](#appendix)
- [参考文献](#references)

---

## 1. モデルの要約 {#sec1}

> **この章の要点．**
>
> - **問い：** 世代重複NKモデルの自己ファイナンス（ALW）は，預金・準備・満期という信用創造の層を加えても成り立つか．成り立つなら，3つの財源（税基盤・債務侵食・金融抑圧）の配分はどう変わるか．
> - **答え：** 自己ファイナンス度は $\nu=1-\varphi_e\tau_d/(1-\beta\rho_d)$ という同じ形で成り立つ．ただし，債務侵食の経路は，債務の満期に応じて拡大し，有効なフィリップス曲線の傾きが $\kappa$ から $\kappa M$（$M\geq1$ は満期の乗数）に変わる．準備預金の無利子は，債務残高に比例する暗黙の税として第3の経路 $\nu_m$ を作るが，大きさは小さく，税基盤の経路を置き換えるだけで総和 $\nu$ をほとんど変えない．
> - **鍵となる仮定：** 実質金利は一定（$\phi_{mon}=0$）で，名目長期債の価格はインフレ期待で動く（B3）．赤字支出は預金と準備の創造として行われる（B2）．

### 1.1 モデルにした事象の説明 {#sec1-1}

**対象とする事象．** 政府が家計に一時的な給付（赤字 $\varepsilon_0$）を出す．財政調整が遅い（$\tau_d$ が小さい）と，家計は給付を使い，需要が増え，所得税収が増える．ALWは，このブームの税収の現在価値と，予想外のインフレによる債務の実質価値の下落が，初期赤字を賄う割合を $\nu$ として定式化した．現実には，給付は銀行預金への入金として行われ，日銀の準備が同額増える．また，政府債務は長期債が中心で，インフレ期待が上がると時価が下がる．

**従来の見方と問題点．**

| 従来の見方 | 何が捉えられていないか |
|---|---|
| RBC稿・CCL稿（信用創造RBC） | 価格が伸縮的で，赤字は需要を刺激しない（リカード等価，または資本のクラウドアウト）．自己ファイナンスは生じない |
| ALW | 現金のない経済．債務は一期の名目債のみ．預金・準備・規制・満期がなく，債務侵食は予想外のインフレだけで決まる |
| 標準的なNK（代表的家計） | リカード等価が成り立ち，赤字は需要に影響しない（$\nu=0$） |

**本稿の転換点．** ALWの変数に，信用創造稿の概念を一つずつ対応させる．

| ALW | 信用創造稿での対応 | 本稿の扱い |
|---|---|---|
| 民間の金融資産 $d_t$ | 家計の預金と国債 $D+b^{H}$（資本 $K=0$ のとき，RBC稿の $a=K+ND$ は $a=ND$） | 預金創造と同じ会計恒等式（式(2)） |
| 赤字ショック $\varepsilon_0$ | 政府の支出に伴う預金と準備の同時増加（静学稿の $\Delta D=\Delta L$ に似た恒等式） | $\Delta D=\Delta(\text{準備})=\varepsilon_0$ |
| 債務侵食 $\nu_p$ | 名目債権の時価変動（動学稿の満期 $\delta$，CCL稿の $Q^{B}$） | 満期の乗数 $M$（式(3)） |
| 財政調整 $\tau_d$ | 一括税 $\tau_t$ の調整 | そのまま |
| 実質金利ルール $r_t=\phi_{mon}y_t$ | 付利稿の床：$i^{M}$ が名目の市場金利を決める | $\phi_{mon}=0$：$i^{M}_t=r+\mathbb E_t\pi_{t+1}$ |
| なし | 準備預金の無利子（付利稿，RBC稿の $\Sigma$） | 第3の経路 $\nu_m$（式(2)） |

**モデル化の方針．**

- **残すもの：** ALWの家計（永続的な若者，社会基金），NKPC，財政ルール $t_t=\tau_yy_t+\tau_d(d_t+\varepsilon_t)-\varepsilon_t$，実質金利一定．信用創造稿の，準備預金，預金，長期債の時価評価．
- **捨象するもの：** 資本と貸出（ALWのベースラインは $\alpha=0$）．したがって，銀行ウェッジ（RBC稿の $c-i$），純資産，公的貸出（CCL稿）は，本稿には現れない．ALWの金融政策ルール $\phi_{mon}\neq0$ と定理2は扱わない．
- **本稿の貢献の限定：** ALWの自己ファイナンスの定理そのものは，本稿の貢献ではない．本稿の貢献は，債務侵食の満期依存（$M$）と，準備預金の経路（$\nu_m$）を，ALWの IGBC の分解に加えた点に限る．ALWの結果の再現（$\nu\approx0.95$）は，付録A.9で数値的に確認した．

### 1.2 モデルのセットアップと仮定 {#sec1-2}

**主体と時間・情報構造．** 無限期間，四半期，各期に確率 $1-\omega$ で退出する家計（アニュイティ市場あり）．時点0に一度だけ，予想外の給付 $\varepsilon_0$ が支給される．以後は完全予見．変数は定常状態からの乖離（産出で割る）で，ALWの記法に従う．

| 仮定 | 内容 | なぜ必要か／外すとどうなるか |
|---|---|---|
| B1：ALWの基本設定 | $\omega<1$（社会基金つき），$\tau_y>0$，財政ルール(Eq.6)，線形生産，カルボ型のNKPC，実質金利一定（$\phi_{mon}=0$），定常で $r^{ss}=1/\beta-1$ | $\omega=1$ ではリカード等価で $\nu=0$ |
| B2：預金創造と準備 | 給付は，政府の中銀勘定から家計の預金へ入金される．銀行は，債務（準備と国債）のうち割合 $s_D$ を預金で賄う．預金に所要準備率 $\varphi$ がかかり，法定準備の付利は $i^{R}$ | 外すと金融抑圧収入 $\Sigma$ がなくなる（$\nu_m=0$） |
| B3：満期構造 | 債務の割合 $s_L$ が長期債（償還後の残存率 $\delta_B$，利付），残りは一期債．時価で評価．実質金利が一定なので，名目利回りは $r+\mathbb E_t\pi_{t+1}$ | $s_L=0$ なら ALW |
| B4：日付0の規約 | 時点0の予想外の再評価（債務侵食）は，時点0の家計資産 $d_0$ に直ちに入る．これは IGBC（ALWの式(9)）が閉じるための会計上の規約である | 外すと $\nu>1$ になりうる（付録A.5） |
| B5：期間プレミアムなし | 長期債の期待超過収益はゼロ（$\xi_B=0$） | CCL稿の期間プレミアムは，本稿では扱わない |

**用語定義．**

**自己ファイナンス度 $\nu$** 初期赤字 $\varepsilon_0$ のうち，将来の増税（財政調整）によらずに賄われる割合．本稿では $\nu=\nu_y+\nu_p+\nu_m$．

**準備預金チャンネル $\nu_m$** 預金の増加に伴う法定準備の無利子による，統合政府の収入の現在価値を $\varepsilon_0$ で割ったもの．

**満期の乗数 $M$** 長期債の時価下落（期待インフレ経路による）を含む債務侵食が，一期債のそれの何倍かを表す．$M\equiv1+s_L\zeta_B\rho_d/(1-\zeta_B\rho_d)\geq1$．

### 1.3 変数リスト {#sec1-3}

ALWの変数（$y_t,\pi_t,d_t,\varepsilon_t,\nu,\chi,\rho_d,F_1,F_2$ と，パラメータ $\beta,\omega,\kappa,\tau_y,\tau_d,s_B\equiv D^{ss}/Y^{ss}$）に，次を加える．

| 記号 | 表す内容 | 分類 | 確率的性質 | 定義域・単位 |
|---|---|---|---|---|
| $s_D$ | 債務のうち預金で賄われる割合（銀行と日銀の保有） | パラメータ | 確定値 | $[0,1]$ |
| $\varphi,\ i^{R}$ | 所要準備率，法定準備への付利 | パラメータ（規制） | 確定値 | $\varphi\in[0,1)$，$0\leq i^{R}\leq\bar\imath$ |
| $\varsigma$ | 債務あたりの準備預金収入 $(\bar\imath-i^{R})\varphi s_D$ | 恒等式で定まる量 | 確定値 | $[0,\bar\imath]$ |
| $\delta_B,\ s_L$ | 長期債の残存率，債務に占める長期債の割合 | パラメータ | 確定値 | $(0,1)$，$[0,1]$ |
| $\zeta_B$ | $\delta_B/(1+\bar\imath)$ | 恒等式で定まる量 | 確定値 | $(0,1)$ |
| $u_t$ | 債務の実質収益のサプライズ | 内生変数 | 確定値 | — |
| $M,\ x,\ \varphi_e$ | 満期の乗数，侵食強度 $x\equiv\chi s_B\kappa/(1-\beta\rho_d)$，初期状態の縮小率 $1/(1+xM)$ | 内生変数 | 確定値 | $M\geq1$ |
| $\nu_y,\nu_p,\nu_m$ | 税基盤・債務侵食・準備預金のチャンネル | 内生変数 | 確定値 | $[0,1]$ |
| $e_0$ | 時点0の実効初期状態 $d_0+\varepsilon_0=\varphi_e\varepsilon_0$ | 内生変数 | 確定値 | — |

### 1.4 導出（定式化） {#sec1-4}

**Step 1（消費関数：ALWの式(11)(12)に，準備預金の収入を実効税として加える）．** 準備預金の無利子は，銀行の株主（家計）の負担なので，家計の可処分所得に対しては，債務に比例する暗黙の税 $\varsigma d_t$ として働く．実質金利が一定のもとで：

{% raw %}
$$y_t=c_t=(1-\beta\omega)\Big[d_t+\mathbb E_t\sum_{k=0}^{\infty}(\beta\omega)^k\big(y_{t+k}-t^{\rm eff}_{t+k}\big)\Big],\qquad t^{\rm eff}_t=\tau_yy_t+\tau_d(d_t+\varepsilon_t)-\varepsilon_t+\varsigma d_t\tag{1}$$
{% endraw %}

> **式(1)の意図．** $\varsigma=0$ なら，ALWの式(12)と財政ルール(Eq.6)に一致する．

（→ [付録A.1](#appA1)）

**Step 2（預金創造と準備預金の収入）．** 時点0の給付は，預金と準備の同時増加として現れる（$\Delta D=\Delta M_{\rm res}=\varepsilon_0$）．債務のうち銀行・日銀の保有分に対応する預金は $D_t=s_D\,(\text{債務})$ で，所要準備は $\varphi D_t$，その無利子による収入は：

{% raw %}
$$\Sigma^{\circ}_t=\varsigma\,d_t,\qquad \varsigma=(\bar\imath-i^{R})\,\varphi\,s_D,\qquad \bar\imath=\frac1\beta-1\tag{2}$$
{% endraw %}

> **式(2)の意図．** RBC稿の $\Sigma_t=(i_{t-1}-i^{R})\varphi D_{t-1}$ を，債務 $d$ に比例する形で書いたもの．$\varsigma\leq\bar\imath$ であり，ALWの較正（$\bar\imath=0.002$）では，$\varsigma$ は高々0.002である．

（→ [付録A.2](#appA2)）

**Step 3（満期構造と債務の実質収益のサプライズ）．** 長期債の時価は，名目利回りが $r+\mathbb E_t\pi_{t+1}$（実質金利は一定）のもとで，期待インフレ経路が上がると下がる．時点 $t+1$ の実質収益のサプライズは：

{% raw %}
$$u_{t+1}=-\big(\pi_{t+1}-\mathbb E_t\pi_{t+1}\big)-s_L\,\zeta_B\sum_{k=0}^{\infty}\zeta_B^{k}\,(\mathbb E_{t+1}-\mathbb E_t)\,\pi_{t+2+k}\tag{3}$$
{% endraw %}

> **式(3)の意図．** 第1項は一期債にも共通する予想外のインフレ（ALWの $\nu_p$），第2項は長期債の時価下落である．時点0に限れば，債務の実質価値の減少（債務侵食）は $s_B\,|u_0|$ になる．

（→ [付録A.3](#appA3)）

**Step 4（時価ベースの政府予算制約）．** 家計・銀行・日銀が保有する債務の実質時価 $d_t$ の動学は，期待収益が $\beta^{-1}$ に等しいので：

{% raw %}
$$d_{t+1}=\beta^{-1}\big(d_t-t^{\rm eff}_t\big)+s_B\,u_{t+1}\tag{4}$$
{% endraw %}

（→ [付録A.4](#appA4)）

**Step 5（均衡体系）．** ALWの式(14)に，式(1)–(4)を反映する：

{% raw %}
$$\begin{aligned}
\textbf{(I)}\quad & y_t=\text{式(1)（集計需要）}\\
\textbf{(II)}\quad & \pi_t=\kappa y_t+\beta\,\mathbb E_t\pi_{t+1}\quad\text{（NKPC）}\\
\textbf{(III)}\quad & d_{t+1}=\beta^{-1}(1-\tau_d-\varsigma)\,d_t+\beta^{-1}(1-\tau_d)\,\varepsilon_t-\beta^{-1}\tau_yy_t+s_Bu_{t+1}\quad\text{（式(4)）}\\
\textbf{(IV)}\quad & d_0=s_Bu_0\quad\text{（B4：日付0のサプライズが $d_0$ に入る）}
\end{aligned}\tag{5}$$
{% endraw %}

（→ [付録A.5](#appA5)）

**Step 6（閉形式解：$\varsigma=0$）．** $y_t=\chi(d_t+\varepsilon_t)$，$\mathbb E_t[d_{t+1}]=\rho_d(d_t+\varepsilon_t)$ の形を仮定すると，ALWの式(15)の $\chi,\rho_d$ は満期に依存しない．時点0の状態だけが縮小する：

{% raw %}
$$e_0\equiv d_0+\varepsilon_0=\varphi_e\,\varepsilon_0,\qquad \varphi_e=\frac{1}{1+xM},\qquad x=\frac{\chi\,s_B\,\kappa}{1-\beta\rho_d},\qquad M=1+\frac{s_L\zeta_B\rho_d}{1-\zeta_B\rho_d}\tag{6}$$
{% endraw %}

{% raw %}
$$y_k=\chi\,\rho_d^{k}\,e_0,\qquad \pi_k=\frac{\kappa}{1-\beta\rho_d}\,y_k$$
{% endraw %}

{% raw %}
$$\chi=\frac{F_1}{1-F_2\dfrac{1-\beta\omega}{1-\beta\omega\rho_d}},\qquad \rho_d=\beta^{-1}\big(1-\tau_d-\tau_y\chi\big)\tag{7}$$
{% endraw %}

> **式(6)(7)の意図．** $s_L=0$ なら $M=1$ で，ALWの結果（債務侵食が $d_0$ に入る整合的な会計）になる．満期が長いほど $M$ が大きく，債務侵食 $xM$ が大きい．

（→ [付録A.6](#appA6)）

**Step 7（異時点間予算制約の分解）．** 式(5)を $\beta^{k}$ で割り引いて足し上げ，ノンポンジ条件を課すと：

{% raw %}
$$\varepsilon_0=\underbrace{\tau_d\sum_{k}\beta^{k}(d_k+\varepsilon_k)}_{\text{① 財政調整}}+\underbrace{\tau_y\sum_{k}\beta^{k}y_k}_{\text{② 税基盤 }\nu_y\varepsilon_0}+\underbrace{(-s_Bu_0)}_{\text{③ 債務侵食 }\nu_p\varepsilon_0}+\underbrace{\varsigma\sum_{k}\beta^{k}d_k}_{\text{④ 準備預金 }\nu_m\varepsilon_0}\tag{8}$$
{% endraw %}

（→ [付録A.7](#appA7)）

### 1.5 モデルの主要な帰結 {#sec1-5}

{% raw %}
$$\boxed{\begin{aligned}
\nu&=\nu_y+\nu_p+\nu_m=1-\frac{\varphi_e\,\tau_d}{1-\beta\rho_d},\qquad \varphi_e=\frac{1}{1+xM}\\
\nu_p&=\frac{xM}{1+xM},\quad \nu_y=\frac{\tau_y\chi\,\varphi_e}{1-\beta\rho_d},\qquad \frac{\nu_p}{\nu_y}=\frac{s_B\,\kappa\,M}{\tau_y}\quad(\varsigma=0)
\end{aligned}}\tag{9}$$
{% endraw %}

*満期は，ALWの $\kappa$ を $\kappa M$ に置き換える．自己ファイナンス度の総和は，財政調整の速度 $\tau_d$ と初期状態の縮小率で決まる．*

> **定理（信用創造つきALW）．** 仮定 B1–B5 のもと，次が成り立つ．
>
> **含意1（ALWへの帰着）．** $s_L=0$，$\varsigma=0$ のとき，式(9)の $\nu_y/\nu_p$ の比は，ALWの式(20)に一致する．
>
> **含意2（満期による再配分）．** 満期が長いほど（$s_L,\delta_B$ が大きいほど）$\nu_p$ は増え，$\nu_y$ は減る．ただし，$\nu$ の総和はほとんど変わらない（わずかに増える）．初期の産出応答 $y_0$ と累積乗数は低下する（債務侵食が家計の資産を目減りさせる）．
>
> **含意3（準備預金チャンネル）．** $\nu_m\approx\varsigma\,\beta\rho_d\varphi_e/(1-\beta\rho_d)$ で，$\nu_m\leq O(\varsigma/\tau_d)$．債務に比例する暗黙の税として，税基盤のチャンネルを置き換え，$\nu$ の総和はほとんど変えない．
>
> **含意4（極限）．** $\tau_d\to0$ で $\nu\to1$（ALWの定理1）．$\omega\to1$（有限の $\tau_d$）で $\nu\to0$．満期や準備預金は，この極限を変えない．
>
> **含意5（信用創造RBCとの対比）．** RBC稿・CCL稿（価格伸縮）では，赤字は需要を刺激せず，$\nu=0$ である．ALWの自己ファイナンスは，価格硬直性と $\omega<1$ の両方に依存する．

**符号表．**

| 変化 | 結果 | 符号 | 根拠 |
|---|---|---|---|
| $\tau_d\downarrow$ | $\nu$ | 上昇（$\to1$） | [A.8](#appA8) |
| $s_L\uparrow$（長期債の割合） | $\nu_p$ | 上昇 | [A.6](#appA6) |
| $s_L\uparrow$ | $\nu_y$，$y_0$，累積乗数 | 低下 | [A.6](#appA6) |
| $s_L\uparrow$ | $\nu$ | 微増 | [A.8](#appA8) |
| $\delta_B\uparrow$ | $M$ | 上昇 | [A.6](#appA6) |
| $\varsigma\uparrow$ | $\nu_m$ | 上昇，$\nu_y$ は低下 | [A.8](#appA8) |
| $\kappa\uparrow$ | $\nu_p/\nu_y$ | 上昇 | [A.8](#appA8) |
| $\omega\to1$ | $\nu$ | $\to0$ | [A.8](#appA8) |

**このモデルが主張しないこと．**

- 資本・貸出・銀行ウェッジ・純資産・公的貸出は含まない．RBC稿・CCL稿の実物部分とは，$K=0$ の場合にしか対応しない（①＆②の統合記事で扱う）．
- ALWの金融政策ルール（$\phi_{mon}\neq0$，テイラー型）と定理2・定理3は再導出しない．長期債の価格は，実質金利が一定という前提でのみ，期待インフレで決まる．
- 期間プレミアム，ゼロ金利制約，非リカード的な消費者（PIH型の家計）の混在は扱わない．ALWの較正（支出者家計 $\mu=0.073$）も再現していないので，本稿の $\nu$ の値は，ALWの論文の値と一致しない場合がある（2.1節で比較）．
- 数値はALWの較正（$\beta=0.998$，$\omega=0.865$，$\tau_y=0.33$，$s_B=1.04$）に，本稿の仮置きの $s_L,\delta_B,\varsigma$ を加えたものである．

### 1.6 モデルの直感的解釈 {#sec1-6}

**極端な状態の解剖．**

- **$s_L=0$，$\varsigma=0$：** ALWの一期債のモデルに戻る．
- **$s_L=1$，$\delta_B\to1$：** 永久債に近い．期待インフレが少し上がるだけで，債務の時価が大きく下がる．債務侵食が大きくなり，家計の資産が減る．
- **$\varphi=0$ または $i^{R}=\bar\imath$：** $\varsigma=0$，準備預金のチャンネルが消える．
- **$\kappa=0$：** インフレがなく，債務侵食は満期にかかわらずゼロ（$\nu=\nu_y$）．

**「なぜ〜か」の問答．**

- **なぜ満期が長いと，債務侵食が大きくなるのか．** 実質金利が一定のとき，期待インフレが上がると名目利回りが上がり，長期債の価格が下がる．一期債は満期が来るまで価格が変わらないが，長期債は将来のインフレ経路の全体を織り込む．
- **なぜ債務侵食が大きいのに，$\nu$ の総和は変わらないのか．** 総和は，将来の増税（財政調整）で賄われる部分 $\varphi_e\tau_d/(1-\beta\rho_d)$ だけで決まる．債務侵食は，税基盤の経路から財源を奪う（需要が弱くなる）ので，二つの経路の間の再配分になる．
- **なぜ準備預金のチャンネルは小さいのか．** 所要準備率は1未満で，実質金利が低い（ALWの較正では年0.8%）ため，債務あたりの収入 $\varsigma$ は高々実質金利の水準である．

**日常の比喩．** 給付金（赤字）が出ると，みんなが使って店の売上が増え，その消費税収が給付金を賄う（税基盤）．国が長期の固定金利で借りていれば，物価が上がると，その借金の実質価値が下がる（債務侵食）．ただし，その国債を持つ人も目減りするので，使えるお金が減り，売上の増加は弱くなる．

### 1.7 構造図 {#sec1-7}

```
   赤字 ε0：政府が預金に入金（ΔD = Δ準備 = ε0）           式(2)
                       │
                       ▼
   家計：d + (y - t_eff) の現在価値で消費                   式(1)
   （OLG：割引 βω，前倒し）──→ y = χ (d + ε)                 式(6)(7)
        │                                │
        ▼                                ▼
   NKPC：π = κ̃ y                  税収 τ_y y（② ν_y）
        │
        ▼
   債務の実質収益サプライズ u                                式(3)
   一期債：-π       長期債：-π - s_L ζ_B Σ ζ_B^k π(+1+k)
        │                       │
        ▼                       ▼
   ③ 債務侵食 ν_p        d_0 = s_B u_0（資産の目減り）      式(5)
        │
   ④ 準備預金 ν_m = ς Σ β^k d_k        ① 財政調整 τ_d(…)    式(8)
                       │
                       ▼
          ε0 = ① + ② + ③ + ④（IGBC）                       式(8)
```

図の読み方：赤字から需要・インフレ・債務の実質収益へ進み，四つの財源が合計で $\varepsilon_0$ になる．債務侵食は家計の資産に戻る（$d_0$）ので，税基盤と競合する．

---

## 2. 設例 {#sec2}

### 2.1 設例1：具体的な数値を代入したケース {#sec2-1}

ALWの較正で，$\tau_d=0.026$（中位の調整速度）の定常応答を手計算で求め，満期を加える．

| 記号 | 値 | 意味 |
|---|---|---|
| $\beta,\ \omega$ | 0.998，0.865 | 割引因子，生存確率 |
| $\tau_y,\ \tau_d$ | 0.33，0.026 | 所得税率，財政調整の速度 |
| $\kappa,\ s_B$ | 0.01，1.04 | NKPCの傾き，債務・産出比 |
| $s_L,\ \delta_B$ | 1，0.975 | 長期債の割合，長期債の残存率（満期のデュレーション約7年） |

**Step 1（集計需要の係数，ALWの式(13)）．**

{% raw %}
$$\begin{aligned}
\beta\omega&=0.86327,\quad 1-\beta\omega=0.13673,\quad \Delta=1-\omega(1-\tau_d)=1-0.84251=0.15749\\
F_1&=\frac{0.13673\times0.135\times0.974}{0.15749}=0.11417,\qquad F_2=1-\frac{0.135\times0.33}{0.15749}=0.71712
\end{aligned}$$
{% endraw %}

**Step 2（固定点，式(7)）．** $\rho_d$ の初期値を0.90として反復する：

| 反復 | $\rho_d$ | $\chi$ | 更新後の $\rho_d$ |
|---|---|---|---|
| 1 | 0.9000 | 0.2037 | 0.9086 |
| 2 | 0.9086 | 0.2094 | 0.9068 |
| 3 | 0.9068 | 0.2081 | 0.9071 |

収束値は $\rho_d=0.9071$，$\chi=0.2083$．$1-\beta\rho_d=0.09471$，$\kappa/(1-\beta\rho_d)=0.1056$．

**Step 3（一期債：ALW，式(6)）．** $x=0.2083\times1.04\times0.1056=0.02287$，$M=1$：

{% raw %}
$$\varphi_e=\frac{1}{1.02287}=0.97764,\quad \nu_p=0.02235,\quad \nu_y=\frac{0.33\times0.2083\times0.97764}{0.09471}=0.7096,\quad \nu=0.7319$$
{% endraw %}

**Step 4（長期債，式(6)）．** $\zeta_B=0.975\times0.998=0.97305$，$\zeta_B\rho_d=0.88266$：

{% raw %}
$$M=1+\frac{0.88266}{1-0.88266}=8.522,\quad xM=0.1949,\quad \varphi_e=\frac{1}{1.1949}=0.8369$$
{% endraw %}

{% raw %}
$$\nu_p=\frac{0.1949}{1.1949}=0.1631,\qquad \nu_y=0.7096\times\frac{0.8369}{0.97764}=0.6074,\qquad \nu=1-\frac{0.8369\times0.026}{0.09471}=0.7702$$
{% endraw %}

{% raw %}
$$\boxed{\text{一期債：}\nu_y=0.710,\ \nu_p=0.022,\ \nu=0.732;\quad \text{長期債：}\nu_y=0.607,\ \nu_p=0.163,\ \nu=0.770}$$
{% endraw %}

**結果の読み方．** 満期を長くすると，債務侵食は $0.022\to0.163$（7.3倍）に増え，税基盤は $0.710\to0.607$ に減る．総和は $0.732\to0.770$ へ，わずかに増える．初期の産出応答は $y_0=\chi\varphi_e\varepsilon_0$ から，$0.2036\to0.1743$ に下がる．

**検算．**

- 式(8)：一期債では，① $=\tau_d\varphi_e/(1-\beta\rho_d)=0.2683$，② $+$ ③ $=0.7096+0.0224=0.7320$，合計 $1.000$．長期債では，① $=0.2298$，② $=0.6074$，③ $=0.1631$，合計 $1.000$．
- 式(9)：$\nu_p/\nu_y=1.04\times0.01\times8.522/0.33=0.2686$，$0.1631/0.6074=0.2685$．
- 一期債の累積乗数は $\chi\varphi_e/(1-\beta\rho_d)=2.150$．
- ALWの記事の値（$\tau_d=0.026$ で $\nu\approx0.8$）との差は，ALWの較正に支出者家計（$\mu=0.073$）が含まれることによる（本稿では含まない）．$\tau_d=0.004$ では $\nu=0.953$ で，記事の $\approx0.95$ に一致する．

### 2.2 設例2：変数のまま一般的な関係を示したケース {#sec2-2}

**閉形式解．** 導出は付録A.6，A.8に示した．

{% raw %}
$$\nu=1-\frac{\tau_d}{(1-\beta\rho_d)(1+xM)},\qquad \frac{\nu_p}{\nu_y}=\frac{s_B\,\kappa\,M}{\tau_y},\qquad \nu_m\approx\varsigma\,\frac{\beta\rho_d\varphi_e}{1-\beta\rho_d}\tag{10}$$
{% endraw %}

{% raw %}
$$M=1+\frac{s_L\zeta_B\rho_d}{1-\zeta_B\rho_d},\qquad \frac{\partial M}{\partial\zeta_B}=\frac{s_L\rho_d}{(1-\zeta_B\rho_d)^{2}}>0,\qquad \lim_{\delta_B\to0}M=1\tag{11}$$
{% endraw %}

**特殊ケース・極限．**

- **$s_L=0$（一期債）：** $M=1$．ALWの式(20)．
- **$\kappa=0$：** $x=0$，$\nu_p=0$，$\nu=\nu_y$．
- **$\tau_d\to0$：** $1-\beta\rho_d\to\tau_y\chi$，$\nu\to1$．
- **$\varsigma=0$，$M=1$，$\kappa\to\infty$：** $\nu_p/\nu_y\to\infty$．ALWの「完全伸縮価格で債務侵食のみ」の極限（ただし，ここでは $\chi$ の低下が同時に起きる）．
- **$\omega\to1$：** $F_1\to0$，$\chi\to0$，$\nu\to0$（リカード等価）．

**整合性の確認．** $\zeta_B\rho_d<1$ なので $M$ は有限．$x\geq0$ なので $\varphi_e\in(0,1]$，$\nu_p\in[0,1)$．$\nu\leq1$ は，式(8)の ① が非負であることから従う．$\varsigma\leq\bar\imath$ の範囲で，$\nu_m$ は式(10)に従う（小さい）．

### 2.3 設例3：応用設例 {#sec2-3}

**追加設定．** 完全予見の経路を，線形方程式（式(1)–(5)）の直接解（900期）で求める．$\varsigma=0$ では閉形式（式(6)(9)）と一致し，IGBC（式(8)）が1.0000で閉じる．

**結果 (a)：満期の効果（$\kappa=0.01$）．**

| $\tau_d$ | 債 | $\nu_y$ | $\nu_p$ | $\nu$ | 累積乗数 |
|---|---|---|---|---|---|
| 0.085 | 一期債 | 0.352 | 0.011 | 0.363 | 1.07 |
| 0.085 | 長期債 | 0.332 | 0.068 | 0.400 | 1.01 |
| 0.026 | 一期債 | 0.709 | 0.022 | 0.732 | 2.15 |
| 0.026 | 長期債 | 0.607 | 0.163 | 0.770 | 1.84 |
| 0.004 | 一期債 | 0.924 | 0.029 | 0.953 | 2.80 |
| 0.004 | 長期債 | 0.742 | 0.220 | 0.963 | 2.25 |

**結果 (b)：価格がより伸縮的なケース（$\kappa=0.10$）．**

| $\tau_d$ | 債 | $\nu_y$ | $\nu_p$ | $\nu$ | 累積乗数 |
|---|---|---|---|---|---|
| 0.085 | 一期債 | 0.320 | 0.101 | 0.421 | 0.97 |
| 0.085 | 長期債 | 0.206 | 0.422 | 0.628 | 0.62 |
| 0.026 | 一期債 | 0.591 | 0.186 | 0.777 | 1.79 |
| 0.026 | 長期債 | 0.246 | 0.661 | 0.907 | 0.75 |
| 0.004 | 一期債 | 0.732 | 0.231 | 0.963 | 2.22 |
| 0.004 | 長期債 | 0.249 | 0.739 | 0.987 | 0.76 |

$\kappa=0.10$ で満期が長いと，債務侵食が主役になる（$\tau_d=0.026$ で $\nu_p=0.66$）．一方，累積乗数は2.15（$\kappa=0.01$，$\tau_d=0.004$ 一期債）から0.76に落ちる．

**結果 (c)：満期の構成と残存率（$\tau_d=0.004$，$\kappa=0.01$）．**

| $s_L$（$\delta_B=0.975$） | $\nu_y$ | $\nu_p$ | $\nu$ | $y_0$ |
|---|---|---|---|---|
| 0 | 0.924 | 0.029 | 0.953 | 0.233 |
| 0.5 | 0.823 | 0.135 | 0.959 | 0.208 |
| 1 | 0.742 | 0.220 | 0.963 | 0.188 |

| $\delta_B$（$s_L=1$） | 0.90 | 0.95 | 0.975 | 0.99 |
|---|---|---|---|---|
| $\nu_p$ | 0.146 | 0.189 | 0.220 | 0.245 |
| $\nu_y$ | 0.813 | 0.773 | 0.742 | 0.719 |

**結果 (d)：準備預金チャンネル（$\tau_d=0.004$，$\kappa=0.01$，一期債）．**

| $\varsigma$ | 対応する $\varphi s_D$ | $\nu_y$ | $\nu_m$ | $\nu$ | 累積乗数 |
|---|---|---|---|---|---|
| 0 | 0 | 0.9243 | 0 | 0.9534 | 2.80 |
| $8.0\times10^{-5}$ | 0.04（$\varphi=0.1$，$s_D=0.4$） | 0.9235 | 0.0009 | 0.9534 | 2.80 |
| $5\times10^{-4}$ | 0.25 | 0.9192 | 0.0053 | 0.9535 | 2.79 |
| $1\times10^{-3}$ | 0.50 | 0.9142 | 0.0106 | 0.9536 | 2.77 |
| $2\times10^{-3}$ | 1.00（上限） | 0.9042 | 0.0211 | 0.9538 | 2.74 |

上限（$\varphi s_D=1$，$i^{R}=0$）でも $\nu_m=0.021$ で，$\nu$ の総和は $0.9534\to0.9538$ とほとんど変わらない．準備預金のチャンネルは，税基盤の経路をほぼ一対一で置き換える．

**結果 (e)：世代の更新（$\tau_d=0.004$）．** $\omega=0.865,\ 0.95,\ 0.99$ で $\nu=0.953,\ 0.880,\ 0.580$．$\omega\to1$ で $\nu\to0$（リカード等価）．

**インプリケーション．**

1. **満期は，自己ファイナンスの財源を，実物から物価へ付け替える：** 長期債が多いほど，債務侵食が増え，税基盤が減る．$\nu$ の総和はほとんど変わらないが，ブームの大きさ（$y_0$，累積乗数）は小さくなる．債務侵食の増加は，債権者（家計・銀行・日銀）への課税でもある．
2. **準備預金は，小さく，代替的である：** 法定準備の無利子を財源にしても，自己ファイナンスの総和は変わらない．実物的な費用（RBC稿・CCL稿の資本の縮小）を払って得る収入は，ALWの世界では，需要側の経路と重なる．
3. **信用創造RBCとの接続の限界：** ALWの自己ファイナンスは，需要が産出を決める世界（価格硬直）の結果である．RBC稿・CCL稿の，資本と銀行ウェッジを持つ価格伸縮の世界とは，$\nu=0$ と $\nu\approx1$ という両極にある．両者を接続する記事（①＆②）では，この両極の間を $\kappa$ で補間する．

---

## 付録：数理モデルの詳細 {#appendix}

**対象読者と前提知識．** 1変数の微分積分，等比級数，期待値の線形性，連立1次方程式までを既知とする．NKPCの前向き解，時価の漸化式，ノンポンジ条件は A.0 で先に確認する．各Stepは「入力→操作→出力」の形で書く．

**式番号の対応表．**

| 本稿の式 | 付録の節 | 内容 |
|---|---|---|
| 式(1) | [A.1](#appA1) | 消費関数と $F_1,F_2$ |
| 式(2) | [A.2](#appA2) | 準備預金の収入 |
| 式(3) | [A.3](#appA3) | 長期債の実質収益のサプライズ |
| 式(4) | [A.4](#appA4) | 時価ベースの予算制約 |
| 式(5) | [A.5](#appA5) | 均衡体系と日付0の規約 |
| 式(6)(7)(9) | [A.6](#appA6) | 閉形式解 |
| 式(8) | [A.7](#appA7) | IGBCの分解 |
| 式(10)(11)，符号表 | [A.8](#appA8) | 比較静学・極限・$\nu_m$ |
| 2.1–2.3節の数値 | [A.9](#appA9) | 数値解法と検算 |

### A.0 準備：本付録で使う数学の道具 {#appA0}

**(T1) NKPCの前向き解．** $\pi_t=\kappa y_t+\beta\pi_{t+1}$ で $\pi$ が有界なら，$\pi_t=\kappa\sum_{k\geq0}\beta^{k}y_{t+k}$．$y_{t+k}=y_t\rho^{k}$ なら $\pi_t=\kappa y_t/(1-\beta\rho)$．例：$\kappa=0.01$，$\beta\rho=0.9$ なら $\pi=0.1\,y$．

**(T2) 価格の漸化式の線形化．** $Q_t(1+i_t)=k+\delta Q_{t+1}$ で定常の $\bar Q=1$ のとき，$Q^{\circ}_t=\zeta Q^{\circ}_{t+1}-i^{\circ}_t/(1+\bar\imath)$，$\zeta=\delta/(1+\bar\imath)$．解は $Q^{\circ}_t=-\sum_{k}\zeta^{k}i^{\circ}_{t+k}/(1+\bar\imath)$（RBC稿(T4)，CCL稿A.5）．

**(T3) ノンポンジ条件と逐次代入．** $d_t=t_t+\beta d_{t+1}$ を繰り返し代入すると $d_0=\sum_{k<K}\beta^{k}t_k+\beta^{K}d_K$．$\beta^{K}d_K\to0$ なら $d_0=\sum_k\beta^{k}t_k$．

**(T4) 等比級数の期待．** $y_k=y_0\rho^{k}$ のとき，$\sum_k\beta^{k}y_k=y_0/(1-\beta\rho)$．

**(T5) 不動点問題．** $z=f(z)$ を $z^{(n+1)}=f(z^{(n)})$ で反復する．収束条件は $|f'|<1$．例：$z=0.5+0.2z$ は $z=0.625$．

### A.1 消費関数と $F_1,F_2$（式(1)） {#appA1}

**目的．** ALWの式(13)の $F_1,F_2$ を導く．**入力．** 式(1)で $\varsigma=0$，B1．

**Step 1．** 入力：$S_y=\sum(\beta\omega)^{k}\mathbb E y_{t+k}$，$S_d=\sum(\beta\omega)^{k}\mathbb E d_{t+k}$．操作：予算制約 $\beta d_{t+1}=(1-\tau_d)(d_t+\varepsilon_t)-\tau_yy_t$ に $(\beta\omega)^{k}$ を掛けて $k$ で足す．左辺は $\sum(\beta\omega)^{k}\beta d_{t+k+1}=(S_d-d_t)/\omega$．右辺は $(1-\tau_d)(S_d+\varepsilon_t)-\tau_yS_y$（$\varepsilon$ は時点 $t$ のみ）．出力：$S_d=\dfrac{d_t+\omega(1-\tau_d)\varepsilon_t-\omega\tau_yS_y}{\Delta}$，$\Delta=1-\omega(1-\tau_d)>0$．

**Step 2．** 入力：式(1)．$y_t=(1-\beta\omega)[d_t+S_y-\tau_yS_y-\tau_d(S_d+\varepsilon_t)+\varepsilon_t]$．操作：Step 1 の $S_d$ を代入する．$d_t$ の係数は $1-\tau_d/\Delta=(1-\omega)(1-\tau_d)/\Delta$．$\varepsilon_t$ の係数は $(1-\tau_d)(\Delta-\tau_d\omega)/\Delta=(1-\tau_d)(1-\omega)/\Delta$．$S_y$ の係数は $1-\tau_y+\tau_d\omega\tau_y/\Delta=1-\tau_y(1-\omega)/\Delta$．出力：$y_t=F_1(d_t+\varepsilon_t)+F_2(1-\beta\omega)S_y$．$F_1=(1-\beta\omega)(1-\omega)(1-\tau_d)/\Delta$，$F_2=1-(1-\omega)\tau_y/\Delta$（ALWの式(13)）．$\blacksquare$

### A.2 準備預金の収入（式(2)） {#appA2}

**Step 1．** 入力：RBC稿A.7 Step 1．操作：預金 $D=s_D\times$（債務）．所要準備 $\varphi D$ は，付利 $i^{R}$ で，市場金利 $\bar\imath$ との差が統合政府の収入になる．出力：$\Sigma=(\bar\imath-i^{R})\varphi D=(\bar\imath-i^{R})\varphi s_D\cdot(\text{債務})$．

**Step 2．** 入力：Step 1．操作：債務の偏差 $d_t$（産出比）を掛け，$\varsigma=(\bar\imath-i^{R})\varphi s_D$ とおく．出力：$\Sigma^{\circ}_t=\varsigma d_t$．

**Step 3（上限）．** $0\leq i^{R}\leq\bar\imath$，$\varphi<1$，$s_D\leq1$ より $\varsigma\leq\bar\imath$．

**Step 4（家計への帰着）．** 銀行の株主は家計なので，$\Sigma$ は家計の所得を $\Sigma$ だけ減らす．式(1)の実効税 $t^{\rm eff}=t+\Sigma^{\circ}$．$\blacksquare$

### A.3 長期債の実質収益のサプライズ（式(3)） {#appA3}

**目的．** 式(3)を導く．**入力．** B3，(T2)．

**Step 1．** 入力：長期債の名目時価 $Q_t(1+i^{n}_t)=c+1-\delta_B+\delta_B\mathbb E_tQ_{t+1}$，名目利回り $i^{n}_t=r+\mathbb E_t\pi_{t+1}$（実質金利 $r$ は一定）．操作：(T2) で線形化．$i^{n\circ}_t=\mathbb E_t\pi_{t+1}$．出力：$Q^{\circ}_t=-\sum_k\zeta_B^{k}\,\mathbb E_t\pi_{t+1+k}/(1+\bar\imath)$．

**Step 2．** 入力：$t$ から $t+1$ への実質総収益 $=\dfrac{c+1-\delta_B+\delta_BQ_{t+1}}{Q_t(1+\pi_{t+1})}$．操作：期待値は $1+r$．サプライズは，$\delta_B(Q^{\circ}_{t+1}-\mathbb E_tQ^{\circ}_{t+1})-(\pi_{t+1}-\mathbb E_t\pi_{t+1})$．出力：長期債のサプライズ $=-(\pi_{t+1}-\mathbb E_t\pi_{t+1})-\dfrac{\delta_B}{1+\bar\imath}\sum_k\zeta_B^{k}(\mathbb E_{t+1}-\mathbb E_t)\pi_{t+2+k}$．$\delta_B/(1+\bar\imath)=\zeta_B$．

**Step 3．** 入力：債務の割合 $s_L$ が長期債，$1-s_L$ が一期債（サプライズは第1項のみ）．操作：加重平均．出力：式(3)．$\blacksquare$

### A.4 時価ベースの予算制約（式(4)） {#appA4}

**Step 1．** 入力：実質時価 $d_t$，期待収益 $\beta^{-1}$（A.3）．操作：税 $t^{\rm eff}_t$ を払った残りが $\beta^{-1}$ で増える．出力：$\mathbb E_td_{t+1}=\beta^{-1}(d_t-t^{\rm eff}_t)$．

**Step 2．** 入力：実質収益のサプライズ $u_{t+1}$，債務の産出比 $s_B$．操作：サプライズは債務残高 $s_B$ に掛かる．出力：$d_{t+1}=\beta^{-1}(d_t-t^{\rm eff}_t)+s_Bu_{t+1}$（式(4)）．一期債・$\varsigma=0$ なら，ALWの式(5)の債務侵食項 $-s_B(\pi_{t+1}-\mathbb E_t\pi_{t+1})$ に一致する．$\blacksquare$

### A.5 均衡体系と日付0の規約（式(5)） {#appA5}

**Step 1．** 入力：式(4)．操作：$t^{\rm eff}$ に式(1)を代入し，$d_t$ の係数をまとめる．$d_t-\tau_d(d_t+\varepsilon_t)-\varsigma d_t=(1-\tau_d-\varsigma)d_t-\tau_d\varepsilon_t$，$\varepsilon_t$ の項は $+\varepsilon_t$．出力：$d_{t+1}=\beta^{-1}[(1-\tau_d-\varsigma)d_t+(1-\tau_d)\varepsilon_t-\tau_yy_t]+s_Bu_{t+1}$（式(5)の(III)）．

**Step 2（日付0の規約）．** 時点0の給付は予想外で，同時に起きる予想外のインフレが債務の実質価値を $s_Bu_0$ だけ変える．B4 は，これを $d_0$ に入れる．この規約は，ALWの IGBC（式(9)）が閉じるために必要である：$d_0=0$（再評価を無視）のまま ALWの式(9)の ③ を加えると，$\kappa=0.10$ で $\nu>1$ になる（再計算で $\nu=1.25$）．

**Step 3．** 入力：式(5)の(IV)．操作：$d_0+\varepsilon_0=\varepsilon_0+s_Bu_0=\varepsilon_0-(\text{債務侵食})$．出力：実効初期状態 $e_0=\varphi_e\varepsilon_0$，$\varphi_e<1$．$\blacksquare$

### A.6 閉形式解（式(6)(7)(9)） {#appA6}

**目的．** $\varsigma=0$ の閉形式解を導く．**入力．** A.1，A.3，A.5，(T1)，(T4)．

**Step 1（$\chi$）．** 入力：$y_k=\chi\rho_d^{k}e_0$（仮定）．操作：$S_y=\chi e_0/(1-\beta\omega\rho_d)$ を $y_0=F_1e_0+F_2(1-\beta\omega)S_y$ に代入し，$y_0=\chi e_0$ で割る．出力：$\chi=F_1+F_2(1-\beta\omega)\chi/(1-\beta\omega\rho_d)$．$\chi$ について解く：$\chi=F_1/[1-F_2(1-\beta\omega)/(1-\beta\omega\rho_d)]$．

**Step 2（$\rho_d$）．** 入力：式(5)(III)（$\varsigma=0$，$k\geq1$ で $\varepsilon=0$，$u=0$）．操作：$\mathbb E d_{k+1}=\beta^{-1}(1-\tau_d)d_k-\beta^{-1}\tau_y\chi d_k$．時点0は $e_0=d_0+\varepsilon_0$ を使う．出力：$\rho_d=\beta^{-1}(1-\tau_d-\tau_y\chi)$．固定点問題を (T5) で解く．

**Step 3（インフレ）．** 入力：(T1)，$y_k=\chi\rho_d^{k}e_0$．出力：$\pi_k=\kappa y_k/(1-\beta\rho_d)$．

**Step 4（債務侵食）．** 入力：式(3)，時点0．操作：$\pi_{1+k}=\pi_0\rho_d^{1+k}$ を代入．$\sum_k\zeta_B^{k+1}\pi_{1+k}=\pi_0\zeta_B\rho_d/(1-\zeta_B\rho_d)$．出力：$-s_Bu_0=s_B\pi_0\big[1+s_L\zeta_B\rho_d/(1-\zeta_B\rho_d)\big]=s_B\pi_0M$．

**Step 5（日付0の固定点）．** 入力：$d_0=s_Bu_0=-s_B\pi_0M$，$\pi_0=\kappa y_0/(1-\beta\rho_d)=\kappa\chi e_0/(1-\beta\rho_d)$．操作：$e_0=\varepsilon_0+d_0=\varepsilon_0-xM\,e_0$（$x=\chi s_B\kappa/(1-\beta\rho_d)$）．$e_0$ について解く（$1+xM>0$）．出力：$e_0=\varepsilon_0/(1+xM)$（式(6)）．

**Step 6．** 入力：$\nu_p=-s_Bu_0/\varepsilon_0=xMe_0/\varepsilon_0$．出力：$\nu_p=xM/(1+xM)$．$\nu_y=\tau_y\sum\beta^{k}y_k/\varepsilon_0=\tau_y\chi\varphi_e/(1-\beta\rho_d)$．$\blacksquare$

### A.7 IGBCの分解（式(8)） {#appA7}

**Step 1．** 入力：式(5)(III)（$\varsigma$ を含む）．操作：$d_t=t^{\rm eff}_t+\beta d_{t+1}-\beta s_Bu_{t+1}$ と書き直し，(T3) の逐次代入を行う．時点1以降は完全予見なので，サプライズ $u_{k+1}$（$k\geq0$）は0．出力：$d_0=\sum_k\beta^{k}t^{\rm eff}_k$．

**Step 2．** 入力：$d_0=s_Bu_0$（式(5)の(IV)）．操作：$t^{\rm eff}_k=\tau_yy_k+\tau_d(d_k+\varepsilon_k)+\varsigma d_k-\varepsilon_k$ を代入する．$\sum\beta^{k}\varepsilon_k=\varepsilon_0$．出力：$s_Bu_0=\tau_y\sum\beta^{k}y_k+\tau_d\sum\beta^{k}(d_k+\varepsilon_k)+\varsigma\sum\beta^{k}d_k-\varepsilon_0$．

**Step 3．** 入力：Step 2．操作：$\varepsilon_0$ を左辺に移す．出力：$\varepsilon_0=①+②+(-s_Bu_0)+④$（式(8)）．$\blacksquare$

### A.8 比較静学・極限・$\nu_m$（式(10)(11)，符号表） {#appA8}

**Step 1（$\nu$ の総和）．** 入力：式(8)．操作：$\varsigma=0$ では，① $=\tau_d\sum\beta^{k}(d_k+\varepsilon_k)=\tau_de_0/(1-\beta\rho_d)$（$d_k+\varepsilon_k=\rho_d^{k}e_0$）．出力：$\nu=1-\varphi_e\tau_d/(1-\beta\rho_d)$（式(9)）．$\tau_d\to0$ で $\rho_d\to$ 有限，$1-\beta\rho_d\to\tau_y\chi>0$ なので $\nu\to1$．

**Step 2（チャンネル比）．** 入力：A.6．操作：$\nu_p/\nu_y=xM(1-\beta\rho_d)/(\tau_y\chi)$．$x$ の定義から $x(1-\beta\rho_d)/\chi=s_B\kappa$．出力：$\nu_p/\nu_y=s_B\kappa M/\tau_y$．

**Step 3（$M$ の微分）．** 入力：$M=1+s_L\zeta_B\rho_d/(1-\zeta_B\rho_d)$．操作：商の微分．$u=s_L\zeta_B\rho_d$，$v=1-\zeta_B\rho_d$．$M'=s_L\rho_d[(1-\zeta_B\rho_d)+\zeta_B\rho_d]/v^{2}$．出力：$\partial M/\partial\zeta_B=s_L\rho_d/(1-\zeta_B\rho_d)^{2}>0$．

**Step 4（$\nu$ の微増）．** 入力：$M\uparrow$ なら $\varphi_e\downarrow$．$\chi,\rho_d$ は不変．操作：$\nu=1-\varphi_e\tau_d/(1-\beta\rho_d)$．出力：$\nu$ は増加（$\varphi_e$ が小さいほど ① が小さい）．

**Step 5（$\nu_m$ の1次近似）．** 入力：式(8) ④，$\varsigma$ が小さい．操作：$d_k\approx\rho_d^{k-1}\cdot\rho_de_0$（$k\geq1$）．$\sum_{k\geq1}\beta^{k}d_k\approx\beta\rho_de_0/(1-\beta\rho_d)$．出力：$\nu_m\approx\varsigma\beta\rho_d\varphi_e/(1-\beta\rho_d)$（式(10)）．設例：$\varsigma=2\times10^{-3}$ で $0.0214$（数値解 $0.0211$）．

**Step 6（$\omega\to1$）．** $F_1\propto(1-\omega)\to0$ より $\chi\to0$，$y\to0$，$\nu_y,\nu_p\to0$．①のみ：$\nu\to0$．$\blacksquare$

### A.9 数値解法と検算 {#appA9}

**数値解法．** 未知数 $y_0,\dots,y_{T-1}$（$T=900$）．(i) 債務を $d_t=a_td_0+\sum_sB_{ts}y_s+c_t$ と書く．(ii) 式(1)を，$y$ と $d_0$ の連立1次方程式にする．(iii) 債務侵食 $-s_Bu_0$ を $y$ の線形関数にする（式(3)，(T1)）．(iv) $d_0=s_Bu_0$ を代入して，$y$ を解く．

| 項目 | 導出式での値 | 本文の値 |
|---|---|---|
| $F_1$（$\tau_d=0.026$） | $0.13673\times0.135\times0.974/0.15749=0.11417$ | 0.11417 |
| $F_2$ | $1-0.04455/0.15749=0.71712$ | 0.71712 |
| $\chi,\rho_d$（固定点） | 反復3回で $0.2081,0.9071$ | 0.2083，0.9071 |
| $x$ | $0.2083\times1.04\times0.1056=0.02287$ | 0.02287 |
| $\nu$（一期債） | $1-0.97764\times0.026/0.09471=0.7316$ | 0.7317（数値解） |
| $\nu_p$（長期債） | $0.1949/1.1949=0.1631$ | 0.1631（数値解） |
| $\nu_p/\nu_y$ | $0.2686$ | $0.1631/0.6073=0.2686$ |
| IGBC（式(8)） | ①+②+③+④ | 1.0000（全ケース） |
| ALWの $\nu$（$\tau_d=0.004$） | 0.953 | 記事の $\approx0.95$ |
| 累積乗数（$\tau_d=0.085$） | 1.07 | 記事の $\approx1.11$ |

累積乗数は，ALWの較正に支出者家計を含まない本稿では，記事の値より約4%小さい．

---

## 参考文献 {#references}

### 原典（Classic Papers）

- Angeletos, G.-M., Lian, C. and Wolf, C. K. (2024). “Can Deficits Finance Themselves?” NBER Working Paper No. 31185（ご提示の解説記事に基づく）．
- Blanchard, O. J. (1985). “Debt, Deficits, and Finite Horizons.” *Journal of Political Economy*, 93(2), 223–247.
- Yaari, M. E. (1965). “Uncertain Lifetime, Life Insurance, and the Theory of the Consumer.” *Review of Economic Studies*, 32(2), 137–150.

### 関連・発展論文（Contemporary Literature）

- DeLong, J. B. and Summers, L. H. (2012). “Fiscal Policy in a Depressed Economy.” *Brookings Papers on Economic Activity*（書誌情報は要確認）．
- Leeper, E. M. (1991). “Equilibria under ‘active’ and ‘passive’ monetary and fiscal policies.” *Journal of Monetary Economics*, 27(1), 129–147.
- Cochrane, J. H. (2023). *The Fiscal Theory of the Price Level.* Princeton University Press.
- Goodfriend, M. (2002). “Interest on Reserves and Monetary Policy.” *Federal Reserve Bank of New York Economic Policy Review*, 8(1), 77–84.

書誌情報は記憶に基づく．引用前に原典で確認されたい．

### 本稿が前提とする記事

- 「信用創造の理論的最小限モデルの政府部門入りRBCへの接続」（2026-10-11，RBC稿）．
- 「信用創造RBCと統合政府バランスシート」（2026-10-12，CCL稿）と，その拡張稿．
- 「Can Deficits Finance Themselves?」（2026-05-26，ALW解説記事）．

**© 2026 Kaoru**. 本記事および数理モデルの著作権は著者に帰属します．学術的リサーチ・引用・非営利目的の共有は [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/deed.ja) の下で許可されます．商用利用・共同研究・モデルの拡張は別途ご相談ください．
