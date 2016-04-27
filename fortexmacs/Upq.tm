<TeXmacs|1.0.7.18>

<style|<tuple|article|number-long-article>>

<\body>
  <section|Notations and setting>

  We let <math|p,q\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> with <math|p\<gtr\>0>
  and we let <math|n\<assign\>p+q>. We will denote row-vector of size
  <math|m> having every element equal to some <math|a> as <math|a<rsub|m>>.
  The elements of <math|\<bbb-C\><rsup|m>> (or <math|\<bbb-R\><rsup|m>>, or
  whatever) are assumed to be column-vectors. We will use notations:

  <\equation*>
    \<bbb-C\><rsup|\<times\>>\<assign\><around*|{|z\<in\>\<bbb-C\><mid|\|>z\<neq\>0|}>,<space|2em>\<bbb-C\><rsup|\<ast\>>\<assign\><around*|{|z\<in\>\<bbb-C\><mid|\|>
    <around*|\||z|\|>=1|}>.
  </equation*>

  We further let

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|G\<assign\>U<around*|(|p+1,q+1|)>;>|<cell|>>|<row|<cell|>|<cell|G<rprime|'>=Stab<around*|(|G\<curvearrowright\>\<bbb-C\><rsup|p+1,q+1>,e<rsub|p+1>|)>\<simeq\>U<around*|(|p,q+1|)>;>|<cell|>>|<row|<cell|>|<cell|\<Xi\>\<assign\>\<Xi\><rsup|p+1,q+1>\<assign\><around*|{|<around*|(|x,y|)>\<in\>\<bbb-C\><rsup|p+1,q+1>\\<around*|{|0|}><mid|\|>
    <around*|\||x|\|><rsub|p+1>=<around*|\||y|\|><rsub|q+1>|}>;>|<cell|>>|<row|<cell|>|<cell|A\<assign\><around*|{|a<around*|(|t|)>\<assign\>exp<matrix|<tformat|<table|<row|<cell|0>|<cell|0<rsub|p+q><rsub|>>|<cell|t>>|<row|<cell|0<rsub|p+q><rsup|T>>|<cell|0<rsub|p+q,p+q>>|<cell|0<rsub|p+q><rsup|T>>>|<row|<cell|t>|<cell|0<rsub|p+q>>|<cell|0>>>>><mid|\|>t\<in\>\<bbb-R\>|}>=<around*|{|<matrix|<tformat|<table|<row|<cell|ch<around*|(|t|)>>|<cell|0<rsub|p+q><rsub|>>|<cell|sh<around*|(|t|)>>>|<row|<cell|0<rsub|p+q><rsup|T>>|<cell|I<rsub|p+q>>|<cell|0<rsub|p+q><rsup|T>>>|<row|<cell|sh<around*|(|t|)>>|<cell|0<rsub|p+q>>|<cell|ch<around*|(|t|)>>>>>><mid|\|>t\<in\>\<bbb-R\>|}>;>|<cell|>>|<row|<cell|>|<cell|J\<assign\>I<rsub|p,q>\<assign\>diag<around*|(|1<rsub|p>,-1<rsub|q>|)>;>|<cell|>>|<row|<cell|>|<cell|\<bbb-C\><rsup|p+q>\<ni\>v\<mapsto\>Q<around*|(|v|)>\<assign\>v<rsup|\<ast\>>J
    v\<in\>\<bbb-R\>;>|<cell|>>|<row|<cell|>|<cell|N\<assign\>N<rsub|+>\<assign\><around*|{|n<rsub|+><around*|(|v,\<alpha\>|)>\<assign\>n<around*|(|v,\<alpha\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|1+i\<alpha\>-Q<around*|(|v|)>/2>|<cell|-<around*|(|J
    v|)><rsup|\<ast\>>>|<cell|-i\<alpha\>+Q<around*|(|v|)>/2>>|<row|<cell|v>|<cell|I<rsub|p+q>>|<cell|-v>>|<row|<cell|i\<alpha\>-Q<around*|(|v|)>/2>|<cell|-<around*|(|J
    v|)><rsup|\<ast\>>>|<cell|1-i\<alpha\>+Q<around*|(|v|)>/2>>>>><mid|\|>v\<in\>\<bbb-C\><rsup|p+q>,\<alpha\>\<in\>\<bbb-R\>|}>;>|<cell|>>|<row|<cell|>|<cell|N<rsub|->\<assign\><around*|{|n<rsub|-><around*|(|v,\<alpha\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|1+i\<alpha\>-Q<around*|(|v|)>/2>|<cell|-<around*|(|J
    v|)><rsup|\<ast\>>>|<cell|i\<alpha\>-Q<around*|(|v|)>/2>>|<row|<cell|v>|<cell|I<rsub|p+q>>|<cell|v>>|<row|<cell|-i\<alpha\>+Q<around*|(|v|)>/2>|<cell|<around*|(|J
    v|)><rsup|\<ast\>>>|<cell|1-i\<alpha\>+Q<around*|(|v|)>/2>>>>><mid|\|>v\<in\>\<bbb-C\><rsup|p+q>,\<alpha\>\<in\>\<bbb-R\>|}>;>|<cell|>>|<row|<cell|>|<cell|\<bbb-R\><rsup|2p+2q+1>\<simeq\>\<bbb-C\><rsup|p+q>\<times\>\<bbb-R\>\<ni\>\<psi\><around*|(|v,\<alpha\>|)>\<mapsto\>n<rsub|-><around*|(|v,\<alpha\>|)><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0<rsub|p+q><rsup|T>>>|<row|<cell|1>>>>>=<matrix|<tformat|<table|<row|<cell|1+2i\<alpha\>-Q<around*|(|v|)>>>|<row|<cell|2v>>|<row|<cell|1-2i\<alpha\>+Q<around*|(|v|)>>>>>>\<in\>\<Xi\>;>|<cell|>>|<row|<cell|>|<cell|M\<assign\><around*|{|<matrix|<tformat|<table|<row|<cell|\<theta\>>|<cell|>|<cell|>>|<row|<cell|>|<cell|m>|<cell|>>|<row|<cell|>|<cell|>|<cell|\<theta\>>>>>><mid|\|>\<theta\>\<in\>C<rsup|\<ast\>>,m\<in\>U<around*|(|p,q|)>|}>;>|<cell|>>|<row|<cell|>|<cell|A<rprime|'>\<assign\>A\<cap\>G<rprime|'>=A,<space|1em>N<rsub|+><rprime|'>\<assign\>N<rprime|'>\<assign\>N\<cap\>G<rprime|'>,<space|1em>M<rprime|'>\<assign\>M\<cap\>G<rprime|'>;>|<cell|>>|<row|<cell|>|<cell|P\<assign\>M
    A N=Stab<around*|(|G\<curvearrowright\>\<Xi\>;<around*|(|1,0<rsub|p+q>,1|)>|)>,<space|1em>P<rprime|'>\<assign\>M<rprime|'>A<rprime|'>N<rprime|'>=P\<cap\>G<rprime|'>>|<cell|>>>>
  </eqnarray>

  <\proposition>
    The following holds:

    <\enumerate>
      <item>The map <math|\<psi\>:\<bbb-R\><rsup|2p+2q+1>\<rightarrow\>\<Xi\>>
      defined above is an embedding. When composed with the projection
      <math|\<Xi\>\<rightarrow\>\<Xi\>/\<bbb-C\><rsup|\<times\>>> it stays an
      embedding, which we will also call <math|\<psi\>:\<bbb-R\><rsup|2p+2q+1>\<rightarrow\>\<Xi\>/\<bbb-C\><rsup|\<times\>>>;
    </enumerate>
  </proposition>

  <\proof>
    Follows by direct computations.
  </proof>

  <section|Basic geometry><label|sec:basicgeom>

  <subsection|Main results>

  <\proposition>
    <label|basicgeom:prop-cosets>The action
    <math|P<rprime|'>\<curvearrowright\>G/P\<simeq\>\<Xi\>/\<bbb-C\><rsup|\<times\>>>
    has the following orbit decomposition:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<choice|<tformat|<table|<row|<cell|<around*|{|<around*|(|1,0<rsub|p+q>,1|)>\<bbb-C\><rsup|\<times\>>|}>\<sqcup\><around*|{|x<rsub|p+1>=0|}>\\<around*|{|<around*|(|1,0<rsub|p+q>,1|)>\<bbb-C\><rsup|\<times\>>|}>\<sqcup\><around*|{|x<rsub|p+1>\<neq\>0|}>,>|<cell|q=0>>|<row|<cell|<around*|{|x<rsub|p+1>\<neq\>0,x<rsub|1>\<neq\>y<rsub|q+1>|}>\<sqcup\><around*|{|x<rsub|p+1>=0,x<rsub|1>\<neq\>y<rsub|q+1>|}>\<sqcup\><around*|{|x<rsub|p+1>\<neq\>0,x<rsub|1>=y<rsub|q+1>|}>\<sqcup\>>|<cell|>>|<row|<cell|\<sqcup\><around*|{|<around*|(|1,0<rsub|p+q>,1|)>\<bbb-C\><rsup|\<times\>>|}>,>|<cell|q\<gtr\>0,p=1>>|<row|<cell|<around*|{|x<rsub|p+1>\<neq\>0,x<rsub|1>\<neq\>y<rsub|q+1>|}>\<sqcup\><around*|{|x<rsub|p+1>=0,x<rsub|1>\<neq\>y<rsub|q+1>|}>\<sqcup\><around*|{|x<rsub|p+1>\<neq\>0,x<rsub|1>=y<rsub|q+1>|}>\<sqcup\>>|<cell|>>|<row|<cell|\<sqcup\><around*|{|<around*|(|1,0<rsub|p+q>,1|)>|}>\<sqcup\><around*|{|x<rsub|p+1>=0,x<rsub|1>=y<rsub|q+1>|}>\\<around*|{|<around*|(|1,0<rsub|p+q>,1|)>\<bbb-C\><rsup|\<times\>>|}>,>|<cell|q\<gtr\>0,p\<gtr\>1>>>>>=<label|geom:eq-cosets1><eq-number>>|<cell|>>|<row|<cell|>|<cell|=<choice|<tformat|<table|<row|<cell|P<rprime|'><around*|(|1,0<rsub|p>,1|)>\<sqcup\>P<rprime|'><around*|(|-1,0<rsub|p>,1|)>\<sqcup\>P<rprime|'><around*|(|0<rsub|p>,1,1|)>,>|<cell|q=0>>|<row|<cell|P<rprime|'><around*|(|0<rsub|p>,1,0<rsub|q>,1|)>\<sqcup\>P<rprime|'><around*|(|1,0<rsub|p+q>,-1|)>\<sqcup\>P<rprime|'><around*|(|0<rsub|p>,1,1,0<rsub|q>|)>\<sqcup\>P<rprime|'><around*|(|1,0<rsub|p+q>,1|)>,>|<cell|q\<gtr\>0,p=1>>|<row|<cell|P<rprime|'><around*|(|0<rsub|p>,1,0<rsub|q>,1|)>\<sqcup\>P<rprime|'><around*|(|1,0<rsub|p+q>,-1|)>\<sqcup\>P<rprime|'><around*|(|0<rsub|p>,1,1,0<rsub|q>|)>\<sqcup\>P<rprime|'><around*|(|1,0<rsub|p+q>,1|)>\<sqcup\>P<rprime|'><around*|(|0<rsub|p-1>,1,0,1,0<rsub|q>|)>,>|<cell|p\<gtr\>1,q\<gtr\>0>>>>><label|geom:eq-cosets2><eq-number>>|<cell|>>>>
    </eqnarray>

    here, for example <math|<around*|{|x<rsub|p+1>\<neq\>0,x<rsub|1>\<neq\>y<rsub|q+1>|}>\<assign\><around*|{|<around*|(|x,y|)>\<in\>\<Xi\>/\<bbb-C\><rsup|\<times\>><mid|\|>x<rsub|p+1>\<neq\>0,x<rsub|1>\<neq\>y<rsub|q+1>|}>>.
  </proposition>

  <\proposition>
    <math|P<rprime|'>N<rsub|->P=G>.
  </proposition>

  <\remark>
    We note that for <math|q=0> we have <math|\<Xi\>/\<bbb-C\><rsup|\<times\>>\<simeq\>\<bbb-S\><rsup|2p>>.
  </remark>

  <subsection|Auxiliary results>

  <\lemma>
    <math|U<around*|(|p,q|)>\<curvearrowright\>\<Xi\><rsup|p,q>\<assign\><around*|{|<around*|(|x,y|)>\<in\>\<bbb-C\><rsup|p,q>\\<around*|{|0|}><mid|\|>
    <around*|\||x|\|><rsub|p>=<around*|\||y|\|><rsub|q>|}>> for
    <math|p,q\<geqslant\>1> is a transitive action.
  </lemma>

  <\proof>
    We will show that any <math|<around*|(|x,y|)>\<in\>\<Xi\><rsup|p,q>> can
    be brought to <math|<around*|(|1,0<rsub|p+q-2>,1|)>>. As we have
    <math|U<around*|(|p|)>\<times\>U*<around*|(|q|)>\<subset\>U<around*|(|p,q|)>>,
    we can use the action of this subgroup to bring <math|<around*|(|x,y|)>>
    to <math|<around*|(|r,0<rsub|p+q-2>,r|)>> for some <math|r\<gtr\>0>. Now,
    as we have

    <\equation*>
      a<around*|(|t|)>\<cdot\><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0<rsub|p+q-2><rsup|T>>>|<row|<cell|1>>>>>=<matrix|<tformat|<table|<row|<cell|ch<around*|(|t|)>>|<cell|0<rsub|p+q-2><rsub|>>|<cell|sh<around*|(|t|)>>>|<row|<cell|0<rsub|p+q-2><rsup|T>>|<cell|I<rsub|p+q-2>>|<cell|0<rsub|p+q-2><rsup|T>>>|<row|<cell|sh<around*|(|t|)>>|<cell|0<rsub|p+q-2>>|<cell|ch<around*|(|t|)>>>>>><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0<rsub|p+q-2><rsup|T>>>|<row|<cell|1>>>>>=<matrix|<tformat|<table|<row|<cell|e<rsup|t>>>|<row|<cell|0<rsub|p+q-2><rsup|T>>>|<row|<cell|e<rsup|t>>>>>>,
    </equation*>

    we see that <math|<around*|(|r,0<rsub|p+q-2>,r|)>> can be brought to
    <math|<around*|(|1,0<rsub|p+q-2>,1|)>> by the action of
    <math|A\<subset\>U<around*|(|p,q|)>>, hence we are done.
  </proof>

  <\lemma>
    <label|basicgeom:lem-invariants>Let <math|x=<around*|(|\<xi\><rsub|i>|)><rsub|i=1><rsup|p+q+2>\<in\>\<Xi\>>,
    <math|p\<in\>P<rprime|'>> and <math|y\<assign\><around*|(|\<eta\><rsub|i>|)><rsub|i=1><rsup|p+q+2>\<assign\>p\<cdot\>x>.
    Then <math|\<xi\><rsub|p+1>=0> iff <math|\<eta\><rsub|p+1>=0> and
    <math|\<xi\><rsub|1>-\<xi\><rsub|p+q+2>=0> iff
    <math|\<eta\><rsub|1>-\<eta\><rsub|p+q+2>=0>.
  </lemma>

  <\proof>
    \;
  </proof>

  <subsection|Proofs>

  <\proof>
    (of prop. <reference|basicgeom:prop-cosets>) We first consider the
    <math|q=0> case.\ 
  </proof>

  <section|Equations><label|sec:eqs>

  In this section we derive equations that have to be satisfied by kernels of
  SBO in non-compact picture

  <subsection|Main results>

  <\proposition>
    <label|eqs:prop-eqs>For <math|\<lambda\>,\<nu\>\<in\>\<frak-a\><rsub|\<bbb-C\>><rsup|\<ast\>>\<simeq\>\<bbb-C\><rsup|2>>,we
    have <math|Hom<rsub|G<rprime|'>><around*|(|I<around*|(|\<lambda\>|)>,J<around*|(|\<nu\>|)>|)>\<simeq\>\<cal-S\>ol<around*|(|\<bbb-R\><rsup|2p+2q+1>;\<lambda\>,\<nu\>|)>>,
    where the latter denotes the space of distributions that satisfy:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|F<around*|(|r
      w,r<rsup|2>\<alpha\>|)>=r<rsup|\<lambda\>-\<nu\>-n>F<around*|(|w,\<alpha\>|)>;>|<cell|>>|<row|<cell|>|<cell|\<forall\>m\<in\>U<around*|(|p-1,q|)>,<space|1em>F<around*|(|m
      w,\<alpha\>|)>=F<around*|(|w\<comma\>\<alpha\>|)>;>|<cell|>>|<row|<cell|>|<cell|\<forall\>\<theta\>\<in\>\<bbb-C\><rsup|\<ast\>>,<space|1em>F<around*|(|\<theta\>w,\<alpha\>|)>=F<around*|(|w,\<alpha\>|)>;>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>>>
    </eqnarray>
  </proposition>

  <subsection|Auxiliary lemmas>

  <subsection|Proofs>

  <\proof>
    (of prop. <reference|eqs:prop-eqs>)\ 
  </proof>
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
    <associate|auto-3|<tuple|2.1|1>>
    <associate|auto-4|<tuple|2.2|2>>
    <associate|auto-5|<tuple|2.3|2>>
    <associate|auto-6|<tuple|3|?>>
    <associate|auto-7|<tuple|3.1|?>>
    <associate|auto-8|<tuple|3.2|?>>
    <associate|auto-9|<tuple|3.3|?>>
    <associate|basicgeom:lem-invariants|<tuple|2.5|2>>
    <associate|basicgeom:prop-cosets|<tuple|2.1|1>>
    <associate|eqs:prop-eqs|<tuple|3.1|?>>
    <associate|geom:eq-cosets1|<tuple|2.1|1>>
    <associate|geom:eq-cosets2|<tuple|2.1|1>>
    <associate|sec:basicgeom|<tuple|2|1>>
    <associate|sec:eqs|<tuple|3|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Notations
      and setting> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Basic
      geometry> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|2.1<space|2spc>Main results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1.5fn>|2.2<space|2spc>Auxiliary results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1.5fn>|2.3<space|2spc>Proofs
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>
    </associate>
  </collection>
</auxiliary>