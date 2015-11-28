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
    these are nonzero for <math|\<nu\>\<in\>\<bbb-C\>>.
  </proposition>

  <\proposition>
    <label|prop-2>Let the setting, <math|F<rsub|\<nu\>><rsup|<around*|(|i|)>>>
    and <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>> be as in
    proposition <reference|prop-1>, but assume that
    <math|p,q\<in\>2\<bbb-Z\><rsub|\<gtr\>0>> and define\ 

    <\equation*>
      N<rsub|i>\<assign\><choice|<tformat|<table|<row|<cell|,>|<cell|i=0,n/2\<in\>2\<bbb-Z\>>>|<row|<cell|,>|<cell|i=0,n/2\<in\>2\<bbb-Z\>+1>>|<row|<cell|,>|<cell|i=1,n/2\<in\>2\<bbb-Z\>>>|<row|<cell|,>|<cell|i=1,n/2\<in\>2\<bbb-Z\>+1>>>>>
    </equation*>
  </proposition>

  <section|Auxiliary results>

  <\fact>
    <label|fact-gelfand-n:odd><cite-detail|gelfand1980distribution|sec.
    III.2.2> For <math|n\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1> we have:

    <\enumerate>
      <item><math|Q<rsub|\<pm\>><rsup|\<nu\>>> has simple pole at
      <math|\<nu\>=-k> with <math|k=1,2> and the residue restricted to
      <math|<around*|{|x\<neq\>0|}>> equals to

      <\equation*>
        res<rsub|\<nu\>=-k><around*|(|Q<rsub|\<pm\>><rsup|\<nu\>>|)><mid|\|><rsub|<around*|{|x\<neq\>0|}>>=<choice|<tformat|<table|<row|<cell|<frac|<around*|(|-1|)><rsup|k-1>|<around*|(|k-1|)>!>\<delta\><rsup|<around*|(|k-1|)>><around*|(|Q|)>,>|<cell|+>>|<row|<cell|<frac|1|<around*|(|k-1|)>!>\<delta\><rsup|<around*|(|k-1|)>><around*|(|Q|)>,>|<cell|->>>>>
      </equation*>

      <item><math|Q<rsub|\<pm\>><rsup|\<nu\>>> has at most simple pole at
      <math|\<nu\>=-n/2> with residue given as

      <\equation*>
        res<rsub|\<nu\>=-n/2><around*|(|Q<rsub|\<pm\>><rsup|\<nu\>>|)>=<choice|<tformat|<table|<row|<cell|<frac|<around*|(|-1|)><rsup|<frac|q|2>>\<pi\><rsup|<frac|1|2>n>|\<Gamma\><around*|(|<frac|n|2>|)>>\<delta\><around*|(|x|)>,>|<cell|+,p\<in\>2\<bbb-Z\>+1>>|<row|<cell|0,>|<cell|+,p\<in\>2\<bbb-Z\>>>|<row|<cell|0,>|<cell|-,p\<in\>2\<bbb-Z\>+1>>|<row|<cell|<frac|<around*|(|-1|)><rsup|<frac|p|2>>\<pi\><rsup|<frac|1|2>n>|\<Gamma\><around*|(|<frac|n|2>|)>>\<delta\><around*|(|x|)>,>|<cell|-,p\<in\>2\<bbb-Z\>>>>>>
      </equation*>
    </enumerate>
  </fact>

  <\remark>
    It is quite possible, I think, to prove this fact with direct methods, by
    using simpler machinery, than that of \ <cite|gelfand1980distribution>.
  </remark>

  <\lemma>
    <label|lem-4>Let <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>> and
    <math|N<rsub|i>> be the same as in proposition <reference|prop-1>. Then
    <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>\<neq\>0> for
    <math|\<nu\>\<nin\><around*|{|\<frak-P\><around*|(|N<rsub|i>|)>\<neq\>0|}>>,
    the notation <math|\<frak-P\><around*|(|\<cdot\>|)>> being introduced in
    <verbatim|KP-normalization.pdf>.
  </lemma>

  <\proof>
    The holomorphicity part of proposition <reference|prop-1> implies that
    the set <math|<around*|{|\<frak-P\><around*|(|N<rsub|i>|)>\<neq\>0|}>> is
    the holomorphicity domain of <math|F<rsub|\<nu\>><rsup|<around*|(|i|)>>>.
    TODO
  </proof>

  <\lemma>
    <label|lem-5>Let <math|L\<assign\><big|sum><rsub|i=0><rsup|p><frac|\<partial\><rsup|2>|\<partial\>x<rsub|i><rsup|2>>-<big|sum><rsub|j=0><rsup|q><frac|\<partial\><rsup|2>|\<partial\>y<rsub|j><rsup|2>>>
    and <math|\<delta\><rsup|<around*|(|k|)>><around*|(|Q|)>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>>
    for <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>>. Then
    <math|L\<delta\><rsup|<around*|(|k|)>><around*|(|Q|)>\<simeq\>\<delta\><rsup|<around*|(|k+1|)>><around*|(|Q|)>>
    and in particular nonzero.
  </lemma>

  <\proof>
    As shown in <cite-detail|gelfand1980distribution|sec. III.1.6, eq. (1)>,
    we have\ 

    <\equation*>
      <frac|\<partial\>|\<partial\>x<rsub|j>>\<delta\><rsup|<around*|(|k|)>><around*|(|Q|)>=<frac|\<partial\>Q|\<partial\>x<rsub|j>>\<delta\><rsup|<around*|(|k+1|)>><around*|(|Q|)>
    </equation*>

    and this implies that <math|L\<delta\><rsup|<around*|(|k|)>><around*|(|Q|)>=2\<delta\><rsup|<around*|(|k+1|)>><around*|(|Q|)>+4\<delta\><rsup|<around*|(|k+2|)>><around*|(|Q|)>>.
    Now, as shown in <cite-detail|gelfand1980distribution|sec. III.1.6, eq.
    (6)>, the equality <math|Q\<delta\><rsup|<around*|(|k|)>><around*|(|Q|)>=-k\<delta\><rsup|<around*|(|k-1|)>><around*|(|Q|)>>
    holds and therefore <math|L\<delta\><rsup|<around*|(|k|)>><around*|(|Q|)>=<around*|(|2-4<around*|(|k+2|)>|)>\<delta\><rsup|<around*|(|k+1|)>><around*|(|Q|)>>
    and as for <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
    <math|2-4<around*|(|k+2|)>\<neq\>0>, this ends the proof.
  </proof>

  <\lemma>
    <label|lem-6>For <math|L\<assign\><big|sum><rsub|i=0><rsup|p><frac|\<partial\><rsup|2>|\<partial\>x<rsub|i><rsup|2>>-<big|sum><rsub|j=0><rsup|q><frac|\<partial\><rsup|2>|\<partial\>y<rsub|j><rsup|2>>>
    and <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
    <math|L<rsup|k>\<delta\><around*|(|x|)>\<neq\>0>.
  </lemma>

  <\proof>
    Indeed, for fixed <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> it suffices
    to find <math|f\<in\>C<rsup|\<infty\>><around*|(|\<bbb-R\><rsup|p,q>|)>>
    such that <math|<around*|(|L<rsup|k>f|)><around*|(|0|)>\<neq\>0>, as then
    we can take <math|\<varphi\>\<in\>C<rsub|c><rsup|\<infty\>><around*|(|\<bbb-R\><rsup|p,q>|)>>
    such that <math|\<varphi\>=f> near <math|0> and thus
    <math|<around*|\<langle\>|L<rsup|k>\<delta\>,\<varphi\>|\<rangle\>>\<simeq\><around*|\<langle\>|\<delta\>,L<rsup|k>\<varphi\>|\<rangle\>>=<around*|(|L<rsup|k>\<varphi\>|)><around*|(|0|)>=<around*|(|L<rsup|k>f|)><around*|(|0|)>\<neq\>0>.

    In turn, it suffices to show that <math|L<rsup|k>Q<rsup|k>=const\<neq\>0>.
    Finally, this follows once one observes that <math|L
    Q<rsup|k>=<around*|(|2n+4<around*|(|k-1|)>|)>k Q<rsup|k-1><rsup|><rsup|>>
    and hence <math|L<rsup|k>Q<rsup|k>=k!\<Pi\><rsub|i=0><rsup|k-1><around*|(|2n+4i|)>>.
  </proof>

  <section|Proofs>

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

    It still remains to show that <math|<wide|F|~><rsup|<around*|(|i|)>><rsub|\<nu\>>\<neq\>0>
    for <math|\<nu\>\<in\>\<bbb-C\>>. Now, for
    <math|\<nu\>\<nin\><around*|{|\<frak-P\><around*|(|N<rsub|i>|)>\<neq\>0|}>>
    this is granted by lemma <reference|lem-4>, so we can confine ourselves
    to <math|\<nu\>\<in\><around*|{|\<frak-P\><around*|(|N<rsub|i>|)>\<neq\>0|}>>
    case.

    Let's first consider <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|0|)>>>.
    We need to show it does not vanish for
    <math|\<nu\>\<in\><around*|(|-2\<bbb-Z\><rsub|\<geqslant\>0>-1|)>\<sqcup\><around*|(|-<frac|n|2>-\<bbb-Z\><rsub|\<geqslant\>0>|)>>.
    However, in the light of equation <math|<reference|eq-1>> it suffices to
    show that for <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
    <math|L<rsup|2k><wide|F|~><rsub|-1><rsup|<around*|(|0|)>>\<neq\>0> and
    <math|L<rsup|2k><wide|F|~><rsub|-n/2><rsup|<around*|(|0|)>>\<neq\>0>.
    Now, the first item of fact <reference|fact-gelfand-n:odd> implies that
    <math|<wide|F|~><rsub|-1><rsup|<around*|(|0|)>><mid|\|><rsub|<around*|{|x\<neq\>0|}>>\<simeq\>\<delta\><rsup|<around*|(|0|)>><around*|(|Q|)>>
    and thus lemma <reference|lem-5> implies that
    <math|L<rsup|2k><wide|F|~><rsub|-1><rsup|<around*|(|0|)>>\<neq\>0>. Next,
    the second item of fact <reference|fact-gelfand-n:odd> implies that
    <math|<wide|F|~><rsub|-n/2><rsup|<around*|(|0|)>>\<simeq\>\<delta\><around*|(|x|)>>
    and therefore lemma <reference|lem-6> implies the desired
    <math|L<rsup|2k><wide|F|~><rsub|-n/2><rsup|<around*|(|0|)>>\<neq\>0>.

    Next, we consider <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|1|)>>>.
    Similarly to previous paragraph, it suffices to show that
    <math|L<rsup|2k><wide|F|~><rsub|-2><rsup|<around*|(|1|)>>\<neq\>0> and
    <math|L<rsup|2k><wide|F|~><rsub|-n/2><rsup|<around*|(|1|)>>\<neq\>0> for
    <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>>. And these are similarly
    granted by fact <reference|fact-gelfand-n:odd> and lemmas
    <reference|lem-5> and <reference|lem-6>.
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
    <associate|auto-3|<tuple|3|?>>
    <associate|auto-4|<tuple|4|?>>
    <associate|auto-5|<tuple|2|?>>
    <associate|bib-gelfand1980distribution|<tuple|1|?>>
    <associate|eq-1|<tuple|1|?>>
    <associate|eq-2|<tuple|2|?>>
    <associate|fact-gelfand-n:odd|<tuple|3|?>>
    <associate|lem-4|<tuple|5|?>>
    <associate|lem-5|<tuple|6|?>>
    <associate|lem-6|<tuple|7|?>>
    <associate|prop-1|<tuple|1|?>>
    <associate|prop-2|<tuple|2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      gelfand1980distribution

      gelfand1980distribution

      gelfand1980distribution

      gelfand1980distribution
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Setting>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Main
      results> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Auxiliary
      results> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Proofs>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>