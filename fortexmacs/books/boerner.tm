<TeXmacs|1.99.4>

<style|<tuple|generic|number-long-article|number-europe>>

<\body>
  <section|Matrices>

  <section|Groups>

  <section|General Representation Theory>

  <subsection|Concept of Rep>

  <\theorem>
    (Maschke's Theorem) Every rep. of finite group is decomposable.
  </theorem>

  <\proof>
    Let <math|G> be a finite group and suppose representation
    <math|D:G\<ni\>s\<mapsto\>D<around*|(|s|)>> is reducible. Then, we have

    <\equation*>
      <stack|<tformat|<table|<row|<cell|D<around*|(|s|)>=<around*|(|<tabular|<tformat|<table|<row|<cell|D<rsub|1><around*|(|s|)>>|<cell|K<around*|(|s|)>>>|<row|<cell|>|<cell|D<rsub|2><around*|(|s|)>>>>>>|)>>>|<row|<cell|\<Rightarrow\>D<rsub|1><around*|(|s
      t|)>=D<rsub|1><around*|(|s|)>D<rsub|1><around*|(|t|)>,<space|1em>D<rsub|2><around*|(|s
      t|)>=D<rsub|2><around*|(|s|)>D<rsub|2><around*|(|t|)>,>>>>>
    </equation*>

    <\equation>
      K<around*|(|s t|)>=D<rsub|1><around*|(|s|)>K<around*|(|t|)>+K<around*|(|s|)>D<rsub|2><around*|(|t|)>.<label|eq:3-1>
    </equation>

    Hence, <math|D<rsub|0><around*|(|s|)>\<assign\>D<rsub|1><around*|(|s|)>\<oplus\>D<rsub|2><around*|(|s|)>>
    is a representation and we will be done if we will be able to show that
    <math|D\<cong\>D<rsub|0>>, hence we need to find <math|P>, such that
    <math|P D<rsub|0><around*|(|s|)>=D<around*|(|s|)>P>. We look for <math|P>
    of the form

    <\equation*>
      P=<around*|(|<tabular|<tformat|<table|<row|<cell|1<rsub|dim
      D<rsub|1><around*|(|\<cdot\>|)>>>|<cell|X>>|<row|<cell|>|<cell|1<rsub|dim
      D<rsub|2><around*|(|\<cdot\>|)>>>>>>>|)>
    </equation*>

    Hence, we need to find <math|X> such that

    <\equation>
      X D<rsub|2><around*|(|s|)>=D<rsub|1><around*|(|s|)>X+K<around*|(|s|)>.<label|eq:3-2>
    </equation>

    Now, we take <math|<eqref|eq:3-1>>, multiply it on the right by
    <math|D<rsub|2><around*|(|t<rsup|-1>|)>> and sum sum over all
    <math|t\<in\>G>, so we get

    <\equation*>
      <stack|<tformat|<table|<row|<cell|<big|sum><rsub|t\<in\>G>K<around*|(|s
      t|)>D<rsub|2><around*|(|t<rsup|-1>|)>=D<rsub|1><around*|(|s|)><wide*|<big|sum><rsub|t\<in\>G>K<around*|(|t|)>D<rsub|2><around*|(|t<rsup|-1>|)><rsub|>|\<wide-underbrace\>><rsub|=:A>+K<around*|(|s|)>>>>>>.
    </equation*>

    Now, if we take <math|u\<assign\>s t>, then
    <math|LHS=<big|sum><rsub|t\<in\>G>K<around*|(|s
    t|)>D<rsub|2><around*|(|t<rsup|-1>|)>=<wide*|<big|sum><rsub|t\<in\>G>K<around*|(|u|)>D<rsub|2><around*|(|u<rsup|-1>|)>|\<wide-underbrace\>><rsub|=A>\<cdot\>D<rsub|2><around*|(|s|)>>,
    no we get

    <\equation*>
      A D<rsub|2><around*|(|s|)>=D<rsub|1><around*|(|s|)>A+K<around*|(|s|)>.
    </equation*>

    \;
  </proof>

  <subsection|Group ring and Regular Representations>
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?|../../../.TeXmacs/texts/scratch/no_name_22.tm>>
    <associate|auto-2|<tuple|2|?|../../../.TeXmacs/texts/scratch/no_name_22.tm>>
    <associate|auto-3|<tuple|3|?|../../../.TeXmacs/texts/scratch/no_name_22.tm>>
    <associate|auto-4|<tuple|3.1|?|../../../.TeXmacs/texts/scratch/no_name_22.tm>>
    <associate|auto-5|<tuple|3.2|?|../../../.TeXmacs/texts/scratch/no_name_22.tm>>
    <associate|eq:3-1|<tuple|3.1|?|../../../.TeXmacs/texts/scratch/no_name_22.tm>>
    <associate|eq:3-2|<tuple|3.2|?|../../../.TeXmacs/texts/scratch/no_name_22.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Matrices>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Groups>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>General
      Representation Theory> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Concept of Rep
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>
    </associate>
  </collection>
</auxiliary>