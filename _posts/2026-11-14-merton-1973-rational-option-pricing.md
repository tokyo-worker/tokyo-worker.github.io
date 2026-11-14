---
layout: post
title: "Merton (1973) \"Theory of Rational Option Pricing\"、Bell Journal of Economics and Management Science: 数理モデル"
date: 2026-11-14 00:00:00 +0900
categories: [金融, オプション価格理論]
math: true
---

{% raw %}
# Merton (1973) "Theory of Rational Option Pricing"、Bell Journal of Economics and Management Science: 数理モデル
### 支配されない価格の制約から、配当・行使価格変更・プット・ダウン・アンド・アウト・コーラブルまで：Black–Scholes 式の別導出と拡張の早見表

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

**書誌**：Merton, R. C., "Theory of Rational Option Pricing," *The Bell Journal of Economics and Management Science*, Vol. 4, No. 1 (Spring 1973), pp. 141–183.

**論文リンク**：
- 無料で全文を読める版（非公式のコピー）：[http://polymer.bu.edu/hes/merton73py538.pdf](http://polymer.bu.edu/hes/merton73py538.pdf)（Boston University の講義資料サイト上のコピー。出版社・著者による公開版ではなく、リンク切れや公開状況の変更がありうる。https ではない）
- 公式版（JSTOR）：[https://www.jstor.org/stable/3003143](https://www.jstor.org/stable/3003143)（DOI: 10.2307/3003143。閲覧に契約や所属機関経由のアクセスが必要な場合がある）

**論文の内容**：この論文は、投資家が「より多くを好む」という弱い仮定だけから、ワラントやオプションの価格が満たすべき必要条件（支配される証券・支配する証券にならないこと）を一連の定理として導き、配当や行使価格変更が早期行使と価格に与える影響、ヨーロピアン・プットとアメリカン・プットの関係を整理する。次に、Black–Scholes (B–S) 理論を、資本資産価格モデルを使わず、連続取引・伊藤過程・確定的な分散・無裁定だけから導く別証明を示し、金利が確率的でもヘッジに使う債券の満期はオプションの満期に一致させればよいことを明らかにする。さらに、この枠組みを配当つきアメリカン・ワラント、アメリカン・プット、ダウン・アンド・アウト・コール、コーラブル・ワラントの評価に拡張する。

**本記事の位置づけ**：この記事は、この論文の背景にある数理モデルについての記事です。論文本文の定理1〜15と式、脚注に現れる式、付録1・2の式を、簡略化・省略をせずに原文の仮定と記号のまま整理し、論文が略している導出の中間式だけを付録で補いました（補ったと明示）。図1〜4は式で表せる性質のみを本文に取り込み、実証結果の数値は論文中にないため扱いません。

**式番号の対応**（本記事の式番号は本文から付録まで通しの連番。原論文の番号は引き継いでいない）

| 本記事 | 原論文 |
|---|---|
| (1)〜(9) | (1)〜(9) |
| (10)〜(12) | 定理1〜3 |
| (13) | 定理3の後の予想（関数形） |
| (14)〜(17) | 定理4、定理5および直後の弱い不等式 |
| (18)〜(27) | 定理6、仮定2、$$Z(\tau)$$の定義、定理7と系、リスクの定義、定理8〜10 |
| (28)〜(34) | 定理11と系、B–S の反例を扱う箇所 |
| (35) | 脚注23 |
| (36)〜(43) | 第3節の行使価格変更・配当の式（原論文の (10)〜(13) を含む） |
| (44)〜(54) | 原論文 (14)〜(20)、定理12、系1・2、定理13 |
| (55)〜(57) | 原論文 (21)、$$d_1,d_2$$、(22) |
| (58)〜(61) | 原論文 (23)、(24)、(24a)、(24b) |
| (62) | 脚注43 |
| (63)〜(93) | 原論文 (25)〜(40)、脚注51、(34a)〜(34c)、定理14・15 |
| (94)〜(111) | 原論文 (41)〜(47)、(44a)(44b)、脚注62・66 |
| (112)〜(120) | 原論文 (48)〜(52) と高接触条件 |
| (121)〜(132) | 原論文 (53)〜(57)、脚注69 |
| (133)〜(141) | 原論文 (58)〜(62) |
| (142)〜(147) | 原論文 付録1 (A1)〜(A7) |
| (148)〜(149) | 原論文 付録2 |
| (150) | 本記事の主要帰結（上記の再掲） |

**記号の置き換え**（原論文が一つの記号を複数の意味に使っているため、区別のために置き換えた。以降は節ごとの記号表で定義する）

| 原論文 | 本記事 | 箇所 |
|---|---|---|
| 期待値 $$E[\cdot]$$ | $$\mathbb{E}[\cdot]$$ | 全体（$$E$$ は行使価格） |
| 定理10の重み $$\gamma$$ | $$\theta$$ | 定理10 |
| 配当調整係数 $$\lambda_i(t),\lambda$$ | $$\Lambda_i(t),\Lambda$$ | 定理11と系 |
| 配当割合 $$\gamma$$ | $$\kappa$$ | B–S の反例 |
| 資本利得の収益 $$x_i(t)$$ | $$\chi_i(t)$$ | 定理11 |
| 3資産ポートフォリオの重み $$W_j$$ | $$w_j$$ | 1.8節 |
| 予想の関数 $$W(S,\tau;e)$$、$$e=EP(\tau)$$ | $$\Omega(S,\tau;e_P)$$、$$e_P=EP(\tau)$$ | 式(13) |
| 変数変換 $$Z$$、誤差関数の引数 $$h_1,h_2$$ | $$\xi$$、$$u_1,u_2$$ | 1.8節 |
| 実効金利 $$\eta(\tau)$$（行使価格変更） | $$r_E(\tau)$$ | 1.9節 |
| $$2r/\sigma^2$$ の $$\gamma$$ | $$\nu$$ | 1.9〜1.11節 |
| $$2d/\sigma^2$$、$$Z=\hat\delta/S$$、$$h(Z)$$ | $$\hat d$$、$$\zeta=\hat d/S$$、$$\psi(\zeta)$$ | 1.9節 |
| プットの境界 $$C$$ | $$s_P$$ | 1.10節 |
| ノックアウト価格の減衰率 $$\eta$$、$$a,\gamma$$、$$\delta=2(r-\eta)/\sigma^2$$、$$h_1\ldots h_4$$、$$H$$、$$f$$ | $$\eta_B$$、$$\hat a,\vartheta$$、$$\omega$$、$$m_1\ldots m_4$$、$$\Xi$$、$$f^{\text{do}}$$ | 1.11節 |
| コーラブル・ワラント $$F$$、コール条項の価値 $$C$$、$$H$$ | $$F^{\text{c}}$$、$$\mathcal{C}$$、$$H^{\text{nc}}$$ | 1.12節 |
| 付録1の $$K,U,g(S),dP,W$$ | $$\bar K,\upsilon,\varrho(S),d\Pi,\mathcal{W}$$ | 1.13節 |

---

## 1. 数理モデル {#sec1}

### 1.0 前提

**主体・時間**

企業が発行するワラント、または個人が発行するコール・プットを評価する。アメリカン型は満期 $$\tau$$ 年前までいつでも行使でき、ヨーロピアン型は満期にのみ行使できる。連続時間は1.8節以降で使い、それまでは任意の取引日を考える。

**B　バケットショップ（インシピエント）仮定**

オプションの総供給量はゼロで、オプションの創出は株式収益の分布に影響しない。論文全体で置かれるが、多くの結果はこの仮定なしでも成り立つ。外すと、企業が正の量のワラントを発行する場合に株式収益の分布が変わりうる。

**A1　支配されない価格（Assumption 1）**

証券（ポートフォリオ）$$A$$ が $$B$$ を支配するとは、ある既知の将来日に、$$A$$ の収益が $$B$$ を上回る状態があり、かつすべての状態で $$A$$ の収益が $$B$$ 以上であることをいう。合理的なオプション価格理論の必要条件は、オプションが支配する証券にも支配される証券にもならない価格で売られることである。投資家は富を多いほうを好み、「対称的な市場合理性」を仮定する。外すと、以下の定理1〜8、11〜13の証明が成り立たない。

**A2　同一分布の収益（Assumption 2）**

ワラント保有者にとって、株式を区別する特徴は収益の事前分布だけである（式(19)）。

**債券の記号**

$$P(\tau)$$ は $$\tau$$ 年後に1ドルを支払う、デフォルトリスクのない割引債の価格、$$P'(\tau)$$ は借入金利で評価した同じ支払いの現在価値（借入金利と貸出金利が異なる場合に $$P'(\tau)\le P(\tau)$$）。金利は現在も将来も正とする。

**価格関数の記法**

$$F(S,\tau;E)$$：アメリカン・ワラントの価値、$$f(S,\tau;E)$$：そのヨーロピアン版、$$G(S,\tau;E)$$：アメリカン・プット、$$g(S,\tau;E)$$：ヨーロピアン・プット。$$S$$ は株価、$$E$$ は行使価格、$$\tau$$ は満期までの年数。

### 1.1 基本的な制約

**限定責任・満期・裁定・単調性**

$$
F(S,\tau;E)\ge 0;\quad f(S,\tau;E)\ge 0\tag{1}
$$

$$
F(S,0;E)=f(S,0;E)=\underbrace{\text{Max}[0,\,S-E]}_{\text{満期の価値}}\tag{2}
$$

$$
F(S,\tau;E)\ge \text{Max}[0,\,S-E]\tag{3}
$$

> (3) は裁定条件で、アメリカン型にのみ一般に成り立つ（ヨーロピアン型では一般に成り立たない）。

$$
F(S,\tau_1;E)\ge F(S,\tau_2;E)\quad \text{if } \tau_1\gt\tau_2\tag{4}
$$

$$
F(S,\tau;E)\ge f(S,\tau;E)\tag{5}
$$

$$
\begin{aligned}
F(S,\tau;E_1)&\le F(S,\tau;E_2)\\
f(S,\tau;E_1)&\le f(S,\tau;E_2)
\end{aligned}\qquad \text{if } E_1\gt E_2\tag{6}
$$

> (6) は、行使価格以外が同一の2つのワラントについて、行使価格が大きいほうの価値が小さいことを表す。

株式は満期 $$\tau=\infty$$、行使価格 $$E=0$$ のアメリカン・ワラントと等価なので、(4)(6) から

$$
S\ge F(S,\tau;E)\tag{7}
$$

$$
F(0,\tau;E)=f(0,\tau;E)=0\tag{8}
$$

$$
1=P(0)\gt P(\tau_1)\gt P(\tau_2)\gt\cdots\gt P(\tau_n)\quad\text{for }0\lt\tau_1\lt\tau_2\lt\cdots\lt\tau_n\tag{9}
$$

> (9) は金利が正であることから従う（同一の暦時点で比較）。

| 記号・項目 | 意味 |
|---|---|
| $$F,f$$ | アメリカン・ヨーロピアン・ワラントの価値 |
| $$S,E,\tau$$ | 株価、行使価格、満期までの年数 |
| $$P(\tau)$$ | $$\tau$$ 年後に1ドルを支払う割引債（無リスク）の価格 |

### 1.2 ヨーロピアン・ワラントの下限と早期行使（定理1〜3）

**定理1（下限）**　行使価格 $$E$$ のヨーロピアン・ワラントについて、ワラントの存続期間中に株式への支払い（配当など）がない（またはワラントがその支払いから保護されている）なら、

$$
f(S,\tau;E)\ge \text{Max}\bigl[0,\;S-\underbrace{EP(\tau)}_{\text{行使価格の現在価値}}\bigr]\tag{10}
$$

> (5) から、固定行使価格のアメリカン・ワラントにも (10) が成り立つ。(3) より大幅に厳しい下限で、金利への依存（$$P(\tau)$$）を含む。

**定理2（早期行使なし）**　定理1の条件が成り立てば、アメリカン・ワラントは満期前に行使されず、ヨーロピアン・ワラントと同値である。

$$
F(S,\tau;E)=f(S,\tau;E)\tag{11}
$$

**定理3（永久ワラント）**　定理1の条件が成り立てば、永久（$$\tau=\infty$$）ワラントの価値は普通株の価値に等しい。

$$
F(S,\infty;E)=S\tag{12}
$$

**関数形についての予想**（論文は予想として述べる。式(10)の $$P(\tau)$$ への依存が、行使価格を現在価値に置き換えれば消えるという主張）

$$
F[S,\tau;E,P(\tau)]=\Omega(S,\tau;e_P),\qquad e_P\equiv EP(\tau)\tag{13}
$$

> (13) が成り立てば、金利上昇（$$P$$ の低下）の効果は行使価格低下の効果に似るので、ワラント価格は金利の増加関数になる（式(6)）。$$E=0$$ のときと $$\tau=\infty$$ のときはどちらも $$e_P=0$$ で、この予想と整合する。ヨーロピアン・ワラントは、限定責任の割引ローンで株式をレバレッジした長期ポジションと等価でもある。

| 記号・項目 | 意味 |
|---|---|
| $$\Omega$$ | 予想されるワラント価格関数 |
| $$e_P$$ | 行使価格の現在価値 $$EP(\tau)$$ |

### 1.3 行使価格に対する定理（定理4・5）

**定理4（行使価格について凸）**　合理的なワラント価格 $$F(S,\tau;E)$$ は行使価格 $$E$$ の凸関数である。

$$
\begin{aligned}
E_3&\equiv\lambda E_1+(1-\lambda)E_2,\quad 0\le\lambda\le1,\\
F(S,\tau;E_3)&\le\lambda F(S,\tau;E_1)+(1-\lambda)F(S,\tau;E_2)
\end{aligned}\tag{14}
$$

**定理5（行使価格の変化の幅）**　$$f(S,\tau;E)$$ が合理的なヨーロピアン・ワラント価格なら、$$E_1\lt E_2$$ について

$$
-P(\tau)(E_2-E_1)\le f(S,\tau;E_2)-f(S,\tau;E_1)\le0\tag{15}
$$

$$f$$ が行使価格について微分可能なら、

$$
-P(\tau)\le\frac{\partial f(S,\tau;E)}{\partial E}\le0\tag{16}
$$

定理1の条件が成り立たない場合のアメリカン・ワラントには、より弱い不等式のみが成り立つ。

$$
-(E_2-E_1)\le F(S,\tau;E_2)-F(S,\tau;E_1)\le0,\qquad -1\le\frac{\partial F(S,\tau;E)}{\partial E}\le0\tag{17}
$$

| 記号・項目 | 意味 |
|---|---|
| $$\lambda$$ | 凸結合の重み |
| $$E_1,E_2,E_3$$ | 行使価格（定理4では $$E_2\gt E_1$$） |

### 1.4 スケール・分散・リスクに関する定理（定理6〜10）

**定理6（スケール定理）**　$$Q(t)=kS(t)$$、$$E_Q=kE$$（$$k$$ は正の定数）のとき、$$F_Q(Q,\tau;E_Q)$$ を株価 $$Q$$ の株式へのワラント価格として

$$
F_Q(Q,\tau;E_Q)\equiv kF(S,\tau;E)\quad\text{for all }S,\tau,E,k\tag{18}
$$

> 取引費用に規模の経済や不可分性がなければ、合理的なワラント価格関数は $$(S,E)$$ について1次同次。$$k=1/E$$ と選んで $$E=1$$ の単位に標準化できる。

**仮定2（A2）の定式化**

$$
S_i=S_j=S;\ \tau_i=\tau_j=\tau;\ E_i=E_j=E;\ \text{収益が同一分布}\ \Longrightarrow\ F_i(S,\tau;E)=F_j(S,\tau;E)\tag{19}
$$

$$z(t)$$ を第 $$t$$ 期に株式へ1ドル投資したときの1期間収益（確率変数）として、$$\tau$$ 期間の収益を

$$
Z(\tau)\equiv\prod_{t=1}^{\tau}z(t)\tag{20}
$$

**定理7（分散投資は価値を下げる）**　$$S_i=S_j=S$$（$$i,j=1,\ldots,n$$）、$$\lambda_i\in[0,1]$$、$$\sum_1^n\lambda_i=1$$ で

$$
Z_{n+1}(\tau)\equiv\sum_1^n\lambda_iZ_i(\tau)\tag{21}
$$

のとき、

$$
F_{n+1}(S,\tau;E)\le\underbrace{\sum_1^n\lambda_iF_i(S,\tau;E)}_{\text{ワラントのポートフォリオ}}\tag{22}
$$

**系**　定理7の条件に加えて $$z_i(t)$$ が同一分布なら

$$
F_{n+1}(S,\tau;E)\le F_i(S,\tau;E),\quad i=1,2,\ldots,n\tag{23}
$$

**リスクの定義**　証券1が証券2より危険であるとは、

$$
Z_1(\tau)=Z_2(\tau)+\epsilon,\qquad \mathbb{E}[\epsilon\mid Z_2(\tau)]=0\tag{24}
$$

（Rothschild–Stiglitz の3つの同値な定義の1つ）。

**定理8（リスクが大きいほど価値が大きい）**　合理的なワラント価格は、対象株式のリスクの非減少関数である。$$Z_i(\tau)=Z(\tau)+\epsilon_i$$、$$\mathbb{E}[\epsilon_i\mid Z(\tau)]=0$$（$$\epsilon_i$$ は独立同一分布）のとき

$$
F_Z(S,\tau;E)\le F_i(S,\tau;E),\quad i=1,\ldots,n\tag{25}
$$

> 重要なのはワラント価格が株式の総リスクに依存する点で、システマティック・リスクではない。

**定理9（1次同次）**　株式の1ドル当たり収益の分布が株価水準から独立なら、$$F$$ は株価と行使価格について1次同次である。

$$
F(kS,\tau;kE)=kF(S,\tau;E)\tag{26}
$$

**定理10（株価について凸）**　同じ条件の下で、$$S_3\equiv\lambda S_1+(1-\lambda)S_2$$、$$0\le\lambda\le1$$ について

$$
F(S_3,\tau;E)\le\lambda F(S_1,\tau;E)+(1-\lambda)F(S_2,\tau;E)\tag{27}
$$

> 図1：合理的なワラント価格は、$$\tau=0$$ で $$S-E$$ の折れ線、$$\tau$$ が大きいほど上方にあって下に凸、$$\tau=\infty$$ で直線 $$S$$、各 $$\tau$$ で下限 $$S-EP(\tau)$$ に漸近する。定理9・10の条件を満たさない例は1.13節にある。

| 記号・項目 | 意味 |
|---|---|
| $$k$$ | スケール（単位換算）の正の定数 |
| $$Q$$ | 株価 $$S$$ を $$k$$ 倍した株価（$$Q=kS$$） |
| $$z(t),Z(\tau)$$ | 1期間・$$\tau$$ 期間の1ドル当たり収益 |
| $$\lambda_i$$ | ポートフォリオの重み |
| $$\epsilon,\epsilon_i$$ | 条件付き平均ゼロの確率変数（追加のリスク） |
| $$\theta$$ | 定理10の証明で使う重み（原論文の $$\gamma$$）。$$\theta\equiv\lambda S_1/S_3$$ |

### 1.5 配当と行使価格の変更（第3節）

投資政策・資本構成の予期しない変更はワラント価値を変える（定理8）。配当政策による保護のみを考える。

**定義（支払い保護）**　オプションが支払い保護されているとは、投資政策と資本構成を固定したとき、オプションの価値が支払い政策の選択に依存しないことをいう。

**定理11（支払い保護の調整）**　株式の1ドル当たり総収益が、支払い（配当）の割合に依存しないとする。各配当落ち日に、総行使価格 $$E$$ で買える株数を $$d/S^{x}$$（$$d$$ は配当額、$$S^{x}$$ は配当落ち後の株価）の割合だけ増やせば、ワラントは支払い保護される。企業 $$i$$ について、

$$
\begin{aligned}
\Lambda_i(t)&\equiv 1+\underbrace{d_i(t)/S_i^{x}(t)}_{\text{配当率}},\qquad S_i^{x}(t)=\prod_{k=1}^{t}\chi_i(k)\,S,\\
N_i(t)&=\Lambda_i(t)N_i(t-1),\quad N_i(0)=1
\end{aligned}\tag{28}
$$

総収益は支払い収益と資本利得収益に分解される。

$$
z_i(t)=\Lambda_i(t)\chi_i(t)\tag{29}
$$

行使時または満期の価値は

$$
\text{Max}\bigl[0,\,N_i(t)S_i^{x}(t)-E\bigr],\qquad N_i(t)S_i^{x}(t)=\prod_{k=1}^{t}z_i(k)\tag{30}
$$

となり、$$z_i$$ が同一分布なら、仮定2から $$\Lambda_i(t)$$ の選び方に依らず

$$
F_1(S,\tau;E)=F_2(S,\tau;E)\tag{31}
$$

> 保護されたワラントの価値は、配当を禁じた（$$\Lambda_i(t)\equiv1$$ の）ワラントの価値に等しく、第1.1〜1.4節の定理が成り立つ。

**系（株式分割・現金配当の調整）**　株式1株を行使価格 $$E$$ で買えるワラントを、各配当落ち日に、$$\Lambda\equiv1+d/S^{x}$$ 個の「1株を $$E/\Lambda$$ で買えるワラント」と交換すれば、ワラントは支払い保護される（規模の経済がないとき）。価値は

$$
\Lambda F\!\left(S,\tau;\frac{E}{\Lambda}\right)\tag{32}
$$

> 株式分割では $$\Lambda$$ は分割後株数/分割前株数（1未満の場合は併合）。現金配当の保護は、Miller–Modigliani の仮定の下で同じ意味で成り立つ。

**Black–Scholes の「保護できない」例との整合**　企業が全資産を公正な価格で売って無リスク債券を買う（投資政策の変更。株式は無リスクになり、ワラント価格は $$\text{Max}[0,S-EP(\tau)]$$ に下がる）。その後、企業価値の割合 $$\kappa$$ を支払うと、

$$
S^{x}=(1-\kappa)S,\qquad \Lambda=1+\frac{\kappa}{1-\kappa}=\frac{1}{1-\kappa}\tag{33}
$$

$$
\Lambda\,\text{Max}\!\left[0,\,S^{x}-\frac{EP(\tau)}{\Lambda}\right]=\text{Max}\bigl[0,\,S-EP(\tau)\bigr]\tag{34}
$$

> 式(34)の右辺は支払いを制限した場合の価値と同じ。B–S の例は $$\kappa=1$$（$$\Lambda=\infty$$、$$E/\Lambda=0$$、$$0\times\infty$$ の不定）。$$\kappa\lt1$$ のすべてで成り立つので極限でも成り立つと推測される。

**標準的な調整（行使価格から配当額を引く）の誤り**　テイラー展開で、配当 $$d$$ だけ株価・行使価格を下げる調整によるワラント保有者の損失は

$$
F(S-d,\tau;E-d)-F(S,\tau;E)=-dF_S-dF_E+o(d)=-\bigl[F(S,\tau;E)-(S-E)F_S(S,\tau;E)\bigr]\frac{d}{E}+o(d)\tag{35}
$$

（$$F$$ の $$(S,E)$$ についての1次同次性による）。$$S=E$$ では価値の約 $$d/S$$ の割合を失い、$$S\gt E$$ では損失割合はこれより小さく、$$S\lt E$$ では大きい。

**行使価格が段階的に変わるアメリカン・ワラント**　行使価格が満期に近づくと $$E_j$$ から $$E_{j+1}$$ へ変わるとき（原論文のスケジュール：$$E_0$$ は $$0\le\tau\le\tau_1$$、$$E_1$$ は $$\tau_1\le\tau\le\tau_2$$、…、$$E_n$$ は $$\tau_n\le\tau$$）。行使価格は満期が近づくほど上がるので

$$
E_{j+1}\lt E_j,\quad j=0,1,\ldots,n-1\tag{36}
$$

定理1〜11の条件がそうでなければ、早期行使は行使価格が変わる直前（$$\tau=\tau_j^{+}$$）にだけ起こる。そこで、このワラントは離散時点でのみ行使できる「修正ヨーロピアン・ワラント」に等しく、次の境界条件のもとで帰納的に評価する。

$$
\begin{aligned}
F_0(S,0;E_0)&=\text{Max}[0,\,S-E_0],\quad \tau\le\tau_1,\\
F_j(S,\tau_j;E_j)&=\text{Max}\bigl[0,\,S-E_j,\,F_{j-1}(S,\tau_j;E_{j-1})\bigr],\quad \tau_j\le\tau\le\tau_{j+1}
\end{aligned}\tag{37}
$$

> 原論文は $$j=1$$ の式を明示し、以降は帰納的と述べる。一般の $$j$$ への書き下しは本記事による補足。

満期の行使価格 $$E_0$$ による標準的なヨーロピアン評価が正しいのは、次の（行使で得られる価値 $$S-E_{j+1}$$ を保持価値が上回る）条件が成り立つときで、

$$
F_j(S,\tau_{j+1};E_j)\ge S-E_{j+1}\quad\text{for all }S\ge0\text{ and }j=0,1,\ldots,N-1\tag{38}
$$

定理1より、(38) の十分条件は

$$
\frac{E_{j+1}}{E_j}\gt P(\tau_{j+1}-\tau_j)\tag{39}
$$

である。（行使価格の10%の上昇、次の変更まで5年なら、無リスク利回りが約2%未満の場合に (39) が成り立つ。）

**系（永久ワラント）**　支払い保護された永久ワラントの行使価格の変更が有限回なら、早期行使されず、価格は株価に等しい。

$$
F_1(S,\infty;E_1)=\text{Max}\bigl[0,\,S-E_1,\,F_0(S,\infty;E_0)\bigr]=\text{Max}[0,\,S-E_1,\,S]=S\tag{40}
$$

**未保護ワラントと将来の配当が既知の場合**　修正ヨーロピアンの境界条件は、$$d_j$$ を満期の $$\tau_j$$ 年前に支払われる1株当たり配当として

$$
F_j(S,\tau_j;E)=\text{Max}\bigl[0,\,S-E,\,F_{j-1}(S-d_j,\tau_j;E)\bigr]\tag{41}
$$

将来の配当と金利が確定しているとき、早期行使がない十分条件は

$$
E\gt\sum_{t=0}^{\tau}\frac{d(t)P(\tau-t)}{1-P(\tau)}\tag{42}
$$

配当が連続的に一定率 $$d$$ で支払われ、金利 $$r$$ が一定なら

$$
E\gt\frac{d}{r}\tag{43}
$$

> 配当の正味現在価値が、$$E$$ ドルを $$\tau$$ 期間投資したときの収益の現在価値より小さければ、ワラントは「生きて」いるほうが価値がある。(42)(43) は十分条件。

| 記号・項目 | 意味 |
|---|---|
| $$\Lambda_i(t)$$ | 企業 $$i$$ の第 $$t$$ 期の増株係数（配当調整） |
| $$\chi_i(t)$$ | 第 $$t$$ 期の資本利得収益（1ドル当たり） |
| $$S_i^{x}(t)$$ | 第 $$t$$ 期の配当落ち後の株価 |
| $$N_i(t)$$ | 総行使価格 $$E$$ で買える株数 |
| $$d_i(t),d$$ | 配当額（離散・連続の率） |
| $$\kappa$$ | 企業価値に対する支払いの割合 |
| $$E_j,\tau_j$$ | 段階的な行使価格と、その切替時点（満期までの年数） |
| $$F_j$$ | $$\tau_j\le\tau\le\tau_{j+1}$$ の区間のワラント価値 |
| $$d_j$$ | 満期の $$\tau_j$$ 年前に支払う1株当たり配当 |


### 1.6 プット・オプション（第4節）

満期でのプットの価値と、$$P'(\tau)$$（借入金利での割引債価格）を使った、ヨーロピアン・プットの2つのポートフォリオ（株式ロング＋プット＋借入、およびコール＋株式ショート＋貸付）による制約。

$$
G(S,0;E)=g(S,0;E)=\text{Max}[0,\,E-S]\tag{44}
$$

株式1株のロング、ヨーロピアン・プット1個のロング、借入 $$EP'(\tau)$$ ドルは、満期に同一行使価格・同一満期のヨーロピアン・コールと同じペイオフになる。支配を避けるには

$$
g(S,\tau;E)+S-EP'(\tau)\ge f(S,\tau;E)\tag{45}
$$

ヨーロピアン・コールのロング、株式1株のショート、貸付 $$EP(\tau)$$ ドルは、満期に同一条件のヨーロピアン・プットと同じペイオフになる。支配を避けるには

$$
f(S,\tau;E)-S+EP(\tau)\ge g(S,\tau;E)\tag{46}
$$

**定理12（プット・コール・パリティ）**　A1が成り立ち、借入金利と貸出金利が等しい（$$P(\tau)=P'(\tau)$$）なら

$$
g(S,\tau;E)=\underbrace{f(S,\tau;E)}_{\text{コール}}-S+\underbrace{EP(\tau)}_{\text{行使価格の現在価値}}\tag{47}
$$

> 株価や将来金利の分布についての仮定は不要。ヨーロピアン・プットはコール理論から一意に決まる。金利が一定（$$P(\tau)=e^{-r\tau}$$）なら B–S の式と一致。

**系1・系2**

$$
EP(\tau)\ge g(S,\tau;E)\tag{48}
$$

$$
g(S,\infty;E)=0\tag{49}
$$

**アメリカン・プット**

$$
G(S,\tau;E)\ge\text{Max}[0,\,E-S]\tag{50}
$$

$$
G(S,\tau;E)\ge g(S,\tau;E)\tag{51}
$$

> (51) の等号が成り立たない（厳密な不等号）のは、早期行使の確率が正の場合のみ。アメリカン・オプションの価値は満期について非減少。

アメリカン型のポートフォリオ（早期行使の可能性を含む中間時点の価値を検討）から、

$$
G(S,\tau;E)+S-EP'(\tau)\ge F(S,\tau;E)\tag{52}
$$

$$
G(S,\tau;E)\le E-S+F(S,\tau;E)\tag{53}
$$

> コール・ロング＋株式ショート＋貸付のポートフォリオは、小さい株価で中間価値が $$E-S^{\ast}$$ を下回りうるため、アメリカン・プットを支配しない。このため (47) のアメリカン版（プットをコールで一意に決める定理）は存在せず、(53) の弱い不等式にとどまる。

**定理13（アメリカン・プットが早期行使される条件）**　ある $$T\lt\tau$$ について、株価 $$S^{\ast}$$ の取りうる値で $$f(S^{\ast},T;E)\lt E[1-P(T)]$$ となる確率が正なら、$$\tau$$ 年のアメリカン・プットが早期行使される確率が正で、その価値はヨーロピアン・プットを厳密に上回る。

$$
\Pr\bigl\{f(S^{\ast},T;E)\lt E[1-P(T)]\bigr\}\gt0\ \text{for some }T\lt\tau\ \Longrightarrow\ G(S,\tau;E)\gt g(S,\tau;E)\tag{54}
$$

> 配当・行使価格の変更がなくても、ほとんど常に早期行使の可能性があるので、(47) の式や B–S の式はアメリカン・プットを正しく評価しない。

| 記号・項目 | 意味 |
|---|---|
| $$G,g$$ | アメリカン・ヨーロピアン・プットの価値 |
| $$P'(\tau)$$ | 借入金利での割引債価格（$$P'(\tau)\le P(\tau)$$） |
| $$S^{\ast}$$ | 満期あるいは中間時点の株価 |
| $$T$$ | 中間時点での満期までの年数（$$T\lt\tau$$） |

### 1.7 Black–Scholes の理論と Samuelson–Merton の理論（第5節）

**B–S の仮定**：(1) 資本資産価格モデルが異時点の取引で成り立ち、取引は連続的に行われる。(2) 市場金利 $$r$$ は既知で一定。(3) 配当と行使価格の変更はない。ヘッジ・ポートフォリオ（株式・オプション・短期無リスク証券）の市場リスクをゼロにし、期待収益が無リスク金利に等しいという均衡条件から偏微分方程式を導く。ヨーロピアン・コールの解は

$$
f(S,\tau;E)=\underbrace{S\,\Phi(d_1)}_{\text{株式の項}}-\underbrace{Ee^{-r\tau}\,\Phi(d_2)}_{\text{行使価格の現在価値の項}}\tag{55}
$$

$$
d_1\equiv\frac{\log(S/E)+(r+\tfrac12\sigma^2)\tau}{\sigma\sqrt{\tau}},\qquad d_2\equiv d_1-\sigma\sqrt{\tau}\tag{56}
$$

> $$\Phi$$ は累積標準正規分布、$$\sigma^2$$ は株式収益の瞬間分散。この式は株式の期待収益・投資家のリスク選好・資産の総供給に依存せず、金利と**総**分散にだけ依存する。

**Samuelson–Merton の一般均衡モデル**（3資産・1投資家）の式は

$$
f(S,\tau;E)=e^{-r\tau}\int_{E/S}^{\infty}(ZS-E)\,dQ(Z;\tau)\tag{57}
$$

> $$dQ$$ は $$Z$$ の期待値が $$e^{r\tau}$$ となる確率密度（リスク調整済み）。(55) と (57) が一致するのは、$$dQ$$ が $$\log Z$$ の分散 $$\sigma^2\tau$$ の対数正規分布のときのみ：(i) 株式の客観的収益が対数正規、(ii) 効用関数が等弾力的、(iii) オプションと債券の供給がともにインシピエント水準。

| 記号・項目 | 意味 |
|---|---|
| $$\Phi$$ | 累積標準正規分布関数 |
| $$\sigma^2$$ | 株式収益の瞬間分散 |
| $$r$$ | 無リスク金利（一定） |
| $$d_1,d_2$$ | (56)で定義 |
| $$dQ(Z;\tau)$$ | リスク調整済みの確率密度 |

### 1.8 Black–Scholes 式の別導出（第6節）

ヨーロピアン・オプションで、満期までの株式への支払いはないとする。以下の仮定を置く。

**B1　摩擦のない市場**：取引費用・差別的税なし。取引は連続的で、借入・空売りは制限なし。借入金利と貸出金利は等しい。

**B2　株価の動学**：

$$
\frac{dS}{S}=\underbrace{\alpha\,dt}_{\text{期待収益}}+\underbrace{\sigma\,dz}_{\text{ランダム項}}\tag{58}
$$

> $$\alpha$$ は確率変数でもよい（株価・他資産の収益に依存してもよい）。$$\sigma$$ は非確率的で、せいぜい既知の時間の関数。$$dz$$ は標準ガウス・ウィーナー過程。

**B3　債券価格の動学**：

$$
\frac{dP}{P}=\mu(\tau)\,dt+\delta(\tau)\,dq(t;\tau)\tag{59}
$$

> $$dq(t;\tau)$$ は満期 $$\tau$$ の標準ガウス・ウィーナー過程。$$\delta(0)=0$$（$$P(0)=1$$ のため）。$$\delta$$ は $$\tau$$ にのみ依存し、$$P$$ の水準から独立で非確率的。金利が非確率的で一定のとき $$\delta\equiv0$$、$$\mu=r$$、$$P(\tau)=e^{-r\tau}$$。

$$
dq(t;\tau)\,dq(t;T)=\rho_{\tau T}\,dt\tag{60}
$$

$$
dq(s;\tau)\,dq(t;T)=0,\quad dq(s;\tau)\,dz(t)=0\quad\text{for }s\ne t\tag{61}
$$

> (60) の $$\rho_{\tau T}$$ は $$\tau\ne T$$ で1未満でもよい（期間構造・選好領域効果を許す）。(61) は予期されない収益の系列相関がないという意味（Fama–Samuelson の効率的市場仮説と整合）。

**（脚注43：(59) と債券価格の収束が矛盾しない例）**　短期金利 $$r$$ がドリフト付きガウス・ウィーナー過程に従い、すべての債券が次期の期待収益 $$r$$ を与えるとする。

$$
\begin{aligned}
dr&=a\,dt+g\,dz,\\
P(\tau;r)&=\exp\!\left[-r\tau-\frac{a}{2}\tau^2+\frac{g^2\tau^3}{6}\right],\\
\frac{dP}{P}&=r\,dt-g\tau\,dz,\qquad \delta(\tau)=-g\tau
\end{aligned}\tag{62}
$$

> $$a,g$$ は定数。負の金利の確率が正になる非現実的な例だが、整合性を示す。

**B4　投資家の選好と期待**：A1以外に選好の仮定は不要。全員が $$\sigma$$、$$\delta$$、$$dz$$ と $$dq$$ の分布特性に合意するが、$$\alpha$$ と $$\mu$$ には合意しなくてよい。

**オプション価格関数と伊藤の補題**　オプション価格を $$H(S,P,\tau;E)$$ とすると、

$$
\begin{aligned}
dH&=H_1dS+H_2dP+H_3d\tau\\
&\quad+\tfrac12\bigl[H_{11}(dS)^2+2H_{12}(dS\,dP)+H_{22}(dP)^2\bigr]
\end{aligned}\tag{63}
$$

ここで $$(dS)^2\equiv\sigma^2S^2dt$$、$$(dP)^2\equiv\delta^2P^2dt$$、$$d\tau=-dt$$、$$(dS\,dP)\equiv\rho\sigma\delta SP\,dt$$（$$\rho$$ は株式と債券の予期されない収益の瞬間相関）。(58)(59) を代入して整理すると

$$
dH=\beta H\,dt+\gamma H\,dz+\eta H\,dq\tag{64}
$$

$$
\begin{aligned}
\beta&\equiv\frac{\tfrac12\sigma^2S^2H_{11}+\rho\sigma\delta SPH_{12}+\tfrac12\delta^2P^2H_{22}+\alpha SH_1+\mu PH_2-H_3}{H},\\
\gamma&\equiv\frac{\sigma SH_1}{H},\qquad \eta\equiv\frac{\delta PH_2}{H}
\end{aligned}\tag{65}
$$

> $$\beta$$ はオプションの瞬間期待収益。

**ゼロ投資のポートフォリオ**　株式・オプション・満期がオプションの満期に一致する無リスク債券から、短期売り・借入で長いポジションを賄い、総投資額をゼロにする。$$w_1,w_2,w_3$$ はそれぞれ株式・オプション・債券に投資するドル額（瞬間）で、

$$
w_1+w_2+w_3=0\tag{66}
$$

ポートフォリオの瞬間ドル収益 $$dY$$ は、$$w_3\equiv-(w_1+w_2)$$ を代入して

$$
\begin{aligned}
dY&=w_1\frac{dS}{S}+w_2\frac{dH}{H}+w_3\frac{dP}{P}\\
&=\bigl[w_1(\alpha-\mu)+w_2(\beta-\mu)\bigr]dt+\bigl[w_1\sigma+w_2\gamma\bigr]dz+\bigl[w_2\eta-(w_1+w_2)\delta\bigr]dq
\end{aligned}\tag{67}
$$

**無裁定条件**　$$dz$$ と $$dq$$ の係数がともにゼロになる戦略 $$w_j=w_j^{\ast}$$ が選べるなら、収益は非確率的で、投資額ゼロなので期待収益（実現収益）もゼロでなければならない。3つの条件を連立した3×2の線形系は

$$
\begin{aligned}
(\alpha-\mu)w_1^{\ast}+(\beta-\mu)w_2^{\ast}&=0\\
\sigma w_1^{\ast}+\gamma w_2^{\ast}&=0\\
-\delta w_1^{\ast}+(\eta-\delta)w_2^{\ast}&=0
\end{aligned}\tag{68}
$$

自明でない解 $$(w_1^{\ast}\ne0,\,w_2^{\ast}\ne0)$$ が存在する条件は

$$
\frac{\beta-\mu}{\alpha-\mu}=\frac{\gamma}{\sigma}=\frac{\delta-\eta}{\delta}\tag{69}
$$

バケットショップ仮定により $$\mu,\alpha,\delta,\sigma$$ は（オプション価格に対して）外生変数、$$\beta,\gamma,\eta$$ はどの証券も支配されないように決まる。(69) の第2の等号 $$\gamma/\sigma=1-\eta/\delta$$ と (65) の $$\gamma,\eta$$ の定義から

$$
\frac{SH_1}{H}=1-\frac{PH_2}{H}\tag{70}
$$

$$
H=SH_1+PH_2\tag{71}
$$

> オイラーの定理により、(71) は $$H$$ が $$(S,P)$$ について1次同次であるための必要条件（十分条件ではない）。

(69) の第1の等号 $$\beta-\mu=\gamma(\alpha-\mu)/\sigma$$ から

$$
\tfrac12\sigma^2S^2H_{11}+\rho\sigma\delta SPH_{12}+\tfrac12\delta^2P^2H_{22}+\alpha SH_1+\mu PH_2-H_3-\mu H=SH_1(\alpha-\mu)\tag{72}
$$

$$
\tfrac12\sigma^2S^2H_{11}+\rho\sigma\delta SPH_{12}+\tfrac12\delta^2P^2H_{22}+\mu SH_1+\mu PH_2-H_3-\mu H=0\tag{73}
$$

(71) を代入し $$\mu$$ の項を相殺すると、2階線形の放物型偏微分方程式

$$
\tfrac12\Bigl[\underbrace{\sigma^2S^2H_{11}}_{\text{株価の分散}}+\underbrace{2\rho\sigma\delta SPH_{12}}_{\text{共分散}}+\underbrace{\delta^2P^2H_{22}}_{\text{債券の分散}}\Bigr]-H_3=0\tag{74}
$$

> 期待収益 $$\alpha,\mu$$ は式から消える。

ヨーロピアン・ワラント $$H$$ は (74) と、

$$
H(0,P,\tau;E)=0,\qquad H(S,1,0;E)=\text{Max}[0,\,S-E]\tag{75}
$$

（$$P(0)=1$$ による）を満たす。

**変数変換**　$$x\equiv S/EP(\tau)$$（満期日に支払う行使価格単位の株価）の動学は伊藤の補題から

$$
\frac{dx}{x}=\bigl[\alpha-\mu+\delta^2-\rho\sigma\delta\bigr]dt+\sigma\,dz-\delta\,dq\tag{76}
$$

期待収益は $$S,P$$ などに（$$\alpha,\mu$$ を通じて）依存するが、$$x$$ の収益の瞬間分散

$$
V^2(\tau)=\sigma^2+\delta^2-2\rho\sigma\delta\tag{77}
$$

は $$\tau$$ にのみ依存する。$$H$$ の同次性から次の変換を試みる。

$$
h(x,\tau;E)\equiv\frac{H(S,P,\tau;E)}{EP}\quad(h\text{ は }P\text{ に依らないと仮定})\tag{78}
$$

(74)(75) に代入すると

$$
\tfrac12V^2x^2h_{11}-h_2=0\tag{79}
$$

$$
h(0,\tau;E)=0,\qquad h(x,0;E)=\text{Max}[0,\,x-1]\tag{80}
$$

> (79)(80) から $$h$$ は $$x$$ と $$\tau$$ だけの関数となり、$$h$$ は $$E$$ に依らないので、同次性の仮定が検証される。$$H$$ は $$(S,EP(\tau))$$ について1次同次。

新しい時間変数と関数

$$
T\equiv\int_0^{\tau}V^2(s)\,ds,\qquad y(x,T)\equiv h(x,\tau)\tag{81}
$$

を導入すると、

$$
\tfrac12x^2y_{11}-y_2=0\tag{82}
$$

$$
y(0,T)=0,\qquad y(x,0)=\text{Max}[0,\,x-1]\tag{83}
$$

$$y$$ を「完全な関数形」で書くと

$$
y=H(x,1,T;1,1,0,0)\tag{84}
$$

> これは、満期 $$T$$ 年、行使価格1ドル、単位分散の株式、市場金利ゼロの標準ワラントの価格。一度これを解けば、変数変換によって任意のヨーロピアン・ワラントの価格が得られる。

$$
H(S,P,\tau;E)=\underbrace{EP(\tau)}_{\text{行使価格の現在価値}}\;y\!\left[\underbrace{S/EP(\tau)}_{\text{標準化株価}},\;\underbrace{\int_0^{\tau}V^2(s)\,ds}_{\text{累積分散}}\right]\tag{85}
$$

**標準ワラントの解**　$$\xi\equiv\log x+T/2$$、$$\phi(\xi,T)\equiv y(x,T)/x$$ とすると、

$$
0=\tfrac12\phi_{11}-\phi_2\tag{86}
$$

$$
\lvert\phi(\xi,T)\rvert\le1,\qquad \phi(\xi,0)=\text{Max}[0,\,1-e^{-\xi}]\tag{87}
$$

（標準的な熱方程式の自由境界問題。変数分離またはフーリエ変換で解く。）解は

$$
y(x,T)=x\,\phi(\xi,T)=\bigl[\,x\,\text{erfc}(u_1)-\text{erfc}(u_2)\,\bigr]/2\tag{88}
$$

$$
u_1\equiv-\frac{\log x+\tfrac12T}{\sqrt{2T}},\qquad u_2\equiv-\frac{\log x-\tfrac12T}{\sqrt{2T}}\tag{89}
$$

> erfc は誤差補相関数（表が存在する）。金利が非確率的で一定（$$\delta=0$$、$$\mu=r$$、$$P=e^{-r\tau}$$、$$T=\sigma^2\tau$$）の特殊ケースでは (85) が B–S の (55) と一致する。(86)–(88) は Samuelson の「線形」モデル（株価が対数正規、$$\alpha=\beta=0$$、$$\sigma^2=1$$）のワラント価格式にも対応する。

**脚注51（解釈の違い）**　B–S の解釈では、ワラントの期待収益 $$\beta$$ は

$$
\beta=r+\frac{H_1S(\alpha-r)}{H}\tag{90}
$$

（$$H_1$$ は (55) の微分から計算できる）。Samuelson の $$\beta=\alpha$$ の解釈（ワラントと株式の期待収益が等しい）とは異なる。

**定理14（金利への依存）**　所与の株価で、ワラント価格は $$P(\tau)$$ の非増加関数、したがって $$\tau$$ 年金利の非減少関数である。

$$
\frac{\partial H}{\partial P}\le0\tag{91}
$$

**アメリカン・ワラント**：上の価格関数は終端の境界条件だけを使ったのでヨーロピアンの価格。アメリカンの正しい境界条件は、これに

$$
H(S,P,\tau;E)\ge\text{Max}[0,\,S-E]\tag{92}
$$

を加えたもの。配当・行使価格の変更がなければ、定理1より $$H\ge\text{Max}[0,\,S-EP(\tau)]$$ で、アメリカンはヨーロピアンと同値。

**定理15（分散への依存）**　ワラント価格は株式収益の分散の非減少関数である。

$$
\frac{\partial H}{\partial\sigma^2}\ge0\tag{93}
$$

> (85) の分散による変化は $$y_2\ge0$$ に比例する。$$y$$ は正当なアメリカン・ワラントの価格なので満期について非減少。定理8の特殊ケースで、分散がこのモデルでリスクの妥当な尺度であることは1.14節に示す。

**価格の無依存・依存に関する結論**　(85) は期待収益 $$\alpha,\mu$$ と選好に依存しない。ヘッジに使う債券の満期はオプションの満期に一致させる必要がある（$$P(\tau)$$ を固定して他の満期の価格が動いても $$\tau$$ 年オプションの価格は不変）。$$\sigma$$ と $$\delta$$ が非確率的で価格水準から独立という仮定は、ヘッジが完全になり、同次性が成り立つために必要。投資家が $$V^2(\tau)$$ に合意しなければ同じワラントに別の価値をつける。

| 記号・項目 | 意味 |
|---|---|
| $$\alpha,\sigma^2$$ | 株式の瞬間期待収益・瞬間分散 |
| $$dz,dq$$ | 株式・債券の標準ガウス・ウィーナー過程 |
| $$\mu(\tau),\delta^2(\tau)$$ | 債券の瞬間期待収益・分散 |
| $$\rho$$ | 株式と債券の予期されない収益の瞬間相関 |
| $$H(S,P,\tau;E)$$ | オプション価格関数 |
| $$H_1,H_2,H_3,H_{ij}$$ | $$H$$ の偏微分（添字は $$S,P,\tau$$ の順） |
| $$\beta,\gamma,\eta$$ | $$H$$ の期待収益・$$dz$$ 係数・$$dq$$ 係数 |
| $$w_1,w_2,w_3$$ | 株式・オプション・債券へのドル投資額 |
| $$x$$ | $$S/EP(\tau)$$（標準化株価） |
| $$V^2(\tau)$$ | $$x$$ の収益の瞬間分散 |
| $$h,y,\phi$$ | 標準化されたワラント価格（変換後） |
| $$T$$ | 累積分散 $$\int_0^{\tau}V^2(s)ds$$ |
| $$\xi$$ | $$\log x+T/2$$ |
| $$u_1,u_2$$ | (89)で定義 |
| erfc | 誤差補関数 |


### 1.9 配当・行使価格変更を含む拡張（第7節）

金利を一定で既知の $$r$$ とする（$$\delta=0$$、$$\mu=r$$、$$P(\tau)=e^{-r\tau}$$）。(69) は

$$
\beta-r=\frac{\gamma(\alpha-r)}{\sigma}\tag{94}
$$

$$D(S,\tau)$$ を、株価 $$S$$・満期 $$\tau$$ のときの単位時間当たり配当、$$\alpha$$ を瞬間の**総**期待収益とすると、価格上昇による期待収益は $$\alpha-D(S,\tau)/S$$。$$P$$ は確率的でなくなるので、ワラント価格を $$W(S,\tau;E)$$ と書く。伊藤の補題から

$$
\begin{aligned}
dW&=W_1\bigl(dS-D(S,\tau)\,dt\bigr)+W_2\,d\tau+\tfrac12W_{11}(dS)^2\\
&=\bigl[\tfrac12\sigma^2S^2W_{11}+(\alpha S-D)W_1-W_2\bigr]dt+\sigma SW_1\,dz
\end{aligned}\tag{95}
$$

> ワラント保有者は配当を受け取らないので、株式の期待ドル収益のうち価格上昇分だけを考える。

$$
\begin{aligned}
\beta W&=\tfrac12\sigma^2S^2W_{11}+(\alpha S-D)W_1-W_2,\\
\gamma W&=\sigma SW_1
\end{aligned}\tag{96}
$$

(94) を (96) に適用して、ワラント価格の偏微分方程式

$$
\tfrac12\sigma^2S^2W_{11}+\underbrace{(rS-D)}_{\text{配当控除後のドリフト}}W_1-W_2-rW=0\tag{97}
$$

境界条件は、ヨーロピアン・ワラントでは

$$
W(0,\tau;E)=0,\qquad W(S,0;E)=\text{Max}[0,\,S-E]\tag{98}
$$

アメリカン・ワラントではさらに裁定の境界条件 $$W(S,\tau;E)\ge\text{Max}[0,\,S-E]$$。

> (97) は一般には（ヨーロピアンでも、単純な $$D$$ でも）簡単な解を持たない。(D=0 のときはヨーロピアン価格が不等式を破らないのでアメリカン＝ヨーロピアン。)

**早期行使の境界**　早期行使の確率が正なら、各 $$\tau$$ に対し、$$S\gt C[\tau]$$ ならワラントは行使したほうが保持するより価値が高くなる水準 $$C[\tau]$$ が存在する。行使したワラントの価値は常に $$S-E$$ なので、(97) に付加する境界条件は、$$0\le S\le C[\tau]$$ で $$W$$ が (97) を満たすとして

$$
W(C[\tau],\tau;E)=C[\tau]-E\tag{99}
$$

$$C[\tau]$$ が既知なら (97)(98)(99) は時間依存の境界を持つ半無限境界値問題だが、$$C[\tau]$$ は未知で解の一部として決まる。ワラント保有者は自分の最善の利益（ワラントの価値を最大にする時間パターン）になるよう行使するので、$$\mathcal{F}(S,\tau;E,C[\tau])$$ を所与の $$C[\tau]$$ に対する (97)–(99) の解として

$$
W(S,\tau;E)=\max_{\{C\}}\mathcal{F}(S,\tau;E,C)\tag{100}
$$

最適な $$C[\tau]$$ は現在の株価水準に依存しない。Samuelson は追加条件として「高接触」条件を仮定した。

$$
W_1(C[\tau],\tau;E)=1\tag{101}
$$

> (101) は (100) の最大化行動から導かれる（付録A.7）。したがってアメリカン・ワラントの正しい定式化は (97)、(98) とヨーロピアンの境界条件に (99)(101) を加えたもの。

**比例配当政策**　$$D(S,\tau)=\rho S$$（$$\rho\gt0$$）。Samuelson と Samuelson–Merton は、早期行使の確率が常に正で、十分大きな株価で裁定境界条件が拘束的になることを示した。このとき (97) は Samuelson の「非線形」（$$\beta\gt\alpha$$）のケースと数学的に同一（彼の $$\beta=r$$、$$\alpha=r-\rho$$）。ヨーロピアン・ワラントの (97) の解（脚注62、原論文の表記のまま）は

$$
W=e^{-\rho\tau}S\,\Phi(d_1)-Ee^{-r\tau}\,\Phi(d_2)\tag{102}
$$

大きな $$S$$ では

$$
W\sim e^{-\rho\tau}S-Ee^{-r\tau}\tag{103}
$$

> (103) は大きな $$S$$ と $$\rho\gt0$$ で $$S-E$$ を下回るので、アメリカン・ワラントは「生きて」いるより「死んで」いるほうが価値が高くなりうる。原論文は (102) の $$d_1,d_2$$ を (56) の定義と書く。(97) に $$D=\rho S$$ を入れたときの解は $$r$$ を $$r-\rho$$ に置き換えた $$d_1,d_2$$ に対応する（本記事による補足）。

**一定配当政策**　$$D=d$$（定数）。早期行使は $$d,r,E,\tau$$ の値に依存して起こるか起こらないか。十分条件は (43)：$$E\gt d/r$$。これが成り立てばヨーロピアン価格がアメリカン価格になる。有限の $$\tau$$ の閉じた解は未発見だが、$$E\gt d/r$$ の永久ワラントの解は

$$
W(S,\infty;E)=S-\frac{d}{r}\left\{1-\frac{\left(\dfrac{2d}{\sigma^2S}\right)^{2r/\sigma^2}}{\Gamma\!\left(2+\dfrac{2r}{\sigma^2}\right)}\,M\!\left(\frac{2r}{\sigma^2},\;2+\frac{2r}{\sigma^2},\;-\frac{2d}{\sigma^2S}\right)\right\}\tag{104}
$$

> $$M$$ は合流型超幾何関数。$$W$$ は原点を通り、凸で、大きな $$S$$ で直線 $$S-d/r$$（普通株の価値から、ワラントを保有して受け取れない将来配当の現在価値を引いたもの）に漸近する（図2）。

**（脚注66：(104) の導出の変数変換）**

$$
\nu\equiv\frac{2r}{\sigma^2},\quad\hat d\equiv\frac{2d}{\sigma^2},\quad\zeta\equiv\frac{\hat d}{S},\quad\psi(\zeta)\equiv\exp[\zeta]\,\zeta^{-\nu}\,W\tag{105}
$$

$$
\zeta\psi''+(\nu+2-\zeta)\psi'-2\psi=0\tag{106}
$$

$$
\psi=c_1M(2,\,2+\nu,\,\zeta)+c_2\,\zeta^{-(\nu+1)}M(1-\nu,\,-\nu,\,\zeta)\tag{107}
$$

> 一般解 (107) に境界条件を適用すると (104) になる。

**連続的に変化する行使価格 $$E(\tau)$$**　$$E$$ は微分可能で、満期までの時間の減少関数（$$dE/d\tau=-dE/dt=-\dot E\lt0$$）。$$D=0$$ の (97) を、

$$
W[S,0;E(0)]=\text{Max}[0,\,S-E(0)],\qquad W[S,\tau;E(\tau)]\ge\text{Max}[0,\,S-E(\tau)]\tag{108}
$$

のもとで解く。$$X\equiv S/E(\tau)$$、$$F(X,\tau)\equiv W[S,\tau;E(\tau)]/E(\tau)$$ と変換すると

$$
\tfrac12\sigma^2X^2F_{11}+r_E(\tau)\,XF_1-r_E(\tau)\,F-F_2=0,\qquad r_E(\tau)\equiv r-\frac{\dot E}{E}\tag{109}
$$

$$
F(X,0)=\text{Max}[0,\,X-1],\qquad F(X,\tau)\ge\text{Max}[0,\,X-1]\tag{110}
$$

> (109) の構造は、固定行使価格・非確率的な「金利」$$r_E(\tau)$$（大きな行使価格変更では負になりうる）の評価と同一。(38)〜(39) と整合する。

$$
\int_0^{\tau}r_E(s)\,ds=\int_0^{\tau}\left[r+\frac{dE/d\tau}{E}\right]ds=r\tau+\log\frac{E(\tau)}{E(0)}\tag{111}
$$

> $$\int_0^{\tau}r_E(s)ds\ge0$$ なら早期行使はなく、満期の行使価格だけが重要（(85) の $$P(\tau)$$ を置き換えると固定行使価格 $$E(0)$$、金利 $$r$$ のワラントと同じ価値になる）。これは $$E(\tau)\ge E(0)\exp[-r\tau]$$ を意味し、早期行使がない一般的な十分条件になる。

| 記号・項目 | 意味 |
|---|---|
| $$D(S,\tau)$$ | 単位時間当たり配当（1株） |
| $$W(S,\tau;E)$$ | ワラント価格 |
| $$C[\tau]$$ | 早期行使の境界株価 |
| $$\mathcal{F}(S,\tau;E,C)$$ | 所与の境界 $$C[\tau]$$ に対する (97)–(99) の解 |
| $$\rho$$ | 比例配当率（この節のみ。1.8節の相関 $$\rho$$ とは別） |
| $$d$$ | 一定配当率（ドル/単位時間） |
| $$M$$ | 合流型超幾何関数 |
| $$\nu,\hat d,\zeta,\psi$$ | (105) で定義 |
| $$r_E(\tau)$$ | 実効金利 $$r-\dot E/E$$ |
| $$X,F$$ | 行使価格単位の株価と標準化価格 |

### 1.10 アメリカン・プットの評価（第8節）

(97) で $$D=0$$ のときの手法を用いると、アメリカン・プット $$G(S,\tau;E)$$ は

$$
\tfrac12\sigma^2S^2G_{11}+rSG_1-rG-G_2=0\tag{112}
$$

$$
G(\infty,\tau;E)=0,\qquad G(S,0;E)=\text{Max}[0,\,E-S],\qquad G(S,\tau;E)\ge\text{Max}[0,\,E-S]\tag{113}
$$

有限の $$\tau$$ の閉じた解は存在しない。永久プット（$$\tau=\infty$$）では、十分に低い株価で行使が有利になる。$$s_P$$ を、保有を続けるより行使するほうが有利になる株価の最大値とすると、(112) は常微分方程式

$$
\tfrac12\sigma^2S^2G_{11}+rSG_1-rG=0\tag{114}
$$

になり、$$s_P\le S\le\infty$$ で有効。境界条件は

$$
\begin{aligned}
G(\infty,\infty;E)&=0,\\
G(s_P,\infty;E)&=E-s_P,\quad\text{かつ }s_P\text{ はプットの価値を最大にするように選ぶ}
\end{aligned}\tag{115}
$$

一般解は、$$\nu\equiv2r/\sigma^2\gt0$$ として

$$
G(S,\infty;E)=a_1S+a_2S^{-\nu}\tag{116}
$$

$$G(\infty,\infty;E)=0$$ から $$a_1=0$$、$$G(s_P,\infty;E)=E-s_P$$ から $$a_2=(E-s_P)s_P^{\nu}$$。したがって

$$
G(S,\infty;E)=(E-s_P)\left(\frac{S}{s_P}\right)^{-\nu}\tag{117}
$$

$$\partial G/\partial s_P=0$$ を解いて

$$
s_P^{\ast}=\frac{\nu E}{1+\nu}\tag{118}
$$

永久アメリカン・プットの価格は

$$
G(S,\infty;E)=\underbrace{\frac{E}{1+\nu}}_{\text{行使時の価値}}\left[\frac{(1+\nu)S}{\nu E}\right]^{-\nu}\tag{119}
$$

Samuelson の「高接触」条件は、(119) を $$S$$ で微分して $$S=s_P^{\ast}$$ で評価すると確かめられる。

$$
G_1(s_P^{\ast},\infty;E)=-1\tag{120}
$$

> 図3：アメリカン・プット価格は $$S\le s_P^{\ast}(\tau)$$ で $$E-S$$、それ以上で下に凸に $$0$$ に漸近。満期が長いほど $$s_P^{\ast}$$ は小さく価格は高い。

| 記号・項目 | 意味 |
|---|---|
| $$G$$ | アメリカン・プット価格 |
| $$s_P,s_P^{\ast}$$ | プットの早期行使境界（最適値は $$\nu E/(1+\nu)$$） |
| $$\nu$$ | $$2r/\sigma^2$$ |
| $$a_1,a_2$$ | 一般解の定数 |

### 1.11 ダウン・アンド・アウト・コールの評価（第9節）

ダウン・アンド・アウト・コールは、標準のコールと同じ条件に加えて、株価が定めた水準を下回るとオプションが無効（無価値）になる。ノックアウト価格を

$$
B[\tau]=bE\exp[-\eta_B\tau],\qquad\eta_B\ge0,\ 0\le b\le1\tag{121}
$$

とし、$$f^{\text{do}}(S,\tau;E)$$ をヨーロピアンのダウン・アンド・アウト・コールの価値とすると、

$$
\tfrac12\sigma^2S^2f^{\text{do}}_{11}+rSf^{\text{do}}_1-rf^{\text{do}}-f^{\text{do}}_2=0\tag{122}
$$

$$
f^{\text{do}}(B[\tau],\tau;E)=0,\qquad f^{\text{do}}(S,0;E)=\text{Max}[0,\,S-E]\tag{123}
$$

> $$B(\tau)=0$$ なら (122) は標準ヨーロピアン・コールの式。

$$
x\equiv\log[S/B(\tau)],\quad T\equiv\sigma^2\tau,\quad\Xi(x,T)\equiv\exp[\hat ax+\vartheta\tau]\,\frac{f^{\text{do}}(S,\tau;E)}{E},\quad\hat a\equiv\frac{r-\eta_B-\sigma^2/2}{\sigma^2},\ \vartheta\equiv r+\frac{\hat a^2\sigma^2}{2}\tag{124}
$$

これを (122) に代入して

$$
\tfrac12\Xi_{11}-\Xi_2=0\tag{125}
$$

$$
\Xi(0,T)=0,\qquad\Xi(x,0)=e^{\hat ax}\,\text{Max}[0,\,be^x-1]\tag{126}
$$

（標準的な半無限境界値問題。変数分離またはフーリエ変換で解く。）解は

$$
\begin{aligned}
f^{\text{do}}(S,\tau;E)&=\underbrace{\bigl[S\,\text{erfc}(m_1)-Ee^{-r\tau}\,\text{erfc}(m_2)\bigr]/2}_{\text{標準コールの価値}}\\
&\quad-\underbrace{(S/B[\tau])^{-\omega}\bigl\{B[\tau]\,\text{erfc}(m_3)-(S/B[\tau])\,Ee^{-r\tau}\,\text{erfc}(m_4)\bigr\}/2}_{\text{ダウン・アンド・アウトによる割引}}
\end{aligned}\tag{127}
$$

$$
\begin{aligned}
m_1&\equiv-\frac{\log(S/E)+(r+\sigma^2/2)\tau}{\sqrt{2\sigma^2\tau}},\qquad m_2\equiv-\frac{\log(S/E)+(r-\sigma^2/2)\tau}{\sqrt{2\sigma^2\tau}},\\
m_3&\equiv-\frac{2\log(B[\tau]/E)-\log(S/E)+(r+\sigma^2/2)\tau}{\sqrt{2\sigma^2\tau}},\\
m_4&\equiv-\frac{2\log(B[\tau]/E)-\log(S/E)+(r-\sigma^2/2)\tau}{\sqrt{2\sigma^2\tau}},\qquad\omega\equiv\frac{2(r-\eta_B)}{\sigma^2}
\end{aligned}\tag{128}
$$

> (127) の第1の括弧は (55) と一致するので標準のコールの価値。

**リベート付き版（脚注69）**　ノックアウト時に、オプション保有者が正のリベート $$R(\tau)$$（$$R'(\tau)\gt0$$、$$R(0)=0$$ で満期までの時間の増加関数）を受け取る場合、$$g_R(S,\tau)$$ を $$B[\tau]\le S\lt\infty$$ で (122) を満たし、

$$
g_R(B[\tau],\tau)=R(\tau),\qquad g_R(S,0)=0\tag{129}
$$

を満たす関数とすると、リベート付きダウン・アンド・アウト・コールの価値は $$F^{\text{reb}}(S,\tau;E)=g_R(S,\tau)+f^{\text{do}}(S,\tau;E)$$（境界条件は $$F^{\text{reb}}(B[\tau],\tau;E)=R(\tau)$$、$$F^{\text{reb}}(S,0;E)=\text{Max}[0,S-E]$$）。

**永久オプション**　ノックアウト価格が一定（$$\eta_B=0$$）の永久オプションでは (122) は

$$
\tfrac12\sigma^2S^2f''+rSf'-rf=0\tag{130}
$$

$$
f(bE)=0,\qquad f(S)\le S\tag{131}
$$

（プライムは微分。$$f(S)\equiv f^{\text{do}}(S,\infty;E)$$。）標準的な方法で、$$\nu\equiv2r/\sigma^2$$ として

$$
f(S)=S-\underbrace{bE\left(\frac{S}{bE}\right)^{-\nu}}_{\text{ダウン・アンド・アウトの割引}}\tag{132}
$$

> 標準の永久コールの価値は株価に等しいので、第2項が「割引」。(127)(132) はともに $$(S,E)$$ について1次同次。$$f(S)\ge\text{Max}[0,\,S-E]$$（また (127) について同様に示せる）なので、「生きて」いるほうが価値があり、(127)(132) はアメリカン型にも正しい。株価弾力性 $$Sf'(S)/f(S)$$ は1より大きい（レバレッジ証券）が、標準コールと違い株価について**凹**（図4：$$f(S)$$ は $$S=bE$$ で0から始まり $$S$$ の直線に下から漸近）。

| 記号・項目 | 意味 |
|---|---|
| $$f^{\text{do}}$$ | ヨーロピアン・ダウン・アンド・アウト・コールの価値 |
| $$B[\tau]$$ | ノックアウト価格 |
| $$b,\eta_B$$ | ノックアウト価格の比率と時間減衰率 |
| $$x,T,\Xi,\hat a,\vartheta$$ | (124) の変換変数 |
| $$m_1,\ldots,m_4,\omega$$ | (128) で定義 |
| $$R(\tau)$$ | リベート |
| $$g_R,F^{\text{reb}}$$ | リベート分の価値、リベート付きオプションの価値 |

### 1.12 コーラブル・ワラントの評価（第10節）

標準条件のアメリカン・ワラントに、発行企業が固定価格 $$K$$ でいつでもワラントを買い戻せる権利（コール条項）が付く。企業がコールしたとき、保有者は売り戻す代わりに行使できる（強制転換）。コーラブル・ワラントの価値は、同等のノンコーラブル・ワラントから、企業にとってのコール条項の価値（割引）を引いたもの。

$$F^{\text{c}}(S,\tau;E)$$ をコーラブル・アメリカン・ワラントの価値、$$H^{\text{nc}}(S,\tau;E)$$ を式(55)から得られる同等のノンコーラブル・ワラントの価値、$$\mathcal{C}(S,\tau;E)$$ をコール条項の価値とすると

$$
H^{\text{nc}}=F^{\text{c}}+\mathcal{C}\tag{133}
$$

$$F^{\text{c}}$$ は、企業がワラントをコールする株価水準 $$\bar S$$（未決定）について $$0\le S\le\bar S$$ で

$$
\tfrac12\sigma^2S^2F^{\text{c}}_{11}+rSF^{\text{c}}_1-rF^{\text{c}}-F^{\text{c}}_2=0\tag{134}
$$

$$
F^{\text{c}}(0,\tau;E)=0,\qquad F^{\text{c}}(S,0;E)=\text{Max}[0,\,S-E],\qquad F^{\text{c}}(\bar S,\tau;E)=\text{Max}[K,\,\bar S-E]\tag{135}
$$

を満たす。第7節の任意転換の場合と違い、$$\bar S$$ はワラント所有者ではなく企業が選ぶので、ワラントの価値を最大にするようには選ばれない。$$\mathcal{C}=H^{\text{nc}}-F^{\text{c}}$$ は (134) と

$$
\mathcal{C}(0,\tau;E)=0,\qquad\mathcal{C}(S,0;E)=0,\qquad\mathcal{C}(\bar S,\tau;E)=H^{\text{nc}}(\bar S,\tau;E)-\text{Max}[K,\,\bar S-E]\tag{136}
$$

を満たし、$$\bar S$$ は企業が $$\mathcal{C}(S,\tau;E)$$ を最大にするように選ぶ（$$H^{\text{nc}}$$ は $$\bar S$$ の関数でないので、$$\mathcal{C}$$ の最大化は $$F^{\text{c}}$$ の最小化）。

**永久コーラブル・ワラント**　$$H^{\text{nc}}(S,\infty;E)=S$$ で、(134) は

$$
\tfrac12\sigma^2S^2\mathcal{C}''+rS\mathcal{C}'-r\mathcal{C}=0\tag{137}
$$

$$
\mathcal{C}(0)=0,\qquad\mathcal{C}(\bar S)=\bar S-\text{Max}(K,\,\bar S-E),\qquad\bar S\text{ は }\mathcal{C}\text{ を最大にするように選ぶ}\tag{138}
$$

（$$\mathcal{C}(S)\equiv\mathcal{C}(S,\infty;E)$$、プライムは微分。）解は

$$
\mathcal{C}(S)=\bigl(1-\text{Max}[K/\bar S,\;1-E/\bar S]\bigr)S\tag{139}
$$

$$\bar S\lt K+E$$ では $$\mathcal{C}$$ は $$\bar S$$ の増加関数、$$\bar S\gt K+E$$ では減少関数なので、最大化する $$\bar S=K+E$$ を選べば、コール条項の価値は

$$
\mathcal{C}(S)=\left(\frac{E}{K+E}\right)S\tag{140}
$$

$$F^{\text{c}}=H^{\text{nc}}-\mathcal{C}$$ より、コーラブル永久ワラントの価値は

$$
F^{\text{c}}(S)=\left(\frac{K}{K+E}\right)S\tag{141}
$$

| 記号・項目 | 意味 |
|---|---|
| $$F^{\text{c}}$$ | コーラブル・アメリカン・ワラントの価値 |
| $$H^{\text{nc}}$$ | 同等のノンコーラブル・ワラントの価値（式(55)） |
| $$\mathcal{C}$$ | 企業にとってのコール条項の価値 |
| $$K$$ | コール価格 |
| $$\bar S$$ | 企業がコールする株価（企業が選ぶ） |

> 転換社債など、ほとんどがコーラブルとして発行される他の証券の評価に応用できる。

### 1.13 分布が株価水準に依存する反例（原論文 付録1）

定理9・10（1次同次性・凸性）は、1ドル当たり収益の分布が株価水準から独立（D.I.S.P.）という条件が必要で、この条件なしでは一般に成り立たない。反例として、単純で論争のない1期間ヨーロピアン・ワラントの価格関数 $$\mathcal{W}$$ を置く。

$$
\mathcal{W}(S,\lambda)=\bar K\int_{E/S}^{\infty}(S\hat Z-E)\,d\Pi(\hat Z;S,\lambda)\tag{142}
$$

> $$1\gt\bar K\gt0$$ は割引因子（ここでは $$S$$ に依らないと（ある程度誤って）みなす）、$$\lambda\in[0,1]$$ は分布 $$d\Pi$$ のパラメータ。

$$
\hat Z\equiv Z+\lambda\varrho(S)\epsilon\equiv Z+\upsilon(S,\lambda)\quad(\text{1ドル当たり収益})\tag{143}
$$

$$Z$$ と $$\epsilon$$ は $$\mathbb{E}(\epsilon\mid Z)=0$$ の独立確率変数。関数 $$\varrho(S)$$ の性質は、$$\varrho(S)\in(0,1)$$、$$d\varrho(S)/dS\lt0$$。$$d\Pi(\hat Z;S,\lambda)$$ は $$Z$$ と $$\upsilon$$ の確率密度の畳み込みを表すスティルチェス積分。一様分布

$$
\begin{aligned}
f(\epsilon)&=\tfrac12\ \ (-1\le\epsilon\le1),\quad 0\ \text{otherwise},\\
f(\upsilon)&=\frac{1}{2\lambda\varrho(S)}\ \ (-\lambda\varrho(S)\le\upsilon\le\lambda\varrho(S)),\quad 0\ \text{otherwise},\\
h(Z)&=\tfrac12\ \ (1\le Z\le3),\quad 0\ \text{otherwise}
\end{aligned}\tag{144}
$$

を選ぶと、畳み込み密度は

$$
\frac{d\Pi}{d\hat Z}(\hat Z;S,\lambda)=\begin{cases}\dfrac{\hat Z-1+\lambda\varrho(S)}{4\lambda\varrho(S)}&1-\lambda\varrho(S)\le\hat Z\le1+\lambda\varrho(S)\\[2mm]\tfrac12&1+\lambda\varrho(S)\le\hat Z\le3-\lambda\varrho(S)\\[2mm]\dfrac{3+\lambda\varrho(S)-\hat Z}{4\lambda\varrho(S)}&3-\lambda\varrho(S)\le\hat Z\le3+\lambda\varrho(S)\\[2mm]0&\text{elsewhere}\end{cases}\tag{145}
$$

行使価格を株価の約2倍の近傍に選び、(142) を評価すると

$$
\mathcal{W}(S,\lambda)=\bar K\left[\frac{E^2}{4S}-\frac{3E}{2}+\frac{9S}{4}+\frac{\lambda^2\varrho(S)^2S}{12}\right]\tag{146}
$$

(146) から $$\mathcal{W}$$ は $$S,E$$ について1次同次でなく、凸性も局所的に破れる（$$S$$ についての2階微分が負になりうる）。

$$
\frac{d^2\mathcal{W}}{dS^2}=\bar K\left(\frac{E^2}{2S^3}+\frac{\lambda^2}{6}\left[2\varrho(S)\frac{d\varrho}{dS}+S\Bigl(\frac{d\varrho}{dS}\Bigr)^2+S\varrho(S)\frac{d^2\varrho(S)}{dS^2}\right]\right)\gtrless0\tag{147}
$$

> 十分に負の $$d^2\varrho/dS^2$$ を選ぶと (147) は負になる。構成によって $$\lambda=0$$ とすると D.I.S.P. の性質が回復し、(146) の右辺は $$S,E$$ について1次同次、(147) の右辺は $$\bar KE^2/2S^3\gt0$$ となって、定理9・10を検証する。

| 記号・項目 | 意味 |
|---|---|
| $$\mathcal{W}$$ | 1期間ヨーロピアン・ワラントの価格関数 |
| $$\bar K$$ | 割引因子（$$1\gt\bar K\gt0$$） |
| $$\lambda$$ | 分布のパラメータ（$$[0,1]$$） |
| $$\hat Z,Z,\upsilon$$ | 収益、独立な基準収益、株価依存の追加リスク |
| $$\varrho(S)$$ | 追加リスクの大きさ（株価の減少関数） |
| $$d\Pi$$ | $$Z$$ と $$\upsilon$$ の畳み込み分布 |

### 1.14 分散がリスクの尺度であること（原論文 付録2）

定理15が定理8の特殊ケースであること、すなわち B–S モデルで分散が整合的なリスク尺度であることを、Rothschild–Stiglitz のもう一つの同値な定義（$$X$$ が $$Y$$ より危険であるとは、$$\mathbb{E}[X]=\mathbb{E}[Y]$$ かつすべての凹関数 $$U$$ について $$\mathbb{E}U(X)\le\mathbb{E}U(Y)$$ のとき）を使って示す。(55) は株式の期待収益に依存せず、対数正規分布の株式は唯一のパラメータ $$\sigma^2$$ で区別されるので、一般性を失わず $$\alpha=0$$ とし、$$\mathbb{E}[Z]=1$$、$$\log Z$$ の分散 $$\sigma^2$$ の対数正規変数 $$Z$$ について、すべての凹 $$U$$ に対し $$\mathbb{E}U(Z)$$ が $$\sigma$$ の減少関数であることを示せばよい。

$$
\mathbb{E}U(Z)=\frac{1}{\sqrt{2\pi\sigma^2}}\int_0^{\infty}U(Z)\exp\Bigl\{-\frac{[\log Z+\frac12\sigma^2]^2}{2\sigma^2}\Bigr\}\frac{dZ}{Z}=\frac{1}{\sqrt{2\pi}}\int_{-\infty}^{\infty}U\bigl(e^{\sigma x-\frac12\sigma^2}\bigr)e^{-\frac12x^2}dx\tag{148}
$$

（$$x\equiv[\log Z+\frac12\sigma^2]/\sigma$$。）$$y\equiv x-\sigma$$ として $$\sigma$$ で微分すると

$$
\frac{\partial\,\mathbb{E}U(Z)}{\partial\sigma}=\frac{1}{\sqrt{2\pi}}\int_{-\infty}^{\infty}U'\bigl(e^{\sigma y+\frac12\sigma^2}\bigr)\,y\,e^{-\frac12y^2}dy=\text{Cov}\bigl[U'(e^{\sigma y+\frac12\sigma^2}),\,y\bigr]\lt0\tag{149}
$$

> $$U'$$ は $$U$$ の凹性から $$y$$ の減少関数なので、Hardy–Littlewood–Pólya の定理236により共分散は負。したがってすべての凹 $$U$$ について $$\partial\mathbb{E}U/\partial\sigma\lt0$$。

| 記号・項目 | 意味 |
|---|---|
| $$U$$ | 凹の効用関数 |
| $$x,y$$ | 標準化した確率変数（$$y=x-\sigma$$） |
| $$\text{Cov}$$ | 標準正規分布の下での共分散 |

### 1.15 主要帰結

**主要式**

$$
\boxed{\begin{aligned}
f(S,\tau;E)&\ge\text{Max}\bigl[0,\,S-EP(\tau)\bigr]\\
\tfrac12\bigl[\sigma^2S^2H_{11}+2\rho\sigma\delta SPH_{12}+\delta^2P^2H_{22}\bigr]-H_3&=0\\
H(S,P,\tau;E)&=EP(\tau)\,y\!\left[S/EP(\tau),\,\int_0^{\tau}V^2(s)\,ds\right]\\
y(x,T)&=\bigl[\,x\,\text{erfc}(u_1)-\text{erfc}(u_2)\,\bigr]/2\\
g(S,\tau;E)&=f(S,\tau;E)-S+EP(\tau)
\end{aligned}}\tag{150}
$$

**主要式の読み方**

**ひと目で言うと**：投資家が「より多くを好む」ことだけから、ヨーロピアン・ワラントの価値は株価から行使価格の**現在価値**を引いた値を下回れない（①）。ここに連続取引・伊藤過程・確定的な分散を加えると、株式・オプション・満期一致の債券で完全なヘッジができ、期待収益や選好が消えた偏微分方程式（②）が得られる。その解は、標準化した株価と累積分散の2変数の関数 $$y$$ で表せ（③）、$$y$$ は誤差補関数で閉じた形に書ける（④）。プットは、プット・コール・パリティ（⑤）でコール理論から決まる。

**① 下限（支配されない価格）**

$$
f(S,\tau;E)\ge\text{Max}\bigl[0,\,S-EP(\tau)\bigr]
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$f(S,\tau;E)$$ | ヨーロピアン・ワラント（コール）の価値 | 満期にだけ行使できる。株式の支払いがない、または保護されているという条件（定理1）のもとで成り立つ |
| $$EP(\tau)$$ | 行使価格の現在価値 | 行使価格の支払いは満期までなくてよいので、$$E$$ ではなく $$E$$ を割り引いた値が「内在価値」を決める。(3) の $$S-E$$ より厳しい下限 |
| $$\text{Max}[0,\cdot]$$ | 限定責任 | 負にならない（式(1)） |

**意味**：ワラントを買い、$$E$$ 単位の債券を買う組み合わせは、満期にどの状態でも株式を買う戦略以上の価値になるので、そうなる価格でなければならない。

**結論へのつながり**：下限が $$P(\tau)$$ に依存するので、価格は金利の非減少関数（式(91)）で、アメリカンはヨーロピアンと同値（式(11)）になり、永久ワラントは株式と同値（式(12)）になる。

**② 偏微分方程式（無裁定）**

$$
\tfrac12\bigl[\sigma^2S^2H_{11}+2\rho\sigma\delta SPH_{12}+\delta^2P^2H_{22}\bigr]-H_3=0
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$\sigma^2S^2H_{11}$$ | 株価の分散による項 | 株価のランダムな変動がオプション価格に与える曲率の効果（式(58)） |
| $$2\rho\sigma\delta SPH_{12}$$ | 株価と債券価格の共分散の項 | 確率的な金利を許すための項。$$\delta=0$$ なら消える（式(59)(61)） |
| $$\delta^2P^2H_{22}$$ | 債券価格の分散による項 | 同上。$$P$$ の水準から独立な $$\delta$$ が必要 |
| $$H_3$$ | 時間（満期）に関する偏微分 | $$d\tau=-dt$$ のため符号が負。$$H$$ は満期が近づくと減少 |

**意味**：$$\alpha,\mu$$（期待収益）と選好が式から消え、オプション価格は株式・債券の分散と相関だけで決まる。

**結論へのつながり**：B–S の資本資産価格モデルの仮定は不要で、無裁定（式(69)）だけで同じ式が導かれる。ヘッジに使う債券は満期をオプションの満期に一致させる必要がある（式(71)）。

**③ 価格の表現（2変数への縮約）**

$$
H(S,P,\tau;E)=EP(\tau)\,y\!\left[S/EP(\tau),\,\int_0^{\tau}V^2(s)\,ds\right]
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$EP(\tau)$$ | 行使価格の現在価値 | $$H$$ が $$(S,EP(\tau))$$ の1次同次であることの現れ（式(79)） |
| $$S/EP(\tau)$$ | 標準化した株価 | 行使価格を現在価値で測った株価。この単位で価格が決まる |
| $$\int_0^{\tau}V^2(s)ds$$ | 累積分散 | $$V^2=\sigma^2+\delta^2-2\rho\sigma\delta$$（式(77)）。分散が時間依存でも2変数に縮約できる |
| $$y$$ | 標準ワラントの価格 | 満期 $$T$$、$$E=1$$、単位分散、金利ゼロのワラント（式(84)） |

**意味**：任意のヨーロピアン・ワラントの価格は、標準ワラントの表1つ（株価と時間の2変数）から計算できる。

**結論へのつながり**：実証や応用で必要な表が最小化され、分散が増えるとワラント価格は上がる（定理15、式(93)）。

**④ 標準ワラントの解**

$$
y(x,T)=\bigl[\,x\,\text{erfc}(u_1)-\text{erfc}(u_2)\,\bigr]/2
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$x\,\text{erfc}(u_1)/2$$ | 株式の項 | 標準化された株価と、満期に行使される確率に対応する項（式(55)の $$S\Phi(d_1)$$ に対応） |
| $$\text{erfc}(u_2)/2$$ | 行使価格の項 | 行使価格を1に標準化した支払い（式(55)の $$Ee^{-r\tau}\Phi(d_2)$$ に対応） |
| $$u_1,u_2$$ | 標準化された期待値の距離 | (89) で定義。$$u_1-u_2=-\sqrt{T/2}$$ |

**意味**：(55) と同じ形で、期待収益や選好に依存しない。

**結論へのつながり**：金利が一定のとき (85)(88) は B–S の式(55)に一致し、B–S の式がより弱い仮定の下でも成り立つことを示す。

**⑤ プット・コール・パリティ**

$$
g(S,\tau;E)=f(S,\tau;E)-S+EP(\tau)
$$

| 項 | 何か | モデルでの役割・性質 |
|---|---|---|
| $$g(S,\tau;E)$$ | ヨーロピアン・プットの価値 | 満期にだけ行使できる。アメリカン・プットは一般に正の早期行使確率があり、この式は成り立たない（式(54)） |
| $$f(S,\tau;E)$$ | ヨーロピアン・コールの価値 | コールの理論が決まればプットが一意に決まる |
| $$-S+EP(\tau)$$ | 株式のショートと貸付 | コールとこの合成ポジションがプットのペイオフを再現（式(46)） |

**意味**：プットは、コール、株式のショート、行使価格の現在価値の貸付で複製できる。

**結論へのつながり**：株価や将来金利の分布の仮定が不要で、プットの理論はコールの理論に帰着する（式(47)）。

**主要式のつながり**

```
 A1 (支配されない) ──▶ ① (10) 下限 ──▶ 定理2・3 (11)(12)
        │
        ├──▶ ⑤ (47) プット・コール・パリティ
        │
 B1〜B4 (連続取引・伊藤過程) ──▶ ② (74) PDE ──▶ ③ (85) 2変数への縮約 ──▶ ④ (88)
                                                      │
                                                      └──▶ (55) B–S 式（金利一定）
```

**比較静学**

| 変化 | 結果 | 符号・式 |
|---|---|---|
| 金利上昇（$$P(\tau)$$ 低下） | ワラント価格は上昇 | 式(91) |
| 株式収益の分散上昇 | ワラント価格は上昇 | 式(93)、定理8（式(25)） |
| 行使価格上昇 | ワラント価格は下落、$$E$$ について凸 | 式(16)、式(14) |
| 満期延長 | ワラント価格は非減少 | 式(4) |
| 株価上昇 | ワラント価格は上昇、$$S$$ について凸（D.I.S.P. のもとで） | 式(27)、式(6)、式(7) |
| 分散投資（ポートフォリオ化） | ポートフォリオのワラントは構成ワラントの平均以下 | 式(22) |

**特殊ケース**

| ケース | 結果 | 式 |
|---|---|---|
| 金利一定（$$\delta=0$$、$$\mu=r$$、$$P=e^{-r\tau}$$、$$T=\sigma^2\tau$$） | B–S の式 | 式(55) |
| 永久ワラント | 株式と同値 | 式(12) |
| 配当なし・行使価格一定 | アメリカン＝ヨーロピアン | 式(11) |
| 一定配当、$$E\gt d/r$$ | 早期行使なし | 式(43) |
| 永久アメリカン・プット | $$\dfrac{E}{1+\nu}\left[\dfrac{(1+\nu)S}{\nu E}\right]^{-\nu}$$ | 式(119) |
| 永久ダウン・アンド・アウト・コール | 割引は $$bE(S/bE)^{-\nu}$$ | 式(132) |
| 永久コーラブル・ワラント | $$\dfrac{K}{K+E}S$$ | 式(141) |

---

## 2. 説明できる現象 {#sec2}

| 現象 | モデルによる説明の要点 |
|---|---|
| ワラント価格が金利の増加関数 | 下限が $$S-EP(\tau)$$ で $$P(\tau)$$ に依存し、ワラントは限定責任の割引ローンで株式を買う長期ポジションと等価（式(10)、(91)） |
| 満期が長いほど価値が高い | 満期の延長は価値を減らさない（式(4)）。永久ワラントは株式の価値に収束（式(12)） |
| 株式のリスク（分散）が大きいほどワラントが高い | 定理8と定理15（式(25)、(93)）。分散が妥当なリスク尺度（1.14節） |
| ポートフォリオのワラントは個別ワラントより安い | ワラントは株価について凸なので分散投資は価値を下げる（式(22)、(23)） |
| 配当と行使価格変更が早期行使と価格プレミアムの唯一の理由 | 無配当・固定行使価格ならアメリカン＝ヨーロピアン（式(11)）。早期行使は配当や行使価格の不利な変更の直前にのみ起こる（式(37)〜(43)） |
| 現金配当の「調整」が不完全になりうる | 行使価格から配当額を引く標準調整は不完全で、$$S=E$$ で約 $$d/S$$ の割合の損失が生じる（式(35)）。正しい調整は式(32) |
| アメリカン・プットがヨーロピアン・プットより高い | プットは満期より前に行使されることがほとんど常に起こり得る（式(54)）。コールからプットは一意に決まらない（式(53)） |
| 株価が低いほどプットは早く行使される | 永久プットの行使境界 $$s_P^{\ast}=\nu E/(1+\nu)$$（式(118)） |
| ノックアウト条項で価格が割り引かれる | 割引項 $$bE(S/bE)^{-\nu}$$ が標準コールから減る（式(127)、(132)） |
| コール条項付きでワラントが割り引かれる | コール条項の価値が企業のオプションとなる（式(133)、(140)、(141)） |

## 3. 整理している点 {#sec3}

- 「より多くを好む」という弱い仮定（A1）だけで、オプション価格が満たすべき必要条件（下限、単調性、凸性、同次性、プット・コール・パリティ）の体系が得られる。
- B–S 式の導出に資本資産価格モデルは不要で、連続取引、伊藤過程、確定的な分散、無裁定（式(69)）で十分。式は期待収益・選好・資産の総供給に依存せず、確率的金利でもヘッジ債券の満期をオプションの満期に一致させればよい。
- 同じ偏微分方程式の枠組みが、配当、行使価格変更、アメリカン・プット、ダウン・アンド・アウト、コーラブルのように、境界条件を変えるだけで拡張できる。

## 4. 対象外の現象 {#sec4}

- A1だけでは、オプション価格の公式は一意に決まらない（B–S 式は追加仮定のもとでの一つの合理的理論）。
- B–S 式は、投資家全員が $$V^2(\tau)$$ に合意するという仮定のもとでの話であり、合意しなければ同じワラントに別の価値がつく。市場が違う価格をつけても裁定利益が保証されるわけではない。
- 離散的取引では (85) は成り立たない（Samuelson–Merton モデルが反例）。取引費用・空売り制限などの摩擦を落とすと、(85)(88) は下限にとどまる可能性がある。
- 有限満期のアメリカン・プット、および配当つきの有限満期アメリカン・ワラントの閉じた解は与えられない。
- 投資政策・資本構成の予期しない変更は、支払い保護では防げない。B–S 式をアメリカン・プットにそのまま使うことはできない。
- 株式収益のパレート安定分布（無限のモーメント）は扱わない（脚注42：その場合の均衡価値は株価自身であり、実証と整合しないという推測のみ）。
- オプション価格から株式の期待収益や投資家のリスク選好を推定することは、式が $$\alpha$$ と選好に依存しないので、原理的にできない。
- 実証検証の結果の数値は論文では扱わない。

## 5. 主要文献・関連論文 {#sec5}

- **[原著/金字塔論文]** Black, F., Scholes, M. (1973). The pricing of options and corporate liabilities. *Journal of Political Economy*, 81(3), 637–654.
  - **位置づけ**: ヨーロピアン・コールの閉じた式 (55) を最初に導いた論文。本論文はこの式をより弱い仮定で別導出し、拡張した。
- **[原著/金字塔論文]** Samuelson, P. A. (1965). Rational theory of warrant pricing. *Industrial Management Review*, 6(2), 13–31.
  - **位置づけ**: ワラント価格理論を厳密に定式化し、「高接触」条件を導入した先駆的論文。本論文の数学的な枠組み（式(101)など）の基礎。
- **[関連文献]** Rothschild, M., Stiglitz, J. E. (1970). Increasing risk: I. A definition. *Journal of Economic Theory*, 2(3), 225–243.
  - **位置づけ**: 「より危険」の定義を与えた論文。本論文の定理8の定義（式(24)）と付録2（1.14節）が依拠。
- **[発展/関連文献]** Merton, R. C. (1974). On the pricing of corporate debt: The risk structure of interest rates. *Journal of Finance*, 29(2), 449–470.
  - **位置づけ**: 本論文の結論で示される、企業の負債・資本を企業価値に対するオプションとして評価する構想を、リスク付き社債に実装した論文。
- **[発展/関連文献]** Cox, J. C., Ross, S. A., Rubinstein, M. (1979). Option pricing: A simplified approach. *Journal of Financial Economics*, 7(3), 229–263.
  - **位置づけ**: 離散時間の二項モデルで B–S 式を導き、リスク中立評価の枠組みを広めた論文。本論文の連続時間・無裁定の議論と補完的。

---

## 付録：導出手順 {#appendix}

### A.0 構造図

```
A1 (支配されない)
 ├─ T1 ─▶ A.2  (1)〜(9) → 定理1〜3 (10)(11)(12) → 定理4・5 (14)〜(17)
 ├─ T2 ─▶ A.3  定理6〜10 (18)〜(27)
 ├─ T1 ─▶ A.4  定理11・系 (28)〜(34)、行使価格変更 (36)〜(43)
 └─ T1 ─▶ A.5  プット (44)〜(54)
B1〜B4 ─ T3(伊藤の補題) ─▶ A.6  (63)〜(74)
      ─ T4(オイラーの定理) ─▶ (71)
      ─ T5(熱方程式) ─▶ A.7 (79)〜(89)
      ─ T6(S^m 型の解) ─▶ A.8 (112)〜(120)、(121)〜(132)、(133)〜(141)
      ─ T7(最大化) ─▶ A.8 高接触 (101)
付録1・2 ─▶ A.9 (142)〜(149)
```

### A.1 使う道具

**T1　支配の議論**

2つのポートフォリオ $$A,B$$ について、満期にすべての状態で $$A$$ の価値 $$\ge$$ $$B$$ の価値、ある状態で厳密に大きいなら、A1 から現在価値でも $$A\ge B$$。

**T2　$$\text{Max}[0,S-E]$$ の凸性**

$$\text{Max}[0,\,x]$$ は凸関数なので、$$\text{Max}[0,\,\sum\lambda_ix_i]\le\sum\lambda_i\text{Max}[0,\,x_i]$$（$$\lambda_i\ge0$$、$$\sum\lambda_i=1$$）。

**T3　伊藤の補題**

$$dS/S=\alpha dt+\sigma dz$$ のとき、関数 $$H(S,t)$$ について $$dH=H_1dS+H_2dt+\tfrac12H_{11}(dS)^2$$、$$(dS)^2=\sigma^2S^2dt$$、$$(dt)^2=dt\,dz=0$$。

**T4　オイラーの定理**

$$H$$ が $$(S,P)$$ について1次同次なら $$H=SH_1+PH_2$$。

**T5　熱方程式の解**

$$\tfrac12\phi_{\xi\xi}-\phi_T=0$$、$$\phi(\xi,0)=\phi_0(\xi)$$ の有界な解は $$\phi(\xi,T)=\int\frac{1}{\sqrt{2\pi T}}e^{-(\xi-s)^2/2T}\phi_0(s)ds$$。

**T6　$$S^m$$ 型の解**

$$\tfrac12\sigma^2S^2f''+rSf'-rf=0$$ に $$f=S^m$$ を代入すると $$\tfrac12\sigma^2m(m-1)+rm-r=0$$ で、$$m=1$$ または $$m=-2r/\sigma^2=-\nu$$。

**T7　最大化と高接触**

$$f(x,c)$$ が $$c$$ について凹で $$f(c,c)=h(c)$$ とする。最大化点 $$c=c^{\ast}$$ では $$f_2(x,c^{\ast})=0$$。境界に沿った全微分 $$df/dc=dh/dc=f_1(c,c)+f_2(c,c)$$ から、$$c=c^{\ast}$$ で $$f_1(c^{\ast},c^{\ast})=dh/dc$$。

### A.2 定理1〜5（式(10)〜(17)）

**Step 1　ポートフォリオを作る**

$$A$$：ワラントを $$f(S,\tau;E)$$ で買い、債券を $$E$$ 単位（1単位 $$P(\tau)$$）買う。総投資額 $$f+EP(\tau)$$。$$B$$：株式を $$S$$ で買う。

**Step 2　満期の価値**

満期の株価 $$S^{\ast}$$。$$B$$ の価値は $$S^{\ast}$$。$$S^{\ast}\le E$$ なら $$A$$ は $$0+E=E\ge S^{\ast}$$。$$S^{\ast}\gt E$$ なら $$A$$ は $$(S^{\ast}-E)+E=S^{\ast}$$。

**Step 3　T1 を適用**

$$A$$ は $$B$$ 以上なので、A1 から $$f+EP(\tau)\ge S$$。(1) と合わせて (10)。

**Step 4　定理2**

行使すれば $$\text{Max}[0,\,S-E]$$。(10) から $$F\ge\text{Max}[0,\,S-EP(\tau)]$$ で、(9) より $$P(\tau)\lt1$$（$$\tau\gt0$$）なので $$S-EP(\tau)\gt S-E$$。したがって生きているほうが価値が高く、(5) と合わせて (11)。

**Step 5　定理3**

(10) で $$\tau=\infty$$ とし、$$P(\infty)=0$$（正の金利）なので $$F(S,\infty;E)\ge S$$。(7) の $$S\ge F$$ と合わせて (12)。

**Step 6　定理4（凸性）**

$$A$$：$$\lambda$$ 個の行使価格 $$E_1$$ のワラントと $$(1-\lambda)$$ 個の行使価格 $$E_2$$（$$E_2\gt E_1$$）のワラント。$$B$$：行使価格 $$E_3=\lambda E_1+(1-\lambda)E_2$$ のワラント1個。T2 から満期に $$\lambda\text{Max}[0,S^{\ast}-E_1]+(1-\lambda)\text{Max}[0,S^{\ast}-E_2]\ge\text{Max}[0,S^{\ast}-E_3]$$。T1 から現在価値でも成り立ち、(14)。$$\tau$$ を使っていないので、早期行使しても同じで、アメリカンにも成り立つ。

**Step 7　定理5**

右側の不等式は (6)。左側：$$A$$：行使価格 $$E_2$$ のワラント1個と、債券 $$(E_2-E_1)$$ 単位（$$E_1\lt E_2$$）。$$B$$：行使価格 $$E_1$$ のワラント。満期に $$A=\text{Max}[0,S^{\ast}-E_2]+(E_2-E_1)$$、$$B=\text{Max}[0,S^{\ast}-E_1]$$。$$S^{\ast}\lt E_2$$ で $$A\gt B$$、$$S^{\ast}\ge E_2$$ で等しい。T1 から $$f(E_1)\le f(E_2)+P(\tau)(E_2-E_1)$$、(15)。$$E_2-E_1$$ で割って $$E_2\to E_1$$ として (16)。定理1の条件がなければ、債券の価値を満期の1（$$P\to1$$）に置き換え、(17)。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | A1、(1)〜(9)、$$P(\infty)=0$$ |
| 道具 | T1、T2 |

**確認**

$$\tau=0$$ のとき、(10) は $$f\ge\text{Max}[0,S-E]$$ で、(2) の等号と一致する（$$P(0)=1$$）。

### A.3 定理6〜10（式(18)〜(27)）

**Step 1　定理6**

2つのワラント（株価 $$Q=kS$$・行使価格 $$kE$$ と株価 $$S$$・行使価格 $$E$$）の満期の価値は $$\text{Max}[0,\,Q^{\ast}-kE]=k\,\text{Max}[0,\,S^{\ast}-E]$$。T1 から前者は後者の $$k$$ 倍に等しくなければならない。(18)。

**Step 2　定理7**

$$A$$：企業 $$i$$ のワラントを $$\lambda_i$$ 個ずつ。$$B$$：ポートフォリオ（$$\lambda_i$$ 株ずつ）のワラント1個。(21) と $$S_{n+1}=\sum\lambda_iS_i=S$$ から $$S_{n+1}^{\ast}=\sum\lambda_iS_i^{\ast}$$。T2 から $$\sum\lambda_i\text{Max}[0,S_i^{\ast}-E]\ge\text{Max}[0,\sum\lambda_iS_i^{\ast}-E]$$。T1 から (22)。

**Step 3　系**

$$z_i(t)$$ が同一分布なら $$Z_i(\tau)$$ も同一分布。仮定2から $$F_i=F_j$$ で、$$\sum\lambda_i=1$$ より (23)。

**Step 4　定理8**

$$Z_i(\tau)=Z(\tau)+\epsilon_i$$（$$\epsilon_i$$ は独立同一分布、$$\mathbb{E}[\epsilon_i\mid Z]=0$$）なので、$$Z_{n+1}(\tau)=\frac1n\sum Z_i=Z+\frac1n\sum\epsilon_i$$ で、$$Z_i$$ は同一分布。系（$$\lambda_i=1/n$$）から $$F_{n+1}\le F_i$$。大数の法則から $$n\to\infty$$ で $$Z_{n+1}\to Z$$（確率収束）、仮定2から $$\lim F_{n+1}=F_Z$$。したがって (25)。

**Step 5　定理9**

$$z_i(t)$$ が株価水準から独立なら、初期株価 $$S_1,S_2$$ の $$z_1,z_2$$ は同一分布。$$k=S_2/S_1$$、$$E_2=kE_1$$ として、定理6から $$F_2(S_2,\tau;E_2)=kF_2(S_1,\tau;E_1)$$、仮定2から $$F_2(S_1,\tau;E_1)=F_1(S_1,\tau;E_1)$$。(26)。

**Step 6　定理10**

定理4から $$F(1,\tau;E_3)\le\theta F(1,\tau;E_1)+(1-\theta)F(1,\tau;E_2)$$、$$E_3=\theta E_1+(1-\theta)E_2$$。$$\theta\equiv\lambda S_1/S_3$$、$$E_1\equiv E/S_1$$、$$E_2\equiv E/S_2$$ とし、両辺に $$S_3$$ をかけると $$S_3F(1,\tau;E_3)\le\lambda S_1F(1,\tau;E_1)+(1-\lambda)S_2F(1,\tau;E_2)$$。(26) の1次同次性から $$F(S_3,\tau;S_3E_3)\le\lambda F(S_1,\tau;S_1E_1)+(1-\lambda)F(S_2,\tau;S_2E_2)$$。$$E_i$$ の定義から (27)。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | A1、A2、(14)、(18)、(19)〜(26) |
| 道具 | T1、T2 |

**確認**

$$k=1$$ では (18) は自明。$$n=1$$ では (22) は等号。

### A.4 定理11・行使価格変更・配当（式(28)〜(43)）

**Step 1　定理11**

企業 $$i$$ について $$z_i(t)=\Lambda_i(t)\chi_i(t)$$（(29)）。$$N_i(t)=\Lambda_i(t)N_i(t-1)$$、$$S_i^{x}(t)=\prod\chi_i(k)S$$（(28)）から、満期または行使日の価値は

$$
\text{Max}[0,\,N_i(t)S_i^{x}(t)-E],\qquad N_i(t)S_i^{x}(t)=\Bigl[\prod_{k=1}^{t}\Lambda_i(k)\Bigr]\Bigl[\prod_{k=1}^{t}\chi_i(k)S\Bigr]=\prod_{k=1}^{t}z_i(k)S
$$

（(30)）。$$z_i$$ が同一分布なら、仮定2から $$\Lambda_i$$ の選び方に依らず (31)。

**Step 2　系**

第1回の配当落ち日、保護されたワラントは総行使価格 $$E$$ で $$\Lambda$$ 株の請求権を持つ。規模の経済がないので定理6（スケール）から、$$\Lambda$$ 株・総 $$E$$ のワラントの価値は $$\Lambda$$ 個の「1株・行使価格 $$E/\Lambda$$」のワラントの価値（$$\Lambda F(S,\tau;E/\Lambda)$$）に等しい。帰納的に各配当日で成り立つ。(32)。

**Step 3　B–S の例**

投資政策の変更後、株式は無リスクで、ワラント価格は $$\text{Max}[0,S-EP(\tau)]$$。$$S^{x}=(1-\kappa)S$$、$$\Lambda=1+\kappa/(1-\kappa)=1/(1-\kappa)$$（(33)）。調整後の価値は

$$
\Lambda\,\text{Max}\bigl[0,\,S^{x}-EP(\tau)/\Lambda\bigr]=\text{Max}\bigl[0,\,\Lambda S^{x}-EP(\tau)\bigr]=\text{Max}[0,\,S-EP(\tau)]
$$

（$$\Lambda>0$$ をかけても $$\text{Max}$$ の中身の符号は変わらない）。(34)。

**Step 4　標準的な調整の損失（脚注23）**

$$F(S-d,\tau;E-d)-F(S,\tau;E)$$ をテイラー展開：$$-dF_S-dF_E+o(d)$$。1次同次性のオイラーの定理（T4）から $$F=SF_S+EF_E$$ なので $$F_E=(F-SF_S)/E$$。よって $$-dF_S-d(F-SF_S)/E=-\dfrac{d}{E}\bigl[F-(S-E)F_S\bigr]$$（(35)）。

**Step 5　行使価格変更**

$$\tau_j^{+}$$ の直前以外では、定理1・2と同様に早期行使は起こらない（行使価格が下がらないので、保持が優る）。$$\tau\in[0,\tau_1]$$ で $$F_0$$ を標準問題として解き、その結果を境界条件に $$F_1$$ を解く。これを (37) で帰納的に繰り返す。(38) が成り立てば常に生きているほうが価値が高い。定理1から $$F_j(S,\tau_{j+1};E_j)\ge\text{Max}[0,\,S-P(\tau_{j+1}-\tau_j)E_j]$$、これが $$S-E_{j+1}$$ 以上であるには $$E_{j+1}\gt P(\tau_{j+1}-\tau_j)E_j$$（(39)）で十分。

**Step 6　系（永久ワラント）**

最後の行使価格変更の後は、定理3から $$F_0(S,\infty;E_0)=S$$。直前では $$F_1(S,\infty;E_1)=\text{Max}[0,S-E_1,S]=S$$（(40)）。帰納的に早期行使はなく、定理3から価格は $$S$$。

**Step 7　配当（既知）**

配当の支払い直前に行使する選択を考えれば同じ議論が成り立ち、(41)。確定的な配当と金利では、早期行使して現金を投資したときの収益と配当の損失を比べて (42)。連続的配当率 $$d$$、金利 $$r$$ では (42) は $$E\gt d/r$$ に帰着し (43)。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | A1、A2、(10)、(18)、(26) |
| 道具 | T1、T4 |

**確認**

$$d\to0$$ で (35) の損失はゼロ。$$E\to\infty$$ で (43) は常に成り立つ。

### A.5 プット（式(44)〜(54)）

**Step 1　(45)**

ポートフォリオ：株式のロング（$$S$$）、ヨーロピアン・プットのロング（$$g$$）、借入 $$EP'(\tau)$$。満期の価値：$$S^{\ast}\le E$$ で $$S^{\ast}+(E-S^{\ast})-E=0$$、$$S^{\ast}\gt E$$ で $$S^{\ast}+0-E=S^{\ast}-E$$。同条件のヨーロピアン・コールと同じペイオフなので、T1 から (45)。

**Step 2　(46)**

ポートフォリオ：ヨーロピアン・コールのロング、株式のショート、貸付 $$EP(\tau)$$。満期の価値：$$S^{\ast}\le E$$ で $$0-S^{\ast}+E=E-S^{\ast}$$、$$S^{\ast}\gt E$$ で $$(S^{\ast}-E)-S^{\ast}+E=0$$。プットと同じペイオフ。T1 から (46)。

**Step 3　定理12**

$$P(\tau)=P'(\tau)$$ のとき (45)(46) を同時に適用すると (47)。

**Step 4　系1・2**

(5)(7) から $$f-S\le0$$。(46) から $$EP(\tau)\ge g$$（(48)）。$$P(\infty)=0$$ と $$g\ge0$$ から $$g(S,\infty;E)=0$$（(49)）。

**Step 5　アメリカン・プット**

(50) は即時行使の価値。(51) は (5) と同じ議論。アメリカンの場合、$$T$$ 年前の中間時点の第1ポートフォリオ（株式＋アメリカン・プット－借入）の価値は

$$
S^{\ast}+G(S^{\ast},T;E)-EP'(T)=G(S^{\ast},T;E)+(S^{\ast}-E)+E[1-P'(T)]\gt S^{\ast}-E
$$

