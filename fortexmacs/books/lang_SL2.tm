<TeXmacs|1.99.4>

<style|<tuple|seminar|number-long-article>>

<\body>
  <section|General results>

  <subsection|Representations of an algebra <math|C<rsub|c><around*|(|G|)>>>

  <subsection|Criterion for complete irreducibility>

  <\theorem>
    Let <math|H>: Hilbert, <math|\<cal-A\>\<subset\>GL<around*|(|H|)>>:
    <math|\<ast\>>-algebra of compact operators. Then, <math|H>: is
    completely <math|\<cal-A\>>-reducible and every <math|\<cal-A\>>-irrep
    occurs with finite multiplicity.
  </theorem>

  <\folded|proof>
    Let <math|<wide|H|^>>: maximal sum of orthogonal <math|\<cal-A\>>-irreps.
    WLOG <math|<wide|H|^>=0>, so we just need to obtain contradiction. Take
    <math|A<rsup|\<neq\>0>\<in\>\<cal-A\>>: compact, Hermitian
    (\<because\><math|\<cal-A\>>: <math|\<ast\>>-closed), <math|\<lambda\>>:
    e-value of <math|A> and <math|M\<subset\>H>: <math|\<cal-A\>>-invariant,
    such that

    <\equation*>
      dim <wide*|<around*|(|M<rsub|\<lambda\>>|)>|\<wide-underbrace\>><rsub|=:<around*|{|v\<in\>M\<mid\>A*v=\<lambda\>v|}>>
    </equation*>

    is positive and smallest possible. Take
    <math|v<rsup|\<neq\>0>\<in\>M<rsub|\<lambda\>>> and let's show that
    <math|<wide|\<cal-A\>v|\<bar\>>>: irreducible. Indeed, assume
    <math|E\<subset\><wide|\<cal-A\>v|\<bar\>>>: <math|\<cal-A\>>-invariant.
    Then,

    <\equation*>
      <stack|<tformat|<table|<row|<cell|v=<wide*|v<rsub|E>|\<wide-underbrace\>><rsub|\<in\>E>+<wide*|v<rsub|E><rsup|\<perp\>>|\<wide-underbrace\>><rsub|\<in\>E<rsup|\<perp\>>>>>|<row|<cell|\<lambda\>v<rsub|E>+\<lambda\>v<rsub|E><rsup|\<perp\>>=\<lambda\>v=A*v=<wide*|A*v<rsub|E>|\<wide-underbrace\>><rsub|\<in\>E>+<wide*|A*v<rsub|E><rsup|\<perp\>>|\<wide-underbrace\>><rsub|\<in\>E<rsup|\<perp\>>>>>|<row|<cell|\<Rightarrow\>A*v<rsub|E>=\<lambda\>v<rsub|E>,A*v<rsub|E><rsup|\<perp\>>=\<lambda\>v<rsub|E><rsup|\<perp\>>;<space|1em>v<rsub|E>,v<rsub|E><rsup|\<perp\>>\<neq\>0.>>|<row|<cell|\<Rightarrow\>0<stack|<tformat|<table|<row|<cell|\<subset\>>>|<row|<cell|<neg|->>>>>>E<rsub|\<lambda\>><stack|<tformat|<table|<row|<cell|\<subset\>>>|<row|<cell|<neg|->>>>>>M<rsub|\<lambda\>>.>>>>>
    </equation*>

    \;
  </folded>

  <subsection|<math|L<rsup|2>>-kernels and Hilbert\USchmidt operators>

  <\theorem>
    Let <math|<around*|(|X,\<mathd\>x|)>,<around*|(|Y,\<mathd\>y|)>>: measure
    spaces and <math|q\<in\>L<rsup|2><around*|(|X\<times\>Y,\<mathd\>x\<mathd\>y|)>>.
    Then, the operator

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|L<rsup|2><around*|(|X,\<mathd\>x|)>>|<cell|<long-arrow|\<rubber-rightarrow\>|Q>>|<cell|L<rsup|2><around*|(|Y,\<mathd\>y|)>>>|<row|<cell|f>|<cell|\<mapsto\>>|<cell|<big|int><rsub|X>Q<around*|(|x,\<cdot\>|)>f<around*|(|x|)>\<mathd\>x>>>>>
    </equation*>

    is bounded compact and <math|<around*|\||Q|\|>\<leqslant\><around*|\<\|\|\>|q|\<\|\|\>><rsub|2>>.
  </theorem>

  <unfolded|proof|Estimate is clear, compactness follows by approximating
  <math|q> with finite sums of ONB of <math|L<rsup|2><around*|(|X\<times\>Y|)>>.>

  <section|Compact groups>

  <section|Spherical functions>

  We let\ 

  <\equation*>
    <stack|<tformat|<table|<row|<cell|C<rsub|c><around*|(|G//K|)>\<assign\><around*|{|f\<in\>C<rsub|c><around*|(|G|)>\<mid\>\<forall\>k<rsub|1,2>\<in\>K,x\<in\>G,f<around*|(|k<rsub|1>x
    k<rsub|2>|)>=f<around*|(|x|)>|}>,>>|<row|<cell|f<rsup|K><around*|(|x|)>\<assign\><big|int><rsub|K>f<around*|(|x
    k|)>d k,<space|1em><rsup|K>f\<assign\><text|similarly>.>>|<row|<cell|\<pi\>:G\<curvearrowright\>H:Hilbert\<rightsquigarrow\>P<rsub|K>:H\<rightarrow\>H<rsup|K>\<assign\><around*|{|v\<in\>H\<mid\>\<forall\>k\<in\>K,k
    v=v|}>>>|<row|<cell|P<rsub|K>v=<big|int><rsub|K>\<pi\><around*|(|k|)>v d
    k. >>>>>
  </equation*>

  <\theorem>
    Let:

    <\enumerate>
      <item><math|G>: locally compact unimodular;

      <item><math|K\<subset\>G>: compact;

      <item><math|\<tau\>:G\<rightarrow\>G>: antiautomorphism of order 2,
      such that\ 

      <\equation*>
        \<forall\>x\<in\>G<space|1em>\<exists\>k<rsub|1,2>\<in\>K,<space|1em>x<rsup|\<tau\>>=k<rsub|1>x
        k<rsub|2>.
      </equation*>
    </enumerate>

    Then <math|C<rsub|c><around*|(|G//K|)>>: commutative algebra (with
    respect to convolution <math|\<ast\>>).
  </theorem>

  <\remark*>
    This can be applied to the setting

    <\equation*>
      <around*|(|G,K,\<tau\>|)>=<around*|(|SL<rsub|2><around*|(|\<bbb-R\>|)>,SO<around*|(|2|)>,\<tau\>:x\<mapsto\>x<rsup|T>|)>.
    </equation*>
  </remark*>

  <\proof>
    Note that for the modular function we have

    <\equation*>
      1=\<Delta\><around*|(|\<tau\><rsup|2>|)>=\<Delta\><around*|(|\<tau\>|)><rsup|2>\<Rightarrow\>\<Delta\><around*|(|\<tau\>|)>=1.
    </equation*>

    Then, we proceed as

    <\equation*>
      <stack|<tformat|<table|<row|<cell|<around*|(|f\<ast\>g|)><around*|(|x|)>=<big|int><rsub|G>f<around*|(|x
      y<rsup|-1>|)>g<around*|(|y|)>\<mathd\>y>>|<row|<cell|=<big|int><rsub|G>f<around*|(|y<rsup|-1>|)>g<around*|(|y*x|)>\<mathd\>y=<big|int><rsub|G>g<around*|(|x<rsup|\<tau\>>y<rsup|\<tau\>>|)>f<around*|(|y<rsup|-\<tau\>>|)>\<mathd\>y>>|<row|<cell|=<big|int><rsub|G>g<around*|(|x<rsup|\<tau\>>y<rsup|-1>|)>f<around*|(|y|)>\<mathd\>y=<around*|(|g\<ast\>f|)><around*|(|x<rsup|\<tau\>>|)>=<around*|(|g\<ast\>f|)><around*|(|x|)>.>>>>>
    </equation*>

    \;
  </proof>
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|1.1|?>>
    <associate|auto-3|<tuple|1.2|?>>
    <associate|auto-4|<tuple|1.3|?>>
    <associate|auto-5|<tuple|2|?>>
    <associate|auto-6|<tuple|3|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>General
      results> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Representations
      of an algebra <with|mode|<quote|math>|C<rsub|c><around*|(|G|)>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Criterion
      for complete irreducibility> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc><with|mode|<quote|math>|L<rsup|2>>-kernels
      and Hilbert\USchmidt operators> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|2<space|2spc>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|1fn>

      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|3<space|2spc>Spherical
      functions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|1fn>
    </associate>
  </collection>
</auxiliary>