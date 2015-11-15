<TeXmacs|1.0.7.18>

<style|<tuple|article|number-long-article|env-math|env-theorem>>

<\body>
  <doc-data|<doc-title|Restriction of distributions>>

  <section|Propositions and main definitions>

  <\definition>
    Let <math|M> be a manifold with a submanifold <math|S> and let
    <math|D\<subset\>\<cal-D\><rprime|'><around*|(|M|)>> be a linear subspace
    such that <math|C<around*|(|M|)>\<cap\>D\<subset\>D> is dense. Then we
    say that D is <with|font-series|bold|restrictable to <math|S>> if there
    exists a map <math|r:D\<rightarrow\>\<cal-D\><rprime|'><around*|(|S|)>>
    continuous, such that for any <math|\<phi\>\<in\>D\<cap\>C<around*|(|M|)>>
    we have <math|r<around*|(|\<phi\>|)>=\<phi\><mid|\|><rsub|S>>.
  </definition>

  <\remark>
    Such <math|r> is obviously unique, if exists.
  </remark>

  <\proposition>
    <label|prop-1-3>Let <math|M:=\<bbb-R\><rsup|n>>,
    <math|S:=<around*|{|x<rsub|1>=0|}>> and
    <math|D<rsub|g>\<assign\><around*|{|f\<in\>\<cal-D\><rprime|'><around*|(|M|)><mid|\|><frac|\<partial\>|\<partial\>x<rsub|1>>f=g\<cdot\>f|}>>
    for some fixed <math|g\<in\>C<rsup|\<infty\>><around*|(|M|)>>. Then
    <math|D<rsub|g>> is restrictable to <math|S>.
  </proposition>

  <\proposition>
    <label|prop-1-4>Let <math|\<Xi\><rsup|p,q>\<assign\><around*|{|<around*|(|x,y|)>\<in\>\<bbb-R\><rsup|p,q><mid|\|><around*|\||x|\|><rsub|p>=<around*|\||y|\|><rsub|q>|}>>
    and <math|N\<subset\>\<Xi\><rsup|p,q>> be an image of an embedding
    <math|n:\<bbb-R\><rsup|p-1,q-1>\<ni\><around*|(|x,y|)>\<rightarrow\><around*|(|1-<around*|\||x|\|><rsup|2>+<around*|\||y|\|><rsup|2>,2x,2y,1+<around*|\||x|\|><rsup|2>-<around*|\||y|\|><rsup|2>|)>\<in\>\<Xi\><rsup|p,q>>.
    Then <math|\<forall\>\<lambda\>\<in\>\<bbb-C\>> we have
    <math|D<rsub|\<lambda\>>\<assign\><around*|{|f\<in\>\<cal-D\><rprime|'><around*|(|\<Xi\><rsup|p,q>|)><mid|\|>\<forall\>t\<in\>\<bbb-R\><rsub|\<gtr\>0>,<space|0.6spc>f<around*|(|t\<cdot\>|)>=t<rsup|\<lambda\>>f<around*|(|\<cdot\>|)>|}>>
    is restrictable to <math|N>.
  </proposition>

  <section|Auxiliary lemmas and constructions>

  <\definition>
    If <math|M> is a manifold and <math|D\<subset\>\<cal-D\><rprime|'><around*|(|M|)>>
    is a linear subspace, such that <math|C<around*|(|M|)>\<cap\>D\<subset\>D>
    is dense, we say <math|D> is a <with|font-series|bold|subspace
    approximable by continuous> (SAC, for short)
  </definition>

  <\remark>
    It is clear that if <math|M<rsub|1,2>> are manifolds with
    <math|D<rsub|1>\<subset\>\<cal-D\><rprime|'><around*|(|M<rsub|1>|)>>:SAC
    and <math|r:D<rsub|1>\<rightarrow\>\<cal-D\><rprime|'><around*|(|M<rsub|2>|)>>
    is such that <math|r<around*|(|C<around*|(|M<rsub|1>|)>\<cap\>D<rsub|1>|)>\<subset\>C<around*|(|M<rsub|2>|)>>,
    then <math|r<around*|(|D<rsub|2>|)>> is SAC as well.\ 

    From this, it follows that if <math|D\<subset\>\<cal-D\><rprime|'><around*|(|M<rsub|1>|)>>
    is restrictable to <math|M<rsub|2>\<subset\>M<rsub|1>> with
    <math|r:D\<rightarrow\>\<cal-D\><rprime|'><around*|(|M<rsub|2>|)>> and
    <math|r<around*|(|D|)>> is restrictable to
    <math|M<rsub|3>\<subset\>M<rsub|2>>, then <math|D> is restrictable to
    <math|M<rsub|3>>.
  </remark>

  <\lemma>
    <label|lem-2-2>Let <math|M>:manifold with a submanifold <math|S> and
    <math|D<rsub|1>,D<rsub|2>\<subset\>\<cal-D\><rprime|'><around*|(|M|)>>:linear
    subspaces Assume further that <math|\<alpha\>\<in\>C<rsup|\<infty\>><around*|(|M|)>>
    is nowhere vanishing and such that <math|F\<mapsto\>\<alpha\>F> forms an
    isomorphism <math|D<rsub|1><rsub|><wide|\<rightarrow\>|~><rsup|>D<rsub|2>>.
    Then, <math|D<rsub|2>> is SAC iff <math|D<rsub|1>> is and
    <math|D<rsub|2>> is restrictable to <math|S> iff so is <math|D<rsub|1>>.
  </lemma>

  <\lemma>
    <label|lem-2-3>Let <math|N> be manifold, and let
    <math|M\<assign\>\<bbb-R\>\<times\>N> and
    <math|S\<assign\><around*|{|x<rsub|0>|}>\<times\>N>. Then
    <math|D<rsub|><rsup|>\<assign\><around*|{|f\<in\>\<cal-D\><rprime|'><around*|(|M|)><mid|\|><frac|\<partial\>|\<partial\>x<rsub|1>>f=0|}>>
    is restrictable to <math|S>.
  </lemma>

  <\lemma>
    <label|lem-2-4>Let <math|M> be a manifold and <math|S\<subset\>M> be an
    open subset. Then <math|\<cal-D\><rprime|'><around*|(|M|)>> is
    restrictable to <math|S> with <math|r<around*|(|\<varphi\>|)>=\<varphi\><mid|\|><rsub|S>>.
  </lemma>

  <\lemma>
    <label|lem-2-5>Let <math|M> be a manifold with submanifolds
    <math|S<rsub|1>> and <math|S<rsub|2>> which are diffeomorphic via
    <math|\<psi\>:S<rsub|1><wide|\<rightarrow\>|~>S<rsub|2>>. Assume further
    that <math|D\<subset\>\<cal-D\><rprime|'><around*|(|M|)>> is restrictable
    to <math|S<rsub|1>> (with corresponding
    <math|r<rsub|1>:D\<rightarrow\>\<cal-D\><rprime|'><around*|(|S<rsub|1>|)>>)
    and <math|\<forall\>\<varphi\>\<in\>C<around*|(|M|)>\<cap\>D,<space|0.6spc>\<varphi\>\<circ\>\<psi\><rsup|-1><mid|\|><rsub|S<rsub|2>>=\<varphi\><mid|\|><rsub|S<rsub|2>>>.
    Then <math|D> is restrictable to <math|S<rsub|2>> with corresponding
    <math|r<rsub|2>> given by <math|r<rsub|2>=<around*|(|\<psi\><rsup|-1>|)><rsup|*\<ast\>>\<circ\>r<rsub|1>>.
  </lemma>

  <\lemma>
    <label|lem-2-6>Let <math|u\<in\>\<cal-D\><rprime|'><around*|(|Y\<times\>I|)>>
    where <math|Y\<subset\>\<bbb-R\><rsup|n-1>> is an open set and
    <math|I\<subset\>\<bbb-R\>> is an interval. If
    <math|\<partial\><rsub|n>u=0>, then there exists
    <math|u<rsub|0>\<in\>\<cal-D\><rprime|'><around*|(|Y|)>> such that
    <math|\<forall\>\<varphi\>\<in\>C<rsup|\<infty\>><rsub|0><around*|(|Y\<times\>I|)>,<space|0.6spc>u<around*|(|\<varphi\>|)>=<big|int><rsub|I>u<rsub|0><around*|(|\<varphi\><around*|(|\<cdot\>,x<rsub|n>|)>|)>d
    x<rsub|n>>.
  </lemma>

  <\remark>
    For proof, see <cite-detail|hormander1983analysis|thm.
    3.14<math|<rprime|'>>>
  </remark>

  <\lemma>
    <label|lem-2-8>If <math|u\<in\>\<cal-D\><rprime|'><around*|(|X|)>> there
    exists a sequence <math|u<rsub|j>\<in\>C<rsub|0><rsup|\<infty\>><around*|(|X|)>>
    such that <math|u<rsub|j>\<rightarrow\>u>.
  </lemma>

  <\remark>
    The proof in <cite-detail|hormander1983analysis|thm. 4.1.4> shows this
    for the case <math|X\<subset\>\<bbb-R\><rsup|n>>:open. The statement can
    then be extended to <math|X>:manifold via the partition of unity
    subordinate to a coordinate cover.
  </remark>

  <\lemma>
    <label|lem-2-10> If <math|u<rsub|j>\<in\>\<cal-D\><rprime|'><rsub|j><around*|(|X<rsub|j>|)>>
    for <math|j=1,2> then there exists a unique distribution
    <math|u<rsub|1>\<otimes\>u<rsub|2>\<in\>\<cal-D\><rprime|'><around*|(|X<rsub|1>\<times\>X<rsub|2>|)>>
    with the property <math|\<forall\><around*|(|\<varphi\><rsub|1>,\<varphi\><rsub|2>|)>\<in\>C<rsup|\<infty\>><rsub|0><around*|(|X<rsub|1>|)>\<times\>C<rsup|\<infty\>><rsub|0><around*|(|X<rsub|2>|)>,<space|0.6spc><around*|(|u<rsub|1>\<otimes\>u<rsub|2>|)><around*|(|\<varphi\><rsub|1>\<otimes\>\<varphi\><rsub|2><rsub|>|)>=u<rsub|1><around*|(|\<varphi\><rsub|1>|)>u<rsub|2><around*|(|\<varphi\><rsub|2>|)>>.
    Moreover, for any <math|\<varphi\>\<in\>C<rsup|\<infty\>><rsub|0><around*|(|X<rsub|1>\<times\>X<rsub|2>|)>>
    we have <math|<around*|(|u<rsub|1>\<otimes\>u<rsub|2>|)><around*|(|\<varphi\>|)>=u<rsub|1><around*|[|x<rsub|1>\<mapsto\>u<rsub|2><around*|(|\<varphi\><around*|(|x<rsub|1>,x<rsub|2>|)>|)>|]>=u<rsub|2><around*|[|x<rsub|2>\<mapsto\>u<rsub|1><around*|(|\<varphi\><around*|(|x<rsub|1>,x<rsub|2>|)>|)>|]>>.
  </lemma>

  <\remark>
    Prove can be found in <cite-detail|hormander1983analysis|thm. 5.1.1>.
  </remark>

  <section|Proofs>

  <\proof>
    (of prop. <reference|prop-1-3>) We will use the
    <math|<around*|(|x<rsub|1>,x|)>> splitting of variables of
    <math|\<bbb-R\><rsup|n>> with <math|x<rsub|1>\<in\>\<bbb-R\>> and
    <math|x\<in\>\<bbb-R\><rsup|n-1>> and let
    <math|G<around*|(|x<rsub|1>,x|)>\<assign\>exp<around*|(|-<big|int><rsub|0><rsup|x<rsub|1>>g<around*|(|t,x|)>d
    t|)>\<in\>C<rsup|\<infty\>><around*|(|\<bbb-R\><rsup|n>|)>>. We have that
    <math|f\<in\>D<rsub|g>> iff <math|G\<cdot\>f\<in\>D<rsub|0>=<around*|{|f\<in\>\<cal-D\><rprime|'><around*|(|M|)><mid|\|><frac|\<partial\>|\<partial\>x<rsub|1>>f=0|}>>.
    Hence, lemma <reference|lem-2-2> implies that it suffices to show that
    <math|D<rsub|0>> is restrictable to <math|<around*|{|x<rsub|1>=0|}>>.

    The latter, however, is implied by lemma <reference|lem-2-3>.
  </proof>

  <\proof>
    (of prop <reference|prop-1-4>) First of all, we note that if we let
    <math|\<alpha\>:\<Xi\><rsup|p,q>\<ni\><around*|(|x,y|)><long-arrow|\<rubber-mapsto\>|><around*|\||x|\|><rsup|>>,
    then <math|\<forall\><around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>
    we have <math|f\<in\>D<rsub|\<lambda\>>\<Longleftrightarrow\>\<alpha\><rsup|\<mu\>>f\<in\>D<rsub|\<lambda\>+\<nu\>>>.
    Hence, in the light of the lemma <reference|lem-2-2> it suffices to show
    that <math|D<rsub|0>> is restrictable to <math|N>.

    Now, <math|\<Xi\><rsup|p,q>\<simeq\>\<bbb-R\><rsub|\<gtr\>0>\<times\><around*|(|\<bbb-S\><rsup|p-1>\<times\>\<bbb-S\><rsup|q-1>|)>>
    and the (obvious modification of) lemma <reference|lem-2-3> implies that
    <math|D<rsub|0>> is restrictable to <math|\<bbb-S\><rsup|p-1>\<times\>\<bbb-S\><rsup|q-1>\<subset\>\<Xi\><rsup|p,q>>
    (note that it's easy to see that restriction maps <math|D<rsub|0>> onto
    <math|\<cal-D\><rprime|'><around*|(|\<bbb-S\><rsup|p-1>\<times\>\<bbb-S\><rsup|q-1>|)>>).
    As <math|\<psi\><around*|(|N|)>\<subset\>\<bbb-S\><rsup|p-1>\<times\>\<bbb-S\><rsup|q-1>>
    is an open subset, lemma <reference|lem-2-4> tells us that
    <math|D<rsub|0>> is restrictable to <math|\<psi\><around*|(|N|)>> (see
    the remark after the definition of SAC).

    Then, we also note that <math|\<psi\>:N\<ni\>x\<mapsto\>x/\<alpha\><around*|(|x|)>\<in\>\<bbb-S\><rsup|p-1>\<times\>\<bbb-S\><rsup|q-1>>
    is a diffemorphism that establishes diffeomorphism between <math|N> and a
    submanifold <math|\<psi\><around*|(|N|)>\<subset\>\<bbb-S\><rsup|p-1>\<times\>\<bbb-S\><rsup|q-1>>.
    Lemma <reference|lem-2-5> now implies the desired conclusion.
  </proof>

  <\proof>
    (of lemma <reference|lem-2-2>) We note that <math|F\<mapsto\>\<alpha\>F>
    is clearly continuous and its inverse is given by
    <math|D<rsub|2>\<rightarrow\>D<rsub|1>>,
    <math|F\<mapsto\><frac|1|\<alpha\>>F>. We first show that
    <math|D<rsub|2>> is SAC iff <math|D<rsub|1>> is. Due to the symmetry of
    the statement, it suffices to assume that <math|D<rsub|1>> is SAC and
    show that <math|D<rsub|2>> is also so, so let <math|f\<in\>D<rsub|2>>.
    Then <math|f/\<alpha\>\<in\>D<rsub|1>> and as latter is SAC, we have
    <math|C<around*|(|M|)>\<cap\>D<rsub|1>\<ni\>\<varphi\><rsub|n>\<rightarrow\>f/\<alpha\>>.
    Then, <math|\<alpha\>\<varphi\><rsub|n>\<in\>C<around*|(|M|)>\<cap\>D<rsub|2>>
    and <math|\<alpha\>\<varphi\><rsub|n>\<rightarrow\>f>, so
    <math|D<rsub|2>> is SAC.

    Due to the symmetry of the statement, it suffices to show that
    <math|D<rsub|2>> is restrictable to <math|S> if <math|D<rsub|1>> is. So
    we assume that we have a corresponding
    <math|r<rsub|1>:D<rsub|1>\<rightarrow\>\<cal-D\><rprime|'><around*|(|S|)>>.

    We denote <math|\<alpha\><rsub|0>\<assign\>\<alpha\><mid|\|><rsub|S>\<in\>C<rsup|\<infty\>><around*|(|S|)>>
    and let <math|r<rsub|2>:D<rsub|2>\<ni\>f\<mapsto\>r<rsub|2><around*|(|f|)>\<assign\>\<alpha\><rsub|0>\<cdot\>r<rsub|1><around*|(|f/\<alpha\>|)>>.
    It is clearly continuous. Moreover, for
    <math|\<varphi\>\<in\>D<rsub|1>\<cap\>C<rsup|\<infty\>><around*|(|M|)>>
    we <math|r<rsub|2><around*|(|\<varphi\>|)>=\<alpha\><rsub|0>\<cdot\>r<rsub|1><around*|(|\<varphi\>/\<alpha\>|)>=\<varphi\><mid|\|><rsub|S>>.
  </proof>

  <\proof>
    (of lemma <reference|lem-2-3>) Applying lem. <reference|lem-2-6> locally,
    we conclude that to every <math|f\<in\>D> we can relate
    <math|f<rsub|0>\<in\>\<cal-D\><rprime|'><around*|(|N|)>> such that
    <math|\<varphi\>\<in\>C<rsup|\<infty\>><rsub|0><around*|(|M|)>,<space|0.6spc>f<around*|(|\<varphi\>|)>=<big|int><rsub|x<rsub|1>\<in\>\<bbb-R\>>f<rsub|0><around*|(|\<varphi\><around*|(|x<rsub|1>,\<cdot\>|)>|)>d
    x<rsub|1>>. Now, as <math|S\<simeq\>N> we can treat <math|f<rsub|0>> as
    an element of <math|\<cal-D\><rprime|'><around*|(|S|)>>.\ 

    Moreover, taking arbitrary <math|\<psi\>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\>|)>>
    with <math|<big|int><rsub|\<bbb-R\>>\<psi\>=1> we see that
    <math|\<forall\>\<varphi\>\<in\>\<cal-D\><rprime|'><around*|(|S|)>,<space|0.6spc>f<rsub|0><around*|(|\<varphi\>|)>=f<around*|[|\<bbb-R\>\<times\>N\<simeq\>\<bbb-R\>\<times\>S\<ni\><around*|(|x<rsub|1>,s|)>\<mapsto\>\<psi\><around*|(|x<rsub|1>|)>\<varphi\><around*|(|s|)>|]>>.
    Thus, <math|f\<mapsto\>r<around*|(|f|)>\<assign\>f<rsub|0>> is
    continuous. Finally, for <math|\<varphi\>\<in\>C<around*|(|M|)>\<cap\>D>
    we clearly have <math|r<around*|(|\<varphi\>|)>=\<varphi\><mid|\|><rsub|S>>.

    It remains to show that <math|D> is SAC, so take an arbitrary
    <math|f\<in\>D>. We then have by lemma <reference|lem-2-8> that
    <math|\<exists\><around*|{|\<varphi\><rsub|n>|}><rsub|n>\<subset\>C<around*|(|S|)>\<cap\>\<cal-D\><rprime|'><around*|(|S|)>,<space|0.6spc>\<varphi\><rsub|n>\<rightarrow\>f<rsub|0>>.
    Now, lemma <reference|lem-2-10> (the uniqueness part) now implies that
    <math|f=1\<otimes\>f<rsub|0>> and hence
    <math|\<forall\>\<varphi\>\<in\>\<cal-D\><rprime|'><around*|(|M|)>> we
    have <math|<around*|(|1\<otimes\>\<varphi\><rsub|n>|)><around*|(|\<varphi\>|)>=\<varphi\><rsub|n><around*|(|s\<mapsto\><big|int><rsub|x<rsub|1>\<in\>\<bbb-R\>>\<varphi\><around*|(|x<rsub|1>,s|)>d
    x<rsub|1>|)>\<rightarrow\>f<rsub|0><around*|(|s\<mapsto\><big|int><rsub|x<rsub|1>\<in\>\<bbb-R\>>\<varphi\><around*|(|x<rsub|1>,s|)>d
    x<rsub|1>|)>> and thus <math|1\<otimes\>\<varphi\><rsub|n>\<rightarrow\>f>,
    so <math|D> is a SAC.
  </proof>

  <\proof>
    (of lemma <reference|lem-2-4>) Lemma <reference|lem-2-8> implies that
    <math|\<cal-D\><rprime|'><around*|(|M|)>> is SAC. Now,
    <math|\<cal-D\><rprime|'><around*|(|M|)>\<ni\>f\<mapsto\>r<around*|(|f|)>\<assign\>f<mid|\|><rsub|S>>
    is obviously continuous and thus <math|\<cal-D\><rprime|'><around*|(|M|)>>
    is restrictable to <math|S>.
  </proof>

  <\proof>
    (of lemma <reference|lem-2-5>) It is clear that <math|r<rsub|2>> defined
    as in statement is continuous (so are
    <math|r<rsub|1>:D\<rightarrow\>\<cal-D\><rprime|'><around*|(|S<rsub|1>|)>>
    and <math|<around*|(|\<psi\><rsup|-1>|)><rsup|*\<ast\>>:\<cal-D\><rprime|'><around*|(|S<rsub|1>|)>\<rightarrow\>\<cal-D\><rprime|'><around*|(|S<rsub|2>|)>>).
    Moreover, for <math|\<varphi\>\<in\>D<rsub|2>\<cap\>C<around*|(|M|)>> we
    have <math|r<rsub|2><around*|(|\<varphi\>|)>=<around*|(|\<psi\><rsup|-1>|)><rsup|\<ast\>><around*|(|\<varphi\><mid|\|><rsub|S<rsub|1>>|)>=\<varphi\><mid|\|><rsub|S<rsub|1>>\<circ\>\<psi\><rsup|-1>=\<varphi\>\<circ\>\<psi\><rsup|-1><mid|\|><rsub|S<rsub|2>>=\<varphi\><mid|\|><rsub|S<rsub|2>>>.
  </proof>

  \;

  <\bibliography|bib|plain|todai_master.bib>
    <\bib-list|1>
      <bibitem*|1><label|bib-hormander1983analysis>Lars Hörmander.
      <newblock><with|font-shape|italic|The Analysis of Linear Partial
      Differential Operators: Vol.: 1.: Distribution Theory and Fourier
      Analysis>. <newblock>Springer-Verlag, 1983.
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
    <associate|auto-4|<tuple|3|2>>
    <associate|bib-hormander1983analysis|<tuple|1|2>>
    <associate|lem-2-10|<tuple|2.11|1>>
    <associate|lem-2-2|<tuple|2.3|1>>
    <associate|lem-2-3|<tuple|2.4|1>>
    <associate|lem-2-4|<tuple|2.5|1>>
    <associate|lem-2-5|<tuple|2.6|1>>
    <associate|lem-2-6|<tuple|2.7|1>>
    <associate|lem-2-8|<tuple|2.9|1>>
    <associate|prop-1-3|<tuple|1.3|1>>
    <associate|prop-1-4|<tuple|1.4|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      hormander1983analysis

      hormander1983analysis

      hormander1983analysis
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Propositions
      and main definitions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Auxiliary
      lemmas and constructions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
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