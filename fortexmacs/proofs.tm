<TeXmacs|1.99.4>

<style|article>

<\body>
  We list the formulae:

  <\eqnarray>
    <tformat|<table|<row|<cell|<around*|[|KLg|]>:>|<cell|<big|int><rsub|s,t=-1><rsup|1><around*|\||\<varepsilon\>s
    a+\<varepsilon\><rprime|'>t b|\|><rsup|2\<nu\>>u<rsub|l><rsup|\<lambda\>><around*|(|s|)>u<rsub|m><rsup|\<mu\>><around*|(|t|)>d
    s d t=>|<cell|>>|<row|<cell|>|<cell|\<varepsilon\><rsup|l><around*|(|\<varepsilon\><rprime|'>|)><rsup|m><around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l+m|2>>\<pi\><rsup|3/2>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>max
    <rsup|2\<nu\>><around*|{|<around*|\||a|\|>,<around*|\||b|\|>|}>\<times\>>|<cell|>>|<row|<cell|>|<cell|\<times\><choice|<tformat|<table|<row|<cell|<frac|<around*|(|b/a|)><rsup|m>
    <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|l+m|2>-\<nu\>,<frac|m-l|2>-\<nu\>-\<lambda\>>>|<row|<cell|\<mu\>+m+1>>>>>;<frac|b<rsup|2>|a<rsup|2>>|)>|\<Gamma\><around*|(|\<mu\>+m+1|)>\<Gamma\><around*|(|\<nu\>+<frac|l-m|2>+\<lambda\>+1|)>>,>|<cell|<around*|\||b|\|>\<leqslant\><around*|\||a|\|>,>>|<row|<cell|<frac|<around*|(|a/b|)><rsup|m>
    <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|l+m|2>-\<nu\>,<frac|l-m|2>-\<nu\>-\<mu\>>>|<row|<cell|\<lambda\>+l+1>>>>>;<frac|a<rsup|2>|b<rsup|2>>|)>|\<Gamma\><around*|(|\<lambda\>+l+1|)>\<Gamma\><around*|(|\<nu\>+<frac|m-l|2>+\<mu\>+1|)>>,>|<cell|<around*|\||a|\|>\<leqslant\><around*|\||b|\|>,>>>>>>|<cell|>>|<row|<cell|<around*|[|KL|]>:>|<cell|<big|int><rsub|u,v=-1><rsup|1><around*|\||u-v|\|><rsup|-\<nu\>><around*|(|1-u<rsup|2>|)><rsup|A><around*|(|1-v<rsup|2>|)><rsup|B>d
    u d v=>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)><space|0.25spc><sqrt|\<pi\>>*<space|0.25spc>\<Gamma\>*<around*|(|A+1|)>*<space|0.25spc>\<Gamma\>*<around*|(|B+1|)>*<space|0.25spc>\<Gamma\>*<around*|(|B+A-\<nu\>+2|)>|\<Gamma\><around*|(|<frac|2*<space|0.25spc>A-\<nu\>+3|2>|)>*<space|0.25spc>\<Gamma\><around*|(|<frac|2*<space|0.25spc>B-\<nu\>+3|2>|)>*<space|0.25spc>\<Gamma\><around*|(|<frac|2*<space|0.25spc>B+2*<space|0.25spc>A-\<nu\>+4|2>|)>>,>|<cell|>>|<row|<cell|<around*|[|<math-up|S>|]>:>|<cell|<big|int><rsub|0\<less\>t<rsub|1>\<less\>\<ldots\>\<less\>t<rsub|k>\<less\>1><big|prod><rsub|i=1><rsup|k>t<rsub|i><rsup|\<alpha\>-1><around*|(|1-t<rsub|i>|)><rsup|\<beta\>-1>\<Delta\><rsup|2\<gamma\>><around*|(|t|)>d
    t=>|<cell|>>|<row|<cell|>|<cell|=<big|prod><rsub|i=0><rsup|k-1><frac|\<Gamma\><around*|(|\<alpha\>+i\<gamma\>|)>\<Gamma\><around*|(|\<beta\>+i\<gamma\>|)>\<Gamma\><around*|(|<around*|(|i+1|)>\<gamma\>|)>|\<Gamma\><around*|(|\<alpha\>+\<beta\>+<around*|(|i+k-1|)>\<gamma\>|)>\<Gamma\><around*|(|\<gamma\>|)>>,>|<cell|>>|<row|<cell|<around*|[|<math-up|S>|]><rprime|''>:>|<cell|<big|int><rsub|u,v=0><rsup|1>u<rsup|\<alpha\>-1>v<rsup|\<alpha\>-1><around*|(|1-u|)><rsup|\<beta\>-1><around*|(|1-u|)><rsup|\<beta\>-1><around*|\||u-v|\|><rsup|2\<gamma\>>=>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|<math-up|<cite|warnaar2010sl3>:>>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|\<Delta\><rsup|2\<gamma\>><around*|(|t|)>\<assign\><big|prod><rsub|1\<leqslant\>i\<less\>j\<leqslant\>k><around*|\||t<rsub|i>-t<rsub|j>|\|><rsup|2\<gamma\>>>|<cell|>>>>
  </eqnarray>

  We then prove some arrows of the diagram:

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<math-up|[S]>\<rightarrow\><math-up|[S]><rprime|''>:>|<cell|>>>>
  </eqnarray>

  <\bibliography|bib|alpha|intdep.bib>
    <\bib-list|War10>
      <bibitem*|War10><label|bib-warnaar2010sl3>S<nbsp>Ole Warnaar.
      <newblock>The sl3 selberg integral.
      <newblock><with|font-shape|italic|Advances in Mathematics>,
      224(2):499\U524, 2010.
    </bib-list>
  </bibliography>
</body>

<\initial>
  <\collection>
    <associate|magnification|1.2>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1>>
    <associate|bib-kobayashi1994discrete1|<tuple|Kob94|1>>
    <associate|bib-warnaar2010sl3|<tuple|War10|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      warnaar2010sl3
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>