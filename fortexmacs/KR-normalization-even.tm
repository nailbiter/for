<TeXmacs|1.0.7.18>

<style|<tuple|article|mystyle>>

<\body>
  <section|Setting>

  In this part, we will try to normalize kernel of regular symmetry breaking
  operator under the assumption <math|q\<in\>2\<bbb-Z\><rsub|\<gtr\>0>>. As
  shown in <verbatim|todai_masterreport_15_07_15.pdf>, for the appropriate
  open subset of <math|\<bbb-C\><rsup|2>> we have kernel of regular SBO
  <math|K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>> being equal to\ 

  <\equation>
    K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>=<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>\<cdot\><around*|\||Q|\|><rsup|-\<nu\>>
  </equation>

  We will use notations <math|F<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\><rprime|'>>>
  and <math|<wide|F|~><rsub|N,0,s<rsup|n<rprime|'>><around*|(|t-s|)><rsup|m<rprime|'>>,\<psi\>,1>>
  introduced for <math|K>-finite vectors in
  <samp|<verbatim|KP-normalization.pdf>>. We shall also employ the notion of
  <math|\<frak-P\><around*|(|\<cdot\>|)>> as given in
  <samp|<verbatim|KP-normalization.pdf>> and the related notions.

  <section|Main results>

  <\proposition>
    <label|prop-q=2>For <math|q=2> let <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>=K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>/\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-q|2>+1-\<nu\>|)>/\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>/\<Gamma\><around*|(|<frac|-\<nu\>+1|2>|)>>.
    Then, <math|<wide|K|~><rsup|\<bbb-R\><rsup|n>><rsub|\<lambda\>,\<nu\>>>
    extends to a holomorphic in <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>
    distribution and for <math|x=<frac|\<lambda\>+\<nu\>-q|2>>,
    <math|y=<frac|\<lambda\>-\<nu\>-q|2>> we have\ 

    <\equation*>
      \<frak-P\><rsub|-><around*|(|<wide|K|~><rsup|\<bbb-R\><rsup|n>><rsub|\<lambda\>,\<nu\>>|)>=<big|sqcup><rsub|k\<in\>\<bbb-Z\><rsub|\<leqslant\>0>\<cup\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>0>+1|)>><around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsup|2><mid|\|>y\<leqslant\>-1,<space|0.6spc>x-y=k|}>=<big|sqcup><rsub|\<nu\>\<in\>\<bbb-Z\><rsub|\<leqslant\>0>\<cup\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>0>+1|)>><around*|{|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-Z\><rsup|2><mid|\|>\<lambda\>-\<nu\>\<in\>2\<bbb-Z\><rsub|\<leqslant\>0>|}>
    </equation*>
  </proposition>

  <\hypo>
    I suppose that for normalization literally the same as in proposition
    <reference|prop-q=2> the <math|\<frak-P\><rsub|-><around*|(|<wide|K|~><rsup|\<bbb-R\><rsup|n>><rsub|\<lambda\>,\<nu\>>|)>>
    will be discrete as well.
  </hypo>

  <section|Auxilliary results>

  <\lemma>
    <label|lem-2>Suppose <math|q\<in\>2\<bbb-Z\>>. Then
    <math|<around*|\<langle\>|K<rsup|P><rsub|\<lambda\>,\<nu\>>,F<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\><rprime|'>>|\<rangle\>>=0>
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
      S\<simeq\><big|int><rsub|\<bbb-S\><rsup|p-1>><around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n><around*|(|\<omega\><rsub|p-1><rsup|<around*|(|p|)>>|)>\<psi\><around*|(|\<omega\><rsub|p>|)>d\<omega\><rsub|p>\<simeq\><frac|\<Gamma\><around*|(|\<lambda\>+\<nu\>-n+1|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N\<upl\>2|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>+N-q|2>|)>>
    </equation*>

    and

    <\equation*>
      R\<simeq\><big|sum><rsub|i=0><rsup|q-2><frac|1|<around*|(|m<rprime|'>+i+1|)>-\<nu\>>P<rsub|><rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+i+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>F<rsub|i><around*|(|y|)>|)>\<cdot\>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>+N-q|2>+m<rprime|'>+i+1-\<nu\>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>+N-q|2>|)>
    </equation*>

    where <math|L\<assign\><frac|\<lambda\>+\<nu\>+N-q|2>>,
    <math|P<rsup|<around*|(|i|)>><rsub|a,b>\<assign\>P<rsup|even><rsub|a,b>>
    if <math|m<rprime|'>+i\<in\>2\<bbb-Z\>> and
    <math|\<assign\>P<rsup|odd><rsub|a,b>> otherwise. Polynomials
    <math|F<rsub|i>> have the property <math|F<rsub|i><around*|(|-y|)>=<around*|(|-1|)><rsup|i>F<rsub|i><around*|(|y|)>>.
  </lemma>

  <\proof>
    Follows from similar lemma in <verbatim|KP-normalization.pdf>, the only
    difference being is that <math|S> is now precisely the same as in
    <verbatim|KC-normalization.pdf>.
  </proof>

  <\lemma>
    <label|lem-4>Let <math|<around*|{|f<rsup|<around*|(|j|)>><rsub|i>|}><rsub|i\<in\>\<Lambda\>>>
    for <math|j=1,2,3> be three families of
    <math|\<bbb-C\><rsup|k>\<rightarrow\>\<bbb-Z\><rsub|\<geqslant\>0>>
    functions and suppose that for all <math|i,j\<in\>\<Lambda\>> we have
    sets <math|<around*|{|f<rsup|<around*|(|1|)>><rsub|i>\<neq\>0|}>> and
    <math|<around*|{|f<rsub|j><rsup|<around*|(|2|)>>\<neq\>0|}>> being
    disjoint. Assume moreover that for some <math|i<rsub|0>\<in\>\<Lambda\>>
    we have <math|f<rsup|<around*|(|1|)>><rsub|i<rsub|0>>\<equiv\>0> and
    <math|f<rsup|<around*|(|3|)>><rsub|i<rsub|0>>=min<around*|{|f<rsub|i><rsup|<around*|(|3|)>>|}>>.
    Then <math|min<around*|{|<big|sum><rsub|j=1><rsup|3>f<rsup|<around*|(|j|)>><rsub|i>|}><rsub|i>=min<around*|{|<big|sum><rsub|j=2><rsup|3>f<rsub|i><rsup|<around*|(|j|)>>|}><rsub|i>>.
  </lemma>

  <\proof>
    As <math|\<geqslant\>> is clear, it suffices to assume that for some
    <math|x<rsub|0>\<in\>\<bbb-C\><rsup|k>> we have
    <math|min<around*|{|<big|sum><rsub|j=1><rsup|3>f<rsup|<around*|(|j|)>><rsub|i>|}><rsub|i><around*|(|x<rsub|0>|)>\<gtr\>min<around*|{|<big|sum><rsub|j=2><rsup|3>f<rsup|<around*|(|j|)>><rsub|i>|}><rsub|i><around*|(|x<rsub|0>|)>>
    and to reach a contradiction.

    Now, <math|min<around*|{|<big|sum><rsub|j=1><rsup|3>f<rsup|<around*|(|j|)>><rsub|i>|}><rsub|i><around*|(|x<rsub|0>|)>\<leqslant\><around*|(|f<rsub|i<rsub|0>><rsup|<around*|(|1|)>>+f<rsub|i<rsub|0>><rsup|<around*|(|2|)>>+f<rsub|i<rsub|0>><rsup|<around*|(|3|)>>|)><around*|(|x<rsub|0>|)>=f<rsub|i<rsub|0>><rsup|<around*|(|2|)>><around*|(|x<rsub|0>|)>+f<rsub|i<rsub|0>><rsup|<around*|(|3|)>><around*|(|x<rsub|0>|)>>
    and the assumption in previous paragraph implies that the rightmost value
    is positive. Consider cases.

    First, suppose that <math|f<rsub|i<rsub|0>><rsup|<around*|(|2|)>><around*|(|x<rsub|0>|)>=0>.
    Then, <math|min<around*|{|<big|sum><rsub|j=1><rsup|3>f<rsup|<around*|(|j|)>><rsub|i>|}><rsub|i><around*|(|x<rsub|0>|)>\<leqslant\>f<rsub|i<rsub|0>><rsup|<around*|(|2|)>><around*|(|x<rsub|0>|)>+f<rsub|i<rsub|0>><rsup|<around*|(|3|)>><around*|(|x<rsub|0>|)>=f<rsup|<around*|(|3|)>><rsub|i<rsub|0>><around*|(|x<rsub|0>|)>=min<around*|{|f<rsup|<around*|(|3|)>><rsub|i<rsub|>><around*|(|x<rsub|0>|)>|}><rsub|i>\<leqslant\>min<around*|{|<big|sum><rsub|j=2><rsup|3>f<rsup|<around*|(|j|)>><rsub|i>|}><rsub|i><around*|(|x<rsub|0>|)>>.

    Second, suppose that <math|f<rsub|i<rsub|0>><rsup|<around*|(|2|)>><around*|(|x<rsub|0>|)>=0\<Rightarrow\>x<rsub|0>\<in\><around*|{|f<rsub|i<rsub|0>><rsup|<around*|(|2|)>>\<neq\>0|}>>
    and hypothesis implies that <math|\<forall\>i\<in\>\<Lambda\>,<space|0.6spc>f<rsub|i><rsup|<around*|(|2|)>><around*|(|x<rsub|0>|)>=0>
    and hence <math|min<around*|{|<big|sum><rsub|j=1><rsup|3>f<rsup|<around*|(|j|)>><rsub|i>|}><rsub|i><around*|(|x<rsub|0>|)>=min<around*|{|<big|sum><rsub|j=2><rsup|3>f<rsub|i><rsup|<around*|(|j|)>>|}><rsub|i><around*|(|x<rsub|0>|)>>.
  </proof>

  <\lemma>
    <label|lem-5n>Let <math|<around*|{|A<rsub|n>|}><rsub|n=0><rsup|\<infty\>>>
    be sequence of subsets of <math|\<bbb-C\><rsup|2>> (we parametrize latter
    with <math|<around*|(|x,y|)>\<in\>\<bbb-C\><rsup|2>>)

    <\enumerate>
      <item>Then for <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>>,
      <math|<around*|(|x<rsub|0>,-k|)>\<in\><big|cap><rsub|n=0><rsup|\<infty\>><around*|(|A<rsub|n>\<cup\><around*|{|y=-n+1,-n+2,\<ldots\>0|}>|)>\<Leftrightarrow\>x<rsub|0>\<in\><big|cap><rsub|n=0><rsup|k><around*|(|A<rsub|n>|)><rsup|<around*|(|2|)>><rsub|-k>>,
      where for subset <math|X\<subset\>\<bbb-C\><rsup|2>>,
      <math|X<rsup|<around*|(|2|)>><rsub|y<rsub|0>>\<assign\><around*|{|x<mid|\|><around*|(|x,y<rsub|0>|)>\<in\>X|}>>.

      <item>If moreover <math|<big|cap><rsub|n=0><rsup|\<infty\>>A<rsub|n>=\<emptyset\>>,
      then <math|<big|cap><rsub|n=0><rsup|\<infty\>><around*|(|A<rsub|n>\<cup\><around*|{|y=-n+1,-n+2,\<ldots\>0|}>|)>=<big|sqcup><rsub|n=0><rsup|\<infty\>><around*|(|<big|cap><rsub|k=0><rsup|n><around*|(|A<rsub|n>|)><rsup|<around*|(|2|)>><rsub|-k>\<times\><around*|{|-n|}>|)>>
    </enumerate>
  </lemma>

  <\proof>
    First, assume that first item holds true and let's prove the second one.
    The hypothesis <math|<big|cap><rsub|n=0><rsup|\<infty\>>A<rsub|n>=\<emptyset\>>
    implies that for <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\><big|cap><rsub|n=0><rsup|\<infty\>><around*|(|A<rsub|n>\<cup\><around*|{|y=-n+1,-n+2,\<ldots\>0|}>|)>>
    we have for big <math|n>, <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\><around*|{|y=-n+1,-n+2,\<ldots\>,0|}>>
    and thus <math|y<rsub|0>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>>.
    Application of the first item then ends the proof of the second.

    So, let's show the second item. It is clear that for <math|n\<gtr\>k> we
    have <math|<around*|(|x<rsub|0>,-k|)>\<in\><around*|(|A<rsub|n>\<cup\><around*|{|y=-n+1,-n+2,\<ldots\>0|}>|)>>
    and hence <math|<around*|(|x<rsub|0>,-k|)>\<in\><big|cap><rsub|n=0><rsup|\<infty\>><around*|(|A<rsub|n>\<cup\><around*|{|y=-n+1,-n+2,\<ldots\>0|}>|)>\<Leftrightarrow\><around*|(|x<rsub|0>,-k|)>\<in\><big|cap><rsub|n=0><rsup|k><around*|(|A<rsub|n>\<cup\><around*|{|y=-n+1,-n+2,\<ldots\>0|}>|)>>
    and the latter in turn is equivalent to
    <math|<around*|(|x<rsub|0>,-k|)>\<in\><big|cap><rsub|n=0><rsup|k>A<rsub|n>>.
    This ends the proof.
  </proof>

  <\lemma>
    <label|lem-5>

    <\equation*>
      min<around*|{|<around*|{|x,y\<in\>-k-\<bbb-Z\><rsub|\<geqslant\>0>|}>+<around*|{|y=1-k,2-k,\<ldots\>,0|}>|}><rsub|k\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>=<around*|{|x,y\<in\>-\<bbb-Z\><rsub|\<geqslant\>0><mid|\|>y\<geqslant\>x|}>
    </equation*>

    and

    <\equation*>
      min<around*|{|<around*|{|x,y\<in\>-k-\<bbb-Z\><rsub|\<geqslant\>0>,x+y\<less\>-2k|}>+<around*|{|y=1-k,2-k,\<ldots\>,0|}>|}><rsub|k\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>=<around*|{|x,y\<in\>\<bbb-Z\><rsub|\<leqslant\>0><mid|\|>y\<gtr\>x|}>.
    </equation*>
  </lemma>

  <\proof>
    Indeed, as for any <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
    <math|<around*|{|x,y\<in\>-k-\<bbb-Z\><rsub|\<geqslant\>0>|}>> and
    <math|<around*|{|y=1-k,2-k,\<ldots\>,0|}> being disjoint\<nocomma\>>, we
    have <math|<around*|{|x,y\<in\>-k-\<bbb-Z\><rsub|\<geqslant\>0>|}>+<around*|{|y=1-k,2-k,\<ldots\>,0|}>=<around*|{|x,y\<in\>-k-\<bbb-Z\><rsub|\<geqslant\>0>|}>\<cup\><around*|{|y=1-k,2-k,\<ldots\>,0|}>>
    and thus what we need to show can be rewritten as\ 

    <\equation*>
      <big|cap><rsub|k=0><rsup|\<infty\>><around*|(|<around*|{|x,y\<in\>-k-\<bbb-Z\><rsub|\<geqslant\>0>|}>\<cup\><around*|{|y=1-k,2-k,\<ldots\>,0|}>|)>=<around*|{|x,y\<in\>-\<bbb-Z\><rsub|\<geqslant\>0><mid|\|>y\<geqslant\>x|}>
    </equation*>

    This now follows from lemma <reference|lem-5n>. The proof of the second
    equality goes similarly.
  </proof>

  <\lemma>
    <label|lem-8>Let <math|\<frak-I\>\<assign\><around*|{|<around*|(|N,m<rprime|'>,n<rprime|'>|)>\<in\>\<bbb-Z\><rsub|\<geqslant\>0><mid|\|>N,m<rprime|'>+n<rprime|'>\<in\>2\<bbb-Z\>|}>>
    and for <math|m<rsub|0><rprime|'>\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> let
    <math|\<frak-I\><rsub|m<rprime|'><rsub|0>><rsup|<around*|(|2|)>>\<assign\><around*|{|<around*|(|N,m<rprime|'>,n<rprime|'>|)>\<in\>\<frak-I\><mid|\|>m<rprime|'>=m<rprime|'><rsub|0>|}>>.
    Then, for <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>>
    as in proposition <reference|prop-q=2> we have

    <label|lem-8><math|min<around*|{|\<frak-P\><rsub|-><around*|(|<around*|\<langle\>|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>,<wide|F|~><rsub|N,0,s<rsup|n<rprime|'>><around*|(|t-s|)><rsup|m<rprime|'>>,\<psi\>,1>|\<rangle\>>|)>|}><rsub|\<frak-I\><rsup|<around*|(|2|)>><rsub|m<rprime|'><rsub|0>>>=A<rsub|m<rsub|0><rprime|'>>+B<rsub|m<rsub|0><rprime|'>>+C<rsub|m<rsub|0><rprime|'>>>,
    where

    <\equation*>
      A<rsub|m<rsub|0><rprime|'>>\<assign\><around*|{|<frac|\<lambda\>-\<nu\>-q|2>=-m<rprime|'>,-m<rprime|'>+1,\<ldots\>,-1|}>,
    </equation*>

    <\equation*>
      B<rsub|m<rsub|0><rprime|'>>=<choice|<tformat|<table|<row|<cell|<around*|{|<around*|(|\<lambda\>+\<nu\>-q|)>/2+m<rprime|'>+1-\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,m<rprime|'>+1-\<nu\>\<in\>\<bbb-Z\><rsub|\<geqslant\>0>|}>,>|<cell|m<rsub|0><rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0><rsub|>>>|<row|<cell|<around*|{|<around*|(|\<lambda\>+\<nu\>-q|)>/2+m<rprime|'>+1-\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,m<rprime|'>+1-\<nu\>\<in\>\<bbb-Z\><rsub|\<gtr\>0>|}>>|<cell|m<rprime|'><rsub|0>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>>>>,
    </equation*>

    <\equation*>
      C<rsub|m<rsub|0><rprime|'>>\<assign\><choice|<tformat|<table|<row|<cell|<around*|{|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1\\<around*|{|m<rprime|'>+1|}>|}>,>|<cell|m<rsub|0><rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>>|<row|<cell|<around*|{|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1|}>,>|<cell|m<rsub|0><rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>>>>.
    </equation*>
  </lemma>

  <\proof>
    Lemma <reference|lem-2> immediately implies that\ 

    <\equation*>
      <around*|\<langle\>|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>,<wide|F|~><rsub|N,0,s<rsup|n<rprime|'>><around*|(|t-s|)><rsup|m<rprime|'>>,\<psi\>,1>|\<rangle\>>=
    </equation*>

    <\equation*>
      =<frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N\<upl\>2|2>|)>>\<cdot\><frac|1|<around*|(|<around*|(|m<rprime|'>+1|)>-\<nu\>|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>>P<rsup|odd/even><rsub|L+m<rprime|'>+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>|)><frac|\<Gamma\><around*|(|L+m<rprime|'>+1-\<nu\>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-q|2>+1-\<nu\>|)>>.
    </equation*>

    For <math|N<rsub|0>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>> and
    <math|m<rsub|0><rprime|'>\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we let
    <math|\<frak-I\><rsup|<around*|(|1,2|)>><rsub|N<rsub|0>,m<rsub|0><rprime|'>>\<assign\><around*|{|<around*|(|N<rsub|0>,m<rsub|0><rprime|'>,n<rprime|'>|)><mid|\|><around*|(|N<rsub|0>,m<rsub|0><rprime|'>,n<rprime|'>|)>\<in\>\<frak-I\>|}>>.

    Then, as <math|\<frak-P\><around*|(|f\<cdot\>g|)>=\<frak-P\><around*|(|f|)>+\<frak-P\><around*|(|g|)>>,
    and due to <math|min<around*|{|\<frak-P\><rsub|-><around*|(|<around*|(|a,b|)>\<mapsto\>P<rsup|odd/even><rsub|a,b><around*|(|t<rsup|n>|)>|)>|}><rsub|n>>
    being computed in <verbatim|KP-normalization.pdf>, we have for
    <math|m<rprime|'>\<in\>2\<bbb-Z\>>

    <\equation*>
      min<around*|{|\<frak-P\><rsub|-><around*|(|<around*|\<langle\>|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>,<wide|F|~><rsub|N,0,s<rsup|n<rprime|'>><around*|(|t-s|)><rsup|m<rprime|'>>,\<psi\>,1>|\<rangle\>>|)>|}><rsub|\<frak-I\><rsup|<around*|(|1,2|)>><rsub|N<rsub|0>,m<rprime|'><rsub|0>>>=<around*|{|<frac|\<lambda\>+\<nu\>-n|2>=0,1,\<ldots\>,<frac|N-2|2>|}>+<around*|{|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1\\<around*|{|m<rprime|'>+1|}>|}>+
    </equation*>

    <\equation*>
      +<around*|{|<frac|\<lambda\>+\<nu\>+N-q|2>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,<frac|\<lambda\>+\<nu\>+N-q|2>+m<rprime|'>+1-\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>|}>+
    </equation*>

    <\equation*>
      +<around*|{|<frac|\<lambda\>+\<nu\>-q|2>-\<nu\>=-<around*|(|m<rprime|'>+<frac|N|2>|)>,-<around*|(|m<rprime|'>+<frac|N|2>|)>+1,\<ldots\>,-1|}>,
    </equation*>

    while for <math|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1> we
    have

    <\equation*>
      min<around*|{|\<frak-P\><rsub|-><around*|(|<around*|\<langle\>|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>,<wide|F|~><rsub|N,0,s<rsup|n<rprime|'>><around*|(|t-s|)><rsup|m<rprime|'>>,\<psi\>,1>|\<rangle\>>|)>|}><rsub|\<frak-I\><rsup|<around*|(|1,2|)>><rsub|N<rsub|0>,m<rprime|'><rsub|0>>>=<around*|{|<frac|\<lambda\>+\<nu\>-n|2>=0,1,\<ldots\>,<frac|N-2|2>|}>+<around*|{|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1|}>+
    </equation*>

    <\equation*>
      +<around*|{|<frac|\<lambda\>+\<nu\>+N-q|2>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,<frac|\<lambda\>+\<nu\>+N-q|2>+m<rprime|'>+1-\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,\<lambda\>+N-q+m<rprime|'>+1\<less\>0|}>+
    </equation*>

    <\equation*>
      +<around*|{|<frac|\<lambda\>+\<nu\>-q|2>-\<nu\>=-<around*|(|m<rprime|'>+<frac|N|2>|)>,-<around*|(|m<rprime|'>+<frac|N|2>|)>+1,\<ldots\>,-1|}>.
    </equation*>

    Now, we we want to compute for <math|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>

    <\equation*>
      min<around*|{|<around*|{|<frac|\<lambda\>+\<nu\>-n|2>=0,1,\<ldots\>,<frac|N-2|2>|}>+<around*|{|<frac|\<lambda\>+\<nu\>+N-q|2>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,<frac|\<lambda\>+\<nu\>+N-q|2>+m<rprime|'>+1-\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>|}>+<around*|{|<frac|\<lambda\>+\<nu\>-q|2>-\<nu\>=-<around*|(|m<rprime|'>+<frac|N|2>|)>,-<around*|(|m<rprime|'>+<frac|N|2>|)>+1,\<ldots\>,-1|}>|}><rsub|N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>
    </equation*>

    Lemma <reference|lem-4> implies now (we assign
    <math|f<rsup|<around*|(|i|)>>> for <math|i=1,2,3> in the same order as
    the addends appear in previous expression) that the previous expression
    equals to

    <\equation*>
      min<around*|{|<around*|{|<frac|\<lambda\>+\<nu\>-q|2>-\<nu\>=-<around*|(|m<rprime|'>+<frac|N|2>|)>,-<around*|(|m<rprime|'>+<frac|N|2>|)>+1,\<ldots\>,-1|}>+<around*|{|<frac|\<lambda\>+\<nu\>+N-q|2>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,<frac|\<lambda\>+\<nu\>+N-q|2>+m<rprime|'>+1-\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>|}>|}><rsub|N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>
    </equation*>

    Setting <math|<wide|y|~>\<assign\><around*|(|\<lambda\>+\<nu\>-q|)>/2+m<rprime|'>+1-\<nu\>>
    and <math|<wide|x|~>\<assign\><around*|(|\<lambda\>+\<nu\>-q|)>/2> the
    above can be rewritten as

    <\equation*>
      <around*|{|<wide|y|~>=1,2,\<ldots\>,m<rprime|'>|}>+min<around*|{|<around*|{|<wide|y|~>=1-<frac|N|2>,2-<frac|N|2>,\<ldots\>,0|}>+<around*|{|<wide|x|~>,<wide|y|~>\<in\>-<frac|N|2>-\<bbb-Z\><rsub|\<geqslant\>0>|}>|}><rsub|N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>=
    </equation*>

    <\equation*>
      =<around*|{|<wide|y|~>=1,2,\<ldots\>,m<rprime|'>|}>+<around*|{|<wide|x|~>,<wide|y|~>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0><mid|\|><wide|y|~>\<geqslant\><wide|x|~>|}>=
    </equation*>

    <\equation*>
      =<around*|{|<frac|\<lambda\>-\<nu\>-q|2>=-m<rprime|'>,-m<rprime|'>+1,\<ldots\>,-1|}>+<around*|{|<around*|(|\<lambda\>+\<nu\>-q|)>/2+m<rprime|'>+1-\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,m<rprime|'>+1-\<nu\>\<in\>\<bbb-Z\><rsub|\<geqslant\>0>|}>
    </equation*>

    (the second equality is by lemma <reference|lem-5>).\ 

    Similarly, for <math|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>,
    we want to compute

    <\equation*>
      min<around*|{|<around*|{|<frac|\<lambda\>+\<nu\>-n|2>=0,1,\<ldots\>,<frac|N-2|2>|}>+<around*|{|<frac|\<lambda\>+\<nu\>+N-q|2>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,<frac|\<lambda\>+\<nu\>+N-q|2>+m<rprime|'>+1-\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,\<lambda\>+N-q+m<rprime|'>+1\<less\>0|}>+<around*|{|<frac|\<lambda\>+\<nu\>-q|2>-\<nu\>=-<around*|(|m<rprime|'>+<frac|N|2>|)>,-<around*|(|m<rprime|'>+<frac|N|2>|)>+1,\<ldots\>,-1|}>|}><rsub|N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>
    </equation*>

    and again lemma <reference|lem-4> implies that this equals to

    <\equation*>
      min<around*|{|<around*|{|<frac|\<lambda\>+\<nu\>-q|2>-\<nu\>=-<around*|(|m<rprime|'>+<frac|N|2>|)>,-<around*|(|m<rprime|'>+<frac|N|2>|)>+1,\<ldots\>,-1|}>+<around*|{|<frac|\<lambda\>+\<nu\>+N-q|2>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,<frac|\<lambda\>+\<nu\>+N-q|2>+m<rprime|'>+1-\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,\<lambda\>+N-q+m<rprime|'>+1\<less\>0|}>|}><rsub|N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>
    </equation*>

    and defining <math|<wide|x|~>,<wide|y|~>> same as above one has again by
    lemma <reference|lem-5> that the latter expression equals to

    <\equation*>
      <around*|{|<frac|\<lambda\>-\<nu\>-q|2>=-m<rprime|'>,-m<rprime|'>+1,\<ldots\>,-1|}>+<around*|{|<around*|(|\<lambda\>+\<nu\>-q|)>/2+m<rprime|'>+1-\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,m<rprime|'>+1-\<nu\>\<in\>\<bbb-Z\><rsub|\<gtr\>0>|}>
    </equation*>

    This ends the proof.
  </proof>

  <\lemma>
    <label|lem-7>We have let <math|A<rsub|m>>, <math|B<rsub|m>> and
    <math|C<rsub|m>> be as in lemma <reference|lem-8>. Then

    <\equation*>
      min<around*|{|A<rsub|m>+B<rsub|m>+C<rsub|m>|}><rsub|m\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>=<big|sqcup><rsub|k\<in\>\<bbb-Z\><rsub|\<leqslant\>0>\<cup\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>>+1|)>><around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsup|2><mid|\|>y\<leqslant\>-1,<space|0.6spc>x-y=k|}>
    </equation*>
  </lemma>

  <\proof>
    As defined in lemma <reference|lem-7>, for
    <math|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>,
    <math|A<rsub|m<rprime|'>>=<around*|{|y=-m<rprime|'>,-m<rprime|'>+1,\<ldots\>,-1|}>>,
    <math|B<rsub|m<rprime|'>>=><math|<around*|{|x\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,y+m<rprime|'>+1\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,x-y\<leqslant\>m<rprime|'>+1|}>>
    and <math|C<rsub|m<rprime|'>>=<around*|{|x-y\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1\\<around*|{|m<rprime|'>+1|}>|}>>.
    As <math|min<around*|{|A<rsub|m<rprime|'>>+B<rsub|m<rprime|'>>+C<rsub|m<rprime|'>>|}><rsub|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>\<leqslant\>A<rsub|0>+B<rsub|0>+C<rsub|0>\<leqslant\>1>,
    we just need to find the result of set operation

    <\equation*>
      <big|cap><rsub|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>><around*|(|A<rsub|m<rprime|'>>\<cup\>B<rsub|m<rprime|'>>\<cup\>C<rsub|m<rprime|'>>|)>
    </equation*>

    So, let's <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\>\<bbb-C\><rsup|2>>
    and we need to decide whether it belongs to the intersection above.\ 

    Furthermore, as <math|<big|cap><rsub|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>A<rsub|m<rprime|'>>=\<emptyset\>>,
    we . Moreover, as <math|A<rsub|0>+B<rsub|0>+C<rsub|0>\<leqslant\><around*|{|x-y\<in\>\<bbb-Z\><rsub|\<leqslant\>0>|}>+<around*|{|x-y\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1|}>>,
    we may assume <math|x<rsub|0>-y<rsub|0>=m<rsub|0><rprime|'>+1\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>
    or <math|x<rsub|0>-y<rsub|0>\<in\>\<bbb-Z\><rsub|\<leqslant\>0>>.\ 

    Now, in the first case we see that <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\><big|cap><rsub|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>><around*|(|A<rsub|m<rprime|'>>\<cup\>B<rsub|m<rprime|'>>\<cup\>C<rsub|m<rprime|'>>|)>\<Leftrightarrow\><around*|(|x<rsub|0>,y<rsub|0>|)>\<in\>A<rsub|m<rsub|0><rprime|'>>\<cup\>B<rsub|m<rsub|0><rprime|'>>\<cup\>C<rsub|m<rsub|0><rprime|'>>>.
    Latter, in turn is equivalent to <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\>A<rsub|m<rsub|0><rprime|'>>\<cup\>B<rsub|m<rsub|0><rprime|'>>>.
    Now, <math|A<rsub|m<rprime|'><rsub|0>>\<cap\><around*|{|x-y=m<rsub|0><rprime|'>+1|}>=<around*|{|*<around*|(|x,y|)>\<in\>\<bbb-Z\>\<times\><around*|{|-m<rsub|0><rprime|'>,-m<rsub|0><rprime|'>+1,\<ldots\>,-1|}><mid|\|>x-y=m<rsub|0><rprime|'>+1|}>>
    and <math|B<rsub|m<rsub|0><rprime|'>>\<cap\><around*|{|x-y=m<rsub|0><rprime|'>+1|}>=<around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsub|\<leqslant\>0><rsup|2><mid|\|>x-y=m<rsub|0><rprime|'>+1|}>>
    and hence <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\><big|cap><rsub|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>><around*|(|A<rsub|m<rprime|'>>\<cup\>B<rsub|m<rprime|'>>\<cup\>C<rsub|m<rprime|'>>|)>\<Leftrightarrow\><around*|(|x<rsub|0>,y<rsub|0>|)>\<in\><around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsup|2><mid|\|>y\<leqslant\>-1,x-y=m<rsub|0><rprime|'>+1|}>>
    and this gives the <math|<big|sqcup><rsub|k\<in\>2\<bbb-Z\><rsub|\<geqslant\>>+1><around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsup|2><mid|\|>y\<leqslant\>-1,<space|0.6spc>x-y=k|}>>
    term in lemma statement.

    Next, assume <math|x<rsub|0>-y<rsub|0>=-l\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>>
    and thus <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\><big|cap><rsub|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>><around*|(|A<rsub|m<rprime|'>>\<cup\>B<rsub|m<rprime|'>>\<cup\>C<rsub|m<rprime|'>>|)>\<Leftrightarrow\><around*|(|x<rsub|0>,y<rsub|0>|)>\<in\><big|cap><rsub|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>><around*|(|A<rsub|m<rprime|'>>\<cup\>B<rsub|m<rprime|'>>|)>>.
    The second item of lemma <reference|lem-5n> (applied to
    <math|<around*|{|A<rsub|m>+<around*|(|0,1|)>|}><rsub|m>> and
    <math|<around*|{|B<rsub|m>+<around*|(|0,1|)>|}><rsub|m>>) now implies
    that the latter happens iff <math|y<rsub|0>=-k\<in\>-\<bbb-Z\><rsub|\<geqslant\>1>>
    and <math|x<rsub|0>\<in\><big|cap><rsub|i=0><rsup|k-1><around*|(|B<rsub|i>|)><rsub|-k><rsup|<around*|(|2|)>>=<around*|(|B<rsub|0>|)><rsup|<around*|(|2|)>><rsub|<rsub|-k>>=<around*|{|l-k|}>>
    and thus every <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\>\<bbb-Z\>>
    with <math|x<rsub|0>-y<rsub|0>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>> and
    <math|y<rsub|0>\<in\>-\<bbb-Z\><rsub|\<geqslant\>1>> belongs to
    <math|<big|cap><rsub|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>><around*|(|A<rsub|m<rprime|'>>\<cup\>B<rsub|m<rprime|'>>\<cup\>C<rsub|m<rprime|'>>|)>>
    and this gives the <math|<big|sqcup><rsub|k\<in\>\<bbb-Z\><rsub|\<leqslant\>0>><around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsup|2><mid|\|>y\<leqslant\>-1,<space|0.6spc>x-y=k|}>>
    term in lemma statement.
  </proof>

  <\lemma>
    <label|lem-9>For <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\>\<bbb-Z\><rsup|2>>
    with <math|x<rsub|0>-y<rsub|0>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>>,
    <math|y<rsub|0>\<leqslant\>-1>, and let <math|A<rsub|m>>,
    <math|B<rsub|m>>, <math|C<rsub|m>> as in lemma <reference|lem-8> we have
    <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\><big|cap><rsub|m\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1><around*|(|A<rsub|m>\<cup\>B<rsub|m>\<cup\>C<rsub|m>|)>>.
  </lemma>

  <\proof>
    First, we note that lemma is true when <math|y<rsub|0>=-1>, as for
    <math|m\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1> we have
    <math|A<rsub|m>\<supset\><around*|{|y=-1|}>>. So we may assume
    <math|y<rsub|0>\<leqslant\>-2>. Let <math|m<rsub|0>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>
    be biggest subject to condition <math|-m<rsub|0>\<gtr\>y<rsub|0>>. We see
    that by lemma <reference|lem-5n> <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\><big|cap><rsub|m\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1><around*|(|A<rsub|m>\<cup\>B<rsub|m>\<cup\>C<rsub|m>|)>\<Leftrightarrow\><around*|(|x<rsub|0>,y<rsub|0>|)>\<in\><big|cap><rsub|m\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1><around*|(|A<rsub|m>\<cup\>B<rsub|m>|)>\<Leftrightarrow\>x<rsub|0>\<in\><big|cap><rsub|k=0><rsup|<around*|(|m<rsub|0>-1|)>/2><around*|(|B<rsub|2k+1>|)><rsup|<around*|(|2|)>><rsub|y<rsub|0>>=<around*|(|B<rsub|1>|)><rsup|<around*|(|2|)>><rsub|y<rsub|0>>>
    and the latter holds true under the assumptions
    <math|x<rsub|0>\<leqslant\>-2> and <math|x<rsub|0>-y<rsub|0>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>>,
    as <math|B<rsub|1>\<supset\><around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsup|2><mid|\|>y\<leqslant\>-2,x-y\<leqslant\>0|}>>.
  </proof>

  <section|Proofs>

  <\proof>
    (of Proposition <reference|prop-q=2>) Lemma <reference|lem-2> immediately
    implies that\ 

    <\equation*>
      <around*|\<langle\>|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>,<wide|F|~><rsub|N,0,s<rsup|n<rprime|'>><around*|(|t-s|)><rsup|m<rprime|'>>,\<psi\>,1>|\<rangle\>>=
    </equation*>

    <\equation*>
      =<frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N\<upl\>2|2>|)>>\<cdot\><frac|1|<around*|(|<around*|(|m<rprime|'>+1|)>-\<nu\>|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>>P<rsup|odd/even><rsub|L+m<rprime|'>+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>|)><frac|\<Gamma\><around*|(|L+m<rprime|'>+1-\<nu\>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-q|2>+1-\<nu\>|)>>
    </equation*>

    As was shown in <verbatim|KP-normalization.pdf>,
    <math|P<rsup|odd><rsub|L+m<rprime|'>+1-\<nu\>>,L<around*|(|\<cdot\>|)>/<around*|(|m<rprime|'>+1-\<nu\>|)>>
    is holomorphic, and hence the expression above is holomorphic for every
    <math|<around*|(|N,m<rprime|'>,n<rprime|'>|)>\<in\>\<frak-I\>\<assign\><around*|{|<around*|(|N,m<rprime|'>,n<rprime|'>|)>\<in\>\<bbb-Z\><rsub|\<geqslant\>0><mid|\|>N,m<rprime|'>+n<rprime|'>\<in\>2\<bbb-Z\>|}>>,
    hence so is <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>>.

    Now, to finist the proof we need to compute

    <\equation*>
      min <around*|{|\<frak-P\><rsub|-><around*|(|<around*|\<langle\>|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>,<wide|F|~><rsub|N,0,s<rsup|n<rprime|'>><around*|(|t-s|)><rsup|m<rprime|'>>,\<psi\>,1>|\<rangle\>>|)>|}><rsub|\<frak-I\>>
    </equation*>

    and lemma <reference|lem-8> tells us that it equals to
    <math|min<around*|{|A<rsub|m<rsub|>>+B<rsub|m<rsub|>>+C<rsub|m<rsub|>>|}><rsub|m\<in\>\<bbb-Z\><rsub|\<geqslant\>0>>>
    with <math|A<rsub|m>>, <math|B<rsub|m>> and <math|C<rsub|m>> as defined
    in that lemma's statement.

    To finish the proof we need to compute
    <math|M<rsub|even>\<assign\>min<around*|{|A<rsub|m<rsub|>>+B<rsub|m<rsub|>>+C<rsub|m<rsub|>>|}><rsub|m\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>>
    and <math|M<rsub|odd>\<assign\>min<around*|{|A<rsub|m<rsub|>>+B<rsub|m<rsub|>>+C<rsub|m<rsub|>>|}><rsub|m\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>
    and <math|M\<assign\>min<around*|{|M<rsub|even>,M<rsub|odd>|}>>. We
    employ the variable change <math|x=<frac|\<lambda\>+\<nu\>-q|2>> and
    <math|y=<frac|\<lambda\>-\<nu\>-q|2>>. Note that <math|\<nu\>=x-y>.

    We can rewrite <math|A<rsub|m>> and <math|B<rsub|m>> as

    <\equation*>
      A<rsub|m>=<around*|{|y=-m,-m+1,\<ldots\>,-1|}>
    </equation*>

    <\equation*>
      B<rsub|m>=<choice|<tformat|<table|<row|<cell|<around*|{|x\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,y+m+1\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,x-y\<leqslant\>m+1|}>>|<cell|m\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>>|<row|<cell|<around*|{|x\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,y+m+1\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,x-y\<less\>m+1|}>>|<cell|m\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>>>>
    </equation*>

    Now, by lemma <reference|lem-7> we have

    <\equation*>
      M<rsub|even>=<big|sqcup><rsub|k\<in\>\<bbb-Z\><rsub|\<leqslant\>0>\<cup\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>>+1|)>><around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsup|2><mid|\|>y\<leqslant\>-1,<space|0.6spc>x-y=k|}>
    </equation*>

    It is clear that <math|M<rsub|odd>\<geqslant\><around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsub|\<leqslant\>0><rsup|2><mid|\|>y\<leqslant\>-1,x-y\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1|}>>.
    Moreover, lemma <reference|lem-9> implies that
    <math|M<rsub|odd>\<geqslant\><around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsup|2><mid|\|>y\<leqslant\>-1,<space|0.6spc>x-y\<in\>\<bbb-Z\><rsub|\<leqslant\>0>|}>>.
    Hence, <math|M=<big|sqcup><rsub|k\<in\>\<bbb-Z\><rsub|\<leqslant\>0>\<cup\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>>+1|)>><around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsup|2><mid|\|>y\<leqslant\>-1,<space|0.6spc>x-y=k|}>>.

    Finally, the last equality follows from the obvious fact that for
    <math|a,b\<in\>\<bbb-C\>> we have <math|<around*|(|a\<pm\>b|)>/2\<in\>\<bbb-Z\>>
    iff <math|a,b\<in\>\<bbb-Z\>> and <math|a-b\<in\>2\<bbb-Z\>>.
  </proof>
</body>

<\initial>
  <\collection>
    <associate|language|american>
    <associate|page-type|letter>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|3|?>>
    <associate|auto-4|<tuple|4|?>>
    <associate|lem-2|<tuple|3|?>>
    <associate|lem-4|<tuple|4|?>>
    <associate|lem-5|<tuple|6|?>>
    <associate|lem-5n|<tuple|5|?>>
    <associate|lem-7|<tuple|8|?>>
    <associate|lem-8|<tuple|7|?>>
    <associate|lem-9|<tuple|9|?>>
    <associate|lem-Mg0|<tuple|2|?>>
    <associate|prop-q=2|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Setting>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Main
      results> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Auxilliary
      results> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Proofs>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>