<TeXmacs|1.99.4>

<style|article>

<\body>
  <\proposition>
    Let <math|p\<in\>\<bbb-Z\><rsub|\<geqslant\>2>>,
    <math|a\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>,N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>.
    Let <math|G\<assign\>O<around*|(|p+1|)>> and
    <math|H<rsub|1>\<assign\>Stab<around*|(|G\<curvearrowright\>\<bbb-S\><rsup|n>,e<rsub|n>|)>\<simeq\>O<around*|(|n|)>>
    , <math|H<rsub|2>:=Stab<around*|(|G\<curvearrowright\>\<bbb-S\><rsup|n>,e<rsub|0>|)>\<simeq\>O<around*|(|n|)>>
    and <math|H<rsub|1,2>\<assign\>H<rsub|1>\<cap\>H<rsub|2>>.

    For <math|0\<leqslant\>M\<leqslant\>L> we let the operators (with slight
    abuse of notation):

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|I<rsup|<around*|(|p|)>><rsub|M\<rightarrow\>L>:\<cal-H\><rsup|M><around*|(|\<bbb-S\><rsup|p-1>|)>\<ni\>\<phi\><around*|(|\<eta\>|)>\<mapsto\><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+M><rsub|L-M><around*|(|\<eta\><rsub|p>|)><around*|\||\<eta\>|\|><rsup|M>\<phi\><around*|(|<frac|\<eta\>|<around*|\||\<eta\>|\|>>|)>\<in\>\<cal-H\><rsup|L><around*|(|\<bbb-S\><rsup|p>|)>>|<cell|>>|<row|<cell|>|<cell|I<rsup|<around*|(|0|)>><rsub|M\<rightarrow\>L>:\<cal-H\><rsup|M><around*|(|\<bbb-S\><rsup|p-1>|)>\<ni\>\<phi\><around*|(|\<eta\>|)>\<mapsto\><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+M><rsub|L-M><around*|(|\<eta\><rsub|0>|)><around*|\||\<eta\>|\|><rsup|M>\<phi\><around*|(|<frac|\<eta\>|<around*|\||\<eta\>|\|>>|)>\<in\>\<cal-H\><rsup|L><around*|(|\<bbb-S\><rsup|p>|)>>|<cell|>>|<row|<cell|>|<cell|I<rsup|<around*|(|0|)>><rsub|M\<rightarrow\>L>:\<cal-H\><rsup|M><around*|(|\<bbb-S\><rsup|p-2>|)>\<ni\>\<phi\><around*|(|\<eta\>|)>\<mapsto\><wide|<wide|C|~>|~><rsup|<frac|p-2|2>+M><rsub|L-M><around*|(|\<eta\><rsub|0>|)><around*|\||\<eta\>|\|><rsup|M>\<phi\><around*|(|<frac|\<eta\>|<around*|\||\<eta\>|\|>>|)>\<in\>\<cal-H\><rsup|L><around*|(|\<bbb-S\><rsup|p-1>|)>>|<cell|>>|<row|<cell|>|<cell|I<rsub|M\<rightarrow\>L><rsup|<around*|(|p-1|)>>:\<cal-H\><rsup|M><around*|(|\<bbb-S\><rsup|p-2>|)>\<ni\>\<phi\><around*|(|\<eta\>|)>\<mapsto\><wide|<wide|C|~>|~><rsup|<frac|p-2|2>+M><rsub|L-M><around*|(|\<eta\><rsub|p-1>|)><around*|\||\<eta\>|\|><rsup|M>\<phi\><around*|(|<frac|\<eta\>|<around*|\||\<eta\>|\|>>|)>\<in\>\<cal-H\><rsup|L><around*|(|\<bbb-S\><rsup|p-1>|)>>|<cell|>>>>
    </eqnarray>

    which are respectively <math|H<rsub|1>>-, <math|H<rsub|2>>-,
    <math|H<rsub|1,2>> and <math|H<rsub|1,2>>-equivariant operators where we
    think of representations on the left as respectively of <math|H<rsub|1>>,
    <math|H<rsub|2>>, <math|H<rsub|1,2>> and <math|H<rsub|1,2>> modules,
    while on the right are respectively <math|G>, <math|G>, <math|H<rsub|2>>
    and <math|H<rsub|1>> modules. We then have that

    <\equation*>
      I<rsub|a\<rightarrow\>a+N><rsup|<around*|(|p|)>>I<rsub|0\<rightarrow\>a><rsup|<around*|(|0|)>>=k<rsub|a>I<rsub|a\<rightarrow\>a+N><rsup|<around*|(|0|)>>I<rsub|0\<rightarrow\>a><rsup|<around*|(|p-1|)>>,<space|2em>k<rsub|a>\<neq\>0
    </equation*>
  </proposition>

  <\proof>
    The Schur's lemma and <math|H<rsub|1,2>>-equivariance implies that

    <\equation*>
      I<rsub|a\<rightarrow\>a+N><rsup|<around*|(|p|)>>I<rsub|0\<rightarrow\>a><rsup|<around*|(|0|)>>=<big|sum><rsub|i=0><rsup|a+N>k<rsub|i>I<rsub|i\<rightarrow\>a+N><rsup|<around*|(|0|)>>I<rsub|0\<rightarrow\>i><rsup|<around*|(|p-1|)>>.
    </equation*>

    We then apply both LHS and RHS to 1 to get (employing
    <math|<around*|(|\<eta\><rsub|0>,\<eta\>,\<eta\><rsub|p>|)>> coordinates
    for <math|\<bbb-S\><rsup|p>> points):

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|I<rsup|<around*|(|p|)>><rsub|a\<rightarrow\>a+N><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|a><around*|(|\<eta\><rsub|0>|)>=<big|sum><rsub|i=0><rsup|a+N>k<rsub|i>I<rsub|i\<rightarrow\>a+N><rsup|<around*|(|0|)>><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|i><around*|(|\<eta\><rsub|p>|)>>|<cell|>>|<row|<cell|>|<cell|<wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a><rsub|N><around*|(|\<eta\><rsub|p>|)><around*|\||\<eta\><rsub|0>,\<eta\>|\|><rsup|a><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|a><around*|(|<frac|\<eta\><rsub|0>|<around*|\||\<eta\><rsub|0>,\<eta\>|\|>>|)>=<big|sum><rsub|i=0><rsup|a+N>k<rsub|i><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|i><around*|(|<frac|\<eta\><rsub|p>|<around*|\||\<eta\>,\<eta\><rsub|p>|\|>>|)><around*|\||\<eta\>,\<eta\><rsub|p>|\|><rsup|i><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+i><rsub|a+N-i><around*|(|\<eta\><rsub|0>|)>>|<cell|>>|<row|<cell|>|<cell|<around*|\||\<eta\><rsub|0>,\<eta\>|\|>\<assign\><sqrt|<around*|\||\<eta\><rsub|0>|\|><rsup|2>+<around*|\||\<eta\>|\|><rsup|2>>=<sqrt|1-<around*|\||\<eta\><rsub|p>|\|><rsup|2>>,<space|2em><around*|\||\<eta\>,\<eta\><rsub|p>|\|>:=<sqrt|<around*|\||\<eta\>|\|><rsup|2>+<around*|\||\<eta\><rsub|p>|\|><rsup|2>>=<sqrt|1-<around*|\||\<eta\><rsub|0>|\|><rsup|2>>>|<cell|>>|<row|<cell|>|<cell|<wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a><rsub|N><around*|(|\<eta\><rsub|p>|)><sqrt|1-<around*|\||\<eta\><rsub|p>|\|><rsup|2>><rsup|a><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|a><around*|(|<frac|\<eta\><rsub|0>|<sqrt|1-<around*|\||\<eta\><rsub|p>|\|><rsup|2>>>|)>=<big|sum><rsub|i=0><rsup|a+N>k<rsub|i><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|i><around*|(|<frac|\<eta\><rsub|p>|<sqrt|1-<around*|\||\<eta\><rsub|0>|\|><rsup|2>>>|)><sqrt|1-<around*|\||\<eta\><rsub|0>|\|><rsup|2>><rsup|i><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+i><rsub|a+N-i><around*|(|\<eta\><rsub|0>|)>>|<cell|>>>>
    </eqnarray>

    We now note that considering both sides as functions of
    <math|\<eta\><rsub|0>> only, the LHS is even (odd) in
    <math|\<eta\><rsub|0>> if <math|a> is even (odd), while RHS is decomposed
    on even-odd as

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|even+odd=>|<cell|>>|<row|<cell|>|<cell|=<big|sum><rsub|i=0<mid|\|>a+i\<in\>2\<bbb-Z\>><rsup|a+N>k<rsub|i><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|i><around*|(|<frac|\<eta\><rsub|p>|<around*|\||\<eta\>,\<eta\><rsub|p>|\|>>|)><around*|\||\<eta\>,\<eta\><rsub|p>|\|><rsup|i><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+i><rsub|a+N-i><around*|(|\<eta\><rsub|0>|)>+<big|sum><rsub|i=0<mid|\|>a+i\<in\>2\<bbb-Z\>+1><rsup|a+N>k<rsub|i><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|i><around*|(|<frac|\<eta\><rsub|p>|<around*|\||\<eta\>,\<eta\><rsub|p>|\|>>|)><around*|\||\<eta\>,\<eta\><rsub|p>|\|><rsup|i><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+i><rsub|a+N-i><around*|(|\<eta\><rsub|0>|)>>|<cell|>>>>
    </eqnarray>

    hence,

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a><rsub|N><around*|(|\<eta\><rsub|p>|)><around*|(|1-<around*|\||\<eta\><rsub|p>|\|><rsup|2>|)><rsup|<frac|a|2>><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|a><around*|(|<frac|\<eta\><rsub|0>|<sqrt|1-<around*|\||\<eta\><rsub|p>|\|><rsup|2>>>|)>=<big|sum><rsub|i=0<mid|\|>i\<in\>2\<bbb-Z\>><rsup|a+N>k<rsub|i><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|i><around*|(|<frac|\<eta\><rsub|p>|<sqrt|1-<around*|\||\<eta\><rsub|0>|\|><rsup|2>>>|)><around*|(|1-<around*|\||\<eta\><rsub|0>|\|><rsup|2>|)><rsup|<frac|i|2>><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+i><rsub|a+N-i><around*|(|\<eta\><rsub|0>|)>.>|<cell|>>|<row|<cell|>|<cell|\<eta\><rsub|0>=0\<Rightarrow\><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a><rsub|N><around*|(|\<eta\><rsub|p>|)><around*|(|1-<around*|\||\<eta\><rsub|p>|\|><rsup|2>|)><rsup|<frac|a|2>><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|a><around*|(|0|)>=<big|sum><rsub|i=0<mid|\|>i\<in\>2\<bbb-Z\>><rsup|a+N>k<rsub|i><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|i><around*|(|\<eta\><rsub|p>|)><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+i><rsub|a+N-i><around*|(|0|)>>|<cell|>>|<row|<cell|>|<cell|\<eta\><rsub|p>=0\<Rightarrow\><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a><rsub|N><around*|(|0|)><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|a><around*|(|\<eta\><rsub|0>|)>=<big|sum><rsub|i=0<mid|\|>i\<in\>2\<bbb-Z\>><rsup|a+N>k<rsub|i><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|i><around*|(|0|)><around*|(|1-<around*|\||\<eta\><rsub|0>|\|><rsup|2>|)><rsup|<frac|i|2>><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+i><rsub|a+N-i><around*|(|\<eta\><rsub|0>|)>>|<cell|>>>>
    </eqnarray>

    We now consider the <math|a\<in\>2\<bbb-Z\>> case. If we put
    <math|\<eta\><rsub|p>=\<eta\><rsub|0>=0>

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a><rsub|N><around*|(|0|)><around*|\||\<eta\>|\|><rsup|a><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|a><around*|(|0|)>=<big|sum><rsub|i=0<mid|\|>i\<in\>2\<bbb-Z\>><rsup|a+N>k<rsub|i><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|i><around*|(|0|)><around*|\||\<eta\>|\|><rsup|i><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+i><rsub|a+N-i><around*|(|0|)>>|<cell|>>>>
    </eqnarray>

    As we now have (implied by generating formula <math|<around*|(|1-2x
    t+t<rsup|2>|)><rsup|-\<alpha\>>=<big|sum><rsub|n\<geqslant\>0>C<rsup|<around*|(|\<alpha\>|)>><rsub|n><around*|(|x|)>t<rsup|n>>
    for Gegenbauer polynomials)

    <\equation*>
      <wide|<wide|C|~>|~><rsup|\<alpha\>><rsub|n><around*|(|0|)>=<choice|<tformat|<table|<row|<cell|<frac|2<rsup|k><rsup|><around*|(|-1|)><rsup|k>|k!>\<Gamma\><around*|(|\<alpha\>+k+1|)>\<neq\>0,>|<cell|n=2k>>|<row|<cell|0,>|<cell|n=2k+1,>>>>>
    </equation*>

    this implies that for even <math|i> <math|k<rsub|i>=0\<Leftrightarrow\>i\<neq\>a>.
    This implies the result for this case.

    We next treat the <math|a\<in\>2\<bbb-Z\>+1> case. We divide both sides
    by <math|\<eta\><rsub|0>> and then go with the same reasoning as in the
    previous paragraph. The thing to note is that

    <\equation*>
      <around*|(|<frac|<wide|<wide|C|~>|~><rsup|\<alpha\>><rsub|2k+1><around*|(|x|)>|x>|)><around*|(|0|)>=\<ldots\>\<neq\>0.
    </equation*>
  </proof>

  <\proposition>
    Suppose <math|p\<geqslant\>2>. Suppose that
    <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>\<in\>\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>>
    be kernel of regular SBO for <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>
    and <math|Op<around*|(|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>|)>\<in\>Hom<rsub|G<rprime|'>><around*|(|I<around*|(|\<lambda\>|)>,J<around*|(|\<nu\>|)>|)>>
    be the corresponding SBO, <math|K<rsup|S>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-S\><rsup|p>\<times\>\<bbb-S\><rsup|q>|)>>
    corresponding distribution. We then have <math|K>- and <math|K<rprime|'>>
    isomorphisms

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|\<pi\><rsub|\<lambda\>>:<big|oplus><rsub|a,b\<in\>\<bbb-Z\><rsub|\<geqslant\>0><mid|\|>a+b\<in\>2\<bbb-Z\>>\<cal-H\><rsup|a><around*|(|\<bbb-S\><rsup|p>|)>\<otimes\>\<cal-H\><rsup|b><around*|(|\<bbb-S\><rsup|q>|)>\<rightarrow\>I<around*|(|\<lambda\>|)><rsub|K>>|<cell|>>|<row|<cell|>|<cell|\<pi\><rprime|'><rsub|\<nu\>>:<big|oplus><rsub|a,b\<in\>\<bbb-Z\><rsub|\<geqslant\>0><mid|\|>a+b\<in\>2\<bbb-Z\>>\<cal-H\><rsup|a><around*|(|\<bbb-S\><rsup|p-1>|)>\<otimes\>\<cal-H\><rsup|b><around*|(|\<bbb-S\><rsup|q>|)>\<rightarrow\>J<around*|(|\<nu\>|)><rsub|K<rprime|'>>>|<cell|>>>>
    </eqnarray>

    We then have for <math|a,b\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|\<cal-H\><rsup|a><around*|(|\<bbb-S\><rsup|p-1>|)>\<otimes\>\<cal-H\><rsup|b><around*|(|\<bbb-S\><rsup|q>|)>\<nsubset\>image<around*|(|\<pi\><rsub|\<nu\>><rprime|'>Op<around*|(|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>|)>\<pi\><rsub|\<lambda\>><rsup|-1>|)>\<Leftrightarrow\>>|<cell|>>|<row|<cell|>|<cell|\<Leftrightarrow\>\<forall\>N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>,<space|1em><around*|\<langle\>|K<rsup|S>,I<rsub|a\<rightarrow\>a+N><rsup|<around*|(|0|)>><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|a><around*|(|\<eta\><rsub|p-1>|)>\<otimes\>I<rsup|<around*|(|q|)>><rsub|0\<rightarrow\>b>1|\<rangle\>>\<Leftrightarrow\>>|<cell|>>|<row|<cell|>|<cell|\<Leftrightarrow\>\<forall\>N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>,<space|1em><frac|1|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>>\<times\><frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-a+2|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-q+a|2>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|\<times\><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||x-y|\|><rsup|-\<nu\>><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>+N+a-q|)>/2-1><frac|d<rsup|b>|d
      x<rsup|b>><around*|(|1-x<rsup|2>|)><rsup|b+<around*|(|q-2|)>/2><rsub|>d
      x d y=0.>|<cell|>>>>
    </eqnarray>
  </proposition>

  <\remark>
    The integral in the last expression can be written as product of Gamma
    functions and their inverses.
  </remark>

  <\proof>
    We have the following:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|\<cal-H\><rsup|a><around*|(|\<bbb-S\><rsup|p-1>|)>\<otimes\>\<cal-H\><rsup|b><around*|(|\<bbb-S\><rsup|q>|)>\<nsubset\>image<around*|(|\<pi\><rsub|\<nu\>><rprime|'>Op<around*|(|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>|)>\<pi\><rsub|\<lambda\>><rsup|-1>|)>\<Leftrightarrow\>>|<cell|>>|<row|<cell|>|<cell|\<Leftrightarrow\>\<forall\>N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>,<space|1em><around*|\<langle\>|K<rsup|S>,I<rsub|a\<rightarrow\>a+N><rsup|<around*|(|p|)>>\<cal-H\><rsup|a><around*|(|\<bbb-S\><rsup|p-1>|)>\<otimes\>\<cal-H\><rsup|q><around*|(|\<bbb-S\><rsup|q>|)>|\<rangle\>>=0\<Leftrightarrow\>>|<cell|>>|<row|<cell|>|<cell|\<Leftrightarrow\>\<forall\>N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>,\<forall\>a<rprime|'>\<leqslant\>a\<forall\>b<rprime|'>\<leqslant\>b,<around*|\<langle\>|K<rsup|S>,I<rsub|a\<rightarrow\>a+N><rsup|<around*|(|p|)>>I<rsup|<around*|(|0|)>><rsub|a<rprime|'>\<rightarrow\>a>\<cal-H\><rsup|a<rprime|'>><around*|(|\<bbb-S\><rsup|p-2>|)>\<otimes\>I<rsub|b<rprime|'>\<rightarrow\>b><rsup|<around*|(|q|)>>\<cal-H\><rsup|b><around*|(|\<bbb-S\><rsup|q-1>|)>|\<rangle\>>=0\<Leftrightarrow\>>|<cell|>>>>
    </eqnarray>

    And as Schur's lemma implies that

    <\equation*>
      I<rsub|a\<rightarrow\>a+N><rsup|<around*|(|p|)>>I<rsup|<around*|(|0|)>><rsub|a<rprime|'>\<rightarrow\>a>=<big|sum><rsub|i=a<rprime|'>><rsup|a+N>k<rsub|i,a<rprime|'>,a,N>I<rsub|i\<rightarrow\>a+N><rsup|<around*|(|0|)>>I<rsup|<around*|(|p-1|)>><rsub|a<rprime|'>\<rightarrow\>i>,
    </equation*>

    we have

    <\equation*>
      \<Leftrightarrow\>\<forall\>N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>,\<forall\>a<rprime|'>\<leqslant\>a\<forall\>b<rprime|'>\<leqslant\>b,<around*|\<langle\>|K<rsup|S>,<big|sum><rsub|i=a<rprime|'>><rsup|a+N>k<rsub|i,a<rprime|'>,a,N>I<rsub|i\<rightarrow\>a+N><rsup|<around*|(|0|)>>I<rsup|<around*|(|p-1|)>><rsub|a<rprime|'>\<rightarrow\>i>\<cal-H\><rsup|a<rprime|'>><around*|(|\<bbb-S\><rsup|p-2>|)>\<otimes\>I<rsub|b<rprime|'>\<rightarrow\>b><rsup|<around*|(|q|)>>\<cal-H\><rsup|b><around*|(|\<bbb-S\><rsup|q-1>|)>|\<rangle\>>=0\<Leftrightarrow\>
    </equation*>

    We now recall that for <math|<around*|(|\<phi\>,\<phi\><rprime|'>|)>\<in\>\<cal-H\><rsup|a<rprime|''>><around*|(|\<bbb-S\><rsup|p-2>|)>\<times\>\<cal-H\><rsup|b<rprime|'>><around*|(|\<bbb-S\><rsup|q-1>|)>>
    we have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<around*|\<langle\>|K<rsup|S>,I<rsub|a<rprime|'>\<rightarrow\>a+N><rsup|<around*|(|0|)>>I<rsup|<around*|(|p-1|)>><rsub|a<rprime|''>\<rightarrow\>a<rprime|'>>\<phi\>\<otimes\>I<rsub|b<rprime|'>\<rightarrow\>b><rsup|<around*|(|q|)>>\<phi\><rprime|'>|\<rangle\>>=<big|int><rsub|\<bbb-S\><rsup|p-1>><around*|\||\<omega\><rsub|p-1>|\|><rsup|\<lambda\>+\<nu\>-n>I<rsup|<around*|(|p-1|)>><rsub|a<rprime|''>\<rightarrow\>a<rprime|'>>\<phi\><around*|(|\<omega\>|)>d
      \<omega\><big|int>\<phi\><rprime|'><around*|(|\<omega\><rprime|'>|)>d\<omega\><rprime|'>\<times\>>|<cell|>>|<row|<cell|>|<cell|<big|int><big|int><rsub|r,s=0><rsup|\<infty\>>F<around*|(|r,s|)>d
      r d s>|<cell|>>>>
    </eqnarray>

    and as <math|<big|int>\<phi\><rprime|'><around*|(|\<omega\><rprime|'>|)>d\<omega\><rprime|'>\<neq\>0>
    iff <math|b<rprime|'>=0> and <math|<big|int><rsub|\<bbb-S\><rsup|p-1>><around*|\||\<omega\><rsub|p-1>|\|><rsup|\<lambda\>+\<nu\>-n>I<rsup|<around*|(|p-1|)>><rsub|a<rprime|''>\<rightarrow\>a<rprime|'>>\<phi\><around*|(|\<omega\>|)>d
    \<omega\>\<neq\>0> iff <math|a<rprime|'>\<in\>2\<bbb-Z\>> and
    <math|a<rprime|''>=0>, hence we can continue chain of equivalences as

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|\<Leftrightarrow\>\<forall\>N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>,<around*|\<langle\>|K<rsup|S>,<big|sum><rsub|i=0<mid|\|>i\<in\>2\<bbb-Z\>><rsup|a+N>k<rsub|i>I<rsub|i\<rightarrow\>a+N><rsup|<around*|(|0|)>>I<rsup|<around*|(|p-1|)>><rsub|0\<rightarrow\>i>1\<otimes\>I<rsub|0\<rightarrow\>b><rsup|<around*|(|q|)>>1|\<rangle\>>=0\<Leftrightarrow\>>|<cell|>>>>
    </eqnarray>

    and now the previous proposition allows to continue as

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|\<Leftrightarrow\>\<forall\>N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>,<around*|\<langle\>|K<rsup|S>,I<rsub|a\<rightarrow\>a+N><rsup|<around*|(|0|)>>I<rsup|<around*|(|p-1|)>><rsub|0\<rightarrow\>a>1\<otimes\>I<rsub|0\<rightarrow\>b><rsup|<around*|(|q|)>>1|\<rangle\>>=0\<Leftrightarrow\>>|<cell|>>|<row|<cell|>|<cell|\<Leftrightarrow\>\<forall\>N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>,<around*|\<langle\>|K<rsup|S>,I<rsub|a\<rightarrow\>a+N><rsup|<around*|(|0|)>><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|a><around*|(|\<omega\><rsub|p-1>|)>\<otimes\>I<rsub|0\<rightarrow\>b><rsup|<around*|(|q|)>>1|\<rangle\>>=0\<Leftrightarrow\>>|<cell|>>|<row|<cell|>|<cell|\<Leftrightarrow\><frac|1|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>>\<times\><frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-a+2|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-q+a|2>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|\<times\><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||x-y|\|><rsup|-\<nu\>><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>+a-q|)>/2-1><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a><rsub|N><rsup|><around*|(|y|)><wide|<wide|C|~>|~><rsup|<frac|q-1|2>><rsub|b><around*|(|x|)><around*|(|1-x<rsup|2>|)><rsup|<around*|(|q-2|)>/2><rsub|>d
      x d y=0.>|<cell|>>>>
    </eqnarray>

    and the statement now follows.
  </proof>
</body>

<initial|<\collection>
</collection>>