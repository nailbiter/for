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
    If <math|V> is prehomogeneous vector space, the open orbit is unique and
    dense.
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
    If <math|V> is f.d. <math|\<bbb-C\>>-vect. sp and
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
    (of theorem <reference|malcev-kostant>)\ 
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