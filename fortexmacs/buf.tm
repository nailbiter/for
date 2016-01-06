<TeXmacs|1.0.7.18>

<style|<tuple|article|mystyle>>

<\body>
  <math|<frac|\<Gamma\>*<around*|(|\<lambda\>+\<nu\>-n+1|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>*\<Gamma\><around*|(|<frac|\<lambda\>-q+\<nu\>+N|2>|)>>>

  <math|<wide|<wide|C|~>|~><rsub|N><rsup|p/2-1><around|(|\<omega\><rsub|p-1><rsup|<around|(|p|)>>|)>>

  <\equation*>
    <big|int><rsub|<with|math-font|Bbb|S><rsup|n-1>><around*|\||\<omega\><rsub|n-1><rsup|<around|(|n|)>>|\|><rsup|\<lambda\>+\<nu\>-n>*<wide|<wide|C|~>|~><rsub|N><rsup|<frac|n|2>-1><around|(|\<omega\><rsub|n-1><rsup|<around|(|n|)>>|)>*d*\<omega\><rsub|n-1>\<simeq\><frac|\<Gamma\>*<around*|(|\<lambda\>+\<nu\>-n+1|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>*\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-N|2>|)>>
  </equation*>

  <section|Unplugged>

  <\lemma>
    <label|KR-normalization-recur:lem-recur>Assume
    <math|Re<around*|(|\<lambda\>+\<nu\>-n|)>,Re<around*|(|-\<nu\>|)>\<gtr\>0>.
    Then for <math|><math|K<rsup|\<bbb-R\><rsup|n>><rsub|\<lambda\>,\<nu\>,\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>>>
    as in proposition <reference|KR-normalization-recur:prop-2>, we have

    <\equation>
      <label|KR-normalization-recur:eq-recur><choice|<tformat|<table|<row|<cell|<frac|\<partial\>|\<partial\>x<rsub|p>>K<rsub|\<lambda\>,\<nu\>,\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>><rsup|\<bbb-R\><rsup|n>>=<around*|(|\<lambda\>+\<nu\>-n|)>\<varepsilon\><rsub|1>K<rsub|\<lambda\>-1,\<nu\>,\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>>+\<varepsilon\><rsub|2>\<varepsilon\><rsub|1><around*|(|-2\<nu\>|)>K<rsub|\<lambda\>,\<nu\>+1,\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>>>>|<row|<cell|<wide|L|~>K<rsub|\<lambda\>,\<nu\>,\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>><rsup|\<bbb-R\><rsup|n>>=2\<nu\>\<varepsilon\><rsub|2><around*|(|2\<nu\>-n+3|)>K<rsub|\<lambda\>-1,\<nu\>+1,\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>>-4\<nu\><around*|(|\<nu\>+1|)>K<rsub|\<lambda\>,\<nu\>+2,\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>>>>>>>,
    </equation>

    where <math|<wide|L|~>\<assign\><big|sum><rsub|i=1><rsup|p-1><frac|\<partial\><rsup|2>|\<partial\>x<rsub|i><rsup|2>>-<big|sum><rsub|j=1><rsup|q><frac|\<partial\><rsup|2>|\<partial\>y<rsub|j><rsup|2>>>.
    This can also be rewritten as

    <\equation*>
      <choice|<tformat|<table|<row|<cell|<frac|\<partial\>|\<partial\>x<rsub|p>>K<rsub|\<lambda\>+1,\<nu\>,\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>><rsup|\<bbb-R\><rsup|n>>=<around*|(|\<lambda\>+\<nu\>-n+1|)>\<varepsilon\><rsub|1>K<rsub|\<lambda\>,\<nu\>,\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>>+\<varepsilon\><rsub|2>\<varepsilon\><rsub|1><around*|(|-2\<nu\>|)>K<rsub|\<lambda\>+1,\<nu\>+1,\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>>>>|<row|<cell|<wide|L|~>K<rsub|\<lambda\>+1,\<nu\>-1,\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>><rsup|\<bbb-R\><rsup|n>>=2<around*|(|\<nu\>-1|)>\<varepsilon\><rsub|2><around*|(|2\<nu\>-n+1|)>K<rsub|\<lambda\>,\<nu\>,\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>>-4\<nu\><around*|(|\<nu\>-1|)>K<rsub|\<lambda\>+1,\<nu\>+1,\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>>>>>>>.
    </equation*>
  </lemma>

  <\proof>
    The first equality follows from:

    <\equation*>
      <frac|\<partial\>|\<partial\>x<rsub|p>><around*|(|x<rsub|p>|)><rsub|\<varepsilon\><rsub|1>><rsup|\<lambda\>+\<nu\>-n>=\<varepsilon\><rsub|1><around*|(|\<lambda\>+\<nu\>-n|)><around*|(|x<rsub|p>|)><rsub|\<varepsilon\><rsub|1>><rsup|\<lambda\>+\<nu\>-n-1>;
    </equation*>

    <\equation*>
      <frac|\<partial\>|\<partial\>x<rsub|j>>Q<rsup|-\<nu\>><rsub|\<varepsilon\><rsub|2>>=\<varepsilon\><rsub|2>\<epsilon\><rsub|j>x<rsub|j><around*|(|-2\<nu\>|)>Q<rsub|\<varepsilon\><rsub|2>><rsup|-<around*|(|\<nu\>+1|)>>,<space|1em>\<epsilon\><rsub|j>\<assign\><choice|<tformat|<table|<row|<cell|+1,>|<cell|1\<leqslant\>j\<leqslant\>p>>|<row|<cell|-1,>|<cell|p+1\<leqslant\>j\<leqslant\>p+q>>>>>;
    </equation*>

    <\equation*>
      x<rsub|p><around*|(|x<rsub|p>|)><rsup|\<lambda\>+\<nu\>-n><rsub|\<varepsilon\><rsub|1>>=\<varepsilon\><rsub|1><around*|(|x<rsub|p>|)><rsub|\<varepsilon\><rsub|1>><rsup|\<lambda\>+<around*|(|\<nu\>+1|)>-n>.
    </equation*>

    The second follows from

    <\equation*>
      <big|sum><rsub|j=1,j\<neq\>p><rsup|n>\<epsilon\><rsub|j><frac|\<partial\><rsup|2>|\<partial\>x<rsub|j><rsup|2>>Q<rsub|\<varepsilon\><rsub|2>><rsup|-\<nu\>>=<big|sum><rsub|j=1,j\<neq\>p><rsup|n><frac|\<partial\>|\<partial\>x<rsub|j>><around*|(|\<varepsilon\><rsub|2>\<epsilon\><rsub|j><rsup|2><around*|(|-2\<nu\>|)>x<rsub|j>Q<rsub|\<varepsilon\><rsub|2>><rsup|-\<nu\>-1>|)>=\<varepsilon\><rsub|2><around*|(|-2\<nu\>|)><big|sum><rsub|j=1,j\<neq\>p><rsup|n><around*|(|Q<rsub|\<varepsilon\><rsub|2>><rsup|\<um\>\<nu\>-1>-2<around*|(|\<nu\>+1|)>\<epsilon\><rsub|j>x<rsub|j><rsup|2>Q<rsub|\<varepsilon\><rsub|2>><rsup|-\<nu\>-2>|)>=
    </equation*>

    <\equation*>
      =\<varepsilon\><rsub|2><around*|(|-2\<nu\>|)><around*|(|n-1|)>Q<rsub|\<varepsilon\><rsub|2>><rsup|-\<nu\>-1>+4\<varepsilon\><rsub|2>\<nu\><around*|(|\<nu\>+1|)><wide|Q|~><rsup|>Q<rsup|-\<nu\>-2><rsub|\<varepsilon\><rsub|2>>;
    </equation*>

    <\equation*>
      <wide|Q|~>Q<rsub|\<varepsilon\><rsub|2>><rsup|-\<nu\>-2>=Q\<cdot\>Q<rsub|\<varepsilon\><rsub|2>><rsup|-\<nu\>-2>-x<rsub|p><rsup|2>Q<rsub|\<varepsilon\><rsub|2>><rsup|-\<nu\>-2>=\<varepsilon\><rsub|2>Q<rsub|\<varepsilon\><rsub|2>><rsup|-<around*|(|\<nu\>+1|)>>-x<rsub|p><rsup|2>Q<rsub|\<varepsilon\><rsub|2>><rsup|-<around*|(|\<nu\>+2|)>>;
    </equation*>

    <\equation*>
      x<rsub|p><rsup|2><around*|(|x<rsub|p>|)><rsub|\<varepsilon\><rsub|1>><rsup|\<lambda\>+\<nu\>-n>=<around*|(|x<rsub|p>|)><rsub|\<varepsilon\><rsub|1>><rsup|\<lambda\>+<around*|(|\<nu\>+2|)>-n>.
    </equation*>

    The last two equalities follow once two previous are shown.
  </proof>

  <\proposition>
    <label|KR-normalization-recur:prop-2> For
    <math|<wide|K|~><rsub|\<lambda\>,\<nu\>,\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>><rsup|\<bbb-R\><rsup|n>>>:=<math|K<rsup|\<bbb-R\><rsup|n>><rsub|\<lambda\>,\<nu\>,\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>>/\<Gamma\><around*|(|-\<nu\>+1|)>/\<Gamma\><around*|(|\<lambda\>+1+\<nu\>\<um\>n|)>>
    we have

    <\equation*>
      <choice|<tformat|<table|<row|<cell|<frac|\<partial\>|\<partial\>x<rsub|p>><wide|K|~><rsub|\<lambda\>+1,\<nu\>,\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>><rsup|\<bbb-R\><rsup|n>>=\<varepsilon\><rsub|1><wide|K|~><rsub|\<lambda\>,\<nu\>,\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>>+2\<varepsilon\><rsub|2>\<varepsilon\><rsub|1><around*|(|\<lambda\>+\<nu\>-n+2|)><wide|K|~><rsub|\<lambda\>+1,\<nu\>+1,\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>>>>|<row|<cell|<wide|L|~><wide|K|~><rsub|\<lambda\>+1,\<nu\>-1,\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>><rsup|\<bbb-R\><rsup|n>>=4\<varepsilon\><rsub|2><around*|(|\<nu\>-<frac|n-1|2>|)><wide|K|~><rsub|\<lambda\>,\<nu\>,\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>>+4<around*|(|\<lambda\>+\<nu\>-n+2|)><around*|(|\<lambda\>+\<nu\>-n+1|)><wide|K|~><rsub|\<lambda\>+1,\<nu\>+1,\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>>>>>>>.
    </equation*>

    where for <math|\<varepsilon\><rsub|1,2>=\<pm\>1> we define

    <\equation*>
      K<rsub|\<lambda\>,\<nu\>\<comma\>\<varepsilon\><rsub|1>,\<varepsilon\><rsub|2>>\<assign\><around*|(|x<rsub|p>|)><rsup|\<lambda\>+\<nu\>-n><rsub|\<varepsilon\><rsub|1>>Q<rsup|-\<nu\>><rsub|\<varepsilon\><rsub|2>>.
    </equation*>
  </proposition>

  <\proof>
    (of prop. <reference|KR-normalization-recur:prop-2>) Follows from lemma
    <reference|KR-normalization-recur:lem-recur> by direct computations.
  </proof>

  <subsection|Unproven>

  <\proposition>
    <label|KR-normalization-recur:prop-func-eq>For
    <math|<wide|\<bbb-T\>|~><rsub|\<lambda\>>> defined as in proposition
    <reference|knappstein:prop-holo> and <math|Op> denoting an isomorphism
    <math|Op:\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)><wide|\<rightarrow\>|~>Hom<rsub|G<rprime|'>><around*|(|I<around*|(|\<lambda\>|)>,J<around*|(|\<nu\>|)>|)>>,
    we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|<wide|\<bbb-T\>|~><rsub|m-\<nu\>>\<circ\>Op<around*|(|<wide|K|~><rsup|\<bbb-R\><rsup|n>><rsub|\<lambda\>,<around*|(|n-1|)>-\<nu\>>|)>=\<ldots\>Op<around*|(|<wide|K|~><rsup|\<bbb-R\><rsup|n>><rsub|\<lambda\>,\<nu\>>|)>,<space|1em><around*|(|\<lambda\>,\<nu\>|)>\<in\>\<Omega\><rsub|0>,<space|0.6spc>Re<around*|(|\<lambda\>+\<nu\>|)>\<gtr\>n-1,>|<cell|>>|<row|<cell|>|<cell|Op<around*|(|<wide|K|~><rsup|\<bbb-R\><rsup|n>><rsub|n-\<lambda\>,\<nu\>>|)>\<circ\><wide|\<bbb-T\><rsub|>|~><rsub|\<lambda\>>=\<ldots\>Op<around*|(|<wide|K|~><rsup|\<bbb-R\><rsup|n>><rsub|\<lambda\>,\<nu\>>|)>,<space|1em><around*|(|\<lambda\>,\<nu\>|)>\<in\>\<Omega\><rsub|0>,<space|0.6spc>Re<around*|(|\<lambda\>+\<nu\>|)>\<less\>n.>|<cell|>>>>
    </eqnarray*>
  </proposition>

  <\remark>
    Both <math|<around*|{|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<Omega\><rsub|0><mid|\|>Re<around*|(|\<lambda\>+\<nu\>|)>\<gtr\>n-1|}>>
    and <math|<around*|{|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<Omega\><rsub|0><mid|\|>Re<around*|(|\<lambda\>+\<nu\>|)>\<less\>n|}>>
    are non-empty.
  </remark>

  <\lemma>
    For <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<Omega\><rsub|>\<assign\><around*|{|Re<around*|(|\<lambda\>+\<nu\>-n|)>,Re<around*|(|-\<nu\>|)>\<gtr\>1|}>\<subset\>\<bbb-C\><rsup|2>>
    nonempty open,

    <\equation*>
      <wide|\<bbb-T\>|~><rsub|m-\<nu\>>\<circ\>Op<around*|(|<wide|K|~><rsup|\<bbb-R\><rsup|n>><rsub|\<lambda\>,<around*|(|n-1|)>-\<nu\>>|)>=\<ldots\>Op<around*|(|<wide|K|~><rsup|\<bbb-R\><rsup|n>><rsub|\<lambda\>,\<nu\>>|)>,<space|1em><around*|(|\<lambda\>,\<nu\>|)>\<in\>\<Omega\>
    </equation*>
  </lemma>

  <\proof>
    As <math|<wide|\<bbb-T\>|~><rsub|m-\<nu\>>\<circ\>Op<around*|(|<wide|K|~><rsup|\<bbb-R\><rsup|n>><rsub|\<lambda\>,<around*|(|n-1|)>-\<nu\>>|)>\<in\>Hom<rsub|G<rprime|'>><around*|(|I<around*|(|\<lambda\>|)>,J<around*|(|\<nu\>|)>|)>>,
    proposition <reference|lem67:prop-dim1> immediately tells us that
    <math|<wide|\<bbb-T\>|~><rsub|m-\<nu\>>\<circ\>Op<around*|(|<wide|K|~><rsup|\<bbb-R\><rsup|n>><rsub|\<lambda\>,<around*|(|n-1|)>-\<nu\>>|)>=c<around*|(|\<lambda\>,\<nu\>|)>Op<around*|(|<wide|K|~><rsup|\<bbb-R\><rsup|n>><rsub|\<lambda\>,\<nu\>>|)>>.
    The precise computation of <math|c<around*|(|\<lambda\>,\<nu\>|)>> is
    carried out by applying both sides to spherical vector
    <math|\<b-1\><rsub|\<lambda\>>\<in\>I<around*|(|\<lambda\>|)>> and using\ 
  </proof>

  <subsection|P odd/even stuff>

  <\lemma>
    <label|lem-16>Fix <math|m\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> and let
    <math|<wide|<wide|P|~>|~><rsup|even><rsub|a,-m>:=P<rsub|a,-m><rsup|even>\<cdot\>\<Gamma\><around*|(|a|)>>
    and <math|<wide|<wide|P|~>|~><rsub|a,-m><rsup|odd>:=<wide|P<rsub|>|~><rsub|a,-m><rsup|odd>\<cdot\>\<Gamma\><around*|(|a|)>>.
    Then, <math|<wide|<wide|P|~>|~><rsup|even><rsub|a,-m>> is holomorphic in
    <math|a\<in\>\<bbb-C\>> and nonzero (the latter is in sense that
    <math|\<forall\>a<space|0.6spc>\<exists\>g\<in\>\<bbb-C\><around*|[|t|]>>
    such that <math|<wide|<wide|P|~>|~><rsup|even><rsub|a,-m><around*|(|g|)>\<neq\>0>),
    while <math|<wide|P|~><rsup|odd><rsub|a,-m>> is nonzero and furthermore
    holomorphic if <math|m\<gtr\>0>, while if <math|m=0> it has only simple
    pole at <math|a=0>.
  </lemma>

  <\remark>
    Similar statement holds with <math|a> and <math|b> interchanged.
  </remark>

  <\proof>
    Statements about holomorphicity and the pole of
    <math|<wide|P|~><rsub|a,0><rsup|odd>> follow, as poles of
    <math|\<Gamma\><around*|(|a|)>> matches zeros of
    <math|P<rsub|a,-m><rsup|even>> and <math|<wide|P|~><rsub|a,-m><rsup|odd>>
    with <math|m\<gtr\>1> and these poles are all simple.

    Now, straightforward computations

    <\equation*>
      <wide|<wide|P|~>|~><rsub|a,-m<rsub|>><rsup|even><around*|(|<around*|(|1-t<rsup|2>|)><rsup|m><rsup|<rsub|>>|)>\<simeq\><frac|\<Gamma\><around*|(|a+m|)>|\<Gamma\><around*|(|a-m+2m|)>>\<cdot\><frac|\<Gamma\><around*|(|0|)>|\<Gamma\><around*|(|-m|)>>\<simeq\>1\<neq\>0
    </equation*>

    <\equation*>
      m\<gtr\>1\<Rightarrow\><wide|<wide|P|~>|~><rsub|a,-m<rsub|>><rsup|odd><around*|(|t<around*|(|1-t<rsup|2>|)><rsup|m-1<rsub|>>|)>\<simeq\><frac|\<Gamma\><around*|(|a+m-1|)>|\<Gamma\><around*|(|a-m+2m-1|)>>\<cdot\><frac|\<Gamma\><around*|(|-1|)>|\<Gamma\><around*|(|-m|)>>\<simeq\>1\<neq\>0
    </equation*>

    <\equation*>
      <wide|<wide|P|~>|~><rsup|odd><rsub|a,0><around*|(|t<around*|(|1-t<rsup|2>|)><rsup|0>|)>\<simeq\><frac|\<Gamma\><around*|(|a|)>|\<Gamma\><around*|(|a+1|)>>\<cdot\><frac|\<Gamma\><around*|(|0|)>|\<Gamma\><around*|(|0|)>>=\<infty\>\<Leftrightarrow\>a=0
    </equation*>

    end the proof.

    \;
  </proof>
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|KR-normalization-even:fact-P-K|<tuple|6|?>>
    <associate|KR-normalization-even:lem-1|<tuple|6|?>>
    <associate|KR-normalization-even:lem-2|<tuple|7|?>>
    <associate|KR-normalization-even:lem-3|<tuple|8|?>>
    <associate|KR-normalization-recur:eq-recur|<tuple|1|?>>
    <associate|KR-normalization-recur:lem-recur|<tuple|1|?>>
    <associate|KR-normalization-recur:prop-2|<tuple|2|?>>
    <associate|KR-normalization-recur:prop-func-eq|<tuple|3|?>>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|1.1|?>>
    <associate|auto-3|<tuple|1.2|?>>
    <associate|lem-1|<tuple|6|?>>
    <associate|lem-16|<tuple|6|?>>
    <associate|lem-2|<tuple|7|?>>
    <associate|lem-21|<tuple|1|?>>
    <associate|lem-3|<tuple|8|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      kobayashi2015symmetry
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Unplugged>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|1.1<space|2spc>Unproven
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1.5fn>|1.2<space|2spc>P odd/even stuff
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>
    </associate>
  </collection>
</auxiliary>