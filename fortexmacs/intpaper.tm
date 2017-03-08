<TeXmacs|1.99.4>

<style|<tuple|svjour|number-long-article>>

<\body>
  <\hide-preamble>
    \;

    <assign|section-sep|<macro|<sectional-sep>>>
  </hide-preamble>

  <date|%d %B at %k:%M>

  <section|Main results>

  Let <math|C<rsub|l><rsup|\<lambda\>><around*|(|s|)>> be the Gegenbauer
  polynomial of degree <math|l>, and we set

  <\equation*>
    u<rsub|l><rsup|\<lambda\>><around*|(|s|)>\<assign\><frac|2<rsup|2\<lambda\>-1>l!\<Gamma\><around*|(|\<lambda\>|)>|\<Gamma\><around*|(|2\<lambda\>+l|)>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>.
  </equation*>

  <\theorem>
    <label|main-thm>Suppose <math|l,m\<in\>\<bbb-N\>> such that <math|l+m> is
    even. For <math|\<lambda\>,\<mu\>,\<nu\>\<in\>\<bbb-C\>> with <math|Re
    \<lambda\>,Re \<mu\>,Re \<nu\>\<gtr\>-1/2,> and for
    <math|z\<in\><around*|[|0,1|]>><\footnote>
      Check the proof when <math|z=1>
    </footnote>, \ the following integral converges:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s-t
      z|\|><rsup|2\<nu\>>u<rsub|l><rsup|\<lambda\>><around*|(|s|)>u<rsub|m><rsup|\<mu\>><around*|(|t|)>d
      s d t>|<cell|>>|<row|<cell|>|<cell|=<frac|<around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>>\<pi\><rsup|3/2>\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)>z<rsup|m>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|l+m|2>-\<nu\>,<frac|m-l|2>-\<nu\>-\<lambda\>>>|<row|<cell|\<mu\>+m+1>>>>>;z<rsup|2>|)>|\<Gamma\><around*|(|\<mu\>+m+1|)>\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|l-m|2>+1|)>>,<eq-number><label|eqn:main>>|<cell|>>>>
    </eqnarray>

    where the Pochammer symbol <math|<around*|(|y|)><rsub|j>> stands for the
    rising factorial <math|y<around*|(|y+1|)><around*|(|y+2|)>\<cdots\><around*|(|y+j-1|)>>
    for <math|j\<in\>\<bbb-N\>>. Namely,

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s-t
      z|\|><rsup|2\<nu\>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>C<rsub|m><rsup|\<mu\>><around*|(|t|)>d
      s d t=>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|2\<lambda\>+l|)>\<Gamma\><around*|(|2\<mu\>+m|)><around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>>\<pi\><rsup|<frac|3|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>z<rsup|m>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|l+m|2>-\<nu\>,<frac|m-l|2>-\<nu\>-\<lambda\>>>|<row|<cell|\<mu\>+m+1>>>>>;z<rsup|2>|)>|2<rsup|2\<lambda\>+2\<mu\>-1>l!m!\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|\<mu\>|)>2\<Gamma\><around*|(|\<mu\>+m+1|)>\<Gamma\><around*|(|\<nu\>+<frac|l-m|2>+\<lambda\>+1|)>>.>|<cell|>>>>
    </eqnarray>
  </theorem>

  Note that as the Gegenbauer polynomial <math|g<around*|(|s|)>\<assign\>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>>
  satisfies the second-order differential equation

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<around*|(|1-s<rsup|2>|)>g<rprime|''>-<around*|(|2\<lambda\>+1|)>s
    g<rprime|'>+n<around*|(|n+2\<lambda\>|)>g=0,>|<cell|>>>>
  </eqnarray>

  \ <math|f<around*|(|s|)>\<assign\>u<rsub|l><rsup|\<lambda\>><around*|(|s|)>>
  satisfies

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<around*|(|1-s<rsup|2>|)><rsup|2>f<rprime|''>+<around*|(|1-s<rsup|2>|)><around*|(|1-2\<lambda\>-<around*|(|2\<lambda\>+1|)>s|)>f<rprime|'>+<around*|(|<around*|(|2s+1|)><around*|(|\<lambda\><rsup|2>-1/4|)>+l<around*|(|l+2\<lambda\>|)><around*|(|1-s<rsup|2>|)>|)>f=0.>|<cell|>>>>
  </eqnarray>

  <\remark>
    As we have <math|u<rsub|l><rsup|\<lambda\>><around*|(|-s|)>=<around*|(|-1|)><rsup|l>u<rsub|l><rsup|\<lambda\>><around*|(|s|)>>,
    we see that we can extend statement of Theorem <reference|main-thm> to
    include the <math|-1\<leqslant\>z\<leqslant\>0> case.
  </remark>

  The substitution of <math|z=1> in Theorem <reference|main-thm> yields:

  <\corollary>
    <label|cor:1>

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s-t|\|><rsup|2\<nu\>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>C<rsub|m><rsup|\<mu\>><around*|(|t|)>d
      s d t>|<cell|>>|<row|<cell|>|<cell|=<frac|<around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>>\<pi\><rsup|<frac|1|2>><around*|(|2\<lambda\>|)><rsub|l><around*|(|2\<mu\>|)><rsub|m>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+2\<nu\>+1|)>|l!m!\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<mu\>+\<nu\>-<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+<frac|l+m|2>+1|)>>.>|<cell|>>>>
    </eqnarray>
  </corollary>

  By the limit formula

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|H<rsub|n><around*|(|x|)>=n!lim<rsub|\<lambda\>\<rightarrow\>\<infty\>>\<lambda\><rsup|-<frac|n|2>>C<rsub|n><rsup|\<lambda\>><around*|(|<frac|x|<sqrt|\<lambda\>|>>|)>,>|<cell|>>>>
  </eqnarray>

  we deduce an integral formula of the Hermite polynomial from Corollaly
  <reference|cor:1>:

  <\corollary>
    <label|cor:Hermite>

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-\<infty\>><rsup|\<infty\>><big|int><rsub|-\<infty\>><rsup|\<infty\>><around*|\||x-y|\|><rsup|2\<nu\>>e<rsup|-x<rsup|2>-y<rsup|2>>H<rsub|l><around*|(|x|)>H<rsub|m><around*|(|y|)>d
      x d y>|<cell|>>|<row|<cell|>|<cell|=<around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>>2<rsup|\<nu\>+<frac|l+m|2>>\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)>.>|<cell|>>>>
    </eqnarray>
  </corollary>

  <section|Proof of Main Theorem>

  <\proposition>
    <label|prop:2>For <math|a,b,c\<in\>\<bbb-C\>> such that
    <math|Re<around*|(|a|)>,Re<around*|(|b|)>,Re<around*|(|c|)>\<gtr\>0> and
    <math|0\<leqslant\>z\<leqslant\>1> we have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s-t
      z|\|><rsup|2c-1><around*|(|1-s<rsup|2>|)><rsup|a-1><around*|(|1-t<rsup|2>|)><rsup|b-1>d
      s d t=<frac|<sqrt|\<pi\>>\<Gamma\><around*|(|a|)>\<Gamma\><around*|(|b|)>\<Gamma\><around*|(|c|)>|\<Gamma\><around*|(|a+c|)>\<Gamma\><around*|(|b+<frac|1|2>|)>>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-c+<frac|1|2>,-a-c+1>>|<row|<cell|b+<frac|1|2>>>>>>;z<rsup|2>|)>.<eq-number><label|eqn:stz>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>>>
    </eqnarray>
  </proposition>

  <\render-proof|Proof of Theorem <reference|main-thm>>
    (using Proposition <reference|prop:2>) By the Rodrigues formula for the
    Gegenbauer polynomial:

    <\equation*>
      u<rsub|l><rsup|\<lambda\>><around*|(|t|)>=<frac|<around*|(|-1|)><rsup|l>2<rsup|-l><sqrt|\<pi\>>|\<Gamma\><around*|(|\<lambda\>+l+<frac|1|2>|)>>\<cdot\><frac|d<rsup|l>|d
      t<rsup|l>><around*|(|1-t<rsup|2>|)><rsup|\<lambda\>+l-<frac|1|2>>,<eq-number><label|eqn:Rod>
    </equation*>

    the left-hand side of <math|<eqref|eqn:main>> amounts to

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<frac|2<rsup|-l-m>\<pi\>|\<Gamma\><around*|(|\<lambda\>+l+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+m+<frac|1|2>|)>><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s-t
      z|\|><rsup|2\<nu\>><frac|\<partial\><rsup|l>|\<partial\>s<rsup|l>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>+l-<frac|1|2>><frac|\<partial\><rsup|m>|\<partial\>t<rsup|m>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>+m-<frac|1|2>>d
      s d t.>|<cell|>>>>
    </eqnarray>

    If <math|Re<around*|(|\<nu\>|)>\<gtr\><frac|l+m|2>>,
    <math|Re<around*|(|\<lambda\>|)>\<gtr\><frac|1|2>> and
    <math|Re<around*|(|\<mu\>|)>\<gtr\><frac|1|2>>, then
    <math|<around*|\||s-t z|\|><rsup|2\<nu\>>> is of <math|C<rsup|l+m>> class
    and the above integral is equal to

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>+l-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>+m-<frac|1|2>><frac|\<partial\><rsup|l+m>|\<partial\>s<rsup|l>\<partial\>t<rsup|m>><around*|\||s-t
      z|\|><rsup|2\<nu\>>d s d t<eq-number><label|eqn:derst>>|<cell|>>>>
    </eqnarray>

    by integration by parts. Next, since <math|l+m\<in\>2\<bbb-N\>> we have

    <\equation*>
      <frac|\<partial\><rsup|l+m>|\<partial\>s<rsup|l>\<partial\>t<rsup|m>><around*|\||s-t
      z|\|><rsup|2\<nu\>>=<around*|(|-2\<nu\>|)><rsub|l+m><around*|(|-z|)><rsup|m><around*|\||s-t
      z|\|><rsup|2\<nu\>-l-m>,
    </equation*>

    hence <math|<eqref|eqn:derst>> equals

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<around*|(|-2\<nu\>|)><rsub|l+m><around*|(|-z|)><rsup|m><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s-t
      z|\|><rsup|2\<nu\>-l-m><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>+l-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>+m-<frac|1|2>>d
      s d t.>|<cell|>>>>
    </eqnarray>

    Then Theorem <reference|main-thm> follows from Proposition
    <reference|prop:2>.
  </render-proof>

  <section|Proof of Proposition <reference|prop:2>>

  In this section we show Proposition <reference|prop:2>, and thus complete
  the proof of Theorem <reference|main-thm>. We use the following three
  lemmas.

  <\lemma>
    <label|lem3>For <math|a,c\<in\>\<bbb-C\>> such that <math|Re a,Re
    c\<gtr\>0> and <math|-1\<leqslant\>z\<leqslant\>1> we have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around*|(|s-z|)><rsub|+><rsup|2c-1><around*|(|1-s<rsup|2>|)><rsup|a-1>d
      s=2<rsup|a-1>B<around*|(|2c,a|)><around*|(|1-z|)><rsup|2c+a>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|1-a,2c>>|<row|<cell|2c+a>>>>>;<frac|1-z|2>|)>.>|<cell|>>>>
    </eqnarray>
  </lemma>

  <\lemma>
    <label|lem4>For <math|a,b\<in\>\<bbb-C\>> with <math|Re a,Re b\<gtr\>0>
    and <math|z\<in\><around*|[|-1,1|]>> we have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around*|(|1-t
      z|)><rsup|a-1><around*|(|1-t<rsup|2>|)><rsup|b-1>d
      t=B<around*|(|<frac|1|2>,b|)> <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|1-a|2>,<frac|2-a|2>>>|<row|<cell|b+<frac|1|2>>>>>>;z<rsup|2>|)>.>|<cell|>>>>
    </eqnarray>
  </lemma>

  <\lemma>
    <label|lem:Fisum>Suppose <math|<around*|\||\<zeta\>|\|>\<less\>1>.

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|a|)><rsub|i><around*|(|1-a|)><rsub|i>|2<rsup|i>i!<around*|(|d|)><rsub|i>>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|1-d-i|2>,<frac|2-d-i|2>>>|<row|<cell|b+<frac|1|2>>>>>>;\<zeta\>|)>=<frac|2<rsup|1-d><sqrt|\<pi\>>\<Gamma\><around*|(|d|)>|\<Gamma\><around*|(|<frac|a+d|2>|)>\<Gamma\><around*|(|<frac|1-a+d|2>|)>>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|1-<frac|a+d|2>,<frac|1+a-d|2>>>|<row|<cell|b+<frac|1|2>>>>>>;\<zeta\>|)>.<eq-number><label|eqn:iF>>|<cell|>>>>
    </eqnarray>
  </lemma>

  Postponing the verification of Lemmas <reference|lem3>, <reference|lem4>
  and <reference|lem:Fisum>, we first show Proposition <reference|prop:2>.

  <\render-proof|Proof of Proposition <reference|prop:2>>
    The left-hand side of <math|<eqref|eqn:stz>> equals:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|2<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|s-t
      z|)><rsub|+><rsup|2c-1><around*|(|1-s<rsup|2>|)><rsup|a-1><around*|(|1-t<rsup|2>|)><rsup|b-1>d
      s d t>|<cell|>>|<row|<cell|>|<cell|=2<rsup|a>B<around*|(|2c,a|)><big|int><rsub|-1><rsup|1><around*|(|1-t
      z|)><rsup|2c+a-1> <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|1-a,a>>|<row|<cell|2c+a>>>>>;<frac|1-t
      z|2>|)><around*|(|1-t<rsup|2>|)><rsup|b-1>d t>|<cell|>>>>
    </eqnarray>

    by Lemma <reference|lem3>. Fix <math|\<varepsilon\>\<gtr\>0>. Assume
    <math|<around*|\||z|\|>\<leqslant\>1-2\<varepsilon\>>. Then
    <math|<around*|\||<frac|1-t z|2>|\|>\<leqslant\>1-\<varepsilon\>>.
    Expanding the hypergeometric function as a uniformly convergent power
    series, we can rewrite the latter integral as

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|1-a|)><rsub|i><around*|(|a|)><rsub|i>|2<rsup|i>i!<around*|(|2c+a|)><rsub|i>><big|int><rsub|-1><rsup|1><around*|(|1-t
      z|)><rsup|2c+a-1+i><around*|(|1-t<rsup|2>|)><rsup|b-1>d t.>|<cell|>>>>
    </eqnarray>

    Owing to Lemma <reference|lem4>, this is equal to

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|B<around*|(|<frac|1|2>,b|)><big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|1-a|)><rsub|i><around*|(|a|)><rsub|i>|2<rsup|i>i!<around*|(|2c+a|)><rsub|i>>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|1-2c-a-i|2>,<frac|2-2c-a-i|2>>>|<row|<cell|b+<frac|1|2>>>>>>;z<rsup|2>|)>.>|<cell|>>>>
    </eqnarray>

    Now Proposition <reference|prop:2> follows from Lemma
    <reference|lem:Fisum>.
  </render-proof>

  <\render-proof|Proof of Lemma <reference|lem3>>
    By the change of variables <math|s=<around*|(|1-z|)><around*|(|1-t|)>+z>,
    we have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around*|(|s-z|)><rsub|+><rsup|2c-1><around*|(|1-s<rsup|2>|)><rsup|a-1>d
      s=2<rsup|a-1><around*|(|1-z|)><rsup|a+2c-1><big|int><rsub|0><rsup|1>t<rsup|a-1><around*|(|1-t|)><rsup|2c-1><around*|(|1-<frac|1-z|2>t|)><rsup|a-1>d
      t>|<cell|>>>>
    </eqnarray>

    because <math|-1\<leqslant\>s\<leqslant\>1> and <math|s-z\<geqslant\>0>
    if and only if <math|0\<leqslant\>t\<leqslant\>1>. Then Lemma
    <reference|lem3> follows from Euler's integral representation of the
    hypergeometric function <math|<rsub|2>F<rsub|1>>.
  </render-proof>

  <\render-proof|Proof of Lemma <reference|lem4>>
    Again by Euler's integral representation of <math|<rsub|2>F<rsub|1>>, we
    have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around*|(|1-t
      z|)><rsup|a-1><around*|(|1-t<rsup|2>|)><rsup|b-1>d
      t=2<rsup|2b-1><around*|(|1+z|)><rsup|a-1>B<around*|(|b,b|)><rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|1-a,b>>|<row|<cell|2b>>>>>;<frac|2z|1+z>|)>.<eq-number><label|eqn:quad>>|<cell|>>>>
    </eqnarray>

    Applying the following quadratic transformation of
    <math|<rsub|2>F<rsub|1>> (cf. <cite-detail|andrews1999special|Thm. 3.13>)

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<space|0.6spc><rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|1-a,b>>|<row|<cell|2b>>>>>;u|)>=<around*|(|1-<frac|z|2>|)><rsup|a-1>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|1-a|2>,<frac|2-a|2>>>|<row|<cell|b+<frac|1|2>>>>>>;<around*|(|<frac|u|2-u>|)><rsup|2>|)>,>|<cell|>>>>
    </eqnarray>

    with <math|u=<frac|2z|1+z>>, we get the desired result after a small
    computation using the duplication formula of the
    <math|\<Gamma\>>-function.
  </render-proof>

  <\render-proof|Proof of Lemma <reference|lem:Fisum>>
    The Pochammer symbol <math|<around*|(|y|)><rsub|j>=<frac|\<Gamma\><around*|(|y+j|)>|\<Gamma\><around*|(|y|)>>>
    satisfies

    <\equation*>
      <around*|(|y|)><rsub|j>=y<around*|(|y+1|)>\<cdots\><around*|(|y+j-1|)>.
    </equation*>

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|y<rsub|j><around*|(|1-y|)><rsub|-j>>|<cell|=<around*|(|-1|)><rsup|j>,<eq-number><label|eqn:p1>>>|<row|<cell|<around*|(|<frac|y|2>|)><rsub|j><around*|(|<frac|1+y|2>|)><rsub|j>>|<cell|=2<rsup|-2j><around*|(|y|)><rsub|2j>,<eq-number><label|eqn:p2>>>|<row|<cell|<around*|(|y|)><rsub|i><around*|(|1-y|)><rsub|2j>>|<cell|=<around*|(|1-y-i|)><rsub|2j><around*|(|y-2j|)><rsub|i>.<eq-number><label|eqn:p3>>>>>>
    </equation*>

    We claim that the left-hand side of <math|<eqref|eqn:iF>> equals

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|sum><rsub|j=0><rsup|\<infty\>><frac|<around*|(|1-d|)><rsub|2j>\<zeta\><rsup|j>|2<rsup|2j>j!<around*|(|b+<frac|1|2>|)><rsub|j>>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|a,1-a>>|<row|<cell|d-2j>>>>>;<frac|1|2>|)>.<eq-number><label|eqn:Fijsum>>|<cell|>>>>
    </eqnarray>

    Indeed, by expanding the hypergeometric function as a power series and by
    using <math|<eqref|eqn:p2>> with <math|y=d>, the left-hand side of
    <math|<eqref|eqn:Fijsum>> amounts to

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><big|sum><rsub|j=0><rsup|\<infty\>><frac|<around*|(|a|)><rsub|i><around*|(|1-a|)><rsub|i>|2<rsup|i+2j>i!j!<around*|(|d|)><rsub|i>>
      <frac|<around*|(|1-d-i|)><rsub|2j>|<around*|(|b+<frac|1|2>|)><rsub|j>>\<zeta\><rsup|j>,>|<cell|>>>>
    </eqnarray>

    which equals to the right-hand side of <math|<eqref|eqn:Fijsum>> by
    <math|<eqref|eqn:p3>>. Hence the claim <math|<eqref|eqn:Fijsum>> is
    verified.

    By <math|<space|0.6spc><rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|a,1-a>>|<row|<cell|b>>>>>;<frac|1|2>|)>=<frac|2<rsup|1-b><sqrt|\<pi\>>\<Gamma\><around*|(|b|)>|\<Gamma\><around*|(|<frac|a+b|2>|)>\<Gamma\><around*|(|<frac|b-a+1|2>|)>>>
    (see <cite-detail|andrews1999special|Thm. 5.4> for instance),

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<tabular|<tformat|<table|<row|<cell|<eqref|eqn:Fijsum>>|<cell|=<big|sum><rsub|j=0><rsup|\<infty\>><frac|<around*|(|1-d|)><rsub|2j>\<zeta\><rsup|j>|2<rsup|2j>j!<around*|(|b+<frac|1|2>|)><rsub|j>>\<cdot\><frac|2<rsup|1-d+2j><sqrt|\<pi\>>\<Gamma\><around*|(|d-2j|)>|\<Gamma\><around*|(|<frac|a+d|2>-j|)>\<Gamma\><around*|(|<frac|1-a+d|2>-j|)>>>>|<row|<cell|>|<cell|=<frac|2<rsup|1-d><sqrt|\<pi\>>\<Gamma\><around*|(|d|)>|\<Gamma\><around*|(|<frac|a+d|2>|)>\<Gamma\><around*|(|<frac|1-a+d|2>|)>><big|sum><rsub|j=0><rsup|\<infty\>><frac|<around*|(|1-<frac|a+d|2>|)><rsub|j><around*|(|<frac|1+a-d|2>|)><rsub|j>|j!<around*|(|b+<frac|1|2>|)><rsub|j>>\<zeta\><rsup|j>>>>>>>|<cell|>>>>
    </eqnarray>

    where we have used <math|<eqref|eqn:p1>> in the second equality. Hence
    Lemma <reference|lem:Fisum> is proved.
  </render-proof>

  <section|Special values>

  Setting <math|l=m=0> in the statement of Corollary <reference|cor:1> we
  get:

  <\corollary>
    \;

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s-t|\|><rsup|2\<nu\>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>d
      s d t=<frac|\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+2\<nu\>+1|)>|\<Gamma\><around*|(|\<lambda\>+\<nu\>+1|)>\<Gamma\><around*|(|\<mu\>+\<nu\>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+1|)>>.>|<cell|>>>>
    </eqnarray>
  </corollary>

  <image|intdep.png|197px|66px||>

  <\example>
    <math|<around*|[|<math-up|S>|]><rprime|''>>

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|Re<around*|(|\<lambda\>|)>\<gtr\>0,<around*|\||\<nu\>|\|>\<ll\>1,<frac|1|2<rsup|4\<lambda\>+2\<nu\>>><big|int><rsub|<around*|(|s,t|)>\<in\><around*|[|-1,1|]><rsup|2>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|\||s-t|\|><rsup|2\<nu\>>d
      s d t=>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)><rsup|2>|\<Gamma\><around*|(|2\<lambda\>+1+\<nu\>|)>>\<cdot\><frac|\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|1|2>|)><rsup|2>\<Gamma\><around*|(|1+2\<nu\>|)>|\<Gamma\><around*|(|2\<lambda\>+2\<nu\>+1|)>\<Gamma\><around*|(|1+\<nu\>|)>>,>|<cell|>>|<row|<cell|>|<cell|<around*|(|k,\<alpha\>,\<beta\>\<comma\>\<gamma\>,t<rsub|1>,t<rsub|2>|)>=<around*|(|2,\<lambda\>+<frac|1|2>,\<lambda\>+<frac|1|2>,\<nu\>,<frac|1+s|2>,<frac|1+t|2>|)>.>|<cell|>>>>
    </eqnarray>
  </example>

  <\example>
    <math|<math-up|<cite-detail|warnaar2010sl3|(1.4)>><rprime|''>>

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|Re\<lambda\>\<gtr\>-<frac|1|2>,<around*|\||\<lambda\>+\<mu\>|\|>\<ll\>1;<space|1em>\<lambda\>,\<mu\>\<nin\><frac|1|2>+\<bbb-Z\>,>|<cell|>>|<row|<cell|>|<cell|<frac|1|2<rsup|\<lambda\>+\<mu\>>><around*|(|<big|int><big|int><rsub|0\<leqslant\>s\<less\>t\<leqslant\>1>+<frac|cos<around*|(|\<pi\>\<lambda\>|)>|cos<around*|(|\<pi\>\<mu\>|)>><big|int><big|int><rsub|0\<leqslant\>t\<less\>s\<leqslant\>1>|)><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>><around*|\||s-t|\|><rsup|-\<lambda\>-\<mu\>>d
      s d t>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|<frac|1|2>-\<mu\>|)>|\<Gamma\><around*|(|\<lambda\>+1-\<mu\>|)>>\<cdot\><frac|\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)><rsup|2>|\<Gamma\><around*|(|\<mu\>+1-\<lambda\>|)>>\<cdot\><frac|1|\<Gamma\><around*|(|\<lambda\>+\<mu\>+1|)>>,>|<cell|>>|<row|<cell|>|<cell|<around*|(|k<rsub|1>,k<rsub|2>,\<alpha\><rsub|1>,\<beta\><rsub|1>,\<alpha\><rsub|2>\<comma\>\<beta\><rsub|2>,\<gamma\>,t<rsub|1>,s<rsub|1>|)>=<around*|(|1,1,\<lambda\>+<frac|1|2>,\<lambda\>+<frac|1|2>,\<mu\>+<frac|1|2>,\<mu\>+<frac|1|2>\<comma\>\<lambda\>+\<mu\>,<frac|1+s|2>,<frac|1+t|2>|)>.>|<cell|>>>>
    </eqnarray>
  </example>

  <\example>
    <math|<math-up|<cite-detail|tarasov2003selberg|(3.4)>><rprime|'>>

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|Re
      \<mu\>\<gtr\>-<frac|1|2>,<around*|\||Re
      \<nu\>|\|>\<ll\>1,>|<cell|>>|<row|<cell|>|<cell|<frac|1|2<rsup|2\<mu\>+2\<nu\>+1>><big|int><rsub|<around*|(|s,t|)>\<in\><around*|[|-1,1|]><rsup|2>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|t-s|)><rsub|+><rsup|2\<nu\>>d
      s d t=>|<cell|>>|<row|<cell|>|<cell|\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<cdot\><frac|\<Gamma\><around*|(|<frac|3|2>+\<lambda\>+2\<nu\>|)>\<Gamma\><around*|(|1+2\<nu\>|)>|\<Gamma\><around*|(|2+2\<nu\>|)>\<Gamma\><around*|(|2+2\<lambda\>+2\<nu\>|)>>,>|<cell|>>|<row|<cell|>|<cell|<around*|(|k<rsub|1>,k<rsub|2>,\<alpha\><rsub|1>,\<beta\><rsub|1>,\<beta\><rsub|2>,\<gamma\>,t<rsub|1>,s<rsub|1>|)>=<around*|(|1,1,\<lambda\>+<frac|1|2>,\<lambda\>+<frac|1|2>,1,-2\<nu\>,<frac|1+s|2>,<frac|1+t|2>|)>.>|<cell|>>>>
    </eqnarray>
  </example>

  <\example>
    <math|<math-up|<cite-detail|dotsenko1985four|A35>><rprime|'>>

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|Re<around*|(|<frac|\<lambda\>-<frac|1|2>|\<mu\>-<frac|1|2>>|)>\<less\>0,Re
      \<mu\>\<gtr\><frac|1|2>,>|<cell|>>|<row|<cell|>|<cell|<frac|1|2<rsup|2\<lambda\>+2\<mu\>-2>>PV<big|int><rsub|<around*|(|s,t|)>\<in\><around*|[|-1,1|]><rsup|2>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>><around*|\||s-t|\|><rsup|-2>d
      s d t>|<cell|>>|<row|<cell|>|<cell|=<around*|(|<frac|\<lambda\>-<frac|1|2>|\<mu\>-<frac|1|2>>|)><rsup|2><frac|1|-<frac|\<mu\>-<frac|1|2>|\<lambda\>-<frac|1|2>>-1>\<times\><frac|1|<around*|(|\<mu\>-<frac|1|2>|)><rsup|2><around*|(|2\<mu\>-1|)>>\<times\><frac|\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>|\<Gamma\><around*|(|2\<lambda\>-1|)>>\<times\><frac|\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)>|\<Gamma\><around*|(|2\<mu\>-1|)>>,>|<cell|>>|<row|<cell|>|<cell|<around*|(|n,m,\<alpha\>,\<beta\>,\<rho\>,t<rsub|1>,\<tau\><rsub|1>|)>=<around*|(|1,1,\<mu\>-<frac|1|2>,\<mu\>-<frac|1|2>,-<frac|\<mu\>-<frac|1|2>|\<lambda\>-<frac|1|2>>,<frac|1+s|2>,<frac|1+t|2>|)>.>|<cell|>>>>
    </eqnarray>
  </example>

  <\bibliography|bib|alpha|intdep.bib>
    <\bib-list|AAR99>
      <bibitem*|AAR99><label|bib-andrews1999special>G.<nbsp>E. Andrews, R.
      Askey, and R.it Roy. <newblock>Special functions, vol.
      <with|font-series|bold|71> of encyclopedia of mathematics and its
      applications, 1999

      <bibitem*|DF85><label|bib-dotsenko1985four>Vl<nbsp>S Dotsenko and
      Vladimir<nbsp>A Fateev. <newblock>Four-point correlation functions and
      the operator algebra in 2d conformal invariant theories with central
      charge <math|c\<leq\>1>. <newblock><with|font-shape|italic|Nuclear
      Physics B>, 251:691\U734, 1985.

      <bibitem*|GRJ00><label|bib-gradshteinryzhik>I.S.
      Gradshte<math|<wide|<text|\Y>|\<breve\>>>n, I.M. Ryzhik, and
      A.<nbsp>Jeffrey. <newblock><with|font-shape|italic|Table of Integrals,
      Series, and Products, Sixth edition>. <newblock>Academic Press, New
      York, 2000.

      <bibitem*|TV03><label|bib-tarasov2003selberg>V<nbsp>Tarasov and
      Alexander Varchenko. <newblock>Selberg-type integrals associated with
      sl 3. <newblock><with|font-shape|italic|Letters in Mathematical
      Physics>, 65(3):173\U185, 2003.

      <bibitem*|War10><label|bib-warnaar2010sl3>S<nbsp>Ole Warnaar.
      <newblock>The sl3 selberg integral.
      <newblock><with|font-shape|italic|Advances in Mathematics>,
      224(2):499\U524, 2010.
    </bib-list>
  </bibliography>