なので、アメリカン・ワラントを支配しない条件 (52)。第2ポートフォリオ（アメリカン・コールのロング、株式のショート、貸付 $$EP(\tau)$$）の中間価値は

$$
F(S^{\ast},T;E)-S^{\ast}+EP(T)=(E-S^{\ast})+F(S^{\ast},T;E)-E[1-P(T)]
$$

で、$$F(S^{\ast},T;E)\lt E[1-P(T)]$$（十分小さい $$S^{\ast}$$ で起こりうる）なら $$E-S^{\ast}$$ を下回る。(50) から $$G(S^{\ast},T;E)\ge E-S^{\ast}$$ なので、プットの所有者が早期行使すれば、ポートフォリオの価値が行使したプットを下回りうる。このためポートフォリオはプットを支配せず、(53) の弱い不等式のみ。

**Step 6　定理13**

アメリカン・プットがヨーロピアンより高い唯一の理由は、早期行使の確率が正であること。A1から、ある $$T\le\tau$$ とある $$S^{\ast}$$ について $$g(S^{\ast},T;E)\lt G(S^{\ast},T;E)$$ なら $$g(S,\tau;E)\lt G(S,\tau;E)$$。定理12から $$g(S^{\ast},T;E)=f(S^{\ast},T;E)-S^{\ast}+EP(T)$$、(50) から $$G(S^{\ast},T;E)\ge\text{Max}[0,E-S^{\ast}]$$。$$g\lt G$$ は $$f(S^{\ast},T;E)\lt E[1-P(T)]$$ のとき $$E-S^{\ast}$$ との比較で成り立つ。仮定により、そのような $$S^{\ast}$$ は正の確率で起こるので (54)。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | A1、(1)〜(9)、(44) |
| 道具 | T1 |

