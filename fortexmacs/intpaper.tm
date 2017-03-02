<TeXmacs|1.99.4>

<style|article>

<\body>
  <section|Main results>

  <\theorem>
    <label|main-thm>For <math|\<lambda\>,\<mu\>,\<gamma\>\<in\>\<bbb-C\>>
    such that

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|Re<around*|(|\<lambda\>|)>,Re<around*|(|\<mu\>|)>,Re<around*|(|\<gamma\>|)>\<gtr\>-1/2,>|<cell|>>>>
    </eqnarray>

    <math|x\<in\><around*|[|0,1|]>> and <math|l,m\<in\>\<bbb-N\>> such that
    <math|l+m\<in\>2\<bbb-N\>> the following integral converges:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|s-t
      x|)><rsub|\<pm\>><rsup|2\<gamma\>>u<rsub|l><rsup|\<lambda\>><around*|(|s|)>u<rsub|m><rsup|\<mu\>><around*|(|t|)>d
      s d t,>|<cell|>>>>
    </eqnarray>

    and is equal to

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|=<frac|<around*|(|-\<gamma\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>>\<pi\><rsup|3/2>\<Gamma\><around*|(|<frac|1|2>+\<gamma\>|)>x<rsup|m>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|l+m|2>-\<gamma\>,<frac|m-l|2>-\<gamma\>-\<lambda\>>>|<row|<cell|\<mu\>+m+1>>>>>;x<rsup|2>|)>|2\<Gamma\><around*|(|\<mu\>+m+1|)>\<Gamma\><around*|(|\<gamma\>+<frac|l-m|2>+\<lambda\>+1|)>>.>|<cell|>>>>
    </eqnarray>
  </theorem>

  Here <math|u<rsub|l><rsup|\<lambda\>><around*|(|s|)>\<assign\><frac|2<rsup|2\<lambda\>-1>l!\<Gamma\><around*|(|\<lambda\>|)>|\<Gamma\><around*|(|2\<lambda\>+l|)>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>>
  and similarly for <math|u<rsub|m><rsup|\<mu\>><around*|(|t|)>>. Note that
  as Gegenbauer polynomial <math|g<around*|(|s|)>\<assign\>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>>
  satisfies the second-order differential equation

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<around*|(|1-s<rsup|2>|)>g<rprime|''>-<around*|(|2\<lambda\>+1|)>s
    g<rprime|'>+n<around*|(|n+2\<lambda\>|)>g=0,>|<cell|>>>>
  </eqnarray>

  \ <math|f<around*|(|s|)>\<assign\>u<rsub|l><rsup|\<lambda\>><around*|(|s|)>>
  satisfies

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<around*|(|1-s<rsup|2>|)><rsup|2>f<rprime|''>+<around*|(|1-x<rsup|2>|)><around*|(|1-2\<lambda\>-<around*|(|2\<lambda\>+1|)>x|)>f<rprime|'>+<around*|(|<around*|(|2s+1|)><around*|(|\<lambda\><rsup|2>-1/4|)>+l<around*|(|l+2\<lambda\>|)><around*|(|1-s<rsup|2>|)>|)>f=0.>|<cell|>>>>
  </eqnarray>

  The latter second-order ODE has two singular points: <math|s=-1> and
  <math|s=1>, both of which are regular.

  <with|font-series|bold|TODO:> talk about the other solution

  <\remark*>
    As we have <math|u<rsub|l><rsup|\<lambda\>><around*|(|-s|)>=<around*|(|-1|)><rsup|l>u<rsub|l><rsup|\<lambda\>><around*|(|s|)>>,
    we see that we can extend statement of Theorem <reference|main-thm> to
    include the <math|-1\<leqslant\>x\<leqslant\>0> case.
  </remark*>

  <section|Proof of Main Theorem>

  <\lemma>
    <label|lem2>For <math|a,b,c\<in\>\<bbb-C\>> such that
    <math|Re<around*|(|a|)>,Re<around*|(|b|)>,Re<around*|(|c|)>\<gtr\>0> and
    <math|0\<leqslant\>x\<leqslant\>1> we have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|s+t
      x|)><rsub|\<pm\>><rsup|2c-1><around*|(|1-s<rsup|2>|)><rsup|a-1><around*|(|1-t<rsup|2>|)><rsup|b-1>d
      s d t=>|<cell|>>|<row|<cell|>|<cell|<frac|1|2>B<around*|(|a,c|)>B<around*|(|b,<frac|1|2>|)>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-c+1/2,-a-c+1>>|<row|<cell|b+1/2>>>>>;x<rsup|2>|)>.>|<cell|>>>>
    </eqnarray>
  </lemma>

  <with|font-series|bold|TODO:> Lemma <reference|lem2> <math|\<Rightarrow\>>
  Theorem <reference|main-thm>.

  <section|Proof of Lemma <reference|lem2>>

  <\lemma>
    <label|lem3>For <math|a,c\<in\>\<bbb-C\>> such that
    <math|Re<around*|(|a|)>,Re<around*|(|c|)>\<gtr\>0> and
    <math|-1\<leqslant\>x\<leqslant\>1> we have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around*|(|s+x|)><rsub|\<pm\>><rsup|2c-1><around*|(|1-s<rsup|2>|)><rsup|a-1>d
      s=2<rsup|a-1>B<around*|(|2c,a|)><around*|(|1\<pm\>x|)><rsup|2c+a-1>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|1-a,2c>>|<row|<cell|2c+a>>>>>;<frac|1\<pm\>x|2>|)>.>|<cell|>>>>
    </eqnarray>
  </lemma>

  <\lemma>
    <label|lem4>For <math|a,b\<in\>\<bbb-C\>> such that
    <math|Re<around*|(|a|)>,Re<around*|(|b|)>\<gtr\>0> and
    <math|x\<in\><around*|[|-1,1|]>> we have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around*|(|1-t
      x|)><rsup|a-1><around*|(|1-t<rsup|2>|)><rsup|b-1>d
      t=B<around*|(|<frac|1|2>,b|)> <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|1-a|2>,<frac|2-a|2>>>|<row|<cell|b+<frac|1|2>>>>>>;x<rsup|2>|)>.>|<cell|>>>>
    </eqnarray>
  </lemma>

  <with|font-series|bold|TODO:> Lemma <reference|lem3> + Lemma
  <reference|lem4> <math|\<Rightarrow\>> Lemma <reference|lem2>.

  <with|font-series|bold|TODO:> proof of Lemma <reference|lem3>

  <with|font-series|bold|TODO:> proof of Lemma <reference|lem4>

  <section|Special values>

  <\corollary*>
    Setting <math|x=1> and <math|l=m=0> in the statement of Theorem
    <reference|main-thm> we get:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|s-t|)><rsub|\<pm\>><rsup|2\<gamma\>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>d
      s d t=<frac|\<Gamma\><around*|(|<frac|1|2>+\<gamma\>|)><sqrt|\<pi\>>\<Gamma\><around*|(|\<lambda\>-<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>-<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+2\<gamma\>+1|)>|2\<Gamma\><around*|(|\<lambda\>+\<gamma\>+1|)>\<Gamma\><around*|(|\<mu\>+\<gamma\>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<gamma\>+1|)>>.>|<cell|>>>>
    </eqnarray>
  </corollary*>

  <\center>
    <image|intdep.png|753px|249px||>
  </center>

  <cite|warnaar2008bisymmetric>

  <\bibliography|bib|alpha|intdep.bib>
    <\bib-list|War08>
      <bibitem*|War08><label|bib-warnaar2008bisymmetric>S<nbsp>Ole Warnaar.
      <newblock>Bisymmetric functions, macdonald polynomials and
      <math|<with|math-font|Euler|s*l><rsub|3>> basic hypergeometric series.
      <newblock><with|font-shape|italic|Compositio Mathematica>,
      144(02):271\U303, 2008. <newblock><with|font-series|bold|I've looked
      through this paper. Seems to be the <math|q>-generalization of
      Tarasov-Varchenko>.
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
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|1>>
    <associate|auto-4|<tuple|4|2>>
    <associate|auto-5|<tuple|4|2>>
    <associate|bib-dotsenko1985four|<tuple|DF85|?>>
    <associate|bib-tarasov2003selberg|<tuple|TV03|?>>
    <associate|bib-warnaar2008bisymmetric|<tuple|War08|?>>
    <associate|bib-warnaar2010sl3|<tuple|War10|?>>
    <associate|lem2|<tuple|2|1>>
    <associate|lem3|<tuple|3|1>>
    <associate|lem4|<tuple|4|1>>
    <associate|main-thm|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      warnaar2008bisymmetric
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Main
      results> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Proof
      of Main Theorem> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Proof
      of Lemma <reference|lem2>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Special
      values> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>