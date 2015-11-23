<TeXmacs|1.0.7.18>

<style|<tuple|generic|mystyle>>

<\body>
  <\proposition>
    <label|prop-1>Let <math|Q> denote the <math|<around*|(|p,q|)>>-quadratic
    form with <math|p,q\<gtr\>0>. We also assume that
    <math|n\<assign\>p+q\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>. Then,
    distributions <math|F<rsup|<around*|(|0|)>><rsub|\<nu\>>\<assign\><around*|\||Q|\|><rsup|\<nu\>>/\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>/\<Gamma\><around*|(|\<nu\>+n/2|)>>
    and <math|F<rsup|<around*|(|1|)>><rsub|\<nu\>>\<assign\><around*|\||Q|\|><rsup|\<nu\>>sgn<around*|(|Q|)>/\<Gamma\><around*|(|<frac|\<nu\>+2|2>|)>/\<Gamma\><around*|(|\<nu\>+n/2|)>>
    are holomorphic and nonzero for every <math|\<nu\>\<in\>\<bbb-C\>>.
  </proposition>

  <\fact>
    <cite-detail|gelfand1980distribution|sec III.2.2> For
    <math|n\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1> we have:
  </fact>

  <\proof>
    (of prop. <reference|prop-1>) Let <math|L\<assign\><big|sum><rsub|i=0><rsup|p><frac|\<partial\><rsup|2>|\<partial\>x<rsub|i><rsup|2>>-<big|sum><rsub|j=0><rsup|q><frac|\<partial\><rsup|2>|\<partial\>y<rsub|j><rsup|2>>>.
    For <math|Re<around*|(|\<nu\>|)>\<gg\>0> we have

    <\equation*>
      L<rsup|2><around*|\||Q|\|><rsup|\<nu\>+2>=16<around*|(|\<nu\>+2|)><around*|(|\<nu\>+1|)><around*|(|\<nu\>+<frac|n|2>+1|)><around*|(|\<nu\>+<frac|n|2>|)><around*|\||Q|\|><rsup|\<nu\>>
    </equation*>

    <\equation*>
      L<rsup|2><around*|\||Q|\|><rsup|\<nu\>+2>sgn<around*|(|Q|)>=16<around*|(|\<nu\>+2|)><around*|(|\<nu\>+1|)><around*|(|\<nu\>+<frac|n|2>+1|)><around*|(|\<nu\>+<frac|n|2>|)><around*|\||Q|\|><rsup|\<nu\>>sgn<around*|(|Q|)>
    </equation*>

    Hence, by analytic continuation these equations also hold for
    <math|\<nu\>\<in\>\<bbb-C\>-\<bbb-Z\><rsub|\<leqslant\>0>-<around*|(|<frac|n|2>+\<bbb-Z\><rsub|\<leqslant\>0>|)>>.
    Similarly, for <math|\<nu\>\<in\>\<bbb-C\>-\<bbb-Z\><rsub|\<leqslant\>0>-<around*|(|<frac|n|2>+\<bbb-Z\><rsub|\<leqslant\>0>|)>>
    we have\ 

    <\equation*>
      L<rsup|2>F<rsup|<around*|(|0|)>><rsub|\<nu\>+2>=16<around*|(|\<nu\>+2|)>F<rsub|\<nu\>><rsup|<around*|(|0|)>>
    </equation*>

    <\equation*>
      L<rsup|2>F<rsup|<around*|(|1|)>><rsub|\<nu\>+2>=16<around*|(|\<nu\>+1|)>F<rsub|\<nu\>><rsup|<around*|(|1|)>>
    </equation*>

    \;
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
    <associate|auto-1|<tuple|2|?>>
    <associate|bib-gelfand1980distribution|<tuple|1|?>>
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