**確認**

金利一定で (47) は $$g=f-S+Ee^{-r\tau}$$（B–S の (26) に対応）。(48) は、$$S=0$$ のとき (47) と (8) から $$g(0,\tau;E)=EP(\tau)$$ で等号。

### A.6 B–S の別導出（式(63)〜(74)）

**Step 1　伊藤の補題（T3）**

$$H(S,P,\tau;E)$$ について、(58)(59) と (63) の2階項 $$(dS)^2=\sigma^2S^2dt$$、$$(dP)^2=\delta^2P^2dt$$、$$(dS\,dP)=\rho\sigma\delta SP\,dt$$、$$d\tau=-dt$$ を代入し、$$dt$$ の係数をまとめると (64)(65)。

**Step 2　ポートフォリオの収益**

$$dS/S=\alpha dt+\sigma dz$$、$$dH/H=\beta dt+\gamma dz+\eta dq$$、$$dP/P=\mu dt+\delta dq$$、$$w_3=-(w_1+w_2)$$ から、各係数を整理して (67)。

**Step 3　ゼロ裁定**

$$dz,dq$$ の係数をゼロにする $$w_1^{\ast},w_2^{\ast}$$ が選べると、収益は非確率的で、投資額ゼロなので期待収益もゼロ。このときの3つの条件が線形系 (68)。自明でない解を持つには、行列式（係数の比）が整合する条件 (69)。

