<TeXmacs|1.0.7.18>

<style|<tuple|article|mystyle>>

<\body>
  <section|Setting>

  <section|Main results>

  <\proposition>
    <label|prop-1>Let <math|Q> denote the <math|<around*|(|p,q|)>>-quadratic
    form with <math|p,q\<gtr\>0>. We also assume that
    <math|n\<assign\>p+q\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>. Let
    <math|F<rsup|<around*|(|0|)>><rsub|\<nu\>>\<assign\><around*|\||Q|\|><rsup|\<nu\>>>
    and <math|F<rsup|<around*|(|1|)>><rsub|\<nu\>>\<assign\><around*|\||Q|\|><rsup|\<nu\>>sgn<around*|(|Q|)>>
    be generalized functions for <math|Re<around*|(|\<nu\>|)>\<gtr\>0>.\ 

    Let further <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>\<assign\>F<rsub|\<nu\>><rsup|<around*|(|i|)>>/N<rsub|i>>
    for <math|i=0,1>, where <math|N<rsub|0>\<assign\>\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>\<Gamma\><around*|(|\<nu\>+n/2|)>>
    and <math|N<rsub|1>\<assign\>\<Gamma\><around*|(|<frac|\<nu\>+2|2>|)>\<Gamma\><around*|(|\<nu\>+n/2|)>>.
    Then, <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>> extends to
    holomorphic in <math|\<nu\>\<in\>\<bbb-C\>> distributions. Moreover,
    these are nonzero for <math|\<nu\>\<in\><around*|{|\<frak-P\><around*|(|N<rsub|i>|)>\<neq\>0|}>>,
    where notation <math|\<frak-P\><around*|(|\<cdot\>|)>:\<bbb-C\>\<rightarrow\>\<bbb-Z\>>
    is introduced in <verbatim|KP-normalization.pdf>.
  </proposition>

  <\fact>
    <cite-detail|gelfand1980distribution|sec. III.2.2> For
    <math|n\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1> we have:
  </fact>

  <\remark>
    It is quite possible, I think, to prove this fact with direct methods,
    without using machinery as complicated as in
    <cite|gelfand1980distribution>.
  </remark>

  <\proof>
    (of prop. <reference|prop-1>) Let <math|L\<assign\><big|sum><rsub|i=0><rsup|p><frac|\<partial\><rsup|2>|\<partial\>x<rsub|i><rsup|2>>-<big|sum><rsub|j=0><rsup|q><frac|\<partial\><rsup|2>|\<partial\>y<rsub|j><rsup|2>>>.
    For <math|Re<around*|(|\<nu\>|)>\<gg\>0> we have

    <\equation*>
      L<rsup|2>F<rsub|\<nu\>+2><rsup|<around*|(|i|)>>=16<around*|(|\<nu\>+2|)><around*|(|\<nu\>+1|)><around*|(|\<nu\>+<frac|n|2>+1|)><around*|(|\<nu\>+<frac|n|2>|)>F<rsub|\<nu\>><rsup|<around*|(|i|)>>,<space|1em>i=0,1
    </equation*>

    Hence, by analytic continuation these equations also hold for
    <math|\<nu\>\<in\>\<bbb-C\>\\\<bbb-Z\><rsub|\<leqslant\>0>\\<around*|(|<frac|n|2>+\<bbb-Z\><rsub|\<leqslant\>0>|)>>.
    Similarly, for <math|\<nu\>\<in\>\<bbb-C\>-\<bbb-Z\><rsub|\<leqslant\>0>-<around*|(|<frac|n|2>+\<bbb-Z\><rsub|\<leqslant\>0>|)>>
    we have\ 

    <\equation>
      L<rsup|2><wide|F|~><rsup|<around*|(|0|)>><rsub|\<nu\>+2>=16<around*|(|\<nu\>+2|)><wide|F|~><rsub|\<nu\>><rsup|<around*|(|0|)>><label|eq-1>
    </equation>

    <\equation>
      L<rsup|2><wide|F|~><rsup|<around*|(|1|)>><rsub|\<nu\>+2>=16<around*|(|\<nu\>+1|)><wide|F|~><rsub|\<nu\>><rsup|<around*|(|1|)>><label|eq-2>
    </equation>

    To prove holomorphicity of <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>
    for <math|i=0> and <math|i=1> in the light of equations above it suffices
    to show the holomorphicity at <math|\<nu\>=-2> and <math|\<nu\>=-1>
    respectively. However, for <math|\<nu\>=-2> we have
    <math|\<frak-P\><around*|(|N<rsub|0>|)><around*|(|\<nu\>|)>=0> and
    <math|<wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|0|)>>=<around*|\||Q|\|><rsup|0>\<equiv\>1>
    and hence <math|L<rsup|2><wide|F|~><rsup|<around*|(|0|)>><rsub|\<nu\>>\<equiv\>0>,
    hence left-hand side of equation <reference|eq-1> has zero at
    <math|\<nu\>=-2> and thus even divided by <math|\<nu\>-2> it remains
    holomorphic. Similarly, for <math|\<nu\>=-1> we have
    <math|\<frak-P\><around*|(|N<rsub|1>|)><around*|(|\<nu\>|)>=0> and
    <math|<wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|1|)>>=Q> and as
    <math|L<rsup|2>Q\<equiv\>0>, we similarly have holomorphicity. Thus
    <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>> are holomorphic for
    <math|i=0,1>.

    Now, let's prove the stated statement about non-vanishing for
    <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|0|)>>>. We need to do so
    for <math|\<nu\>\<in\><around*|(|-2\<bbb-Z\><rsub|\<geqslant\>0>-1|)>\<sqcup\><around*|(|-<frac|n|2>-\<bbb-Z\><rsub|\<geqslant\>0>|)>>.
    However, in the light of equation <math|<reference|eq-1>> it suffices to
    show that for <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
    <math|L<rsup|2k><wide|F|~><rsub|1><rsup|<around*|(|0|)>>\<neq\>0> and
    <math|L<rsup|2k><wide|F|~><rsub|2-n/2><rsup|<around*|(|0|)>>\<neq\>0>.
  </proof>

  <\bibliography|bib|plain|todai_master.bib>
    <\bib-list|1>
      <bibitem*|1><label|bib-gelfand1980distribution>IM<nbsp>Gelfand and
      GE<nbsp>Shilov. <newblock>Distribution theory, vol. 1, 1980.
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
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|2|?>>
    <associate|bib-gelfand1980distribution|<tuple|1|?>>
    <associate|eq-1|<tuple|1|?>>
    <associate|eq-2|<tuple|2|?>>
    <associate|prop-1|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      gelfand1980distribution
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>