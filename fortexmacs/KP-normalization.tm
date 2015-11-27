<TeXmacs|1.0.7.18>

<style|article>

<\body>
  <section|Setting>

  As shown in <verbatim|todai_masterreport_15_10_14.pdf>, for
  <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> fixed and
  <math|\<lambda\>\<assign\>-1-2x-<around*|(|\<nu\>+n|)>>
  \ (<math|n\<assign\>p+q> and <math|p,q\<geqslant\>1>) the meromorphic in
  <math|\<nu\>\<in\>\<bbb-C\>> distribution on <math|\<bbb-R\><rsup|p,q>>
  defined as

  <\equation>
    K<rsub|\<lambda\>,\<nu\>><rsup|P>\<assign\><big|sum><rsub|i=0><rsup|k><frac|<around*|(|-1|)><rsup|i><around*|(|2k|)>!<around*|(|\<nu\>|)><rsub|><rsup|i>|<around*|(|2k-2i|)>!i!>\<delta\><rsup|<around*|(|2k-2i|)>><around*|(|x<rsub|p>|)>\<otimes\>Q<rsub|i><label|eq-1>
  </equation>

  with

  <\equation*>
    Q<rsub|i>\<assign\><choice|<tformat|<table|<row|<cell|<around*|\||<wide|Q|~>|\|><rsup|-\<nu\>-2i>>|<cell|,i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>>|<row|<cell|sgn<around*|(|<wide|Q|~>|)><around*|\||<wide|Q|~>|\|><rsup|-\<nu\>-2i>>|<cell|,i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>>>>
  </equation*>

  and with <math|<wide|Q|~><around*|(|x,y|)>\<assign\><big|sum><rsub|i=0><rsup|p-1>x<rsub|i><rsup|2>-<big|sum><rsub|j=0><rsup|q>y<rsub|j><rsup|2>>
  and <math|<around*|(|\<nu\>|)><rsub|><rsup|i>\<assign\>\<nu\><around*|(|\<nu\>+1|)>\<ldots\><around*|(|\<nu\>+i-1|)>>,
  is supported on <math|<around*|{|x<rsub|p>=0|}>> kernel of a singular
  symmetry breaking operator. Here we attempt to normalize it to eliminate
  poles and determine where the normalized kernel becomes zero.

  We therefore fix <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> and let
  <math|\<lambda\>\<assign\>-1-2k+n-\<nu\>> and consider only
  <math|\<nu\>\<in\>\<bbb-C\>> as a variable.

  Recall also that in <verbatim|KC-normalization.pdf> it was shown that
  <math|K>-finite vectors in non-compact models are spanned by the following
  functions (in bipolar coordinates on <math|\<bbb-R\><rsup|p,q>>):

  <\equation>
    F<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\><rprime|'>><around*|(|r\<omega\><rsub|p-1>,s\<omega\><rsub|q-1>|)>:=R<rsup|-\<lambda\>/2><around*|(|<frac|r|<sqrt|R>>|)><rsup|N><around*|(|<frac|s|<sqrt|R>>|)><rsup|M><around*|(|<frac|1-r<rsup|2>+s<rsup|2>|R>|)><rsup|n<rprime|'>><around*|(|<frac|1+r<rsup|2>-s<rsup|2>|R>|)><rsup|m<rprime|'>>\<times\>
  </equation>

  <\equation*>
    \<times\>\<psi\><around*|(|\<omega\><rsub|p-1>|)>\<psi\><rprime|'><around*|(|\<omega\><rsub|q-1>|)>,
  </equation*>

  where <math|M,N,m<rprime|'>,n<rprime|'>\<in\>\<bbb-Z\><rsub|\<geqslant\>0>>,
  <math|<around*|(|\<psi\>,\<psi\><rprime|'>|)>\<in\>\<cal-H\><rsup|N><around*|(|\<bbb-S\><rsup|p-1>|)>\<times\>\<cal-H\><rsup|M><around*|(|\<bbb-S\><rsup|q-1>|)>>,
  <math|M+N+m<rprime|'>+n<rprime|'>\<in\>2\<bbb-Z\>> and
  <math|R\<assign\><around*|(|1-r<rsup|2>+s<rsup|2>|)><rsup|2>+4r<rsup|2>>.

  <section|Main results>

  <\proposition>
    <label|prop-norm-1>Assume that <math|q\<in\>2\<bbb-Z\>> and
    <math|<frac|\<lambda\>+\<nu\>-q|2>\<notin\>-\<bbb-Z\><rsub|\<geqslant\>0>>.
    Let <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|P>\<assign\>K<rsub|\<lambda\>,\<nu\>><rsup|P>/\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>/\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-q+2|2>-\<nu\>|)>>.
    Then for every K-finite <math|F<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\><rprime|'>>>
    we have <math|<around*|\<langle\>|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|P>,F<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\><rprime|'>>|\<rangle\>>>
    being holomorphic as a function of <math|\<nu\>>.
  </proposition>

  <\proposition>
    <label|prop-norm-2>Assume that <math|q\<in\>2\<bbb-Z\>> and
    <math|<frac|\<lambda\>+\<nu\>-q|2>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>>.
    Let <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|P>:=K<rsub|\<lambda\>,\<nu\>><rsup|P>/\<Gamma\><around*|(|1-\<nu\>|)>>.
    Then for every K-finite <math|F<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\><rprime|'>>>
    we have <math|<around*|\<langle\>|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|P>,F<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\><rprime|'>>|\<rangle\>>>
    being holomorphic as a function of <math|\<nu\>>.
  </proposition>

  <\proposition>
    <label|prop-3>Assume setting the same as in prop. <reference|prop-norm-1>
    and <math|q=2>, then <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|P>>
    only has simple zeroes at <math|<around*|{|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1<mid|\|><frac|\<lambda\>+\<nu\>-q+2|2>-\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>|}>>.
  </proposition>

  <\proposition>
    <label|prop-4>Assume setting the same as in prop. <reference|prop-norm-2>
    \ and <math|q=2>, then <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|P>\<neq\>0>
    for all <math|\<nu\>\<in\>\<bbb-C\>>.
  </proposition>

  <\remark>
    The previous two propositions show that in case <math|q=2> we can
    renormalize <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|P>> to become
    non-vanishing at all.
  </remark>

  <\remark>
    I suppose that the conclusions of propositions <reference|prop-3> and
    <reference|prop-4> hold in case <math|q\<in\>2\<bbb-Z\>> as well, but I
    don't know how to prove this yet.
  </remark>

  <\proposition>
    <label|prop-6>Let <math|<wide|<wide|K|~>|~><rsup|P><rsub|\<lambda\>,\<nu\>>\<assign\>K<rsub|\<lambda\>,\<nu\>>/\<Gamma\><around*|(|-2k+1-\<nu\>|)>/\<Gamma\><around*|(|-2k+<frac|n-1|2>-\<nu\>|)>>.
    Then <math|<wide|<wide|K|~>|~><rsub|\<lambda\>,\<nu\>><rsup|P>> depends
    on <math|\<nu\>\<in\>\<bbb-C\>> holomorphically.
  </proposition>

  <section|Auxiliary results>

  <\lemma>
    <label|forre>For <math|Re<around*|(|\<nu\>|)>\<ll\>0> we have
    <math|<around*|\<langle\>|K<rsup|P><rsub|\<lambda\>,\<nu\>>,\<varphi\>|\<rangle\>>=<around*|\<langle\>|\<delta\><rsup|<around*|(|2k|)>><around*|(|x<rsub|p>|)>,<around*|\||Q|\|><rsup|-\<nu\>>\<varphi\>|\<rangle\>>>.
  </lemma>

  <\proof>
    see <samp|><verbatim|todai_masterreport_15_10_14.pdf>.
  </proof>

  <\definition>
    For <math|g=<big|sum><rsub|i><rsup|>g<rsub|i
    j>s<rsup|i>t<rsup|j>\<in\>\<bbb-C\><around*|[|s,t|]>> we let\ 

    <\equation*>
      <wide|F|~><rsub|N,M,g,\<psi\>,\<psi\><rprime|'>>\<assign\><big|sum><rsub|i,j>g<rsub|i
      j>F<rsub|N,M,i,j,\<psi\>\<comma\>\<psi\><rprime|'>>
    </equation*>
  </definition>

  <\lemma>
    <label|lem-span>For <math|<around*|(|N,M,n<rprime|'>,m<rprime|'>|)>\<in\>\<bbb-Z\><rsub|\<geqslant\>0><rsup|4>>
    such that <math|N+M+n<rprime|'>+m<rprime|'>> is even and
    <math|<around*|(|\<psi\>,\<psi\><rprime|'>|)>\<in\>\<cal-H\><rsup|N><around*|(|\<bbb-S\><rsup|p-1>|)>\<times\>\<cal-H\><rsup|M><around*|(|\<bbb-S\><rsup|q-1>|)>>,
    functions <math|<wide|F|~><rsub|N,M,s<rsup|n<rprime|'>><around*|(|t-s|)><rsup|m<rprime|'>>,\<psi\>,\<psi\><rprime|'>>>
    are K-finite vectors.\ 

    Moreover, for <math|N<rsub|>> and <math|M<rsub|>> non-negative integers
    fixed and <math|<around*|(|\<psi\>,\<psi\><rprime|'>|)>\<in\>\<cal-H\><rsup|N><around*|(|\<bbb-S\><rsup|p-1>|)>\<times\>\<cal-H\><rsup|M><around*|(|\<bbb-S\><rsup|q-1>|)>>
    being fixed, we have <math|<around*|{|F<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\><rprime|'>><mid|\|><around*|(|n<rprime|'>,m<rprime|'>|)>\<in\>\<bbb-Z\><rsup|2><rsub|\<geqslant\>0>,<space|0.6spc>N+M+n<rprime|'>+m<rprime|'>\<in\>2\<bbb-Z\>|}>>
    and <math|<around*|{|<wide|F|~><rsub|N,M,s<rsup|n<rprime|'>><around*|(|t-s|)><rsup|m<rprime|'>>,\<psi\>,\<psi\><rprime|'>><mid|\|><around*|(|n<rprime|'>,m<rprime|'>|)>\<in\>\<bbb-Z\><rsup|2><rsub|\<geqslant\>0>,<space|0.6spc>N+M+n<rprime|'>+m<rprime|'>\<in\>2\<bbb-Z\>|}>>
    having the same span.

    In particular, all <math|K>-finite vectors are spanned by
    <math|<around*|{|<wide|F|~><rsub|N,M,s<rsup|n<rprime|'>><around*|(|t-s|)><rsup|m<rprime|'>>,\<psi\>,\<psi\><rprime|'>><mid|\|><around*|(|N,M,n<rprime|'>,m<rprime|'>|)>\<in\>\<bbb-Z\><rsup|2><rsub|\<geqslant\>0>,<space|0.6spc>N+M+n<rprime|'>+m<rprime|'>\<in\>2\<bbb-Z\>,<around*|(|\<psi\>,\<psi\><rprime|'>|)>\<in\>\<cal-H\><rsup|N><around*|(|\<bbb-S\><rsup|p-1>|)>\<times\>\<cal-H\><rsup|M><around*|(|\<bbb-S\><rsup|q-1>|)>|}>>.
  </lemma>

  <\proof>
    Clear by direct computations.
  </proof>

  <\lemma>
    <label|lem-Mg0><math|<around*|\<langle\>|K<rsup|P><rsub|\<lambda\>,\<nu\>>,F<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\><rprime|'>>|\<rangle\>>=0>
    if <math|M\<gtr\>0>, <math|N> is odd or
    <math|\<psi\>\<perp\>\<cal-H\><rsup|N><around*|(|\<bbb-S\><rsup|p-1>|)><rsup|O<around*|(|p-1|)>>>.
    For <math|N> even, <math|m<rprime|'>+n<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>
    and <math|\<psi\><around*|(|\<omega\><rsub|p>|)>\<assign\><wide|<wide|C|~>|~><rsup|p/2-1><rsub|N><around*|(|\<omega\><rsub|p-1><rsup|<around*|(|p|)>>|)>>
    we have

    <\equation*>
      <around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|P>,<wide|F|~><rsub|N,0,s<rsup|n<rprime|'>><around*|(|t-s|)><rsup|m<rprime|'>>,\<psi\>,1>|\<rangle\>>=R\<cdot\>S
    </equation*>

    where

    <\equation*>
      S\<simeq\><big|int><rsub|\<bbb-S\><rsup|p-1>>\<delta\><rsup|<around*|(|k|)>><around*|(|\<omega\><rsub|p-1><rsup|<around*|(|p|)>>|)>\<psi\><around*|(|\<omega\><rsub|p>|)>d\<omega\><rsub|p>\<simeq\><frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N\<upl\>2|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>+N-q|2>|)>>\<simeq\><frac|1|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>+N-q|2>|)>>
    </equation*>

    and

    <\equation*>
      R\<simeq\><big|int><rsub|-1><rsup|1><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>+N-q-2|)>/2>y<rsup|n<rprime|'>><big|int><rsub|-1><rsup|1><around*|(|1-x<rsup|2>|)><rsup|<around*|(|q-2|)>/2><around*|(|x-y|)><rsup|m<rprime|'>><rsub|><around*|\||x-y|\|><rsup|-\<nu\>>d
      x d y.
    </equation*>
  </lemma>

  <\lemma>
    <label|lem-assume-the-setting>Assume the setting being the same as in
    lemma <reference|lem-Mg0> and in additition that
    <math|q\<in\>2\<bbb-Z\>>. Then

    <\equation*>
      R\<simeq\><big|sum><rsub|i=0><rsup|q-2><frac|1|\<nu\>-<around*|(|m<rprime|'>+i+1|)>><big|int><rsub|-1><rsup|1><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>+N-q-2|)>/2>y<rsup|n<rprime|'>>F<rsub|i><around*|(|y|)><around*|(|1-y|)><rsup|m<rprime|'>+i+1-\<nu\>>d
      y
    </equation*>

    where polynomials <math|F<rsub|i>> have the property
    <math|F<rsub|i><around*|(|-y|)>=<around*|(|-1|)><rsup|i>F<rsub|i><around*|(|y|)>>
    and hence

    <\equation*>
      R\<cdot\>S\<simeq\><big|sum><rsub|i=0><rsup|q-2><frac|1|<around*|(|m<rprime|'>+i+1|)>-\<nu\>>P<rsub|><rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i><around*|(|y|)>|)>\<cdot\>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>+N-q|2>+m<rprime|'>+i+1-\<nu\>|)>
    </equation*>

    where <math|L\<assign\><frac|\<lambda\>+\<nu\>+N-q|2>>,
    <math|P<rsup|<around*|(|i|)>><rsub|a,b>\<assign\>P<rsup|even><rsub|a,b>>
    if <math|m<rprime|'>+i\<in\>2\<bbb-Z\>> and
    <math|\<assign\>P<rsup|odd><rsub|a,b>> otherwise.
  </lemma>

  <\proof>
    (of lemma <reference|lem-Mg0>) In the light of lemma <reference|forre>,
    the proof is done in the same way as in <verbatim|KC-normalization.pdf>,
    except for some minor differences.

    The expression of <math|S>-multiplicand computed in
    <verbatim|KC-normalization.pdf> should be divided by
    <math|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>> in the light
    of the residue formula <math|\<delta\><rsup|<around*|(|k|)>><around*|(|x|)>=<around*|\||x|\|><rsup|\<mu\>>/\<Gamma\><around*|(|<frac|\<mu\>+1|2>|)><mid|\|><rsub|\<mu\>=-1-2k>>,
    hence the expression above. Now, as <math|\<lambda\>+\<nu\>-n=-1-2k> is
    necessarily odd, we see that neither <math|<around*|(|\<lambda\>+\<nu\>-n+2|)>/2>
    nor <math|<around*|(|\<lambda\>+\<nu\>-n-N+2|)>/2> are integers, hence
    the expression <math|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>/\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>>
    is nonzero and finite, hence the final form of the <math|S>-multiplicand
    given above.
  </proof>

  <\proof>
    (of lemma <reference|lem-assume-the-setting>) The first expression for
    <math|R> follows from the straightforward computations, while the second
    one follows from the first one by writing
    <math|<around*|(|1-x<rsup|2>|)><rsup|<around*|(|q-2|)>/2>=<around*|[|<around*|(|1-y<rsup|2>|)>-2y<around*|(|x-y|)>-<around*|(|x-y|)><rsup|2>|]><rsup|<around*|(|q-2|)>/2>>
    and expanding to get\ 

    <\equation*>
      R\<simeq\><big|sum><rsub|i=0><rsup|q-2><big|int><rsub|-1><rsup|1><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>+N-q-2|)>/2>y<rsup|n<rprime|'>>F<rsub|i><around*|(|y|)><big|int><rsub|-1><rsup|1><around*|(|x-y|)><rsup|m<rprime|'>+i><rsub|><around*|\||x-y|\|><rsup|-\<nu\>>d
      x d y
    </equation*>

    and showing the properties of <math|F<rsub|i>> stated by induction. Then,
    performing the inner integration we have

    <\equation*>
      R\<simeq\><big|sum><rsub|i=0><rsup|q-2><frac|1|\<nu\>-<around*|(|m<rprime|'>+i+1|)>><big|int><rsub|-1><rsup|1><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>+N-q-2|)>/2>y<rsup|n<rprime|'>>F<rsub|i><around*|(|y|)>\<times\>
    </equation*>

    <\equation*>
      \<times\><around*|[|<around*|(|1-y|)><rsup|m<rprime|'>+i-\<nu\>+1>+<around*|(|-1|)><rsup|m<rprime|'>+i><around*|(|1+y|)><rsup|m<rprime|'>+i-\<nu\>+1>|]>d
      y
    </equation*>

    Finally, as value of <math|<big|int><rsub|-1><rsup|1><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>+N-q-2|)>/2>y<rsup|n<rprime|'>>F<rsub|i><around*|(|y|)><around*|(|1-y|)><rsup|m<rprime|'>+i-\<nu\>+1>d
    y> is equal to that of <math|<around*|(|-1|)><rsup|m<rprime|'>+i><big|int><rsub|-1><rsup|1><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>+N-q-2|)>/2>y<rsup|n<rprime|'>>F<rsub|i><around*|(|y|)><around*|(|1+y|)><rsup|m<rprime|'>+i-\<nu\>+1>d
    y> (which can be seen by performing <math|y\<rightarrow\>-y> substitution
    and recalling that <math|m<rprime|'>+n<rprime|'>\<in\>2\<bbb-Z\>>), we
    get the second expression of <math|R>. The third expression follows from
    definitions made.
  </proof>

  <\lemma>
    <label|lem-1>For <math|g\<in\>\<bbb-C\><around*|[|t|]>> and
    <math|<around*|(|a,b|)>\<in\>\<bbb-C\><rsup|2>> let\ 

    <\equation*>
      P<rsub|a,b><around*|(|g|)>\<assign\>:=<frac|1|\<Gamma\><around*|(|a|)>\<Gamma\><around*|(|b|)>><big|int><rsub|-1><rsup|1><around*|(|1-t|)><rsup|a-1><around*|(|1+t|)><rsup|b-1>g<around*|(|t|)>d
      t.
    </equation*>

    Then, <math|P<rsub|a,b><around*|(|g|)>> is holomorphic as a function in
    <math|<around*|(|a,b|)>\<in\>\<bbb-C\><rsup|2>> and moreover
    <math|P<rsub|a,b>\<equiv\>0\<Leftrightarrow\><around*|(|a,b|)>\<in\>\<bbb-Z\><rsub|\<leqslant\>0><rsup|2>>.

    \;
  </lemma>

  <\proof>
    See <cite-detail|kobayashi2015symmetry|Lemma 7.5>.
  </proof>

  <\lemma>
    <label|lem-2>Let <math|a,b\<in\>\<bbb-C\><rsup|>> and
    <math|g\<in\>\<bbb-C\><around*|[|t|]>> be a polynomial in <math|t> which
    is even as a function on <math|\<bbb-R\>>. Let\ 

    <\equation*>
      P<rsup|even><rsub|a,b><around*|(|g|)>:=<frac|1|\<Gamma\><around*|(|a|)>\<Gamma\><around*|(|b|)>><big|int><rsub|-1><rsup|1><around*|(|1-t|)><rsup|a-1><around*|(|1+t|)><rsup|b-1>g<around*|(|t|)>d
      t.
    </equation*>

    Then <math|P<rsup|even><rsub|a,b><around*|(|g|)>> is holomorphic as a
    function in <math|<around*|(|a,b|)>\<in\>\<bbb-C\><rsup|2>>. Moreover
    <math|P<rsup|even><rsub|a,b>\<equiv\>0\<Leftrightarrow\><around*|(|a,b|)>\<in\>\<bbb-Z\><rsub|\<leqslant\>0><rsup|2>>.
  </lemma>

  <\proof>
    The first assertion follows immediately from Lemma <reference|lem-1>. It
    also follows from that lemma that <math|<around*|(|a,b|)>\<in\>\<bbb-Z\><rsub|\<leqslant\>0><rsup|2>\<Rightarrow\>P<rsub|a,b><rsup|even>\<equiv\>0>,
    so it suffices to prove the reverse implication.

    Note that <math|P<rsup|even><rsub|a,b>\<equiv\>0> iff
    <math|\<forall\>n\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have (we will
    use <math|\<simeq\>> to denote proportionality up to nonzero finite
    constant)

    <\equation*>
      0=P<rsub|a,b><rsup|even><around*|(|<around*|(|1-t<rsup|2>|)><rsup|n>|)>\<simeq\><frac|\<Gamma\><around*|(|a+n|)>|\<Gamma\><around*|(|a|)>>\<cdot\><frac|\<Gamma\><around*|(|b+n|)>|\<Gamma\><around*|(|b|)>>\<cdot\><frac|1|\<Gamma\><around*|(|a+b+2n|)>>.
    </equation*>
  </proof>

  Hence if for some <math|<around*|(|a<rsub|0>,b<rsub|0>|)>\<in\>\<bbb-C\><rsup|2>>
  we have <math|P<rsup|even><rsub|a<rsub|0>,b<rsub|0>>\<equiv\>0>, we should
  have <math|<around*|(|a<rsub|0>,b<rsub|0>|)>\<in\><big|cap><rsub|n=0><rsup|\<infty\>>A<rsub|n>>,
  where <math|A<rsub|n>\<assign\><big|cup><rsub|i=-n+1><rsup|0><around*|{|a=i|}>\<cup\><big|cup><rsub|i=-n+1><rsup|0><around*|{|b=i|}>\<cup\><big|cup><rsub|i=0><rsup|\<infty\>><around*|{|a+b+2n=-i|}>>.
  In particular, as we should have <math|<around*|(|a<rsub|0>,b<rsub|0>|)>\<in\>A<rsub|n>>
  for <math|n> big, we should have at least one of <math|a<rsub|0>> or
  <math|b<rsub|0>> being non-positive integer. WLOG, we assume that
  <math|a<rsub|0>\<in\>\<bbb-Z\><rsub|\<leqslant\>0>>. Now, as
  <math|<around*|(|a<rsub|0>,b<rsub|0>|)>\<in\>A<rsub|0>>, we should have
  <math|b<rsub|0>\<in\>\<bbb-Z\>>. Therefore, in order to finish the proof it
  suffices to assume that <math|a<rsub|0>\<less\>0>, <math|b<rsub|0>\<gtr\>0>
  and to reach a contradiction.

  As we should have <math|<around*|(|a<rsub|0>,b<rsub|0>|)>\<in\>A<rsub|-a<rsub|0>>>,
  assumptions taken imply that <math|a<rsub|0>+b<rsub|0>-2a<rsub|0>\<leq\>0>,
  and hence that <math|b<rsub|0>\<leqslant\>a<rsub|0>\<less\>0>, which is a
  contradiction.

  <\lemma>
    <label|lem-3>Let <math|a,b\<in\>\<bbb-C\><rsup|>> and
    <math|g\<in\>\<bbb-C\><around*|[|t|]>> be a polynomial in <math|t> which
    is odd as a function on <math|\<bbb-R\>>. Let\ 

    <\equation*>
      P<rsup|odd><rsub|a,b><around*|(|g|)>:=<frac|1|\<Gamma\><around*|(|a|)>\<Gamma\><around*|(|b|)>><big|int><rsub|-1><rsup|1><around*|(|1-t|)><rsup|a-1><around*|(|1+t|)><rsup|b-1>g<around*|(|t|)>d
      t.
    </equation*>

    Then <math|P<rsup|odd><rsub|a,b><around*|(|g|)>> is holomorphic as a
    function in <math|<around*|(|a,b|)>\<in\>\<bbb-C\><rsup|2>>. Moreover
    <math|P<rsup|odd><rsub|a,b>\<equiv\>0> iff
    <math|<around*|(|a,b|)>\<in\>\<bbb-Z\><rsub|\<leqslant\>0><rsup|2>> or
    <math|a=b>.\ 

    Hence, <math|<wide|P|~><rsup|odd><rsub|a,b><around*|(|g|)>\<assign\><frac|1|a-b>P<rsup|odd><rsub|a,b><around*|(|g|)>>
    is holomorphic and <math|<wide|P|~><rsub|a,b><rsup|odd>\<equiv\>0> iff
    <math|<around*|(|a,b|)>\<in\>\<bbb-Z\><rsub|\<leqslant\>0><rsup|2>> and
    <math|a+b\<less\>0>.
  </lemma>

  <\proof>
    Similarly to lemma <reference|lem-2>, it suffices to prove the
    <math|P<rsup|odd><rsub|a,b>\<equiv\>0\<Rightarrow\><around*|(|a,b|)>\<in\>\<bbb-Z\><rsub|\<leqslant\>0><rsup|2>>
    implication. Similarly, we have <math|P<rsub|a,b><rsup|odd>\<equiv\>0>
    iff <math|\<forall\>n\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
    <math|P<rsup|odd><rsub|a,b><around*|(|t<around*|(|1-t<rsup|2>|)><rsup|n>|)>=0>
    iff <math|\<forall\>n\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have (we
    will use <math|\<simeq\>> to denote proportionality up to nonzero finite
    constant)

    <\equation*>
      0=<frac|1|2>P<rsup|odd><rsub|a,b><around*|(|<around*|(|1+t|)><around*|(|1-t<rsup|2>|)><rsup|n>|)>-<frac|1|2>P<rsub|a,b><rsup|odd><around*|(|<around*|(|1-t|)><around*|(|1-t<rsup|2>|)><rsup|n>|)>\<simeq\>
    </equation*>

    <\equation*>
      \<simeq\><frac|\<Gamma\><around*|(|a+n|)>\<Gamma\><around*|(|b+n+1|)>-\<Gamma\><around*|(|a+n+1|)>\<Gamma\><around*|(|b+n|)>|\<Gamma\><around*|(|a|)>\<Gamma\><around*|(|b|)>\<Gamma\><around*|(|a+b+2n+1|)>>=
    </equation*>

    <\equation*>
      =<frac|\<Gamma\><around*|(|a+n|)>\<Gamma\><around*|(|b+n|)>\<cdot\><around*|(|b+n|)>-\<Gamma\><around*|(|a+n|)>\<Gamma\><around*|(|b+n|)>\<cdot\><around*|(|a+n|)>|\<Gamma\><around*|(|a|)>\<Gamma\><around*|(|b|)>\<Gamma\><around*|(|a+b+2n+1|)>>=
    </equation*>

    <\equation*>
      =<around*|(|b-a|)><frac|\<Gamma\><around*|(|a+n|)>|\<Gamma\><around*|(|a|)>>\<cdot\><frac|\<Gamma\><around*|(|b+n|)>|\<Gamma\><around*|(|b|)>>\<cdot\><frac|1|\<Gamma\><around*|(|a+b+2n+1|)>>.
    </equation*>

    Hence, if for <math|<around*|(|a<rsub|0>,b<rsub|0>|)>> we have
    <math|P<rsub|a<rsub|0>,b<rsub|0><rsup|>><rsup|odd>\<equiv\>0>, we should
    have have either <math|a<rsub|0>=b<rsub|0>> or
    <math|<around*|(|a<rsub|0>,b<rsub|0>|)>\<in\><big|cap><rsub|n=0><rsup|\<infty\>>A<rsub|n>>,
    where <math|A<rsub|n>\<assign\><big|cup><rsub|i=-n+1><rsup|0><around*|{|a=i|}>\<cup\><big|cup><rsub|i=-n+1><rsup|0><around*|{|b=i|}>\<cup\><big|cup><rsub|i=0><rsup|\<infty\>><around*|{|a+b+2n+1=-i|}>>.\ 

    To finish the proof, we claim that <math|<big|cap><rsub|n=0><rsup|\<infty\>>A<rsub|n>=\<bbb-Z\><rsub|\<leqslant\>0><rsup|2>\\<around*|(|0,0|)>>.
    The <math|\<supset\>> inclusion is clear, as is clear that
    <math|<around*|(|\<bbb-Z\><rsub|\<leqslant\>0>\<times\>\<bbb-R\>|)>\<cup\><around*|(|\<bbb-R\>\<times\>\<bbb-Z\><rsub|\<leqslant\>0>|)>\<supset\><big|cap><rsub|n=0><rsup|\<infty\>>A<rsub|n>>,
    so it remains to prove the reverse. Similarly to proof of lemma
    <reference|lem-2>, WLOG we can assume
    <math|a<rsub|0>\<in\>\<bbb-Z\><rsub|\<leqslant\>0>> and then we get
    <math|b<rsub|0>\<in\>\<bbb-Z\>> and <math|a<rsub|0>+b<rsub|0>\<leqslant\>-1>.
    Thus, it suffices to assume <math|a\<less\>0>, <math|b\<gtr\>0> and to
    reach a contradiction.

    But as <math|<around*|(|a<rsub|0>,b<rsub|0>|)>\<in\>A<rsub|-a<rsub|0>>\<nocomma\>>,
    we should have <math|a<rsub|0>+b<rsub|0>-2a<rsub|0>+1\<leqslant\>0> and
    hence <math|b<rsub|0>\<leqslant\>a<rsub|0>-1\<less\>0>, which gives a
    contradiction.
  </proof>

  <\lemma>
    <label|lem-16>Fix <math|m\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> and let
    <math|<wide|<wide|P|~>|~><rsup|even><rsub|a,-m>:=P<rsub|a,-m><rsup|even>\<cdot\>\<Gamma\><around*|(|a|)>>
    and <math|<wide|<wide|P|~>|~><rsub|a,-m><rsup|odd>:=<wide|P<rsub|>|~><rsub|a,-m><rsup|odd>\<cdot\>\<Gamma\><around*|(|a|)>>.
    Then, <math|<wide|<wide|P|~>|~><rsup|even><rsub|a,-m>> is holomorphic in
    <math|a\<in\>\<bbb-C\>> and nonzero (the latter is in sense that
    <math|\<forall\>a<space|0.6spc>\<exists\>g\<in\>\<bbb-C\><around*|[|t|]>>
    such that <math|<wide|<wide|P|~>|~><rsup|even><rsub|a,-m><around*|(|g|)>\<neq\>0>),
    while <math|<wide|P|~><rsup|odd><rsub|a,-m>> is nonzero and furthermore
    holomorphic if <math|m\<gtr\>0>, while if <math|m=0> it has only simple
    pole at <math|a=0>.
  </lemma>

  <\remark>
    Similar statement holds with <math|a> and <math|b> interchanged.
  </remark>

  <\proof>
    Statements about holomorphicity and the pole of
    <math|<wide|P|~><rsub|a,0><rsup|odd>> follow, as poles of
    <math|\<Gamma\><around*|(|a|)>> matches zeros of
    <math|P<rsub|a,-m><rsup|even>> and <math|<wide|P|~><rsub|a,-m><rsup|odd>>
    with <math|m\<gtr\>1> and these poles are all simple.

    Now, straightforward computations

    <\equation*>
      <wide|<wide|P|~>|~><rsub|a,-m<rsub|>><rsup|even><around*|(|<around*|(|1-t<rsup|2>|)><rsup|m><rsup|<rsub|>>|)>\<simeq\><frac|\<Gamma\><around*|(|a+m|)>|\<Gamma\><around*|(|a-m+2m|)>>\<cdot\><frac|\<Gamma\><around*|(|0|)>|\<Gamma\><around*|(|-m|)>>\<simeq\>1\<neq\>0
    </equation*>

    <\equation*>
      m\<gtr\>1\<Rightarrow\><wide|<wide|P|~>|~><rsub|a,-m<rsub|>><rsup|odd><around*|(|t<around*|(|1-t<rsup|2>|)><rsup|m-1<rsub|>>|)>\<simeq\><frac|\<Gamma\><around*|(|a+m-1|)>|\<Gamma\><around*|(|a-m+2m-1|)>>\<cdot\><frac|\<Gamma\><around*|(|-1|)>|\<Gamma\><around*|(|-m|)>>\<simeq\>1\<neq\>0
    </equation*>

    <\equation*>
      <wide|<wide|P|~>|~><rsup|odd><rsub|a,0><around*|(|t<around*|(|1-t<rsup|2>|)><rsup|0>|)>\<simeq\><frac|\<Gamma\><around*|(|a|)>|\<Gamma\><around*|(|a+1|)>>\<cdot\><frac|\<Gamma\><around*|(|0|)>|\<Gamma\><around*|(|0|)>>=\<infty\>\<Leftrightarrow\>a=0
    </equation*>

    end the proof.

    \;
  </proof>

  <\definition>
    <label|def-P>Given the meromorphic function <math|f> not identicall zero
    with argument <math|\<nu\>\<in\>\<bbb-C\>> we define the map
    <math|\<frak-P\><around*|(|f|)>:\<bbb-C\>\<rightarrow\>\<bbb-Z\>> with
    <math|\<frak-P\><around*|(|f|)><around*|(|\<nu\><rsub|0>|)>=-m\<in\>-\<bbb-Z\><rsub|\<gtr\>0>>
    if <math|f> has zero of order <math|m> at <math|\<nu\>=\<nu\><rsub|0>>,
    <math|\<frak-P\><around*|(|f|)><around*|(|\<nu\><rsub|0>|)>=m\<in\>\<bbb-Z\><rsub|\<gtr\>0>>
    if <math|f> has pole of order <math|m> at <math|\<nu\>=\<nu\><rsub|0>>
    and <math|\<frak-P\><around*|(|f|)><around*|(|\<nu\><rsub|0>|)>=0>
    otherwise. We also use <math|\<frak-P\><rsub|\<pm\>><around*|(|f|)>> to
    denote positive and negative parts of <math|\<frak-P\><around*|(|f|)>>.

    Similarly, we define <math|\<frak-P\><around*|(|F<rsub|\<nu\>>|)>> and
    <math|\<frak-P\><rsub|\<pm\>><around*|(|F<rsub|\<nu\>>|)>>for
    <math|F<rsub|\<nu\>>> meromorphic distribution depending on
    <math|\<nu\>\<in\>\<bbb-C\>>.

    For <math|f,g:\<bbb-C\>\<rightarrow\>\<bbb-Z\>> we will write
    <math|f\<leqslant\>g> to denote the inequality holding on
    <math|\<bbb-C\>>. For <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<Lambda\>>>
    being the finite set of <math|\<bbb-C\>\<rightarrow\>\<bbb-Z\>>
    functions, we let <math|max<around*|{|f<rsub|i>|}><rsub|i\<in\>\<Lambda\>>>
    and <math|<big|sum><around*|{|f<rsub|i>|}><rsub|i\<in\>\<Lambda\>>> to
    denote pointwise maximum and sum respectively. When needing infix
    notation, we will use <math|\<cup\>> and <math|+> respectively.

    Although ambiguous, we will sometimes denote
    <math|f:\<bbb-C\>\<rightarrow\>\<bbb-Z\>> satisfying
    <math|f\<leqslant\>1> on <math|\<bbb-C\>> with sets
    <math|<around*|{|f\<neq\>0|}>>, so for example
    <math|<around*|{|\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>|}>>, for
    example, may be used to denote <math|\<frak-P\><around*|(|\<Gamma\><around*|(|\<cdot\>|)>|)>>.
  </definition>

  <\remark>
    The following properties of <math|\<frak-P\><around*|(|\<cdot\>|)>> are
    evident:

    <\enumerate>
      <item><math|\<frak-P\><around*|(|\<Gamma\><around*|(|\<nu\>-a|)>|)>=<around*|{|\<nu\>\<in\>a-\<bbb-Z\><rsub|\<geqslant\>0>|}>>;

      <item>for <math|n\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
      <math|\<frak-P\><around*|(|\<Gamma\><around*|(|t|)>/\<Gamma\><around*|(|t-n|)>|)>=-<around*|{|t=1,2,\<ldots\>,n|}>>;

      <item>for <math|n\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
      <math|\<frak-P\><around*|(|\<Gamma\><around*|(|t+n|)>/\<Gamma\><around*|(|n|)>|)>=-<around*|{|t=-n+1,-n+2,\<ldots\>,0|}>>;

      <item>if <math|<around*|{|f<rsub|i>|}><rsub|i>> are meromorphic
      functions, then <math|\<frak-P\><rsub|><around*|(|<big|sum><rsub|i>f<rsub|i>|)>\<leqslant\>max<around*|{|\<frak-P\><rsub|><around*|(|f<rsub|i>|)>|}><rsub|i>\<nosymbol\>>;

      <item>Moreover, if <math|<around*|{|<around*|{|\<frak-P\><rsub|+><around*|(|f<rsub|i>|)>\<gtr\>0|}>|}><rsub|i>>
      are pairwise disjoint, we have <math|\<frak-P\><rsub|+><rsub|><around*|(|<big|sum><rsub|i>f<rsub|i>|)>=max<around*|{|\<frak-P\><rsub|+><rsub|><around*|(|f<rsub|i>|)>|}><rsub|i>\<nosymbol\>>;

      <item><math|\<frak-P\><around*|(|f/g|)>=\<frak-P\><around*|(|f|)>-\<frak-P\><around*|(|g|)>>
      and <math|\<frak-P\><around*|(|f\<cdot\>g|)>=\<frak-P\><around*|(|f|)>+\<frak-P\><around*|(|g|)>>.
    </enumerate>

    Similar statements hold for meromorphic distributions on <math|\<bbb-C\>>
    as well.
  </remark>

  <\lemma>
    <label|lem-20>Let <math|<around*|{|F<rsub|\<nu\>><rsub|><rsup|<around*|(|i|)>><rsub|>|}><rsub|i>>
    be finite set of meromorphic distributions depending on
    <math|\<nu\>\<in\>\<bbb-C\>>. Then <math|\<frak-P\><around*|(|<big|sum><rsub|i>\<delta\><rsup|<around*|(|i|)>>\<otimes\>F<rsup|<around*|(|i|)>><rsub|\<nu\>>|)>=max<around*|{|\<frak-P\><around*|(|F<rsub|\<nu\>><rsup|<around*|(|i|)>>|)>|}><rsub|i>>.
  </lemma>

  <\proof>
    It suffices to show the <math|\<geqslant\>>. Suppose that at
    <math|\<nu\>=\<nu\><rsub|0>> we have <math|\<frak-P\><around*|(|F<rsub|\<nu\>><rsup|<around*|(|i<rsub|0>|)>>|)><around*|(|\<nu\><rsub|0>|)>=max<around*|{|\<frak-P\><around*|(|F<rsub|\<nu\>><rsup|<around*|(|i|)>>|)>|}><rsub|i><around*|(|\<nu\><rsub|0>|)>>.
    This means that for some <math|u\<in\>\<cal-D\>> we have
    <math|\<frak-P\><around*|(|F<rsub|\<nu\>><rsup|<around*|(|i<rsub|0>|)>><around*|(|u|)>|)><around*|(|\<nu\><rsub|0>|)>=\<frak-P\><around*|(|F<rsub|\<nu\>><rsup|<around*|(|i<rsub|0>|)>>|)><around*|(|\<nu\><rsub|0>|)>>.
    Hence, taking <math|\<varphi\>\<in\>\<cal-D\><around*|(|\<bbb-R\>|)>>
    that equals to <math|x<rsup|i<rsub|0>>> near <math|x=0>, we have
    <math|\<frak-P\><around*|(|<big|sum><rsub|i>\<delta\><rsup|<around*|(|i|)>>\<otimes\>F<rsup|<around*|(|i|)>><rsub|\<nu\>>|)><around*|(|\<nu\><rsub|0>|)>\<geqslant\>\<frak-P\><around*|(|<around*|\<langle\>|<big|sum><rsub|i>\<delta\><rsup|<around*|(|i|)>>\<otimes\>F<rsup|<around*|(|i|)>><rsub|\<nu\>>,\<varphi\>\<otimes\>u|\<rangle\>>|)><around*|(|\<nu\><rsub|0>|)>=\<frak-P\><around*|(|F<rsub|\<nu\>><rsup|<around*|(|i<rsub|0>|)>><around*|(|u|)>|)><around*|(|\<nu\><rsub|0>|)>=max<around*|{|\<frak-P\><around*|(|F<rsub|\<nu\>><rsup|<around*|(|i|)>>|)>|}><rsub|i><around*|(|\<nu\><rsub|0>|)>>.
  </proof>

  <\lemma>
    <label|lem-21>Let <math|Q> be non-degenerate
    <math|<around*|(|p,q|)>>-quadratic form. Generalized functions
    <math|Q<rsub|\<pm\>><rsup|\<nu\>>> as defined in
    <cite-detail|gelfand1980distribution|sec III.2.2> together with
    distributions <math|<around*|\||Q|\|><rsup|\<nu\>>\<assign\>Q<rsub|+><rsup|\<nu\>>+Q<rsub|-><rsup|\<nu\>>>
    and <math|<around*|\||Q|\|><rsup|\<nu\>>sgn<around*|(|Q|)>\<assign\>Q<rsub|+><rsup|\<nu\>>-Q<rsub|-><rsup|\<nu\>>>
    are all nonvanishing for <math|\<nu\>\<in\>\<bbb-C\>>.
  </lemma>

  <\remark>
    It is implied by material at <cite-detail|gelfand1980distribution|sec
    III.2.2> that all four distributions have isolated algebraic poles at
    <math|\<bbb-Z\><rsub|\<leqslant\>-1>\<cup\><around*|(|-<frac|p+q|2>-\<bbb-Z\><rsub|\<geqslant\>0>|)>>
    and what we mean by ``being nonvanishing'' at these points is that the
    constant term of Laurent series is non-zero.
  </remark>

  <\remark>
    Next proof is due to Nakahama-san.
  </remark>

  <\proof>
    Let <math|\<varphi\><rsub|><rsup|+>> and <math|\<varphi\><rsub|><rsup|->>
    be elements of <math|C<rsub|0><rsup|\<infty\>>> with support lying in
    <math|<around*|{|Q\<gtr\>0|}>> and <math|<around*|{|Q\<less\>0|}>>
    respectively. Define further <math|\<varphi\><rsup|\<pm\>><rsub|\<nu\>>\<assign\><around*|\||Q|\|><rsup|-Im<around*|(|\<nu\>|)>>\<varphi\><rsup|\<pm\>>>.\ 

    We will use generic symbol <math|Q<rsub|\<nu\>>> to denote any one of the
    four distributions we have in statement. To demonstrate what we need to
    show it suffices for every <math|\<nu\><rsub|0>\<in\>\<bbb-C\>> find
    <math|\<varphi\><rsub|0>\<in\>C<rsup|\<infty\>><rsub|0>> such that
    <math|<around*|\<langle\>|Q<rsub|\<nu\><rsub|0>>,\<varphi\><rsub|0>|\<rangle\>>\<neq\>0>
    (in particular, at <math|\<nu\><rsub|0>> pole of <math|Q<rsub|\<nu\>>>
    one sees this sufficiency by expanding into Laurent series).

    Fixing <math|\<nu\><rsub|0>\<in\>\<bbb-C\>>, analytic rigidity in
    <math|\<nu\>\<in\>\<bbb-C\>> implies that up to sign we have
    <math|<around*|\<langle\>|Q<rsup|\<nu\>>,\<varphi\><rsup|\<pm\>><rsub|\<nu\><rsub|0>>|\<rangle\>>=<big|int><around*|\||Q|\|><rsup|\<nu\>>\<varphi\><rsup|\<pm\>><rsub|\<nu\><rsub|0>>>
    with integration being well-defined due to the assumptions imposed on
    <math|supp<around*|(|\<varphi\><rsub|\<pm\>>|)>>.

    Hence, in particular <math|<around*|\<langle\>|Q<rsup|\<nu\><rsub|0>>,\<varphi\><rsub|\<nu\><rsub|0>><rsup|\<pm\>>|\<rangle\>>=<big|int><around*|\||Q|\|><rsup|Re<around*|(|\<nu\><rsub|0>|)>>\<varphi\><rsub|><rsup|\<pm\>>>
    up to sign, and since we can always make choice of
    <math|\<varphi\><rsup|+>> or <math|\<varphi\><rsup|->> to make the latter
    integral positive, this ends the proof.
  </proof>

  <\corollary>
    <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>> is nonvanishing for
    <math|\<nu\>\<in\>\<bbb-C\>> (here ``nonvanishing'' is in the same sense
    as in remark after lemma <reference|lem-21>).
  </corollary>

  <\proof>
    Indeed, fix <math|<around*|(|\<lambda\><rsub|0>,\<nu\><rsub|0>|)>\<in\>\<bbb-C\><rsup|2>>
    such that <math|\<lambda\><rsub|0>+\<nu\><rsub|0>-n\<in\>1-2k> with
    <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> and take
    <math|\<varphi\><rsub|0>\<in\>C<rsup|\<infty\>><rsub|0>> such that
    <math|<around*|\<langle\>|<around*|\||<wide|Q|~>|\|><rsup|-\<nu\><rsub|0>>,\<varphi\><rsub|0>|\<rangle\>>\<neq\>0>.
    Then, taking <math|\<psi\>\<in\>C<rsup|\<infty\>><rsub|0><around*|(|\<bbb-R\>|)>>
    such that <math|\<psi\>=x<rsup|2k>> near <math|x=0>, we have equation
    <reference|eq-1> implying that <math|<around*|\<langle\>|K<rsub|\<lambda\><rsub|>,\<nu\><rsub|>><rsup|C>,\<psi\>\<otimes\>\<varphi\><rsub|0>|\<rangle\>>\<simeq\><around*|\<langle\>|<around*|\||<wide|Q|~>|\|><rsup|-\<nu\><rsub|>>,\<varphi\><rsub|0>|\<rangle\>>>
    (note that <math|<around*|(|\<nu\>|)><rsup|0>=1>) with both sides
    well-defined for <math|Re<around*|(|\<nu\>|)>\<ll\>0>, and hence as RHS
    is well-defined and nonzero at <math|\<nu\>=\<nu\><rsub|0>>, so is the
    LHS.
  </proof>

  <section|Proofs>

  <\proof>
    (of Proposition <reference|prop-1>) Indeed, in the light of lemmas
    <reference|lem-Mg0>, <reference|lem-span> and
    <reference|lem-assume-the-setting>, it suffices to show that

    <\equation*>
      \<frak-P\><around*|(|<big|sum><rsub|i=0><rsup|q-2><frac|P<rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i>|)>|m<rprime|'>+i+1-\<nu\>>\<Gamma\><around*|(|<frac|L|2>+m<rprime|'>+i+1-\<nu\>|)>|)>\<leqslant\>\<frak-P\><around*|(|\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-q+2|2>-\<nu\>|)>|)>
    </equation*>

    is holomorphic for all <math|<around*|(|N,m<rprime|'>,n<rprime|'>|)>\<in\>\<frak-I\>\<assign\><around*|{|<around*|(|N,m<rprime|'>,n<rprime|'>|)>\<in\>\<bbb-Z\><rsub|\<geqslant\>><mid|\|>N,m<rprime|'>+n<rprime|'>\<in\>2\<bbb-Z\><rsub|>|}>>.
    Now, as <math|L=<frac|\<lambda\>+\<nu\>+N-q|2>\<nin\>-\<bbb-Z\><rsub|\<geqslant\>0>>
    as implied by hypothesis, we see that

    <\equation*>
      \<frak-P\><around*|(|<frac|1|m<rprime|'>+i+1-\<nu\>>P<rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i>|)>\<Gamma\><around*|(|L+m<rprime|'>+i+1-\<nu\>|)>|)>=
    </equation*>

    <\equation*>
      =\<frak-P\><around*|(|<frac|1|m<rprime|'>+i+1-\<nu\>>P<rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i>|)>|)>+<around*|{|\<nu\>=1+i+m<rprime|'>+<frac|\<lambda\>+\<nu\>+N-q|2>|}>
    </equation*>

    Next, as lemmas <reference|lem-2> and <reference|lem-3> show us,

    <\equation*>
      \<frak-P\><around*|(|<frac|1|m<rprime|'>+i+1-\<nu\>>P<rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i>|)>|)>\<leqslant\><choice|<tformat|<table|<row|<cell|<around*|{|\<nu\>=m<rprime|'>+i+1|}>,>|<cell|m<rprime|'>+i\<in\>2\<bbb-Z\>>>|<row|<cell|\<emptyset\>,>|<cell|m<rprime|'>+i\<in\>2\<bbb-Z\>+1>>>>>
    </equation*>

    we see that\ 

    <\equation*>
      \<frak-P\><around*|(|<big|sum><rsub|i=0><rsup|q-2><frac|1|m<rprime|'>+i+1-\<nu\>>P<rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i>|)>\<Gamma\><around*|(|L+m<rprime|'>+i+1-\<nu\>|)>|)>\<leqslant\>
    </equation*>

    <\equation*>
      \<leqslant\>max<around*|{|<frac|1|m<rprime|'>+i+1-\<nu\>>P<rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i>|)>\<Gamma\><around*|(|L+m<rprime|'>+i+1-\<nu\>|)>|}><rsub|i=0><rsup|<around*|(|q-2|)>/2>=
    </equation*>

    <\equation*>
      <around*|{|\<nu\>=m<rprime|'>+i+1<mid|\|>m<rprime|'>+i\<in\>2\<bbb-Z\>|}><rsub|i=0><rsup|<around*|(|q-2|)>/2>\<cup\><around*|{|\<nu\>=m<rprime|'>+1+<frac|\<lambda\>+N+\<nu\>-q|2>|}>
    </equation*>

    (note that we have <math|\<cup\>>, not <math|+> in the last equality,
    because <math|m<rprime|'>+i+1\<nin\><around*|{|\<nu\>=1+i+m<rprime|'>+<frac|\<lambda\>+\<nu\>+N-q|2>|}>>)

    hence\ 

    <\equation*>
      max<around*|{|<big|sum><rsub|i=0><rsup|q-2><frac|1|m<rprime|'>+i+1-\<nu\>>P<rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i>|)>\<Gamma\><around*|(|<frac|L|2>+m<rprime|'>+i+1-\<nu\>|)>|}><rsub|\<frak-I\>>\<leqslant\>
    </equation*>

    <\equation*>
      \<leqslant\><around*|{|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1|}>\<cup\><around*|{|\<nu\>=<frac|\<lambda\>+\<nu\>-q+2|2>|}>
    </equation*>

    \;
  </proof>

  <\proof>
    (of Proposition <reference|prop-2>) Similarly to proof of proposition
    <reference|prop-1>, we need to show that\ 

    <\equation*>
      max<around*|{|\<frak-P\><around*|(|<big|sum><rsub|i=0><rsup|q-2><frac|P<rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i>|)>|m<rprime|'>+i+1-\<nu\>>\<Gamma\><around*|(|L+m<rprime|'>+i+1-\<nu\>|)>|)>|}><rsub|\<frak-I\>>\<leqslant\>\<frak-P\><around*|(|\<Gamma\><around*|(|1-\<nu\>|)>|)>
    </equation*>

    Now, we want to determine <math|\<frak-P\><around*|(|<frac|P<rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i>|)>|m<rprime|'>+i+1-\<nu\>>\<Gamma\><around*|(|L+m<rprime|'>+i+1-\<nu\>|)>|)>>.
    Let us consider cases.

    Let <math|N<rsub|0>\<assign\>-<around*|(|\<lambda\>+\<nu\>-q|)>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>.
    For <math|2\<bbb-Z\><rsub|\<geqslant\>0>\<ni\>N\<less\>N<rsub|0>> we
    have, according to lemma <reference|lem-16> that\ 

    <\equation*>
      \<frak-P\><around*|(|<frac|P<rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i>|)>|m<rprime|'>+i+1-\<nu\>>\<Gamma\><around*|(|<frac|L|2>+m<rprime|'>+i+1-\<nu\>|)>|)>\<leqslant\><choice|<tformat|<table|<row|<cell|<around*|{|\<nu\>=m<rprime|'>+i+1|}>,>|<cell|m<rprime|'>+i\<in\>2\<bbb-Z\>>>|<row|<cell|\<emptyset\>,>|<cell|m<rprime|'>+i\<in\>2\<bbb-Z\>+1>>>>>
    </equation*>

    and thus

    <\equation*>
      \<frak-P\><around*|(|<big|sum><rsub|i=0><rsup|q-2><frac|P<rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i>|)>|m<rprime|'>+i+1-\<nu\>>\<Gamma\><around*|(|L+m<rprime|'>+i+1-\<nu\>|)>|)>\<leqslant\>
    </equation*>

    <\equation*>
      \<leqslant\>\<frak-P\><rsub|+><around*|(|<big|sum><rsub|i=0><rsup|q-2><frac|P<rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i>|)>|m<rprime|'>+i+1-\<nu\>>\<Gamma\><around*|(|L+m<rprime|'>+i+1-\<nu\>|)>|)>=<around*|{|\<nu\>=m<rprime|'>+i+1<mid|\|>m<rprime|'>+i\<in\>2\<bbb-Z\>|}><rsub|i=0><rsup|<around*|(|q-2|)>/2>
    </equation*>

    Next, for <math|N=N<rsub|0>> we have

    <\equation*>
      \<frak-P\><around*|(|<frac|P<rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i>|)>|m<rprime|'>+i+1-\<nu\>>\<Gamma\><around*|(|<frac|L|2>+m<rprime|'>+i+1-\<nu\>|)>|)>\<leqslant\><choice|<tformat|<table|<row|<cell|<around*|{|\<nu\>=m<rprime|'>+i+1|}>,>|<cell|m<rprime|'>+i\<in\>2\<bbb-Z\>>>|<row|<cell|<around*|{|\<nu\>=m<rprime|'>+i+1|}>,>|<cell|m<rprime|'>+i\<in\>2\<bbb-Z\>+1>>>>>
    </equation*>

    and consequently

    <math|\<frak-P\><around*|(|<big|sum><rsub|i=0><rsup|<around*|(|q-2|)>/2><frac|P<rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i>|)>|m<rprime|'>+i+1-\<nu\>>\<Gamma\><around*|(|L+m<rprime|'>+i+1-\<nu\>|)>|)>\<leqslant\>>

    <\equation*>
      \<leqslant\>\<frak-P\><rsub|+><around*|(|<big|sum><rsub|i=0><rsup|q-2><frac|P<rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i>|)>|m<rprime|'>+i+1-\<nu\>>\<Gamma\><around*|(|L+m<rprime|'>+i+1-\<nu\>|)>|)>=<around*|{|\<nu\>=m<rprime|'>+i+1|}><rsub|i=0><rsup|<around*|(|q-2|)>/2>.
    </equation*>

    .

    Finally, for <math|N\<gtr\>N<rsub|0>> we have

    <\equation*>
      \<frak-P\><around*|(|<frac|P<rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i>|)>|m<rprime|'>+i+1-\<nu\>>\<Gamma\><around*|(|L+m<rprime|'>+i+1-\<nu\>|)>|)>=\<frak-P\><around*|(|\<Gamma\><around*|(|L+m<rprime|'>+i+1-\<nu\>|)>|)>+
    </equation*>

    <\equation*>
      +\<frak-P\><around*|(|<frac|P<rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i>|)>|m<rprime|'>+i+1-\<nu\>>|)>
    </equation*>

    and as <math|L\<nin\>-\<bbb-Z\><rsub|\<geqslant\>0>>, hence

    <\equation*>
      \<frak-P\><around*|(|<frac|1|m<rprime|'>+i+1-\<nu\>>P<rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i>|)>|)>\<leqslant\><choice|<tformat|<table|<row|<cell|<around*|{|\<nu\>=m<rprime|'>+i+1|}>,>|<cell|m<rprime|'>+i\<in\>2\<bbb-Z\>>>|<row|<cell|\<emptyset\>,>|<cell|m<rprime|'>+i\<in\>2\<bbb-Z\>+1>>>>>
    </equation*>

    and therefore

    <\equation*>
      \<frak-P\><rsub|><around*|(|<big|sum><rsub|i=0><rsup|q-2><frac|P<rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i>|)>|m<rprime|'>+i+1-\<nu\>>\<Gamma\><around*|(|L+m<rprime|'>+i+1-\<nu\>|)>|)>\<leqslant\><around*|{|\<nu\>=L+m<rprime|'>+1+\<bbb-Z\><rsub|\<geqslant\>0>|}>\<cup\><around*|{|\<nu\>\<in\>m<rprime|'>+i+1<mid|\|>m<rprime|'>+i\<in\>2\<bbb-Z\>|}><rsub|i=0><rsup|<around*|(|q-2|)>/2>
    </equation*>

    Note that for <math|N\<gtr\>N<rsub|0>> nonnegative even, we have

    <\equation*>
      <around*|{|\<nu\>=L+m<rprime|'>+1+\<bbb-Z\><rsub|\<geqslant\>0>|}>\<leqslant\><around*|{|\<nu\>\<in\>2+m<rprime|'>+\<bbb-Z\><rsub|\<geqslant\>0>|}>
    </equation*>

    Thus, if we take <math|\<frak-I\>\<assign\><around*|{|<around*|(|N,m<rprime|'>,n<rprime|'>|)>\<in\>\<bbb-Z\><rsub|\<geqslant\>><mid|\|>N,m<rprime|'>+n<rprime|'>\<in\>2\<bbb-Z\><rsub|>|}>>,
    we have\ 

    <\equation*>
      max<around*|{|<big|sum><rsub|i=0><rsup|q-2><frac|1|m<rprime|'>+i+1-\<nu\>>P<rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i>|)>\<Gamma\><around*|(|<frac|L|2>+m<rprime|'>+i+1-\<nu\>|)>|}><rsub|\<frak-I\>>\<leqslant\><around*|{|\<nu\>\<in\>\<bbb-Z\><rsub|\<geqslant\>1>|}>
    </equation*>
  </proof>

  <\proof>
    (of Proposition <reference|prop-3>) It suffices to show that (recall that
    for <math|q=2> we have <math|F<rsub|0>=1>)

    <\equation*>
      max<around*|{|\<frak-P\><around*|(|<frac|P<rsup|<around*|(|0|)>><rsub|L+m<rprime|'>+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>|)>|m<rprime|'>+1-\<nu\>>\<Gamma\><around*|(|L+m<rprime|'>+1-\<nu\>|)>|)>|}><rsub|\<frak-I\>>=<around*|{|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1|}>\<cup\><around*|{|\<nu\>=<frac|\<lambda\>+\<nu\>-q+2|2>+\<bbb-Z\><rsub|\<geqslant\>0>|}>
    </equation*>

    Unraveling the definition of <math|P<rsub|\<cdot\>,\<cdot\>><rsup|<around*|(|0|)>><around*|(|\<cdot\>|)>>
    we see that under the hypothesis taken
    <math|P<rsup|<around*|(|0|)>><rsub|L+m<rprime|'>+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>|)>=P<rsup|even><rsub|L+m<rprime|'>+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>|)>>
    if <math|n<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>> and
    <math|=P<rsup|odd><rsub|L+m<rprime|'>+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>|)>>
    if <math|n<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>. Hence, as
    <math|L\<nin\>-\<bbb-Z\><rsub|\<geqslant\>0>>

    <\equation*>
      max<around*|{|\<frak-P\><around*|(|<frac|P<rsup|<around*|(|0|)>><rsub|L+m<rprime|'>+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>|)>|m<rprime|'>+1-\<nu\>>|)>|}><rsub|n<rprime|'>\<in\>\<bbb-Z\><rsub|\<geqslant\>0><mid|\|>m<rprime|'>+n<rprime|'>\<in\>2\<bbb-Z\>>=<choice|<tformat|<table|<row|<cell|<around*|{|\<nu\>=m<rprime|'>+1|}>>|<cell|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>>|<row|<cell|\<emptyset\>>|<cell|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>>>>
    </equation*>

    And thus for <math|m<rprime|'>\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> and
    <math|N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>> fixed and
    <math|\<frak-I\><rsub|N,m<rprime|'>>\<assign\><around*|{|n<rprime|'><mid|\|><around*|(|N,m<rprime|'>,n<rprime|'>|)>\<in\>\<frak-I\>|}>>
    we have

    <\equation*>
      max<around*|{|\<frak-P\><around*|(|<frac|P<rsup|<around*|(|0|)>><rsub|L+m<rprime|'>+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>|)>|m<rprime|'>+1-\<nu\>>\<Gamma\><around*|(|L+m<rprime|'>+1-\<nu\>|)>|)>|}><rsub|\<frak-I\><rsub|N,m<rprime|'>>>=
    </equation*>

    <\equation*>
      =<choice|<tformat|<table|<row|<cell|<around*|{|\<nu\>=m<rprime|'>+1|}>+<around*|{|\<nu\>=L+m<rprime|'>+1+\<bbb-Z\><rsub|\<geqslant\>0>|}>>|<cell|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>>|<row|<cell|<around*|{|\<nu\>=L+m<rprime|'>+1+\<bbb-Z\><rsub|\<geqslant\>0>|}>>|<cell|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>>>>
    </equation*>

    hence (as <math|L\<nin\>-\<bbb-Z\><rsub|\<geqslant\>0>>) for
    <math|\<frak-I\><rsub|m<rprime|'>>\<assign\><around*|{|<around*|(|N,n<rprime|'>|)><mid|\|><around*|(|N,m<rprime|'>,n<rprime|'>|)>\<in\>\<frak-I\>|}>>
    we have\ 

    <\equation*>
      max<around*|{|\<frak-P\><around*|(|<frac|P<rsup|<around*|(|0|)>><rsub|L+m<rprime|'>+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>|)>|m<rprime|'>+1-\<nu\>>\<Gamma\><around*|(|L+m<rprime|'>+1-\<nu\>|)>|)>|}><rsub|\<frak-I\><rsub|m<rprime|'>>>=
    </equation*>

    <\equation*>
      =<choice|<tformat|<table|<row|<cell|<around*|{|\<nu\>=m<rprime|'>+1|}>+<around*|{|\<nu\>=<frac|\<lambda\>+\<nu\>-q+2|2>+\<bbb-Z\><rsub|\<geqslant\>0>|}>>|<cell|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>>|<row|<cell|<around*|{|\<nu\>=<frac|\<lambda\>+\<nu\>-q+2|2>+\<bbb-Z\><rsub|\<geqslant\>0>|}>>|<cell|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>>>>
    </equation*>

    and therefore\ 

    <\equation*>
      max<around*|{|\<frak-P\><around*|(|<frac|P<rsup|<around*|(|0|)>><rsub|L+m<rprime|'>+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>|)>|m<rprime|'>+1-\<nu\>>\<Gamma\><around*|(|L+m<rprime|'>+1-\<nu\>|)>|)>|}><rsub|\<frak-I\>>=
    </equation*>

    <\equation*>
      =<around*|{|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1|}>\<cup\><around*|{|\<nu\>=<frac|\<lambda\>+\<nu\>-q+2|2>+\<bbb-Z\><rsub|\<geqslant\>0>|}>.
    </equation*>
  </proof>

  <\proof>
    (of Proposition <reference|prop-4>) Similarly to proof of Proposition
    <reference|prop-3> and using the same notation, we need to show that

    <\equation*>
      max<around*|{|\<frak-P\><around*|(|<frac|P<rsup|<around*|(|0|)>><rsub|L+m<rprime|'>+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>|)>|m<rprime|'>+1-\<nu\>>\<Gamma\><around*|(|L+m<rprime|'>+1-\<nu\>|)>|)>|}><rsub|\<frak-I\>>=<around*|{|\<nu\>\<in\>\<bbb-Z\><rsub|\<geqslant\>1>|}>
    </equation*>

    Now, similarly to proof of Proposition <reference|prop-2>, we have

    <\equation*>
      max<around*|{|\<frak-P\><around*|(|<frac|P<rsup|<around*|(|0|)>><rsub|L+m<rprime|'>+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>|)>|m<rprime|'>+1-\<nu\>>\<Gamma\><around*|(|L+m<rprime|'>+1-\<nu\>|)>|)>|}><rsub|\<frak-I\><rsub|N,m<rprime|'>>>=
    </equation*>

    <\equation*>
      =<choice|<tformat|<table|<row|<cell|<around*|{|\<nu\>=m<rprime|'>+1|}>>|<cell|N\<leqslant\>N<rsub|0>,<space|0.6spc>m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>>|<row|<cell|\<emptyset\>>|<cell|N\<less\>N<rsub|0>,m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>|<row|<cell|<around*|{|\<nu\>=m<rprime|'>+1|}>>|<cell|N=N<rsub|0>,<space|0.6spc>m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>|<row|<cell|<around*|{|\<nu\>=m<rprime|'>+1|}>+<around*|{|\<nu\>=m<rprime|'>+1+L+\<bbb-Z\><rsub|\<geqslant\>0>|}>>|<cell|N\<gtr\>N<rsub|0>,<space|0.6spc>m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>>|<row|<cell|<around*|{|\<nu\>=m<rprime|'>+1+L+\<bbb-Z\><rsub|\<geqslant\>0>|}>>|<cell|N\<gtr\>N<rsub|0>,m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>>>>
    </equation*>

    hence\ 

    <\equation*>
      max<around*|{|\<frak-P\><around*|(|<frac|P<rsup|<around*|(|0|)>><rsub|L+m<rprime|'>+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>|)>|m<rprime|'>+1-\<nu\>>\<Gamma\><around*|(|L+m<rprime|'>+1-\<nu\>|)>|)>|}><rsub|\<frak-I\><rsub|m<rprime|'>>>=<around*|{|\<nu\>=m<rprime|'>+1|}>\<cup\><around*|{|\<nu\>=m<rprime|'>+2+\<bbb-Z\><rsub|\<geqslant\>0>|}>
    </equation*>

    and taking maximum in all <math|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>
    we get the desired statement.

    \;
  </proof>

  <\proof>
    (of Proposition <reference|prop-6>) This follows from
    <cite-detail|gelfand1980distribution|sec. III.2.2> and equation
    <reference|eq-1>. Indeed, equation <reference|eq-1> using definition
    <reference|def-P> and the remark following, we have (using lemma
    <reference|lem-20>)

    <\equation*>
      \<frak-P\><around*|(|K<rsub|\<lambda\>,\<nu\>><rsup|P>|)><rsub|>=max<around*|{|\<frak-P\><rsub|><around*|(|<wide|Q|~><rsub|\<pm\>><rsup|-\<nu\>-2i>|)>|}><rsub|i=0><rsup|k>
    </equation*>

    Now, <cite-detail|gelfand1980distribution|sec. III.2.2> tells us that

    <\equation*>
      \<frak-P\><around*|(|Q<rsub|\<pm\>><rsup|\<nu\>>|)>\<leqslant\>\<frak-P\><rsub|+><around*|(|<wide|Q|~><rsub|\<pm\>><rsup|\<nu\>>|)>\<leqslant\><around*|{|\<nu\>\<in\>-1-\<bbb-Z\><rsub|\<geqslant\>0>|}>+<around*|{|\<nu\>\<in\>-<frac|n-1|2>-\<bbb-Z\><rsub|\<geqslant\>0>|}>
    </equation*>

    and hence

    <\equation*>
      \<frak-P\><rsub|+><around*|(|<wide|Q|~><rsub|\<pm\>><rsup|-\<nu\>-2i>|)>\<leqslant\><around*|{|-\<nu\>\<in\>2i-1-\<bbb-Z\><rsub|\<geqslant\>0>|}>+<around*|{|-\<nu\>\<in\>2i-<frac|n-1|2>-\<bbb-Z\><rsub|\<geqslant\>0>|}>
    </equation*>

    <\equation*>
      \<frak-P\><around*|(|K<rsub|\<lambda\>,\<nu\>><rsup|P>|)>\<leqslant\><around*|{|-\<nu\>\<in\>2k-1-\<bbb-Z\><rsub|\<geqslant\>0>|}>+<around*|{|\<nu\>\<in\>2k-<frac|n-1|2>-\<bbb-Z\><rsub|\<geqslant\>0>|}>
    </equation*>

    \;
  </proof>

  <\bibliography|bib|plain|todai_master.bib>
    <\bib-list|1>
      <bibitem*|1><label|bib-gelfand1980distribution>IM<nbsp>Gelfand and
      GE<nbsp>Shilov. <newblock>Distribution theory, vol. 1, 1980.

      <bibitem*|2><label|bib-kobayashi2015symmetry>Toshiyuki Kobayashi and
      Birgit Speh. <newblock>Symmetry breaking for representations of rank
      one orthogonal groups. <newblock><with|font-shape|italic|Memoirs of the
      American Mathematical Society>, 238(1126), 2015.
    </bib-list>
  </bibliography>
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|4|5>>
    <associate|auto-5|<tuple|4|9>>
    <associate|bib-gelfand1980distribution|<tuple|1|9>>
    <associate|bib-kobayashi2015symmetry|<tuple|2|9>>
    <associate|def-P|<tuple|18|4>>
    <associate|eq-1|<tuple|1|1>>
    <associate|forre|<tuple|8|2>>
    <associate|lem-1|<tuple|13|3>>
    <associate|lem-16|<tuple|16|4>>
    <associate|lem-2|<tuple|14|3>>
    <associate|lem-20|<tuple|20|5>>
    <associate|lem-21|<tuple|21|5>>
    <associate|lem-3|<tuple|15|3>>
    <associate|lem-Mg0|<tuple|11|2>>
    <associate|lem-assume-the-setting|<tuple|12|2>>
    <associate|lem-gg0|<tuple|3|?>>
    <associate|lem-span|<tuple|10|2>>
    <associate|prop-1|<tuple|1|1>>
    <associate|prop-2|<tuple|2|?>>
    <associate|prop-3|<tuple|3|1>>
    <associate|prop-4|<tuple|4|1>>
    <associate|prop-6|<tuple|7|1>>
    <associate|prop-norm-1|<tuple|1|1>>
    <associate|prop-norm-2|<tuple|2|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      kobayashi2015symmetry

      gelfand1980distribution

      gelfand1980distribution

      gelfand1980distribution

      gelfand1980distribution
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Setting>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Main
      results> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Auxiliary
      results> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Proofs>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>