**Step 4　(70)(71)**

(69) の第2の等号から $$\gamma/\sigma=(\delta-\eta)/\delta=1-\eta/\delta$$。(65) の $$\gamma=\sigma SH_1/H$$、$$\eta=\delta PH_2/H$$ を代入して (70)、両辺に $$H$$ をかけて (71)。

**Step 5　(72)(73)(74)**

(69) の第1の等号 $$\beta-\mu=\gamma(\alpha-\mu)/\sigma$$ と (65) の $$\beta H$$ から、

$$
\tfrac12\sigma^2S^2H_{11}+\rho\sigma\delta SPH_{12}+\tfrac12\delta^2P^2H_{22}+\alpha SH_1+\mu PH_2-H_3-\mu H=SH_1(\alpha-\mu)
$$

（(72)、$$\gamma H/\sigma=SH_1$$ を使用）。右辺の $$\alpha SH_1$$ を移項して $$\mu SH_1$$ を残すと (73)。(71) より $$\mu SH_1+\mu PH_2-\mu H=0$$ なので $$\mu$$ の項が消え、(74)。

**Step 6　$$x$$ の動学（(76)(77)）**

$$x=S/EP(\tau)$$ に伊藤の補題（比の公式）を適用：

$$
\frac{dx}{x}=\frac{dS}{S}-\frac{dP}{P}+\Bigl(\frac{dP}{P}\Bigr)^2-\frac{dS}{S}\frac{dP}{P}=\bigl[\alpha-\mu+\delta^2-\rho\sigma\delta\bigr]dt+\sigma dz-\delta dq
$$

