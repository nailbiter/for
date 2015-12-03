<TeXmacs|1.0.7.18>

<style|article>

<\body>
  <section|Settings and Notations>

  <\enumerate>
    <item>We let <math|p,q\<gtr\><with|math-font|Bbb|Z><rsub|\<gtr\>0>>

    <item>We let <math|K\<assign\>O*<around|(|p+1|)>\<times\>O*<around|(|q+1|)>>
    be the maximal compact subgroup of <math|G\<assign\>O*<around|(|p+1,q+1|)>>.

    <item>We will study kernel <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>\<in\><with|math-font|cal|D><rprime|'><around|(|<with|math-font|Bbb|R><rsup|p,q>|)>>
    of the singular symmetry breaking operator supported on
    <math|<around|{|Q=0|}>> as defined in [todai_masterreport_15_10_14.pdf].
    It was defined for <math|\<nu\>\<in\>2*<with|math-font|Bbb|Z><rsub|\<geq\>0>+1>
    and <math|<around*|{|\<lambda\>\<in\><with|math-font|Bbb|C><space|0.75spc>\|<space|0.75spc><text|Re><around|(|\<lambda\>-\<mu\>-n|)>\<nin\><with|math-font|Bbb|Z><rsub|\<le\>1>|}>>
  </enumerate>

  <section|Statements>

  <\proposition>
    <label|On-the->On the <math|<with|math-font|Euler|n><rsub|->\<simeq\><with|math-font|Bbb|R><rsup|p,q>>
    the <math|K>-finite vectors are of the form\ 

    <\equation*>
      F<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\><rprime|'>>*<around|(|r*\<omega\><rsub|p-1>,s*\<omega\><rsub|q-1>|)>\<assign\>
    </equation*>

    <\equation*>
      \<assign\>R<around|(|r,s|)><rsup|-\<lambda\>/2><around*|(|<frac|r|<sqrt|R<around|(|r,s|)>>>|)><rsup|N><around*|(|<frac|s|<sqrt|R<around|(|r,s|)>>>|)><rsup|M><around*|(|<frac|1-<around|(|r<rsup|2>-s<rsup|2>|)>|<sqrt|R<around|(|r,s|)>>>|)><rsup|n<rprime|'>><around*|(|<frac|1+<around|(|r<rsup|2>-s<rsup|2>|)>|<sqrt|R<around|(|r,s|)>>>|)><rsup|m<rprime|'>>*\<psi\><around|(|\<omega\><rsub|p-1>|)>*\<psi\><rprime|'><around|(|\<omega\><rsub|q-1>|)>
    </equation*>

    where <math|m<rprime|'>,n<rprime|'>,M,N\<in\><with|math-font|Bbb|Z><rsub|\<geq\>0>>,
    <math|m<rprime|'>+n<rprime|'>+M+N\<in\>2*<with|math-font|Bbb|Z><rsub|\<geq\>0>>,
    <math|R<around|(|r,s|)>\<assign\><around|(|1-r<rsup|2>+s<rsup|2>|)><rsup|2>+4*r<rsup|2>>
    and <math|<around|(|\<psi\>,\<psi\><rprime|'>|)>\<in\><with|math-font|cal|H><rsup|N><around|(|<with|math-font|Bbb|S><rsup|p-1>|)>\<times\><with|math-font|cal|H><rsup|M><around|(|<with|math-font|Bbb|S><rsup|q-1>|)>>.
  </proposition>

  <\proposition>
    <label|The-following-holds>The following holds
  </proposition>

  <\enumerate>
    <item>We have<math|<around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|C>,F<rsub|M,N,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\><rprime|'>>|\<rangle\>>=0>
    if <math|M\<gtr\>0>, <math|N>:odd or <math|\<psi\>\<perp\><with|math-font|cal|H><rsup|N><around|(|<with|math-font|Bbb|S><rsup|p-1>|)><rsup|O*<around|(|p-1|)>>>.

    <item>When <math|N> and <math|m<rprime|'>+n<rprime|'>>:even and
    <math|\<psi\><around|(|\<omega\><rsub|p-1>|)>\<assign\><wide|<wide|C|~>|~><rsub|N><rsup|p/2-1><around|(|\<omega\><rsub|p-1><rsup|<around|(|p|)>>|)>><footnote|recall
    that <em|<math|<with|math-font|cal|H><rsup|N><around|(|<with|math-font|Bbb|S><rsup|n-1>|)><rsup|O*<around|(|n-1|)>>=<with|math-font|Bbb|C>*<text|-span><wide|<wide|C|~>|~><rsub|N><rsup|<frac|n|2>-1><around|(|\<omega\><rsub|n-1><rsup|<around|(|n|)>>|)>>>>,
    we have

    <\equation*>
      <around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|C>,F<rsub|N,0,n<rprime|'>,m<rprime|'>,\<psi\>,1>|\<rangle\>>=R\<cdot\>S
    </equation*>

    where

    <\equation*>
      S\<simeq\><frac|\<Gamma\>*<around*|(|\<lambda\>+\<nu\>-n+1|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>*\<Gamma\><around*|(|<frac|\<lambda\>-q+\<nu\>+N|2>|)>>
    </equation*>

    (here <math|\<simeq\>> means proportionality up to a nonzero constant)
    and

    <\equation*>
      R\<simeq\><big|sum><rsub|i=0><rsup|\<nu\>-1>c<rsub|i><around|(|m<rprime|'>|)><around*|(|<frac|q-2|2>|)><rsub|\<nu\>-1-i><frac|\<Gamma\>*<around*|(|<frac|\<lambda\>+N-\<nu\>|2>+i|)>*\<Gamma\><around*|(|<frac|m<rprime|'>+n<rprime|'>+\<nu\>-2*i|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+N+m<rprime|'>+n<rprime|'>|2>|)>>
    </equation*>

    <next-line>where <math|c<rsub|i><around|(|m<rprime|'>|)>\<in\><with|math-font|Bbb|Q><around|[|m<rprime|'>|]>>
    with <math|deg <around|(|c<rsub|i>|)>=i>,
    <math|m<rprime|'>+<around|(|\<nu\>-1|)>-2*i\<less\>0\<Longrightarrow\>c<rsub|i><around|(|m<rprime|'>|)>=0>
    and <math|<around|(|\<alpha\>|)><rsub|j>\<assign\>\<alpha\>*<around|(|\<alpha\>-1|)>*\<ldots\>*<around|(|\<alpha\>-j+1|)>>.
  </enumerate>

  <\proposition>
    <label|Assume-that-1>Assume that <math|q> is odd and define
    <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>\<assign\>K<rsub|\<lambda\>,\<nu\>><rsup|C>/\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|>|)>/\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>>.
    Then <math|\<forall\><around|(|N,m<rprime|'>,n<rprime|'>|)>\<in\><with|math-font|Bbb|Z><rsub|\<ge\>0><rsup|3>>
    such that <math|N,<space|0.75spc>m<rprime|'>+n<rprime|'>\<in\>2*<with|math-font|Bbb|Z>>
    and <math|\<psi\>\<assign\><wide|<wide|C|~>|~><rsub|N><rsup|p/2-1><around|(|\<omega\><rsub|p-1><rsup|<around|(|p|)>>|)>>,
    we have <math|\<lambda\>\<mapsto\><around*|\<langle\>|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>,F<rsub|N,0,n<rprime|'>,m<rprime|'>,\<psi\>,1>|\<rangle\>>>
    being holomorphic function. Moreover,
    <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>\<ne\>0>.
  </proposition>

  <\proposition>
    <label|Assume-that-2>Assume that <math|q\<in\>2*<with|math-font|Bbb|Z><rsub|\<gtr\>0>>,
    <math|q-2*\<nu\>\<ge\>0> and define <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>\<assign\>K<rsub|\<lambda\>,\<nu\>><rsup|C>/\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>>.
    Then <math|\<forall\><around|(|N,m<rprime|'>,n<rprime|'>|)>\<in\><with|math-font|Bbb|Z><rsub|\<ge\>0><rsup|3>>
    such that <math|N,<space|0.75spc>m<rprime|'>+n<rprime|'>\<in\>2*<with|math-font|Bbb|Z>>
    and <math|\<psi\>\<assign\><wide|<wide|C|~>|~><rsub|N><rsup|p/2-1><around|(|\<omega\><rsub|p-1><rsup|<around|(|p|)>>|)>>,
    we have <math|\<lambda\>\<mapsto\><around*|\<langle\>|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>,F<rsub|N,0,n<rprime|'>,m<rprime|'>,\<psi\>,1>|\<rangle\>>>
    being holomorphic function. Moreover,
    <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>\<ne\>0>.
  </proposition>

  <\proposition>
    <label|Assume-that-3>Assume that <math|q\<in\>2*<with|math-font|Bbb|Z><rsub|\<gtr\>0>>,
    <math|q-2*\<nu\>\<less\>0>, <math|q-1\<ge\>\<nu\>> and define
    <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>\<assign\>K<rsub|\<lambda\>,\<nu\>><rsup|C>/\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>>.
    Then <math|\<forall\><around|(|N,m<rprime|'>,n<rprime|'>|)>\<in\><with|math-font|Bbb|Z><rsub|\<ge\>0><rsup|3>>
    such that <math|N,<space|0.75spc>m<rprime|'>+n<rprime|'>\<in\>2*<with|math-font|Bbb|Z>>
    and <math|\<psi\>\<assign\><wide|<wide|C|~>|~><rsub|N><rsup|p/2-1><around|(|\<omega\><rsub|p-1><rsup|<around|(|p|)>>|)>>,
    we have <math|\<lambda\>\<mapsto\><around*|\<langle\>|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>,F<rsub|N,0,n<rprime|'>,m<rprime|'>,\<psi\>,1>|\<rangle\>>>
    being holomorphic function. Moreover,
    <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>\<ne\>0>.
  </proposition>

  <\proposition>
    <label|Assume-that-4>Assume that <math|q\<in\>2*<with|math-font|Bbb|Z><rsub|\<gtr\>0>>,
    <math|q-1\<less\>\<nu\>> and define <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>\<assign\>K<rsub|\<lambda\>,\<nu\>><rsup|C>/\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>/\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>+q-2|2>|)>>.
    Then <math|\<forall\><around|(|N,m<rprime|'>,n<rprime|'>|)>\<in\><with|math-font|Bbb|Z><rsub|\<ge\>0><rsup|3>>
    such that <math|N,<space|0.75spc>m<rprime|'>+n<rprime|'>\<in\>2*<with|math-font|Bbb|Z>>
    and <math|\<psi\>\<assign\><wide|<wide|C|~>|~><rsub|N><rsup|p/2-1><around|(|\<omega\><rsub|p-1><rsup|<around|(|p|)>>|)>>,
    we have <math|\<lambda\>\<mapsto\><around*|\<langle\>|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>,F<rsub|N,0,n<rprime|'>,m<rprime|'>,\<psi\>,1>|\<rangle\>>>
    being holomorphic function. Moreover,
    <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>\<ne\>0>.
  </proposition>

  <\lemma>
    <label|Suppose-there-exists>Suppose there exists
    <math|<around*|{|c<rsub|i>|}><rsub|i=0><rsup|m>,\<alpha\>\<in\><with|math-font|Bbb|C>>
    and increasing unbounded sequence <math|<around*|{|k<rsub|n>|}><rsub|n>\<subset\><with|math-font|Bbb|Q>>
    such that

    <\equation*>
      \<forall\>n\<Longrightarrow\><big|sum><rsub|i=0><rsup|m>c<rsub|i>*\<Gamma\>*<around|(|\<alpha\>+i+k<rsub|n>|)>=0.
    </equation*>

    Then all <math|c<rsub|i>> are zero.
  </lemma>

  <\lemma>
    <label|For-,-we>For <math|\<lambda\>\<in\><with|math-font|Bbb|C>>, we
    have an isomorphism of Frechet<math|G>-representations
    <math|<around*|(|\<pi\><rsub|\<lambda\>,K>,C<rsup|\<infty\>>*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><rsup|<with|math-font|Bbb|Z><rsub|2>>|)><long-arrow|\<rubber-rightarrow\>|\<sim\>><around*|(|l<rsub|\<Xi\>>,C<rsub|-\<lambda\>><rsup|\<infty\>><around|(|\<Xi\><rsup|p+1,q+1>|)>|)>>
    given by <math|f\<mapsto\><around*|(|<around|(|x,y|)>\<mapsto\><around*|\||x|\|><rsup|-\<lambda\>>*f<around*|[|<frac|<around|(|x,y|)>|<around*|\||x|\|>>|]>|)>>,
    where

    <\equation*>
      \<Xi\><rsup|p+1,q+1>\<assign\><around*|{|<around|(|x,y|)>\<in\><with|math-font|Bbb|R><rsup|p+1,q+1><mid|\|><around*|\||x|\|><rsub|p+1>=<around*|\||y|\|><rsub|q+1>|}>\<setminus\><around*|{|0|}>
    </equation*>

    <\equation*>
      <around*|\<nobracket\>|C<rsup|\<infty\>>*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><rsup|<with|math-font|Bbb|Z><rsub|2>>\<assign\><around*|{|f\<in\>C<rsup|\<infty\>>*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><mid|\|>\<forall\><around|(|x,y|)>\<in\><with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>,<space|0.75spc>f<around|(|x,y|)>=f|(>-x,-y)|}>
    </equation*>

    , <math|l<rsub|\<Xi\>>> is left regular action induced by action of
    <math|G> on <math|\<Xi\><rsup|p+1,q+1>> and
    <math|<around|(|\<pi\><rsub|\<lambda\>,K><around|(|g|)>*f|)><around|(|x|)>\<assign\>p*<around*|(|g<rsup|-1>\<cdot\>x|)><rsup|-\<lambda\>>*f<around*|(|<frac|g<rsup|-1>\<cdot\>x|p*<around*|(|g<rsup|-1>\<cdot\>x|)>>|)>>,
    where <math|g<rsup|-1>\<cdot\>x> refers to action of
    <math|G\<curvearrowright\>\<Xi\><rsup|p+1,q+1>> and for
    <math|<around|(|x,y|)>\<in\>\<Xi\><rsup|p+1,q+1>,<space|0.75spc>p<around|(|<around|(|x,y|)>|)>\<assign\><around*|\||x|\|><rsub|p+1>>.
    Moreover, <math|\<pi\><rsub|\<lambda\>,K><mid|\|><rsub|K>> coincides with
    left-regular action induced by action
    <math|K\<curvearrowright\><with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>>.
  </lemma>

  <\lemma>
    <label|Let--denote>Let <math|S\<subset\>C<rsup|\<infty\>>*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><rsup|<with|math-font|Bbb|Z><rsub|2>>>
    denote the subspace of <math|K>-finite vectors. Then,
  </lemma>

  <\enumerate>
    <item><math|S=<big|sum><rsub|<around*|{|<around|(|l,k|)>\<in\><with|math-font|Bbb|Z><rsub|\<ge\>0><rsup|2><mid|\|>l+k\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>|}>><with|math-font|cal|H><rsup|l><around|(|<with|math-font|Bbb|S><rsup|p>|)>\<otimes\><with|math-font|cal|H><rsup|k><around|(|<with|math-font|Bbb|S><rsup|q>|)>>,
    where <math|<big|sum>> denotes the span;

    <item><math|S> is spanned by functions of the form
    <math|<around|(|\<eta\><rsub|0>,\<eta\>,\<xi\><rsub|0>,\<xi\>|)>\<mapsto\><around*|\||\<eta\>|\|><rsup|N>*\<psi\><around*|(|<frac|\<eta\>|<around*|\||\<eta\>|\|>>|)>*\<eta\><rsub|0><rsup|n<rprime|'>><around*|\||\<xi\>|\|><rsup|M>*\<psi\><rprime|'><around*|(|<frac|\<xi\>|<around*|\||\<xi\>|\|>>|)>*\<xi\><rsub|0><rsup|m<rprime|'>>>
    where <math|<around*|(|<around|(|\<eta\><rsub|0>,\<eta\>|)>,<around|(|\<xi\><rsub|0>,\<xi\>|)>|)>\<in\><with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>>,
    <math|M,N,m<rprime|'>,n<rprime|'>\<in\><with|math-font|Bbb|Z><rsub|\<geq\>0>>
    with <math|M+N+m<rprime|'>+n<rprime|'>\<in\>2*<with|math-font|Bbb|Z><rsub|\<geq\>0>>
    and <math|<around*|(|\<psi\>,\<psi\>|)>\<in\><with|math-font|cal|H><rsup|N><around|(|<with|math-font|Bbb|S><rsup|p>|)>\<times\><with|math-font|cal|H><rsup|M><around|(|<with|math-font|Bbb|S><rsup|q>|)>>.
  </enumerate>

  <\lemma>
    <label|Suppose-that-sets>Suppose that
    <math|<around*|{|A<rsub|N>|}><rsub|N>>,
    <math|<around*|{|B<rsub|N>|}><rsub|N>> and
    <math|<around*|{|C<rsub|N>|}><rsub|N>> are three families of sets indexed
    with <math|N\<in\>\<Lambda\>>. Then, the following holds:
  </lemma>

  <\enumerate>
    <item>If <math|\<forall\>N,<space|0.75spc>N<rprime|'>\<in\>\<Lambda\>> we
    have <math|A<rsub|N<rprime|'>>\<cap\>B<rsub|N>=\<emptyset\>>, then
    <math|<big|cap><rsub|N\<in\>\<Lambda\>><around*|(|A<rsub|N>\<cup\>B<rsub|N>|)>=<big|cap><rsub|N\<in\>\<Lambda\>>A<rsub|N>\<cup\><big|cup><rsub|N\<in\>\<Lambda\>>B<rsub|N>>.

    <item>If <math|\<forall\>N,<space|0.75spc>N<rprime|'>\<in\>\<Lambda\>> we
    have <math|A<rsub|N<rprime|'>>\<cap\>B<rsub|N>=\<emptyset\>>,
    <math|x\<in\><big|cap><rsub|N\<in\>\<Lambda\>><around*|(|A<rsub|N>\<cup\>B<rsub|N>\<cup\>C<rsub|N>|)>>
    and <math|\<exists\>N<rsub|0>\<in\>\<Lambda\>>, such that
    <math|A<rsub|N<rsub|0>>\<ni\>x>, then
  </enumerate>

  <\proof>
    We will prove only the second assertion. Assume on contrary that
    <math|x\<nin\><big|cap><rsub|N\<in\>\<Lambda\>><around*|(|A<rsub|N>\<cup\>C<rsub|N>|)>>
    and hence for some <math|N<rsub|1>> we should have
    <math|x\<nin\>A<rsub|N<rsub|1>>\<cup\>C<rsub|N<rsub|1>>>. Now, this
    implies that <math|x\<in\>B<rsub|N<rsub|1>>>and hence that
    <math|A<rsub|N<rsub|0>>\<cap\>B<rsub|N<rsub|1>>\<ni\>x>, thus giving a
    contradiction.
  </proof>

  <section|Proofs>

  <\proof>
    (of prop. <reference|On-the->) Similarly to <cite|kobayashi2015symmetry>
    and <cite|Kobayashi201489>, we have <math|I<around|(|\<lambda\>|)>\<simeq\><around*|(|l<rsub|\<Xi\>>,C<rsub|-\<lambda\>><rsup|\<infty\>><around|(|\<Xi\><rsup|p+1,q+1>|)>|)>>,
    so all we need to do is to calculate the pullback of the <math|K>-finite
    vectors of <math|C<rsub|-\<lambda\>><rsup|\<infty\>><around|(|\<Xi\><rsup|p+1,q+1>|)>>
    under the embedding

    <\equation*>
      <with|math-font|Euler|n><rsub|->\<simeq\><with|math-font|Bbb|R><rsup|p,q>\<ni\><around|(|x,y|)>\<mapsto\><around|(|1-<around*|\||x|\|><rsup|2>+<around*|\||y|\|><rsup|2>,<space|0.25spc>2*x,<space|0.25spc>2*y,<space|0.25spc>1+<around*|\||x|\|><rsup|2>-<around*|\||y|\|><rsup|2>|)>\<in\>\<Xi\><rsup|p+1,q+1>
    </equation*>

    In turn, lemma <reference|For-,-we> \ and the second item of lem.
    <reference|Let--denote> \ tells us what is the form of <math|K>-finite
    vectors in <math|<around*|(|l<rsub|\<Xi\>>,C<rsub|-\<lambda\>><rsup|\<infty\>><around|(|\<Xi\><rsup|p+1,q+1>|)>|)>>,
    and this gives the desired conclusion.
  </proof>

  <\proof>
    (of prop. <reference|The-following-holds>) Let us transfer to bipolar
    coordinates, where

    <\equation*>
      <around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|C>,F<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\><rprime|'>>|\<rangle\>>=
    </equation*>

    <\equation*>
      =<big|int><rsub|r=0><rsup|\<infty\>><big|int><rsub|s=0><rsup|\<infty\>>\<delta\><rsup|<around|(|\<nu\>-1|)>>*<around|(|<frac|s<rsup|2>|r<rsup|2>>-1|)>*R<around|(|r,s|)><rsup|-\<lambda\>/2><around*|(|<frac|r|<sqrt|R<around|(|r,s|)>>>|)><rsup|N><around*|(|<frac|s|<sqrt|R<around|(|r,s|)>>>|)><rsup|M><around*|(|<frac|1-<around|(|r<rsup|2>-s<rsup|2>|)>|<sqrt|R<around|(|r,s|)>>>|)><rsup|n<rprime|'>><around*|(|<frac|1+<around|(|r<rsup|2>-s<rsup|2>|)>|<sqrt|R<around|(|r,s|)>>>|)><rsup|m<rprime|'>>\<times\>
    </equation*>

    <\equation*>
      \<times\>r<rsup|\<lambda\>+\<nu\>-n>*r<rsup|p-1>*s<rsup|q-1>*d*r*<space|0.25spc>d*s\<times\>
    </equation*>

    <\equation*>
      <big|int><rsub|<with|math-font|Bbb|S><rsup|p-1>>\<psi\><around|(|\<omega\><rsub|p-1>|)><around*|\||\<omega\><rsub|p-1><rsup|<around|(|p|)>>|\|><rsup|\<lambda\>+\<nu\>-n>*d*\<omega\><rsub|p-1>*<big|int><rsub|<with|math-font|Bbb|S><rsup|q-1>>\<psi\><rprime|'><around|(|\<omega\><rsub|q-1>|)>*d*\<omega\><rsub|q-1>
    </equation*>

    Now, as <math|\<psi\><rprime|'>\<in\><with|math-font|cal|H><rsup|M><around|(|<with|math-font|Bbb|S><rsup|q-1>|)>>
    we see that <math|<big|int><rsub|<with|math-font|Bbb|S><rsup|q-1>>\<psi\><rprime|'><around|(|\<omega\><rsub|q-1>|)>*d*\<omega\><rsub|q-1>=0>
    unless <math|M=0>. Furthermore, as explained in
    <cite-detail|kobayashi2015symmetry|lem 7.6>,
    <math|<big|int><rsub|<with|math-font|Bbb|S><rsup|p-1>>\<psi\><around|(|\<omega\><rsub|p-1>|)><around*|\||\<omega\><rsub|p-1><rsup|<around|(|p|)>>|\|><rsup|\<lambda\>+\<nu\>-n>*d*\<omega\><rsub|p-1>=0>
    if <math|N> is odd or <math|\<psi\>\<perp\><with|math-font|cal|H><rsup|N><around|(|<with|math-font|Bbb|S><rsup|p-1>|)><rsup|O*<around|(|p-1|)>>>.
    This proves the first item.

    Regarding the second item, the <math|S> factor comes from the shown in
    <cite-detail|kobayashi2015symmetry|lem. 7.6> identity

    <\equation*>
      <big|int><rsub|<with|math-font|Bbb|S><rsup|n-1>><around*|\||\<omega\><rsub|n-1><rsup|<around|(|n|)>>|\|><rsup|\<lambda\>+\<nu\>-n>*<wide|<wide|C|~>|~><rsub|N><rsup|<frac|n|2>-1><around|(|\<omega\><rsub|n-1><rsup|<around|(|n|)>>|)>*d*\<omega\><rsub|n-1>\<simeq\><frac|\<Gamma\>*<around*|(|\<lambda\>+\<nu\>-n+1|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>*\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-N|2>|)>>
    </equation*>

    We next rewrite the integral

    <\equation*>
      <big|int><rsub|r=0><rsup|\<infty\>><big|int><rsub|s=0><rsup|\<infty\>>\<delta\><rsup|<around|(|\<nu\>-1|)>>*<around|(|<frac|s<rsup|2>|r<rsup|2>>-1|)>*R<around|(|r,s|)><rsup|-\<lambda\>/2><around*|(|<frac|r|<sqrt|R<around|(|r,s|)>>>|)><rsup|N><around*|(|<frac|1-<around|(|r<rsup|2>-s<rsup|2>|)>|<sqrt|R<around|(|r,s|)>>>|)><rsup|n<rprime|'>><around*|(|<frac|1+<around|(|r<rsup|2>-s<rsup|2>|)>|<sqrt|R<around|(|r,s|)>>>|)><rsup|m<rprime|'>>\<times\>r<rsup|\<lambda\>+\<nu\>-n>*r<rsup|p-1>*s<rsup|q-1>*d*r*<space|0.25spc>d*s
    </equation*>

    in coordinates <math|<around|(|x,y|)>> given as

    <\equation*>
      x\<assign\><frac|1+<around|(|r<rsup|2>-s<rsup|2>|)>|<sqrt|R<around|(|r,s|)>>>,<space|1em>y\<assign\><frac|1-<around|(|r<rsup|2>-s<rsup|2>|)>|<sqrt|R<around|(|r,s|)>>>
    </equation*>

    The integration domain then becomes <math|<around*|\<nobracket\>|<around*|{|<around|(|x,y|)>\<in\>|[>-1,1]\<times\>[-1,1]<mid|\|>x+y\<gtr\>0|}>>
    and the whole integral becomes (up to proportionality)

    <\equation*>
      <big|int><rsub|<around|(|x,y|)>\<in\>D>\<delta\><rsup|<around|(|\<nu\>-1|)>>*<around|(|x-y|)>*<around|(|1-y<rsup|2>|)><rsup|<frac|\<lambda\>+N+\<nu\>-q-2|2>>*<around|(|1-x<rsup|2>|)><rsup|<frac|q-2|2>>*x<rsup|m<rprime|'>>*y<rsup|n<rprime|'>>*d*x*<space|0.25spc>d*y\<simeq\>
    </equation*>

    <\equation*>
      \<simeq\><big|int><rsub|y=0><rsup|1><around|(|1-y<rsup|2>|)><rsup|<frac|\<lambda\>+N+\<nu\>-q-2|2>>*y<rsup|n<rprime|'>>*<around*|[|<frac|\<partial\><rsup|\<nu\>-1>|\<partial\>*x<rsup|\<nu\>-1>><mid|\|><rsub|x=y><around|(|1-x<rsup|2>|)><rsup|<frac|q-2|2>>*x<rsup|m<rprime|'>>|]>*d*y
    </equation*>

    Now, inductively one sees that

    <\equation*>
      <frac|\<partial\><rsup|\<nu\>-1>|\<partial\>*x<rsup|\<nu\>-1>>*<around|(|1-x<rsup|2>|)><rsup|<frac|q-2|2>>*x<rsup|m<rprime|'>>=<big|sum><rsub|i=0><rsup|\<nu\>-1>c<rsub|i><around|(|m<rprime|'>|)><around*|(|<frac|q-2|2>|)><rsub|\<nu\>-1-i>*<around|(|1-x<rsup|2>|)><rsup|<frac|q-2|2>-<around|(|\<nu\>-1|)>+i>*x<rsup|m<rprime|'>+<around|(|\<nu\>-1|)>-2*i>
    </equation*>

    with <math|c<rsub|i>> having all the properties claimed in the
    proposition statement. Now, using the equality

    <\equation*>
      <big|int><rsub|0><rsup|1><around|(|1-y<rsup|2>|)><rsup|\<alpha\>>*y<rsup|\<beta\>>=<frac|\<Gamma\>*<around|(|\<alpha\>+1|)>*\<Gamma\><around*|(|<frac|\<beta\>+1|2>|)>|\<Gamma\>*<around*|(|<frac|3|2>+\<alpha\>+<frac|\<beta\>|2>|)>>
    </equation*>

    we have the latter integral being equal to

    <\equation*>
      <big|sum><rsub|i=0><rsup|\<nu\>-1>c<rsub|i><around|(|m<rprime|'>|)><around*|(|<frac|q-2|2>|)><rsub|\<nu\>-1-i><frac|\<Gamma\>*<around*|(|<frac|\<lambda\>+N-\<nu\>|2>+i|)>*\<Gamma\><around*|(|<frac|m<rprime|'>+n<rprime|'>+\<nu\>-2*i|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+N+m<rprime|'>+n<rprime|'>|2>|)>>
    </equation*>
  </proof>

  <\proof>
    (of prop. <reference|Assume-that-1>) In the light of proposition
    <reference|The-following-holds> \ we have

    <\equation*>
      <around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|C>,F<rsub|N,0,n<rprime|'>,m<rprime|'>,\<psi\>,1>|\<rangle\>>\<simeq\><big|sum><rsub|i=0><rsup|\<nu\>-1>c<rsub|i><around|(|m<rprime|'>|)><around*|(|<frac|q-2|2>|)><rsub|\<nu\>-1-i><frac|\<Gamma\>*<around*|(|<frac|\<lambda\>+N-\<nu\>|2>+i|)>*\<Gamma\><around*|(|<frac|m<rprime|'>+n<rprime|'>+\<nu\>-2*i|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+N+m<rprime|'>+n<rprime|'>|2>|)>>\<cdot\><frac|\<Gamma\>*<around*|(|\<lambda\>+\<nu\>-n+1|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>*\<Gamma\><around*|(|<frac|\<lambda\>-q+\<nu\>+N|2>|)>>
    </equation*>

    The factors <math|c<rsub|i><around|(|m<rprime|'>|)>*\<Gamma\><around*|(|<frac|m<rprime|'>+n<rprime|'>+\<nu\>-2*i|2>|)>>
    cannot have poles due to the properties of <math|c<rsub|i>> (see prop.
    <reference|The-following-holds>). Therefore, it suffices to show that
    <math|\<forall\>i> with <math|0\<leq\>i\<leq\>\<nu\>-1> the expression

    <\equation*>
      <frac|\<Gamma\>*<around*|(|<frac|\<lambda\>+N-\<nu\>|2>+i|)>|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>>\<cdot\><frac|\<Gamma\>*<around*|(|\<lambda\>+\<nu\>-n+1|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>*\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>>
    </equation*>
  </proof>

  is holomorphic as a function of <math|\<lambda\>>. The first multiplicand
  is obviously so. So is the second, once one recalls the Lagrange
  duplication identity to write

  <\equation*>
    <frac|\<Gamma\>*<around*|(|\<lambda\>+\<nu\>-n+1|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>*\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>>\<simeq\><frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>>
  </equation*>

  <next-line>It remains therefore to show that
  <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>\<ne\>0>. Assume on
  contrary that for some fixed <math|<around|(|\<lambda\>,\<nu\>|)>> it is
  not so. Then we should have <math|\<forall\><around|(|N,m<rprime|'>,n<rprime|'>|)>\<in\><with|math-font|Bbb|Z><rsub|\<ge\>0><rsup|3>>
  such that <math|N,<space|0.75spc>m<rprime|'>+n<rprime|'>\<in\>2*<with|math-font|Bbb|Z>>
  we have

  <\equation*>
    <big|sum><rsub|i=0><rsup|\<nu\>-1>c<rsub|i><around|(|m<rprime|'>|)><around*|(|<frac|q-2|2>|)><rsub|\<nu\>-1-i><frac|\<Gamma\>*<around*|(|<frac|\<lambda\>+N-\<nu\>|2>+i|)>|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>>\<cdot\><frac|\<Gamma\><around*|(|<frac|m<rprime|'>+n<rprime|'>+\<nu\>-2*i|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+N+m<rprime|'>+n<rprime|'>|2>|)>>\<cdot\><frac|1|\<Gamma\><around*|(|<frac|\<lambda\>-q+\<nu\>+N|2>|)>>\<cdot\><frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>>=0
  </equation*>

  We assume <math|N> and <math|m<rprime|'>> fixed for a moment and vary
  <math|n<rprime|'>> only. Now, as <math|\<Gamma\><around*|(|<frac|\<lambda\>+N+m<rprime|'>+n<rprime|'>|2>|)>>
  is finite for big <math|n<rprime|'>> we see that

  <\equation*>
    <big|sum><rsub|i=0><rsup|\<nu\>-1>c<rsub|i><around|(|m<rprime|'>|)><around*|(|<frac|q-2|2>|)><rsub|\<nu\>-1-i><frac|\<Gamma\>*<around*|(|<frac|\<lambda\>+N-\<nu\>|2>+i|)>|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>>\<cdot\>\<Gamma\><around*|(|<frac|m<rprime|'>+n<rprime|'>+\<nu\>-2*i|2>|)>\<cdot\><frac|1|\<Gamma\><around*|(|<frac|\<lambda\>-q+\<nu\>+N|2>|)>>\<cdot\><frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>>=0
  </equation*>

  And then lemma <reference|Suppose-there-exists> \ and the fact that
  <math|c<rsub|i>\<ne\>0> imply that <math|\<forall\>i> with
  <math|0\<leq\>i\<leq\>\<nu\>-1> we have

  <\equation*>
    <around*|(|<frac|q-2|2>|)><rsub|\<nu\>-1-i><frac|\<Gamma\>*<around*|(|<frac|\<lambda\>+N-\<nu\>|2>+i|)>|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>>\<cdot\><frac|1|\<Gamma\><around*|(|<frac|\<lambda\>-q+\<nu\>+N|2>|)>>\<cdot\><frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>>=0
  </equation*>

  In particular, it holds for <math|i=0> and thus

  <\equation*>
    <frac|\<Gamma\><around*|(|<frac|\<lambda\>+N-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>>\<cdot\><frac|1|\<Gamma\><around*|(|<frac|\<lambda\>-q+\<nu\>+N|2>|)>>\<cdot\><frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>>=0
  </equation*>

  Then, if we let

  <\equation*>
    A<rsub|N>\<assign\><around*|{|\<lambda\>\<in\><with|math-font|Bbb|C><mid|\|><frac|\<Gamma\><around*|(|<frac|\<lambda\>+N-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>>=0|}>=<around*|{|\<lambda\>=\<nu\>-N+2*j|}><rsub|j=1><rsup|N/2>
  </equation*>

  <\equation*>
    B<rsub|N>\<assign\><around*|{|\<lambda\>\<in\><with|math-font|Bbb|C><mid|\|><frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>>=0|}>=<around*|{|\<lambda\>=-\<nu\>+n+2*j|}><rsub|j=0><rsup|N/2-1>
  </equation*>

  <\equation*>
    C<rsub|N>\<assign\><around*|{|\<lambda\>\<in\><with|math-font|Bbb|C><mid|\|><frac|1|\<Gamma\><around*|(|<frac|\<lambda\>-q+\<nu\>+N|2>|)>>=0|}>=<around*|{|\<lambda\>=-\<nu\>+q-N-2*j|}><rsub|j=0><rsup|\<infty\>>
  </equation*>

  And <math|\<lambda\>\<in\><big|cap><rsub|N\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>><around|(|A<rsub|N>\<cup\>B<rsub|N>\<cup\>C<rsub|N>|)>>
  and as <math|C<rsub|N>\<subset\>-\<nu\>+2*<with|math-font|Bbb|Z>+1>, while
  <math|A<rsub|N>\<cup\>B<rsub|N>\<subset\>-\<nu\>+2*<with|math-font|Bbb|Z>>,
  the first item of lemma <reference|Suppose-that-sets> \ and the fact that
  <math|B<rsub|0>=A<rsub|0>=\<emptyset\>\<Longrightarrow\><big|cap><rsub|N\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>><around|(|A<rsub|N>\<cup\>B<rsub|N>|)>=\<emptyset\>>
  imply that <math|\<lambda\>\<in\><big|cap><rsub|N\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>>C<rsub|N>=\<emptyset\>>.
  This contradiction ends the proof.

  <\proof>
    (of prop. <reference|Assume-that-2>) Let's start with proving the
    holomorphicity. Similarly to the proof of prop.
    <reference|Assume-that-1>, it suffices to show that <math|\<forall\>i>
    with <math|0\<leq\>i\<leq\>\<nu\>-1> and
    <math|\<forall\>N\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>> the
    expression

    <\equation*>
      <frac|\<Gamma\>*<around*|(|<frac|\<lambda\>+N-\<nu\>|2>+i|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-q+N|2>|)>>\<cdot\><frac|\<Gamma\>*<around*|(|\<lambda\>+\<nu\>-n+1|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>*\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>>
    </equation*>

    is holomorphic as a function of <math|\<lambda\>>. The second
    multiplicand is obviously so, while the first is also so, as
    <math|-\<nu\>+i\<ge\>\<nu\>-q>, as implied by <math|q-2*\<nu\>\<ge\>0>
    hypothesis. Thus, it remains to show that
    <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>\<neq\>0>, so we on
    contrary assume that for some <math|<around|(|\<lambda\>,\<nu\>|)>> it is
    not so. Then, as in proof of prop. <reference|Assume-that-1>, this
    implies that <math|\<forall\>N\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>>
    we have

    <\equation*>
      <frac|\<Gamma\><around*|(|<frac|\<lambda\>+N-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-q+N|2>|)>>\<cdot\><frac|\<Gamma\>*<around*|(|\<lambda\>+\<nu\>-n+1|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>*\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>>=0.
    </equation*>

    Hence if we set

    <\equation*>
      A<rsub|N>\<assign\><around*|{|\<lambda\>\<in\><with|math-font|Bbb|C><mid|\|><frac|\<Gamma\><around*|(|<frac|\<lambda\>+N-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-q+N|2>|)>>|}>=<around*|{|\<lambda\>=-N+\<nu\>+2*j|}><rsub|j=1><rsup|q/2-\<nu\>>
    </equation*>

    <\equation*>
      B<rsub|N>\<assign\><around*|{|\<lambda\>\<in\><with|math-font|Bbb|C><mid|\|><frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>>=0|}>=<around*|{|\<lambda\>=-\<nu\>+n+2*j|}><rsub|j=0><rsup|N/2-1>
    </equation*>

    we have to conclude that <math|\<lambda\>\<in\><big|cap><rsub|N\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>><around|(|A<rsub|N>\<cup\>B<rsub|N>|)>>.
    Now, as <math|-N+\<nu\>+q-2*\<nu\>\<less\>-\<nu\>+n\<Longleftrightarrow\>q\<less\>n>,
    we have that <math|\<forall\>N,N<rprime|'>,<space|0.75spc>A<rsub|N<rprime|'>>\<cap\>B<rsub|N>=\<emptyset\>>
    and the first item of lemma <reference|Suppose-that-sets> \ together with
    the fact that <math|<big|cap><rsub|N\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>>B<rsub|N>\<subset\>B<rsub|0>=\<emptyset\>>,
    imply that <math|\<lambda\>\<in\><big|cap><rsub|N\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>>A<rsub|N>=\<emptyset\>>.
  </proof>

  <\proof>
    (of prop. <reference|Assume-that-3>) Let's start with proving the
    holomorphicity. Similarly to the proof of prop.
    <reference|Assume-that-1>, it suffices to show that the following
    expression is holomorphic as a function of <math|\<lambda\>>:

    <\equation*>
      <frac|\<Gamma\>*<around*|(|<frac|\<lambda\>+N-\<nu\>|2>+<frac|q-2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-q+N|2>|)>>\<cdot\><frac|\<Gamma\>*<around*|(|\<lambda\>+\<nu\>-n+1|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>*\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>>
    </equation*>

    Now, the second multiplicand is clearly holomorphic, while the first is
    also so, as <math|-\<nu\>+q-2\<ge\>-q+\<nu\>\<Longleftrightarrow\>q-1\<ge\>\<nu\>>.
    Thus, it remains to show that <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>\<ne\>0>
    and as in the proof of prop. <reference|Assume-that-1>, the contradicting
    assumption implies that <math|\<forall\>N\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>>
    we have

    <\equation*>
      <frac|\<Gamma\>*<around*|(|<frac|\<lambda\>+N-\<nu\>|2>+<frac|q-2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-q+N|2>|)>>\<cdot\><frac|\<Gamma\>*<around*|(|\<lambda\>+\<nu\>-n+1|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>*\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>>=0
    </equation*>

    and thus if we let

    <\equation*>
      A<rsub|N>\<assign\><around*|{|\<lambda\>\<in\><with|math-font|Bbb|C><mid|\|><frac|\<Gamma\>*<around*|(|<frac|\<lambda\>+N-\<nu\>|2>+<frac|q-2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-q+N|2>|)>>=0|}>=<around*|{|\<lambda\>=q-\<nu\>-N-2*j|}><rsub|j=0><rsup|q-\<nu\>-1>
    </equation*>

    <\equation*>
      B<rsub|N>\<assign\><around*|{|\<lambda\>\<in\><with|math-font|Bbb|C><mid|\|><frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>>|}>=<around*|{|\<lambda\>=-\<nu\>+n+2*j|}><rsub|j=0><rsup|N/2-1>
    </equation*>

    we have to conclude that <math|\<lambda\>\<in\><big|cap><rsub|N\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>><around|(|A<rsub|N>\<cup\>B<rsub|N>|)>>.
    Now, as <math|q-\<nu\>-N\<less\>-\<nu\>+n\<Longleftrightarrow\>q-N\<less\>n>,
    we have that <math|\<forall\>N,N<rprime|'>,<space|0.75spc>A<rsub|N<rprime|'>>\<cap\>B<rsub|N>=\<emptyset\>>
    and the first item of lemma <reference|Suppose-that-sets> \ together with
    the fact that <math|<big|cap><rsub|N\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>>B<rsub|N>\<subset\>B<rsub|0>=\<emptyset\>>,
    imply that <math|\<lambda\>\<in\><big|cap><rsub|N\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>>A<rsub|N>=\<emptyset\>>.
  </proof>

  <\proof>
    (of prop. <reference|Assume-that-4>) Let's start with proving the
    holomorphicity. Similarly to the proof of prop.
    <reference|Assume-that-1>, it suffices to show that the following
    expression is holomorphic as a function of <math|\<lambda\>>:

    <\equation*>
      <frac|\<Gamma\>*<around*|(|<frac|\<lambda\>+N-\<nu\>|2>+<frac|q-2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>+q-2|2>|)>>\<cdot\><frac|\<Gamma\>*<around*|(|\<lambda\>+\<nu\>-n+1|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>*\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>>
    </equation*>

    Both multilpicands are clearly holomorphic. Thus, it remains to show that
    <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>\<ne\>0> and as in the
    proof of prop. <reference|Assume-that-1>, the contradicting assumption
    implies that <math|\<forall\>N\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>>
    we have

    <\equation*>
      <frac|\<Gamma\>*<around*|(|<frac|\<lambda\>+N-\<nu\>|2>+<frac|q-2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>+q-2|2>|)>>*<wide|<frac|1|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-q+N|2>|)>>|\<dot\>>\<cdot\><frac|\<Gamma\>*<around*|(|\<lambda\>+\<nu\>-n+1|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>*\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>>=0
    </equation*>

    and thus if we let

    <\equation*>
      C<rsub|N>\<assign\><around*|{|\<lambda\>\<in\><with|math-font|Bbb|C><mid|\|><frac|\<Gamma\>*<around*|(|<frac|\<lambda\>+N-\<nu\>|2>+<frac|q-2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>+q-2|2>|)>>=0|}>=<around*|{|\<lambda\>=<around|(|\<nu\>-q+2|)>-2*j|}><rsub|j=0><rsup|N/2-1>
    </equation*>

    <\equation*>
      B<rsub|N>\<assign\><around*|{|\<lambda\>\<in\><with|math-font|Bbb|C><mid|\|><frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>>|}>=<around*|{|\<lambda\>=-\<nu\>+n+2*j|}><rsub|j=0><rsup|N/2-1>
    </equation*>

    <\equation*>
      A<rsub|N>\<assign\><around*|{|\<lambda\>\<in\><with|math-font|Bbb|C><mid|\|><wide|<frac|1|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-q+N|2>|)>>|\<dot\>>=0|}>=<around*|{|\<lambda\>=-\<nu\>+q-N-2*j|}><rsub|j=0><rsup|\<infty\>>
    </equation*>

    we have to conclude that <math|\<lambda\>\<in\><big|cap><rsub|N\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>><around|(|A<rsub|N>\<cup\>B<rsub|N>\<cup\>C<rsub|N>|)>>.
    Now, as <math|-\<nu\>+q-N\<less\>-\<nu\>+n\<Longleftrightarrow\>q-N\<less\>n>,
    we have that <math|\<forall\>N,N<rprime|'>,<space|0.75spc>A<rsub|N<rprime|'>>\<cap\>B<rsub|N>=\<emptyset\>>
    and the second item of lemma <reference|Suppose-that-sets> \ (with
    <math|N<rsub|0>=0>) implies that <math|\<lambda\>\<in\><big|cap><rsub|N\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>><around|(|A<rsub|N>\<cup\>C<rsub|N>|)>>.

    As <math|\<lambda\>\<in\>A<rsub|0>\<cup\>C<rsub|0>=A<rsub|0>>, we can
    write <math|\<lambda\>=-\<nu\>+q-N<rprime|'>> with
    <math|N<rprime|'>\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>>. Now, it
    should be that <math|\<lambda\>\<in\>A<rsub|N<rprime|'>+2>\<cup\>C<rsub|N<rprime|'>+2>>
    and hence <math|\<lambda\>\<in\>C<rsub|N<rprime|'>+2>> and thus
    <math|\<lambda\>=-\<nu\>+q-N<rprime|'>\<geq\>\<nu\>-q+N<rprime|'>+6>,
    thus <math|-N<rprime|'>-3\<ge\>\<nu\>-q\<ge\>0> (the rightmost inequality
    is implied by the hypothesis). The obtained contradiction ends the proof.
  </proof>

  <\proof>
    (of lem. <reference|Suppose-there-exists>) Recall the formula
    <math|\<Gamma\>*<around|(|t+n|)>=t<rsup|<around|(|n|)>>\<cdot\>\<Gamma\><around|(|t|)>>
    (here <math|t<rsup|<around|(|n|)>>\<assign\>t*<around|(|t+1|)>*\<ldots\>*<around|(|t+n-1|)>>
    denotes the rising factorial). It implies that
    <math|0=<big|sum><rsub|i=0><rsup|m>c<rsub|i>*\<Gamma\>*<around|(|\<alpha\>+i+k<rsub|n>|)>=\<Gamma\>*<around|(|\<alpha\>+k<rsub|n>|)>*<big|sum><rsub|i=0><rsup|m>c<rsub|i>*<around|(|\<alpha\>+k<rsub|n>|)><rsup|<around|(|i|)>>>.
    As <math|\<Gamma\>*<around|(|\<alpha\>+z|)>\<neq\>0> for, this implies
    that <math|\<forall\>n\<gtr\>N,<space|0.75spc><big|sum><rsub|i=0><rsup|m>c<rsub|i>*<around|(|\<alpha\>+k<rsub|n>|)><rsup|<around|(|i|)>>=0>
    and since the latter expression is a polynomial in <math|k<rsub|n>>, it
    implies that <math|\<forall\>x\<in\><with|math-font|Bbb|C>,<space|0.75spc><big|sum><rsub|i=0><rsup|m>c<rsub|i>*x<rsup|<around|(|n|)>>=0>
    and hence that all <math|c<rsub|i>> should vanish.
  </proof>

  <\proof>
    (of lemma <reference|For-,-we>) The last statement is obvious, as for
    <math|g\<in\>O*<around|(|p+1|)>\<times\>O*<around|(|q+1|)>\<subset\>O*<around|(|p+1,q+1|)>>
    and <math|x\<in\>\<Xi\><rsup|p+1,q+1>>we have
    <math|<around*|\||g\<cdot\>x|\|>=<around*|\||x|\|>>. Apart from this,
    there are several things to be checked:
  </proof>

  <\itemize>
    <item>It is true, that <math|<around*|(|\<pi\><rsub|\<lambda\>,K>,C<rsup|\<infty\>>*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><rsup|<with|math-font|Bbb|Z><rsub|2>>|)>>
    and <math|<around*|(|l<rsub|\<Xi\>>,C<rsub|-\<lambda\>><rsup|\<infty\>><around|(|\<Xi\><rsup|p+1,q+1>|)>|)>>
    are indeed <math|G>-representations. That's straightforward;

    <item>It is true that for <math|f\<in\>C<rsup|\<infty\>>*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><rsup|<with|math-font|Bbb|Z><rsub|2>>>
    function <math|<wide|f|~><around|(|x,y|)>> on <math|\<Xi\><rsup|p+1,q+1>>
    defined as <math|<wide|f|~><around|(|x,y|)>\<assign\><around*|\||x|\|><rsup|-\<lambda\>>*f<around*|[|<frac|<around|(|x,y|)>|<around*|\||x|\|>>|]>>
    is in <math|C<rsub|-\<lambda\>><rsup|\<infty\>><around|(|\<Xi\><rsup|p+1,q+1>|)>>.
    Indeed, <math|<wide|f|~><around|(|t\<cdot\><around|(|x,y|)>|)>=<around*|\||t|\|><rsup|-\<lambda\>><around*|\||x|\|><rsup|-\<lambda\>>*f*<around*|[|<frac|t|<around*|\||t|\|>>\<cdot\><frac|<around|(|x,y|)>|<around*|\||x|\|>>|]>>.
    Note that <math|t/<around*|\||t|\|>=\<pm\>1> and as
    <math|f\<in\>C<rsup|\<infty\>>*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><rsup|<with|math-font|Bbb|Z><rsub|2>>>,
    we have <math|<wide|f|~><around|(|t\<cdot\><around|(|x,y|)>|)>=<around*|\||t|\|><rsup|-\<lambda\>><around*|\||x|\|><rsup|-\<lambda\>>*f*<around*|[|<frac|t|<around*|\||t|\|>>\<cdot\><frac|<around|(|x,y|)>|<around*|\||x|\|>>|]>=<around*|\||t|\|><rsup|-\<lambda\>><around*|\||x|\|><rsup|-\<lambda\>>*f<around*|[|<frac|<around|(|x,y|)>|<around*|\||x|\|>>|]>=<around*|\||t|\|><rsup|-\<lambda\>><wide|f|~><around|(|x,y|)>>;

    <item>It is true that map <math|f\<mapsto\><wide|f|~>> is onto
    <math|C<rsub|-\<lambda\>><rsup|\<infty\>><around|(|\<Xi\><rsup|p+1,q+1>|)>>
    is <math|G>-covariant. That's also straightforward;

    <item>It is true that map <math|f\<mapsto\><wide|f|~>> is onto
    <math|C<rsub|-\<lambda\>><rsup|\<infty\>><around|(|\<Xi\><rsup|p+1,q+1>|)>>
    has an inverse. Indeed, given <math|<wide|f|~>\<in\>C<rsub|-\<lambda\>><rsup|\<infty\>><around|(|\<Xi\><rsup|p+1,q+1>|)>>
    define <math|f\<assign\><wide|f|~><mid|\|><rsub|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>>>.
    It is an element of <math|C*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><rsup|<with|math-font|Bbb|Z><rsub|2>>>
    and straightforward computations show that <math|<wide|f|~>\<mapsto\>f>
    forms a desired inverse.
  </itemize>

  <\proof>
    (of lemma <reference|Let--denote>) Recall that the <math|K>-finite
    vectors of <math|G\<supset\>K=O*<around|(|p+1|)>\<times\>Q*<around|(|q+1|)>>
    acting on <math|C<rsup|\<infty\>>*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)>>
    are given as <math|<big|sum><rsub|k,l=0><rsup|\<infty\>><with|math-font|cal|H><rsup|k><around|(|<with|math-font|Bbb|S><rsup|p>|)>\<otimes\><with|math-font|cal|H><rsup|l><around|(|<with|math-font|Bbb|S><rsup|q>|)>>
    (where <math|<big|sum>> denotes span), as explained in
    <cite|howe1993homogeneous>. As <math|C*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><rsup|<with|math-font|Bbb|Z><rsub|2>>>
    is a subrepresentation of <math|C*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)>>,
    <math|K>-finite vectors of <math|C*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><rsup|<with|math-font|Bbb|Z><rsub|2>>>
    are precisely the <math|K>-finite vectors of
    <math|C*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)>>
    that belong to <math|C*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><rsup|<with|math-font|Bbb|Z><rsub|2>>>.
    This proves the first item.

    For the second item, recall the <math|O<around|(|n|)>*\<downarrow\>*O*<around|(|n-1|)>>
    branching rule mentioned in <cite|kobayashi2015symmetry>, namely that

    <\equation*>
      <with|math-font|cal|H><rsup|L><around|(|<with|math-font|Bbb|S><rsup|n>|)>\<simeq\><big|oplus><rsub|N=0><rsup|L><with|math-font|cal|H><rsup|N><around|(|<with|math-font|Bbb|S><rsup|n-1>|)>
    </equation*>

    constructed explicitly with <math|I<rsub|N>:<with|math-font|cal|H><rsup|N><around|(|<with|math-font|Bbb|S><rsup|n-1>|)>\<to\><with|math-font|cal|H><rsup|L><around|(|<with|math-font|Bbb|S><rsup|n>|)>>
    given by

    <\equation*>
      <around|(|I<rsub|N>*\<psi\>|)><around|(|\<eta\><rsub|0>,\<eta\>|)>\<assign\><around*|\||\<eta\>|\|><rsup|-N>*\<psi\><around*|(|<frac|\<eta\>|<around*|\||\<eta\>|\|>>|)>*<wide|<wide|C|~>|~><rsub|L-N><rsup|<frac|n-1|2>+N><around|(|\<eta\><rsub|0>|)>.
    </equation*>

    Hence, we see that

    <\equation*>
      S=<big|sum><rsub|<around*|{|<around|(|L,K|)>\<in\><with|math-font|Bbb|Z><rsub|\<ge\>0><rsup|2><mid|\|>K+L\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>|}>><with|math-font|cal|H><rsup|L><around|(|<with|math-font|Bbb|S><rsup|p>|)>\<otimes\><with|math-font|cal|H><rsup|K><around|(|<with|math-font|Bbb|S><rsup|q>|)>=
    </equation*>

    <\equation*>
      =<big|sum><rsub|<around*|{|<around|(|L,K|)>\<in\><with|math-font|Bbb|Z><rsub|\<ge\>0><rsup|2><mid|\|>K+L\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>|}>><big|sum><rsub|N,M=0><rsup|L,K><around*|\||\<eta\>|\|><rsup|N>*<with|math-font|cal|H><rsup|N><around*|(|<frac|\<eta\>|<around*|\||\<eta\>|\|>>|)>*<wide|<wide|C|~>|~><rsub|L-N><rsup|<frac|p-1|2>+N><around|(|\<eta\><rsub|0>|)><around*|\||\<xi\>|\|><rsup|M>*<with|math-font|cal|H><rsup|M><around*|(|<frac|\<xi\>|<around*|\||\<xi\>|\|>>|)>*<wide|<wide|C|~>|~><rsub|K-M><rsup|<frac|q-1|2>+M><around|(|\<xi\><rsub|0>|)>=
    </equation*>

    <\equation*>
      =<big|sum><rsub|N,M=0><rsup|\<infty\>><big|sum><rsub|<around*|{|n<rprime|'>,m<rprime|'>\<ge\>0<mid|\|>N+M+n<rprime|'>+m<rprime|'>\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>|}>><around*|\||\<eta\>|\|><rsup|N>*<with|math-font|cal|H><rsup|N><around*|(|<frac|\<eta\>|<around*|\||\<eta\>|\|>>|)>*<wide|<wide|C|~>|~><rsub|n<rprime|'>><rsup|<frac|p-1|2>+N><around|(|\<eta\><rsub|0>|)><around*|\||\<xi\>|\|><rsup|M>*<with|math-font|cal|H><rsup|M><around*|(|<frac|\<xi\>|<around*|\||\<xi\>|\|>>|)>*<wide|<wide|C|~>|~><rsub|m<rprime|'>><rsup|<frac|q-1|2>+M><around|(|\<xi\><rsub|0>|)>=
    </equation*>

    <\equation*>
      =<big|sum><rsub|N,M=0><rsup|\<infty\>><big|sum><rsub|<around*|{|n<rprime|'>,m<rprime|'>\<ge\>0<mid|\|>N+M+n<rprime|'>+m<rprime|'>\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>|}>><around*|\||\<eta\>|\|><rsup|N>*<with|math-font|cal|H><rsup|N><around*|(|<frac|\<eta\>|<around*|\||\<eta\>|\|>>|)>*\<eta\><rsub|0><rsup|n<rprime|'>><around*|\||\<xi\>|\|><rsup|M>*<with|math-font|cal|H><rsup|M><around*|(|<frac|\<xi\>|<around*|\||\<xi\>|\|>>|)>*\<xi\><rsub|0><rsup|m<rprime|'>>.
    </equation*>

    The last equality holds true because <math|<wide|<wide|C<rsub|m><rsup|\<nu\>>|~>|~>>
    are polynomials of degree <math|m> whose highest term does not vanish,
    unless <math|\<nu\>\<in\><with|math-font|Bbb|Z><rsub|\<less\>0>>.
  </proof>

  <\bibliography|bib|plain|todai_master.bib>
    <\bib-list|1>
      <bibitem*|1><label|bib-howe1993homogeneous>Roger<nbsp>E Howe and
      Eng-Chye Tan. <newblock>Homogeneous functions on light cones: the
      infinitesimal structure of some degenerate principal series
      representations. <newblock><with|font-shape|italic|Bulletin of the
      American Mathematical Society>, 28(1):1--74, 1993.

      <bibitem*|2><label|bib-Kobayashi201489>Toshiyuki Kobayashi and Birgit
      Speh. <newblock>Intertwining operators and the restriction of
      representations of rank-one orthogonal groups.
      <newblock><with|font-shape|italic|Comptes Rendus Mathematique>,
      352(2):89 -- 94, 2014.

      <bibitem*|3><label|bib-kobayashi2015symmetry>Toshiyuki Kobayashi and
      Birgit Speh. <newblock>Symmetry breaking for representations of rank
      one orthogonal groups. <newblock><with|font-shape|italic|Memoirs of the
      American Mathematical Society>, 238(1126), 2015.
    </bib-list>
  </bibliography>
</body>

<\references>
  <\collection>
    <associate|Assume-that-1|<tuple|3|1>>
    <associate|Assume-that-2|<tuple|4|1>>
    <associate|Assume-that-3|<tuple|5|2>>
    <associate|Assume-that-4|<tuple|6|2>>
    <associate|For-,-we|<tuple|8|2>>
    <associate|Let--denote|<tuple|9|2>>
    <associate|On-the-|<tuple|1|1>>
    <associate|Suppose-that-sets|<tuple|10|2>>
    <associate|Suppose-there-exists|<tuple|7|2>>
    <associate|The-following-holds|<tuple|2|1>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|\<bullet\>>|7>>
    <associate|bib-Kobayashi201489|<tuple|2|7>>
    <associate|bib-howe1993homogeneous|<tuple|1|7>>
    <associate|bib-kobayashi2015symmetry|<tuple|3|7>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnr-1|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      kobayashi2015symmetry

      Kobayashi201489

      kobayashi2015symmetry

      kobayashi2015symmetry

      howe1993homogeneous

      kobayashi2015symmetry
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Settings
      and Notations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Statements>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Proofs>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>