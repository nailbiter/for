<TeXmacs|1.0.7.18>

<style|article>

<\body>
  <math|<frac|\<Gamma\>*<around*|(|\<lambda\>+\<nu\>-n+1|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>*\<Gamma\><around*|(|<frac|\<lambda\>-q+\<nu\>+N|2>|)>>>

  <math|<wide|<wide|C|~>|~><rsub|N><rsup|p/2-1><around|(|\<omega\><rsub|p-1><rsup|<around|(|p|)>>|)>>

  <\equation*>
    <big|int><rsub|<with|math-font|Bbb|S><rsup|n-1>><around*|\||\<omega\><rsub|n-1><rsup|<around|(|n|)>>|\|><rsup|\<lambda\>+\<nu\>-n>*<wide|<wide|C|~>|~><rsub|N><rsup|<frac|n|2>-1><around|(|\<omega\><rsub|n-1><rsup|<around|(|n|)>>|)>*d*\<omega\><rsub|n-1>\<simeq\><frac|\<Gamma\>*<around*|(|\<lambda\>+\<nu\>-n+1|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>*\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-N|2>|)>>
  </equation*>

  <section|Unplugged>

  <\lemma>
    <label|lem-21>Let <math|Q> be non-degenerate
    <math|<around*|(|p,q|)>>-quadratic form. Generalized functions
    <math|Q<rsub|\<pm\>><rsup|\<nu\>>> as defined in
    <cite-detail|gelfand1980distribution|sec III.2.2> together with
    distributions <math|<around*|\||Q|\|><rsup|\<nu\>>\<assign\>Q<rsub|+><rsup|\<nu\>>+Q<rsub|-><rsup|\<nu\>>>
    and <math|<around*|\||Q|\|><rsup|\<nu\>>sgn<around*|(|Q|)>\<assign\>Q<rsub|+><rsup|\<nu\>>-Q<rsub|-><rsup|\<nu\>>>
    are all nonvanishing for <math|\<nu\>\<in\>\<bbb-C\>>.
  </lemma>

  <\remark>
    It is implied by material at <cite-detail|gelfand1980distribution|sec
    III.2.2> that all four distributions have isolated algebraic poles at
    <math|\<bbb-Z\><rsub|\<leqslant\>-1>\<cup\><around*|(|-<frac|p+q|2>-\<bbb-Z\><rsub|\<geqslant\>0>|)>>
    and what we mean by ``being nonvanishing'' at these points is that the
    constant term of Laurent series is non-zero.
  </remark>

  <\remark>
    Next proof is due to Nakahama-san.
  </remark>

  <\proof>
    Let <math|\<varphi\><rsub|><rsup|+>> and <math|\<varphi\><rsub|><rsup|->>
    be elements of <math|C<rsub|0><rsup|\<infty\>>> with support lying in
    <math|<around*|{|Q\<gtr\>0|}>> and <math|<around*|{|Q\<less\>0|}>>
    respectively. Define further <math|\<varphi\><rsup|\<pm\>><rsub|\<nu\>>\<assign\><around*|\||Q|\|><rsup|-Im<around*|(|\<nu\>|)>>\<varphi\><rsup|\<pm\>>>.\ 

    We will use generic symbol <math|Q<rsub|\<nu\>>> to denote any one of the
    four distributions we have in statement. To demonstrate what we need to
    show it suffices for every <math|\<nu\><rsub|0>\<in\>\<bbb-C\>> find
    <math|\<varphi\><rsub|0>\<in\>C<rsup|\<infty\>><rsub|0>> such that
    <math|<around*|\<langle\>|Q<rsub|\<nu\><rsub|0>>,\<varphi\><rsub|0>|\<rangle\>>\<neq\>0>
    (in particular, at <math|\<nu\><rsub|0>> pole of <math|Q<rsub|\<nu\>>>
    one sees this sufficiency by expanding into Laurent series).

    Fixing <math|\<nu\><rsub|0>\<in\>\<bbb-C\>>, analytic rigidity in
    <math|\<nu\>\<in\>\<bbb-C\>> implies that up to sign we have
    <math|<around*|\<langle\>|Q<rsup|\<nu\>>,\<varphi\><rsup|\<pm\>><rsub|\<nu\><rsub|0>>|\<rangle\>>=<big|int><around*|\||Q|\|><rsup|\<nu\>>\<varphi\><rsup|\<pm\>><rsub|\<nu\><rsub|0>>>
    with integration being well-defined due to the assumptions imposed on
    <math|supp<around*|(|\<varphi\><rsub|\<pm\>>|)>>.

    Hence, in particular <math|<around*|\<langle\>|Q<rsup|\<nu\><rsub|0>>,\<varphi\><rsub|\<nu\><rsub|0>><rsup|\<pm\>>|\<rangle\>>=<big|int><around*|\||Q|\|><rsup|Re<around*|(|\<nu\><rsub|0>|)>>\<varphi\><rsub|><rsup|\<pm\>>>
    up to sign, and since we can always make choice of
    <math|\<varphi\><rsup|+>> or <math|\<varphi\><rsup|->> to make the latter
    integral positive, this ends the proof.
  </proof>

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
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|KR-normalization-recur:eq-recur|<tuple|1|?>>
    <associate|KR-normalization-recur:lem-recur|<tuple|4|?>>
    <associate|KR-normalization-recur:prop-2|<tuple|5|?>>
    <associate|KR-normalization-recur:prop-func-eq|<tuple|6|?>>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|1.1|?>>
    <associate|lem-21|<tuple|1|?>>
  </collection>
</references>