分散は $$\sigma^2+\delta^2-2\rho\sigma\delta$$（(77)）。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | B1〜B4、A1、(58)〜(61) |
| 道具 | T3、T4 |

**確認**

金利が一定（$$\delta=0$$、$$\mu=r$$）なら (74) は $$\tfrac12\sigma^2S^2H_{11}-H_3=0$$ で、(71) より $$H=SH_1+PH_2$$。この場合の $$H$$ は B–S の偏微分方程式 $$\tfrac12\sigma^2S^2f_{11}+rSf_1-rf-f_\tau=0$$（(97) の $$D=0$$）と、$$P=e^{-r\tau}$$ を通して整合する。

### A.7 標準ワラントの解（式(78)〜(89)）と高接触条件

**Step 1　変数変換（(78)→(79)）**

$$H=EP\,h(x,\tau)$$、$$x=S/EP$$ とする（$$P$$ は独立変数で $$\partial x/\partial P=-x/P$$）。$$H_1=h_x$$、$$H_2=E(h-xh_x)$$、$$H_{11}=h_{xx}/(EP)$$、$$H_{12}=-xh_{xx}/P$$、$$H_{22}=Ex^2h_{xx}/P$$、$$H_3=EPh_\tau$$。(74) に代入すると $$h_{xx}$$ の係数は $$\tfrac12(\sigma^2-2\rho\sigma\delta+\delta^2)x^2EP=\tfrac12V^2x^2EP$$。$$EP$$ で割って (79)。境界条件 (75) から (80)。

