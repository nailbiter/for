<TeXmacs|1.0.7.18>

<style|<tuple|article|mystyle>>

<\body>
  <section|Setting and goal>

  In this note, we will the data obtained in <verbatim|Q-normalization.pdf>
  to find the <with|font-shape|italic|perfect> normalization of kernel of
  singular SBO, that is supported on <math|<around*|{|x<rsub|p>=0|}>>, which
  is given as

  <\equation>
    K<rsub|\<lambda\>,\<nu\>><rsup|P>\<assign\><big|sum><rsub|i=0><rsup|k><frac|<around*|(|-1|)><rsup|i><around*|(|2k|)>!<around*|(|\<nu\>|)><rsub|><rsup|i>|<around*|(|2k-2i|)>!i!>\<delta\><rsup|<around*|(|2k-2i|)>><around*|(|x<rsub|p>|)>\<otimes\>Q<rsub|i><label|eq-1>\<nocomma\>,<space|1em>k\<assign\>\<lambda\>+\<nu\>-n
  </equation>

  with

  <\equation*>
    Q<rsub|i>\<assign\><choice|<tformat|<table|<row|<cell|<around*|\||<wide|Q|~>|\|><rsup|-\<nu\>-2i>>|<cell|,i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>>|<row|<cell|sgn<around*|(|<wide|Q|~>|)><around*|\||<wide|Q|~>|\|><rsup|-\<nu\>-2i>>|<cell|,i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>>>>
  </equation*>

  and <math|<around*|(|\<nu\>|)><rsub|><rsup|i>\<assign\>\<nu\><around*|(|\<nu\>+1|)>\<ldots\><around*|(|\<nu\>+i-1|)>>.

  Again, as in <verbatim|Q-normalization.pdf> here perfect means that the
  normalized kernel will be holomorphic in <math|\<nu\>\<in\>\<bbb-C\>> and
  nonzero. We will also determine the support of normalized kernel.

  The important role will be played by following statement, shown in
  <verbatim|KP-normalization.pdf>:

  <\fact>
    <label|fact-1>(<verbatim|KP-normalization.pdf>) Let
    <math|<around*|{|F<rsub|\<nu\>><rsub|><rsup|<around*|(|i|)>><rsub|>|}><rsub|i>>
    be finite set of meromorphic distributions depending on
    <math|\<nu\>\<in\>\<bbb-C\>>. Then <math|\<frak-P\><around*|(|<big|sum><rsub|i>\<delta\><rsup|<around*|(|i|)>>\<otimes\>F<rsup|<around*|(|i|)>><rsub|\<nu\>>|)>=max<around*|{|\<frak-P\><around*|(|F<rsub|\<nu\>><rsup|<around*|(|i|)>>|)>|}><rsub|i>>.
  </fact>

  It implies that it is enough to understand
  <math|\<frak-P\><around*|(|<around*|(|\<nu\>|)><rsup|i>Q<rsub|i>|)>> for
  <math|0\<leqslant\>i\<leqslant\>k>.

  <section|Main results>

  <\proposition>
    <label|prop-1>For <math|n\<assign\>p+q\<in\>2\<bbb-Z\>+1> we have

    <\equation*>
      \<frak-P\><around*|(|K<rsub|\<lambda\>,\<nu\>><rsup|P>|)>=<around*|(|-<frac|n|2>-2k+\<bbb-Z\><rsub|\<geqslant\>0>|)>\<sqcup\><choice|<tformat|<table|<row|<cell|<around*|[|1+2\<bbb-Z\><rsub|\<geqslant\>0>|]>,>|<cell|k=0>>|<row|<cell|<around*|[|1+\<bbb-Z\><rsub|\<geqslant\>0>|]>,>|<cell|k=1>>|<row|<cell|<around*|[|-2k+1|]>\<sqcup\><around*|[|-2k+3,-2k+4,\<ldots\>,-3|]>\<sqcup\><around*|[|1+\<bbb-Z\><rsub|\<geqslant\>0>|]>,>|<cell|k\<geqslant\>2,k\<in\>2\<bbb-Z\>>>|<row|<cell|<around*|[|-2k+2,-2k+3,\<ldots\>,-3|]>\<sqcup\><around*|[|1+\<bbb-Z\><rsub|\<geqslant\>0>|]>,>|<cell|k\<geqslant\>2,k\<in\>2\<bbb-Z\>+1>>>>>
    </equation*>

    where <math|<around*|[|a|]>> means that for pole at <math|a> highest term
    is supported at <math|<around*|{|<wide|Q|~>=0|}>>, while
    <math|<around*|(|a|)>> means that it is supported at
    <math|<around*|{|0|}>>, and <math|K<rsub|\<lambda\>,\<nu\>><rsup|P>> has
    support <math|<around*|{|x<rsub|p>=0|}>> at all points
    <math|\<nu\>\<in\>\<bbb-C\>> of holomorphicity.
  </proposition>

  <section|Auxiliary results and facts>

  <\fact>
    <label|fact-2>(from <verbatim|KP-normalization.pdf>) If
    <math|F<rsub|\<nu\>>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>|)>>
    is meromorphic distribution depending on <math|\<nu\>\<in\>\<bbb-C\>>,
    then for <math|P\<in\>D<rprime|'><around*|(|\<bbb-R\><rsup|m>|)>> we have
    <math|P\<otimes\>F<rsub|\<nu\>>> being meromorphic distribution and
    <math|\<frak-P\><around*|(|P\<otimes\>F<rsub|\<nu\>>|)>=\<frak-P\><around*|(|F<rsub|\<nu\>>|)>>.
    Moreover, if <math|F<rsub|\<nu\>>=<big|sum><rsub|i>F<rsub|i><around*|(|\<nu\>-\<nu\><rsub|0>|)><rsup|i>>
    and <math|P\<otimes\>F<rsub|\<nu\>>=<big|sum><rsub|i>f<rsub|i><around*|(|\<nu\>-\<nu\><rsub|0>|)><rsup|i>>
    are Laurent expansions of <math|F<rsub|\<nu\>>> and
    <math|P\<otimes\>F<rsub|\<nu\>>> respectively at some
    <math|\<nu\>\<in\>\<bbb-C\>>, we have
    <math|f<rsub|i>=P\<otimes\>F<rsub|i>>.
  </fact>

  <\lemma>
    <label|lem-holo-supp>At points of holomorphicity
    <math|K<rsub|\<lambda\>,\<nu\>><rsup|P>> has support equal to
    <math|<around*|{|x<rsub|p>=0|}>>.
  </lemma>

  <\proof>
    In the light of fact <reference|fact-1> we see that point of
    holomorphicity fo <math|K<rsub|\<lambda\>,\<nu\>><rsup|P>> should in
    particular be point of holomorphicity of
    <math|Q<rsub|i>=<around*|\||<wide|Q|~>|\|><rsup|-\<nu\>>>. Now, the
    latter is known to have full support at points of its holomorphicity.
  </proof>

  <\lemma>
    <label|lem-mero-supp>Suppose <math|<around*|{|F<rsub|i><rsup|\<nu\>>|}><rsub|i>\<subset\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>|)>>
    is a finite family of meromorphic distributions depending on
    <math|\<nu\>\<in\>\<bbb-C\>> and <math|\<frak-P\><around*|(|F|)><around*|(|\<nu\><rsub|0>|)>=m>
    for <math|F\<assign\><big|sum><rsub|i>\<delta\><rsup|<around*|(|i|)>>\<otimes\>F<rsub|i><rsup|\<nu\>>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n+1>|)>>,
    <math|\<delta\><rsup|<around*|(|i|)>>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\>|)>>
    and some <math|<around*|(|\<nu\><rsub|0>,m|)>\<in\>\<bbb-C\><around*|\<nobracket\>|\<times\>\<bbb-Z\>|\<nobracket\>>>.
    Then, for Laurent expansions <math|F<rsub|i><rsup|\<nu\>>=:<big|sum><rsub|k=-m><rsup|\<infty\>>F<rsub|i><rsup|<around*|(|k|)>>\<cdot\><around*|(|\<nu\>-\<nu\><rsub|0>|)><rsup|k>>
    and <math|F=:<big|sum><rsub|k=-m><rsup|\<infty\>>F<rsup|<around*|(|k|)>>\<cdot\><around*|(|\<nu\>-\<nu\><rsub|0>|)><rsup|k>>
    with <math|F<rsub|i><rsup|<around*|(|k|)>>,F<rsup|<around*|(|k|)>>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>|)>>
    we have <math|supp<around*|(|F<rsub|><rsup|<around*|(|-m|)>>|)>=<around*|{|0|}>\<times\><around*|(|<big|cup><rsub|i>F<rsub|i><rsup|<around*|(|-m|)>>|)><rsup|>>.
  </lemma>

  <\proof>
    The result will follow once we will show that
    <math|F<rsup|<around*|(|-m|)>>=<big|sum><rsub|i>\<delta\><rsup|<around*|(|i|)>>\<otimes\>F<rsub|i><rsup|<around*|(|-m|)>>>.
    Indeed, ``<math|\<subset\>>'' will then follow immediately, and
    conversely for, say <math|x<rsub|0>\<in\>supp<around*|(|F<rsub|i<rsub|0>><rsup|<around*|(|-m|)>>|)>>
    and arbitrary given neighborhood <math|\<bbb-R\><rsup|n+1>\<supset\>M\<ni\><around*|{|0|}>\<times\>x<rsub|0>>
    we can take neighborhoods <math|\<bbb-R\><rsup|n>\<supset\>N\<ni\>x<rsub|0>>
    and <math|\<bbb-R\>\<supset\>N<rprime|'>\<ni\><around*|{|0|}>> small
    enough so that <math|M\<supset\>N<rprime|'>\<times\>N> and
    <math|\<varphi\><rsub|N>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>|)>>
    with <math|supp<around*|(|\<varphi\><rsub|N>|)>\<subset\>N> and
    <math|<around*|\<langle\>|F<rsub|i<rsub|0>><rsup|<around*|(|-m|)>>,\<varphi\><rsub|N>|\<rangle\>>\<neq\>0>.
    Then, taking <math|\<psi\>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\>|)>>
    which would be equal to <math|x<rsup|i<rsub|0>>> near 0 and have
    <math|supp<around*|(|\<psi\>|)>\<subset\>N<rprime|'>>, we have
    <math|supp<around*|(|\<psi\>\<otimes\>\<varphi\>|)>\<subset\>M> and
    <math|<around*|\<langle\>|F<rsup|<around*|(|-m|)>>,\<psi\>\<otimes\>\<varphi\><rsub|N>|\<rangle\>>\<simeq\><around*|\<langle\>|F<rsub|i<rsub|0>><rsup|<around*|(|-m|)>>,\<varphi\><rsub|N>|\<rangle\>>\<neq\>0>.

    Hence, it suffices to show that <math|F<rsup|<around*|(|-m|)>>=<big|sum><rsub|i>\<delta\><rsup|<around*|(|i|)>>\<otimes\>F<rsub|i><rsup|<around*|(|-m|)>>>.
    In the light of fact <reference|fact-2>, for this it suffices to show
    that if <math|<around*|{|G<rsub|i>|}>> is a finite family of meromorphic
    distributions, and <math|G<rsub|i>=:<big|sum><rsub|k>G<rsub|i><rsup|<around*|(|k|)>><around*|(|\<nu\>-\<nu\><rsub|0>|)><rsup|k>>
    are Laurent expansions, then\ 
  </proof>

  <section|Proofs>

  <\proof>
    (of proposition <reference|prop-1>) The last statement is readily granted
    by lemma <reference|lem-holo-supp>, once all others will be shown.
    Statement for <math|k=0,1> follow by direct computations, so we proceed
    straightly to <math|k\<geqslant\>2> case.
  </proof>

  <section|TODO>

  <\bibliography|bib|plain|todai_master.bib>
    <\bib-list|1>
      <bibitem*|1><label|bib-gelfand1980distribution>IM<nbsp>Gelfand and
      GE<nbsp>Shilov. <newblock>Distribution theory, vol. 1, 1980.

      <bibitem*|2><label|bib-hormander1983analysis>Lars Hörmander.
      <newblock><with|font-shape|italic|The Analysis of Linear Partial
      Differential Operators: Vol.: 1.: Distribution Theory and Fourier
      Analysis>. <newblock>Springer-Verlag, 1983.
    </bib-list>
  </bibliography>
