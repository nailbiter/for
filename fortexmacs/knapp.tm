<TeXmacs|1.0.7.18>

<style|<tuple|article|std-counter|number-us>>

<\body>
  <section|Prehomogeneous vector spaces>

  <with|font-series|bold|Setting.> <math|G>: connected complex Lie group.\ 

  <\definition*>
    Let <math|G> be holomorphically acting on complex f.d. vect. sp.
    <math|<around*|(|\<varphi\>,V|)>> such that there is an open orbit. We
    then say <math|V> is <with|font-series|bold|prehomogeneous vector space>.
  </definition*>

  <\remark*>
    Equivalently, for some <math|v\<in\>V> we have
    <math|Lie<around*|(|G|)>\<ni\>X\<mapsto\>\<varphi\><around*|(|X|)>v\<in\>V>
    being onto.
  </remark*>

  <\proposition>
    <label|1>If <math|V> is prehomogeneous vector space, the open orbit is
    unique, connected and dense.
  </proposition>

  <\proof>
    Let <math|v<rsub|0>> have open orbit and <math|A<rsub|v<rsub|0>>> matrix
    of <math|Lie<around*|(|G|)>\<ni\>X\<mapsto\>\<varphi\><around*|(|X|)>v<rsub|0>\<in\>V>
    of size <math|dim<around*|(|G|)>\<times\>dim<around*|(|V|)>>, which
    should have rank <math|=dim<around*|(|V|)>> and hence has some
    <math|dim<around*|(|V|)>\<times\>dim*<around*|(|V|)>> minor nonzero. Now,
    for <math|F> on <math|V> defined as tuple of all determinants of all
    <math|dim<around*|(|V|)>\<times\>dim*<around*|(|V|)>> minors of
    <math|A<rsub|v>>, we have <math|F<around*|(|v<rsub|0>|)>\<neq\>0> and
    <math|F> is holomorphic, hence <math|<around*|{|F\<neq\>0|}>> is open,
    dense, connected.

    Now, <math|<around*|{|F\<neq\>0|}>> is <math|G>-orbit, as
    <math|\<varphi\><around*|(|\<frak-g\>|)>\<varphi\><around*|(|g|)>v=\<varphi\><around*|(|g|)>\<varphi\><around*|(|Ad<around*|(|g|)>\<frak-g\>|)>v=\<varphi\><around*|(|g|)>V>.
  </proof>

  <\proposition>
    Let <math|G> be complexification of compact <math|U>, let <math|V> be
    prehomogeneous, <math|v<rsub|0>\<in\>V> has open orbit and
    <math|U<rsub|v<rsub|0>>\<assign\>Stab<around*|(|U\<curvearrowright\>V,v<rsub|0>|)>>.
    Then <math|S<around*|(|V|)>\<hookrightarrow\>L<rsup|2><around*|(|U/U<rsub|v<rsub|0>>|)>>
    <math|U>-equivariantly.
  </proposition>

  <\remark*>
    Hence <math|\<forall\>\<tau\>\<in\><wide|U|^>> we have
    <math|m<around*|(|S<around*|(|V|)>,\<tau\>|)>\<leqslant\>dim<around*|(|\<tau\>|)>>.
  </remark*>

  <\proof>
    Enough to embed <math|P<around*|(|V|)>> (as
    <math|f\<mapsto\><wide|f|\<bar\>>> brings subspaces of <math|L<rsup|2>>
    to contragredients). For <math|p\<in\>P<around*|(|V|)>>, let
    <math|<wide|p|~>:U\<ni\>g\<mapsto\>p<around*|(|g
    v<rsub|0>|)>\<in\>\<bbb-C\>>. Then <math|p\<mapsto\><wide|p|~>> is
    one-to-one and <math|<wide|p|~>\<in\>L<rsup|2><around*|(|U/U<rsub|v<rsub|0>>|)>>.
  </proof>

  <\theorem>
    <label|malcev-kostant>If <math|\<frak-g\>> is ss. <math|/\<bbb-C\>> and
    <math|e\<in\>\<frak-g\>> is nilpotent, then <math|\<exists\>h\<in\>ad
    e<around*|(|\<frak-g\>|)>> such that <math|<around*|[|h,e|]>=2e> and for
    any such <math|h\<neq\>0> there is <math|f> such that
    <math|<around*|(|h,e,f|)>> is <math|sl<rsub|2>>-triple (that is,
    <math|<around*|[|h,e|]>=2e>, <math|<around*|[|h,f|]>=-2f> and
    <math|<around*|[|e,f|]>=h>).
  </theorem>

  <\lemma>
    <label|4>If <math|V> is f.d. <math|\<bbb-C\>>-vect. sp and
    <math|A,B\<in\>Hom<around*|(|V|)>> such that <math|A>:nilpo and
    <math|<around*|[|A<around*|[|A B|]>|]>=0>, then <math|A B>:nilpo.
  </lemma>

  <\proof>
    Let <math|C=<around*|[|A B|]>>. Then <math|<around*|[|A,C|]>=0> and
    <math|<around*|[|A,B C<rsup|n>|]>=C<rsup|n+1>>, hence
    <math|tr<around*|(|C<rsup|p>|)>=0> for <math|p\<gtr\>0>. Claim that
    <math|C>:nilpo. Assume <math|<around*|{|\<lambda\><rsub|i>|}>> be
    e-values of <math|C>, we then have <math|0=<big|sum><rsub|i>\<lambda\><rsub|i><rsup|p>>
    for <math|p\<gtr\>0>, hence by Vandermonde matrix
    <math|\<forall\>\<lambda\><rsub|i>=0>. This gives claim.

    Now, we have <math|<around*|[|B,A<rsup|n>|]>=n<around*|[|B,A|]>A<rsup|n-1>>
    and we can take <math|r> such that <math|A<rsup|r>v=0> and
    <math|A<rsup|r-1>v\<neq\>0>. Then, for <math|\<lambda\>> e-value of
    <math|A B>

    <\equation*>
      \<lambda\>A<rsup|r-1>v=A<rsup|r>B v=<around*|[|B,A<rsup|r>|]>v=-r<around*|[|B,A|]>A<rsup|r-1>v,
    </equation*>

    hence <math|-\<lambda\>/r> is e-value of <math|<around*|[|B,A|]>> and
    thus <math|\<lambda\>=0>.
  </proof>

  <\proof>
    (of theorem <reference|malcev-kostant>) Let
    <math|z\<in\>\<frak-n\>\<assign\>ker<around*|(|ad<rsup|2><around*|(|e|)>|)>>
    and apply lemma <reference|4> to <math|A=ad<around*|(|e|)>>,
    <math|B=ad<around*|(|z|)>> we have <math|tr<around*|(|ad<around*|(|e|)><around*|(|ad<around*|(|z|)>|)>|)>=0=B<around*|(|e,z|)>>,
    hence <math|e\<perp\>\<frak-n\>\<nosymbol\>>. Also, non-degeneracy and
    invariance of <math|B> imply that <math|\<frak-n\>\<supseteq\>ad<rsup|2><around*|(|e|)><around*|(|\<frak-g\>|)><rsup|\<perp\>>>
    and <math|ad<rsup|2><around*|(|e|)><around*|(|\<frak-g\>|)>\<subseteq\>\<frak-n\><rsup|\<perp\>>>,
    hence <math|ad<rsup|2><around*|(|e|)><around*|(|\<frak-g\>|)>=\<frak-n\><rsup|\<perp\>>\<ni\>e>.
    Thus, <math|e=ad<rsup|2><around*|(|e|)>x>. Take
    <math|h:=-2<around*|[|e,x|]>>. This gives existence.

    We then show existence of <math|f> for given <math|h>. We take
    <math|\<frak-k\>\<assign\>ker<around*|(|ad<around*|(|e|)>|)>> and
    <math|z> such that <math|h=-<around*|[|e,z|]>>. It then suffices to show
    that <math|ad<around*|(|h|)><mid|\|><rsub|\<frak-k\>>> has only
    non-negative eigenvalues (as then <math|ad<around*|(|e|)>+2<mid|\|><rsub|\<frak-k\>>>
    is invertible, <math|<around*|[|h,z|]>+2z\<in\>\<frak-k\>> and we can let
    <math|z<rprime|'>\<assign\><around*|(|ad<around*|(|e|)>+2|)><rsup|-1><around*|(|<around*|[|h,z|]>+2z|)>\<in\>\<frak-k\>>;
    we then let <math|f\<assign\>z<rprime|'>-z>).\ 

    We take <math|N> so that <math|ad<rsup|N><around*|(|e|)><around*|(|\<frak-g\>|)>=0>
    and it suffices to show <math|\<Pi\><rsub|p=0><rsup|N-1><around*|(|ad
    h-p|)><around*|(|\<frak-k\>|)>=0>. It suffices to show
    <math|<around*|[|ad<around*|(|h|)>-<around*|(|n-1|)>|]><around*|(|\<frak-k\>
    \<cap\>ad<rsup|n-1><around*|(|e|)><around*|(|\<frak-g\>|)>|)>\<subset\>\<frak-k\>
    \<cap\>ad<rsup|n><around*|(|e|)><around*|(|\<frak-g\>|)>>. So let
    <math|v\<in\>\<frak-k\> \<cap\>ad<rsup|n-1><around*|(|e|)><around*|(|\<frak-g\>|)>>.
    It is then clear that <math|<around*|[|ad<around*|(|h|)>-<around*|(|n-1|)>|]>v\<in\>\<frak-k\>>.
    Next, the identity

    <\equation*>
      n<around*|(|ad h-<around*|(|n-1|)>|)><around*|(|ad
      e|)><rsup|n-1>=<around*|(|ad z|)><around*|(|ad
      e|)><rsup|n>-<around*|(|ad e|)><rsup|n><around*|(|ad z|)>
    </equation*>

    applied to <math|u> with <math|v=ad<rsup|n-1><around*|(|e|)>u\<in\>ad<rsup|n-1><around*|(|e|)><around*|(|\<frak-g\>|)>\<cap\>\<frak-k\>>
    implies that <math|n<around*|(|ad h-<around*|(|n-1|)>|)>v\<in\>ad<rsup|n><around*|(|e|)><around*|(|\<frak-g\>|)>>.

    Finally, we show the uniqueness of <math|f>. Suppose <math|f<rprime|'>>
    exists with <math|<around*|[|h,f<rprime|'>|]>=-2f<rprime|'>> and
    <math|<around*|[|e,f<rprime|'>|]>=h>. Then, for
    <math|\<frak-s\>\<assign\>\<bbb-C\><around*|{|h,e,f|}>\<simeq\>\<frak-s\>\<frak-l\><rsub|2>>
    we have full reducibility of <math|\<frak-s\>>-module
    <math|\<frak-g\>=<big|oplus><rsub|i>V<rsub|i>\<oplus\>\<frak-s\><around*|(|=:V<rsub|0>|)>>
    and as <math|<around*|[|h,f<rprime|'>|]>=-2f<rprime|'>> we have for
    decomposition <math|f<rprime|'>=<big|sum><rsub|i>f<rsub|i><rprime|'>>,
    <math|<around*|[|h,f<rprime|'><rsub|i>|]>=-2f<rsub|i><rprime|'>> and as
    <math|V<rsub|0>\<ni\>h=<around*|[|e,f<rprime|'>|]>=<big|sum><rsub|i><around*|[|e,f<rsub|i><rprime|'>|]>>,
    we have for <math|i\<neq\>0>, <math|<around*|[|e,f<rsub|i><rprime|'>|]>=0>
    and <math|<around*|[|h,f<rsub|i><rprime|'>|]>=-2f<rprime|'>> which is a
    contradiction. Hence, <math|f<rprime|'>=f<rsub|0><rprime|'>\<in\>\<frak-s\>>
    and we are done.
  </proof>

  <inc-theorem><inc-theorem><inc-theorem><inc-theorem><inc-theorem>

  <\theorem>
    Let <math|G>: cpx. ss. Lie, <math|<around*|(|h<rsub|0>,e<rsub|0>,f<rsub|0>|)>\<in\>\<frak-g\><rsup|\<times\>3>>
    an sl2-triple, <math|\<frak-g\><rsup|k>\<assign\><around*|{|X\<in\>\<frak-g\><mid|\|><around*|[|h<rsub|0>,X|]>=k
    X|}>> and <math|G<rsub|0>\<assign\>Anal<around*|(|G,\<frak-g\><rsub|0>|)>>.
    Then, for <math|\<Omega\>\<assign\><around*|{|e\<in\>\<frak-g\><rsup|2><mid|\|>ad<around*|(|e|)>\<frak-g\><rsub|0>=\<frak-g\><rsub|2>|}>>
    we have

    <\enumerate-alpha>
      <item><math|\<Omega\>\<ni\>e<rsub|0>>;

      <item><math|\<Omega\>\<subset\>\<frak-g\><rsup|2>> is open, dense and
      connected;

      <item><math|\<Omega\>> is <math|G<rsub|0>>-orbit;

      <item><math|\<Omega\>=<around*|{|e\<in\>\<frak-g\><rsup|2><mid|\|>can
      be included in sl2-triple <around*|(|h<rsub|0>,e,\<exists\>f|)>|}>>.
    </enumerate-alpha>

    In particular, <math|G\<curvearrowright\>\<frak-g\><rsup|2>> is
    prehomogeneous.
  </theorem>

  <\proof>
    By complete reducibility of <math|\<bbb-C\><around*|{|h<rsub|0>,e<rsub|0>,f<rsub|0>|}>\<simeq\>\<frak-s\>\<frak-l\><rsub|2>>-module
    <math|\<frak-g\>=<big|oplus><rsub|i>V<rsub|i>> and the fact that
    <math|ad<around*|(|h|)>:V<rsub|i>\<rightarrow\>V<rsub|i>>, we have
    <math|\<forall\>\<frak-g\><rsup|k>=<big|oplus><rsub|i><around*|(|V<rsub|i>\<cap\>\<frak-g\><rsup|k>|)>>
    and as <math|ad<around*|(|e|)><around*|(|V<rsub|i>\<cap\>\<frak-g\><rsup|0>|)>=V<rsub|i>\<cap\>\<frak-g\><rsup|2>>,
    we have a). It then follows by proposition <reference|1> that
    <math|G<rsub|0>e<rsub|0>\<subset\>\<frak-g\><rsup|2>> is open, dense,
    connected.\ 

    We also see that <math|\<Omega\>> is <math|G<rsub|0>>-invariant and
    <math|x\<in\>\<Omega\>\<Rightarrow\>G<rsub|0>x> is open, hence
    <math|\<Omega\>=G<rsub|0>e<rsub|0>>, thus b) and c).\ 

    Finally, we show d). <math|\<supseteq\>> is clear by argument above.
    <math|\<subseteq\>> is clear, as <math|e\<in\>\<Omega\>\<Rightarrow\>\<exists\>g\<in\>G<rsub|0>:Ad<around*|(|g|)>e<rsub|0>=e>
    and the sl2-triple is then <math|<around*|(|Ad<around*|(|g|)>h<rsub|0>,e,Ad<around*|(|g|)>f<rsub|0>|)>>
    and <math|Ad<around*|(|g|)>h<rsub|0>=h<rsub|0>>.
  </proof>

  <inc-theorem>

  <\proposition>
    Let <math|*\<frak-g\>> be cpx. ss. Lie, <math|\<frak-h\>>:Cartan and
    <math|<around*|(|h\<in\>\<frak-h\>,e,f|)>> an sl2-triple. Then, in
    suitable system of positive roots we have
    <math|\<beta\><around*|(|h|)>\<in\><around*|{|0,1,2|}>> for every simple
    <math|\<beta\>>.
  </proposition>

  <\proof>
    Complete reducibility of <math|\<frak-g\>=<big|oplus><rsub|i>V<rsub|i>>
    implies <math|ad<around*|(|h|)>> has integer eigenvalues, hence lies in
    <math|\<frak-h\><rsub|0>\<subset\>\<frak-h\>> real form on which or roots
    are real, hence we can take <math|h> as first member of basis of
    <math|\<frak-h\><rsub|0>> and define positivity accordingly, so for every
    positive <math|\<alpha\>> we have <math|\<alpha\><around*|(|h|)>\<in\>\<bbb-Z\><rsub|\<geqslant\>0>>,
    so it remains to show that for simple <math|\<alpha\>>,
    <math|\<alpha\><around*|(|h|)>\<geqslant\>3> cannot happen.

    So we assume <math|\<alpha\><around*|(|h|)>=n\<geqslant\>3>. Decompose
    <math|X<rsub|\<alpha\>>=<big|sum><rsub|i>X<rsub|i>> and we see
    <math|<around*|[|h,X<rsub|i>|]>=n> if <math|X<rsub|i>\<neq\>0> and as
    <math|n\<geqslant\>1>, we have <math|<around*|[|f,X<rsub|i>|]>\<neq\>0>
    and hence <math|<around*|[|f,X|]>\<neq\>0> and writing
    <math|f=<big|sum><rsub|\<gamma\><mid|\|>-\<gamma\><around*|(|h|)>=-2>X<rsub|-\<gamma\>>>
    we have <math|<around*|[|X<rsub|-\<gamma\>>,X<rsub|\<alpha\>>|]>\<neq\>0>
    for some <math|\<gamma\>>. Hence, for
    <math|\<beta\>\<assign\>\<alpha\>-\<gamma\>>:root (as
    <math|0\<neq\><around*|[|X<rsub|-\<gamma\>>,X<rsub|\<alpha\>>|]>\<in\>\<frak-g\><rsup|\<beta\>>>)
    have <math|\<beta\><around*|(|h|)>=n-2\<gtr\>0>, hence
    <math|\<alpha\>=\<beta\>+\<gamma\>> is not simple.
  </proof>

  <inc-theorem>

  <\proposition>
    Let <math|\<frak-g\>>: cpx ss. Lie, <math|\<frak-h\>\<subset\>\<frak-g\>>:
    Cartan and <math|\<frak-s\>\<subset\>\<frak-h\>>: subspace. Then,
    <math|Z<rsub|\<frak-g\>><around*|(|\<frak-s\>|)>> is Levi of some
    parabolic, hence reductive.
  </proposition>

  <\proof>
    <math|Z<rsub|\<frak-g\>><around*|(|\<frak-s\>|)>\<supset\>\<frak-h\>>,
    hence is stable under <math|ad<around*|(|\<frak-h\>|)>>, hence is of the
    form <math|\<frak-h\>\<oplus\><big|oplus><rsub|\<alpha\>\<in\>\<Psi\>>\<frak-g\><rsup|\<alpha\>>>
    and we have <math|\<Psi\>=<around*|{|\<alpha\>:root<mid|\|>\<alpha\><mid|\|><rsub|\<frak-s\>>=0|}>>.
    Moreover for <math|\<frak-h\><rsub|0>\<subset\>\<frak-h\>> real form
    where all roots are real and bar denoting conjugation about it, we have
    <math|\<alpha\>\<in\>\<Psi\>\<Rightarrow\>\<alpha\><mid|\|><rsub|<wide|\<frak-s\>|\<bar\>>>=0\<Rightarrow\>\<alpha\><mid|\|><rsub|\<frak-t\>>=0>
    where <math|\<frak-t\>\<assign\>\<frak-s\>+<wide|\<frak-s\>|\<bar\>>> is
    the complexification of <math|\<frak-t\><rsub|0>\<subset\>\<frak-h\><rsub|0>>
    and hence <math|\<Psi\>=<around*|{|\<alpha\>:root<mid|\|>\<alpha\><mid|\|><rsub|\<frak-t\><rsub|0>>=0|}>>.
    We take orthogonal basis of <math|\<frak-h\><rsub|0>> consisting of that
    of <math|\<frak-t\><rsub|0>> followed by that of
    <math|\<frak-t\><rsub|0><rsup|\<perp\>>>, and let <math|\<Pi\><rprime|'>>
    be simple roots that vanish on <math|\<frak-t\><rsub|0>>. Then, if
    <math|\<alpha\>=<big|sum><rsub|i\<in\>\<Pi\>>n<rsub|i>\<alpha\><rsub|i>\<in\>\<Psi\>>
    is positive root expanded in simple, then
    <math|n<rsub|i>\<gtr\>0\<Rightarrow\>\<alpha\><rsub|i>\<in\>\<Pi\><rprime|'>>
    (<math|0=\<alpha\><mid|\|><rsub|\<frak-t\>>=<big|sum><rsub|i\<in\>\<Pi\>-\<Pi\><rprime|'>>n<rsub|i>\<alpha\><rsub|i><mid|\|><rsub|\<frak-t\>>>
    and apply this to ortho-basis of <math|\<frak-t\><rsub|0>> chosen to
    define positivity).

    Hence, <math|\<Psi\>=span<around*|(|\<Pi\><rprime|'>|)>> and
    <math|Z<rsub|\<frak-g\>><around*|(|\<frak-s\>|)>> is Levi for parabolic
    w.r.t. <math|\<Pi\><rprime|'>>.
  </proof>

  <\definition*>
    Let <math|\<frak-g\>> be cpx. ss. Lie with <math|\<frak-b\>> Borel
    induced by <math|\<Pi\>\<subset\>\<Pi\><rprime|'>> and fix the map
    <math|\<Pi\>-\<Pi\><rprime|'>\<ni\>\<beta\>\<mapsto\>m<rsub|\<beta\>>\<in\>\<bbb-Z\><rsub|\<gtr\>0>>.
    We then take <math|H\<in\>\<frak-h\>> such that

    <\equation*>
      \<beta\><around*|(|H|)>=<choice|<tformat|<table|<row|<cell|0,>|<cell|\<beta\>\<in\>\<Pi\><rprime|'>>>|<row|<cell|m<rsub|\<beta\>>,>|<cell|\<beta\>\<in\>\<Pi\>-\<Pi\><rprime|'>>>>>>,
    </equation*>

    and let <math|\<frak-g\><rsup|0>\<assign\>\<frak-h\>\<oplus\><big|oplus><rsub|\<alpha\>\<in\>\<Delta\><mid|\|>\<alpha\><around*|(|H|)>=0>\<frak-g\><rsup|\<alpha\>>>
    and <math|\<frak-g\><rsup|k>\<assign\><big|oplus><rsub|\<alpha\>\<in\>\<Delta\><mid|\|>\<alpha\><around*|(|H|)>=k>\<frak-g\><rsup|\<alpha\>>>
    for <math|k\<in\>\<bbb-Z\>>. We then have grading on <math|\<frak-g\>>,
    which we call <with|font-series|bold|grading associated to
    <math|\<frak-b\>,<around*|{|m<rsub|\<beta\>>|}>>>.
  </definition*>

  <\lemma>
    <label|15>Let <math|\<frak-g\>=<big|oplus><rsub|k>\<frak-g\><rsup|k>> be
    graded cpx. ss. Lie. Then <math|\<exists\>H\<in\>\<frak-g\><rsup|0>> such
    that <math|\<frak-g\><rsup|k>=<around*|{|X\<in\>\<frak-g\><mid|\|><around*|[|H,X|]>=k
    X|}>>.
  </lemma>

  <\proof>
    Define <math|D:\<frak-g\>\<rightarrow\>\<frak-g\>> via
    <math|D<mid|\|><rsub|\<frak-g\><rsup|k>>:X\<mapsto\>k X>. The computation
    shows that this is derivation, hence semisimplicity implies that
    <math|D<around*|(|X|)>=<around*|[|H,X|]>> for some
    <math|H\<in\>\<frak-g\>>. As <math|<around*|[|H,H|]>=0\<nocomma\>>,
    <math|H\<in\>\<frak-g\><rsup|0>>.
  </proof>

  <\proposition>
    Let <math|\<frak-g\>=<big|oplus><rsub|i>\<frak-g\><rsup|i>> be graded
    cpx. ss. Lie. Then the grading is associated to some
    <math|\<frak-b\>,<around*|{|m<rsub|\<beta\>>|}>>.
  </proposition>

  <\corollary>
    <math|\<frak-g\><rsup|0>> is always reductive.
  </corollary>

  <\proof>
    For <math|H> as in Lemma <reference|15>, <math|ad<around*|(|H|)>> is
    diagonable, hence <math|H\<in\>\<exists\>\<frak-h\>>: Cartan. Moreover,
    as <math|ad<around*|(|H|)>> has real e-values,
    <math|H\<in\>\<frak-h\><rsub|0>> and we can extend <math|H> to orthonal
    basis and define positivity on <math|\<Delta\>> relatively. Then, for
    simple roots <math|\<Pi\>> we let <math|\<Pi\><rprime|'>\<assign\><around*|{|\<alpha\>\<in\>\<Pi\><mid|\|>\<alpha\><around*|(|H|)>=0|}>>
    and for <math|\<beta\>\<in\>\<Pi\>-\<Pi\><rprime|'>> we let
    <math|m<rsub|\<beta\>>\<assign\>\<beta\><around*|(|H|)>\<in\>\<bbb-Z\><rsub|\<gtr\>0>>
    (due to ordering). The given grading is the associated to given data.
  </proof>

  <\proposition>
    <label|18>Let <math|\<frak-g\>=<big|oplus><rsub|i>\<frak-g\><rsup|i>> be
    graded cpx. ss. Lie and <math|0\<neq\>e\<in\>\<frak-g\><rsup|1>>. Then
    there are <math|<around*|(|h,f|)>\<in\>\<frak-g\><rsup|0>\<times\>\<frak-g\><rsup|-1>>
    such that <math|<around*|(|h,e,f|)>> is sl2-triple.
  </proposition>

  <\proof>
    <math|ad<around*|(|e|)>> is nilpotent, hence theorem
    <reference|malcev-kostant> implies the existence of
    <math|<around*|(|h<rprime|'>,e,f<rprime|'>|)>>. We write
    <math|h<rprime|'>=<big|sum>h<rprime|'><rsub|k>,<space|0.6spc>f<rprime|'>=<big|sum>f<rprime|'><rsub|k>>.
    But <math|2e=<around*|[|h,e|]>=<big|sum><rsub|i><around*|[|h<rsub|k><rprime|'>,e|]>>
    and we see <math|<around*|[|h<rsub|0><rprime|'>,e|]>=2e> and
    <math|<around*|[|h<rsub|k><rprime|'>,e|]>=0> for <math|k\<neq\>0> and as
    <math|<big|sum><around*|[|e,f<rprime|'><rsub|k>|]>=<big|sum>h<rsub|k><rprime|'>>,
    we have <math|<around*|[|e,f<rprime|'><rsub|-1>|]>=h<rsub|0><rprime|'>>
    and thus <math|h<rsub|0><rprime|'>\<in\>ad<around*|(|e|)>\<frak-g\>> and
    hence theorem <reference|malcev-kostant> implies
    <math|<around*|(|h<rsub|0><rprime|'>,e,\<exists\>f<rprime|''>|)>> is
    sl2-triple. But then we have <math|<around*|[|e,f<rprime|''><rsub|-1>|]>=h<rsub|0><rprime|'>>
    and <math|<around*|[|h<rsub|0><rprime|'>,f<rsub|-1><rprime|''>|]>=-2f<rsub|-1><rprime|''>>
    and hence <math|<around*|(|h<rsub|0><rprime|'>,e,f<rprime|''><rsub|-1>|)>>
    is required triple.
  </proof>

  <\theorem>
    <label|19>(Vinberg) Suppose <math|G> be cpx. ss. with
    <math|\<frak-g\>=<big|oplus><rsub|i>\<frak-g\><rsup|i>> graded and
    <math|G<rsup|0>\<assign\>Anal<around*|(|G,\<frak-g\><rsup|0>|)>>. Then
    <math|G\<curvearrowright\>\<frak-g\><rsup|1>> is homogeneous.
  </theorem>

  <\proof>
    Suffices to show that number of orbits in
    <math|G\<curvearrowright\>\<frak-g\><rsup|1>> is finite. We fix
    <math|\<frak-h\>\<subset\>\<frak-g\><rsup|0>>: Cartan. We let\ 

    <\equation*>
      F\<assign\><around*|{|<around*|(|\<frak-l\>,\<Pi\>,h|)><mid|\|>\<frak-g\>\<supset\>\<frak-l\>\<supset\>\<frak-h\>:Levi;\<Pi\>:simple
      system;h\<in\>\<frak-h\>,s.t.\<forall\>\<alpha\>\<in\>\<Pi\>,\<alpha\><around*|(|h|)>\<in\><around*|{|0,1,2|}>|}>.
    </equation*>

    We see that <math|F> is finite, hence it suffices to construct a map
    <math|\<frak-g\><rsup|0>\<rightarrow\>F> such that if two elements have
    same image, they have are in the same orbit.

    So we take <math|e\<in\>\<frak-g\><rsup|1>> and let
    <math|<around*|(|h,e,f|)>\<in\>\<frak-g\><rsup|0>\<times\>\<frak-g\><rsup|1>\<times\>\<frak-g\><rsup|-1>>
    be as in proposition <reference|18> and write
    <math|\<frak-s\>\<frak-l\><rsub|2>> for its span. Lemma <reference|15>
    also implies existence of <math|H\<in\>\<frak-g\><rsup|0>> which induces
    our grading. Among all abelain subalgabras of
    <math|Z<rsub|\<frak-g\><rsup|0><rsup|>><around*|(|\<frak-s\>\<frak-l\><rsub|2>|)>>
    whose members <math|T> have <math|ad<around*|(|T|)>> diagonable, let
    <math|\<frak-t\>> be a maximal one. The subalgebra
    <math|<wide|\<frak-t\>|~>\<assign\>\<frak-t\>\<oplus\>\<bbb-C\>h\<subset\>\<frak-g\><rsup|0>>
    is then abelian and <math|H> commutes with every member of
    <math|<wide|\<frak-t\>|~>> (as <math|\<frak-t\>\<subset\>\<frak-g\><rsup|0>>),
    hence so does <math|H-2h>. Also <math|h-2H> centralizes <math|e,h>, hence
    also <math|f>; also <math|ad<around*|(|h-2H|)>> is diagonable, hence
    <math|h-2H\<in\>\<frak-t\>> and <math|h=2H+T<rsub|0>,
    T<rsub|0>\<in\>\<frak-t\>>. We also see that as
    <math|<around*|[|H,\<frak-h\><rprime|'>|]>=0>, we have
    <math|\<frak-h\><rprime|'>\<subset\>\<frak-g\><rsup|0>>.

    We can then extend <math|<wide|\<frak-t\>|~>> to Cartan
    <math|\<frak-h\><rprime|'>>. Now, as <math|\<frak-h\>,\<frak-h\><rprime|'>\<subset\>\<frak-g\><rsup|0>>
    are both Cartan, we have <math|\<frak-h\>=Ad<around*|(|g|)>\<frak-h\><rprime|'>>
    for some <math|g\<in\>G<rsup|0>> and we see that if we started from
    <math|<around*|(|h,Ad<around*|(|g|)>e,Ad<around*|(|g|)>f|)>> and
    <math|Ad<around*|(|g|)>H=H>, we would arrive at <math|\<frak-h\>>. We
    thus may assume that <math|\<frak-h\><rprime|'>=\<frak-h\>> from the
    outset.\ 

    We let <math|\<frak-z\>=Z<rsub|\<frak-g\>><around*|(|\<frak-t\>|)>> and
    by proposition 14 we see that <math|\<frak-z\>> is Levi and
    <math|\<frak-s\>\<frak-l\><rsub|2>\<subset\>\<frak-z\>>. We see that
    grading of <math|\<frak-g\>> induces that of <math|\<frak-z\>>. As
    <math|\<frak-z\>> is reductive, we have
    <math|\<frak-z\>=Z<rsub|\<frak-z\>>+<around*|[|\<frak-z\>,\<frak-z\>|]>>
    and we claim that <math|Z<rsub|\<frak-z\>>=\<frak-t\>>.
    <math|\<subseteq\>> is clear. Conversely, for <math|X\<in\>\<frak-z\>>,
    we have <math|\<frak-h\>\<subset\>\<frak-z\>>, hence
    <math|<around*|[|X,\<frak-h\>|]>=0>, hence <math|X\<in\>\<frak-h\>>,
    hence <math|ad<around*|(|X|)>> diagonable. Also,
    <math|\<frak-s\>\<frak-l\><rsub|2>\<subset\>\<frak-z\>>, hence
    <math|X\<in\>Z<rsub|\<frak-g\><rsup|0>><around*|(|\<frak-s\>\<frak-l\><rsub|2>|)>>
    and thus <math|X\<in\>\<frak-t\>> by maximality. This proves the claim.

    We next see that <math|\<frak-s\>\<assign\><around*|[|\<frak-z\>,\<frak-z\>|]>>
    is graded. As <math|Z<rsub|\<frak-z\>>\<subset\>\<frak-z\><rsup|0>>, we
    have <math|e\<in\>\<frak-z\><rsup|1>=\<frak-s\><rsup|1>> and
    <math|f\<in\>\<frak-z\><rsup|-1>=\<frak-s\><rsup|-1>> and for
    <math|S<rsup|0>\<assign\>Anal<around*|(|G,\<frak-s\><rsup|0>|)>> we have
    for semisimple <math|\<frak-s\>> graded by <math|2h> (as
    <math|2h-H\<in\>\<frak-t\>>) that <math|S<rsup|0>\<curvearrowright\>\<frak-s\><rsup|1>>
    is prehomogeneous, and that <math|e> is in unique open orbit of
    <math|\<frak-s\><rsup|1>> (<math|e\<in\>\<frak-s\><rsup|1>>, as
    <math|e\<in\>\<frak-s\>>, since <math|\<frak-s\>\<frak-l\><rsub|2>\<subset\>\<frak-z\>>).
    We now let <math|\<frak-l\>\<leftarrow\>\<frak-z\>>.

    Finally, if for two elements <math|e,e<rprime|'>> we arrive at same
    <math|\<frak-z\>,h>, we have we have <math|e,e<rprime|'>> being connected
    by <math|S<rsup|0>\<subset\>G<rsup|0>>.
  </proof>

  <inc-theorem><inc-theorem>

  <\corollary>
    Let <math|G,G<rsup|0>> and <math|\<frak-g\>> as above. Then
    <math|G<rsup|0>\<curvearrowright\>\<frak-g\><rsup|\<forall\>k\<neq\>0>>
    is prehomogeneous.
  </corollary>

  <\proof>
    Let <math|H> be such that it induces grading and
    <math|\<Phi\>\<assign\>Ad<around*|(|exp<around*|(|2\<pi\>i H/k|)>|)>>, we
    then have for <math|\<frak-s\>\<assign\>ker<around*|(|\<Phi\>-I|)>> that
    <math|\<frak-s\>=<big|oplus><rsub|j\<in\>\<bbb-Z\>>\<frak-g\><rsup|j k>>.
    We extend <math|H> to Cartan <math|\<frak-h\>> and as
    <math|\<frak-h\>\<subset\>\<frak-g\><rsup|0>\<subset\>\<frak-s\>>, we
    have <math|\<frak-s\>=\<frak-h\>\<oplus\><big|oplus><rsub|\<gamma\>\<in\>\<Psi\>>\<frak-g\><rsup|\<gamma\>>>,
    where <math|\<Psi\>=<around*|{|\<gamma\>\<in\>\<Delta\><mid|\|>\<gamma\><around*|(|H|)>\<in\>k\<bbb-Z\>|}>>
    and as <math|\<Psi\>> is invariant under
    <math|\<gamma\>\<mapsto\>-\<gamma\>>, and we see that <math|\<frak-s\>>
    is Levi for parabolic corresponding to
    <math|\<Psi\>\<cup\>\<Delta\><rsup|+>> and hence reductive with , we can
    now apply theorem <reference|19> to <math|<around*|[|\<frak-s\>,\<frak-s\>|]>>
    (the latter is graded as center of <math|\<frak-s\>> is contained in
    <math|\<frak-s\><rsup|0>=\<frak-g\><rsup|0>>).
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
    <associate|1|<tuple|1|?>>
    <associate|15|<tuple|15|?>>
    <associate|18|<tuple|18|?>>
    <associate|19|<tuple|19|?>>
    <associate|4|<tuple|4|?>>
    <associate|auto-1|<tuple|1|?>>
    <associate|malcev-kostant|<tuple|3|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Prehomogeneous
      vector spaces> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>