**Step 2　時間の変換（(81)→(82)）**

$$T=\int_0^{\tau}V^2ds$$、$$y(x,T)=h(x,\tau)$$ なら $$h_\tau=V^2y_T$$。(79) から $$V^2[\tfrac12x^2y_{xx}-y_T]=0$$ で (82)。(83) は (80) の対応。

**Step 3　標準形（(86)(87)）**

$$\xi=\log x+T/2$$、$$y=x\phi(\xi,T)$$ とすると $$y_x=\phi+\phi_\xi$$、$$y_{xx}=(\phi_\xi+\phi_{\xi\xi})/x$$、$$y_T=x(\phi_T+\phi_\xi/2)$$。(82) に代入して $$x[\tfrac12\phi_\xi+\tfrac12\phi_{\xi\xi}-\phi_T-\tfrac12\phi_\xi]=0$$、(86)。初期条件は $$T=0$$（$$\xi=\log x$$）で $$\phi=\text{Max}[0,1-1/x]=\text{Max}[0,1-e^{-\xi}]$$、(87)。

**Step 4　熱方程式の解（T5）**

$$\phi(\xi,T)=\int_0^{\infty}(1-e^{-s})\frac{e^{-(\xi-s)^2/2T}}{\sqrt{2\pi T}}ds=\Phi\Bigl(\frac{\xi}{\sqrt T}\Bigr)-e^{-\xi+T/2}\Phi\Bigl(\frac{\xi-T}{\sqrt T}\Bigr)$$

