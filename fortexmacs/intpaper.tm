<TeXmacs|1.99.4>

<style|<tuple|svjour|number-long-article>>

<\body>
  <\hide-preamble>
    \;

    <assign|section-sep|<macro|<sectional-sep>>>
  </hide-preamble>

  <date|>

  <section|Main results>

  <\theorem>
    For <math|\<lambda\>,\<mu\>,\<nu\>\<in\>\<bbb-C\>> with <math|Re
    \<lambda\>,Re \<mu\>,Re \<nu\>\<gtr\>-1/2><\footnote>
      I think we need to make the assumption <math|Re \<nu\>\<gtr\>0>. Note
      that the conditions for convergence of Selberg integral
      <math|<big|int><rsub|t\<in\><around*|[|0,1|]><rsup|n>>\<Pi\><rsup|\<alpha\>-1,\<beta\>-1><around*|(|t|)>\<Delta\><rsup|2\<gamma\>><around*|(|t|)>d
      t> are <math|Re \<alpha\>,Re \<beta\>\<gtr\>0> and <math|Re
      \<gamma\>\<gtr\>-min<around*|{|<frac|1|n>,<frac|Re
      \<alpha\>|n-1>,<frac|Re \<beta\>|n-1>|}>>, as noted in
      <cite|forrester2008importance>.
    </footnote>, and for <math|0\<leqslant\>z\<leqslant\>1><\footnote>
      Check the proof when <math|z=1>
    </footnote>, \ the following expansion holds:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<around*|\||s+t|\|><rsup|2\<nu\>>=<big|sum><rsub|\<ell\>,m=0\<mid\>l+m:even><rsup|\<infty\>>a<rsub|\<lambda\>,\<mu\>,\<nu\>><rsup|\<ell\>,m>C<rsub|\<ell\>><rsup|\<lambda\>><around*|(|s|)>C<rsub|m><rsup|\<mu\>><around*|(|t|)>,>|<cell|>>|<row|<cell|>|<cell|a<rsub|\<lambda\>,\<mu\>,\<nu\>><rsup|l,m>=<frac|2<rsup|-2\<nu\>><around*|(|\<lambda\>+\<ell\>|)><around*|(|\<mu\>+m|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+2\<nu\>+1|)>\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|\<mu\>|)>\<Gamma\><around*|(|2\<nu\>+1|)>|\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|\<ell\>-m|2>+1|)>\<Gamma\><around*|(|\<mu\>+\<nu\>-<frac|\<ell\>-m|2>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+<frac|\<ell\>+m|2>+1|)>\<Gamma\><around*|(|\<nu\>+1-<frac|\<ell\>+m|2>|)>>>|<cell|>>>>
    </eqnarray>
  </theorem>

  Let <math|C<rsub|l><rsup|\<lambda\>><around*|(|s|)>> be the Gegenbauer
  polynomial of degree <math|l>, and we set

  <\equation*>
    u<rsub|l><rsup|\<lambda\>><around*|(|s|)>\<assign\><frac|2<rsup|2\<lambda\>-1>l!\<Gamma\><around*|(|\<lambda\>|)>|\<Gamma\><around*|(|2\<lambda\>+l|)>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>.
  </equation*>

  <\theorem>
    <label|main-thm>Suppose <math|l,m\<in\>\<bbb-N\>> such that <math|l+m> is
    even. For <math|\<lambda\>,\<mu\>,\<nu\>\<in\>\<bbb-C\>> with <math|Re
    \<lambda\>,Re \<mu\>,Re \<nu\>\<gtr\>-1/2><\footnote>
      I think we need to make the assumption <math|Re \<nu\>\<gtr\>0>. Note
      that the conditions for convergence of Selberg integral
      <math|<big|int><rsub|t\<in\><around*|[|0,1|]><rsup|n>>\<Pi\><rsup|\<alpha\>-1,\<beta\>-1><around*|(|t|)>\<Delta\><rsup|2\<gamma\>><around*|(|t|)>d
      t> are <math|Re \<alpha\>,Re \<beta\>\<gtr\>0> and <math|Re
      \<gamma\>\<gtr\>-min<around*|{|<frac|1|n>,<frac|Re
      \<alpha\>|n-1>,<frac|Re \<beta\>|n-1>|}>>, as noted in
      <cite|forrester2008importance>.
    </footnote>, and for <math|0\<leqslant\>z\<leqslant\>1><\footnote>
      Check the proof when <math|z=1>
    </footnote>, \ the following integral converges:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s-t
      z|\|><rsup|2\<nu\>>u<rsub|l><rsup|\<lambda\>><around*|(|s|)>u<rsub|m><rsup|\<mu\>><around*|(|t|)>d
      s d t>|<cell|>>|<row|<cell|>|<cell|=<frac|<around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>>\<pi\><rsup|<frac|3|2>>\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)>z<rsup|m>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|l+m|2>-\<nu\>,<frac|m-l|2>-\<nu\>-\<lambda\>>>|<row|<cell|\<mu\>+m+1>>>>>;z<rsup|2>|)>|\<Gamma\><around*|(|\<mu\>+m+1|)>\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|l-m|2>+1|)>>,<eq-number><label|eqn:main>>|<cell|>>>>
    </eqnarray>

    where <math|<around*|(|y|)><rsub|j>\<assign\>y<around*|(|y+1|)><around*|(|y+2|)>\<cdots\><around*|(|y+j-1|)>>
    for <math|j\<in\>\<bbb-N\>>.
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
    Since <math|u<rsub|l><rsup|\<lambda\>><around*|(|-s|)>=<around*|(|-1|)><rsup|l>u<rsub|l><rsup|\<lambda\>><around*|(|s|)>>,
    Theorem <reference|main-thm> can be extended easily to the case
    <math|-1\<leqslant\>z\<leqslant\>0>.
  </remark>

  The substitution of <math|z=1> in Theorem <reference|main-thm> yields:

  <\corollary>
    <label|cor:1>

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s-t|\|><rsup|2\<nu\>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>C<rsub|m><rsup|\<mu\>><around*|(|t|)>d
      s d t>|<cell|>>|<row|<cell|>|<cell|=<frac|<around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>>\<pi\><rsup|<frac|1|2>><around*|(|2\<lambda\>|)><rsub|l><around*|(|2\<mu\>|)><rsub|m>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+2\<nu\>+1|)>|l!m!\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<mu\>+\<nu\>-<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+<frac|l+m|2>+1|)>><eq-number><label|eqn:cor:1>.>|<cell|>>>>
    </eqnarray>
  </corollary>

  Taking the limit in <math|<eqref|eqn:cor:1>> as both <math|\<lambda\>> and
  <math|\<nu\>><\footnote>
    maybe, \Pand <math|\<mu\>>\Q?
  </footnote> tends<\footnote>
    maybe, \Ptend\Q?
  </footnote> to be zero, we obtain

  <\corollary>
    <label|cor:170599>For <math|\<rho\>\<in\>\<bbb-C\>> with <math|Re
    \<rho\>\<gtr\>0> and <math|r\<in\><around*|{|0,1|}>><\footnote>
      Note that using the relation of Gegenbauer polynomials
    </footnote>,

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<around*|\||cos\<varphi\>+cos\<psi\>|\|><rsup|\<rho\>>sgn<rsup|r><around*|(|cos\<varphi\>+cos\<psi\>|)>>|<cell|>>|<row|<cell|>|<cell|=<big|sum><rsub|<stack|<tformat|<table|<row|<cell|l,m=0>>|<row|<cell|l\<equiv\>m+r
      mod 2>>>>>><rsup|\<infty\>><frac|H<around*|(|l|)>H<around*|(|m|)>2<rsup|2-\<rho\>>\<Gamma\><around*|(|\<rho\>+1|)><rsup|2>|<big|prod><rsub|\<delta\>,\<varepsilon\>\<in\><around*|{|\<pm\>1|}>>\<Gamma\><around*|(|1+<frac|1|2><around*|(|\<rho\>+\<delta\>l+\<varepsilon\>m|)>|)>>cos
      l\<varphi\> cos m\<psi\>.>|<cell|>>>>
    </eqnarray>

    where Heaviside step function <math|H<around*|(|x|)>> is defined as:

    <\equation*>
      H<around*|(|x|)>\<assign\><choice|<tformat|<table|<row|<cell|0,>|<cell|x\<less\>0,>>|<row|<cell|1/2,>|<cell|x=0,>>|<row|<cell|1,>|<cell|x\<gtr\>0.>>>>>
    </equation*>
  </corollary>

  Selberg-type integrals are related to (finite-dimensional) representation
  theory of semisimple Lie algebras, see <cite|forrester2008importance>,<cite|tarasov2003selberg>
  and references therein. On the other hand, Theorem <reference|main-thm> and
  Corollary <reference|cor:1> will be used in the study of symmetry breaking
  operators for infinite-dimensional representations when we extend the work
  <cite|kobayashi2015symmetry> to indefinite orthogonal groups
  <math|O<around*|(|p,q|)>>. This will be done in a separate paper.

  Special cases and the limit case of Theorem <reference|main-thm> will be
  discussed in Section <reference|sec:4>.

  <section|Proof of main theorem><label|sec:2>

  In this section we prove Theorem <reference|main-thm> by assuming the
  following integral formula <math|<eqref|eqn:stz>>, which will be proved in
  Section <reference|sec:3>.

  <\proposition>
    <label|prop:2>For <math|a,b,c\<in\>\<bbb-C\>> such that <math|Re a,Re
    b,Re c\<gtr\>0> and <math|0\<leqslant\>z\<leqslant\>1> we have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s-t
      z|\|><rsup|2c-1><around*|(|1-s<rsup|2>|)><rsup|a-1><around*|(|1-t<rsup|2>|)><rsup|b-1>d
      s d t=<frac|<sqrt|\<pi\>>\<Gamma\><around*|(|a|)>\<Gamma\><around*|(|b|)>\<Gamma\><around*|(|c|)>|\<Gamma\><around*|(|a+c|)>\<Gamma\><around*|(|b+<frac|1|2>|)>>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-c+<frac|1|2>,-a-c+1>>|<row|<cell|b+<frac|1|2>>>>>>;z<rsup|2>|)>.<eq-number><label|eqn:stz>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>>>
    </eqnarray>
  </proposition>

  <\render-proof|Proof of Theorem <reference|main-thm>>
    By the Rodrigues formula for the Gegenbauer polynomial:

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

    Suppose that <math|Re \<nu\>\<gtr\><frac|l+m|2>>, <math|Re
    \<lambda\>\<gtr\><frac|1|2>> and <math|Re \<mu\>\<gtr\><frac|1|2>>. Then
    <math|<around*|\||s-t z|\|><rsup|2\<nu\>>> is of <math|C<rsup|l+m>> class
    and the above integral is equal to

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>+l-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>+m-<frac|1|2>><frac|\<partial\><rsup|l+m>|\<partial\>s<rsup|l>\<partial\>t<rsup|m>><around*|\||s-t
      z|\|><rsup|2\<nu\>>d s d t<eq-number><label|eqn:derst>>|<cell|>>>>
    </eqnarray>

    by integration by parts. Since <math|l+m\<in\>2\<bbb-N\>> we have

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

  <section|Proof of Proposition <reference|prop:2>><label|sec:3>

  In this section we show Proposition <reference|prop:2>, and thus complete
  the proof of Theorem <reference|main-thm>. We use the following two lemmas.

  <\lemma>
    <label|lem4>For <math|a,b,z\<in\>\<bbb-C\>> with <math|Re a,Re b\<gtr\>0>
    and <math|<around*|\||z|\|>\<less\>1> we have

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

  Postponing the verification of Lemmas <reference|lem4> and
  <reference|lem:Fisum>, we first show Proposition <reference|prop:2>.

  <\render-proof|Proof of Proposition <reference|prop:2>>
    By the change of variables <math|s=<around*|(|1-z|)><around*|(|1-t|)>+z>,
    we have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around*|(|s-z|)><rsub|+><rsup|2c-1><around*|(|1-s<rsup|2>|)><rsup|a-1>d
      s=2<rsup|a-1>B<around*|(|2c,a|)><around*|(|1-z|)><rsup|2c+a>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|1-a,2c>>|<row|<cell|2c+a>>>>>;<frac|1-z|2>|)>>|<cell|>>>>
    </eqnarray>

    from Euler's integral representation of the hypergeometric function
    <math|<rsub|2>F<rsub|1>>, because <math|-1\<leqslant\>s\<leqslant\>1> and
    <math|s-z\<geqslant\>0> if and only if
    <math|0\<leqslant\>t\<leqslant\>1>. Therefore the left-hand side of
    <math|<eqref|eqn:stz>> equals:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|2<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|s-t
      z|)><rsub|+><rsup|2c-1><around*|(|1-s<rsup|2>|)><rsup|a-1><around*|(|1-t<rsup|2>|)><rsup|b-1>d
      s d t>|<cell|>>|<row|<cell|>|<cell|=2<rsup|a>B<around*|(|2c,a|)><big|int><rsub|-1><rsup|1><around*|(|1-t
      z|)><rsup|2c+a-1> <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|1-a,a>>|<row|<cell|2c+a>>>>>;<frac|1-t
      z|2>|)><around*|(|1-t<rsup|2>|)><rsup|b-1>d t.>|<cell|>>>>
    </eqnarray>

    Fix <math|\<varepsilon\>\<gtr\>0>. Assume
    <math|<around*|\||z|\|>\<leqslant\>1-2\<varepsilon\>>. Then
    <math|<around*|\||<frac|1-t z|2>|\|>\<leqslant\>1-\<varepsilon\>>.
    Expanding the hypergeometric function as a uniformly convergent power
    series, we can rewrite the integral in the right-hand side as

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|1-a|)><rsub|i><around*|(|a|)><rsub|i>|2<rsup|i>i!<around*|(|2c+a|)><rsub|i>><big|int><rsub|-1><rsup|1><around*|(|1-t
      z|)><rsup|2c+a-1+i><around*|(|1-t<rsup|2>|)><rsup|b-1>d t.>|<cell|>>>>
    </eqnarray>

    Owing to Lemma <reference|lem4>, this is equal to

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|B<around*|(|<frac|1|2>,b|)><big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|1-a|)><rsub|i><around*|(|a|)><rsub|i>|2<rsup|i>i!<around*|(|2c+a|)><rsub|i>>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|1-2c-a-i|2>,<frac|2-2c-a-i|2>>>|<row|<cell|b+<frac|1|2>>>>>>;z<rsup|2>|)>.>|<cell|>>>>
    </eqnarray>

    Now <math|><eqref|eqn:stz> follows from Lemma <reference|lem:Fisum> with
    <math|\<zeta\>=z<rsup|2>>.
  </render-proof>

  <\render-proof|Proof of Lemma <reference|lem4>>
    By Euler's integral representation of <math|<rsub|2>F<rsub|1>> again, we
    have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around*|(|1-t
      z|)><rsup|a-1><around*|(|1-t<rsup|2>|)><rsup|b-1>d
      t=2<rsup|2b-1><around*|(|1+z|)><rsup|a-1>B<around*|(|b,b|)><rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|1-a,b>>|<row|<cell|2b>>>>>;<frac|2z|1+z>|)>.<eq-number><label|eqn:quad>>|<cell|>>>>
    </eqnarray>

    Applying the following quadratic transformation of
    <math|<rsub|2>F<rsub|1>> (cf. <cite-detail|andrews1999special|Thm.
    3.13>):

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
      <tabular|<tformat|<table|<row|<cell|y<rsub|j><around*|(|1-y|)><rsub|-j>>|<cell|=<space|0.6spc><around*|(|-1|)><rsup|j>,>|<cell|<eq-number><label|eqn:p1>>>|<row|<cell|<around*|(|<frac|y|2>|)><rsub|j><around*|(|<frac|1+y|2>|)><rsub|j>>|<cell|=<space|0.6spc>2<rsup|-2j><around*|(|y|)><rsub|2j>,>|<cell|<eq-number><label|eqn:p2>>>|<row|<cell|<around*|(|y|)><rsub|i><around*|(|1-y|)><rsub|2j>>|<cell|=<space|0.6spc><around*|(|1-y-i|)><rsub|2j><around*|(|y-2j|)><rsub|i>.>|<cell|<eq-number><label|eqn:p3>>>>>>
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

    which is equal to the right-hand side of <math|<eqref|eqn:Fijsum>> by
    <math|<eqref|eqn:p3>>. Hence we have verified the claim
    <math|<eqref|eqn:iF>=<eqref|eqn:Fijsum>>.

    By <math|<space|0.6spc><rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|a,1-a>>|<row|<cell|b>>>>>;<frac|1|2>|)>=<frac|2<rsup|1-b><sqrt|\<pi\>>\<Gamma\><around*|(|b|)>|\<Gamma\><around*|(|<frac|a+b|2>|)>\<Gamma\><around*|(|<frac|b-a+1|2>|)>>>
    (see <cite-detail|andrews1999special|Thm. 5.4> for instance),

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<tabular|<tformat|<table|<row|<cell|<eqref|eqn:Fijsum>>|<cell|=<big|sum><rsub|j=0><rsup|\<infty\>><frac|<around*|(|1-d|)><rsub|2j>\<zeta\><rsup|j>|2<rsup|2j>j!<around*|(|b+<frac|1|2>|)><rsub|j>>\<cdot\><frac|2<rsup|1-d+2j><sqrt|\<pi\>>\<Gamma\><around*|(|d-2j|)>|\<Gamma\><around*|(|<frac|a+d|2>-j|)>\<Gamma\><around*|(|<frac|1-a+d|2>-j|)>>>>|<row|<cell|>|<cell|=<frac|2<rsup|1-d><sqrt|\<pi\>>\<Gamma\><around*|(|d|)>|\<Gamma\><around*|(|<frac|a+d|2>|)>\<Gamma\><around*|(|<frac|1-a+d|2>|)>><big|sum><rsub|j=0><rsup|\<infty\>><frac|<around*|(|1-<frac|a+d|2>|)><rsub|j><around*|(|<frac|1+a-d|2>|)><rsub|j>|j!<around*|(|b+<frac|1|2>|)><rsub|j>>\<zeta\><rsup|j>>>>>>>|<cell|>>>>
    </eqnarray>

    where we have used <math|<eqref|eqn:p1>> in the second equality. Hence
    Lemma <reference|lem:Fisum> is proved.
  </render-proof>

  <section|Limit case and special values><label|sec:4>

  In this section we examine our main result (Theorem <reference|main-thm>)
  by taking the \Plimit\Q or by evaluating at special values of parameters.
  We also compare them with special values of the existing integral formulæ
  such as the Selberg-type integrals.

  Since the Hermite polynomial <math|H<rsub|n><around*|(|x|)>> is obtained as
  a limit of the Gegenbauer polynomial:

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|H<rsub|n><around*|(|x|)>=n!lim<rsub|\<lambda\>\<rightarrow\>\<infty\>>\<lambda\><rsup|-<frac|n|2>>C<rsub|n><rsup|\<lambda\>><around*|(|<frac|x|<sqrt|\<lambda\>|>>|)>,>|<cell|>>>>
  </eqnarray>

  we can deduce the following integral formula of the Hermite polynomial from
  Corollaly <reference|cor:1>:

  <\corollary>
    <label|cor:Hermite>Suppose <math|l,m\<in\>\<bbb-N\>> with <math|l+m>
    even.

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-\<infty\>><rsup|\<infty\>><big|int><rsub|-\<infty\>><rsup|\<infty\>><around*|\||x-z
      y|\|><rsup|2\<nu\>>e<rsup|-x<rsup|2>-y<rsup|2>>H<rsub|l><around*|(|x|)>H<rsub|m><around*|(|y|)>d
      x d y=<around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>>2<rsup|l+m>\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)><around*|(|z<rsup|2>+1|)><rsup|\<nu\>-<frac|l+m|2>>z<rsup|m>.>|<cell|>>>>
    </eqnarray>
  </corollary>

  <\example>
    (Mehta integral <cite|mehta2004random>) The Mehta integral

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<frac|1|<around*|(|2\<pi\>|)><rsup|n/2>><big|int><rsub|-\<infty\>><rsup|\<infty\>><big|int><rsub|-\<infty\>><rsup|\<infty\>>\<ldots\><big|int><rsub|-\<infty\>><rsup|\<infty\>><big|prod><rsub|i=1><rsup|n>e<rsup|-t<rsub|i><rsup|2>/2><rsub|><big|prod><rsub|1\<leqslant\>i\<less\>j\<leqslant\>n><around*|\||t<rsub|i>-t<rsub|j>|\|><rsup|2\<nu\>>d
      t<rsub|1>\<cdots\>d t<rsub|n>>|<cell|>>|<row|<cell|>|<cell|=<big|prod><rsub|j=1><rsup|n><frac|\<Gamma\><around*|(|1+j\<nu\>|)>|\<Gamma\><around*|(|1+\<nu\>|)>>>|<cell|>>>>
    </eqnarray>

    in special case <math|n=2> implies the following equation

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<frac|1|2\<pi\>><big|int><rsub|-\<infty\>><rsup|\<infty\>><big|int><rsub|-\<infty\>><rsup|\<infty\>>e<rsup|-<frac|x<rsup|2>+y<rsup|2>|2>><around*|\||x-y|\|><rsup|2\<nu\>>d
      x d y=<frac|\<Gamma\><around*|(|1+2\<nu\>|)>|\<Gamma\><around*|(|1+\<nu\>|)>>.>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>>>
    </eqnarray>

    This coincides with the special case of Corollary <reference|cor:Hermite>
    with <math|<around*|(|l,m,z|)>=<around*|(|0,0,1|)>>.
  </example>

  In what follows, we shall examine the relationship between Theorem
  <reference|main-thm> and some known integral formulæ by Selberg, Dotsenko,
  Fateev, Tarasov Varchenko, Warnaar among others when the parameters take
  special values. The hierarchy of the formulæ treated here is summarized in
  Table <reference|table>.

  For this, we limit ourselves to the special case of Theorem
  <reference|main-thm> with <math|<around*|(|l,m,z|)>=<around*|(|0,0,1|)>>,
  or equivalently, of Corollary <reference|cor:1> with
  <math|<around*|(|l,m|)>=<around*|(|0,0|)>>:

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s-t|\|><rsup|2\<nu\>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>d
    s d t=<frac|\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+2\<nu\>+1|)>|\<Gamma\><around*|(|\<lambda\>+\<nu\>+1|)>\<Gamma\><around*|(|\<mu\>+\<nu\>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+1|)>>.<eq-number><label|eqn:lm0>>|<cell|>>>>
  </eqnarray>

  \;

  <\example>
    <label|ex:1>(Selberg integral <cite|Selberg:411367>) The Selberg integral

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|0><rsup|1>\<ldots\><big|int><rsub|0><rsup|1><big|prod><rsub|i=1><rsup|n>t<rsub|i><rsup|\<alpha\>-1><around*|(|1-t<rsub|i>|)><rsup|\<beta\>-1><around*|\||<big|prod><rsub|1\<leqslant\>i\<less\>j\<leqslant\>n><around*|(|t<rsub|i>-t<rsub|j>|)>|\|><rsup|2\<nu\>>d
      t<rsub|1>\<cdots\>d t<rsub|n><eq-number><label|eqn:selberg>>|<cell|>>|<row|<cell|>|<cell|=<big|prod><rsub|j=1><rsup|n><frac|\<Gamma\><around*|(|\<alpha\>+<around*|(|j-1|)>\<nu\>|)>\<Gamma\><around*|(|\<beta\>+<around*|(|j-1|)>\<nu\>|)>\<Gamma\><around*|(|1+j\<nu\>|)>|\<Gamma\><around*|(|\<alpha\>+\<beta\>+<around*|(|n+j-2|)>\<nu\>|)>\<Gamma\><around*|(|1+\<nu\>|)>>>|<cell|>>>>
    </eqnarray>

    is a generalization of the Euler beta integral. A special case of
    <math|<eqref|eqn:selberg>> with <math|<around*|(|n,\<alpha\>,\<beta\>|)>=<around*|(|2,\<lambda\>+<frac|1|2>,\<lambda\>+<frac|1|2>|)>>
    says\ 

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<frac|1|2<rsup|4\<lambda\>+2\<nu\>>><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|\||s-t|\|><rsup|2\<nu\>>d
      s d t=>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)><rsup|2>|\<Gamma\><around*|(|2\<lambda\>+1+\<nu\>|)>>\<cdot\><frac|\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|1|2>|)><rsup|2>\<Gamma\><around*|(|1+2\<nu\>|)>|\<Gamma\><around*|(|2\<lambda\>+2\<nu\>+1|)>\<Gamma\><around*|(|1+\<nu\>|)>>,>|<cell|>>>>
    </eqnarray>

    after a change of variables <math|<around*|(|t<rsub|1>,t<rsub|2>|)>=<around*|(|<frac|1+s|2>,<frac|1+t|2>|)>>.
    This coincides with the special case of Theorem <reference|main-thm> with
    <math|l=m=0>, <math|z=1> and <math|\<lambda\>=\<mu\>>.\ 
  </example>

  <\example>
    <label|ex:2>(Warnaar integral) The integral formula (1.4) in
    <cite|warnaar2010sl3> in the special case
    <math|<around*|(|k<rsub|1>,k<rsub|2>,\<alpha\><rsub|1>,\<beta\><rsub|1>,\<alpha\><rsub|2>\<comma\>\<beta\><rsub|2>,\<gamma\>|)>=<around*|(|1,1,\<lambda\>+<frac|1|2>,\<lambda\>+<frac|1|2>,\<mu\>+<frac|1|2>,\<mu\>+<frac|1|2>\<comma\>\<lambda\>+\<mu\>|)>>
    implies the following equation

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<frac|1|2<rsup|\<lambda\>+\<mu\>>><around*|(|<big|int><big|int><rsub|0\<leqslant\>s\<less\>t\<leqslant\>1>+<frac|cos<around*|(|\<pi\>\<lambda\>|)>|cos<around*|(|\<pi\>\<mu\>|)>><big|int><big|int><rsub|0\<leqslant\>t\<less\>s\<leqslant\>1>|)><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>><around*|\||s-t|\|><rsup|-\<lambda\>-\<mu\>>d
      s d t>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|<frac|1|2>-\<mu\>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)><rsup|2>|\<Gamma\><around*|(|\<lambda\>+1-\<mu\>|)>\<Gamma\><around*|(|\<mu\>+1-\<lambda\>|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+1|)>>.>|<cell|>>>>
    </eqnarray>

    This coincides with the special case of Theorem <reference|main-thm> with
    <math|<around*|(|l,m,z,\<nu\>|)>=<around*|(|0,0,1,-<frac|\<lambda\>+\<mu\>|2>|)>>.
  </example>

  <\example>
    <label|ex:3>(<math|\<frak-s\>\<frak-l\><rsub|3>> Selberg integral of
    Tarasov and Varchenko) The integral formula (3.4) in
    <cite|tarasov2003selberg> in the special case
    <math|<around*|(|k<rsub|1>,k<rsub|2>,\<alpha\>,\<beta\><rsub|1>,\<beta\><rsub|2>,\<gamma\>|)>=<around*|(|1,1,\<lambda\>+<frac|1|2>,\<lambda\>+<frac|1|2>,1,-2\<nu\>|)>>
    reduces to the following equation

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<frac|1|2<rsup|2\<lambda\>+2\<nu\>+1>><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|t-s|)><rsub|+><rsup|2\<nu\>>d
      s d t=<frac|\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|<frac|3|2>+\<lambda\>+2\<nu\>|)>|<around*|(|1+2\<nu\>|)>\<Gamma\><around*|(|2+2\<lambda\>+2\<nu\>|)>>.>|<cell|>>>>
    </eqnarray>

    This coincides with the special case of Theorem <reference|main-thm> with
    <math|<around*|(|l,m,z,\<mu\>|)>=<around*|(|0,0,1,<frac|1|2>|)>>.
  </example>

  <\example>
    <label|ex:4>(Dotsenko-Fateev integral) The integral formula
    (A1)<math|=>(A35) in <cite|dotsenko1985four> in the special case
    <math|<around*|(|n,m,\<alpha\>,\<beta\>,\<rho\>|)>=<around*|(|1,1,\<mu\>-<frac|1|2>,\<mu\>-<frac|1|2>,-<frac|\<mu\>-<frac|1|2>|\<lambda\>-<frac|1|2>>|)>>
    reduces to the following equation

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|2<rsup|2-2\<lambda\>-2\<mu\>><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>><around*|\||s-t|\|><rsup|-2>d
      s d t>|<cell|>>|<row|<cell|>|<cell|=<frac|-2\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)><rsup|2>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)><rsup|2>|<around*|(|\<lambda\>+\<mu\>-1|)>\<Gamma\><around*|(|2\<lambda\>|)>\<Gamma\><around*|(|2\<mu\>|)>>.>|<cell|>>>>
    </eqnarray>

    This coincides with the special case of Theorem <reference|main-thm> with
    <math|<around*|(|l,m,z,\<nu\>|)>=<around*|(|0,0,1,-1|)>>.
  </example>

  The hierarchy of the integral formulæ in Examples
  <reference|ex:1>-<reference|ex:4> and Theorem <reference|main-thm> is
  summarized as follows:<\footnote>
    Should I include the following in the diagram: Corollary
    <reference|cor:Hermite> (and its relation with the Mehta integral);
    relation with the results of <cite|kobayashi2011schrodinger>; relations
    with the expansion of <math|x<rsup|n>> into Gegenbauer polynomials in
    <cite|rainville1960special>?
  </footnote>

  \;

  <big-table|<tabular|<tformat|<table|<row|<cell|<image|intdep.png|788px|264px||>>>>>>|Hierarchy
  of various integral formulæ<label|table>>

  <\bibliography|bib|tm-plain|intdep.bib>
    <\bib-list|10>
      <bibitem*|1><label|bib-andrews1999special>George<nbsp>E Andrews,
      Richard Askey<localize|, and >Ranjan Roy.<newblock>
      <with|font-shape|italic|Special Functions>,
      <localize|volume><nbsp><with|font-series|bold|71><localize| of
      ><with|font-shape|italic|Encyclopedia of Mathematics and its
      Applications>.<newblock> Cambridge University Press, Cambridge,
      1999.<newblock>

      <bibitem*|2><label|bib-dotsenko1985four>Vl<nbsp>S Dotsenko<localize|
      and >Vladimir<nbsp>A Fateev.<newblock> Four-point correlation functions
      and the operator algebra in 2d conformal invariant theories with
      central charge <math|c\<leq\>1>.<newblock>
      <with|font-shape|italic|Nuclear Physics B>, 251:691\U734,
      1985.<newblock>

      <bibitem*|3><label|bib-forrester2008importance>Peter
      Forrester<localize| and >SVEN Warnaar.<newblock> The importance of the
      selberg integral.<newblock> <with|font-shape|italic|Bulletin of the
      American Mathematical Society>, 45(4):489\U534, 2008.<newblock>
      <with|font-series|bold|I've read this paper completely>.<newblock>

      <bibitem*|4><label|bib-kobayashi2015symmetry>T.<nbsp>Kobayashi<localize|
      and >B.<nbsp>Speh.<newblock> <with|font-shape|italic|Symmetry Breaking
      for Representations of Rank One Orthogonal Groups>.<newblock> Memoirs
      of the Amer. Math. Soc. 2015.<newblock>

      <bibitem*|5><label|bib-kobayashi2011schrodinger>Toshiyuki
      Kobayashi<localize| and >Gen Mano.<newblock>
      <with|font-shape|italic|The Schrödinger model for the minimal
      representation of the indefinite orthogonal group
      <math|O<around|(|p,q|)>>>, <localize|volume> 213.<newblock> American
      Mathematical Society, 2011.<newblock>

      <bibitem*|6><label|bib-mehta2004random>Madan<nbsp>Lal Mehta.<newblock>
      <with|font-shape|italic|Random matrices>, <localize|volume>
      142.<newblock> Academic press, 2004.<newblock>

      <bibitem*|7><label|bib-rainville1960special>Earl<nbsp>David
      Rainville.<newblock> <with|font-shape|italic|Special functions>,
      <localize|volume><nbsp>8.<newblock> Macmillan New York, 1960.<newblock>

      <bibitem*|8><label|bib-Selberg:411367>A Selberg.<newblock> Remarks on a
      multiple integral.<newblock> <with|font-shape|italic|Norsk Mat.
      Tidsskr.>, 26:71\U78, 1944.<newblock>

      <bibitem*|9><label|bib-tarasov2003selberg>V Tarasov<localize| and
      >Alexander Varchenko.<newblock> Selberg-type integrals associated with
      <math|<with|math-font|Euler|s*l><rsub|3>>.<newblock>
      <with|font-shape|italic|Letters in Mathematical Physics>,
      65(3):173\U185, 2003.<newblock>

      <bibitem*|10><label|bib-warnaar2010sl3>S<nbsp>Ole Warnaar.<newblock>
      The <math|<with|math-font|Euler|s*l><rsub|3>> Selberg
      integral.<newblock> <with|font-shape|italic|Advances in Mathematics>,
      224(2):499\U524, 2010.<newblock>
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
    <associate|auto-2|<tuple|2|3>>
    <associate|auto-3|<tuple|3|4>>
    <associate|auto-4|<tuple|4|6>>
    <associate|auto-5|<tuple|4.1|9>>
    <associate|auto-6|<tuple|4.1|10>>
    <associate|bib-Selberg:411367|<tuple|8|10>>
    <associate|bib-andrews1999special|<tuple|1|10>>
    <associate|bib-dotsenko1985four|<tuple|2|10>>
    <associate|bib-forrester2008importance|<tuple|3|10>>
    <associate|bib-kobayashi2011schrodinger|<tuple|5|10>>
    <associate|bib-kobayashi2015symmetry|<tuple|4|10>>
    <associate|bib-mehta2004random|<tuple|6|10>>
    <associate|bib-rainville1960special|<tuple|7|10>>
    <associate|bib-tarasov2003selberg|<tuple|9|10>>
    <associate|bib-warnaar2010sl3|<tuple|10|10>>
    <associate|cor:1|<tuple|1.4|2>>
    <associate|cor:170599|<tuple|1.5|2>>
    <associate|cor:Chebyshev|<tuple|1.4|?>>
    <associate|cor:Hermite|<tuple|4.1|7>>
    <associate|eqn:Fijsum|<tuple|3.6|6>>
    <associate|eqn:Rod|<tuple|2.2|3>>
    <associate|eqn:cor:1|<tuple|1.2|2>>
    <associate|eqn:derst|<tuple|2.3|3>>
    <associate|eqn:iF|<tuple|3.1|4>>
    <associate|eqn:lm0|<tuple|4.1|7>>
    <associate|eqn:main|<tuple|1.1|1>>
    <associate|eqn:p1|<tuple|3.3|6>>
    <associate|eqn:p2|<tuple|3.4|6>>
    <associate|eqn:p3|<tuple|3.5|6>>
    <associate|eqn:quad|<tuple|3.2|5>>
    <associate|eqn:selberg|<tuple|4.2|8>>
    <associate|eqn:stz|<tuple|2.1|3>>
    <associate|ex:1|<tuple|4.3|8>>
    <associate|ex:2|<tuple|4.4|8>>
    <associate|ex:3|<tuple|4.5|8>>
    <associate|ex:4|<tuple|4.6|9>>
    <associate|footnote-1|<tuple|1|?>>
    <associate|footnote-1.1|<tuple|1.1|1>>
    <associate|footnote-1.2|<tuple|1.2|1>>
    <associate|footnote-1.3|<tuple|1.3|1>>
    <associate|footnote-1.4|<tuple|1.4|1>>
    <associate|footnote-1.5|<tuple|1.5|2>>
    <associate|footnote-1.6|<tuple|1.6|2>>
    <associate|footnote-1.7|<tuple|1.7|2>>
    <associate|footnote-2|<tuple|2|?>>
    <associate|footnote-4.1|<tuple|4.1|9>>
    <associate|footnote-4.2|<tuple|4.2|?>>
    <associate|footnr-1.1|<tuple|1.1|1>>
    <associate|footnr-1.2|<tuple|1.2|1>>
    <associate|footnr-1.3|<tuple|1.3|1>>
    <associate|footnr-1.4|<tuple|1.4|1>>
    <associate|footnr-1.5|<tuple|1.5|2>>
    <associate|footnr-1.6|<tuple|1.6|2>>
    <associate|footnr-1.7|<tuple|1.7|2>>
    <associate|footnr-4.1|<tuple|4.1|9>>
    <associate|footnr-4.2|<tuple|4.2|?>>
    <associate|lem4|<tuple|3.1|4>>
    <associate|lem:Fisum|<tuple|3.2|4>>
    <associate|main-thm|<tuple|1.2|1>>
    <associate|prop:2|<tuple|2.1|3>>
    <associate|sec:2|<tuple|2|3>>
    <associate|sec:3|<tuple|3|4>>
    <associate|sec:4|<tuple|4|6>>
    <associate|table|<tuple|4.1|9>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      forrester2008importance

      forrester2008importance

      forrester2008importance

      tarasov2003selberg

      kobayashi2015symmetry

      andrews1999special

      andrews1999special

      mehta2004random

      Selberg:411367

      warnaar2010sl3

      tarasov2003selberg

      dotsenko1985four

      kobayashi2011schrodinger

      rainville1960special
    </associate>
    <\associate|table>
      <tuple|normal|Hierarchy of various integral formulæ|<pageref|auto-5>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|0.3fn>Main
      results> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|0.3fn>Proof
      of main theorem> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|0.3fn>Proof
      of Proposition <reference|prop:2>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|0.3fn>Limit
      case and special values> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|References>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>