</body>

<\initial>
  <\collection>
    <associate|language|american>
    <associate|page-type|letter>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|1>>
    <associate|auto-4|<tuple|4|1>>
    <associate|auto-5|<tuple|5|6>>
    <associate|auto-6|<tuple|5|6>>
    <associate|auto-7|<tuple|6|7>>
    <associate|bib-gelfand1980distribution|<tuple|1|7>>
    <associate|bib-hormander1983analysis|<tuple|2|7>>
    <associate|eq-1|<tuple|1|6>>
    <associate|eq-2|<tuple|2|6>>
    <associate|fact-1|<tuple|1|?>>
    <associate|fact-2|<tuple|3|?>>
    <associate|fact-gelfand-n:even|<tuple|3|2>>
    <associate|fact-gelfand-n:odd|<tuple|2|1>>
    <associate|fact-horm-homog|<tuple|5|2>>
    <associate|fact-horm1|<tuple|6|2>>
    <associate|fact-horm2|<tuple|7|2>>
    <associate|fact-horm3|<tuple|7|?>>
    <associate|lem-10|<tuple|10|?>>
    <associate|lem-4|<tuple|9|2>>
    <associate|lem-5|<tuple|10|2>>
    <associate|lem-6|<tuple|11|2>>
    <associate|lem-9|<tuple|9|?>>
    <associate|lem-holo-nonzero|<tuple|8|2>>
    <associate|lem-holo-supp|<tuple|4|?>>
    <associate|lem-mero-supp|<tuple|5|?>>
    <associate|lem-normalized-eq|<tuple|12|3>>
    <associate|lem-pq2holo|<tuple|14|3>>
    <associate|lem-r1|<tuple|18|4>>
    <associate|lem-r1-e|<tuple|15|4>>
    <associate|lem-r1-nonzero|<tuple|20|?>>
    <associate|lem-r2|<tuple|20|5>>
    <associate|lem-r3|<tuple|21|5>>
    <associate|lem-r4|<tuple|19|5>>
    <associate|lem-r5|<tuple|22|5>>
    <associate|lem-r6|<tuple|16|4>>
    <associate|lem-r6-e|<tuple|13|3>>
    <associate|lem-r7|<tuple|23|5>>
    <associate|lem-r8|<tuple|17|4>>
    <associate|lem-restricted|<tuple|1|1>>
    <associate|prop-1|<tuple|2|1>>
    <associate|prop-2|<tuple|2|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Setting
      and goal> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Main
      results> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Auxiliary
      results and facts> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Proofs>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>TODO>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>