$$x=e^{\xi-T/2}$$ をかけて $$y=x\Phi(\xi/\sqrt T)-\Phi((\xi-T)/\sqrt T)$$。$$\Phi(z)=\tfrac12\text{erfc}(-z/\sqrt2)$$、$$\xi/\sqrt T=-\sqrt2u_1$$、$$(\xi-T)/\sqrt T=-\sqrt2u_2$$ から (88)(89)。（原論文は「標準的」として解を示す。この中間式は本記事による補足。）

**Step 5　(85)**

(78)(81) を元に戻すと $$H=EP(\tau)\,y[x,T]$$。(85)。

**Step 6　B–S との一致**

$$\delta=0$$、$$\mu=r$$、$$P=e^{-r\tau}$$、$$V^2=\sigma^2$$ なら $$x=Se^{r\tau}/E$$、$$T=\sigma^2\tau$$。$$u_1=-d_1/\sqrt2$$、$$u_2=-d_2/\sqrt2$$。$$H=Ee^{-r\tau}\bigl[x\Phi(d_1)-\Phi(d_2)\bigr]=S\Phi(d_1)-Ee^{-r\tau}\Phi(d_2)$$、(55)。

**Step 7　定理14**

$$H$$ は $$S$$ の凸関数で原点を通るので、$$H-SH_1\le0$$。(71) より $$H-SH_1=PH_2$$、$$P\ge0$$ から $$H_2\le0$$。$$P(\tau)$$ は $$\tau$$ 年金利の減少関数なので (91)。

