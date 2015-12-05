<TeXmacs|1.0.7.18>

<project|master_master.tm>

<style|<tuple|article|mystyle>>

<\body>
  <section|Setting and Goal>

  <section|Main results>

  <\definition>
    (from <verbatim|P-def.pdf>)<label|def-P>Given the meromorphic function
    <math|f> not identicall zero with argument <math|\<nu\>\<in\>\<bbb-C\>>
    we define the map <math|\<frak-P\><around*|(|f|)>:\<bbb-C\>\<rightarrow\>\<bbb-Z\>>
    with <math|\<frak-P\><around*|(|f|)><around*|(|\<nu\><rsub|0>|)>=-m\<in\>-\<bbb-Z\><rsub|\<gtr\>0>>
    if <math|f> has zero of order <math|m> at <math|\<nu\>=\<nu\><rsub|0>>,
    <math|\<frak-P\><around*|(|f|)><around*|(|\<nu\><rsub|0>|)>=m\<in\>\<bbb-Z\><rsub|\<gtr\>0>>
    if <math|f> has pole of order <math|m> at <math|\<nu\>=\<nu\><rsub|0>>
    and <math|\<frak-P\><around*|(|f|)><around*|(|\<nu\><rsub|0>|)>=0>
    otherwise. We also use <math|\<frak-P\><rsub|\<pm\>><around*|(|f|)>> to
    denote positive and negative parts of <math|\<frak-P\><around*|(|f|)>>.

    Similarly, we define <math|\<frak-P\><around*|(|F<rsub|\<nu\>>|)>> and
    <math|\<frak-P\><rsub|\<pm\>><around*|(|F<rsub|\<nu\>>|)>>for
    <math|F<rsub|\<nu\>>> meromorphic distribution depending on
    <math|\<nu\>\<in\>\<bbb-C\>>.

    For <math|f,g:\<bbb-C\>\<rightarrow\>\<bbb-Z\>> we will write
    <math|f\<leqslant\>g> to denote the inequality holding on
    <math|\<bbb-C\>>. For <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<Lambda\>>>
    being the finite set of <math|\<bbb-C\>\<rightarrow\>\<bbb-Z\>>
    functions, we let <math|max<around*|{|f<rsub|i>|}><rsub|i\<in\>\<Lambda\>>>
    and <math|<big|sum><around*|{|f<rsub|i>|}><rsub|i\<in\>\<Lambda\>>> to
    denote pointwise maximum and sum respectively. When needing infix
    notation, we will use <math|\<cup\>> and <math|+> respectively.

    Although ambiguous, we will sometimes denote
    <math|f:\<bbb-C\>\<rightarrow\>\<bbb-Z\>> satisfying
    <math|f\<leqslant\>1> on <math|\<bbb-C\>> with sets
    <math|<around*|{|f\<neq\>0|}>>, so for example
    <math|<around*|{|\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>|}>>, for
    example, may be used to denote <math|\<frak-P\><around*|(|\<Gamma\><around*|(|\<cdot\>|)>|)>>.
  </definition>

  <\remark>
    (from <verbatim|P-def.pdf>)The following properties of
    <math|\<frak-P\><around*|(|\<cdot\>|)>> are evident:

    <\enumerate>
      <item><math|\<frak-P\><around*|(|\<Gamma\><around*|(|\<nu\>-a|)>|)>=<around*|{|\<nu\>\<in\>a-\<bbb-Z\><rsub|\<geqslant\>0>|}>>;

      <item>for <math|n\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
      <math|\<frak-P\><around*|(|\<Gamma\><around*|(|t|)>/\<Gamma\><around*|(|t-n|)>|)>=-<around*|{|t=1,2,\<ldots\>,n|}>>;

      <item>for <math|n\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
      <math|\<frak-P\><around*|(|\<Gamma\><around*|(|t+n|)>/\<Gamma\><around*|(|n|)>|)>=-<around*|{|t=-n+1,-n+2,\<ldots\>,0|}>>;

      <item>if <math|<around*|{|f<rsub|i>|}><rsub|i>> are meromorphic
      functions, then <math|\<frak-P\><rsub|><around*|(|<big|sum><rsub|i>f<rsub|i>|)>\<leqslant\>max<around*|{|\<frak-P\><rsub|><around*|(|f<rsub|i>|)>|}><rsub|i>\<nosymbol\>>;

      <item>Moreover, if <math|<around*|{|<around*|{|\<frak-P\><rsub|+><around*|(|f<rsub|i>|)>\<gtr\>0|}>|}><rsub|i>>
      are pairwise disjoint, we have <math|\<frak-P\><rsub|+><rsub|><around*|(|<big|sum><rsub|i>f<rsub|i>|)>=max<around*|{|\<frak-P\><rsub|+><rsub|><around*|(|f<rsub|i>|)>|}><rsub|i>\<nosymbol\>>;

      <item><math|\<frak-P\><around*|(|f/g|)>=\<frak-P\><around*|(|f|)>-\<frak-P\><around*|(|g|)>>
      and <math|\<frak-P\><around*|(|f\<cdot\>g|)>=\<frak-P\><around*|(|f|)>+\<frak-P\><around*|(|g|)>>.
    </enumerate>

    Similar statements hold for meromorphic distributions on <math|\<bbb-C\>>
    as well.
  </remark>

  <\lemma>
    If <math|F<rsub|\<nu\>>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>|)>>
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
  </lemma>

  <\proof>
    TODO
  </proof>

  <section|Proofs>
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
    <associate|auto-4|<tuple|3|?>>
    <associate|def-1|<tuple|1|?>>
    <associate|def-P|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Setting
      and Goal> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Main
      results> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Proofs>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>