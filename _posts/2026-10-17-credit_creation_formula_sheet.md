---
layout: post
title: "信用創造の理論的最小限モデル"
date: 2026-10-17 00:00:00 +0900
categories: [金融論, 契約理論]
math: true
---

{% raw %}
# 信用創造の理論的最小限モデル
### Theoretical Minimum

---

## 目次

- [1. 数理モデル](#sec1)
- [2. 核心となる説明できる現象](#sec2)
- [3. モデルが特にうまく整理している点](#sec3)
- [4. モデルの対象外](#sec4)
- [付録：導出手順](#appendix)

---

## 1. 数理モデル {#sec1}


### 1.0 前提

**主体・時間**

預金者・銀行・借り手の3主体、1契約期間の静学モデル。規制当局は主体ではなく外生的な制約。$\sigma,\pi$ は共通知識。

**A1 契約の分離**

預金契約（消費寄託）と貸出契約（金銭消費貸借）は法的に別個の双務契約。参加制約（PC）を別々に立てる根拠。

**A2 期待値基準**

各主体はリスク中立で、参加条件は期待値で評価する。外すとテールリスクがPCに入り、規制の必要性の出発点が失われる。

**A3 情報対称**

$\sigma,\pi$ は共通知識。外すと誘因整合性制約（IC）が必要になる。本稿はPCのみを扱う。

**A4 同時記帳**

貸出実行時に貸出資産と預金負債が同額認識される。会計恒等式であり、最適化の選択変数ではない。

**A5 銀行の行動**

預金金利（調達コスト）の最小化と貸出金利（スプレッド）の最大化を、両PCと恒等式の下で行う。

**A6 市場構造**

貸出金利の一意な均衡値を決める市場構造は特定しない。PCだけでは金利は区間としてしか決まらない。

**A7 ペイオフ**

預金者：存続なら利息 $i_D$、破綻なら元本の割合 $1-\rho_B$ を失う。貸し手：返済なら利息 $r$、デフォルトなら元本の割合 $1-\rho$ を失う。借り手：返済時に $R(x)-x(1+r)$、デフォルト時は0（有限責任）。

**A8 正則条件**

$$
\sigma\in(0,1],\ \pi\in[0,1),\ \rho\in[0,1],\ \rho_B\in[0,1),\ \rho_0-\ell+(1-\sigma)(1-\rho_B)\ge0,\ R(0)\ge0
$$

| 記号・項目 | 意味 |
|---|---|
| PC | 参加制約：参加しない場合の利得と比べて期待利得が減らないこと |
| IC | 誘因整合性制約（本稿では扱わない） |
| $\Delta D=\Delta L$ | 会計恒等式（選択変数ではない） |


### 1.1 契約①　消費寄託契約（預金）

**預金者の期待利得**

$$
E[\Pi_{dep}]=D\Big[\underbrace{\sigma i_D}_{\text{存続時の利息}}-\underbrace{(1-\sigma)(1-\rho_B)}_{\text{破綻時の期待元本損失}}+\underbrace{\ell}_{\text{流動性便益}}-\underbrace{\rho_0}_{\text{機会費用}}\Big]\tag{1}
$$

**参加制約　PC-dep**

$$
\underbrace{\sigma i_D-(1-\sigma)(1-\rho_B)+\ell-\rho_0}_{\text{預金1円あたりの期待利得 }E[\Pi_{dep}]/D}\ \ge\ \underbrace{0}_{\text{留保水準}}\tag{2}
$$

**均衡預金金利**

$$
i_D^{\ast}=\dfrac{\underbrace{\rho_0-\ell}_{\text{機会費用−流動性便益}}+\underbrace{(1-\sigma)(1-\rho_B)}_{\text{破綻リスクの補償}}}{\underbrace{\sigma}_{\text{利息を受け取れる確率}}}\tag{3}
$$

> 銀行は調達コスト $i_D D$ を最小化するので、PC-dep を等号で満たす点を選ぶ

| 記号・項目 | 意味 |
|---|---|
| $D$ | 預金残高 |
| $i_D$ | 預金金利 |
| $\sigma$ | 銀行の存続確率 |
| $\rho_B$ | 銀行破綻時の預金回収率 |
| $\ell$ | 流動性プレミアム |
| $\rho_0$ | 預金者の機会費用 |


### 1.2 契約②　金銭消費貸借契約（貸出）

**貸し手のPC　PC-lend**

$$
\underbrace{(1-\pi)\,r}_{\text{返済時の期待利息}}-\underbrace{\pi(1-\rho)}_{\text{期待元本損失}}\ge0\iff r\ge r^{\ast}_{lend}\equiv\dfrac{\underbrace{\pi(1-\rho)}_{\text{期待損失率}}}{\underbrace{1-\pi}_{\text{返済確率}}}\tag{4}
$$

**借り手のPC　PC-borrow**

$$
\underbrace{R(x)}_{\text{事業収益}}\ge\underbrace{x(1+r)}_{\text{元利返済額}}\iff r\le r^{\ast}_{mono}\equiv\underbrace{\dfrac{R(x)}{x}}_{\text{事業収益率}}-1\tag{5}
$$

**実行可能区間**

$$
r\in\Big[\underbrace{r^{\ast}_{lend}}_{\text{貸し手の下限}},\ \underbrace{r^{\ast}_{mono}}_{\text{借り手の上限}}\Big]\tag{6}
$$

$$
\underbrace{\dfrac{\pi(1-\rho)}{1-\pi}}_{\text{貸し手の下限}}\le\underbrace{\dfrac{R(x)}{x}-1}_{\text{借り手の上限}}\tag{7}
$$

> 下の式は区間が非空となる条件。満たさなければ貸出契約は成立しない

| 記号・項目 | 意味 |
|---|---|
| $x$ | 貸付元本 |
| $r$ | 約定金利 |
| $\pi$ | 借り手のデフォルト確率 |
| $\rho$ | デフォルト時回収率 |
| $R(x)$ | 借り手の期待収益（$R'>0,\ R''\le0$） |


### 1.3 結合と銀行の最適化

**会計恒等式**

$$
\underbrace{\Delta D}_{\text{新規預金（負債）}}=\underbrace{\Delta L}_{\text{新規貸出（資産）}}=x\tag{8}
$$

> 選択変数ではなく複式簿記の恒等関係。増分（フロー）についての式であり、残高の等式ではない

**銀行の統合問題**

$$
\max_{r,\,i_D}\ \Pi_{bank}=x\Big[\underbrace{(1-\pi)r}_{\text{期待利息収入}}-\underbrace{\pi(1-\rho)}_{\text{期待貸倒損失}}-\underbrace{i_D}_{\text{預金の調達コスト}}\Big]\tag{9}
$$

$$
\text{s.t.}\ \ PC\text{-}dep,\ PC\text{-}lend,\ PC\text{-}borrow
$$

> $r$ について増加、$i_D$ について減少。単独の最適解は角点 $(r^{\ast}_{mono},\,i_D^{\ast})$（貸し手が完全な価格支配力を持つ場合）

**損益分岐金利**

$$
r_{BE}\equiv\dfrac{\underbrace{\pi(1-\rho)}_{\text{期待貸倒損失}}+\underbrace{i_D^{\ast}}_{\text{預金の調達コスト}}}{\underbrace{1-\pi}_{\text{返済確率}}}\tag{10}
$$

$$
\underbrace{r_{BE}-r^{\ast}_{lend}}_{\text{損益分岐と下限の差}}=\underbrace{\dfrac{i_D^{\ast}}{1-\pi}}_{\text{調達コスト分の上乗せ}}\ge0\tag{11}
$$

**期待マージン率**

$$
m(r)=\underbrace{(1-\pi)r}_{\text{期待利息収入}}-\underbrace{\pi(1-\rho)}_{\text{期待貸倒損失}}-\underbrace{i_D^{\ast}}_{\text{調達コスト}}\tag{12}
$$

> $m(r)\ge0\iff r\ge r_{BE}$

| 記号・項目 | 意味 |
|---|---|
| $\Pi_{bank}$ | 銀行の期待利潤 |
| $r_{BE}$ | 銀行全体の損益分岐金利 |
| $m$ | 期待マージン率 |
| $\Delta D$ | 新規預金 |
| $\Delta L$ | 新規貸出 |


### 1.4 規制レイヤーと全体問題

**全体問題**

$$
\begin{aligned}\max_{x,\,r,\,i_D}\quad&\Pi_{bank}=x\big[(1-\pi)r-\pi(1-\rho)-i_D\big]\\\text{s.t.}\quad&\underbrace{\sigma i_D-(1-\sigma)(1-\rho_B)+\ell-\rho_0\ \ge\ 0}_{\text{預金契約のPC}}\\&\underbrace{(1-\pi)r-\pi(1-\rho)\ \ge\ 0}_{\text{貸出契約のPC（貸し手）}}\\&\underbrace{R(x)\ \ge\ x(1+r)}_{\text{貸出契約のPC（借り手）}}\\&\underbrace{\Delta D=\Delta L=x}_{\text{会計恒等式（選択変数ではない）}}\\&\underbrace{E\ \ge\ \kappa\textstyle\sum_i w_ix_i}_{\text{自己資本規制：貸出のテールリスクに対応}}\\&\underbrace{M\ \ge\ \varphi\textstyle\sum_jD_j}_{\text{準備率・流動性規制：預金の満期ミスマッチに対応}}\end{aligned}\tag{13}
$$

> 上の4行が信用創造の最小構造、下の2行が外側から課される追加制約

**規制下の資金構成**

$$
\underbrace{x}_{\text{貸出}}+\underbrace{M}_{\text{準備金}}=\underbrace{D}_{\text{預金}}+\underbrace{E}_{\text{自己資本}}\tag{14}
$$

$$
\underbrace{E=\kappa w x}_{\text{自己資本規制（等号）}},\quad\underbrace{M=\varphi D}_{\text{準備率規制（等号）}}\tag{15}
$$

$$
\underbrace{D=\dfrac{1-\kappa w}{1-\varphi}\,x}_{\text{預金}},\ \ \underbrace{E=\kappa w\,x}_{\text{自己資本}},\ \ \underbrace{M=\dfrac{\varphi(1-\kappa w)}{1-\varphi}\,x}_{\text{準備金}}\tag{16}
$$

**規制下の損益分岐金利**

$$
r^{\ast}_{reg}=\dfrac{\underbrace{\pi(1-\rho)}_{\text{期待貸倒損失}}+\underbrace{i_D\dfrac{1-\kappa w}{1-\varphi}}_{\text{預金の調達費用}}+\underbrace{i_E\,\kappa w}_{\text{自己資本の調達費用}}}{1-\pi}\tag{17}
$$

> $\kappa=\varphi=0$ のとき式(10)の $r_{BE}$ に一致する

**規模の上限**

$$
x\ \le\ \underbrace{\dfrac{E}{\kappa w}}_{\text{自己資本が支えられる貸出額}}\tag{18}
$$

> 規模を抑えるのは既存預金の量ではなく自己資本

**規制の感応度**

$$
\dfrac{\partial r^{\ast}_{reg}}{\partial\kappa}=\dfrac{w\big[\underbrace{i_E}_{\text{自己資本のコスト}}-\underbrace{\dfrac{i_D}{1-\varphi}}_{\text{預金のコスト}}\big]}{1-\pi}\tag{19}
$$

$$
\dfrac{\partial r^{\ast}_{reg}}{\partial\varphi}=\dfrac{i_D(1-\kappa w)}{(1-\varphi)^{2}(1-\pi)}>0\tag{20}
$$

> $\kappa$ の効果は $i_E>i_D/(1-\varphi)$ のとき正。$\varphi$ の効果は $i_D>0$ なら常に正

| 記号・項目 | 意味 |
|---|---|
| $E$ | 自己資本 |
| $M$ | 準備金・流動資産 |
| $\kappa$ | 所要自己資本比率 |
| $\varphi$ | 所要準備率 |
| $w_i$ | 貸出 $i$ のリスクウェイト |
| $i_E$ | 自己資本の要求収益率 |
| $r^{\ast}_{reg}$ | 規制下の損益分岐金利 |


### 1.5 主要帰結

**主要式**

$$
\boxed{\begin{aligned}i_D^{\ast}&=\underbrace{\dfrac{\rho_0-\ell+(1-\sigma)(1-\rho_B)}{\sigma}}_{\text{預金契約のリスクだけで決まる}}\\ r&\in\underbrace{\Big[\dfrac{\pi(1-\rho)}{1-\pi},\ \dfrac{R(x)}{x}-1\Big]}_{\text{貸出契約のリスクだけで決まる区間}}\\ \Delta D&=\Delta L=\underbrace{x}_{\text{両者を結ぶ会計恒等式}}\end{aligned}}\tag{21}
$$

> 両者は会計恒等式で結ばれるが、一方が他方を決めることはない

**比較静学**

| 変化 | 結果 | 符号・式 |
|---|---|---|
| $\sigma\uparrow$ | $i_D^{\ast}$ | 低下　$-(a+b)/\sigma^{2}\lt 0$ |
| $\ell\uparrow$ | $i_D^{\ast}$ | 低下　$-1/\sigma$ |
| $\rho_0\uparrow$ | $i_D^{\ast}$ | 上昇　$+1/\sigma$ |
| $\pi\uparrow$ | $r^{\ast}_{lend}$ | 上昇　$(1-\rho)/(1-\pi)^{2}$ |
| $\rho\uparrow$ | $r^{\ast}_{lend}$ | 低下　$-\pi/(1-\pi)$ |
| $\sigma\uparrow$ | $m$ | 上昇　$(a+b)/\sigma^{2}>0$ |
| $\pi\uparrow$ | $m$ | $r$ 固定なら低下 $-r-(1-\rho)$、競争的に $r=r_{BE}$ なら 0 |

> $a=\rho_0-\ell,\ b=1-\rho_B$。導出は付録 A.6

**特殊ケース**

$$
\sigma=1\Rightarrow i_D^{\ast}=\rho_0-\ell
$$

$$
\pi=0\ \text{または}\ \rho=1\Rightarrow r^{\ast}_{lend}=0
$$

$$
r^{\ast}_{mono}\lt r^{\ast}_{lend}\Rightarrow\text{区間が空で貸出契約は不成立}
$$

---

## 2. 核心となる説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| 銀行貸出による預金（信用）の創造 | 貸出実行時に $\Delta D = \Delta L = x$ という会計恒等式が成立する。既存預金を「集めてから貸す」必要はなく、貸出資産と預金負債が同時に認識される。 |
| 「元手なしで貸せる」と「規制がある」ことの両立 | 会計恒等式（技術的成立）と、自己資本規制・準備率／流動性規制（追加的制約）は論理的に異なる層に属する。両者は矛盾しない。 |
| 預金金利の決まり方 | $i_D^{\ast}$ は預金契約側のリスク（銀行存続確率 $\sigma$、破綻時回収率 $\rho_B$、流動性プレミアム $\ell$、機会費用 $\rho_0$）だけで決まる。貸出側の条件とは独立。 |
| 貸出金利の実行可能範囲 | 下限は貸し手のデフォルト損失カバー（$r_{lend}^{\ast}$）、上限は借り手の事業収益率（$r_{mono}^{\ast}$）。この区間内のどこに実際の金利が定まるかは、追加の市場構造が必要。 |
| 二つの契約のリスク源泉の分離 | 預金契約のリスクは「銀行自身の信用力」、貸出契約のリスクは「借り手の信用力」に由来する。期待値ベースの参加制約だけでは一つの条件にまとめられない。 |
| 規制がなぜ必要か | 参加制約は期待値の非負しか要求しない。テールリスク（相関デフォルト）、有限責任によるモラルハザード、満期ミスマッチ（預金は要求払い、貸出は非流動的）に対応するため、自己資本規制と準備・流動性規制が外側から課される。 |

## 3. モデルが特にうまく整理している点 {#sec3}

- 「貸出が預金を創造する」会計的事実と、「銀行は預金を集めてから貸す仲介者」という通俗的理解の違いを明確に分離している。
- 預金契約（消費寄託）と貸出契約（金銭消費貸借）を、それぞれ独立した参加制約付きの双務契約として扱い、会計恒等式で結合する構造。
- 規制を「信用創造そのものの否定」ではなく、「期待値だけでは捉えられないリスクへの追加制約」として位置づけている点。

## 4. このモデルでは説明しきれない（または対象外の）現象 {#sec4}

モデル自身が明示的に「主張しない／範囲外」としているもの：

- 均衡貸出金利の一意な値の決定（市場構造の追加が必要）
- 私的情報がある場合の誘因整合性（IC制約）
- 銀行間決済の詳細なダイナミクス
- 動学的・一般均衡的な拡張（景気循環、マクロ的な信用拡張・収縮など）
- 「銀行に一切の制約がない」という意味での「無限に貸せる」という主張

---

## 付録：導出手順 {#appendix}

各Stepは「操作→結果」の順に書く。式番号は本文からの通し番号。


### A.0 構造図

**全体像**

```
                    信用創造
                       │
         ┌─────────────┴─────────────┐
         │                           │
    契約レイヤー                  会計レイヤー
         │                           │
 ┌───────┴───────┐             ΔD = ΔL = x  式(8)
 │               │            （選択変数ではなく恒等式）
消費寄託契約      金銭消費貸借契約
 │               │
PC-dep 式(1)(3)  PC-lend, PC-borrow 式(4)(5)
 │               │
銀行の信用リスク   借り手の信用リスク
 (σ, ρ_B)         (π, ρ)
         │               │
         └───────┬───────┘
                 ▼
       銀行の統合最適化問題 式(9)
       max Π_bank  s.t. 全PC, ΔD=ΔL
                 │
                 ▼
         均衡金利の実行可能区間 式(6)
         [r_lend*, r_mono*]  （下限は r_BE 式(10)）
                 │
        （市場構造という追加構造が必要）
                 │
                 ▼
             規制レイヤー 式(13)
        ┌────────┴────────┐
        ▼                 ▼
   自己資本規制         準備率・流動性規制
  （貸出のテールリスク）  （預金の満期ミスマッチ）
```

**読み方**

上から下へ、二つの契約が独立に条件を課し、会計恒等式で結合され、銀行の最適化で金利の区間が定まり、最後に外側から規制が課される。規制の二本の矢印は、それぞれ別の契約のリスクに対応している。

### A.1 使う道具

**T1 期待値**

$$
E=pa+(1-p)b\quad\text{（確率 }p\text{ で }a\text{、}1-p\text{ で }b\text{）}
$$

**T2 不等式**

両辺への加減は可。正の数の乗除で向きは不変、負の数の乗除で反転。0では割れない。

**T3 商の微分**

$$
\Big(\dfrac{u}{v}\Big)'=\dfrac{u'v-uv'}{v^{2}}
$$

**T4 偏微分**

他の変数を定数とみなして一つの変数で微分する。

**T5 1次関数の最大化**

$$
f(t)=at+b,\ a>0\Rightarrow\max_{[p,q]}f=f(q),\quad a\lt 0\Rightarrow\max_{[p,q]}f=f(p)
$$

**T6 代入法**

一つの式から変数を解き、他の式へ代入して未知数を減らす。

**T7 内積**

$$
w^{T}x=\sum_{i=1}^{N}w_ix_i
$$

### A.2 預金者の期待利得と均衡預金金利

**Step 1　状態別の利得**

存続（確率 $\sigma$）：$i_DD$。破綻（確率 $1-\sigma$）：$-(1-\rho_B)D$。状態によらず $+\ell D-\rho_0D$。

**Step 2　T1で期待値**

$$
E[\Pi_{dep}]=\underbrace{\sigma\,(i_DD)}_{\text{存続時}}+\underbrace{(1-\sigma)\big(-(1-\rho_B)D\big)}_{\text{破綻時}}+\underbrace{\ell D-\rho_0D}_{\text{状態によらない項}}\tag{22}
$$

**Step 3　Dで括る**

式(22)を $D$ で括ると式(1)になる。

**Step 4　D>0で割る**

PC-dep $E[\Pi_{dep}]\ge0$ を $D>0$ で割ると式(2)。向きは不変（T2）。

**Step 5　移項**

$$
\underbrace{\sigma i_D}_{i_D\text{ を含む項}}\ \ge\ \underbrace{\rho_0-\ell+(1-\sigma)(1-\rho_B)}_{\text{それ以外の項}}\tag{23}
$$

**Step 6　σ>0で割る**

$$
i_D\ \ge\ \dfrac{\rho_0-\ell+(1-\sigma)(1-\rho_B)}{\sigma}\tag{24}
$$

**Step 7　銀行の最小化**

$i_DD$ は $i_D$ について増加（T5）。式(24)の下限、すなわち等号の点が最小で、式(3)を得る。A8 より下限は非負。

**確認**

$\sigma=1$ を式(3)に代入すると $i_D^{\ast}=\rho_0-\ell$。破綻リスクがない場合の自然な結果。

| 記号・項目 | 意味 |
|---|---|
| 入力 | A7、A8 |
| T1 | 期待値 |
| T2 | 不等式 |
| T5 | 1次関数の最大化 |


### A.3 貸出契約のPCと実行可能区間

**Step 1　貸し手の期待利得**

$$
E[\Pi_L]=\underbrace{(1-\pi)(rx)}_{\text{返済時}}+\underbrace{\pi\big(-(1-\rho)x\big)}_{\text{デフォルト時}}=x\big[(1-\pi)r-\pi(1-\rho)\big]\tag{25}
$$

**Step 2　整理**

$E[\Pi_L]\ge0$ を $x>0$ で割り、$\pi(1-\rho)$ を移項して $1-\pi>0$ で割ると、式(4)の $r\ge r^{\ast}_{lend}$ を得る。

**Step 3　借り手の期待利得**

$$
E[\Pi_B]=\underbrace{(1-\pi)}_{\text{返済確率}}\underbrace{\big(R(x)-x(1+r)\big)}_{\text{返済時の利得}}\tag{26}
$$

**Step 4　整理**

$$
E[\Pi_B]\ge0\iff R(x)\ge x(1+r)\iff\dfrac{R(x)}{x}\ge1+r\tag{27}
$$

両辺から1を引くと式(5)の $r\le r^{\ast}_{mono}$。

**Step 5　共通部分**

二つの不等式を同時に満たす $r$ の集合が式(6)。非空となる条件が式(7)。

| 記号・項目 | 意味 |
|---|---|
| 入力 | A7、A8 |
| $\pi$ | $1-\pi>0$ で割る（A8） |


### A.4 会計恒等式

**Step 1　貸借対照表**

$$
\Delta A=\underbrace{\Delta D}_{\text{預金}}+\underbrace{\Delta E}_{\text{自己資本}}\tag{28}
$$

> 預金以外の負債は不変とする

**Step 2　貸出実行時の記帳**

$$
\underbrace{\Delta A=x}_{\text{貸出金 +x}},\ \ \underbrace{\Delta D=x}_{\text{借り手名義の預金 +x}},\ \ \underbrace{\Delta E=0}_{\text{利益は未認識}}\tag{29}
$$

代入すると $x=x+0$ が恒等的に成立し、式(8)を得る。

**確認**

これは残高の等式 $D=x$ ではない。既存預金 $D_0$ があれば $D=D_0+x$。

| 記号・項目 | 意味 |
|---|---|
| 入力 | A4 |
| $A$ | 資産 |
| $E$ | 自己資本 |


### A.5 銀行の統合問題・角点・損益分岐金利

**Step 1　偏微分（T4）**

$$
\underbrace{\dfrac{\partial\Pi_{bank}}{\partial r}=x(1-\pi)>0}_{r\text{ について増加}},\quad\underbrace{\dfrac{\partial\Pi_{bank}}{\partial i_D}=-x\lt 0}_{i_D\text{ について減少}}\tag{30}
$$

**Step 2　角点（T5）**

$r$ は上限、$i_D$ は下限で最大。最適解は $(r,i_D)=(r^{\ast}_{mono},\,i_D^{\ast})$。

**Step 3　損益分岐**

$$
\Pi_{bank}\ge0\iff(1-\pi)r\ge\pi(1-\rho)+i_D\iff r\ge\dfrac{\pi(1-\rho)+i_D^{\ast}}{1-\pi}=r_{BE}\tag{31}
$$

式(10)の定義に一致する。

**Step 4　下限との差**

$$
r_{BE}-r^{\ast}_{lend}=\dfrac{\pi(1-\rho)+i_D^{\ast}-\pi(1-\rho)}{1-\pi}=\dfrac{i_D^{\ast}}{1-\pi}\tag{32}
$$

これが式(11)。

**確認**

$r=r^{\ast}_{lend}$ のとき $(1-\pi)r=\pi(1-\rho)$ なので $\Pi_{bank}/x=-i_D^{\ast}$。貸出単体は損益ゼロでも、調達コスト分だけ銀行全体は赤字。

| 記号・項目 | 意味 |
|---|---|
| 入力 | 式(24)、式(4)、式(5) |
| T4 | 偏微分 |
| T5 | 1次関数の最大化 |


### A.6 期待マージンの π 依存性

**Step 1　r を所与**

$$
\dfrac{\partial m}{\partial\pi}=-\underbrace{r}_{\text{利息の減少}}-\underbrace{(1-\rho)}_{\text{損失の増加}}\le0\tag{33}
$$

> $r\ge0,\ \rho\le1$ より。$\rho\lt 1$ なら厳密に負

**Step 2　貸し手支配　$r=r^{\ast}_{mono}$**

$$
\dfrac{\partial m}{\partial\pi}=-\Big(\dfrac{R}{x}-1\Big)-(1-\rho)=-\Big(\dfrac{R}{x}-\rho\Big)\tag{34}
$$

> $R/x\ge1\ge\rho$ より $\rho\lt 1$ なら厳密に負

**Step 3　競争的極限　$r=r_{BE}$**

式(31)の等号より $(1-\pi)r_{BE}=\pi(1-\rho)+i_D^{\ast}$。$m$ に代入すると $m=0$ で $\pi$ によらず、$\partial m/\partial\pi=0$。

**確認**

競争が貸出金利を $\pi$ に応じて調整するとき、リスクは価格に完全転嫁され、銀行の期待マージンは変わらない。

| 記号・項目 | 意味 |
|---|---|
| $m$ | 式(12) |
| 入力 | $R/x$ は $\pi$ に依存しない |


### A.7 比較静学の微分計算

**Step 1　$\partial i_D^{\ast}/\partial\sigma$**

$$
u=a+(1-\sigma)b,\ \ v=\sigma\ \Rightarrow\ \dfrac{\partial i_D^{\ast}}{\partial\sigma}=\dfrac{(-b)\sigma-\big(a+(1-\sigma)b\big)}{\sigma^{2}}=-\dfrac{a+b}{\sigma^{2}}\tag{35}
$$

> T3を適用。$a=\rho_0-\ell,\ b=1-\rho_B>0$

**Step 2　符号**

A8 より $a+(1-\sigma)b\ge0$。よって $a+b=[a+(1-\sigma)b]+\sigma b\ge\sigma b>0$ で、$\partial i_D^{\ast}/\partial\sigma\lt 0$。

**Step 3　$\ell,\rho_0$**

$$
\dfrac{\partial i_D^{\ast}}{\partial\ell}=-\dfrac1\sigma\lt 0,\qquad\dfrac{\partial i_D^{\ast}}{\partial\rho_0}=\dfrac1\sigma>0\tag{36}
$$

**Step 4　$r^{\ast}_{lend}$**

$$
\dfrac{\partial r^{\ast}_{lend}}{\partial\pi}=\dfrac{(1-\rho)(1-\pi)+\pi(1-\rho)}{(1-\pi)^{2}}=\dfrac{1-\rho}{(1-\pi)^{2}}\tag{37}
$$

$$
\dfrac{\partial r^{\ast}_{lend}}{\partial\rho}=-\dfrac{\pi}{1-\pi}\le0\tag{38}
$$

**Step 5　$m$ の $\sigma$ 依存**

$$
\dfrac{\partial m}{\partial\sigma}=-\dfrac{\partial i_D^{\ast}}{\partial\sigma}=\dfrac{a+b}{\sigma^{2}}>0\tag{39}
$$

> $r$ が $\sigma$ に依存しない場合。$r=r_{BE}$ なら $m=0$ で一定

| 記号・項目 | 意味 |
|---|---|
| 入力 | 式(3)、式(4) |
| T3 | 商の微分 |


### A.8 ポートフォリオ表記と規制制約

**Step 1　リスクアセット**

$$
w^{T}x=\sum_{i=1}^{N}w_ix_i\tag{40}
$$

> 例：$N=2,\ w=(1,0.5)^T,\ x=(10,20)^T$ なら $w^Tx=20$

**Step 2　自己資本規制**

リスクアセットに $\kappa$ を掛けて $E$ と比較し、$E\ge\kappa\,w^Tx$（式(13)）。

**Step 3　準備率規制**

総預金に $\varphi$ を掛け、$M\ge\varphi\sum_jD_j$（式(13)）。

**Step 4　実行可能集合**

$$
C^{reg}=C^{**}\cap\{E\ge\kappa w^Tx\}\cap\{M\ge\varphi\textstyle\sum_jD_j\}\tag{41}
$$

> $C^{**}$：参加制約を満たす集合

| 記号・項目 | 意味 |
|---|---|
| 入力 | 貸出 $x=(x_1,\dots,x_N)^T$、リスクウェイト $w$、預金 $D=(D_1,\dots,D_K)^T$ |
| T7 | 内積 |


### A.9 規制下の資金構成と損益分岐金利

**Step 1　代入**

$$
x+\varphi D=D+\kappa wx\tag{42}
$$

> 式(14)に式(15)を代入

**Step 2　整理**

$$
x(1-\kappa w)=D(1-\varphi)\tag{43}
$$

**Step 3　解く**

$1-\varphi>0$ で割ると $D=\dfrac{1-\kappa w}{1-\varphi}x$。$M=\varphi D$ とあわせて式(16)。

**Step 4　規模の上限**

$E\ge\kappa wx$ を $\kappa w>0$ で割ると式(18)。

**Step 5　損益分岐条件**

$$
\underbrace{x\big[(1-\pi)r-\pi(1-\rho)\big]}_{\text{期待収益}}=\underbrace{i_DD+i_EE}_{\text{調達費用}}\tag{44}
$$

**Step 6　式(16)を代入**

$$
(1-\pi)r-\pi(1-\rho)=i_D\dfrac{1-\kappa w}{1-\varphi}+i_E\kappa w\tag{45}
$$

$\pi(1-\rho)$ を移項し $1-\pi>0$ で割ると式(17)。

**Step 7　整合性**

$\kappa=\varphi=0$ を式(17)に代入すると、分子は $\pi(1-\rho)+i_D$ となり式(10)に一致。

**Step 8　感応度**

$$
\dfrac{\partial}{\partial\kappa}\Big[i_D\dfrac{1-\kappa w}{1-\varphi}+i_E\kappa w\Big]=-\dfrac{i_Dw}{1-\varphi}+i_Ew\tag{46}
$$

$1-\pi$ は $\kappa,\varphi$ に依存しないので式(19)。$\varphi$ については T3 で $\partial[u/v]/\partial\varphi=u/v^{2}$（$u=1-\kappa w,\ v=1-\varphi$）となり式(20)。

| 記号・項目 | 意味 |
|---|---|
| 入力 | 式(14)、式(15) |
| T3 | 商の微分 |
| T6 | 代入法 |


---

**© 2026 Kaoru**. 本記事および数理モデルの著作権は著者に帰属します。学術的リサーチ・引用・非営利目的の共有は [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/deed.ja) の下で許可されます。商用利用・共同研究・モデルの拡張は別途ご相談ください。
{% endraw %}