</body>

<\initial>
  <\collection>
    <associate|magnification|1.2>
    <associate|page-even-footer|<htab|5mm><page-the-page><htab|5mm>>
    <associate|page-even-header|>
    <associate|page-odd-footer|<htab|5mm><page-the-page><htab|5mm>>
    <associate|page-odd-header|>
    <associate|page-width-margin|true>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|6>>
    <associate|auto-5|<tuple|4.5|7>>
    <associate|auto-6|<tuple|4.5|?>>
    <associate|bib-NIST:DLMF|<tuple|DLMF|6>>
    <associate|bib-andrews1999special|<tuple|AAR99|7>>
    <associate|bib-dotsenko1985four|<tuple|DF85|8>>
    <associate|bib-gradshteinryzhik|<tuple|GRJ00|8>>
    <associate|bib-tarasov2003selberg|<tuple|TV03|8>>
    <associate|bib-warnaar2010sl3|<tuple|War10|8>>
    <associate|cor:1|<tuple|1.3|2>>
    <associate|cor:Hermite|<tuple|1.4|2>>
    <associate|eqn:Fijsum|<tuple|3.6|5>>
    <associate|eqn:Rod|<tuple|2.2|3>>
    <associate|eqn:derst|<tuple|2.3|3>>
    <associate|eqn:iF|<tuple|3.1|4>>
    <associate|eqn:main|<tuple|1.1|1>>
    <associate|eqn:p1|<tuple|3.3|5>>
    <associate|eqn:p2|<tuple|3.4|5>>
    <associate|eqn:p3|<tuple|3.5|5>>
    <associate|eqn:quad|<tuple|3.2|5>>
    <associate|eqn:stz|<tuple|2.1|2>>
    <associate|footnote-1|<tuple|1|2>>
    <associate|footnote-1.1|<tuple|1.1|1>>
    <associate|footnote-1.2|<tuple|1.2|1>>
    <associate|footnote-2.1|<tuple|2.1|2>>
    <associate|footnote-2.2|<tuple|2.2|3>>
    <associate|footnote-3.1|<tuple|3.1|3>>
    <associate|footnote-3.2|<tuple|3.2|5>>
    <associate|footnote-3.3|<tuple|3.3|?>>
    <associate|footnote-4.1|<tuple|4.1|?>>
    <associate|footnote-4.2|<tuple|4.2|?>>
    <associate|footnote-4.3|<tuple|4.3|6>>
    <associate|footnote-4.4|<tuple|4.4|5>>
    <associate|footnr-1|<tuple|1|2>>
    <associate|footnr-1.1|<tuple|1.1|1>>
    <associate|footnr-1.2|<tuple|1.2|1>>
    <associate|footnr-2.1|<tuple|2.1|2>>
    <associate|footnr-2.2|<tuple|2.2|3>>
    <associate|footnr-3.1|<tuple|3.1|3>>
    <associate|footnr-3.2|<tuple|3.2|5>>
    <associate|footnr-3.3|<tuple|3.3|?>>
    <associate|footnr-4.1|<tuple|War10|?>>
    <associate|footnr-4.3|<tuple|4.3|6>>
    <associate|footnr-4.4|<tuple|4.4|5>>
    <associate|lem2|<tuple|2.1|2>>
    <associate|lem3|<tuple|3.1|3>>
    <associate|lem4|<tuple|3.2|4>>
    <associate|lem:Fisum|<tuple|3.3|4>>
    <associate|main-thm|<tuple|1.1|1>>
    <associate|prop:2|<tuple|2.1|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      andrews1999special

      andrews1999special

      warnaar2010sl3

      tarasov2003selberg

      dotsenko1985four
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|0.3fn>Main
      results> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|0.3fn>Proof
      of Main Theorem> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|0.3fn>Proof
      of Proposition <reference|prop:2>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|0.3fn>Special
      values> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|References>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>