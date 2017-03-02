<TeXmacs|1.99.4>

<style|article>

<\body>
  <section|Main results>

  <\theorem>
    <label|main-thm>We set <math|u<rsub|l><rsup|\<lambda\>><around*|(|s|)>\<assign\><frac|2<rsup|2\<lambda\>-1>l!\<Gamma\><around*|(|\<lambda\>|)>|\<Gamma\><around*|(|2\<lambda\>+l|)>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>>
    and similarly for <math|u<rsub|m><rsup|\<mu\>><around*|(|t|)>>. For
    <math|\<lambda\>,\<mu\>,\<nu\>\<in\>\<bbb-C\>> such that

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|Re<around*|(|\<lambda\>|)>,Re<around*|(|\<mu\>|)>,Re<around*|(|\<nu\>|)>\<gtr\>-1/2,>|<cell|>>>>
    </eqnarray>

    <math|x\<in\><around*|[|0,1|]>> and <math|l,m\<in\>\<bbb-N\>> such that
    <math|l+m\<in\>2\<bbb-N\>> the following integral converges:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|s-t
      x|)><rsub|\<pm\>><rsup|2\<nu\>>u<rsub|l><rsup|\<lambda\>><around*|(|s|)>u<rsub|m><rsup|\<mu\>><around*|(|t|)>d
      s d t=>|<cell|>>|<row|<cell|>|<cell|<frac|<around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>>\<pi\><rsup|3/2>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>x<rsup|m>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|l+m|2>-\<nu\>,<frac|m-l|2>-\<nu\>-\<lambda\>>>|<row|<cell|\<mu\>+m+1>>>>>;x<rsup|2>|)>|2\<Gamma\><around*|(|\<mu\>+m+1|)>\<Gamma\><around*|(|\<nu\>+<frac|l-m|2>+\<lambda\>+1|)>>,>|<cell|>>>>
    </eqnarray>

    Namely,

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|s-t
      x|)><rsub|\<pm\>><rsup|2\<nu\>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>C<rsub|m><rsup|\<mu\>><around*|(|t|)>d
      s d t=>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|2\<lambda\>+l|)>\<Gamma\><around*|(|2\<mu\>+m|)><around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>>\<pi\><rsup|3/2>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>x<rsup|m>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|l+m|2>-\<nu\>,<frac|m-l|2>-\<nu\>-\<lambda\>>>|<row|<cell|\<mu\>+m+1>>>>>;x<rsup|2>|)>|2<rsup|2\<lambda\>+2\<mu\>-2>l!m!\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|\<mu\>|)>2\<Gamma\><around*|(|\<mu\>+m+1|)>\<Gamma\><around*|(|\<nu\>+<frac|l-m|2>+\<lambda\>+1|)>>.>|<cell|>>>>
    </eqnarray>
  </theorem>

  Note that as Gegenbauer polynomial <math|g<around*|(|s|)>\<assign\>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>>
  satisfies the second-order differential equation

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<around*|(|1-s<rsup|2>|)>g<rprime|''>-<around*|(|2\<lambda\>+1|)>s
    g<rprime|'>+n<around*|(|n+2\<lambda\>|)>g=0,>|<cell|>>>>
  </eqnarray>

  \ <math|f<around*|(|s|)>\<assign\>u<rsub|l><rsup|\<lambda\>><around*|(|s|)>>
  satisfies

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<around*|(|1-s<rsup|2>|)><rsup|2>f<rprime|''>+<around*|(|1-x<rsup|2>|)><around*|(|1-2\<lambda\>-<around*|(|2\<lambda\>+1|)>x|)>f<rprime|'>+<around*|(|<around*|(|2s+1|)><around*|(|\<lambda\><rsup|2>-1/4|)>+l<around*|(|l+2\<lambda\>|)><around*|(|1-s<rsup|2>|)>|)>f=0.>|<cell|>>>>
  </eqnarray>

  <\remark*>
    As we have <math|u<rsub|l><rsup|\<lambda\>><around*|(|-s|)>=<around*|(|-1|)><rsup|l>u<rsub|l><rsup|\<lambda\>><around*|(|s|)>>,
    we see that we can extend statement of Theorem <reference|main-thm> to
    include the <math|-1\<leqslant\>x\<leqslant\>0> case.
  </remark*>

  <\corollary*>
    Setting <math|x=1> in the statement of Theorem <reference|main-thm> we
    get:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|s-t|)><rsub|\<pm\>><rsup|2\<gamma\>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>C<rsub|m><rsup|\<mu\>><around*|(|t|)>d
      s d t=>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|2\<lambda\>+l|)>\<Gamma\><around*|(|2\<mu\>+m|)><around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>>\<pi\><rsup|3/2>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>\<Gamma\><around*|(|\<mu\>+1+2\<nu\>+\<lambda\>|)>|2<rsup|2\<lambda\>+2\<mu\>-2>l!m!\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|\<mu\>|)>2\<Gamma\><around*|(|\<nu\>+<frac|l-m|2>+\<lambda\>+1|)>\<Gamma\><around*|(|\<mu\>+1-<frac|l-m|2>+\<nu\>|)>\<Gamma\><around*|(|\<mu\>+m+1+\<nu\>+\<lambda\>-<frac|m-l|2>|)>>.>|<cell|>>>>
    </eqnarray>
  </corollary*>

  <section|Proof of Main Theorem>

  <\lemma>
    <label|lem2>For <math|a,b,c\<in\>\<bbb-C\>> such that
    <math|Re<around*|(|a|)>,Re<around*|(|b|)>,Re<around*|(|c|)>\<gtr\>0> and
    <math|0\<leqslant\>x\<leqslant\>1> we have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|s-t
      x|)><rsub|\<pm\>><rsup|2c-1><around*|(|1-s<rsup|2>|)><rsup|a-1><around*|(|1-t<rsup|2>|)><rsup|b-1>d
      s d t=>|<cell|>>|<row|<cell|>|<cell|<frac|1|2>B<around*|(|a,c|)>B<around*|(|b,<frac|1|2>|)>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-c+1/2,-a-c+1>>|<row|<cell|b+1/2>>>>>;x<rsup|2>|)>.>|<cell|>>>>
    </eqnarray>
  </lemma>

  We set

  <\equation*>
    <around*|(|y|)><rsub|j>\<assign\><frac|\<Gamma\><around*|(|y+j|)>|\<Gamma\><around*|(|y|)>>.
  </equation*>

  If <math|j\<in\>\<bbb-N\>> then<math|<\footnote>
    <math-up|shouldn't it be <math|<around*|(|y|)><rsub|j>?>>
  </footnote>>

  <\equation*>
    y<rsub|j>=y<around*|(|y+1|)>\<ldots\><around*|(|y+j-1|)>.
  </equation*>

  Further, it is easy to see

  <\equation*>
    <tabular|<tformat|<table|<row|<cell|y<rsub|j><around*|(|1-y|)><rsub|-j>>|<cell|=<around*|(|-1|)><rsup|j>,<eq-number><label|eqn:p1>>>|<row|<cell|<around*|(|<frac|y|2>|)><rsub|j><around*|(|<frac|1+y|2>|)><rsub|j>>|<cell|=2<rsup|-2j><around*|(|y|)><rsub|2j>,<eq-number><label|eqn:p2>>>|<row|<cell|<around*|(|y|)><rsub|i><around*|(|y-2j|)><rsub|2j>>|<cell|=<around*|(|1-y-i|)><rsub|2j><around*|(|y-2j|)><rsub|i>,<eq-number><label|eqn:p3>>>>>>
  </equation*>

  We<\footnote>
    shouldn't it be\Pwe claim\Q (from small letter)? the comma happened just
    before...
  </footnote> claim<\footnote>
    I had difficulties reading the last equation (the eqn:p3), so I might be
    wrong; anyway, expression is correct
  </footnote>

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|a|)><rsub|i><around*|(|1-a|)><rsub|i>|2<rsup|i>i!<around*|(|d|)><rsub|i>>
    <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|1-d-i|2>,<frac|2-d-i|2>>>|<row|<cell|b+<frac|1|2>>>>>>;x<rsup|2>|)>>|<cell|>>|<row|<cell|>|<cell|=<big|sum><rsub|j=0><rsup|\<infty\>><frac|<around*|(|-1|)><rsup|j><around*|(|d|)><rsub|2j>x<rsup|2j>|2<rsup|2j>j!<around*|(|b+<frac|1|2>|)><rsub|j>>
    <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|a,1-a>>|<row|<cell|d-2j>>>>>;<frac|1|2>|)>.<eq-number><label|eqn:Fijsum>>|<cell|>>>>
  </eqnarray>

  Indeed, by expanding the hypergeometric function in power series and by
  using <math|<eqref|eqn:p2>>, the left-hand side of
  <math|<eqref|eqn:Fijsum>> amounts to

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><big|sum><rsub|j=0><rsup|\<infty\>><frac|<around*|(|a|)><rsub|i><around*|(|1-a|)><rsub|i>|2<rsup|i+2j>i!<around*|(|d|)><rsub|i>>
    <frac|<around*|(|1-d-i|)><rsub|2j>|<around*|(|b+<frac|1|2>|)><rsub|j>>x<rsup|2j>,>|<cell|>>>>
  </eqnarray>

  which equals to the right-hand side of <math|<eqref|eqn:Fijsum>> by
  <math|<eqref|eqn:p3>>.

  <\proof>
    (of Theorem <reference|main-thm>, using Lemma <reference|lem2>) Recall
    Rodrigues' formula for the Gegenbauer polynomial:

    <\equation*>
      C<rsub|l><rsup|\<lambda\>><around*|(|t|)>\<cdot\><around*|(|1-t<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>>=<frac|<around*|(|-2|)><rsup|l>|l!>\<cdot\><frac|\<Gamma\><around*|(|l+\<lambda\>|)>\<Gamma\><around*|(|l+2\<lambda\>|)>|\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|2l+2\<lambda\>|)>>\<cdot\><frac|d<rsup|l>|d
      t<rsup|l>><around*|(|1-t<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>+l><eq-number><label|eqn:Rod>
    </equation*>

    We proceed as follows:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|s-t
      x|)><rsub|\<pm\>><rsup|2\<nu\>><frame|C<rsub|l><rsup|\<lambda\>><around*|(|s|)><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>>>\<cdot\><frame|C<rsub|m><rsup|\<mu\>><around*|(|t|)><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>>d
      s d t=>|<cell|>>|<row|<cell|>|<cell|<frac|2<rsup|l+m>\<Gamma\><around*|(|l+\<lambda\>|)>\<Gamma\><around*|(|l+2\<lambda\>|)>\<Gamma\><around*|(|m+\<mu\>|)>\<Gamma\><around*|(|m+2\<mu\>|)>|l!m!\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|2l+2\<lambda\>|)>\<Gamma\><around*|(|\<mu\>|)>\<Gamma\><around*|(|2m+2\<mu\>|)>><big|int><rsub|s,t=-1><rsup|1><around*|(|s-t
      x|)><rsub|\<pm\>><rsup|2\<nu\>><frac|\<partial\>|\<partial\>s<rsup|l>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>+l-<frac|1|2>><frac|\<partial\>|\<partial\>t<rsup|m>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>+m-<frac|1|2>>d
      s d t.>|<cell|>>>>
    </eqnarray>

    If <math|Re<around*|(|\<nu\>|)>\<gtr\><frac|l+m|2>>,
    <math|Re<around*|(|\<lambda\>|)>\<gtr\><frac|1|2>> and
    <math|Re<around*|(|\<mu\>|)>\<gtr\><frac|1|2>>, then integration by parts
    shows that the integral in the right-hand side amounts to

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|s,t=-1><rsup|1><around*|(|s-t
      x|)><rsub|\<pm\>><rsup|2\<nu\>><frac|\<partial\>|\<partial\>s<rsup|l>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>+l-<frac|1|2>><frac|\<partial\>|\<partial\>t<rsup|m>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>+m-<frac|1|2>>d
      s d t=>|<cell|>>|<row|<cell|>|<cell|<around*|(|-1|)><rsup|m><big|int><rsub|s,t=-1><rsup|1><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>+l-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>+m-<frac|1|2>><frac|\<partial\><rsup|l+m>|\<partial\>s<rsup|l>\<partial\>t<rsup|m>><around*|(|s-t
      x|)><rsub|\<pm\>><rsup|2\<nu\>>d s d
      t.<eq-number><label|eqn:derst>>|<cell|>>>>
    </eqnarray>

    Next, since <math|l+m\<in\>2\<bbb-N\>> we have that

    <\equation*>
      <frac|\<partial\><rsup|l+m>|\<partial\>s<rsup|l>\<partial\>t<rsup|m>><around*|(|s-t
      x|)><rsub|\<pm\>><rsup|2\<nu\>>=<around*|(|-2\<nu\>|)><rsub|l+m><around*|(|-x|)><rsup|m><around*|(|s-t
      x|)><rsub|\<pm\>><rsup|2\<nu\>-l-m>,
    </equation*>

    hence <math|<eqref|eqn:derst>> equals

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|s,t=-1><rsup|1><around*|(|s-t
      x|)><rsub|\<pm\>><rsup|2\<nu\>><frac|\<partial\>|\<partial\>s<rsup|l>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>+l-<frac|1|2>><frac|\<partial\>|\<partial\>t<rsup|m>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>+m-<frac|1|2>>d
      s d t=>|<cell|>>|<row|<cell|>|<cell|<around*|(|-2\<nu\>|)><rsub|l+m><around*|(|-x|)><rsup|m><big|int><rsub|s,t=-1><rsup|1><around*|(|s-t
      x|)><rsub|\<pm\>><rsup|2\<nu\>-l-m><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>+l-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>+m-<frac|1|2>>d
      s d t.>|<cell|>>>>
    </eqnarray>

    The application of Lemma <reference|lem2> to <math|<eqref|eqn:derst>>
    then allows to compute the latter integral, whilst the answer follows
    after some simplifications.
  </proof>

  <section|Proof of Lemma <reference|lem2>>

  <\lemma>
    <label|lem3>For <math|a,c\<in\>\<bbb-C\>> such that
    <math|Re<around*|(|a|)>,Re<around*|(|c|)>\<gtr\>0> and
    <math|-1\<leqslant\>x\<leqslant\>1> we have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around*|(|s-x|)><rsub|\<pm\>><rsup|2c-1><around*|(|1-s<rsup|2>|)><rsup|a-1>d
      s=2<rsup|a-1>B<around*|(|2c,a|)><around*|(|1\<mp\>x|)><rsup|2c+a-1>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|1-a,2c>>|<row|<cell|2c+a>>>>>;<frac|1\<mp\>x|2>|)>.>|<cell|>>>>
    </eqnarray>
  </lemma>

  <\lemma>
    <label|lem4>For <math|a,b\<in\>\<bbb-C\>> such that
    <math|Re<around*|(|a|)>,Re<around*|(|b|)>\<gtr\>0> and
    <math|x\<in\><around*|[|-1,1|]>> we have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around*|(|1-t
      x|)><rsup|a-1><around*|(|1-t<rsup|2>|)><rsup|b-1>d
      t=B<around*|(|<frac|1|2>,b|)> <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|1-a|2>,<frac|2-a|2>>>|<row|<cell|b+<frac|1|2>>>>>>;x<rsup|2>|)>.>|<cell|>>>>
    </eqnarray>
  </lemma>

  <\proof>
    (of Lemma <reference|lem2>, using Lemmas
    <reference|lem3>,<reference|lem4>) We proceed as follows:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><frame|<big|int><rsub|-1><rsup|1><around*|(|s-t
      x|)><rsub|\<pm\>><rsup|2c-1><around*|(|1-s<rsup|2>|)><rsup|a-1>><around*|(|1-t<rsup|2>|)><rsup|b-1>d
      s d t=>|<cell|>>|<row|<cell|>|<cell|<around*|(|<math-up|Lemma
      <reference|lem3>>|)>>|<cell|>>|<row|<cell|>|<cell|2<rsup|a-1>B<around*|(|2c,a|)><big|int><rsub|-1><rsup|1><around*|(|1\<mp\>t
      x|)><rsup|2c+a-1> <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|1-a,a>>|<row|<cell|2c+a>>>>>;<frac|1\<mp\>t
      x|2>|)><around*|(|1-t<rsup|2>|)><rsup|b-1>d
      t=>|<cell|>>|<row|<cell|>|<cell|2<rsup|a-1>B<around*|(|2c,a|)><big|int><rsub|-1><rsup|1><around*|(|1-t
      x|)><rsup|2c+a-1> <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|1-a,a>>|<row|<cell|2c+a>>>>>;<frac|1-t
      x|2>|)><around*|(|1-t<rsup|2>|)><rsup|b-1>d t=.>|<cell|>>>>
    </eqnarray>

    Now, expanding the hypergeometric function in power series, we can
    rewrite the latter integral as

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around*|(|1-t
      x|)><rsup|2c+a-1> <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|1-a,a>>|<row|<cell|2c+a>>>>>;<frac|1-t
      x|2>|)><around*|(|1-t<rsup|2>|)><rsup|b-1>d
      t=>|<cell|>>|<row|<cell|>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|1-a|)><rsub|i><around*|(|a|)><rsub|i>|2<rsup|i>i!<around*|(|2c+a|)><rsub|i>><frame|<big|int><rsub|-1><rsup|1><around*|(|1-t
      x|)><rsup|2c+a-1+i><around*|(|1-t<rsup|2>|)><rsup|b-1>>d
      t=>|<cell|>>|<row|<cell|>|<cell|<around*|(|<math-up|Lemma
      <reference|lem4>>|)>>|<cell|>>|<row|<cell|>|<cell|B<around*|(|<frac|1|2>,b|)><big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|1-a|)><rsub|i><around*|(|a|)><rsub|i>|2<rsup|i>i!<around*|(|2c+a|)><rsub|i>>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|1-2c-a-i|2>,<frac|2-2c-a-i|2>>>|<row|<cell|b+<frac|1|2>>>>>>;x<rsup|2>|)>.>|<cell|>>>>
    </eqnarray>

    Finally, expanding the hypergeometric function in power series, the
    latter series rewrites as

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|1-a|)><rsub|i><around*|(|a|)><rsub|i>|2<rsup|i>i!<around*|(|2c+a|)><rsub|i>>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|1-2c-a-i|2>,<frac|2-2c-a-i|2>>>|<row|<cell|b+<frac|1|2>>>>>>;x<rsup|2>|)>=>|<cell|>>|<row|<cell|>|<cell|<big|sum><rsub|i,j=0><rsup|\<infty\>><frac|<around*|(|1-a|)><rsub|i><around*|(|a|)><rsub|i>|2<rsup|i>i!j!<around*|(|b+<frac|1|2>|)><rsub|j>4<rsup|j>>\<cdot\><frame|<frac|<around*|(|1-2c-a-i|)><rsub|2j>|<around*|(|2c+a|)><rsub|i>>>x<rsup|2j>=>|<cell|>>|<row|<cell|>|<cell|<big|sum><rsub|i,j=0><rsup|\<infty\>><frac|<around*|(|1-a|)><rsub|i><around*|(|a|)><rsub|i>|2<rsup|i>i!j!<around*|(|b+<frac|1|2>|)><rsub|j>4<rsup|j><around*|(|2c+a-2j|)><rsub|i><around*|(|2c+a|)><rsub|-2j>>x<rsup|2j>=<big|sum><rsub|j=0><rsup|\<infty\>><frac|1|j!<around*|(|b+<frac|1|2>|)><rsub|j>4<rsup|j><around*|(|2c+a|)><rsub|-2j>><frame|
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|1-a,a>>|<row|<cell|2c+a-2j>>>>>;<frac|1|2>|)>>x<rsup|2j>=>|<cell|>>|<row|<cell|>|<cell|<around*|(|<math-up|<cite-detail|NIST:DLMF|http://dlmf.nist.gov/15.4.E30>:><space|0.6spc><rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|a,1-a>>|<row|<cell|b>>>>>;<frac|1|2>|)>=<frac|2<rsup|1-b><sqrt|\<pi\>>\<Gamma\><around*|(|b|)>|\<Gamma\><around*|(|<frac|a+b|2>|)>\<Gamma\><around*|(|<frac|b-a+1|2>|)>>|)>>|<cell|>>|<row|<cell|>|<cell|<big|sum><rsub|j=0><rsup|\<infty\>><frac|1|j!<around*|(|b+<frac|1|2>|)><rsub|j>>\<cdot\><frac|2<rsup|1-2c-a><sqrt|\<pi\>>\<Gamma\><around*|(|2c+a-2j|)>|\<Gamma\><around*|(|c+a-j|)>\<Gamma\><around*|(|c+<frac|1|2>-j|)><around*|(|2c+a|)><rsub|-2j>>x<rsup|2j>=<frac|\<Gamma\><around*|(|2c+a|)>2<rsup|1-2c-a><sqrt|\<pi\>>|\<Gamma\><around*|(|c+a|)>\<Gamma\><around*|(|c+<frac|1|2>|)>><big|sum><rsub|j=0><rsup|\<infty\>><frac|x<rsup|2j><around*|(|1-c-a|)><rsub|j><around*|(|<frac|1|2>-c|)><rsub|j>|j!<around*|(|b+<frac|1|2>|)><rsub|j>>,>|<cell|>>>>
    </eqnarray>

    and it now only remains to write the definition of hypergeometric
    function.
  </proof>

  <with|font-series|bold|TODO:> proof of Lemma <reference|lem3>

  <with|font-series|bold|TODO:> proof of Lemma <reference|lem4>

  <section|Special values>

  <\corollary*>
    Setting <math|x=1> and <math|l=m=0> in the statement of Theorem
    <reference|main-thm> we get:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|s-t|)><rsub|\<pm\>><rsup|2\<gamma\>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>d
      s d t=<frac|<sqrt|\<pi\>>\<Gamma\><around*|(|<frac|1|2>+\<gamma\>|)>\<Gamma\><around*|(|\<lambda\>-<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>-<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+2\<gamma\>+1|)>|2\<Gamma\><around*|(|\<lambda\>+\<gamma\>+1|)>\<Gamma\><around*|(|\<mu\>+\<gamma\>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<gamma\>+1|)>>.>|<cell|>>>>
    </eqnarray>
  </corollary*>

  <\center>
    <image|intdep.png|753px|249px||>
  </center>

  \;

  <\eqnarray>
    <tformat|<table|<row|<cell|<around*|[|<math-up|S>|]><rprime|''>:>|<cell|Re<around*|(|\<alpha\>|)>\<gtr\>0,<around*|\||\<gamma\>|\|>\<ll\>1,<big|int><rsub|<around*|(|t<rsub|1>,t<rsub|2>|)>\<in\><around*|[|0,1|]><rsup|2>>t<rsub|1><rsup|\<alpha\>-1>t<rsub|2><rsup|\<alpha\>-1><around*|(|1-t<rsub|1>|)><rsup|\<alpha\>-1><around*|(|1-t<rsub|2>|)><rsup|\<alpha\>-1><around*|\||t<rsub|1>-t<rsub|2>|\|><rsup|2\<gamma\>>d
    t<rsub|1>d t<rsub|2>=>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><rsup|2><around*|(|\<alpha\>|)>|\<Gamma\><around*|(|2\<alpha\>+\<gamma\>|)>>\<cdot\><frac|\<Gamma\><rsup|2><around*|(|\<alpha\>+\<gamma\>|)>\<Gamma\><around*|(|1+2\<gamma\>|)>|\<Gamma\><around*|(|2\<alpha\>+2\<gamma\>|)>\<Gamma\><around*|(|1+\<gamma\>|)>>;>|<cell|>>|<row|<cell|<math-up|<cite|warnaar2010sl3>><rprime|''>:>|<cell|Re<around*|(|\<alpha\><rsub|i>|)>\<gtr\>0,<around*|\||\<gamma\>|\|>\<ll\>1;<space|1em>\<alpha\><rsub|1>,\<alpha\><rsub|1>-\<gamma\>\<nin\>\<bbb-Z\>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|<around*|(|s,t|)>\<in\>C<rsub|\<alpha\><rsub|1>,\<gamma\>><rsup|1,1><around*|[|0,1|]>>t<rsup|\<alpha\><rsub|1>-1><around*|(|1-t|)><rsup|\<alpha\><rsub|1>-1>s<rsup|\<alpha\><rsub|2>-1><around*|(|1-s|)><rsup|\<alpha\><rsub|2>-1><around*|\||t-s|\|><rsup|-\<gamma\>>d
    s d t=>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|\<alpha\><rsub|1>|)>\<Gamma\><around*|(|\<alpha\><rsub|1>-\<gamma\>|)>|\<Gamma\><around*|(|2\<alpha\><rsub|1>-\<gamma\>|)>>\<cdot\><frac|\<Gamma\><rsup|2><around*|(|\<alpha\><rsub|2>|)>|\<Gamma\><around*|(|2\<alpha\><rsub|2>-\<gamma\>|)>>\<cdot\><frac|\<Gamma\><around*|(|\<alpha\><rsub|1>+\<alpha\><rsub|2>-\<gamma\>|)>|\<Gamma\><around*|(|\<alpha\><rsub|1>+\<alpha\><rsub|1>|)>>=>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|\<alpha\><rsub|1>|)>\<Gamma\><around*|(|1-\<alpha\><rsub|2>|)>|\<Gamma\><around*|(|1+\<alpha\><rsub|1>-\<alpha\><rsub|2>|)>>\<cdot\><frac|\<Gamma\><rsup|2><around*|(|\<alpha\><rsub|2>|)>|\<Gamma\><around*|(|1+\<alpha\><rsub|2>-\<alpha\><rsub|1>|)>>\<cdot\><frac|1|\<Gamma\><around*|(|\<alpha\><rsub|1>+\<alpha\><rsub|2>|)>>,<space|1em>\<alpha\><rsub|1>+\<alpha\><rsub|2>=\<gamma\>+1,>|<cell|>>|<row|<cell|>|<cell|<space|1em>C<rsub|\<alpha\><rsub|1>,\<gamma\>><rsup|1,1><around*|[|0,1|]>=<around*|{|<around*|(|t,s|)>\<in\><around*|[|0,1|]><rsup|2>\<mid\>t\<less\>s|}>+<frac|sin<around*|(|\<pi\>\<alpha\><rsub|1>|)>|sin<around*|(|\<pi\><around*|(|\<gamma\>+1-\<alpha\><rsub|1>|)>|)>><around*|{|<around*|(|t,s|)>\<in\><around*|[|0,1|]><rsup|2>\<mid\>t\<gtr\>s|}>;>|<cell|>>|<row|<cell|<math-up|<cite|tarasov2003selberg>><rprime|'>:>|<cell|Re<around*|(|\<alpha\><rsub|i>|)>\<gtr\>0,<around*|\||Re<around*|(|\<gamma\>|)>|\|>\<ll\>1>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|<around*|(|s,t|)>\<in\><around*|[|0,1|]><rsup|2>>s<rsup|\<alpha\><rsub|2>-1><around*|(|1-s|)><rsup|\<alpha\><rsub|2>-1><around*|(|t-s|)><rsub|-><rsup|-\<gamma\>>d
    s d t=<frac|\<Gamma\><around*|(|\<alpha\><rsub|2>|)>|<around*|(|1-\<gamma\>|)>>\<cdot\><frac|\<Gamma\><around*|(|1+\<alpha\><rsub|2>-\<gamma\>|)>|\<Gamma\><around*|(|1+2\<alpha\><rsub|2>-\<gamma\>|)>>;>|<cell|>>|<row|<cell|<math-up|<cite|dotsenko1985four>><rprime|'>:>|<cell|Re<around*|(|\<alpha\>/\<alpha\><rprime|'>|)>\<less\>0,Re<around*|(|\<alpha\>|)>\<gtr\>0>|<cell|>>|<row|<cell|>|<cell|PV<big|int><rsub|<around*|(|t,\<tau\>|)>\<in\><around*|[|0,1|]><rsup|2>>t<rsup|\<alpha\><rprime|'>><around*|(|1-t|)><rsup|\<alpha\><rprime|'>>\<tau\><rsup|\<alpha\>><around*|(|1-\<tau\>|)><rsup|\<alpha\>><around*|\||t-\<tau\>|\|><rsup|-2>d
    t d\<tau\>=<frac|<around*|(|\<alpha\>/\<alpha\><rprime|'>|)><rsup|2>|<around*|(|-\<alpha\>/\<alpha\><rprime|'>-1|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<frac|1|2\<alpha\><rsup|4>>\<times\><frac|\<Gamma\><around*|(|1+\<alpha\><rprime|'>|)><rsup|2>|\<Gamma\><around*|(|2\<alpha\><rprime|'>|)>>\<times\><frac|\<Gamma\><around*|(|1+\<alpha\>|)><rsup|2>|\<Gamma\><around*|(|2\<alpha\>|)>>=>|<cell|>>|<row|<cell|>|<cell|<frac|-\<pi\>/2|\<alpha\>+\<alpha\><rprime|'>>\<times\><frac|\<Gamma\><around*|(|1+\<alpha\><rprime|'>|)>|2<rsup|2\<alpha\><rprime|'>-1>\<Gamma\><around*|(|\<alpha\><rprime|'>+1/2|)>>\<times\><frac|\<Gamma\><around*|(|1+\<alpha\>|)>|2<rsup|2\<alpha\>-1>\<Gamma\><around*|(|\<alpha\>+1/2|)>>.>|<cell|>>>>
  </eqnarray>

  <\bibliography|bib|alpha|intdep.bib>
    <\bib-list|DLMF>
      <bibitem*|DF85><label|bib-dotsenko1985four>Vl<nbsp>S Dotsenko and
      Vladimir<nbsp>A Fateev. <newblock>Four-point correlation functions and
      the operator algebra in 2d conformal invariant theories with central
      charge <math|c\<leq\>1>. <newblock><with|font-shape|italic|Nuclear
      Physics B>, 251:691\U734, 1985.

      <bibitem*|DLMF><label|bib-NIST:DLMF>NIST Digital Library of
      Mathematical Functions. <newblock>http://dlmf.nist.gov/, Release 1.0.10
      of 2015-08-07.

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
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|4>>
    <associate|auto-5|<tuple|4|5>>
    <associate|auto-6|<tuple|4|?>>
    <associate|bib-NIST:DLMF|<tuple|DLMF|5>>
    <associate|bib-dotsenko1985four|<tuple|DF85|5>>
    <associate|bib-tarasov2003selberg|<tuple|TV03|5>>
    <associate|bib-warnaar2010sl3|<tuple|War10|5>>
    <associate|eq-1|<tuple|4|2>>
    <associate|eqn:Fijsum|<tuple|4|2>>
    <associate|eqn:Rod|<tuple|5|?>>
    <associate|eqn:derst|<tuple|6|?>>
    <associate|eqn:p1|<tuple|1|2>>
    <associate|eqn:p2|<tuple|2|2>>
    <associate|eqn:p3|<tuple|3|2>>
    <associate|footnote-1|<tuple|1|2>>
    <associate|footnote-2|<tuple|2|2>>
    <associate|footnote-3|<tuple|3|2>>
    <associate|footnr-1|<tuple|1|2>>
    <associate|footnr-2|<tuple|2|2>>
    <associate|footnr-3|<tuple|3|2>>
    <associate|lem2|<tuple|2|1>>
    <associate|lem3|<tuple|3|3>>
    <associate|lem4|<tuple|4|3>>
    <associate|main-thm|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      NIST:DLMF

      warnaar2010sl3

      tarasov2003selberg

      dotsenko1985four
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Main
      results> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Proof
      of Main Theorem> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Proof
      of Lemma <reference|lem2>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Special
      values> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>