**Step 8　定理15**

(85) の分散による変化は $$y_2$$（$$T$$ についての偏微分）に比例する。$$y$$ は正当なアメリカン・ワラント（満期について非減少）なので $$y_2\ge0$$、(93)。

**Step 9　高接触条件（(100)→(101)）**

T7 を適用する。$$f(x,c)$$ を $$0\le x\le c$$ で $$c$$ について凹、$$f(c,c)=h(c)$$ とする。$$c=c^{\ast}$$ で最大化なら $$f_2(x,c^{\ast})=0$$。境界に沿った全微分 $$df/dc=dh/dc=f_1(c,c)+f_2(c,c)$$ から $$f_1(c^{\ast},c^{\ast})=dh/dc$$。ワラントの場合 $$h=c-E$$ なので $$dh/dc=1$$。(101)。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | (74)、(75)、(71) |
| 道具 | T3、T4、T5、T7 |

**確認**

$$x\to\infty$$ で $$u_1,u_2\to-\infty$$、$$\text{erfc}\to2$$ なので $$y\to x-1$$（行使確実）。$$x\to0$$ で $$y\to0$$。(83) と一致。

### A.8 アメリカン・プット、ダウン・アンド・アウト、コーラブル（式(112)〜(141)）

**Step 1　永久プット（(116)〜(120)）**

T6 から (114) の一般解は $$a_1S+a_2S^{-\nu}$$（(116)）。$$G(\infty)=0$$ から $$a_1=0$$。$$G(s_P)=E-s_P$$ から $$a_2=(E-s_P)s_P^{\nu}$$（(117)）。$$G=(E-s_P)s_P^{\nu}S^{-\nu}$$ を $$s_P$$ で微分すると $$-s_P^{\nu}+\nu(E-s_P)s_P^{\nu-1}=0$$ で $$s_P=\nu E/(1+\nu)$$（(118)）。$$E-s_P^{\ast}=E/(1+\nu)$$ なので (119)。(117) を $$S$$ で微分して $$S=s_P^{\ast}$$：$$-\nu(E-s_P^{\ast})/s_P^{\ast}=-\nu\cdot\frac{E}{1+\nu}\cdot\frac{1+\nu}{\nu E}=-1$$、(120)。

**Step 2　ダウン・アンド・アウト（(124)〜(127)）**

$$x=\log[S/B(\tau)]$$、$$T=\sigma^2\tau$$ とし、$$\Xi=\exp[\hat ax+\vartheta\tau]f^{\text{do}}/E$$ を (122) に代入すると、$$\hat a=(r-\eta_B-\sigma^2/2)/\sigma^2$$、$$\vartheta=r+\hat a^2\sigma^2/2$$ のとき1階項と $$f$$ の項が消えて (125)。境界条件 $$f^{\text{do}}(B,\tau)=0$$ は $$\Xi(0,T)=0$$、満期条件は $$\Xi(x,0)=e^{\hat ax}\text{Max}[0,be^x-1]$$（(126)）。これを T5（半無限区間・反射法）で解き、元に戻すと (127)。

**Step 3　永久ダウン・アンド・アウト（(130)〜(132)）**

T6 から一般解 $$a_1S+a_2S^{-\nu}$$。$$f(S)\le S$$ から $$a_1=1$$。$$f(bE)=0$$ から $$a_2=-bE(bE)^{\nu}$$。したがって $$f(S)=S-bE(S/bE)^{-\nu}$$（(132)）。

**Step 4　コーラブル（(137)〜(141)）**

(137) に T6 を適用し、$$\mathcal{C}(0)=0$$ から $$S^{-\nu}$$ の項が消え $$\mathcal{C}(S)=aS$$。$$\mathcal{C}(\bar S)=\bar S-\text{Max}(K,\bar S-E)$$ から $$a=1-\text{Max}[K/\bar S,\,1-E/\bar S]$$（(139)）。$$\bar S\lt K+E$$ で $$K\gt\bar S-E$$ なので $$a=1-K/\bar S$$（増加）、$$\bar S\gt K+E$$ で $$a=E/\bar S$$（減少）、したがって最大は $$\bar S=K+E$$ で $$a=E/(K+E)$$（(140)）。$$F^{\text{c}}=S-\mathcal{C}=KS/(K+E)$$（(141)）。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | (112)、(122)、(134)、(137) |
| 道具 | T5、T6、T7 |

**確認**

$$\nu\to0$$ や $$K\to\infty$$ で、(141) は $$S$$（ノンコーラブル）に一致。$$b\to0$$ で (132) は $$S$$（標準永久コール）に一致。$$E\to0$$ で (140) は $$\mathcal{C}=0$$。

### A.9 付録1・2（式(142)〜(149)）

**Step 1　(146)（付録1）**

(145) の台形密度を使い、$$E/S$$ が $$[1+\lambda\varrho,\,3-\lambda\varrho]$$ にある範囲で $$\int_{E/S}^{\infty}(S\hat Z-E)\,d\Pi$$ を評価する。中央の一様部分で $$\lambda=0$$ のとき $$\int_{E/S}^{3}\frac{S z-E}{2}dz=\frac{9S}{4}-\frac{3E}{2}+\frac{E^2}{4S}$$、裾の台形の寄与から $$\lambda^2\varrho^2S/12$$ が加わり (146)。（原論文の式の再現。台形の積分は本記事では省略。）

**Step 2　(147)**

(146) を $$S$$ で2回微分する。$$E^2/4S$$ から $$E^2/2S^3$$、$$\lambda^2\varrho^2S/12$$ から $$\frac{\lambda^2}{12}(\varrho^2S)''=\frac{\lambda^2}{12}\bigl[2S\varrho'^2+2S\varrho\varrho''+4\varrho\varrho'\bigr]=\frac{\lambda^2}{6}\bigl[S\varrho'^2+S\varrho\varrho''+2\varrho\varrho'\bigr]$$。(147)。

**Step 3　(148)(149)（付録2）**

(148)：$$x=[\log Z+\tfrac12\sigma^2]/\sigma$$ と置換すると $$Z=e^{\sigma x-\frac12\sigma^2}$$、$$\frac{dZ}{Z}=\sigma dx$$。$$\sigma$$ で微分して $$y=x-\sigma$$ と置くと $$\frac{\partial\,\mathbb{E}U}{\partial\sigma}=\frac1{\sqrt{2\pi}}\int U'(\cdot)\,y\,e^{-y^2/2}dy=\text{Cov}[U',y]$$（$$\mathbb{E}[y]=0$$ のため）。$$U'$$ は $$U$$ の凹性から $$y$$ の減少関数で、Hardy–Littlewood–Pólya の定理236（異なる単調性の関数の共分散は負）から (149)。

| 入力・使う道具 | 内容 |
|---|---|
| 入力 | (142)〜(145)、凹関数 $$U$$ |
| 道具 | 積分、共分散の符号定理 |

**確認**

$$\lambda=0$$ のとき (146) は $$\bar K[E^2/4S-3E/2+9S/4]$$ で、$$S,E$$ について1次同次。(147) は $$\bar KE^2/2S^3\gt0$$。

### A.10 著者について

**ロバート・C・マートン（Robert C. Merton）**
- **アカデミックな経歴**: 1944年ニューヨーク生まれ（父は社会学者ロバート・K・マートン。本論文の編集協力者としても謝辞に登場する）。コロンビア大学工学・応用科学部で工学数学の B.S.（1966年）、カリフォルニア工科大学で応用数学の M.S.（1967年）、MIT で経済学の Ph.D.（1970年）。本論文の執筆時は MIT スローン経営大学院の助教授（金融）。その後ハーバード大学のジョン・アンド・ナティ・マカーサー大学教授などを経て、現在は MIT スローン経営大学院の特別教授（金融）。
- **主要な研究分野**: 連続時間の金融理論、オプション・条件付き請求権の評価、異時点間のポートフォリオ選択、異時点間の資本資産価格モデル、リスクのある企業の負債の評価、ライフサイクル金融。
- **評判・学術的貢献**: 1997年、Myron Scholes とともにノーベル経済学賞を受賞（デリバティブの評価方法の開発）。B–S モデルを連続時間の無裁定とヘッジ・ポートフォリオの枠組みで厳密化し、「Black–Scholes–Merton」公式の名称で知られる。代表的業績に、連続時間のポートフォリオ選択（Merton のポートフォリオ問題）、異時点間資本資産価格モデル（ICAPM）、Merton モデル（企業の信用リスクの構造モデル）がある。1990年代に Long-Term Capital Management の創業者の一人として関わった（同ファンドは1998年に破綻）。

---

**© 1973 Robert C. Merton**. 原論文（*The Bell Journal of Economics and Management Science*, Vol. 4, No. 1, pp. 141–183）の著作権は出版社・著者に帰属する。本記事は数理モデルの整理であり、原論文の文章そのものの転載ではない。
{% endraw %}
