<TeXmacs|1.0.7.18>

<style|<tuple|article|mystyle|number-long-article|doxygen>>

<\body>
  <\hide-preamble>
    <assign|D|<macro|<with|math-font|cal|D>>> <assign|supp|supp>
    <assign|proofexplanation|<macro|argos|(<arg|argos>)>>
    <assign|C|<macro|\<bbb-C\>>><assign|Z|<macro|\<bbb-Z\>>>
    <assign|Sp|<macro|\<bbb-S\>>> <assign|R|<macro|\<bbb-R\>>>
    <assign|mybra|<macro|argu|<around|(|<arg|argu>|)>>>
    <assign|mysbra|<macro|argu1|<around*|[|<arg|argu1>|]>>>
    <assign|mycbra|<macro|argu2|<around*|{|<arg|argu2>|}>>>
  </hide-preamble>

  <\hide-part|1>
    <doc-data|<doc-title|Study of symmetry breaking operators of indefinite
    orthogonal groups>|<doc-author|<author-data|<author-name|Alex
    Leontiev>>>>

    <surround|<assign|sone|<macro|<math|<mybra|<D><rprime|'><around|(|G\<times\><rsub|P><C><rsub|\<lambda\>-n>|)>\<otimes\><C><rsub|\<nu\>>><rsup|\<Delta\><around|(|P<rprime|'>|)>>>>><assign|Upp|<macro|<mysetn|(x,y)\<in\><R><rsup|p,q>|x\<neq\>0,<space|0.75spc>y\<neq\>0>>><assign|Stab|<macro|O(p,q)<rsub|e<rsub|p>>>><assign|sol*|<macro|1|<with|math-font|cal|S>ol(<arg|1>;\<lambda\>,\<nu\>)>><assign|sol|<macro|<sol*|<R><rsup|p,q>>>><assign|solXi|<macro|<sol*|\<Xi\>>>>||>
  </hide-part|>

  <\hide-part|2>
    <section|Introduction>

    <subsection|Motivation>

    <subsection|Main results>

    <subsection|Organization of the paper>

    <subsection|Acknowledgements>
  <|hide-part>
    <section|Introduction>
  </hide-part>

  <\show-part|3>
    <section|Definition and notations>

    We fix <math|p,q\<in\>\<bbb-Z\><rsub|\<geq\>0>>, <math|n\<assign\>p+q>,
    <math|G\<assign\>O*<around|(|p+1,q+1|)>> and
    <math|G<rprime|'>\<assign\>O*<around|(|p+1,q+1|)><rsub|e<rsub|p+1>>\<assign\><mysetn|g\<in\>G|g\<cdot\>e<rsub|p+1>=e<rsub|p+1>>\<simeq\>O*<around|(|p,q+1|)>>.

    We then set,

    <\equation*>
      M\<assign\><around*|{|<around*|[|<tabular*|<tformat|<table|<row|<cell|\<epsilon\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|A>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|\<epsilon\>>>>>>|]><mid|\|>A\<in\>O<around|(|p,q|)>,<space|0.75spc>\<epsilon\>=\<pm\>1|}>
    </equation*>

    <\equation*>
      N<rsub|+>\<assign\><around*|{|<around*|[|<tabular*|<tformat|<table|<row|<cell|1-<frac|<around*|\||v|\|><rsup|2>-<around*|\||w|\|><rsup|2>|2>>|<cell|-v<rsup|T>>|<cell|w<rsup|T>>|<cell|<frac|<around*|\||v|\|><rsup|2>-<around*|\||w|\|><rsup|2>|2>>>|<row|<cell|v>|<cell|I<rsub|p>>|<cell|0>|<cell|-v>>|<row|<cell|w>|<cell|0>|<cell|I<rsub|q>>|<cell|-w>>|<row|<cell|-<frac|<around*|\||v|\|><rsup|2>-<around*|\||w|\|><rsup|2>|2>>|<cell|-v<rsup|T>>|<cell|w<rsup|T>>|<cell|1+<frac|<around*|\||v|\|><rsup|2>-<around*|\||w|\|><rsup|2>|2>>>>>>|]><mid|\|>v\<in\>\<bbb-R\><rsup|p>,<space|0.75spc>w\<in\>\<bbb-R\><rsup|q>|}>
    </equation*>

    <\equation*>
      A\<assign\><mysetn|a<rprime|'><around|(|t|)>\<assign\><around*|[|<tabular*|<tformat|<table|<row|<cell|cosh
      <around|(|t|)>>|<cell|0>|<cell|sinh
      <around|(|t|)>>>|<row|<cell|0>|<cell|I<rsub|p+q>>|<cell|0>>|<row|<cell|sinh
      <around|(|t|)>>|<cell|0>|<cell|cosh
      <around|(|t|)>>>>>>|]>|t\<in\>\<bbb-R\>>.
    </equation*>

    We also let <math|M<rprime|'>\<assign\>M\<cap\>G<rprime|'>>,
    <math|N<rsub|+><rprime|'>\<assign\>N<rsub|+>\<cap\>G<rprime|'>>,
    <math|A<rprime|'>\<assign\>A\<cap\>G<rprime|'>=A> and
    <math|P<rprime|'>\<assign\>M<rprime|'>*A<rprime|'>*N<rprime|'>=P\<cap\>G<rprime|'>>.

    We next set <math|\<bbb-R\><rsup|p+1,q+1>\<supset\>\<Xi\>\<assign\><mysetn|<around|(|x,y|)>\<in\>\<bbb-R\><rsup|p+1,q+1>\<setminus\><around*|{|0|}>|<around*|\||x|\|>=<around*|\||y|\|>>>.
    <math|\<Xi\>> is clearly invariant under left multiplication by the
    elements of <math|G>.

    <\definition>
      Having <math|<around|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>> and
      given <math|f\<in\><D><rprime|'><around|(|\<Xi\>|)>> we say that
      <math|f\<in\><solXi>> if <math|\<forall\>t\<in\>\<bbb-R\><rsup|\<times\>>,<space|0.75spc>f*<around|(|t\<cdot\>|)>=<around*|\||t|\|><rsup|\<lambda\>-n>f<around|(|\<cdummy\>|)>>
      and <math|\<forall\>m<rprime|'>*a<rprime|'><around|(|t|)>*n<rprime|'>\<in\>P<rprime|'>>
      we have <math|f*<around|(|m<rprime|'>*a<rprime|'><around|(|t|)>*n<rprime|'>\<cdot\>|)>=e<rsup|t*\<nu\>>*f<around|(|\<cdummy\>|)>>.
    </definition>

    We further let <math|X\<assign\>\<bbb-S\><rsup|p>\<times\>\<bbb-S\><rsup|q>/<around*|{|\<pm\>1|}>>.
    Note that the action of <math|G> on <math|\<Xi\>> induces the action on
    <math|X=\<Xi\>/\<bbb-R\><rsup|\<times\>>>. It turns out that the
    stabilizer <math|P\<subset\>G> of <math|p<rsub|+>\<assign\><around|[|1,0<rsub|p+q>,1|]>\<in\>X>
    is the maximal parabolic subgroup of <math|G>, hence <math|X\<simeq\>G/P>
    via <math|g*P\<mapsto\>g\<cdot\>p<rsub|+>>. Having maximal parabolic
    subgroup fixed, we may also fix <math|\<lambda\>\<in\>\<bbb-C\>> and
    define a <math|G>-equivariant line bundle
    <math|<with|math-font|cal|L><rsub|\<lambda\>>\<assign\>G\<times\><rsub|P>\<bbb-C\><rsub|\<lambda\>>>
    over <math|G/P\<simeq\>X>. We shall be interested in the vector space
    <math|<around*|(|<D><rprime|'><around|(|G\<times\><rsub|P>\<bbb-C\><rsub|\<lambda\>-n>|)>\<otimes\>\<bbb-C\><rsub|\<nu\>>|)><rsup|\<Delta\><around|(|P<rprime|'>|)>>>
    for <math|<around|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>> fixed.

    We also define the embedding

    <\equation*>
      \<bbb-R\><rsup|p,q>\<ni\><around|(|u,v|)>\<mapsto\><with|math-font|Euler|n><rsub|-><around|(|u,v|)>\<assign\><around*|[|<frac|<around|(|1-<around*|\||u|\|><rsup|2>+<around*|\||v|\|><rsup|2>,2*u,2*v,1+<around*|\||u|\|><rsup|2>-<around*|\||v|\|><rsup|2>|)>|<sqrt|<around|(|1-<around*|\||u|\|><rsup|2>+<around*|\||v|\|><rsup|2>|)><rsup|2>+4<around*|\||v|\|><rsup|2>>>|]>\<in\>X\<simeq\>G/P
    </equation*>

    . For <math|x,y\<in\>\<bbb-R\><rsup|p,q>> we set
    <math|Q<around|(|x,y|)>\<assign\>x<rsup|T>*I<rsub|p,q>*y> and
    <math|Q<around|(|x|)>\<assign\>Q<around|(|x,x|)>>.

    <\definition>
      <label|def-n-nots:def-n+invar>For <math|F\<in\><D><rprime|'><around|(|U|)>>,
      where <math|U\<subset\>\<bbb-R\><rsup|p,q>> is an open set, we say that
      <math|F> is <math|N<rsub|+><rprime|'>>-invariant on <math|U> if
      <math|\<forall\>b\<in\>\<bbb-R\><rsup|p,q>> with <math|b<rsub|p>=0> and
      <math|x<rsub|0>\<in\>U> such that <math|<frac|x<rsub|0>-Q<around|(|x<rsub|0>|)>*b|1-2*Q<around|(|x<rsub|0>,b|)>+Q<around|(|x<rsub|0>|)>*Q<around|(|b|)>>\<in\>U>
      and the expression makes sense (i.e. the denominator is non-zero) we
      have

      <\equation>
        <label|eq-Nequiv><around*|\||1-2*Q<around|(|b,x|)>+Q<around|(|x|)>*Q<around|(|b|)>|\|><rsup|\<lambda\>-n>F<around*|(|<frac|x-Q<around|(|x|)>*b|1-2*Q<around|(|x,b|)>+Q<around|(|x|)>*Q<around|(|b|)>>|)>=F<around|(|x|)>
      </equation>

      equality holding for <math|x> near <math|x<rsub|0>>.
    </definition>

    <\definition>
      <label|def-n-nots:def-sol>For <math|F\<in\><D><rprime|'><around|(|U|)>>,
      where <math|U\<subset\>\<bbb-R\><rsup|p,q>> is the open set, we say
      that <math|F\<in\><sol*|U>> if the following holds:

      <\enumerate>
        <item>if <math|x<rsub|0>\<in\>U> and <math|-x<rsub|0>\<in\>U>, then
        <math|F<around|(|x|)>=F(-x)> for <math|x> near <math|x<rsub|0>>;

        <item>if <math|<around|(|m,x<rsub|0>,m\<cdot\>x<rsub|0>|)>\<in\><Stab>\<times\>U\<times\>U>,
        then <math|F<around|(|x|)>=F*<around|(|m\<cdot\>x|)>> for <math|x>
        near <math|x<rsub|0>>, where <math|<Stab>\<assign\><mysetn|g\<in\>O<around|(|p,q|)>|g\<cdot\>e<rsub|p>=e<rsub|p>>>;

        <item>if <math|<around|(|\<alpha\>,x<rsub|0>,\<alpha\>*x<rsub|0>|)>\<in\>\<bbb-R\><rsub|\<gtr\>0>\<times\>U\<times\>U>,
        then <math|\<alpha\><rsup|\<lambda\>-\<nu\>-n>*F<around|(|x|)>=F*<around|(|\<alpha\>*x|)>>
        for <math|x> near <math|x<rsub|0>>;

        <item><math|F> is <math|N<rsub|+><rprime|'>>-invariant on <math|U>.
      </enumerate>
    </definition>

    <\remark>
      If we trivialize <math|G\<times\><rsub|P>\<bbb-C\><rsub|\<lambda\>-n>>
      over simply-connected open <math|<with|math-font|Euler|n><rsub|-><around|(|\<bbb-R\><rsup|p,q>|)>>
      (the image of <math|\<bbb-R\><rsup|p,q>> under the embedding
      <math|<with|math-font|Euler|n><rsub|->:\<bbb-R\><rsup|p,q>\<to\>G/P>
      defined above), these are precisely elements of
      <math|<sol*|\<bbb-R\><rsup|p,q>>> that are the pullbacks of elements of
      <math|<mybra|<D><rprime|'><around|(|G\<times\><rsub|P><C><rsub|\<lambda\>-n>|)>\<otimes\><C><rsub|\<nu\>>><rsup|\<Delta\><around|(|P<rprime|'>|)>>>
      from <math|X\<simeq\>G/P>. In fact, due to the
      <math|P<rprime|'>\<cdot\><with|math-font|Euler|n><rsub|-><around|(|<R><rsup|p,q>|)>=X>
      holding, given the element of <math|<sol*|<R><rsup|p,q>>>, it can be
      uniquely matched to an element of <math|<mybra|<D><rprime|'><around|(|G\<times\><rsub|P><C><rsub|\<lambda\>-n>|)>\<otimes\><C><rsub|\<nu\>>><rsup|\<Delta\><around|(|P<rprime|'>|)>>>
      on <math|X>.
    </remark>

    \;
  <|show-part>
    <section|Definition and notations>
  </show-part>

  <\hide-part|4>
    <section|Lemma 6.7>

    <subsection|Main results>

    <\proposition>
      <label|lem67:prop-67>For <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>
      we have the following<\footnote>
        Note that when restricted to <math|<around*|{|Q\<neq\>0|}>>,
        <math|<around*|\||Q|\|><rsup|-\<nu\>>> is smooth, so this is just
        product of distribution and smooth function
      </footnote>:

      <\equation*>
        \<cal-S\>ol<around*|(|<around*|{|Q\<neq\>0|}>;\<lambda\>,\<nu\>|)>=\<bbb-C\><around*|\||Q|\|><rsup|-\<nu\>><frac|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>>
      </equation*>
    </proposition>

    <\proposition>
      <label|lem67:prop-dim1>For <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<Omega\>\<assign\><around*|{|Re<around*|(|\<lambda\>+\<nu\>-n|)>,Re<around*|(|-\<nu\>|)>\<gtr\>1|}>\<subset\>\<bbb-C\><rsup|2>>
      open nonempty we have

      <\equation*>
        dim<around*|(|\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>|)>|)>=1
      </equation*>
    </proposition>

    <subsection|Auxiliary results>

    <\definition>
      Fix <math|n\<in\>\<bbb-Z\><rsub|\<geqslant\>1>> and define:

      <\enumerate>
        <item><math|\<cal-S\>\<cal-C\>\<subset\>2<rsup|\<bbb-R\><rsup|n>>> be
        the family of all open subsets <math|U\<subset\>\<bbb-R\><rsup|n>>
        such that <math|\<forall\>x<rsub|0>\<in\>\<bbb-R\><rsup|n-1>> we have
        sets <math|<around*|{|t\<geqslant\>0<mid|\|><around*|(|x<rsub|0>,t|)>\<in\>U|}>>
        and <math|<around*|{|t\<leqslant\>0<mid|\|><around*|(|x<rsub|0>,t|)>\<in\>U|}>>
        being connected (for <math|n=1> we let <math|\<cal-S\>\<cal-C\>>
        denote all open sets);

        <item>We let <math|\<cal-S\>\<cal-S\>\<cal-C\>\<subset\>2<rsup|\<bbb-R\><rsup|n>>>
        to denote the family of all open subsets
        <math|U\<subset\>\<bbb-R\><rsup|n>> such that we have
        <math|\<pi\><rsup|i><around*|(|U|)>\<in\>\<cal-S\>\<cal-C\>> for
        <math|i=0\<ldots\>n-1>, where <math|\<pi\>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n-1>>
        is projection along the last coordinate.
      </enumerate>
    </definition>

    <\lemma>
      <label|lem67:lem-geom-aux>For <math|Q> being quadratic form on
      <math|\<bbb-R\><rsup|p,q>> with <math|p,q\<geqslant\>1>,
      <math|n\<assign\>p+q>, <math|<wide|Q|~>> quadratic form on
      <math|\<bbb-R\><rsup|p,q-1>> and <math|\<pi\>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n-1>>
      projection along the last coordinate, we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<pi\><around*|(|<around*|{|Q\<gtr\>0|}>|)>=<around*|{|<wide|Q|~>\<gtr\>0|}>>|<cell|>|<cell|>>|<row|<cell|\<pi\><around*|(|<around*|{|Q\<less\>0|}>|)>=\<bbb-R\><rsup|n-1>>|<cell|>|<cell|>>>>
      </eqnarray*>
    </lemma>

    <\proof>
      The <math|\<supseteq\> > is clear for both equalities and this
      immediately proves the second one. For the first, <math|\<subseteq\>>
      is also clear, as <math|Q<around*|(|x,x<rsub|n>|)>=<wide|Q|~><around*|(|x|)>-x<rsub|n><rsup|2>\<leqslant\><wide|Q|~><around*|(|x|)>>.
    </proof>

    <\lemma>
      <label|lem67:lem-geom>If <math|Q> is a quadratic form on
      <math|\<bbb-R\><rsup|p,q>> with <math|p,q\<geqslant\>1>, then
      <math|<around*|{|\<pm\>Q\<gtr\>0|}>\<in\>\<cal-S\>\<cal-C\>\<cal-C\>>.
    </lemma>

    <\proof>
      In the light of lemma <reference|lem67:lem-geom-aux> (and as for
      <math|P> quadratic on <math|\<bbb-R\><rsup|k,0>>,
      <math|<around*|{|P\<gtr\>0|}>=\<bbb-R\><rsup|n-1>\\<around*|{|0|}>\<in\>\<cal-S\>\<cal-C\>\<cal-C\>>
      clearly), it suffices to show that <math|<around*|{|\<pm\>Q\<gtr\>0|}>\<in\>\<cal-S\>\<cal-C\>>.
      But the latter follows by direct check, as for
      <math|x<rsub|0>\<in\>\<bbb-R\><rsup|n-1>> and
      <math|\<varepsilon\><rsub|1,2>=\<pm\>1>,
      <math|<around*|{|t<mid|\|>\<varepsilon\><rsub|1>t\<geqslant\>0,\<varepsilon\><rsub|2>Q<around*|(|x<rsub|0>,t|)>\<gtr\>0|}>=<around*|{|t<mid|\|>\<varepsilon\><rsub|1>t\<geqslant\>0,\<varepsilon\><rsub|2>t<rsup|2>\<less\>const|}>>
      with <math|const:=\<varepsilon\><rsub|2>Q<around*|(|x<rsub|0>,0|)>> and
      is clearly connected.
    </proof>

    <\lemma>
      <label|lem67:lem-tensor-aux>Let <math|\<cal-S\>\<cal-C\>\<ni\>X\<subset\>\<bbb-R\><rsup|n>>
      be stable under change of sign of <math|x<rsub|n>> and
      <math|u\<in\>\<cal-D\><rprime|'><around*|(|X|)>> with
      <math|\<partial\><rsub|n>u=0> and even in the <math|x<rsub|n>>. Then,
      there exists unique <math|g\<in\>\<cal-D\><rprime|'><around*|(|\<pi\><around*|(|X|)>|)>>
      such that <math|u=<around*|(|g\<otimes\>1|)><mid|\|><rsub|X>>.
      Moreover,

      <\enumerate>
        <item>If <math|\<psi\>> and <math|\<psi\><rprime|'>> are
        diffemorophisms of <math|X> and <math|\<pi\><around*|(|X|)>>
        respectively, such that <math|\<pi\>\<circ\>\<psi\>=\<psi\><rprime|'>\<circ\>\<pi\>>
        and <math|u<around*|(|\<psi\><around*|(|\<cdot\>|)>|)>=u<around*|(|\<cdot\>|)>>
        on <math|X>, then <math|g<around*|(|\<psi\><rprime|'><around*|(|\<cdot\>|)>|)>=g<around*|(|\<cdot\>|)>>
        on <math|\<pi\><around*|(|X|)>>;

        <item>If <math|X> was an open cone and for Euler operator <math|E> we
        have <math|E u=\<lambda\>u> on <math|X> for some
        <math|\<lambda\>\<in\>\<bbb-C\>>, then
        <math|<wide|E|~>g=\<lambda\>g>, where <math|<wide|E|~>> is Euler
        operator in <math|\<bbb-R\><rsup|n-1>> (note that
        <math|\<pi\><around*|(|X|)>> is also an open cone);

        <item>If for <math|i\<less\>n> we have <math|\<partial\><rsub|i>u=0>,
        then <math|\<partial\><rsub|i>g=0>.
      </enumerate>
    </lemma>

    <\proof>
      \;
    </proof>

    <\lemma>
      <label|lem67:lem-tensor>Let <math|\<cal-S\>\<cal-S\>\<cal-C\>\<ni\>X\<subset\>\<bbb-R\><rsup|n>>
      be stable under <math|<around*|(|x<rsub|i>|)><rsub|i=1><rsup|n>\<mapsto\><around*|(|\<varepsilon\><rsub|i>x<rsub|i>|)><rsub|i=1><rsup|n>>
      for <math|\<varepsilon\><rsub|i>=\<pm\>1> and
      <math|u\<in\>\<cal-D\><rprime|'><around*|(|X|)>> with
      <math|\<partial\><rsub|i>u=0> for <math|i=2,3,\<ldots\>,n> and even in
      every <math|x<rsub|i>> with <math|i\<geqslant\>2>. Then, there exists
      unique <math|g\<in\>\<cal-D\><rprime|'><around*|(|\<pi\><rsup|n-1><around*|(|X|)>|)>>
      which is even (note that <math|\<pi\><rsup|n-1><around*|(|X|)>\<subset\>\<bbb-R\>>).
      Moreover, if <math|X> was an open cone and <math|E u=\<lambda\>u> for
      <math|\<lambda\>\<in\>\<bbb-C\>> and <math|E> Euler operator, then
      <math|\<pi\><rsup|n-1><around*|(|X|)>> is an open cone as well with
      <math|x<frac|\<partial\>|\<partial\>x> g=\<lambda\>g>.
    </lemma>

    <\proof>
      Let's do the induction on <math|n>, the case <math|n=1> being trivial,
      as hypothesis and conclusion coincide. Now, assuming statement holding
      for lower dimensions, let's prove it for
      <math|X\<subset\>\<bbb-R\><rsup|n>>. Lemma
      <reference|lem67:lem-tensor-aux> readily grants us
      <math|g\<in\>\<cal-D\><rprime|'><around*|(|\<pi\><around*|(|X|)>|)>>,
      so that <math|u=<around*|(|g\<otimes\>1|)><mid|\|><rsub|X>>. Now,
      <math|g> is even in every <math|x<rsub|i>> with <math|i\<geqslant\>2>
      and for <math|i\<geqslant\>2>, <math|\<partial\><rsub|i>g=0> by first
      and third item of lemma <reference|lem67:lem-tensor-aux> respectively
      and this allows us to use induction assumption and finish the proof.
      The ``moreover'' part of lemma follows similarly by induction,
      employing item 2. of lemma <reference|lem67:lem-tensor-aux> on
      induction step.
    </proof>

    <\lemma>
      <label|lem67:lem-homogR>For <math|\<lambda\>\<in\>\<bbb-C\>> and
      <math|E\<assign\>x<around*|(|\<partial\>/\<partial\>x|)>> we have\ 

      <\equation*>
        <stack|<tformat|<cwith|2|2|1|1|cell-halign|l>|<cwith|1|1|2|2|cell-halign|l>|<table|<row|<cell|<stack|<tformat|<table|<row|<cell|>>>>>u\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\>\\<around*|{|0|}>|)>,<space|0.6spc>u<around*|(|-x|)>=u<around*|(|x|)>,<space|0.6spc>E
        u=\<lambda\>u\<Leftrightarrow\>>|<cell|u<around*|(|x|)>\<in\>\<bbb-R\><around*|\||x|\|><rsup|\<lambda\>>>>|<row|<cell|u\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\>|)>,u<around*|(|-x|)>=u<around*|(|x|)>,<space|0.6spc>E
        u=\<lambda\>u\<Leftrightarrow\>>|<cell|u<around*|(|x|)>\<in\>\<bbb-R\><around*|\||x|\|><rsup|\<lambda\>>/\<Gamma\><around*|(|<frac|\<lambda\>+1|2>|)>>>>>>
      </equation*>
    </lemma>

    <\fact>
      <label|fact:homog-tempered><cite-detail|hormander1983analysis|thm.
      7.1.18> If <math|u\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>|)>>
      and <math|u<mid|\|><rsub|\<bbb-R\><rsup|n>\\<around*|{|0|}>>> is
      homogeneous, then <math|u\<in\>\<cal-S\><rprime|'>\<subset\>\<cal-D\><rprime|'>>.
    </fact>

    <\proof>
      Indeed, the first statement follows, as condition <math|E
      u=\<lambda\>u> implies that <math|<around*|(|\<partial\>/\<partial\>x|)><around*|(|<around*|\||x|\|><rsup|-\<lambda\>>u|)>>=0
      on <math|\<bbb-R\><rsup|>\\<around*|{|0|}>> and hence fact
      <reference|fact:sing-q-4> implies that
      <math|u=c<rsub|+>x<rsub|+><rsup|\<lambda\>>+c<rsub|->x<rsub|-><rsup|\<lambda\>>>
      and evenness assumption implies that <math|c<rsub|+>=c<rsub|->> which
      gives the final answer. And conversely, multiples of
      <math|<around*|\||x|\|><rsup|\<lambda\>>> clearly satisfy the
      requirements.

      Regarding the second statement, multiples of
      <math|<around*|\||x|\|><rsup|\<lambda\>>/\<Gamma\><around*|(|<frac|\<lambda\>+1|2>|)>>
      clearly satisfy the requirements, as requirements are analytic in
      <math|\<lambda\>>, so is <math|<around*|\||x|\|><rsup|\<lambda\>>/\<Gamma\><around*|(|<frac|\<lambda\>+1|2>|)>>
      and the latter satisfies requirements for
      <math|Re<around*|(|\<lambda\>|)>\<gg\>0>. Conversely, given such a
      function <math|u>, the reverse implication is readily granted by fact
      <reference|holomorphicity-preserving:fact-homog> in case
      <math|\<lambda\>\<nin\>-\<bbb-Z\><rsub|\<geqslant\>0>>.\ 

      In turn, <math|\<lambda\>\<in\>-2\<bbb-Z\><rsub|\<geqslant\>0>>, we
      have (according to the result above and as
      <math|<around*|\||x|\|><rsup|-2n>> for
      <math|n\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> is well-defined generalized
      function on <math|\<bbb-R\>>) that for some <math|c\<in\>\<bbb-R\>>,
      <math|u-c<around*|\||x|\|><rsup|\<lambda\>>> is supported at <math|0>,
      hence should be a finite sum of derivatives of delta function. Now, as
      <math|E<around*|(|u-c<around*|\||x|\|><rsup|\<lambda\>>|)>=\<lambda\><around*|(|u-c<around*|\||x|\|><rsup|\<lambda\>>|)>>
      and derivatives of delta functions are linearly independent (this can
      be seen by repeatedly applying <math|E> to the sum of them), we should
      have <math|u-c<around*|\||x|\|><rsup|\<lambda\>>=a\<delta\><rsup|<around*|(|-1-\<lambda\>|)>><around*|(|x|)>>
      (as <math|\<delta\><rsup|<around*|(|k|)>>> is homogeneous of degree
      <math|-k-1>), but the right hand side of latter equality is odd, while
      left-hand side is even, hence <math|u=c<around*|\||x|\|><rsup|\<lambda\>>>.

      Finally, suppose that <math|\<lambda\>\<in\>-2\<bbb-Z\><rsub|\<geqslant\>0>-1>.
      Now, fact <reference|fact:homog-tempered> implies that <math|u> under
      the assumptions taken is in fact tempered distribution (note that the
      first statement tells us directly that
      <math|u<mid|\|><rsub|\<bbb-R\>\\<around*|{|0|}>>> is homogeneous),
      hence we may consider Fourier transform
      <math|<wide|u|^>\<in\>\<cal-S\><rprime|'><around*|(|\<bbb-R\>|)>\<subset\>\<cal-D\><rprime|'><around*|(|\<bbb-R\>|)>>
      of it. Properties of Fourier transform imply that <math|<wide|u|^>> is
      even real-valued on <math|\<cal-S\><around*|(|\<bbb-R\>|)>> and
      <math|E<wide|u|^>=-<around*|(|\<lambda\>+1|)><wide|u|^>>, hence
      <math|<wide|u|^>> is a multiple of <math|x<rsup|-\<lambda\>-1>> and
      then inverse Fourier transform gives the desired.
    </proof>

    \;

    <\lemma>
      <label|lem67:lem-Qpm>For <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>
      and <math|p,q\<geqslant\>1> we have:

      <\equation*>
        <stack|<tformat|<table|<row|<cell|\<cal-S\>ol<around*|(|<around*|{|Q\<gtr\>0|}>;\<lambda\>,\<nu\>|)>=\<bbb-C\><choice|<tformat|<table|<row|<cell|<around*|\||Q|\|><rsup|-\<nu\>><around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>>|<cell|p=1>>|<row|<cell|<around*|\||Q|\|><rsup|-\<nu\>><frac|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>>>|<cell|p\<geqslant\>2>>>>>>>|<row|<cell|\<cal-S\>ol<around*|(|<around*|{|Q\<less\>0|}>;\<lambda\>,\<nu\>|)>=\<bbb-C\><around*|\||Q|\|><rsup|-\<nu\>><frac|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>>>>>>>
      </equation*>
    </lemma>

    <\remark>
      Note that when <math|p=1>, <math|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>\<in\>C<rsup|\<infty\>>>
      on <math|<around*|{|Q\<gtr\>0|}>>, as all points of latter set have
      <math|x<rsub|p>\<neq\>0>.
    </remark>

    <\proof>
      Note first that taking derivative of <eqref|eq-Nequiv> one arrives at
      equations <eqref|Ndiff> and these in turn imply that for
      <math|u\<in\>\<cal-S\>ol<around*|(|U;\<lambda\>,\<nu\>|)>> with
      <math|U\<subset\><around*|{|Q\<neq\>0|}>> (note that then
      <math|<around*|\||Q|\|><rsup|-\<nu\>>> is smooth nonzero on <math|U>)
      one has <math|\<partial\><rsub|i><around*|(|<around*|\||Q|\|><rsup|\<nu\>>u|)>=0>
      for <math|i\<in\><around*|{|1,2,\<ldots\>,n|}>\\<around*|{|p|}>>. Now,
      Lemma <reference|lem67:lem-geom> implies that lemma
      <reference|lem67:lem-tensor> is applicable (strictly speaking, we have
      to re-order coordinates <math|x<rsub|1>,x<rsub|2>,\<ldots\>,x<rsub|p>>
      though, to make <math|x<rsub|p>> be the first one), and the latter
      tells us that <math|<around*|\||Q|\|><rsup|\<nu\>>u\<in\>\<bbb-C\>1<rsub|p-1>\<otimes\>u<rsub|0><around*|(|x<rsub|p>|)>\<otimes\>1<rsub|q>>
      (where <math|1<rsub|k>> denotes constant 1 distribution on
      <math|\<bbb-R\><rsup|k>>) with <math|u<rsub|0>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\>\\<around*|{|0|}>|)>>
      even and satisfying <math|E u<rsub|0>=<around*|(|\<lambda\>-\<nu\>-n|)>u<rsub|0>>
      (in case of <math|<around*|{|Q\<gtr\>0|}>> and <math|p=1>) or
      <math|u<rsub|0>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\>|)>> even
      and satisfying <math|E u<rsub|0>=<around*|(|\<lambda\>-\<nu\>-n|)>u<rsub|0>>
      (otherwise). Then, application of lemma <reference|lem67:lem-homogR>
      ends the proof.
    </proof>

    <\lemma>
      <label|lem67:lem-flip>For <math|p,q\<in\>\<bbb-Z\><rsub|\<geqslant\>1>>
      let <math|Q>: quadratic form on <math|\<bbb-R\><rsup|p,q>>. For
      <math|x,b\<in\>\<bbb-R\><rsup|p,q>> we let
      <math|c<rsub|b><around*|(|x|)>\<assign\>1-2Q<around*|(|x,b|)>+Q<around*|(|x|)>Q<around*|(|b|)>>
      and <math|\<psi\><rsub|b><around*|(|x|)>\<assign\><around*|(|x-Q<around*|(|x|)>b|)>/c<rsub|b><around*|(|x|)>>.

      We then have the following:

      <\enumerate>
        <item>For <math|p=1> there exist <math|x<rsup|<around*|(|0|)>>,b<rsup|<around*|(|0|)>>\<in\>\<bbb-R\><rsup|p,q>>
        with <math|b<rsup|<around*|(|0|)>><rsub|p>=0>, such that
        <math|Q<around*|(|\<psi\><rsub|b<rsup|<around*|(|0|)>>><around*|(|x<rsup|<around*|(|0|)>>|)>|)>\<gtr\>0>
        and <math|Q<around*|(|x<rsup|<around*|(|0|)>>|)>\<less\>0>;

        <item>For <math|p\<geqslant\>1> there exist
        <math|x<rsup|<around*|(|0|)>>,b<rsup|<around*|(|0|)>>\<in\>\<bbb-R\><rsup|p,q>>
        with same properties as in previous item and in addition, we can make
        <math|\<psi\><rsub|b<rsup|<around*|(|0|)>>><around*|(|x<rsup|<around*|(|0|)>>|)>>
        having it's <math|p>-th coordinate vanish.
      </enumerate>
    </lemma>

    <\proof>
      For the first item, it suffices to find <math|x<rsup|<around*|(|0|)>>>
      and <math|b<rsup|<around*|(|0|)>>> such that
      <math|Q<around*|(|x<rsup|<around*|(|0|)>>|)>\<less\>0> and
      <math|Q<around*|(|x<rsup|<around*|(|0|)>>-Q<around*|(|x<rsup|<around*|(|0|)>>|)>b<rsup|<around*|(|0|)>>|)>\<gtr\>0>
      (note that this will automatically grant
      <math|c<rsub|b<rsup|<around*|(|0|)>>><around*|(|x<rsup|<around*|(|0|)>>|)>\<neq\>0>,
      as <math|Q<around*|(|x-Q<around*|(|x|)>b|)>=Q<around*|(|x|)><around*|(|1-2Q<around*|(|x,b|)>+Q<around*|(|x|)>Q<around*|(|b|)>|)>>).
      Now, by assuming <math|x<rsub|i><rsup|<around*|(|0|)>>=b<rsup|<around*|(|0|)>><rsub|i>=0>
      for <math|i\<neq\>p,p+1> (while still requiring
      <math|b<rsub|p><rsup|<around*|(|0|)>>=0>), and thus we have
      <math|Q<around*|(|x<rsup|<around*|(|0|)>>|)>=<around*|(|x<rsub|p><rsup|<around*|(|0|)>>|)><rsup|2>-<around*|(|x<rsub|p+1><rsup|<around*|(|0|)>>|)><rsup|2>>
      and <math|Q<around*|(|x<rsup|<around*|(|0|)>>-Q<around*|(|x<rsup|<around*|(|0|)>>|)>b<rsup|<around*|(|0|)>>|)>=<around*|(|x<rsub|p><rsup|<around*|(|0|)>>|)><rsup|2>-<around*|(|x<rsub|p+1><rsup|<around*|(|0|)>>-<around*|(|<around*|(|x<rsub|p><rsup|<around*|(|0|)>>|)><rsup|2>-<around*|(|x<rsub|p+1><rsup|<around*|(|0|)>>|)><rsup|2>|)>b<rsup|<around*|(|0|)>><rsub|p+1>|)><rsup|2>>.
      Hence, by taking arbitrary <math|x<rsup|<around*|(|0|)>>> with
      <math|Q<around*|(|x<rsup|<around*|(|0|)>>|)>\<less\>0> and
      <math|b<rsub|p+1><rsup|<around*|(|0|)>>\<assign\>x<rsub|p+1><rsup|<around*|(|0|)>>/<around*|(|<around*|(|x<rsub|p><rsup|<around*|(|0|)>>|)><rsup|2>-<around*|(|x<rsub|p+1><rsup|<around*|(|0|)>>|)><rsup|2>|)>>,
      we get the required pair of elements of <math|\<bbb-R\><rsup|p,q>>.
      This shows the first item.

      Regarding the second item, we proceed similarly, except that this time
      we require <math|x<rsub|i><rsup|<around*|(|0|)>>=0> for
      <math|i\<neq\>p-1,p+1>, <math|b<rsup|<around*|(|0|)>><rsub|i>=0> for
      <math|i\<neq\>p> and replace <math|x<rsub|p><rsup|<around*|(|0|)>>> by
      <math|x<rsub|p-1><rsup|<around*|(|0|)>>> everywhere in computations of
      previous paragraph. As <math|\<psi\><rsub|b<rsup|<around*|(|0|)>>><around*|(|x<rsup|<around*|(|0|)>>|)>>
      and <math|x<rsup|<around*|(|0|)>>> have their <math|p>-th component
      being the same, this construction suffices.
    </proof>

    \;

    <subsection|Proofs>

    <\proof>
      (of prop. <reference|lem67:prop-67>) We note that
      <math|<around*|\||Q|\|><rsup|-\<nu\>><frac|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>>\<in\>\<cal-S\>ol<around*|(|<around*|{|Q\<neq\>0|}>;\<lambda\>,\<nu\>|)>>,
      as it is clearly so for <math|Re<around*|(|\<lambda\>+\<nu\>|)>\<gg\>0>
      by direct check and it holomorphically depends on
      <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>. Now, in
      the light of lemma <reference|lem67:lem-Qpm> it suffices to show that
      if <math|u\<in\>\<cal-S\>ol<around*|(|<around*|{|Q\<neq\>0|}>;\<lambda\>,\<nu\>|)>>
      and <math|u<mid|\|><rsub|<around*|{|Q\<less\>0|}>>=0>, then <math|u=0>.

      First, assume <math|p=1>. Lemma <reference|lem67:lem-Qpm> tells us that
      if <math|u<mid|\|><rsub|<around*|{|Q\<gtr\>0|}>>\<neq\>0>, then it is
      supported on the whole <math|<around*|{|Q\<gtr\>0|}>>. But then the
      first item of lemma <reference|lem67:lem-flip>, equation
      <eqref|eq-Nequiv> and assumption <math|u<mid|\|><rsub|<around*|{|Q\<less\>0|}>>>
      imply that near some <math|y<rsub|>\<in\><around*|{|Q\<gtr\>0|}>> we
      have <math|u=0> and this contradiction gives the desired conclusion in
      case <math|p=1>.

      Similarly, for <math|p\<geqslant\>2> the second item of lemma
      <reference|lem67:lem-flip> equation <eqref|eq-Nequiv> and assumption
      <math|u<mid|\|><rsub|<around*|{|Q\<less\>0|}>>> imply that near some
      <math|y<rsub|>\<in\><around*|{|Q\<gtr\>0|}>\<cap\><around*|{|x<rsub|p>=0|}>>
      we have <math|u=0>. But then lemma <reference|lem67:lem-Qpm> tells us
      that if <math|u<mid|\|><rsub|<around*|{|Q\<gtr\>0|}>>\<neq\>0>, it has
      to be supported at least on <math|<around*|{|x<rsub|p>=0|}>>. This
      contradiction gives the desired conclusion in case
      <math|p\<geqslant\>2> as well.
    </proof>

    <\proof>
      (of prop. <reference|lem67:prop-dim1>) First we note that as for
      <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<Omega\><rsub|>> we have
      <math|<around*|\||Q|\|><rsup|-\<nu\>><around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>\<in\>C<rsup|1><around*|(|\<bbb-R\><rsup|p,q>|)>>,
      it can be directly verified that this is an element of
      <math|\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>>,
      this immediately giving us <math|\<geqslant\>1>.\ 

      Regarding the opposite bound, we note that similarly to
      <cite-detail|kobayashi2015symmetry|(6.10)> we have an exact sequence

      <\equation*>
        0\<rightarrow\>\<cal-S\>ol<rsub|<around*|{|Q=0|}>><around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>\<rightarrow\>\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>\<rightarrow\>\<cal-S\>ol<around*|(|<around*|{|Q\<neq\>0|}>;\<lambda\>,\<nu\>|)>
      </equation*>

      Now, as for <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<Omega\>> lemma
      <reference|lem:sing-q-1> (note that
      <math|Re<around*|(|-\<nu\>|)>\<gtr\>1\<Rightarrow\>\<nu\>\<nin\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>)
      and proposition <reference|diffSBO:prop-main> (note that
      <math|Re<around*|(|\<lambda\>+\<nu\>-n|)>,Re<around*|(|-\<nu\>|)>\<gtr\>1\<Rightarrow\>Re<around*|(|\<lambda\>-\<nu\>|)>\<gtr\>n+3\<gtr\>0>)
      tell us that <math|\<cal-S\>ol<rsub|<around*|{|Q=0|}>><around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>=0>,
      the proof is finished by an application of proposition
      <reference|lem67:prop-67>.
    </proof>
  <|hide-part>
    <section|Lemma 6.7>
  </hide-part>

  <\hide-part|5>
    <section|Non-equivalence of <math|N<rsub|+><rprime|'>>-invariance and
    <math|<with|math-font|Euler|n><rprime|'><rsub|+>>-invariance>

    It is tempting to replace in the latter definition the fourth condition
    (invariance under <math|N<rsub|+><rprime|'>>) with its differential
    (which we'll call <math|<with|math-font|Euler|n><rsub|+><rprime|'>>-invariance)
    , which will then give the family of differential equations that need to
    be satisfied:<math|>

    <\equation>
      <around*|[|<around|(|\<lambda\>-n|)>*\<varepsilon\><rsub|j>*x<rsub|j>-\<varepsilon\><rsub|j>*x<rsub|j>*E+<frac|1|2>*Q<around|(|x|)><frac|\<partial\>|\<partial\>*x<rsub|j>>|]>F=0<label|Ndiff>
    </equation>

    where <math|E\<assign\><big|sum><rsub|j>x<rsub|j>*<frac|\<partial\>|\<partial\>*x<rsub|j>>>
    and <math|\<varepsilon\><rsub|j>=+1> for <math|1\<leq\>j\<leq\>p> and
    <math|=-1> otherwise. However, if <math|p,q\<gtr\>0> the resulting system
    of conditions will be strictly weaker than the original one. Indeed,
    having fixed <math|<around|(|\<lambda\>,\<nu\>|)>\<in\><C><rsup|2>> such
    that <math|Re(-\<nu\>)\<gtr\>0> and <math|\<Re\>*<around|(|\<lambda\>+\<nu\>-n|)>\<gtr\>0>
    consider two distributions

    <\equation*>
      K<rsub|+><around|(|x|)>\<assign\><around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>Q<rsub|+><rsup|-\<nu\>><around|(|x|)>
    </equation*>

    <\equation*>
      K<rsub|-><around|(|x|)>\<assign\><around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>Q<rsub|-><rsup|-\<nu\>><around|(|x|)>
    </equation*>

    with <math|Q<rsup|-\<nu\>><rsub|\<pm\>><around|(|x|)>\<assign\><with|math-font-family|bf|1><rsub|<around*|{|\<pm\>Q\<gtr\>0|}>>*Q<rsup|\<nu\>><around|(|x|)>>,
    where <math|<with|math-font-family|bf|1><rsub|A><around|(|x|)>> denotes
    the characteristic function of a set <math|A>. It is directly verified
    that both satisfy first three properties together with differential of
    the fourth one (that is, <eqref|Ndiff>). Nevertheless, they cannot be
    pullbacks of elements of <sone>. Indeed, <math|P<rprime|'>> acting on
    <math|G/P> has only one open orbit, which under
    <math|<with|math-font|Euler|n><rsub|-><around|(|\<cdummy\>|)>> is pulled
    back to <math|<R><rsup|p,q>\<supset\><mycbra|Q\<neq\>0>>. Hence, if
    pullback of element of <sone>is supported on subset of
    <math|<mycbra|Q\<neq\>0>> it should be supported on the whole
    <math|<mycbra|Q\<neq\>0>>. However, <math|supp<around|(|K<rsub|+>|)>=<mycbra|Q\<geq\>0>>
    and <math|supp<around|(|K<rsub|->|)>=<mycbra|Q\<leq\>0>>. Hence, none of
    these is pullback of element of <math|<mybra|<D><rprime|'><around|(|G\<times\><rsub|P><C><rsub|\<lambda\>-n>|)>\<otimes\><C><rsub|\<nu\>>><rsup|\<Delta\><around|(|P<rprime|'>|)>>>
    distribution.\ 
  <|hide-part>
    <section|Non-equivalence of <math|N<rsub|+><rprime|'>>-invariance and
    <math|<with|math-font|Euler|n><rprime|'><rsub|+>>-invariance>
  </hide-part>

  <\hide-part|6>
    <section|The kernel of regular symmetry breaking operator>

    In this section we construct an element of <math|<sol>>, that is
    supported on <math|<R><rsup|p,q>> under some mild assumptions on the
    complex parameters. More precisely,\ 

    <subsection|Main results>

    <\proposition>
      <label|prop-regular>Let <math|<around|(|\<lambda\>,\<nu\>|)>\<in\><C><rsup|2>>
      be such that <math|Re<around|(|\<lambda\>+\<nu\>-n|)>\<gtr\>0> and
      <math|Re(-\<nu\>)\<gtr\>0>. Then

      <\equation*>
        K<rsub|\<lambda\>,\<nu\>><rsup|<R><rsup|n>><around|(|x|)>\<assign\><frac|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n><around*|\||Q|\|><rsup|\<um\>\<nu\>>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>\<Gamma\><around*|(|<frac|-\<nu\>+1|2>|)>>
      </equation*>

      \ is a continuous function, which when seen as a generalized function
      on <math|<R><rsup|p,q>>, is supported on <math|<R><rsup|p,q>> and is an
      element of <math|<sol>>.
    </proposition>

    <\proposition>
      <label|KR-normalization-recur:prop-3>Distribution\ 

      <\equation*>
        K<rsup|\<bbb-R\><rsup|n>><rsub|\<lambda\>,\<nu\>>\<assign\><frac|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n><around*|\||Q|\|><rsup|\<um\>\<nu\>>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>\<Gamma\><around*|(|<frac|-\<nu\>+1|2>|)>>
      </equation*>

      initially defined by corresponding continuous function for
      <math|Re<around*|(|\<lambda\>+\<nu\>-n|)>\<gtr\>0,Re<around*|(|-\<nu\>|)>\<gtr\>0>
      can be holomorphically extended to an element of
      <math|\<cal-S\>ol<around*|(|\<bbb-R\><rsup|n>;\<lambda\>,\<nu\>|)>> for
      <math|<around*|{|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2><mid|\|>\<lambda\>\<um\>\<nu\>\<nin\>\<bbb-Z\><rsub|\<leqslant\>0>|}>><\footnote>
        note that the first region is in fact contained in the second one
      </footnote>.
    </proposition>

    <\proposition>
      <label|KR-normalization-recur:prop-supp>For
      <math|K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>> defined in
      proposition <reference|KR-normalization-recur:prop-3> we have its
      restriction to <math|\<bbb-R\><rsup|n>\\<around*|{|0|}>> being
      holomorphic in <math|<around*|(|\<lambda\>,\<nu\>|)>> with support
      being equal to

      <\equation*>
        =<choice|<tformat|<table|<row|<cell|\<bbb-R\><rsup|n>\\<around*|{|0|}>,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<in\><around*|{|\<nu\>\<nin\>2\<bbb-Z\><rsub|\<geqslant\>0>+1|}>\<cap\><around*|{|\<lambda\>+\<nu\>-n\<nin\>-1-2\<bbb-Z\><rsub|\<geqslant\>0>|}>>>|<row|<cell|<around*|{|Q=0|}>,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<in\><around*|{|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1|}>\<cap\><around*|{|\<lambda\>+\<nu\>-n\<nin\>-1-2\<bbb-Z\><rsub|\<geqslant\>0>|}>>>|<row|<cell|<around*|{|x<rsub|p>=0|}>,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<in\><around*|{|\<nu\>\<nin\>2\<bbb-Z\><rsub|\<geqslant\>0>+1|}>\<cap\><around*|{|\<lambda\>+\<nu\>-n\<in\>-1-2\<bbb-Z\><rsub|\<geqslant\>0>|}>>>|<row|<cell|\<varnothing\>,>|<cell|p=1,<space|0.6spc><around*|(|\<lambda\>,\<nu\>|)>\<in\><around*|{|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1|}>\<cap\><around*|{|\<lambda\>+\<nu\>-n\<in\>-1-2\<bbb-Z\><rsub|\<geqslant\>0>|}>>>|<row|<cell|<around*|{|x<rsub|p>=0|}>\<cap\><around*|{|Q=0|}>,>|<cell|p\<gtr\>1,<space|0.6spc><around*|(|\<lambda\>,\<nu\>|)>\<in\><around*|{|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1|}>\<cap\><around*|{|\<lambda\>+\<nu\>-n\<in\>-1-2\<bbb-Z\><rsub|\<geqslant\>0>|}>.>>>>>
      </equation*>
    </proposition>

    <subsection|Auxiliary results>

    <\lemma>
      <label|KR-normalization-recur:lem-nonvanishing-ss><math|K<rsup|\<bbb-R\><rsup|n>><rsub|\<lambda\>,\<nu\>>>
      defined as in proposition <reference|KR-normalization-recur:prop-3>
      \ is nonzero on <math|\<Omega\><rsub|0>\<cap\><around*|{|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1|}>\<cap\><around*|{|\<lambda\>+\<nu\>-n\<in\>-1-2\<bbb-Z\><rsub|\<geqslant\>0>|}>>
      iff <math|p\<neq\>1>. Moreover, for <math|p\<gtr\>1> it has support
      being equal to <math|<around*|{|Q=0|}>\<cap\><around*|{|x<rsub|p>=0|}>>.
    </lemma>

    <\proof>
      For case <math|p=1>, it suffices to show that
      <math|K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>=0> on
      <math|\<bbb-R\><rsup|n>\\<around*|{|0|}>> in the light of the fact
      <reference|holomorphicity-preserving:fact-homog>. Now, on
      <math|\<bbb-R\><rsup|n>\\<around*|{|0|}>> we have
      <math|<around*|{|Q=0|}>\<cap\><around*|{|x<rsub|p>=0|}>=
      \<varnothing\>> and since for <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<Omega\><rsub|0>\<cap\><around*|{|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1|}>\<cap\><around*|{|\<lambda\>+\<nu\>-n\<in\>-1-2\<bbb-Z\><rsub|\<geqslant\>0>|}>>
      we have <math|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>/\<Gamma\><around*|(|<around*|(|\<lambda\>\<upl\>\<nu\>-n+1|)>/2|)>>
      and <math|<around*|\||Q|\|><rsup|-\<nu\>>/\<Gamma\><around*|(|<around*|(|\<um\>\<nu\>+1|)>/2|)>>
      supported inside <math|<around*|{|x<rsub|p>=0|}>> and
      <math|<around*|{|Q=0|}>> respectively and zero smooth outside, lemma
      <reference|KR-normalization-recur:lem-mult-smth> shows that their
      product is zero.

      Now, we proceed to <math|p\<gtr\>1> case. Let's take an arbitrary point
      <math|x<rsub|0>\<in\><around*|{|Q=0|}>\<cap\><around*|{|x<rsub|p>=0|}>>
      (this set is nonempty under the <math|p\<neq\>1> condition). As was
      noted in proof of proposition <reference|KR-normalization-recur:prop-3>,
      we have normals of <math|<around*|{|Q=0|}>> and
      <math|<around*|{|x<rsub|p>=0|}>> being independent at <math|x<rsub|0>>,
      hence we may introduce local coordinate system
      <math|y<around*|(|x|)>=<around*|(|y<rsub|1><around*|(|x|)>,y<rsub|2><around*|(|x|)>,\<ldots\>,y<rsub|n><around*|(|x|)>|)>\<in\>\<Pi\><rsub|i>U<rsub|i>\<subset\>\<Pi\><rsub|i>\<bbb-R\>>
      near <math|x<rsub|0>>, so that <math|y<rsub|1><around*|(|x|)>=x<rsub|p>>
      and <math|y<rsub|2><around*|(|x|)>=Q<around*|(|x|)>>.\ 

      Then, recalling the way pullback was defined in
      <cite|hormander1983analysis>, we see that
      <math|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>/\<Gamma\><around*|(|<around*|(|\<lambda\>+\<nu\>-n+1|)>/2|)>>
      and <math|<around*|\||Q|\|><rsup|-\<nu\>>/\<Gamma\><around*|(|<around*|(|1-\<nu\>|)>/2|)>>
      have expressions (proportional to) <math|\<delta\><rsup|a><around*|(|y<rsub|1>|)>\<otimes\>1<rsub|\<Pi\><rsub|i\<geqslant\>2>U<rsub|i>>>
      and <math|1<rsub|U<rsub|1>>\<otimes\>\<delta\><rsup|b><around*|(|y<rsub|2>|)>\<otimes\>1<rsub|\<Pi\><rsub|i\<geqslant\>3>U<rsub|i>>>
      respectively with <math|a\<assign\>-<around*|(|\<lambda\>+\<nu\>-n+1|)>/2>
      and <math|b\<assign\>-<around*|(|-\<nu\>+1|)>/2>. Then, applying lemma
      <reference|KR-normalization-recur:lem-mult-distrib-tensor> with
      <math|<around*|(|X,Y|)>:=U<rsub|1>*,\<Pi\><rsub|i\<geqslant\>2>U<rsub|i>>
      and <math|\<Gamma\><rsub|2><rsup|1>=\<Gamma\><rsub|1><rsup|2>=\<varnothing\>>;
      <math|\<Gamma\><rsup|1><rsub|1><rsup|>> and
      <math|\<Gamma\><rsub|2><rsup|2>> full in <math|U<rsub|1>> and
      <math|\<Pi\><rsub|i\<geqslant\>2>U<rsub|i>> respectively, we have that
      <math|K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>> has in
      <math|y<around*|(|x|)>> expression <math|<around*|(|\<delta\><rsup|a><around*|(|y<rsub|1>|)>\<cdot\>1<rsub|U<rsub|1>>|)>\<otimes\><around*|(|1<rsub|\<Pi\><rsub|i\<geqslant\>2>U<rsub|i>>\<cdot\>\<delta\><rsup|b><around*|(|y<rsub|2>|)>\<otimes\>1<rsub|\<Pi\><rsub|i\<geqslant\>3>U<rsub|i>>|)>>.
      Finally, lemma <reference|KR-normalization-recur:lem-mult-smth> tells
      us that latter equals to <math|\<delta\><rsup|a><around*|(|y<rsub|1>|)>\<otimes\><around*|(|\<delta\><rsup|b><around*|(|y<rsub|2>|)>\<otimes\>1<rsub|\<Pi\><rsub|i\<geqslant\>3>U<rsub|i>>|)>>.
      But the latter is tensor product of nonzero distributions, hence
      nonzero. This shows that under the hypothesis taken
      <math|K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>> is supported
      at least on <math|<around*|{|Q=0|}>\<cap\><around*|{|x<rsub|p>=0|}>>
      (and hence nonzero).

      Thus, it remains to show that <math|K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>>
      vanishes outside <math|<around*|{|Q=0|}>\<cap\><around*|{|x<rsub|p>=0|}>>.
      But this is true by lemma <reference|KR-normalization-recur:lem-mult-smth>,
      since outside this set at least one of
      <math|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>/\<Gamma\><around*|(|<around*|(|\<lambda\>+\<nu\>-n+1|)>/2|)>>
      and <math|<around*|\||Q|\|><rsup|-\<nu\>>/\<Gamma\><around*|(|<around*|(|\<um\>\<nu\>+1|)>/2|)>>
      vanishes, as these are supported within
      <math|<around*|{|x<rsub|p>=0|}>> and <math|<around*|{|Q=0|}>>
      respectively, this in turn following by lemma
      <reference|KR-normalization-recur:lem-pull-comm-restr> and the fact
      that <math|<around*|\||x|\|><rsup|\<lambda\>>/\<Gamma\><around*|(|<around*|(|\<lambda\>+1|)>/2|)>=\<delta\><rsup|<around*|(|-\<lambda\>-1|)>>>
      and is supported inside <math|<around*|{|0|}>> for
      <math|\<lambda\>\<in\>-\<bbb-Z\><rsub|\<gtr\>0>>.
    </proof>

    <subsection|Proofs>

    <\proof>
      (of prop. <reference|prop-regular>) All items of definition
      <reference|def-n-nots:def-sol> can be seen directly to hold. In
      particular, <math|N<rsub|+><rprime|'>>-invariance as in definition
      <reference|def-n-nots:def-n+invar> holds, since
      <math|Q<around*|(|x-Q<around*|(|x|)>b|)>=Q<around*|(|x|)>c<rsub|b><around*|(|x|)>>,
      hence with <math|b,c<rsub|b><around*|(|\<cdot\>|)>> and
      <math|\<psi\><rsub|b><around*|(|\<cdot\>|)>> as in that definition we
      have

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<around*|\||<around*|(|\<psi\><rsub|b><around*|(|x|)>|)><rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n><around*|\||Q<around*|(|\<psi\><rsub|b><around*|(|x|)>|)>|\|><rsup|-\<nu\>>=<around*|\||<around*|(|<frac|x-Q<around*|(|x|)>b|c<rsub|b><around*|(|x|)>>|)><rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n><around*|\||Q<around*|(|<frac|x-Q<around*|(|x|)>b|c<rsub|b><around*|(|x|)>>|)>|\|><rsup|-\<nu\>>=>|<cell|>>|<row|<cell|>|<cell|=<frac|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>|<around*|\||c<rsub|b><around*|(|x|)>|\|><rsup|\<lambda\>+\<nu\>-n>>\<cdot\><frac|<around*|\||Q<around*|(|x-Q<around*|(|x|)>b|)>|\|><rsup|-\<nu\>>|<around*|\||c<rsub|b><around*|(|x|)>|\|><rsup|-2\<nu\>>>=<frac|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n><around*|\||Q<around*|(|x|)>|\|><rsup|-\<nu\>>|<around*|\||c<rsub|b><around*|(|x|)>|\|><rsup|\<lambda\>-n>>.>|<cell|>>>>
      </eqnarray>
    </proof>

    <\proof>
      (of prop. <reference|KR-normalization-recur:prop-3>) For the sake of
      brevity, we let <math|\<Omega\><rsub|0>\<assign\><around*|{|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2><mid|\|>\<lambda\>\<um\>n\<in\>\<bbb-Z\><rsub|\<leqslant\>0>|}>>.
      For the proof, it suffices to construct some holomorphically dependent
      on <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<Omega\><rsub|0>>
      distribution <math|F<rsub|\<lambda\>,\<nu\>>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>|)>>
      and to show that it coincides with <math|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n><around*|\||Q|\|><rsup|-\<nu\>>/\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>/\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>\<in\>C<around*|(|\<bbb-R\><rsup|p,q>|)>>
      for <math|\<Omega\><rsub|-1>\<assign\><around*|{|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2><mid|\|>Re<around*|(|\<lambda\>+\<nu\>-n|)>,Re<around*|(|-\<nu\>|)>\<gtr\>0|}>>.\ 

      Now, lemma <reference|supp-n-waves:lem-\|x\|-holo-in> and proposition
      <math|<reference|holomorphicity-preserving:prop-pullback-holo>>
      (applied to <math|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>\<ni\>x\<mapsto\>x<rsub|p>\<in\>\<bbb-R\>>
      and <math|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>\<ni\>x\<mapsto\>Q<around*|(|x|)>>
      that both have their <math|N<rsub|f>> equal to
      <math|\<bbb-R\>\<times\><around*|{|0|}>>) imply that
      <math|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>/\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>>
      and <math|<around*|\||Q|\|><rsup|-\<nu\>>/\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>>
      are both holomorphic in <math|\<cal-D\><rprime|'><rsub|\<Gamma\><rsub|1>><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>>
      and <math|\<cal-D\><rprime|'><rsub|\<Gamma\><rsub|2>><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>>
      respectively with <math|\<Gamma\><rsub|1>\<assign\><around*|{|<around*|(|x,t\<cdot\>e<rsub|p>|)>\<in\><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>\<times\><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)><mid|\|>x<rsub|p>=0,t\<neq\>0|}>>
      and <math|\<Gamma\><rsub|2>\<assign\><around*|{|<around*|(|x,t d
      Q<around*|(|x|)>|)>\<in\><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>\<times\><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)><mid|\|>Q<around*|(|x|)>=0,t\<neq\>0|}>>.
      Next, successive application of propositions
      <reference|holomorphicity-preserving:prop-tensor-holo> and
      <reference|holomorphicity-preserving:prop-pullback-holo> (with
      <math|i:<around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>\<rightarrow\><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>\<times\><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>>
      diagonal embedding; note that for <math|x\<in\>\<bbb-R\><rsup|p,q>\\<around*|{|0|}>>
      with <math|x<rsub|p>=Q<around*|(|x|)>=0> we have <math|d
      Q<around*|(|x|)>> and <math|e<rsub|p>> being nonzero orthogonal, hence
      linearly independent) give us a distribution
      <math|F<rsub|\<lambda\>,\<nu\>>> holomorphic in
      <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<Omega\><rsub|0>> and
      finally application of proposition <reference|holomorphicity-preserving:prop-homog-holo>
      ends the construction.

      Now, assuming <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<Omega\><rsub|-1>>,
      we see that propositions <reference|holomorphicity-preserving:prop-homog-cts>,
      <reference|holomorphicity-preserving:prop-pullback-cts> and
      <reference|holomorphicity-preserving:prop-tensor-cts> imply that
      <math|F<rsub|\<lambda\>,\<nu\>>> coincides with
      <math|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n><around*|\||Q|\|><rsup|-\<nu\>>/\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>/\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>\<in\>C<around*|(|\<bbb-R\><rsup|p,q>|)>>.
    </proof>

    <\proof>
      (of prop. <reference|KR-normalization-recur:prop-supp>) The fact that
      restriction is holomorphic follows by inspecting the proof of
      proposition <reference|KR-normalization-recur:prop-3>. The last two
      rows are given by lemma <reference|KR-normalization-recur:lem-nonvanishing-ss>.
      The first row is given by second and third item of lemma
      <reference|supp-n-waves:lem-supp-xp>, which shows that both
      <math|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>/\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>>
      and <math|<around*|\||Q|\|><rsup|-\<nu\>>/\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>>
      are smooth nonvanishing outside <math|<around*|{|x<rsub|p>=0|}>\<cup\><around*|{|Q=0|}>>,
      hence (by lemma <reference|KR-normalization-recur:lem-mult-smth>) so is
      their product, hence (as <math|<around*|{|x<rsub|p>\<neq\>0|}>\<cap\><around*|{|Q\<neq\>0|}>\<subset\>\<bbb-R\><rsup|n>>
      is open dense) we have the product having support
      <math|\<bbb-R\><rsup|n>\\<around*|{|0|}>>.

      Let us next argue to see the second row. Indeed, let
      <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\><around*|{|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1|}>\<cap\><around*|{|\<lambda\>+\<nu\>-n\<nin\>-1-2\<bbb-Z\><rsub|\<geqslant\>0>|}>>.
      We note that <math|\<subseteq\>> inclusion follows bf lemma
      <reference|KR-normalization-recur:lem-mult-smth>, as outside
      <math|<around*|{|Q=0|}>> we have <math|<around*|\||Q|\|><rsup|-\<nu\>>/\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>>
      vanishing by following by lemma <reference|KR-normalization-recur:lem-pull-comm-restr>
      and the fact that <math|<around*|\||x|\|><rsup|\<lambda\>>/\<Gamma\><around*|(|<around*|(|\<lambda\>+1|)>/2|)>=\<delta\><rsup|<around*|(|-\<lambda\>-1|)>>>
      and is supported inside <math|<around*|{|0|}>> for
      <math|\<lambda\>\<in\>-\<bbb-Z\><rsub|\<gtr\>0>>.

      Let's next argue to see that <math|K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>>
      is supported on <math|<around*|{|Q=0|}>>. It suffices in fact to show
      that <math|K<rsub|\<lambda\>\<comma\>\<nu\>><rsup|\<bbb-R\><rsup|n>>>
      is supported on <math|<around*|{|Q=0|}>\<cap\><around*|{|x<rsub|p>\<neq\>0|}>>,
      as the latter is open dense in <math|<around*|{|Q=0|}>>. But the latter
      statement follows, as on <math|<around*|{|Q=0|}>\<cap\><around*|{|x<rsub|p>\<neq\>0|}>>
      we have <math|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>/\<Gamma\><around*|(|<around*|(|\<lambda\>\<upl\>\<nu\>-n+1|)>/2|)>>
      being nonzero smooth by lemma <reference|supp-n-waves:lem-supp-xp>,
      thus support <math|K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>>
      equals to that of <math|<around*|\||Q|\|><rsup|-\<nu\>>/\<Gamma\><around*|(|<around*|(|-\<nu\>+1|)>/2|)>>,
      and the latter is supported on <math|<around*|{|Q=0|}>> by lemma
      <reference|supp-n-waves:lem-at-least>.

      The argument for the third row is done similarly to the last two
      paragraphs.
    </proof>
  <|hide-part>
    <section|The kernel of regular symmetry breaking operator>
  </hide-part>

  <\hide-part|7>
    <section|The kernel of singular symmetry breaking operator supported on
    <math|<around*|{|x<rsub|p>=0|}>>>

    In this section we (again, for parameters
    <math|<around|(|\<lambda\>,\<nu\>|)>> in appropriate subset of
    <math|<C><rsup|2>>) explicitly construct distribution on
    <math|<R><rsup|p,q>> with support in <math|<around*|{|x<rsub|p>=0|}>> and
    belonging to <math|<sol>>.\ 

    <\proposition>
      <label|prop:supp-p>Fix <math|k\<in\><Z><rsub|\<ge\>0>> and let
      <math|\<lambda\>\<in\><C>> be determined by <math|\<nu\>\<in\><C>> so
      that <math|\<lambda\>+\<nu\>-n=-1-2*k> holds. Then if
      <math|Re<around|(|\<nu\>|)>\<less\>-2*k> the distribution defined as

      <\equation*>
        <around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|P>,\<varphi\>|\<rangle\>>\<assign\><around*|\<langle\>|\<delta\><rsup|<around|(|2*k|)>><around|(|x<rsub|p>|)>,<around*|\||Q|\|><rsup|-\<nu\>>\<varphi\>|\<rangle\>>
      </equation*>

      is well-defined distribution on <math|<R><rsup|p,q>> which is supported
      in <math|<around*|{|x<rsub|p>=0|}>> and is well-behaved under
      <math|P<rprime|'>>.

      Moreover, it can be analytically extended to all
      <math|\<nu\>\<nin\>\<Lambda\><rsub|P>>, where <math|\<Lambda\><rsub|P>>
      being discrete.
    </proposition>

    \ 

    The last statement of the proposition is granted by the following lemma,
    which we prove separately.\ 

    <\lemma>
      <label|lem:supp-p>For <math|k> fixed and
      <math|\<Re\><around|(|\<nu\>|)>\<less\>-2*k> we have

      <\equation>
        <label|eq:supp-p-mero>K<rsup|P><rsub|\<lambda\>,\<nu\>>=<big|sum><rsub|i=0><rsup|k><frac|(-1)<rsup|i><around|(|2*k|)>!<around|(|\<nu\>|)><rsup|i>|<around|(|2*k-2*i|)>!i!>*\<delta\><rsup|<around|(|2*k-2*i|)>><around|(|x<rsub|p>|)>\<otimes\><wide|Q|~><rsub|i>
      </equation>

      where <math|<around|(|\<nu\>|)><rsup|i>\<assign\>\<nu\>*<around|(|\<nu\>+1|)>*\<ldots\>*<around|(|\<nu\>+i-1|)>>
      and

      <\equation*>
        <wide|Q|~><rsub|i>\<assign\><choice|<tformat|<table|<row|<cell|<wide|Q|~><rsub|+><rsup|-\<nu\>-i>+<wide|Q|~><rsub|-><rsup|-\<nu\>-i>>|<cell|,i\<in\>2<Z><rsub|\<ge\>0>>>|<row|<cell|<wide|Q|~><rsub|+><rsup|-\<nu\>-i>-<wide|Q|~><rsub|-><rsup|-\<nu\>-i>>|<cell|,i\<in\>2<Z><rsub|\<ge\>0>+1>>>>>.
      </equation*>

      Here <math|<wide|Q|~>> is the <math|<around|(|p-1,q|)>>-indefinite form
      obtained as a restriction of <math|Q> to
      <math|<around*|{|x<rsub|p>=0|}>> and <math|<wide|Q|~><rsub|\<pm\>>> are
      defined as in <cite-detail|gelfand1980distribution|sec. III.2.2>.

      Hence, <math|K<rsub|\<lambda\>,\<nu\>><rsup|P>> analytically extends to
      <math|\<nu\>\<nin\>\<Lambda\><rsub|P>>.
    </lemma>

    <\remark>
      In fact, equation <eqref|eq:supp-p-mero> holds as equality of
      meromorphic distributions throughout <math|\<nu\>\<in\><C>> (that is,
      equality holds outside poles and at poles we have Laurent series
      coincide, see <cite-detail|gelfand1980distribution|ch. I, A.2.3> for
      discussion of Laurent series for generalized functions depending on
      complex parameter ). Indeed, for <math|\<varphi\>\<in\>C<rsup|\<infty\>><rsub|0>>
      being both sides of <eqref|eq:supp-p-mero> paired with
      <math|\<varphi\>> are meromorphic and coincide for <math|\<nu\>> lying
      in some open subset of <math|<C>>, hence coincide outside their poles,
      hence Laurent series at poles coincide. And as <math|\<varphi\>> are
      arbitrary, we are done.
    </remark>

    <\proof>
      \ Recall that <math|<wide|Q|~><rsup|\<mu\>><rsub|\<pm\>>> were defined
      in <cite|gelfand1980distribution> \ as holomorphic distributions for
      <math|\<mu\>\<nin\>\<Lambda\><rsub|0>\<assign\>-<Z><rsub|\<ge\>1>\<cup\><around*|(|-<frac|n-1|2>-<Z><rsub|\<ge\>0>|)>>.
      Hence, all <math|<wide|Q|~><rsub|i>> are holomorphic in <math|\<nu\>>
      and well defined for <math|\<nu\>\<nin\>\<Lambda\><rsub|P>> with
      <math|\<Lambda\><rsub|P>\<assign\><big|cup><rsub|i=0><rsup|k><mybra|-\<Lambda\><rsub|0>-2*i>=<around*|(|-2*k+<Z><rsub|\<ge\>1>|)>\<cup\><around*|(|<frac|n-1|2>-2*k+<Z><rsub|\<ge\>0>|)>>,
      the latter clearly being discrete.

      As for <math|\<Re\><around|(|\<mu\>|)>\<gtr\>0> we have
      <math|<around*|\||Q|\|><rsup|\<mu\>>\<in\>C<rsup|<around*|\<lfloor\>|\<mu\>|\<rfloor\>>><around|(|<R><rsup|n>|)>>,
      hence for <math|\<Re\><around|(|\<nu\>|)>\<less\>-2*k> the statement of
      lemma would follow from the equality

      <\equation>
        <frac|\<partial\><rsup|k>|\<partial\>*x<rsub|p><rsup|k>><mid|\|><rsub|x<rsub|p>=0><around*|\||Q|\|><rsup|\<mu\>>=<choice|<tformat|<table|<row|<cell|k!<binom|\<mu\>|i><mybra|<wide|Q|~><rsub|+><rsup|\<mu\>-i>+<wide|Q|~><rsub|-><rsup|\<mu\>-i>>,>|<cell|k=2*i,<space|0.75spc>i\<in\>2<Z><rsub|\<ge\>0>>>|<row|<cell|k!<binom|\<mu\>|i><mybra|<wide|Q|~><rsub|+><rsup|\<mu\>-i>-<wide|Q|~><rsub|-><rsup|\<mu\>-i>>,>|<cell|k=2*i,<space|0.75spc>i\<in\>2<Z><rsub|\<ge\>0>+1>>|<row|<cell|0,>|<cell|k\<in\>2<Z><rsub|\<ge\>0>+1<label|eq:supp-p>>>>>>
      </equation>

      holding for <math|k=0*\<ldots\>*N> and
      <math|\<Re\><around|(|\<mu\>|)>\<gtr\>N>, and the Leibniz rule
      <math|<around|(|u*v|)><rsup|<around|(|k|)>>=<big|sum><rsub|i=0><rsup|k><binom|k|i>u<rsup|<around|(|i|)>>*v<rsup|<around|(|k-i|)>>>.

      It suffice thus to show the equality above. It follows by considering
      cases of <math|<wide|Q|~>> being zero, positive and negative
      respectively. In the first case we see that for <math|k=0*\<ldots\>*N>,
      <math|<around*|(|\<partial\><rsup|k>/\<partial\>x<rsub|p><rsup|k>|)><mid|\|><rsub|x<rsub|p>=0><around*|\||Q|\|><rsup|\<mu\>>=0>
      which perfectly agrees with the right-hand side of <eqref|eq:supp-p>.

      In turn, when <math|<wide|Q|~>\<gtr\>0> we have
      <math|Q=<wide|Q|~>+x<rsub|p><rsup|2>> being positive for small
      <math|x<rsub|p>> and from the expansion

      <\equation*>
        <around*|\||Q|\|><rsup|\<mu\>>=<mybra|<wide|Q|~>+x<rsub|p><rsup|2>><rsup|\<mu\>>=<big|sum><rsub|i=0><rsup|\<infty\>><binom|\<mu\>|i><wide|Q|~><rsup|\<mu\>-i>*x<rsub|p><rsup|2*i>
      </equation*>

      we see that in case <math|<wide|Q|~>\<gtr\>0> for
      <math|k=0*\<ldots\>*N>

      <\equation*>
        <frac|\<partial\><rsup|k>|\<partial\>*x<rsub|p><rsup|k>><mid|\|><rsub|x<rsub|p>=0><around*|\||Q|\|><rsup|\<mu\>>=<choice|<tformat|<table|<row|<cell|k!<binom|\<mu\>|i><wide|Q|~><rsup|\<mu\>-i>,>|<cell|k=2*i,<space|0.75spc>i\<in\>2<Z><rsub|\<ge\>0>>>|<row|<cell|k!<binom|\<mu\>|i><wide|Q|~><rsup|\<mu\>-i>,>|<cell|k=2*i,<space|0.75spc>i\<in\>2<Z><rsub|\<ge\>0>+1>>|<row|<cell|0,>|<cell|k\<in\>2<Z><rsub|\<ge\>0>+1>>>>>
      </equation*>

      which again perfectly agrees with <eqref|eq:supp-p>, as
      <math|<wide|Q|~>\<gtr\>0> assumption implies that
      <math|<wide|Q|~><rsup|\<mu\>-2*i><rsub|->=0> and
      <math|<wide|Q|~><rsup|\<mu\>-2*i>=Q<rsub|+><rsup|\<mu\>-2*i>>.

      Finally, the case <math|<wide|Q|~>\<less\>0> can be similarly verified
      to match <eqref|eq:supp-p>.
    </proof>

    <\proof>
      (of prop. <reference|prop:supp-p>) First, well-definedness is clear as
      for <math|\<Re\><around|(|\<mu\>|)>\<gtr\>0> we have
      <math|<around*|\||Q|\|><rsup|\<mu\>>\<in\>C<rsup|<around*|\<lfloor\>|\<mu\>|\<rfloor\>>><around|(|<R><rsup|n>|)>>
      and every <math|C<rsup|k>> class is closed under product. The claim
      about support then gets obvious as well, so it remains to show that
      <math|K<rsub|\<lambda\>,\<nu\>><rsup|P>\<in\><sol>>.

      For the remaining part of the proof we fix <math|\<nu\><rsub|0>> with
      <math|\<Re\><around|(|\<nu\><rsub|0>|)>\<less\>-2*k>. It is known,
      however, from <cite-detail|gelfand1980distribution|ch. I, sec. 3.5>
      that <math|\<delta\><rsup|<around|(|2*k|)>><around|(|x|)>> with
      <math|i\<geq\>0> is proportional to
      <math|lim<rsub|\<mu\>\<to\>-2*k-1><around*|\||x|\|><rsup|\<mu\>>/\<Gamma\><around*|(|<frac|\<mu\>+1|2>|)>>.
      Hence if we define the holomorphic in <math|\<mu\>> distribution
      <math|F<rsub|\<mu\>>\<assign\><around*|\||x<rsub|p>|\|><rsup|\<mu\>><around*|\||Q|\|><rsup|-\<nu\><rsub|0>>/\<Gamma\><around*|(|<frac|\<mu\>+1|2>|)>>,
      we see that <math|F<rsub|-2*k-1>=K<rsub|\<lambda\><rsub|0>,\<nu\><rsub|0>><rsup|P>>
      up to proportionality. Moreover, for
      <math|\<Re\><around|(|\<mu\>|)>\<gtr\>0>, we see that enumerator of
      <math|F<rsub|\<mu\>>> is an element of <math|<sol>> due to proposition
      <reference|prop-regular>. The application of an analogue of
      <cite-detail|kobayashi2015symmetry|prop. 3.18> now ends the proof.
    </proof>
  <|hide-part>
    <section|The kernel of singular symmetry breaking operator supported on
    <math|<around*|{|x<rsub|p>=0|}>>>
  </hide-part>

  <\hide-part|8>
    <section|The kernel of singular symmetry breaking operator supported on
    <math|<around*|{|Q=0|}>>>

    <subsection|Goal>

    In this section, we construct the distribution on <math|<R><rsup|p,q>>
    which is supported on <math|R<rsup|p,q>\<supset\><around*|{|Q=0|}>>
    hypersurface and belongs to <math|<sol>>, under some mild assumption on
    the complex parameters. More precisely,\ 

    <subsection|Main results>

    <\proposition>
      \ Suppose <math|\<nu\>\<in\>2<Z><rsub|\<geq\>0>+1> and
      <math|\<lambda\>\<in\>\<Omega\><rsub|\<nu\>>\<assign\><mysetn|\<lambda\>\<in\><C>|Re<around|(|\<lambda\>-\<nu\>+n|)>\<nin\><Z><rsub|\<leq\>1>>>.
      Then, the following holds:

      <\enumerate>
        <item>There exists <math|F\<in\><sol>> such that it is supported on
        <math|<around*|{|Q=0|}>>. When <math|Re<around|(|\<lambda\>|)>\<gg\>0>,
        restricted to <math|<R><rsup|p,q>\<setminus\><around*|{|0|}>> we have
        <math|F<around|(|\<varphi\>|)>=<around*|\<langle\>|\<delta\><rsup|\<nu\>-1><around|(|Q|)>,<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>\<varphi\>|\<rangle\>>>;

        <item>Moreover, if <math|\<nu\>\<nin\>2\<bbb-Z\><rsub|\<geq\>0>-1>
        such generalized function does not exist.
      </enumerate>

      <label|thm:sing-q>
    </proposition>

    <\proposition>
      If <math|\<nu\>\<nin\>2<Z><rsub|\<geq\>0>+1>,
      <math|\<cal-S\>ol<rsub|<around*|{|Q=0|}>><around*|(|<R><rsup|p,q>\<setminus\><around*|{|0|}>;\<lambda\>,\<nu\>|)>=<around*|{|0|}>>.<label|lem:sing-q-1>
    </proposition>

    <\proposition>
      <label|supp-Q:prop-onedim>If <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\>\<times\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>0>+1|)>>,
      then

      <\equation*>
        \<cal-S\>ol<rsub|<around*|{|Q=0|}>><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>;\<lambda\>,\<nu\>|)>=\<bbb-C\><choice|<tformat|<table|<row|<cell|\<delta\><rsup|<around*|(|\<nu\>-1|)>><around*|(|Q|)>\<cdot\><around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>,>|<cell|p=1>>|<row|<cell|\<delta\><rsup|<around*|(|\<nu\>-1|)>><around*|(|Q|)>\<cdot\><frac|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>|\<Gamma\><around*|(|<around*|(|\<lambda\>+\<nu\>-n+1|)>/2|)>>,>|<cell|p\<gtr\>1>>>>>.
      </equation*>

      We will call the distribution on the right-hand side of the expression
      above by <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>>.
      For fixed <math|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1> it is
      holomorphic in <math|\<lambda\>\<in\>\<bbb-C\>>.

      The multiplication of distributions here is defined as in
      <cite|hormander1983analysis>, well-definedness being shown in the proof
      of proposition <reference|KR-normalization-recur:prop-3>. We note that
      <math|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>> in
      expression for <math|p=1> case makes sense without the normalization by
      gamma function, as for <math|p=1> we have
      <math|<around*|{|Q=0|}>\<cap\><around*|{|x\<neq\>0|}>\<subset\><around*|{|x<rsub|p>\<neq\>0|}>>.
    </proposition>

    <\proposition>
      <label|supp-Q:prop-sol-extending>For
      <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\>\<times\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>0>+1|)>>
      and <math|\<lambda\>-\<nu\>\<nin\>-\<bbb-Z\><rsub|\<geqslant\>0>> we
      have <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>>
      defined in proposition <reference|supp-Q:prop-onedim> extending to an
      element of <math|\<cal-S\>ol<rsub|<around*|{|Q=0|}>><around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>>,
      which by abuse of notation we will also call
      <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>> and which is also holomphic in
      <math|\<lambda\>>. Moreover, <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>\<neq\>0>
      for <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\>\<times\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>0>+1|)>>
      and <math|\<lambda\>-\<nu\>\<nin\>-\<bbb-Z\><rsub|\<geqslant\>0>>.
    </proposition>

    <\proposition>
      <label|supp-Q:prop-supp-xnoq0>For <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>>
      as defined in proposition <reference|supp-Q:prop-onedim> has its
      support being equal to

      <\equation*>
        =<choice|<tformat|<table|<row|<cell|<around*|{|Q=0|}>,>|<cell|p=1>>|<row|<cell|<around*|{|Q=0|}>,>|<cell|p\<gtr\>1,\<lambda\>+\<nu\>-n\<nin\>-2\<bbb-Z\><rsub|\<geqslant\>0>-1>>|<row|<cell|<around*|{|Q=0|}>\<cap\><around*|{|x<rsub|p>=0|}>,>|<cell|p\<gtr\>1,\<lambda\>+\<nu\>-n\<in\>-2\<bbb-Z\><rsub|\<geqslant\>0>-1>>>>>
      </equation*>
    </proposition>

    <subsection|Auxiliary results>

    <\lemma>
      \ If <math|F\<in\><D><rprime|'><around*|(|<around*|{|x\<neq\>0|}>\<cap\><around*|{|y\<neq\>0|}>|)>><\footnote>
        <math|<around*|{|x\<neq\>0|}>\<assign\><around*|{|<around*|(|x,y|)>\<in\>\<bbb-R\><rsup|p,q><mid|\|>x\<neq\>0|}>>
        and similarly <math|<around*|{|y\<neq\>0|}>> is defined
      </footnote>, <math|<supp><around|(|F|)>=<around*|{|Q=0|}>> , then
      <math|F> extends to <math|<wide|F|~>\<in\><D><rprime|'><around|(|<R><rsup|p,q>\<setminus\><around*|{|0|}>|)>>
      with <math|<supp><around|(|<wide|F|~>|)>=<around*|{|Q=0|}>> and any two
      such extensions would coincide. Moreover, if
      <math|F\<in\>\<cal-S\>ol<rsub|<around*|{|Q=0|}>><around*|(|<around*|{|x\<neq\>0|}>\<cap\><around*|{|y\<neq\>0|}>;\<lambda\>,\<nu\>|)>>,
      then <math|<wide|F|~>\<in\>\<cal-S\>ol<rsub|<around*|{|Q=0|}>><around*|(|<R><rsup|p,q>\<setminus\><around*|{|0|}>;\<lambda\>,\<nu\>|)>>.<label|lem:sing-q-3>
    </lemma>

    <\proof>
      Note that <math|<R><rsup|p,q>\<setminus\><around*|{|0|}>=A\<cup\>B\<assign\><mysetn|<around|(|x,y|)>\<in\><R><rsup|p,q>\\<around*|{|0|}>|x\<neq\>0,<space|0.75spc>y\<neq\>0>\<cup\><mysetn|<around|(|x,y|)>\<in\><R><rsup|p,q>\\<around*|{|0|}>|<around*|\||x|\|>\<neq\><around*|\||y|\|>>>.
      If we define <math|<wide|F|~>> as <math|F> on <math|A> and 0 on
      <math|B>, the Fact <reference|fact:sing-q-1> \ shows that
      <math|<wide|F|~>> is a well-defined extension, and this proves the
      existence part. Regarding the uniqueness part, whatever extension
      <math|<wide|F|~>> would be, it should be equal to <math|F> on <math|A>
      and 0 on <math|B>, hence the uniqueness part of Fact
      <reference|fact:sing-q-1> \ grants the uniqueness. This proves the
      conclusion in the first sentence.

      Now, assume that <math|F\<in\><sol*|A>>. Then both
      <math|<wide|F|~><mid|\|><rsub|A>=F\<in\><sol*|A>> and
      <math|F<mid|\|><rsub|B>=0\<in\><sol*|B>>. This grants the desired
      conclusion.
    </proof>

    <\lemma>
      Suppose <math|F\<in\><D><rprime|'><around|(|<R><rsup|p,q>|)>>,
      <math|F<mid|\|><rsub|<R><rsup|p,q>\<setminus\><around*|{|0|}>>> is
      <math|N<rsub|+><rprime|'>>-invariant on
      <math|<R><rsup|p,q>\<setminus\><around*|{|0|}>> and <math|F> satisfies
      <eqref|Ndiff> on <math|<R><rsup|p,q>>. Then, <math|F> is
      <math|N<rsub|+><rprime|'>>-invariant on
      <math|R<rsup|p,q>>.<label|supp-Q:lem-sing-q-4>
    </lemma>

    <\fact>
      <cite-detail|hormander1983analysis|Thm 2.2.4> Let <math|X<rsub|i>> be
      the family of open subsets of <math|<R><rsup|n>> and
      <math|f<rsub|i>\<in\><D><rprime|'><around|(|X<rsub|i>|)>>. Suppose
      further that <math|\<forall\>i,j,<space|0.75spc>f<rsub|i><mid|\|><rsub|X<rsub|i>\<cap\>X<rsub|j>>=f<rsub|j><mid|\|><rsub|X<rsub|i>\<cap\>X<rsub|j>>>.
      Then there exists unique <math|f\<in\><D><rprime|'><around|(|<big|cup><rsub|i>X<rsub|i>|)>>
      such that <math|f<mid|\|><rsub|X<rsub|i>>=f<rsub|i>>.<label|fact:sing-q-1>
    </fact>

    <\fact>
      <proofexplanation|<cite-detail|hormander1983analysis|Thm 2.1.3>>
      Suppose <math|\<phi\>\<in\>C<rsup|\<infty\>>*<around|(|X\<times\>Y|)>>
      where <math|X,<space|0.25spc>Y\<in\><R><rsup|m>,<space|0.25spc><R><rsup|n>>
      are open sets and <math|\<phi\><around|(|x,y|)>=0> if
      <math|x\<nin\>K\<subset\>X>, where <math|K> is compact. Then for any
      <math|u\<in\><D><rprime|'><around|(|X|)>>
      <math|y\<mapsto\>u<around|(|\<phi\>|(>\<cdot\>,y))> is smooth function
      and <math|<around*|\<nobracket\>|<around*|\<nobracket\>|<frac|\<partial\>|\<partial\>*y<rsub|i>>*<around*|(|y\<mapsto\>u<around|(|\<phi\>|(>\<cdot\>,y|)>)|)>=u*<around*|(|<frac|\<partial\>|\<partial\>*y<rsub|i>>*u|(>\<cdot\>,y)|)>>.<label|fact:sing-q-2>
    </fact>

    <\proof>
      Fix arbitrary <math|b\<in\><R><rsup|p,q>> with <math|b<rsub|p>=0> and
      let <math|c<rsub|b><around|(|x|)>\<assign\>1-2*Q<around|(|b,x|)>+Q<around|(|b|)>*Q<around|(|x|)>>,
      <math|\<psi\><rsub|b><around|(|x|)>\<assign\><around|(|x-Q<around|(|x|)>*b|)>/c<rsub|b><around|(|x|)>>.
      What needs to be shown is that near <math|x=0> we have
      <math|F<around|(|x|)>=F<around|(|\<psi\><rsub|b><around|(|x|)>|)>*c<rsub|b><rsup|\<lambda\>-n><around|(|x|)>>.

      Let us take open <math|<R><rsup|p,q>\<supset\>U\<ni\><around*|{|0|}>>
      such that <math|\<forall\><around|(|t,x|)>\<in\>(-1/2,3/2)\<times\>U>
      we have <math|c<rsub|t*b><around|(|x|)>\<neq\>0> and let us further fix
      arbitrary <math|\<phi\>\<in\>C<rsub|0><rsup|\<infty\>><around|(|V|)>>.
      Define <math|(-3/2,1/2)\<ni\>t\<mapsto\>f<around|(|t|)>\<assign\><around*|\<langle\>|F<around|(|\<psi\><rsub|t*b><around|(|x|)>|)>*c<rsub|t*b><rsup|\<lambda\>-n>,\<phi\>|\<rangle\>>\<in\><R>>.
      Recalling what <math|F<around|(|\<psi\><rsub|t*b><around|(|x|)>|)>*c<rsub|t*b><rsup|\<lambda\>-n>>
      means in a distribution sense, we may write
      <math|<around*|\<langle\>|F<around|(|\<psi\><rsub|t*b><around|(|x|)>|)>*c<rsub|t*b><rsup|\<lambda\>-n>,\<phi\>|\<rangle\>>=<around*|\<langle\>|F,\<phi\><rsub|t>|\<rangle\>>>
      for <math|\<phi\><rsub|t>\<in\>C<rsup|\<infty\>><around|(||(>-1/2,3/2)\<times\>V)>
      the deformation of <math|\<phi\>>. Further restricting if necessary
      <math|<supp><around|(|\<phi\>|)>> we may ensure that
      <math|\<phi\><rsub|t>> vanishes outside <math|(-1/2,3/2)\<times\>K> for
      some compact <math|K\<times\>V>. Fact <reference|fact:sing-q-2> \ then
      tells us that <math|f> is smooth and
      <math|f<rprime|'><around|(|t|)>=<around*|\<langle\>|D<rsub|b>*F,\<phi\><rsub|t>|\<rangle\>>>,
      where <math|D<rsub|b>=<big|sum><rsub|j>b<rsub|j><mysbra|2*\<nu\>*\<varepsilon\><rsub|j>*x<rsub|j>+<frac|1|2>*Q<around|(|x|)><frac|\<partial\>|\<partial\>*x<rsub|j>>>>
      But then the hypothesis of the lemma implies that <math|D<rsub|b>*F=0>,
      hence <math|f<rprime|'><around|(|t|)>=0>, hence
      <math|f<around|(|1|)>=f<around|(|0|)>> and this implies the desired
      conclusion.
    </proof>

    <\fact>
      <proofexplanation|<cite-detail|hormander1983analysis|Thm. 2.3.5>>
      <label|fact:sing-q-3>Let <math|x=<around|(|x<rprime|'>,x<rprime|''>|)>>
      be a splitting of the variables in <math|<R><rsup|n>> in two groups. If
      <math|u\<in\><D><rprime|'><around|(|<R><rsup|n>|)>> has with compact
      support and the latter is contained in the plane <math|x<rprime|'>=0>,

      <\equation*>
        u=<big|sum><rsub|<around*|\||\<alpha\>|\|>\<leq\>k>u<rsub|\<alpha\>>*\<delta\><rsup|<around|(|\<alpha\>|)>><around|(|x<rprime|'>|)>
      </equation*>

      with <math|u<rsub|\<alpha\>>> is distribution with compact support in
      the <math|x<rprime|''>> variables.
    </fact>

    <\remark>
      Using the cutoff function, this fact can be applied to distributions
      <math|u> of non-compact support, the sum
      <math|u=<big|sum><rsub|<around*|\||\<alpha\>|\|>\<leq\>k>u<rsub|\<alpha\>>*\<delta\><rsup|<around|(|\<alpha\>|)>><around|(|x<rprime|'>|)>>
      then becoming locally compact. Also, such extension is easily seen to
      be unique.
    </remark>

    <\lemma>
      <label|lem:sing-q-6>For <math|<around*|(|m,\<mu\>|)>\<in\>\<bbb-Z\><rsub|\<gtr\>0>\<times\>\<bbb-C\>>
      we let

      <\equation*>
        \<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|m>\\<around*|{|0|}>|)>\<ni\>f<rsub|\<mu\>><rsup|<around*|(|m|)>>\<assign\><choice|<tformat|<table|<row|<cell|<around*|\||x|\|><rsup|\<mu\>>,>|<cell|m=1>>|<row|<cell|<around*|\||x|\|><rsup|\<mu\>>/\<Gamma\><around*|(|<around*|(|\<mu\>+1|)>/2|)>,>|<cell|m\<gtr\>1>>>>>
      </equation*>

      (see <cite-detail|gelfand1980distribution|ch. III, sec. 3.2, 3.3> for
      definition of distribution <math|<around*|\||x|\|><rsup|\<lambda\>>>).

      Fix <math|\<nu\>\<in\>\<bbb-Z\><rsub|\<gtr\>0>>. Let
      <math|g\<in\><D><rprime|'><around|(|<R><rsub|\<gtr\>0>\<times\><Sp><rsup|p-1>|)>>
      be pullback of <math|f<rsup|<around*|(|p|)>><rsub|\<lambda\>+\<nu\>-n><around*|(|x<rsub|p>|)>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p>\\<around*|{|0|}>|)>>
      via the polar coordinates.

      We introduce the coordinate system to parametrize <math|<Upp>>. These
      will be <math|<around|(|\<mu\>,s,\<omega\><rsub|p-1>,\<omega\><rsub|q-1>|)>>
      coordinates given by <math|<mysetn|<around|(|x,y|)>\<in\><R><rsup|p,q>|x\<neq\>0,<space|0.75spc>y\<neq\>0>\<ni\><around|(|x,y|)>=(<sqrt|s>*\<omega\><rsub|p-1>,<sqrt|\<mu\>*s>*\<omega\><rsub|q-1>>
      with <math|<around|(|\<mu\>,s,\<omega\><rsub|p-1>,\<omega\><rsub|q-1>|)>\<in\><R><rsub|\<gtr\>0>\<times\><R><rsub|\<gtr\>0>\<times\><Sp><rsup|p-1>\<times\><Sp><rsup|q-1>>.

      We define <math|K<rsup|<around*|(|p|)>><rsub|\<lambda\>,\<nu\>>\<in\><D><rprime|'><around|(|<R><rsub|\<gtr\>0>\<times\><R><rsub|\<gtr\>0>\<times\><Sp><rsup|p-1>\<times\><Sp><rsup|q-1>|)>>
      to be the distribution <math|K<rsup|<around*|(|p|)>><rsub|\<lambda\>,\<nu\>>\<assign\>\<delta\><rsup|<around|(|\<nu\>-1|)>>*<around|(|\<mu\>-1|)>\<otimes\>s<rsup|-\<nu\>>*g\<otimes\>1<rsub|<Sp><rsup|q-1>>>
      in variables <math|<around|(|\<mu\>,s,\<omega\><rsub|p-1>,\<omega\><rsub|q-1>|)>\<in\><R><rsub|\<gtr\>0>\<times\><R><rsub|\<gtr\>0>\<times\><Sp><rsup|p-1>\<times\><Sp><rsup|q-1>>.

      We also let for <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>,
      <math|U\<subset\>\<bbb-R\><rsup|p,q>> open and <math|S\<subset\>U>
      closed, <math|\<cal-S\>ol<rprime|'><rsub|S><around*|(|U;\<lambda\>,\<nu\>|)>>
      to denote set of distributions <math|u\<in\>\<cal-D\><rprime|'><around*|(|U|)>>
      vanishing outside <math|S>, satisfying first three items of definition
      <reference|def-n-nots:def-sol> and equations <eqref|Ndiff>. We note
      that <math|\<cal-S\>ol<rprime|'><rsub|S><around*|(|U;\<lambda\>,\<nu\>|)>\<supset\>\<cal-S\>ol<rsub|S><around*|(|U;\<lambda\>,\<nu\>|)>>\ 

      Then for <math|\<nu\>\<in\>\<bbb-Z\><rsub|\<gtr\>0>> we have
      <math|\<cal-S\>ol<rsub|<around*|{|Q=0|}>><rprime|'><around*|(|<around*|{|x\<neq\>0|}>\<cap\><around*|{|y\<neq\>0|}>;\<lambda\>,\<nu\>|)>=\<bbb-C\>K<rsup|<around*|(|p|)>><rsub|\<lambda\>,\<nu\>>>.
    </lemma>

    <\fact>
      <proofexplanation|<cite-detail|hormander1983analysis|Thm. 3.1.4'>>
      <label|fact:sing-q-4>Let <math|u\<in\><D><rprime|'><around|(|Y\<times\>I|)>>
      with <math|Y\<subset\><R><rsup|n>> open and <math|I\<subset\><R>>
      interval. Assume further that <math|\<partial\><rsub|n>=0>. Then, there
      exists a distribution <math|u<rsub|0>\<in\><D><rprime|'><around|(|Y|)>>
      such that <math|u<around|(|\<varphi\>|)>=<big|int><rsub|I>u<rsub|0>*<around|(|x\<mapsto\>\<varphi\><around|(|x,t|)>|)>*<space|0.75spc>d*t>.
    </fact>

    <\proof>
      Applying fact <reference|fact:sing-q-3>, in
      <math|<around|(|\<mu\>,s,\<omega\><rsub|p-1>,\<omega\><rsub|q-1>|)>>
      coordinates <math|F> should be of the form
      <math|F=<big|sum><rsub|i\<geq\>0>\<delta\><rsup|<around|(|i|)>>*<around|(|\<mu\>-1|)>*u<rsub|i>>
      with sum being locally finite and <math|u<rsub|i>\<in\><D><rprime|'><around|(|<R><rsub|\<gtr\>0>\<times\><Sp><rsup|p-1>\<times\>\<bbb-S\><rsup|q-1>|)>>
      being independent of <math|\<mu\>>. Similarly as in proof of
      proposition <reference|lem:sing-q-1>, we can conclude that
      <math|F=\<delta\><rsup|<around|(|\<nu\>-1|)>>*<around|(|\<mu\>-1|)>*u>
      globally with <math|u\<in\><D><rprime|'><around|(|<R><rsub|\<gtr\>0>\<times\>\<bbb-S\><rsup|p-1>\<times\>\<bbb-S\><rsup|q-1>|)>>
      being independent of <math|\<mu\>>.

      Furthermore, being an element of <math|\<cal-S\>ol<rsub|<around*|{|Q=0|}>><around*|(|<around*|{|x\<neq\>0|}>\<cap\><around*|{|y\<neq\>0|}>;\<lambda\>,\<nu\>|)>>
      implies homogeneity with degree <math|\<lambda\>-\<nu\>-n> and hence
      that the Euler equation <math|E*F=<around|(|\<lambda\>-\<nu\>-n|)>*F>
      should hold, with Euler operator <math|E> in
      <math|<around|(|\<mu\>,s,\<omega\><rsub|p-1>,\<omega\><rsub|q-1>|)>>
      coordinates being written as <math|E=2*s*<frac|\<partial\>|\<partial\>*s>>,
      hence <math|<frac|\<partial\>|\<partial\>*s>*u=<frac|\<lambda\>-\<nu\>-n|2>*u>.
      Hence, applying fact <reference|fact:sing-q-4> \ we see that
      <math|s<rsup|-<frac|\<lambda\>-\<nu\>-n|2>>*u> is independent of
      <math|s>, hence we may write <math|u=s<rsup|<frac|\<lambda\>-\<nu\>-n|2>>*v>
      with <math|v\<in\><D><rprime|'><around|(|\<bbb-S\><rsup|p-1>\<times\>\<bbb-S\><rsup|q-1>|)>>
      independent of <math|s>.

      As <math|F> has to be invariant under left multiplication by
      <math|O<around|(|q|)>\<subset\><Stab>>, we see that in fact <math|v> is
      independent of variables of <math|\<bbb-S\><rsup|q-1>>, hence may be
      treated as <math|v\<in\><D><rprime|'><around|(|\<bbb-S\><rsup|p-1>|)>>.
      To finish the proof, it now suffices to show that under the polar
      coordinates transformation, <math|<wide|v|~>\<assign\>s<rsup|\<lambda\>+\<nu\>-n>*v\<in\><D><rprime|'><around|(|<R><rsub|\<gtr\>0>\<times\>\<bbb-S\><rsup|p-1>|)>>
      becomes proportional to <math|f<rsub|\<lambda\>+\<nu\>-n><rsup|<around*|(|p|)>><around*|(|x<rsub|p>|)>>.
      In the light of lemmas <reference|lem67:lem-tensor> and
      <reference|lem67:lem-homogR>, for this it suffices to show that
      <math|<around|(|\<partial\>/\<partial\>*x<rsub|i>|)>*<wide|v|~>=0> and
      that <math|<wide|v|~>> is homogeneous of degree
      <math|\<lambda\>+\<nu\>-n> (the latter is obvious from the above).

      To derive the required equalities we will need to understand how
      equations <eqref|Ndiff> get written in
      <math|<around|(|\<mu\>,s,\<omega\><rsub|p-1>,\<omega\><rsub|q-1>|)>>
      coordinates and how <math|<around|(|\<partial\>/\<partial\>*x<rsub|i>|)>*<wide|v|~>=0>
      get written. We assume that we fix two parametrizations
      <math|<R><rsup|p-1>\<supset\>U\<ni\><around*|(|z<rsub|i>|)><rsub|i=1><rsup|p-1>\<mapsto\><around*|(|\<omega\><rsub|p-1><rsup|<around|(|j|)>><around|(|z|)>|)><rsub|j=1><rsup|p>\<in\>\<bbb-S\><rsup|p-1>\<subset\><R><rsup|p>>
      and <math|<R><rsup|q-1>\<supset\>U\<ni\><around*|(|w<rsub|i>|)><rsub|i=1><rsup|q-1>\<mapsto\><around*|(|\<omega\><rsub|q-1><rsup|<around|(|j|)>><around|(|w|)>|)><rsub|j=1><rsup|q>\<in\>\<bbb-S\><rsup|q-1>\<subset\><R><rsup|q>>.
      We will denote the first order derivatives of these by
      <math|D<rsub|p-1>> and <math|D<rsub|q-1>> respectively (these being
      <math|p-1\<times\>p> and <math|q-1\<times\>q> matrices respectively).
      We will also use shorthands to denote column-vectors:
      <math|\<partial\>/\<partial\>*z\<assign\><around*|[|<frac|\<partial\>|\<partial\>*z<rsub|i>>|]><rsub|i>>
      and <math|\<partial\>/\<partial\>*w\<assign\><around*|[|<frac|\<partial\>|\<partial\>*w<rsub|j>>|]><rsub|j>>

      We will start with the former task. Under the polar parametrization
      <math|x=<sqrt|s>\<cdot\>\<omega\><rsub|p-1>> the desired equality
      <math|<around|(|\<partial\>/\<partial\>*x<rsub|i>|)>*<wide|v|~>=0> for
      <math|1\<leq\>i\<leq\>p-1> gets written as

      <\equation*>
        <around*|[|<frac|1|<sqrt|s>>*\<omega\><rsub|p-1><rsup|<around|(|i|)>>*2*s*<frac|\<partial\>|\<partial\>*s>+<frac|1|<sqrt|s>>*<around*|(|J<rsub|p-1>*<frac|\<partial\>|\<partial\>*z>|)><rsub|i>|]>*<wide|v|~>=0,<space|1em>1\<leq\>i\<leq\>p-1
      </equation*>

      as we further know that <math|<wide|v|~>> is homogeneous of degree
      <math|\<lambda\>+\<nu\>-n> and Euler operator is written as
      <math|E=2*s*<frac|\<partial\>|\<partial\>*s>>, this can be rewritten as

      <\equation>
        <around*|[|\<omega\><rsub|p-1><rsup|<around|(|i|)>>*<around|(|\<lambda\>+\<nu\>-n|)>+<around*|(|J<rsub|p-1>*<frac|\<partial\>|\<partial\>*z>|)><rsub|i>|]>*<wide|v|~>=0,<space|1em>1\<leq\>i\<leq\>p-1<label|eq:sing-q-dx>
      </equation>

      Furthermore, differentiating condition 2 of definition of
      <math|<sol><Upp>> for <math|F\<in\><sol><Upp>> we see that (using the
      usual splitting <math|<around|(|x,y|)>\<in\><R><rsup|p,q>>) we should
      have

      <\equation*>
        <around*|[|x<rsub|i>*\<partial\>*y<rsub|j>+y<rsub|j>*\<partial\>*x<rsub|i>|]>*F=0,<space|1em>1\<le\>i\<le\>p-1,<space|0.75spc>1\<leq\>j\<leq\>q
      </equation*>

      which in <math|<around|(|\<mu\>,s,\<omega\><rsub|p-1>,\<omega\><rsub|q-1>|)>>
      gets written as

      <\equation*>
        <sqrt|s>*\<omega\><rsup|<around|(|i|)>><rsub|p-1>*<around*|[|\<omega\><rsup|<around|(|j-1|)>><rsub|q-1>*<frac|2*<sqrt|\<mu\>>|<sqrt|s>>\<cdot\><frac|\<partial\>|\<partial\>*\<mu\>>+<frac|1|<sqrt|s*\<mu\>>>*<around*|(|J<rsub|q-1>*<frac|\<partial\>|\<partial\>*w>|)><rsub|j>|]>*F+
      </equation*>

      <\equation*>
        <sqrt|s*\<mu\>>*\<omega\><rsup|<around|(|j|)>><rsub|q-1>*<around*|[|\<omega\><rsub|p-1><rsup|<around|(|i|)>>*<around*|(|-2*\<mu\>/<sqrt|s>*<frac|\<partial\>|\<partial\>*\<mu\>>+2*<sqrt|s>*<frac|\<partial\>|\<partial\>*s>|)>+<frac|1|<sqrt|s>>*<around*|(|J<rsub|p-1>*<frac|\<partial\>|\<partial\>*z>|)><rsub|i>|]>*F=0.
      </equation*>

      As <math|F> is independent of <math|w> (as shown above) this gets
      rewritten as

      <\equation*>
        \<omega\><rsup|<around|(|i|)>><rsub|p-1>*<around*|[|\<omega\><rsup|<around|(|j-1|)>><rsub|q-1>*<frac|2|<sqrt|s>>\<cdot\><frac|\<partial\>|\<partial\>*\<mu\>>|]>*F+\<omega\><rsup|<around|(|j|)>><rsub|q-1>*<around*|[|\<omega\><rsub|p-1><rsup|<around|(|i|)>>*<around*|(|-2*\<mu\>/<sqrt|s>*<frac|\<partial\>|\<partial\>*\<mu\>>+2*<sqrt|s>*<frac|\<partial\>|\<partial\>*s>|)>+<frac|1|<sqrt|s>>*<around*|(|J<rsub|p-1>*<frac|\<partial\>|\<partial\>*z>|)><rsub|i>|]>*F=0.
      </equation*>

      We also can choose <math|j>, so that
      <math|\<omega\><rsup|<around|(|j|)>><rsub|q-1>\<neq\>0> locally, hence
      we can divide it and <math|<sqrt|s>> out to get

      <\equation*>
        \<omega\><rsup|<around|(|i|)>><rsub|p-1>*<around*|[|2\<cdot\><frac|\<partial\>|\<partial\>*\<mu\>>|]>*F+<around*|[|\<omega\><rsub|p-1><rsup|<around|(|i|)>>*<around*|(|-2*\<mu\>*<frac|\<partial\>|\<partial\>*\<mu\>>+2*s*<frac|\<partial\>|\<partial\>*s>|)>+<around*|(|J<rsub|p-1>*<frac|\<partial\>|\<partial\>*z>|)><rsub|i>|]>*F=0.
      </equation*>

      where homogeneity of order <math|\<lambda\>-\<nu\>-n> of <math|F>
      renders this into

      <\equation*>
        \<omega\><rsup|<around|(|i|)>><rsub|p-1>*2*<around|(|1-\<mu\>|)>\<cdot\><frac|\<partial\>|\<partial\>*\<mu\>>*F+<around*|[|\<omega\><rsub|p-1><rsup|<around|(|i|)>>*<around*|(|\<lambda\>-\<nu\>-n|)>+<around*|(|J<rsub|p-1>*<frac|\<partial\>|\<partial\>*z>|)><rsub|i>|]>*F=0.
      </equation*>

      substituting here <math|F=\<delta\><rsup|<around|(|\<nu\>-1|)>>*<around|(|\<mu\>-1|)>*u>
      and using <math|<around|(|\<mu\>-1|)>*<frac|\<partial\>|\<partial\>*\<mu\>>*\<delta\><rsup|<around|(|i|)>>*<around|(|\<mu\>-1|)>=-<around|(|i+1|)>*\<delta\><rsup|<around|(|i+1|)>>*<around|(|\<mu\>-1|)>>,
      we get

      <\equation*>
        2*\<nu\>*\<omega\><rsup|<around|(|i|)>><rsub|p-1>*u+<around*|[|\<omega\><rsub|p-1><rsup|<around|(|i|)>>*<around*|(|\<lambda\>-\<nu\>-n|)>+<around*|(|J<rsub|p-1>*<frac|\<partial\>|\<partial\>*z>|)><rsub|i>|]>*u=0.
      </equation*>

      and finally substituting <math|u=s<rsup|-2*\<nu\>>*<wide|v|~>> one gets

      <\equation*>
        <around*|[|\<omega\><rsub|p-1><rsup|<around|(|i|)>>*<around*|(|\<lambda\>+\<nu\>-n|)>+<around*|(|J<rsub|p-1>*<frac|\<partial\>|\<partial\>*z>|)><rsub|i>|]>*<wide|v|~>=0,<space|0.75spc>1\<leq\>i\<leq\>p-1.
      </equation*>

      and as the latter is precisely <eqref|eq:sing-q-dx>, this finishes the
      proof.
    </proof>

    <\lemma>
      <label|supp-Q:lem-flip>For <math|x,b\<in\>\<bbb-R\><rsup|p,q>> we let
      <math|c<rsub|b><around*|(|x|)>\<assign\>1-2Q<around*|(|x,b|)>+Q<around*|(|x|)>Q<around*|(|b|)>>
      and <math|\<psi\><rsub|b><around*|(|x|)>\<assign\><around*|(|x-Q<around*|(|x|)>b|)>/c<rsub|b><around*|(|x|)>>.
      Then for every <math|x\<in\>\<bbb-R\><rsup|p,q>\\<around*|{|0|}>> with
      <math|Q<around*|(|x|)>=0> there exists
      <math|b\<in\>\<bbb-R\><rsup|p,q>> with <math|b<rsub|p>=0> such that
      <math|c<rsub|b><around*|(|x|)>\<less\>0>.
    </lemma>

    <\proof>
      As under the hypothesis taken <math|c<rsub|b><around*|(|x|)>=1-2Q<around*|(|x,b|)>>,
      the statement follows.
    </proof>

    <\lemma>
      <label|supp-Q:lem-sing-q-7-aux>For arbitrary
      <math|x\<in\>\<bbb-R\><rsup|p,q>\\<around*|{|0|}>> with
      <math|Q<around*|(|x|)>=0> there exists
      <math|b\<in\>\<bbb-R\><rsup|p,q>> with <math|b<rsub|p>=0> such that for
      <math|<wide|x|~>> near <math|x>

      <\equation*>
        <around*|(|<frac|Q<rsub|+><rsup|\<mu\>>-Q<rsub|-><rsup|\<mu\>>|\<Gamma\><around*|(|<around*|(|\<mu\>+2|)>/2|)>>|)><around*|(|\<psi\><rsub|b><around*|(|<wide|x|~>|)>|)>=-<frac|1|<around*|\||c<rsub|b><around*|(|<wide|x|~>|)>|\|><rsup|\<mu\>>><around*|(|<frac|Q<rsub|+><rsup|\<mu\>>-Q<rsub|-><rsup|\<mu\>>|\<Gamma\><around*|(|<around*|(|\<mu\>+2|)>/2|)>>|)><around*|(|<wide|x|~>|)>
      </equation*>
    </lemma>

    <\proof>
      Lemma <reference|supp-Q:lem-flip> gives us <math|b> such that
      <math|b<rsub|p>=0> and <math|c<rsub|b><around*|(|x|)>\<less\>0>, and
      since the latter inequality is strict, it also holds for
      <math|<wide|x|~>> near <math|x>. When seen as distributions on
      <math|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>>, both sides are holomorphic
      in <math|\<mu\>\<in\>\<bbb-C\>>, thus it suffices to show the equality
      for <math|Re<around*|(|\<mu\>|)>\<gg\>0>. Thus, we can forget about
      gamma-multipliers.

      Observe that <math|Q<around*|(|\<psi\><rsub|b><around*|(|<wide|x|~>|)>|)>=Q<around*|(|<wide|x|~>|)>/c<rsub|b><around*|(|<wide|x|~>|)>\<nocomma\>>,
      hence <math|<around*|\||Q|\|><rsup|\<mu\>><around*|(|\<psi\><rsub|b><around*|(|<wide|x|~>|)>|)>=<around*|\||Q|\|><rsup|\<mu\>><around*|(|<wide|x|~>|)>/<around*|\||c<rsub|b><around*|(|<wide|x|~>|)>|\|><rsup|\<mu\>>\<nocomma\>>.
      For <math|<wide|x|~>\<in\><around*|{|Q=0|}>> the statement then holds
      trivially, as both sides vanish. When
      <math|<wide|x|~>\<in\><around*|{|Q\<gtr\>0|}>> we have
      <math|\<psi\><rsub|b><around*|(|<wide|x|~>|)>\<in\><around*|{|Q\<less\>0|}>>
      by the observation above, hence the right-hand side being equal to
      <math|-<around*|\||Q|\|><rsub|><rsup|\<mu\>><around*|(|<wide|x|~>|)>/<around*|\||c<rsub|b><around*|(|<wide|x|~>|)>|\|><rsup|\<mu\>>>,
      while left-hand side equals to <math|-<around*|\||Q|\|><rsup|\<mu\>><around*|(|\<psi\><rsub|b><around*|(|<wide|x|~>|)>|)>>
      and the observation above grants the desired conclusion. Similarly,
      case <math|<wide|x|~>\<in\><around*|{|Q\<less\>0|}>> is handled.
    </proof>

    <\lemma>
      <label|lem:sing-q-7>With <math|K<rsub|\<lambda\>,\<nu\>><rsup|<around*|(|p|)>>\<in\>\<cal-D\><rprime|'><around*|(|<around*|{|x\<neq\>0|}>\<cap\><around*|{|y\<neq\>0|}>|)>>
      as in lemma <reference|lem:sing-q-6>, we have for
      <math|\<nu\>\<in\>2\<bbb-Z\><rsub|\<gtr\>0>> that
      <math|K<rsub|\<lambda\>,\<nu\>><rsup|<around*|(|p|)>>> is not
      <math|N<rsub|+><rprime|'>>-invariant.
    </lemma>

    <\proof>
      We note that for <math|f<rsub|\<mu\>><rsup|m>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|m>\\<around*|{|0|}>|)>>
      as in lemma <reference|lem:sing-q-6>, we have product of distributions
      <math|<around*|(|f<rsub|\<lambda\>+\<nu\>-n><rsup|p><around*|(|x<rsub|p>|)>\<otimes\>1<rsub|<around*|{|y\<neq\>0|}>>|)>\<cdot\>\<delta\><rsup|<around*|(|\<nu\>-1|)>><around*|(|Q|)>\<in\>\<cal-D\><rprime|'><around*|(|<around*|{|x\<neq\>0|}>\<cap\><around*|{|y\<neq\>0|}>|)>>
      being proportional to <math|K<rsub|\<lambda\>,\<nu\>><rsup|<around*|(|p|)>>>
      by lemmas <reference|KR-normalization-recur:lem-mult-comm-pull> and
      <reference|KR-normalization-recur:lem-mult-distrib-tensor>. Then, it
      suffices to prove the statement for
      <math|<around*|(|f<rsub|\<lambda\>+\<nu\>-n><rsup|p><around*|(|x<rsub|p>|)>\<otimes\>1<rsub|<around*|{|y\<neq\>0|}>>|)>\<cdot\>\<delta\><rsup|<around*|(|\<nu\>-1|)>><around*|(|Q|)>>,
      which we'll call <math|G> (or <math|G<rsub|\<lambda\>,\<nu\>>>) for
      brevity till the end of the proof. First we can fix
      <math|\<nu\>\<in\>2\<bbb-Z\><rsub|\<gtr\>0>> and assume that
      <math|Re<around*|(|\<lambda\>|)>\<gg\>0> and thus ignore the
      <math|\<Gamma\><around*|(|\<cdot\>|)>>-multiple in
      <math|f<rsub|\<lambda\>+\<nu\>-n><rsup|p>>, if it was there.

      The residue information obtained in
      <cite-detail|gelfand1980distribution|ch. III, sec 2.2> tells us that
      restricted to <math|<R><rsup|p,q>\<setminus\><around*|{|0|}>> we have

      <\equation*>
        \<delta\><rsup|<around|(|2*k-1|)>><around|(|Q|)>=<frac|Q<rsub|+><rsup|-\<mu\>>-Q<rsub|-><rsup|-\<mu\>>|\<Gamma\><around*|(|<frac|-\<mu\>+2|2>|)>><mid|\|><rsub|\<mu\>=2*k>,<space|1em>k\<in\><Z><rsub|\<gtr\>0>
      </equation*>

      \;

      and right hand side is holomorphic in <math|\<mu\>\<in\>\<bbb-C\>>.
      Hence lemma similar to <reference|supp-n-waves:lem-\|x\|-holo-in> for
      <math|x<rsub|+><rsup|\<mu\>>-x<rsub|-><rsup|\<mu\>>> in place of
      <math|<around*|\||x|\|><rsup|\<mu\>>> and lemmas
      <reference|holomorphicity-preserving:prop-pullback-holo> and
      <reference|holomorphicity-preserving:prop-tensor-holo> tell us that

      <\equation*>
        G<rsub|\<lambda\>,\<nu\><rsub|>>=lim<rsub|\<mu\>\<to\>\<nu\>=2*k>
        <frac|<around*|(|Q<rsub|+><rsup|-\<mu\>>-Q<rsub|-><rsup|-\<mu\>>|)><around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<mu\>-n>|\<Gamma\><around*|(|<frac|-\<mu\>+2|2>|)>>,<space|1em>k\<in\><Z><rsub|\<gtr\>0>.
      </equation*>

      Thus we can call distribution under the last limit as
      <math|G<rsub|\<lambda\>,\<mu\>>> , allowing
      <math|\<mu\>\<in\>\<bbb-C\>>.

      Now, we fix arbitrary <math|x\<in\><around*|{|x\<neq\>0|}>\<cap\><around*|{|y\<neq\>0|}>>
      with <math|Q<around*|(|x|)>\<neq\>0>. Lemma
      <reference|supp-Q:lem-sing-q-7-aux> gives us
      <math|b\<in\>\<bbb-R\><rsup|p,q>> with <math|b<rsub|p>=0> for this
      <math|x>. As <math|x> and <math|x-Q<around*|(|x|)>b> have the same
      <math|p>-th coordinate, conclusion of lemma
      <reference|supp-Q:lem-sing-q-7-aux> tells us that

      <\equation*>
        G<rsub|\<lambda\>,\<mu\>><around*|(|\<psi\><rsub|b><around*|(|<wide|x|~>|)>|)>=-<around*|\||c<rsub|b><around*|(|<wide|x|~>|)>|\|><rsup|-<around*|(|\<lambda\>-n|)>>G<rsub|\<lambda\>,\<mu\>><around*|(|<wide|x|~>|)>
      </equation*>

      holding for <math|<wide|x|~>> near <math|x>. Now, as both sides are
      holomorphic, we can take the <math|\<mu\>\<rightarrow\>\<nu\>=2k\<in\>2\<bbb-Z\><rsub|\<gtr\>0>>
      limit to get

      <\equation*>
        G<rsub|\<lambda\>,\<nu\>><around*|(|\<psi\><rsub|b><around*|(|<wide|x|~>|)>|)>=-<around*|\||c<rsub|b><around*|(|<wide|x|~>|)>|\|><rsup|-<around*|(|\<lambda\>-n|)>>G<rsub|\<lambda\>,\<nu\>><around*|(|<wide|x|~>|)>
      </equation*>

      Furthermore, by analytic continuation this relation also holds for all
      <math|\<lambda\>\<in\>\<bbb-C\>>. Finally, assuming (in order to get a
      contradiction) that <math|G<rsub|\<lambda\>,\<nu\>>> is
      <math|N<rsub|+><rprime|'>>-invariant, we should have as well that

      <\equation*>
        G<rsub|\<lambda\>,\<nu\>><around*|(|\<psi\><rsub|b><around*|(|<wide|x|~>|)>|)>=<around*|\||1-2Q<around*|(|b,<wide|x|~>|)>+Q<around*|(|<wide|x|~>|)>Q<around*|(|b|)>|\|><rsup|-<around*|(|\<lambda\>-n|)>>G<rsub|\<lambda\>,\<nu\>><around*|(|<wide|x|~>|)>
      </equation*>

      and together the latter two equalities imply that
      <math|G<rsub|\<lambda\>,\<nu\>><around*|(|<wide|x|~>|)>=0> near
      <math|x\<in\><around*|{|Q=0|}>>. But this then contradicts proposition
      <reference|supp-Q:prop-supp-xnoq0> (note that
      <math|G<rsub|\<lambda\>,\<nu\>>> is precisely the restriction of
      <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>> mentioned in prop.
      <reference|supp-Q:prop-onedim> to <math|<around*|{|x\<neq\>0|}>\<cap\><around*|{|y\<neq\>0|}>>).
    </proof>

    <subsection|Proofs>

    <\proof>
      <proofexplanation|of prop. <reference|lem:sing-q-1>> So let's suppose
      <math|\<nu\>\<nin\>2\<bbb-Z\><rsub|\<geqslant\>0>+1> and
      <math|F\<in\>\<cal-S\>ol<rsub|<around*|{|Q=0|}>><around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>>.
      In the light of lemma <reference|lem:sing-q-3> it suffices to prove
      that <math|F<mid|\|><rsub|<mysetn|<around|(|x,y|)>\<in\><R><rsup|p,q>|x\<neq\>0,<space|0.75spc>y\<neq\>0>>=0>.
      Abusing notation, from now and till the end of the proof we will call
      this restriction <math|F>. Furthermore, as
      <math|<supp><around|(|F|)>\<subset\><around*|{|Q=0|}>> and latter
      subset in the <math|<around|(|\<mu\>,s,\<omega\><rsub|p-1>,\<omega\><rsub|q-1>|)>>
      coordinates become <math|<around*|{|\<mu\>=1|}>>, fact
      <reference|fact:sing-q-3> \ implies that in
      <math|<around|(|\<mu\>,s,\<omega\><rsub|p-1>,\<omega\><rsub|q-1>|)>>
      coordinates <math|F=<big|sum><rsub|i\<geq\>0>\<delta\><rsup|<around|(|i|)>>*<around|(|\<mu\>-1|)>*u<rsub|i>>
      with the sum being locally finite.

      Now, as <math|F\<in\><sol*|<mysetn|<around|(|x,y|)>\<in\><R><rsup|p,q>|x\<neq\>0,<space|0.75spc>y\<neq\>0>>>,
      this in particular implies <math|N<rsub|+><rprime|'>>-invariance, hence
      equations <eqref|Ndiff>. Writing elements of <math|<R><rsup|p,q>> as
      <math|<around|(|x,y|)>> the last <math|q> of these equations get
      written as

      <\equation*>
        <around*|[|-2*\<nu\>*y<rsub|j>+<around|(|<around*|\||x|\|><rsup|2>-<around*|\||y|\|><rsup|2>|)>*<frac|\<partial\>|\<partial\>*y<rsub|j>>|]>*F=0,<space|1em>1\<leq\>j\<leq\>q
      </equation*>

      In turn, in bipolar coordinates <math|<around|(|x,y|)>=<around|(|r<rsub|1>*\<omega\><rsub|p-1>,r<rsub|2>*\<omega\><rsub|q-1>|)>>,
      where <math|\<partial\>*y<rsub|j>/\<partial\>*r=y<rsub|j>/r<rsub|2>>
      these get written as

      <\equation*>
        <mysbra|-2*\<nu\>*<frac|y<rsub|j><rsup|2>|r<rsub|2>>+<around|(|r<rsub|1><rsup|2>-r<rsub|2><rsup|2>|)>*<frac|\<partial\>*y<rsub|j>|\<partial\>*r<rsub|2>>*<frac|\<partial\>|\<partial\>*y<rsub|j>>>F=0,<space|1em>1\<leq\>j\<leq\>q
      </equation*>

      and summing these up and writing in
      <math|<around|(|\<mu\>,s,\<omega\><rsub|p-1>,\<omega\><rsub|q-1>|)>> we
      get

      <\equation*>
        <mysbra|\<nu\>+<around|(|\<mu\>-1|)>*<frac|\<partial\>|\<partial\>*\<mu\>>>F=0
      </equation*>

      Substituting this in <math|F=<big|sum><rsub|i\<geq\>0>\<delta\><rsup|<around|(|i|)>>*<around|(|\<mu\>-1|)>*u<rsub|i>>
      and keeping in mind the formula <math|<around|(|\<mu\>-1|)>*<frac|\<partial\>|\<partial\>*\<mu\>>*\<delta\><rsup|<around|(|i|)>>*<around|(|\<mu\>-1|)>=-<around|(|i+1|)>*\<delta\><rsup|<around|(|i|)>>*<around|(|\<mu\>-1|)>>
      we get (invoking the uniqueness part of lemma
      <reference|fact:sing-q-3>) <math|<around|(|\<nu\>-<around|(|i+1|)>|)>*u<rsub|i>=0>
      this implies that <math|F=0>, unless
      <math|\<nu\>\<in\><Z><rsub|\<gtr\>0>>.

      So, it remains to handle the case <math|\<nu\>\<in\>2\<bbb-Z\><rsub|\<gtr\>0>>
      now. But then the conclusion is implied by lemmas
      <reference|lem:sing-q-6> and <reference|lem:sing-q-7>.
    </proof>

    <\proof>
      (of prop. <reference|supp-Q:prop-onedim>) As noted in statement,
      multiplication contained in definition of
      <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>> is well-defined. Moreover,
      holomorphicity of <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>> in
      <math|\<lambda\>\<in\>\<bbb-C\>> is readily implied by propositions
      <math|<reference|holomorphicity-preserving:prop-tensor-holo>> and
      <reference|holomorphicity-preserving:prop-pullback-holo>. From this,
      <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>> is readily seen to be an
      element of <math|\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>;\<lambda\>,\<nu\>|)>>,
      as it satisfies all requirement of definition
      <reference|def-n-nots:def-sol> at least for
      <math|Re<around*|(|\<lambda\>|)>\<gg\>0> (multiplication then coincides
      with the usual multiplication by propositions
      <reference|holomorphicity-preserving:prop-tensor-cts> and
      <reference|holomorphicity-preserving:prop-pullback-cts> and
      multiplicands become <math|C<rsup|k>> functions for <math|k> arbitrary
      fixed)

      Therefore, it suffices to show that
      <math|dim<around*|(|\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>;\<lambda\>,\<nu\>|)>|)>\<leqslant\>1>.
      In the light of lemma <reference|lem:sing-q-3> (and the obvious fact
      that if <math|F\<in\>\<cal-S\>ol<rsub|S><around*|(|U;\<lambda\>,\<nu\>|)>>,
      then for <math|U\<supset\>V> we have
      <math|F<mid|\|><rsub|V>\<in\>\<cal-S\>ol<rsub|V\<cap\>S><around*|(|V;\<lambda\>,\<nu\>|)>>),
      it suffices to show that <math|\<cal-S\>ol<rsub|<around*|{|Q=0|}>><around*|(|<around*|{|x\<neq\>0|}>\<cap\><around*|{|y\<neq\>0|}>;\<lambda\>,\<nu\>|)>>
      is no more than one-dimensional. But this is readily given by lemma
      <reference|lem:sing-q-6>
    </proof>

    <\fact>
      \ <cite-detail|hormander1983analysis|thm 3.2.3> Suppose
      <math|u\<in\><D><rprime|'><around|(|<R><rsup|n>\<setminus\><around*|{|0|}>|)>>
      is homogeneous of degree <math|a\<nin\><around*|{|-n,-n-1,\<ldots\>|}>>.
      Then <math|u> has a homogeneous of the same degree extension to
      <math|<wide|u|~>\<in\><D><rprime|'><around|(|<R><rsup|n>|)>> and any
      two such extensions would coincide. Moreover, if <math|P> is
      homogeneous polynomial then <math|<wide|P*u|~>=P*<wide|u|~>>. Moreover,
      if in addition to above <math|a\<neq\>-n+1>, then
      <math|\<partial\><rsub|j>*<wide|u|~>=<wide|\<partial\><rsub|j>*u|~>>.<label|fact:sing-q>
    </fact>

    <\proof>
      (of prop. <reference|supp-Q:prop-sol-extending>) The existence of
      extension to an element of <math|\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>>
      is readily implied by fact <reference|fact:sing-q>, as elements of
      <math|<sol>> are homogeneous with degree <math|\<lambda\>-\<nu\>-n>.

      Moreover, fact <reference|fact:sing-q> implies that for
      <math|Re<around*|(|\<lambda\>|)>\<gg\>0>
      <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>> satisfies <eqref|Ndiff> and
      first three items from definition <reference|def-n-nots:def-n+invar>
      (the latter is true because <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>>
      satisfies discrete symmetries due to uniqueness part of Fact
      <reference|fact:sing-q>). Hence, due to lemma
      <reference|supp-Q:lem-sing-q-4> <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>>
      is also <math|N<rsub|+><rprime|'>>-invariant, hence is in <math|<sol>>.

      Now, as <math|K<rsub|\<lambda\>.\<nu\>><rsup|C>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>>
      is holomorphic in <math|\<lambda\>>, fact
      <reference|holomorphicity-preserving:prop-homog-holo> implies that so
      is <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>|)>>
      and hence it belongs to <math|\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>>
      for all <math|\<lambda\>> where it is defined, not only for
      <math|Re<around*|(|\<lambda\>|)>\<gg\>0>.

      Finally, it remains to show that <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>\<neq\>0>.
      It remains to do so for restriction to
      <math|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>>, that is a distribution
      from proposition <reference|supp-Q:prop-onedim>.\ 
    </proof>

    <\proof>
      (of prop. <reference|supp-Q:prop-supp-xnoq0>) We first handle the case
      <math|p=1>. It suffices to show the <math|\<supseteq\>> part. Now, we
      note that in case <math|p=1> we have
      <math|<around*|{|Q=0|}>\<cap\><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>\<subset\><around*|{|x<rsub|p>\<neq\>0|}>>
      in this case, hence near points of <math|<around*|{|Q=0|}>> we have
      <math|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>> being smooth
      nonvanishing, thus <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>> has the
      same support as <math|\<delta\><rsup|<around*|(|\<nu\>-1|)>><around*|(|Q|)>>
      (we recall that lemma <reference|KR-normalization-recur:lem-mult-smth>
      tells us that mulitplication of distribuions agrees with multiplication
      by smooth functions in this case). But lemma
      <reference|supp-n-waves:lem-at-least> implies that
      <math|\<delta\><rsup|<around*|(|\<nu\>-1|)>><around*|(|Q|)>> is
      supported at least on <math|<around*|{|Q=0|}>> and this ends the proof
      for <math|p=1> case.

      We next handle the <math|p\<gtr\>1,\<lambda\>+\<nu\>-n\<nin\>-2\<bbb-Z\><rsub|\<geqslant\>0>-1>
      case. Again, it suffices to show <math|\<supseteq\>>. Moreover, as
      <math|<around*|{|x<rsub|p>\<neq\>0|}>\<cap\><around*|{|Q=0|}>\<subset\><around*|{|Q=0|}>>
      is open dense, it suffices to show that
      <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>> is supported on
      <math|<around*|{|x<rsub|p>\<neq\>0|}>\<cap\><around*|{|Q=0|}>>. Under
      the assumptions on parameters, lemma
      <reference|supp-n-waves:lem-supp-xp> implies that
      <math|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>/\<Gamma\><around*|(|<around*|(|\<lambda\>+\<nu\>-n+1|)>/2|)>>
      is smooth nonzero, hence (again, lemma
      <reference|KR-normalization-recur:lem-mult-smth> tells us that
      mulitplication of distribuions agrees with multiplication by smooth
      functions in this case) support of <math|K<rsub|\<lambda\>,\<nu\>><rsup|C><mid|\|><rsub|<around*|{|x<rsub|p>\<neq\>0|}>>>
      equals to that of <math|\<delta\><rsup|<around*|(|\<nu\>-1|)>><around*|(|Q|)><mid|\|><rsub|<around*|{|x<rsub|p>\<neq\>0|}>>>,
      which in turn is at least <math|<around*|{|Q=0|}>\<cap\><around*|{|x<rsub|p>\<neq\>0|}>>
      by lemma <reference|supp-n-waves:lem-at-least>.

      Finally, we treat the <math|p\<gtr\>1,\<lambda\>+\<nu\>-n\<in\>-2\<bbb-Z\><rsub|\<geqslant\>0>-1>
      case. The conclusion then is readily implied by lemma
      <reference|KR-normalization-recur:lem-nonvanishing-ss>.
    </proof>
  <|hide-part>
    <section|The kernel of singular symmetry breaking operator supported on
    <math|<around*|{|Q=0|}>>>
  </hide-part>

  <\hide-part|9>
    <section|Differential SBO>

    <\lemma>
      <label|diffSBO:lem-aux>For <math|f\<in\>\<cal-D\><rsub|<around*|{|0|}>><around*|(|\<bbb-R\><rsup|p,q>|)>\<assign\><around*|{|f\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>|)><mid|\|>supp<around*|(|f|)>\<subset\><around*|{|0|}>|}>>
      we have <math|f> is <math|N<rsub|+><rprime|'>>-invariant on
      <math|\<bbb-R\><rsup|p,q>> (def. <reference|def-n-nots:def-n+invar>)
      iff it satisfies equations <eqref|Ndiff><math|>
    </lemma>

    <\proof>
      As ``<math|\<Rightarrow\>>'' part is clear, we just prove the converse.
      But this is readily implied by lemma <reference|supp-Q:lem-sing-q-4>.\ 
    </proof>

    <\proposition>
      <label|diffSBO:prop-main>For <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>
      we have

      <\equation*>
        \<cal-S\>ol<rsub|<around*|{|0|}>><around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>=<choice|<tformat|<table|<row|<cell|\<bbb-C\>\<cdot\><wide|C|~><rsub|\<lambda\>-\<nu\>><rsup|\<lambda\>-<around*|(|n-1|)>/2><around*|(|<wide|\<Delta\>|~>,<frac|\<partial\>|\<partial\>x<rsub|p>>|)>,>|<cell|\<lambda\>-\<nu\>\<in\>-2\<bbb-Z\><rsub|\<geqslant\>0>>>|<row|<cell|0,>|<cell|otherwise>>>>>
      </equation*>

      where <math|<wide|\<Delta\>|~>> is a
      <math|<around*|(|p-1,q|)>>-Laplacian and
      <math|C<rsup|\<alpha\>><rsub|k><around*|(|\<cdot\>,\<cdot\>|)>> is the
      2-variable inflation of renormalized Gegenbauer polynomial, as in
      <cite-detail|kobayashi2015symmetry|(16.3)>.
    </proposition>

    <\proof>
      We apply algebraic Fourier transform
      <math|F<rsub|c>:\<cal-D\><rprime|'><rsub|<around*|{|0|}>><around*|(|\<frak-n\><rsub|->|)>\<rightarrow\>Pol<around*|(|\<frak-n\><rsub|-><rsup|\<ast\>>|)><rsup|>>
      defined by formula <math|<around*|(|F<rsub|c>f|)><around*|(|\<xi\>|)>\<assign\><wide|F|^><around*|(|\<xi\>|)>\<assign\><big|int><rsub|\<frak-n\><rsub|->><rsup|>f<around*|(|x|)>exp<around*|\<langle\>|x,\<xi\>|\<rangle\>>d
      x>. We further identify <math|\<frak-n\><rsub|-><rsup|\<ast\>>> dual of
      <math|\<frak-n\><rsub|->> with <math|\<frak-n\><rsub|+>>,
      identification given via the pairing
      <math|<frac|1|4><around*|(|X,Y|)>\<mapsto\>tr<around*|(|X Y|)>>.\ 

      Lemma <reference|diffSBO:lem-aux> tells us that we are looking for
      <math|F\<in\>\<cal-D\><rprime|'><rsub|<around*|{|0|}>><around*|(|\<bbb-R\><rsup|p,q>|)>>
      that satisfy

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|E
        F=<around*|(|\<lambda\>-\<nu\>-n|)>F>|<cell|>>|<row|<cell|>|<cell|F<around*|(|-x|)>=F<around*|(|x|)>>|<cell|>>|<row|<cell|>|<cell|F<around*|(|g\<cdot\>|)>=F<around*|(|\<cdot\>|)>,<space|1em>\<forall\>g\<in\>O<around*|(|p,q|)><rsub|e<rsub|p>>\<assign\><around*|{|g\<in\>O<around*|(|p,q|)><mid|\|>g\<cdot\>x<rsub|p>=x<rsub|p>|}>\<simeq\>O<around*|(|p-1,q|)>>|<cell|>>|<row|<cell|>|<cell|<around*|[|<around|(|\<lambda\>-n|)>*\<varepsilon\><rsub|j>*x<rsub|j>-\<varepsilon\><rsub|j>*x<rsub|j>*E+<frac|1|2>*Q<around|(|x|)><frac|\<partial\>|\<partial\>*x<rsub|j>>|]>F=0,<space|1em>1\<leqslant\>j\<leqslant\>n,j\<neq\>p>|<cell|>>>>
      </eqnarray>

      Under the algebraic Fourier transform <math|F<rsub|c>> these change as
      follows (we note that <math|E> under <math|F<rsub|c>> becomes
      <math|-E-n>, multiplication by <math|x<rsub|j>> becomes
      <math|\<partial\>/\<partial\>\<zeta\><rsub|j>> and
      <math|\<partial\>/\<partial\>x<rsub|j>> becomes multiplication by
      <math|-\<zeta\><rsub|j>>):

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|E<wide|F|^>=<around*|(|\<nu\>-\<lambda\>|)><wide|F|^>>|<cell|>>|<row|<cell|>|<cell|<wide|F|^><around*|(|-x|)>=<wide|F|^><around*|(|x|)>>|<cell|>>|<row|<cell|>|<cell|<wide|F|^><around*|(|g\<cdot\>|)>=<wide|F|^><around*|(|\<cdot\>|)>,<space|1em>\<forall\>g\<in\>O<around*|(|p,q|)><rsub|e<rsub|p>>\<assign\><around*|{|g\<in\>O<around*|(|p,q|)><mid|\|>g\<cdot\>x<rsub|p>=x<rsub|p>|}>\<simeq\>O<around*|(|p-1,q|)>>|<cell|>>|<row|<cell|>|<cell|<around*|[|-<frac|1|2>\<varepsilon\><rsub|j>\<zeta\><rsub|j><wide|\<Delta\>|~>+<around*|(|\<lambda\>+E|)><frac|\<partial\>|\<partial\>\<zeta\><rsub|j>>|]><wide|F|^>=0,<space|1em>1\<leqslant\>j\<leqslant\>n,j\<neq\>p,<space|1em><wide|\<Delta\>|~>\<assign\><big|sum><rsub|i=1,i\<neq\>p><rsup|n>\<varepsilon\><rsub|j><frac|\<partial\>|\<partial\>\<zeta\><rsub|j>>.>|<cell|>>>>
      </eqnarray>

      Now, we make the following observations:

      <\enumerate>
        <item>As <math|<wide|F|^>> satisfies
        <math|E<wide|F|^>=<around*|(|\<nu\>-\<lambda\>|)><wide|F|^>\<nocomma\>>,
        it should be homogeneous of degree <math|\<lambda\>-\<nu\>>. But as
        it is polynomial, it's homogeneity degree can only be positive
        integer, so we immediately see that
        <math|\<cal-S\>ol<rsub|<around*|{|0|}>><around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>=0>
        if <math|\<lambda\>-\<nu\>\<nin\>-\<bbb-Z\><rsub|\<geqslant\>0>>;

        <item>Moreover, as <math|<wide|F|^>> satisfies
        <math|<wide|F|^><around*|(|-x|)>=<wide|F|^><around*|(|x|)>>, it
        should be even and hence <math|\<cal-S\>ol<rsub|<around*|{|0|}>><around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>=0>
        if <math|\<lambda\>-\<nu\>\<nin\>-2\<bbb-Z\><rsub|\<geqslant\>0>>;

        <item>The requirement <math|<wide|F|^><around*|(|g\<cdot\>|)>=<wide|F|^><around*|(|\<cdot\>|)>,<space|1em>\<forall\>g\<in\>O<around*|(|p,q|)><rsub|e<rsub|p>>>
        implies that <math|<wide|F|^>> is polynomial in
        <math|<wide|Q|~>\<assign\><big|sum><rsub|i=1;i\<neq\>p><rsup|n>\<varepsilon\><rsub|i>x<rsub|i><rsup|2>>
        and <math|x<rsub|p>>. Hence, using homogeneity with degree
        <math|a\<assign\>\<nu\>-\<lambda\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>
        we can write then <math|<wide|F|^>=<wide|Q|~><rsup|a/2>g<around*|(|x<rsub|p-1>/<sqrt|<wide|Q|~>>|)>>
        with <math|g<around*|(|\<cdot\>|)>> being a polynomial;

        <item>Substituting this into the <math|<around*|[|-<frac|1|2>\<varepsilon\><rsub|j>\<zeta\><rsub|j><wide|\<Delta\>|~>+<around*|(|\<lambda\>+E|)><frac|\<partial\>|\<partial\>\<zeta\><rsub|j>>|]><wide|F|^>=0>
        gives\ 

        <\equation*>
          g<around*|(|t|)><around*|(|n-1-a-2\<lambda\>|)>a-g<rprime|'><around*|(|t|)>\<times\><around*|(|n-2-2\<lambda\>|)>t+<around*|(|t<rsup|2>+1|)>g<rprime|''><around*|(|t|)>=0;
        </equation*>

        <item>Substituting <math|t=i s> into the previous equation gives (we
        abuse notation and write <math|g<around*|(|s|)>> in place of
        <math|g<around*|(|i s|)>>)

        <\equation*>
          g<around*|(|s|)><around*|(|n-1-2\<lambda\>|)>a-g<rprime|'><around*|(|s|)><around*|(|n-2-2\<lambda\>|)>s+<around*|(|1-s<rsup|2>|)>g<rprime|''><around*|(|s|)>=0;
        </equation*>

        hence <math|g<around*|(|s|)>> should be proportional to
        <math|C<rsup|\<lambda\>-<around*|(|n-1|)>/2><rsub|a><around*|(|s|)>>
        (see <cite-detail|kobayashi2013differential|thm. 11.4>). Indeed,
        other polynomial solution (say, <math|<wide|C|~>>) of this equation
        arises only when <math|\<alpha\>\<assign\>\<lambda\>-<around*|(|n-1|)>/2\<in\>\<bbb-Z\>+1/2>
        and <math|1-2a\<leqslant\>2\<alpha\>\<leqslant\>-a>. But then
        <math|<wide|C|~>> has its top term is a non-zero multiple of
        <math|t<rsup|-<around*|(|2\<alpha\>+a|)>>>, but as
        <math|\<alpha\>\<in\>\<bbb-Z\>+1/2>, we have
        <math|-<around*|(|2\<alpha\>+a|)>\<in\>2\<bbb-Z\>+1>, which
        contradicts evenness of <math|<wide|F|^>>.
      </enumerate>

      \ The result now follows by taking the inverse Fourier transform.
    </proof>
  <|hide-part>
    <section|Differential SBO>
  </hide-part>

  <\hide-part|10>
    <section|Holomorphicity preserving>

    <subsection|Goal and setting>

    In this note we attempt to restate few operations on distributions
    defined in <cite|hormander1983analysis> and investigate them in terms of
    preserving holomorphicity.

    <subsection|Facts>

    We shall be interested in investigating the following statements shown in
    <cite|hormander1983analysis>:

    <\fact>
      <label|holomorphicity-preserving:fact-homog><cite-detail|hormander1983analysis|thm.
      3.2.3> If <math|u\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>-<around*|{|0|}>|)>>
      is homogeneous of degree <math|a\<in\>\<bbb-C\>\\<around*|(|-n-\<bbb-Z\><rsub|\<geqslant\>0>|)>>,
      it's homogeneous extension <math|<wide|u|\<dot\>>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>|)>>
      exists and is unique subject to homogeneity requirement. Moreover, for
      arbitrary <math|\<psi\>\<in\>C<rsub|0><rsup|\<infty\>><around*|(|\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>>
      satisfying <math|\<forall\>x\<neq\>0,<space|0.6spc><big|int><rsub|0><rsup|\<infty\>>\<psi\><around*|(|t
      x|)>d t/t=1> we have

      <\equation*>
        <around*|\<langle\>|<wide|u|\<dot\>>,\<varphi\>|\<rangle\>>=<around*|\<langle\>|u,x\<mapsto\>\<psi\><around*|(|x|)>\<cdot\><around*|\<langle\>|t<rsub|+><rsup|a+n-1>,t\<mapsto\>\<varphi\><around*|(|t
        x|)>|\<rangle\>>|\<rangle\>>
      </equation*>
    </fact>

    <\definition>
      <cite-detail|hormander1983analysis|sec. 8.2> For
      <math|X\<subset\>\<bbb-R\><rsup|n>> open and
      <math|\<Gamma\>\<subset\>X\<times\><around*|(|\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>>
      closed cone we let <math|\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|X|)>\<assign\><around*|{|u\<in\>\<cal-D\><rprime|'><around*|(|X|)><mid|\|>WF<around*|(|u|)>\<subset\>\<Gamma\>|}>>.
      We say that sequence <math|\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|X|)>\<ni\>u<rsub|j>>
      <with|font-series|bold|converges to
      ><math|u<rsub|0>\<in\>\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|X|)>>
      <with|font-series|bold|in> <math|\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|X|)>>
      if <math|u<rsub|j>\<rightarrow\>u<rsub|0>> weakly in
      <math|\<cal-D\><rprime|'><around*|(|X|)>> and
      <math|\<forall\>\<varphi\>\<in\>C<rsub|0><rsup|\<infty\>><around*|(|X|)>>
      and <math|\<forall\>V\<subset\>\<bbb-R\><rsup|n>> closed cone such that
      <math|<around*|(|supp<around*|(|\<varphi\>|)>\<times\>V|)>\<cap\>\<Gamma\>=
      \<varnothing\>> we have

      <\equation*>
        \<forall\>N\<in\>\<bbb-Z\><rsub|\<geqslant\>0>,<space|1em>sup<rsub|\<xi\>\<in\>V><around*|\||\<xi\>|\|><rsup|N><around*|\||<wide|\<varphi\>u|^><around*|(|\<xi\>|)>-<wide|\<varphi\>u<rsub|j>|^><around*|(|\<xi\>|)>|\|>\<rightarrow\>0,<space|1em>as<space|0.6spc>j\<rightarrow\>\<infty\>.
      </equation*>
    </definition>

    <\remark>
      Concept of wavefront of distribution (denoted by
      <math|WF<around*|(|u|)>> is introduced in <cite|hormander1983analysis>.
      <math|<wide|u|^>> denotes Fourier-Laplace transform
      (<cite-detail|hormander1983analysis|sec. 7.1>) of
      <math|u\<in\>\<cal-D\><rprime|'><around*|(|X|)>> having compact
      support.
    </remark>

    <\remark>
      Strictly speaking the definition above <with|font-series|bold|does not>
      define topology on <math|\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|X|)>>
    </remark>

    <\fact>
      <label|holomorphicity-preserving:fact-pullback>(<cite-detail|hormander1983analysis|thm.
      8.2.4>) Let <math|X,Y\<subset\>\<bbb-R\><rsup|m>,\<bbb-R\><rsup|n>> be
      open subsets and <math|f\<in\>C<rsup|\<infty\>><around*|(|X\<rightarrow\>Y|)>>.
      Let

      <\equation*>
        N<rsub|f>\<assign\><around*|{|<around*|(|f<around*|(|x|)>,\<eta\>|)>\<in\>Y\<times\>\<bbb-R\><rsup|n><mid|\|><around*|(|D
        f|)><rsup|T><around*|(|x|)>\<cdot\>\<eta\>=0,x\<in\>X|}>.
      </equation*>

      Then for <math|\<Gamma\>\<subset\>Y\<times\><around*|(|\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>>
      closed conic subset with <math|\<Gamma\>\<cap\>N<rsub|f>=\<varnothing\>>,
      let <math|f<rsup|\<ast\>>\<Gamma\>\<assign\><around*|{|<around*|(|x,<around*|(|D
      f|)><rsup|T><around*|(|x|)>\<cdot\>\<eta\>|)><mid|\|><around*|(|f<around*|(|x|)>,\<eta\>|)>\<in\>\<Gamma\>|}>\<subset\>X\<times\><around*|(|\<bbb-R\><rsup|m>\\<around*|{|0|}>|)>>:
      closed conic subset. Then there exists
      <math|f<rsup|\<ast\>>:\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|Y|)>\<rightarrow\>\<cal-D\><rprime|'><rsub|f<rsup|\<ast\>>\<Gamma\>><around*|(|X|)>>
      such that if <math|u<rsub|n>\<rightarrow\>u<rsub|0>> in
      <math|\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|X|)>>, then
      <math|f<rsup|\<ast\>>u<rsub|n>\<rightarrow\>f<rsup|\<ast\>>u<rsub|0>>
      in <math|\<cal-D\><rprime|'><rsub|f<rsup|\<ast\>>\<Gamma\>><around*|(|X|)>>
      and for <math|u\<in\>C<rsup|\<infty\>><around*|(|X|)>> we have
      <math|f<rsup|\<ast\>>u=u\<circ\>f>. Moreover, <math|f<rsup|\<ast\>>> is
      unique subject to these two requirements.
    </fact>

    <\remark>
      It is shown in <cite-detail|hormander1983analysis|sec. 8.2> that for
      <math|X\<subset\>\<bbb-R\><rsup|n>> open and every
      <math|\<Gamma\>\<subset\>X\<times\><around*|(|\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>>
      closed conice we have <math|C<rsup|\<infty\>><around*|(|X|)>\<subset\>\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|X|)>>
      and every element of <math|\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|X|)>>
      has sequence of elements of <math|C<rsup|\<infty\>><around*|(|X|)>>
      converging to it in <math|\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|X|)>>
      sense. This shows the unqueness part of the statement above.
    </remark>

    <\remark>
      It is impossible to define <math|f<rsup|\<ast\>>:\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|Y|)>\<rightarrow\>\<cal-D\><rprime|'><rsub|f<rsup|\<ast\>>\<Gamma\>><around*|(|X|)>>,
      which would be continuous with respect to usual
      <math|\<cal-D\><rprime|'>> topology.

      Indeed, take <math|\<psi\>\<in\>C<rsup|\<infty\>><rsub|0><around*|(|\<bbb-R\>|)>>
      such that <math|\<psi\><around*|(|0|)>=1>, <math|\<psi\>\<geqslant\>0>.
      Take also divergent sequence <math|<around*|{|a<rsub|n>|}>\<subset\>\<bbb-R\>>
      and define <math|\<phi\><rsub|n><around*|(|x,y|)>\<assign\>a<rsub|n>\<psi\><around*|(|n
      x|)>\<psi\><around*|(|y|)>\<in\>C<rsup|\<infty\>><rsub|><around*|(|\<bbb-R\><rsup|2>|)>>.
      Then <math|\<phi\><rsub|n>\<rightarrow\>0> in
      <math|\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|2>|)>>, while for
      <math|f:\<bbb-R\>\<ni\>y\<mapsto\><around*|(|0,y|)>\<in\>\<bbb-R\><rsup|2>>
      we have <math|f<rsup|\<ast\>>\<phi\><rsub|n>=a<rsub|n>> divergent in
      <math|\<cal-D\><rprime|'><around*|(|\<bbb-R\>|)>>.
    </remark>

    <\fact>
      <label|holomorphicity-preserving:fact-tensor>(<cite-detail|hormander1983analysis|thm.
      5.1.1>) For <math|X<rsub|i>\<subset\>\<bbb-R\><rsup|n<rsub|i>>> being
      open subsets for <math|i=1,2> and <math|u<rsub|i>\<in\>\<cal-D\><rprime|'><around*|(|X<rsub|i>|)>>
      there exists distribution <math|u<rsub|1>\<otimes\>u<rsub|2>\<in\>\<cal-D\><rprime|'><around*|(|X<rsub|1>\<times\>X<rsub|2>|)>>
      unique subject to <math|\<forall\>\<varphi\><rsub|i>\<in\>C<rsup|\<infty\>><rsub|0><around*|(|X<rsub|i>|)>,<space|0.6spc><around*|(|u<rsub|1>\<otimes\>u<rsub|2>|)><around*|(|\<varphi\><rsub|1>\<otimes\>\<varphi\><rsub|2>|)>=u<rsub|1><around*|(|\<varphi\><rsub|1>|)>u<rsub|2><around*|(|\<varphi\><rsub|2>|)>>.
      Moreover, for every <math|\<varphi\>\<in\>C<rsub|0><rsup|\<infty\>><around*|(|X<rsub|1>\<times\>X<rsub|2>|)>>
      we have

      <\equation*>
        <around*|(|u<rsub|1>\<otimes\>u<rsub|2>|)><around*|(|\<varphi\>|)>=u<rsub|1><around*|(|x\<mapsto\>u<rsub|2><around*|(|y\<mapsto\>\<varphi\><around*|(|x,y|)>|)>|)>=u<rsub|2><around*|(|y\<mapsto\>u<rsub|1><around*|(|x\<mapsto\>\<varphi\><around*|(|x,y|)>|)>|)>.
      </equation*>
    </fact>

    Besides, some further facts will be of help, but these will be introduced
    as it becomes necessary.

    <subsection|Main results>

    <\definition>
      <label|holomorphicity-preserving:def-holo-in-DG>For
      <math|X\<subset\>\<bbb-R\><rsup|n>> open and
      <math|\<Gamma\>\<subset\>X\<times\><around*|(|\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>>
      closed conic, let <math|F<rsub|\<nu\>>\<in\>\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|X|)>>
      be holomorphic. We say <math|F<rsub|\<nu\>>> is
      <with|font-series|bold|holomorphic in
      <math|\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|X|)>>> if

      <\enumerate>
        <item>if <math|\<nu\><rsub|n>\<rightarrow\>\<nu\><rsub|0>\<in\>O>,
        then <math|F<rsub|\<nu\><rsub|n>>\<rightarrow\>F<rsub|\<nu\><rsub|n>>>
        in <math|\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|Y|)>>, and

        <item>if <math|\<nu\><rsub|n>\<rightarrow\>\<nu\><rsub|0>\<in\>O>,
        then <math|<frac|d|d\<nu\>><mid|\|><rsub|\<nu\>=\<nu\><rsub|0>>F<rsub|\<nu\>>\<in\>\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|Y|)>>
        and <math|<around*|(|F<rsub|\<nu\><rsub|n>>-F<rsub|\<nu\><rsub|0>>|)>/<around*|(|\<nu\><rsub|n>-\<nu\><rsub|0>|)>\<rightarrow\><frac|d|d\<nu\>><mid|\|><rsub|\<nu\>=\<nu\><rsub|0>>F<rsub|\<nu\>>>
        in <math|\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|Y|)>>.
      </enumerate>
    </definition>

    <\proposition>
      <label|holomorphicity-preserving:prop-homog-holo>If
      <math|F<rsub|\<nu\>>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>>
      is holomorphically dependent on <math|\<nu\>\<in\>O\<subset\>\<bbb-C\><rsup|n>>
      (<math|O>:open) with <math|F<rsub|\<nu\>>> being homogeneous of degree
      <math|a<around*|(|\<nu\>|)>> holomorphically dependent on <math|\<nu\>>
      and <math|a<around*|(|O|)>\<subset\>\<bbb-C\>\\<around*|(|-n-\<bbb-Z\><rsub|\<geqslant\>0>|)>>,
      then <math|<wide|F<rsub|>|\<dot\>><rsub|\<nu\>>> holomorphically
      depends on <math|\<nu\>\<in\>O>.
    </proposition>

    <\proposition>
      <label|holomorphicity-preserving:prop-homog-cts>If
      <math|u\<in\>C<around*|(|\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>> is
      homogeneous of degree <math|a\<in\>\<bbb-C\>> with
      <math|Re<around*|(|a|)>\<gtr\>0>, then <math|<wide|u|\<dot\>>> is
      continuous and coincides with extension by continuity.
    </proposition>

    <\proposition>
      <label|holomorphicity-preserving:prop-pullback-holo>With
      <math|\<Gamma\>> and <math|f> being as in fact
      <reference|holomorphicity-preserving:fact-pullback>, if
      <math|F<rsub|\<nu\>>\<in\>\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|Y|)>>
      is holomorphic in <math|\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|Y|)>>,
      then <math|f<rsup|\<ast\>>F<rsub|\<nu\>>> is holomorphic in
      <math|\<cal-D\><rprime|'><rsub|f<rsup|\<ast\>>\<Gamma\>><around*|(|X|)>>.
    </proposition>

    <\proposition>
      <label|holomorphicity-preserving:prop-pullback-cts>With notation as in
      fact <reference|holomorphicity-preserving:fact-pullback>, if
      <math|u\<in\>C<around*|(|Y|)>> and <math|WF<around*|(|u|)>\<cap\>N<rsub|f>=
      \<varnothing\>>, we have <math|f<rsup|\<ast\>>u=u\<circ\>f>.
    </proposition>

    <\proposition>
      <label|holomorphicity-preserving:prop-tensor-holo>If
      <math|X<rsub|i>\<subset\>\<bbb-R\><rsup|n<rsub|i>>> are open subsets
      for <math|i=1,2>, <math|\<Gamma\><rsub|i>\<subset\>X<rsub|i>\<times\><around*|(|\<bbb-R\><rsup|n<rsub|i>>\\<around*|{|0|}>|)>>
      are closed conic sets and <math|u<rsup|<around*|(|i|)>><rsub|\<nu\>>\<in\>\<cal-D\><rsub|\<Gamma\>><rprime|'><rsub|i><around*|(|X<rsub|i>|)>>
      are holomorphically in <math|\<cal-D\><rprime|'><rsub|\<Gamma\><rsub|i>><around*|(|X<rsub|i>|)>>
      for <math|\<nu\>\<in\>O\<subset\>\<bbb-C\><rsup|n>> \ (<math|O>:open),
      then <math|u<rsub|\<nu\>><rsup|<around*|(|1|)>>\<otimes\>u<rsup|<around*|(|2|)>><rsub|\<nu\>>>
      is holomorphic in <math|\<cal-D\><rprime|'><rsub|\<Gamma\><rsub|1>\<otimes\>\<Gamma\><rsub|2>><around*|(|X<rsub|1>\<times\>X<rsub|2>|)>>,
      where <math|\<Gamma\><rsub|1>\<otimes\>\<Gamma\><rsub|2>\<assign\>\<Gamma\><rsub|1>\<times\>\<Gamma\><rsub|2>\<cup\><around*|(|<around*|(|X<rsub|1>\<times\><around*|{|0|}>|)>\<times\>\<Gamma\><rsub|2>|)>\<cup\><around*|(|\<Gamma\><rsub|1>\<times\><around*|(|X<rsub|2>\<times\><around*|{|0|}>|)>|)>\<subset\><around*|(|X<rsub|1>\<times\>X<rsub|2>|)>\<times\><around*|(|\<bbb-R\><rsup|m+n>\\<around*|{|0|}>|)>>
      is closed conic.
    </proposition>

    <\proposition>
      <label|holomorphicity-preserving:prop-tensor-cts>If
      <math|X<rsub|i>\<subset\>\<bbb-R\><rsup|n<rsub|i>>> are open subsets
      for <math|i=1,2> and <math|u<rsub|i>\<in\>C<around*|(|X<rsub|i>|)>>,
      then <math|u<rsub|1>\<otimes\>u<rsub|2>> defined in fact
      <reference|holomorphicity-preserving:fact-tensor> coincides with
      continuous function <math|<around*|(|x,y|)>\<mapsto\>u<rsub|1><around*|(|x|)>u<rsub|2><around*|(|y|)>>
      on <math|X<rsub|1>\<times\>X<rsub|2>>.
    </proposition>

    <subsection|Auxilliary results and facts>

    <\fact>
      <label|holomorphicity-preserving:fact-holo>Multivariable complex
      function <math|f:\<bbb-C\><rsup|n>\<supset\>O\<rightarrow\>\<bbb-C\>>
      (<math|O>:open) is holomorphic if it is continuous and for every
      variable <math|z<rsub|i>> we have <math|\<partial\>f/\<partial\><overline|z<rsub|i>>=0>
      on <math|O> (this includes requirement that left-hand side is
      well-defined).
    </fact>

    <\fact>
      <label|holomorphicity-preserving:fact-treves>(<cite-detail|treves1967topological|cor.
      2 in chap. 42> <math|\<cal-E\><rprime|'><around*|(|X|)>\<times\>\<cal-E\><rprime|'><around*|(|Y|)>\<ni\><around*|(|u,v|)>\<mapsto\>u\<otimes\>v\<in\>\<cal-E\><rprime|'><around*|(|X\<times\>Y|)>>
      is continuous for <math|X,Y> open subsets of Euclidean spaces.
    </fact>

    <\fact>
      <label|holomorphicity-preserving:fact-completeness>(<cite-detail|hormander1983analysis|thm.
      2.1.8>) For <math|u<rsub|j>\<in\>\<cal-D\><rprime|'><around*|(|X|)>>
      with <math|X\<subset\>\<bbb-R\><rsup|n>> open we have:

      <\enumerate>
        <item>If <math|\<forall\>\<varphi\>\<in\>C<rsub|0><rsup|\<infty\>><around*|(|X|)>>
        we have <math|<around*|{|<around*|\<langle\>|u<rsub|j>,\<varphi\>|\<rangle\>>|}><rsub|j>>
        being convergent sequence, then mapping
        <math|\<varphi\>\<mapsto\>lim<rsub|j><around*|\<langle\>|u<rsub|j>,\<varphi\>|\<rangle\>>>
        defines element of <math|\<cal-D\><rprime|'><around*|(|X|)>>;

        <item>If <math|u<rsub|j>\<rightarrow\>u<rsub|0>\<in\>\<cal-D\><rprime|'><around*|(|X|)>>
        and <math|\<varphi\><rsub|j>\<rightarrow\>\<varphi\><rsub|0>\<in\>C<rsup|\<infty\>><rsub|0><around*|(|X|)>>,
        then <math|<around*|\<langle\>|u<rsub|j>,\<varphi\><rsub|j>|\<rangle\>>\<rightarrow\><around*|\<langle\>|u<rsub|0>,\<varphi\><rsub|0>|\<rangle\>>>.
      </enumerate>
    </fact>

    <\fact>
      <label|holomorphicity-preserving:fact-basic>(<cite-detail|hormander1983analysis|thm.
      2.1.3>) If <math|\<varphi\>\<in\>C<rsup|\<infty\>><around*|(|X\<times\>Y|)>>
      with <math|X,Y> open subsets of Euclidean spaces,
      <math|u\<in\>\<cal-D\><rprime|'><around*|(|X|)>> and there exists
      <math|K\<subset\>X> compact such that
      <math|\<forall\><around*|(|x,y|)>\<in\>X\<times\>Y,<space|0.6spc>x\<nin\>K\<Rightarrow\>\<varphi\><around*|(|x,y|)>=0>,
      we have <math|y\<mapsto\>u<around*|(|x\<mapsto\>\<varphi\><around*|(|x,y|)>|)>>
      being smooth map and <math|<around*|(|\<partial\><rsup|\<alpha\>>/\<partial\>y<rsup|\<alpha\>>|)>u<around*|(|x\<mapsto\>\<varphi\><around*|(|x,y|)>|)>=u<around*|(|x\<mapsto\><around*|(|<around*|(|\<partial\><rsup|\<alpha\>>/\<partial\>y<rsup|\<alpha\>>|)>\<varphi\>|)><around*|(|x,y|)>|)>>.
    </fact>

    <\lemma>
      <label|holomorphicity-preserving:lem-phi-satisfies>For
      <math|\<varphi\>\<in\>C<rsup|\<infty\>><rsub|0><around*|(|\<bbb-R\><rsub|n>|)>>
      and <math|U\<subset\>\<bbb-R\><rsup|n>\\<around*|{|0|}>>: open, such
      that <math|<wide|U|\<bar\>>\<subset\>\<bbb-R\><rsup|n>\\<around*|{|0|}>>,
      there exists <math|R> such that <math|\<forall\><around*|(|t,x|)>\<in\>\<bbb-R\><rsub|\<gtr\>0>\<times\>U,t\<gtr\>R\<Rightarrow\>\<varphi\><around*|(|t\<cdot\>x|)>=0>.
    </lemma>

    <\proof>
      As <math|<wide|U|\<bar\>>\<subset\>\<bbb-R\><rsup|n>\\<around*|{|0|}>>,
      there exists <math|r\<gtr\>0> small such that
      <math|x\<in\>U\<Rightarrow\><around*|\||x|\|>\<gtr\>r>. Similarly, as
      <math|\<varphi\>\<in\>C<rsup|\<infty\>><rsub|0>>, exists
      <math|\<rho\>\<gtr\>0> big, such that
      <math|supp<around*|(|\<varphi\>|)>\<subset\><around*|{|<around*|\||x|\|>\<less\>r|}>>.
      Then, we can take <math|R\<assign\>\<rho\>/r>.
    </proof>

    <\lemma>
      <label|holomorphicity-preserving:lem-t+-cts>If
      <math|\<bbb-C\>\<ni\>a<rsub|i>\<rightarrow\>a<rsub|0>\<nin\>-\<bbb-Z\><rsub|\<geqslant\>1>>
      and <math|\<varphi\>\<in\>C<rsub|0><rsup|\<infty\>><around*|(|\<bbb-R\><rsup|n>|)>>,
      then for <math|R<rsub|a>\<varphi\>\<in\>C<rsup|\<infty\>><around*|(|\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>>
      defined as <math|<around*|(|R<rsub|a>\<varphi\>|)><around*|(|x|)>\<assign\><around*|\<langle\>|t<rsub|+><rsup|a>,t\<mapsto\>\<varphi\><around*|(|t
      x|)>|\<rangle\>>> we have <math|R<rsub|a<rsub|i>>\<varphi\>\<rightarrow\>R<rsub|a<rsub|0>>\<varphi\>>
      with all partial derivatives uniformly on compact subsets of
      <math|\<bbb-R\><rsup|n>\\<around*|{|0|}>>.
    </lemma>

    <\proof>
      We have to show that for every fixed
      <math|\<alpha\>\<in\>\<bbb-Z\><rsub|\<geqslant\>0><rsup|n>> and compact
      <math|K\<subset\>\<bbb-R\><rsup|n>\\<around*|{|0|}>> we have
      <math|<around*|(|\<partial\><rsup|\<alpha\>>/\<partial\>x<rsup|\<alpha\>>|)>R<rsub|a<rsub|i>>\<varphi\>\<rightarrow\><around*|(|\<partial\><rsup|\<alpha\>>/\<partial\>x<rsup|\<alpha\>>|)>R<rsub|a<rsub|0>>\<varphi\>>
      uniformly on <math|K>.

      Let's take an open neighborhood <math|U\<supset\>K>, such that
      <math|<wide|U|\<bar\>>\<subset\>\<bbb-R\><rsup|n>\\<around*|{|0|}>> and
      <math|\<psi\>:\<bbb-R\><rsub|\<gtr\>0>\<times\>U\<ni\><around*|(|t,x|)>\<mapsto\>\<varphi\><around*|(|t\<cdot\>x|)>>.
      Lemma <reference|holomorphicity-preserving:lem-phi-satisfies> shows
      that <math|\<psi\>> satisfies hypothesis of fact
      <reference|holomorphicity-preserving:fact-basic>. Thus,
      <math|R<rsub|a>\<varphi\>> is smooth on <math|U> for
      <math|a=a<rsub|i>,a<rsub|0>> and moreover by fact
      <reference|holomorphicity-preserving:fact-basic>

      <\equation*>
        <frac|\<partial\><rsup|\<alpha\>>|\<partial\>x<rsup|\<alpha\>>>R<rsub|a>\<varphi\>=<around*|\<langle\>|t<rsub|+><rsup|a<rsub|>>,t\<mapsto\><frac|\<partial\><rsup|\<alpha\>>|\<partial\>x<rsup|\<alpha\>>>\<varphi\><around*|(|t
        x<rsub|>|)>|\<rangle\>>=<around*|\<langle\>|t<rsub|+><rsup|a<rsub|>>,t\<mapsto\>t<rsup|<around*|\||\<alpha\>|\|>>\<cdot\><around*|(|<frac|\<partial\><rsup|\<alpha\>>|\<partial\>x<rsup|\<alpha\>>>\<varphi\>|)><around*|(|t
        x<rsub|>|)>|\<rangle\>>
      </equation*>

      and hence by taking <math|<around*|(|\<partial\>/\<partial\>x<rsup|\<alpha\>>|)>\<varphi\>>
      in place of <math|\<varphi\>>, <math|a<rsub|i>+<around*|\||\<alpha\>|\|>>
      in place of <math|a<rsub|i>> and <math|a<rsub|0>+<around*|\||\<alpha\>|\|>>
      in place of <math|a<rsub|0>>, we may assume that
      <math|<around*|\||\<alpha\>|\|>=0> and we just need to show that

      <\equation*>
        <around*|\<langle\>|t<rsub|+><rsup|a<rsub|i><rsub|>>,t\<mapsto\>\<varphi\><around*|(|t
        x<rsub|>|)>|\<rangle\>>\<rightarrow\><around*|\<langle\>|t<rsub|+><rsup|a<rsub|0><rsub|>>,t\<mapsto\>\<varphi\><around*|(|t
        x<rsub|>|)>|\<rangle\>>
      </equation*>

      uniformly in <math|x\<in\>K>, if <math|a<rsub|i>\<rightarrow\>a<rsub|0>>.
      Moreover, in the light of recurrence <math|<around*|(|d/d
      t|)>t<rsub|+><rsup|a+1>=<around*|(|a+1|)>t<rsub|+><rsup|a>>, we may
      assume <math|Re<around*|(|a<rsub|0>|)>,Re<around*|(|a<rsub|i>|)>\<gtr\>0>.

      Finally, as was shown before <math|\<varphi\><around*|(|t x|)>=0> for
      <math|t\<gtr\>R> for some particular <math|R> independent of
      <math|x\<in\>K>. Moreover, we can find <math|M> such that for
      <math|<around*|(|t,x|)>\<in\><around*|[|0,R|]>\<times\>K> we have
      <math|<around*|\||\<varphi\><around*|(|t x|)>|\|>\<less\>M> and hence\ 

      <\equation*>
        <around*|\||<around*|\<langle\>|t<rsub|+><rsup|a<rsub|i><rsub|>>-t<rsub|+><rsup|a<rsub|0>>,t\<mapsto\>\<varphi\><around*|(|t
        x<rsub|>|)>|\<rangle\>>|\|>=<around*|\||<big|int><rsub|0><rsup|R><around*|(|t<rsup|a<rsub|i>>-t<rsup|a<rsub|0>>|)>\<varphi\><around*|(|t
        x|)>|\|>\<leqslant\>M<big|int><rsub|0><rsup|R><around*|\||t<rsup|a<rsub|i>>-t<rsup|a<rsub|0>>|\|>\<rightarrow\>0.
      </equation*>

      (by dominated convergence) and as the latter estimate is independent of
      <math|x\<in\>K>, this ends the proof.
    </proof>

    <\lemma>
      <label|holomorphicity-preserving:lem-homog-ctt>If
      <math|u<rsub|i>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>>
      are homogeneous of degree <math|a<rsub|i>\<nin\>-n-\<bbb-Z\><rsub|\<geqslant\>0>>,
      <math|u<rsub|i>\<rightarrow\>u<rsub|0>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>>
      and <math|a<rsub|i>\<rightarrow\>a<rsub|0>\<nin\>-n-\<bbb-Z\><rsub|\<geqslant\>0>>.
      Then <math|u<rsub|0>> is homogeneous of degree <math|a<rsub|0>> and
      <math|<wide|u<rsub|>|\<dot\>><rsub|i>\<rightarrow\><wide|u<rsub|>|\<dot\>><rsub|0>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>|)>>
      (with <math|<wide|u|\<dot\>>> as in fact
      <reference|holomorphicity-preserving:fact-homog>)
    </lemma>

    <\proof>
      First, let's show that <math|u<rsub|0>> is homogeneous. Indeed, we need
      to show that for any <math|\<varphi\><rsub|0>\<in\>C<rsub|0><rsup|\<infty\>><around*|(|\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>>
      and any <math|t<rsub|0>\<gtr\>0> we have

      <\equation*>
        <around*|\<langle\>|u<rsub|0>,\<varphi\><rsub|0>|\<rangle\>>=t<rsub|0><rsup|a<rsub|0>+n><around*|\<langle\>|u<rsub|0>,x\<mapsto\>\<varphi\><rsub|0><around*|(|t<rsub|0>x|)>|\<rangle\>>
      </equation*>

      Now, hypothesis implies that

      <\equation*>
        <around*|\<langle\>|u<rsub|i>,\<varphi\><rsub|0>|\<rangle\>>\<rightarrow\><around*|\<langle\>|u<rsub|0>,\<varphi\><rsub|0>|\<rangle\>>;<space|1em><around*|\<langle\>|u<rsub|i>,x\<mapsto\>\<varphi\><rsub|0><around*|(|t<rsub|0>x|)>|\<rangle\>>\<rightarrow\><around*|\<langle\>|u<rsub|0>,x\<mapsto\>\<varphi\><rsub|0><around*|(|t<rsub|0>x|)>|\<rangle\>>;<space|1em><around*|\<langle\>|u<rsub|i>,\<varphi\><rsub|0>|\<rangle\>>=t<rsub|0><rsup|a<rsub|i>+n><around*|\<langle\>|u<rsub|n>,x\<mapsto\>\<varphi\><rsub|0><around*|(|t<rsub|0>x|)>|\<rangle\>>
      </equation*>

      and hence we see that\ 

      <\equation*>
        <frac|<around*|\<langle\>|u<rsub|0>,\<varphi\><rsub|0>|\<rangle\>>|<around*|\<langle\>|u<rsub|0>,x\<mapsto\>\<varphi\><rsub|0><around*|(|t<rsub|0>x|)>|\<rangle\>>>=lim<rsub|i\<rightarrow\>\<infty\>><frac|<around*|\<langle\>|u<rsub|i>,x\<mapsto\>\<varphi\><rsub|0><around*|(|t<rsub|0>x|)>|\<rangle\>>|<around*|\<langle\>|u<rsub|i>,\<varphi\><rsub|0>|\<rangle\>>>=lim<rsub|i\<rightarrow\>\<infty\>>t<rsub|0><rsup|a<rsub|i>+n>=t<rsub|0><rsup|a<rsub|0>+n>
      </equation*>

      and this shows homogeneity of <math|u<rsub|0>>.

      Now, it remains to show that <math|<wide|u|\<dot\>><rsub|i>\<rightarrow\><wide|u|\<dot\>><rsub|0>>.
      Recalling the proof of fact <reference|holomorphicity-preserving:fact-homog>
      given in <cite|hormander1983analysis>, we see that we for particular
      fixed <math|\<psi\>\<in\>C<rsub|0><rsup|\<infty\>><around*|(|\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>>
      (independent of <math|i>) we have\ 

      <\equation*>
        <around*|\<langle\>|<wide|u|\<dot\>><rsub|i>,\<varphi\>|\<rangle\>>=<around*|\<langle\>|u<rsub|i>,\<psi\>R<rsub|a<rsub|i>>\<varphi\>|\<rangle\>>,
      </equation*>

      <\equation*>
        <around*|(|R<rsub|a<rsub|i>>\<varphi\>|)><around*|(|x<rsub|0>|)>:=<around*|\<langle\>|t<rsub|+><rsup|a<rsub|i>+n-1>,t\<mapsto\>\<varphi\><around*|(|t
        x<rsub|0>|)>|\<rangle\>>,<space|1em>x<rsub|0>\<neq\>0.
      </equation*>

      and similarly for <math|a<rsub|0>> (with same <math|\<psi\>>). Now, the
      second item of fact <reference|holomorphicity-preserving:fact-completeness>
      implies that it suffices to show that

      <\equation*>
        \<psi\>R<rsub|a<rsub|i>>\<varphi\>\<rightarrow\>\<psi\>R<rsub|a<rsub|0>>\<varphi\>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>.
      </equation*>

      As <math|\<psi\>\<in\>C<rsub|0><rsup|\<infty\>>>, it suffices to show
      that for every fixed <math|\<alpha\>\<in\>\<bbb-Z\><rsub|\<geqslant\>0><rsup|n>>
      and compact <math|K\<subset\>\<bbb-R\><rsup|n>\\<around*|{|0|}>> we
      have <math|<around*|(|\<partial\><rsup|\<alpha\>>/\<partial\>x<rsup|\<alpha\>>|)>R<rsub|a<rsub|i>>\<varphi\>\<rightarrow\><around*|(|\<partial\><rsup|\<alpha\>>/\<partial\>x<rsup|\<alpha\>>|)>R<rsub|a<rsub|0>>\<varphi\>>
      uniformly on <math|K>. But this is granted by lemma
      <reference|holomorphicity-preserving:lem-t+-cts>.
    </proof>

    <\lemma>
      <label|holomorphicity-preserving:lem-t+ln-cts>Let
      <math|\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsub|\<gtr\>0>|)>\<ni\>t<rsub|+><rsup|a>ln<around*|(|t|)>\<assign\><frac|d|d
      a>t<rsub|+><rsup|a>> be holomorphically depending on
      <math|a\<nin\>-\<bbb-Z\><rsub|\<geqslant\>1>> distribution. Then, for
      <math|a<rsub|i>\<rightarrow\>a<rsub|0>\<nin\>-\<bbb-Z\><rsub|\<geqslant\>1>>
      and every <math|\<alpha\>\<in\>\<bbb-Z\><rsub|\<geqslant\>0><rsup|n>>,
      <math|\<varphi\>\<in\>C<rsub|0><rsup|\<infty\>><around*|(|\<bbb-R\><rsup|n>|)>>
      we have

      <\equation*>
        <frac|\<partial\><rsup|\<alpha\>>|\<partial\>x<rsup|\<alpha\>>><around*|\<langle\>|t<rsub|+><rsup|a<rsub|i>>ln<around*|(|t|)>,t\<mapsto\>\<varphi\><around*|(|t
        x|)>|\<rangle\>>\<rightarrow\><frac|\<partial\><rsup|\<alpha\>>|\<partial\>x<rsup|\<alpha\>>><around*|\<langle\>|t<rsub|+><rsup|a<rsub|0>>ln<around*|(|t|)>,t\<mapsto\>\<varphi\><around*|(|t
        x|)>|\<rangle\>>
      </equation*>

      uniformly in <math|x> on compact subsets of
      <math|\<bbb-R\><rsup|n>\\<around*|{|0|}>>.
    </lemma>

    <\proof>
      Lemma <reference|holomorphicity-preserving:lem-phi-satisfies> and fact
      <reference|holomorphicity-preserving:fact-basic> tell us that we have\ 

      <\equation*>
        <around*|(|\<partial\><rsup|\<alpha\>>/\<partial\>x<rsup|\<alpha\>>|)><around*|\<langle\>|t<rsub|+><rsup|a<rsub|>>ln<around*|(|t|)>,t\<mapsto\>\<varphi\><around*|(|t
        x|)>|\<rangle\>>=<around*|\<langle\>|t<rsub|+><rsup|a<rsub|>>ln<around*|(|t|)>,t\<mapsto\>t<rsup|<around*|\||\<alpha\>|\|>><around*|(|\<partial\><rsup|\<alpha\>>\<varphi\>/\<partial\>x<rsup|\<alpha\>>|)>\<varphi\><around*|(|t
        x|)>|\<rangle\>>
      </equation*>

      and hence we may assume <math|<around*|\||\<alpha\>|\|>=0> from the
      start. Then, for <math|Re<around*|(|a|)>\<gg\>0> we can write

      <\equation*>
        <frac|d|d t>t<rsub|+><rsup|a+1>ln<around*|(|t|)>=<around*|(|a+1|)>t<rsub|+><rsup|a>ln<around*|(|t|)>+t<rsub|+><rsup|a>=<around*|(|a+1|)>t<rsub|+><rsup|a>ln<around*|(|t|)>+<frac|1|a+1><frac|d|d
        t>t<rsub|+><rsup|a+1>\<Rightarrow\>
      </equation*>

      <\equation*>
        \<Rightarrow\>t<rsub|+><rsup|a>ln<around*|(|t|)>=<frac|1|a+1>\<cdot\><frac|d|d
        t>t<rsub|+><rsup|a+1>ln<around*|(|t|)>-<frac|1|<around*|(|a+1|)><rsup|2>>\<cdot\><frac|d|d
        t>t<rsup|a+1><rsub|+>
      </equation*>

      and then analytically extending latter to
      <math|a\<nin\>-\<bbb-Z\><rsub|\<geqslant\>1>>, we can using lemma
      <reference|holomorphicity-preserving:lem-t+-cts> reduce to the case
      <math|Re<around*|(|a|)>\<gtr\>0>, when
      <math|t<rsub|+><rsup|a>ln<around*|(|t|)>> becomes bounded near
      <math|0>.

      Then lemma <reference|holomorphicity-preserving:lem-phi-satisfies> and
      continuity of <math|\<varphi\>> tell us that

      <\equation*>
        <around*|\||<around*|\<langle\>|t<rsub|+><rsup|a<rsub|i>>ln<around*|(|t|)>-t<rsub|+><rsup|a<rsub|0>>ln<around*|(|t|)>,t\<mapsto\>\<varphi\><around*|(|t
        x|)>|\<rangle\>>|\|>\<leqslant\><big|int><rsub|0><rsup|R><around*|\||t<rsub|+><rsup|a<rsub|i>>ln<around*|(|t|)>-t<rsub|+><rsup|a<rsub|0>>ln<around*|(|t|)>|\|>\<cdot\><around*|\||\<varphi\><around*|(|t
        x|)>|\|>d t\<leqslant\>M<big|int><rsub|0><rsup|R><around*|\||<around*|(|t<rsub|+><rsup|a<rsub|i>>-t<rsub|+><rsup|a<rsub|0>>|)>ln<around*|(|t|)>|\|>
        d t\<rightarrow\>0
      </equation*>

      (by Lebesgue dominated convergence) and as the latter estimate is
      independent of <math|x\<in\>K>, it ends the proof.
    </proof>

    <\lemma>
      <label|holomorphicity-preserving:lem-t+-smth-aux>For
      <math|a\<nin\>-\<bbb-Z\><rsub|\<geqslant\>1>> and
      <math|\<varphi\>\<in\>C<rsub|0><rsup|\<infty\>><around*|(|\<bbb-R\><rsup|n>|)>>
      we have for every <math|\<alpha\>\<in\>\<bbb-Z\><rsub|\<geqslant\>0><rsup|n>>

      <\equation*>
        lim<rsub|h\<rightarrow\>0><frac|\<partial\><rsup|\<alpha\>>|\<partial\>x<rsup|\<alpha\>>><around*|\<langle\>|<frac|t<rsub|+><rsup|a+h>-t<rsub|+><rsup|a>|h>,t\<mapsto\>\<varphi\><around*|(|t
        x|)>|\<rangle\>>=<frac|\<partial\><rsup|\<alpha\>>|\<partial\>x<rsup|\<alpha\>>><around*|\<langle\>|t<rsub|+><rsup|a>
        ln<around*|(|t|)>,t\<mapsto\>\<varphi\><around*|(|t x|)>|\<rangle\>>
      </equation*>

      uniformly on compact subsets of <math|\<bbb-R\><rsup|n>\\<around*|{|0|}>>
      with <math|t<rsub|+><rsup|a>ln<around*|(|t|)>> as in lemma
      <reference|holomorphicity-preserving:lem-t+ln-cts>.
    </lemma>

    <\proof>
      Let's take <math|K\<subset\>\<bbb-R\><rsup|n>\\<around*|{|0|}>> compact
      and <math|U\<supset\>K> open, such that
      <math|<wide|U|\<bar\>>\<subset\>\<bbb-R\><rsup|n>\\<around*|{|0|}>>.
      Then, lemma <reference|holomorphicity-preserving:lem-phi-satisfies>
      shows that <math|\<psi\>:\<bbb-R\><rsub|\<gtr\>0>\<times\>U\<ni\><around*|(|t,x|)>\<mapsto\>\<psi\><around*|(|t,x|)>\<assign\>\<varphi\><around*|(|t\<cdot\>x|)>>
      satisfies the hypothesis of fact <reference|holomorphicity-preserving:fact-basic>
      and thus

      <\equation*>
        <frac|\<partial\><rsup|\<alpha\>>|\<partial\>x<rsup|\<alpha\>>><around*|\<langle\>|<frac|t<rsub|+><rsup|a+h>-t<rsub|+><rsup|a>|h>,t\<mapsto\>\<varphi\><around*|(|t
        x|)>|\<rangle\>>=<around*|\<langle\>|<frac|t<rsub|+><rsup|a+h>-t<rsub|+><rsup|a>|h>,t\<mapsto\>t<rsup|<around*|\||\<alpha\>|\|>><frac|\<partial\><rsup|\<alpha\>>\<varphi\>|\<partial\>x<rsup|\<alpha\>>><around*|(|t
        x|)>|\<rangle\>>
      </equation*>

      <\equation*>
        <frac|\<partial\><rsup|\<alpha\>>|\<partial\>x<rsup|\<alpha\>>><around*|\<langle\>|t<rsub|+><rsup|a>
        ln<around*|(|t|)>,t\<mapsto\>\<varphi\><around*|(|t
        x|)>|\<rangle\>>=<around*|\<langle\>|t<rsub|+><rsup|a>
        ln<around*|(|t|)>,t\<mapsto\>t<rsup|<around*|\||\<alpha\>|\|>><frac|\<partial\><rsup|\<alpha\>>\<varphi\>|\<partial\>x<rsup|\<alpha\>>><around*|(|t
        x|)>|\<rangle\>>
      </equation*>

      hence we may assume that <math|<around*|\||\<alpha\>|\|>=0> from the
      start. Moreover, for <math|Re<around*|(|a|)>\<gg\>0> we have\ 

      <\equation*>
        <frac|d|d t>t<rsub|+><rsup|a+1>ln<around*|(|t|)>=<around*|(|a+1|)>t<rsub|+><rsup|a>ln<around*|(|t|)>+t<rsub|+><rsup|a>=<around*|(|a+1|)>t<rsub|+><rsup|a>ln<around*|(|t|)>+<frac|1|a+1><frac|d|d
        t>t<rsub|+><rsup|a+1>\<Rightarrow\>
      </equation*>

      <\equation*>
        \<Rightarrow\>t<rsub|+><rsup|a>ln<around*|(|t|)>=<frac|1|a+1>\<cdot\><frac|d|d
        t>t<rsub|+><rsup|a+1>ln<around*|(|t|)>-<frac|1|<around*|(|a+1|)><rsup|2>>\<cdot\><frac|d|d
        t>t<rsup|a+1><rsub|+>
      </equation*>

      and by analytic continuation latter holds for
      <math|a\<nin\>-\<bbb-Z\><rsub|\<geqslant\>1>>. This together with the
      similar equality

      <\equation*>
        <frac|t<rsub|+><rsup|a+h>-t<rsub|+><rsup|a>|h>=<frac|d|d
        t><frac|<frac|1|a+1+h>t<rsub|+><rsup|a+1+h>-<frac|1|a+1>t<rsub|+><rsup|a+1>|h>=<rsup|><frac|d|d
        t><frac|t<rsub|+><rsup|a+1+h>-t<rsub|+><rsup|a+1>|h<around*|(|a+1+h|)>>-<frac|d|d
        t><frac|t<rsub|+><rsup|a+1>|<around*|(|a+1+h|)><around*|(|a+1|)>>
      </equation*>

      and lemma <reference|holomorphicity-preserving:lem-t+-cts> allows us to
      reduce to the case <math|Re<around*|(|a|)>\<gtr\>0>. Note that
      <math|t<rsub|+><rsup|a>ln<around*|(|t|)>\<rightarrow\>0> then as
      <math|t\<rightarrow\>0>. Finally, by lemma
      <reference|holomorphicity-preserving:lem-phi-satisfies> and continuity
      of <math|\<varphi\>> we have for <math|x\<in\>K> and some <math|M> big
      independent of <math|x>

      <\equation*>
        <around*|\||<around*|\<langle\>|<frac|t<rsub|+><rsup|a+h>-t<rsub|+><rsup|a>|h>-t<rsub|+><rsup|a>
        ln<around*|(|t|)>,t\<mapsto\>\<varphi\><around*|(|t
        x|)>|\<rangle\>>|\|>=<around*|\||<big|int><rsub|0><rsup|R><around*|(|<frac|t<rsub|+><rsup|a+h>-t<rsub|+><rsup|a>|h>-t<rsub|+><rsup|a>
        ln<around*|(|t|)>|)>\<varphi\><around*|(|t x|)>d t|\|>\<leqslant\>
      </equation*>

      <\equation*>
        \<leqslant\>M<big|int><rsub|0><rsup|R><around*|\||<frac|t<rsub|+><rsup|a+h>-t<rsub|+><rsup|a>|h>-t<rsub|+><rsup|a>
        ln<around*|(|t|)>|\|>d t\<rightarrow\>0.
      </equation*>

      (by dominated convergence) and as the latter estimate is independent of
      <math|x\<in\>K>, this ends the proof.
    </proof>

    <\lemma>
      <label|holomorphicity-preserving:lem-t+-smth>Suppose
      <math|F<rsub|\<lambda\>>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>>
      depends on <math|\<lambda\>\<in\>O\<subset\>\<bbb-R\><rsup|n>>
      (<math|O>:open) such that <math|\<lambda\>\<mapsto\>F<rsub|\<lambda\>>>
      is of class <math|C<rsup|1>>, and is homogeneous of degree
      <math|a<around*|(|\<lambda\>|)>> with
      <math|\<lambda\>\<mapsto\>a<around*|(|\<lambda\>|)>> being
      <math|C<rsup|1>> and <math|a<around*|(|O|)>\<subset\>\<bbb-C\>\\<around*|(|-\<bbb-Z\><rsub|\<geqslant\>1>|)>>.
      Then, for <math|<wide|F|\<dot\>><rsub|\<lambda\>>> defined by fact
      <reference|holomorphicity-preserving:fact-homog>, we have
      <math|\<lambda\>\<mapsto\><wide|F|\<dot\>><rsub|\<lambda\>>> being also
      of class <math|C<rsup|1>> and moreover for
      <math|\<bbb-R\><rsup|n>\<ni\>h\<neq\>0> and <math|D<rsub|h>> denoting
      directional derivative we have

      <\equation>
        <label|holomorphicity-preserving:eq-1>D<rsub|h><around*|\<langle\>|<wide|F|\<dot\>><rsub|\<lambda\>>,\<varphi\>|\<rangle\>>=<around*|\<langle\>|D<rsub|h>F<rsub|\<lambda\>>,x\<mapsto\>\<psi\><around*|(|x|)><around*|\<langle\>|t<rsup|a<around*|(|\<lambda\>|)>-n+1><rsub|+>,\<varphi\><around*|(|t
        x|)>|\<rangle\>>|\<rangle\>>+D<rsub|h>a<around*|(|\<lambda\>|)>\<cdot\><around*|\<langle\>|F<rsub|\<lambda\>>,x\<mapsto\>\<psi\><around*|(|x|)><around*|\<langle\>|t<rsub|+><rsup|a<around*|(|\<lambda\>|)>-n+1>ln<around*|(|t|)>,\<varphi\><around*|(|t
        x|)>|\<rangle\>>|\<rangle\>>,
      </equation>

      with <math|t<rsub|+><rsup|a<around*|(|\<lambda\>|)>>ln<around*|(|t|)>>
      as in lemma <reference|holomorphicity-preserving:lem-t+-smth-aux> and
      arbitrary fixed <math|\<psi\>> as in fact
      <reference|holomorphicity-preserving:fact-homog>.
    </lemma>

    <\proof>
      It is enough to prove the equality <reference|holomorphicity-preserving:eq-1>,
      as it is continuous in <math|\<lambda\>>. Indeed,
      <math|D<rsub|h>F<rsub|\<lambda\>>> is continuous in <math|\<lambda\>>
      and <math|x\<mapsto\>\<psi\><around*|(|x|)><around*|\<langle\>|t<rsup|a<around*|(|\<lambda\>|)>-n+1><rsub|+>,\<varphi\><around*|(|t
      x|)>|\<rangle\>>> is continuous in <math|\<lambda\>> (in
      <math|C<rsub|0><rsup|\<infty\>><around*|(|\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>>
      topology) as <math|\<lambda\>\<mapsto\>a<around*|(|\<lambda\>|)>> is
      continuous in <math|\<lambda\>> and by lemma
      <reference|holomorphicity-preserving:lem-t+-cts>. Hence, by fact
      <reference|holomorphicity-preserving:fact-completeness> first addend on
      the right of equation <reference|holomorphicity-preserving:eq-1> is
      continuous in <math|\<lambda\>>. Similarly, as
      <math|x\<mapsto\>\<psi\><around*|(|x|)><around*|\<langle\>|t<rsub|+><rsup|a<around*|(|\<lambda\>|)>-n+1>ln<around*|(|t|)>,\<varphi\><around*|(|t
      x|)>|\<rangle\>>> is continuous in <math|\<lambda\>> in
      <math|C<rsub|0><rsup|\<infty\>><around*|(|\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>>
      topology by lemma <reference|holomorphicity-preserving:lem-t+ln-cts>
      and <math|D<rsub|h>a<around*|(|\<lambda\>|)>> continuous in
      <math|\<lambda\>> by hypothesis, the second addend on the right of
      equation <reference|holomorphicity-preserving:eq-1> is continuous in
      <math|\<lambda\>> as well.

      Hence, it suffices to prove equality
      <reference|holomorphicity-preserving:eq-1>. This is done by direct
      computation is follows: by fact <reference|holomorphicity-preserving:fact-homog>
      we have

      <\equation*>
        D<rsub|h><around*|\<langle\>|<wide|F|\<dot\>><rsub|\<lambda\>>,\<varphi\>|\<rangle\>>=lim<rsub|s\<rightarrow\>0><frac|<around*|\<langle\>|F<rsub|\<lambda\>+s
        h>,x\<mapsto\>\<psi\><around*|(|x|)><around*|\<langle\>|t<rsup|a<around*|(|\<lambda\>+s
        h|)>-n+1><rsub|+>,\<varphi\><around*|(|t
        x|)>|\<rangle\>>|\<rangle\>>-<around*|\<langle\>|F<rsub|\<lambda\>>,x\<mapsto\>\<psi\><around*|(|x|)><around*|\<langle\>|t<rsup|a<around*|(|\<lambda\>|)>-n+1><rsub|+>,\<varphi\><around*|(|t
        x|)>|\<rangle\>>|\<rangle\>>|s h>=
      </equation*>

      <\equation*>
        =lim<rsub|s\<rightarrow\>0><around*|\<langle\>|<frac|F<rsub|\<lambda\>+s
        h>-F<rsub|\<lambda\>>|s h>,x\<mapsto\>\<psi\><around*|(|x|)><around*|\<langle\>|t<rsup|a<around*|(|\<lambda\>+s
        h|)>-n+1><rsub|+>,\<varphi\><around*|(|t
        x|)>|\<rangle\>>|\<rangle\>>+
      </equation*>

      <\equation*>
        +<frac|a<around*|(|\<lambda\>+s h|)>-a<around*|(|\<lambda\>|)>|s
        h>\<cdot\>lim<rsub|s\<rightarrow\>0><around*|\<langle\>|F<rsub|\<lambda\>>,x\<mapsto\>\<psi\><around*|(|x|)><around*|\<langle\>|<frac|t<rsup|a<around*|(|\<lambda\>+s
        h|)>-n+1><rsub|+>-t<rsup|a<around*|(|\<lambda\>|)>-n+1><rsub|+>|a<around*|(|\<lambda\>+s
        h|)>-a<around*|(|\<lambda\>|)>>,\<varphi\><around*|(|t
        x|)>|\<rangle\>>|\<rangle\>>.
      </equation*>

      Now, fact <reference|holomorphicity-preserving:fact-completeness> and
      lemma <reference|holomorphicity-preserving:lem-t+-cts> imply that

      <\equation*>
        lim<rsub|s\<rightarrow\>0><around*|\<langle\>|<frac|F<rsub|\<lambda\>+s
        h>-F<rsub|\<lambda\>>|s h>,x\<mapsto\>\<psi\><around*|(|x|)><around*|\<langle\>|t<rsup|a<around*|(|\<lambda\>+s
        h|)>-n+1><rsub|+>,\<varphi\><around*|(|t
        x|)>|\<rangle\>>|\<rangle\>>=<around*|\<langle\>|D<rsub|h>F<rsub|\<lambda\>>,x\<mapsto\>\<psi\><around*|(|x|)><around*|\<langle\>|t<rsup|a<around*|(|\<lambda\>|)>-n+1><rsub|+>,\<varphi\><around*|(|t
        x|)>|\<rangle\>>|\<rangle\>>
      </equation*>

      and lemma <reference|holomorphicity-preserving:lem-t+-smth-aux> implies
      that

      <\equation*>
        lim<rsub|s\<rightarrow\>0><around*|\<langle\>|F<rsub|\<lambda\>>,x\<mapsto\>\<psi\><around*|(|x|)><around*|\<langle\>|<frac|t<rsup|a<around*|(|\<lambda\>+s
        h|)>-n+1><rsub|+>-t<rsup|a<around*|(|\<lambda\>|)>-n+1><rsub|+>|a<around*|(|\<lambda\>+s
        h|)>-a<around*|(|\<lambda\>|)>>,\<varphi\><around*|(|t
        x|)>|\<rangle\>>|\<rangle\>>=<around*|\<langle\>|F<rsub|\<lambda\>>,x\<mapsto\>\<psi\><around*|(|x|)><around*|\<langle\>|t<rsub|+><rsup|a<around*|(|\<lambda\>|)>-n+1>ln<around*|(|t|)>,\<varphi\><around*|(|t
        x|)>|\<rangle\>>|\<rangle\>>
      </equation*>

      and this proves equality <reference|holomorphicity-preserving:eq-1>.
    </proof>

    <\lemma>
      <label|holomorphicity-preserving:lem-tensor-holo>If
      <math|X<rsub|i>\<subset\>\<bbb-R\><rsup|n<rsub|i>>> are open subsets
      for <math|i=1,2>, and <math|u<rsup|<around*|(|i|)>><rsub|\<nu\>>\<in\>\<cal-D\><rsub|><rprime|'><around*|(|X<rsub|i>|)>>
      are holomorphically dependent on <math|\<nu\>\<in\>O\<subset\>\<bbb-C\><rsup|n>>
      \ (<math|O>:open), then <math|u<rsub|\<nu\>><rsup|<around*|(|1|)>>\<otimes\>u<rsup|<around*|(|2|)>><rsub|\<nu\>>>
      is also so.
    </lemma>

    <\proof>
      We fix <math|\<varphi\>\<in\>C<rsup|\<infty\>><rsub|0><around*|(|X<rsub|1>\<times\>X<rsub|2>|)>>
      and then we need to show that <math|O\<ni\>\<nu\>\<mapsto\><around*|\<langle\>|u<rsub|\<nu\>><rsup|<around*|(|1|)>>\<otimes\>u<rsub|\<nu\>><rsup|<around*|(|2|)>>,\<varphi\>|\<rangle\>>\<in\>\<bbb-C\>>
      is holomorphic.\ 

      We first show that this map is continuous. Indeed, let
      <math|O\<ni\>\<nu\><rsub|n>\<rightarrow\>\<nu\><rsub|0>\<in\>O>. Then,
      taking <math|K<rsub|i>\<subset\>X<rsub|i>> compact, such that
      <math|supp<around*|(|\<varphi\>|)>\<subset\>K<rsub|1>\<times\>K<rsub|2>>
      and <math|\<chi\><rsub|i>\<in\>C<rsup|\<infty\>><rsub|0><around*|(|X<rsub|i>|)>>
      with <math|\<chi\><rsub|i><mid|\|><rsub|K<rsub|i>>\<equiv\>1>, we have
      <math|<around*|(|\<chi\><rsub|1>\<otimes\>\<chi\><rsub|2>|)>\<cdot\>\<varphi\>=\<varphi\>>
      and hence <math|<around*|\<langle\>|u<rsub|\<nu\><rsub|n>><rsup|<around*|(|1|)>>\<otimes\>u<rsub|\<nu\><rsub|n>><rsup|<around*|(|2|)>>,\<varphi\>|\<rangle\>>=<around*|\<langle\>|u<rsub|\<nu\><rsub|n>><rsup|<around*|(|1|)>>\<otimes\>u<rsub|\<nu\><rsub|n>><rsup|<around*|(|2|)>>,<around*|(|\<chi\><rsub|1>\<otimes\>\<chi\><rsub|2>|)>\<cdot\>\<varphi\>|\<rangle\>>=<around*|\<langle\>|<around*|(|\<chi\><rsub|1>u<rsub|\<nu\><rsub|n>><rsup|<around*|(|1|)>>|)>\<otimes\><around*|(|\<chi\><rsub|2>u<rsub|\<nu\><rsub|n>><rsup|<around*|(|2|)>>|)>,\<varphi\>|\<rangle\>>\<rightarrow\><around*|\<langle\>|<around*|(|\<chi\><rsub|1>u<rsub|\<nu\><rsub|0>><rsup|<around*|(|1|)>>|)>\<otimes\><around*|(|\<chi\><rsub|2>u<rsub|\<nu\><rsub|0>><rsup|<around*|(|2|)>>|)>,\<varphi\>|\<rangle\>>=<around*|\<langle\>|u<rsub|\<nu\><rsub|n>><rsup|<around*|(|1|)>>\<otimes\>u<rsub|\<nu\><rsub|n>><rsup|<around*|(|2|)>>,\<varphi\>|\<rangle\>>>.
      The limit holds due to fact <reference|holomorphicity-preserving:fact-treves>,
      the fact that <math|\<chi\><rsub|i>u<rsub|\<nu\><rsub|n>><rsup|<around*|(|i|)>>\<in\>\<cal-E\><rprime|'><around*|(|X<rsub|i>|)>>
      and the fact that <math|\<chi\><rsub|i>u<rsub|\<nu\>><rsup|<around*|(|i|)>>>
      depends on <math|\<nu\>\<in\>O> holomorphically, hence in particular
      continuously, hence <math|><math|\<chi\><rsub|i>u<rsub|\<nu\><rsub|n>><rsup|<around*|(|i|)>>\<rightarrow\>\<chi\><rsub|i>u<rsub|\<nu\><rsub|0>><rsup|<around*|(|i|)>>>.
      This shows continuity.

      \ Now, writing <math|\<nu\>=<around*|(|z<rsub|1>,z<rsub|2>,\<ldots\>,z<rsub|n>|)>>,
      <math|z<rsub|i>=x<rsub|i>+i y<rsub|i>> and taking <math|v<rsub|i>> to
      be <math|x<rsub|i>> or <math|y<rsub|i>> we have

      <\equation*>
        <frac|\<partial\>|\<partial\>v<rsub|i>><around*|\<langle\>|u<rsub|\<nu\><rsub|>><rsup|<around*|(|1|)>>\<otimes\>u<rsub|\<nu\><rsub|>><rsup|<around*|(|2|)>>,\<varphi\>|\<rangle\>>=<around*|\<langle\>|<frac|\<partial\>|\<partial\>v<rsub|i>>u<rsub|\<nu\><rsub|>><rsup|<around*|(|1|)>>\<otimes\>u<rsub|\<nu\><rsub|>><rsup|<around*|(|2|)>>,\<varphi\>|\<rangle\>>+<around*|\<langle\>|u<rsub|\<nu\><rsub|>><rsup|<around*|(|1|)>>\<otimes\><frac|\<partial\>|\<partial\>v<rsub|i>>u<rsub|\<nu\><rsub|>><rsup|<around*|(|2|)>>,\<varphi\>|\<rangle\>>=
      </equation*>

      <\equation*>
        =<around*|\<langle\>|<frac|\<partial\>|\<partial\>v<rsub|i>>u<rsub|\<nu\><rsub|>><rsup|<around*|(|1|)>>,x\<mapsto\><around*|\<langle\>|u<rsub|\<nu\><rsub|>><rsup|<around*|(|2|)>>,y\<mapsto\>\<varphi\><around*|(|x,y|)>|\<rangle\>>|\<rangle\>>+<around*|\<langle\>|<frac|\<partial\>|\<partial\>v<rsub|i>>u<rsub|\<nu\><rsub|>><rsup|<around*|(|2|)>>,y\<mapsto\><around*|\<langle\>|u<rsub|\<nu\><rsub|>><rsup|<around*|(|1|)>>,x\<mapsto\>\<varphi\><around*|(|x,y|)>|\<rangle\>>|\<rangle\>>
      </equation*>

      the first equality following from complex linearity of
      <math|\<otimes\>> and continuity we've shown above. Thus, as we have
      <math|<around*|(|\<partial\>/\<partial\><overline|z<rsub|i>>|)>u<rsub|\<nu\>><rsup|<around*|(|i|)>>=0>,
      we also have <math|<around*|(|\<partial\>/\<partial\><overline|z<rsub|i>>|)><around*|(|u<rsub|\<nu\>><rsup|<around*|(|1|)>>\<otimes\>u<rsub|\<nu\>><rsup|<around*|(|2|)>>|)>=0>
      and the application of fact <reference|holomorphicity-preserving:fact-holo>
      ends the proof.
    </proof>

    <subsection|Proofs>\ 

    <\proof>
      (of prop. <reference|holomorphicity-preserving:prop-tensor-cts>)
      Follows from the uniqueness part of fact
      <reference|holomorphicity-preserving:fact-tensor>.
    </proof>

    <\fact>
      <label|holomorphicity-preserving:fact-p1><cite-detail|chazarain2011introduction|p.
      511, rmk. 2.5> For <math|X<rsub|i>,\<Gamma\><rsub|i>> as in proposition
      <reference|holomorphicity-preserving:prop-tensor-holo> we have
      <math|u<rsup|<around*|(|1|)>>\<otimes\>u<rsup|<around*|(|2|)>>\<in\>\<cal-D\><rprime|'><rsub|\<Gamma\><rsub|1>\<otimes\>\<Gamma\><rsub|2>><around*|(|X<rsub|1>\<times\>X<rsub|2>|)>>
      with <math|\<Gamma\><rsub|1>\<otimes\>\<Gamma\><rsub|2>> as in
      proposition <reference|holomorphicity-preserving:prop-tensor-holo>.

      Moreover, if <math|<around*|{|u<rsub|j><rsup|<around*|(|i|)>>|}><rsub|j=1><rsup|\<infty\>>\<in\>\<cal-D\><rprime|'><rsub|\<Gamma\><rsub|i>><around*|(|X<rsub|i>|)>>
      are sequences converging to <math|u<rsup|<around*|(|i|)>>> in
      <math|\<cal-D\><rprime|'><rsub|\<Gamma\><rsub|i>><around*|(|X<rsub|i>|)>>
      for <math|i=1,2> respectively, we have
      <math|u<rsub|j><rsup|<around*|(|1|)>>\<otimes\>u<rsub|j><rsup|<around*|(|2|)>>\<rightarrow\>u<rsup|<around*|(|1|)>>\<otimes\>u<rsup|<around*|(|2|)>>>
      in <math|\<cal-D\><rprime|'><rsub|\<Gamma\><rsub|1>\<otimes\>\<Gamma\><rsub|2>><around*|(|X<rsub|1>\<times\>X<rsub|2>|)>>.
    </fact>

    <\proof>
      (of prop. <reference|holomorphicity-preserving:prop-tensor-holo>) In
      the light of lemma <reference|holomorphicity-preserving:lem-tensor-holo>
      and fact <reference|holomorphicity-preserving:fact-p2>, it suffices to
      show only items 1. and 2. of definition
      <reference|holomorphicity-preserving:def-holo-in-DG>. Of these the
      first one is readily given by fact <reference|holomorphicity-preserving:fact-p1>.
      In turn, as we note that

      <\equation*>
        <frac|d|d\<nu\>><around*|(|u<rsub|\<nu\>><rsup|<around*|(|1|)>>\<otimes\>u<rsub|\<nu\>><rsup|<around*|(|2|)>>|)>=<frac|d|d\<nu\>>u<rsub|\<nu\>><rsup|<around*|(|1|)>>\<otimes\>u<rsub|\<nu\>><rsup|<around*|(|2|)>>+u<rsub|\<nu\>><rsup|<around*|(|1|)>>\<otimes\><frac|d|d\<nu\>>u<rsub|\<nu\>><rsup|<around*|(|2|)>>,
      </equation*>

      hypothesis and fact <reference|holomorphicity-preserving:fact-p2> make
      it clear that <math|<frac|d|d\<nu\>><around*|(|u<rsub|\<nu\>><rsup|<around*|(|1|)>>\<otimes\>u<rsub|\<nu\>><rsup|<around*|(|2|)>>|)>\<in\>\<cal-D\><rprime|'><rsub|\<Gamma\><rsub|1>\<otimes\>\<Gamma\><rsub|2>><around*|(|X<rsub|1>\<times\>X<rsub|2\<nosymbol\>>|)>>.
      Finally, as

      <\equation*>
        <frac|u<rsub|\<nu\>+h><rsup|<around*|(|1|)>>\<otimes\>u<rsub|\<nu\>+h><rsup|<around*|(|2|)>>-u<rsub|\<nu\>><rsup|<around*|(|1|)>>\<otimes\>u<rsub|\<nu\>><rsup|<around*|(|2|)>>|h>=<frac|u<rsub|\<nu\>+h><rsup|<around*|(|1|)>>-u<rsub|\<nu\>><rsup|<around*|(|1|)>>|h>\<otimes\>u<rsub|\<nu\>+h><rsup|<around*|(|2|)>>+u<rsub|\<nu\>><rsup|<around*|(|1|)>>\<otimes\><frac|u<rsub|\<nu\>+h><rsup|<around*|(|2|)>>-u<rsub|\<nu\>><rsup|<around*|(|2|)>>|h>
      </equation*>

      fact <reference|holomorphicity-preserving:fact-p1> shows the second
      item of definition <reference|holomorphicity-preserving:def-holo-in-DG>.
      This ends the proof.
    </proof>

    <\proof>
      (of prop. <reference|holomorphicity-preserving:prop-homog-cts>) Indeed,
      as <math|Re<around*|(|a|)>\<gtr\>0> we have
      <math|u<around*|(|x|)>\<rightarrow\>0> as <math|x\<rightarrow\>0> and
      hence we can continuously extend to
      <math|<wide|u|\<dot\>>\<in\>C<around*|(|\<bbb-R\><rsup|n>|)>> by
      letting <math|<wide|u|\<dot\>><around*|(|0|)>=0>. As
      <math|<wide|u|\<dot\>>> is homogeneous of the same degree, uniqueness
      part of fact <reference|holomorphicity-preserving:fact-homog> ends the
      proof.
    </proof>

    <\proof>
      (of prop. <reference|holomorphicity-preserving:prop-homog-holo>) Lemma
      <reference|holomorphicity-preserving:lem-homog-ctt> grants us the
      continuity of <math|O\<ni\>\<nu\>\<mapsto\><wide|F|\<dot\>><rsub|\<nu\>>>.
      Lemma <reference|holomorphicity-preserving:lem-t+-smth> and requirement
      that <math|F<rsub|\<nu\>>> and <math|a<around*|(|\<nu\>|)>> are
      holomorphic in <math|\<nu\>> imply now that for
      <math|\<nu\>=:<around*|(|z<rsub|1>,z<rsub|2>,\<ldots\>,z<rsub|n>|)>> we
      have Cauchy-Riemann equations <math|<around*|(|\<partial\>/\<partial\><wide|z<rsub|i>|\<bar\>>|)><wide|F|\<dot\>><rsub|\<nu\>>>
      holding for <math|<wide|F|\<dot\>><rsub|\<nu\>>> and the application of
      fact <reference|holomorphicity-preserving:fact-holo> ends the proof.
    </proof>

    <\proof>
      (of prop. <reference|holomorphicity-preserving:prop-pullback-holo>) We
      start with proving the holomorphicity of
      <math|f<rsup|\<ast\>>F<rsub|\<nu\>>\<nosymbol\>>. Indeed, continuity
      (in <math|\<cal-D\><rprime|'><around*|(|X|)>> sense) follows from fact
      <reference|holomorphicity-preserving:fact-pullback>. Moreover, if
      <math|D> denotes any directional derivative in direction <math|h> in
      <math|\<nu\>>, then as <math|<around*|(|F<rsub|\<nu\>+t
      h>-F<rsub|\<nu\>>|)>/<around*|(|t h|)>\<rightarrow\>D F<rsub|\<nu\>>>
      as <math|t\<rightarrow\>0> in <math|\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|Y|)>>
      by hypothesis (it is implied by holomorphicity), again fact
      <reference|holomorphicity-preserving:fact-pullback> together with
      linearity of <math|f<rsup|\<ast\>>> imply that <math|D
      f<rsup|\<ast\>>F<rsub|\<nu\>>=f<rsup|\<ast\>><around*|(|D
      F<rsub|\<nu\>>|)>> and hence as Cauchy-Riemann equations hold for
      <math|F<rsub|\<nu\>>>, they also hold for
      <math|f<rsup|\<ast\>>F<rsub|\<nu\>>> and this implies holomorphicity by
      fact <reference|holomorphicity-preserving:fact-holo>.

      Next, for <math|\<nu\><rsub|n>\<rightarrow\>\<nu\><rsub|0>\<in\>O>, as
      we have <math|F<rsub|\<nu\><rsub|n>>\<rightarrow\>F<rsub|\<nu\><rsub|0>>>
      in <math|\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|Y|)>>, and hence
      <math|f<rsup|\<ast\>>F<rsub|\<nu\><rsub|n>>\<rightarrow\>f<rsup|\<ast\>>F<rsub|\<nu\><rsub|0>>>
      in <math|\<cal-D\><rprime|'><rsub|f<rsup|\<ast\>>\<Gamma\>><around*|(|X|)>>
      by fact <reference|holomorphicity-preserving:fact-pullback>. Finally,
      as for <math|\<nu\><rsub|n>\<rightarrow\>\<nu\><rsub|0>> we have
      <math|<around*|(|F<rsub|\<nu\><rsub|n>>-F<rsub|\<nu\><rsub|0>>|)>/<around*|(|\<nu\><rsub|n>-\<nu\><rsub|0>|)>\<rightarrow\><around*|(|d/d\<nu\>|)>F<rsub|\<nu\>>>
      in <math|\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|Y|)>> by
      hypothesis, we have by linearity of <math|f<rsup|\<ast\>>>

      <\equation*>
        lim<rsub|n\<rightarrow\>\<infty\>><frac|f<rsup|\<ast\>>F<rsub|\<nu\><rsub|n>>-f<rsup|\<ast\>>F<rsub|\<nu\><rsub|0>>|\<nu\><rsub|n>-\<nu\><rsub|0>>=f<rsup|\<ast\>><around*|(|<frac|d|d\<nu\>>F<rsub|\<nu\>>|)>\<nocomma\>,<space|1em>in
        \<cal-D\><rprime|'><rsub|f<rsup|\<ast\>>\<Gamma\>><around*|(|X|)>.
      </equation*>

      hence <math|<around*|(|d/d\<nu\>|)>f<rsup|\<ast\>>F<rsub|\<nu\>>>
      exists and equals to <math|f<rsup|\<ast\>><around*|(|<frac|d|d\<nu\>>F<rsub|\<nu\>>|)>>,
      and the latter is an element of <math|\<cal-D\><rprime|'><rsub|f<rsup|\<ast\>>\<Gamma\>><around*|(|X|)>>,
      by fact <reference|holomorphicity-preserving:fact-pullback>, as
      <math|<around*|(|d/d\<nu\>|)>F<rsub|\<nu\>>\<in\>\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|Y|)>>
      by hypothesis. Moreover, we see that
      <math|<around*|(|f<rsup|\<ast\>>F<rsub|\<nu\><rsub|n>>-f<rsup|\<ast\>>F<rsub|\<nu\><rsub|0>>|)>/<around*|(|\<nu\><rsub|n>-\<nu\><rsub|0>|)>\<rightarrow\><around*|(|d/d\<nu\>|)>f<rsup|\<ast\>>F<rsub|\<nu\>>>
      in <math|\<cal-D\><rprime|'><rsub|f<rsup|\<ast\>>\<Gamma\>><around*|(|X|)>>
      by equality above and this ends the proof.
    </proof>

    <\fact>
      <label|holomorphicity-preserving:fact-p3><cite-detail|hormander1983analysis|thm.
      8.2.3> Let <math|X\<subset\>\<bbb-R\><rsup|n>> be open subset. Choose
      sequence <math|\<chi\><rsub|j>\<in\>C<rsup|\<infty\>><rsub|0><around*|(|X|)>>,
      such that for every <math|K\<subset\>X> compact we have
      <math|\<chi\><rsub|j><mid|\|><rsub|K>\<equiv\>1> for big <math|j>.
      Choose also a sequence <math|0\<leqslant\>\<phi\><rsub|j>\<in\>C<rsub|0><rsup|\<infty\>><around*|(|X|)>>
      such that <math|supp<around*|(|\<phi\><rsub|j>|)>\<downarrow\><around*|{|0|}>>,
      <math|<big|int>\<phi\><rsub|j>=1> and for all <math|j> we have
      <math|supp<around*|(|\<chi\><rsub|j>|)>+supp<around*|(|\<phi\><rsub|j>|)>\<subset\>X>.
      Then for any <math|u<rsub|>\<in\>\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|X|)>>
      we have <math|C<rsup|\<infty\>><rsub|0><around*|(|X|)>\<ni\><around*|(|\<chi\><rsub|j>u|)>\<ast\>\<phi\><rsub|j>\<rightarrow\>u>
      in <math|\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|X|)>>.
    </fact>

    <\proof>
      (of prop. <reference|holomorphicity-preserving:prop-pullback-cts>) In
      the light of fact <reference|holomorphicity-preserving:fact-p3> and the
      fact that sequence in <math|\<cal-D\><rprime|'><around*|(|X|)>> can
      have at most one limit, it suffices to show that
      <math|f<rsup|\<ast\>><around*|(|<around*|(|\<chi\><rsub|j>u|)>\<ast\>\<phi\><rsub|j>|)>=<around*|(|<around*|(|\<chi\><rsub|j>u|)>\<ast\>\<phi\><rsub|j>|)>\<circ\>f\<rightarrow\>u\<circ\>f>
      in <math|\<cal-D\><rprime|'><around*|(|X|)>>. Employing Lebesgue
      dominated convergence, it suffices to show that
      <math|<around*|(|<around*|(|\<chi\><rsub|j>u|)>\<ast\>\<phi\><rsub|j>|)>\<circ\>f\<rightarrow\>u\<circ\>f>
      converges pointwise and <math|<around*|(|<around*|(|\<chi\><rsub|j>u|)>\<ast\>\<phi\><rsub|j>|)>\<circ\>f>
      are uniformly bounded in <math|j> on every compact subset of <math|X>.
      Now, the former is clear, while the latter would follow if we could
      show that <math|<around*|(|\<chi\><rsub|j>u|)>\<ast\>\<phi\><rsub|j>>
      is uniformly bounded in <math|j> on compacta of <math|Y>. But the
      latter is implied by continuity of <math|u> and this ends the proof.
    </proof>
  <|hide-part>
    <section|Holomorphicity preserving>
  </hide-part>

  <\hide-part|11>
    <section|Supports and wavefronts>

    <subsection|Goal and setting>

    \;

    <subsection|Main results>

    <\lemma>
      <label|supp-n-waves:lem-\|x\|-holo-in>For
      <math|\<Gamma\><rsub|0>\<assign\><around*|{|0|}>\<times\><around*|(|\<bbb-R\><rsup|1>\\<around*|{|0|}>|)>>
      closed conic subset of <math|\<bbb-R\>\<times\><around*|(|\<bbb-R\>\\<around*|{|0|}>|)>>
      and <math|\<nu\>\<in\>\<bbb-C\>> we have
      <math|<around*|\||x|\|><rsup|\<nu\>>/\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>>
      being holomorphic in <math|\<cal-D\><rprime|'><rsub|\<Gamma\><rsub|0>><around*|(|\<bbb-R\>|)>>.
    </lemma>

    <\proof>
      First, we note that <math|f<rsub|\<nu\>>\<assign\><around*|\||x|\|><rsup|\<nu\>>/\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>>
      is indeed holomorphically dependent on <math|\<nu\>>. Moreover, as
      restriction of <math|<around*|\||x|\|><rsup|\<nu\>>/\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>>
      to <math|\<bbb-R\>\\<around*|{|0|}>> is <math|C<rsup|\<infty\>>>, it
      follows that <math|<around*|\||x|\|><rsup|\<nu\>>/\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>\<in\>\<cal-D\><rprime|'><rsub|\<Gamma\><rsub|0>><around*|(|\<bbb-R\>|)>>.
      Next, for <math|\<nu\><rsub|n>\<rightarrow\>\<nu\><rsub|0>> we have
      <math|f<rsub|\<nu\><rsub|n>>\<rightarrow\>f<rsub|\<nu\><rsub|0>>> in
      <math|\<cal-D\><rprime|'><rsub|\<Gamma\><rsub|0>><around*|(|\<bbb-R\>|)>>,
      as for <math|\<psi\>\<in\>C<rsup|\<infty\>><rsub|0><around*|(|\<bbb-R\>|)>>
      and closed cone <math|V\<in\>\<bbb-R\>\\<around*|{|0|}>>
      <math|<around*|(|supp<around*|(|\<psi\>|)>\<times\>V|)>\<cap\>\<Gamma\><rsub|0>=
      \<varnothing\>> happens iff <math|supp<around*|(|\<psi\>|)>\<nni\>0>
      and thus it suffices to show that for such <math|\<psi\>> we have

      <\equation>
        \<forall\>N\<in\>\<bbb-Z\><rsub|\<geqslant\>0><space|0.6spc>\<exists\>C<rsub|N><space|0.6spc>\<forall\>\<xi\>\<in\>\<bbb-R\>,<space|1em><around*|\||\<xi\>|\|><rsup|N><around*|\||<wide|\<psi\>f<rsub|\<nu\><rsub|0>>|^><around*|(|\<xi\>|)>-<wide|\<psi\>f<rsub|\<nu\><rsub|n>>|^><around*|(|\<xi\>|)>|\|>\<less\>C<rsub|N>.<label|KR-normalization-recur:eq-1>
      </equation>

      But as <math|\<psi\>f<rsub|\<nu\>>\<in\>C<rsup|\<infty\>><rsub|0>\<subset\>\<cal-S\>>
      if <math|supp<around*|(|\<psi\>|)>\<nni\>0>, we should have for
      <math|D\<assign\>-i<around*|(|d/d x|)>>

      <\equation*>
        <around*|\||\<xi\>|\|><rsup|N><around*|\||<wide|\<psi\>f<rsub|\<nu\><rsub|0>>|^><around*|(|\<xi\>|)>-<wide|\<psi\>f<rsub|\<nu\><rsub|n>>|^><around*|(|\<xi\>|)>|\|>\<leqslant\>sup<rsub|\<xi\>\<in\>\<bbb-R\>><around*|\||D<rsup|N><around*|(|\<psi\><around*|(|f<rsub|\<nu\><rsub|n>>-f<rsub|\<nu\><rsub|0>>|)>|)>|\|>
      </equation*>

      and hence to show equation <reference|KR-normalization-recur:eq-1> it
      suffices to show that <math|f<rsub|\<nu\><rsub|n>>\<rightarrow\>f<rsub|\<nu\><rsub|0>>>
      uniformly on compacta of <math|\<bbb-R\>\\<around*|{|0|}>> with all
      derivatives. But this is obvious, and it shows therefore that for
      <math|\<nu\><rsub|n>\<rightarrow\>\<nu\><rsub|0>> we have
      <math|f<rsub|\<nu\><rsub|n>>\<rightarrow\>f<rsub|\<nu\><rsub|0>>> in
      <math|\<cal-D\><rprime|'><rsub|\<Gamma\><rsub|0>><around*|(|\<bbb-R\>|)>>.

      Next, we need to show that <math|<around*|(|d/d\<nu\>|)>f<rsub|\<nu\>>\<in\>\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|\<bbb-R\>|)>>.
      As above, for this it suffices to show that
      <math|<around*|(|d/d\<nu\>|)>f<rsub|\<nu\>><mid|\|><rsub|\<bbb-R\>\\<around*|{|0|}>>\<in\>C<rsup|\<infty\>>>.
      But this is true, as <math|<around*|\||x|\|><rsup|\<lambda\>><mid|\|><rsub|\<bbb-R\>\\<around*|{|0|}>>>
      is holomorphically dependent on <math|\<lambda\>> and its derivative in
      <math|\<lambda\>> equals to <math|<around*|\||x|\|><rsup|\<lambda\>>ln<around*|\||x|\|>\<in\>\<bbb-C\><rsup|\<infty\>><around*|(|\<bbb-R\>\\<around*|{|0|}>|)>>.

      Finally, it remains to show that for
      <math|\<nu\><rsub|n>\<rightarrow\>\<nu\><rsub|0>> we have
      <math|<around*|(|f<rsub|\<nu\><rsub|n>>-f<rsub|\<nu\><rsub|0>>|)>/<around*|(|\<nu\><rsub|n>-\<nu\><rsub|0>|)>\<rightarrow\><around*|(|d
      f<rsub|\<nu\>>/d\<nu\>|)><around*|(|\<nu\><rsub|0>|)>> in
      <math|\<cal-D\><rprime|'><rsub|\<Gamma\><rsub|0>><around*|(|\<bbb-R\>|)>>.
      As we can write\ 

      <\equation*>
        <frac|<around*|\||x|\|><rsup|\<nu\><rsub|n>>/\<Gamma\><around*|(|<frac|\<nu\><rsub|n>+1|2>|)>-<around*|\||x|\|><rsup|\<nu\><rsub|0>>/\<Gamma\><around*|(|<frac|\<nu\><rsub|0>+1|2>|)>|\<nu\><rsub|n>-\<nu\><rsub|0>>=<frac|<frac|<around*|\||x|\|><rsup|\<nu\><rsub|n>>-<around*|\||x|\|><rsup|\<nu\><rsub|0>>|\<nu\><rsub|n>-\<nu\><rsub|0>>|\<Gamma\><around*|(|<frac|\<nu\><rsub|n>+1|2>|)>>-f<rsub|\<nu\><rsub|0>><frac|<frac|\<Gamma\><around*|(|<frac|\<nu\><rsub|n>+1|2>|)>-\<Gamma\><around*|(|<frac|\<nu\><rsub|0>+1|2>|)>|\<nu\><rsub|n>-\<nu\><rsub|0>>|\<Gamma\><around*|(|<frac|\<nu\><rsub|n>+1|2>|)>>
      </equation*>

      and we've shown above that <math|<around*|\||x|\|><rsup|\<nu\><rsub|n>>\<rightarrow\><around*|\||x|\|><rsup|\<nu\><rsub|0>>>
      uniformly with all derivatives on compacta of
      <math|\<bbb-R\><rsup|n>\\<around*|{|0|}>>, it suffices to show that

      <\equation*>
        <frac|<around*|\||x|\|><rsup|\<nu\><rsub|n>>-<around*|\||x|\|><rsup|\<nu\><rsub|0>>|\<nu\><rsub|n>-\<nu\><rsub|0>>\<rightarrow\><around*|\||x|\|><rsup|\<nu\><rsub|0>>ln<around*|\||x|\|>
      </equation*>

      with all derivatives uniformly on compacta of
      <math|\<bbb-R\>\\<around*|{|0|}>>. But this is clear and the statement
      is proven.
    </proof>

    <\lemma>
      <label|supp-n-waves:lem-supp-xp>For
      <math|\<lambda\>\<nin\>-1-2\<bbb-Z\><rsub|\<geqslant\>0>> we have:

      <\enumerate>
        <item><math|<around*|\||x|\|><rsup|\<lambda\>>/\<Gamma\><around*|(|<around*|(|\<lambda\>+1|)>/2|)>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\>|)>>
        is nonvanishing smooth function when restricted to
        <math|\<bbb-R\>\\<around*|{|0|}>>;

        <item><math|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>>/\<Gamma\><around*|(|<around*|(|\<lambda\>+1|)>/2|)>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>|)>>
        is nonzero smooth when restricted to
        <math|<around*|{|x<rsub|p>\<neq\>0|}>>;

        <item><math|<around*|\||Q|\|><rsup|\<lambda\>>/\<Gamma\><around*|(|<around*|(|\<lambda\>+1|)>/2|)>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>>
        is nonzero smooth when restricted to <math|<around*|{|Q\<neq\>0|}>>.
      </enumerate>

      \ 
    </lemma>

    <\proof>
      Let's first show the first item. It is clear, as when
      <math|\<lambda\>\<nin\>-1-2\<bbb-Z\><rsub|\<geqslant\>0>> we have
      <math|<around*|\||x|\|><rsup|\<lambda\>>/\<Gamma\><around*|(|<around*|(|\<lambda\>+1|)>/2|)>>
      being proportional to <math|<around*|\||x|\|><rsup|\<lambda\>>> and the
      latter is nonvanishing smooth on <math|\<bbb-R\>\\<around*|{|0|}>>.

      The second item also follows, as we recall that we may view
      <math|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>>/\<Gamma\><around*|(|<around*|(|\<lambda\>+1|)>/2|)>>
      as a pullback of <math|<around*|\||x|\|><rsup|\<lambda\>>/\<Gamma\><around*|(|<around*|(|\<lambda\>+1|)>/2|)>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\>|)>>
      by <math|\<bbb-R\><rsup|n>\\<around*|{|0|}>\<ni\>x\<mapsto\>x<rsub|p>\<in\>\<bbb-R\>>.
      The second item is then clear, as pullback commutes with restriction
      (more precisely, applying lemma <reference|KR-normalization-recur:lem-pull-comm-restr>
      with <math|<around*|(|A<rsub|1>,A<rsub|2>|)>\<assign\><around*|(|<around*|{|Q\<neq\>0|}>,\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>>,
      <math|<around*|(|B<rsub|1>,B<rsub|2>|)>\<assign\><around*|(|\<bbb-R\>\\<around*|{|0|}>,\<bbb-R\>|)>>,
      <math|f<around*|(|x|)>\<assign\>Q<around*|(|x|)>> and
      <math|\<Gamma\>\<assign\>\<bbb-R\>\<times\><around*|(|\<bbb-R\>\\<around*|{|0|}>|)>>)
      and pullback of smooth nonzero is smooth nonzero.

      Similarly, the third item is shown, as
      <math|<around*|\||Q|\|><rsup|\<lambda\>>/\<Gamma\><around*|(|<around*|(|\<lambda\>+1|)>/2|)>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>>
      is pullback of <math|<around*|\||x|\|><rsup|\<lambda\>>/\<Gamma\><around*|(|<around*|(|\<lambda\>+1|)>/2|)>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\>|)>>
      \ by <math|Q:\<bbb-R\><rsup|p,q>\\<around*|{|0|}>\<rightarrow\>\<bbb-R\>>.
    </proof>

    <\lemma>
      <label|supp-n-waves:lem-at-least>For <math|\<lambda\>\<in\>\<bbb-C\>>
      and distributions <math|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>>/\<Gamma\><around*|(|<around*|(|\<lambda\>+1|)>/2|)>,<around*|\||Q|\|><rsup|\<lambda\>>/\<Gamma\><around*|(|<around*|(|\<lambda\>+1|)>/2|)>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>>
      we have \ these supported at least on <math|<around*|{|x<rsub|p>=0|}>>
      and <math|<around*|{|Q=0|}>> respectively.
    </lemma>

    <\proof>
      The statement is readily true for <math|\<lambda\>\<nin\>-1-2\<bbb-Z\><rsub|\<geqslant\>0>>
      in the light of lemma <reference|supp-n-waves:lem-supp-xp>, so we
      restrict ourselves to <math|\<lambda\>\<in\>-1-2\<bbb-Z\><rsub|\<geqslant\>0>>.

      We start with proving the statement for
      <math|<around*|\||Q|\|><rsup|\<lambda\>>/\<Gamma\><around*|(|<around*|(|\<lambda\>+1|)>/2|)>>,
      which can be seen as pullback of <math|<around*|\||x|\|><rsup|\<lambda\>>/\<Gamma\><around*|(|<around*|(|\<lambda\>+1|)>/2|)>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\>|)>>
      \ by <math|Q:\<bbb-R\><rsup|p,q>\\<around*|{|0|}>\<rightarrow\>\<bbb-R\>>.
      Locally near every point of <math|<around*|{|Q=0|}>> we can define
      coordinate system in which the first coordinate will be equal to
      <math|Q<around*|(|x|)>>. Then, the way pullback was defined in
      <cite|hormander1983analysis> tells us that locally
      <math|<around*|\||Q|\|><rsup|\<lambda\>>/\<Gamma\><around*|(|<around*|(|\<lambda\>+1|)>/2|)>>
      is just <math|<around*|\||x|\|><rsup|\<lambda\>>/\<Gamma\><around*|(|<around*|(|\<lambda\>+1|)>/2|)>\<otimes\>1<rsub|\<bbb-R\><rsup|n>>=\<delta\><rsup|<around*|(|-\<lambda\>-1|)>>\<otimes\>1<rsub|\<bbb-R\><rsup|n>>>
      and as latter is supported on <math|supp<around*|(|\<delta\><rsup|<around*|(|-\<lambda\>-1|)>>|)>\<times\>\<bbb-R\><rsup|n-1>=<around*|{|0|}>\<times\>\<bbb-R\><rsup|n-1>>,
      we are done for <math|<around*|\||Q|\|><rsup|\<lambda\>>/\<Gamma\><around*|(|<around*|(|\<lambda\>+1|)>/2|)>>.
      The proof for <math|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>>/\<Gamma\><around*|(|<around*|(|\<lambda\>+1|)>/2|)>>
      is done similarly.
    </proof>
  <|hide-part>
    <section|Supports and wavefronts>
  </hide-part>

  <\hide-part|12>
    <section|P-def>

    <subsection|Setting and Goal>

    In this note we develop a few basic properties of meromorphic
    distributions depending on parameter. We recall that for open connected
    <math|O\<subset\>\<bbb-C\><rsup|>> and discrete <math|P\<subset\>O>
    (``discrete'' here means that every point of <math|P> has neighborhood in
    <math|O> which contains no other points of <math|P>), we say and familiy
    of distributions <math|<around*|{|f<rsub|\<nu\>>|}><rsub|\<nu\>\<in\>O\\P>>
    is <with|font-shape|italic|meromorphic in <math|\<nu\>\<in\>O>> if for
    every <math|\<varphi\>\<in\>C<rsub|c><rsup|\<infty\>>> we have
    <math|O\<ni\>\<nu\>\<mapsto\><around*|\<langle\>|f<rsub|\<nu\>>,\<varphi\>|\<rangle\>>\<in\>\<bbb-C\>>
    being meromorphic on <math|O> and holomorphic on <math|O\\X>.

    <subsection|Main results>

    <\fact>
      (<cite-detail|gelfand1980distribution|appendix A>)
      <label|P-def:fact-gelfand>Let <math|<around*|{|f<rsub|n>|}><rsub|n>\<subset\>\<cal-D\><rprime|'><around*|(|X|)>>
      (with <math|X>: open subset of Euclidean space), be sequence of
      distributions such that <math|\<forall\>\<varphi\>\<in\>C<rsup|\<infty\>><rsub|c>>
      we have <math|<around*|\<langle\>|f<rsub|n>,\<varphi\>|\<rangle\>>>
      being convergent. Then there's <math|f\<in\>\<cal-D\><rprime|'><around*|(|X|)>>
      such that <math|\<forall\>\<varphi\>\<in\>C<rsup|\<infty\>><rsub|c>> we
      have <math|lim<rsub|n\<rightarrow\>\<infty\>><around*|\<langle\>|f<rsub|n>,\<varphi\>|\<rangle\>>=<around*|\<langle\>|f,\<varphi\>|\<rangle\>>>.
    </fact>

    <\lemma>
      <label|P-def:lem-laurent-distr>If one fixes
      <math|\<nu\><rsub|0>\<in\>O> and for fixed
      <math|\<alpha\>\<in\>\<bbb-Z\><rsup|>> let
      <math|<around*|(|\<varphi\>|)><rsup|\<alpha\>>> denotes the
      <math|\<alpha\>>-th term of Laurent expansion of
      <math|\<nu\>\<mapsto\><around*|\<langle\>|f<rsub|\<nu\>>,\<varphi\>|\<rangle\>>>
      at <math|\<nu\><rsub|0>>, then <math|\<varphi\>\<mapsto\><around*|(|\<varphi\>|)><rsup|\<alpha\>>>
      defines a distribution. Moreover, if <math|S> is closed smooth contour
      around <math|\<nu\><rsub|0>> small enough so that
      <math|\<forall\>\<varphi\>\<in\>C<rsup|\<infty\>><rsub|c>,<space|0.6spc><around*|\<langle\>|f<rsub|\<nu\>>,\<varphi\>|\<rangle\>>>
      is holo on <math|S>, then\ 

      <\equation*>
        <around*|(|\<varphi\>|)><rsup|\<alpha\>>=<frac|1|2\<pi\>i><big|int><rsub|S><frac|<around*|\<langle\>|f<rsub|\<nu\>>,\<varphi\>|\<rangle\>>|<around*|(|\<nu\>-\<nu\><rsub|0>|)><rsup|\<alpha\>+1>>d\<nu\>
      </equation*>
    </lemma>

    <\proof>
      The last assertion follows from complex analysis, as
      <math|\<nu\>\<mapsto\><around*|\<langle\>|f<rsub|\<nu\>>,\<varphi\>|\<rangle\>>>
      is meromorphic.

      Now, if we take <math|<around*|{|\<Gamma\><rsub|n>|}><rsub|n=1><rsup|\<infty\>>>
      to be partitions of <math|S> with diameter tending to zero, we have

      <\equation*>
        lim<rsub|n\<rightarrow\>\<infty\>><frac|1|2\<pi\>i><big|sum><rsub|\<gamma\>\<in\>\<Gamma\>><frac|<around*|\<langle\>|f<rsub|\<gamma\>>,\<varphi\>|\<rangle\>>|<around*|(|\<gamma\>-\<nu\><rsub|0>|)><rsup|\<alpha\>+1>>d\<gamma\><rsub|>=<frac|1|2\<pi\>i><big|int><rsub|S><frac|<around*|\<langle\>|f<rsub|\<nu\>>,\<varphi\>|\<rangle\>>|<around*|(|\<nu\>-\<nu\><rsub|0>|)><rsup|\<alpha\>+1>>d\<nu\>
      </equation*>

      and as every term under limit in left-hand side is a well-defined
      distribution, we have <math|\<varphi\>\<mapsto\><frac|1|2\<pi\>i><big|int><rsub|S><frac|<around*|\<langle\>|f<rsub|\<nu\>>,\<varphi\>|\<rangle\>>|<around*|(|\<nu\>-\<nu\><rsub|0>|)><rsup|\<alpha\>+1>>d\<nu\>>
      defining a generalized function from the fact
      <reference|P-def:fact-gelfand>.
    </proof>

    <\lemma>
      <label|P-def:lem-mero-addition>Let <math|<around*|{|F<rsub|n><rsup|\<nu\>>|}><rsub|n>>
      be a finite family of meromorphic distributions depending on
      <math|\<nu\>\<in\>O>. Then <math|F<rsup|\<nu\>>\<assign\><big|sum><rsub|n>F<rsub|n><rsup|\<nu\>>>
      is also meromorphic distribution and at every point
      <math|\<nu\>\<in\>O> if we let <math|F<rsup|\<nu\>>=:<big|sum><rsub|k>F<rsub|k><rsup|><around*|(|\<nu\>-\<nu\><rsub|0>|)><rsup|k>>
      and <math|F<rsup|\<nu\>><rsub|n>=:<big|sum><rsub|k>F<rsup|n><rsub|k><around*|(|\<nu\>-\<nu\><rsub|0>|)><rsup|k>>
      be Laurent expansions, then <math|\<forall\>k,<space|0.6spc>F<rsub|k>=<big|sum><rsub|n>F<rsub|k><rsup|n>>.
    </lemma>

    <\proof>
      Follows directly from lemma <reference|P-def:lem-laurent-distr> and
      additivity of integral.
    </proof>

    <\definition>
      <label|def-P>Given the meromorphic function <math|f> not identicall
      zero with argument <math|\<nu\>\<in\>\<bbb-C\>> we define the map
      <math|\<frak-P\><around*|(|f|)>:\<bbb-C\>\<rightarrow\>\<bbb-Z\>> with
      <math|\<frak-P\><around*|(|f|)><around*|(|\<nu\><rsub|0>|)>=-m\<in\>-\<bbb-Z\><rsub|\<gtr\>0>>
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

      It is notational convention that <math|\<frak-P\><around*|(|0|)>\<assign\>-\<infty\>>
      constant function assigning <math|-\<infty\>>, although the latter does
      not belong to <math|\<bbb-C\>\<rightarrow\>\<bbb-Z\>>.

      For <math|f,g:\<bbb-C\>\<rightarrow\>\<bbb-Z\>> we will write
      <math|f\<leqslant\>g> to denote the inequality holding on
      <math|\<bbb-C\>>. For <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<Lambda\>>>
      being the set of <math|\<bbb-C\>\<rightarrow\>\<bbb-Z\>> functions, we
      let <math|max<around*|{|f<rsub|i>|}><rsub|i\<in\>\<Lambda\>>> and
      <math|<big|sum><around*|{|f<rsub|i>|}><rsub|i\<in\>\<Lambda\>>> to
      denote pointwise maximum and sum respectively. When needing infix
      notation, we will use <math|\<cup\>> and <math|+> respectively.

      Although ambiguous, we will sometimes denote
      <math|f:\<bbb-C\>\<rightarrow\>\<bbb-Z\>> satisfying
      <math|f\<leqslant\>1> on <math|\<bbb-C\>> with sets
      <math|<around*|{|f\<neq\>0|}>>, so <math|<around*|{|\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>|}>>,
      for example, may be used to denote <math|\<frak-P\><around*|(|\<Gamma\><around*|(|\<cdot\>|)>|)>>.
    </definition>

    <\remark>
      <label|P-def:rem-def-P>The following properties of
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
        and <math|\<frak-P\><around*|(|f\<cdot\>g|)>=\<frak-P\><around*|(|f|)>+\<frak-P\><around*|(|g|)>>;

        <item>For <math|F<rsub|\<nu\>>> meromorphic distribution we have
        <math|\<frak-P\><around*|(|F<rsub|\<nu\>>|)>=max<around*|{|<around*|\<langle\>|F<rsub|\<nu\>>,\<varphi\>|\<rangle\>>|}><rsub|\<varphi\>\<in\>C<rsup|\<infty\>><rsub|c>>>;
      </enumerate>

      Similar statements hold for meromorphic distributions on
      <math|\<bbb-C\>> as well.
    </remark>

    <\lemma>
      <label|P-def:lem-delta-times-mero>If
      <math|F<rsub|\<nu\>>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>|)>>
      is meromorphic distribution depending on <math|\<nu\>\<in\>\<bbb-C\>>,
      then for <math|0\<neq\>P\<in\>D<rprime|'><around*|(|\<bbb-R\><rsup|m>|)>>
      we have <math|P\<otimes\>F<rsub|\<nu\>>> being meromorphic distribution
      and <math|\<frak-P\><around*|(|P\<otimes\>F<rsub|\<nu\>>|)>=\<frak-P\><around*|(|F<rsub|\<nu\>>|)>>.
      Moreover, if <math|F<rsub|\<nu\>>=<big|sum><rsub|i>F<rsub|i><around*|(|\<nu\>-\<nu\><rsub|0>|)><rsup|i>>
      and <math|P\<otimes\>F<rsub|\<nu\>>=<big|sum><rsub|i>f<rsub|i>\<cdot\><around*|(|\<nu\>-\<nu\><rsub|0>|)><rsup|i>>
      are Laurent expansions of <math|F<rsub|\<nu\>>> and
      <math|P\<otimes\>F<rsub|\<nu\>>> respectively at some
      <math|\<nu\>\<in\>\<bbb-C\>>, we have
      <math|f<rsub|i>=P\<otimes\>F<rsub|i>>.
    </lemma>

    <\proof>
      Let's first show that for every <math|\<varphi\>\<in\>C<rsub|c><rsup|\<infty\>>>,
      <math|\<nu\>\<mapsto\><around*|\<langle\>|P\<otimes\>F<rsub|\<nu\>>,\<varphi\>|\<rangle\>>>
      is meromorphic. Indeed, let us employ variable split of
      <math|R<rsup|m+n>> as <math|<around*|(|x,y|)>> with
      <math|x\<in\>\<bbb-R\><rsup|m>> and <math|y\<in\>\<bbb-R\><rsup|n>>. It
      is known from <cite-detail|hormander1983analysis|thm. 5.1.1> that
      <math|<around*|\<langle\>|P\<otimes\>F<rsub|\<nu\>>,\<varphi\><around*|(|\<cdot\>,\<cdot\>|)>|)>=<around*|\<langle\>|F<rsub|\<nu\>>,y\<mapsto\><around*|\<langle\>|P,\<varphi\><around*|(|\<cdot\>,y|)>|\<rangle\>>|\<rangle\>>>
      and the rightmost is meromorphic.

      It suffices now to show the last assertion. Again, from
      <cite-detail|hormander1983analysis|thm. 5.1.1>, it suffices to show
      that for <math|\<varphi\>\<in\>C<rsup|\<infty\>><rsub|c><around*|(|\<bbb-R\><rsup|n>|)>>
      and <math|\<psi\>\<in\>C<rsub|c><rsup|\<infty\>><around*|(|\<bbb-R\><rsup|m>|)>>
      we have <math|<around*|\<langle\>|f<rsub|i>,\<psi\>\<otimes\>\<varphi\>|\<rangle\>>=<around*|\<langle\>|P,\<psi\>|\<rangle\>>\<cdot\><around*|\<langle\>|F<rsub|i>,\<varphi\>|\<rangle\>>>.
      But by lemma <reference|P-def:lem-laurent-distr> we have

      <\equation*>
        <around*|\<langle\>|f<rsub|i>,\<psi\>\<otimes\>\<varphi\>|\<rangle\>>=<frac|1|2\<pi\>i><big|int><rsub|S><frac|<around*|\<langle\>|P\<otimes\>F<rsub|\<nu\>>,\<psi\>\<otimes\>\<varphi\>|\<rangle\>>|<around*|(|\<nu\>-\<nu\><rsub|0>|)><rsup|i+1>>=<frac|1|2\<pi\>i><big|int><rsub|S><frac|<around*|\<langle\>|P,\<psi\>|\<rangle\>><around*|\<langle\>|F<rsub|\<nu\>>,\<varphi\>|\<rangle\>>|<around*|(|\<nu\>-\<nu\><rsub|0>|)><rsup|i+1>>=<around*|\<langle\>|P,\<psi\>|\<rangle\>><frac|1|2\<pi\>i><big|int><rsub|S><frac|<around*|\<langle\>|F<rsub|\<nu\>>,\<varphi\>|\<rangle\>>|<around*|(|\<nu\>-\<nu\><rsub|0>|)><rsup|i+1>>=<around*|\<langle\>|P,\<psi\>|\<rangle\>>\<cdot\><around*|\<langle\>|F<rsub|i>,\<varphi\>|\<rangle\>>.
      </equation*>
    </proof>

    <\lemma>
      <label|P-def:lem-delta-max>Let <math|<around*|{|F<rsub|\<nu\>><rsub|><rsup|<around*|(|i|)>><rsub|>|}><rsub|i>>
      be finite set of meromorphic distributions depending on
      <math|\<nu\>\<in\>\<bbb-C\>>. Then <math|\<frak-P\><around*|(|<big|sum><rsub|i>\<delta\><rsup|<around*|(|i|)>>\<otimes\>F<rsup|<around*|(|i|)>><rsub|\<nu\>>|)>=max<around*|{|\<frak-P\><around*|(|F<rsub|\<nu\>><rsup|<around*|(|i|)>>|)>|}><rsub|i>>.
    </lemma>

    <\proof>
      As <math|\<leqslant\>> follows from lemmas
      <reference|P-def:lem-mero-addition> and
      <reference|P-def:lem-delta-times-mero>, it suffices to show the
      <math|\<geqslant\>>. Suppose that at <math|\<nu\>=\<nu\><rsub|0>> we
      have <math|\<frak-P\><around*|(|F<rsub|\<nu\>><rsup|<around*|(|i<rsub|0>|)>>|)><around*|(|\<nu\><rsub|0>|)>=max<around*|{|\<frak-P\><around*|(|F<rsub|\<nu\>><rsup|<around*|(|i|)>>|)>|}><rsub|i><around*|(|\<nu\><rsub|0>|)>>.
      This means that for some <math|u\<in\>\<cal-D\>> we have
      <math|\<frak-P\><around*|(|F<rsub|\<nu\>><rsup|<around*|(|i<rsub|0>|)>><around*|(|u|)>|)><around*|(|\<nu\><rsub|0>|)>=\<frak-P\><around*|(|F<rsub|\<nu\>><rsup|<around*|(|i<rsub|0>|)>>|)><around*|(|\<nu\><rsub|0>|)>>.
      Hence, taking <math|\<varphi\>\<in\>\<cal-D\><around*|(|\<bbb-R\>|)>>
      that equals to <math|x<rsup|i<rsub|0>>> near <math|x=0>, we have
      <math|\<frak-P\><around*|(|<big|sum><rsub|i>\<delta\><rsup|<around*|(|i|)>>\<otimes\>F<rsup|<around*|(|i|)>><rsub|\<nu\>>|)><around*|(|\<nu\><rsub|0>|)>\<geqslant\>\<frak-P\><around*|(|<around*|\<langle\>|<big|sum><rsub|i>\<delta\><rsup|<around*|(|i|)>>\<otimes\>F<rsup|<around*|(|i|)>><rsub|\<nu\>>,\<varphi\>\<otimes\>u|\<rangle\>>|)><around*|(|\<nu\><rsub|0>|)>=\<frak-P\><around*|(|F<rsub|\<nu\>><rsup|<around*|(|i<rsub|0>|)>><around*|(|u|)>|)><around*|(|\<nu\><rsub|0>|)>=max<around*|{|\<frak-P\><around*|(|F<rsub|\<nu\>><rsup|<around*|(|i|)>>|)>|}><rsub|i><around*|(|\<nu\><rsub|0>|)>>.
    </proof>

    <\lemma>
      <label|P-def:lem-mero-supp>Suppose <math|<around*|{|F<rsub|i><rsup|\<nu\>>|}><rsub|i>\<subset\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>|)>>
      is a finite family of meromorphic distributions depending on
      <math|\<nu\>\<in\>\<bbb-C\>> and <math|\<frak-P\><around*|(|F|)><around*|(|\<nu\><rsub|0>|)>=m>
      for <math|F\<assign\><big|sum><rsub|i>\<delta\><rsup|<around*|(|i|)>>\<otimes\>F<rsub|i><rsup|\<nu\>>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n+1>|)>>,
      <math|\<delta\><rsup|<around*|(|i|)>>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\>|)>>
      and some <math|<around*|(|\<nu\><rsub|0>,m|)>\<in\>\<bbb-C\><around*|\<nobracket\>|\<times\>\<bbb-Z\>|\<nobracket\>>>.
      Then, for Laurent expansions <math|F<rsub|i><rsup|\<nu\>>=:<big|sum><rsub|k=-m><rsup|\<infty\>>F<rsub|i><rsup|<around*|(|k|)>>\<cdot\><around*|(|\<nu\>-\<nu\><rsub|0>|)><rsup|k>>
      and <math|F=:<big|sum><rsub|k=-m><rsup|\<infty\>>F<rsup|<around*|(|k|)>>\<cdot\><around*|(|\<nu\>-\<nu\><rsub|0>|)><rsup|k>>
      with <math|F<rsub|i><rsup|<around*|(|k|)>>,F<rsup|<around*|(|k|)>>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>|)>>
      we have <math|supp<around*|(|F<rsub|><rsup|<around*|(|-m|)>>|)>=<around*|{|0|}>\<times\><around*|(|<big|cup><rsub|i>F<rsub|i><rsup|<around*|(|-m|)>>|)><rsup|>>.
    </lemma>

    <\proof>
      Lemmas <reference|P-def:lem-mero-addition> and
      <reference|P-def:lem-delta-times-mero> imply that
      <math|F<rsup|<around*|(|-m|)>>=<big|sum><rsub|i>\<delta\><rsup|<around*|(|i|)>>\<otimes\>F<rsub|i><rsup|<around*|(|-m|)>>>
      \ and then result follows easily. Indeed, ``<math|\<subset\>>'' will
      then follows immediately, and conversely for, say
      <math|x<rsub|0>\<in\>supp<around*|(|F<rsub|i<rsub|0>><rsup|<around*|(|-m|)>>|)>>
      and arbitrary given neighborhood <math|\<bbb-R\><rsup|n+1>\<supset\>M\<ni\><around*|{|0|}>\<times\>x<rsub|0>>
      we can take neighborhoods <math|\<bbb-R\><rsup|n>\<supset\>N\<ni\>x<rsub|0>>
      and <math|\<bbb-R\>\<supset\>N<rprime|'>\<ni\><around*|{|0|}>> small
      enough so that <math|M\<supset\>N<rprime|'>\<times\>N> and
      <math|\<varphi\><rsub|N>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>|)>>
      with <math|supp<around*|(|\<varphi\><rsub|N>|)>\<subset\>N> and
      <math|<around*|\<langle\>|F<rsub|i<rsub|0>><rsup|<around*|(|-m|)>>,\<varphi\><rsub|N>|\<rangle\>>\<neq\>0>.
      Then, taking <math|\<psi\>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\>|)>>
      which would be equal to <math|x<rsup|i<rsub|0>>> near 0 and have
      <math|supp<around*|(|\<psi\>|)>\<subset\>N<rprime|'>>, we have
      <math|supp<around*|(|\<psi\>\<otimes\>\<varphi\>|)>\<subset\>M> and
      <math|<around*|\<langle\>|F<rsup|<around*|(|-m|)>>,\<psi\>\<otimes\>\<varphi\><rsub|N>|\<rangle\>>\<simeq\><around*|\<langle\>|F<rsub|i<rsub|0>><rsup|<around*|(|-m|)>>,\<varphi\><rsub|N>|\<rangle\>>\<neq\>0>.
    </proof>

    <\definition>
      <label|P-def:def-9>For meromorphic distribution or meromorphic function
      <math|F<rsub|\<nu\>>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>|)>>
      on <math|\<nu\>\<in\>O\<subset\>\<bbb-C\>> one may also define
      <math|\<frak-P\><rsup|e><around*|(|F<rsub|\<nu\>>|)>:O\<rightarrow\>\<bbb-Z\>\<times\>2<rsup|\<bbb-R\><rsup|n>>>
      (with <math|2<rsup|\<bbb-R\><rsup|n>>> denoting the collection of
      subsets of <math|\<bbb-R\><rsup|n>>) with first coordinate being equal
      to <math|\<frak-P\><around*|(|F<rsub|\<nu\>>|)>> and the second being
      equal to support of highest term of Laurent expansion at given
      <math|\<nu\>\<in\>O>.

      We shall also set the partial ordering on
      <math|\<bbb-Z\>\<times\>2<rsup|\<bbb-R\><rsup|n>>> (where
      <math|2<rsup|\<bbb-R\><rsup|n>>> denotes the set of subsets of
      <math|\<bbb-R\><rsup|n>>) with <math|<around*|(|a,A|)>\<succcurlyeq\><around*|(|b,B|)>>
      iff <math|a\<gtr\>b> or (<math|a=b> and <math|A\<supseteq\>B>).
    </definition>

    <\remark>
      \ 

      <\enumerate>
        <item>In case of meromorphic function, it's highest term is
        necessarily nonzero constant, hence has support
        <math|\<bbb-R\><rsup|n>>.

        <item>The ordering set on <math|\<bbb-Z\>\<times\>\<bbb-R\><rsup|n>>
        enables us to talk of <math|\<geqslant\>> regarding to members of
        <math|O\<rightarrow\>\<bbb-Z\>\<times\>2<rsup|\<bbb-R\><rsup|n>>> as
        well (<math|\<geqslant\>> being meant to be pointwise). One may
        similarly talk of maximum and sum of elements of
        <math|O\<rightarrow\>\<bbb-Z\>\<times\>\<bbb-R\><rsup|n>>, having to
        take respectively union and intersection of the supports

        <item>Remark <reference|P-def:rem-def-P> holds literally with
        <math|\<frak-P\>> replaced by <math|\<frak-P\><rsup|e>>. Subsequent
        lemmas also hold with obvious modifications, in particular lemma
        <reference|P-def:lem-delta-max> can then be restated as
        <math|\<frak-P\><rsup|e><around*|(|<big|sum><rsub|i>\<delta\><rsup|<around*|(|i|)>><around*|(|x|)>\<otimes\>F<rsub|i><rsup|\<nu\>>|)>=<around*|{|0|}>\<times\>max<around*|{|\<frak-P\><rsup|e><around*|(|F<rsub|i><rsup|\<nu\>>|)>|}><rsub|i>>,
        where for <math|p\<in\>\<bbb-C\>\<rightarrow\>\<bbb-Z\>\<times\>\<bbb-R\><rsup|n>>
        we let <math|<around*|{|0|}>\<times\>p\<in\>\<bbb-C\>\<rightarrow\>\<bbb-Z\>\<times\>\<bbb-R\><rsup|n+1>>
        by <math|<around*|(|<around*|{|0|}>\<times\>p|)><around*|(|\<nu\>|)>=<around*|(|p<rsub|1><around*|(|\<nu\>|)>,<around*|{|0|}>\<times\>p<rsub|2><around*|(|\<nu\>|)>|)>>
        where <math|p<rsub|1>> and <math|p<rsub|2>> are compositions of
        <math|p> with projections onto first and second coordinates
        respectively.
      </enumerate>
    </remark>

    <subsection|Combinatorial lemmas>

    In what follows we will have to compute on several occasions
    <math|max<around*|{|\<frak-P\><around*|(|f<rsub|i>|)>|}><rsub|i\<in\>\<Lambda\>>>
    for <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<Lambda\>>> being
    meromorphic functions. A few simple lemmas of combinatorial nature that
    we state and prove below will facilitate these computations.

    <\lemma>
      <label|P-def:lem-threeset>Suppose that
      <math|<around*|{|A<rsub|N>|}><rsub|N>>,
      <math|<around*|{|B<rsub|N>|}><rsub|N>> and
      <math|<around*|{|C<rsub|N>|}><rsub|N>> are three families of sets
      indexed with <math|N\<in\>\<Lambda\>>. Then, the following holds:
    </lemma>

    <\enumerate>
      <item>If <math|\<forall\>N,<space|0.75spc>N<rprime|'>\<in\>\<Lambda\>>
      we have <math|A<rsub|N<rprime|'>>\<cap\>B<rsub|N>=\<emptyset\>>, then
      <math|<big|cap><rsub|N\<in\>\<Lambda\>><around*|(|A<rsub|N>\<cup\>B<rsub|N>|)>=<big|cap><rsub|N\<in\>\<Lambda\>>A<rsub|N>\<cup\><big|cap><rsub|N\<in\>\<Lambda\>>B<rsub|N>>.

      <item>If <math|\<forall\>N,<space|0.75spc>N<rprime|'>\<in\>\<Lambda\>>
      we have <math|A<rsub|N<rprime|'>>\<cap\>B<rsub|N>=\<emptyset\>>,
      <math|x\<in\><big|cap><rsub|N\<in\>\<Lambda\>><around*|(|A<rsub|N>\<cup\>B<rsub|N>\<cup\>C<rsub|N>|)>>
      and <math|\<exists\>N<rsub|0>\<in\>\<Lambda\>>, such that
      <math|A<rsub|N<rsub|0>>\<ni\>x>, then
    </enumerate>

    <\proof>
      We will prove only the second assertion. Assume on contrary that
      <math|x\<nin\><big|cap><rsub|N\<in\>\<Lambda\>><around*|(|A<rsub|N>\<cup\>C<rsub|N>|)>>
      and hence for some <math|N<rsub|1>> we should have
      <math|x\<nin\>A<rsub|N<rsub|1>>\<cup\>C<rsub|N<rsub|1>>>. Now, this
      implies that <math|x\<in\>B<rsub|N<rsub|1>>>and hence that
      <math|A<rsub|N<rsub|0>>\<cap\>B<rsub|N<rsub|1>>\<ni\>x>, thus giving a
      contradiction.
    </proof>

    <\lemma>
      <label|lem-4>Let <math|<around*|{|f<rsup|<around*|(|j|)>><rsub|i>|}><rsub|i\<in\>\<Lambda\>>>
      for <math|j=1,2,3> be three families of
      <math|\<bbb-C\><rsup|k>\<rightarrow\>\<bbb-Z\><rsub|\<geqslant\>0>>
      functions and suppose that for all <math|i,j\<in\>\<Lambda\>> we have
      sets <math|<around*|{|f<rsup|<around*|(|1|)>><rsub|i>\<neq\>0|}>> and
      <math|<around*|{|f<rsub|j><rsup|<around*|(|2|)>>\<neq\>0|}>> being
      disjoint. Assume moreover that for some
      <math|i<rsub|0>\<in\>\<Lambda\>> we have
      <math|f<rsup|<around*|(|1|)>><rsub|i<rsub|0>>\<equiv\>0> and
      <math|f<rsup|<around*|(|3|)>><rsub|i<rsub|0>>=min<around*|{|f<rsub|i><rsup|<around*|(|3|)>>|}>>.
      Then <math|min<around*|{|<big|sum><rsub|j=1><rsup|3>f<rsup|<around*|(|j|)>><rsub|i>|}><rsub|i>=min<around*|{|<big|sum><rsub|j=2><rsup|3>f<rsub|i><rsup|<around*|(|j|)>>|}><rsub|i>>.
    </lemma>

    <\proof>
      As <math|\<geqslant\>> is clear, it suffices to assume that for some
      <math|x<rsub|0>\<in\>\<bbb-C\><rsup|k>> we have
      <math|min<around*|{|<big|sum><rsub|j=1><rsup|3>f<rsup|<around*|(|j|)>><rsub|i>|}><rsub|i><around*|(|x<rsub|0>|)>\<gtr\>min<around*|{|<big|sum><rsub|j=2><rsup|3>f<rsup|<around*|(|j|)>><rsub|i>|}><rsub|i><around*|(|x<rsub|0>|)>>
      and to reach a contradiction.

      Now, <math|min<around*|{|<big|sum><rsub|j=1><rsup|3>f<rsup|<around*|(|j|)>><rsub|i>|}><rsub|i><around*|(|x<rsub|0>|)>\<leqslant\><around*|(|f<rsub|i<rsub|0>><rsup|<around*|(|1|)>>+f<rsub|i<rsub|0>><rsup|<around*|(|2|)>>+f<rsub|i<rsub|0>><rsup|<around*|(|3|)>>|)><around*|(|x<rsub|0>|)>=f<rsub|i<rsub|0>><rsup|<around*|(|2|)>><around*|(|x<rsub|0>|)>+f<rsub|i<rsub|0>><rsup|<around*|(|3|)>><around*|(|x<rsub|0>|)>>
      and the assumption in previous paragraph implies that the rightmost
      value is positive. Consider cases.

      First, suppose that <math|f<rsub|i<rsub|0>><rsup|<around*|(|2|)>><around*|(|x<rsub|0>|)>=0>.
      Then, <math|min<around*|{|<big|sum><rsub|j=1><rsup|3>f<rsup|<around*|(|j|)>><rsub|i>|}><rsub|i><around*|(|x<rsub|0>|)>\<leqslant\>f<rsub|i<rsub|0>><rsup|<around*|(|2|)>><around*|(|x<rsub|0>|)>+f<rsub|i<rsub|0>><rsup|<around*|(|3|)>><around*|(|x<rsub|0>|)>=f<rsup|<around*|(|3|)>><rsub|i<rsub|0>><around*|(|x<rsub|0>|)>=min<around*|{|f<rsup|<around*|(|3|)>><rsub|i<rsub|>><around*|(|x<rsub|0>|)>|}><rsub|i>\<leqslant\>min<around*|{|<big|sum><rsub|j=2><rsup|3>f<rsup|<around*|(|j|)>><rsub|i>|}><rsub|i><around*|(|x<rsub|0>|)>>.

      Second, suppose that <math|f<rsub|i<rsub|0>><rsup|<around*|(|2|)>><around*|(|x<rsub|0>|)>=0\<Rightarrow\>x<rsub|0>\<in\><around*|{|f<rsub|i<rsub|0>><rsup|<around*|(|2|)>>\<neq\>0|}>>
      and hypothesis implies that <math|\<forall\>i\<in\>\<Lambda\>,<space|0.6spc>f<rsub|i><rsup|<around*|(|2|)>><around*|(|x<rsub|0>|)>=0>
      and hence <math|min<around*|{|<big|sum><rsub|j=1><rsup|3>f<rsup|<around*|(|j|)>><rsub|i>|}><rsub|i><around*|(|x<rsub|0>|)>=min<around*|{|<big|sum><rsub|j=2><rsup|3>f<rsub|i><rsup|<around*|(|j|)>>|}><rsub|i><around*|(|x<rsub|0>|)>>.
    </proof>

    \;
  <|hide-part>
    <section|P-def>
  </hide-part>

  <\hide-part|13>
    <section|KC-normalization-2>

    Here we attempt to normalize kernel <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>>
    of SBO supported on <math|<around*|{|Q=0|}>>. We recall that for
    <math|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1> and
    <math|\<lambda\>\<in\><around*|{|\<lambda\>-\<nu\>\<nin\>-\<bbb-Z\><rsub|\<geqslant\>0>|}>>
    it was defined in proposition <reference|supp-Q:prop-sol-extending> as
    continuation of product of distributions

    <\equation*>
      <frac|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>|\<Gamma\><around*|(|<around*|(|\<lambda\>+\<nu\>-n\<upl\>1|)>/2|)>>\<cdot\>\<delta\><rsup|<around*|(|\<nu\>-1|)>><around*|(|Q|)>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>
    </equation*>

    to <math|\<bbb-R\><rsup|n>> given by fact
    <reference|holomorphicity-preserving:fact-homog>, the product being
    well-defined by the same reasoning as in proof of proposition
    <reference|KR-normalization-recur:prop-3>.

    We shall also employ the notion of <math|\<frak-P\><around*|(|\<cdot\>|)>>
    as given in definition <reference|def-P> and related notions.

    <subsection|Main results>

    <\proposition>
      <label|KC-normalization:prop-kfinite>On the
      <math|<with|math-font|Euler|n><rsub|->\<simeq\><with|math-font|Bbb|R><rsup|p,q>>
      the <math|K>-finite vectors have the masis of the form\ 

      <\equation*>
        F<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\><rprime|'>>*<around|(|r*\<omega\><rsub|p-1>,s*\<omega\><rsub|q-1>|)>\<assign\>
      </equation*>

      <\equation*>
        \<assign\>R<around|(|r,s|)><rsup|-\<lambda\>/2><around*|(|<frac|r|<sqrt|R<around|(|r,s|)>>>|)><rsup|N><around*|(|<frac|s|<sqrt|R<around|(|r,s|)>>>|)><rsup|M><around*|(|<frac|1-<around|(|r<rsup|2>-s<rsup|2>|)>|<sqrt|R<around|(|r,s|)>>>|)><rsup|m<rprime|'>><around*|(|<frac|1+<around|(|r<rsup|2>-s<rsup|2>|)>|<sqrt|R<around|(|r,s|)>>>|)><rsup|n<rprime|'>>*\<psi\><around|(|\<omega\><rsub|p-1>|)>*\<psi\><rprime|'><around|(|\<omega\><rsub|q-1>|)>
      </equation*>

      where <math|m<rprime|'>,n<rprime|'>,M,N\<in\><with|math-font|Bbb|Z><rsub|\<geq\>0>>,
      <math|m<rprime|'>+n<rprime|'>+M+N\<in\>2*<with|math-font|Bbb|Z><rsub|\<geq\>0>>,
      <math|R<around|(|r,s|)>\<assign\><around|(|1-r<rsup|2>+s<rsup|2>|)><rsup|2>+4*r<rsup|2>>
      and <math|<around|(|\<psi\>,\<psi\><rprime|'>|)>\<in\><with|math-font|cal|H><rsup|N><around|(|<with|math-font|Bbb|S><rsup|p-1>|)>\<times\><with|math-font|cal|H><rsup|M><around|(|<with|math-font|Bbb|S><rsup|q-1>|)>>.
    </proposition>

    <\definition>
      <label|KC-normalization-2:def-ftilde>For
      <math|g=<big|sum><rsub|i><rsup|>g<rsub|i
      j>s<rsup|i>t<rsup|j>\<in\>\<bbb-C\><around*|[|s,t|]>> we let\ 

      <\equation*>
        F<rsub|N,M><around*|[|\<psi\>,\<psi\><rprime|'>;g|]>\<assign\><rsub|><wide|F|~><rsub|N,M,g,\<psi\>,\<psi\><rprime|'>>\<assign\><big|sum><rsub|i,j>g<rsub|i
        j>F<rsub|N,M,i,j,\<psi\>\<comma\>\<psi\><rprime|'>>
      </equation*>
    </definition>

    <\proposition>
      <label|KC-normalization-2:prop-normalization>For
      <math|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1> fixed
      <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>\<assign\>K<rsub|\<lambda\>,\<nu\>>/N>:
      (extends to) holomorphic nonzero distribution in
      <math|\<lambda\>\<in\>\<bbb-C\>>, where

      <\equation*>
        N\<assign\><choice|<tformat|<table|<row|<cell|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>,>|<cell|q\<in\>2\<bbb-Z\>+1>>|<row|<cell|\<Gamma\><around*|(|<frac|\<lambda\>-min<around*|{|\<nu\>,q-\<nu\>|}>|2>|)>>|<cell|q\<in\>2\<bbb-Z\>,<space|0.6spc>p=1>>|<row|<cell|1,>|<cell|q\<in\>2\<bbb-Z\>,p\<gtr\>1.>>>>>
      </equation*>
    </proposition>

    <\proposition>
      <label|KC-normalization-2:prop-supp>For
      <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\>\<times\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>0>+1|)>>
      and <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>> as defined in
      proposition <reference|KC-normalization-2:prop-normalization> support
      of <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>> is given as

      <\equation*>
        =<choice|<tformat|<table|<row|<cell|,>|<cell|>>|<row|<cell|>|<cell|>>>>>
      </equation*>
    </proposition>

    <subsection|Auxiliary results>

    <\lemma>
      <label|For-,-we>For <math|\<lambda\>\<in\><with|math-font|Bbb|C>>, we
      have an isomorphism of Frechet <math|G>-representations
      <math|<around*|(|\<pi\><rsub|\<lambda\>,K>,C<rsup|\<infty\>>*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><rsup|<with|math-font|Bbb|Z><rsub|2>>|)><long-arrow|\<rubber-rightarrow\>|\<sim\>><around*|(|l<rsub|\<Xi\>>,C<rsub|-\<lambda\>><rsup|\<infty\>><around|(|\<Xi\><rsup|p+1,q+1>|)>|)>>
      given by <math|f\<mapsto\><around*|(|<around|(|x,y|)>\<mapsto\><around*|\||x|\|><rsup|-\<lambda\>>*f<around*|[|<frac|<around|(|x,y|)>|<around*|\||x|\|>>|]>|)>>,
      where

      <\equation*>
        \<Xi\><rsup|p+1,q+1>\<assign\><around*|{|<around|(|x,y|)>\<in\><with|math-font|Bbb|R><rsup|p+1,q+1><mid|\|><around*|\||x|\|><rsub|p+1>=<around*|\||y|\|><rsub|q+1>|}>\<setminus\><around*|{|0|}>
      </equation*>

      <\equation*>
        <around*|\<nobracket\>|C<rsup|\<infty\>>*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><rsup|<with|math-font|Bbb|Z><rsub|2>>\<assign\><around*|{|f\<in\>C<rsup|\<infty\>>*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><mid|\|>\<forall\><around|(|x,y|)>\<in\><with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>,<space|0.75spc>f<around|(|x,y|)>=f|(>-x,-y)|}>
      </equation*>

      , <math|l<rsub|\<Xi\>>> is left regular action induced by action of
      <math|G> on <math|\<Xi\><rsup|p+1,q+1>> and
      <math|<around|(|\<pi\><rsub|\<lambda\>,K><around|(|g|)>*f|)><around|(|x|)>\<assign\>p*<around*|(|g<rsup|-1>\<cdot\>x|)><rsup|-\<lambda\>>*f<around*|(|<frac|g<rsup|-1>\<cdot\>x|p*<around*|(|g<rsup|-1>\<cdot\>x|)>>|)>>,
      where <math|g<rsup|-1>\<cdot\>x> refers to action of
      <math|G\<curvearrowright\>\<Xi\><rsup|p+1,q+1>> and for
      <math|<around|(|x,y|)>\<in\>\<Xi\><rsup|p+1,q+1>,<space|0.75spc>p<around|(|<around|(|x,y|)>|)>\<assign\><around*|\||x|\|><rsub|p+1>>.
      Moreover, <math|\<pi\><rsub|\<lambda\>,K><mid|\|><rsub|K>> coincides
      with left-regular action induced by action
      <math|K\<curvearrowright\><with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>>.
    </lemma>

    <\proof>
      The last statement is obvious, as for
      <math|g\<in\>O*<around|(|p+1|)>\<times\>O*<around|(|q+1|)>\<subset\>O*<around|(|p+1,q+1|)>>
      and <math|x\<in\>\<Xi\><rsup|p+1,q+1>>we have
      <math|<around*|\||g\<cdot\>x|\|>=<around*|\||x|\|>>. Apart from this,
      there are several things to be checked:
    </proof>

    <\lemma>
      <label|Let--denote>Let <math|S\<subset\>C<rsup|\<infty\>>*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><rsup|<with|math-font|Bbb|Z><rsub|2>>>
      denote the subspace of <math|K>-finite vectors. Then,
    </lemma>

    <\enumerate>
      <item><math|S=<big|sum><rsub|<around*|{|<around|(|l,k|)>\<in\><with|math-font|Bbb|Z><rsub|\<ge\>0><rsup|2><mid|\|>l+k\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>|}>><with|math-font|cal|H><rsup|l><around|(|<with|math-font|Bbb|S><rsup|p>|)>\<otimes\><with|math-font|cal|H><rsup|k><around|(|<with|math-font|Bbb|S><rsup|q>|)>>,
      where <math|<big|sum>> denotes the span;

      <item><math|S> is spanned by functions of the form
      <math|<around|(|\<eta\><rsub|0>,\<eta\>,\<xi\><rsub|0>,\<xi\>|)>\<mapsto\><around*|\||\<eta\>|\|><rsup|N>*\<psi\><around*|(|<frac|\<eta\>|<around*|\||\<eta\>|\|>>|)>*\<eta\><rsub|0><rsup|n<rprime|'>><around*|\||\<xi\>|\|><rsup|M>*\<psi\><rprime|'><around*|(|<frac|\<xi\>|<around*|\||\<xi\>|\|>>|)>*\<xi\><rsub|0><rsup|m<rprime|'>>>
      where <math|<around*|(|<around|(|\<eta\><rsub|0>,\<eta\>|)>,<around|(|\<xi\><rsub|0>,\<xi\>|)>|)>\<in\><with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>>,
      <math|M,N,m<rprime|'>,n<rprime|'>\<in\><with|math-font|Bbb|Z><rsub|\<geq\>0>>
      with <math|M+N+m<rprime|'>+n<rprime|'>\<in\>2*<with|math-font|Bbb|Z><rsub|\<geq\>0>>
      and <math|<around*|(|\<psi\>,\<psi\>|)>\<in\><with|math-font|cal|H><rsup|N><around|(|<with|math-font|Bbb|S><rsup|p>|)>\<times\><with|math-font|cal|H><rsup|M><around|(|<with|math-font|Bbb|S><rsup|q>|)>>.
    </enumerate>

    <\itemize>
      <item>It is true, that <math|<around*|(|\<pi\><rsub|\<lambda\>,K>,C<rsup|\<infty\>>*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><rsup|<with|math-font|Bbb|Z><rsub|2>>|)>>
      and <math|<around*|(|l<rsub|\<Xi\>>,C<rsub|-\<lambda\>><rsup|\<infty\>><around|(|\<Xi\><rsup|p+1,q+1>|)>|)>>
      are indeed <math|G>-representations. That's straightforward;

      <item>It is true that for <math|f\<in\>C<rsup|\<infty\>>*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><rsup|<with|math-font|Bbb|Z><rsub|2>>>
      function <math|<wide|f|~><around|(|x,y|)>> on
      <math|\<Xi\><rsup|p+1,q+1>> defined as
      <math|<wide|f|~><around|(|x,y|)>\<assign\><around*|\||x|\|><rsup|-\<lambda\>>*f<around*|[|<frac|<around|(|x,y|)>|<around*|\||x|\|>>|]>>
      is in <math|C<rsub|-\<lambda\>><rsup|\<infty\>><around|(|\<Xi\><rsup|p+1,q+1>|)>>.
      Indeed, <math|<wide|f|~><around|(|t\<cdot\><around|(|x,y|)>|)>=<around*|\||t|\|><rsup|-\<lambda\>><around*|\||x|\|><rsup|-\<lambda\>>*f*<around*|[|<frac|t|<around*|\||t|\|>>\<cdot\><frac|<around|(|x,y|)>|<around*|\||x|\|>>|]>>.
      Note that <math|t/<around*|\||t|\|>=\<pm\>1> and as
      <math|f\<in\>C<rsup|\<infty\>>*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><rsup|<with|math-font|Bbb|Z><rsub|2>>>,
      we have <math|<wide|f|~><around|(|t\<cdot\><around|(|x,y|)>|)>=<around*|\||t|\|><rsup|-\<lambda\>><around*|\||x|\|><rsup|-\<lambda\>>*f*<around*|[|<frac|t|<around*|\||t|\|>>\<cdot\><frac|<around|(|x,y|)>|<around*|\||x|\|>>|]>=<around*|\||t|\|><rsup|-\<lambda\>><around*|\||x|\|><rsup|-\<lambda\>>*f<around*|[|<frac|<around|(|x,y|)>|<around*|\||x|\|>>|]>=<around*|\||t|\|><rsup|-\<lambda\>><wide|f|~><around|(|x,y|)>>;

      <item>It is true that map <math|f\<mapsto\><wide|f|~>> is onto
      <math|C<rsub|-\<lambda\>><rsup|\<infty\>><around|(|\<Xi\><rsup|p+1,q+1>|)>>
      is <math|G>-covariant. That's also straightforward;

      <item>It is true that map <math|f\<mapsto\><wide|f|~>> is onto
      <math|C<rsub|-\<lambda\>><rsup|\<infty\>><around|(|\<Xi\><rsup|p+1,q+1>|)>>
      has an inverse. Indeed, given <math|<wide|f|~>\<in\>C<rsub|-\<lambda\>><rsup|\<infty\>><around|(|\<Xi\><rsup|p+1,q+1>|)>>
      define <math|f\<assign\><wide|f|~><mid|\|><rsub|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>>>.
      It is an element of <math|C*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><rsup|<with|math-font|Bbb|Z><rsub|2>>>
      and straightforward computations show that <math|<wide|f|~>\<mapsto\>f>
      forms a desired inverse.
    </itemize>

    <\proof>
      Recall that the <math|K>-finite vectors of
      <math|G\<supset\>K=O*<around|(|p+1|)>\<times\>Q*<around|(|q+1|)>>
      acting on <math|C<rsup|\<infty\>>*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)>>
      are given as <math|<big|sum><rsub|k,l=0><rsup|\<infty\>><with|math-font|cal|H><rsup|k><around|(|<with|math-font|Bbb|S><rsup|p>|)>\<otimes\><with|math-font|cal|H><rsup|l><around|(|<with|math-font|Bbb|S><rsup|q>|)>>
      (where <math|<big|sum>> denotes span), as explained in
      <cite|howe1993homogeneous>. As <math|C*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><rsup|<with|math-font|Bbb|Z><rsub|2>>>
      is a subrepresentation of <math|C*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)>>,
      <math|K>-finite vectors of <math|C*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><rsup|<with|math-font|Bbb|Z><rsub|2>>>
      are precisely the <math|K>-finite vectors of
      <math|C*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)>>
      that belong to <math|C*<around|(|<with|math-font|Bbb|S><rsup|p>\<times\><with|math-font|Bbb|S><rsup|q>|)><rsup|<with|math-font|Bbb|Z><rsub|2>>>.
      This proves the first item.

      For the second item, recall the <math|O<around|(|n|)>*\<downarrow\>*O*<around|(|n-1|)>>
      branching rule mentioned in <cite|kobayashi2015symmetry>, namely that

      <\equation*>
        <with|math-font|cal|H><rsup|L><around|(|<with|math-font|Bbb|S><rsup|n>|)>\<simeq\><big|oplus><rsub|N=0><rsup|L><with|math-font|cal|H><rsup|N><around|(|<with|math-font|Bbb|S><rsup|n-1>|)>
      </equation*>

      constructed explicitly with <math|I<rsub|N>:<with|math-font|cal|H><rsup|N><around|(|<with|math-font|Bbb|S><rsup|n-1>|)>\<to\><with|math-font|cal|H><rsup|L><around|(|<with|math-font|Bbb|S><rsup|n>|)>>
      given by

      <\equation*>
        <around|(|I<rsub|N>*\<psi\>|)><around|(|\<eta\><rsub|0>,\<eta\>|)>\<assign\><around*|\||\<eta\>|\|><rsup|-N>*\<psi\><around*|(|<frac|\<eta\>|<around*|\||\<eta\>|\|>>|)>*<wide|<wide|C|~>|~><rsub|L-N><rsup|<frac|n-1|2>+N><around|(|\<eta\><rsub|0>|)>.
      </equation*>

      Hence, we see that

      <\equation*>
        S=<big|sum><rsub|<around*|{|<around|(|L,K|)>\<in\><with|math-font|Bbb|Z><rsub|\<ge\>0><rsup|2><mid|\|>K+L\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>|}>><with|math-font|cal|H><rsup|L><around|(|<with|math-font|Bbb|S><rsup|p>|)>\<otimes\><with|math-font|cal|H><rsup|K><around|(|<with|math-font|Bbb|S><rsup|q>|)>=
      </equation*>

      <\equation*>
        =<big|sum><rsub|<around*|{|<around|(|L,K|)>\<in\><with|math-font|Bbb|Z><rsub|\<ge\>0><rsup|2><mid|\|>K+L\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>|}>><big|sum><rsub|N,M=0><rsup|L,K><around*|\||\<eta\>|\|><rsup|N>*<with|math-font|cal|H><rsup|N><around*|(|<frac|\<eta\>|<around*|\||\<eta\>|\|>>|)>*<wide|<wide|C|~>|~><rsub|L-N><rsup|<frac|p-1|2>+N><around|(|\<eta\><rsub|0>|)><around*|\||\<xi\>|\|><rsup|M>*<with|math-font|cal|H><rsup|M><around*|(|<frac|\<xi\>|<around*|\||\<xi\>|\|>>|)>*<wide|<wide|C|~>|~><rsub|K-M><rsup|<frac|q-1|2>+M><around|(|\<xi\><rsub|0>|)>=
      </equation*>

      <\equation*>
        =<big|sum><rsub|N,M=0><rsup|\<infty\>><big|sum><rsub|<around*|{|n<rprime|'>,m<rprime|'>\<ge\>0<mid|\|>N+M+n<rprime|'>+m<rprime|'>\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>|}>><around*|\||\<eta\>|\|><rsup|N>*<with|math-font|cal|H><rsup|N><around*|(|<frac|\<eta\>|<around*|\||\<eta\>|\|>>|)>*<wide|<wide|C|~>|~><rsub|n<rprime|'>><rsup|<frac|p-1|2>+N><around|(|\<eta\><rsub|0>|)><around*|\||\<xi\>|\|><rsup|M>*<with|math-font|cal|H><rsup|M><around*|(|<frac|\<xi\>|<around*|\||\<xi\>|\|>>|)>*<wide|<wide|C|~>|~><rsub|m<rprime|'>><rsup|<frac|q-1|2>+M><around|(|\<xi\><rsub|0>|)>=
      </equation*>

      <\equation*>
        =<big|sum><rsub|N,M=0><rsup|\<infty\>><big|sum><rsub|<around*|{|n<rprime|'>,m<rprime|'>\<ge\>0<mid|\|>N+M+n<rprime|'>+m<rprime|'>\<in\>2*<with|math-font|Bbb|Z><rsub|\<ge\>0>|}>><around*|\||\<eta\>|\|><rsup|N>*<with|math-font|cal|H><rsup|N><around*|(|<frac|\<eta\>|<around*|\||\<eta\>|\|>>|)>*\<eta\><rsub|0><rsup|n<rprime|'>><around*|\||\<xi\>|\|><rsup|M>*<with|math-font|cal|H><rsup|M><around*|(|<frac|\<xi\>|<around*|\||\<xi\>|\|>>|)>*\<xi\><rsub|0><rsup|m<rprime|'>>.
      </equation*>

      The last equality holds true because
      <math|<wide|<wide|C<rsub|m><rsup|\<nu\>>|~>|~>> are polynomials of
      degree <math|m> whose highest term does not vanish, unless
      <math|\<nu\>\<in\><with|math-font|Bbb|Z><rsub|\<less\>0>>.
    </proof>

    <\lemma>
      <label|KC-normalization-2:lem-kfin-00>For fixed
      <math|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>,
      <math|\<lambda\>\<in\>\<bbb-C\>> with
      <math|Re<around*|(|\<lambda\>|)>\<gg\>0> and
      <math|q\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>-q|)>/2-1><around*|(|<frac|d<rsup|\<nu\>-1>|d
        y<rsup|\<nu\>-1>><around*|(|1-y<rsup|2>|)><rsup|<around*|(|q-2|)>/2>|)>d
        y=<frac|<sqrt|\<pi\>>|2<rsup|<around*|(|\<nu\>-1|)>/2>>\<times\><frac|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>|2>|)>>\<times\><around*|(|<around*|(|q-2|)>|)><rsub|<around*|(|\<nu\>-1|)>/2>\<times\>>|<cell|>>|<row|<cell|>|<cell|\<times\><around*|(|<around*|(|q-\<lambda\>-1|)>|)><rsub|<around*|(|\<nu\>-1|)>/2>\<times\><around*|(|\<nu\>-2|)><rsub|<around*|(|\<nu\>-1|)>/2>,>|<cell|>>>>
      </eqnarray*>

      where <math|<around*|(|<around*|(|x|)>|)><rsub|n>\<assign\>x<around*|(|x-2|)>\<ldots\><around*|(|x-2n+2|)>>.
    </lemma>

    <\proof>
      We proceed by induction on <math|\<nu\>>, case <math|\<nu\>=1> being
      obvious. Using the equality

      <\equation*>
        <frac|d<rsup|2>|d x<rsup|2>><around*|(|1-x<rsup|2>|)><rsup|l>=2l<around*|(|2l-2|)><around*|(|1-x<rsup|2>|)><rsup|l-2>-2l<around*|(|2l-1|)><around*|(|1-x<rsup|2>|)><rsup|l-1>
      </equation*>

      and integration by parts, we then have the following chain of
      equalities valid for <math|Re<around*|(|\<lambda\>|)>\<gg\>0>

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+<around*|(|\<nu\>+2|)>-q|)>/2-1><around*|(|<frac|d<rsup|\<nu\>+1>|d
        y<rsup|\<nu\>+1>><around*|(|1-y<rsup|2>|)><rsup|<around*|(|q-2|)>/2>|)>=>|<cell|>>|<row|<cell|>|<cell|=<big|int><rsub|-1><rsup|1><frac|d<rsup|2>|d\<nu\><rsup|2>><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+<around*|(|\<nu\>+2|)>-q|)>/2-1><around*|(|<frac|d<rsup|\<nu\>-1>|d
        y<rsup|\<nu\>-1>><around*|(|1-y<rsup|2>|)><rsup|<around*|(|q-2|)>/2>|)>=>|<cell|>>|<row|<cell|>|<cell|=<around*|(|\<lambda\>+\<nu\>-q|)><around*|(|\<lambda\>+\<nu\>-q-2|)><big|int><rsub|-1><rsup|1><around*|(|1-y<rsup|2>|)><rsup|<around*|(|<around*|(|\<lambda\>-2|)>+\<nu\>-q|)>/2-1><around*|(|<frac|d<rsup|\<nu\>-1>|d
        y<rsup|\<nu\>-1>><around*|(|1-y<rsup|2>|)><rsup|<around*|(|q-2|)>/2>|)>->|<cell|>>|<row|<cell|>|<cell|-<around*|(|\<lambda\>+\<nu\>-q|)><around*|(|\<lambda\>+\<nu\>-q-1|)><big|int><rsub|-1><rsup|1><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>-q|)>/2-1><around*|(|<frac|d<rsup|\<nu\>-1>|d
        y<rsup|\<nu\>-1>><around*|(|1-y<rsup|2>|)><rsup|<around*|(|q-2|)>/2>|)>=>|<cell|>>>>
      </eqnarray*>

      and the induction assumption allows to rewrite this as

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|=<around*|(|\<lambda\>+\<nu\>-q|)><around*|(|\<lambda\>+\<nu\>-q-2|)><frac|<sqrt|\<pi\>>|2<rsup|<around*|(|\<nu\>-1|)>/2>>\<cdot\><frac|\<Gamma\><around*|(|<frac|\<lambda\>-2-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>-2|2>|)>><around*|(|<around*|(|q-2|)>|)><rsub|<around*|(|\<nu\>-1|)>/2><around*|(|<around*|(|q-\<lambda\>+1|)>|)><rsub|<around*|(|\<nu\>-1|)>/2><around*|(|\<nu\>-2|)><rsub|<around*|(|\<nu\>-1|)>/2>->|<cell|>>|<row|<cell|>|<cell|-<around*|(|\<lambda\>+\<nu\>-q|)><around*|(|\<lambda\>+\<nu\>-q-1|)><frac|<sqrt|\<pi\>>|2<rsup|<around*|(|\<nu\>-1|)>/2>>\<cdot\><frac|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>|2>|)>><around*|(|<around*|(|q-2|)>|)><rsub|<around*|(|\<nu\>-1|)>/2><around*|(|<around*|(|q-\<lambda\>-1|)>|)><rsub|<around*|(|\<nu\>-1|)>/2><around*|(|\<nu\>-2|)><rsub|<around*|(|\<nu\>-1|)>/2>=>|<cell|>>>>
      </eqnarray*>

      and using the obvious equalities <math|<around*|(|<around*|(|x|)>|)><rsub|n+1>/<around*|(|x-2n|)>=<around*|(|<around*|(|x|)>|)><rsub|n>>,
      <math|<around*|(|<around*|(|x|)>|)><rsub|n+1>/x=<around*|(|<around*|(|x-2|)>|)><rsub|n>>
      and <math|\<Gamma\><around*|(|x+1|)>=x\<Gamma\><around*|(|x|)>> this
      gets further rewritten as

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|=<frac|<sqrt|\<pi\>>|2<rsup|<around*|(|\<nu\>+1|)>/2>>\<cdot\><frac|\<Gamma\><around*|(|<frac|\<lambda\>-2-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>|2>|)>><around*|(|<around*|(|q-2|)>|)><rsub|<around*|(|\<nu\>+1|)>/2><around*|(|<around*|(|q-\<lambda\>-1|)>|)><rsub|<around*|(|\<nu\>+1|)>/2><around*|(|<around*|(|\<nu\>|)>|)><rsub|<around*|(|\<nu\>+1|)>/2>\<times\>>|<cell|>>|<row|<cell|>|<cell|\<times\><frac|1|q-\<nu\>-1>\<cdot\><frac|1|\<nu\>><around*|(|<around*|(|\<lambda\>+\<nu\>-q|)><around*|(|\<lambda\>+\<nu\>-q-2|)>2<frac|\<lambda\>-2|2>\<cdot\><frac|q-\<lambda\>+1|<around*|(|q-\<lambda\>+1-<around*|(|\<nu\>-1|)>|)><around*|(|q-\<lambda\>-1-<around*|(|\<nu\>-1|)>|)>>-|\<nobracket\>>>|<cell|>>|<row|<cell|>|<cell|-<around*|\<nobracket\>|<around*|(|\<lambda\>+\<nu\>-q|)><around*|(|\<lambda\>+\<nu\>-q-1|)>2<frac|\<lambda\>-2-\<nu\>|2>\<cdot\><frac|1|q-\<lambda\>-\<nu\>>|)>>|<cell|>>>>
      </eqnarray*>

      and it suffices now to show that part after <math|\<times\>> is equal
      to 1. But the latter expression is equal to

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|<frac|1|<around*|(|q-\<nu\>-1|)>\<nu\>><around*|(|<around*|(|\<lambda\>-2|)><around*|(|q-\<lambda\>+1|)>+<around*|(|\<lambda\>-2-\<nu\>|)><around*|(|\<lambda\>+\<nu\>-q-1|)>|)>=1.>|<cell|>>>>
      </eqnarray*>
    </proof>

    <\lemma>
      <label|KC-normalization-2:lem-kfin-11>For fixed
      <math|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>,
      <math|\<lambda\>\<in\>\<bbb-C\>> with
      <math|Re<around*|(|\<lambda\>|)>\<gg\>0> and
      <math|q\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>-q|)>/2-1>y<around*|(|<frac|d<rsup|\<nu\>-1>|d
        y<rsup|\<nu\>-1>><around*|[|y<around*|(|1-y<rsup|2>|)><rsup|<around*|(|q-2|)>/2>|]>|)>d
        y=<frac|<sqrt|\<pi\>>|2<rsup|<around*|(|\<nu\>+1|)>/2>>\<times\><frac|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+2|2>|)>>\<times\><around*|(|<around*|(|q-2|)>|)><rsub|<around*|(|\<nu\>-1|)>/2>\<times\>>|<cell|>>|<row|<cell|>|<cell|\<times\><around*|(|<around*|(|q-\<lambda\>-1|)>|)><rsub|<around*|(|\<nu\>-1|)>/2>\<times\><around*|(|\<nu\>|)><rsub|<around*|(|\<nu\>-1|)>/2>,>|<cell|>>>>
      </eqnarray*>

      where <math|<around*|(|<around*|(|x|)>|)><rsub|n>\<assign\>x<around*|(|x-2|)>\<ldots\><around*|(|x-2n+2|)>>.
    </lemma>

    <\proof>
      The prove proceeds by induction on <math|\<nu\>>, just as that of lemma
      <reference|KC-normalization-2:lem-kfin-00>, so we just outline the main
      differences. We use integration by parts, formula

      <\equation*>
        <frac|d<rsup|2>|d x<rsup|2>><around*|[|x<around*|(|1-x<rsup|2>|)><rsup|l>|]>=2l<around*|(|2l-2|)>x<around*|(|1-x<rsup|2>|)><rsup|l-2>-2l<around*|(|2l+1|)>x<around*|(|1-x<rsup|2>|)><rsup|l-1>,
      </equation*>

      induction hypothesis and basic properties of
      <math|<around*|(|<around*|(|x|)>|)><rsub|n>> and
      <math|\<Gamma\><around*|(|x|)>> to write

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1>K<rsub|\<lambda\>,\<nu\>+2,q>\<assign\><big|int><rsub|-1><rsup|1><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+<around*|(|\<nu\>+2|)>-q|)>/2-1><around*|(|<frac|d<rsup|\<nu\>+1>|d
        y<rsup|\<nu\>+1>><around*|[|y<around*|(|1-y<rsup|2>|)><rsup|<around*|(|q-2|)>/2>|]>|)>=>|<cell|>>|<row|<cell|>|<cell|=<around*|(|\<lambda\>+\<nu\>-q|)><around*|(|\<lambda\>+\<nu\>-q-2|)><big|int><rsub|-1><rsup|1>K<rsub|\<lambda\>-2,\<nu\>,q>-<around*|(|\<lambda\>+\<nu\>-q|)><around*|(|\<lambda\>+\<nu\>-q+1|)><big|int><rsub|-1><rsup|1>K<rsub|\<lambda\>,\<nu\>,q>=>|<cell|>>|<row|<cell|>|<cell|=<around*|(|\<lambda\>+\<nu\>-q|)><around*|(|\<lambda\>+\<nu\>-q-2|)><frac|<sqrt|\<pi\>>|2<rsup|<around*|(|\<nu\>+1|)>/2>>\<cdot\><frac|\<Gamma\><around*|(|<frac|\<lambda\>-2-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>|2>|)>><around*|(|<around*|(|q-2|)>|)><rsub|<around*|(|\<nu\>-1|)>/2><around*|(|<around*|(|q-\<lambda\>+1|)>|)><rsub|<around*|(|\<nu\>-1|)>/2>\<times\><around*|(|\<nu\>|)><rsub|<around*|(|\<nu\>-1|)>/2>->|<cell|>>|<row|<cell|>|<cell|-<around*|(|\<lambda\>+\<nu\>-q|)><around*|(|\<lambda\>+\<nu\>-q+1|)><frac|<sqrt|\<pi\>>|2<rsup|<around*|(|\<nu\>+1|)>/2>>\<cdot\><frac|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+2|2>|)>><around*|(|<around*|(|q-2|)>|)><rsub|<around*|(|\<nu\>-1|)>/2><around*|(|<around*|(|q-\<lambda\>-1|)>|)><rsub|<around*|(|\<nu\>-1|)>/2>\<times\><around*|(|\<nu\>|)><rsub|<around*|(|\<nu\>-1|)>/2>=>|<cell|>>|<row|<cell|>|<cell|=<frac|<sqrt|\<pi\>>|2<rsup|<around*|(|\<nu\>+3|)>/2>>\<cdot\><frac|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>-2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+2|2>|)>><around*|(|<around*|(|q-2|)>|)><rsub|<around*|(|\<nu\>+1|)>/2><around*|(|<around*|(|q-\<lambda\>-1|)>|)><rsub|<around*|(|\<nu\>+1|)>/2><around*|(|\<nu\>+2|)><rsub|<around*|(|\<nu\>+1|)>/2>\<times\>>|<cell|>>|<row|<cell|>|<cell|\<times\><frac|1|q-\<nu\>-1>\<cdot\><frac|1|\<nu\>+2><around*|(|2<around*|(|\<lambda\>+\<nu\>-q|)><around*|(|\<lambda\>+\<nu\>-q-2|)><frac|\<lambda\>|2>\<cdot\><frac|q-\<lambda\>+1|<around*|(|q-\<lambda\>-\<nu\>|)><around*|(|q-\<lambda\>-\<nu\>+2|)>>-|\<nobracket\>>>|<cell|>>|<row|<cell|>|<cell|<around*|\<nobracket\>|-2<around*|(|\<lambda\>+\<nu\>-q|)><around*|(|\<lambda\>+\<nu\>-q+1|)><frac|\<lambda\>-\<nu\>-2|2>\<cdot\><frac|1|q-\<lambda\>-\<nu\>>|)>>|<cell|>>>>
      </eqnarray*>

      and it suffices to show that part after <math|\<times\>> is equal to 1.
      But it can be rewritten as

      <\equation*>
        <frac|1|q-\<nu\>-1>\<cdot\><frac|1|\<nu\>+2><around*|(|\<lambda\><around*|(|q-\<lambda\>+1|)>+<around*|(|\<lambda\>+\<nu\>-q+1|)><around*|(|\<lambda\>-\<nu\>-2|)>|)>=<frac|<around*|(|\<nu\>+2|)><around*|(|q-\<nu\>-1|)>|<around*|(|q-\<nu\>-1|)><around*|(|\<nu\>+2|)>>=1.
      </equation*>
    </proof>

    <\lemma>
      <label|KC-normalization-2:lem-kfinite>For
      <math|F<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\><rprime|'>>>
      with <math|N,M,n<rprime|'>,m<rprime|'>\<in\>\<bbb-Z\><rsub|\<geqslant\>0>>,
      <math|N+M+n<rprime|'>+m<rprime|'>\<in\>2\<bbb-Z\>> and
      <math|<around*|(|\<psi\>,\<psi\><rprime|'>|)>\<in\>\<cal-H\><rsup|N><around*|(|\<bbb-S\><rsup|p-1>|)>\<times\>\<cal-H\><rsup|M><around*|(|\<bbb-S\><rsup|q-1>|)>>
      we have <math|<around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|C>,F<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\><rprime|'>>|\<rangle\>>=0>
      if <math|M\<gtr\>0> or <math|N\<in\>2\<bbb-Z\>+1> or
      <math|\<psi\>\<perp\>\<bbb-C\>\<psi\><rsub|N>>, where
      <math|\<cal-H\><rsup|N><around*|(|\<bbb-S\><rsup|p-1>|)>\<ni\>\<psi\><rsub|N>:\<omega\><rsub|p-1>\<rightarrow\><wide|<wide|C|~>|~><rsub|N><rsup|p/2-1><around*|(|\<omega\><rsub|p-1><rsup|<around*|(|p|)>>|)>>,
      with <math|<wide|<wide|C|~>|~><rsub|N><rsup|\<mu\>>> denoting the
      renormalized Gegenbauer polynomial (see
      <cite-detail|kobayashi2015symmetry|(16.4)>).

      Moreover, for <math|N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>,
      <math|m<rprime|'>,n<rprime|'>\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> and
      <math|i=0,1> we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|<around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|C>,F<rsub|N,0><around*|[|\<psi\><rsub|N>,1;<around*|(|s
        t|)><rsup|i><around*|(|1-s<rsup|2>|)><rsup|n<rprime|'>><around*|(|1-t<rsup|2>|)><rsup|m<rprime|'>>|]>|\<rangle\>>\<simeq\>R\<cdot\>S,>|<cell|>>|<row|<cell|>|<cell|S\<assign\><choice|<tformat|<table|<row|<cell|1,>|<cell|p=1,N=0,>>|<row|<cell|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>/\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>/\<Gamma\><around*|(|<frac|\<lambda\>-q+\<nu\>+N|2>|)>,>|<cell|p\<gtr\>1,>>|<row|<cell|0,>|<cell|p=1,N\<geqslant\>2,>>>>>>|<cell|>>|<row|<cell|>|<cell|R\<assign\><around*|(|<around*|(|q+2n<rprime|'>-2|)>|)><rsub|<around*|(|\<nu\>-1|)>/2><around*|(|<around*|(|q-2m<rprime|'>-\<lambda\>-N-1|)>|)><rsub|<around*|(|\<nu\>-1|)>/2>\<Gamma\><around*|(|<frac|\<lambda\>+N+2m<rprime|'>+2n<rprime|'>-\<nu\>|2>|)>\<times\>>|<cell|>>|<row|<cell|>|<cell|\<times\><choice|<tformat|<table|<row|<cell|\<Gamma\><rsup|-1><around*|(|<frac|\<lambda\>+N+2m<rprime|'>+2n<rprime|'>|2>|)>,>|<cell|i=0>>|<row|<cell|\<Gamma\><rsup|-1><around*|(|<frac|\<lambda\>+N+2m<rprime|'>+2n<rprime|'>+2|2>|)>,>|<cell|i=1,>>>>>>|<cell|>>>>
      </eqnarray*>

      where <math|<around*|(|<around*|(|x|)>|)><rsub|n>\<assign\>x<around*|(|x-2|)>\<ldots\><around*|(|x-2n+2|)>>.
    </lemma>

    <\proof>
      Let us transfer to bipolar coordinates, where

      <\equation*>
        <around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|C>,F<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\><rprime|'>>|\<rangle\>>=
      </equation*>

      <\equation*>
        =<big|int><rsub|r=0><rsup|\<infty\>><big|int><rsub|s=0><rsup|\<infty\>>\<delta\><rsup|<around|(|\<nu\>-1|)>>*<around|(|<frac|s<rsup|2>|r<rsup|2>>-1|)>*R<around|(|r,s|)><rsup|-\<lambda\>/2><around*|(|<frac|r|<sqrt|R<around|(|r,s|)>>>|)><rsup|N><around*|(|<frac|s|<sqrt|R<around|(|r,s|)>>>|)><rsup|M><around*|(|<frac|1-<around|(|r<rsup|2>-s<rsup|2>|)>|<sqrt|R<around|(|r,s|)>>>|)><rsup|n<rprime|'>><around*|(|<frac|1+<around|(|r<rsup|2>-s<rsup|2>|)>|<sqrt|R<around|(|r,s|)>>>|)><rsup|m<rprime|'>>\<times\>
      </equation*>

      <\equation*>
        \<times\>r<rsup|\<lambda\>+\<nu\>-n>*r<rsup|p-1>*s<rsup|q-1>*d*r*<space|0.25spc>d*s\<times\>
      </equation*>

      <\equation*>
        <big|int><rsub|<with|math-font|Bbb|S><rsup|p-1>>\<psi\><around|(|\<omega\><rsub|p-1>|)><around*|\||\<omega\><rsub|p-1><rsup|<around|(|p|)>>|\|><rsup|\<lambda\>+\<nu\>-n>*d*\<omega\><rsub|p-1>*<big|int><rsub|<with|math-font|Bbb|S><rsup|q-1>>\<psi\><rprime|'><around|(|\<omega\><rsub|q-1>|)>*d*\<omega\><rsub|q-1>
      </equation*>

      Now, as <math|\<psi\><rprime|'>\<in\><with|math-font|cal|H><rsup|M><around|(|<with|math-font|Bbb|S><rsup|q-1>|)>>
      we see that <math|<big|int><rsub|<with|math-font|Bbb|S><rsup|q-1>>\<psi\><rprime|'><around|(|\<omega\><rsub|q-1>|)>*d*\<omega\><rsub|q-1>=0>
      unless <math|M=0>. Furthermore, as explained in
      <cite-detail|kobayashi2015symmetry|lem 7.6>,
      <math|<big|int><rsub|<with|math-font|Bbb|S><rsup|p-1>>\<psi\><around|(|\<omega\><rsub|p-1>|)><around*|\||\<omega\><rsub|p-1><rsup|<around|(|p|)>>|\|><rsup|\<lambda\>+\<nu\>-n>*d*\<omega\><rsub|p-1>=0>
      if <math|N> is odd or <math|\<psi\>\<perp\><with|math-font|cal|H><rsup|N><around|(|<with|math-font|Bbb|S><rsup|p-1>|)><rsup|O*<around|(|p-1|)>>=\<bbb-C\>\<psi\><rsub|N>>.
      This proves the conclusion of the first paragraph.

      Now, the <math|S> factor comes from the shown in
      <cite-detail|kobayashi2015symmetry|lem. 7.6> identity

      <\equation*>
        <big|int><rsub|<with|math-font|Bbb|S><rsup|n-1>><around*|\||\<omega\><rsub|n-1><rsup|<around|(|n|)>>|\|><rsup|\<lambda\>+\<nu\>-n>*<wide|<wide|C|~>|~><rsub|N><rsup|<frac|n|2>-1><around|(|\<omega\><rsub|n-1><rsup|<around|(|n|)>>|)>*d*\<omega\><rsub|n-1>\<simeq\><frac|\<Gamma\>*<around*|(|\<lambda\>+\<nu\>-n+1|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>*\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-N|2>|)>>
      </equation*>

      we note that it holds only for <math|n\<gtr\>1>. For <math|n=1>
      <cite-detail|howe1993homogeneous|p. 6> tells us that
      <math|\<cal-H\><rsup|N><around*|(|\<bbb-S\><rsup|q-1>|)>=0> for
      <math|N\<gtr\>0> and for <math|N=0> the integral above becomes
      independent of <math|<around*|(|\<lambda\>,\<nu\>|)>>. This gives an
      expression for <math|S>.

      We next rewrite the integral

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|r=0><rsup|\<infty\>><big|int><rsub|s=0><rsup|\<infty\>>\<delta\><rsup|<around|(|\<nu\>-1|)>>*<around|(|<frac|s<rsup|2>|r<rsup|2>>-1|)>*R<around|(|r,s|)><rsup|-\<lambda\>/2><around*|(|<frac|r|<sqrt|R<around|(|r,s|)>>>|)><rsup|N><around*|(|<frac|1-<around|(|r<rsup|2>-s<rsup|2>|)>|<sqrt|R<around|(|r,s|)>>>|)><rsup|m<rprime|'>><around*|(|<frac|1+<around|(|r<rsup|2>-s<rsup|2>|)>|<sqrt|R<around|(|r,s|)>>>|)><rsup|n<rprime|'>>\<times\>>|<cell|>>|<row|<cell|>|<cell|\<times\>r<rsup|\<lambda\>+\<nu\>-n>*r<rsup|p-1>*s<rsup|q-1>*d*r*<space|0.25spc>d*s>|<cell|>>>>
      </eqnarray*>

      in coordinates <math|<around|(|x,y|)>> given as

      <\equation*>
        x\<assign\><frac|1+<around|(|r<rsup|2>-s<rsup|2>|)>|<sqrt|R<around|(|r,s|)>>>,<space|1em>y\<assign\><frac|1-<around|(|r<rsup|2>-s<rsup|2>|)>|<sqrt|R<around|(|r,s|)>>>
      </equation*>

      The integration domain then becomes
      <math|<around*|\<nobracket\>|<around*|{|<around|(|x,y|)>\<in\>|[>-1,1]\<times\>[-1,1]<mid|\|>x+y\<gtr\>0|}>>
      and the whole integral becomes (up to proportionality)

      <\equation*>
        \<simeq\><big|int><rsub|<around|(|x,y|)>\<in\>D>\<delta\><rsup|<around|(|\<nu\>-1|)>>*<around|(|x-y|)>*<around|(|1-y<rsup|2>|)><rsup|<frac|\<lambda\>+N+\<nu\>-q-2|2>>*<around|(|1-x<rsup|2>|)><rsup|<frac|q-2|2>>*x<rsup|m<rprime|'>>*y<rsup|n<rprime|'>>*d*x*<space|0.25spc>d*y
      </equation*>

      Moreover, the condition <math|m<rprime|'>+n<rprime|'>\<in\>2\<bbb-Z\>>
      implies that this is proportional to an integral of the same expression
      over <math|<around*|[|-1,1|]>\<times\><around*|[|-1,1|]>>, which writes
      as

      <\equation*>
        \<simeq\><big|int><rsub|-1><rsup|1><around|(|1-y<rsup|2>|)><rsup|<frac|\<lambda\>+N+\<nu\>-q-2|2>>*y<rsup|m<rprime|'>>*<around*|[|<frac|\<partial\><rsup|\<nu\>-1>|\<partial\>*x<rsup|\<nu\>-1>><mid|\|><rsub|x=y><around|(|1-x<rsup|2>|)><rsup|<frac|q-2|2>>*x<rsup|n<rprime|'>>|]>*d*y
      </equation*>

      Now, pairing <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>> with
      <math|F<rsub|N,0><around*|[|\<psi\><rsub|N>,1;<around*|(|s
      t|)><rsup|i><around*|(|1-s<rsup|2>|)><rsup|m<rprime|'>><around*|(|1-t<rsup|2>|)><rsup|n<rprime|'>>|]>>
      the computations done above tell us that the result should be
      proportional to <math|R\<cdot\>S> with <math|S> as in the statement. To
      get the <math|R> multiplier we need to compute an integral

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around|(|1-y<rsup|2>|)><rsup|<frac|\<lambda\>+N+\<nu\>-q-2|2>>*y<rsup|i>*<around*|(|1-y<rsup|2>|)><rsup|m<rprime|'>><around*|[|<frac|\<partial\><rsup|\<nu\>-1>|\<partial\>*x<rsup|\<nu\>-1>><mid|\|><rsub|x=y>x<rsup|i><around|(|1-x<rsup|2>|)><rsup|<frac|q-2|2>>*<around*|(|1-x<rsup|2>|)><rsup|n<rprime|'>>|]>*d*y=>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around|(|1-y<rsup|2>|)><rsup|<frac|\<lambda\><rprime|'>+N+\<nu\>-q<rprime|'>-2|2>>*y<rsup|i><around*|[|<frac|\<partial\><rsup|\<nu\>-1>|\<partial\>*x<rsup|\<nu\>-1>><mid|\|><rsub|x=y>x<rsup|i><around|(|1-x<rsup|2>|)><rsup|<frac|q<rprime|'>-2|2>>*|]>>|<cell|>>|<row|<cell|>|<cell|q<rprime|'>\<assign\>q+2n<rprime|'>,<space|1em>\<lambda\><rprime|'>\<assign\>\<lambda\>+N+2m<rprime|'>+2n<rprime|'>>|<cell|>>>>
      </eqnarray*>

      and the formulas in statement then follow by lemmas
      <reference|KC-normalization-2:lem-kfin-00> and
      <reference|KC-normalization-2:lem-kfin-11>.
    </proof>

    <\lemma>
      <label|KC-normalization-2:lem-kfinite-wrap>Fix
      <math|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>. For
      <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>> as in proposition
      <reference|supp-Q:prop-sol-extending> and <math|F> a <math|K>-finite
      vector we have <math|<around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|C>,F|\<rangle\>>>
      being the finite sum of entire nonzero functions in
      <math|\<lambda\>\<in\>\<bbb-C\>> multiplied by products
      <math|R\<cdot\>S> with <math|R> and <math|S> as in lemma
      <math|<reference|KC-normalization-2:lem-kfinite>> for various
      <math|<around*|(|m<rprime|'>,n<rprime|'>,N,i|)>\<in\>\<bbb-Z\><rsub|\<geqslant\>0><rsup|2>\<times\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>0>|)>\<times\><around*|{|0,1|}>>.
      Conversely, every <math|R\<cdot\>S> appears in this way.
    </lemma>

    <\proof>
      This is the direct consequence of lemma
      <reference|KC-normalization-2:lem-kfinite>. One thing to note is that
      polynomials <math|<around*|(|s t|)><rsup|i><around*|(|1-s<rsup|2>|)><rsup|n<rprime|'>><around*|(|1-t<rsup|2>|)><rsup|m<rprime|'>>>
      span for all <math|<around*|(|n<rprime|'>,m<rprime|'>,i|)>\<in\>\<bbb-Z\><rsub|\<geqslant\>0><rsup|2>\<times\><around*|{|0,1|}>>
      the same subspace of <math|\<bbb-C\><around*|[|s,t|]>> as
      <math|<around*|{|s<rsup|i>t<rsup|j><mid|\|>i,j\<in\>\<bbb-Z\><rsub|\<geqslant\>0>,i+j\<in\>2\<bbb-Z\>|}>>.
    </proof>

    <\lemma>
      <label|KC-normalization-2:lem-Pcomputation>Fix
      <math|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>. For
      <math|><math|<around*|(|m<rprime|'>,n<rprime|'>,N,i|)>\<in\>\<bbb-Z\><rsub|\<geqslant\>0><rsup|2>\<times\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>0>|)>\<times\><around*|{|0,1|}>>
      we have

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|\<frak-P\><around*|(|<around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|C>,F<rsub|N,0><around*|[|\<psi\><rsub|N>,1;<around*|(|s
        t|)><rsup|i><around*|(|1-s<rsup|2>|)><rsup|n<rprime|'>><around*|(|1-t<rsup|2>|)><rsup|m<rprime|'>>|]>|\<rangle\>>|)>=>|<cell|>>|<row|<cell|>|<cell|<choice|<tformat|<table|<row|<cell|-A<rsup|><rsub|m<rprime|'>,n<rprime|'>,N,i>-B<rsup|><rsub|m<rprime|'>,n<rprime|'>,N,i>->|<cell|>>|<row|<cell|-C<rsup|><rsub|m<rprime|'>,n<rprime|'>,N,i>-D<rsup|><rsub|m<rprime|'>,n<rprime|'>,N,i>+E<rsup|><rsub|m<rprime|'>,n<rprime|'>,N,i>,>|<cell|p\<gtr\>1,q\<in\>2\<bbb-Z\><rsub|>+1>>|<row|<cell|-C<rsup|><rsub|m<rprime|'>,n<rprime|'>,N,i>-D<rsup|><rsub|m<rprime|'>,n<rprime|'>,N,i>+E<rsup|><rsub|m<rprime|'>,n<rprime|'>,N,i>,>|<cell|p=1,<space|0.6spc>N=0>>|<row|<cell|-\<infty\>,>|<cell|p=1,<space|0.6spc>N\<gtr\>0>>|<row|<cell|-A<rsup|><rsub|m<rprime|'>,n<rprime|'>,N,i>-B<rsup|><rsub|m<rprime|'>,n<rprime|'>,N,i>->|<cell|>>|<row|<cell|-C<rsup|><rsub|m<rprime|'>,n<rprime|'>,N,i>-D<rsup|><rsub|m<rprime|'>,n<rprime|'>,N,i>+E<rsup|><rsub|m<rprime|'>,n<rprime|'>,N,i>,>|<cell|p\<gtr\>1,<space|0.6spc>q\<in\>2\<bbb-Z\>,<space|0.6spc>n<rprime|'>\<gtr\><frac|\<nu\>-q-1|2>>>|<row|<cell|-\<infty\>>|<cell|p\<gtr\>1,<space|0.6spc>q\<in\>2\<bbb-Z\>,<space|0.6spc>n<rprime|'>\<leqslant\><frac|\<nu\>-q-1|2>>>>>>>|<cell|>>|<row|<cell|>|<cell|A<rsup|><rsub|m<rprime|'>,n<rprime|'>,N,i>\<assign\>-\<frak-P\><around*|(|<frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>>|)>=<around*|{|\<lambda\>=n-\<nu\>+2j|}><rsub|j=0><rsup|<around*|(|N-2|)>/2>>|<cell|>>|<row|<cell|>|<cell|B<rsup|><rsub|m<rprime|'>,n<rprime|'>,N,i>\<assign\>-\<frak-P\><around*|(|\<Gamma\><rsup|-1><around*|(|<frac|\<lambda\>-q+\<nu\>+N|2>|)>|)>=<around*|{|\<lambda\>\<in\>q-\<nu\>-N-2\<bbb-Z\><rsub|\<geqslant\>0>|}>>|<cell|>>|<row|<cell|>|<cell|C<rsup|><rsub|m<rprime|'>,n<rprime|'>,N,i>\<assign\>-\<frak-P\><around*|(|<around*|(|<around*|(|q-2m<rprime|'>-2n<rprime|'>-\<lambda\>-N-1|)>|)><rsub|<around*|(|\<nu\>-1|)>/2>|)>=<around*|{|\<lambda\>=q-2m<rprime|'>-N-1-2j|}><rsub|j=0><rsup|<around*|(|\<nu\>-3|)>/2>>|<cell|>>|<row|<cell|>|<cell|D<rsup|><rsub|m<rprime|'>,n<rprime|'>,N,i>\<assign\>-\<frak-P\><around*|(|\<Gamma\><rsup|-1><around*|(|<frac|\<lambda\>+N+2m<rprime|'>+2n<rprime|'>+2i|2>|)>|)>=<around*|{|\<lambda\>\<in\>-N-2m<rprime|'>-2n<rprime|'>-2i-2\<bbb-Z\><rsub|\<geqslant\>0>|}>>|<cell|>>|<row|<cell|>|<cell|E<rsub|m<rprime|'>,n<rprime|'>,N,i>=\<frak-P\><around*|(|\<Gamma\><around*|(|<frac|\<lambda\>+N+2m<rprime|'>+2n<rprime|'>-\<nu\>|2>|)>|)>=<around*|{|\<lambda\>\<in\>-N-2m<rprime|'>-2n<rprime|'>+\<nu\>-2\<bbb-Z\><rsub|\<geqslant\>0>|}>>|<cell|>>>>
      </eqnarray>
    </lemma>

    <\proof>
      The lemma follows directly from the formulae in lemma
      <reference|KC-normalization-2:lem-kfinite> once one recalls that
      <math|\<frak-P\><around*|(|\<Gamma\><around*|(|x|)>/\<Gamma\><around*|(|x-k|)>|)>=-<around*|{|x=j|}><rsub|j=1><rsup|k>>
      and <math|\<frak-P\><around*|(|<around*|(|<around*|(|x|)>|)><rsub|k>|)>=-<around*|{|x=2j|}><rsub|j=0><rsup|k-1>>.
      One thing to notice is that

      <\equation*>
        <around*|(|<around*|(|q+2n<rprime|'>-2|)>|)><rsub|<around*|(|\<nu\>-1|)>/2>=0\<Leftrightarrow\>q\<in\>2\<bbb-Z\><rsub|\<geqslant\>1><space|1em>and<space|1em>q+2n<rprime|'>-\<nu\>+1\<leqslant\>0.
      </equation*>
    </proof>

    <\lemma>
      <label|KC-normalization-2:lem-normalization-qodd-aux-1>For
      <math|q\<in\>2\<bbb-Z\>+1> and <math|p\<in\>2\<bbb-Z\><rsub|\<geqslant\>1>>
      with notation as in lemma <reference|KC-normalization-2:lem-Pcomputation>
      we have

      <\equation*>
        min<rsub|<around*|(|m<rprime|'>,n<rprime|'>,N,i|)>\<in\>\<frak-I\>><around*|{|C<rsub|m<rprime|'>,n<rprime|'>,0,i>+D<rsub|m<rprime|'>,n<rprime|'>,0<rprime|'>i>+A<rsub|m<rprime|'>,n<rprime|'>,N,i>+B<rsub|m<rprime|'>,n<rprime|'>,N,i>|}>=
        \<varnothing\>
      </equation*>
    </lemma>

    <\proof>
      Indeed, letting <math|\<frak-I\>\<assign\>\<bbb-Z\><rsub|\<geqslant\>0><rsup|2>\<times\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>0>|)>\<times\><around*|{|0,1|}>>
      we have

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|min<rsub|<around*|(|m<rprime|'>,n<rprime|'>,N,i|)>\<in\>\<frak-I\>><around*|{|C<rsub|m<rprime|'>,n<rprime|'>,0,i>+D<rsub|m<rprime|'>,n<rprime|'>,0<rprime|'>i>+A<rsub|m<rprime|'>,n<rprime|'>,N,i>+B<rsub|m<rprime|'>,n<rprime|'>,N,i>|}>=>|<cell|>>|<row|<cell|>|<cell|=
        -<big|cap><rsub|<around*|(|m<rprime|'>,n<rprime|'>,N,i|)>\<in\>\<frak-I\>><around*|(|<around*|{|\<lambda\>=q-2m<rprime|'>-N-1-2j|}><rsub|j=0><rsup|<around*|(|\<nu\>-3|)>/2>\<cup\><around*|{|\<lambda\>\<in\>-N-2m<rprime|'>-2n<rprime|'>-2i-2\<bbb-Z\><rsub|\<geqslant\>0>|}>|\<nobracket\>>\<cup\>>|<cell|>>|<row|<cell|>|<cell|\<cup\><around*|{|\<lambda\>\<in\>q-\<nu\>-N-2\<bbb-Z\><rsub|\<geqslant\>0>|}><around*|\<nobracket\>|\<cup\><around*|{|\<lambda\>=n-\<nu\>+2j|}><rsub|j=0><rsup|<around*|(|N-2|)>/2>|)>=>|<cell|>>|<row|<cell|>|<cell|=<big|cap><rsub|N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>><around*|(|<around*|{|\<lambda\>\<in\>q-\<nu\>-N-2\<bbb-Z\><rsub|\<geqslant\>0>|}>\<cup\><around*|{|\<lambda\>=n-\<nu\>+2j|}><rsub|j=0><rsup|<around*|(|N-2|)>/2>\<cup\>|\<nobracket\>>>|<cell|>>|<row|<cell|>|<cell|\<cup\><around*|\<nobracket\>|<big|cap><rsub|<around*|(|m<rprime|'>,n<rprime|'>,i|)>\<in\>\<bbb-Z\><rsub|\<geqslant\>0><rsup|2>\<times\><around*|{|0,1|}>><around*|(|<around*|{|\<lambda\>=q-2m<rprime|'>-N-1-2j|}><rsub|j=0><rsup|<around*|(|\<nu\>-3|)>/2>\<cup\><around*|{|\<lambda\>\<in\>-N-2m<rprime|'>-2n<rprime|'>-2i-2\<bbb-Z\><rsub|\<geqslant\>0>|}>|)>|)>=>|<cell|>>|<row|<cell|>|<cell|=<big|cap><rsub|N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>><around*|(|<around*|{|\<lambda\>\<in\>q-\<nu\>-N-2\<bbb-Z\><rsub|\<geqslant\>0>|}>\<cup\><around*|{|\<lambda\>=n-\<nu\>+2j|}><rsub|j=0><rsup|<around*|(|N-2|)>/2>|)>.>|<cell|>>>>
      </eqnarray>

      Now, as we have <math|q-\<nu\>\<less\>n-\<nu\>>, the first item of
      lemma <reference|P-def:lem-threeset> implies that latter equals to

      <\equation*>
        =<big|cap><rsub|N2\<bbb-Z\><rsub|\<geqslant\>0>><around*|(|<around*|{|\<lambda\>\<in\>q-\<nu\>-N-2\<bbb-Z\><rsub|\<geqslant\>0>|}>|)>\<cup\><big|cap><rsub|\<Nu\>2\<bbb-Z\><rsub|\<geqslant\>0>><around*|{|\<lambda\>=n-\<nu\>+2j|}><rsub|j=0><rsup|<around*|(|N-2|)>/2>=\<varnothing\>\<cup\>\<varnothing\>
        = \<varnothing\>.
      </equation*>
    </proof>

    <\lemma>
      <label|KC-normalization-2:lem-normalization-qodd>Proposition
      <reference|KC-normalization-2:prop-normalization> holds for
      <math|q\<in\>2\<bbb-Z\>+1>.
    </lemma>

    <\proof>
      Fix <math|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1> and let
      <math|\<frak-I\>\<assign\>\<bbb-Z\><rsub|\<geqslant\>0><rsup|2>\<times\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>0>|)>\<times\><around*|{|0,1|}>>
      and <math|\<frak-I\><rsub|0>\<assign\>\<bbb-Z\><rsub|\<geqslant\>0><rsup|2>\<times\><around*|{|0,1|}>>
      to facitilate the notation. As we need to show that
      <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>/N> is holomorphic and nonzero,
      it suffices to show that for any <math|K>-finite vector <math|F> we
      have <math|\<lambda\>\<mapsto\><around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|C>,F|\<rangle\>>>
      being holomorphic and for every <math|\<lambda\>\<in\>\<bbb-C\>> one
      can find <math|K>-finite vector <math|F<rsub|0>> such that
      <math|<around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|C>,F<rsub|0>|\<rangle\>>\<neq\>0>.

      Employing <math|\<frak-P\><around*|(|\<cdot\>|)>>-notation, in the
      light of lemma <reference|KC-normalization-2:lem-kfinite-wrap> it
      suffices to show that

      <\equation*>
        max<rsub|<around*|(|m<rprime|'>,n<rprime|'>,N,i|)>\<in\>\<frak-I\>><around*|{|\<frak-P\><around*|(|<around*|\<langle\>|<frac|K<rsub|\<lambda\>,\<nu\>><rsup|C>|N>,F<rsub|N,0><around*|[|\<psi\><rsub|N>,1;<around*|(|s
        t|)><rsup|i><around*|(|1-s<rsup|2>|)><rsup|n<rprime|'>><around*|(|1-t<rsup|2>|)><rsup|m<rprime|'>>|]>|\<rangle\>>|)>|}><rsub|>=
        \<varnothing\>
      </equation*>

      For this it suffices to compute

      <\equation*>
        max<rsub|<around*|(|m<rprime|'>,n<rprime|'>,N,i|)>\<in\>\<frak-I\>><around*|{|\<frak-P\><around*|(|<around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|C>,F<rsub|N,0><around*|[|\<psi\><rsub|N>,1;<around*|(|s
        t|)><rsup|i><around*|(|1-s<rsup|2>|)><rsup|n<rprime|'>><around*|(|1-t<rsup|2>|)><rsup|m<rprime|'>>|]>|\<rangle\>>|)>|}><rsub|>
      </equation*>

      Moreover, we note that lemma <reference|supp-Q:prop-supp-xnoq0> implies
      in particular that <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>> is nonzero
      for <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\>\<times\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>0>+1|)>>
      and therefore one can compute <math|\<frak-P\><rsub|+>> instead of
      <math|\<frak-P\>>.

      We first treat <math|p=1> case. With reference to formulae of lemma
      <reference|KC-normalization-2:lem-Pcomputation>, we note that under the
      assumption <math|q\<in\>2\<bbb-Z\>+1> and <math|p=1> we have
      <math|supp<around*|(|C<rsub|m<rprime|'>,n<rprime|'>,N,i>|)>,supp<around*|(|D<rsub|m<rprime|'>,n<rprime|'>,N,i>|)>\<subset\>\<lambda\>+2\<bbb-Z\>>
      and <math|supp<around*|(|E<rsub|m<rprime|'>,n<rprime|'>,N,i>|)>\<subset\>\<lambda\>+2\<bbb-Z\>+1>,
      hence we have (we use <math|f<rsub|+>> notation to denote positive part
      of <math|f:\<bbb-C\>\<rightarrow\>\<bbb-Z\>>)

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|max<rsub|><around*|{|\<frak-P\><rsub|+><around*|(|<around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|C>,F<rsub|N,0><around*|[|\<psi\><rsub|N>,1;<around*|(|s
        t|)><rsup|i><around*|(|1-s<rsup|2>|)><rsup|n<rprime|'>><around*|(|1-t<rsup|2>|)><rsup|m<rprime|'>>|]>|\<rangle\>>|)>|}><rsub|<around*|(|m<rprime|'>,n<rprime|'>,N,i|)>\<in\>\<frak-I\>>=>|<cell|>>|<row|<cell|>|<cell|=max<rsub|<around*|(|m<rprime|'>,n<rprime|'>,i|)>\<in\>\<frak-I\><rsub|0>><around*|(|-C<rsub|m<rprime|'>,n<rprime|'>,0,i>-D<rsub|m<rprime|'>,n<rprime|'>,0<rprime|'>i>|)><rsub|+>+max<rsub|<around*|(|m<rprime|'>,n<rprime|'>,i|)>\<in\>\<frak-I\>><around*|{|E<rsub|m<rprime|'>,n<rprime|'>,0<rprime|'>i>|}>=>|<cell|>>|<row|<cell|>|<cell|=max<rsub|<around*|(|m<rprime|'>,n<rprime|'>,i|)>\<in\>\<frak-I\><rsub|0>>0+<big|cup><rsub|<around*|(|m<rprime|'>,n<rprime|'>,i|)>\<in\>\<frak-I\><rsub|0>><around*|{|\<lambda\>\<in\>-N-2m<rprime|'>-2n<rprime|'>+\<nu\>-2\<bbb-Z\><rsub|\<geqslant\>0>|}>=-\<varnothing\>+<around*|{|\<lambda\>\<in\>\<nu\>-2\<bbb-Z\><rsub|\<geqslant\>0>|}>>|<cell|>>>>
      </eqnarray>

      which gives the answer in the <math|p=1> case.

      Next, we treat <math|p\<in\>2\<bbb-Z\><rsub|\<geqslant\>1>> case.
      Similarly, to above, we have <math|C<rsub|m<rprime|'>,n<rprime|'>,N,i>>,
      <math|D<rsub|m<rprime|'>,n<rprime|'>,N,i>>,
      <math|A<rsub|m<rprime|'>,n<rprime|'>,N,i>> and
      <math|B<rsub|m<rprime|'>,n<rprime|'>,N,i>> vanishing outside
      <math|\<lambda\>+2\<bbb-Z\>>, while
      <math|E<rsub|m<rprime|'>,n<rprime|'>,N,i>> vanishes outside
      <math|\<lambda\>+2\<bbb-Z\>+1>. Hence, applying lemma
      <reference|KC-normalization-2:lem-normalization-qodd-aux-1> we have

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|max<rsub|><around*|{|\<frak-P\><around*|(|<around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|C>,F<rsub|N,0><around*|[|\<psi\><rsub|N>,1;<around*|(|s
        t|)><rsup|i><around*|(|1-s<rsup|2>|)><rsup|n<rprime|'>><around*|(|1-t<rsup|2>|)><rsup|m<rprime|'>>|]>|\<rangle\>>|)>|}><rsub|<around*|(|m<rprime|'>,n<rprime|'>,N,i|)>\<in\>\<frak-I\>>=>|<cell|>>|<row|<cell|>|<cell|=max<rsub|<around*|(|m<rprime|'>,n<rprime|'>,N,i|)>\<in\>\<frak-I\>><around*|(|-C<rsub|m<rprime|'>,n<rprime|'>,0,i>-D<rsub|m<rprime|'>,n<rprime|'>,0<rprime|'>i>-A<rsub|m<rprime|'>,n<rprime|'>,N,i>-B<rsub|m<rprime|'>,n<rprime|'>,N,i>|)><rsub|+>+max<rsub|<around*|(|m<rprime|'>,n<rprime|'>,i|)>\<in\>\<frak-I\>><around*|{|E<rsub|m<rprime|'>,n<rprime|'>,0<rprime|'>i>|}>=>|<cell|>>|<row|<cell|>|<cell|=-\<varnothing\>+<around*|{|\<lambda\>\<in\>\<nu\>-2\<bbb-Z\><rsub|\<geqslant\>0>|}>>|<cell|>>>>
      </eqnarray>

      Finally, case <math|p\<in\>2\<bbb-Z\><rsub|\<geqslant\>1>+1> is treated
      similarly, only this time we have <math|A<rsub|m<rprime|'>,n<rprime|'>,N,i>>
      vanishing outside <math|\<lambda\>+2\<bbb-Z\>+1> and hence

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|max<rsub|><around*|{|\<frak-P\><around*|(|<around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|C>,F<rsub|N,0><around*|[|\<psi\><rsub|N>,1;<around*|(|s
        t|)><rsup|i><around*|(|1-s<rsup|2>|)><rsup|n<rprime|'>><around*|(|1-t<rsup|2>|)><rsup|m<rprime|'>>|]>|\<rangle\>>|)>|}><rsub|<around*|(|m<rprime|'>,n<rprime|'>,N,i|)>\<in\>\<frak-I\>>=>|<cell|>>|<row|<cell|>|<cell|=max<rsub|<around*|(|m<rprime|'>,n<rprime|'>,N,i|)>\<in\>\<frak-I\>><around*|(|-C<rsub|m<rprime|'>,n<rprime|'>,0,i>-D<rsub|m<rprime|'>,n<rprime|'>,0<rprime|'>i>-B<rsub|m<rprime|'>,n<rprime|'>,N,i>|)><rsub|+>+max<rsub|<around*|(|m<rprime|'>,n<rprime|'>,i|)>\<in\>\<frak-I\>><around*|{|E<rsub|m<rprime|'>,n<rprime|'>,0<rprime|'>i>-A<rsub|m<rprime|'>,n<rprime|'>,N,i>|}>=>|<cell|>>|<row|<cell|>|<cell|=-\<varnothing\>+<around*|{|\<lambda\>\<in\>\<nu\>-2\<bbb-Z\><rsub|\<geqslant\>0>|}>.>|<cell|>>>>
      </eqnarray>
    </proof>

    <\lemma>
      <label|KC-normalization-2:lem-normalization-q-even-p-1>Proposition
      <reference|KC-normalization-2:prop-normalization> holds for
      <math|q\<in\>2\<bbb-Z\>> and <math|p=1>.
    </lemma>

    <\proof>
      We proceed as in proof of lemma <reference|KC-normalization-2:lem-normalization-qodd>.
      Under the assumptions taken on <math|<around*|(|p,q|)>> we have
      <math|D<rsub|m<rprime|'>,n<rprime|'>,N,i>\<subset\>\<lambda\>+2\<bbb-Z\>>,
      while <math|C<rsub|m<rprime|'>,n<rprime|'>,N,i>,E<rsub|m<rprime|'>,n<rprime|'>,N,i>\<subset\>\<lambda\>+2\<bbb-Z\>+1>.

      Therefore, as in proof of lemma <reference|KC-normalization-2:lem-normalization-qodd>,
      it reduces to one having to compute for
      <math|\<frak-I\>\<assign\>\<bbb-Z\><rsub|\<geqslant\>0>\<times\><around*|(|max<around*|{|<frac|\<nu\>-q+1|2>,0|}>+\<bbb-Z\><rsub|\<geqslant\>0>|)>>
      and <math|f<rsub|+>> denoting the positive part of <math|f<rsub|+>>,
      the result of

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|max<rsub|<around*|(|m<rprime|'>,n<rprime|'>|)>\<in\>\<frak-I\>><around*|(|<around*|{|\<lambda\>\<in\>-2m<rprime|'>-2n<rprime|'>+\<nu\>-2\<bbb-Z\><rsub|\<geqslant\>0>|}>-<around*|{|\<lambda\>=q-2m<rprime|'>-1-2j|}><rsub|j=0><rsup|<around*|(|\<nu\>-3|)>/2>|)><rsub|+>=>|<cell|>>|<row|<cell|>|<cell|=<big|cup><rsub|<around*|(|m<rprime|'>,n<rprime|'>|)>\<in\>\<frak-I\>><around*|(|<around*|{|\<lambda\>\<in\>-2m<rprime|'>-2n<rprime|'>+\<nu\>-2\<bbb-Z\><rsub|\<geqslant\>0>|}>\\<around*|{|\<lambda\>=q-2m<rprime|'>-1-2j|}><rsub|j=0><rsup|<around*|(|\<nu\>-3|)>/2>|)>=>|<cell|>>|<row|<cell|>|<cell|=<big|cup><rsub|m<rprime|'>=0><rsup|\<infty\>><big|cup><rsub|n<rprime|'>=max<around*|{|<frac|\<nu\>-q+1|2>,0|}>><rsup|\<infty\>><around*|(|<around*|{|\<lambda\>\<in\>-2m<rprime|'>-2n<rprime|'>+\<nu\>-2\<bbb-Z\><rsub|\<geqslant\>0>|}>\\<around*|{|\<lambda\>=-2m<rprime|'>+q-1-2j|}><rsub|j=0><rsup|<around*|(|\<nu\>-3|)>/2>|)>=>|<cell|>>|<row|<cell|>|<cell|=<big|cup><rsub|m<rprime|'>=0><rsup|\<infty\>><around*|(|<around*|{|\<lambda\>\<in\>min<around*|{|q-\<nu\>-1,0|}>+\<nu\>-2m<rprime|'>-2\<bbb-Z\><rsub|\<geqslant\>0>|}>\\<around*|{|\<lambda\>=-2m<rprime|'>+q-\<nu\>+2+2j|}><rsub|j=0><rsup|<around*|(|\<nu\>-3|)>/2>|)><rsup|>=>|<cell|>>>>
      </eqnarray>

      and as <math|><math|min<around*|{|q-\<nu\>-1,0|}>+\<nu\>\<leqslant\>q-1=q-\<nu\>+2+<around*|(|\<nu\>-3|)>>,
      the latter equals to

      <\equation*>
        =<big|cup><rsub|m<rprime|'>=0><rsup|\<infty\>><around*|{|\<lambda\>\<in\>-2m<rprime|'>+min<around*|{|q-1,\<nu\>,q-\<nu\>|}>-2\<bbb-Z\><rsub|\<geqslant\>0>|}>=<around*|{|\<lambda\>\<in\>min<around*|{|q-1,\<nu\>,q-\<nu\>|}>-2\<bbb-Z\><rsub|\<geqslant\>0>|}>.
      </equation*>

      and as <math|min<around*|{|q-1,\<nu\>,q-\<nu\>|}>=min<around*|{|q-1,\<nu\>|}>>,
      we are done.
    </proof>

    <\lemma>
      <label|KC-normalization-2:lem-normalization-q-even-p-odd>Proposition
      <reference|KC-normalization-2:prop-normalization> holds for
      <math|q\<in\>2\<bbb-Z\>> and <math|p\<gtr\>1>.
    </lemma>

    <\proof>
      We first do the proof for <math|p\<in\>2\<bbb-Z\>+1>. The proof goes
      similarly to that of lemma <reference|KC-normalization-2:lem-normalization-q-even-p-1>.
      We have <math|A<rsub|m<rprime|'>,n<rprime|'>,N,i>,<space|0.6spc>D<rsub|m<rprime|'>,n<rprime|'>,N,i>\<subset\>\<lambda\>+2\<bbb-Z\>>,
      while <math|C<rsub|m<rprime|'>,n<rprime|'>,N,i>,E<rsub|m<rprime|'>,n<rprime|'>,N,i>,D<rsub|m<rprime|'>,n<rprime|'>,N,i>\<subset\>\<lambda\>+2\<bbb-Z\>+1>.
      Thus we need to compute for <math|\<frak-I\>\<assign\>\<bbb-Z\><rsub|\<geqslant\>0>\<times\><around*|(|max<around*|{|<frac|\<nu\>-q+1|2>,0|}>+\<bbb-Z\><rsub|\<geqslant\>0>|)>\<times\>2\<bbb-Z\><rsub|\<geqslant\>0>>

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<big|cup><rsub|<around*|(|m<rprime|'>,n<rprime|'>,N|)>\<in\>\<frak-I\>><around*|{|\<lambda\>\<in\>-2n<rprime|'>-N+\<nu\>-2m<rprime|'>-2\<bbb-Z\><rsub|\<geqslant\>0>|}>\\>|<cell|>>|<row|<cell|>|<cell|<around*|(|<around*|{|\<lambda\>=-2m<rprime|'>+q-N-\<nu\>+2+2j|}><rsub|j=0><rsup|<around*|(|\<nu\>-3|)>/2>\<cup\><around*|{|\<lambda\>\<in\>q-\<nu\>-N-2\<bbb-Z\><rsub|\<geqslant\>0>|}>|)>=>|<cell|>>|<row|<cell|>|<cell|=<big|cup><rsub|<around*|(|m<rprime|'>,N|)>\<in\>\<bbb-Z\><rsub|\<geqslant\>0>\<times\>2\<bbb-Z\><rsub|\<geqslant\>0>><around*|{|\<lambda\>\<in\>-N-2m<rprime|'>+min<around*|{|q-1,\<nu\>,q-\<nu\>|}>-2\<bbb-Z\><rsub|\<geqslant\>0>|}>\\<around*|{|\<lambda\>\<in\>q-\<nu\>-N-2\<bbb-Z\><rsub|\<geqslant\>0>|}>=>|<cell|>>|<row|<cell|>|<cell|=<big|cup><rsub|N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>><around*|{|\<lambda\>\<in\>-N+min<around*|{|\<nu\>,q-\<nu\>|}>-2\<bbb-Z\><rsub|\<geqslant\>0>|}>\\<around*|{|\<lambda\>\<in\>q-\<nu\>-N-2\<bbb-Z\><rsub|\<geqslant\>0>|}>=\<varnothing\>.>|<cell|>>>>
      </eqnarray>

      The case <math|p\<in\>2\<bbb-Z\>> is then handled similarly.
    </proof>

    <subsection|Proofs>

    <\proof>
      (of prop. <reference|KC-normalization:prop-kfinite>) Similarly to
      <cite|kobayashi2015symmetry> and <cite|Kobayashi201489>, we have
      <math|I<around|(|\<lambda\>|)>\<simeq\><around*|(|l<rsub|\<Xi\>>,C<rsub|-\<lambda\>><rsup|\<infty\>><around|(|\<Xi\><rsup|p+1,q+1>|)>|)>>,
      so all we need to do is to calculate the pullback of the
      <math|K>-finite vectors of <math|C<rsub|-\<lambda\>><rsup|\<infty\>><around|(|\<Xi\><rsup|p+1,q+1>|)>>
      under the embedding

      <\equation*>
        <with|math-font|Euler|n><rsub|->\<simeq\><with|math-font|Bbb|R><rsup|p,q>\<ni\><around|(|x,y|)>\<mapsto\><around|(|1-<around*|\||x|\|><rsup|2>+<around*|\||y|\|><rsup|2>,<space|0.25spc>2*x,<space|0.25spc>2*y,<space|0.25spc>1+<around*|\||x|\|><rsup|2>-<around*|\||y|\|><rsup|2>|)>\<in\>\<Xi\><rsup|p+1,q+1>
      </equation*>

      In turn, lemma <reference|For-,-we> \ and the second item of lem.
      <reference|Let--denote> \ tells us what is the form of <math|K>-finite
      vectors in <math|<around*|(|l<rsub|\<Xi\>>,C<rsub|-\<lambda\>><rsup|\<infty\>><around|(|\<Xi\><rsup|p+1,q+1>|)>|)>>,
      and this gives the desired conclusion.
    </proof>

    <\proof>
      (of prop. <reference|KC-normalization-2:prop-normalization>) Follows
      from lemmas <reference|KC-normalization-2:lem-normalization-qodd>,
      <reference|KC-normalization-2:lem-normalization-q-even-p-1> and
      <reference|KC-normalization-2:lem-normalization-q-even-p-odd>
    </proof>
  <|hide-part>
    <section|KC-normalization-2>
  </hide-part>

  <\hide-part|14>
    <section|Q-normalization><label|section:q-norm>

    <subsubsection|Setting and goal>

    In this note we try to find perferct normalization of meromorphic
    distributions <math|<around*|\||Q|\|><rsup|\<nu\>>> and
    <math|<around*|\||Q|\|><rsup|\<nu\>>sgn<around*|(|Q|)>>, here perfect
    normalization means that we find meromorphic functions <math|N<rsub|1,2>>
    in <math|\<nu\>\<in\>\<bbb-C\>> (depending, of course, on <math|p,q> as
    well) such that <math|<around*|\||Q|\|><rsup|\<nu\>>/N<rsub|1>> and
    <math|<around*|\||Q|\|><rsup|\<nu\>>sgn<around*|(|Q|)>/N<rsub|2>> are
    holomorphic nowhere-vanishing distributions in
    <math|\<nu\>\<in\>\<bbb-C\>>.

    This allows one to precisely understant poles of
    <math|<around*|\||Q|\|><rsup|\<nu\>>> and
    <math|<around*|\||Q|\|><rsup|\<nu\>>sgn<around*|(|Q|)>>. Moreover, we
    compute the supports of highest-order terms at these poles.

    Similar results are also obtained at <cite|gelfand1980distribution>, but
    technique they use is different and seems to be more complicated. Anyway,
    the technique we use here is independent of
    <cite|gelfand1980distribution>.

    We will need a few statements from <cite|hormander1983analysis>, which we
    assume and list below. Of these the first is well-known general fact,
    while other two are computational results.

    <\fact>
      <label|fact-horm-homog><cite-detail|hormander1983analysis|Thm. 3.2.3>
      If <math|u\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>-<around*|{|0|}>|)>>
      is homogeneous of degree <math|a\<in\>\<bbb-C\>\\<around*|(|-n-\<bbb-Z\><rsub|\<geqslant\>0>|)>>,
      it's homogeneous extension to <math|\<bbb-R\><rsup|n>> exists and is
      unique.
    </fact>

    <\fact>
      <label|fact-horm1><cite-detail|hormander1983analysis|Thm. 6.2.1> Let
      <math|p,q\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> with
      <math|n=p+q\<gtr\>2>. Let <math|Q> be <math|<around*|(|p,q|)>>
      quadratic form on <math|\<bbb-R\><rsup|p,q>> and
      <math|\<delta\><rsup|<around*|(|n/2-2|)>><around*|(|Q|)>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>>.
      The latter is homogeneous of degree <math|2-n> and hence, by fact
      <reference|fact-horm-homog>, it has unique extension to
      <math|\<bbb-R\><rsup|p,q>> which we'll also denote by
      <math|\<delta\><rsup|<around*|(|n/2-2|)>><around*|(|Q|)>>. Then, for
      <math|L\<assign\><big|sum><rsub|i=0><rsup|p><frac|\<partial\><rsup|2>|\<partial\>x<rsub|i><rsup|2>>-<big|sum><rsub|j=0><rsup|q><frac|\<partial\><rsup|2>|\<partial\>y<rsub|j><rsup|2>>>
      we have

      <\equation*>
        L \<delta\><rsup|<around*|(|n/2-2|)>><around*|(|Q|)>=4\<pi\><rsup|<around*|(|n/2-2|)>>sin<around*|(|<frac|\<pi\>p|2>|)>\<delta\><around*|(|x|)>
      </equation*>
    </fact>

    <\fact>
      <label|fact-horm2><cite-detail|hormander1983analysis|Thm. 6.2.1> Let
      <math|p,q\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> with
      <math|n=p+q\<gtr\>2>. Let <math|Q> be <math|<around*|(|p,q|)>>
      quadratic form on <math|\<bbb-R\><rsup|p,q>> and
      <math|<around*|(|Q\<pm\>i0|)><rsup|1-n/2>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>>
      be the pullbacks of <math|<around*|(|x\<pm\>i0|)><rsup|1-n/2>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\>|)>>
      under <math|Q:\<bbb-R\><rsup|p,q>\<rightarrow\>\<bbb-R\>>. The latter
      are homogeneous of degree <math|2-n> and hence, by fact
      <reference|fact-horm-homog>, it has unique extension to
      <math|\<bbb-R\><rsup|p,q>> which we'll also denote by
      <math|<around*|(|Q\<pm\>i0|)><rsup|1-n/2>>. Then, for
      <math|L\<assign\><big|sum><rsub|i=0><rsup|p><frac|\<partial\><rsup|2>|\<partial\>x<rsub|i><rsup|2>>-<big|sum><rsub|j=0><rsup|q><frac|\<partial\><rsup|2>|\<partial\>y<rsub|j><rsup|2>>>
      we have

      <\equation*>
        L <around*|(|Q\<pm\>i0|)><rsup|1-n/2>=<around*|(|2-n|)>c<rsub|n>e<rsup|\<mp\>\<pi\>i
        q/2>\<delta\><around*|(|x|)>,
      </equation*>

      where <math|c<rsub|n>> is the area of unit sphere in
      <math|\<bbb-R\><rsup|n>>.
    </fact>

    <subsection|Comments>

    While doing this computation I've realized that conceptually it is not
    difficult indeed. Moreover, I believe these could be done faster if one
    would proceed in the following fashion:

    <\enumerate>
      <item>Choose normalizations <math|<wide|Q|~><rsub|\<pm\>><rsup|\<nu\>>\<assign\>Q<rsub|\<pm\>><rsup|\<nu\>>/\<Gamma\><around*|(|\<nu\>+1|)>/\<Gamma\><around*|(|\<nu\>+<frac|n|2>|)>>
      and show that these are holomorphic -- this is trivial to do, as
      recurrence relation becomes <math|L
      <wide|Q|~><rsub|\<pm\>><rsup|\<nu\>+1>=\<pm\>4<wide|Q|~><rsub|\<pm\>><rsup|\<nu\>>>.

      <item>See that these never vanish for <math|n\<in\>2\<bbb-Z\>+1> --
      hence <math|Q<rsub|\<pm\>><rsup|\<nu\>>> have only at most simple poles
      at points <math|-\<bbb-Z\><rsub|\<geqslant\>1>\<sqcup\><around*|(|-<frac|n|2>-\<bbb-Z\><rsub|\<geqslant\>0>|)>>.
      Moreover, residues can be computed explicitly via recurrence equations.

      <item>See that these never vanish for <math|p,q\<in\>2\<bbb-Z\>+1>.
      Hence, <math|Q<rsub|\<pm\>><rsup|\<nu\>>> has at most single poles for
      <math|-1,-2,\<ldots\>,-<frac|n|2>+1> and at most double poles for
      <math|\<nu\>=-<frac|n|2>,-<frac|n|2>-1,\<ldots\>> moreover residues can
      be computed for at most simple poles and for at most double poles we
      can compute leading term in Laurent series. Moreover, for at most
      double poles we can also compute residues by inspecting term
      corresponding to <math|\<nu\><rsup|1>> in Taylor expansion of
      <math|<wide|Q|~><rsub|\<pm\>><rsup|\<nu\>>> at <math|\<nu\>=-n/2+1>
      (which in turn is proportional to <math|\<nu\><rsup|0>> term of Laurent
      expansion of <math|Q<rsub|\<pm\><rsup|>><rsup|\<nu\>>> around the same
      point) and computing <math|L>'s of it.

      <item>Note that <math|<wide|Q|~><rsub|\<pm\>><rsup|\<nu\>>> is nonzero
      for <math|-1,-2,\<ldots\>,-<frac|n|2>+1>, but vanishes poles for
      <math|\<nu\>=-<frac|n|2>,-<frac|n|2>-1,\<ldots\>>, hence
      <math|Q<rsub|\<pm\>><rsup|\<nu\>>> has simple poles at both groups of
      points. Then residues at first group can be computed as before, while
      residues at the second can be computed by taking <math|L>'s of term
      corresponding to <math|\<nu\><rsup|1>> in Taylor expansion of
      <math|<wide|Q|~><rsub|\<pm\>><rsup|\<nu\>>> at <math|\<nu\>=-n/2+1>
      (which in turn is proportional to <math|\<nu\><rsup|0>> term of Laurent
      expansion of <math|Q<rsub|\<pm\><rsup|>><rsup|\<nu\>>> around the same
      point).

      <item>Use results of three previous steps to get data about
      <math|<around*|\||Q|\|><rsup|\<nu\>>> and
      <math|<around*|\||Q|\|><rsup|\<nu\>>sgn<around*|(|Q|)>>.
    </enumerate>

    Moreover, I should note that despite my initial feeling this method is
    ``robust''. That is, normalization in first step is quite ``natural'' one
    to guess. Despite it's not being the best possible, it can be later
    adjusted in course of steps 2-4.

    <subsection|Main results>

    <\proposition>
      <label|q-norm:prop-1>Let <math|Q> denote the
      <math|<around*|(|p,q|)>>-quadratic form with <math|p,q\<gtr\>0>. We
      also assume that <math|n\<assign\>p+q\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>.
      Let <math|F<rsup|<around*|(|0|)>><rsub|\<nu\>>\<assign\><around*|\||Q|\|><rsup|\<nu\>>>
      and <math|F<rsup|<around*|(|1|)>><rsub|\<nu\>>\<assign\><around*|\||Q|\|><rsup|\<nu\>>sgn<around*|(|Q|)>>
      be generalized functions for <math|Re<around*|(|\<nu\>|)>\<gtr\>0>.\ 

      Let further <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>\<assign\>F<rsub|\<nu\>><rsup|<around*|(|i|)>>/N<rsub|i>>
      for <math|i=0,1>, where

      <\equation*>
        N<rsub|i>\<assign\><choice|<tformat|<table|<row|<cell|\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>\<Gamma\><around*|(|\<nu\>+n/2|)>,>|<cell|i=0>>|<row|<cell|\<Gamma\><around*|(|<frac|\<nu\>+2|2>|)>\<Gamma\><around*|(|\<nu\>+n/2|)>,>|<cell|i=1>>>>>
      </equation*>

      Then, <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>> extends to
      holomorphic in <math|\<nu\>\<in\>\<bbb-C\>> distributions. Moreover,
      these are nonzero for <math|\<nu\>\<in\>\<bbb-C\>>.
    </proposition>

    <\proposition>
      <label|q-norm:prop-2>Let the setting,
      <math|F<rsub|\<nu\>><rsup|<around*|(|i|)>>> and
      <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>> be as in
      proposition <reference|q-norm:prop-1>, but assume that
      <math|n\<assign\>p+q\<in\>2\<bbb-Z\><rsub|\<gtr\>0>> and let\ 

      <\equation*>
        N<rsub|i>\<assign\><choice|<tformat|<table|<row|<cell|\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+n/2|2>|)>,>|<cell|i=0,n/2\<in\>2\<bbb-Z\>,p,q\<in\>2\<bbb-Z\>>>|<row|<cell|\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>\<Gamma\>*<around*|(|<frac|\<nu\>+n/2+1|2>|)>,>|<cell|i=0,n/2\<in\>2\<bbb-Z\>+1,p,q\<in\>2\<bbb-Z\>>>|<row|<cell|\<Gamma\><around*|(|<frac|\<nu\>+2|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+n/2+1|2>|)>,>|<cell|i=1,n/2\<in\>2\<bbb-Z\>,p,q\<in\>2\<bbb-Z\>>>|<row|<cell|\<Gamma\><around*|(|<frac|\<nu\>+2|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+n/2|2>|)>,>|<cell|i=1,n/2\<in\>2\<bbb-Z\>+1,p,q\<in\>2\<bbb-Z\>>>|<row|<cell|\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+n/2+1|2>|)>,>|<cell|i=0,n/2\<in\>2\<bbb-Z\>,p,q\<in\>2\<bbb-Z\>+1>>|<row|<cell|\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+n/2|2>|)>,>|<cell|i=0,n/2\<in\>2\<bbb-Z\>+1,p,q\<in\>2\<bbb-Z\>+1>>|<row|<cell|\<Gamma\><around*|(|<frac|\<nu\>+2|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+n/2|2>|)>,>|<cell|i=1,n/2\<in\>2\<bbb-Z\>,p,q\<in\>2\<bbb-Z\>+1>>|<row|<cell|\<Gamma\><around*|(|<frac|\<nu\>+2|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+n/2+1|2>|)>,>|<cell|i=1,n/2\<in\>2\<bbb-Z\>+1,p,q\<in\>2\<bbb-Z\>+1>>>>>
      </equation*>

      Then, <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>> extend to
      holomorphic in <math|\<nu\>\<in\>\<bbb-C\>> distributions. Moreover,
      these are nonzero for <math|\<nu\>\<in\>\<bbb-C\>>.
    </proposition>

    <\proposition>
      The poles of <math|F<rsub|\<nu\>><rsup|<around*|(|i|)>>> and their
      supports are given as follows:

      <\equation*>
        \<frak-P\><rsub|+><around*|(|F<rsub|\<nu\>><rsup|<around*|(|i|)>>|)>=\<frak-P\><around*|(|F<rsub|\<nu\>><rsup|<around*|(|i|)>>|)>=
      </equation*>

      <\equation*>
        =<choice|<tformat|<table|<row|<cell|<around*|[|-1-2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><around*|(|-n/2-\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|n\<in\>2\<bbb-Z\>+1\<nocomma\>\<nocomma\>,i=0>>|<row|<cell|<around*|[|-2-2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><around*|(|-n/2-\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|n\<in\>2\<bbb-Z\>+1,i=1>>|<row|<cell|<around*|[|-1-2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><around*|(|-n/2-2\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|i=0,n/2\<in\>2\<bbb-Z\>,p,q\<in\>2\<bbb-Z\>>>|<row|<cell|<around*|[|-1-2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><around*|(|-n/2-1-2\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|i=0,n/2\<in\>2\<bbb-Z\>+1,p,q\<in\>2\<bbb-Z\>>>|<row|<cell|<around*|[|-2-2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><around*|(|-n/2-1-2\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|i=1,n/2\<in\>2\<bbb-Z\>,p,q\<in\>2\<bbb-Z\>>>|<row|<cell|<around*|[|-2-2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><around*|(|-n/2-2\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|i=1,n/2\<in\>2\<bbb-Z\>+1,p,q\<in\>2\<bbb-Z\>>>|<row|<cell|<around*|[|-1|]>,<around*|[|-3|]>,<around*|[|-5|]>,<around*|[|\<ldots\>|]>,<around*|[|-<frac|n|2>+1|]>,<around*|(|<with|font-series|bold|<with|font-series|bold|-<frac|\<b-n\>|\<b-2\>>-\<b-1\>>>|)>,<around*|(|-<frac|\<b-n\>|\<b-2\>>-\<b-3\>|)>,\<ldots\>>|<cell|i=0,n/2\<in\>2\<bbb-Z\>,p,q\<in\>2\<bbb-Z\>+1>>|<row|<cell|<around*|[|-1|]>,<around*|[|-3|]>,<around*|[|-5|]>,<around*|[|\<ldots\>|]>,<around*|[|-<frac|n|2>+2|]>,<around*|(|-<frac|\<b-n\>|\<b-2\>>|)>,<around*|(|-<frac|\<b-n\>|\<b-2\>>-\<b-2\>|)>,\<ldots\>>|<cell|i=0,n/2\<in\>2\<bbb-Z\>+1,p,q\<in\>2\<bbb-Z\>+1>>|<row|<cell|<around*|[|-2|]>,<around*|[|-4|]>,<around*|[|-6|]>,<around*|[|\<ldots\>|]>,<around*|[|-<frac|n|2>+2|]>,<around*|(|-<frac|\<b-n\>|\<b-2\>>|)>,<around*|(|-<frac|\<b-n\>|\<b-2\>>-\<b-2\>|)>,\<ldots\>>|<cell|i=1,n/2\<in\>2\<bbb-Z\>,p,q\<in\>2\<bbb-Z\>+1>>|<row|<cell|<around*|[|-2|]>,<around*|[|-4|]>,<around*|[|-6|]>,<around*|[|\<ldots\>|]>,<around*|[|-<frac|n|2>+1|]>,<around*|(|<with|font-series|bold|<with|font-series|bold|-<frac|\<b-n\>|\<b-2\>>-\<b-1\>>>|)>,<around*|(|-<frac|\<b-n\>|\<b-2\>>-\<b-3\>|)>,\<ldots\>>|<cell|i=1,n/2\<in\>2\<bbb-Z\>+1,p,q\<in\>2\<bbb-Z\>+1>>>>>
      </equation*>

      \;

      here <math|<around*|[|a|]>> means that for pole at <math|a> highest
      term is supported at <math|<around*|{|Q=0|}>>, while
      <math|<around*|(|a|)>> means that it is supported at
      <math|<around*|{|0|}>>. Moreover, we mark double poles with bold font.
      We note that\ 

      <\equation*>
        <tabular*|<tformat|<table|<row|<cell|<around*|[|-1-2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><around*|(|-n/2-2\<bbb-Z\><rsub|\<geqslant\>0>|)>=>|<cell|<around*|[|-1|]>,<around*|[|-3|]>,<around*|[|\<ldots\>|]>,<around*|[|-<frac|n|2>+3|]>,<around*|[|-<frac|n|2>+1|]>,<around*|(|-<frac|n|2>|)>,<around*|[|-<frac|n|2>-1|]>,<around*|(|-<frac|n|2>-2|)>,\<ldots\>>>|<row|<cell|<around*|[|-1-2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><around*|(|-n/2-1-2\<bbb-Z\><rsub|\<geqslant\>0>|)>=>|<cell|<around*|[|-1|]>,<around*|[|-3|]>,<around*|[|\<ldots\>|]>,<around*|[|-<frac|n|2>+2|]>,<around*|[|-<frac|n|2>|]>,<around*|(|-<frac|n|2>-1|)>,<around*|[|-<frac|n|2>-2|]>,<around*|(|-<frac|n|2>-3|)>,\<ldots\>>>|<row|<cell|<around*|[|-2-2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><around*|(|-n/2-1-2\<bbb-Z\><rsub|\<geqslant\>0>|)>=>|<cell|<around*|[|-2|]>,<around*|[|-4|]>,<around*|[|\<ldots\>|]>,<around*|[|-<frac|n|2>+2|]>,<around*|[|-<frac|n|2>|]>,<around*|(|-<frac|n|2>-1|)>,<around*|[|-<frac|n|2>-2|]>,<around*|(|-<frac|n|2>-3|)>,\<ldots\>>>|<row|<cell|<around*|[|-2-2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><around*|(|-n/2-2\<bbb-Z\><rsub|\<geqslant\>0>|)>=>|<cell|<around*|[|-2|]>,<around*|[|-4|]>,<around*|[|\<ldots\>|]>,<around*|[|-<frac|n|2>+3|]>,<around*|[|-<frac|n|2>+1|]>,<around*|(|-<frac|n|2>|)>,<around*|[|-<frac|n|2>-1|]>,<around*|(|-<frac|n|2>-2|)>,\<ldots\>>>>>>
      </equation*>
    </proposition>

    <\proof>
      Carefully inspecting the computations done in the course of proof of
      propositions <reference|q-norm:prop-1> and <reference|q-norm:prop-2>
      one arrives at this.
    </proof>

    <subsubsection|Auxiliary results>

    <\lemma>
      <label|lem-restricted> Meromorphic distributions
      <math|Q<rsub|\<pm\>><rsup|\<nu\>><mid|\|><rsub|<around*|{|x\<neq\>0|}>>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>-<around*|{|0|}>|)>>
      have simple poles only at <math|\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>1>>
      with residues given by\ 

      <\equation*>
        res<rsub|\<nu\>=-k><around*|(|Q<rsub|\<pm\>><rsup|\<nu\>><mid|\|><rsub|<around*|{|x\<neq\>0|}>>|)>=<choice|<tformat|<table|<row|<cell|<frac|<around*|(|-1|)><rsup|k-1>|<around*|(|k-1|)>!>\<delta\><rsup|<around*|(|k-1|)>><around*|(|Q|)>,>|<cell|+>>|<row|<cell|<frac|1|<around*|(|k-1|)>!>\<delta\><rsup|<around*|(|k-1|)>><around*|(|Q|)>,>|<cell|->>>>>
      </equation*>
    </lemma>

    <\proof>
      Follows if one views <math|Q<rsup|\<nu\>><rsub|\<pm\>><mid|\|><rsub|<around*|{|x\<neq\>0|}>>>
      as pullback of <math|x<rsub|\<pm\>><rsup|\<nu\>>> under
      <math|Q:\<bbb-R\><rsup|p,q>\<rightarrow\>\<bbb-R\>>, as we know residue
      and poles of <math|x<rsub|\<pm\>><rsup|\<nu\>>>. By the way,
      information on latter can be obtained in the same way we normalize
      <math|<around*|\||Q|\|><rsup|\<nu\>>> and
      <math|<around*|\||Q|\|><rsup|\<nu\>>sgn<around*|(|Q|)>> below.
    </proof>

    <\lemma>
      <label|q-norm:lem-nonzero-strong>Let <math|Q> be non-degenerate
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
      The proof below is suggested by Ryosuke Nakahama.
    </remark>

    <\proof>
      Let <math|\<varphi\><rsub|><rsup|+>> and
      <math|\<varphi\><rsub|><rsup|->> be elements of
      <math|C<rsub|0><rsup|\<infty\>>> with support lying in
      <math|<around*|{|Q\<gtr\>0|}>> and <math|<around*|{|Q\<less\>0|}>>
      respectively. Define further <math|\<varphi\><rsup|\<pm\>><rsub|\<nu\>>\<assign\><around*|\||Q|\|><rsup|-Im<around*|(|\<nu\>|)>>\<varphi\><rsup|\<pm\>>>.\ 

      We will use generic symbol <math|Q<rsub|\<nu\>>> to denote any one of
      the four distributions we have in statement. To demonstrate what we
      need to show it suffices for every <math|\<nu\><rsub|0>\<in\>\<bbb-C\>>
      find <math|\<varphi\><rsub|0>\<in\>C<rsup|\<infty\>><rsub|0>> such that
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
      <math|\<varphi\><rsup|+>> or <math|\<varphi\><rsup|->> to make the
      latter integral positive, this ends the proof.
    </proof>

    <\lemma>
      <label|lem-holo-nonzero>Let <math|Q<rsub|\<nu\>>> be restriction of one
      of <math|Q<rsub|\<pm\>><rsup|\<nu\>>>,
      <math|<around*|\||Q|\|><rsup|\<nu\>>> or
      <math|<around*|\||Q|\|><rsup|\<nu\>>sgn<around*|(|Q|)>> to open
      connected subset <math|A> of its domain of analyticity. Then
      <math|Q<rsub|\<nu\>>\<neq\>0> on <math|A>.
    </lemma>

    <\proof>
      This is a direct consequence of lemma
      <reference|q-norm:lem-nonzero-strong>.
    </proof>

    <\lemma>
      <label|lem-4>Let <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>
      and <math|N<rsub|i>> be the same as in proposition
      <reference|q-norm:prop-1>. Then <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>\<neq\>0>
      for <math|\<nu\>\<nin\><around*|{|\<frak-P\><around*|(|N<rsub|i>|)>\<neq\>0|}>>,
      the notation <math|\<frak-P\><around*|(|\<cdot\>|)>> being introduced
      in definition <reference|def-P>.
    </lemma>

    <\proof>
      The holomorphicity part of proposition <reference|q-norm:prop-1>
      implies that the set <math|<around*|{|\<frak-P\><around*|(|N<rsub|i>|)>\<neq\>0|}>>
      is the holomorphicity domain of <math|F<rsub|\<nu\>><rsup|<around*|(|i|)>>>.
      The required statement now follows from <reference|lem-holo-nonzero>.
    </proof>

    <\lemma>
      <label|lem-5>Let <math|L\<assign\><big|sum><rsub|i=0><rsup|p><frac|\<partial\><rsup|2>|\<partial\>x<rsub|i><rsup|2>>-<big|sum><rsub|j=0><rsup|q><frac|\<partial\><rsup|2>|\<partial\>y<rsub|j><rsup|2>>>
      and <math|\<delta\><rsup|<around*|(|k|)>><around*|(|Q|)>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>>
      for <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>>. Then

      <\equation*>
        L\<delta\><rsup|<around*|(|k|)>><around*|(|Q|)>=4<around*|(|<frac|n|2>-<around*|(|k+2|)>|)>\<delta\><rsup|<around*|(|k+1|)>><around*|(|Q|)>
      </equation*>

      Moreover, equality holds on the whole <math|\<bbb-R\><rsup|p,q>> if
      <math|n\<in\>2\<bbb-Z\>+1> or <math|0\<leqslant\>k\<leqslant\>n/2-3>.
    </lemma>

    <\proof>
      As shown in <cite-detail|gelfand1980distribution|sec. III.1.6, eq.
      (1)>, we have\ 

      <\equation*>
        <frac|\<partial\>|\<partial\>x<rsub|j>>\<delta\><rsup|<around*|(|k|)>><around*|(|Q|)>=<frac|\<partial\>Q|\<partial\>x<rsub|j>>\<delta\><rsup|<around*|(|k+1|)>><around*|(|Q|)>
      </equation*>

      and this implies that <math|L\<delta\><rsup|<around*|(|k|)>><around*|(|Q|)>=2n\<delta\><rsup|<around*|(|k+1|)>><around*|(|Q|)>+4Q\<delta\><rsup|<around*|(|k+2|)>><around*|(|Q|)>>.
      Now, as shown in <cite-detail|gelfand1980distribution|sec. III.1.6, eq.
      (6)>, the equality <math|Q\<delta\><rsup|<around*|(|k|)>><around*|(|Q|)>=-k\<delta\><rsup|<around*|(|k-1|)>><around*|(|Q|)>>
      holds and therefore <math|L\<delta\><rsup|<around*|(|k|)>><around*|(|Q|)>=<around*|(|2n-4<around*|(|k+2|)>|)>\<delta\><rsup|<around*|(|k+1|)>><around*|(|Q|)>>.
      The last statement is then granted by fact <reference|fact-horm-homog>.
    </proof>

    <\lemma>
      <label|lem-6>For <math|L\<assign\><big|sum><rsub|i=0><rsup|p><frac|\<partial\><rsup|2>|\<partial\>x<rsub|i><rsup|2>>-<big|sum><rsub|j=0><rsup|q><frac|\<partial\><rsup|2>|\<partial\>y<rsub|j><rsup|2>>>
      and <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
      <math|L<rsup|k>\<delta\><around*|(|x|)>\<neq\>0>.
    </lemma>

    <\proof>
      Indeed, for fixed <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> it
      suffices to find <math|f\<in\>C<rsup|\<infty\>><around*|(|\<bbb-R\><rsup|p,q>|)>>
      such that <math|<around*|(|L<rsup|k>f|)><around*|(|0|)>\<neq\>0>, as
      then we can take <math|\<varphi\>\<in\>C<rsub|c><rsup|\<infty\>><around*|(|\<bbb-R\><rsup|p,q>|)>>
      such that <math|\<varphi\>=f> near <math|0> and thus
      <math|<around*|\<langle\>|L<rsup|k>\<delta\>,\<varphi\>|\<rangle\>>\<simeq\><around*|\<langle\>|\<delta\>,L<rsup|k>\<varphi\>|\<rangle\>>=<around*|(|L<rsup|k>\<varphi\>|)><around*|(|0|)>=<around*|(|L<rsup|k>f|)><around*|(|0|)>\<neq\>0>.

      In turn, it suffices to show that <math|L<rsup|k>Q<rsup|k>=const\<neq\>0>.
      Finally, this follows once one observes that <math|L
      Q<rsup|k>=<around*|(|2n+4<around*|(|k-1|)>|)>k
      Q<rsup|k-1><rsup|><rsup|>> and hence
      <math|L<rsup|k>Q<rsup|k>=k!\<Pi\><rsub|i=0><rsup|k-1><around*|(|2n+4i|)>>.
    </proof>

    <\lemma>
      <label|lem-normalized-eq>For <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>
      defined as in proposition <math|<reference|q-norm:prop-2>>, we have for
      <math|L\<assign\><big|sum><rsub|i=0><rsup|p><frac|\<partial\><rsup|2>|\<partial\>x<rsub|i><rsup|2>>-<big|sum><rsub|j=0><rsup|q><frac|\<partial\><rsup|2>|\<partial\>y<rsub|j><rsup|2>>>
      <math|>and <math|\<nu\>\<in\>\<bbb-C\>> with
      <math|Re<around*|(|\<nu\>|)>\<gtr\>0>:

      <\equation*>
        L<rsup|2><wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|i|)>>=64<wide|F|~><rsup|<around*|(|i|)>><rsub|\<nu\>>\<times\><choice|<tformat|<table|<row|<cell|<around*|(|\<nu\>+2|)><around*|(|\<nu\>+<frac|n|2>+1|)>,>|<cell|i=0,>|<cell|n/2\<in\>2\<bbb-Z\>,>|<cell|p,q\<in\>2\<bbb-Z\>>>|<row|<cell|<around*|(|\<nu\>+2|)><around*|(|\<nu\>+<frac|n|2>|)>,>|<cell|i=0,>|<cell|n/2\<in\>2\<bbb-Z\>+1,>|<cell|p,q\<in\>2\<bbb-Z\>>>|<row|<cell|<around*|(|\<nu\>+1|)><around*|(|\<nu\>+<frac|n|2>|)>,>|<cell|i=1,>|<cell|n/2\<in\>2\<bbb-Z\>,>|<cell|p,q\<in\>2\<bbb-Z\>>>|<row|<cell|<around*|(|\<nu\>+1|)><around*|(|\<nu\>+<frac|n|2>+1|)>,>|<cell|i=1,>|<cell|n/2\<in\>2\<bbb-Z\>+1,>|<cell|p,q\<in\>2\<bbb-Z\>>>|<row|<cell|<around*|(|\<nu\>+2|)><around*|(|\<nu\>+<frac|n|2>|)>,>|<cell|i=0,>|<cell|n/2\<in\>2\<bbb-Z\>,>|<cell|p,q\<in\>2\<bbb-Z\>+1>>|<row|<cell|<around*|(|\<nu\>+2|)><around*|(|\<nu\>+<frac|n|2>+1|)>,>|<cell|i=0,>|<cell|n/2\<in\>2\<bbb-Z\>+1,>|<cell|p,q\<in\>2\<bbb-Z\>+1>>|<row|<cell|<around*|(|\<nu\>+1|)><around*|(|\<nu\>+<frac|n|2>+1|)>,>|<cell|i=1,>|<cell|n/2\<in\>2\<bbb-Z\>,>|<cell|p,q\<in\>2\<bbb-Z\>+1>>|<row|<cell|<around*|(|\<nu\>+1|)><around*|(|\<nu\>+<frac|n|2>|)>,>|<cell|i=1,>|<cell|n/2\<in\>2\<bbb-Z\>+1,>|<cell|p,q\<in\>2\<bbb-Z\>+1>>>>>
      </equation*>
    </lemma>

    <\proof>
      Follows by direct computations.
    </proof>

    <\lemma>
      <label|lem-r6-e>Proposition <reference|q-norm:prop-2> holds when
      <math|p=q=1> and <math|i=0,1>.
    </lemma>

    <\proof>
      Let's first do <math|i=0> case. We have
      <math|L<rsup|2><wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|i|)>>=64<around*|(|\<nu\>+2|)><rsup|2><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>\<nosymbol\>>
      and hence to prove holomorphicity in suffices to show that distribution
      <math|L<rsup|2><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>> has
      double zero at <math|\<nu\>=0>. For this we compute terms of Taylor
      series of <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>
      corresponding to <math|\<nu\><rsup|0>> and <math|\<nu\><rsup|1>>, and
      for this in turn, it is sufficient to compute
      <math|<wide|F|~><rsup|<around*|(|i|)>><rsub|0>\<simeq\>1> and
      <math|<around*|(|d/d\<nu\>|)><mid|\|><rsub|\<nu\>=0><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>.
      Now, it is obvious that <math|L<rsup|2><wide|F|~><rsup|<around*|(|i|)>><rsub|0>=0>,
      while the latter term requires some more work. It is definitely true
      for <math|Re<around*|(|\<nu\>|)>\<gg\>0> (and hence near
      <math|\<nu\>=0> by analytic continuation), that

      <\equation*>
        <frac|d|d\<nu\>><frac|<around*|\||x<rsup|2>-y<rsup|2>|\|><rsup|\<nu\>>|\<Gamma\><rsup|2><around*|(|<frac|\<nu\>+1|2>|)>>=<frac|ln<around*|\||x-y|\|>+ln<around*|\||x+y|\|>-\<Gamma\><rprime|'><around*|(|<frac|\<nu\>+1|2>|)>|\<Gamma\><rsup|3><around*|(|<frac|\<nu\>+1|2>|)>><around*|\||x<rsup|2>-y<rsup|2>|\|><rsup|\<nu\>>
      </equation*>

      (note that <math|ln<around*|\||x\<pm\>y|\|>\<in\>L<rsup|1><rsub|loc>>)
      and henceforth it suffices to show that
      <math|L<rsup|><around*|(|ln<around*|\||x\<pm\>y|\|>|)>=0>. Now, as in
      <math|<around*|(|a,b|)>\<assign\><around*|(|x+y,x-y|)>> coordinates
      <math|L> becomes <math|4<frac|\<partial\>|\<partial\>a><frac|\<partial\>|\<partial\>b>>,
      the latter is clear. This shows holomorphicity.

      Next, we need to show <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>\<nequiv\>0>
      for all <math|\<nu\>\<in\>\<bbb-C\>>. In the light of holomorphicity
      just shown and lemma <reference|lem-holo-nonzero>, it suffices to
      consider case <math|-\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>
      only.

      Now, for <math|\<nu\>=-1> it is implied by recurrence relation that
      <math|<wide|F|~><rsub|1-2k><rsup|>\<simeq\>L<rsup|2k><around*|\||x<rsup|2>-y<rsup|2>|\|>>.
      Next, in <math|<around*|(|a,b|)>> coordinates as introduced above this
      gets written as <math|<around*|(|\<partial\>/\<partial\>a|)><rsup|2k><around*|\||a|\|>\<cdot\><around*|(|\<partial\>/\<partial\>b|)><rsup|2k><around*|\||b|\|>>
      and to see that it is nonzero it suffices to show that
      <math|<around*|(|\<partial\>/\<partial\>a|)><rsup|2k><around*|\||a|\|>\<neq\>0>.
      The latter, however, is known to be
      <math|\<simeq\>\<delta\><rsup|<around*|(|2k-2|)>><around*|(|a|)>\<neq\>0<rsup|>>.

      Computations for <math|i=1> follow essentially the same path, so we
      just highlight the main points. We have
      <math|L<rsup|2><wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|i|)>>=64<around*|(|\<nu\>+1|)><rsup|2><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>.
      For holomorphicity it suffices to show that kernel of <math|L<rsup|2>>
      contains <math|\<nu\><rsup|1>> term of Taylor series of
      <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>> at
      <math|\<nu\>=1>, which equals to

      <\equation*>
        <frac|d|d\<nu\>><mid|\|><rsub|\<nu\>=1><frac|<around*|\||x<rsup|2>-y<rsup|2>|\|><rsup|\<nu\>>sgn<around*|(|x<rsup|2>-y<rsup|2>|)>|\<Gamma\><rsup|2><around*|(|<frac|\<nu\>+2|2>|)>>=<frac|ln<around*|\||x-y|\|>+ln<around*|\||x+y|\|>-\<Gamma\><rprime|'><around*|(|<frac|\<nu\>+2|2>|)>|\<Gamma\><rsup|3><around*|(|<frac|\<nu\>+2|2>|)>><mid|\|><rsub|\<nu\>=1>\<times\><around*|(|x<rsup|2>-y<rsup|2>|)>
      </equation*>

      and so it suffices to show <math|L<rsup|2><around*|(|ln<around*|\||x\<pm\>y|\|><around*|(|x<rsup|2>-y<rsup|2>|)>|)>=0>,
      which in <math|<around*|(|a,b|)>> coordinates becomes
      <math|<around*|(|\<partial\>/\<partial\>a|)><rsup|2><around*|(|\<partial\>/\<partial\>a|)><rsup|2><around*|(|a
      b ln<around*|\||a|\|>|)>=><math|<around*|(|\<partial\>/\<partial\>a|)><rsup|2><around*|(|\<partial\>/\<partial\>a|)><rsup|2><around*|(|a
      b ln<around*|\||a|\|>|)>=0>, which is clear.\ 

      Finally, similarly to <math|i=0> case, it suffices to show that for
      <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>1>> we have
      <math|L<rsup|2k>sgn<around*|(|x<rsup|2>-y<rsup|2>|)>\<neq\>0>. Now, in
      <math|<around*|(|a,b|)>> coordinates this gets written as (due to
      multiplicativity of <math|sgn<around*|(|\<cdot\>|)>>)
      <math|<around*|(|\<partial\>/\<partial\>a|)><rsup|2k>sgn<around*|(|a|)>\<cdot\><around*|(|\<partial\>/\<partial\>b|)><rsup|2k>sgn<around*|(|b|)>><math|>,
      and <math|<around*|(|\<partial\>/\<partial\>a|)><rsup|2k>sgn<around*|(|a|)>\<simeq\>\<delta\><rsup|<around*|(|2k-2|)>><around*|(|a|)>\<neq\>0>.
    </proof>

    <\lemma>
      <label|lem-pq2holo>Assuming <math|p,q\<in\>2\<bbb-Z\><rsub|\<geqslant\>1>>,
      <math|Q<rsub|\<pm\>><rsup|\<nu\>>> only can have poles at points
      <math|\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>1>> and these are no more
      than simple.
    </lemma>

    <\proof>
      Letting <math|<wide|Q|~><rsup|\<nu\>><rsub|\<pm\>>\<assign\>Q<rsup|\<nu\>><rsub|\<pm\>>/\<Gamma\><around*|(|\<nu\>+1|)>>
      we have that relation <math|L Q<rsub|\<pm\>><rsup|\<nu\>+1>=\<pm\>4<around*|(|\<nu\>+1|)><around*|(|\<nu\>+n/2|)>Q<rsub|\<pm\>><rsup|\<nu\>>>
      implies that <math|L<wide|Q|~><rsub|\<pm\>><rsup|\<nu\>+1>=\<pm\>4<around*|(|\<nu\>+n/2|)><wide|Q|~><rsub|\<pm\>><rsup|\<nu\>>>.
      Hence, as lemma <reference|lem-restricted> together with fact
      <reference|fact-horm-homog> (the latter being applicable) imply, we
      have <math|<wide|Q|~><rsub|\<pm\>><rsup|1-n/2>\<simeq\>\<delta\><rsup|<around*|(|n/2-2|)>><around*|(|Q|)>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>|)>>,
      fact <reference|fact-horm1> tells us that
      <math|L<rsup|><wide|Q|~><rsub|\<pm\>><rsup|1-n/2>=0> and this implies
      holomorphicity of <math|<wide|Q|~><rsub|\<pm\>><rsup|\<nu\>>>, which in
      turn implies the desired.
    </proof>

    <\lemma>
      <label|lem-r1-e>Let <math|p=q=2>, <math|L\<assign\><big|sum><rsub|i=0><rsup|p><frac|\<partial\><rsup|2>|\<partial\>x<rsub|i><rsup|2>>-<big|sum><rsub|j=0><rsup|q><frac|\<partial\><rsup|2>|\<partial\>y<rsub|j><rsup|2>>>.
      Then for <math|i=0> and <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>
      defined as in proposition <reference|q-norm:prop-2> we have
      <math|<wide|F|~><rsup|<around*|(|0|)>><rsub|-2>\<simeq\>\<delta\><rsup|<around*|(|0|)>><around*|(|x|)>>.
    </lemma>

    <\proof>
      Lemma <reference|lem-pq2holo> implies that
      <math|Q<rsub|\<pm\>><rsup|\<nu\>>> only has poles at points
      <math|\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>1>> and these are no more
      than simple.

      Then for <math|\<nu\>=\<nu\><rsub|0>\<in\>-\<bbb-Z\><rsub|\<geqslant\>1>>
      we can expand <math|Q<rsub|\<pm\>><rsup|\<nu\>>> in Laurent series
      <math|Q<rsup|\<nu\>><rsub|\<pm\>>=:<big|sum><rsub|k=-1><rsup|\<infty\>>Q<rsub|\<pm\>><rsup|<around*|(|\<nu\><rsub|0>;k|)>><around*|(|\<nu\>-\<nu\><rsub|0>|)><rsup|k>>.
      Now, analytic continuation of relation <math|L
      Q<rsub|\<pm\>><rsup|\<nu\>+1>=\<pm\>4<around*|(|\<nu\>+1|)><around*|(|\<nu\>+2|)>Q<rsub|\<pm\>><rsup|\<nu\>>>
      at <math|\<nu\>=-2> implies that <math|Q<rsub|\<pm\>><rsup|<around*|(|-2;k|)>>=\<mp\>L
      Q<rsub|\<pm\>><rsup|<around*|(|-1;k+1|)>>>. Hence, in particular
      <math|Q<rsub|\<pm\>><rsup|<around*|(|-2;-1|)>>=\<mp\>L
      Q<rsub|\<pm\>><rsup|<around*|(|-1;0|)>>>. We also note that
      <math|<wide|F|~><rsup|<around*|(|0|)>><rsub|-2>\<simeq\>Q<rsub|+><rsup|<around*|(|-2;-1|)>>+Q<rsub|->>.

      Now, as simple poles of <math|Q<rsub|+><rsup|\<nu\>>> and
      <math|Q<rsub|-><rsup|\<nu\>>> cancel at <math|\<nu\>=-1> when
      subtracted (one can compute the residues explicitly by using lemma
      <reference|lem-restricted> and fact <reference|fact-horm-homog>), we
      have <math|<around*|\||Q|\|><rsup|-1>sgn<around*|(|Q|)>=Q<rsub|+><rsup|<around*|(|-1;0|)>>-Q<rsub|-><rsup|<around*|(|-1;0|)>>>
      and by taking <math|L> of both sides and using discussion above we get
      <math|-L<around*|\||Q|\|><rsup|-1>sgn<around*|(|Q|)>=Q<rsub|+><rsup|<around*|(|-2;-1|)>>+Q<rsub|-><rsup|<around*|(|-2;-1|)>>>.

      On the other hand, as <math|2<around*|\||x|\|><rsup|-1>sgn<around*|(|x|)>=<around*|(|x+i0|)><rsup|-1>+<around*|(|x-i0|)><rsup|-1>>,
      fact <reference|fact-horm2> implies that
      <math|L<around*|\||Q|\|><rsup|-1>sgn<around*|(|Q|)>\<simeq\>\<delta\><rsup|<around*|(|0|)>><around*|(|x|)>>,
      as <math|1+e<rsup|2\<pi\>i q>\<neq\>0>, since <math|q=2>.
    </proof>

    <\lemma>
      <label|lem-r6>Proposition <reference|q-norm:prop-2> holds when
      <math|<around*|(|i,n/2,p|)>\<in\><around*|{|0|}>\<times\><around*|(|2\<bbb-Z\>+1|)>\<times\><around*|(|2\<bbb-Z\>+1|)>>
    </lemma>

    <\proof>
      Let's start with proving holomorphicity of
      <math|<wide|F|~><rsup|<around*|(|i|)>><rsub|\<nu\>>>. As lemma
      <reference|lem-r6-e> handles the case <math|p=q=1>, we may proceed
      directly to <math|n/2\<geqslant\>3> case. We start with showing
      holomorphicity and in the light of the recurrence equation
      <math|L<rsup|2><wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|i|)>>=64<around*|(|\<nu\>+2|)><around*|(|\<nu\>+n/2+1|)><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>
      it suffices to show that <math|L<rsup|2><wide|F|~><rsup|<around*|(|i|)>><rsub|\<nu\>>=0>
      for <math|\<nu\>=0> and <math|\<nu\>=-n/2+1\<less\>0>. Now, the former
      is clear as <math|<wide|F|~><rsub|0><rsup|<around*|(|i|)>>\<simeq\>1>.
      For the latter we have to show that
      <math|L<rsup|2><around*|\||Q|\|><rsup|-n/2+1>=0>.

      Now, as <math|2<around*|\||x|\|><rsup|1-n/2>=<around*|(|x+i0|)><rsup|1-n/2>+<around*|(|x-i0|)><rsup|1-n/2><rsup|>\<nocomma\>>,
      fact <reference|fact-horm2> gives us
      <math|L<around*|\||Q|\|><rsup|-n/2+1>=0>, as <math|1+e<rsup|-2\<pi\>i
      q>=1+<around*|(|-1|)><rsup|q>=0>. This proves the holomorphicity.

      Hence, it remains to show that for <math|\<nu\>\<in\>\<bbb-C\>> we have
      <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>\<nequiv\>0> and in
      the light of holomorphicity shown and lemma
      <reference|lem-holo-nonzero>, it suffices to do so for
      <math|-\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>. In the light of
      recurrence relation it suffices to show that for
      <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
      <math|L<rsup|2k><wide|F|~><rsub|-1><rsup|<around*|(|i|)>>\<neq\>0>.

      Now, lemma <reference|lem-restricted> together with fact
      <reference|fact-horm-homog> implies that
      <math|<wide|F|~><rsub|-1><rsup|<around*|(|i|)>>\<simeq\>\<delta\><rsup|<around*|(|0|)>><around*|(|Q|)>>
      and hence lemma <reference|lem-5> implies that
      <math|L<rsup|2k><wide|F|~><rsub|-1><rsup|<around*|(|i|)>>\<simeq\>\<delta\><rsup|<around*|(|2k|)>><around*|(|Q|)>>
      on for <math|2k\<leqslant\>n/2-3>, while fact
      <math|<reference|fact-horm1>> implies that
      <math|L<rsup|n/2-1><wide|F|~><rsub|-1><rsup|<around*|(|i|)>>\<simeq\>L<rsup|2>\<delta\><rsup|<around*|(|n/2-3|)>>=L\<delta\><rsup|<around*|(|n/2-2|)>>\<simeq\>\<delta\><around*|(|x|)>>
      and hence lemma <reference|lem-6> grants the desired
      <math|L<rsup|2k><wide|F|~><rsub|-1><rsup|<around*|(|i|)>>\<neq\>0> for
      <math|2k\<gtr\>n/2-1> as well.
    </proof>

    <\lemma>
      <label|lem-r8>Proposition <reference|q-norm:prop-2> holds when
      <math|<around*|(|i,n/2,p|)>\<in\><around*|{|1|}>\<times\><around*|(|2\<bbb-Z\>+1|)>\<times\><around*|(|2\<bbb-Z\>+1|)>>
    </lemma>

    <\proof>
      Case <math|n/2=1> is handled by lemma <reference|lem-r6-e> and in
      general proof goes similar to that of lemma <reference|lem-r6>, so we
      just highlight the main points. The recurrence relation is
      <math|L<rsup|2><wide|F|~><rsup|<around*|(|i|)>><rsub|\<nu\>+2>=64<around*|(|\<nu\>+1|)><around*|(|\<nu\>+n/2|)><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>
      and for holomorphicity the only nontrivial thing to show is that
      <math|L<rsup|2><wide|F|~><rsub|-n/2+2><rsup|<around*|(|i|)>>\<simeq\>L<rsup|2><around*|\||Q|\|><rsup|-n/2+2>sgn<around*|(|Q|)>=0>,
      but as <math|L<around*|\||Q|\|><rsup|-n/2+2>sgn<around*|(|Q|)>=L<around*|(|Q<rsub|+><rsup|-n/2+2>-Q<rsub|-><rsup|-n/2+2>|)>\<simeq\><around*|\||Q|\|><rsup|-n/2+1>>
      and then the desired is granted, as
      <math|L<around*|\||Q|\|><rsup|-n/2+1>=0>, as in the proof of lemma
      <reference|lem-r6>.\ 

      This shows holomorphicity, and for non-vanishing one again has to show
      that for <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
      <math|L<rsup|2k><wide|F|~><rsup|<around*|(|i|)>><rsub|-2>\<neq\>0>. As
      by lemma <math|<reference|lem-restricted>> and fact
      <reference|fact-horm-homog> <math|<wide|F|~><rsup|<around*|(|i|)>><rsub|-2>\<simeq\>\<delta\><rsup|<around*|(|1|)>><around*|(|Q|)>>,
      lemma <reference|lem-5> grants the desired for
      <math|2k\<leqslant\>n/2-2>, and for <math|2k=n/2> fact
      <reference|fact-horm1> implies that
      <math|L<rsup|2k><wide|F|~><rsub|0><rsup|<around*|(|i|)>>\<simeq\>L\<delta\><around*|(|x|)>>
      and for <math|2k\<gtr\>n/2> the desired is granted by lemma
      <reference|lem-6>.
    </proof>

    <\lemma>
      <label|lem-r1>Proposition <reference|q-norm:prop-2> holds when
      <math|<around*|(|i,n/2,p|)>\<in\><around*|{|0|}>\<times\><around*|(|2\<bbb-Z\>|)>\<times\><around*|(|2\<bbb-Z\>|)>>
    </lemma>

    <\proof>
      We start with holomorphicity. As we have recurrence relation
      <math|L<rsup|2><wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|i|)>>=64<around*|(|\<nu\>+2|)><around*|(|\<nu\>+n/2+1|)><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>,
      it suffices to show that <math|L<rsup|2><wide|F|~><rsub|\<nu\>>=0> for
      <math|\<nu\>=0> (which is clear) and <math|\<nu\>=-n/2+1>. For the
      latter, we know from lemma <reference|lem-restricted> that when
      restricted to <math|<around*|{|x\<neq\>0|}>>,
      <math|<wide|F|~><rsup|<around*|(|i|)>><rsub|-n/2+1>=\<delta\><rsup|<around*|(|n/2-2|)>><around*|(|Q|)>>
      and as latter is homogeneous of degree <math|2-n>, fact
      <reference|fact-horm-homog> and fact <reference|fact-horm1> imply that
      <math|L<wide|F|~><rsup|<around*|(|i|)>><rsub|-n/2+1>=L\<delta\><rsup|<around*|(|n/2-2|)>><around*|(|Q|)>=0>.
      This shows holomorphicity.

      Now, to prove non-vanishing, we note that by lemma
      <reference|lem-restricted> \ and the fact that
      <math|<around*|\||Q|\|><rsup|\<nu\>>> has at most simple poles at
      <math|-\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1> (which is implied
      by holomorphicity shown above) we have
      <math|<wide|F|~><rsub|-1-2k><rsup|<around*|(|i|)>><mid|\|><rsub|<around*|{|x\<neq\>0|}>>=\<delta\><rsup|<around*|(|2k|)>><around*|(|Q|)>\<neq\>0>
      in the light of the recurrence relation, it suffices to show that for
      <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
      <math|L<rsup|2k><wide|F|~><rsub|-n/2><rsup|<around*|(|i|)>>\<neq\>0>.
      Therefore, we need to compute <math|<wide|F|~><rsup|<around*|(|i|)>><rsub|-n/2>>.
      To be more precise, we shall show that the latter equals nonzero
      multiple of <math|\<delta\><rsup|<around*|(|0|)>><around*|(|x|)>> and
      then application of lemma <reference|lem-6> will end the proof.

      \ As case <math|p=q=2> is handled by lemma <reference|lem-r1-e>, we may
      assume <math|n/2\<geqslant\>4>. Recurrence relation implies that
      <math|L<rsup|2><wide|F|~><rsub|-n/2+2><rsup|<around*|(|i|)>>\<simeq\><wide|F|~><rsup|<around*|(|i|)>><rsub|-n/2>>
      and hence it suffices to compute <math|L<rsup|2><wide|F|~><rsub|-n/2+2><rsup|<around*|(|i|)>>\<simeq\>L<rsup|2><around*|\||Q|\|><rsup|-n/2+2>>.
      Now, relation <math|L Q<rsub|\<pm\>><rsup|\<nu\>+1>=\<pm\>4<around*|(|\<nu\>+1|)><around*|(|\<nu\>+n/2|)>Q<rsub|\<pm\>><rsup|\<nu\>>>
      implies that <math|L<rsup|2><around*|\||Q|\|><rsup|-n/2+2>\<simeq\>L<around*|\||Q|\|><rsup|-n/2+1>sgn<around*|(|Q|)>>
      and then application of fact <reference|fact-horm2> ends the proof, as
      for <math|n/2\<in\>2\<bbb-Z\>> we have
      <math|2<around*|\||x|\|><rsup|-n/2+1>sgn<around*|(|x|)>=<around*|(|x+i0|)><rsup|-n/2+1>+<around*|(|x-i0|)><rsup|-n/2+1>>.
    </proof>

    <\lemma>
      <label|lem-r4>Proposition <reference|q-norm:prop-2> holds when
      <math|<around*|(|i,n/2,p|)>\<in\><around*|{|1|}>\<times\><around*|(|2\<bbb-Z\>+1|)>\<times\><around*|(|2\<bbb-Z\>|)>>
    </lemma>

    <\proof>
      We start with holomorphicity. Recurrence relation
      <math|L<rsup|2><wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|i|)>>=64<around*|(|\<nu\>+1|)><around*|(|\<nu\>+n/2+1|)><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>
      implies that we need to show <math|L<rsup|2><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>=0>
      for <math|\<nu\>=1> (clear) and <math|\<nu\>=-n/2+1>. For latter, we
      see that <math|<wide|F|~><rsup|<around*|(|i|)>><rsub|-n/2+1>\<simeq\>\<delta\><rsup|<around*|(|n/2-2|)>><around*|(|Q|)>>
      by lemma <reference|lem-restricted> and fact
      <reference|fact-horm-homog>. Then, application of fact
      <reference|fact-horm1> ends the proof of holomorphicity.

      Now, as in proof of lemma <reference|lem-r1>, lemma
      <reference|lem-restricted> and lemma <reference|lem-6> imply that we
      just need to show that <math|<wide|F|~><rsub|-n/2><rsup|<around*|(|i|)>>\<simeq\>Q<rsub|+><rsup|<around*|(|-n/2;-1|)>>-Q<rsub|-><rsup|<around*|(|-n/2;-1|)>>>
      in fact is <math|\<simeq\>\<delta\><rsup|<around*|(|0|)>><around*|(|x|)>>
      (we use notation for and facts about Laurent series from proof of lemma
      <reference|lem-pq2holo>). Now, application of recurrence <math|L
      Q<rsub|\<pm\>><rsup|\<nu\>>=\<pm\>4\<nu\><around*|(|\<nu\>+n/2-1|)>Q<rsub|\<pm\>><rsup|\<nu\>-1>>
      at <math|\<nu\>=1-n/2> tells us that
      <math|Q<rsub|\<pm\>><rsup|<around*|(|1-n/2;0|)>>=\<pm\>c\<cdot\>Q<rsub|\<pm\>><rsup|<around*|(|-n/2;1|)>>>
      and hence that <math|Q<rsub|+><rsup|<around*|(|-n/2;-1|)>>-Q<rsub|-><rsup|<around*|(|-n/2;-1|)>>\<simeq\>L<around*|\||Q|\|><rsup|1-n/2>>,
      as <math|<around*|\||Q|\|><rsup|\<nu\>>> is holo near
      <math|\<nu\>=1-n/2\<in\>2\<bbb-Z\>> (one sees this by computing
      residues of <math|Q<rsub|\<pm\>><rsup|\<nu\>>> at <math|\<nu\>=1-n/2>
      by lemma <reference|lem-restricted> and fact
      <reference|fact-horm-homog>). Now, as for <math|n/2\<in\>2\<bbb-Z\>+1>
      we have <math|2<around*|\||x|\|><rsup|1-n/2>=<around*|(|x+i0|)><rsup|1-n/2>+<around*|(|x+i0|)><rsup|1-n/2>>,
      the proof is finished by application of fact <reference|fact-horm2>.
    </proof>

    <\lemma>
      <label|lem-r2>Proposition <reference|q-norm:prop-2> holds when
      <math|<around*|(|i,n/2,p|)>\<in\><around*|{|0|}>\<times\><around*|(|2\<bbb-Z\>+1|)>\<times\><around*|(|2\<bbb-Z\>|)>>
    </lemma>

    <\proof>
      We start with holomorphicity. The recurrence equation
      <math|L<rsup|2><wide|F|~><rsup|<around*|(|i|)>><rsub|\<nu\>+2>=64<around*|(|\<nu\>+2|)><around*|(|\<nu\>+n/2|)><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>
      implies that we need to show that <math|L<rsup|2><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>=0>
      for <math|\<nu\>=0> (clear) and <math|\<nu\>=-n/2+2>. Under the
      hypothesis taken we have <math|p,q\<geqslant\>2\<Rightarrow\>n/2\<geqslant\>2\<Rightarrow\>n/2\<geqslant\>3>,
      as <math|n/2\<in\>2\<bbb-Z\>+1>. Then we have
      <math|<wide|F|~><rsub|-n/2+2><rsup|<around*|(|i|)>>\<simeq\>\<delta\><rsup|<around*|(|n/2-3|)>><around*|(|Q|)>>
      by lemma <reference|lem-restricted> and by fact
      <reference|fact-horm-homog>. Then, <math|L<rsup|2><wide|F|~><rsub|-n/2+2><rsup|<around*|(|i|)>>\<simeq\>L<rsup|>\<delta\><rsup|<around*|(|n/2-2|)>><around*|(|Q|)>=0>
      the <math|\<simeq\>> by lemma <reference|lem-5> and the <math|=> by
      fact <reference|fact-horm1>. This shows holomorphicity.

      As in proof of lemma <reference|lem-r1>, lemma
      <reference|lem-restricted> and lemma <reference|lem-6> imply that it
      suffcies to show that <math|<wide|F|~><rsub|-n/2-1><rsup|<around*|(|i|)>>\<simeq\>Q<rsub|+><rsup|<around*|(|-n/2-1;-1|)>>+Q<rsub|-><rsup|<around*|(|-n/2-1;-1|)>>>
      in fact is <math|\<simeq\>L\<delta\><rsup|<around*|(|0|)>><around*|(|x|)>>
      (we use notation for and facts about Laurent series from proof of lemma
      <reference|lem-pq2holo>).\ 

      The latter, however, follows from <math|<wide|F|~><rsub|-n/2><rsup|<around*|(|i|)>>\<simeq\>Q<rsub|+><rsup|<around*|(|-n/2;-1|)>>-Q<rsub|-><rsup|<around*|(|-n/2;-1|)>>\<simeq\>\<delta\><rsup|<around*|(|0|)>><around*|(|x|)>>
      established in proof of lemma <reference|lem-r4> and recurrence <math|L
      Q<rsub|\<pm\>><rsup|\<nu\>>=\<pm\>4\<nu\><around*|(|\<nu\>+n/2-1|)>Q<rsub|\<pm\>><rsup|\<nu\>-1>>
      at <math|\<nu\>=-n/2>.
    </proof>

    <\lemma>
      <label|lem-r3>Proposition <reference|q-norm:prop-2> holds when
      <math|<around*|(|i,n/2,p|)>\<in\><around*|{|1|}>\<times\><around*|(|2\<bbb-Z\>|)>\<times\><around*|(|2\<bbb-Z\>|)>>
    </lemma>

    <\proof>
      We start with proving holomorphicity. As recurrence equation is
      <math|L<rsup|2><wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|i|)>>=64<around*|(|\<nu\>+1|)><around*|(|\<nu\>+n/2|)><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>,
      it suffices to show that <math|L<rsup|2><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>=0>
      for <math|\<nu\>=1> (this is clear) and <math|\<nu\>=-n/2+2>. For
      <math|n/2\<geqslant\>4> case we have
      <math|<wide|F|~><rsup|<around*|(|i|)>><rsub|-n/2+2>\<simeq\>\<delta\><rsup|<around*|(|n/2-3|)>><around*|(|Q|)>>
      and thus by lemma <reference|lem-5>
      <math|L<rsup|2><wide|F|~><rsup|<around*|(|i|)>><rsub|-n/2+2>\<simeq\>L<rsup|2>\<delta\><rsup|<around*|(|n/2-3|)>><around*|(|Q|)>\<simeq\>L\<delta\><rsup|<around*|(|n/2-2|)>>=0>,
      the latter equality follows from fact <reference|fact-horm1>.\ 

      For <math|n/2=2> case, we need to show that
      <math|L<rsup|2>sgn<around*|(|Q|)>=0>. Now, employing lemma
      <reference|lem-pq2holo> and writing Laurent expansion
      <math|Q<rsup|\<nu\>><rsub|\<pm\>>=:<big|sum><rsub|k=-1><rsup|\<infty\>>Q<rsub|\<pm\>><rsup|<around*|(|\<nu\><rsub|0>;k|)>><around*|(|\<nu\>-\<nu\><rsub|0>|)><rsup|k>>
      for <math|\<nu\><rsub|0>\<in\>-\<bbb-Z\><rsub|\<geqslant\>1>>, we have
      recurrence relation <math|Q<rsub|\<pm\>><rsup|\<nu\>+1>=\<pm\>4<around*|(|\<nu\>+1|)><around*|(|\<nu\>+2|)>Q<rsub|\<pm\>><rsup|\<nu\>>>
      taken at <math|\<nu\>=-1> implying that <math|L
      Q<rsub|\<pm\>><rsup|<around*|(|0;0|)>>=\<pm\>c\<cdot\>Q<rsub|\<pm\>><rsup|<around*|(|-1;-1|)>>>
      for some <math|c\<neq\>0>. Therefore,
      <math|L<rsup|2>sgn<around*|(|Q|)>=L<around*|(|L
      Q<rsub|+><rsup|<around*|(|0;0|)>>-L
      Q<rsub|-><rsup|<around*|(|0;0|)>>|)>\<simeq\>L<around*|(|Q<rsub|+><rsup|<around*|(|-1;-1|)>>+Q<rsub|-><rsup|<around*|(|-1;-1|)>>|)>>,
      the latter being equal to <math|L> of residue of
      <math|<around*|\||Q|\|><rsup|\<nu\>>> at <math|\<nu\>=-1>. Now, lemma
      <reference|lem-restricted> together with the fact
      <math|<reference|fact-horm-homog> > together imply that the latter is
      proportional to <math|L> of <math|\<delta\><rsup|<around*|(|0|)>><around*|(|Q|)>>
      and hence fact <reference|fact-horm1> shows that it vanishes. This
      shows holomorphicity.

      Now, as in proof of lemma <reference|lem-r1>, lemma
      <reference|lem-restricted> and lemma <reference|lem-6> imply that we
      just need to show that <math|<wide|F|~><rsub|-n/2-1><rsup|<around*|(|i|)>>\<simeq\>Q<rsub|+><rsup|<around*|(|-n/2-1;-1|)>>-Q<rsub|-><rsup|<around*|(|-n/2-1;-1|)>>>
      in fact is <math|\<simeq\>L\<delta\><rsup|<around*|(|0|)>><around*|(|x|)>>.
      But then it was shown in the proof of lemma <reference|lem-r1> that
      <math|Q<rsub|+><rsup|<around*|(|-n/2;-1|)>>+Q<rsub|-><rsup|<around*|(|-n/2;-1|)>>\<simeq\>\<delta\><rsup|<around*|(|0|)>><around*|(|x|)>>
      and then application of equation <math|L
      Q<rsub|\<pm\>><rsup|\<nu\>>=\<pm\>4\<nu\><around*|(|\<nu\>+n/2-1|)>Q<rsub|\<pm\>><rsup|\<nu\>-1>>
      implies the desired.
    </proof>

    <\lemma>
      <label|lem-r5>Proposition <reference|q-norm:prop-2> holds when
      <math|<around*|(|i,n/2,p|)>\<in\><around*|{|0|}>\<times\><around*|(|2\<bbb-Z\>|)>\<times\><around*|(|2\<bbb-Z\>+1|)>>
    </lemma>

    <\proof>
      Let's start with showing holomorphicity of
      <math|<wide|F|~><rsup|<around*|(|i|)>><rsub|\<nu\>>>. In the light of
      recurrence equation <math|L<rsup|2><wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|i|)>>=64<around*|(|\<nu\>+2|)><around*|(|\<nu\>+n/2|)><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>,
      we just need to show that <math|L<rsup|2><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>=0>
      for <math|\<nu\>=0> (which is obvious) and <math|\<nu\>=-n/2+2>. For
      the latter we need to show that <math|L<rsup|2><around*|\||Q|\|><rsup|2-n/2>=0>.
      Now, as <math|L Q<rsub|\<pm\>><rsup|\<nu\>>=\<pm\>4\<nu\><around*|(|\<nu\>-1+n/2|)>Q<rsub|\<pm\>><rsup|\<nu\>-1>>,
      we have <math|L<rsup|2><around*|\||Q|\|><rsup|2-n/2>\<simeq\>L
      Q<rsup|1-n/2>sgn<around*|(|Q|)>> and as
      2<math|x<rsup|1-n/2>sgn<around*|(|x|)>=<around*|(|x+i0|)><rsup|1-n/2>+<around*|(|x-i0|)><rsup|1-n/2>>,
      we have by fact <reference|fact-horm2> that
      <math|L<rsup|2>Q<rsup|1-n/2>sgn<around*|(|Q|)>=0>, as
      <math|1+<around*|(|-1|)><rsup|q>=0> and this proves holomorphicity.

      To prove non-vanishing, in the light of recurrence equation, it
      suffices to show that for <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>>
      we have <math|L<rsup|2k><wide|F|~><rsub|-1><rsup|<around*|(|i|)>>\<neq\>0>.
      Now, simiarly to proof of lemma <reference|lem-r6>, we have
      <math|<wide|F|~><rsub|-1><rsup|<around*|(|i|)>>=\<delta\><rsup|<around*|(|0|)>><around*|(|Q|)>>
      and then lemma <reference|lem-5> implies that
      <math|L<rsup|2k>\<delta\><rsup|<around*|(|0|)>><around*|(|Q|)>\<neq\>0>
      for <math|2k\<leqslant\>n/2-2> and for <math|2k=n/2-2> we have by fact
      <reference|fact-horm1> that <math|L<rsup|2k>\<delta\><rsup|<around*|(|0|)>><around*|(|Q|)>\<simeq\>L<rsup|2>\<delta\><rsup|<around*|(|n/2-2|)>><around*|(|Q|)>\<simeq\>L\<delta\><around*|(|x|)>>
      and next lemma <reference|lem-6> implies the conclusion for
      <math|2k\<gtr\>n/2-2>.
    </proof>

    <\lemma>
      <label|lem-r7>Proposition <reference|q-norm:prop-2> holds when
      <math|<around*|(|i,n/2,p|)>\<in\><around*|{|1|}>\<times\><around*|(|2\<bbb-Z\>|)>\<times\><around*|(|2\<bbb-Z\>+1|)>>
    </lemma>

    <\proof>
      Again, we start with the holomorphicity. In the light of recurrence
      equation <math|L<rsup|2><wide|F<rsub|>|~><rsub|\<nu\>+2><rsup|<around*|(|i|)>>=64<around*|(|\<nu\>+1|)><around*|(|\<nu\>+n/2+1|)><wide|F|~><rsub|\<nu\>>>
      it suffices to show that <math|L<rsup|2><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>
      has zeros at <math|\<nu\>=1> (this is clear, as
      <math|<wide|F|~><rsub|1><rsup|<around*|(|i|)>>=Q>) and
      <math|\<nu\>=-n/2+1>. For the latter, we need to show that
      <math|L<rsup|2><around*|\||Q|\|><rsup|-n/2+1>sgn<around*|(|Q|)>=0>,
      which is implied by fact <reference|fact-horm2> and the fact that
      <math|2<around*|\||x|\|><rsup|-n/2+1>sgn<around*|(|x|)>=<around*|(|x+i0|)><rsup|-n/2+1>+<around*|(|x-i0|)><rsup|-n/2+1>>
      when <math|n/2\<in\>2\<bbb-Z\>>. This proves horolomorphicity.

      In the light of the recurrence equation to finish the proof it suffices
      to show that for <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
      <math|L<rsup|2k><wide|F|~><rsub|-2><rsup|<around*|(|i|)>><mid|\|><rsub|<around*|{|x\<neq\>0|}>>\<neq\>0>.
      Now, lemma <reference|lem-restricted> implies that
      <math|F<rsup|<around*|(|i|)>><rsub|-2><mid|\|><rsub|<around*|{|x\<neq\>0|}>>=\<delta\><rsup|<around*|(|1|)>><around*|(|Q|)>>
      and hence in case <math|n/2=2> application of lemma <reference|lem-5>
      ends the proof. In turn, when <math|n/2\<geqslant\>4> we can use fact
      <reference|fact-horm-homog> and lemma <reference|lem-5> together to get
      the desired <math|L<rsup|2k><wide|F|~><rsub|-2><rsup|<around*|(|i|)>>\<neq\>0>
      for <math|2k\<leqslant\>n/2-4>. Then, for <math|2k=n/2-2> we have
      <math|L<rsup|2k><wide|F|~><rsub|-2><rsup|<around*|(|i|)>>\<simeq\>L<rsup|2>\<delta\><rsup|<around*|(|n/2-3|)>><around*|(|Q|)>\<simeq\>L\<delta\><rsup|<around*|(|n/2-2|)>><around*|(|Q|)>\<simeq\>\<delta\><rsup|<around*|(|0|)>><around*|(|x|)>>
      the last <math|\<simeq\>> following from fact <reference|fact-horm1>.
      Finally, lemma <reference|lem-6> implies the conclusion for
      <math|2k\<gtr\>n/2-2>.
    </proof>

    <\lemma>
      <label|lem-n:odd-holo>For <math|p,q\<in\>\<bbb-Z\><rsub|\<geqslant\>1>>
      and <math|n\<assign\>p+q\<in\>2\<bbb-Z\>+1> we have distributions
      <math|Q<rsub|\<pm\>><rsup|\<nu\>>> having only poles at points
      <math|-\<bbb-Z\><rsub|\<geqslant\>1>\<sqcup\><around*|(|-n/2-\<bbb-Z\><rsub|\<geqslant\>0>|)>>
      and these are at most simple
    </lemma>

    <\proof>
      Let <math|<wide|Q|~><rsup|\<nu\>><rsub|\<pm\>>\<assign\>Q<rsub|\<pm\>><rsup|\<nu\>>/\<Gamma\><around*|(|\<nu\>+1|)>/\<Gamma\><around*|(|\<nu\>+n/2|)>>.
      It suffices to show that these extend to holomorphic distributions.
      Now, recurrence equation <math|L Q<rsub|\<pm\>><rsup|\<nu\>+1>=\<pm\>4<around*|(|\<nu\>-1|)><around*|(|\<nu\>+n/2|)>Q<rsub|\<pm\>><rsup|\<nu\>>>
      implies that <math|L <wide|Q|~><rsub|\<pm\>><rsup|\<nu\>>=\<pm\><wide|Q|~><rsub|\<pm\>><rsup|\<nu\>-1>>
      and the desired follows.
    </proof>

    <\lemma>
      <label|lem-n:odd-n/2>With assumptions regarding <math|p,q,n> and
      <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>> as in proposition
      <reference|q-norm:prop-1>, we have <math|<wide|F|~><rsup|<around*|(|i|)>><rsub|-n/2>\<simeq\>\<delta\><rsup|<around*|(|0|)>><around*|(|x|)>>.
    </lemma>

    <\proof>
      We have <math|Q<rsub|\<pm\>><rsup|\<nu\>>> being holomorphic at
      <math|\<nu\>=-n/2+2,-n/2+1> by lemma <reference|lem-n:odd-holo> and
      then we have <math|<wide|F|~><rsub|-n/2+2><rsup|<around*|(|1/2\<pm\>1/2|)>>=Q<rsub|+><rsup|-n/2+2>\<mp\>Q<rsub|\<nu\>><rsup|-n/2+2>>
      and holomorphic continuation of equation <math|L
      Q<rsub|\<pm\>><rsup|\<nu\>>=\<pm\>4\<nu\><around*|(|\<nu\>+n/2-1|)>Q<rsub|\<pm\>><rsup|\<nu\>-1>>
      implies that <math|L Q<rsub|\<pm\>><rsup|2-n/2>=\<pm\>c
      Q<rsub|\<pm\>><rsup|1-n/2>> with <math|c\<neq\>0>.

      Now, as recurrence relation <math|L<rsup|2><wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|1/2\<pm\>1/2|)>>=32<around*|(|\<nu\>+3/2\<mp\>1/2|)><wide|F|~><rsub|\<nu\>><rsup|<around*|(|1/2\<pm\>1/2|)>>>
      implies that <math|L<rsup|2><wide|F|~><rsub|-n/2+2><rsup|<around*|(|i|)>>\<simeq\><wide|F|~><rsub|-n/2><rsup|<around*|(|i|)>>>
      and the discussion in previous paragraph implies that
      <math|<wide|F|~><rsup|<around*|(|1/2\<pm\>1/2|)>><rsub|-n/2>\<simeq\>L<around*|(|Q<rsub|+><rsup|1-n/2>\<pm\>Q<rsub|-><rsup|1-n/2>|)>>.
      Finally, as <cite-detail|hormander1983analysis|eq. 3.2.9> holds for
      <math|a=1-n/2\<nin\>\<bbb-Z\>> and gives us

      <\equation*>
        <around*|(|x\<pm\>i0|)><rsup|a>=x<rsub|+><rsup|a>+e<rsup|\<pm\>\<pi\>i
        a>x<rsub|-><rsup|a>
      </equation*>

      we have for <math|\<alpha\>\<assign\>exp<around*|(|\<pi\>i a|)>>
      <math|2x<rsup|1-n/2><rsub|+>=<around*|(|x+i0|)><rsup|1-n/2>+<around*|(|x-i0|)><rsup|1-n/2>>
      and <math|2x<rsub|-><rsup|-n/2>=<frac|1|\<alpha\>><around*|(|<around*|(|x+i0|)><rsup|1-n/2>-<around*|(|x-i0|)><rsup|1-n/2>|)><rsub|>>
      and therefore <math|L<around*|(|Q<rsub|+><rsup|1-n/2>\<pm\>Q<rsub|-><rsup|1-n/2>|)>\<simeq\>L<around*|(|<around*|(|1\<pm\><frac|1|\<alpha\>>|)><around*|(|Q+i0|)><rsup|1-n/2>+<around*|(|1\<mp\><frac|1|\<alpha\>>|)><around*|(|Q-i0|)><rsup|1-n/2>|)>>
      and fact <reference|fact-horm2> implies that latter is the nonzero
      multiple of <math|<around*|(|<around*|(|\<alpha\>\<pm\>1|)>e<rsup|-\<pi\>i
      q/2>+<around*|(|\<alpha\>\<mp\>1|)>e<rsup|-\<pi\>i
      q/2>|)>\<delta\><rsup|<around*|(|0|)>><around*|(|x|)>> and as
      <math|<around*|(|\<alpha\>\<pm\>1|)>e<rsup|-\<pi\>i
      q/2>+<around*|(|\<alpha\>\<mp\>1|)>e<rsup|-\<pi\>i
      q/2>\<simeq\><around*|(|\<alpha\>\<pm\>1|)>e<rsup|-2\<pi\>i
      q>+<around*|(|\<alpha\>\<mp\>1|)>=<around*|(|\<alpha\>\<pm\>1|)>+<around*|(|\<alpha\>\<mp\>1|)>=2\<alpha\>\<neq\>0>,
      we are done.
    </proof>

    <subsubsection|Proofs>

    <\proof>
      (of prop. <reference|q-norm:prop-1>) Let
      <math|L\<assign\><big|sum><rsub|i=0><rsup|p><frac|\<partial\><rsup|2>|\<partial\>x<rsub|i><rsup|2>>-<big|sum><rsub|j=0><rsup|q><frac|\<partial\><rsup|2>|\<partial\>y<rsub|j><rsup|2>>>.
      For <math|Re<around*|(|\<nu\>|)>\<gg\>0> we have

      <\equation*>
        L<rsup|2>F<rsub|\<nu\>+2><rsup|<around*|(|i|)>>=16<around*|(|\<nu\>+2|)><around*|(|\<nu\>+1|)><around*|(|\<nu\>+<frac|n|2>+1|)><around*|(|\<nu\>+<frac|n|2>|)>F<rsub|\<nu\>><rsup|<around*|(|i|)>>,<space|1em>i=0,1
      </equation*>

      Hence, by analytic continuation these equations also hold for
      <math|\<nu\>\<in\>\<bbb-C\>\\\<bbb-Z\><rsub|\<leqslant\>0>\\<around*|(|<frac|n|2>+\<bbb-Z\><rsub|\<leqslant\>0>|)>>.
      Similarly, for <math|\<nu\>\<in\>\<bbb-C\>-\<bbb-Z\><rsub|\<leqslant\>0>-<around*|(|<frac|n|2>+\<bbb-Z\><rsub|\<leqslant\>0>|)>>
      we have\ 

      <\equation>
        L<rsup|2><wide|F|~><rsup|<around*|(|0|)>><rsub|\<nu\>+2>=32<around*|(|\<nu\>+2|)><wide|F|~><rsub|\<nu\>><rsup|<around*|(|0|)>><label|eq-1>
      </equation>

      <\equation>
        L<rsup|2><wide|F|~><rsup|<around*|(|1|)>><rsub|\<nu\>+2>=32<around*|(|\<nu\>+1|)><wide|F|~><rsub|\<nu\>><rsup|<around*|(|1|)>><label|eq-2>
      </equation>

      To prove holomorphicity of <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>
      for <math|i=0> and <math|i=1> in the light of equations above it
      suffices to show the holomorphicity at <math|\<nu\>=-2> and
      <math|\<nu\>=-1> respectively. However, for <math|\<nu\>=-2> we have
      <math|\<frak-P\><around*|(|N<rsub|0>|)><around*|(|\<nu\>|)>=0> and
      <math|<wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|0|)>>=<around*|\||Q|\|><rsup|0>\<equiv\>1>
      and hence <math|L<rsup|2><wide|F|~><rsup|<around*|(|0|)>><rsub|\<nu\>>\<equiv\>0>,
      hence left-hand side of equation <reference|eq-1> has zero at
      <math|\<nu\>=-2> and thus even divided by <math|\<nu\>-2> it remains
      holomorphic. Similarly, for <math|\<nu\>=-1> we have
      <math|\<frak-P\><around*|(|N<rsub|1>|)><around*|(|\<nu\>|)>=0> and
      <math|<wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|1|)>>=Q> and as
      <math|L<rsup|2>Q\<equiv\>0>, we similarly have holomorphicity. Thus
      <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>> are holomorphic
      for <math|i=0,1>.

      It still remains to show that <math|<wide|F|~><rsup|<around*|(|i|)>><rsub|\<nu\>>\<neq\>0>
      for <math|\<nu\>\<in\>\<bbb-C\>>. Now, for
      <math|\<nu\>\<nin\><around*|{|\<frak-P\><around*|(|N<rsub|i>|)>\<neq\>0|}>>
      this is granted by lemma <reference|lem-4>, so we can confine ourselves
      to <math|\<nu\>\<in\><around*|{|\<frak-P\><around*|(|N<rsub|i>|)>\<neq\>0|}>>
      case.

      Let's first consider <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|0|)>>>.
      We need to show it does not vanish for
      <math|\<nu\>\<in\><around*|(|-2\<bbb-Z\><rsub|\<geqslant\>0>-1|)>\<sqcup\><around*|(|-<frac|n|2>-\<bbb-Z\><rsub|\<geqslant\>0>|)>>.
      However, in the light of equation <math|<reference|eq-1>> it suffices
      to show that for <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
      <math|L<rsup|2k><wide|F|~><rsub|-1><rsup|<around*|(|0|)>>\<neq\>0> and
      <math|L<rsup|2k><wide|F|~><rsub|-n/2><rsup|<around*|(|0|)>>\<neq\>0>.
      Now, lemma <reference|lem-restricted> implies that
      <math|<wide|F|~><rsub|-1><rsup|<around*|(|0|)>><mid|\|><rsub|<around*|{|x\<neq\>0|}>>\<simeq\>\<delta\><rsup|<around*|(|0|)>><around*|(|Q|)>>
      and thus lemma <reference|lem-5> implies that
      <math|L<rsup|2k><wide|F|~><rsub|-1><rsup|<around*|(|0|)>><mid|\|><rsub|<around*|{|x\<neq\>0|}>>\<neq\>0>
      and hence nonzero. Next, lemma <reference|lem-n:odd-n/2> implies that
      <math|<wide|F|~><rsub|-n/2><rsup|<around*|(|0|)>>\<simeq\>\<delta\><around*|(|x|)>>
      and therefore lemma <reference|lem-6> implies the desired
      <math|L<rsup|2k><wide|F|~><rsub|-n/2><rsup|<around*|(|0|)>>\<neq\>0>.

      Next, we consider <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|1|)>>>.
      Similarly to previous paragraph, it suffices to show that
      <math|L<rsup|2k><wide|F|~><rsub|-2><rsup|<around*|(|1|)>>\<neq\>0> and
      <math|L<rsup|2k><wide|F|~><rsub|-n/2><rsup|<around*|(|1|)>>\<neq\>0>
      for <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>>. And this is granted by
      lemma <reference|lem-n:odd-n/2>.
    </proof>

    <\proof>
      (of proposition <reference|q-norm:prop-2>) The result is granted by
      lemmas <reference|lem-r6> to <reference|lem-r7>.
    </proof>

    \;
  <|hide-part>
    <section|Q-normalization><label|section:q-norm>
  </hide-part>

  <\hide-part|15>
    <section|KP-normalization-2>

    <subsection|Setting and goal>

    In this note, we will the data obtained in section
    <reference|section:q-norm> to find the <with|font-shape|italic|perfect>
    normalization of kernel of singular SBO, that is supported on
    <math|<around*|{|x<rsub|p>=0|}>>, which is given as

    <\equation>
      K<rsub|\<lambda\>,\<nu\>><rsup|P>\<assign\><big|sum><rsub|i=0><rsup|k><frac|<around*|(|-1|)><rsup|i><around*|(|2k|)>!<around*|(|\<nu\>|)><rsub|><rsup|i>|<around*|(|2k-2i|)>!i!>\<delta\><rsup|<around*|(|2k-2i|)>><around*|(|x<rsub|p>|)>\<otimes\>Q<rsub|i>,<space|1em>k\<assign\>\<lambda\>+\<nu\>-n
    </equation>

    with

    <\equation*>
      Q<rsub|i>\<assign\><choice|<tformat|<table|<row|<cell|<around*|\||<wide|Q|~>|\|><rsup|-\<nu\>-i>>|<cell|,i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>>|<row|<cell|sgn<around*|(|<wide|Q|~>|)><around*|\||<wide|Q|~>|\|><rsup|-\<nu\>-i>>|<cell|,i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>>>>
    </equation*>

    and <math|<around*|(|\<nu\>|)><rsub|><rsup|i>\<assign\>\<nu\><around*|(|\<nu\>+1|)>\<ldots\><around*|(|\<nu\>+i-1|)>>.

    Again, as in section <reference|section:q-norm>, here ``perfect'' means
    that the normalized kernel will be holomorphic in
    <math|\<nu\>\<in\>\<bbb-C\>> and nonzero. We will also determine the
    support of a normalized kernel for every <math|\<nu\>\<in\>\<bbb-C\>>.

    <subsection|Main results>

    <\proposition>
      <label|KP-normalization-2:prop-1>Let <math|p<rprime|'>\<assign\>p-1>
      and <math|n<rprime|'>\<assign\>p<rprime|'>+q=n-1>. For
      <math|n<rprime|'>\<in\>2\<bbb-Z\>+1> we have:

      <\equation*>
        \<frak-P\><around*|(|K<rsub|\<lambda\>,\<nu\>><rsup|P>|)>=<around*|(|<frac|n<rprime|'>|2>-k+\<bbb-Z\><rsub|\<geqslant\>0>|)>\<sqcup\><around*|[|1+2\<bbb-Z\><rsub|\<geqslant\>0>|]>
      </equation*>

      where <math|<around*|[|a|]>> means that for pole at <math|a> highest
      term is supported at <math|<around*|{|x<rsub|p>=0|}>\<cap\><around*|{|Q=0|}>>,
      while <math|<around*|(|a|)>> means that it is supported at
      <math|<around*|{|0|}>>, and <math|K<rsub|\<lambda\>,\<nu\>><rsup|P>>
      has support <math|<around*|{|x<rsub|p>=0|}>> at all points
      <math|\<nu\>\<in\>\<bbb-C\>> of holomorphicity.
    </proposition>

    <\proposition>
      <label|KP-normalization-2:prop-2>Let <math|p<rprime|'>\<assign\>p-1>
      and <math|n<rprime|'>\<assign\>p<rprime|'>+q=n-1>. For
      <math|p<rprime|'>,q,n<rprime|'>/2\<in\>2\<bbb-Z\>> we have:

      <\equation*>
        \<frak-P\><around*|(|K<rsub|\<lambda\>,\<nu\>><rsup|P>|)>=<around*|[|1+2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><choice|<tformat|<table|<row|<cell|<around*|(|2+2\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|k\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>,k\<geqslant\>n<rprime|'>/2-2>>|<row|<cell|<around*|(|n<rprime|'>/2-k+2\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|k\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>,k\<less\>n<rprime|'>/2-2>>|<row|<cell|<around*|(|2+2\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|k\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1,<around*|(|k-1|)>\<geqslant\>n<rprime|'>/2-2>>|<row|<cell|<around*|(|n<rprime|'>/2-<around*|(|k-1|)>+2\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|k\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1,<around*|(|k-1|)>\<less\>n<rprime|'>/2-2>>>>>
      </equation*>
    </proposition>

    <\proposition>
      <label|KP-normalization-2:prop-3>Let <math|p<rprime|'>\<assign\>p-1>
      and <math|n<rprime|'>\<assign\>p<rprime|'>+q=n-1>. For
      <math|p<rprime|'>,q,n<rprime|'>/2\<in\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>0>|)><rsup|2>\<times\><around*|(|1+2\<bbb-Z\><rsub|\<geqslant\>0>|)>>
      we have:

      <\equation*>
        \<frak-P\><around*|(|K<rsub|\<lambda\>,\<nu\>><rsup|P>|)>=<around*|[|1+2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><choice|<tformat|<table|<row|<cell|<around*|(|2+2\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|k\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>,<frac|n<rprime|'>|2>+1-k\<less\>2>>|<row|<cell|<around*|(|<frac|n<rprime|'>|2>+1-k+2\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|k\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>,<frac|n<rprime|'>|2>+1-k\<geqslant\>2>>|<row|<cell|<around*|(|2+2\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|k\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1,n<rprime|'>/2-k\<less\>2>>|<row|<cell|<around*|(|<frac|n<rprime|'>|2>-k+2\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|k\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1,n<rprime|'>/2-k\<geqslant\>2>>>>>
      </equation*>
    </proposition>

    <\remark>
      The statement of two previous theorems can be summarized as follows:\ 

      for <math|n<rprime|'>,q\<in\>2\<bbb-Z\>> we have

      <\equation*>
        \<frak-P\><around*|(|K<rsub|\<lambda\>,\<nu\>><rsup|P>|)>=<around*|[|1+2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><around*|(|max<around*|{|2,<around*|(|<frac|n-1|2>-k|)><rprime|'>|}>+2\<bbb-Z\><rsub|\<geqslant\>0>|)>,
      </equation*>

      where <math|<around*|(|<frac|n-1|2>-k|)><rprime|'>> denotes the
      smallest even integer which is <math|\<geqslant\><around*|(|<frac|n-1|2>-k|)>>.
    </remark>

    <\proposition>
      <label|KP-normalization-2:prop-4>Let <math|p<rprime|'>\<assign\>p-1>
      and <math|n<rprime|'>\<assign\>p<rprime|'>+q=n-1>. Let also
      <math|k<rprime|'>> be maximal even number that is <math|\<leqslant\>k>.
      For <math|p<rprime|'>,q,n<rprime|'>/2\<in\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>0>+1|)><rsup|3>>
      we have:

      <\equation*>
        \<frak-P\><around*|(|K<rsub|\<lambda\>,\<nu\>><rsup|P>|)>=<choice|<tformat|<table|<row|<cell|<around*|[|1,3,\<ldots\>,<frac|n<rprime|'>|2>-k<rprime|'>-2|]>\<sqcup\><around*|(|<frac|n<rprime|'>|2>-k<rprime|'>+2\<bbb-Z\><rsub|\<geqslant\>0>|)><rsup|2>,>|<cell|k<rprime|'>\<leqslant\>n<rprime|'>/2-3>>|<row|<cell|<around*|(|<frac|n<rprime|'>|2>-k<rprime|'>,<frac|n<rprime|'>|2>-k<rprime|'>+2,\<ldots\>,-1|)>\<sqcup\><around*|(|1+2\<bbb-Z\><rsub|\<geqslant\>0>|)><rsup|2>,>|<cell|k<rprime|'>\<gtr\>n<rprime|'>/2-3>>>>>
      </equation*>

      where upper-index <math|2> on the right-hand sides marks double poles.
    </proposition>

    <\proposition>
      <label|KP-normalization-2:prop-5>Let <math|p<rprime|'>\<assign\>p-1>
      and <math|n<rprime|'>\<assign\>p<rprime|'>+q=n-1>. Let also
      <math|k<rprime|'>> be maximal odd number that is <math|\<leqslant\>k>.
      For <math|p<rprime|'>,q,n<rprime|'>/2\<in\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>0>+1|)><rsup|>\<times\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>0>|)>>
      we have:

      <\equation*>
        \<frak-P\><around*|(|K<rsub|\<lambda\>,\<nu\>><rsup|P>|)>=<choice|<tformat|<table|<row|<cell|<around*|[|1,3,\<ldots\>,<frac|n<rprime|'>|2>-2-k<rprime|'>|]>\<sqcup\><around*|(|<frac|n<rprime|'>|2>-k<rprime|'>+2\<bbb-Z\><rsub|\<geqslant\>0>|)><rsup|2>,>|<cell|k<rprime|'>\<leqslant\>n<rprime|'>/2-3,>>|<row|<cell|<around*|(|<frac|n<rprime|'>|2>-k<rprime|'>,<frac|n<rprime|'>|2>-k<rprime|'>+2,\<ldots\>,-1|)>\<sqcup\><around*|(|1+2\<bbb-Z\><rsub|\<geqslant\>0>|)><rsup|2>,>|<cell|k<rprime|'>\<gtr\>n<rprime|'>/2-3>>>>>
      </equation*>

      where upper-index <math|2> on the right-hand sides marks double poles.
    </proposition>

    <subsection|Auxiliary results>

    <\lemma>
      <label|KP-normalization-2:lem-holo-supp>At points of holomorphicity
      <math|K<rsub|\<lambda\>,\<nu\>><rsup|P>> has support equal to
      <math|<around*|{|x<rsub|p>=0|}>>.
    </lemma>

    <\proof>
      In the light of lemma <reference|P-def:lem-delta-times-mero> we see
      that point of holomorphicity of <math|K<rsub|\<lambda\>,\<nu\>><rsup|P>>
      should in particular be point of holomorphicity of
      <math|Q<rsub|i>=<around*|\||<wide|Q|~>|\|><rsup|-\<nu\>>>. Now, the
      latter is known to have full support at points of its holomorphicity.
    </proof>

    <\lemma>
      <label|KP-normalization-2:lem-sets>Suppose
      <math|<around*|{|A<rsub|n>|}><rsub|n>> be finite family of subsets of
      <math|\<bbb-Z\>> of form <math|A<rsub|i>=<around*|{|a<rsub|i>,a<rsub|i>+1,\<ldots\>,b<rsub|i>|}>>
      and such that every member of family intersects some other member.
      Then, <math|<big|cup><rsub|n>A<rsub|n>=<around*|{|a,a+1,\<ldots\>,b|}>>
      where <math|a\<assign\>min<around*|{|a<rsub|i>|}><rsub|i>> and
      <math|b\<assign\>max<around*|{|b<rsub|i>|}><rsub|i>>.
    </lemma>

    <\proof>
      Induction on size of family <math|<around*|{|A<rsub|n>|}><rsub|n>>.
      Statement is clear when size is one, and when size is more, we take two
      members <math|A<rsub|0>,A<rsub|1>\<in\><around*|{|A<rsub|n>|}><rsub|n>>
      such that <math|A<rsub|0>\<cap\>A<rsub|1>\<neq\>\<varnothing\>> and
      consider the new family <math|<around*|{|A<rsub|0>\<cup\>A<rsub|1>|}>\<cup\><around*|{|A<rsub|n>|}><rsub|n>\\<around*|{|A<rsub|0>,A<rsub|1>|}>>.
    </proof>

    <\lemma>
      <label|KP-normalization-2:lem-nonzero><math|K<rsub|\<lambda\>,\<nu\>><rsup|P>\<neq\>0>
      for all <math|\<nu\>\<in\>\<bbb-C\>>. In other words,
      <math|\<frak-P\><around*|(|K<rsub|\<lambda\>,\<nu\>><rsup|C>|)>\<geqslant\>0>.
    </lemma>

    <\proof>
      This follows from lemma <reference|P-def:lem-delta-max> and the fact
      that <math|<around*|\||<wide|Q|~>|\|><rsup|\<nu\>>\<neq\>0> for
      <math|\<nu\>\<neq\>0>.
    </proof>

    <\lemma>
      <label|KP-normalization-2:lem-trivial>Let
      <math|A\<subset\>1+\<bbb-Z\><rsub|\<geqslant\>0>>. Then for
      <math|n\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
      <math|<around*|(|-n+A|)>\\<around*|{|-n+1,-n+2,\<ldots\>,0|}>=<around*|(|-n+A|)>\<cap\>\<bbb-Z\><rsub|\<geqslant\>1>>.
    </lemma>

    <\proof>
      By direct computation.
    </proof>

    <subsection|Proofs>

    <\proof>
      (of proposition <reference|KP-normalization-2:prop-1>) Till the end of
      proof we will use symbols <math|p,n> for <math|p<rprime|'>,n<rprime|'>>
      respectively. Original <math|p,n> will not appear in this proof. The
      last statement is readily granted by lemma
      <reference|KP-normalization-2:lem-holo-supp>, once all others will be
      shown.

      One readily sees that\ 

      <\equation*>
        \<frak-P\><around*|(|Q<rsub|i>|)>=<choice|<tformat|<table|<row|<cell|<around*|[|1-i+2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><around*|(|<frac|n|2>-i+\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|i\<in\>2\<bbb-Z\>>>|<row|<cell|<around*|[|2-i+2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><around*|(|<frac|n|2>-i+\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|i\<in\>2\<bbb-Z\>+1>>>>>
      </equation*>

      Now, first item of lemma <reference|P-def:lem-threeset> implies
      immediately the <math|<around*|(|-<frac|n|2>-k+\<bbb-Z\><rsub|\<geqslant\>0>|)>>
      term in the result.\ 

      The first item of lemma <reference|P-def:lem-threeset> now implies that
      to finish we need to show that (we may treat
      <math|\<frak-P\><around*|(|<around*|(|\<nu\>|)><rsup|i>Q<rsub|i>|)>> as
      a set in accordance with definition <reference|def-P>, as
      <math|Q<rsub|i>> has only simple poles)

      <\equation*>
        <big|cup><rsub|i=0><rsup|k><around*|(|\<frak-P\><around*|(|<around*|(|\<nu\>|)><rsup|i>Q<rsub|i>|)>\<cap\>\<bbb-Z\>|)>=<around*|[|1+2\<bbb-Z\><rsub|\<geqslant\>0>|]>
      </equation*>

      But we have

      <\equation*>
        \<frak-P\><around*|(|<around*|(|\<nu\>|)><rsup|i>Q<rsub|i>|)>\<cap\>\<bbb-Z\>=<choice|<tformat|<table|<row|<cell|<around*|[|1+2\<bbb-Z\><rsub|\<geqslant\>0>|]>,>|<cell|i\<in\>2\<bbb-Z\>>>|<row|<cell|<around*|[|1+2\<bbb-Z\><rsub|\<geqslant\>0>|]>,>|<cell|i\<in\>2\<bbb-Z\>+1>>>>>
      </equation*>

      as <math|2-i,1-i\<geqslant\>1-i>.
    </proof>

    <\proof>
      (of proposition <reference|KP-normalization-2:prop-2>) Till the end of
      proof we will use symbols <math|p,n> for <math|p<rprime|'>,n<rprime|'>>
      respectively. Original <math|p,n> will not appear in this proof.
      Definitions imply that <math|\<frak-P\><around*|(|Q<rsub|1>|)>=1+\<frak-P\><around*|(|Q<rsub|0>|)>>
      (we treat <math|\<frak-P\><around*|(|<around*|\||Q|\|><rsup|-\<nu\>>|)>>
      and <math|\<frak-P\><around*|(|<around*|\||Q|\|><rsup|-\<nu\>>sgn<around*|(|Q|)>|)>>
      as sets) and hence

      <\equation*>
        \<frak-P\><around*|(|Q<rsub|i>|)>=-i+\<frak-P\><around*|(|Q<rsub|0>|)>=<choice|<tformat|<table|<row|<cell|<around*|[|1-i+2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><around*|(|<frac|n|2>-i+2\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>>|<row|<cell|<around*|[|1-<around*|(|i-1|)>+2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><around*|(|<frac|n|2>-<around*|(|i-1|)>+2\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>>>>
      </equation*>

      Now, lemma <reference|KP-normalization-2:lem-trivial> implies that

      <\equation*>
        \<frak-P\><around*|(|<around*|(|\<nu\>|)><rsup|i>Q<rsub|i>|)>=\<bbb-Z\><rsub|\<geqslant\>1>\<cap\><around*|(|-i+\<frak-P\><around*|(|Q<rsub|0>|)>|)>=<choice|<tformat|<table|<row|<cell|<around*|[|1+2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><around*|(|max<around*|{|2,<frac|n|2>-i|}>+2\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>>|<row|<cell|<around*|[|1+2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><around*|(|max<around*|{|2,<frac|n|2>-<around*|(|i-1|)>|}>+2\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>>>>
      </equation*>

      and from this answer follows, as one sees that
      <math|\<frak-P\><around*|(|<around*|(|\<nu\>|)><rsup|i>Q<rsub|i>|)>>
      are non-decreasing.
    </proof>

    <\proof>
      (of proposition <reference|KP-normalization-2:prop-3>) Till the end of
      proof we will use symbols <math|p,n> for <math|p<rprime|'>,n<rprime|'>>
      respectively. Original <math|p,n> will not appear in this proof.
      Definitions imply that

      <\equation*>
        \<frak-P\><around*|(|Q<rsub|i>|)>=<choice|<tformat|<table|<row|<cell|-i+\<frak-P\><around*|(|Q<rsub|0>|)>,>|<cell|i\<in\>2\<bbb-Z\>>>|<row|<cell|-<around*|(|i-1|)>+\<frak-P\><around*|(|Q<rsub|1>|)>,>|<cell|i\<in\>2\<bbb-Z\>+1>>>>>=<choice|<tformat|<table|<row|<cell|<around*|[|1-i+2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><around*|(|<frac|n|2>+1-i+2\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>>|<row|<cell|<around*|[|1-<around*|(|i-1|)>+2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><around*|(|<frac|n|2>-i+2\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>>>>
      </equation*>

      Now, lemma <reference|KP-normalization-2:lem-trivial> implies that
      <math|\<frak-P\><around*|(|<around*|(|\<nu\>|)><rsup|i>Q<rsub|i>|)>>
      equals to

      <\equation*>
        <choice|<tformat|<table|<row|<cell|\<bbb-Z\><rsub|\<geqslant\>1>\<cap\><around*|(|-i+\<frak-P\><around*|(|Q<rsub|0>|)>|)>,>|<cell|i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>>|<row|<cell|\<bbb-Z\><rsub|\<geqslant\>1>\<cap\><around*|(|-<around*|(|i-1|)>+\<frak-P\><around*|(|Q<rsub|1>|)>|)>,>|<cell|i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>>>>=<choice|<tformat|<table|<row|<cell|<around*|[|1+2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><around*|(|max<around*|{|2,<frac|n|2>+1-i|}>+2\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>>|<row|<cell|<around*|[|1+2\<bbb-Z\><rsub|\<geqslant\>0>|]>\<sqcup\><around*|(|max<around*|{|2,<frac|n|2>-i|}>+2\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>>>>
      </equation*>

      and from this answer follows, as one sees that
      <math|\<frak-P\><around*|(|<around*|(|\<nu\>|)><rsup|i>Q<rsub|i>|)>>
      are non-decreasing.
    </proof>

    <\proof>
      (of proposition <reference|KP-normalization-2:prop-4>) \ Till the end
      of proof we will use symbols <math|p,n> for
      <math|p<rprime|'>,n<rprime|'>> respectively. Original <math|p,n> will
      not appear in this proof. We shall also employ notation
      <math|\<frak-P\><rsup|e><around*|(|\<cdot\>|)>> as in definition
      <reference|P-def:def-9> and a subsequent remark.

      Definitions imply that <math|\<frak-P\><rsup|e><around*|(|Q<rsub|1>|)><around*|(|\<nu\>+1|)>=\<frak-P\><rsup|e><around*|(|Q<rsub|0>|)><around*|(|\<nu\>|)>>
      and hence if we let <math|i<rprime|'>> be the biggest even number that
      is <math|\<leqslant\>i> (as <math|k<rprime|'>> in statement), then

      <\equation*>
        \<frak-P\><rsup|e><around*|(|Q<rsub|i>|)>=<around*|[|1-i<rprime|'>,3-i<rprime|'>,\<ldots\>,<frac|n|2>-i<rprime|'>-2|]>\<sqcup\><around*|(|<frac|n|2>-i<rprime|'>+2\<bbb-Z\><rsub|\<geqslant\>0>|)><rsup|2>
      </equation*>

      and hence\ 

      <\equation*>
        \<frak-P\><rsup|e><around*|(|<around*|(|\<nu\>|)><rsup|i>Q<rsub|i>|)>=<choice|<tformat|<table|<row|<cell|<around*|[|1,3,\<ldots\>,<frac|n|2>-i<rprime|'>-2|]>\<sqcup\><around*|(|<frac|n|2>-i<rprime|'>+2\<bbb-Z\><rsub|\<geqslant\>0>|)><rsup|2>,>|<cell|n/2-i<rprime|'>\<geqslant\>0>>|<row|<cell|<around*|(|<frac|n|2>-i<rprime|'>,<frac|n|2>-i<rprime|'>+2,\<ldots\>,-1|)>\<sqcup\><around*|(|1+2\<bbb-Z\><rsub|\<geqslant\>0>|)><rsup|2>,>|<cell|n/2-i<rprime|'>\<less\>0>>>>>
      </equation*>

      and the result follows as <math|\<frak-P\><rsup|e><around*|(|<around*|(|\<nu\>|)><rsup|i>Q<rsub|i>|)>>
      form nondecreasing sequence of <math|\<bbb-C\>\<rightarrow\>\<bbb-Z\>>
      functions (``nondecreasing'' in the sence of definition
      <reference|P-def:def-9>).
    </proof>

    <\proof>
      (of proposition <reference|KP-normalization-2:prop-5>) Till the end of
      proof we will use symbols <math|p,n> for <math|p<rprime|'>,n<rprime|'>>
      respectively. Original <math|p,n> will not appear in this proof. We
      shall also employ notation <math|\<frak-P\><rsup|e><around*|(|\<cdot\>|)>>
      as defined in definition <reference|P-def:def-9> and subsequent remark.

      <\equation*>
        \<frak-P\><rsup|e><around*|(|Q<rsub|i>|)>=<choice|<tformat|<table|<row|<cell|<around*|[|1-i,3-i,\<ldots\>,<frac|n|2>-1-i|]>\<sqcup\><around*|(|<frac|n|2>+1-i+2\<bbb-Z\><rsub|\<geqslant\>0>|)><rsup|2>,>|<cell|i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>>|<row|<cell|<around*|[|1-<around*|(|i-1|)>,3,\<ldots\>,<frac|n|2>-3-<around*|(|i-1|)>|]>\<sqcup\><around*|(|<frac|n|2>-1-<around*|(|i-1|)>+2\<bbb-Z\><rsub|\<geqslant\>0>|)>,>|<cell|i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>>>>
      </equation*>

      and hence

      <\equation*>
        \<frak-P\><around*|(|<around*|(|\<nu\><rsup|>|)><rsup|i>Q<rsub|i>|)>=<choice|<tformat|<table|<row|<cell|<around*|[|1,3,\<ldots\>,<frac|n|2>-1-i|]>\<sqcup\><around*|(|<frac|n|2>+1-i+2\<bbb-Z\><rsub|\<geqslant\>0>|)><rsup|2>,>|<cell|i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>,<frac|n|2>-1-i\<geqslant\>1>>|<row|<cell|<around*|(|<frac|n|2>+1-i,<frac|n|2>+3-i,\<ldots\>,-1|)>\<sqcup\><around*|(|1+2\<bbb-Z\><rsub|\<geqslant\>0>|)><rsup|2>,>|<cell|i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>,<frac|n|2>-1-i\<less\>1>>|<row|<cell|<around*|[|1,\<ldots\>,<frac|n|2>-i-2|]>\<sqcup\><around*|(|<frac|n|2>-i+2\<bbb-Z\><rsub|\<geqslant\>0>|)><rsup|2>,>|<cell|i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1,<frac|n|2>-2-i\<geqslant\>1>>|<row|<cell|<around*|(|<frac|n|2>-i,\<ldots\>,-1|)>\<sqcup\><around*|(|1+2\<bbb-Z\><rsub|\<geqslant\>0>|)><rsup|2>,>|<cell|i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1,<frac|n|2>-2-i\<less\>1>>>>>
      </equation*>

      and if we let <math|i<rprime|'>> be the biggest odd number that is
      <math|\<leqslant\>i>, we can rewrite this as

      <\equation*>
        =<choice|<tformat|<table|<row|<cell|<around*|[|1,3,\<ldots\>,<frac|n|2>-2-i<rprime|'>|]>\<sqcup\><around*|(|<frac|n|2>-i<rprime|'>+2\<bbb-Z\><rsub|\<geqslant\>0>|)><rsup|2>,>|<cell|n/2-3\<geqslant\>i<rprime|'>,>>|<row|<cell|<around*|(|<frac|n|2>-i<rprime|'>,<frac|n|2>-i<rprime|'>+2,\<ldots\>,-1|)>\<sqcup\><around*|(|1+2\<bbb-Z\><rsub|\<geqslant\>0>|)><rsup|2>,>|<cell|i<rprime|'>\<gtr\>n/2-3>>>>>
      </equation*>

      and the result follows as <math|\<frak-P\><rsup|e><around*|(|<around*|(|\<nu\>|)><rsup|i>Q<rsub|i>|)>>
      form nondecreasing sequence of <math|\<bbb-C\>\<rightarrow\>\<bbb-Z\>>
      functions (``nondecreasing'' in the sence of definition
      <reference|P-def:def-9>).
    </proof>
  <|hide-part>
    <section|KP-normalization-2>
  </hide-part>

  <\hide-part|16>
    <section|KR-normalization-even>

    In this part, we will try to normalize kernel of regular symmetry
    breaking operator under the assumption
    <math|q\<in\>2\<bbb-Z\><rsub|\<gtr\>0>>. As shown in proposition
    <reference|KR-normalization-recur:prop-3>, for the appropriate open
    subset of <math|\<bbb-C\><rsup|2>> we have kernel of regular SBO
    <math|K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>> being equal to\ 

    <\equation>
      K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>=<frac|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>\<cdot\><around*|\||Q|\|><rsup|-\<nu\>>|\<Gamma\><around*|(|<around*|(|1-\<nu\>|)>/2|)>\<Gamma\><around*|(|<around*|(|\<lambda\>+\<nu\>-n\<upl\>1|)>/2|)>>
    </equation>

    We will use notations <math|F<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\><rprime|'>>>
    and <math|<wide|F|~><rsub|N,M,s<rsup|n<rprime|'>><around*|(|t-s|)><rsup|m<rprime|'>>,\<psi\>,1>>
    introduced in definition <reference|KC-normalization-2:def-ftilde>. We
    shall also employ the notion of <math|\<frak-P\><around*|(|\<cdot\>|)>>
    as given in definition <reference|def-P> and related notions.

    <subsection|Main results>

    <\proposition>
      <label|KR-normalization-even:prop-kfinite>For <math|q\<in\>2\<bbb-Z\>>
      and <math|F>: <math|K>-finite vector we have
      <math|<around*|(|\<lambda\>,\<nu\>|)>\<mapsto\><around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>,F|\<rangle\>>>
      being finite linear combination of functions
      <math|<around*|{|f<rsub|m<rprime|'>,n<rprime|'>,N,i><around*|(|\<lambda\>,\<nu\>|)>|}><rsub|i=0,1;m<rprime|'>,n<rprime|'>\<in\>\<bbb-Z\><rsub|\<geqslant\>0>>>
      given as:

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|f<rsub|m<rprime|'>,n<rprime|'>,N,i><around*|(|\<lambda\>,\<nu\>|)>\<assign\>2<rsup|\<lambda\>><frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>|2>+m<rprime|'>+<frac|N-q|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>|2>+<frac|N-q|2>|)>>\<times\>\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>+m<rprime|'>+n<rprime|'>+<frac|N|2>|)>\<times\>>|<cell|>>|<row|<cell|>|<cell|\<times\><choice|<tformat|<table|<row|<cell|<frac|<around*|(|\<lambda\>+2m<rprime|'>+2n<rprime|'>+N-1|)><around*|(|\<lambda\>+2m<rprime|'>+2n<rprime|'>+N-3|)>\<ldots\><around*|(|\<lambda\>+2m<rprime|'>+N-q+1|)>|\<Gamma\><rsup|><around*|(|\<lambda\>+2m<rprime|'>+2n<rprime|'>+N|)>>,>|<cell|i=0>>|<row|<cell|<frac|<around*|(|\<lambda\>+2m<rprime|'>+2n<rprime|'>+N-1|)><around*|(|\<lambda\>+2m<rprime|'>+2n<rprime|'>+N-3|)>\<ldots\><around*|(|\<lambda\>+2m<rprime|'>+N-q+1|)>|\<Gamma\><rsup|><around*|(|\<lambda\>+2m<rprime|'>+2n<rprime|'>+N+1|)>>,>|<cell|i=1>>>>>\<times\>>|<cell|>>|<row|<cell|>|<cell|\<times\><around*|(|\<nu\>-1|)><rsup|-1><around*|(|\<nu\>-3|)><rsup|-1>\<ldots\><around*|(|\<nu\>-q-2n<rprime|'>+1|)><rsup|-1><frac|1|\<Gamma\><around*|(|<around*|(|1-\<nu\>|)>/2|)>>\<times\><choice|<tformat|<table|<row|<cell|1,>|<cell|i=0>>|<row|<cell|\<nu\>,>|<cell|i=1>>>>>\<simeq\>>|<cell|<lprime|`>>>|<row|<cell|>|<cell|\<simeq\><frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>>\<times\><frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>|2>+m<rprime|'>+<frac|N-q|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>|2>+<frac|N-q|2>|)>>\<times\>\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>+m<rprime|'>+n<rprime|'>+<frac|N|2>|)>\<times\>>|<cell|>>|<row|<cell|>|<cell|\<times\><frac|<around*|(|\<lambda\>+2m<rprime|'>+2n<rprime|'>+N-1|)><around*|(|\<lambda\>+2m<rprime|'>+2n<rprime|'>+N-3|)>\<ldots\><around*|(|\<lambda\>+2m<rprime|'>+N-q+1|)>|\<Gamma\><rsup|><around*|(|\<lambda\>+2m<rprime|'>+2n<rprime|'>+N+i|)>>\<times\><frac|\<nu\><rsup|i>|\<Gamma\><around*|(|<frac|q+2n<rprime|'>+1-\<nu\>|2>|)>>.>|<cell|>>>>
      </eqnarray>

      In particular, for <math|F:=F<rsub|0,0,0,1,1>\<in\>C<rsup|\<infty\>><around*|(|\<bbb-R\><rsup|p,q>|)>>
      being the spherical vector we have

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>,F|\<rangle\>>\<simeq\><frac|<around*|(|\<lambda\>-1|)><around*|(|\<lambda\>-3|)>\<ldots\><around*|(|\<lambda\>-q+1|)>|\<Gamma\><around*|(|\<lambda\>|)>>\<times\><frac|1|\<Gamma\><around*|(|<around*|(|q+1-\<nu\>|)>/2|)>>\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>.>|<cell|>>>>
      </eqnarray>
    </proposition>

    <\proposition>
      <label|KR-normalization-even:prop-holo>For <math|q\<in\>2\<bbb-Z\>> we
      have for <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>\<assign\>K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>/\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>>
      and arbitrary <math|K>-finite <math|F> vector
      <math|<around*|\<langle\>|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>,F|\<rangle\>>>
      extending to holomorphic in <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>
      function. Moreover, <math|\<frak-P\><rsub|-><around*|(|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>|)>>
      is a discrete subset of <math|<around*|{|\<lambda\>+\<nu\>-n\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>|}>*\<cup\><around*|{|\<lambda\>-\<nu\>\<in\>-2\<bbb-Z\><rsub|\<geqslant\>0>|}>\<subset\>\<bbb-C\><rsup|2>>.
    </proposition>

    <\proposition>
      <label|prop-q=2>For <math|q=2> let <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>=K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>/\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>>.
      Then, <math|<wide|K|~><rsup|\<bbb-R\><rsup|n>><rsub|\<lambda\>,\<nu\>>>
      extends to a holomorphic in <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>
      distribution and for <math|x=<frac|\<lambda\>+\<nu\>-q|2>>,
      <math|y=<frac|\<lambda\>-\<nu\>-q|2>> we have\ 

      <\equation*>
        \<frak-P\><rsub|-><around*|(|<wide|K|~><rsup|\<bbb-R\><rsup|n>><rsub|\<lambda\>,\<nu\>>|)>=<big|sqcup><rsub|k\<in\>\<bbb-Z\><rsub|\<leqslant\>0>\<cup\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>0>+1|)>><around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsup|2><mid|\|>y\<leqslant\>-1,<space|0.6spc>x-y=k|}>=<big|sqcup><rsub|\<nu\>\<in\>\<bbb-Z\><rsub|\<leqslant\>0>\<cup\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>0>+1|)>><around*|{|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-Z\><rsup|2><mid|\|>\<lambda\>-\<nu\>\<in\>2\<bbb-Z\><rsub|\<leqslant\>0>|}>.
      </equation*>
    </proposition>

    <subsection|Auxilliary results (I)>

    <\fact>
      <label|KR-normalization-even:fact-P-K><cite-detail|kobayashi2015symmetry|Lemma
      7.5>For <math|g\<in\>\<bbb-C\><around*|[|t|]>> and
      <math|<around*|(|a,b|)>\<in\>\<bbb-C\><rsup|2>> let\ 

      <\equation*>
        P<rsub|a,b><around*|(|g|)>\<assign\>:=<frac|1|\<Gamma\><around*|(|a|)>\<Gamma\><around*|(|b|)>><big|int><rsub|-1><rsup|1><around*|(|1-t|)><rsup|a-1><around*|(|1+t|)><rsup|b-1>g<around*|(|t|)>d
        t.
      </equation*>

      Then, <math|P<rsub|a,b><around*|(|g|)>> is holomorphic as a function in
      <math|<around*|(|a,b|)>\<in\>\<bbb-C\><rsup|2>> and moreover
      <math|P<rsub|a,b>\<equiv\>0\<Leftrightarrow\><around*|(|a,b|)>\<in\>\<bbb-Z\><rsub|\<leqslant\>0><rsup|2>>.
    </fact>

    <\lemma>
      <label|KR-normalization-even:lem-Poddeven>Let
      <math|a,b\<in\>\<bbb-C\><rsup|>> and
      <math|g\<in\>\<bbb-C\><around*|[|t|]>> be a polynomial in <math|t>
      which is even as a function on <math|\<bbb-R\>>. Let
      <math|P<rsub|a,b><rsup|even/odd><around*|(|\<cdot\>|)>> be restriction
      of <math|P<rsub|a,b><around*|(|\<cdot\>|)>> to the subspace of even/odd
      polynomials. Then <math|P<rsup|even><rsub|a,b>\<equiv\>0\<Leftrightarrow\><around*|(|a,b|)>\<in\>\<bbb-Z\><rsub|\<leqslant\>0><rsup|2>>,
      while <math|P<rsup|odd><rsub|a,b>\<equiv\>0> iff
      <math|<around*|(|a,b|)>\<in\>\<bbb-Z\><rsub|\<leqslant\>0><rsup|2>> or
      <math|a=b>. Also, <math|<wide|P|~><rsup|odd><rsub|a,b><around*|(|g|)>\<assign\><frac|1|a-b>P<rsup|odd><rsub|a,b><around*|(|g|)>>
      is holomorphic and <math|<wide|P|~><rsub|a,b><rsup|odd>\<equiv\>0> iff
      <math|<around*|(|a,b|)>\<in\>\<bbb-Z\><rsub|\<leqslant\>0><rsup|2>> and
      <math|a+b\<less\>0>.
    </lemma>

    <\proof>
      We first do <math|P<rsup|even><rsub|a,b>>. The first assertion follows
      immediately from fact <reference|KR-normalization-even:fact-P-K>. It
      also follows from that fact that <math|<around*|(|a,b|)>\<in\>\<bbb-Z\><rsub|\<leqslant\>0><rsup|2>\<Rightarrow\>P<rsub|a,b><rsup|even>\<equiv\>0>,
      so it suffices to prove the reverse implication.

      Note that <math|P<rsup|even><rsub|a,b>\<equiv\>0> iff
      <math|\<forall\>n\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have (we will
      use <math|\<simeq\>> to denote proportionality up to nonzero finite
      constant)

      <\equation*>
        0=P<rsub|a,b><rsup|even><around*|(|<around*|(|1-t<rsup|2>|)><rsup|n>|)>\<simeq\><frac|\<Gamma\><around*|(|a+n|)>|\<Gamma\><around*|(|a|)>>\<cdot\><frac|\<Gamma\><around*|(|b+n|)>|\<Gamma\><around*|(|b|)>>\<cdot\><frac|1|\<Gamma\><around*|(|a+b+2n|)>>.
      </equation*>

      Hence if for some <math|<around*|(|a<rsub|0>,b<rsub|0>|)>\<in\>\<bbb-C\><rsup|2>>
      we have <math|P<rsup|even><rsub|a<rsub|0>,b<rsub|0>>\<equiv\>0>, we
      should have <math|<around*|(|a<rsub|0>,b<rsub|0>|)>\<in\><big|cap><rsub|n=0><rsup|\<infty\>>A<rsub|n>>,
      where <math|A<rsub|n>\<assign\><big|cup><rsub|i=-n+1><rsup|0><around*|{|a=i|}>\<cup\><big|cup><rsub|i=-n+1><rsup|0><around*|{|b=i|}>\<cup\><big|cup><rsub|i=0><rsup|\<infty\>><around*|{|a+b+2n=-i|}>>.
      In particular, as we should have <math|<around*|(|a<rsub|0>,b<rsub|0>|)>\<in\>A<rsub|n>>
      for <math|n> big, we should have at least one of <math|a<rsub|0>> or
      <math|b<rsub|0>> being non-positive integer. WLOG, we assume that
      <math|a<rsub|0>\<in\>\<bbb-Z\><rsub|\<leqslant\>0>>. Now, as
      <math|<around*|(|a<rsub|0>,b<rsub|0>|)>\<in\>A<rsub|0>>, we should have
      <math|b<rsub|0>\<in\>\<bbb-Z\>>. Therefore, in order to finish the
      proof it suffices to assume that <math|a<rsub|0>\<less\>0>,
      <math|b<rsub|0>\<gtr\>0> and to reach a contradiction.

      As we should have <math|<around*|(|a<rsub|0>,b<rsub|0>|)>\<in\>A<rsub|-a<rsub|0>>>,
      assumptions taken imply that <math|a<rsub|0>+b<rsub|0>-2a<rsub|0>\<leq\>0>,
      and hence that <math|b<rsub|0>\<leqslant\>a<rsub|0>\<less\>0>, which is
      a contradiction.

      Next we do <math|P<rsup|odd><rsub|a,b>>. Similarly to above, it
      suffices to prove the <math|P<rsup|odd><rsub|a,b>\<equiv\>0\<Rightarrow\><around*|(|a,b|)>\<in\>\<bbb-Z\><rsub|\<leqslant\>0><rsup|2>>
      implication. Similarly, we have <math|P<rsub|a,b><rsup|odd>\<equiv\>0>
      iff <math|\<forall\>n\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
      <math|P<rsup|odd><rsub|a,b><around*|(|t<around*|(|1-t<rsup|2>|)><rsup|n>|)>=0>
      iff <math|\<forall\>n\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have (we
      will use <math|\<simeq\>> to denote proportionality up to nonzero
      finite constant)

      <\equation*>
        0=<frac|1|2>P<rsup|odd><rsub|a,b><around*|(|<around*|(|1+t|)><around*|(|1-t<rsup|2>|)><rsup|n>|)>-<frac|1|2>P<rsub|a,b><rsup|odd><around*|(|<around*|(|1-t|)><around*|(|1-t<rsup|2>|)><rsup|n>|)>\<simeq\>
      </equation*>

      <\equation*>
        \<simeq\><frac|\<Gamma\><around*|(|a+n|)>\<Gamma\><around*|(|b+n+1|)>-\<Gamma\><around*|(|a+n+1|)>\<Gamma\><around*|(|b+n|)>|\<Gamma\><around*|(|a|)>\<Gamma\><around*|(|b|)>\<Gamma\><around*|(|a+b+2n+1|)>>=
      </equation*>

      <\equation*>
        =<frac|\<Gamma\><around*|(|a+n|)>\<Gamma\><around*|(|b+n|)>\<cdot\><around*|(|b+n|)>-\<Gamma\><around*|(|a+n|)>\<Gamma\><around*|(|b+n|)>\<cdot\><around*|(|a+n|)>|\<Gamma\><around*|(|a|)>\<Gamma\><around*|(|b|)>\<Gamma\><around*|(|a+b+2n+1|)>>=
      </equation*>

      <\equation*>
        =<around*|(|b-a|)><frac|\<Gamma\><around*|(|a+n|)>|\<Gamma\><around*|(|a|)>>\<cdot\><frac|\<Gamma\><around*|(|b+n|)>|\<Gamma\><around*|(|b|)>>\<cdot\><frac|1|\<Gamma\><around*|(|a+b+2n+1|)>>.
      </equation*>

      Hence, if for <math|<around*|(|a<rsub|0>,b<rsub|0>|)>> we have
      <math|P<rsub|a<rsub|0>,b<rsub|0><rsup|>><rsup|odd>\<equiv\>0>, we
      should have have either <math|a<rsub|0>=b<rsub|0>> or
      <math|<around*|(|a<rsub|0>,b<rsub|0>|)>\<in\><big|cap><rsub|n=0><rsup|\<infty\>>A<rsub|n>>,
      where <math|A<rsub|n>\<assign\><big|cup><rsub|i=-n+1><rsup|0><around*|{|a=i|}>\<cup\><big|cup><rsub|i=-n+1><rsup|0><around*|{|b=i|}>\<cup\><big|cup><rsub|i=0><rsup|\<infty\>><around*|{|a+b+2n+1=-i|}>>.\ 

      To finish the proof, we claim that <math|<big|cap><rsub|n=0><rsup|\<infty\>>A<rsub|n>=\<bbb-Z\><rsub|\<leqslant\>0><rsup|2>\\<around*|(|0,0|)>>.
      The <math|\<supset\>> inclusion is clear, as is clear that
      <math|<around*|(|\<bbb-Z\><rsub|\<leqslant\>0>\<times\>\<bbb-R\>|)>\<cup\><around*|(|\<bbb-R\>\<times\>\<bbb-Z\><rsub|\<leqslant\>0>|)>\<supset\><big|cap><rsub|n=0><rsup|\<infty\>>A<rsub|n>>,
      so it remains to prove the reverse. Similarly to proof of lemma
      <reference|KR-normalization-even:lem-2>, WLOG we can assume
      <math|a<rsub|0>\<in\>\<bbb-Z\><rsub|\<leqslant\>0>> and then we get
      <math|b<rsub|0>\<in\>\<bbb-Z\>> and
      <math|a<rsub|0>+b<rsub|0>\<leqslant\>-1>. Thus, it suffices to assume
      <math|a\<less\>0>, <math|b\<gtr\>0> and to reach a contradiction.

      But as <math|<around*|(|a<rsub|0>,b<rsub|0>|)>\<in\>A<rsub|-a<rsub|0>>\<nocomma\>>,
      we should have <math|a<rsub|0>+b<rsub|0>-2a<rsub|0>+1\<leqslant\>0> and
      hence <math|b<rsub|0>\<leqslant\>a<rsub|0>-1\<less\>0>, which gives a
      contradiction.
    </proof>

    <\lemma>
      <label|KR-normalization-even:lem-2>Suppose <math|q=2>. Then
      <math|<around*|\<langle\>|K<rsup|P><rsub|\<lambda\>,\<nu\>>,F<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\><rprime|'>>|\<rangle\>>=0>
      if <math|M\<gtr\>0>, <math|N> is odd or
      <math|\<psi\>\<perp\>\<cal-H\><rsup|N><around*|(|\<bbb-S\><rsup|p-1>|)><rsup|O<around*|(|p-1|)>>>.
      For <math|N> even, <math|m<rprime|'>+n<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>
      and <math|\<psi\><rsub|N><around*|(|\<omega\><rsub|p>|)>\<assign\><wide|<wide|C|~>|~><rsup|p/2-1><rsub|N><around*|(|\<omega\><rsub|p-1><rsup|<around*|(|p|)>>|)>\<in\>\<cal-H\><rsup|N><around*|(|\<bbb-S\><rsup|p-1>|)>>
      we have

      <\equation*>
        <around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|P>,<wide|F|~><rsub|N,0><around*|[|\<psi\><rsub|N>,1;t<rsup|n<rprime|'>><around*|(|s-t|)><rsup|m<rprime|'>>|]>|\<rangle\>>=<frac|R\<cdot\>S|\<Gamma\><around*|(|<around*|(|1-\<nu\>|)>/2|)>>
      </equation*>

      where

      <\equation*>
        S\<simeq\><big|int><rsub|\<bbb-S\><rsup|p-1>><around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n><around*|(|\<omega\><rsub|p-1><rsup|<around*|(|p|)>>|)>\<psi\><around*|(|\<omega\><rsub|p>|)>d\<omega\><rsub|p>\<simeq\><choice|<tformat|<table|<row|<cell|<frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N\<upl\>2|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>+N-q|2>|)>>,>|<cell|p\<gtr\>1>>|<row|<cell|\<Gamma\><rsup|-1><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>,>|<cell|p=1,N=0>>|<row|<cell|0,>|<cell|p=1,N\<gtr\>0>>>>>
      </equation*>

      and

      <\equation*>
        R\<simeq\><frac|1|<around*|(|m<rprime|'>+1|)>-\<nu\>>P<rsub|><rsup|<around*|(|i|)>><rsub|L+m<rprime|'>+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>|)>\<cdot\>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>+N-q|2>+m<rprime|'>+1-\<nu\>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>+N-q|2>|)>
      </equation*>

      where <math|L\<assign\><frac|\<lambda\>+\<nu\>+N-q|2>>,
      <math|P<rsup|<around*|(|i|)>><rsub|a,b>\<assign\>P<rsup|even><rsub|a,b>>
      if <math|m<rprime|'>\<in\>2\<bbb-Z\>> and
      <math|\<assign\>P<rsup|odd><rsub|a,b>> otherwise with
      <math|P<rsup|even/odd><rsub|a,b>> defined as in lemma
      <reference|KR-normalization-even:lem-Poddeven>.
    </lemma>

    <\proof>
      The expression <math|R\<cdot\>S/\<Gamma\><around*|(|<around*|(|1-\<nu\>|)>/2|)>>
      and expression for <math|S> follow from computations similar to that of
      lemma <reference|KC-normalization-2:lem-kfinite>. The thing to notice
      is that

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|R\<simeq\><big|int><rsub|-1><rsup|1><around*|(|1-y<rsup|2>|)><rsup|L-1>y<rsup|n<rprime|'>><big|int><rsub|-1><rsup|1><around*|\||x-y|\|><rsup|-\<nu\>><around*|(|x-y|)><rsup|m<rprime|'>>d
        x d y=>|<cell|>>|<row|<cell|>|<cell|=<big|int><rsub|-1><rsup|1><around*|(|1-y<rsup|2>|)><rsup|L-1>y<rsup|n<rprime|'>><big|int><rsub|-1-y><rsup|1-y><around*|\||x|\|><rsup|-\<nu\>>x<rsup|m<rprime|'>>d
        x d y=>|<cell|>>|<row|<cell|>|<cell|=<big|int><rsub|-1><rsup|1><around*|(|1-y<rsup|2>|)><rsup|L-1>y<rsup|n<rprime|'>><frac|<around*|(|1-y|)><rsup|m<rprime|'>-\<nu\>+1>+<around*|(|-1|)><rsup|m<rprime|'>><around*|(|1+y|)><rsup|m<rprime|'>-\<nu\>+1>|m<rprime|'>-\<nu\>+1>
        d y\<simeq\>>|<cell|>>|<row|<cell|>|<cell|\<simeq\><frac|1|m<rprime|'>-\<nu\>+1><big|int><rsub|-1><rsup|1><around*|(|1-y<rsup|2>|)><rsup|L-1>y<rsup|n<rprime|'>><around*|(|1-y|)><rsup|m<rprime|'>-\<nu\>+1>
        d y>|<cell|>>>>
      </eqnarray>

      and the latter equals to the expression given for <math|R> in the
      statement just by definition of <math|P<rsup|even/odd><rsub|a,b>>.
    </proof>

    <\lemma>
      <label|lem-5n>Let <math|<around*|{|A<rsub|n>|}><rsub|n=0><rsup|\<infty\>>>
      be sequence of subsets of <math|\<bbb-C\><rsup|2>> (we parametrize
      latter with <math|<around*|(|x,y|)>\<in\>\<bbb-C\><rsup|2>>)

      <\enumerate>
        <item>Then for <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>>,
        <math|<around*|(|x<rsub|0>,-k|)>\<in\><big|cap><rsub|n=0><rsup|\<infty\>><around*|(|A<rsub|n>\<cup\><around*|{|y=-n+1,-n+2,\<ldots\>0|}>|)>\<Leftrightarrow\>x<rsub|0>\<in\><big|cap><rsub|n=0><rsup|k><around*|(|A<rsub|n>|)><rsup|<around*|(|2|)>><rsub|-k>>,
        where for subset <math|X\<subset\>\<bbb-C\><rsup|2>>,
        <math|X<rsup|<around*|(|2|)>><rsub|y<rsub|0>>\<assign\><around*|{|x<mid|\|><around*|(|x,y<rsub|0>|)>\<in\>X|}>>.

        <item>If moreover <math|<big|cap><rsub|n=0><rsup|\<infty\>>A<rsub|n>=\<emptyset\>>,
        then <math|<big|cap><rsub|n=0><rsup|\<infty\>><around*|(|A<rsub|n>\<cup\><around*|{|y=-n+1,-n+2,\<ldots\>0|}>|)>=<big|sqcup><rsub|n=0><rsup|\<infty\>><around*|(|<big|cap><rsub|k=0><rsup|n><around*|(|A<rsub|n>|)><rsup|<around*|(|2|)>><rsub|-k>\<times\><around*|{|-n|}>|)>>
      </enumerate>
    </lemma>

    <\proof>
      First, assume that first item holds true and let's prove the second
      one. The hypothesis <math|<big|cap><rsub|n=0><rsup|\<infty\>>A<rsub|n>=\<emptyset\>>
      implies that for <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\><big|cap><rsub|n=0><rsup|\<infty\>><around*|(|A<rsub|n>\<cup\><around*|{|y=-n+1,-n+2,\<ldots\>0|}>|)>>
      we have for big <math|n>, <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\><around*|{|y=-n+1,-n+2,\<ldots\>,0|}>>
      and thus <math|y<rsub|0>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>>.
      Application of the first item then ends the proof of the second.

      So, let's show the second item. It is clear that for <math|n\<gtr\>k>
      we have <math|<around*|(|x<rsub|0>,-k|)>\<in\><around*|(|A<rsub|n>\<cup\><around*|{|y=-n+1,-n+2,\<ldots\>0|}>|)>>
      and hence <math|<around*|(|x<rsub|0>,-k|)>\<in\><big|cap><rsub|n=0><rsup|\<infty\>><around*|(|A<rsub|n>\<cup\><around*|{|y=-n+1,-n+2,\<ldots\>0|}>|)>\<Leftrightarrow\><around*|(|x<rsub|0>,-k|)>\<in\><big|cap><rsub|n=0><rsup|k><around*|(|A<rsub|n>\<cup\><around*|{|y=-n+1,-n+2,\<ldots\>0|}>|)>>
      and the latter in turn is equivalent to
      <math|<around*|(|x<rsub|0>,-k|)>\<in\><big|cap><rsub|n=0><rsup|k>A<rsub|n>>.
      This ends the proof.
    </proof>

    <\lemma>
      <label|lem-5>

      <\equation*>
        min<around*|{|<around*|{|x,y\<in\>-k-\<bbb-Z\><rsub|\<geqslant\>0>|}>+<around*|{|y=1-k,2-k,\<ldots\>,0|}>|}><rsub|k\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>=<around*|{|x,y\<in\>-\<bbb-Z\><rsub|\<geqslant\>0><mid|\|>y\<geqslant\>x|}>
      </equation*>

      and

      <\equation*>
        min<around*|{|<around*|{|x,y\<in\>-k-\<bbb-Z\><rsub|\<geqslant\>0>,x+y\<less\>-2k|}>+<around*|{|y=1-k,2-k,\<ldots\>,0|}>|}><rsub|k\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>=<around*|{|x,y\<in\>\<bbb-Z\><rsub|\<leqslant\>0><mid|\|>y\<gtr\>x|}>.
      </equation*>
    </lemma>

    <\proof>
      Indeed, as for any <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
      <math|<around*|{|x,y\<in\>-k-\<bbb-Z\><rsub|\<geqslant\>0>|}>> and
      <math|<around*|{|y=1-k,2-k,\<ldots\>,0|}> being disjoint\<nocomma\>>,
      we have <math|<around*|{|x,y\<in\>-k-\<bbb-Z\><rsub|\<geqslant\>0>|}>+<around*|{|y=1-k,2-k,\<ldots\>,0|}>=<around*|{|x,y\<in\>-k-\<bbb-Z\><rsub|\<geqslant\>0>|}>\<cup\><around*|{|y=1-k,2-k,\<ldots\>,0|}>>
      and thus what we need to show can be rewritten as\ 

      <\equation*>
        <big|cap><rsub|k=0><rsup|\<infty\>><around*|(|<around*|{|x,y\<in\>-k-\<bbb-Z\><rsub|\<geqslant\>0>|}>\<cup\><around*|{|y=1-k,2-k,\<ldots\>,0|}>|)>=<around*|{|x,y\<in\>-\<bbb-Z\><rsub|\<geqslant\>0><mid|\|>y\<geqslant\>x|}>
      </equation*>

      This now follows from lemma <reference|lem-5n>. The proof of the second
      equality goes similarly.
    </proof>

    <\lemma>
      <label|lem-8>Let <math|\<frak-I\>\<assign\><around*|{|<around*|(|N,m<rprime|'>,n<rprime|'>|)>\<in\>\<bbb-Z\><rsub|\<geqslant\>0><rsup|3><mid|\|>N,m<rprime|'>+n<rprime|'>\<in\>2\<bbb-Z\>|}>>
      and for <math|m<rsub|0><rprime|'>\<in\>\<bbb-Z\><rsub|\<geqslant\>0>>
      let <math|\<frak-I\><rsub|m<rprime|'><rsub|0>><rsup|<around*|(|2|)>>\<assign\><around*|{|<around*|(|N,m<rprime|'>,n<rprime|'>|)>\<in\>\<frak-I\><mid|\|>m<rprime|'>=m<rprime|'><rsub|0>|}>>.
      Then, for <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>>
      as in proposition <reference|prop-q=2> we have
      <math|min<around*|{|\<frak-P\><rsub|-><around*|(|<around*|\<langle\>|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>,<wide|F|~><rsub|N,0,s<rsup|n<rprime|'>><around*|(|t-s|)><rsup|m<rprime|'>>,\<psi\>,1>|\<rangle\>>|)>|}><rsub|\<frak-I\><rsup|<around*|(|2|)>><rsub|m<rprime|'><rsub|0>>>=A<rsub|m<rsub|0><rprime|'>>+B<rsub|m<rsub|0><rprime|'>>+C<rsub|m<rsub|0><rprime|'>>>,
      where

      <\equation*>
        A<rsub|m<rsub|0><rprime|'>>\<assign\><around*|{|<frac|\<lambda\>-\<nu\>-q|2>=-m<rprime|'>,-m<rprime|'>+1,\<ldots\>,-1|}>,
      </equation*>

      <\equation*>
        B<rsub|m<rsub|0><rprime|'>>=<choice|<tformat|<table|<row|<cell|<around*|{|<around*|(|\<lambda\>+\<nu\>-q|)>/2+m<rprime|'>+1-\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,m<rprime|'>+1-\<nu\>\<in\>\<bbb-Z\><rsub|\<geqslant\>0>|}>,>|<cell|m<rsub|0><rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0><rsub|>>>|<row|<cell|<around*|{|<around*|(|\<lambda\>+\<nu\>-q|)>/2+m<rprime|'>+1-\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,m<rprime|'>+1-\<nu\>\<in\>\<bbb-Z\><rsub|\<gtr\>0>|}>>|<cell|m<rprime|'><rsub|0>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>>>>,
      </equation*>

      <\equation*>
        C<rsub|m<rsub|0><rprime|'>>\<assign\><choice|<tformat|<table|<row|<cell|<around*|{|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1\\<around*|{|m<rprime|'>+1|}>|}>,>|<cell|m<rsub|0><rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>>|<row|<cell|<around*|{|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1|}>,>|<cell|m<rsub|0><rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>>>>.
      </equation*>
    </lemma>

    <\proof>
      Lemma <reference|KR-normalization-even:lem-2> immediately implies that\ 

      <\equation*>
        <around*|\<langle\>|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>,<wide|F|~><rsub|N,0,s<rsup|n<rprime|'>><around*|(|t-s|)><rsup|m<rprime|'>>,\<psi\>,1>|\<rangle\>>=
      </equation*>

      <\equation*>
        =<frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N\<upl\>2|2>|)>>\<cdot\><frac|1|<around*|(|<around*|(|m<rprime|'>+1|)>-\<nu\>|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>>P<rsup|odd/even><rsub|L+m<rprime|'>+1-\<nu\>,L><around*|(|y<rsup|n<rprime|'>>|)><frac|\<Gamma\><around*|(|L+m<rprime|'>+1-\<nu\>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-q|2>+1-\<nu\>|)>>.
      </equation*>

      For <math|N<rsub|0>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>> and
      <math|m<rsub|0><rprime|'>\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we let
      <math|\<frak-I\><rsup|<around*|(|1,2|)>><rsub|N<rsub|0>,m<rsub|0><rprime|'>>\<assign\><around*|{|<around*|(|N<rsub|0>,m<rsub|0><rprime|'>,n<rprime|'>|)><mid|\|><around*|(|N<rsub|0>,m<rsub|0><rprime|'>,n<rprime|'>|)>\<in\>\<frak-I\>|}>>.

      Then, as <math|\<frak-P\><around*|(|f\<cdot\>g|)>=\<frak-P\><around*|(|f|)>+\<frak-P\><around*|(|g|)>>,
      and due to <math|min<around*|{|\<frak-P\><rsub|-><around*|(|<around*|(|a,b|)>\<mapsto\>P<rsup|odd/even><rsub|a,b><around*|(|t<rsup|n>|)>|)>|}><rsub|n\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>/1+2\<bbb-Z\><rsub|\<geqslant\>0>>>

      \ being computed in lemma <reference|KR-normalization-even:lem-Poddeven>,
      we have for <math|m<rprime|'>\<in\>2\<bbb-Z\>>

      <\equation*>
        min<around*|{|\<frak-P\><rsub|-><around*|(|<around*|\<langle\>|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>,<wide|F|~><rsub|N,0,s<rsup|n<rprime|'>><around*|(|t-s|)><rsup|m<rprime|'>>,\<psi\>,1>|\<rangle\>>|)>|}><rsub|\<frak-I\><rsup|<around*|(|1,2|)>><rsub|N<rsub|0>,m<rprime|'><rsub|0>>>=<around*|{|<frac|\<lambda\>+\<nu\>-n|2>=0,1,\<ldots\>,<frac|N-2|2>|}>+<around*|{|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1\\<around*|{|m<rprime|'>+1|}>|}>+
      </equation*>

      <\equation*>
        +<around*|{|<frac|\<lambda\>+\<nu\>+N-q|2>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,<frac|\<lambda\>+\<nu\>+N-q|2>+m<rprime|'>+1-\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>|}>+
      </equation*>

      <\equation*>
        +<around*|{|<frac|\<lambda\>+\<nu\>-q|2>-\<nu\>=-<around*|(|m<rprime|'>+<frac|N|2>|)>,-<around*|(|m<rprime|'>+<frac|N|2>|)>+1,\<ldots\>,-1|}>,
      </equation*>

      while for <math|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1> we
      have

      <\equation*>
        min<around*|{|\<frak-P\><rsub|-><around*|(|<around*|\<langle\>|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>,<wide|F|~><rsub|N,0,s<rsup|n<rprime|'>><around*|(|t-s|)><rsup|m<rprime|'>>,\<psi\>,1>|\<rangle\>>|)>|}><rsub|\<frak-I\><rsup|<around*|(|1,2|)>><rsub|N<rsub|0>,m<rprime|'><rsub|0>>>=<around*|{|<frac|\<lambda\>+\<nu\>-n|2>=0,1,\<ldots\>,<frac|N-2|2>|}>+<around*|{|\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1|}>+
      </equation*>

      <\equation*>
        +<around*|{|<frac|\<lambda\>+\<nu\>+N-q|2>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,<frac|\<lambda\>+\<nu\>+N-q|2>+m<rprime|'>+1-\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,\<lambda\>+N-q+m<rprime|'>+1\<less\>0|}>+
      </equation*>

      <\equation*>
        +<around*|{|<frac|\<lambda\>+\<nu\>-q|2>-\<nu\>=-<around*|(|m<rprime|'>+<frac|N|2>|)>,-<around*|(|m<rprime|'>+<frac|N|2>|)>+1,\<ldots\>,-1|}>.
      </equation*>

      Now, we we want to compute for <math|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>

      <\equation*>
        min<around*|{|<around*|{|<frac|\<lambda\>+\<nu\>-n|2>=0,1,\<ldots\>,<frac|N-2|2>|}>+<around*|{|<frac|\<lambda\>+\<nu\>+N-q|2>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,<frac|\<lambda\>+\<nu\>+N-q|2>+m<rprime|'>+1-\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>|}>+<around*|{|<frac|\<lambda\>+\<nu\>-q|2>-\<nu\>=-<around*|(|m<rprime|'>+<frac|N|2>|)>,-<around*|(|m<rprime|'>+<frac|N|2>|)>+1,\<ldots\>,-1|}>|}><rsub|N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>
      </equation*>

      Lemma <reference|lem-4> implies now (we assign
      <math|f<rsup|<around*|(|i|)>>> for <math|i=1,2,3> in the same order as
      the addends appear in previous expression) that the previous expression
      equals to

      <\equation*>
        min<around*|{|<around*|{|<frac|\<lambda\>+\<nu\>-q|2>-\<nu\>=-<around*|(|m<rprime|'>+<frac|N|2>|)>,-<around*|(|m<rprime|'>+<frac|N|2>|)>+1,\<ldots\>,-1|}>+<around*|{|<frac|\<lambda\>+\<nu\>+N-q|2>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,<frac|\<lambda\>+\<nu\>+N-q|2>+m<rprime|'>+1-\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>|}>|}><rsub|N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>
      </equation*>

      Setting <math|<wide|y|~>\<assign\><around*|(|\<lambda\>+\<nu\>-q|)>/2+m<rprime|'>+1-\<nu\>>
      and <math|<wide|x|~>\<assign\><around*|(|\<lambda\>+\<nu\>-q|)>/2> the
      above can be rewritten as

      <\equation*>
        <around*|{|<wide|y|~>=1,2,\<ldots\>,m<rprime|'>|}>+min<around*|{|<around*|{|<wide|y|~>=1-<frac|N|2>,2-<frac|N|2>,\<ldots\>,0|}>+<around*|{|<wide|x|~>,<wide|y|~>\<in\>-<frac|N|2>-\<bbb-Z\><rsub|\<geqslant\>0>|}>|}><rsub|N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>=
      </equation*>

      <\equation*>
        =<around*|{|<wide|y|~>=1,2,\<ldots\>,m<rprime|'>|}>+<around*|{|<wide|x|~>,<wide|y|~>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0><mid|\|><wide|y|~>\<geqslant\><wide|x|~>|}>=
      </equation*>

      <\equation*>
        =<around*|{|<frac|\<lambda\>-\<nu\>-q|2>=-m<rprime|'>,-m<rprime|'>+1,\<ldots\>,-1|}>+<around*|{|<around*|(|\<lambda\>+\<nu\>-q|)>/2+m<rprime|'>+1-\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,m<rprime|'>+1-\<nu\>\<in\>\<bbb-Z\><rsub|\<geqslant\>0>|}>
      </equation*>

      (the second equality is by lemma <reference|lem-5>).\ 

      Similarly, for <math|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>,
      we want to compute

      <\equation*>
        min<around*|{|<around*|{|<frac|\<lambda\>+\<nu\>-n|2>=0,1,\<ldots\>,<frac|N-2|2>|}>+<around*|{|<frac|\<lambda\>+\<nu\>+N-q|2>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,<frac|\<lambda\>+\<nu\>+N-q|2>+m<rprime|'>+1-\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,\<lambda\>+N-q+m<rprime|'>+1\<less\>0|}>+<around*|{|<frac|\<lambda\>+\<nu\>-q|2>-\<nu\>=-<around*|(|m<rprime|'>+<frac|N|2>|)>,-<around*|(|m<rprime|'>+<frac|N|2>|)>+1,\<ldots\>,-1|}>|}><rsub|N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>
      </equation*>

      and again lemma <reference|lem-4> implies that this equals to

      <\equation*>
        min<around*|{|<around*|{|<frac|\<lambda\>+\<nu\>-q|2>-\<nu\>=-<around*|(|m<rprime|'>+<frac|N|2>|)>,-<around*|(|m<rprime|'>+<frac|N|2>|)>+1,\<ldots\>,-1|}>+<around*|{|<frac|\<lambda\>+\<nu\>+N-q|2>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,<frac|\<lambda\>+\<nu\>+N-q|2>+m<rprime|'>+1-\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,\<lambda\>+N-q+m<rprime|'>+1\<less\>0|}>|}><rsub|N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>
      </equation*>

      and defining <math|<wide|x|~>,<wide|y|~>> same as above one has again
      by lemma <reference|lem-5> that the latter expression equals to

      <\equation*>
        <around*|{|<frac|\<lambda\>-\<nu\>-q|2>=-m<rprime|'>,-m<rprime|'>+1,\<ldots\>,-1|}>+<around*|{|<around*|(|\<lambda\>+\<nu\>-q|)>/2+m<rprime|'>+1-\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,m<rprime|'>+1-\<nu\>\<in\>\<bbb-Z\><rsub|\<gtr\>0>|}>
      </equation*>

      This ends the proof.
    </proof>

    <\lemma>
      <label|lem-7>We have let <math|A<rsub|m>>, <math|B<rsub|m>> and
      <math|C<rsub|m>> be as in lemma <reference|lem-8>. Then

      <\equation*>
        min<around*|{|A<rsub|m>+B<rsub|m>+C<rsub|m>|}><rsub|m\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>=<big|sqcup><rsub|k\<in\>\<bbb-Z\><rsub|\<leqslant\>0>\<cup\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>>+1|)>><around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsup|2><mid|\|>y\<leqslant\>-1,<space|0.6spc>x-y=k|}>
      </equation*>
    </lemma>

    <\proof>
      As defined in lemma <reference|lem-7>, for
      <math|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>,
      <math|A<rsub|m<rprime|'>>=<around*|{|y=-m<rprime|'>,-m<rprime|'>+1,\<ldots\>,-1|}>>,
      <math|B<rsub|m<rprime|'>>=><math|<around*|{|x\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,y+m<rprime|'>+1\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,x-y\<leqslant\>m<rprime|'>+1|}>>
      and <math|C<rsub|m<rprime|'>>=<around*|{|x-y\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1\\<around*|{|m<rprime|'>+1|}>|}>>.
      As <math|min<around*|{|A<rsub|m<rprime|'>>+B<rsub|m<rprime|'>>+C<rsub|m<rprime|'>>|}><rsub|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>\<leqslant\>A<rsub|0>+B<rsub|0>+C<rsub|0>\<leqslant\>1>,
      we just need to find the result of set operation

      <\equation*>
        <big|cap><rsub|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>><around*|(|A<rsub|m<rprime|'>>\<cup\>B<rsub|m<rprime|'>>\<cup\>C<rsub|m<rprime|'>>|)>
      </equation*>

      So, let's <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\>\<bbb-C\><rsup|2>>
      and we need to decide whether it belongs to the intersection above.\ 

      Furthermore, as <math|<big|cap><rsub|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>A<rsub|m<rprime|'>>=\<emptyset\>>,
      we . Moreover, as <math|A<rsub|0>+B<rsub|0>+C<rsub|0>\<leqslant\><around*|{|x-y\<in\>\<bbb-Z\><rsub|\<leqslant\>0>|}>+<around*|{|x-y\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1|}>>,
      we may assume <math|x<rsub|0>-y<rsub|0>=m<rsub|0><rprime|'>+1\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>
      or <math|x<rsub|0>-y<rsub|0>\<in\>\<bbb-Z\><rsub|\<leqslant\>0>>.\ 

      Now, in the first case we see that <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\><big|cap><rsub|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>><around*|(|A<rsub|m<rprime|'>>\<cup\>B<rsub|m<rprime|'>>\<cup\>C<rsub|m<rprime|'>>|)>\<Leftrightarrow\><around*|(|x<rsub|0>,y<rsub|0>|)>\<in\>A<rsub|m<rsub|0><rprime|'>>\<cup\>B<rsub|m<rsub|0><rprime|'>>\<cup\>C<rsub|m<rsub|0><rprime|'>>>.
      Latter, in turn is equivalent to <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\>A<rsub|m<rsub|0><rprime|'>>\<cup\>B<rsub|m<rsub|0><rprime|'>>>.
      Now, <math|A<rsub|m<rprime|'><rsub|0>>\<cap\><around*|{|x-y=m<rsub|0><rprime|'>+1|}>=<around*|{|*<around*|(|x,y|)>\<in\>\<bbb-Z\>\<times\><around*|{|-m<rsub|0><rprime|'>,-m<rsub|0><rprime|'>+1,\<ldots\>,-1|}><mid|\|>x-y=m<rsub|0><rprime|'>+1|}>>
      and <math|B<rsub|m<rsub|0><rprime|'>>\<cap\><around*|{|x-y=m<rsub|0><rprime|'>+1|}>=<around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsub|\<leqslant\>0><rsup|2><mid|\|>x-y=m<rsub|0><rprime|'>+1|}>>
      and hence <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\><big|cap><rsub|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>><around*|(|A<rsub|m<rprime|'>>\<cup\>B<rsub|m<rprime|'>>\<cup\>C<rsub|m<rprime|'>>|)>\<Leftrightarrow\><around*|(|x<rsub|0>,y<rsub|0>|)>\<in\><around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsup|2><mid|\|>y\<leqslant\>-1,x-y=m<rsub|0><rprime|'>+1|}>>
      and this gives the <math|<big|sqcup><rsub|k\<in\>2\<bbb-Z\><rsub|\<geqslant\>>+1><around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsup|2><mid|\|>y\<leqslant\>-1,<space|0.6spc>x-y=k|}>>
      term in lemma statement.

      Next, assume <math|x<rsub|0>-y<rsub|0>=-l\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>>
      and thus <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\><big|cap><rsub|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>><around*|(|A<rsub|m<rprime|'>>\<cup\>B<rsub|m<rprime|'>>\<cup\>C<rsub|m<rprime|'>>|)>\<Leftrightarrow\><around*|(|x<rsub|0>,y<rsub|0>|)>\<in\><big|cap><rsub|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>><around*|(|A<rsub|m<rprime|'>>\<cup\>B<rsub|m<rprime|'>>|)>>.
      The second item of lemma <reference|lem-5n> (applied to
      <math|<around*|{|A<rsub|m>+<around*|(|0,1|)>|}><rsub|m>> and
      <math|<around*|{|B<rsub|m>+<around*|(|0,1|)>|}><rsub|m>>) now implies
      that the latter happens iff <math|y<rsub|0>=-k\<in\>-\<bbb-Z\><rsub|\<geqslant\>1>>
      and <math|x<rsub|0>\<in\><big|cap><rsub|i=0><rsup|k-1><around*|(|B<rsub|i>|)><rsub|-k><rsup|<around*|(|2|)>>=<around*|(|B<rsub|0>|)><rsup|<around*|(|2|)>><rsub|<rsub|-k>>=<around*|{|l-k|}>>
      and thus every <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\>\<bbb-Z\>>
      with <math|x<rsub|0>-y<rsub|0>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>> and
      <math|y<rsub|0>\<in\>-\<bbb-Z\><rsub|\<geqslant\>1>> belongs to
      <math|<big|cap><rsub|m<rprime|'>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>><around*|(|A<rsub|m<rprime|'>>\<cup\>B<rsub|m<rprime|'>>\<cup\>C<rsub|m<rprime|'>>|)>>
      and this gives the <math|<big|sqcup><rsub|k\<in\>\<bbb-Z\><rsub|\<leqslant\>0>><around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsup|2><mid|\|>y\<leqslant\>-1,<space|0.6spc>x-y=k|}>>
      term in lemma statement.
    </proof>

    <\lemma>
      <label|lem-9>For <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\>\<bbb-Z\><rsup|2>>
      with <math|x<rsub|0>-y<rsub|0>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>>,
      <math|y<rsub|0>\<leqslant\>-1>, and let <math|A<rsub|m>>,
      <math|B<rsub|m>>, <math|C<rsub|m>> as in lemma <reference|lem-8> we
      have <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\><big|cap><rsub|m\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1><around*|(|A<rsub|m>\<cup\>B<rsub|m>\<cup\>C<rsub|m>|)>>.
    </lemma>

    <\proof>
      First, we note that lemma is true when <math|y<rsub|0>=-1>, as for
      <math|m\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1> we have
      <math|A<rsub|m>\<supset\><around*|{|y=-1|}>>. So we may assume
      <math|y<rsub|0>\<leqslant\>-2>. Let
      <math|m<rsub|0>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1> be biggest
      subject to condition <math|-m<rsub|0>\<gtr\>y<rsub|0>>. We see that by
      lemma <reference|lem-5n> <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\><big|cap><rsub|m\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1><around*|(|A<rsub|m>\<cup\>B<rsub|m>\<cup\>C<rsub|m>|)>\<Leftrightarrow\><around*|(|x<rsub|0>,y<rsub|0>|)>\<in\><big|cap><rsub|m\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1><around*|(|A<rsub|m>\<cup\>B<rsub|m>|)>\<Leftrightarrow\>x<rsub|0>\<in\><big|cap><rsub|k=0><rsup|<around*|(|m<rsub|0>-1|)>/2><around*|(|B<rsub|2k+1>|)><rsup|<around*|(|2|)>><rsub|y<rsub|0>>=<around*|(|B<rsub|1>|)><rsup|<around*|(|2|)>><rsub|y<rsub|0>>>
      and the latter holds true under the assumptions
      <math|x<rsub|0>\<leqslant\>-2> and <math|x<rsub|0>-y<rsub|0>\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>>,
      as <math|B<rsub|1>\<supset\><around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsup|2><mid|\|>y\<leqslant\>-2,x-y\<leqslant\>0|}>>.
    </proof>

    <subsection|Auxiliary results (II)>

    <\lemma>
      <label|KR-normalization-even:lem-kfinite-00-aux>We have

      <\equation*>
        <big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-x<rsup|2>|)><rsup|<around*|(|q-2|)>/2><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>-q|)>/2-1><around*|\||x-y|\|><rsup|-\<nu\>>d
        x d y=
      </equation*>

      <\equation*>
        =<around*|(|-1|)><rsup|q/2>2<rsup|\<lambda\>-1><around*|(|<frac|q-2|2>|)>!\<times\><frac|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-q|2>|)>|\<Gamma\><around*|(|\<lambda\>|)>>\<times\><frac|<around*|(|\<lambda\>-1|)><around*|(|\<lambda\>-3|)>\<ldots\><around*|(|\<lambda\>-q+1|)>|<around*|(|\<nu\>-1|)><around*|(|\<nu\>-3|)>\<ldots\><around*|(|\<nu\>-q+1|)>>
      </equation*>
    </lemma>

    <\proof>
      We shall proceed by induction in <math|q>. Cases <math|q=2,4> are just
      direct computations, so we omit them. Assume that statement was shown
      for all <math|2\<leqslant\>q\<leqslant\>k\<in\>2\<bbb-Z\><rsub|\<geqslant\>1>>
      and we attempt to show it for <math|q=k+2>.

      For <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>> and
      <math|k\<in\>2\<bbb-Z\><rsub|\<geqslant\>1>> we define

      <\equation*>
        K<rsub|\<lambda\>,\<nu\>,k>:<around*|[|-1,1|]><rsup|2>\<ni\><around*|(|x,y|)>\<mapsto\>K<rsub|\<lambda\>,\<nu\>,k><around*|(|x,y|)>\<assign\><around*|(|1-x<rsup|2>|)><rsup|<around*|(|k-2|)>/2><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>-k|)>/2-1><around*|\||x-y|\|><rsup|-\<nu\>>
      </equation*>

      so the induction hypothesis can be written as

      <\equation*>
        \<forall\><around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>,<space|0.6spc>\<forall\>k=2,4,\<ldots\>,q-2,<space|1em><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1>K<rsub|\<lambda\>,\<nu\>,k><around*|(|x,y|)>d
        x d y=
      </equation*>

      <\equation*>
        =<around*|(|-1|)><rsup|k/2>2<rsup|\<lambda\>-1><around*|(|<frac|k-2|2>|)>!\<times\><frac|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-k|2>|)>|\<Gamma\><around*|(|\<lambda\>|)>>\<times\><frac|<around*|(|\<lambda\>-1|)><around*|(|\<lambda\>-3|)>\<ldots\><around*|(|\<lambda\>-k+1|)>|<around*|(|\<nu\>-1|)><around*|(|\<nu\>-3|)>\<ldots\><around*|(|\<nu\>-k+1|)>>.
      </equation*>

      Now, we note that for <math|Re<around*|(|\<nu\>|)>\<gg\>0> twice
      integrating by parts we may get for
      <math|l\<in\>\<bbb-Z\><rsub|\<geqslant\>2>>

      <\equation*>
        <big|int><rsub|-1><rsup|1><around*|(|1-x<rsup|2>|)><rsup|l><around*|\||x-y|\|><rsup|-\<nu\>>d
        x=<frac|1|<around*|(|\<nu\>-1|)><around*|(|\<nu\>-2|)>><big|int><rsub|-1><rsup|1><around*|\||x-y|\|><rsup|-\<nu\>+2>\<times\><frac|d<rsup|2>|d
        x<rsup|2>><around*|(|1-x<rsup|2>|)><rsup|l>d x=
      </equation*>

      <\equation*>
        =<frac|1|<around*|(|\<nu\>-1|)><around*|(|\<nu\>-2|)>><big|int><rsub|-1><rsup|1><around*|\||x-y|\|><rsup|-\<nu\>+2><around*|[|2l<around*|(|1-2l|)><around*|(|1-x<rsup|2>|)><rsup|l-1>+2l<around*|(|2l-2|)><around*|(|1-x<rsup|2>|)><rsup|l-2>|]>d
        x
      </equation*>

      and this equality analytically extends to other
      <math|\<nu\>\<in\>\<bbb-C\>>. Having this, we write

      <\equation*>
        <big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1>K<rsub|\<lambda\>,\<nu\>,k+2><around*|(|x,y|)>d
        x d y=<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-x<rsup|2>|)><rsup|k/2><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>-k-2|)>/2-1><around*|\||x-y|\|><rsup|-\<nu\>>d
        x d y=
      </equation*>

      and using the formula just derived above, this can be rewritten as

      <\equation*>
        =<frac|1|<around*|(|\<nu\>-1|)><around*|(|\<nu\>-2|)>><big|int><rsub|-1><rsup|-1><big|int><rsub|-1><rsup|1><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>-k-2|)>/2-1><around*|\||x-y|\|><rsup|-\<nu\>+2>k<around*|(|k-2|)><around*|(|1-x<rsup|2>|)><rsup|<around*|(|k-2|)>/2-1>d
        x d y+
      </equation*>

      <\equation*>
        +<frac|1|<around*|(|\<nu\>-1|)><around*|(|\<nu\>-2|)>><big|int><rsub|-1><rsup|-1><big|int><rsub|-1><rsup|1><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>-k-2|)>/2-1><around*|\||x-y|\|><rsup|-\<nu\>+2>k<around*|(|1-k|)><around*|(|1-x<rsup|2>|)><rsup|<around*|(|k-2|)>/2>d
        x d y=
      </equation*>

      <\equation*>
        =<frac|1|<around*|(|\<nu\>-1|)><around*|(|\<nu\>-2|)>><around*|[|k<around*|(|k-2|)><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1>K<rsub|\<lambda\>-2,\<nu\>-2,k-2><rsub|>d
        x d y+k<around*|(|1-k|)><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1>K<rsub|\<lambda\>,\<nu\>-2,k>d
        x d y|]>
      </equation*>

      using induction hypothesis this equals to

      <\eqnarray*>
        <tformat|<table|<row|<cell|=<frac|-<around*|(|-1|)><rsup|k/2>|<around*|(|\<nu\>-1|)><around*|(|\<nu\>-2|)>><around*|[|k<around*|(|k-2|)>2<rsup|\<lambda\>-3><around*|(|<frac|k-4|2>|)>!<frac|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-k-2|2>|)>|\<Gamma\><around*|(|\<lambda\>-2|)>>\<times\><frac|<around*|(|\<lambda\>-3|)><around*|(|\<lambda\>-5|)>\<ldots\><around*|(|\<lambda\>-k+1|)>|<around*|(|\<nu\>-3|)><around*|(|\<nu\>-5|)>\<ldots\><around*|(|\<nu\>-k+1|)>>+|\<nobracket\>>>|<cell|>|<cell|>>|<row|<cell|+k<around*|\<nobracket\>|<around*|(|k-1|)>2<rsup|\<lambda\>-1><around*|(|<frac|k-2|2>|)>!<frac|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>+2|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-k-2|2>|)>|\<Gamma\><around*|(|\<lambda\>|)>>\<times\><frac|<around*|(|\<lambda\>-1|)><around*|(|\<lambda\>-3|)>\<ldots\><around*|(|\<lambda\>-k+1|)>|<around*|(|\<nu\>-3|)><around*|(|\<nu\>-5|)>\<ldots\><around*|(|\<nu\>-k-1|)>>
        |]>>|<cell|>|<cell|>>>>
      </eqnarray*>

      and we want to show that it equals to

      <\equation*>
        -<around*|(|-1|)><rsup|k/2>2<rsup|\<lambda\>-1><around*|(|<frac|k|2>|)>!\<times\><frac|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-k-2|2>|)>|\<Gamma\><around*|(|\<lambda\>|)>>\<times\><frac|<around*|(|\<lambda\>-1|)><around*|(|\<lambda\>-3|)>\<ldots\><around*|(|\<lambda\>-k-1|)>|<around*|(|\<nu\>-1|)><around*|(|\<nu\>-3|)>\<ldots\><around*|(|\<nu\>-k-1|)>>.
      </equation*>

      Crossing out the common parts, it suffices to show

      <\equation*>
        <frac|1|<around*|(|\<nu\>-2|)>><around*|[|<around*|(|\<lambda\>-2|)>+<frac|<around*|(|\<lambda\>-\<nu\>|)><around*|(|k-1|)>|\<nu\>-k-1>|]>=<frac|\<lambda\>-k-1|\<nu\>-k-1>.
      </equation*>

      As this equality is true, the proof is over.
    </proof>

    <\lemma>
      <label|KR-normalization-even:lem-kfinite-11-aux>We have

      <\equation*>
        <big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-x<rsup|2>|)><rsup|<around*|(|q-2|)>/2><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>-q|)>/2-1><around*|\||x-y|\|><rsup|-\<nu\>>x
        y d x d y=
      </equation*>

      <\equation*>
        =<around*|(|-1|)><rsup|q/2>2<rsup|\<lambda\>-1><around*|(|<frac|q-2|2>|)>!\<times\><frac|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-q|2>|)>|\<Gamma\><around*|(|\<lambda\>+1|)>>\<times\><frac|\<nu\><around*|(|\<lambda\>-1|)><around*|(|\<lambda\>-3|)>\<ldots\><around*|(|\<lambda\>-q+1|)>|<around*|(|\<nu\>-1|)><around*|(|\<nu\>-3|)>\<ldots\><around*|(|\<nu\>-q+1|)>>.
      </equation*>
    </lemma>

    <\proof>
      We shall proceed with induction on <math|q>. Base cases <math|q=2,4>
      are just direct computations employing lemma
      <reference|KR-normalization-even:lem-2>, and so we will omit them and
      proceed directly to <math|q\<geqslant\>6>. So we assume that the
      statement was shown for all <math|2\<leqslant\>q\<leqslant\>k\<in\>2\<bbb-Z\><rsub|\<geqslant\>1>>
      and we attempt to show it for <math|q=k+2>.

      For <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>> and
      <math|k\<in\>2\<bbb-Z\><rsub|\<geqslant\>1>> we define

      <\equation*>
        K<rsub|\<lambda\>,\<nu\>,k>:<around*|[|-1,1|]><rsup|2>\<ni\><around*|(|x,y|)>\<mapsto\>K<rsub|\<lambda\>,\<nu\>,k><around*|(|x,y|)>\<assign\>x
        y<around*|(|1-x<rsup|2>|)><rsup|<around*|(|k-2|)>/2><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>-k|)>/2-1><around*|\||x-y|\|><rsup|-\<nu\>>
      </equation*>

      so the induction hypothesis can be written as

      <\equation*>
        \<forall\><around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>,<space|0.6spc>\<forall\>k=2,4,\<ldots\>,q-2,<space|1em><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1>K<rsub|\<lambda\>,\<nu\>,k><around*|(|x,y|)>d
        x d y=
      </equation*>

      <\equation*>
        =<around*|(|-1|)><rsup|k/2>2<rsup|\<lambda\>-1><around*|(|<frac|k-2|2>|)>!\<times\><frac|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-k|2>|)>|\<Gamma\><around*|(|\<lambda\>+1|)>>\<times\><frac|\<nu\><around*|(|\<lambda\>-1|)><around*|(|\<lambda\>-3|)>\<ldots\><around*|(|\<lambda\>-k+1|)>|<around*|(|\<nu\>-1|)><around*|(|\<nu\>-3|)>\<ldots\><around*|(|\<nu\>-k+1|)>>.
      </equation*>

      Now, we note that for <math|Re<around*|(|\<nu\>|)>\<gg\>0> twice
      integrating by parts we may get for
      <math|l\<in\>\<bbb-Z\><rsub|\<geqslant\>2>>

      <\equation*>
        <big|int><rsub|-1><rsup|1>x<around*|(|1-x<rsup|2>|)><rsup|l><around*|\||x-y|\|><rsup|-\<nu\>>d
        x=<frac|1|<around*|(|\<nu\>-1|)><around*|(|\<nu\>-2|)>><big|int><rsub|-1><rsup|1><around*|\||x-y|\|><rsup|-\<nu\>+2>\<times\><frac|d<rsup|2>|d
        x<rsup|2>><around*|[|x<around*|(|1-x<rsup|2>|)><rsup|l>|]>d x=
      </equation*>

      <\equation*>
        =<frac|1|<around*|(|\<nu\>-1|)><around*|(|\<nu\>-2|)>><big|int><rsub|-1><rsup|1><around*|\||x-y|\|><rsup|-\<nu\>+2><around*|[|2l<around*|(|-1-2l|)>x<around*|(|1-x<rsup|2>|)><rsup|l-1>+2l<around*|(|2l-2|)>x<around*|(|1-x<rsup|2>|)><rsup|l-2>|]>d
        x
      </equation*>

      and this equality analytically extends to other
      <math|\<nu\>\<in\>\<bbb-C\>>. Having this, we write

      <\equation*>
        <big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1>K<rsub|\<lambda\>,\<nu\>,k+2><around*|(|x,y|)>d
        x d y=<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-x<rsup|2>|)><rsup|k/2><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>-k-2|)>/2-1>x
        y<around*|\||x-y|\|><rsup|-\<nu\>>d x d y=
      </equation*>

      and using the formula just derived above, this can be rewritten as

      <\equation*>
        =<frac|1|<around*|(|\<nu\>-1|)><around*|(|\<nu\>-2|)>><big|int><rsub|-1><rsup|-1><big|int><rsub|-1><rsup|1>y<around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>-k-2|)>/2-1><around*|\||x-y|\|><rsup|-\<nu\>+2>k<around*|(|k-2|)>x<around*|(|1-x<rsup|2>|)><rsup|<around*|(|k-2|)>/2-1>d
        x d y+
      </equation*>

      <\equation*>
        +<frac|1|<around*|(|\<nu\>-1|)><around*|(|\<nu\>-2|)>><big|int><rsub|-1><rsup|-1><big|int><rsub|-1><rsup|1>y<around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>-k-2|)>/2-1><around*|\||x-y|\|><rsup|-\<nu\>+2>k<around*|(|-1-k|)>x<around*|(|1-x<rsup|2>|)><rsup|<around*|(|k-2|)>/2>d
        x d y=
      </equation*>

      <\equation*>
        =<frac|1|<around*|(|\<nu\>-1|)><around*|(|\<nu\>-2|)>><around*|[|k<around*|(|k-2|)><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1>K<rsub|\<lambda\>-2,\<nu\>-2,k-2><rsub|>d
        x d y+k<around*|(|-1-k|)><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1>K<rsub|\<lambda\>,\<nu\>-2,k>d
        x d y|]>
      </equation*>

      using induction hypothesis this equals to

      <\eqnarray*>
        <tformat|<table|<row|<cell|=<frac|-<around*|(|-1|)><rsup|k/2><around*|(|\<nu\>-2|)>|<around*|(|\<nu\>-1|)><around*|(|\<nu\>-2|)>><around*|[|k<around*|(|k-2|)>2<rsup|\<lambda\>-3><around*|(|<frac|k-4|2>|)>!<frac|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-k-2|2>|)>|\<Gamma\><around*|(|\<lambda\>-1|)>>\<times\><frac|<around*|(|\<lambda\>-3|)><around*|(|\<lambda\>-5|)>\<ldots\><around*|(|\<lambda\>-k+1|)>|<around*|(|\<nu\>-3|)><around*|(|\<nu\>-5|)>\<ldots\><around*|(|\<nu\>-k+1|)>>+|\<nobracket\>>>|<cell|>|<cell|>>|<row|<cell|+k<around*|\<nobracket\>|<around*|(|k+1|)>2<rsup|\<lambda\>-1><around*|(|<frac|k-2|2>|)>!<frac|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>+2|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-k-2|2>|)>|\<Gamma\><around*|(|\<lambda\>+1|)>>\<times\><frac|<around*|(|\<lambda\>-1|)><around*|(|\<lambda\>-3|)>\<ldots\><around*|(|\<lambda\>-k+1|)>|<around*|(|\<nu\>-3|)><around*|(|\<nu\>-5|)>\<ldots\><around*|(|\<nu\>-k-1|)>>
        |]>>|<cell|>|<cell|>>>>
      </eqnarray*>

      and we want to show that it equals to

      <\equation*>
        -<around*|(|-1|)><rsup|k/2>2<rsup|\<lambda\>-1><around*|(|<frac|k|2>|)>!\<times\><frac|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-k-2|2>|)>|\<Gamma\><around*|(|\<lambda\>+1|)>>\<times\><frac|\<nu\><around*|(|\<lambda\>-1|)><around*|(|\<lambda\>-3|)>\<ldots\><around*|(|\<lambda\>-k-1|)>|<around*|(|\<nu\>-1|)><around*|(|\<nu\>-3|)>\<ldots\><around*|(|\<nu\>-k-1|)>>.
      </equation*>

      Crossing out the common parts, it suffices to show

      <\equation*>
        <frac|1|<around*|(|\<nu\>-2|)>><around*|[|\<lambda\>+<frac|<around*|(|\<lambda\>-\<nu\>|)><around*|(|k+1|)>|\<nu\>-k-1>|]>=\<nu\><frac|\<lambda\>-k-1|\<nu\>-k-1>.
      </equation*>

      As this equality is true, the proof is over.
    </proof>

    <subsection|Proofs>

    <\proof>
      (of prop. <reference|KR-normalization-even:prop-kfinite>) First of all,
      lemma <reference|KR-normalization-even:lem-2> tells us that for
      <math|K>-finite vector <math|K<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>\<comma\>\<psi\><rprime|'>>>
      with <math|N,M,n<rprime|'>,m<rprime|'>\<in\>\<bbb-Z\><rsub|\<geqslant\>0>>,
      <math|N+M+n<rprime|'>+m<rprime|'>\<in\>2\<bbb-Z\>> and
      <math|<around*|(|\<psi\>,\<psi\><rprime|'>|)>\<in\>\<cal-H\><rsup|N><around*|(|\<bbb-S\><rsup|p-1>|)>\<times\>\<cal-H\><rsup|M><around*|(|\<bbb-S\><rsup|q-1>|)>>
      we have <math|<around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>,K<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>\<comma\>\<psi\><rprime|'>>|\<rangle\>>=0>,
      unless <math|M=0>, <math|m<rprime|'>+n<rprime|'>,N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>,
      <math|\<psi\><rprime|'>=1> and <math|\<psi\>> is a multiple of
      <math|\<psi\><rsub|N>\<assign\><around*|(|\<omega\><rsub|p-1>|)>\<assign\><wide|<wide|C|~>|~><rsup|p/2-1><rsub|N><around*|(|\<omega\><rsub|p-1><rsup|<around*|(|p|)>>|)>>.

      Now, computations similar to that of lemma
      <reference|KC-normalization-2:lem-kfinite> tell us that

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>,K<rsub|N,0,n<rprime|'>,m<rprime|'>,\<psi\><rsub|N>\<comma\>1>|\<rangle\>>\<simeq\><frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N\<upl\>2|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>+N-q|2>|)>>\<times\><frac|1|\<Gamma\><around*|(|<around*|(|1-\<nu\>|)>/2|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|\<times\><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-x<rsup|2>|)><rsup|<around*|(|q-2|)>/2><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>-q+N|)>/2-1>x<rsup|n<rprime|'>>y<rsup|m<rprime|'>><around*|\||x-y|\|><rsup|\<um\>\<nu\>>d
        x d y.>|<cell|>>>>
      </eqnarray>

      As <math|\<bbb-C\><around*|[|x,y|]>\<supset\>span<around*|{|x<rsup|n<rprime|'>>y<rsup|m<rprime|'>><mid|\|>n<rprime|'>,m<rprime|'>\<in\>\<bbb-Z\><rsub|\<geqslant\>0>,n<rprime|'>+m<rprime|'>\<in\>2\<bbb-Z\>|}>>
      equals to <math|span<around*|{|x y<around*|(|1-x<rsup|2>|)><rsup|n<rprime|'>><around*|(|1-y<rsup|2>|)><rsup|m<rprime|'>>,<around*|(|1-x<rsup|2>|)><rsup|n<rprime|'>><around*|(|1-y<rsup|2>|)><rsup|m<rprime|'>>|}><rsub|n<rprime|'>,m<rprime|'>\<in\>\<bbb-Z\><rsub|\<geqslant\>0>>>,
      to finish the proof it suffces to compute closed expressions for the
      following integrals:

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-x<rsup|2>|)><rsup|<around*|(|q-2|)>/2><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>-q+N|)>/2-1><around*|(|1-x<rsup|2>|)><rsup|n<rprime|'>><around*|(|1-y<rsup|2>|)><rsup|m<rprime|'>><around*|\||x-y|\|><rsup|\<um\>\<nu\>>d
        x d y;>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-x<rsup|2>|)><rsup|<around*|(|q-2|)>/2><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>-q+N|)>/2-1>x
        y<around*|(|1-x<rsup|2>|)><rsup|n<rprime|'>><around*|(|1-y<rsup|2>|)><rsup|m<rprime|'>><around*|\||x-y|\|><rsup|\<um\>\<nu\>>d
        x d y.>|<cell|>>>>
      </eqnarray*>

      Now, using for <math|k\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>> the
      notation

      <\equation*>
        K<rsup|<around*|(|i|)>><rsub|\<lambda\>,\<nu\>,k><around*|(|x,y|)>\<assign\><rsub|><around*|(|1-x<rsup|2>|)><rsup|<around*|(|q-2|)>/2><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>-k|)>/2-1><around*|\||x-y|\|><rsup|\<um\>\<nu\>>\<times\><choice|<tformat|<table|<row|<cell|1,>|<cell|i=0>>|<row|<cell|x
        y,>|<cell|i=1>>>>>.
      </equation*>

      we have for <math|<wide|\<lambda\>|~>\<assign\>\<lambda\>+2m<rprime|'>+2n<rprime|'>+N>
      and <math|<wide|q|~>:=q+2n<rprime|'>>,

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<around*|(|1-x<rsup|2>|)><rsup|<around*|(|q-2|)>/2><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>-q+N|)>/2-1><around*|(|1-x<rsup|2>|)><rsup|n<rprime|'>><around*|(|1-y<rsup|2>|)><rsup|m<rprime|'>><around*|\||x-y|\|><rsup|\<um\>\<nu\>>=K<rsup|<around*|(|0|)>><rsub|<wide|\<lambda\>|~>,\<nu\>,<wide|k|~>><around*|(|x,y|)>>|<cell|>>|<row|<cell|>|<cell|<around*|(|1-x<rsup|2>|)><rsup|<around*|(|q-2|)>/2><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>-q+N|)>/2-1>x
        y<around*|(|1-x<rsup|2>|)><rsup|n<rprime|'>><around*|(|1-y<rsup|2>|)><rsup|m<rprime|'>><around*|\||x-y|\|><rsup|\<um\>\<nu\>>=K<rsup|<around*|(|1|)>><rsub|<wide|\<lambda\>|~>,\<nu\>,<wide|k|~>><around*|(|x,y|)>.>|<cell|>>>>
      </eqnarray>

      But as lemmas <reference|KR-normalization-even:lem-kfinite-00-aux> and
      <reference|KR-normalization-even:lem-kfinite-11-aux> readily give us
      the explicit formulae for

      <\equation*>
        <big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1>K<rsub|\<lambda\>,\<nu\>,k><rsup|<around*|(|i|)>><around*|(|x,y|)>d
        x d y,
      </equation*>

      substituting in them gives the desired equalities and ends the proof.
    </proof>

    <\proof>
      (of prop. <reference|KR-normalization-even:prop-holo>) Let's first show
      the holomorphicity. In the light of proposition
      <reference|KR-normalization-even:prop-holo>, it suffices to observe
      that for <math|i=0,1> and <math|m<rprime|'>,n<rprime|'>\<in\>\<bbb-Z\><rsub|\<geqslant\>0>>
      we have functions

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|f<rsub|1><rsup|<around*|(|i,m<rprime|'>,n<rprime|'>,N|)>><around*|(|\<lambda\>,\<nu\>|)>\<assign\><frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-N+2|2>|)>>>|<cell|>>|<row|<cell|>|<cell|f<rsub|2><rsup|<around*|(|i,m<rprime|'>,n<rprime|'>,N|)>><around*|(|\<lambda\>,\<nu\>|)>\<assign\><frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>|2>+m<rprime|'>+<frac|N-q|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>|2>+<frac|N-q|2>|)>>>|<cell|>>|<row|<cell|>|<cell|f<rsub|3><rsup|<around*|(|i,m<rprime|'>,n<rprime|'>,N|)>><around*|(|\<lambda\>,\<nu\>|)>\<assign\><frac|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>+m<rprime|'>+n<rprime|'>+<frac|N|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>>>|<cell|>>|<row|<cell|>|<cell|f<rsub|4><rsup|<around*|(|i,m<rprime|'>,n<rprime|'>,N|)>><around*|(|\<lambda\>,\<nu\>|)>\<assign\><frac|<around*|(|\<lambda\>+2m<rprime|'>+2n<rprime|'>+N-1|)><around*|(|\<lambda\>+2m<rprime|'>+2n<rprime|'>+N-3|)>\<ldots\><around*|(|\<lambda\>+2m<rprime|'>+N-q+1|)>|\<Gamma\><rsup|><around*|(|\<lambda\>+2m<rprime|'>+2n<rprime|'>+N+i|)>>>|<cell|>>|<row|<cell|>|<cell|f<rsub|5><rsup|<around*|(|i,m<rprime|'>,n<rprime|'>,N|)>><around*|(|\<lambda\>,\<nu\>|)>\<assign\><frac|\<nu\><rsup|i>|\<Gamma\><around*|(|<frac|q+2n<rprime|'>+1-\<nu\>|2>|)>>>|<cell|>>>>
      </eqnarray*>

      being holomorphic in <math|<around*|(|\<lambda\>,\<nu\>|)>>. This is
      so, as every multiplicand constituting these functions is clearly
      holomorphic.

      Let's then show that <math|\<frak-P\><rsub|-><around*|(|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>|)>>
      is a discrete subset of <math|<around*|{|\<lambda\>+\<nu\>-n\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>|}>*\<cup\><around*|{|\<lambda\>-\<nu\>\<in\>-2\<bbb-Z\><rsub|\<geqslant\>0>|}>>.
      Assume first that <math|<around*|(|\<lambda\>,\<nu\>|)>\<nin\><around*|{|\<lambda\>+\<nu\>-n\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>|}>*\<cup\><around*|{|\<lambda\>-\<nu\>\<in\>-2\<bbb-Z\><rsub|\<geqslant\>0>|}>>.
      Fix <math|i=0>. We have <math|f<rsub|1,2><rsup|<around*|(|0,m<rprime|'>,n<rprime|'>,N|)>><around*|(|\<lambda\>,\<nu\>|)>\<neq\>0>.
      We then can take <math|n<rprime|'>> large enough, so that
      <math|f<rsub|5><rsup|<around*|(|i,m<rprime|'>,n<rprime|'>,N|)>><around*|(|\<lambda\>,\<nu\>|)>\<neq\>0>.
      Then, finally taking <math|N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>> big
      enough we can ensure that <math|f<rsup|<around*|(|i,m<rprime|'>,n<rprime|'>,N|)>><rsub|3,4><around*|(|\<lambda\>,\<nu\>|)>\<neq\>0>.
      Hence, <math|<around*|(|\<lambda\>,\<nu\>|)>\<nin\>\<frak-P\><rsub|-><around*|(|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>|)>>,
      thus <math|\<frak-P\><rsub|-><around*|(|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>|)>\<subset\><around*|{|\<lambda\>+\<nu\>-n\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>|}>*\<cup\><around*|{|\<lambda\>-\<nu\>\<in\>-2\<bbb-Z\><rsub|\<geqslant\>0>|}>>.

      Second, we show that <math|\<frak-P\><rsub|-><around*|(|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>|)>>
      is discrete by showing that it is contained in
      <math|<around*|(|<around*|{|\<lambda\>+\<nu\>-n\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>|}>*\<cup\><around*|{|\<lambda\>-\<nu\>\<in\>-2\<bbb-Z\><rsub|\<geqslant\>0>|}>|)>\<cap\><around*|(|<around*|{|\<lambda\>\<in\>\<bbb-Z\>|}>\<cup\><around*|{|\<nu\>\<in\>\<bbb-Z\>|}>|)>>.
      Indeed, if <math|<around*|(|\<lambda\>,\<nu\>|)>\<nin\><around*|{|\<lambda\>\<in\>\<bbb-Z\>|}>\<cup\><around*|{|\<nu\>\<in\>\<bbb-Z\>|}>>
      we have in particular that <math|f<rsup|<around*|(|i,m<rprime|'>,n<rprime|'>,N|)>><rsub|4,5><around*|(|\<lambda\>,\<nu\>|)>\<neq\>0>
      for all <math|<around*|(|i,m<rprime|'>,n<rprime|'>,N|)>>. We then can
      then set <math|m<rprime|'>=n<rprime|'>=N=0> to make
      <math|><math|f<rsup|<around*|(|i,m<rprime|'>,n<rprime|'>,N|)>><rsub|1,2,3><around*|(|\<lambda\>,\<nu\>|)>\<neq\>0>.
    </proof>

    <\proof>
      (of Proposition <reference|prop-q=2>) The statement about
      holomorphicity is readily implied by proposition
      <reference|KR-normalization-even:prop-holo>.

      Now, to finist the proof we need to compute

      <\equation*>
        min <around*|{|\<frak-P\><rsub|-><around*|(|<around*|\<langle\>|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>,<wide|F|~><rsub|N,0,s<rsup|n<rprime|'>><around*|(|t-s|)><rsup|m<rprime|'>>,\<psi\>,1>|\<rangle\>>|)>|}><rsub|\<frak-I\>>
      </equation*>

      and lemma <reference|lem-8> tells us that it equals to
      <math|min<around*|{|A<rsub|m<rsub|>>+B<rsub|m<rsub|>>+C<rsub|m<rsub|>>|}><rsub|m\<in\>\<bbb-Z\><rsub|\<geqslant\>0>>>
      with <math|A<rsub|m>>, <math|B<rsub|m>> and <math|C<rsub|m>> as defined
      in that lemma's statement.

      To finish the proof we need to compute
      <math|M<rsub|even>\<assign\>min<around*|{|A<rsub|m<rsub|>>+B<rsub|m<rsub|>>+C<rsub|m<rsub|>>|}><rsub|m\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>>
      and <math|M<rsub|odd>\<assign\>min<around*|{|A<rsub|m<rsub|>>+B<rsub|m<rsub|>>+C<rsub|m<rsub|>>|}><rsub|m\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>
      and <math|M\<assign\>min<around*|{|M<rsub|even>,M<rsub|odd>|}>>. We
      employ the variable change <math|x=<frac|\<lambda\>+\<nu\>-q|2>> and
      <math|y=<frac|\<lambda\>-\<nu\>-q|2>>. Note that <math|\<nu\>=x-y>.

      We can rewrite <math|A<rsub|m>> and <math|B<rsub|m>> as

      <\equation*>
        A<rsub|m>=<around*|{|y=-m,-m+1,\<ldots\>,-1|}>
      </equation*>

      <\equation*>
        B<rsub|m>=<choice|<tformat|<table|<row|<cell|<around*|{|x\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,y+m+1\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,x-y\<leqslant\>m+1|}>>|<cell|m\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>>|<row|<cell|<around*|{|x\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,y+m+1\<in\>-\<bbb-Z\><rsub|\<geqslant\>0>,x-y\<less\>m+1|}>>|<cell|m\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>>>>
      </equation*>

      Now, by lemma <reference|lem-7> we have

      <\equation*>
        M<rsub|even>=<big|sqcup><rsub|k\<in\>\<bbb-Z\><rsub|\<leqslant\>0>\<cup\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>>+1|)>><around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsup|2><mid|\|>y\<leqslant\>-1,<space|0.6spc>x-y=k|}>
      </equation*>

      It is clear that <math|M<rsub|odd>\<geqslant\><around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsub|\<leqslant\>0><rsup|2><mid|\|>y\<leqslant\>-1,x-y\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1|}>>.
      Moreover, lemma <reference|lem-9> implies that
      <math|M<rsub|odd>\<geqslant\><around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsup|2><mid|\|>y\<leqslant\>-1,<space|0.6spc>x-y\<in\>\<bbb-Z\><rsub|\<leqslant\>0>|}>>.
      Hence, <math|M=<big|sqcup><rsub|k\<in\>\<bbb-Z\><rsub|\<leqslant\>0>\<cup\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>>+1|)>><around*|{|<around*|(|x,y|)>\<in\>\<bbb-Z\><rsup|2><mid|\|>y\<leqslant\>-1,<space|0.6spc>x-y=k|}>>.

      Finally, the last equality follows from the obvious fact that for
      <math|a,b\<in\>\<bbb-C\>> we have <math|<around*|(|a\<pm\>b|)>/2\<in\>\<bbb-Z\>>
      iff <math|a,b\<in\>\<bbb-Z\>> and <math|a-b\<in\>2\<bbb-Z\>>.
    </proof>
  <|hide-part>
    <section|KR-normalization-even>
  </hide-part>

  <\hide-part|17>
    <section|Pullback-tensor-multiplication>

    <\lemma>
      <label|KR-normalization-recur:lem-pull-comm-restr>(``pullback commutes
      with restriction'')Let <math|A<rsub|2>,B<rsub|2><rsub|>> open subsets
      of Euclidean space with open subsets <math|A<rsub|1>> and
      <math|B<rsub|2>> respectively. Let further
      <math|f:A<rsub|2>\<rightarrow\>B<rsub|2>> be smooth, so that
      <math|f<around*|(|A<rsub|1>|)>\<subset\>B<rsub|1>>, so that the
      following diagram commutes:

      <center|<image|<tuple|<#252150532D41646F62652D322E3020455053462D322E300A252543726561746F723A20706476697073286B292070312E376220436F707972696768742032303130204153434949204D4544494120574F524B532E2028707465782D7374616666406D6C2E61736369696D772E6A70290A25252B206261736564206F6E206476697073286B2920352E393864657620436F707972696768742032303130205261646963616C2045796520536F66747761726520287777772E7261646963616C6579652E636F6D290A25255469746C653A20544D507879706963544D502E6476690A25254372656174696F6E446174653A20546875204465632033312031313A32373A303820323031350A2525426F756E64696E67426F783A203133362036313220313931203636350A2525446F63756D656E74466F6E74733A20434D4D49313020434D52372058594253514C2D4D656469756D205859415449502D4D656469756D205859425449502D4D656469756D0A25252B20434D4D49370A2525456E64436F6D6D656E74730A254456495053576562506167653A20287777772E7261646963616C6579652E636F6D290A254456495053436F6D6D616E644C696E653A206476697073202D71202D66202D4520544D507879706963544D502E647669202D6F20544D507879706963544D502E6570730A254456495053506172616D65746572733A206470693D3630300A254456495053536F757263653A2020546558206F757470757420323031352E31322E33313A313132370A2525426567696E50726F635365743A207465782E70726F203020300A25210A2F5465584469637420333030206469637420646566205465584469637420626567696E2F4E7B6465667D6465662F427B62696E64206465667D4E2F537B657863687D4E2F587B530A4E7D422F417B6475707D422F54527B7472616E736C6174657D4E2F69736C732066616C7365204E2F7673697A65203131203732206D756C204E2F6873697A6520382E352037320A6D756C204E2F6C616E64706C757339307B66616C73657D6465662F40726967696E7B69736C737B5B30206C616E64706C757339307B31202D317D7B2D3120317D6966656C736520300A3020305D636F6E6361747D6966203732205265736F6C7574696F6E2064697620373220565265736F6C7574696F6E20646976206E6567207363616C652069736C737B0A6C616E64706C757339307B565265736F6C7574696F6E20373220646976207673697A65206D756C203020657863687D7B5265736F6C7574696F6E202D373220646976206873697A650A6D756C20307D6966656C73652054527D6966205265736F6C7574696F6E20565265736F6C7574696F6E207673697A65202D373220646976203120616464206D756C2054525B0A6D61747269782063757272656E746D61747269787B41204120726F756E64207375622061627320302E3030303031206C747B726F756E647D69667D666F72616C6C20726F756E640A6578636820726F756E6420657863685D7365746D61747269787D4E2F406C616E6473636170657B2F69736C732074727565204E7D422F406D616E75616C666565647B0A737461747573646963742F6D616E75616C666565642074727565207075747D422F40636F706965737B2F23636F7069657320587D422F464D61745B3120302030202D31203020305D0A4E2F4642425B302030203020305D4E2F6E6E2030204E2F49456E2030204E2F6374722030204E2F64662D7461696C7B2F6E6E20382064696374204E206E6E20626567696E0A2F466F6E74547970652033204E2F466F6E744D617472697820666E747278204E2F466F6E7442426F7820464242204E20737472696E672F6261736520582061727261790A2F4269744D61707320582F4275696C64436861727B436861724275696C6465727D4E2F456E636F64696E672049456E204E20656E6420417B2F666F6F20736574666F6E747D320A617272617920636F707920637678204E206C6F61642030206E6E207075742F6374722030204E5B7D422F73662030204E2F64667B2F73662031204E2F666E74727820464D6174204E0A64662D7461696C7D422F6466737B6469762F736620582F666E7472785B736620302030207366206E6567203020305D4E2064662D7461696C7D422F457B706F70206E6E20410A646566696E65666F6E7420736574666F6E747D422F43777B43642041206C656E677468203520737562206765747D422F43687B43642041206C656E677468203420737562206765740A7D422F43787B3132382043642041206C656E67746820332073756220676574207375627D422F43797B43642041206C656E6774682032207375622067657420313237207375627D0A422F4364787B43642041206C656E677468203120737562206765747D422F43697B4364204120747970652F737472696E6774797065206E657B637472206765742F637472206374720A3120616464204E7D69667D422F436861724275696C6465727B736176652033203120726F6C6C205320412F6261736520676574203220696E6465782067657420530A2F4269744D617073206765742053206765742F4364205820706F702F6374722030204E20436478203020437820437920436820737562204378204377206164642043790A736574636163686564657669636520437720436820747275655B3120302030202D31202D2E3120437820737562204379202E31207375625D7B43697D696D6167656D61736B0A726573746F72657D422F447B2F63632058204120747970652F737472696E6774797065206E657B5D7D6966206E6E2F62617365206765742063632063747220707574206E6E0A2F4269744D6170732067657420532063747220532073662031206E657B412041206C656E6774682031207375622041203220696E64657820532067657420736620646976207075740A7D6966207075742F63747220637472203120616464204E7D422F497B636320312061646420447D422F626F707B75736572646963742F626F702D686F6F6B206B6E6F776E7B0A626F702D686F6F6B7D69662F53492073617665204E2040726967696E20302030206D6F7665746F2F56206D61747269782063757272656E746D6174726978204120312067657420410A6D756C20657863682030206765742041206D756C20616464202E3939206C747B2F51567D7B2F52567D6966656C7365206C6F61642064656620706F7020706F707D4E2F656F707B0A534920726573746F72652075736572646963742F656F702D686F6F6B206B6E6F776E7B656F702D686F6F6B7D69662073686F77706167657D4E2F4073746172747B0A75736572646963742F73746172742D686F6F6B206B6E6F776E7B73746172742D686F6F6B7D696620706F702F565265736F6C7574696F6E20582F5265736F6C7574696F6E20580A31303030206469762F4456496D616720582F49456E20323536206172726179204E203220737472696E6720302031203235357B49456E20532041203336302061646420333620340A696E64657820637672732063766E207075747D666F7220706F702036353738312E3736206469762F7673697A6520582036353738312E3736206469762F6873697A6520587D4E0A2F6469722030206465662F6479797B2F6469722030206465667D422F6479747B2F6469722031206465667D422F6474797B2F6469722032206465667D422F6474747B2F64697220330A6465667D422F707B64697220322065717B2D393020726F746174652073686F7720393020726F746174657D7B64697220332065717B2D393020726F746174652073686F772039300A726F746174657D7B73686F777D6966656C73657D6966656C73657D4E2F524D61745B3120302030202D31203020305D4E2F42446F742032363020737472696E67204E2F527820300A4E2F52792030204E2F567B7D422F52562F767B2F527920582F5278205820567D42207374617475736469637420626567696E2F70726F647563742077686572657B706F700A66616C73655B28446973706C617929284E65585429284C617365725772697465722031362F363030295D7B41206C656E6774682070726F64756374206C656E677468206C657B410A6C656E6774682070726F6475637420657863682030206578636820676574696E74657276616C2065717B706F70207472756520657869747D69667D7B706F707D6966656C73657D0A666F72616C6C7D7B66616C73657D6966656C736520656E647B7B6773617665205452202D2E31202E3120545220312031207363616C652052782052792066616C736520524D61747B0A42446F747D696D6167656D61736B2067726573746F72657D7D7B7B6773617665205452202D2E31202E31205452205278205279207363616C65203120312066616C736520524D61740A7B42446F747D696D6167656D61736B2067726573746F72657D7D6966656C736520422F51567B6773617665206E657770617468207472616E73666F726D20726F756E6420657863680A726F756E64206578636820697472616E73666F726D206D6F7665746F205278203020726C696E65746F2030205279206E656720726C696E65746F205278206E656720300A726C696E65746F2066696C6C2067726573746F72657D422F617B6D6F7665746F7D422F64656C74612030204E2F7461696C7B412F64656C74612058203020726D6F7665746F7D420A2F4D7B5320702064656C746120616464207461696C7D422F627B532070207461696C7D422F637B2D34204D7D422F647B2D33204D7D422F657B2D32204D7D422F667B2D31204D7D0A422F677B30204D7D422F687B31204D7D422F697B32204D7D422F6A7B33204D7D422F6B7B34204D7D422F777B3020726D6F7665746F7D422F6C7B70202D3420777D422F6D7B700A2D3320777D422F6E7B70202D3220777D422F6F7B70202D3120777D422F717B70203120777D422F727B70203220777D422F737B70203320777D422F747B70203420777D422F787B0A30205320726D6F7665746F7D422F797B33203220726F6C6C207020617D422F626F737B2F53532073617665204E7D422F656F737B535320726573746F72657D4220656E640A0A2525456E6450726F635365740A2525426567696E50726F635365743A2074657870732E70726F203020300A25210A5465584469637420626567696E2F72667B66696E64666F6E7420647570206C656E677468203120616464206469637420626567696E7B3120696E6465782F464944206E6520320A696E6465782F556E697175654944206E6520616E647B6465667D7B706F7020706F707D6966656C73657D666F72616C6C5B3120696E64657820302036202D3120726F6C6C0A65786563203020657863682035202D3120726F6C6C20565265736F6C7574696F6E205265736F6C7574696F6E20646976206D756C206E6567203020305D466F6E745479706520300A6E657B2F4D657472696373206578636820646566206469637420626567696E20456E636F64696E677B657863682064757020747970652F696E746567657274797065206E657B0A706F7020706F70203120737562206475702030206C657B706F707D7B5B7D6966656C73657D7B466F6E744D617472697820302067657420646976204D6574726963732030206765740A646976206465667D6966656C73657D666F72616C6C204D6574726963732F4D6574726963732063757272656E746469637420656E64206465667D7B7B3120696E64657820747970650A2F6E616D65747970652065717B657869747D6966206578636820706F707D6C6F6F707D6966656C73655B3220696E6465782063757272656E746469637420656E640A646566696E65666F6E742033202D3120726F6C6C206D616B65666F6E742F736574666F6E74206376785D637678206465667D6465662F4F626C69717565536C616E747B6475700A73696E205320636F7320646976206E65677D422F536C616E74466F6E747B3420696E646578206D756C206164647D6465662F457874656E64466F6E747B33202D3120726F6C6C0A6D756C20657863687D6465662F5265456E636F6465466F6E747B43686172537472696E67732072636865636B7B2F456E636F64696E672066616C736520646566206475705B0A657863687B6475702043686172537472696E67732065786368206B6E6F776E206E6F747B706F702F2E6E6F746465662F456E636F64696E672074727565206465667D69667D0A666F72616C6C20456E636F64696E677B5D6578636820706F707D7B636C656172746F6D61726B7D6966656C73657D69662F456E636F64696E672065786368206465667D6465660A656E640A0A2525456E6450726F635365740A2525426567696E466F6E743A20434D4D49370A252150532D41646F6265466F6E742D312E303A20434D4D4937203030332E3030320A25255469746C653A20434D4D49370A2556657273696F6E3A203030332E3030320A25254372656174696F6E446174653A204D6F6E204A756C2031332031363A31373A303020323030390A252543726561746F723A204461766964204D2E204A6F6E65730A25436F707972696768743A20436F707972696768742028632920313939372C203230303920416D65726963616E204D617468656D61746963616C20536F63696574790A25436F707972696768743A20283C687474703A2F2F7777772E616D732E6F72673E292C207769746820526573657276656420466F6E74204E616D6520434D4D49372E0A25205468697320466F6E7420536F667477617265206973206C6963656E73656420756E646572207468652053494C204F70656E20466F6E74204C6963656E73652C2056657273696F6E20312E312E0A252054686973206C6963656E736520697320696E20746865206163636F6D70616E79696E672066696C65204F464C2E7478742C20616E6420697320616C736F0A2520617661696C61626C6520776974682061204641512061743A20687474703A2F2F736372697074732E73696C2E6F72672F4F464C2E0A2525456E64436F6D6D656E74730A466F6E744469726563746F72792F434D4D4937206B6E6F776E7B2F434D4D49372066696E64666F6E74206475702F556E697175654944206B6E6F776E7B6475700A2F556E69717565494420676574203530383733383220657120657863682F466F6E745479706520676574203120657120616E647D7B706F702066616C73657D6966656C73650A7B7361766520747275657D7B66616C73657D6966656C73657D7B66616C73657D6966656C73650A3131206469637420626567696E0A2F466F6E74547970652031206465660A2F466F6E744D6174726978205B302E3030312030203020302E30303120302030205D726561646F6E6C79206465660A2F466F6E744E616D65202F434D4D4937206465660A2F466F6E7442426F78207B2D31202D323530203131373120373530207D726561646F6E6C79206465660A2F556E6971756549442035303837333832206465660A2F5061696E74547970652030206465660A2F466F6E74496E666F20313020646963742064757020626567696E0A2F76657273696F6E20283030332E3030322920726561646F6E6C79206465660A2F4E6F746963652028436F70797269676874205C303530635C30353120313939372C203230303920416D65726963616E204D617468656D61746963616C20536F6369657479205C3035303C687474703A2F2F7777772E616D732E6F72673E5C3035312C207769746820526573657276656420466F6E74204E616D6520434D4D49372E2920726561646F6E6C79206465660A2F46756C6C4E616D652028434D4D49372920726561646F6E6C79206465660A2F46616D696C794E616D652028436F6D7075746572204D6F6465726E2920726561646F6E6C79206465660A2F57656967687420284D656469756D2920726561646F6E6C79206465660A2F4974616C6963416E676C65202D31342E3034206465660A2F6973466978656450697463682066616C7365206465660A2F556E6465726C696E65506F736974696F6E202D313030206465660A2F556E6465726C696E65546869636B6E657373203530206465660A2F617363656E7420373530206465660A656E6420726561646F6E6C79206465660A2F456E636F64696E67203235362061727261790A30203120323535207B3120696E6465782065786368202F2E6E6F74646566207075747D20666F720A64757020313032202F66207075740A726561646F6E6C79206465660A63757272656E746469637420656E640A63757272656E7466696C652065657865630A443944363646363333423834364142323834424346384230343131423737324445354345334330354546393846383538333232444345413435453038373443350A343544323546453139323533394439434441344241413436443943343331343635453641424634453432373146383945444544374633374245344233314642340A373933344636324431463436453836373146363239304436464646363031443439333742463731433232443630464238303041313537393634323145334141370A373243353030353031443842313043303039334636343637433535333235304637433237423243334438393337373236313441383436333734413835424334450A424543304230413839433443313631433339353645434532353237344239363243383534453533354634313832373946453236443846383345333843354338390A393734453941323234423343424546393041393237374146313045304337434143384443313143343144433138423831344137363832453546303234383637340A313134353342433831433434333430374146343141463841383331413835413730304346433635453231383142434246424241414237313634353533354132420A364630463232343538453134323946344136373330374530314630424346364633333745304532414438393635384438383042303443323633303646383137390A433831323142393538343539423932334143334230354235393444384142393546373538373030313931333034343246443239353738443434463536393042430A373238313335374135303431433841383039413539443044454531303845324130374434303636353642433734413946333331374342383837453731323331380A343642324543414133343146383639324143433244313441424142444642434143364633353835383335354631443332323842303232334543373341433536460A334339383734363444423832394632343345333034463443353943444533454636454235334134454639424139313531304342383941333430373236314635380A413241453636383830424139384643314546353436313132383932343934433835413243333946394443434143353736363732353839344137414131343845390A343233363041453634424633413446314639463041304430433141414644433444353043353232333341413539354237443043453535374434413031304438360A364536423736413745393532334538413636333344413933343842433346353933303246373246343932413330373832414537454632323035313638393344330A444538333643444533313144454439323632414630314335303630343035343145453834414143353339423430344232333033334546353644344243453642450A423035463739434436333346453735433637323831313444323734394533394644373435343035304636373736334142363336333737424138453138363743330A393936433744374434413441303242433439443141443746463137344331463439463146323035424339443541453432424342303243463835353445384635410A443138373643393238354236434344374238433136354637353834334230414131314438343632423537303737414645373542414430383645394439463931450A333041434646393137373631333246334341434144314341354530384231374233364130453435414342414335323339334239414639303839424438323144390A434435413943443942454341353946373434354436334445434331423435303244323939444238354236453245453743363941314441423931453232413341350A383942353234464132304146363030354537413538364239304132433645354139334339454641344142454635463745344337423831333633464538443242330A304144363337464138363344453738373538314144443743424534363346373836364334304634453238303236304544304539433834353345354337453636380A464646303538423937343244443346313331433236344638464131303243443044413035463331313444313344333444343232373939313831343533464532330A324643364546423031424534323043393330423837394436373146334446423033363139373837343732353232303634344135413532444642343637424237350A383038394534463430434539343031373737423946453144304145453032453738324136454232413138354134353441453933393430393443444645374346410A433033433233413738454146323432453446383131453443383342353945463444433541434534414433374234313631364234364332363333353837313042320A363133373331343534354341364345383931313942343241333531384543383543363844433037443236383339433638423146463535433441394344353138420A413146423332463943343735424236313130383339464343423934313536453742333634384632373234354130304432393636464334444445333939364246410A463436334136363343423639333542353936423135383245443041424243363438414141384138363036384246303033383030314337353343384241464130440A323035383034314446413732304235323845324434423136313936444231434633304337373944334634383030464536363244354236304232303833343146320A413636454643423834343843324643443132444630444438393939313141384244393643394236373030353444333238373930453544333838353138423134360A384345393245333638454231444233434141464341343833344343394439443944434338304642314633344633394441434445363433303532433937374137450A413935433546413844464544394234444345373639453445343632353644364441384642313846443746413445344345443544343836383033353338463342340A364433463542334330333138344635433236433636444242344337323439313845424236413839433436303245344544444138314545453242443138423638330A464442343539463243453041394345443233444332303845414138424544423330344230304530393344454539323641374233324644423245433730444438350A393442393133373835364444444142423430324232433736444241383731343930353141444336303037303138454244443537314245314430393245424439350A373644344530363341443744354636324536433236454442383844333836373846323830364131463439303042304142433445443033344138313831313941340A453631384631413930323331354243393846323637373545353935353541334443454131443046384232304139303834393230454342453346374632343541430A313138324134304235313842313934363639443935444539363835343242464638304644433839363639424332353643343443423636413241423843443741390A453432433639393536434342364244453843303941443232454633313936393339423342383445423233413645303731413336443730323930394530313946460A303538463237353632343431454235434145383741343430374636374334333930383130424538394242453836374436333634363845373336373742383443380A354131323238444437444338454144413232314231424144354634334538333246323041444537414442464631373041423330364635423731313831364644310A333942373838323535364533304630303239373746423838443842323838323641373544453044323033353441324434314632444138353738333736463744440A463237423046353944344444444635373930453131453339353734393144433734454542373632354341343946414439304641343741443845304244453832340A464633323641383438343641343741323142373046413534394245453330374639433639373030303946393633423439413530344630313135373737383236460A314438313230334636353543323432464646313542413937453342444446424634333542313045373443453835343343393839363632323338313838333942330A364246334243363346383832423041443046444143413843353641353730323737393532453144383346313842454446303834443241433030344532423039440A373044453137343044374432323045393242353444324644304444454146314530384334314644333231413844343734393832444431303542323331363641370A414139453031323944433838303635423145304639333832424542344234453144414145334541353438394244434139323141443541383137354632383431460A393430303437384446413939433545353535334633383338383236363444373346424446413239424633324535324332384443453830444146343833393433340A303232464135313536373944424331334645393839363844323839344446354444363943343942443233443030463544383538423639443146323230463936380A463037303045313338373335373942334346423635383937323039384443363146314444353830313035424332373739354442344146313141383731434344360A324531423941463746304441414434434533313533373941374234324345434239383344414335413242393432364234453545304137463739373835303443310A444437453330303633414533434244464232344541324243434443343738414238323038344644333041343739334634373037443946384639363437423431330A463841354335414336443545413045333536323843453130393641343334464238323836463436313743423444304144333041344130423235354135413335360A323541413541393437464433433446413434423441413830424142343443343843433145324336443041373131333635413337413538433334383344303745440A333031413833443236353041324538434241394545363246463543323733364543383243313430323935394636343532374639423634303631394631313244390A384530463441384133303738433732414346334633344144383535414134303038433936453330443945384334313436303743333445303645323941433542390A324545354444423832334538433345454536413844453232383331334434373641374633394235444642464244454444463743343543314338384545364430310A374642344637424232434242443544463746304342443938444332383746413639343046424645314233423133363631334133434631363633344341374239300A353344354644353737363531354546463544333746384643433632443842454338454532323136353033443534443646323033324433433242463836314531350A464431423435423731353736463135383532454541363544443337324539313145463443433138323833434432464634313936413346314139443831313337460A463138323045433630344436433631414633313843364335414236444131454446333035434144454637434330313833423836443331333130413039393732430A413442433337443131304337374543434136313444314132383145453143323034304234413545434233314133464336313736304636303845343433333244310A443243353343373839314235303541333032304539453439313546333631383538384643454338304239454343354536333744384430463343393442314632410A433533464334364341453041464141374531323236364332313241373341414536303139393735324330343242443535413544463143443037464244423833300A433833453738333244383535344144394339434145454337434544314441454536323230393038393736343143463245354233344133353344383332363444340A343638373532324442323930443342413932374241333135454135443235423044374236393335304336433138304142304333323242303545303146374337440A463246343836353135363746304331423439414633393530453433433934443738463742313834424632393436423932344243343237394145443238463341300A313741374438423233353639384135313644334642354446304231384134323242323431304333383545374539343339433644363039313745423332393941440A453331343731363136323531464134304339464130393831303942423331413534443943303342324631323934374534453932353241303835314238314334440A463339453746433434373532353034423538394333393131353731423144334543334244314531383037463939434544314442323032373045343833413830350A434132413031364537323833353530443142314433354332323646414236334639383343454434314134443032413246323238464139454630363530323742330A434336394436463245323738433041324432333844334133373135344230443232323831463632433631443931383241363936353742303237424244454436340A313145323631453437363230363032463836353232314135333443354133324532424635423933413138373931314131343646324539363533384234374442420A374246413745463430364645393430463444414431374536453442383043344630333144373146363536353743324635433832333345454143363844453841370A453146433330353543313232433137393544304337314130323834463839413942463034383337463631433945303844423432363434413439304339374433340A413544334345453437354238443537383230353030354130443638414639344144323743304538353542423845444237343737353639304134454444363534330A424343313043463133323833443646413841374346334645364334463936343730413131464630423031363044334639383136423133423042414530443846390A423834433736333130363346453635384431334431303844364645323441383937393946414241373245364136443143393433393232434245363736433142360A313141343130364543423446314137463841383442323738334332453641313039433538443633464330423734443843384131434236324435323734343141450A453635364439344231414138353831423446303742363533454436343836414145314638414442333046413844383931344146323437323143373442303930380A443834463245424239313134344544344244374546353333463235383430343844454533374531374344453546424332393932413646393234464542414630370A423632364639383835393944454344414234334339333143464543463939464336454242373246384535343237363543323632393539303244464636304237430A374239414444423438353842433944383038423746303930393639304346384446424335394137383644343842383931393337433331413231393834324134330A323334343235423439363330363244423443344539463533344337374634323433343038383035423541364238424246343238363332434134414330334137410A453333364444313831434530434633453734323037394532393139454146414245313641363332393937373142463237364546413844383543393230463939350A354239443445384631414446434335433239414138394246393043313836433544453736373939303642324644344442323739443234354432374430383833370A443341384435343146453337343135423730364543353835433035383034313038433144393338453534334238423633453237354545383543453944443834330A304138423931363331343442373744413141353532413235443545373745393446323943463235324245393935304634453632374435463732353336423646330A333237384434413435443130373539463136414534324241453834363038363546454538343533374638454339424634383133353730453838334238323646440A314142463346344536364442364645463833363645303742434632393045413637443339433944383142324137454134384530413232384645334435414135300A314135364343424632323943394146323533374138464137304545463431303936414345443334434337424545434134454131463233423339464243333944380A434345413933453633463530384342453637323243313134363741334430443543344335323033314445343343343439333333453432393531303436353143450A453133423832314437393034363533333436303637453937314245303034324335373141424634304333413130373941363735464534323634423738344434360A314238464141344344453938353143344542463639414446353141374236384343383730364330384431334134343930394434433144373844423045304232440A304530333138333034423232394444324644433936383032374344464636353732323035394336323135343330344436463943334630364445323239313445450A393238423744314246314643374537344234443838323939384435394243303836414132443445414430414533394636423735423541334642393939343530360A453231373331453141313546304632443132463838373234424137323839383139374138304644414330303234334133303338383731454244324632424142310A433631363237384242373834393043423836463535324342453544443038363246333739334437324336384143313641463845333846453141353233413546410A394230343238373435423134353536373143464131463642464243434639434132334338333331313343323934384537413641454646463141383335303946460A433535394242354545374639324242343346374633374133373145363631433832364636334444304331423235453334413831313945373145433832464236360A323343374231323646423635353445373536304231423639463245444242373432463342323044313634384331353143333741383537304342443333304139450A373539324138363037443244373237463341414130464632303537444634453241344337443342363538433643454433383832344137373034323044383945370A463641443338354442434539433941393039354346303034323035324136374142383034413636373542423933373341393933393043424446423731353938340A413036394445353433453443364144443746314543374131353339324546383334454142343538343637394134333434333935333432374442313345363935390A304632463530363143393943364430304641353332374644423533333041454445313941353344453341453039323633344443364145454146363341354245440A393930463841313137414542314341304537463744424530324342334438363436354631363133423937364431434636463341314536393734304132464443380A303632414343343545444136423836334236303031354632373638363046423739433331443238463937413739393536384536364430413837353742324334310A453933393333374234363733303330343144304634433539333930423245343145354632393846323735444343363939443237433435394544344435414442440A303235333946303030393544374531383732383632313432423436424530363531334433454231413430364536424141363442453739353132323130304630390A433337453544313833343231384543314431314230333143374446433946354142303731413846344443303832303338323133363639353945393139314434420A323839363832443931354146323843453538353846383333333844433531423642304444303532413138314439313333464241353043463138463730454536350A433333373236413034353045424139443045304333363632414636433231323141423739313141413938383044364242363831314436443735313538383845370A313939413045363332313034303539413838433944383542313942423335454446344142393545313531354242323333393537323932384244354645384342440A324434444146353544434645323946424334433344353633333632373742413043394138383941313239463946413730353241443134323042383730353136330A314138303845433132383443383838443738434541324234424142373141443736323839463546343938363030384641394246333238453835333745364339310A453131444244443834343745314339414345313844423045433344353734324332363443384546413434354335443136433239333046423433363639373734460A413243413532313434443939454641384643343237444234313238434434433033364138433631314230383733333543373830373430464141343139443339420A354444363845413839433935323735463932353444393437454233363833443031333032353532363942313043364346463239454130424534383443393934390A393631383846434237343736313841383034344532453337444646443244423841424236323142333444433032343235393334303637373039354236393337410A373845444346353038414339314434434546443837324144373346353035383244433838303731343343454239463130394338344443354441333042363445320A453536444539373330383841394433323538334436393436444234463335323339303246423137383144393933423839443546353644373944354439384343310A374645453733464333413744314243434539303137394145343530383239453232384234444541443342324234433739413430304346463839394142323646390A303438423038373545424338373141443233424139364638384344413842383746453538303941313338383941364143333439414242323545353441434141390A433231334335444532443031424342394343304437424244333834443233414531324532383946463846444631463631314635453134443442323042313541330A343244394233423337413833413943413339423544423643383331364335314237304632313135333041353643464535344436334538383136394346353233330A443141374232333838303235423345424432424545303731364333413244353839454243374134324233444136303241433445324644394339303532433932320A373131453434343038444545413146453043394644353041333941443436443433374636314632383441324546443432454631353845444437314131343836440A343836354436423545323045363046344634464333443634363930394646314545324437353733363635453443443833343041314232333243414330323032430A433335424139424233443232363743374537383531384636373131363333463838384542454637324443373530414332434233363244353238434643384232450A413141453143303534353646353045454438434141373638444546343746463835433433323246303244374639443138384336463238354336373445463538390A323531423042393133333339464437303146444232383133333844393637303445443745443930384243313133423432373541323444303538393535383930420A313243434444353537324436333638383432364230453145394134304436414145434641353535354331434639444245463843303443453145354136334631340A393639443339423644414538413931463641463443443145324441383941343636314441333445323732423630333243343432433033314630383146354446350A383538463436323038383537373344384132423246354542364444413734433134303844463237393930303435304534413345383042413941394231323935450A463234454443334636454644383141373431454637344230323032383230353136433446423732303638374244443931354542323339363132384333423236320A323045333037354441313533443646443336453143303542383535393239444141344445363934423646313545463231343543363332353042323442303331410A344346304146444232323545393144393938323842383342443930463137303244333930364434353837323538374133413131364231333841443936323743450A453737384139343943333932323032383233433637304644424335364631383936464646464243463532433442343030463637424133364235464345343441350A463138454542384144464330383843393944464638453041353933453831413541434132453336393330303546373233433744334530414532424444333830350A384336303037413030353432444542323533393730393535384138384232313030334345344232433738313741463230374544353736423235413431444541300A464335354134353942454230304144423031333039423335393230463034463834423742363446393541413939454243423834334130364345443930304439390A393742454644374343423946344438353837364631303136304338443633453246444538324237413844393435463337434339393333414245304644314437360A323638323936423141354142303642324538313436393131323837373136393432323437383131373144433632363642434332393046434531414235393431360A383535333033363831313542414244344631444534353935323931384431393435443531454237313343323833444145384544443535394634333743443838360A413442314441363132304436383543323834363733413345453438394643314145343239374133363233423333394237443838364236423442384639463441330A374246383545333230413532464443363332334235313837394239384131344333334335363742433036394439423434363136353134454531424533364639300A454335464133334531423642304134363934354438373645463030383545373439333544463235363041303333323138363141373532453539373432423946430A354335303146424336344246423136303234353938383542363338373344433835374544333746384245314139433645393531374239424635413631363142440A444542364442303338314646423334413841393641423441443438424543343044344331393841424335393943333735384146463633384141373542424441340A383534354435463935464134323646423235353837333031413433453137364636434544373835314538313541443930374632343433453730373430444432440A344642443544393738423942333746353944364443463041444430463930383235444432333535384643423835383531333630324338424338324246413338330A374141364443454134303039393631443036444632333343353338314137463935343132353939323634343642324630333636344243353937384131423643440A454136454243394645363130304136353935393531334545453332453639443437423535424146333041383933443737313432463934333938323031394330310A373135434532393932333739354541303143353841373938393739393339423530374335423239413332383831383737454637454630433543423344453539310A364239413643334633464641383437463339364133393646303738383630423539383530424134434133313135434132333736414545364233304330354443310A364639444236373831454430463944343544313045303936433333423142374344313241394435374336453439414438333343344230393344433832383131460A313642334244393032424537363441313638303833314543354136433143454438344145304443304136353637384541353237304246323039333145363430390A374141343445414342323243434131313039384638413531303936424538334131414241353643394545443431393544354343463234464441443932453832330A433433394441414642464436353231353744373238463237353446323833303437313044334342333337363331353644373641323539443434363634374131310A343933464143373044443238303633413443444441313632463732353432333638453141433238323643344246463731303932303846363633373139313043310A303638463231373739464333394445303341454346314339464232463431373933304332323739313936314438303132383444434338394230383333423641380A443633463135334143424642374237443534373932343631334242434341454433374439304241433542303236344544333143374239444135413242433632300A394232304341343834323444304646353839303542434436313930424634423546433645434341314243454631333432363932303139374341423431433445360A453832453845453742434232334336424136463842353830303135333342323235454437323144364345334436453839313136454333334341413645393035410A363439463843364131414131383741343845323044423836343539363438313937363231364442373846304635373534334446414533434443304136464337370A324341413439343432353237413544393444433534424539334338373536393043424535324541413445444439463241353131333631424330463038303745450A393641443044323642363244383039453832454331344544423135384546343841373438413646453043334137454535443434373942333534323546333541440A334543373434344636464137354345413530313141443537313037383239333434384133334337363437363131434145453837393734423041373536444143390A344531424137384445453437374641353941443530424635433532453036384135453034344134413439393444354232344343353034354637363841334335310A443446363545324135414644323731413736363643363833354532384336303735314545353238433037343234333331363541464245373135363241333031360A463539363736443536423042354637453439383444363634424333414444414632344234323035373532454532314434423537303537413934333031383436360A303943334641354432433542434246433232413634333538364243394537413936354443333443304137443736413437304230363032414534353130363431370A303730314143443243373634444445323138423932344533384235413133434238323637383337324537343341384233434333303042434242423837383937380A443938343746303634304130333144354537364235414430373639394333423246433643314442424637393933384241363439433135324646423242354242410A443138423935373036373042393939303735303634393446333632423132343739304131374434463431354438343437454346373042363744424434363634330A393141443436354131383532423830344342453635323036454141413338464644324234313830414630304442433632393143393437344241453833313436360A413938333742454535354141304531353831324438374537303333424632434546334245313045434636363844334235374436454631443433333531353243420A303844413430343941363537323632334633394343383534353434364431414239374535374545413942343141354141344245343145373838313532364544300A434536354145353743344634394541373631443538443534353633324534334536423243353742454439323731343134313344463735394142453643363734420A303834363242314232363038453145393238333535383546423638394537413837323233323842393746463141413736433243353444343338463531454436310A433646454432423338464341304134354341324243374638373145393236394131303438314141374131363437313246443939443643344135453546463646330A413333363544423434434631333141453046463130423931453431444630414135344641353146383132453042414432383730303941454531354233383135380A394633323746334435303538424446444441334235433937444630393436323534364533344233354645393738434632344635423145424637344339353334380A374345423343334632334536353142354438344541323045414436344634343136423239443542443946344330453142433333393438383035354634434331420A303844333642443936434542394330324234433143413546384645363634334335374131453344463242394331383943353235334645333339394544384530390A313545383936384631433346313130333037334141443441443337363532343741303943453233414344454439313132313137344245393831433442394445430A30313741463537353637323534320A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A636C656172746F6D61726B0A7B726573746F72657D69660A2525456E64466F6E74200A2525426567696E466F6E743A205859425449502D4D656469756D0A252150532D41646F6265466F6E742D312E303A205859425449502D4D656469756D203030312E3338390A25255469746C653A205859425449502D4D656469756D0A2556657273696F6E3A203030312E3338390A25254372656174696F6E446174653A20536174204F637420352032313A31343A333220323031330A252543726561746F723A204B726973746F6666657220526F73652C2C2C0A25436F707972696768743A20466F6E7420636F6E76657274656420746F20547970652031206279206D66327074312C207772697474656E2062792053636F74742050616B696E2E0A252047656E65726174656420627920466F6E74466F7267652032303131303232322028687474703A2F2F666F6E74666F7267652E73662E6E65742F290A2525456E64436F6D6D656E74730A3130206469637420626567696E0A2F466F6E74547970652031206465660A2F466F6E744D6174726978205B302E3030312030203020302E30303120302030205D726561646F6E6C79206465660A2F466F6E744E616D65202F5859425449502D4D656469756D206465660A2F466F6E7442426F78207B2D353433202D3534332035343320353433207D726561646F6E6C79206465660A2F5061696E74547970652030206465660A2F466F6E74496E666F203920646963742064757020626567696E0A2F76657273696F6E20283030312E3338392920726561646F6E6C79206465660A2F4E6F746963652028466F6E7420636F6E76657274656420746F20547970652031206279206D66327074312C207772697474656E2062792053636F74742050616B696E2E2920726561646F6E6C79206465660A2F46756C6C4E616D6520285859425449502920726561646F6E6C79206465660A2F46616D696C794E616D6520285859425449502920726561646F6E6C79206465660A2F57656967687420284D656469756D2920726561646F6E6C79206465660A2F4974616C6963416E676C652030206465660A2F6973466978656450697463682074727565206465660A2F556E6465726C696E65506F736974696F6E202D313030206465660A2F556E6465726C696E65546869636B6E657373203530206465660A656E6420726561646F6E6C79206465660A2F456E636F64696E67203235362061727261790A30203120323535207B3120696E6465782065786368202F2E6E6F74646566207075747D20666F720A647570203135202F643135207075740A647570203437202F643437207075740A726561646F6E6C79206465660A63757272656E746469637420656E640A63757272656E7466696C652065657865630A443944363646363333423834364142323834424346384230343131423737324445354345333733444342453835303341394331424444434445333937364239410A464633314641444337383443443939453844393133433236383139413439363242433432383332304439323443423044344245313545324541333343443938460A334133303930443341324231433536463244384536373935373646414633464331413739323631363930323837443742393434344231423445333642364537380A313345333439313633333632333930363741363036363138454230343533353644343830313335463743333235383431463742353539383131384445394631300A444334304231344639383838314345393234394432353437333530344636323141434545464545433431353933384231314231454130444233334344313444440A424630463932323446424432443842444338303338353936373036313039334342413034454639463243433736313136313241374234304138384335463535370A304541374237354341454536353139374437364532454146463936384641464637433131303541303930433037374137433739444441454139444642303646420A443546434542384530414431424539363046414633303238323842443446434244463644383343313543363730424130433633334336384237354238433641320A313842454446303733413537463532313238313944423338453330443942413437353231414245424541463335343436333533443542464244313346304646330A353130344337453742323746363832343036353445313244423539343437433135334337353541353141433244384136303532334143424230424241434639410A363035313734413445363544363332304442344230423431333939394630463133324434364631383843313146394636313732324334393631364132414139300A383445443732363530443845453131344537354344463830443938423046383630383131313044393232304443454543414144394531384233334146423843300A433831453542374245464438424437304642313636364534423045363044363843373641424234383745394446303646384330383534423034323330433341310A383731353230363139454636303542363543443845424344333345443939424644394145373741354546333834463836324537463734333032433043443042350A334430434432373835433338393841313045323335373545343432453746344532374631384332433345463333333541464244434543464336333043393344320A343244423044383246354537313045384237324637413243374133333442433032463834384338433739364542394231394539383430374646454339444238450A353436464630354632353443343144373031414343443045463536333837434544344635363933383536353542424443373739344335433038374232423236410A464442314235453735424143463136393132383139344136343843343230343944363941353946454635343437444539443844344442453237343630463036450A363833444243383043453230344231414234364239434142413444313636443937323141444343333039414135393937423935424230424336323346393141330A313530323445364632313839393139353944323831453130344537433933323938443635344433333743434545364632363736304130444535423734383142370A304331453638363732374337454633353845313339454638453333454644373631424436334345394137454643373934373239313835334333414438423944420A343246314538314334324231303843463238373942394335413939433832313639464345433937393739313144343345453738413636423742424445443535380A464633333831463335363538443235433346434239433446463844343141413239313036344539454644443633463739373031414432313338374438463838390A414134443442453941374237374343454643364235423536334437384130384335324241393444383532433239393344393233353730384641464530323134340A453737434442364630384432453337373346443842374435323946344234353338324633453645364237303145314241333146424632394337313637344531300A393432343245343438363032344433463835454431353941424432304439444630363239363038344545464434353237334443313446463546313433373744370A353530364139364438383141443346364435314444383638343834413544453342304438433138333930423241324643374637343439443938313034334542380A423535454533333443343330323741384143334541413537323642304642323334373831444233323635383443353145354533414539413144463642454338350A343636414638414142393239413735353444373731443244393242333641463439384236443042443646313939343635413439413039453841424234383845370A303446414233443744434233364546333545424645464238304530383541444139464634413439393443464633423036333741423230393433453333373533420A343437363332314335333937373632334346363530443732343235383845363545393545313745454343333832423735393631333931303641303434383842390A363836344439303536303331333836433835324542374546433643463443364131323344423936333445464237384243413431383135433243304643433136350A333844423337343634443235374443354541323134373434414343343536313537313633444638333833313841454246464639304536334541383346304234450A344442453443463833324639424331464638343744354545343139393944333837453430353131303337454636453132313633354142433146414335434338370A314338344241334136413433413343353730393646363542324532333638464434383733434538363435423231303735374237364246313232363241444446310A434444463641453434304446353334374538304538434432413431333941443231464334313544414244314537414641413733384332433033323145443345420A303933334346464442384642373636434331413244383435413936364233353945434331353334444135383738334346464435434244424545414434303433450A32423942384138344531344630353638373339333445384332423436453546413133454630413743413432343546433030340A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A636C656172746F6D61726B0A2525456E64466F6E74200A2525426567696E466F6E743A205859415449502D4D656469756D0A252150532D41646F6265466F6E742D312E303A205859415449502D4D656469756D203030312E3338390A25255469746C653A205859415449502D4D656469756D0A2556657273696F6E3A203030312E3338390A25254372656174696F6E446174653A20536174204F637420352032313A31343A323720323031330A252543726561746F723A204B726973746F6666657220526F73652C2C2C0A25436F707972696768743A20466F6E7420636F6E76657274656420746F20547970652031206279206D66327074312C207772697474656E2062792053636F74742050616B696E2E0A252047656E65726174656420627920466F6E74466F7267652032303131303232322028687474703A2F2F666F6E74666F7267652E73662E6E65742F290A2525456E64436F6D6D656E74730A3130206469637420626567696E0A2F466F6E74547970652031206465660A2F466F6E744D6174726978205B302E3030312030203020302E30303120302030205D726561646F6E6C79206465660A2F466F6E744E616D65202F5859415449502D4D656469756D206465660A2F466F6E7442426F78207B2D353433202D3534332035343320353433207D726561646F6E6C79206465660A2F5061696E74547970652030206465660A2F466F6E74496E666F203920646963742064757020626567696E0A2F76657273696F6E20283030312E3338392920726561646F6E6C79206465660A2F4E6F746963652028466F6E7420636F6E76657274656420746F20547970652031206279206D66327074312C207772697474656E2062792053636F74742050616B696E2E2920726561646F6E6C79206465660A2F46756C6C4E616D6520285859415449502920726561646F6E6C79206465660A2F46616D696C794E616D6520285859415449502920726561646F6E6C79206465660A2F57656967687420284D656469756D2920726561646F6E6C79206465660A2F4974616C6963416E676C652030206465660A2F6973466978656450697463682074727565206465660A2F556E6465726C696E65506F736974696F6E202D313030206465660A2F556E6465726C696E65546869636B6E657373203530206465660A656E6420726561646F6E6C79206465660A2F456E636F64696E67203235362061727261790A30203120323535207B3120696E6465782065786368202F2E6E6F74646566207075747D20666F720A647570203135202F643135207075740A647570203437202F643437207075740A726561646F6E6C79206465660A63757272656E746469637420656E640A63757272656E7466696C652065657865630A443944363646363333423834364142323834424346384230343131423737324445354345333733444342453835303341394331424444434445333937364239410A464633314641444337383443443939453844393133433236383139413439363242433432383332304439323443423044344245313545324541333343443938460A334133303930443341324231433536463244384536373935373646414633464331413739323631363930323837443742393434344231423445333642364537380A313345333439313633333632333930363741363036363138454230343533353644343830313335463743333235383431463742353539383131384445394631300A444334304231344639383838314345393234394432353437333530344636323141434545464545433431353933384231314231454130444233334344313444440A424630463932323446424432443842444338303338353936373036313039334342413034454639463243433736313136313241374234304138384335463535370A304541374237354341454536353139374437364532454146463936384641464637433131303541303930433037374137433739444441454139444642303646420A443546434542384530414431424539363046414633303238323842443446434244463644383343313543363730424130433633334331383438433945383345420A384243344135303336323431333046323633323536383334324435313639383745383430383846454337443832334630373139423139454143323645463631390A364334444541344635393334353045313036464433323334424531333037464230443933443330354334313943414544353146323935353439464442413434310A354541384439363543464634434334384330353637333333313239423137383143444437343733464539463233313030364533323433334239344236453445450A374136423031304445363734303243333836314442394646433537454643303036323542423333374443413444353438383744444331353945303731303539430A373935443631344443313946363544414236414139463343313634394244304141334631413934313832303232394145443538383744323345464338304439460A374345364330413630434234453342354443464633363731433737323243324531313533303343304233373032384535383446313141303931373733433836460A444330334634353745433333413938374132373539363344393331364146343330323130314443373141424335303930344332334235353430463545423345340A343635394645424644413731313844454134463536353342424534453039413433463844364242394141423331443732454632303245313939304530303736330A363345354643383034313336453635303045413845343534433142343541424530314333394638334236313446333636354644313841353346324138443838430A354443323730334546344135453642443643443837424133324636414243423936413735443736394237344530453033363146453534393636414130464137380A343536393337444646464441324544383037464633434545424134443836333542433842423343393832364334324435413631414642353237453233343646420A394130444542363637383732383443393642364244353431313041424544433646354342323534393646324437443746463130333630324442433231333441360A414439363335374232454430303144443032464237444232453830434445433646353246313535343843324142383433304143383930374437423341394339460A304231333930373037334241303942303936363432463345344343433330394230374438454645383641323934394633303442393939393630453632313435300A433634443344464243464445303230463735313141443931343545303736324237354541453145434334324536304341384530354539423042394139383437330A384234383737453441343439393432364245443943364238363132304632384142433634413243304630423946383334383934363336344144343639453735430A333932334232304141323746303731303831343136444233463046394330393133374646423636313746324643324242363045334142373046424634423646420A424437323842383636333037444341343738454332383846333345364545443937464639314541324130304441313430303245343534424546453434443339360A433046344341434434364430303235343236423335304141413732344435374438383733364338423933414641333233394246383342423830424633353430370A423641353934453938443036453430433042374546394638413935413843313344313739343941323832433930343933413639464242343042344345463033300A354546413136424330453846353830304237463246353534303346453344463346394239353436363239363739463541433431463430443534463932313532330A313636444536443233384344453141373337364531413933363233344143333538343042453836313741424444314544314533303733303938463845374446340A443845394631363337364436383030304545453742344432364544303535443834303442454632383334423434313746383932413832373236453544303341320A303433364530393436464130363232313038383733433732364134344530423130413739323339454439383533333136383942323934443332313935373337350A414346333341463446433635324233323439463631423439373445413633454630353737353638353945343431433831443541334643333535443844363937350A344541443643424542353233384646314546453336313739323731453941324642414646383745384542334143423233364231354244413132303141453042340A463145373535434336333031344637463834444245444637333132344432463336383045363431383241344530383843413432384233354641413736453845360A374336383232353141423434364445423630413341363439464543353943423844454330383238433338314634304235324334314346433631334537313442310A453945373736443931344542373445453646364231364337344542464135303641444144433841454443334333303235303638464542333937343435453037310A33304232463633420A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A636C656172746F6D61726B0A2525456E64466F6E74200A2525426567696E466F6E743A2058594253514C2D4D656469756D0A252150532D41646F6265466F6E742D312E303A2058594253514C2D4D656469756D203030312E3338390A25255469746C653A2058594253514C2D4D656469756D0A2556657273696F6E3A203030312E3338390A25254372656174696F6E446174653A20536174204F637420352032313A31343A323920323031330A252543726561746F723A204B726973746F6666657220526F73652C2C2C0A25436F707972696768743A20466F6E7420636F6E76657274656420746F20547970652031206279206D66327074312C207772697474656E2062792053636F74742050616B696E2E0A252047656E65726174656420627920466F6E74466F7267652032303131303232322028687474703A2F2F666F6E74666F7267652E73662E6E65742F290A2525456E64436F6D6D656E74730A3130206469637420626567696E0A2F466F6E74547970652031206465660A2F466F6E744D6174726978205B302E3030312030203020302E30303120302030205D726561646F6E6C79206465660A2F466F6E744E616D65202F58594253514C2D4D656469756D206465660A2F466F6E7442426F78207B2D333734202D3337342033373420333734207D726561646F6E6C79206465660A2F5061696E74547970652030206465660A2F466F6E74496E666F203920646963742064757020626567696E0A2F76657273696F6E20283030312E3338392920726561646F6E6C79206465660A2F4E6F746963652028466F6E7420636F6E76657274656420746F20547970652031206279206D66327074312C207772697474656E2062792053636F74742050616B696E2E2920726561646F6E6C79206465660A2F46756C6C4E616D65202858594253514C2920726561646F6E6C79206465660A2F46616D696C794E616D65202858594253514C2920726561646F6E6C79206465660A2F57656967687420284D656469756D2920726561646F6E6C79206465660A2F4974616C6963416E676C652030206465660A2F6973466978656450697463682074727565206465660A2F556E6465726C696E65506F736974696F6E202D313030206465660A2F556E6465726C696E65546869636B6E657373203530206465660A656E6420726561646F6E6C79206465660A2F456E636F64696E67203235362061727261790A30203120323535207B3120696E6465782065786368202F2E6E6F74646566207075747D20666F720A647570203935202F643935207075740A64757020313237202F64313237207075740A726561646F6E6C79206465660A63757272656E746469637420656E640A63757272656E7466696C652065657865630A443944363646363333423834364142323834424346384230343131423737324445354345333733444342453835303341394331424444434445333937364239410A464633314641444337383443443939453844393133433236383139413439363242433432383332304439323443423044344245313545324541333343443938460A334133303930443341324231433536463244384536373935373646414633464331413739323631363930323837443742393434344231423445333642364537380A313345333439313633333632333930363741363036363138454230343533353644343830313335463743333235383431463742353539383131384445394631300A444334304231344639383838314345393234394432353437333530344636323141434545464545433431353933384231314231454130444233334344313444440A424630463932323446424432443842444338303338353936373036313039334342413034454639463243433736313136313241374234304138384335463535370A304541374237354341454536353139374437364532454146463936384641464637433131303541303930433037374137433739444441454139444642303646420A443546434542384530414431424539363046414633303238323842443446434244463644383343313543364432323845383132333733443943344539384339370A424234373536344434373631333634463430374235413844443741304543354537354438353241313441464139383045393230373239333245413746313339440A314637393233353034334235303746303844433442334339323735393644353932463632314644394339443735343330393844463435353242363343304543350A384339393246343342344641314236443046384446463333393844384430444139383844414633444433353443324338304432373231323746424332453042430A444538444530394131383435384443373639363343313334303839374434393536373846444234384445393737443037334442464535363436313131324135350A383243324542323045353332394638434645373931383339373635433237434632443846443545443333333332414138313433343038303946454436313035360A304532384432463332423243363232413537443642333143444239414644464242414336453542363943464442453537444233353830423643454435373438420A454535444238354331453135453330424346394237344641443837344233444635433844304446424231454433363144444542423133413536443433343431340A433642363741324142353634354444324431314541463241314131383638443137453733433135304645383944304436353238324233303243394542353532360A344633353730314533453035373044364236353632354532323531363236343439384145393244373639383937434138453546434139433135333932413341430A304245453335373345453134454142453234334530374241394136363641314139384346353138313433424536413441444234303336334532463032303534430A333332394634423437384431353530354636343230314441303836433533323846383635374233334442324335444234384141423634414139424344383946350A414131353436353630333141423346364645343145363242373344383744433037393237373837454632444333393535363731434642324232384633334244420A463537413030353038353435313137324633363539353741373235384432304234353442393833423035433841453046453746413545453332384339393030460A424545423138324538384239343437453934443837434441363735443044453734443743453533454641323937313941453039383133303935313430303046410A434445353931464639314243433536393341323834463430344339343839394439413430413844413038393639314330413838373737334143434446393145340A364443373236323130443943324134454430324432453646313238423542433832333146354531413733363636304439414235453241323544373842303338370A443830443443314532464133413736434541393942304637343636354134354641304146323031334141313436443634333438463637383143304344464241430A343644383038303036463737384241454330463446454137344338443836423033424546303741314644394336394345423539393642393231393145433045340A323942323046393639393643364145334541363630343636394134314143313244463234393935313435463332354639354136323943413533454532454646460A394641454539334338383738343535333243423739314333434545464432383946303637434532374336413444324332374546334131393835364633383543390A424231414538394136323143354145344132423336314534413541444431333032383442423634464439444336343744333342363931393836393435443630380A353346454441333035353037433930383036454534333245353444303037394539323632353436324533384534464444344345324235314331393234364445450A354233393237413536463334444143434345453735394230393344444542444145363243413631364241314146464139313944304439424241464434333241340A363637383142453744384336443439314632424245443934433231383937453836433543363743384333353736304539384234413336313437464537383643350A443745413646383930454143384532424539373142384439364245314541324145443942383430463541333732413335343339353531423341394645363737340A393545373646323239304546323343423746453933413346363144413832323230444334314644463438334641314436423541434241433943303843344643300A334632383634364546394245343945454131433730443038433535320A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A636C656172746F6D61726B0A2525456E64466F6E74200A2525426567696E466F6E743A20434D52370A252150532D41646F6265466F6E742D312E303A20434D5237203030332E3030320A25255469746C653A20434D52370A2556657273696F6E3A203030332E3030320A25254372656174696F6E446174653A204D6F6E204A756C2031332031363A31373A303020323030390A252543726561746F723A204461766964204D2E204A6F6E65730A25436F707972696768743A20436F707972696768742028632920313939372C203230303920416D65726963616E204D617468656D61746963616C20536F63696574790A25436F707972696768743A20283C687474703A2F2F7777772E616D732E6F72673E292C207769746820526573657276656420466F6E74204E616D6520434D52372E0A25205468697320466F6E7420536F667477617265206973206C6963656E73656420756E646572207468652053494C204F70656E20466F6E74204C6963656E73652C2056657273696F6E20312E312E0A252054686973206C6963656E736520697320696E20746865206163636F6D70616E79696E672066696C65204F464C2E7478742C20616E6420697320616C736F0A2520617661696C61626C6520776974682061204641512061743A20687474703A2F2F736372697074732E73696C2E6F72672F4F464C2E0A2525456E64436F6D6D656E74730A466F6E744469726563746F72792F434D5237206B6E6F776E7B2F434D52372066696E64666F6E74206475702F556E697175654944206B6E6F776E7B6475700A2F556E69717565494420676574203530303037393020657120657863682F466F6E745479706520676574203120657120616E647D7B706F702066616C73657D6966656C73650A7B7361766520747275657D7B66616C73657D6966656C73657D7B66616C73657D6966656C73650A3131206469637420626567696E0A2F466F6E74547970652031206465660A2F466F6E744D6174726978205B302E3030312030203020302E30303120302030205D726561646F6E6C79206465660A2F466F6E744E616D65202F434D5237206465660A2F466F6E7442426F78207B2D3237202D323530203131323220373530207D726561646F6E6C79206465660A2F556E6971756549442035303030373930206465660A2F5061696E74547970652030206465660A2F466F6E74496E666F203920646963742064757020626567696E0A2F76657273696F6E20283030332E3030322920726561646F6E6C79206465660A2F4E6F746963652028436F70797269676874205C303530635C30353120313939372C203230303920416D65726963616E204D617468656D61746963616C20536F6369657479205C3035303C687474703A2F2F7777772E616D732E6F72673E5C3035312C207769746820526573657276656420466F6E74204E616D6520434D52372E2920726561646F6E6C79206465660A2F46756C6C4E616D652028434D52372920726561646F6E6C79206465660A2F46616D696C794E616D652028436F6D7075746572204D6F6465726E2920726561646F6E6C79206465660A2F57656967687420284D656469756D2920726561646F6E6C79206465660A2F4974616C6963416E676C652030206465660A2F6973466978656450697463682066616C7365206465660A2F556E6465726C696E65506F736974696F6E202D313030206465660A2F556E6465726C696E65546869636B6E657373203530206465660A656E6420726561646F6E6C79206465660A2F456E636F64696E67203235362061727261790A30203120323535207B3120696E6465782065786368202F2E6E6F74646566207075747D20666F720A647570203439202F6F6E65207075740A647570203530202F74776F207075740A726561646F6E6C79206465660A63757272656E746469637420656E640A63757272656E7466696C652065657865630A443944363646363333423834364142323834424346384230343131423737324445354345334444333235453535373938323932443742443937324244373546410A304530373935323941463943383244463732463634313935433943323130444345333435323846353430444131464644374245424239423430373837424139330A353142424642374346433546393135324431453542423041443844303136433643464134454234314233433531443039314332443534343045363743464437310A374335363831364230334239303142463441323541303731373533383045353041323133463837374334343737384233433541414442434338364436453535310A453641463336344230424643414144323244384435353843354338314137443432354131363239444435313832323036373432443144303832413132463037380A304644344635463644333132394643464646314634413931324230413744454338443333413537423541453033323845463944353741444441433534333237330A433031393234313935413138314430334635303534413933423731453530363546384439324645323337393444324442393831414241324143433941323341350A334531353235393641463532393833353431463836443835394643303634413045334435464336363437433343414238334144344633314444413335303139430A434442394533444433464542443443324233364241334346364536433744413835453235443841333141394241443339424446333146443044313739303730370A394445364130373845384134303944383239354636343244463439324143344638364143383433383342304634433642414137433232414435413839384137310A443643423334443243443132323636433438364237354537354136394331343831394444394242383135393038384530344434373137453537364238343832440A424441353231313041433842384138304534453944353846343730454542443343463434413145314545384441333138464646333631314230323533344643390A463430313843374335374538303537304432463633344439384245354435454336443935303531313537463045413934413344313242453042344237393933390A463832463844373331333644333333374334344533313442304231364342303330443941313245303146423636373130354633333443334545393635453541330A443431304432463135333135343741343439374333353541454542323935434433433533333442454535323332393932393630423735373539344238394633450A353230393530343244424536423444413343334144353043413935454139454241444131303633304235303043463146434341374436303330363734333638310A374534323844333342374637433430423432354344353845344344384142343734424345364133303742433643364542433135413841393645304532393737450A413333333839313534353336463543354438434630333644303746323430393445373739453541434245353530324339323839324631304634433644423632370A433745433443374246323042333934313841384138354437464439423045414146443837314444443431463933424445354645363139414642383731313832340A444538393045363243313936394136464532384444333537384146343344353841373238464146463042394641413634303936324338463335413236463736430A363746333534384436444235344132354345423336384234374639374541324230433444374330453738393441344630433832334336433139323243463944430A313045303536303035353646314337433941464233334132444236463837333046373044364246393442314642303838373435314632464645454633353834460A444641444346413941324434383436423846304535313632304531333237443939344344463937334238333744313043393046463736444532324234374344350A454533313833383938443135363836314142344446414433344131453346413236304238313634453636383042463538343133413535334538384636313030420A433446344538453937324338314135463838413744424344433330384234433335383142434445313338373742393736423146383433333038333946453543460A433738353531363230454238303344463934413543393231463845453234463745463846433443334531363533353134323132363331463534463930453344430A453945414639364539393846333430433446373239454346374142343330464442374330424533444632433044323330313538323045323842373433434144370A374630414539353431334333454541424243363945383532463533454531444332363044374631453731324245434546324631383433374442323344384537340A323930324141464243373333414335424141343532444436463336373138353941443833364338353634453939434443343138334438343935414644393944360A314630443635423635383843453735343637313739313145323542444341364332363439453341373436364133453244413743373939344133304142343434390A363732454644303036333245464138363239433141464237443533443830313032384637374338363438363946453633363231334136393137333030334541360A424531414241393545423037423133443135393442454643433935454342304139434641393839324545303637374436423643323530383535373632423741370A384534453032323634304639333136394446413033303341304435453733424633453046344434414144313046443745344542323035333242413330333731460A453946343830463935313334333239343646393832384146423544344145414641353832394232434235343445354542363334433435333745463744463038410A413143464439344135324443463045374345344335454646423031453644353035353842373544423443384435353132423036303830463237424536324530310A324545413641303335373434313430313435384338343244334444344333354238463536314438313642333336323136434530433134424637373634384146350A453333393132434639353837324131453141423941313839383041304232394138383144313333393743313545314342413544334530423237393433454245320A463330303344313545423434364243464331433233313833323437354435423741413139453443464445313139443643443632443035334336443239433333330A354637323937393144313742334637313038303734454546344431424431303143423333453031303034353332434230443731364432453534443136394336450A383031363345373043304539303831463331413145434241453037394432413531384237393042304342324344303344464430333441304634373838453830300A423043443244433146414644443438374332463338314542414232413246334633414638323032314232313144433943443246424136413142423344344145410A344337463344394135433231444646323834434342383237443230354136393633384539384435444438453336414643314134343831423543423241324538460A443643383338444136463831393930463545443932384443373435373530314235433937394646344344323041383330383936413436304335444231334435360A413342324235443942323932333734413942463339323839344444393946434436413145363535414233393545383339463037344431353936343838373030430A344532383931433841454546363635363845383241384238323646394132384646383444344439424441323146363338454146393638383042344542453044380A303831393832463334383331413033424545383146433137373730304332333630443241343839313545433430443546453835423430304531373544354146310A303637464130303937393034464236343737353742423434423430343244333044313535374244304637393232443733313134324644363832313339434542370A353843413443384332343041304238364231383838434143433530374532344530343032304246313838324244394234434145434641393744423234443746350A414436344336393435343032374631393842413335383831423934454539313539413244373345343530433342444145443636423838364436444542433834420A363533453136353137363232384638383939334631324131373037373541384437303338424446324645384443314637423938424443303244314536363836450A394238333446364330414439303738304231374446453235463041344534373043424138344537334632443232424545303941303430463134434641324331340A304644413541353134394235464146464534394635354545464334333833314243343341383332364645453943374634363943304643334230303038383446410A343144413733313845423537323632434239364643344543374631364341303746453143334245384332444243384138313335393533443644444632304244460A373541324236443236303734464345373532424433324642394635434137393737373545384442394242393738364234363941334344363541304439444444410A433241313636453435344139343836304545463542354331323137324444464335373641303346364536463841373335464632314133453943434234434141310A333036343839333438373639373938364134324342353838384232423041373946413343373445383138374244444637424541423838344237304238443441410A414336363135373435414542393036453038424638333143464445323232463538443032423432384435354539443541334344453734453432443841324342370A453141334139343339423637384144343338373933414242454237324232314335383938314441463345444345344242393344393546344131453934334242430A423341303132444539324645443446323332413341374436304345363042363035313531463943374331384135433635334535443644313545354234394136330A373345374133333935303444304143433734423842313136454138384333454241324343363331414142323946373631453546303632393636414432464432380A374646453532464138413131354442453233453437313039344646423343424146424446313142374539303538333133463244303639423243453938413936320A363436343537333846303241333145324632414331313632383732343033344144424345453031323732314542463041353637383933343131463935303431300A423230373534413735313044303431464641363134344143394343343644383436423832353831463230424244303031443334443937363430313038323442450A363143333044303545354335443130304132344631393137463031373939434635424334453530464345434645413733324342353031393638323546304530380A384131454338363843364434333537383537454532393537453038314130453433373245333141384142454632334333463245413046454535374445344430380A363143353730313735433431414130433741334135373941444635393346313842344145333738324432353532453445303735394333324530353945453734310A324438313931453338313733313736394636363438423335383143414631314441453436343731383936363636463138463032393138423038363042444133430A424435444537373736373234343743323343363241434643323631314544353233394436413236364644413630333145424335413533304331413246463741360A423433383042394134433837373236373835344144314631363737434235343333463238383934414446393344333945414239343534314138443233324530380A323244303832443039353141363046363242383744433032383731344543373431333341344436354637443044313239364330453138394334413432414139380A323845384145374543424239464338444641424343364545423145394642303632323746393038303845463331333331434343354434433941363138323138310A303437393032444339464430343434464239344236304643373446334236373737353830383843453641313539443934304335434636383233333545373536410A384241434630364144373232354434394230303032333932433838394230464532433731333131443235393646343930334431324641323042413246464532350A413038303442344243323832393239424533314530463436423334353332434235373935413635323138434641453231463339303739324441363737373543370A423931413242463443313644453446363535314441453341353832374636313642453930343045453642313030384441324639394130314546363644363937410A364344314134344530413135443146333945413830323545383836413638413145394333333433323743373730334545373231453439374341393234414339300A373732333130364439313343354544344241344643373433434541384430463531373235323631303744413635373735433042314237373137394433333643320A394230394236303844383042314131453837434131413834413833334130304439383044393139424646353646363339304539443542343545393933354346350A453639443030333536343436324637353046374443453032444332334343323135413036393642373444384244333135364133393241393446353537363535450A303042464141303335363437353638454436363135374641434335383545343131463746343238353639433134374443343346364534464445363933443046330A393931374245464544463631464239383042383535313546463634323438323445324439393542303543413145354433453842443844333238314442374345340A453534393233453834303538464643304138413243343931333237443046383743453443333532423732343136374345453232344441424133423935373537450A344134313935393442453446393245373842413644333544344339334433314543433331333442323441343544433332343435373235424230343446303941330A414138433331454643304132393434414345324632434530353443463234444233353046423343373131313535313843323442444330463745353432353041460A394433333738443338343830453143423930323946333135373043363139413238463036354341344645443536363545444239363731324142454233334239420A343233324330304331423032313546303844353346374534333038383730333541433235424541463036393432464431423643343432323533433838374142370A443639344331413631313543383939304234434146314538314444314644444436423033433030303535424539353642453746443841344531303439414536390A454441383539334342413843344134314530343643363839464242463946314236344535383536413746423143363145433831354135364445324138454433330A343146333730423832303344344535423139433633414539453645304432364634463338313442354146343841443330454339423834303243393431464444390A373232464341464336333846424238333546383344433737463933443336373236364641374446464643423536374546383242313639354142344439344430390A423138414330343138313130323732323944463433314635434232424246364143434539443530304338463037354137343539303634314331413630374335360A443242383632343739374243443943393143333137373831383639314642423437343445444236303536343634413042393542384436334637433232333039420A383244363132364532303537424343394645353536364439364237413942323031413039423044333235324135343934433843413243384241384131334332390A333745463241383832443631444137303843323739463636334438384138453239393941304633423646393843343939303141373633314246373730384236370A353444304234433532424634424530444130343339453637363341374339443633394144343039324537374231334433353130444145313437354339373841430A373936463942324141443342464633354335413345313942354532424637303442334242444636384345343842413446413234393644363045353838383845410A323841453132443030453946303831364641433139303539304138363542423538353639413931424630333435443031323330414241333631343432303036440A424132433930454332303336424241423739454241464333463231374442443538353443353139323335463936323741314333433731443231454433384145460A304242343046334238364242394630394133463330393437334438373537414237453633384443314335394137463942434434394445343130374132453534460A343232373637464239343034383938373834373230353538343330393339374635353437343436393041434646444635393032464535444233353539333042380A373138363332313738333044443741353633423042334134303235414345373542304537373742343431344236324131334235304335344530453644343745390A443433424637363942393431314237344531303639424637314241383733423442383937334543394241343932413544454135384432363738373242423234360A313041413637423134334430453232323346464234393931453538334536323934313343433839344333464134383639423732443139434531413043454338430A304646354535413345433146434237443343343238393831334630443234394131314235353130344244363042324138394245463434434337374343444139410A303635423842383342344634323533414131443533353239304443464141343737333435324431313044324233333730463945324645353433324235344139450A363434454233424139424646363233343746333736383339303234434435454633433544464433304634313244443534373442373933334536413141423633420A344231324632343137433732443035343343323641323633414541353345354241454244363745323335353341373245393439444543353536424542354430390A433444374138394231344645344543363844304533453944363541363442323835453533353930463431384544413831373531313343413337354132393933300A444443463443373141424232364345423830304332433242323533414331463533363531433838413536414245354137344633423534434234464644444239320A363041443732373242413235454332463646423735394141364531453739363446423535414430394634454232354445343546443031383333393437424430350A363236364141384142423744443739323934314337413037304643463341343633364642463839323143373032393844343246453932463037394442413241440A363134394439434639454637323634444536444643443434323939343942313545413930423539363334303731334244363139323644444232424232334245380A463944453338413331363230413831373432304132343539343645353531343633393630413843354337323935453342334436413539424344463545343732410A343042374132434444414134334344384141464334313144303337313432353739443131303534413930334531303244463044304337423542423835344442410A463346303836414639393146374635443543373330463846394146323133463235373836463345433045353435333046463931324634383736464445313642360A413037443044433446433436454336333633424342363842383341434334343842383031454334334644443246384245304539334438303946463831453338450A313736414531374336374338354645413538454339353433353433344334394139353041413935354438423230393839433535304142314631433331423746460A393934323245314634384642374436463332374336444243343639354130333930334442323735423934434233393338364534363537393237313837304132350A323138323345373543333737453944354234363635354538434438463938363337324346384241383436343233453236353832333135413944313945304246350A333035433332423241304541433345434232373542314438424531314133374144463532343934343231394439344541324335444244413736383832384236440A373735444138434442303945303537304534414444463436324546443844334641334638364231444545434446464236393941463635303732353743313837390A313646433631353836384332443531463033434435374241333844343239393544393136344232353734343132313030383444433430394236454534433131390A304232453137423041384435333236444430303130453441333235443546373742463933353639334243393041303041323843374235463734383137444133390A463437413431453332463446393241413034443330443831304637423134383445423533414438434643384345383932384235373033313445304637313346380A414631323732323731393046394331364242373344324132313746463830314333393141323930393544413545343937344431333741304341413744453730320A453230444434373535423144373837333937353641354537454333353432423936414436383434313939464641324635463245394336344532444134464232410A454437393836394637343543353944323335343338323531424332453644323631313241414544323045303630323144314142383936454531463144443245420A343337464244344132354534323234354335413634373439334643433939323245364444374146353744354434383239323144314342443646304630323934390A433237373737313434373531433145373246344545324243333433443441453741384138373538313233423534464231413032363134344336343336353145460A303930374133373639343545313941384643374639384130333438333241353832304134383142303832334639383046353936323345303531313539334645410A424445364546424343303338333234324342443439353430323742303735423231463130343732303539413438304436453545443031433342303734363143450A393831303235314135433536343345433734303331333043323234364538363136434541323545414337413030373637333146454138434334334243453342450A393333464345363130363746354644343032453637453242394441443935344141373743354243383642433545344243453245443637364438443845433744300A414243354338364438323138304239443544373435314337314235313439423642363738383335373844453939303933313739323843304139324533323035450A463233303135343030413137363341364642463637464445333331384144323639363638354131383332464333314346333835383945424337434131433831380A363044324232323131453034454643434541383844394139303832453832393531454542313233393234413236374342303343343838383930333246323839320A343232374532313746413238463837453031434246323742463145413630363431413432333832353843423741413335353930384645333644393046354341440A464539393244303341333345343743413941454245464441353737393346333944433641394538354435423238394636423836324233354442434638324534330A354344364138363246364646414333363437384333383443334244423031343843423146454446353539363943373736453737393137363335423541363545420A463241443335314432314344333832324434333238394645384542304645443538313832393937303937433745394634333733353533414531434139323038330A454445334242453643334243373030394431354142354645433641353945394644314243433742323039394341313546454630383342394342463742383930450A434444444536424130414646333036433736353030433934354443393142443533334646394135383543454544454637393233384335344536313638303031450A323646454232394535323345453530314246413446363042373832423134393942303730383443333541323433344234443239443344384532433846393435460A413939323234343342363844303744463745414131463443444546464334333842353937443839343345323331423532313638303841383546333045444338310A394446354444323246353441343533333542344332323033383837343735463339443234374630453733343742414346454146323230454438324639323633410A363438384537334331393130303233453530354644454231343330303643314133353144343431414335374639443532443243364436334437384337353630350A393939383835363736424242414435363037343239384530424644414342413138333042413538453837463433364343363730454538454231383730313534440A373244444242463337393446384341414133463145313144453239373532444439394541433639353833384131394242363741314641333832394236453042430A353330313631304130333531414141373439463435364145333141444438374436414241444344443146423343453831433337313346343837383044463430370A353330434232383442324143373039463532454537414436343744454639464134443241383637434345463732384633443430434633344332384432313532370A313031363042334441464235464531364146433944333643364543343032314643313839303035383632303832424541363041433732423633414432374437320A464146334332443839444132363438464334433635313034413036393231324438373134344538353333434438364136443733444337434439444241323543450A374441353342303030323636463338373142323436363343373737323337303333313543354534413839444643444241423338344145374542324634353541450A414231393146454434303646374636454339453542383237364546354334434241303431414337453842434543374341453834303135344244434133323332460A313537313141424431453836374134333445393738374341304136443146313937353937444132374544323430324342324438344544303832453844334133390A383145364542323730444341344537413930453242454244334342423341324245334341423932363139324437323932434331363834354236333939413534330A424346443232344242353246323133353237333244423531353446413334343237333330363643444333453138364438414139374344383031444642453433410A313136433836383839424531393844413838434139373842384334304143423637453846374241343939444536384136464630444337324333443030424131410A423337384233393631304631354341303236463935454438313535434533464646464132453246454233353244424531344345453136363946323338374237300A353542393131383546424245443736343236363231354435313837313645444133444643394535444236423134384135353345373541453545333845314346430A364546343742333134443534434632344243313338353646344637433937364242393144313433444533324646343942464643383745313738383541313839330A424131423845343431423038454643303446374431303343314646424236363531393442334430393230343733373430433535464231433530454243463731370A413233353942363837464345414436353631364545383941363846384439314146414341413042323338454534414630323739414635424535323934433344450A413745314635453632343843303231304537443430363833463034423132413933334337343645434235313743463934424243433645344346343941433731350A443830303541464543424446423741364234313744423841323846384539454146333943454331434136344446333741354536364137364332364637323146380A413633423030334130343041363246383744434636314232393846393630443531304245464134353346313138453539453744453843413344443030324546300A313237454146373333443543363142353133323334384432383046383444313539383039434337314133433646373337334242464438443645463731354433340A303031364445464631344141354639363042463142423941433330344131383233373232383433353437424234434135454134433431433643323730314338460A374244433831303434334639444633344241343639413332363030303942373939383731424146383532334338373633353434444344304233383244343443350A463735303436414646383546304235413331383843324545373836434545453534393641354146344243423042343239434146433430334642393833454645330A363146443946353241444643333845303741304644374241434241353330443245344441423235393241413935363438343345374532333035303437463036300A433546453432343346413846444631423544344636314143413738353041363034464243364436393730393539373532363935433930463738393631423445320A433843464134313038324231413337343035414142434545354241334443324239454137364634383631313742383437323845433644384145363337394343420A343032433241413839303738454339393243303044353331353145394438324336353634334635343941353732413230463035313037413431424535414335370A384544453932414532304230354532443043393831353143433932443533383941363735444645333944463534364133334138344134433533343333374144450A423137433334453039313435423337434531454231443130443432434338443645364231323741333830394637323032333831464442383844343230383443440A304145414542384138323838434235363837304541324245394430423944433832393130323143413536314532424133383844413334393445343333453045450A354536394441353144304143353035433946373135363244334539373530463233434631344432433845434630363932464242434234413932423438423442300A414132313633413531364144393642393335344243444245424233353142363433424633434230303434364146464334413133374342393238453939443632360A343832343338354631453943454145364533313734353142344544323145463031414343354142413938354642313445453730323437464133423636454345450A343331333532454434353138323631344541334435374244433232453541303444354141423237433841444344374243303742424142323141313930314633390A344339433030384433353346304545443433374243303044324536354133363532333631443530453136433738354236364443314435353139363146363431420A303332453133334133314136314133333545413330323436393336333938373232343135384242434143393133353745373944433846343039413932384542310A384531464643444338314537423434334543463041364437323846414239363339353436304233334635374341394238384337343642394237423435334434430A303735354238303244443331453835344335324441303830344236313142363031344244463931424637364236453439314634424435433436353734464443450A363733423033463344364644354638423836304132353536464345393846444341464138314233354441413037424544423339414441413034314245354544300A303245453536363346314331333939373944313142424235313639334331333531344346303043433746394539414133383732364436423141454441414134360A464546453239303833313037314530333546363845394642324142373731444644394537454233453235354244334644353146333235414630414142303346330A433030313335314243433335374534394638413934413734383139393142363233394337443438433544353544334645443239304446364146423245323345460A314642363330323244383233304134304233343534363730354430393730394332413032463231393433344539353144464138324131333339433039353732330A313031393043344341354639423946393831373933383232313646453734333831413030314142323238303636444337303634393344313236374632323633420A0A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A636C656172746F6D61726B0A7B726573746F72657D69660A2525456E64466F6E74200A2525426567696E466F6E743A20434D4D4931300A252150532D41646F6265466F6E742D312E303A20434D4D493130203030332E3030320A25255469746C653A20434D4D4931300A2556657273696F6E3A203030332E3030320A25254372656174696F6E446174653A204D6F6E204A756C2031332031363A31373A303020323030390A252543726561746F723A204461766964204D2E204A6F6E65730A25436F707972696768743A20436F707972696768742028632920313939372C203230303920416D65726963616E204D617468656D61746963616C20536F63696574790A25436F707972696768743A20283C687474703A2F2F7777772E616D732E6F72673E292C207769746820526573657276656420466F6E74204E616D6520434D4D4931302E0A25205468697320466F6E7420536F667477617265206973206C6963656E73656420756E646572207468652053494C204F70656E20466F6E74204C6963656E73652C2056657273696F6E20312E312E0A252054686973206C6963656E736520697320696E20746865206163636F6D70616E79696E672066696C65204F464C2E7478742C20616E6420697320616C736F0A2520617661696C61626C6520776974682061204641512061743A20687474703A2F2F736372697074732E73696C2E6F72672F4F464C2E0A2525456E64436F6D6D656E74730A466F6E744469726563746F72792F434D4D493130206B6E6F776E7B2F434D4D4931302066696E64666F6E74206475702F556E697175654944206B6E6F776E7B6475700A2F556E69717565494420676574203530383733383520657120657863682F466F6E745479706520676574203120657120616E647D7B706F702066616C73657D6966656C73650A7B7361766520747275657D7B66616C73657D6966656C73657D7B66616C73657D6966656C73650A3131206469637420626567696E0A2F466F6E74547970652031206465660A2F466F6E744D6174726978205B302E3030312030203020302E30303120302030205D726561646F6E6C79206465660A2F466F6E744E616D65202F434D4D493130206465660A2F466F6E7442426F78207B2D3332202D323530203130343820373530207D726561646F6E6C79206465660A2F556E6971756549442035303837333835206465660A2F5061696E74547970652030206465660A2F466F6E74496E666F20313020646963742064757020626567696E0A2F76657273696F6E20283030332E3030322920726561646F6E6C79206465660A2F4E6F746963652028436F70797269676874205C303530635C30353120313939372C203230303920416D65726963616E204D617468656D61746963616C20536F6369657479205C3035303C687474703A2F2F7777772E616D732E6F72673E5C3035312C207769746820526573657276656420466F6E74204E616D6520434D4D4931302E2920726561646F6E6C79206465660A2F46756C6C4E616D652028434D4D4931302920726561646F6E6C79206465660A2F46616D696C794E616D652028436F6D7075746572204D6F6465726E2920726561646F6E6C79206465660A2F57656967687420284D656469756D2920726561646F6E6C79206465660A2F4974616C6963416E676C65202D31342E3034206465660A2F6973466978656450697463682066616C7365206465660A2F556E6465726C696E65506F736974696F6E202D313030206465660A2F556E6465726C696E65546869636B6E657373203530206465660A2F617363656E7420373530206465660A656E6420726561646F6E6C79206465660A2F456E636F64696E67203235362061727261790A30203120323535207B3120696E6465782065786368202F2E6E6F74646566207075747D20666F720A647570203635202F41207075740A647570203636202F42207075740A726561646F6E6C79206465660A63757272656E746469637420656E640A63757272656E7466696C652065657865630A443944363646363333423834364142323834424346384230343131423737324445354345334330354546393846383538333232444345413435453038373443350A343544323546453139323533394439434441344241413436443943343331343635453641424634453432373146383945444544374633374245344233314642340A373933344636324431463436453836373146363239304436464646363031443439333742463731433232443630464238303041313537393634323145334141370A373243353030353031443842313043303039334636343637433535333235304637433237423243334438393337373236313441383436333734413835424334450A424543304230413839433443313631433339353645434532353237344239363243383534453533354634313832373946453236443846383345333843354338390A393734453941323234423343424546393041393237374146313045304337434143384443313143343144433138423831344137363832453546303234383637340A313134353342433831433434333430374146343141463841383331413835413730304346433635453231383142434246424337383738444642443534364143320A314546364343353237464545413034344237433845363836333637453932304635373541443538353338373335384646463431424342323132393232373931430A374230424433424544374336443846334439443532443046313831434434443136344537353835314430344636343330394438313041304445413145323537420A304437363333434546453933464546394432464237393031343533413436463841434130303733353844393034453031383941453742373232313534353038350A454444334435413343454143443630323338363146313343384133343541363831313534323545393442384644434345433132353534353445433345374133370A343034463643303041334243434638353142393239443446453636423644384644314330433830313330353431363039373539463138454630374243443133330A373843424334413044384137393641323537343236304336413935324341373344394542354332383335364635433930443141353944433738383736324246460A413142364630363134393538443039373531433044423233303934303646364234343839313235423331433544443336354232463134304342354534324345450A383842453131433731373645364242433930443234453430393536323739464244433944383941364334413146344432374543353746343936363032464243340A433835343134333930334135334546313138384431313743343946384236463234393842343639384332354632433545384438424438333332303646383846430A424435423439354542393933413236423630353542443042424132423344444644343632433339453032324434413137363043383435454134343844454438380A393843343442414142383543443034323345303031353443343734313234304542334132323930423637313434413443383043383842453344353941443736300A453535334441433445384241303042303633393842314430444645393646423839343439443441453138434538423237414645373544324238344546444234340A313433464438383746384642333634443030303635313931324534304230424145444441354144353741334243304534313145314144393038433737444345330A393831393835463938453235384139424233413142383435464334413231424343353435353945353142433045364332324630433338353430463843393439300A383841304532334541353034464137394638393630434339443538363131433531394433414344433633464232464243414536363734333537443746323238350A344243433946353444334441343231443734344433413334314441334234393442423532364330373334453141384643373135303137343533393946373638330A464431374543333034343431394138384333393739464432414241354230313330393037423134354138343632414146304139423531314432433841374337460A333437464636414330353745363531323930324246443239313845324344333144453631354635443634333736344539303042363032383736373041453138460A464445313535343544384243363935393141384342424232373541464643394231344244363844463041414233323236384642383438343444344442433742420A433539314331414335313032433530413943374241414138343844413838423035313946304635463038313342463035354346304533433836463633334130340A423737394432453845363536444231453039413636413835464532314341384241353532334634373241323239453833463243344539314142413436433733330A463343374235373735423036433937373832424332323543343633383542454244433631353732343538454643354346343139304142374139433143393244410A323946383442414143463535323038393139353936364533414439453537434339313444323042363936324245383034323941313644344446314543414136360A333643343334334641444630423242343846313245324542383434334334414132394430303934393235354633393638363137463938423841424434434331320A303438423833384545323433413231414338303842443239353139354534414539303237303035463532323538424643413931354338443941454439413243300A383038313446373943463934334642453335393443353330413232413932453131424538304643454331363834433446353637313244353834364230373439430A394235344139373942333135323232463230394445453732353833423033303933454333384637433542394639424342323144424538454444414539424538420A373541434536423132413331303833414338333438454338344431443239443232393741323636323834423745393733344532303744414635394132354634450A344141333835303945393933433533393446454437364536413246323534363236383543344338364336453843464339383633333338454331343238424446430A373436313642423142433839343842304544344338374331354234343035463341373739364639444233373938464646453842443041393445383334383137420A443545393831324533303844304343393230343730413646324344303838464342383034363242463743423346303339413744463344414635423242353335350A453038334133383543443245414630464331383145343045393644443745394142394546354337453638363641313342384135343731384539353046453039370A454630393531413335373131344631384345393933334432384233413737414137314533434538383436363146313332383442434544354435464431413836440A353433453538384646343733444332434639413444433331323530303133354632394332443031373442333230313843384442443430454639413233323838330A373130413146324142324344313133313233303041434446373839413942374239334432303335443831443143383439383444393244373841353341303043360A454441393442323442424143314144313737373441344530374536463734414244393034313539363536313641443534304338454344384333413434454534460A374634463642423632333843353036324436334641353942374246303842453933464145413730413241423038464245414146374442463536423935464439330A303343413430363534334241364339353237443044463031463531303844333141353137373841354542314339334632374237324234363134364133353341320A303143414342433832393630334239393839413837434636343532383638324343424130353632413831363542313835433538413543364242373246354538390A353030414343414142384543454642423236343045393945414545433445413937394141373933443031334436314438414346383738344646384439333938460A463641323532413730393332344642333935303946304233413445373235453832463533353433333833433637363542453535364343383937433735383230380A414133414433374230343036453441373946384630413643313938334643373345373143443835384330444236364544363644354439393239373836313445450A314541393145424531393145303832454241314643303430414631394132323032353735433245424542383035383833334533353230464130334432463931350A383543314544333337453435374239464545423043364546323733354546444136453044303546413634314243463639384143364239373735314538333036430A344446303041333942383538314646353344423846383532354644423139364438353935303930364343423539423845463137313334394141334235363742310A364130303831393934374139393546423338334333433137303943394132433131334232453430424238333242374434413046424130423136413243343535460A353538303943433432354334303345393636384443363642453435423731413831433333324644344442323739443232413239353939363233303441384631380A303835383933444143363133313744323441384631393846444142393546334238364630414644333530343742383638413941313730333741323832394130320A424142303432463735463334394531393741374545443431393834433238353937353443414644303235313433393932314332343842343633423531363935310A324531333232433830443733463943424341413633413538353435303237354143323439324534443346423738453830304637383832353444423545363130440A434637383844463543373046463939383932424344463136313333453334423234423737433846303937463534364238374336303344444238393938423636450A424143423638424132373436324146353441413430353638324543393644373031463044343734444543443546393543413231303244463633394542313639450A443531383136324332424145343546463639384236444531354643364537444534384333333643343041363730464432363935324136424142303931313545310A393931463030373334313946324343324131433038424539313039363933364141304333374534454433434343454532333534373630373442384646313132350A364244453337303146383535333244384242363443434339323743433333353238314339354541363839373036463041433731374443324346363830433735340A453545464437464134424238383830423242373237413936344338373644344132323330363944344536303031373731463045323345414432413442424338300A453736363735323937423245463035463532424634453731423345453242453330343843463038384337393534303131334336364145393842324644334342310A423037343141323135464430373038383243353237363530303944374437313144414132353038463139414537444441313532323941383536414334394243330A344444463430383134464639363530304534423942303244343132453934363233433546444343373643304642384534324446353641393034464534394436350A314441374335333930314232454137314142363538413436344433414244453237443944423844394530423438463634453631413234393541443544384441420A423545373234323441443031374446333739363441463931314244374641323141354542343737354443384539354546304330454238353642303044383944370A383137324131444538353330373637443331374238323536313033453533434642383737453130363836413034463541303846384443353844383433444542410A464435463430353937353838363633443130333638394636454233454231344430364531384338303738463235333842343345373132444634393146433543360A414636333932353643384336313334423634443536304438343736444541363332394439393545343643433442433738383431433539453733363438423437450A424641374445303834363432324637333834353441453737453832324130383334303532383932343742443743343738424534393734463734324344363035310A453939464242314431423346424142464545383535313734373334454534354538374430414144463332423132383342393131313632413939353538343746440A333839343444373035383446414136423141373139314335433133344237334639384542363332423639453246304330463934313536373837433334433841330A373632324130323944353846393632364237344638413841314633383033453042433230453045414445423145393942373046314244394639383046423735310A324138343238343344453432454231343241383444354433313338363239414539454146364633343739433432334538383239433838313646413645464132370A444345353538304536354141393835344231433634313633444333313834323043443939334331354246443736413842413131383238363041364230334436440A323242384346343343464536433841423237433634383432453233394341453730374433303836424144444531443743393445334243393633313934373044360A384432363931354335373543464444303332373144364242394445383641304542364545413645373638423232344136323643363241394142343841364544420A343446373042423541463939314344463937333644363539333345383143433537413738463632334633334543394146353335463246323546413445454339300A443530444237453837463331453937314137354133334133303143413630313345454335413445313739443639354233334441444632433938333634343334410A343239323637373630303042363130453137353234313632323533463646413633384436353831433138463939454130424431443245323444323432344144460A433035303130443038313932343835313533444430333933304337424634353233373539334534383446393835314536443436344641313046454341354439450A304338434343393744453032393033303930304344424234393143354346323236444246393033434645373733354439333943334644463341323042373043450A363635373942323842393933313346454539313445323935333838433742433845303535413245353445413341383230364433433846344637433042413545360A453531393431394644384345323135463742384539424543363034413945334645323732413033323841323445333139393743384139314530393436424346310A363934334139374342454432414239464336333642343938323842424238423839453042424332363533373936343331323234383935414241354441433431450A313835344244393736344538363134374644373632344637333646343044453342373538324544444644313543324244453346323242354135344437444631300A423837413133303143453835434643303631363839413839304133323134313241313333313441453936444344334544413735303335464444384634414239420A383937413243363832363341363834353730333243343639393837393730363438424132443838423143353337354446454141333541393137423841393532450A454536373034323739343241454442334342353939433537343631383045333932383337443337314531354438363036323041424442364141373737324334300A413545333436363631363733414341353330424533443845334646423839354535444133444332334231423433433038304337374637453437383437463046330A463341413543413945344246373546433545424431384431394632314137444141334231314341424336453430373041313546374442433842303545423641410A413032454631423037384542363644363144364146453431444139423336464537454339454639344431454132363238324139383731453243414342333132360A324144343943324439423530413645343744384632434341443530393932443142343330393739413435464439453736313832413139393634424232413146360A353137373941324232353844433144463443324633303734363231323836383331463338343841433135324444443242413536314536353836414441383844330A353938413243453243443034384630323743453030303842383238424439313538383744373738353334314538333035444632333436414442373642453939460A383742303231373342444333333445393232314338444635343131344136423234433143353334303239393531324641364338433531414234433837373843450A313738434546353331433644314235464630413142453845464637363746393539424434433334354335323639394132394131374232413233303834324246360A344230313132313744364432344544414333463644353334383237383646314341333331363942393045434434393934303744333743453942373044444637380A374237353437423332393532353335424139414344314532343434343741453346434544334146323837313730383343463935393041303937383039383444360A414630373433433832414534464233453242423238353641343135334133393637413032334646433335333832443643323244383441393234393030423641360A334444443430304536443234313844413643323746324641333443303735433930324238394542414536353842334339413138454545343439444135413337390A333337444539354342374142334630393730434631413544384641443830393045343935353730464446423246424241373932343437383044383033353534370A433541353542423231413232373046373234424635443434324344433542423946303942453043414535394231433232373046304244414345363938463243350A444538463636424642393633343930344231363146354241324231393530303438333030443639424142443331324435384438394334454435323741463742410A374441323437384544433243444545333437334444384138454439443839314344314643323146323330313332323842423332383142373146434539353942440A364638453930353944363832413746434335323635413036323039393244344641384437383337374542333443453345434130373045453337303732333942430A393839303744423031323043453432414241333243463937313237453238333832424444464436383536373432373946353838443446393531323136433335350A383231333631373930463634433243433732304445393745384543423537333236433433454534373336373632384530353736394531303638363842353446340A433333433939353139303844463646433446354544324337373837424438464135393142424233453943364331444139344343354533384439423230433838360A374432333735373246463436444438393641344436313633343038454136434546414333393845453034314541453239443537374537353332364341313741360A423037324434374137423133454334343143453644414130343245434430323133344342464136383039413433353035303431333831373139334441454231360A413538383243384145413434424346333645373445394543434446453745313946463541354444374139344535414234463837303243334441374634323332350A323343383038363730413034393046354233373344414445343038313446463936353032343144334436394339314642433545434537323846383237443942460A433932383630324530353437373930333434394530373931363443413339383539433442434136304335373946343930414134353546383242353035304242330A393639414642343738453044344132353742333335364541334344363230353146434536433642313932394346463835424644463136364245463635384531300A334135354530303746333845424242323438423346304238454431393235313036423439394237363245343531313341453141433944453039363434433834420A394330383033344232393733313445453639424333324442364537443746423939313343453541433137453733333539373945394443434532424142333732350A313937363135353535314639373036413537364645304533414443434637324338373638333239313532384543423734394342304544323931393636453233390A423545333633303637364244343039453038463835424331414543394132443431333533373632383441393645413234343331323433424436464538423936360A393546313141344242353346333932453041454645413632333036344646384137303032333637423041353135363335434232443244444642394234413844370A464537323137353445383142424135343838343841323335423931414434453446374442313943434532463631443237374643303041423935364542393342450A343441423439373043413536424635393530364339344544313630464231453235443344463239383841353332424442373837424642383533394432323938360A464443333738414333313434344536334334373237464545313231413433373531303433383439453644434143354235394430464337303341414642424644340A453842374332363846323136313541443032434539444142454641323742354645364136343431423631393533394341423146383130463132363334343741410A363333463544414634383337353245463141303432313734304533413831314432443238393843424635334537463638364339323233464437323335463032440A364639304432443438434332304142383737373844453343364642333335453046304543323042354443354236353232334645313137353236444532433732460A464538333944463933434232413744363643443930304342333235463839314533313142454339333246373033464234464546413239444238423943383844440A333735454337314233443538433742433539414441393139373141334244413141444541363239434536434339324244353432434444464141373730364642320A364344444532444630374535364436373431393136414538453837343433333938313646334536433338303632373437414139464441324132363738413642370A454645413837304141334134443731423235454533303133454142314442413334343031423836374337413431414535314530343231443431443342423833430A453132304338464541424136453544454335334136383943323134323644344242434236384342333735363837363143333630453644344533353936464237440A463444454337393138453538433032393344313244364444413745394443444141443743393339463535434431424334413232384233314539413930343135360A444136423430423038453641434536373436313842373638444436383143373732413345353546453039364346393439434633423034363041424443443839310A443137423337423335354232394142353133373839394330333646333144413032363234344641323546423739384642453531303542444132394634363533380A443344334143313030314137424345434536344445393446464536433335343136364130463937323536313337424446413037463645323241334431443246340A393538384442414539354538393542433545363444444342424141384430413232433232394234324342373137464337313145374539444637393344463830420A394631343735343538354133433745313746333742333239323442394639383730444138363335453345313842443144434438314544463031383334443943360A423333463233433935364332464342464134374438343432324635383334353944383237443145313230423937363934443132463146353444303233373943300A443238384637313034463346464346344637364533343934463441434244314245334131353534334343363830393234433738413437334638453331314144460A384645303041303443364333393344453631414433454441354243303331453233353330373641323438393339314235323633323338374341323841374239330A464242303635413645463336353841453830423141444134374539423235333945373341373146413735363435463835454438454343323537464234434632360A423643393132444539443046393839394537304245434342393334414433324346343941303933333731413946373344453632353545424333394445314537460A303044304342444142443444303338333937374536393438393045373146424535433337364245354633413830433238393837343137353034463531354335300A393039463344333131373842423942314430383542453531344637314239313041393038354244363132324444433732413135304246453236363932304534390A353636314243423442414235314436444546453332423631363936334442443938394643444431363337423239344345344532383836353546424546413142460A374632354242463843463137433244354644313631413743324343394343373439304439424631354131443335423342464134334144453235364538384244410A424434393044393239303743353742414334303841353735454338344436414545303730313438433743394139314330334230394644424437393245384646300A433042383836414144324544443836353431453545353739333539443430453341433331324143443344384644343946373142443533334444463838353942310A424146313746313838344533333144443037434545463933423731443439324145424141444637413236333435304137413732323130434536333041304433370A424630323442444330394143433838323831364238433232433632414533384133413844304636454243324231423243304238313631413842303736444435440A344237373943303738383534364242344346353733333232333044323337383536423030443739433238413743303144313146343442373330344636393037350A393442393741373435444134334431424535363133373243453631314333343541383433383334453436414439444442313643414243443346413333443646310A463642354330343937463545453534303042333035434443313641374543323836414134443435443045454242394441303641433943353239344436384543390A453444433343413242393243453846433035323631383441383645444337414233344436374536304143313244394341384644333030323335454339363842410A393243364642444134373537324243353630304632353234394636304144323837434244414539383045373437464342453745453543443332334537333346300A363335353342343934443344444542394343313438304235433342423739413238453431394141363542313843423239374142333833343139453839304532410A434536463938433939303043434234363735323830413130434630363042384432323044444131424535354446413635373135454142434331414641413237310A423146383733323334313631334531374232333132333141304432344434443746433139384145303444383941393943343533363231373736394336464244390A354545323441363330324639373433384637433045333131433837384636373442343437374135414441333935324344453430353541433430384238313734450A383646384642373937363436444646464530454341323544314241423941394637314633393236443344383541413633453741384339333144373145373945300A414631454143323646414445343638463446463746333836314431344331304533424531463945414644364433413534344538313038443544414235423138300A333935304337343831384243384146343735384131303846343632454631383236363437413439363637463545343832303338433534373136383536443942430A333546323939323238343644323134384639324639343345393531443734333843373344364136303435394138303033313734303336433634453136323943440A313535443437464430344230334330323341443637434435413730433938414235353645454142384334383136393730364535423335324636353035443538300A414339343531373142464536324538314638463530303433384143334236344438353742413542433534433243344242423233374638464135313239363235350A453636413932413631464531334644453738314433393335353745423732434542414438363531313033354637373546414333394130343739434344343030460A323236373039313138463838374634374343324543433846373938313644344139343542323834354635304146443632443843394139424246343733393439360A394536343442433946374230343830334237454537354130394541453934333635463646333734423446434542304235303643373632393735363442394236420A384238313242433341333339323941413934363932353732423031304536323130414541413331324244464338384246333032323434414239443538374139420A393139383233464430314445313234333844393630393434443139373738303046454234394536333843333245354231383842314341303333453043333745450A413134324637343633363738383841413131393533354630434341463745414134363142373930454230383944324436393632453238413339383433394242370A394339393433363534443741324437363542343642433044443146393135333237463336393136324531424131424138333131304239334634343239303545300A353233424646354532373935303841393835363843443543464431384641424245394431373236354139303831453742463634313535413243453343304446370A383844303036373141443635363534373039353839424144374541363542424138313133383741424135434130424333463636443344343835393741304431440A324332363833373544463437434346363231363632363241453438343041423033424634394245363741303545463636333238454337323946303343413546460A414433393337464330353345323233333033353635444337373141434633324536334446423936443530333045373837393631443732443032433139354336360A423438453941463033303944433136394346453844313645323831384441393436393341313846303237444541304439313733363333443942353034343945300A463930323645374134434331413336393444364330333045354145353343304441414639304230303436453232453134464632373837414338313934433432410A344238383436383536414433354441343136463736434641353444343138344241343735313044344346413842343545363339334143304541443238353941370A464345323042463435453038323736423535373936324241453838464146313831443142373730384133463737343745373331393137333842463635453745320A303431314138373633313036394130333833453437374532453032353435344239413435434532303231304241454630373733454331303030354531443034340A344239444535393938443544343642453939423532443536373445433332314532414438414439313331313739324635344143413532323141314446384344370A333745304338393933364533444134424133313542393836323243304536323744443837413032313338453439303632444138434141364131344246424332310A393344443641463944324230453144383630424333304434463131453833334542353742393234353832454142423144384230364637364136384641383031350A363139323545434343344130454239464244323344303038304541394532323037423842433642463745463437313836453033354239333332424331384441330A353536434143373742383237363936314345323941323746413632423545323045343244314231323334304532383235383536454142353841343732453336380A344636413338423931354144373138434335453630354344443237414344323537364336343937433630353838334132424633443333343735343646434232450A333437333734304342434630343830444338343534453342453041344139364439433937303237334335393537394134333439433436334236304144313445310A414437353441314139354339454530463638303631344431344130394643383334333538354335364439373339374237413530344342423641354332413537330A433143423935393131313937303634324645423532464537323244343739463545424632453632333543424137463343334131383043373035344134384637370A443234333438353837393232363041444536373043304335314432354530333530333744424430314537353938303732313144423237314237423641303032450A363138333336313038393935454632344544303231434631324330303946463436443142383339383630384534413330383535314545434339344634353344360A423739343239354533313335443433313932413039373031304533353734333145324537383430443543373643364545443133303830413945373638394243300A343730333644343939384531424431344146373232303438363130303231374146374134374336384137433937434535313646414630344635363737373441350A30363334353436323235313035434241463144424434463045354545463139443945323439383730394442463242313934433539413537373339323932420A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A636C656172746F6D61726B0A7B726573746F72657D69660A2525456E64466F6E74200A5465584469637420626567696E203430323538343337203532303939313534203130303020363030203630302028544D507879706963544D502E647669290A407374617274202F4661203135335B203332203130325B7B207D20312035382E31313534202F434D4D4937207266202F4662203230385B20300A33315B20302031355B7B207D20322038332E303232202F5859425449502D4D656469756D207266202F4663203230385B20302033315B20300A31355B7B207D20322038332E303232202F5859415449502D4D656469756D207266202F4664203132385B20302033315B20302039355B7B207D20320A38332E303232202F58594253514C2D4D656469756D207266202F4665203230355B2033332033332034395B7B207D20322035382E313135340A2F434D5237207266202F4666203138395B2036332036322036355B7B207D20322038332E303232202F434D4D49313020726620656E640A2525456E6450726F6C6F670A2525426567696E53657475700A2525466561747572653A202A5265736F6C7574696F6E203630306470690A5465584469637420626567696E0A20656E640A2525456E6453657475700A5465584469637420626567696E2031203020626F70204666203534302035363220612841297020466520363032203537342061283129700A466420363130203537392061285C3137372920363331203630302079285F297020466320353839203739392061285C30313729700A4662285C303137297020353838203739392034203230302076204661203734342035303520612866297020466320383633203534310A61282F2970204662282F2970203636342035343320323030203420762046662038383820353632206128422970204665203935310A35373420612831297020466420393539203537392061285C3137372920393830203630302079285F297020466320393338203739390A61285C3031372970204662285C30313729702039333720373939203420323030207620466620353430203838302061284129702046650A36303220383932206128322970204661203734342038323420612866297020466320383633203836302061282F2970204662282F29700A36363420383631203230302034207620466620383838203838302061284229702046652039353120383932206128322970206479790A656F7020656E640A2525547261696C65720A0A7573657264696374202F656E642D686F6F6B206B6E6F776E7B656E642D686F6F6B7D69660A2525454F460A>|ps>||||>>

      Then for <math|\<Gamma\>> closed conic in <math|B<rsub|2>> such that
      <math|N<rsub|f>\<cap\>\<Gamma\>= \<varnothing\>> we have the following
      diagram commuting

      <\center>
        <image|<tuple|<#252150532D41646F62652D322E3020455053462D322E300A252543726561746F723A20706476697073286B292070312E376220436F707972696768742032303130204153434949204D4544494120574F524B532E2028707465782D7374616666406D6C2E61736369696D772E6A70290A25252B206261736564206F6E206476697073286B2920352E393864657620436F707972696768742032303130205261646963616C2045796520536F66747761726520287777772E7261646963616C6579652E636F6D290A25255469746C653A20544D507879706963544D502E6476690A25254372656174696F6E446174653A20546875204465632033312031313A32323A353820323031350A2525426F756E64696E67426F783A203133362036303520323739203636330A2525446F63756D656E74466F6E74733A20434D5359313020434D53593720434D523720434D4D493720434D53593520434D523520434D52313020434D4D4931300A25252B205859415449502D4D656469756D205859425449502D4D656469756D20434D4D49350A2525456E64436F6D6D656E74730A254456495053576562506167653A20287777772E7261646963616C6579652E636F6D290A254456495053436F6D6D616E644C696E653A206476697073202D71202D66202D4520544D507879706963544D502E647669202D6F20544D507879706963544D502E6570730A254456495053506172616D65746572733A206470693D3630300A254456495053536F757263653A2020546558206F757470757420323031352E31322E33313A313132320A2525426567696E50726F635365743A207465782E70726F203020300A25210A2F5465584469637420333030206469637420646566205465584469637420626567696E2F4E7B6465667D6465662F427B62696E64206465667D4E2F537B657863687D4E2F587B530A4E7D422F417B6475707D422F54527B7472616E736C6174657D4E2F69736C732066616C7365204E2F7673697A65203131203732206D756C204E2F6873697A6520382E352037320A6D756C204E2F6C616E64706C757339307B66616C73657D6465662F40726967696E7B69736C737B5B30206C616E64706C757339307B31202D317D7B2D3120317D6966656C736520300A3020305D636F6E6361747D6966203732205265736F6C7574696F6E2064697620373220565265736F6C7574696F6E20646976206E6567207363616C652069736C737B0A6C616E64706C757339307B565265736F6C7574696F6E20373220646976207673697A65206D756C203020657863687D7B5265736F6C7574696F6E202D373220646976206873697A650A6D756C20307D6966656C73652054527D6966205265736F6C7574696F6E20565265736F6C7574696F6E207673697A65202D373220646976203120616464206D756C2054525B0A6D61747269782063757272656E746D61747269787B41204120726F756E64207375622061627320302E3030303031206C747B726F756E647D69667D666F72616C6C20726F756E640A6578636820726F756E6420657863685D7365746D61747269787D4E2F406C616E6473636170657B2F69736C732074727565204E7D422F406D616E75616C666565647B0A737461747573646963742F6D616E75616C666565642074727565207075747D422F40636F706965737B2F23636F7069657320587D422F464D61745B3120302030202D31203020305D0A4E2F4642425B302030203020305D4E2F6E6E2030204E2F49456E2030204E2F6374722030204E2F64662D7461696C7B2F6E6E20382064696374204E206E6E20626567696E0A2F466F6E74547970652033204E2F466F6E744D617472697820666E747278204E2F466F6E7442426F7820464242204E20737472696E672F6261736520582061727261790A2F4269744D61707320582F4275696C64436861727B436861724275696C6465727D4E2F456E636F64696E672049456E204E20656E6420417B2F666F6F20736574666F6E747D320A617272617920636F707920637678204E206C6F61642030206E6E207075742F6374722030204E5B7D422F73662030204E2F64667B2F73662031204E2F666E74727820464D6174204E0A64662D7461696C7D422F6466737B6469762F736620582F666E7472785B736620302030207366206E6567203020305D4E2064662D7461696C7D422F457B706F70206E6E20410A646566696E65666F6E7420736574666F6E747D422F43777B43642041206C656E677468203520737562206765747D422F43687B43642041206C656E677468203420737562206765740A7D422F43787B3132382043642041206C656E67746820332073756220676574207375627D422F43797B43642041206C656E6774682032207375622067657420313237207375627D0A422F4364787B43642041206C656E677468203120737562206765747D422F43697B4364204120747970652F737472696E6774797065206E657B637472206765742F637472206374720A3120616464204E7D69667D422F436861724275696C6465727B736176652033203120726F6C6C205320412F6261736520676574203220696E6465782067657420530A2F4269744D617073206765742053206765742F4364205820706F702F6374722030204E20436478203020437820437920436820737562204378204377206164642043790A736574636163686564657669636520437720436820747275655B3120302030202D31202D2E3120437820737562204379202E31207375625D7B43697D696D6167656D61736B0A726573746F72657D422F447B2F63632058204120747970652F737472696E6774797065206E657B5D7D6966206E6E2F62617365206765742063632063747220707574206E6E0A2F4269744D6170732067657420532063747220532073662031206E657B412041206C656E6774682031207375622041203220696E64657820532067657420736620646976207075740A7D6966207075742F63747220637472203120616464204E7D422F497B636320312061646420447D422F626F707B75736572646963742F626F702D686F6F6B206B6E6F776E7B0A626F702D686F6F6B7D69662F53492073617665204E2040726967696E20302030206D6F7665746F2F56206D61747269782063757272656E746D6174726978204120312067657420410A6D756C20657863682030206765742041206D756C20616464202E3939206C747B2F51567D7B2F52567D6966656C7365206C6F61642064656620706F7020706F707D4E2F656F707B0A534920726573746F72652075736572646963742F656F702D686F6F6B206B6E6F776E7B656F702D686F6F6B7D69662073686F77706167657D4E2F4073746172747B0A75736572646963742F73746172742D686F6F6B206B6E6F776E7B73746172742D686F6F6B7D696620706F702F565265736F6C7574696F6E20582F5265736F6C7574696F6E20580A31303030206469762F4456496D616720582F49456E20323536206172726179204E203220737472696E6720302031203235357B49456E20532041203336302061646420333620340A696E64657820637672732063766E207075747D666F7220706F702036353738312E3736206469762F7673697A6520582036353738312E3736206469762F6873697A6520587D4E0A2F6469722030206465662F6479797B2F6469722030206465667D422F6479747B2F6469722031206465667D422F6474797B2F6469722032206465667D422F6474747B2F64697220330A6465667D422F707B64697220322065717B2D393020726F746174652073686F7720393020726F746174657D7B64697220332065717B2D393020726F746174652073686F772039300A726F746174657D7B73686F777D6966656C73657D6966656C73657D4E2F524D61745B3120302030202D31203020305D4E2F42446F742032363020737472696E67204E2F527820300A4E2F52792030204E2F567B7D422F52562F767B2F527920582F5278205820567D42207374617475736469637420626567696E2F70726F647563742077686572657B706F700A66616C73655B28446973706C617929284E65585429284C617365725772697465722031362F363030295D7B41206C656E6774682070726F64756374206C656E677468206C657B410A6C656E6774682070726F6475637420657863682030206578636820676574696E74657276616C2065717B706F70207472756520657869747D69667D7B706F707D6966656C73657D0A666F72616C6C7D7B66616C73657D6966656C736520656E647B7B6773617665205452202D2E31202E3120545220312031207363616C652052782052792066616C736520524D61747B0A42446F747D696D6167656D61736B2067726573746F72657D7D7B7B6773617665205452202D2E31202E31205452205278205279207363616C65203120312066616C736520524D61740A7B42446F747D696D6167656D61736B2067726573746F72657D7D6966656C736520422F51567B6773617665206E657770617468207472616E73666F726D20726F756E6420657863680A726F756E64206578636820697472616E73666F726D206D6F7665746F205278203020726C696E65746F2030205279206E656720726C696E65746F205278206E656720300A726C696E65746F2066696C6C2067726573746F72657D422F617B6D6F7665746F7D422F64656C74612030204E2F7461696C7B412F64656C74612058203020726D6F7665746F7D420A2F4D7B5320702064656C746120616464207461696C7D422F627B532070207461696C7D422F637B2D34204D7D422F647B2D33204D7D422F657B2D32204D7D422F667B2D31204D7D0A422F677B30204D7D422F687B31204D7D422F697B32204D7D422F6A7B33204D7D422F6B7B34204D7D422F777B3020726D6F7665746F7D422F6C7B70202D3420777D422F6D7B700A2D3320777D422F6E7B70202D3220777D422F6F7B70202D3120777D422F717B70203120777D422F727B70203220777D422F737B70203320777D422F747B70203420777D422F787B0A30205320726D6F7665746F7D422F797B33203220726F6C6C207020617D422F626F737B2F53532073617665204E7D422F656F737B535320726573746F72657D4220656E640A0A2525456E6450726F635365740A2525426567696E50726F635365743A2074657870732E70726F203020300A25210A5465584469637420626567696E2F72667B66696E64666F6E7420647570206C656E677468203120616464206469637420626567696E7B3120696E6465782F464944206E6520320A696E6465782F556E697175654944206E6520616E647B6465667D7B706F7020706F707D6966656C73657D666F72616C6C5B3120696E64657820302036202D3120726F6C6C0A65786563203020657863682035202D3120726F6C6C20565265736F6C7574696F6E205265736F6C7574696F6E20646976206D756C206E6567203020305D466F6E745479706520300A6E657B2F4D657472696373206578636820646566206469637420626567696E20456E636F64696E677B657863682064757020747970652F696E746567657274797065206E657B0A706F7020706F70203120737562206475702030206C657B706F707D7B5B7D6966656C73657D7B466F6E744D617472697820302067657420646976204D6574726963732030206765740A646976206465667D6966656C73657D666F72616C6C204D6574726963732F4D6574726963732063757272656E746469637420656E64206465667D7B7B3120696E64657820747970650A2F6E616D65747970652065717B657869747D6966206578636820706F707D6C6F6F707D6966656C73655B3220696E6465782063757272656E746469637420656E640A646566696E65666F6E742033202D3120726F6C6C206D616B65666F6E742F736574666F6E74206376785D637678206465667D6465662F4F626C69717565536C616E747B6475700A73696E205320636F7320646976206E65677D422F536C616E74466F6E747B3420696E646578206D756C206164647D6465662F457874656E64466F6E747B33202D3120726F6C6C0A6D756C20657863687D6465662F5265456E636F6465466F6E747B43686172537472696E67732072636865636B7B2F456E636F64696E672066616C736520646566206475705B0A657863687B6475702043686172537472696E67732065786368206B6E6F776E206E6F747B706F702F2E6E6F746465662F456E636F64696E672074727565206465667D69667D0A666F72616C6C20456E636F64696E677B5D6578636820706F707D7B636C656172746F6D61726B7D6966656C73657D69662F456E636F64696E672065786368206465667D6465660A656E640A0A2525456E6450726F635365740A2525426567696E466F6E743A20434D4D49350A252150532D41646F6265466F6E742D312E303A20434D4D4935203030332E3030320A25255469746C653A20434D4D49350A2556657273696F6E3A203030332E3030320A25254372656174696F6E446174653A204D6F6E204A756C2031332031363A31373A303020323030390A252543726561746F723A204461766964204D2E204A6F6E65730A25436F707972696768743A20436F707972696768742028632920313939372C203230303920416D65726963616E204D617468656D61746963616C20536F63696574790A25436F707972696768743A20283C687474703A2F2F7777772E616D732E6F72673E292C207769746820526573657276656420466F6E74204E616D6520434D4D49352E0A25205468697320466F6E7420536F667477617265206973206C6963656E73656420756E646572207468652053494C204F70656E20466F6E74204C6963656E73652C2056657273696F6E20312E312E0A252054686973206C6963656E736520697320696E20746865206163636F6D70616E79696E672066696C65204F464C2E7478742C20616E6420697320616C736F0A2520617661696C61626C6520776974682061204641512061743A20687474703A2F2F736372697074732E73696C2E6F72672F4F464C2E0A2525456E64436F6D6D656E74730A466F6E744469726563746F72792F434D4D4935206B6E6F776E7B2F434D4D49352066696E64666F6E74206475702F556E697175654944206B6E6F776E7B6475700A2F556E69717565494420676574203530383733383020657120657863682F466F6E745479706520676574203120657120616E647D7B706F702066616C73657D6966656C73650A7B7361766520747275657D7B66616C73657D6966656C73657D7B66616C73657D6966656C73650A3131206469637420626567696E0A2F466F6E74547970652031206465660A2F466F6E744D6174726978205B302E3030312030203020302E30303120302030205D726561646F6E6C79206465660A2F466F6E744E616D65202F434D4D4935206465660A2F466F6E7442426F78207B3337202D323530203133343920373530207D726561646F6E6C79206465660A2F556E6971756549442035303837333830206465660A2F5061696E74547970652030206465660A2F466F6E74496E666F20313020646963742064757020626567696E0A2F76657273696F6E20283030332E3030322920726561646F6E6C79206465660A2F4E6F746963652028436F70797269676874205C303530635C30353120313939372C203230303920416D65726963616E204D617468656D61746963616C20536F6369657479205C3035303C687474703A2F2F7777772E616D732E6F72673E5C3035312C207769746820526573657276656420466F6E74204E616D6520434D4D49352E2920726561646F6E6C79206465660A2F46756C6C4E616D652028434D4D49352920726561646F6E6C79206465660A2F46616D696C794E616D652028436F6D7075746572204D6F6465726E2920726561646F6E6C79206465660A2F57656967687420284D656469756D2920726561646F6E6C79206465660A2F4974616C6963416E676C65202D31342E3034206465660A2F6973466978656450697463682066616C7365206465660A2F556E6465726C696E65506F736974696F6E202D313030206465660A2F556E6465726C696E65546869636B6E657373203530206465660A2F617363656E7420373530206465660A656E6420726561646F6E6C79206465660A2F456E636F64696E67203235362061727261790A30203120323535207B3120696E6465782065786368202F2E6E6F74646566207075747D20666F720A647570203635202F41207075740A647570203636202F42207075740A726561646F6E6C79206465660A63757272656E746469637420656E640A63757272656E7466696C652065657865630A443944363646363333423834364142323834424346384230343131423737324445354345334330354546393846383538333232444345413435453038373443350A343544323546453139323533394439434441344241413436443943343331343635453641424634453432373146383945444544374633374245344233314642340A373933344636324431463436453836373146363239304436464646363031443439333742463731433232443630464238303041313537393634323145334141370A373243353030353031443842313043303039334636343637433535333235304637433237423243334438393337373236313441383436333734413835424334450A424543304230413839433443313631433339353645434532353237344239363243383534453533354634313832373946453236443846383345333843354338390A393734453941323234423343424546393041393237374146313045304337434143384443313143343144433138423831344137363832453546303234383637340A313134353342433831433434333430374146343141463841383331413835413730304346433635453231383142434246423943444233423931453139414139350A423630373039393936383743443339434530354230353031424330463139463446434535453139424341423139383943353431413437463030433439343745310A464437443536364439353434354132304132323833343537304543464437463137393730424242323734433137323935364244363435384433364133303641410A353141413430464138344142393941423344314334373235364132444336303534363741374632433737393633423244333143324344313937314646393632370A323344354239434531363344383441443330373133313446353535413536344343383243464238304230354533313730383534324441433538373833374536410A383730384238334141343532374544353233363233343139313233464237343346353434413639314646363243313732453646433432463145413944393646320A303233444538373835384644413338424633464439453241414335463035464542443238413544453145393746423142303346364437424346363441434244350A323030383345303632413530413142383643443238453544413738393336314131393531313237353633363536323532374441304342384136324330434638440A384134364541333530354537433539373432384338364233423035464646434441303439323839374143364336463638394543444634363846343934363344430A463139334445383345333444373345343844323345443337434331424143364431434636424646314336413031363542323142383434333236423431383537350A313845314430343443313836344232374146363541423441303331433736374642393144324346414131373239333836413743313632314438353935373246430A423630344233353435354438373044354137353744423742463434443944303739463446373046433636394139364130413130383046333239374236333533430A363136314530453831354330353445423637303937353241384331303444313737464442343936324239383832373045393533384539343445324646363731370A363338394442464539354237314539354543353733333545454634463345384537423034313639304635343033394435343639333730323842443045383734300A413946383731394530384144333837383738343230454246374438443138303742364135393445393845323742453843363331344241434539434543393443370A443537434233344141374446443036343737443632433938314439443638363235353831374132324533463439444444343742323846453743454243444130420A333035313545453845433536353432413345334536384239393045354245384644363542393533413045454532423036364645413538364337354534393738460A304130333537433043333733393741413232423945433844393038314234344337314344453739393139303344443545303731423837443038314135373036340A413134333034323038364545424638363430463336453631443841303035324337323643323546314233434343433641353838363845303043333044354344320A303334383335464246393939434343434531434130414443453341344545344133363437354646364430304531443741384544363543423032313346434337360A414237444138314239413937464546334135313735344134384337364538303139384132343735444236303437363233464342463243444338323732323941350A433144443745373931393743323943464635393145414539353437413142323144333831464130344438304538374634314339413030413731423534323443430A443735353044464533384343374246324231314238313046463039444443343830343642454146384544453743424638383437444130424435464143393344450A303945413641453937423139334539413331463131373443333337433732463443453238434435394143444539363937313243353737303145463343343845310A333843363530444137363634373044424132353244443946413635374637373338443331413836344532364138394330363138454236313142333642333231440A433438434430463130433431353745323130363537433643454134424530444130343746343134433136463138423841343945344537383331363441383346350A453539303430373532313532454335343941424332463834304544393535463930313838453846393145344634353333434235463432343738303239423930440A373641393936454233443939424446394531423330313941464330333035333634343943303432373544443738333433373032434333303234363144444145300A394345324141423336343134413334303636454437393343413733313337363741413839374146464636363736453141443544344533434233433341363642380A433545393143313730433431423732333344353434443845433346423645374536454246344531434642453439453346303037333232353645423234393541410A394432303641323045393032434643353745434133434431444633323443383334433735444539323743343733363530453446464232393935303935353743350A393331334544303746333433423642344644394633444244413942333234323735363537354146353444454141374336444239463142394531313238393839420A333132413530353431314545363336424542453038323336313043464343374433343731383545303943433841314137384341463746323043393636384339310A304441433630443838394431374246463342374144363934463538374144434244344534384633364446413334464539384342324538413137393239413638330A304236364530303546414333313141414641393831344443394342324445333035394530393636313036434644444231383033354542323535393036463834330A433834373342354536364538464234353832464237324244413446344545374138463341313738463032454631323634433036393244374342413242313930360A444332373333314638364236443838443332333346443734434138384437303431423441323032354137303234463436374236343232324143414132344442450A313132433833383836383231393934303434454535383030463146383146374635384143454230374431354532324433384542454136463543344637383936430A424132454333303146384644313530383332393636413043343645423335454433454644303139323335314146443146423943333934343534424231464237390A324242383646464635423834364634313243314432384335363043303042314645383736363834454338363445413646383845374230393543424142324232360A323945423639323839363142433538363333423744354135373436393936433344414136464342424432443432443539433132373342373836353131414630300A423630423045303443373336354534414143344143323032383841424442463041373034423646374341324439464336354345344146333641354343343633460A463937383434423739463737324631453043364634413644434437414145454631364134454439434142353545363932353836433543394445383730314133420A313131443135463939414434344133463337354537433441353331303230453941443543443737323132424146304639353136423745383635463546353034320A353035323445453635303232303946413536324339344145413435353546383638433946463638333638454336433245353232353345304338383231333243440A444442423833414631354446323942324443463531364130303444423937414139343837454332434231423737324538433834444231423832383431434536340A443444313046444142374531363245303739464342423944343637304142344432463931323845343831383341333838344542384337344445463746304537300A413538374133303043453833344137333932343441323337393336413738443331363137453446384432393845454637413738334243353733424634363445320A394644314630353932444241343430304143323533323744454332463238463845453043424431374630313245394531354646413938434631463146393236350A433245344238463341434543313032313936423446394639373344373437393739453338444133363535384436434546463335333843413745313432373335320A434643464130444445334330324134324641333943454135444545454335463346374645374331423141443938443531343436373732313935463038464242430A443843463436444641463744373841343342373046394236363034303642433433464244333233373443303232433341353843423234434334334144424438300A344537414436433431384645343344453331313736423931323834393643333331303835444246364641383833303432313638433046414641413944433430330A374142424143433242313839323243343435384234394643463234314330333939453936393933374132373739313834444543384144354143333236364534300A334538314439423941433541303646394445383137383536363842324343423942414132304638393132304339454239413546344344414445364636374336310A433545383943363031344634373732464332303837323331343635383736383746384531344634453633463246433935324432463931343332373546313638440A423531414530413636333333443935374339443544373235334132333632433330413032313932313942434243373730443946434241463046374634354642460A453835434146443839394242433145444443343136414344394137463833373131424445453238413638333930304536373234353346343532374634343831360A314632383441344334383844453232313333334543393234394431433730433346413431463337393234423831334133433534424533323036333439443935350A384642433641413931313546393036314339363734393538443430454132343236434243413730344530414233353139304634373343373230383641324232450A444344374536433143413942443944374330433238373945343134454136433631393233413630464444423533393537363830444433303935314344334230410A364237343342314537393532363031463631443434313343334137424441344343314336354441394434353337303441313333333531323536304232454630390A433244364433344235414434414645434234413037413744453531323245434541463043414346434634384537384634343030373135373045334631373144390A393645324336313639444443373741334239413631443531383834323842303335463831323842413930394332364234343842364339354645423532373037460A414530363837433339383746373546314246393041374636314430433439324334393435374235393237314243453438463346454537384531324433323731410A463541393133383944463245443536363939304245413834414236393942333635314232453831393735363230434542363037453238383246374432394544330A413432373934333931303741463941454245453437434538354445354345393539354139364131313841434631454231453933354532323531453045374631450A443637354535443839443530314339434339384542323734423642303042373138443345433530454641374531373046324445413241324432433842353736300A453835413141443530343636304139333134304242414331394134384234353642334641343845303537373643453944433035343236353230363932393232430A344145334642464242424132433445413242393236363345384433313642394435453733334530463246413039324632344146433938423544363930363345390A384143323844364546393744333637344330343137363139373035304534393730394437353538463741333238343341323237383136304446414639434541330A394130413839303742313933373930383333363545463836364532323732413945443242363632363134433537463831444442313435453944343630413537320A433537333239363736314346303238423043433536324235433733423139333346304637383933354442303737314431373830433639384138373432393043460A344633443244304330303042394134303737313536413042313546364641323343463730353836443345333431373936454438424431334245354345363944410A443136393537394245313643364242354437343232344633383034393038353532323946413634413736324143364242443044303645434331334535374535360A464345353734443531373434343331434243384133363936393842334639424533354237433142464335394643463038433034453335353437303332333046310A324544324443343435394132353646434136334137353934303743464330423444383935303835324244313144394436333144443042314541303931373845430A423543383546453838354633453034383335353835394145333435423733454130433946463839444443333141373833394338364345333646423743394336350A333332353733333946453744453846393832364141443539394234314238414634304634374245413433393942363542374531313446414631344239333437450A343632374235303141453939303541344546343438333535314438443542354632393143434332353530364533384135444139324531323746454346414642420A463642453032413633444331423530393041313143453837303034303241353342394442373838414244343931304443423846314430433946414436383636380A303034354335454632463046353230354634413443433244434634333437394446303533453244434241443341443345453737393132394537434634444539350A333444303346303546424337324343303243354531424633393441433339353330443933433730373339373939423745324643383444393945463745363336420A393030313835313538444133343237423330453745424132394345393635374433313033303630393334454235384135313446364343303643413045463337380A323434373431364144333741303636423633463242424435334230364241433243393135414432384341443836414231373235424443424331324430333638420A304630444231383835414441304234323134463539444644383646313532313037363330393145334535453739323541333946374335384445413830313536330A313938443831343644434545423138454445374546454243353631303230384344463744343242323345313541413931314244453633433045424237384439410A444131334238383230363445313836314441394234363838413234323535394142423142413430344135313641344337333537443138453443374143374434310A383738453244383638324230333244434143323046433732424330443138463937383345393039344635394433413335413937374341453538334235453531370A344538413843393931453533313135333342464434464430423942374443384631323937303535303944313934444139463138313335453742383744444144440A443036393239463644363543384142313838393534343743344535343243414332464138444130363436383134313845343938303743453631444237373732300A344437353338393137463544313133434641424542353141304536333344413541444534443341303934363244324534433131313235413331433341424342380A443239303543303945344539314431314239324634303536393641344631393936323832463434463334413139373438313231433045383643334442324346390A333030373332303545333537303243313931424343363030353832324146414539454234343043433737333943353144333931383037414135464337363845330A393238414530383630443532353335333937333935464333314241443933443838383731343645364241433236383931444638353246433545323737433343430A343541393738343338364245354131393236414638344537463342463338304135414446333244373343413639354646314237383231354632443233343944320A423143334145423034444238423131413631313638324537463446454446303837313641383031443834443437464342423546443445394146303237363335410A373445384331324637414331353938343044443630373238444634333631354242434446384546383042314437363144333441434344353631463541413242330A313542433231413438353630333245344639303035463933463746423343413736313343333245363744373437393643354338313934353733373846443934420A383945343533343143433242373734463136433033353037394137343142304432443534423433464443463639444243333044453435424233363935414542390A434441314337454445444244454145303037394335464630334243383535453546353233354344443939413931354346433738333733413436303445384536360A333432364645374144393242384641304642304346434437373334333442354336323443463344413946373733313546304335384434324345393138304242350A324432423744413535343330304344333843353932434533353936364231454134353633384346303634414142344343444232434633414345374138313642380A333630463246354437454639413336444646333633423837353431373434434633364143413331463942313738373243393642383231343734304337433046300A304532353142344233333036433434333438374637314544333234423438393632333142393146393039434632384145423334303944453130393445363438330A453835313332364234434534453536444630334139323939313339323641384434433532433744463741364637454136324244393334334141414245394241350A343033363738414442443243313235423544414130384543363935463634343833373333353546463542393141344646313635393641354431373242423346460A374346394146304236413734344132343531433733393945393639453645354139373834423931393541343937423433333034313131313635393733454532380A334544413339343945354438393145314541333633463841384546344143444338324344313442423933313438303430394135454245454435344346383238340A353546443730433938383232424439413331353233413343364136463236423032313643303742364436334433434646414431354131423833424535354439420A343030383635343433334438304631313735344534423442303946423232353639313634413844453536363936323945303745443145434246453336353238370A363930433646323132373445443944453231353644303641454136364133323334353042323945344141343243434339433932363144443439394644333345340A413937343537304336393044324330413133363741373438374435373432374330313230334432393339453839413146313841344144453834333133413244410A423132454536373145334234324634344636423332453132463446324535313437394641333432304133413133303837443942413736424231373536414642450A433436353437393236303044373942463532413332454338453032353837373533333531414537463139324430384237454139333134464534434541333142440A383634364535394639363736353037334544314533373838433844433743304141323839324341323545353634314233333846354632303744333742323735370A433746453845353236343943333830363235363645343230463846304136423833303433463735384445393036434639313431333731383032384339363735460A354530463744303936333333363145453135323131364336373542433341393044383037443341313942383438444433344245334245463935303238374337460A303231453233313236324544364131333432303841453246434239304237343336363134443842443333323236443844353139463846334634393441434243450A333235323733303742413131344346303242433736353338374446353442433145323331434533463531443039463741393137384645383041363244383337310A353333353038414346354334353443433732343030423434344431373741333642394130393634383943413237363146314346314637433738384139463742440A333334413543323441453641363438454443373430453336423238443637353245454442363441434144363430434444363643423938343438433743453742390A384541374345463945324138304542323730413232454345314541443046413835454635453043383341463233463042344534363639414234314136423432370A333932384341343432314532313641343334364644434145354431333439383039433937443035394132434236424542454430314345304241313735343836330A313030443439363334464238344130364345453238333130343034364139303339363234353630313735364243333941363334363043323636304635343538390A354136393044444535334246454545423339383335354530464342434645394346433636343139354346453542433943343930353730304642394645434237430A364536343438363145383145304330353831313330443235334438363138303139353846303441353433454632304339394235324532343631333942384437460A423743373845314536353837303146464441453641434432413745373946443433344231434538333444433746393844313630343841323936344542434546340A424441434541344536464236454142334132373046444137353842453633333939354431413339454531343841444638413136393137334638373730383945390A314135363044303638454437323035314645374645314436433342414338314546323635393530353938343735423834414631343836434643353544353930330A334245313437393939364234384136453945443930344336363730304446363330323945434439424631373934424136374137433041303035423030444635320A384136413033373446344536354345424331434644444643453345453533423537443738323033443732413046443546393639393237373132364234413545300A373042394346353046423941343644303638354235363343444141363145453939303346303037394232324543433536463042444133463139333046433645340A363337444632394241363843383344453630454332414141444633314342343646333337313236373036454546464130453844444332394535343838433243330A453839434539383135374346393038454230344335354144433746453835334531353245304439363339313546353130343833344139463733453045464646300A424132303937324544413046363931434246464633423044333739423046433535423737453438393142374238333732463546373936363245363130414333410A374130324539394131384435453837453531394334354342384341334146423338413734414339393231344331413138323433374331354635373936334341310A363037303941453444374139353237353138464336454231414342353232303933324335334638433141304445413533423137313641313035393232413930460A313045313136464445424342373439314441353238373245413232423832383035393531323041463836423439373539453544363146463342333944333130410A363836383546343634393135464434423941313946374637393742453432343734384339344634363336423241413036433037433441344342433633344346330A303445354234303045374534463034313942313132444446414130433437353835363046383344383041353235433039423637423539303644363546414637460A364535443432453544304141304541423443313839453334434431414635333246323741464634354642314239353442334443424346373545453630413946350A303138463032333738344333393446464235383146424346463444414438323045433843363446303833363042323641383936353746443746353041464445450A464538313739353733413343463335304642344432313641443442424634393641443741393139313934313034303536303835344135413232463244443939370A304236444432314444334541384542303943343943424543364344434545423042424231423838323731303933424445363444444130323444363746303938440A364331393938353036444446463739303741463030453441313341304537433933303436343131434636423338444234414332413841304236374130323745370A393637323544363041304135304239383341313534314331384543313939394139394437414545353638383430374436324241443542313337323541443343440A303234334433454634464444394534303937393544383032324434303633424138343439303943363741434638324141394345443330344435463834413942440A314541334337463544324137424637303736363135384246413242463633423330373835393346334545454444304236303833423638353841423045333932350A383538384343423742424139343338444244343330414432394631323730363341463442394630354545343835303745443343413944323332313837443346330A454346364234344637323343413234334339314246413643424143324430353541374445353643303033383131343134354641413744364433353037304130370A354236354239313645424446334138413736383439363533444641453343414639353631443835434345433139373444434445434336353932303430434336340A353734354446424138443942414442443445453835414539363632463332313835313333464639413745343444363634313042444538423142423138373346350A444543314438333431443033393533373335384637454330373336354134363241353830313343373037323937394134323743444335324146464643453745350A344439323237303239373639373332303643304545353830364333333730364335394337333631414436323644364345374437334233463536364630314632370A414132373533383846434537464432383442303331453645323632433235313142334642324436423933453533333332433245434634424631363543303343330A314531364432464433363342353632423137414636303045344546464145343243414341393739433643424434423632343733323039303837383238383536320A443238444132353546463635384437423242463132453731433730344535393031383842363242353732333435343039383746414141333733413445363236360A314437324339393934384437384545304241354635363037394532423735454635363132343935444236454342453033364531334443433142373944313443390A354630383544314342434632394435324337434342304141453043424337323045393039434637313944453638303441423341323136344343354432363231460A444544324144354544433134463943434543413236454642394439383033313937343335353838434234373636383046374641453742383633344442313846330A303631433532383946313444324532313336373833433432463241423245443132393733424336304146424132393135304337364331313845373243423738380A453631453536313537343131343537374638443134414243333743323334343532393737353345423731413343333330463938343838353030363135344241330A453141303745414132353642384535463545423531333937363245423046344136343142363438423044373831444234384135354235443135343839424145340A373833353536324634423031353841413143324644333941373641343032333844414331363636384445433335374441373039383838393636453732453933330A314636384541313641333232314245343230454244354344343846343931424541454643304539413737413136373033363334353235313834313643423346460A424144353930443041334534363145414435424542453645453742324134323639374346464542323243364246343642424433454139313535413330414138390A374644314633313933333545343542394536393737453444364145363739393346374244363137333536433834373642363132414335463831303336303343450A413934304436393738463746423539464631313233443843334334394134443934423145424138383536384232433132314544384634434339343246344239450A393336443137424431364131314446443744343846343742424644454541343432343537383739443735413445334644423030453644353234394246453338420A373230383134463144323146454535303144353632424545393937344643373039383741353745433733453541373744413746454135424436333331383144360A393437384636434143353537353932443633453346384245314444453141364444373146393346343938463445373230464339383139453643364145313032370A413943424538453132333344304430363837333744343646334130393630463337374535313939313145304636343142353742313936454344414536383942320A423233353444463239304535373530354141464132423533413131313641344636463139414538464437324532383841423831464642353834423044323030420A333134343138413732333642353138464637413236434533443342353237343743313539464235354637343939373733433045453145383537423638314535300A413539394245373531453838464536433146343739353243453039393032324243413946364337303342393946323439304230414346464536454431393041380A313445443542443243383744364131393232363445313930334632453841423139443535393643393131344333463332383235343841463541414431303143410A303546433933384334394638453031363637344231423241363039423339323546443531363135464531354232444646443236324645374242444132383542350A394539323339463836313933303935454232443939454633344230424130314339364339443137453831323831374144373734333933393741424538454244310A344637354535453735384235353235304242354344353730353430413043394641464236333244423345453045393644443936303341414531383738353233360A373731383231353032423842313641333241324330453933463843393345393638393445323432334434323037324544444534444331304142423438463732300A383838324136413432443139374638343332343936353431414133383231363136323844463546353142333535334446303935453339383642453843304533300A413445303836463732343430424446334337453635373633463943393743324539433634414338434134433534343438363143313639324333343030423231330A463337394237423733313736344335363530443942363942444135463638323537333342423435413330453536393438374333413044313136393439334141450A413130413244453945313541423441394544443237353645434238303646394438414246443545413537323543443041374439453935363741383243354637420A344633433942443634344537333943383946374343384344324436364431373944413634314239333436463638423636373143463842414236443633423135450A393233344335393345334533364446364141334130373642463846394432323044424330443732394246383037433338384639363733384430333834443639360A453242454246433930353441374245344336303232384445323734303032463632334431354434384546433842453146463939453344443339464435463541420A363537304532393746453431323033424531414437334130424246313730313638393245463436423330444139333337413135334444383346343635324243360A323234383246354433374538463443413537414438313433364146363845464139313444364632373430453730364239453032453838414536453344303446450A323632414634373233414643323845324345433631394236333331433234413046454644323541453646333537364344463335383641393938414433333539410A454631364132453244464232314233423536373445393742343533463834334431304131434233453234324146443433434632324341413438450A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A636C656172746F6D61726B0A7B726573746F72657D69660A2525456E64466F6E74200A2525426567696E466F6E743A205859425449502D4D656469756D0A252150532D41646F6265466F6E742D312E303A205859425449502D4D656469756D203030312E3338390A25255469746C653A205859425449502D4D656469756D0A2556657273696F6E3A203030312E3338390A25254372656174696F6E446174653A20536174204F637420352032313A31343A333220323031330A252543726561746F723A204B726973746F6666657220526F73652C2C2C0A25436F707972696768743A20466F6E7420636F6E76657274656420746F20547970652031206279206D66327074312C207772697474656E2062792053636F74742050616B696E2E0A252047656E65726174656420627920466F6E74466F7267652032303131303232322028687474703A2F2F666F6E74666F7267652E73662E6E65742F290A2525456E64436F6D6D656E74730A3130206469637420626567696E0A2F466F6E74547970652031206465660A2F466F6E744D6174726978205B302E3030312030203020302E30303120302030205D726561646F6E6C79206465660A2F466F6E744E616D65202F5859425449502D4D656469756D206465660A2F466F6E7442426F78207B2D353433202D3534332035343320353433207D726561646F6E6C79206465660A2F5061696E74547970652030206465660A2F466F6E74496E666F203920646963742064757020626567696E0A2F76657273696F6E20283030312E3338392920726561646F6E6C79206465660A2F4E6F746963652028466F6E7420636F6E76657274656420746F20547970652031206279206D66327074312C207772697474656E2062792053636F74742050616B696E2E2920726561646F6E6C79206465660A2F46756C6C4E616D6520285859425449502920726561646F6E6C79206465660A2F46616D696C794E616D6520285859425449502920726561646F6E6C79206465660A2F57656967687420284D656469756D2920726561646F6E6C79206465660A2F4974616C6963416E676C652030206465660A2F6973466978656450697463682074727565206465660A2F556E6465726C696E65506F736974696F6E202D313030206465660A2F556E6465726C696E65546869636B6E657373203530206465660A656E6420726561646F6E6C79206465660A2F456E636F64696E67203235362061727261790A30203120323535207B3120696E6465782065786368202F2E6E6F74646566207075747D20666F720A647570203739202F643739207075740A64757020313131202F64313131207075740A726561646F6E6C79206465660A63757272656E746469637420656E640A63757272656E7466696C652065657865630A443944363646363333423834364142323834424346384230343131423737324445354345333733444342453835303341394331424444434445333937364239410A464633314641444337383443443939453844393133433236383139413439363242433432383332304439323443423044344245313545324541333343443938460A334133303930443341324231433536463244384536373935373646414633464331413739323631363930323837443742393434344231423445333642364537380A313345333439313633333632333930363741363036363138454230343533353644343830313335463743333235383431463742353539383131384445394631300A444334304231344639383838314345393234394432353437333530344636323141434545464545433431353933384231314231454130444233334344313444440A424630463932323446424432443842444338303338353936373036313039334342413034454639463243433736313136313241374234304138384335463535370A304541374237354341454536353139374437364532454146463936384641464637433131303541303930433037374137433739444441454139444642303646420A443546434542384530414431424539363046414633303238323842443446434244463644383343313543363730424130433633334336384237354238433641320A313842454446303733413537463532313238313944423338453330443942413437353231414245424541463335343436333533443542464244313346304646330A353130344337453742323746363832343036353445313244423539343437433135334337353541353141433244384136303532334143424230424241434639410A363035313734413445363544363332304442344230423431333939394630463133324434364631383843313146394636313732324334393631364132414139300A383445443732363530443845453131344537354344463830443938423046383630383131313044393232304443454543414144394531384233334146423843300A433831453542374245464438424437304642313636364534423045363044363843373641424234383745394446303646384330383534423034323330433341310A383731353230363139454636303542363543443845424344333345443939424644394145373741354546333834463836324537463734333032433043443042350A334430434432373835433338393841313045323335373545343432453746344532374631384332433345463333333541464244434543464336333043393344320A343244423044383246354537313045384237324637413243374133333442433032463834384338433739364542394231394539383430374646454339444238450A353436464630354632353443343144373031414343443045463536333837434544344635363933383536353542424443373739344335433038374232423236410A464442314235453735424143463136393132383139344136343843343230343944363941353946454635343437444539443844344442453237343630463036450A363833444243383043453230344231414234364239434142413444313636443937323141444343333039414135393937423935424230424336323346393141330A313530323445364632313839393139353944323831453130344537433933323938443635344433333743434545364632363736304130444535423734383142370A304331453638363732374337454633353845313339454638453333454644373631424436334345394137454643373934373239313835334333414438423944420A343246314538314334324231303843463238373942394335413939433832313639464345433937393739313144343345453738413636423742424445443535380A464633333831463335363538443235433346434239433446463844343141413239313036344539454644443633463739373031414432313338374438463838390A414134443442453941374237374343454643364235423536334437384130384335324241393444383532433239393344393233353730384641464530323134340A453737434442364630384432453337373346443842374435323946344234353338324633453645364237303145314241333146424632394337313637344531300A393432343245343438363032344433463835454431353941424432304439444630363239363038344545464434353237334443313446463546313433373744370A353530364139364438383141443346364435314444383638343834413544453342304438433138333930423241324643374637343439443938313034334542380A423535454533333443343330323741384143334541413537323642304642323334373831444233323635383443353145354533414539413144463642454338350A343636414638414142393239413735353444373731443244393242333641463439384236443042443646313939343635413232423533333635433437303345320A454142304136394544344343334636364245363131453835314330393737393431313930363433393244343542434543313833304634303932424235413041370A443745464235464236423331364545323433394336344634303443423031323834353837313033324632304345444534354445394138394241433544383546380A303945364630323332434233443733464645414345454132343831343843454637424338433337334630303146393039433834423733424646363836334444440A304332333732453537363337424539444231333942433144344531353543313133373843363139374546364132464245353946323131394338453046333241440A304631414146304242393533373742434331324643394435464441323243363037383634433145434339463443444336463331393942334630333444363733360A394138424341453430324530423443303739334345373134353737343035354434313037383731463032364133334541383036414544443942323037444132390A423737364435383431333439323144383441353442324642344543444341453930383733383441393336413133463232323946304243304532384237303644300A393843364635344244393241443332313044373145324238384344313933413336393846413844323432393931364132383743433134423037443346364146360A464243373941443436334343453632353146433344443135344244384635373741363444444137314446313142380A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A636C656172746F6D61726B0A2525456E64466F6E74200A2525426567696E466F6E743A205859415449502D4D656469756D0A252150532D41646F6265466F6E742D312E303A205859415449502D4D656469756D203030312E3338390A25255469746C653A205859415449502D4D656469756D0A2556657273696F6E3A203030312E3338390A25254372656174696F6E446174653A20536174204F637420352032313A31343A323720323031330A252543726561746F723A204B726973746F6666657220526F73652C2C2C0A25436F707972696768743A20466F6E7420636F6E76657274656420746F20547970652031206279206D66327074312C207772697474656E2062792053636F74742050616B696E2E0A252047656E65726174656420627920466F6E74466F7267652032303131303232322028687474703A2F2F666F6E74666F7267652E73662E6E65742F290A2525456E64436F6D6D656E74730A3130206469637420626567696E0A2F466F6E74547970652031206465660A2F466F6E744D6174726978205B302E3030312030203020302E30303120302030205D726561646F6E6C79206465660A2F466F6E744E616D65202F5859415449502D4D656469756D206465660A2F466F6E7442426F78207B2D353433202D3534332035343320353433207D726561646F6E6C79206465660A2F5061696E74547970652030206465660A2F466F6E74496E666F203920646963742064757020626567696E0A2F76657273696F6E20283030312E3338392920726561646F6E6C79206465660A2F4E6F746963652028466F6E7420636F6E76657274656420746F20547970652031206279206D66327074312C207772697474656E2062792053636F74742050616B696E2E2920726561646F6E6C79206465660A2F46756C6C4E616D6520285859415449502920726561646F6E6C79206465660A2F46616D696C794E616D6520285859415449502920726561646F6E6C79206465660A2F57656967687420284D656469756D2920726561646F6E6C79206465660A2F4974616C6963416E676C652030206465660A2F6973466978656450697463682074727565206465660A2F556E6465726C696E65506F736974696F6E202D313030206465660A2F556E6465726C696E65546869636B6E657373203530206465660A656E6420726561646F6E6C79206465660A2F456E636F64696E67203235362061727261790A30203120323535207B3120696E6465782065786368202F2E6E6F74646566207075747D20666F720A647570203739202F643739207075740A64757020313131202F64313131207075740A726561646F6E6C79206465660A63757272656E746469637420656E640A63757272656E7466696C652065657865630A443944363646363333423834364142323834424346384230343131423737324445354345333733444342453835303341394331424444434445333937364239410A464633314641444337383443443939453844393133433236383139413439363242433432383332304439323443423044344245313545324541333343443938460A334133303930443341324231433536463244384536373935373646414633464331413739323631363930323837443742393434344231423445333642364537380A313345333439313633333632333930363741363036363138454230343533353644343830313335463743333235383431463742353539383131384445394631300A444334304231344639383838314345393234394432353437333530344636323141434545464545433431353933384231314231454130444233334344313444440A424630463932323446424432443842444338303338353936373036313039334342413034454639463243433736313136313241374234304138384335463535370A304541374237354341454536353139374437364532454146463936384641464637433131303541303930433037374137433739444441454139444642303646420A443546434542384530414431424539363046414633303238323842443446434244463644383343313543363730424130433633334331383438433945383345420A384243344135303336323431333046323633323536383334324435313639383745383430383846454337443832334630373139423139454143323645463631390A364334444541344635393334353045313036464433323334424531333037464230443933443330354334313943414544353146323935353439464442413434310A354541384439363543464634434334384330353637333333313239423137383143444437343733464539463233313030364533323433334239344236453445450A374136423031304445363734303243333836314442394646433537454643303036323542423333374443413444353438383744444331353945303731303539430A373935443631344443313946363544414236414139463343313634394244304141334631413934313832303232394145443538383744323345464338304439460A374345364330413630434234453342354443464633363731433737323243324531313533303343304233373032384535383446313141303931373733433836460A444330334634353745433333413938374132373539363344393331364146343330323130314443373141424335303930344332334235353430463545423345340A343635394645424644413731313844454134463536353342424534453039413433463844364242394141423331443732454632303245313939304530303736330A363345354643383034313336453635303045413845343534433142343541424530314333394638334236313446333636354644313841353346324138443838430A354443323730334546344135453642443643443837424133324636414243423936413735443736394237344530453033363146453534393636414130464137380A343536393337444646464441324544383037464633434545424134443836333542433842423343393832364334324435413631414642353237453233343646420A394130444542363637383732383443393642364244353431313041424544433646354342323534393646324437443746463130333630324442433231333441360A414439363335374232454430303144443032464237444232453830434445433646353246313535343843324142383433304143383930374437423341394339460A304231333930373037334241303942303936363432463345344343433330394230374438454645383641323934394633303442393939393630453632313435300A433634443344464243464445303230463735313141443931343545303736324237354541453145434334324536304341384530354539423042394139383437330A384234383737453441343439393432364245443943364238363132304632384142433634413243304630423946383334383934363336344144343639453735430A333932334232304141323746303731303831343136444233463046394330393133374646423636313746324643324242363045334142373046424634423646420A424437323842383636333037444341343738454332383846333345364545443937464639314541324130304441313430303245343534424546453434443339360A433046344341434434364430303235343236423335304141413732344435374438383733364338423933414641333233394246383342423830424633353430370A423641353934453938443036453430433042374546394638413935413843313344313739343941323832433930343933413639464242343042344345463033300A354546413136424330453846353830304237463246334644313443393942323133354239324134383732313546453037464141323537454634413946354144310A413735434546463344463944303231413346443735323944303342364433313442424337394137304637463532424238433532313639433836454135393838440A424131423742343546374638413933423233333941314136423935334231464637424331413434423137363346333335433533383045304231454539394432440A454346423332383030423939313338463544443734453331373239433534424341423738363343384235373943314335394331333545373045453545324641450A383436313633324145394542353138353743423937433736393135453944434246333634423141353933383345383639413535343432344338434437383231430A464137424432373942343443423333333535313245343946303946424442383434343538463141434137464238454334443631344132314437413044373438350A423938413141464445303146373539333446343842434438384542374445383739304131333934413333303636363745424246334637444146453843334543430A353732463543464533413038354532333542394545343945424437434634323934423833333339313035443442323639363136433237414637454145414538300A414238443339323034423732413146304541464544303943304244343334364437443746323936464231373138454338314343453336453639393845373031370A35424631424239453339384435340A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A636C656172746F6D61726B0A2525456E64466F6E74200A2525426567696E466F6E743A20434D4D4931300A252150532D41646F6265466F6E742D312E303A20434D4D493130203030332E3030320A25255469746C653A20434D4D4931300A2556657273696F6E3A203030332E3030320A25254372656174696F6E446174653A204D6F6E204A756C2031332031363A31373A303020323030390A252543726561746F723A204461766964204D2E204A6F6E65730A25436F707972696768743A20436F707972696768742028632920313939372C203230303920416D65726963616E204D617468656D61746963616C20536F63696574790A25436F707972696768743A20283C687474703A2F2F7777772E616D732E6F72673E292C207769746820526573657276656420466F6E74204E616D6520434D4D4931302E0A25205468697320466F6E7420536F667477617265206973206C6963656E73656420756E646572207468652053494C204F70656E20466F6E74204C6963656E73652C2056657273696F6E20312E312E0A252054686973206C6963656E736520697320696E20746865206163636F6D70616E79696E672066696C65204F464C2E7478742C20616E6420697320616C736F0A2520617661696C61626C6520776974682061204641512061743A20687474703A2F2F736372697074732E73696C2E6F72672F4F464C2E0A2525456E64436F6D6D656E74730A466F6E744469726563746F72792F434D4D493130206B6E6F776E7B2F434D4D4931302066696E64666F6E74206475702F556E697175654944206B6E6F776E7B6475700A2F556E69717565494420676574203530383733383520657120657863682F466F6E745479706520676574203120657120616E647D7B706F702066616C73657D6966656C73650A7B7361766520747275657D7B66616C73657D6966656C73657D7B66616C73657D6966656C73650A3131206469637420626567696E0A2F466F6E74547970652031206465660A2F466F6E744D6174726978205B302E3030312030203020302E30303120302030205D726561646F6E6C79206465660A2F466F6E744E616D65202F434D4D493130206465660A2F466F6E7442426F78207B2D3332202D323530203130343820373530207D726561646F6E6C79206465660A2F556E6971756549442035303837333835206465660A2F5061696E74547970652030206465660A2F466F6E74496E666F20313020646963742064757020626567696E0A2F76657273696F6E20283030332E3030322920726561646F6E6C79206465660A2F4E6F746963652028436F70797269676874205C303530635C30353120313939372C203230303920416D65726963616E204D617468656D61746963616C20536F6369657479205C3035303C687474703A2F2F7777772E616D732E6F72673E5C3035312C207769746820526573657276656420466F6E74204E616D6520434D4D4931302E2920726561646F6E6C79206465660A2F46756C6C4E616D652028434D4D4931302920726561646F6E6C79206465660A2F46616D696C794E616D652028436F6D7075746572204D6F6465726E2920726561646F6E6C79206465660A2F57656967687420284D656469756D2920726561646F6E6C79206465660A2F4974616C6963416E676C65202D31342E3034206465660A2F6973466978656450697463682066616C7365206465660A2F556E6465726C696E65506F736974696F6E202D313030206465660A2F556E6465726C696E65546869636B6E657373203530206465660A2F617363656E7420373530206465660A656E6420726561646F6E6C79206465660A2F456E636F64696E67203235362061727261790A30203120323535207B3120696E6465782065786368202F2E6E6F74646566207075747D20666F720A647570203635202F41207075740A647570203636202F42207075740A726561646F6E6C79206465660A63757272656E746469637420656E640A63757272656E7466696C652065657865630A443944363646363333423834364142323834424346384230343131423737324445354345334330354546393846383538333232444345413435453038373443350A343544323546453139323533394439434441344241413436443943343331343635453641424634453432373146383945444544374633374245344233314642340A373933344636324431463436453836373146363239304436464646363031443439333742463731433232443630464238303041313537393634323145334141370A373243353030353031443842313043303039334636343637433535333235304637433237423243334438393337373236313441383436333734413835424334450A424543304230413839433443313631433339353645434532353237344239363243383534453533354634313832373946453236443846383345333843354338390A393734453941323234423343424546393041393237374146313045304337434143384443313143343144433138423831344137363832453546303234383637340A313134353342433831433434333430374146343141463841383331413835413730304346433635453231383142434246424337383738444642443534364143320A314546364343353237464545413034344237433845363836333637453932304635373541443538353338373335384646463431424342323132393232373931430A374230424433424544374336443846334439443532443046313831434434443136344537353835314430344636343330394438313041304445413145323537420A304437363333434546453933464546394432464237393031343533413436463841434130303733353844393034453031383941453742373232313534353038350A454444334435413343454143443630323338363146313343384133343541363831313534323545393442384644434345433132353534353445433345374133370A343034463643303041334243434638353142393239443446453636423644384644314330433830313330353431363039373539463138454630374243443133330A373843424334413044384137393641323537343236304336413935324341373344394542354332383335364635433930443141353944433738383736324246460A413142364630363134393538443039373531433044423233303934303646364234343839313235423331433544443336354232463134304342354534324345450A383842453131433731373645364242433930443234453430393536323739464244433944383941364334413146344432374543353746343936363032464243340A433835343134333930334135334546313138384431313743343946384236463234393842343639384332354632433545384438424438333332303646383846430A424435423439354542393933413236423630353542443042424132423344444644343632433339453032324434413137363043383435454134343844454438380A393843343442414142383543443034323345303031353443343734313234304542334132323930423637313434413443383043383842453344353941443736300A453535334441433445384241303042303633393842314430444645393646423839343439443441453138434538423237414645373544324238344546444234340A313433464438383746384642333634443030303635313931324534304230424145444441354144353741334243304534313145314144393038433737444345330A393831393835463938453235384139424233413142383435464334413231424343353435353945353142433045364332324630433338353430463843393439300A383841304532334541353034464137394638393630434339443538363131433531394433414344433633464232464243414536363734333537443746323238350A344243433946353444334441343231443734344433413334314441334234393442423532364330373334453141384643373135303137343533393946373638330A464431374543333034343431394138384333393739464432414241354230313330393037423134354138343632414146304139423531314432433841374337460A333437464636414330353745363531323930324246443239313845324344333144453631354635443634333736344539303042363032383736373041453138460A464445313535343544384243363935393141384342424232373541464643394231344244363844463041414233323236384642383438343444344442433742420A433539314331414335313032433530413943374241414138343844413838423035313946304635463038313342463035354346304533433836463633334130340A423737394432453845363536444231453039413636413835464532314341384241353532334634373241323239453833463243344539314142413436433733330A463343374235373735423036433937373832424332323543343633383542454244433631353732343538454643354346343139304142374139433143393244410A323946383442414143463535323038393139353936364533414439453537434339313444323042363936324245383034323941313644344446314543414136360A333643343334334641444630423242343846313245324542383434334334414132394430303934393235354633393638363137463938423841424434434331320A303438423833384545323433413231414338303842443239353139354534414539303237303035463532323538424643413931354338443941454439413243300A383038313446373943463934334642453335393443353330413232413932453131424538304643454331363834433446353637313244353834364230373439430A394235344139373942333135323232463230394445453732353833423033303933454333384637433542394639424342323144424538454444414539424538420A373541434536423132413331303833414338333438454338344431443239443232393741323636323834423745393733344532303744414635394132354634450A344141333835303945393933433533393446454437364536413246323534363236383543344338364336453843464339383633333338454331343238424446430A373436313642423142433839343842304544344338374331354234343035463341373739364639444233373938464646453842443041393445383334383137420A443545393831324533303844304343393230343730413646324344303838464342383034363242463743423346303339413744463344414635423242353335350A453038334133383543443245414630464331383145343045393644443745394142394546354337453638363641313342384135343731384539353046453039370A454630393531413335373131344631384345393933334432384233413737414137314533434538383436363146313332383442434544354435464431413836440A353433453538384646343733444332434639413444433331323530303133354632394332443031373442333230313843384442443430454639413233323838330A373130413146324142324344313133313233303041434446373839413942374239334432303335443831443143383439383444393244373841353341303043360A454441393442323442424143314144313737373441344530374536463734414244393034313539363536313641443534304338454344384333413434454534460A374634463642423632333843353036324436334641353942374246303842453933464145413730413241423038464245414146374442463536423935464439330A303343413430363534334241364339353237443044463031463531303844333141353137373841354542314339334632374237324234363134364133353341320A303143414342433832393630334239393839413837434636343532383638324343424130353632413831363542313835433538413543364242373246354538390A353030414343414142384543454642423236343045393945414545433445413937394141373933443031334436314438414346383738344646384439333938460A463641323532413730393332344642333935303946304233413445373235453832463533353433333833433637363542453535364343383937433735383230380A414133414433374230343036453441373946384630413643313938334643373345373143443835384330444236364544363644354439393239373836313445450A314541393145424531393145303832454241314643303430414631394132323032353735433245424542383035383833334533353230464130334432463931350A383543314544333337453435374239464545423043364546323733354546444136453044303546413634314243463639384143364239373735314538333036430A344446303041333942383538314646353344423846383532354644423139364438353935303930364343423539423845463137313334394141334235363742310A364130303831393934374139393546423338334333433137303943394132433131334232453430424238333242374434413046424130423136413243343535460A353538303943433432354334303345393636384443363642453435423731413831433333324644344442323739443232413239353939363233303441384631380A303835383933444143363133313744323441384631393846444142393546334238364630414644333530343742383638413941313730333741323832394130320A424142303432463735463334394531393741374545443431393834433238353937353443414644303235313433393932314332343842343633423531363935310A324531333232433830443733463943424341413633413538353435303237354143323439324534443346423738453830304637383832353444423545363130440A434637383844463543373046463939383932424344463136313333453334423234423737433846303937463534364238374336303344444238393938423636450A424143423638424132373436324146353441413430353638324543393644373031463044343734444543443546393543413231303244463633394542313639450A443531383136324332424145343546463639384236444531354643364537444534384333333643343041363730464432363935324136424142303931313545310A393931463030373334313946324343324131433038424539313039363933364141304333374534454433434343454532333534373630373442384646313132350A364244453337303146383535333244384242363443434339323743433333353238314339354541363839373036463041433731374443324346363830433735340A453545464437464134424238383830423242373237413936344338373644344132323330363944344536303031373731463045323345414432413442424338300A453736363735323937423245463035463532424634453731423345453242453330343843463038384337393534303131334336364145393842324644334342310A423037343141323135464430373038383243353237363530303944374437313144414132353038463139414537444441313532323941383536414334394243330A344444463430383134464639363530304534423942303244343132453934363233433546444343373643304642384534324446353641393034464534394436350A314441374335333930314232454137314142363538413436344433414244453237443944423844394530423438463634453631413234393541443544384441420A423545373234323441443031374446333739363441463931314244374641323141354542343737354443384539354546304330454238353642303044383944370A383137324131444538353330373637443331374238323536313033453533434642383737453130363836413034463541303846384443353844383433444542410A464435463430353937353838363633443130333638394636454233454231344430364531384338303738463235333842343345373132444634393146433543360A414636333932353643384336313334423634443536304438343736444541363332394439393545343643433442433738383431433539453733363438423437450A424641374445303834363432324637333834353441453737453832324130383334303532383932343742443743343738424534393734463734324344363035310A453939464242314431423346424142464545383535313734373334454534354538374430414144463332423132383342393131313632413939353538343746440A333839343444373035383446414136423141373139314335433133344237334639384542363332423639453246304330463934313536373837433334433841330A373632324130323944353846393632364237344638413841314633383033453042433230453045414445423145393942373046314244394639383046423735310A324138343238343344453432454231343241383444354433313338363239414539454146364633343739433432334538383239433838313646413645464132370A444345353538304536354141393835344231433634313633444333313834323043443939334331354246443736413842413131383238363041364230334436440A323242384346343343464536433841423237433634383432453233394341453730374433303836424144444531443743393445334243393633313934373044360A384432363931354335373543464444303332373144364242394445383641304542364545413645373638423232344136323643363241394142343841364544420A343446373042423541463939314344463937333644363539333345383143433537413738463632334633334543394146353335463246323546413445454339300A443530444237453837463331453937314137354133334133303143413630313345454335413445313739443639354233334441444632433938333634343334410A343239323637373630303042363130453137353234313632323533463646413633384436353831433138463939454130424431443245323444323432344144460A433035303130443038313932343835313533444430333933304337424634353233373539334534383446393835314536443436344641313046454341354439450A304338434343393744453032393033303930304344424234393143354346323236444246393033434645373733354439333943334644463341323042373043450A363635373942323842393933313346454539313445323935333838433742433845303535413245353445413341383230364433433846344637433042413545360A453531393431394644384345323135463742384539424543363034413945334645323732413033323841323445333139393743384139314530393436424346310A363934334139374342454432414239464336333642343938323842424238423839453042424332363533373936343331323234383935414241354441433431450A313835344244393736344538363134374644373632344637333646343044453342373538324544444644313543324244453346323242354135344437444631300A423837413133303143453835434643303631363839413839304133323134313241313333313441453936444344334544413735303335464444384634414239420A383937413243363832363341363834353730333243343639393837393730363438424132443838423143353337354446454141333541393137423841393532450A454536373034323739343241454442334342353939433537343631383045333932383337443337314531354438363036323041424442364141373737324334300A413545333436363631363733414341353330424533443845334646423839354535444133444332334231423433433038304337374637453437383437463046330A463341413543413945344246373546433545424431384431394632314137444141334231314341424336453430373041313546374442433842303545423641410A413032454631423037384542363644363144364146453431444139423336464537454339454639344431454132363238324139383731453243414342333132360A324144343943324439423530413645343744384632434341443530393932443142343330393739413435464439453736313832413139393634424232413146360A353137373941324232353844433144463443324633303734363231323836383331463338343841433135324444443242413536314536353836414441383844330A353938413243453243443034384630323743453030303842383238424439313538383744373738353334314538333035444632333436414442373642453939460A383742303231373342444333333445393232314338444635343131344136423234433143353334303239393531324641364338433531414234433837373843450A313738434546353331433644314235464630413142453845464637363746393539424434433334354335323639394132394131374232413233303834324246360A344230313132313744364432344544414333463644353334383237383646314341333331363942393045434434393934303744333743453942373044444637380A374237353437423332393532353335424139414344314532343434343741453346434544334146323837313730383343463935393041303937383039383444360A414630373433433832414534464233453242423238353641343135334133393637413032334646433335333832443643323244383441393234393030423641360A334444443430304536443234313844413643323746324641333443303735433930324238394542414536353842334339413138454545343439444135413337390A333337444539354342374142334630393730434631413544384641443830393045343935353730464446423246424241373932343437383044383033353534370A433541353542423231413232373046373234424635443434324344433542423946303942453043414535394231433232373046304244414345363938463243350A444538463636424642393633343930344231363146354241324231393530303438333030443639424142443331324435384438394334454435323741463742410A374441323437384544433243444545333437334444384138454439443839314344314643323146323330313332323842423332383142373146434539353942440A364638453930353944363832413746434335323635413036323039393244344641384437383337374542333443453345434130373045453337303732333942430A393839303744423031323043453432414241333243463937313237453238333832424444464436383536373432373946353838443446393531323136433335350A383231333631373930463634433243433732304445393745384543423537333236433433454534373336373632384530353736394531303638363842353446340A433333433939353139303844463646433446354544324337373837424438464135393142424233453943364331444139344343354533384439423230433838360A374432333735373246463436444438393641344436313633343038454136434546414333393845453034314541453239443537374537353332364341313741360A423037324434374137423133454334343143453644414130343245434430323133344342464136383039413433353035303431333831373139334441454231360A413538383243384145413434424346333645373445394543434446453745313946463541354444374139344535414234463837303243334441374634323332350A323343383038363730413034393046354233373344414445343038313446463936353032343144334436394339314642433545434537323846383237443942460A433932383630324530353437373930333434394530373931363443413339383539433442434136304335373946343930414134353546383242353035304242330A393639414642343738453044344132353742333335364541334344363230353146434536433642313932394346463835424644463136364245463635384531300A334135354530303746333845424242323438423346304238454431393235313036423439394237363245343531313341453141433944453039363434433834420A394330383033344232393733313445453639424333324442364537443746423939313343453541433137453733333539373945394443434532424142333732350A313937363135353535314639373036413537364645304533414443434637324338373638333239313532384543423734394342304544323931393636453233390A423545333633303637364244343039453038463835424331414543394132443431333533373632383441393645413234343331323433424436464538423936360A393546313141344242353346333932453041454645413632333036344646384137303032333637423041353135363335434232443244444642394234413844370A464537323137353445383142424135343838343841323335423931414434453446374442313943434532463631443237374643303041423935364542393342450A343441423439373043413536424635393530364339344544313630464231453235443344463239383841353332424442373837424642383533394432323938360A464443333738414333313434344536334334373237464545313231413433373531303433383439453644434143354235394430464337303341414642424644340A453842374332363846323136313541443032434539444142454641323742354645364136343431423631393533394341423146383130463132363334343741410A363333463544414634383337353245463141303432313734304533413831314432443238393843424635334537463638364339323233464437323335463032440A364639304432443438434332304142383737373844453343364642333335453046304543323042354443354236353232334645313137353236444532433732460A464538333944463933434232413744363643443930304342333235463839314533313142454339333246373033464234464546413239444238423943383844440A333735454337314233443538433742433539414441393139373141334244413141444541363239434536434339324244353432434444464141373730364642320A364344444532444630374535364436373431393136414538453837343433333938313646334536433338303632373437414139464441324132363738413642370A454645413837304141334134443731423235454533303133454142314442413334343031423836374337413431414535314530343231443431443342423833430A453132304338464541424136453544454335334136383943323134323644344242434236384342333735363837363143333630453644344533353936464237440A463444454337393138453538433032393344313244364444413745394443444141443743393339463535434431424334413232384233314539413930343135360A444136423430423038453641434536373436313842373638444436383143373732413345353546453039364346393439434633423034363041424443443839310A443137423337423335354232394142353133373839394330333646333144413032363234344641323546423739384642453531303542444132394634363533380A443344334143313030314137424345434536344445393446464536433335343136364130463937323536313337424446413037463645323241334431443246340A393538384442414539354538393542433545363444444342424141384430413232433232394234324342373137464337313145374539444637393344463830420A394631343735343538354133433745313746333742333239323442394639383730444138363335453345313842443144434438314544463031383334443943360A423333463233433935364332464342464134374438343432324635383334353944383237443145313230423937363934443132463146353444303233373943300A443238384637313034463346464346344637364533343934463441434244314245334131353534334343363830393234433738413437334638453331314144460A384645303041303443364333393344453631414433454441354243303331453233353330373641323438393339314235323633323338374341323841374239330A464242303635413645463336353841453830423141444134374539423235333945373341373146413735363435463835454438454343323537464234434632360A423643393132444539443046393839394537304245434342393334414433324346343941303933333731413946373344453632353545424333394445314537460A303044304342444142443444303338333937374536393438393045373146424535433337364245354633413830433238393837343137353034463531354335300A393039463344333131373842423942314430383542453531344637314239313041393038354244363132324444433732413135304246453236363932304534390A353636314243423442414235314436444546453332423631363936334442443938394643444431363337423239344345344532383836353546424546413142460A374632354242463843463137433244354644313631413743324343394343373439304439424631354131443335423342464134334144453235364538384244410A424434393044393239303743353742414334303841353735454338344436414545303730313438433743394139314330334230394644424437393245384646300A433042383836414144324544443836353431453545353739333539443430453341433331324143443344384644343946373142443533334444463838353942310A424146313746313838344533333144443037434545463933423731443439324145424141444637413236333435304137413732323130434536333041304433370A424630323442444330394143433838323831364238433232433632414533384133413844304636454243324231423243304238313631413842303736444435440A344237373943303738383534364242344346353733333232333044323337383536423030443739433238413743303144313146343442373330344636393037350A393442393741373435444134334431424535363133373243453631314333343541383433383334453436414439444442313643414243443346413333443646310A463642354330343937463545453534303042333035434443313641374543323836414134443435443045454242394441303641433943353239344436384543390A453444433343413242393243453846433035323631383441383645444337414233344436374536304143313244394341384644333030323335454339363842410A393243364642444134373537324243353630304632353234394636304144323837434244414539383045373437464342453745453543443332334537333346300A363335353342343934443344444542394343313438304235433342423739413238453431394141363542313843423239374142333833343139453839304532410A434536463938433939303043434234363735323830413130434630363042384432323044444131424535354446413635373135454142434331414641413237310A423146383733323334313631334531374232333132333141304432344434443746433139384145303444383941393943343533363231373736394336464244390A354545323441363330324639373433384637433045333131433837384636373442343437374135414441333935324344453430353541433430384238313734450A383646384642373937363436444646464530454341323544314241423941394637314633393236443344383541413633453741384339333144373145373945300A414631454143323646414445343638463446463746333836314431344331304533424531463945414644364433413534344538313038443544414235423138300A333935304337343831384243384146343735384131303846343632454631383236363437413439363637463545343832303338433534373136383536443942430A333546323939323238343644323134384639324639343345393531443734333843373344364136303435394138303033313734303336433634453136323943440A313535443437464430344230334330323341443637434435413730433938414235353645454142384334383136393730364535423335324636353035443538300A414339343531373142464536324538314638463530303433384143334236344438353742413542433534433243344242423233374638464135313239363235350A453636413932413631464531334644453738314433393335353745423732434542414438363531313033354637373546414333394130343739434344343030460A323236373039313138463838374634374343324543433846373938313644344139343542323834354635304146443632443843394139424246343733393439360A394536343442433946374230343830334237454537354130394541453934333635463646333734423446434542304235303643373632393735363442394236420A384238313242433341333339323941413934363932353732423031304536323130414541413331324244464338384246333032323434414239443538374139420A393139383233464430314445313234333844393630393434443139373738303046454234394536333843333245354231383842314341303333453043333745450A413134324637343633363738383841413131393533354630434341463745414134363142373930454230383944324436393632453238413339383433394242370A394339393433363534443741324437363542343642433044443146393135333237463336393136324531424131424138333131304239334634343239303545300A353233424646354532373935303841393835363843443543464431384641424245394431373236354139303831453742463634313535413243453343304446370A383844303036373141443635363534373039353839424144374541363542424138313133383741424135434130424333463636443344343835393741304431440A324332363833373544463437434346363231363632363241453438343041423033424634394245363741303545463636333238454337323946303343413546460A414433393337464330353345323233333033353635444337373141434633324536334446423936443530333045373837393631443732443032433139354336360A423438453941463033303944433136394346453844313645323831384441393436393341313846303237444541304439313733363333443942353034343945300A463930323645374134434331413336393444364330333045354145353343304441414639304230303436453232453134464632373837414338313934433432410A344238383436383536414433354441343136463736434641353444343138344241343735313044344346413842343545363339334143304541443238353941370A464345323042463435453038323736423535373936324241453838464146313831443142373730384133463737343745373331393137333842463635453745320A303431314138373633313036394130333833453437374532453032353435344239413435434532303231304241454630373733454331303030354531443034340A344239444535393938443544343642453939423532443536373445433332314532414438414439313331313739324635344143413532323141314446384344370A333745304338393933364533444134424133313542393836323243304536323744443837413032313338453439303632444138434141364131344246424332310A393344443641463944324230453144383630424333304434463131453833334542353742393234353832454142423144384230364637364136384641383031350A363139323545434343344130454239464244323344303038304541394532323037423842433642463745463437313836453033354239333332424331384441330A353536434143373742383237363936314345323941323746413632423545323045343244314231323334304532383235383536454142353841343732453336380A344636413338423931354144373138434335453630354344443237414344323537364336343937433630353838334132424633443333343735343646434232450A333437333734304342434630343830444338343534453342453041344139364439433937303237334335393537394134333439433436334236304144313445310A414437353441314139354339454530463638303631344431344130394643383334333538354335364439373339374237413530344342423641354332413537330A433143423935393131313937303634324645423532464537323244343739463545424632453632333543424137463343334131383043373035344134384637370A443234333438353837393232363041444536373043304335314432354530333530333744424430314537353938303732313144423237314237423641303032450A363138333336313038393935454632344544303231434631324330303946463436443142383339383630384534413330383535314545434339344634353344360A423739343239354533313335443433313932413039373031304533353734333145324537383430443543373643364545443133303830413945373638394243300A343730333644343939384531424431344146373232303438363130303231374146374134374336384137433937434535313646414630344635363737373441350A30363334353436323235313035434241463144424434463045354545463139443945323439383730394442463242313934433539413537373339323932420A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A636C656172746F6D61726B0A7B726573746F72657D69660A2525456E64466F6E74200A2525426567696E466F6E743A20434D5231300A252150532D41646F6265466F6E742D312E303A20434D523130203030332E3030320A25255469746C653A20434D5231300A2556657273696F6E3A203030332E3030320A25254372656174696F6E446174653A204D6F6E204A756C2031332031363A31373A303020323030390A252543726561746F723A204461766964204D2E204A6F6E65730A25436F707972696768743A20436F707972696768742028632920313939372C203230303920416D65726963616E204D617468656D61746963616C20536F63696574790A25436F707972696768743A20283C687474703A2F2F7777772E616D732E6F72673E292C207769746820526573657276656420466F6E74204E616D6520434D5231302E0A25205468697320466F6E7420536F667477617265206973206C6963656E73656420756E646572207468652053494C204F70656E20466F6E74204C6963656E73652C2056657273696F6E20312E312E0A252054686973206C6963656E736520697320696E20746865206163636F6D70616E79696E672066696C65204F464C2E7478742C20616E6420697320616C736F0A2520617661696C61626C6520776974682061204641512061743A20687474703A2F2F736372697074732E73696C2E6F72672F4F464C2E0A2525456E64436F6D6D656E74730A466F6E744469726563746F72792F434D523130206B6E6F776E7B2F434D5231302066696E64666F6E74206475702F556E697175654944206B6E6F776E7B6475700A2F556E69717565494420676574203530303037393320657120657863682F466F6E745479706520676574203120657120616E647D7B706F702066616C73657D6966656C73650A7B7361766520747275657D7B66616C73657D6966656C73657D7B66616C73657D6966656C73650A3131206469637420626567696E0A2F466F6E74547970652031206465660A2F466F6E744D6174726978205B302E3030312030203020302E30303120302030205D726561646F6E6C79206465660A2F466F6E744E616D65202F434D523130206465660A2F466F6E7442426F78207B2D3430202D323530203130303920373530207D726561646F6E6C79206465660A2F556E6971756549442035303030373933206465660A2F5061696E74547970652030206465660A2F466F6E74496E666F203920646963742064757020626567696E0A2F76657273696F6E20283030332E3030322920726561646F6E6C79206465660A2F4E6F746963652028436F70797269676874205C303530635C30353120313939372C203230303920416D65726963616E204D617468656D61746963616C20536F6369657479205C3035303C687474703A2F2F7777772E616D732E6F72673E5C3035312C207769746820526573657276656420466F6E74204E616D6520434D5231302E2920726561646F6E6C79206465660A2F46756C6C4E616D652028434D5231302920726561646F6E6C79206465660A2F46616D696C794E616D652028436F6D7075746572204D6F6465726E2920726561646F6E6C79206465660A2F57656967687420284D656469756D2920726561646F6E6C79206465660A2F4974616C6963416E676C652030206465660A2F6973466978656450697463682066616C7365206465660A2F556E6465726C696E65506F736974696F6E202D313030206465660A2F556E6465726C696E65546869636B6E657373203530206465660A656E6420726561646F6E6C79206465660A2F456E636F64696E67203235362061727261790A30203120323535207B3120696E6465782065786368202F2E6E6F74646566207075747D20666F720A647570203430202F706172656E6C656674207075740A647570203431202F706172656E7269676874207075740A726561646F6E6C79206465660A63757272656E746469637420656E640A63757272656E7466696C652065657865630A443944363646363333423834364142323834424346384230343131423737324445354345334444333235453535373938323932443742443937324244373546410A304530373935323941463943383244463732463634313935433943323130444345333435323846353430444131464644374245424239423430373837424139330A353142424642374346433546393135324431453542423041443844303136433643464134454234314233433531443039314332443534343045363743464437310A374335363831364230334239303142463441323541303731373533383045353041323133463837374334343737384233433541414442434338364436453535310A453641463336344230424643414144323244384435353843354338314137443432354131363239444435313832323036373432443144303832413132463037380A304644344635463644333132394643464646314634413931324230413744454338443333413537423541453033323845463944353741444441433534333237330A433031393234313935413138314430334635303534413933423731453530363546384439324645323337393444324442394238353931453546303134343244380A353639363732434638364239314333463739433544444339374331393045453030383238313441354235413241354537374337393046303837453732393037390A323441354143383830444445443538333334444435453844433641304232424434463034423137333334413734424638464635443838423742363738413034410A323235354330353043423339413338393130364230433637324131393132414641383641343945464430324536314536353039453530454533354536373934340A384643363344393143334432373934423439413043323939333833324243344344433846374244373537354144363142434446343245324534323141413933450A334646394534464144393830323536443842333737303433413037464337354436313639333338303238363932434341384344314645393246443630414432360A443537423735313942383041384638444345394345453543444637323041463236384433433134303939343938413834334437364533423643303332384632340A443336454645374635433445354235433631323738363230304338444533413431454535463146464146343039373635334346434443384634464433324530420A303345444233453431333238334239454642304143333342303535363137303035424339423030353746443638433532443142304536374630433537313638350A373637463241413835414445344530313034413143373737373333443545333138413232413939343433333645354239384439363545353044333146333537410A384236454135413045413938453142303237434536384332454442313439454444443034454437344131423344323036443437314130433131433131343439420A444531393042424645424330384339453142373531334234334441333133344436423131413235313645364538364236374636384339373041333230443035450A393446454335374642333437363036444638393938394333333438324244303944303131433535414139323033313945374232364132303544334430463030340A323234363646303943303438324131363443464232374546364544324230343045434343334443414633343542354137333637364631393344343331323342370A373246443643464335453337393330453631454244354136333037453444453730313934453633383445433044373944423641443836443342333139413331430A384230353839443046453238323431443841434532383044303533304545393943383037323345353630424237324145394435334634373133313831463439310A333434423036443330323742413445394539344434333035424531443831373139374335344338464635364344363936343136354636343438454343384138410A363442343842344630464436393239394131333735383945323439314132383335303942323141334135373732463735423736303241394636304145353539420A303741353834333644303432323243373345414541373244453941354134343146383844323743313146344639313235354546453238304539314134414341430A314539384134453545364335374239414538364644323138433343443846323441343130343135364138304631333832313338344535323937383343353243380A373842393441423341303039363039303836374544333245384133303938304537333739323230333746373546303632424438334246344635393239424335310A434332324145453244424241414130303143464642464634314432353834323446414438383846464631424541423739364134344533313236313539453132300A374534303235433637364346393438383841313937314145463842363736344233414634413932443336464146364643353646443034393731304545333738320A424332434438344645323437334631333342453033433133343642383735343633463132364443414231354337413942434339413732374432333631313436320A344538443242464432343636363030323835443739353138373132423836383141424344363936303845364141393537384637424437373145433336453031410A354131374243313745333735303230454341353942343337393041424542394446354634464242454638303745353639394546454143353633453141434335440A454641333336453735444536443832343845393338314242313130383834464443383943324639413431454242433941384131463938453641343146363842450A454533304532354341313438433145464634324446463843323134413635333741423131463236304238433332394134393437423546433844433943353632320A344446374246344642464230303338304434374241424230334243333036323741413734313033453535334635353237384635333845444438433145363443450A304631333938434130414235413836363330313339423441374538464330323830344341464633383330313134363430414535304432464441334235363142350A433633414437454533333437383034434242343046423145373741364338393733354444383730333531433341313831313539314142343933323531423930340A333134463635373931393633433034313233373743314430323336324335453936353546314333443438303343443337394138454632344334383231384332450A444631313635383430343632424633374444453142384435464630394641324333423236314532463141363545434642453544344541443433423532433032390A454542333934384342384132353243424146353435433846413143333145393230453233413132444437323232434546324432413531334244373538454131330A444133334246354642463144373334363533454238334441324433373441354239413043453331364632344545333735443644463642444134393935344332450A444232354138383832313139333633363131394434363942413636453544414139433932353230464434463834343236413445353432373346413436393038340A373531373831374136454533453231313736443333333832354538383034364635304233434636393338414639424137394132463531333938323339454239310A314132443037463746434439343834323746463632463430464639354533394645314131414138343531343131353633464435333838343732323531433135350A363942444539323833423431393030423231454231313930443036453642313342373739344645443032304432433142444432303541453737423038344243450A454636323832343933393842343936444538354234303646433245313933394546303044464338344330374532364346373245433430314241414537353645350A374636363733323136453735363044314332413732334342343035454535434134373441303746363142383146383833363438324637334443393531364436370A434530434237373045414437353542364233353631393842344239374542423239433633343536393533323730434343384435363530433144303036453639440A333844453244464541423237444144353041383137463044363435443330414635423735413742353343424433443242384438374244304137453532354146330A323246374144444643453331373136393134433233313832363043324532423436363438393339323142363843354139333333344133363144393441373539430A304437423134364436464439344630343432443637324244413046363433324531384633433544464133374144413337384439354237354634313343394544310A424235433630364133454337444642334637393646353942303437384331334644313930303338314546453042423532343244354235443334443033414631440A344244433933454146383032304532364341323343384230453744444542424336373632413535373036374134434530354135323431383841384630324532460A333632354441333844464346333831373237383837463536343641333939354138413338413546423145354435454242333935464444304237433845373141440A423438454544423632414232434539394431323134333545464242464345454136394145394544383233384236304343373238384445333343373636434446450A313542373637423441453245364345303936354537373237324143394638363032334441363230353438434641433835424337353143343432313841323943390A383439463143324443424446414438393542353445353141353639393532454435304638324443384131394633363745374534343634333835344546443642330A464341454230344535354534363631433832443331453239333236313137343834383045463631464232464246423043464239343042454138314146434438340A344336413633333244374136303031373045333841384541464344344639334443313533433433313735343334433836424337343733343846414336314237360A314645433930323743314131393345353543383046314632304235333137414130413035414141333641453233354636453439463036453537304645453739380A383438353744373535324541393245463345464144353244453339433246384634334335394533413935374237423932364643393546433442363031383644460A374633353233454532414237344532393443384334424344384234393735453834383439453046424441364330423046323441363336444641353738423132320A434639374243353038394532314539463532393844314339463330434238424146463641334131314242344439413041354346324231384430353543343443410A344644344438464531414633363330393037444537453538354141383131463943443131464232433846433739313835314436353130303946413544463230420A334333334644324646383438413945334635363532424432393439363541333332444433463234364339314230414441333430313746463234353144313339340A463943334339354141433645433830363242453938453839313444353144413641313634414431333933383639334434343630343438353944303341393439440A463941433544463441303030434441393842423531364437363243423946364434344235323638464430433236453838424334413736304330463735413134300A444542444543413446353131313238423744323830353837323136304335353233364630413046413736333746463044344539344143303739434433433841370A443033413541353646323642303433384235373743343630313141313035333246454243414431344642443630333245323234463435363931413732363838360A353646333035323331454232464344463539433842424643423544424432443039334130453834443632414339334132333132434136393239354539333743340A384442413138303242383546353442354537453644363231364139313846393131464637303544334235434630353546314438373342393632383341304235330A353933343444393130434433393644383833463646373833364241363546414234333933413737334138463642433239383036394535424133383231304545440A343943394439323046373138453346434536393235323744433743434536393633424637343446324339314243353935323536343139364436303537344538360A383741304641423231463244423242443541353144374642443846433139393436443234453541323238343632433437373246393738453635304144434533420A384436364239433231323739433533314341314333413845434533343230424236353833373238374137323232434333363733413241354638424246444236300A433731394344303733454639413233363735313938343632433743383742323443433932443641454535433235414336333835354343333238313439343334320A443238463344324644453043313833343836373639413446443542303134333139334433314643423243324131344534383742424439364430424144424236340A443142353630323143333633413739354246313045324442343438323631433336334135344134414331313832423437304334353741413832444633463544310A463442333239383036313431454244353343414533303933313942393431333344374542444332443034353341393035414444323037333634333731453137380A304139354332363836453342333443344139373842464330454539363843333941424130303838394243353134393136324332423534343833443434464433420A354346463431463631314337453033423934393435463431343536304538373444374346323746464430363330383930443744374541363643424431353434380A323239303539453143343336424233334436393535324235333637414235443533353931433436373844304337303444443345413233463544394538413741430A313744303033433139453333334537323646464641323936314633334337304634323930383546374246453345323531304635394237384635384231394342340A303142343845313834424144393032304645434345334146353230343841303536393831444145413032414537383139374536353835354444423137303631360A463534323738333935443945413530444338333736314145373539463943444546394531393438453730303234313446433035323836454437393345363636320A333334374632413941463839313734393344373330354239324346393345384539313835463730303135463535393430383432393841364332463946443343300A363839463236324143394645444339423839353737454344453932463038443331343232303946424345374235433041383430434337363742434135364332300A344534453534354532424534443231433533383535434545344344304142333544314136303443304646464637374442414534323839373532323736353539460A413035464545363546343545434146343445393545323346414236303532313935433739343841463042313132363438324434453032443732424638414230330A444530463141363332463736373241443944444537304544433832414139393336373841383242454144304243323634394334373037464438353039383130440A333634423543364645304531303737324539353238384336323243324630364336333446344446384337464431343332424339333130443546323446454533460A374142333234383633443644414241413135373645373036343343413739454634443744463431303530393344363643454530463342383744323136344137460A323645413035463543343634354232324433453142464432323139363537373132433136384644393044453830314642304633323735394538304445433145310A343343454542313946454431324437353732303530343346433938464543363244364138443842393742433038334234413045393835414637383530443646440A383731364239393537433143333541303637354243353344463637324334323543373946343346444142414545374436334630393243463237314339413944370A433431463430433431383935313039383738383739343245363041343132423345454338344339413645314143374435344435323846353630344237324330380A393442373838323632314135424631463332354239324646393642383038373843433535304431414534443831393645343143423132353138353636303941350A433444334244303541393232443044343545303339443934353044454638343930413345393234453431343334313934393130424636304241314230384245310A423431383234333435363237373435353431413446313730334539353633323846363232374431314337343934364233384346423039363133393937394535360A344537323342383839423434433644373836373338363843383939313246384234463042344234383546313538374136333742363330463932453630373244350A374633423434454136464439364242443446433238413643314439303830354533424533453432413742433943383830373632393636433535424330344530310A323034443038334145393736464145364633374339344632374536384638433046323844353242313746364330464437433931353037303146443738463843450A423845384443393236304533393734303035454235434137323831373146343832443736353031364339344434414446453441343245463432323132424335360A374534454545453842304432413738353643443445343446353543304241423736324639324342384436344331373032324434424633413437433132463545360A323739464332333130314645453933373533363533434538434544433342373543394343423239424631443435353443363132304445384545373530464342420A453338423544393135323036393734393632453332303336324535394233463231423341423138373537303331393130343344303332383444343436373334360A434646324639384345423438343542373345443845303033453044433934323531423733453133413942353141334631343330424346364132314542394237410A363545313746413431314635334245363433324631353036323332423831353945303038464132353746383834413441303141433533424539313735344437380A424631344135423046424642394333314246343930383335354638413736323035323936384446353236443131383730384343423042374342354245453238350A364441423643443245333933343137384536304245434231314141423534373836323343463643353043393246384242354431413538333630393032384641370A423841353342373931424443394546373641313234463346373634313835374534424541303833374342333631373645433941353232454137463431423844330A363343333744313134353336374244333030463137423534353232413833344242423734444531324246394542323641434536463234413034364435384638390A344434423744463734383735463141304331433944393742453038343935393344374233393845423442303042454243384338443134393742364546383331410A413335333830464642374631414641344438383841413532433934383245384231373535434332303939303546393846343044393542343444344443424342360A363734323344314243324633353630464630413842344630434143333532413445453243314439343645343541414543384136414434303330334633333832430A444630373536424641334231454436344331363945353645443143373630463246463045323444433543394634313330364546384432363238313533443330410A354443423037393131323642454644343934374437454630383330314645303135463242303030384446464342463946324434443835394644343345433744390A433542453233374539424636363635423742314245424233363246304330433341384438363031304239433937464137343143393743324530353133333836430A394332364332333542313444443241353842464441433742354636334442344441364435443337443030393831373541393037313539304531444636364133440A423831373341303437433239443744333535353746303631333243433932304235343630423841464331314432334430394134453435443038394635454235310A393633464131413632353645333539443438353130374644313433423242463231464445394441353734344243323631354538364333314338393437304346300A443036433633393744394643434233313645413939383934333032343037353944324334393435443934314631353946433032333237463334423034324241420A423543334134374337384538433141364642434433393642314135314343344230323042384144343031383431454441424143454344423438324436454335420A373244324246454234353536373230464144443439443037333037433842323241434237453331304341343135314138354337314545463730453844313544450A423342303046323645304531363643313436343741363541444132323841334431433839303235424530353933303635363544423142314546433337443335380A384331454230323432353441464430343942413937374244344332433630353035304531373934304138394430443443354439363345373932333230463544420A333730363638324530334432354439453032343837323437383139353531343635303932434332324236423536453933463341423532383033384645433346300A363638463836363730374131394230343633424537303645433732394432454531363533414143374532394244323542464233323431443437393246353135320A454434313542344537464139324332454535413232453237453842373535343243343932453536443831314331393245393535343241364645304246453541350A363932373343324142454434333030443439314239324432414543444432373834303443423834423142423142443741464543383538323135383337443131380A433045393238424537453037434645454235314136443231333735423737324238323438433939343536343031343031353233324130444134424541313735340A333237344634303746454430383337413233363337314631413332303536323430463230313542314537463442324341373243364235383631304136364631330A343037434646424135453041323839334331463537324435304635313238364539313333423541383432333943393439334230353734453737443238314430310A313144303036383333353441303030433937303045414642433146443130344541313944464342383734373031393045374532434532364533413646443046460A323632304238374238324143383638364236323036423533304631374539333438424337443034423934383334383830324345353341333132343433444238370A344442424135333133413641324138444142384131434339413539344646384332393932383143304132363143384342323232364237333246424545444534300A324336414343373441314136313337394532453143443535343843443930383236384133324641383344383530344334343245413045313833414442463746460A394644303943303337414230333531364543434139334646303438323335424431314132354442303746313634353132413037394335333932414337463838390A434539364145354338443935383042434146434330383743333545373645454431413637314538374331324533303435453135413638373133343733364446380A444139383437373241464431383944363835373141324544373235364631453230343233304534314433443944443837364639333839353137313441333937330A304341393331303438394638453830374331433741344535314145413542433033303631304135443732363346463745304639464445334535453337413336320A354239313930303042443934443937383538334239343245423739434632424541433333464542433941363732373245423130383635424138464237354644370A394432383041423539463931423936433136433938324445383438443736443846413836323044464437433830423744454145373236343335304436464233410A454630343739344441333330353834344137434637313846364431413441334146463638323631373341303736413133373241424643353445443341433643320A303943393238374643383330353536434136393445323143413533343245434137423130433930414643343738334438343144374231453334464133444237410A324237303646334532314230464241423233453732353739363246433342433330394345413243373233394139443642343443433936383235313135414244320A414639413235363644324633333832433031353639464244423934433844363634413544413046374443334444313430434137374337343344374243313432300A333234454346394534373830323830454231313938383545393641364336313943453343304338453145323634453244454231333745354443383134393738360A343836443635363637454346343742314131453230453945364534464338333233453042433845363142444433424344464336353735433639433033453331410A454646433239303437324342424430343944453346383430414545333741323438363033343234304638304537354438413739453037363233373744463636300A353242313245414131364436373839393042313141394246424330334331443446434441394644344646424233453838333532343338313032463130423743350A394630344330313342363537354235453934384641423538454136393139383441304535344536423946334635303546464645463734443036464131434446330A344238413935393034433841323736334141384146354237314430304635444530394443314344463837413038423644313831343533303633453134433132440A423742423337373541364532413930313633363237334439454542383333454138434632304644383341453839394532384441444531304545454332304244370A424439333038354134423141433830414331414538323830433134373637463141343837424430363630303741304430353033313742443038313133314131340A364541303839384544353945343644413742363235344244434342433636303638364532454441304537374137303541363533373333424235433534393744300A423133303335394638363643463239334642364546304332414335424141324442304445443034354532444544334132363132443037383333333236303335390A313643463043434232373244333437363745413036394530463042304434323332374131383532394437324538393045444136313935433236383834333845440A453941434442454544343145383143413845423545343343324230394345323636454643413033463244374646353746313242303646394535344643433641360A353436363736463646464335423842374433463039383242364646304432314439343933303946304330423137354343314430393736463843353543364145440A364538323143333930343145323244393141423330393232463242324543323734364243374441423438343939313534324642433832443837423438373530370A353539414234363646373345453233433244333139344443354345344339414536364433313634363133414335434242334442353031423634444137433931420A433745443245453930323746433039303638323042333544344632434636364334463943453441383834423743303731353542434138383445434135454233410A414242383346383444423146353633393539394443374433463531323431414235443935433342434237414231454339304234424339383946373446423335340A303442324437333636413334443333354134374238433030433035434234323334383242463643373937304139353534353432344130384146463941303335420A374638334635324236354139373939434537364533303342383536363442363234433635453943413538313834433742453242423944394338364134444535410A383136354545334441324536353242353032324545373839333839364241424438383933314445314435333846363135373837363435444635414342424130420A413845354238393941333733323141413744344232383341433932333439373843324444383138313341314545354442364543313730444143314236454630320A393438393236333542343938373635433037413338443245394442304237353831423131303536433238323738463839423045363039393833373943303745420A433045414544433332414136394238423833364639324136314146443335363838333135423243334638363036333246433133453442444642363332313442430A343143433638353945414233414333303334343439323133434142393946413144323136353633343139434436443643453445314235364633334536433635340A374141394443423542303546433036384446303241433332343038433830313041443030344636434341393838373833303932374638434243443439434442350A313843414331454146463831354646324636463532374639333639343832303135363530303330323243364337333930423445334332423231394642344637360A394631324244323543413742334236314431413246384446454537393544303444353432384234324642363645304332353441463742374131304345463746440A453042353632324446364643344246353231343732303844394139314542343942303342423430444537463846424642353636463235313934324338464642310A314446413530343635393139343030433231434534373234443132453445423437414135463339324241393237333239444243413238413738464331444632450A364646323746344534453346383937314437424342354633464246384633304332313441323645354533324530453843424337314246323041453537334242420A313633444436364538394632433445324231413135333241453831433036303134364637353541314142413346313336354645413330423430334445374232320A373646343345444332393944423943344235434331463034453039464538424130334138334437333442443035434239424232363931373445314242423033370A373039303832343431433146323132363937443431424433334337343138363038374635434131384342363932324631424432373643353638383646313839310A364136434638393143303038313134343833393639314638454244433645323037343636393538414334324243444339383644463234423442304542373643350A323336343846413033313737394646303737444132323836443730344230333632364531413142464438344543363744384432363041313932323432414444420A443246393939433634393632444333303137464232323344304636353444413845443844463645444530353436444530424630323139344333384530463145380A444236393333383743364232373546363441413930303641343541433942434445394145324133374538453230454438373641324342354234453831333430360A373738453145433143433135413132463038303937353930314445373643463042383841363738383344463435354231383044363445364537314233313239460A433441364436304244343733384338323343453141334337394138354143443741444138364234454646423830373835433832463143354439463646383643300A343043424639434134354433423832304539303641364443344644363432424246383244463934373539444543343141333937354643354245314133433544430A393431373737443945374438324532433834453534373535343734343743434534323939354638434533343537323441383231423841414343334445343533460A383330433437413642443937303946414345374342413942393344393734374543453033444235453842374330384133334345353832423232363539444131460A413244323539423542444439373842364633393136373346413538303132383343463444324438423441303238423543304639354434454331393341454234380A373435363830384343323937343437430A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A636C656172746F6D61726B0A7B726573746F72657D69660A2525456E64466F6E74200A2525426567696E466F6E743A20434D52350A252150532D41646F6265466F6E742D312E303A20434D5235203030332E3030320A25255469746C653A20434D52350A2556657273696F6E3A203030332E3030320A25254372656174696F6E446174653A204D6F6E204A756C2031332031363A31373A303020323030390A252543726561746F723A204461766964204D2E204A6F6E65730A25436F707972696768743A20436F707972696768742028632920313939372C203230303920416D65726963616E204D617468656D61746963616C20536F63696574790A25436F707972696768743A20283C687474703A2F2F7777772E616D732E6F72673E292C207769746820526573657276656420466F6E74204E616D6520434D52352E0A25205468697320466F6E7420536F667477617265206973206C6963656E73656420756E646572207468652053494C204F70656E20466F6E74204C6963656E73652C2056657273696F6E20312E312E0A252054686973206C6963656E736520697320696E20746865206163636F6D70616E79696E672066696C65204F464C2E7478742C20616E6420697320616C736F0A2520617661696C61626C6520776974682061204641512061743A20687474703A2F2F736372697074732E73696C2E6F72672F4F464C2E0A2525456E64436F6D6D656E74730A466F6E744469726563746F72792F434D5235206B6E6F776E7B2F434D52352066696E64666F6E74206475702F556E697175654944206B6E6F776E7B6475700A2F556E69717565494420676574203530303037383820657120657863682F466F6E745479706520676574203120657120616E647D7B706F702066616C73657D6966656C73650A7B7361766520747275657D7B66616C73657D6966656C73657D7B66616C73657D6966656C73650A3131206469637420626567696E0A2F466F6E74547970652031206465660A2F466F6E744D6174726978205B302E3030312030203020302E30303120302030205D726561646F6E6C79206465660A2F466F6E744E616D65202F434D5235206465660A2F466F6E7442426F78207B2D3130202D323530203133303420373530207D726561646F6E6C79206465660A2F556E6971756549442035303030373838206465660A2F5061696E74547970652030206465660A2F466F6E74496E666F203920646963742064757020626567696E0A2F76657273696F6E20283030332E3030322920726561646F6E6C79206465660A2F4E6F746963652028436F70797269676874205C303530635C30353120313939372C203230303920416D65726963616E204D617468656D61746963616C20536F6369657479205C3035303C687474703A2F2F7777772E616D732E6F72673E5C3035312C207769746820526573657276656420466F6E74204E616D6520434D52352E2920726561646F6E6C79206465660A2F46756C6C4E616D652028434D52352920726561646F6E6C79206465660A2F46616D696C794E616D652028436F6D7075746572204D6F6465726E2920726561646F6E6C79206465660A2F57656967687420284D656469756D2920726561646F6E6C79206465660A2F4974616C6963416E676C652030206465660A2F6973466978656450697463682066616C7365206465660A2F556E6465726C696E65506F736974696F6E202D313030206465660A2F556E6465726C696E65546869636B6E657373203530206465660A656E6420726561646F6E6C79206465660A2F456E636F64696E67203235362061727261790A30203120323535207B3120696E6465782065786368202F2E6E6F74646566207075747D20666F720A647570203439202F6F6E65207075740A726561646F6E6C79206465660A63757272656E746469637420656E640A63757272656E7466696C652065657865630A443944363646363333423834364142323834424346384230343131423737324445354345334444333235453535373938323932443742443937324244373546410A304530373935323941463943383244463732463634313935433943323130444345333435323846353430444131464644374245424239423430373837424139330A353142424642374346433546393135324431453542423041443844303136433643464134454234314233433531443039314332443534343045363743464437310A374335363831364230334239303142463441323541303731373533383045353041323133463837374334343737384233433541414442434338364436453535310A453641463336344230424643414144323244384435353843354338314137443432354131363239444435313832323036373432443144303832413132463037380A304644344635463644333132394643464646314634413931324230413744454338443333413537423541453033323845463944353741444441433534333237330A433031393234313935413138314430334635303534413933423731453530363546384439324645323337393444324441453236424631463438373837364144310A313631383441424341373434364132333532414233374333364539433942423637434545313035433631324433363536364642343539443641434642314443330A374135393434384130364542413231463838323432363642444430414346394533353632353141383937413932304333394631414232333645453036433033390A384334433041453535464345443436344531394146414635343844343534464346373346363038373130323633304145413033453632324146323539363837300A313335333932353830313634324242444331314630393936334634414446303337363731423733443438434439433230394442344435424537463443423338310A393438383745383336354432354334354431463837454646414533363031303441424433323335453444324634424131363334303834343845383134443439410A334537433137314238463132373544343939333743333235353332363036393030374233303238343445424632424331393930444446463141333443323737300A413236324143434538373444413145303030323138384436413731334337394435453932323631373845454432374436463445344443323445443236363942320A333837334634324134384535433133363541414643383346414438423834394535443745353242464242303142323831303035413945424542344541324633350A423639313438393330354243464535353136444546424130393246363641424341324437333941393237374143363946373446373836303435453633423046380A363644353435423132423035383141454235373944354531453241343132444238463636323736453035463133314543334239463534334531314634304642410A384343343730373144423034413544333841373037433946383235353237353231434131464334313246423534444244373245393132424134454338463734370A333036413635303430363731323337433846453834414236443631353744393645444531334233413846424637313430463141394441353542363636393533420A433746413633383335334632373844303730363641423844444630444646433833324637303235444631414639463839344435324539464139354542424546350A394436423937373638464543323645383435423837433641434635333935433735423839344235413146353042323438424133333934334335414436434332410A384439414336354330384233323036453746354535393133434430443534433946463734314134443932423632384638354534334635323038323339373839310A363645364639323245304246413245343546303037323231373031314434423845423430383933463135314534453245393245434535383632433436374434450A333833333331314230383334304145314330433639323039354146423733394539423941344635364246413046304232414238343535413734373043323243320A304332454332383530323631393543423733454532413731334142424445343934354146454239323633304246383532444434383435464234433941384338410A304338433937314632393434304234413738363130384430444131414546444245303335363842364232463339353342344430374135423744364646353634460A364343304438433038434134353944353536313534413435313333424437414637304337443846343734444536364536344641313132443737363437384138330A423238324541344539343143453246443644384637423638443132394345303039334141463743314433343543334436354245373445453933393143394238390A324434443331373634463142413831434231324345343644313541364246393431433946304541434234413244454343384632463642383546464634393044340A454437424236433743444544313046303346363832383242324544323038303946393538343041393034303230433938323939453137433436323433443945460A303542354238313733424232453843424142334141394238323037413945464536333636433931413736373444424344394641463132413245463442353131370A353638374633444631323434463534333945434438414230353837463439324539393044443742353136433636344146414237364345373130383446444437300A453746354133384244343639323636313536353934383844333534384335303636433036453434333031364444343032373543464633313035353733313137450A333639433843333445343842454538333244393346304144413736373446433646354136343138334442324237304646313636453032453034344237303633410A343144324633393641393135384132364433393533463132393832414344314437353933463437344442393845434644303045414635374641414631374337450A433145343737354233374643424344364442314235424336323039313632453537453231413641463432373034333536324439383534423433304130424145440A323044333141394143333334433837383735453533453042393536443333313131393535343539444344393844353445314243433631424135384344423431450A303330303939373943304135343146413946363942353544334633373530353135453546323638413742353532353442384134344341373332463242393234320A313846333443303239363635423331454236383333314230313437363037363435393833333430443135453332324533443035333245363337364434304641320A313034314637393838454239463536443833393436373537373836373337443842423441393936454137393333453739424536314234454131313135414134430A323836423741414645383041423743363139333239414435464137373241363237394645383546413642363233313338464145314336414533464134354142300A393544383032304432454532393739453841383744374537433544413245364237303146454234393233463430314638393244383341343932383830373135320A393643423636343031384146323445383239453538324641384234463045303733383742414335333533304142334141444637343430344542324633313145360A433641373046393630464139363245353241333043434336453135303937463942374246303131363236444144333845444637383734354236304330383138420A333436363336383335373744383937423142364145423234304633413241413239463146313830304645304135433230354233354336413634333832353946460A434345433934324144324437433343464530314639353642373935433033343944443533383044303134304433424235344644393945454535313731444146350A344641333630413734303538394131463841423446424332373543433036464638394138333530463439383246383745373437353031413734423743383141300A304634304642413944323837353032324443334434313746443632334438394642364130433046314239333041434332313137433643453934414145353834340A304235433944414435373942374444423733463242323642303545314141453330414636393933373732324538333630393837414330424442453330354235420A444442454635413643303342453137343343353138453642374235384138354143393631423837353542463337363838453337444530363332424245303645300A353346414641464245353245414632373633363541303438344131413638324339423934383643444346424642433446344131443642463731333738463031340A353644444639423135413541453032373638323741434244394142303444363835463532413632424433444133334244433241323632423735364235384332360A344633423535323834314238314341363043393531463430303535313136364337324238443335374438313232363835464539374431344143323241423646440A324545344343343239443538304144374238443132413943363031464545354432354339384243424346393643383746434642463238343139424545464641380A374134464337423645354644333737454244354537343343334644424237353534413146423936363342363438423135433431313943413935324138323633420A323738453538343541423932393934324531413046433443433431334633363133343838344541463337303438363543313437384436393838383830454235340A433543354331424444374342303534383334324239433742364639344444363334314335373434413941334334413836364636323042423730353735454142440A414141343245334236453233414130323930383042323939323934414632453933383835323033363745393634413341363641383436323844373546314245420A433741353843393245463733333546333042443041323644303732413938363633353331384530343733434533434435423446314242464636453738313933380A454534453343313141433237413142453043334235353538364134353635453442393637454432454534363734313231413436444131433332433544323738410A343442454234334343413234364237333044333337393138414141333934373238383134433732364441344639433430414336454538373733363539373645450A413533323736413831384346323545393935434141333430333933333943353544444445373442334331313734323738364331453946413543343332454143340A453138344633353536304541333144363837443030353834334230324639323532433241313646394534433331433138443044343542374435463633443538390A334331464533443333433931324239434437394442434346394644383232334644433138443535373632463044423244423234313632354239314442313746360A323036313230443633303044333137453832463344444536443244303832353534374330384245374536464638464235344434444645463246344534373546370A463338333842344144424534394638433431343039443835303835444235413033303835384141454541354142394344324431313732433844304545333141450A353037443830343845313233414541423035393739433837324144424134383333443336363236313636424242324132434546324633453634314442343239430A414231354339374437313830453845364143304438373145323036373835313641424141344436313642353143313332463431453536363138353842384332430A454345453441363541324230464633313044464235333142323133313936443245324142303135393633323436463434453232453630334537343142424646300A313644424643323834393036393833413843313532373841333646353337394634364331353233303444414443384439304333313339363145354635383138300A454545433541313531333145354334384144323746383042373745423033373034383244353238373335464241334536433035343842423636434332323246370A434345383731393446353635423945463746333245363536453639363435303143453332343632464641364238373038374542414634354434353443464241390A414341383038433433393746333835323135384631433041453434373732323533414245463644323738463732364130334139434243343333304543383044300A313137463931333143353937343434354238313039334331443645303933433636394344323835443142464538363444353345354631343044343042453443430A323638394334324335304334313337444535363433373442323133303630393738354438463531394530303833444432344134344445323441363845343037310A344132313232414238414239363439363630443143393644433538463337463838363233353238303738424644413342413330383544353237454434434146360A323542413636334136314145433439333843413738433439363233464530454544333344413244303843433738463836413830374537393142433943464346450A384642464135354543323235394236344333314636454243343544324446394234374545303941413534303131443430463535423646313246343946323236360A454444423039443434433532314543393536384341374536323238334334383341343336343137423635423446434243374541333241433645423445374233300A303830383136463239463036443642303945353530364433313439433544373538424138354438323033353744343935354230433146464233383345313044410A344436313737344433423233433834413333394337333438454341363037383038304646384234333642323236313039314442424443303235383345333636410A363232454439463935443241383542444241343844434538424534353632384134414446443541343838363938303044394235344635333046343341384635330A463736354635443543343441393339394643314239434546413334333936363131384444313143423130323432334434364241304630393637393541463044310A424133334630383941443830413130344445374644463841364537443933354536373133393633464533433537434336373342434444343233444633444345300A433537454144434132414534444242333031363643324346314637313133444639364132374434424242323341424543433541343739354631323930463446350A353239334235383730463839324339413332433737364141443036443738443035313446303437333733383739434643354146394436323444434535424338460A374345413530353530363430353041414232463234413143373932423236303946464441444336414238443046333141313234303343463334333641314531450A453234424135463932353837393235433444363739354133464231363332343546424630353442423142304646303146443633444246374331393244304633310A333341313745373736343639394236363941334143434637433336383439454544413339354537463535313734303233413739393034413736364632314435380A334444423742344332383038444537464642383731373635383038344537304442453034364131334242463146394242393742334142353237443638444538450A393234444536353438364333423838334344363541393539303142304445353738323143423643364145333736343445303246354342303136333631373131330A433931443243363439413042413130373336463337303942443530344632324441383833314130394244304232443637393041343938463246424332463634320A373834353739364536303645434142323335363233384141463430333233443731423233364342443145334534334244353434334633303444353246334343300A323844423544333341373332363935414130394330343439433533433635363730344438323032313741433033354446343546353941453434353934363438310A453542464245354434454330413432423536363246424542394646364543464642354538353137333132463536433931413031383234453430314537323033450A323538433342413037334331423235333242383331324635414532394533374635454137314335324631373135393342313337304434454435443733343143440A353637333930454435423735443631324435383733424143353138353837353235413539313136344538443336443242443839463739324244394545364143450A393946423732423233434232343435463132423841364130383736454537313131363643394533343839374433373031373443313741323439354435384234440A334441313944424231414632453039433732464134324141334438303437443035414334463641323746334542463332414444324144324646323645414530350A413941423334433932383745453030453845433239433636303330333644333635414530384530304431433743343130454132353531363936393534454339320A393230383043384641354339453637363938424437423839354338324544323933393145303135463833453044413134353338344532323333313943424137340A313934393446303730363439453033434539464639303536313943364342343046353632444134394331454444324341323231444437443344414641383237390A414235304445314330353943423844354339464138313337444137313142394433304632333635323641413338394232463739463344354241364544393533340A383835324246343434384443314237324533363141364132423934434638363542433943333430314439393535323945324133364445373535454530303146450A433637423138344145383234314430384146383844363236424432443841413132454537393141433432353344343736314132313931374337463246354145430A373935434431344233334635394444373038304337363534444546464641363639463530464231414338433046324536303230313637334137384430334446440A444530434231343246304636313643343035313737324244423833374342344345383741304338443631453046433746393035313745413046354636423142340A443537313433434330414537434139353231433135333639363238363744363331384446314339434536343736434542394144423231363535443337394232360A374130454145433244323834333043313444333837363443343933424134433036454634424536373830313331463246454330363643343836364530423235380A353143343842454637373031314130423537363343423344363941353042444435304332443745464242463138424634323534344231414331393633373746420A343832364241434233433136444238303544333843333446394539324141394142354639413942333137443842463332414638413735383031373236393931340A444533423734383632354433313945353731313837453142464544394343424531314142433138433043363132334432344432433733303344453939383834370A304636463634343734384544323235313335434333423935374544453835363741463345453437463545393432454139323933463742463734323630443144350A413646354535363730354531324338333739444544313538453636444635343334394630353034454635383443364430354334344344443842373230383039450A334443333646463630424635354644463143413843393638453638333436434634334335363845304233313735434237443535333433444532314346393733300A433944463931383336303033364534323034434430323441363745373634443343433736373745354232323943314239303945434431423930343231333442420A444438453437464442463633463231324434303141373937454636303031314635324541414642383845334537304530303742463139383236453430464534410A373342353744353246414233334137333742313334313338314542324544333037453042383342343544363931314530344245363233444138324444364244420A324441303936383237453641343938413844353033363638453435393236353235373839443433443142443542383936423438374330434530344643394441410A434439303738443043384130363339453237463044434438324335353241374641424134324246464541443636434542424434443245344234413142343041370A423646443131394433374641323643313443323941373045324544423332353341314141414332363530303039434133423937423433304231413035463243360A463231323043383938313638334430393736424334324645393841423244333330313442393833434531453246314531414334413532343234394333434631330A344233363635324639364643424433363630414346433246393737384237323941464532434531424346343733444335413834364643433341434245343535450A324333373835334635323034303835414246334245453530433238443939333132413037384345324636463443314432443330313746304535424235423631340A313032424534354341463831303834303745413937303131314235413937434138433741363443373044353244323844324544434432373837394231303033410A364431363843443035344538374330363337343443444530393738383743444632363844383931383041463842423446313730383034414535444137373942320A313934313737354643333246413138393033384436303530454330453430304242454433363445304343443844413537314539303244414438313239383845320A344246373631463437324542454234313133383846454236463930313737374430393034303046363935443832334337353838383243433030384438383945310A303236373846463831423235324333334338394533423034313537433838394434463046383644343332463042334444373831314243463031433246433034310A304434423144443943423646323433334639423334453745384544384242314641344639463743454235333534413833303543333732433245444541464535420A344145323343454633344143343537393631423135434541303834453331423337343143463245433331374446343834373336454444363838373337433338300A364438363842444330324431453633413532443231433845374331464431424438373137363132464332343732393343433931453045454130384435463830350A373032313737363143464341304639433133393936444530463034354632384442363733373832323137323234313632333645344443303031393445394334350A413338333946344242353345323236393139433243443133413434453446363733333434353444423745313333423244333038393235434332453237353239330A463831414645433444434634393233304632324546413139463438434142374530394641373237434332453131453541354343463537333037353036443545370A364444314432364246443344463937453733433244433031394230413735423944363338363436394143463141303041354141423535463939424131444534390A393838334443344642304538414439343231423130354530353035313939373637303546374243383839464233423643323932314432453139384645413239340A453139324442333733384542454246363438353037353732384130453136414244353341323542423037393541323142363541464236414244374541413346370A314441453142413031323635314234424130414245303246334343434542394539323937394631374133333338413337364335374131463133453343393043370A394445384144453432313332394135373336394343433242413632323834304237394330444630393845413432423831304335393644453835463531454239450A433846364641413539384337334633353946443743423144333337453342303833383333333839383436413939433837383835413735333744333537373244430A413745453531453845454543463445344633384141303443334634433434373038303338364134314631343631353939373339443733433538434430324436350A303839393137374637443730374145373933423443393135433539304146443645363831303730304243304333443134423637453033313239413432313545340A393533423838433741394646314146344236444132393345314446324546353636374434303841443346324446444241343645463935413144384531434132390A464246413031413442393635443131303143413643304332424634363730453934373736373533464635324332373531414534313837324542453344433636440A454535384246443342463846353433383032433736313446363445374139434334343734444142354634433539463830383546443532334339314630464345320A304341454531423936313330363446394339434539353536433834313536334134333636304530453731454537363146303434384334313538394144303331320A393538313637463632464231363636353538303031353046394538314135353839343930373146303142423131433941434642324143413446333332443241430A353938414435414244334435454231374146413937343536433044453444334438373237353046353438433335374646333439313941334544434646393635380A463344424635334242334430413230344538343730324446364643463530323245373533434139323332334142454443383130373145443434433330364137420A433130443135463930353637323738334246434446323844393745453135364532393330343643303935393531353943373335413236364144414143423838370A373032364334303439353143323742383843433345433141364631354630313644353541453642354444373339393134444244363836313039383937373036340A373632414532383637363937393637313137444437453343444643323444303436463144383338353644343932323431393143424145393543324537423944410A344443354143423036423946363337333132433133373839343145463642394439363645383444413639453636433433454443303536344434413942323031450A354343443833303930304143344434454544424241344144313441434241444132303137394145313338434633354436463833303830314437463944314633410A423438423643324541334237374537454534324443304132364337464441364542363444463431333646433341453046414441423834434433303339324534340A343944443346374446414237374143324533413844313643394243303032414131374139433145393136364132313634384145324144374639444232353044440A324633463438303834344339333035393739364538393233384230444434373033323943324145433946313738423833443432313036334243433138434333350A324335363244414538364542453635323944313930363646414237304338453733423236304337313932344230423344443635324145333744433241444344370A413345334531393336464444323539413346333244363639423643443832443733343336323132443643434245343336353738313339414530374241384335460A303741384432313538433846323130303746433042393645324233353838343636413646414234463730333633453939344143344644433243414233413437380A394339384445303739444632313936343841363231394543373034304138464139314245394439343531424541383939303636373738363646353042364641420A453846433030453832364231313543443635464146373338343932413931394343423635373138364241313232363043323831364334344136333232383543430A323543413144373937444230443930314545434136373546464131313832414436443438413841393634303244303741323838434343303246384137434530410A333930383444413337394335464430383734333036303835314244303241334339434332393846464130414541433546354531393238433436413645424234320A374432414639443332424430313137413843443742343533433636464633393136333039323536384235413236463231303930304434363645413543453031460A313442433146353742423044333138364245453942413141353634383838374341433036453233303537313939413331373831433443333742314130374333320A423841453841343046354334383143384432383534414535433243334337343643344132423438313839413337334134333846353132363432413535463242320A334343443244354130364131383539423530433143333335324231423542353645363532463030454537393036303834324133334138434244303032453737370A334346364330353141364435463032453335343830353639453944303034393343343934463946423937374536363541414534343638453644424243433935300A333338373641323142373530393543463339314530394538313444374130334541413139424130443741353630363130434333364543334139434133394344310A344133353946424331344230373937353337394236383934394339464332444641463033374335364331333830324137463636433830393534394546324643350A323545463346353137463036463930454544464136463841334535463146333533314135343135463331393142384641374230463238393530413230413145300A364533353434383044303937323945334132443637393644423831383235444144464134353830464443373831334237393839423138303230433341423141320A383745393438383930433235353633434232364130363841424142443934463344343232313332313846324143424232463542333137333131343734423232320A424531383434353438353534423337433937323834393430443542374146394534434244383834443439393441373643433141424638453641423036373641340A304138313330463035423041424143303838464534463946423533363932344135353435314338373732423239303837423845354536343944413342343439420A344130353532313444463639443032313835343934343042333636354534443230433541383636304233453043334142424133343236453738323045314139340A354432373341364143413138304238413438333242363844313143373934423544453937463845303837453331413138373735363634324537314339413734320A443537373943443532433736413744413346363532464434383732393938314237344630363437373137364137333731313946364246393534443145374330330A344335394642344537434446393345354646373345373838333834434238363130344539333242323533354142363439364545463344343641313346463543320A373938394639394232313743383238444337323735354438323236373339423031393036423738453437414142324631344136334645333744393231463930310A393637314237414239454335343234454137304438384638423338453734324339394330313433363838414136463144414134463335423533383536413344350A384130423237443035343637433443454443443438434532313643373444363034443041413735453230363442463533324132323735313243393330423134340A333437363342384244353139434431413843343533384246463043344533343439433346353337453736463033394342334239444642353933313835413631450A434431433630443742464334454238374138464641433435464432463938324235323139383830353044413045324538453531383030323043433739354541360A443530363133313236333035423839393330383730343641433746343242304538373236393933440A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A636C656172746F6D61726B0A7B726573746F72657D69660A2525456E64466F6E74200A2525426567696E466F6E743A20434D5359350A252150532D41646F6265466F6E742D312E303A20434D535935203030332E3030320A25255469746C653A20434D5359350A2556657273696F6E3A203030332E3030320A25254372656174696F6E446174653A204D6F6E204A756C2031332031363A31373A303020323030390A252543726561746F723A204461766964204D2E204A6F6E65730A25436F707972696768743A20436F707972696768742028632920313939372C203230303920416D65726963616E204D617468656D61746963616C20536F63696574790A25436F707972696768743A20283C687474703A2F2F7777772E616D732E6F72673E292C207769746820526573657276656420466F6E74204E616D6520434D5359352E0A25205468697320466F6E7420536F667477617265206973206C6963656E73656420756E646572207468652053494C204F70656E20466F6E74204C6963656E73652C2056657273696F6E20312E312E0A252054686973206C6963656E736520697320696E20746865206163636F6D70616E79696E672066696C65204F464C2E7478742C20616E6420697320616C736F0A2520617661696C61626C6520776974682061204641512061743A20687474703A2F2F736372697074732E73696C2E6F72672F4F464C2E0A2525456E64436F6D6D656E74730A466F6E744469726563746F72792F434D535935206B6E6F776E7B2F434D5359352066696E64666F6E74206475702F556E697175654944206B6E6F776E7B6475700A2F556E69717565494420676574203530393636343620657120657863682F466F6E745479706520676574203120657120616E647D7B706F702066616C73657D6966656C73650A7B7361766520747275657D7B66616C73657D6966656C73657D7B66616C73657D6966656C73650A3131206469637420626567696E0A2F466F6E74547970652031206465660A2F466F6E744D6174726978205B302E3030312030203020302E30303120302030205D726561646F6E6C79206465660A2F466F6E744E616D65202F434D535935206465660A2F466F6E7442426F78207B3231202D393434203134343820373931207D726561646F6E6C79206465660A2F556E6971756549442035303936363436206465660A2F5061696E74547970652030206465660A2F466F6E74496E666F203920646963742064757020626567696E0A2F76657273696F6E20283030332E3030322920726561646F6E6C79206465660A2F4E6F746963652028436F70797269676874205C303530635C30353120313939372C203230303920416D65726963616E204D617468656D61746963616C20536F6369657479205C3035303C687474703A2F2F7777772E616D732E6F72673E5C3035312C207769746820526573657276656420466F6E74204E616D6520434D5359352E2920726561646F6E6C79206465660A2F46756C6C4E616D652028434D5359352920726561646F6E6C79206465660A2F46616D696C794E616D652028436F6D7075746572204D6F6465726E2920726561646F6E6C79206465660A2F57656967687420284D656469756D2920726561646F6E6C79206465660A2F4974616C6963416E676C65202D31342E3034206465660A2F6973466978656450697463682066616C7365206465660A2F556E6465726C696E65506F736974696F6E202D313030206465660A2F556E6465726C696E65546869636B6E657373203530206465660A656E6420726561646F6E6C79206465660A2F456E636F64696E67203235362061727261790A30203120323535207B3120696E6465782065786368202F2E6E6F74646566207075747D20666F720A6475702033202F617374657269736B6D617468207075740A726561646F6E6C79206465660A63757272656E746469637420656E640A63757272656E7466696C652065657865630A443944363646363333423834364142323834424346384230343131423737324445354344303644464531424538393930353943353838333537343236443741300A374236383443303739413437443237313432363036344144313843423937353044384139383644314436374331423241454546384345373835434331394338310A444539363438394637343030343543354533343246303244413143394639463343313637363531453634364631413637434633373937383945333131454639310A353131443046363035423034354232373933353744364643383533374332333345374145453641344644424537334537354133394542323036443230413646360A313032313936314237343844343139454245454230323842353932313234453137344341353935433130384531323732354239383735353434393535434646440A303238423639384546373432424338433139463937394533354238453939434144444444433839434336433539373333463241323442433341463336414438360A313331393134374134413231394543423932443044394636323238423531413937433239353437303030464343384134443737443044414332364131464135340A443234373145453942453333443245383738353334393144363334413346303542373637323531394530393239314143324430384439354246423830434142430A464138393034324539344645443844433939323945434546414637343144323733363837423231323746354238304544374431364631343638393438343144350A314138304438303835453237313134414333354344354535373837363044383938324346344438353837464433333835464535304532314132353341333745320A414236323844463335303046443243323142434342433843304236414433414532314445363341453635383644423036423346423139363636323545424635320A393046454241383733463831394142343830464639393444383043303144453145324632384336363545373446414346463938423239373243434341443237390A393646324546463131313343444139323239383545303935323439373635393839413443364139324137363334304443464130374146463334414335453137370A303942373339413732443044314541453141363136344633414130444631363531454645443333354236384338343635453141363130323532333544344135410A433336363142394330343536433335433737303234323134394233423938413239373834424637313033304337444242324331333935384535434332363341450A464541454239464241383445303644373732453934413439344236304533324142384646383632453537313735444231374636313632444646454436304546320A443436464237383233374537373843373332314544373946414331333739343541343642324439304237373844413436333038383939353737424337383434450A334530393330334142324444314636344435383735364441443632414445323243363244453643394244413737434231324231464345333337344346413434320A453043414243374339414536393943443935353037374137323638464130464433464635454544453630353939304630444630303738373939463543454434340A364142444232453744393231344245434238423243424346333238463746354238463334364235354339424135433738354132353244413539363032423644460A313836443233443544393035353645423532443743304234344534413941313839433138304641323133453132453938333846304232393032373739453238390A334532423744463435413031463336443838433943423831344145354434313036343033304433373339334444443744353937344331413237454245433036340A423034303338393839393631343041423134453645463142343844353535413143344445323941443043354432383439383842393239313734343244324336310A334231354535354344393138333742303439364645424235313438364345413744464439373837414542343834424538383731313139303331323433343043300A454230333441373532393245353943433033384537354531444442303032373430373439324545463932443730453033303342443742323730334531333146450A424139314232383930303342374535424638354432453545313330434233373934394145453531454135374644343234343032423042454544454445423543330A453233363433463331303033313246393443313537433938393339454132333132423131444530413638334434303138464642413238363436323643393434390A304436353645423043373932343641374635414344463434324135354339313838443846334641363441394236424641434438463831443735343645304344340A334335434336353343453935313433303634333941413242443246463242393635454136394133303333314538443635303536443931393437363836373436330A393744414641444431364246393336364539354337433432373630393342363339353431463741464339414637343532363036383544383444443330393544340A314239323535343033373241424642363843454632313144363537353646453045393937333342354442343044354134323031364538373135323038443442300A374131323045454233343134374244313739464146413934443038383031323144314336423237463934393635454343314139334431423733414331423342370A313931423742334344344632453045353241333839333235354334423346314137304130454433364441443236323533384530324538413232374636443641310A384130343741393145443634303946314530443942343036393843383137393138414134374239354130383245333339344143343244453933424639434232380A363845363346333336334644434442303134453839393930433530323130373530453834343244393535354230413739364232343341423033313930423242440A353743333946323333333138423634373446314233434345333143323142454636384646354533463836363738393034313931304231423131414345423735460A313436424231413136324145464232363837303043324446424439373532424346364631333641434145383135433041413431343741413243453631443238320A314241373136423639334532463731334430363533423137433933383144413836453143464344443142314642394137324142444131414232424341443330450A413445414236303142453346384542393542333244434635444431313436383341413634453134463941393538443136434336444143374443334544363531440A363033393539423032363546443336463844413431463331373341373038443838433733454541313533334345343843324142323642344442374346413636320A413841343633434331373843333144333432454639303742334234343735313835394632424435313046314341393344363141443339453845354437373835440A443436354334374633454446414332324443324235444439334232463735324542353438324531333841304131453543443632373437453046353234453239430A413536453538413642413534334342334145303531463444393038393142363537313242363344423139374536303237354541463539373530303744303942370A393546393136363135463937433530443846444346423637463142363737444335313339453646343641424130373941433535324632374635303743414538450A453543303444333145434444364346354538413434373834363337354331373438363531323435454239433738304438374646463136324145424343394530420A313535423331384342463432304446304346424141353636394332444243383142353542353034323531344230354237423832464343383237453231343632420A424338463846413936453243433434343145303745303930314541373234393530313334303034353345343942374432343346454635323845343037384142360A343932373745453737433831423931363744324545313936314145323635413843303146373536324543444334374439464543333931303937343734454638450A353441354137464536433938413831454432394434324133443534333236323139463633384339324146384130383736303743413241324138304342313138330A383537314344343031393946424442394437304144383339373943373339463533333335394642324446304143344145334130453944464537333541444539440A364532394233463644423941354231313431384539433836304546444243423045343942423930304242434338353836303130304631464641354143303742350A313446333743354145354531413335313638424334384241373031324132393743373737313738393330324146343437363541364442434644443431383137320A363244463341343738353338354343394430353541394234464646333733303431443946354539444138334243314335463332363545343942413632344238320A463135424331374231333544383732333332343836354139434344443245463341304636344331373931344639423233384339343646424341424439324233300A414639303139313939364142463245343937324141394430454637423634414430313236443037373134443430353943453033323930354244463837374437430A333434304333373444374235443030373345313345434446334445463239333845414331393038434336304430453545463546353241453841314230424433340A384134353443444136364537333430373833413731353243434437344541414434313132433744373046334338363745313430393838424236313043434132300A463142463545334441383039373530394341423431394530314341343744343439433530454238464336444242373541453243353331324242434335434139310A383642323231353336353137434141363837303432394236353036394645334342463346464642353633314235373539374535433043334533393139394646360A344443333542313535413735394342464141393634303942414643374544464630334432363731463033393636343134343636303538343343413441413336410A313530373044453532444442464634383743353339384346373630344445383433463332434142323641393646384139444344303346334443414135374534370A364630443336434441333442393642374634393836323735443739413142433139353444324243304245313530393730394534304646323342383446384436350A334445314431443841324144393441453344453230324436323939334543344243354146363643453531324546464537434633393032384243454331363637440A383738323131314439443530334246413435453439363045363139374438434235363937423136363242443244393931353332303734414635343931444443330A324543353242344535414639423244414135443545344342363434424544323544414343334634343545344337443538413145393733374634454330344137390A323338453335373833313144383845453644303637373235433538304131343646463135303837314641423242333636423541464535434533423338364546320A454642353430333438353035413137343942423334353836383531464232464544413932454343333935423631383931314531443030423432373235314230350A313542394534324143314630463233393832374239333845414238434432304646393730354634443746423546354639313143454439454538464441424538420A334333343432444333423731364333363836453142303537334541453339303543333936344143423333364641334333384231374632323945413130463033360A414444453746413543464330314641414433334637354131323546353241443339354337444244334142364632333231443742354235354630454432333743430A363146413832373846464639393536433634423841434245333537443436303343433435393942464131393841454330314534463441453034373735344331360A453135354338464430394339393644394235454543444232343346413438423043454431463038383231303337323945414543444442393532334436424332320A304141313534353831343537393034334630444441324437463031354535364333393945413343363434413135424136423134343336313434393630394334300A413439383645303039313841374234344242303645373039304637334646424534454533453035313132313933394541423033343945453834373135444533360A464231383743353041464437344334344332354245344237303337343636434436304632313146464437303434323435313539353035313936423045313831430A303137374631344430423438364344464237363737303843313731464535313341414641324236303636354341353542314535463945303330344236333636360A334246343445433446354237444135383839313038314637384233374245383435334538364146333535374239374438423439363943434445324446443235350A393146423444394344343145354639333137353142444637464338433730304336333334373030363443304242303046453537343539313841363943453433300A443836464534364445433031344330313943303636323142324543364333463139364138413545314536313341443842323841394430423938314331314132390A344144313143443341343644303839463845463744383239383937314135463946364631333943413739344142344246304141423244344434323841384534440A423830454331333443433743443734443346303845374243384143354231383436453145354442464139374145344442383835323836433744303642344346380A393438453838394544383545383730334342393744374145313945313230314545413230353135374245454641413345313742384244444644303142444231370A363931303130413636323238304332373939343231353846363842443335314232333545413445424532344435344330303535413139413346323330463335330A373732303241314437424533373130313036323443423734314434424132453639304233334645353832443636364539373838413345333334384130453130300A323834334530423246444545303544463735463444343944464532423639424537394539374441314233363338323839333935343434463143463643444142350A354536454542423646393037383037423931333239304332354438414135343642313231454139304444313133353838303131444246303142374638384141390A423943413937333135333234373844334241353737383638313743314433314438433531433330374437463530304631423538433243454339353934453543340A453545373233394439304338423542344138314639354330343832373241324330354546303631333436334534303934453932324637333236383135454633450A364538324435413336383430413736423142423235313835434436364230354646324431343045304632324346463733454233463537373332453933354241360A384336344242363830394531423435303839323733353237383334373839363337363231373933343134423638353341314333303136313239323045334639310A343538443034334343314236434441323731383634464434434345353835464446303235464144323137463937354643333646414638423739413635353144450A414333383633453235444539373245324134414439393745373741324330354131413134313532424346444541463430303732413041443935324133393434420A414231324436364544334334303844443130344238363338443637343137443241393541383745323236413033433238313831303437434635424535383430390A374430374432353239424638363742423631414346443638463831374243413733383135463738373136323631344542393236353633454532463836323946410A364245424330353436353435384130334332413836373341334346463735353238353545303832413742354332443431303141314239363434393037313438350A323739433145433536363130353037444637383634323742344534443934394244433931323743323830323435314633423231443630443538323745354237440A304136383346343430323732353534374545424532374333383833393837364133423142374645304437313037443645323239323633314431423945464337390A383744303533343239373245454532433431333536384241393731414635364132443444383943374330443031323041443530344434343436353543464633430A393537443545463139313639343031434141413243344331343446463837414337444433343531413633434537393642384636433630304639313346353541350A413734423932384144363736454430393737343042444135373844413239394634324342374237333334424432323831453430333132393836363033314545410A313231394537463942424132333044303439454546343031434542343132424637464235384642324639423744314534374630443737343935364238303345320A383732413741354133384535423745433441323235433733353232454643453645393845334544413342423430324243354242424132303930373442443241380A433835363239304430314130393231363045384642304439454633323437373641443339443730313643363341353030443038333945363730303039463443300A323046303333353534423642374343414237424636303439343433314534463237353545344344393636414443374130373844343334464135394535453439420A393930334634453732324544313639434333443046414445383734453331343143443437433639424146413331383342454134463337423338384634463438420A374431343344344237394343354537303145454233353034343744393630304433394137433033413235423542384236413541373238344138444234393639430A434445324339394333394543303742443835353941343543423541463233423834394331383236373133383238463433444632363530363839353044444144460A334235383442393037343836353736303941383930303831383742444534323836463935363934443031373630323630323734413233413431464136364137380A373733393032414444414431384639384630343546463744323041443230454236383543313435443434323337454441323732363139454139414237313439370A444338424245394545454433314541373743393431304645363530433635413643413731463045373245374438334242434330413539444345444136333939440A363441384634383635383131413633373833383434354438344439373230344341374139313844443437363437314135393844373533363237364330463044310A463041383844384243434135363430393334324331464636373843464639304643374232383743333643453638324531423230304235344232434342313244420A443144433942423445314344453242394236424434423830444332323645313046434632304139453738373841313645444646333746423837344534383638420A413946314334353245414137313236453831373633413244453242353032313332303436333232424532363134304630344645423045373136373932303637390A464538363138453141433543303333363041443344384235453931334531434630433142453945343436444642303530433339373831363538333832373844440A323344313744464443383544433742313638463137334430393435443131303937363038344342323742364638414232443232343130444230354244333435440A453445333843433745444342414533364343424143353930444135433132443936394435314238343741313436304634464145453744363438383138443236460A323046464534383544383432433230383832353846344630423146444341343641373131303634354332354533413331433445363938364332323039383541350A444543434133304241413341344235434530313532423841394436384231464436374632313035304138374244414536423636353033364239433733393533410A313142313641413332383534353632323044303941303344434438343032433036413242423138373137423141454137353934463734383831373137364531320A383745363835464537304532384330333832454145383934384136453946433246343645324237304441423230383631314446443541354439374433394343410A384639414439413137314446353343414136453345354145383732353735363142453135453342423231373739333937413330414434423232413141314542410A344237323335463539454545433146414237323934443532314543314533363732334134443742413030374441343233394330354630453644453534364435430A374135384343443030463641433936433230423731383243434345334535393337443741363446374343443532413130374242383039324435463935413841300A353839423244433534323531314443383941304545454632334537313143373434344244463935463634434634383646313538434131363231333841333644460A353430304135443033414536324139343533373345393538343046364436433742434343344645363533383235383441344442333644323346424136353632450A314633414643444546323741454436313234354546383830343236423134423344423544393733313033394642393846324635313039344344374435454337380A314638423033463037303634434544343044313339424430344338363842314535314139393437333145444241393845374436373841303746374146364535360A393235383638343843353841424645463337384635433142344333453230424138363042433733313042394143343846323134334235343935463942334133350A383543394144354146454232334446363337364545373842434345303534433846414139323539363545333845454136463638434531423533323944394444340A444142334633333432433645364439453043373045363339383944453844443244334334433637313233333838384142463536433538463639443239413734320A423541463339454246313039324332433441393036423837323331304445304538333337324231433746364532393544384446464546463936304443304634440A383344373837384244383931384239424446413137383839443532414146333632423631363243303738313036373245323346363646384346334244424436460A304530313643344642433843424141373936303537413642394244453332333339303936393431313032373946383132353941354536323846424446363135390A434130434436393937454244333443333033384130324641344234323241393841414634323937423939383638354437303830454145424332324532373930300A384230313738413735453545353233363341324535363530374233453434413646394139444438313838363331374130374234383233353538443336393043390A384337323239313546454646454437463643464634453934444137343435363238333545323943393733333343464535304434394135454442383836463444350A323739444439434433354331353635364639333239434130364130434531424435393836373834413931304543334443374142314130363843384544343832390A444442433833303931414146323130393232333446363134413643413243344138353442353034394235363232424542424136384146433041463943363638360A373435353533343743443035354242313342354344374235423639353441353739344146434641463941414133363832433733333335363436363045374331410A384642334441434631414241434333443638433236443037303630433744354239414539433933373741373731433342434433313746304543453343454431310A433034333841323937303844393941314633433032453637414131443742423537414137443843363441323032383334394244444434424636444233313339450A433142423644374439303636393934383445453241354438333239364245453039363434423632454231303635384530364534313736433145354537424334460A333646333435344632444536394630433542353146443538373446363732383732393433393939323342313941343043424341344235383042434441333437410A394146423741453634433845393037304435353836303836453646343245444238433045393732393634394344414637433033333742453545363730444239420A443543303338323632423635363033433143423142443030443445434532424441453542373741384131323944444437394443374430383041413839423744370A343339413033353638433243383236454632334332454437313630423246384631344330354634343445333634444445323437373438353431434537453236350A313431344235413135453731353243364539303536423043443433343231443441413545424631454332434337303531364639323046303842304344433338430A444634383045454146303444374631323633384339434638444334463832374442303732353646343433323334354643444138364346434236333744303444380A393331413831443244433437363734414234333537333838373141363534323244334644343644464145393034394632374446304445333341304533323037460A413638333231353331333542424535413238334344464634364142433734433738423333323045414231453838314535394530374333313334463338333042300A383231364141443339393544334638463643433938384337334232423741354237394538314336453833373746464244414232394234434236333137423131380A383441343337453134423042323133424537454436313045393436393430354142393530393635423243464244344346304233343135424339363338373731440A433244383236354434464630303138464344333835314536343541383243313739464234393935413333374330413835343939394530443931454538433938410A413945423738314130444541464145314436363644324635383133424232453739433233324535433936433638364434313439323144434638454144344337440A303646373945463530373843373735353633343632383339343045414545333437423036463735364138303046454237363536444330323539374136373444420A364638424143383735314241303436443730343042354241304143373636353232464639363537463731433743383944433933453932303030413030313230460A333031444533414442354437443632423537453038323442394242454433383841354346314233394230333441453245343442453237434330463546303232330A324132313931363636393736393231363734303344433230383333383441363938353531464245343842454338393632393832303539364644353639353433450A373531373439303134313543353644434243413031323639344436373136353541413834413844383330374233343036364631414331343943384234424533460A353738463537413339423933444334353435383043343442313244364431424336353343434541434538303945354633463734303642394634413836384436380A454434433543323344374232343937363638443731383632314139344146343933384131364644414346433645334232313642423631353332343337353035300A323441373436364538323034333542313145393345393146363733443630393933324245383834414131434442394434333341343044313839413636383439380A413142373038444133353846353641314632434532393743363144394143313941424637393533393931343734394535444545304644304443393938463444380A314134434439334430413036453638434337363433303842434536394434443533464232463041423734324437453936313833323145453837454231444542460A313435363141393136433844353842394336414645383044353836463546434143334336343839303338313738453737423531353130384534384337414639410A414339433346393335393841323843443033383634433641363536353945384536433738324635304543464245324332373637384142463039373838373746460A433638353338364446394439443846353145423541413631384432423346363346433641304436313037343639444134373944353430343437443738353233350A324642443643343035344333304430324446334432373332303331323937463533414643393337463643454545303142324546333444353946443045424432310A383534433543414433324335394636443846383433373935343732414245314637333130374330463541354239323734434646323334364537363237333535440A354537423342333435314338394446353537324634453942444341463532363432354233344437313837354235313039454533343146353543353531444135300A333145324543334243423741373943413346373337443343433233323030313630433736453239423941353734304243464130333535414645373933303037360A314636323143383031323638453138423833413130383036384238444234414346373037393036394144373345333741434237373934393039303043423737300A333236424131344136434231453746463533374142313146343332383039393638434334343146343138414431413336303735443934384434383743353542330A433646433132303830363831424339363835373634453933343842323841323945364641303235454245304331373541414136434436304345364532343137440A464145354531343632363446444646453439394646374236463034343636424633343036443241463644453534323836324542353136313430303044394230460A304336333043323935353936344430443830384338433635323131444130354646313435343733303846414445414439413930374231393434444243414145340A444145303933464146344145314143393137393346303235433046304331453734444537383137313534303532343336413336394346374635324530353834310A353737383333344337354337414444463242374331443939364331384536353336364543344638463038354146394445323444353446463231334337333731360A304333383343323734314543373235453146443037463833454439424544334345424136424246353443354341433839374431374531394636324131314141390A423344313344303634394445353639353541463939323430353735353443333943383246393334394145364242394236344246383239453730464543383332430A344334383541413934364235353945343634444342384144333541353143463841393937463145333433324634313931304638324234313544454331383738410A303635303539354331314143424642313138393130423143353832314638423641343130323836373532444645443046383243454135374338443736334630360A424332363241303730364439324141333031323530303131393038433142304539313034423745443133304346443839333837413544363939354132454430310A334143343144454543433545424341463638443335414534423745434239383245374335303746394138323546374431303739313536333138324233363135300A443341353739343843303142314330413039443142304239353241394143384136323239374137464237363636463439354643373144363238423346353333310A313736323943303435463842373445384539383433384335444444373331383645453437444636303137374344424545453038394636413038413938303033420A383633344133363435384430453043444431363943463233364243414439343638343430373543384141353346313041354243343845463732363542393231370A343130343733434134373131313244313038343141314636353541384243444146363430463333424542463934413944373433353138353543393834424531370A38334130463234433343463843374537364338343537434641414233353941333638423341413543413131414446463839443746434545433946343942370A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A636C656172746F6D61726B0A7B726573746F72657D69660A2525456E64466F6E74200A2525426567696E466F6E743A20434D4D49370A252150532D41646F6265466F6E742D312E303A20434D4D4937203030332E3030320A25255469746C653A20434D4D49370A2556657273696F6E3A203030332E3030320A25254372656174696F6E446174653A204D6F6E204A756C2031332031363A31373A303020323030390A252543726561746F723A204461766964204D2E204A6F6E65730A25436F707972696768743A20436F707972696768742028632920313939372C203230303920416D65726963616E204D617468656D61746963616C20536F63696574790A25436F707972696768743A20283C687474703A2F2F7777772E616D732E6F72673E292C207769746820526573657276656420466F6E74204E616D6520434D4D49372E0A25205468697320466F6E7420536F667477617265206973206C6963656E73656420756E646572207468652053494C204F70656E20466F6E74204C6963656E73652C2056657273696F6E20312E312E0A252054686973206C6963656E736520697320696E20746865206163636F6D70616E79696E672066696C65204F464C2E7478742C20616E6420697320616C736F0A2520617661696C61626C6520776974682061204641512061743A20687474703A2F2F736372697074732E73696C2E6F72672F4F464C2E0A2525456E64436F6D6D656E74730A466F6E744469726563746F72792F434D4D4937206B6E6F776E7B2F434D4D49372066696E64666F6E74206475702F556E697175654944206B6E6F776E7B6475700A2F556E69717565494420676574203530383733383220657120657863682F466F6E745479706520676574203120657120616E647D7B706F702066616C73657D6966656C73650A7B7361766520747275657D7B66616C73657D6966656C73657D7B66616C73657D6966656C73650A3131206469637420626567696E0A2F466F6E74547970652031206465660A2F466F6E744D6174726978205B302E3030312030203020302E30303120302030205D726561646F6E6C79206465660A2F466F6E744E616D65202F434D4D4937206465660A2F466F6E7442426F78207B2D31202D323530203131373120373530207D726561646F6E6C79206465660A2F556E6971756549442035303837333832206465660A2F5061696E74547970652030206465660A2F466F6E74496E666F20313020646963742064757020626567696E0A2F76657273696F6E20283030332E3030322920726561646F6E6C79206465660A2F4E6F746963652028436F70797269676874205C303530635C30353120313939372C203230303920416D65726963616E204D617468656D61746963616C20536F6369657479205C3035303C687474703A2F2F7777772E616D732E6F72673E5C3035312C207769746820526573657276656420466F6E74204E616D6520434D4D49372E2920726561646F6E6C79206465660A2F46756C6C4E616D652028434D4D49372920726561646F6E6C79206465660A2F46616D696C794E616D652028436F6D7075746572204D6F6465726E2920726561646F6E6C79206465660A2F57656967687420284D656469756D2920726561646F6E6C79206465660A2F4974616C6963416E676C65202D31342E3034206465660A2F6973466978656450697463682066616C7365206465660A2F556E6465726C696E65506F736974696F6E202D313030206465660A2F556E6465726C696E65546869636B6E657373203530206465660A2F617363656E7420373530206465660A656E6420726561646F6E6C79206465660A2F456E636F64696E67203235362061727261790A30203120323535207B3120696E6465782065786368202F2E6E6F74646566207075747D20666F720A647570203635202F41207075740A647570203636202F42207075740A64757020313032202F66207075740A726561646F6E6C79206465660A63757272656E746469637420656E640A63757272656E7466696C652065657865630A443944363646363333423834364142323834424346384230343131423737324445354345334330354546393846383538333232444345413435453038373443350A343544323546453139323533394439434441344241413436443943343331343635453641424634453432373146383945444544374633374245344233314642340A373933344636324431463436453836373146363239304436464646363031443439333742463731433232443630464238303041313537393634323145334141370A373243353030353031443842313043303039334636343637433535333235304637433237423243334438393337373236313441383436333734413835424334450A424543304230413839433443313631433339353645434532353237344239363243383534453533354634313832373946453236443846383345333843354338390A393734453941323234423343424546393041393237374146313045304337434143384443313143343144433138423831344137363832453546303234383637340A313134353342433831433434333430374146343141463841383331413835413730304346433635453231383142434246424241414237313634353533354132420A364630463232343538453134323946344136373330374530314630424346364633333745304532414438393635384438383042303443323633303646383137390A433831323142393538343539423932334143334230354235393444384142393546373538373030313931333034343246443239353738443434463536393042430A373238313335374135303431433841383039413539443044454531303845324130374434303636353642433734413946333331374342383837453731323331380A343642324543414133343146383639324143433244313441424142444642434143364633353835383335354631443332323842303232334543373341433536460A334339383734363444423832394632343345333034463443353943444533454636454235334134454639424139313531304342383941333430373236314635380A413241453636383830424139384643314546353436313132383932343934433835413243333946394443434143353736363732353839344137414131343845390A343233363041453634424633413446314639463041304430433141414644433444353043353232333341413539354237443043453535374434413031304438360A364536423736413745393532334538413636333344413933343842433346353933303246373246343932413330373832414537454632323035313638393344330A444538333643444533313144454439323632414630314335303630343035343145453834414143353339423430344232333033334546353644344243453642450A423035463739434436333346453735433637323831313444323734394533394644373435343035304636373736334142363336333737424138453138363743330A393936433744374434413441303242433439443141443746463137344331463439463146323035424339443541453432424342303243463835353445384635410A443138373643393238354236434344374238433136354637353834334230414131314438343632423537303737414645373542414430383645394439463931450A333041434646393137373631333246334341434144314341354530384231374233364130453435414342414335323339334239414639303839424438323144390A434435413943443942454341353946373434354436334445434331423435303244323939444238354236453245453743363941314441423931453232413341350A383942353234464132304146363030354537413538364239304132433645354139334339454641344142454635463745344337423831333633464538443242330A304144363337464138363344453738373538314144443743424534363346373836364334304634453238303236304544304539433834353345354337453636380A464646303538423937343244443346313331433236344638464131303243443044413035463331313444313344333444343232373939313831343533464532330A324643364546423031424534323043393330423837394436373146334446423033363139373837343732353232303634344135413532444642343637424237350A383038394534463430434539343031373737423946453144304145453032453738324136454232413138354134353441453933393430393443444645374346410A433033433233413738454146323432453446383131453443383342353945463444433541434534414433374234313631364234364332363333353837313042320A363133373331343534354341364345383931313942343241333531384543383543363844433037443236383339433638423146463535433441394344353138420A413146423332463943343735424236313130383339464343423934313536453742333634384632373234354130304432393636464334444445333939364246410A463436334136363343423639333542353936423135383245443041424243363438414141384138363036384246303033383030314337353343384241464130440A323035383034314446413732304235323845324434423136313936444231434633304337373944334634383030464536363244354236304232303833343146320A413636454643423834343843324643443132444630444438393939313141384244393643394236373030353444333238373930453544333838353138423134360A384345393245333638454231444233434141464341343833344343394439443944434338304642314633344633394441434445363433303532433937374137450A413935433546413844464544394234444345373639453445343632353644364441384642313846443746413445344345443544343836383033353338463342340A364433463542334330333138344635433236433636444242344337323439313845424236413839433436303245344544444138314545453242443138423638330A464442343539463243453041394345443233444332303845414138424544423330344230304530393344454539323641374233324644423245433730444438350A393442393133373835364444444142423430324232433736444241383731343930353141444336303037303138454244443537314245314430393245424439350A373644344530363341443744354636324536433236454442383844333836373846323830364131463439303042304142433445443033344138313831313941340A453631384631413930323331354243393846323637373545353935353541334443454131443046384232304139303834393230454342453346374632343541430A313138324134304235313842313934363639443935444539363835343242464638304644433839363639424332353643343443423636413241423843443741390A453432433639393536434342364244453843303941443232454633313936393339423342383445423233413645303731413336443730323930394530313946460A303538463237353632343431454235434145383741343430374636374334333930383130424538394242453836374436333634363845373336373742383443380A354131323238444437444338454144413232314231424144354634334538333246323041444537414442464631373041423330364635423731313831364644310A333942373838323535364533304630303239373746423838443842323838323641373544453044323033353441324434314632444138353738333736463744440A463237423046353944344444444635373930453131453339353734393144433734454542373632354341343946414439304641343741443845304244453832340A464633323641383438343641343741323142373046413534394245453330374639433639373030303946393633423439413530344630313135373737383236460A314438313230334636353543323432464646313542413937453342444446424634333542313045373443453835343343393839363632323338313838333942330A364246334243363346383832423041443046444143413843353641353730323737393532453144383346313842454446303834443241433030344532423039440A373044453137343044374432323045393242353444324644304444454146314530384334314644333231413844343734393832444431303542323331363641370A414139453031323944433838303635423145304639333832424542344234453144414145334541353438394244434139323141443541383137354632383431460A393430303437384446413939433545353535334633383338383236363444373346424446413239424633324535324332384443453830444146343833393433340A303232464135313536373944424331334645393839363844323839344446354444363943343942443233443030463544383538423639443146323230463936380A463037303045313338373335373942334346423635383937323039384443363146314444353830313035424332373739354442344146313141383731434344360A324531423941463746304441414434434533313533373941374234324345434239383344414335413242393432364234453545304137463739373835303443310A444437453330303633414533434244464232344541324243434443343738414238323038344644333041343739334634373037443946384639363437423431330A463841354335414336443545413045333536323843453130393641343334464238323836463436313743423444304144333041344130423235354135413335360A323541413541393437464433433446413434423441413830424142343443343843433145324336443041373131333635413337413538433334383344303745440A333031413833443236353041324538434241394545363246463543323733364543383243313430323935394636343532374639423634303631394631313244390A384530463441384133303738433732414346334633344144383535414134303038433936453330443945384334313436303743333445303645323941433542390A324545354444423832334538433345454536413844453232383331334434373641374633394235444642464244454444463743343543314338384545364430310A374642344637424232434242443544463746304342443938444332383746413639343046424645314233423133363631334133434631363633344341374239300A353344354644353737363531354546463544333746384643433632443842454338454532323136353033443534443646323033324433433242463836314531350A464431423435423731353736463135383532454541363544443337324539313145463443433138323833434432464634313936413346314139443831313337460A463138323045433630344436433631414633313843364335414236444131454446333035434144454637434330313833423836443331333130413039393732430A413442433337443131304337374543434136313444314132383145453143323034304234413545434233314133464336313736304636303845343433333244310A443243353343373839314235303541333032304539453439313546333631383538384643454338304239454343354536333744384430463343393442314632410A433533464334364341453041464141374531323236364332313241373341414536303139393735324330343242443535413544463143443037464244423833300A433833453738333244383535344144394339434145454337434544314441454536323230393038393736343143463245354233344133353344383332363444340A343638373532324442323930443342413932374241333135454135443235423044374236393335304336433138304142304333323242303545303146374337440A463246343836353135363746304331423439414633393530453433433934443738463742313834424632393436423932344243343237394145443238463341300A313741374438423233353639384135313644334642354446304231384134323242323431304333383545374539343339433644363039313745423332393941440A453331343731363136323531464134304339464130393831303942423331413534443943303342324631323934374534453932353241303835314238314334440A463339453746433434373532353034423538394333393131353731423144334543334244314531383037463939434544314442323032373045343833413830350A434132413031364537323833353530443142314433354332323646414236334639383343454434314134443032413246323238464139454630363530323742330A434336394436463245323738433041324432333844334133373135344230443232323831463632433631443931383241363936353742303237424244454436340A313145323631453437363230363032463836353232314135333443354133324532424635423933413138373931314131343646324539363533384234374442420A374246413745463430364645393430463444414431374536453442383043344630333144373146363536353743324635433832333345454143363844453841370A453146433330353543313232433137393544304337314130323834463839413942463034383337463631433945303844423432363434413439304339374433340A413544334345453437354238443537383230353030354130443638414639344144323743304538353542423845444237343737353639304134454444363534330A424343313043463133323833443646413841374346334645364334463936343730413131464630423031363044334639383136423133423042414530443846390A423834433736333130363346453635384431334431303844364645323441383937393946414241373245364136443143393433393232434245363736433142360A313141343130364543423446314137463841383442323738334332453641313039433538443633464330423734443843384131434236324435323734343141450A453635364439344231414138353831423446303742363533454436343836414145314638414442333046413844383931344146323437323143373442303930380A443834463245424239313134344544344244374546353333463235383430343844454533374531374344453546424332393932413646393234464542414630370A423632364639383835393944454344414234334339333143464543463939464336454242373246384535343237363543323632393539303244464636304237430A374239414444423438353842433944383038423746303930393639304346384446424335394137383644343842383931393337433331413231393834324134330A323334343235423439363330363244423443344539463533344337374634323433343038383035423541364238424246343238363332434134414330334137410A453333364444313831434530434633453734323037394532393139454146414245313641363332393937373142463237364546413844383543393230463939350A354239443445384631414446434335433239414138394246393043313836433544453736373939303642324644344442323739443234354432374430383833370A443341384435343146453337343135423730364543353835433035383034313038433144393338453534334238423633453237354545383543453944443834330A304138423931363331343442373744413141353532413235443545373745393446323943463235324245393935304634453632374435463732353336423646330A333237384434413435443130373539463136414534324241453834363038363546454538343533374638454339424634383133353730453838334238323646440A314142463346344536364442364645463833363645303742434632393045413637443339433944383142324137454134384530413232384645334435414135300A314135364343424632323943394146323533374138464137304545463431303936414345443334434337424545434134454131463233423339464243333944380A434345413933453633463530384342453637323243313134363741334430443543344335323033314445343343343439333333453432393531303436353143450A453133423832314437393034363533333436303637453937314245303034324335373141424634304333413130373941363735464534323634423738344434360A314238464141344344453938353143344542463639414446353141374236384343383730364330384431334134343930394434433144373844423045304232440A304530333138333034423232394444324644433936383032374344464636353732323035394336323135343330344436463943334630364445323239313445450A393238423744314246314643374537344234443838323939384435394243303836414132443445414430414533394636423735423541334642393939343530360A453231373331453141313546304632443132463838373234424137323839383139374138304644414330303234334133303338383731454244324632424142310A433631363237384242373834393043423836463535324342453544443038363246333739334437324336384143313641463845333846453141353233413546410A394230343238373435423134353536373143464131463642464243434639434132334338333331313343323934384537413641454646463141383335303946460A433535394242354545374639324242343346374633374133373145363631433832364636334444304331423235453334413831313945373145433832464236360A323343374231323646423635353445373536304231423639463245444242373432463342323044313634384331353143333741383537304342443333304139450A373539324138363037443244373237463341414130464632303537444634453241344337443342363538433643454433383832344137373034323044383945370A463641443338354442434539433941393039354346303034323035324136374142383034413636373542423933373341393933393043424446423731353938340A413036394445353433453443364144443746314543374131353339324546383334454142343538343637394134333434333935333432374442313345363935390A304632463530363143393943364430304641353332374644423533333041454445313941353344453341453039323633344443364145454146363341354245440A393930463841313137414542314341304537463744424530324342334438363436354631363133423937364431434636463341314536393734304132464443380A303632414343343545444136423836334236303031354632373638363046423739433331443238463937413739393536384536364430413837353742324334310A453933393333374234363733303330343144304634433539333930423245343145354632393846323735444343363939443237433435394544344435414442440A303235333946303030393544374531383732383632313432423436424530363531334433454231413430364536424141363442453739353132323130304630390A433337453544313833343231384543314431314230333143374446433946354142303731413846344443303832303338323133363639353945393139314434420A323839363832443931354146323843453538353846383333333844433531423642304444303532413138314439313333464241353043463138463730454536350A433333373236413034353045424139443045304333363632414636433231323141423739313141413938383044364242363831314436443735313538383845370A313939413045363332313034303539413838433944383542313942423335454446344142393545313531354242323333393537323932384244354645384342440A324434444146353544434645323946424334433344353633333632373742413043394138383941313239463946413730353241443134323042383730353136330A314138303845433132383443383838443738434541324234424142373141443736323839463546343938363030384641394246333238453835333745364339310A453131444244443834343745314339414345313844423045433344353734324332363443384546413434354335443136433239333046423433363639373734460A413243413532313434443939454641384643343237444234313238434434433033364138433631314230383733333543373830373430464141343139443339420A354444363845413839433935323735463932353444393437454233363833443031333032353532363942313043364346463239454130424534383443393934390A393631383846434237343736313841383034344532453337444646443244423841424236323142333444433032343235393334303637373039354236393337410A373845444346353038414339314434434546443837324144373346353035383244433838303731343343454239463130394338344443354441333042363445320A453536444539373330383841394433323538334436393436444234463335323339303246423137383144393933423839443546353644373944354439384343310A374645453733464333413744314243434539303137394145343530383239453232384234444541443342324234433739413430304346463839394142323646390A303438423038373545424338373141443233424139364638384344413842383746453538303941313338383941364143333439414242323545353441434141390A433231334335444532443031424342394343304437424244333834443233414531324532383946463846444631463631314635453134443442323042313541330A343244394233423337413833413943413339423544423643383331364335314237304632313135333041353643464535344436334538383136394346353233330A443141374232333838303235423345424432424545303731364333413244353839454243374134324233444136303241433445324644394339303532433932320A373131453434343038444545413146453043394644353041333941443436443433374636314632383441324546443432454631353845444437314131343836440A343836354436423545323045363046344634464333443634363930394646314545324437353733363635453443443833343041314232333243414330323032430A433335424139424233443232363743374537383531384636373131363333463838384542454637324443373530414332434233363244353238434643384232450A413141453143303534353646353045454438434141373638444546343746463835433433323246303244374639443138384336463238354336373445463538390A323531423042393133333339464437303146444232383133333844393637303445443745443930384243313133423432373541323444303538393535383930420A313243434444353537324436333638383432364230453145394134304436414145434641353535354331434639444245463843303443453145354136334631340A393639443339423644414538413931463641463443443145324441383941343636314441333445323732423630333243343432433033314630383146354446350A383538463436323038383537373344384132423246354542364444413734433134303844463237393930303435304534413345383042413941394231323935450A463234454443334636454644383141373431454637344230323032383230353136433446423732303638374244443931354542323339363132384333423236320A323045333037354441313533443646443336453143303542383535393239444141344445363934423646313545463231343543363332353042323442303331410A344346304146444232323545393144393938323842383342443930463137303244333930364434353837323538374133413131364231333841443936323743450A453737384139343943333932323032383233433637304644424335364631383936464646464243463532433442343030463637424133364235464345343441350A463138454542384144464330383843393944464638453041353933453831413541434132453336393330303546373233433744334530414532424444333830350A384336303037413030353432444542323533393730393535384138384232313030334345344232433738313741463230374544353736423235413431444541300A464335354134353942454230304144423031333039423335393230463034463834423742363446393541413939454243423834334130364345443930304439390A393742454644374343423946344438353837364631303136304338443633453246444538324237413844393435463337434339393333414245304644314437360A323638323936423141354142303642324538313436393131323837373136393432323437383131373144433632363642434332393046434531414235393431360A383535333033363831313542414244344631444534353935323931384431393435443531454237313343323833444145384544443535394634333743443838360A413442314441363132304436383543323834363733413345453438394643314145343239374133363233423333394237443838364236423442384639463441330A374246383545333230413532464443363332334235313837394239384131344333334335363742433036394439423434363136353134454531424533364639300A454335464133334531423642304134363934354438373645463030383545373439333544463235363041303333323138363141373532453539373432423946430A354335303146424336344246423136303234353938383542363338373344433835374544333746384245314139433645393531374239424635413631363142440A444542364442303338314646423334413841393641423441443438424543343044344331393841424335393943333735384146463633384141373542424441340A383534354435463935464134323646423235353837333031413433453137364636434544373835314538313541443930374632343433453730373430444432440A344642443544393738423942333746353944364443463041444430463930383235444432333535384643423835383531333630324338424338324246413338330A374141364443454134303039393631443036444632333343353338314137463935343132353939323634343642324630333636344243353937384131423643440A454136454243394645363130304136353935393531334545453332453639443437423535424146333041383933443737313432463934333938323031394330310A373135434532393932333739354541303143353841373938393739393339423530374335423239413332383831383737454637454630433543423344453539310A364239413643334633464641383437463339364133393646303738383630423539383530424134434133313135434132333736414545364233304330354443310A364639444236373831454430463944343544313045303936433333423142374344313241394435374336453439414438333343344230393344433832383131460A313642334244393032424537363441313638303833314543354136433143454438344145304443304136353637384541353237304246323039333145363430390A374141343445414342323243434131313039384638413531303936424538334131414241353643394545443431393544354343463234464441443932453832330A433433394441414642464436353231353744373238463237353446323833303437313044334342333337363331353644373641323539443434363634374131310A343933464143373044443238303633413443444441313632463732353432333638453141433238323643344246463731303932303846363633373139313043310A303638463231373739464333394445303341454346314339464232463431373933304332323739313936314438303132383444434338394230383333423641380A443633463135334143424642374237443534373932343631334242434341454433374439304241433542303236344544333143374239444135413242433632300A394232304341343834323444304646353839303542434436313930424634423546433645434341314243454631333432363932303139374341423431433445360A453832453845453742434232334336424136463842353830303135333342323235454437323144364345334436453839313136454333334341413645393035410A363439463843364131414131383741343845323044423836343539363438313937363231364442373846304635373534334446414533434443304136464337370A324341413439343432353237413544393444433534424539334338373536393043424535324541413445444439463241353131333631424330463038303745450A393641443044323642363244383039453832454331344544423135384546343841373438413646453043334137454535443434373942333534323546333541440A334543373434344636464137354345413530313141443537313037383239333434384133334337363437363131434145453837393734423041373536444143390A344531424137384445453437374641353941443530424635433532453036384135453034344134413439393444354232344343353034354637363841334335310A443446363545324135414644323731413736363643363833354532384336303735314545353238433037343234333331363541464245373135363241333031360A463539363736443536423042354637453439383444363634424333414444414632344234323035373532454532314434423537303537413934333031383436360A303943334641354432433542434246433232413634333538364243394537413936354443333443304137443736413437304230363032414534353130363431370A303730314143443243373634444445323138423932344533384235413133434238323637383337324537343341384233434333303042434242423837383937380A443938343746303634304130333144354537364235414430373639394333423246433643314442424637393933384241363439433135324646423242354242410A443138423935373036373042393939303735303634393446333632423132343739304131374434463431354438343437454346373042363744424434363634330A393141443436354131383532423830344342453635323036454141413338464644324234313830414630304442433632393739463837424433423730413841320A433743393934423446413234383937443446384342433044303231443646314234324239424534373037323641443146384530343535313233314634373545420A394445453938433532454434333645363439323042304339393230434334413846393333333832343430423636463730344644323132314446453035373739450A343842393932463741364337333339304241383736463333354243414234373833364341413739414344343836343143433639414642464538314634384442420A413341353437453533393232313637363838323146453735444432324542373031464335313443384331364231453336453939433131313833464635443546380A463045344335423437303833423236343230464533344639313542334235354133304545303335393231443130393438443533373736313345433433334435350A413341454234363336334631344345374132344639463045383242464236373833364333464345343343393646453034444145344637453341334530353631340A463741344438334234414433384231393930354342393534454432323045313042323939323933383243433846383033313130453742364143363841314131450A453434383033443932304642453345334132453845464442344538423841424431303545443941364546343146344337304438443546314632364444424138350A364435423343343146443743313641373432423035334135313639383839443044443038443538444530333746353537423446343642393333373137414641300A323045443532323936413242424634354335303036333742444543394132453942423541333242424446444132353537353044454139344634324145453842460A304141434236364645364230414635383335383539323742434533443738454136443434304537354446374244423237383232463044304138383735303945340A313134304136333738363436413433383433324444433841363134423035384642313637364638313833453635373633314644323831314133334438413546330A453144373030334238383642453337383744363844463831334642323331353337444145374441394139453444413139413031463841363131433834433939350A313636313941393643384244353141393535453345393642363638464537313633433336393344393537334439373846343144464146443837303539363142340A313646304538334644433044443132423845433738393042353436413644383142333332353532384233323236324644303932323437314143364236383831440A354243393546453936304145423336353639433636453143413135383645344138453135353135413041323143423039454545334238443432323441353737460A343145394646393043374333443733414436453336374138373341323832374632413742323344393946433037363939423537413036343530463741423939430A434246443346304539394443364130304339393937353543324434333738443830464645323135323237314636364538463839463633384146454144463743410A333546433236454434323632313134464342453937443344424144343238384530384234303036383943414334353936324541463138334541323238453046310A383434313542323038443132333746433930463230464236443537464242393832344237414432434130334531323932464438463044413142444343393636370A303346333533453945423945423734353942314137393338454144433436433441303435433431314144333531373530343342443145393443383633373739320A363646414443343344394237353633313534344439423041434445384635383545413532463232363130373645343646414536414432393931413535304442370A313635354634443832333042334134323036433739363637434635443244443538363645454439393339454632333934453330313536433846374435393833410A364634414445333937463944344346450A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A636C656172746F6D61726B0A7B726573746F72657D69660A2525456E64466F6E74200A2525426567696E466F6E743A20434D52370A252150532D41646F6265466F6E742D312E303A20434D5237203030332E3030320A25255469746C653A20434D52370A2556657273696F6E3A203030332E3030320A25254372656174696F6E446174653A204D6F6E204A756C2031332031363A31373A303020323030390A252543726561746F723A204461766964204D2E204A6F6E65730A25436F707972696768743A20436F707972696768742028632920313939372C203230303920416D65726963616E204D617468656D61746963616C20536F63696574790A25436F707972696768743A20283C687474703A2F2F7777772E616D732E6F72673E292C207769746820526573657276656420466F6E74204E616D6520434D52372E0A25205468697320466F6E7420536F667477617265206973206C6963656E73656420756E646572207468652053494C204F70656E20466F6E74204C6963656E73652C2056657273696F6E20312E312E0A252054686973206C6963656E736520697320696E20746865206163636F6D70616E79696E672066696C65204F464C2E7478742C20616E6420697320616C736F0A2520617661696C61626C6520776974682061204641512061743A20687474703A2F2F736372697074732E73696C2E6F72672F4F464C2E0A2525456E64436F6D6D656E74730A466F6E744469726563746F72792F434D5237206B6E6F776E7B2F434D52372066696E64666F6E74206475702F556E697175654944206B6E6F776E7B6475700A2F556E69717565494420676574203530303037393020657120657863682F466F6E745479706520676574203120657120616E647D7B706F702066616C73657D6966656C73650A7B7361766520747275657D7B66616C73657D6966656C73657D7B66616C73657D6966656C73650A3131206469637420626567696E0A2F466F6E74547970652031206465660A2F466F6E744D6174726978205B302E3030312030203020302E30303120302030205D726561646F6E6C79206465660A2F466F6E744E616D65202F434D5237206465660A2F466F6E7442426F78207B2D3237202D323530203131323220373530207D726561646F6E6C79206465660A2F556E6971756549442035303030373930206465660A2F5061696E74547970652030206465660A2F466F6E74496E666F203920646963742064757020626567696E0A2F76657273696F6E20283030332E3030322920726561646F6E6C79206465660A2F4E6F746963652028436F70797269676874205C303530635C30353120313939372C203230303920416D65726963616E204D617468656D61746963616C20536F6369657479205C3035303C687474703A2F2F7777772E616D732E6F72673E5C3035312C207769746820526573657276656420466F6E74204E616D6520434D52372E2920726561646F6E6C79206465660A2F46756C6C4E616D652028434D52372920726561646F6E6C79206465660A2F46616D696C794E616D652028436F6D7075746572204D6F6465726E2920726561646F6E6C79206465660A2F57656967687420284D656469756D2920726561646F6E6C79206465660A2F4974616C6963416E676C652030206465660A2F6973466978656450697463682066616C7365206465660A2F556E6465726C696E65506F736974696F6E202D313030206465660A2F556E6465726C696E65546869636B6E657373203530206465660A656E6420726561646F6E6C79206465660A2F456E636F64696E67203235362061727261790A30203120323535207B3120696E6465782065786368202F2E6E6F74646566207075747D20666F720A6475702030202F47616D6D61207075740A647570203430202F706172656E6C656674207075740A647570203431202F706172656E7269676874207075740A647570203439202F6F6E65207075740A647570203530202F74776F207075740A726561646F6E6C79206465660A63757272656E746469637420656E640A63757272656E7466696C652065657865630A443944363646363333423834364142323834424346384230343131423737324445354345334444333235453535373938323932443742443937324244373546410A304530373935323941463943383244463732463634313935433943323130444345333435323846353430444131464644374245424239423430373837424139330A353142424642374346433546393135324431453542423041443844303136433643464134454234314233433531443039314332443534343045363743464437310A374335363831364230334239303142463441323541303731373533383045353041323133463837374334343737384233433541414442434338364436453535310A453641463336344230424643414144323244384435353843354338314137443432354131363239444435313832323036373432443144303832413132463037380A304644344635463644333132394643464646314634413931324230413744454338443333413537423541453033323845463944353741444441433534333237330A433031393234313935413138314430334635303534413933423731453530363546384439324645323337393444324442393831414241324143433941323341350A334531353235393641463532393833353431463836443835394643303634413045334435464336363437433343414238334144344633314444413335303139430A434442394533444433464542443443324233364241334346364536433744413835453235443841333141394241443339424446333146443044313739303730370A394445364130373845384134303944383239354636343244463439324143344638364143383433383342304634433642414137433232414435413839384137310A443643423334443243443132323636433438364237354537354136394331343831394444394242383135393038384530344434373137453537364238343832440A424441353231313041433842384138304534453944353846343730454542443343463434413145314545384441333138464646333631314230323533344643390A463430313843374335374538303537304432463633344439384245354435454336443935303531313537463045413934413344313242453042344237393933390A463832463844373331333644333333374334344533313442304231364342303330443941313245303146423636373130354633333443334545393635453541330A443431304432463135333135343741343439374333353541454542323935434433433533333442454535323332393932393630423735373539344238394633450A353230393530343244424536423444413343334144353043413935454139454241444131303633304235303043463146434341374436303330363734333638310A374534323844333342374637433430423432354344353845344344384142343734424345364133303742433643364542433135413841393645304532393737450A413333333839313534353336463543354438434630333644303746323430393445373739453541434245353530324339323839324631304634433644423632370A433745433443374246323042333934313841384138354437464439423045414146443837314444443431463933424445354645363139414642383731313832340A444538393045363243313936394136464532384444333537384146343344353841373238464146463042394641413634303936324338463335413236463736430A363746333534384436444235344132354345423336384234374639374541324230433444374330453738393441344630433832334336433139323243463944430A313045303536303035353646314337433941464233334132444236463837333046373044364246393442314642303838373435314632464645454633353834460A444641444346413941324434383436423846304535313632304531333237443939344344463937334238333744313043393046463736444532324234374344350A454533313833383938443135363836314142344446414433344131453346413236304238313634453636383042463538343133413535334538384636313030420A433446344538453937324338314135463838413744424344433330384234433335383142434445313338373742393736423146383433333038333946453543460A433738353531363230454238303344463934413543393231463845453234463745463846433443334531363533353134323132363331463534463930453344430A453945414639364539393846333430433446373239454346374142343330464442374330424533444632433044323330313538323045323842373433434144370A374630414539353431334333454541424243363945383532463533454531444332363044374631453731324245434546324631383433374442323344384537340A323930324141464243373333414335424141343532444436463336373138353941443833364338353634453939434443343138334438343935414644393944360A314630443635423635383843453735343637313739313145323542444341364332363439453341373436364133453244413743373939344133304142343434390A363732454644303036333245464138363239433141464237443533443830313032384637374338363438363946453633363231334136393137333030334541360A424531414241393545423037423133443135393442454643433935454342304139434641393839324545303637374436423643323530383535373632423741370A384534453032323634304639333136394446413033303341304435453733424633453046344434414144313046443745344542323035333242413330333731460A453946343830463935313334333239343646393832384146423544344145414641353832394232434235343445354542363334433435333745463744463038410A413143464439344135324443463045374345344335454646423031453644353035353842373544423443384435353132423036303830463237424536324530310A324545413641303335373434313430313435384338343244334444344333354238463536314438313642333336323136434530433134424637373634384146350A453333393132434639353837324131453141423941313839383041304232394138383144313333393743313545314342413544334530423237393433454245320A463330303344313545423434364243464331433233313833323437354435423741413139453443464445313139443643443632443035334336443239433333330A354637323937393144313742334637313038303734454546344431424431303143423333453031303034353332434230443731364432453534443136394336450A383031363345373043304539303831463331413145434241453037394432413531384237393042304342324344303344464430333441304634373838453830300A423043443244433146414644443438374332463338314542414232413246334633414638323032314232313144433943443246424136413142423344344145410A344337463344394135433231444646323834434342383237443230354136393633384539384435444438453336414643314134343831423543423241324538460A443643383338444136463831393930463545443932384443373435373530314235433937394646344344323041383330383936413436304335444231334435360A413342324235443942323932333734413942463339323839344444393946434436413145363535414233393545383339463037344431353936343838373030430A344532383931433841454546363635363845383241384238323646394132384646383444344439424441323146363338454146393638383042344542453044380A303831393832463334383331413033424545383146433137373730304332333630443241343839313545433430443546453835423430304531373544354146310A303637464130303937393034464236343737353742423434423430343244333044313535374244304637393232443733313134324644363832313339434542370A353843413443384332343041304238364231383838434143433530374532344530343032304246313838324244394234434145434641393744423234443746350A414436344336393435343032374631393842413335383831423934454539313539413244373345343530433342444145443636423838364436444542433834420A363533453136353137363232384638383939334631324131373037373541384437303338424446324645384443314637423938424443303244314536363836450A394238333446364330414439303738304231374446453235463041344534373043424138344537334632443232424545303941303430463134434641324331340A304644413541353134394235464146464534394635354545464334333833314243343341383332364645453943374634363943304643334230303038383446410A343144413733313845423537323632434239364643344543374631364341303746453143334245384332444243384138313335393533443644444632304244460A373541324236443236303734464345373532424433324642394635434137393737373545384442394242393738364234363941334344363541304439444444410A433241313636453435344139343836304545463542354331323137324444464335373641303346364536463841373335464632314133453943434234434141310A333036343839333438373639373938364134324342353838384232423041373946413343373445383138374244444637424541423838344237304238443441410A414336363135373435414542393036453038424638333143464445323232463538443032423432384435354539443541334344453734453432443841324342370A453141334139343339423637384144343338373933414242454237324232314335383938314441463345444345344242393344393546344131453934334242430A423341303132444539324645443446323332413341374436304345363042363035313531463943374331384135433635334535443644313545354234394136330A373345374133333935303444304143433734423842313136454138384333454241324343363331414142323946373631453546303632393636414432464432380A374646453532464138413131354442453233453437313039344646423343424146424446313142374539303538333133463244303639423243453938413936320A363436343537333846303241333145324632414331313632383732343033344144424345453031323732314542463041353637383933343131463935303431300A423230373534413735313044303431464641363134344143394343343644383436423832353831463230424244303031443334443937363430313038323442450A363143333044303545354335443130304132344631393137463031373939434635424334453530464345434645413733324342353031393638323546304530380A384131454338363843364434333537383537454532393537453038314130453433373245333141384142454632334333463245413046454535374445344430380A363143353730313735433431414130433741334135373941444635393346313842344145333738324432353532453445303735394333324530353945453734310A324438313931453338313733313736394636363438423335383143414631314441453436343731383936363636463138463032393138423038363042444133430A424435444537373736373234343743323343363241434643323631314544353233394436413236364644413630333145424335413533304331413246463741360A423433383042394134433837373236373835344144314631363737434235343333463238383934414446393344333945414239343534314138443233324530380A323244303832443039353141363046363242383744433032383731344543373431333341344436354637443044313239364330453138394334413432414139380A323845384145374543424239464338444641424343364545423145394642303632323746393038303845463331333331434343354434433941363138323138310A303437393032444339464430343434464239344236304643373446334236373737353830383843453641313539443934304335434636383233333545373536410A384241434630364144373232354434394230303032333932433838394230464532433731333131443235393646343930334431324641323042413246464532350A413038303442344243323832393239424533314530463436423334353332434235373935413635323138434641453231463339303739324441363737373543370A423931413242463443313644453446363535314441453341353832374636313642453930343045453642313030384441324639394130314546363644363937410A364344314134344530413135443146333945413830323545383836413638413145394333333433323743373730334545373231453439374341393234414339300A373732333130364439313343354544344241344643373433434541384430463531373235323631303744413635373735433042314237373137394433333643320A394230394236303844383042314131453837434131413834413833334130304439383044393139424646353646363339304539443542343545393933354346350A453639443030333536343436324637353046374443453032444332334343323135413036393642373444384244333135364133393241393446353537363535450A303042464141303335363437353638454436363135374641434335383545343131463746343238353639433134374443343346364534464445363933443046330A393931374245464544463631464239383042383535313546463634323438323445324439393542303543413145354433453842443844333238314442374345340A453534393233453834303538464643304138413243343931333237443046383743453443333532423732343136374345453232344441424133423935373537450A344134313935393442453446393245373842413644333544344339334433314543433331333442323441343544433332343435373235424230343446303941330A414138433331454643304132393434414345324632434530353443463234444233353046423343373131313535313843323442444330463745353432353041460A394433333738443338343830453143423930323946333135373043363139413238463036354341344645443536363545444239363731324142454233334239420A343233324330304331423032313546303844353346374534333038383730333541433235424541463036393432464431423643343432323533433838374142370A443639344331413631313543383939304234434146314538314444314644444436423033433030303535424539353642453746443841344531303439414536390A454441383539334342413843344134314530343643363839464242463946314236344535383536413746423143363145433831354135364445324138454433330A343146333730423832303344344535423139433633414539453645304432364634463338313442354146343841443330454339423834303243393431464444390A373232464341464336333846424238333546383344433737463933443336373236364641374446464643423536374546383242313639354142344439344430390A423138414330343138313130323732323944463433314635434232424246364143434539443530304338463037354137343539303634314331413630374335360A443242383632343739374243443943393143333137373831383639314642423437343445444236303536343634413042393542384436334637433232333039420A383244363132364532303537424343394645353536364439364237413942323031413039423044333235324135343934433843413243384241384131334332390A333745463241383832443631444137303843323739463636334438384138453239393941304633423646393843343939303141373633314246373730384236370A353444304234433532424634424530444130343339453637363341374339443633394144343039324537374231334433353130444145313437354339373841430A373936463942324141443342464633354335413345313942354532424637303442334242444636384345343842413446413234393644363045353838383845410A323841453132443030453946303831364641433139303539304138363542423538353639413931424630333435443031323330414241333631343432303036440A424132433930454332303336424241423739454241464333463231374442443538353443353139323335463936323741314333433731443231454433384145460A304242343046334238364242394630394133463330393437334438373537414237453633384443314335394137463942434434394445343130374132453534460A343232373637464239343034383938373834373230353538343330393339374635353437343436393041434646444635393032464535444233353539333042380A373138363332313738333044443741353633423042334134303235414345373542304537373742343431344236324131334235304335344530453644343745390A443433424637363942393431314237344531303639424637314241383733423442383937334543394241343932413544454135384432363738373242423234360A313041413637423134334430453232323346464234393931453538334536323934313343433839344333464134383639423732443139434531413043454338430A304646354535413345433146434237443343343238393831334630443234394131314235353130344244363042324138394245463434434337374343444139410A303635423842383342344634323533414131443533353239304443464141343737333435324431313044324233333730463945324645353433324235344139450A363434454233424139424646363233343746333736383339303234434435454633433544464433304634313244443534373442373933334536413141423633420A344231324632343137433732443035343343323641323633414541353345354241454244363745323335353341373245393439444543353536424542354430390A433444374138394231344645344543363844304533453944363541363442323835453533353930463431384544413831373531313343413337354132393933300A444443463443373141424232364345423830304332433242323533414331463533363531433838413536414245354137344633423534434234464644444239320A363041443732373242413235454332463646423735394141364531453739363446423535414430394634454232354445343546443031383333393437424430350A363236364141384142423744443739323934314337413037304643463341343633364642463839323143373032393844343246453932463037394442413241440A363134394439434639454637323634444536444643443434323939343942313545413930423539363334303731334244363139323644444232424232334245380A463944453338413331363230413831373432304132343539343645353531343633393630413843354337323935453342334436413539424344463545343732410A343042374132434444414134334344384141464334313144303337313432353739443131303534413930334531303244463044304337423542423835344442410A463346303836414639393146374635443543373330463846394146323133463235373836463345433045353435333046463931324634383736464445313642360A413037443044433446433436454336333633424342363842383341434334343842383031454334334644443246384245304539334438303946463831453338450A313736414531374336374338354645413538454339353433353433344334394139353041413935354438423230393839433535304142314631433331423746460A393934323245314634384642374436463332374336444243343639354130333930334442323735423934434233393338364534363537393237313837304132350A323138323345373543333737453944354234363635354538434438463938363337324346384241383436343233453236353832333135413944313945304246350A333035433332423241304541433345434232373542314438424531314133374144463532343934343231394439344541324335444244413736383832384236440A373735444138434442303945303537304534414444463436324546443844334641334638364231444545434446464236393941463635303732353743313837390A313646433631353836384332443531463033434435374241333844343239393544393136344232353734343132313030383444433430394236454534433131390A304232453137423041384435333236444430303130453441333235443546373742463933353639334243393041303041323843374235463734383137444133390A463437413431453332463446393241413034443330443831304637423134383445423533414438434643384345383932384235373033313445304637313346380A414631323732323731393046394331364242373344324132313746463830314333393141323930393544413545343937344431333741304341413744453730320A453230444434373535423144373837333937353641354537454333353432423936414436383434313939464641324635463245394336344532444134464232410A454437393836394637343543353944323335343338323531424332453644323631313241414544323045303630323144314142383936454531463144443245420A343337464244344132354534323234354335413634373439334643433939323245364444374146353744354434383239323144314342443646304630323934390A433237373737313434373531433145373246344545324243333433443441453741384138373538313233423534464231413032363134344336343336353145460A303930374133373639343545313941384643374639384130333438333241353832304134383142303832334639383046353936323345303531313539334645410A424445364546424343303338333234324342443439353430323742303735423231463130343732303539413438304436453545443031433342303734363143450A393831303235314135433536343345433734303331333043323234364538363136434541323545414337413030373637333146454138434334334243453342450A393333464345363130363746354644343032453637453242394441443935344141373743354243383642433545344243453245443637364438443845433744300A414243354338364438323138304239443544373435314337314235313439423642363738383335373844453939303933313739323843304139324533323035450A463233303135343030413137363341364642463637464445333331384144323639363638354131383332464333314346333835383945424337434131433831380A363044324232323131453034454643434541383844394139303832453832393531454542313233393234413236374342303343343838383930333246323839320A343232374532313746413238463837453031434246323742463145413630363431413432333832353843423741413335353930384645333644393046354341440A464539393244303341333345343743413941454245464441353737393346333944433641394538354435423238394636423836324233354442434638324534330A354344364138363246364646414333363437384333383443334244423031343843423146454446353539363943373736453737393137363335423541363545420A463241443335314432314344333832324434333238394645384542304645443538313832393937303937433745394634333733353533414531434139323038330A454445334242453643334243373030394431354142354645433641353945394644314243433742323039394341313546454630383342394342463742383930450A434444444536424130414646333036433736353030433934354443393142443533334646394135383543454544454637393233384335344536313638303031450A323646454232394535323345453530314246413446363042373832423134393942303730383443333541323433344234443239443344384532433846393435460A413939323234343342363844303744463745414131463443444546464334333842353937443839343345323331423532313638303841383546333045444338310A394446354444323246353441343533333542344332323033383837343735463339443234374630453733343742414346454146323230454438324639323633410A363438384537334331393130303233453530354644454231343330303643314133353144343431414335374639443532443243364436334437384337353630350A393939383835363736424242414435363037343239384530424644414342413138333042413538453837463433364343363730454538454231383730313534440A373244444242463337393446384341414133463145313144453239373532444439394541433639353833384131394242363741314641333832394236453042430A353330313631304130333531414141373439463435364145333141444438374436414241444344443146423343453831433337313346343837383044463430370A353330434232383442324143373039463532454537414436343744454639464134443241383637434345463732384633443430434633344332384432313532370A313031363042334441464235464531364146433944333643364543343032314643313839303035383632303832424541363041433732423633414432374437320A464146334332443839444132363438464334433635313034413036393231324438373134344538353333434438364136443733444337434439444241323543450A374441353342303030323636463338373142323436363343373737323337303333313543354534413839444643444241423338344145374542324634353541450A414231393146454434303646374636454339453542383237364546354334434241303431414337453842434543374341453834303135344244434133323332460A313537313141424431453836374134333445393738374341304136443146313937353937444132374544323430324342324438344544303832453844334133390A383145364542323730444341344537413930453242454244334342423341324245334341423932363139324437323932434331363834354236333939413534330A424346443232344242353246323133353237333244423531353446413334343237333330363643444333453138364438414139374344383031444642453433410A313136433836383839424531393844413838434139373842384334304143423637453846374241343939444536384136464630444337324333443030424131410A423337384233393631304631354341303236463935454438313535434533464646464132453246454233353244424531344345453136363946323338374237300A353542393131383546424245443736343236363231354435313837313645444133444643394535444236423134384135353345373541453545333845314346430A364546343742333134443534434632344243313338353646344637433937364242393144313433444533324646343942464643383745313738383541313839330A424131423845343431423038454643303446374431303343314646424236363531393442334430393230343733373430433535464231433530454243463731370A413233353942363837464345414436353631364545383941363846384439314146414341413042323338454534414630323739414635424535323934433344450A413745314635453632343843303231304537443430363833463034423132413933334337343645434235313743463934424243433645344346343941433731350A443830303541464543424446423741364234313744423841323846384539454146333943454331434136344446333741354536364137364332364637323146380A413633423030334130343041363246383744434636314232393846393630443531304245464134353346313138453539453744453843413344443030324546300A313237454146373333443543363142353133323334384432383046383444313539383039434337314133433646373337334242464438443645463731354433340A303031364445464631344141354639363042463142423941433330344131383233373232383433353437424234434135454134433431433643323730314338460A374244433831303434334639444633344241343639413332363030303942373939383731424146383532334338373633353434444344304233383244343443350A463735303436414646383546304235413331383843324545373836434545453534393641354146344243423042343239434146433430334642393833454645330A363146443946353241444643333845303741304644374241434241353330443245344441423235393241413935363438343345374532333035303437463036300A433546453432343346413846444631423544344636314143413738353041363034464243364436393730393539373532363935433930463738393631423445320A433843464134313038324231413337343035414142434545354241334443324239454137364634383631313742383437323845433644384145363337394343420A343032433241413839303738454339393243303044353331353145394438324336353634334635343941353732413230463035313037413431424535414335370A384544453932414532304230354532443043393831353143433932443533383941363735444645333944463534364133334138344134433533343333374144450A423137433334453039313435423337434531454231443130443432434338443645364231323741333830394637323032333831464442383844343230383443440A304145414542384138323838434235363837304541324245394430423944433832393130323143413536314532424133383844413334393445343333453045450A354536394441353144304143353035433946373135363244334539373530463233434631344432433845434630363932464242434234413932423438423442300A414132313633413030444537344534393930313335423946434639333042393534394346414134383245454133433631324246363646463545344332463641300A333034434334334237463536463644463937333331334341374632443838443332414541364530443632424646353343333131433837434238334136353537310A414238304545384131344339413339463038383937463738464245393145303838463141413245394342434333314445374344363632384535374135374530340A324538414130374431443830363745463441303139333036363043433037393737363841383637363830464246424345393341333134433534433546353437440A334636344234373837304446463139374630454530413731424246324138354146444637423345303334364143363544463630454337314137383834344538330A443132324444453934393943454130324238454135444242333030373139304638313541423845353846384641354242303542324233343830334134383545350A463738443644444643393545374545424634304237453839374334393943364332444431323031323344374144373137424141313841303730303736334441360A434639334144384530433733353037353338324437363134363437413230333535343842374442464134324335363935374645344630394339423138314245410A364439433131374646353438354232393939414335364134363738303535434541454530443431463632344133463236303736363839383137364431304541300A363136413239304430383634303644443835303736353633313846303544464433333542443845353044434542304142434630433846434234443231443138430A304245303435334236413045313631333536424442313331434137373342463633443144323130423639394343363846413245423430413944323943343041370A393144324334374531373930374432424630384543423345334439303431373744393133343135423445324135413642353034313034443046394137343333370A364443373842383034374446384332323339304337394235373636434339344332313838414439363544313136303646424646324134383042363737453231380A333546413134323632363346304637343042353136443836393632423444424641414639373043444345453336454641414442464634423337353933453843390A434233454638314635373732363743364335454541373141464145384632303835393536333934413739353941463944304335363037343541314142384541300A434634323631363635443541373433423146414434463038334431413938383843433633323745344239443330313745393630343231453233313738333546390A364443323044353830314130434344443541433145434238443932313534383246323736424541434637394633364538344343373141323046343241373036420A463634444344334332333741334243413832413835453838463543393634374643383235384439464433393939443236363533464642384643354443424143440A434236393633444643324634354439434441453946324434323545343139304546313241334633313630383841334144463544443830333743424235383241320A304231373138444641463439313443304638383746383544303332454436424332463943433633453644413546464338464643313030304238433743444631330A393841414645374131423139373134313842354342323930394143324545364142313038453839304432433841393934364534314532303138333639463736340A304535434332413236353241373745434645463832334336424245343941373444313533463036353841314137323344313543464139463936393330313331340A314646374145384130423131343239354341443537453644303142444639314638463030323744413233413042333431344642304338434134443133313530440A444438344446303437453846353737463837444238424632313234414238434146423045464145374230443230393032413842424337373035344333394531390A304646453142464330334642453236363934353830303434383630433446353936394439423431453444463935354330313438440A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A636C656172746F6D61726B0A7B726573746F72657D69660A2525456E64466F6E74200A2525426567696E466F6E743A20434D5359370A252150532D41646F6265466F6E742D312E303A20434D535937203030332E3030320A25255469746C653A20434D5359370A2556657273696F6E3A203030332E3030320A25254372656174696F6E446174653A204D6F6E204A756C2031332031363A31373A303020323030390A252543726561746F723A204461766964204D2E204A6F6E65730A25436F707972696768743A20436F707972696768742028632920313939372C203230303920416D65726963616E204D617468656D61746963616C20536F63696574790A25436F707972696768743A20283C687474703A2F2F7777772E616D732E6F72673E292C207769746820526573657276656420466F6E74204E616D6520434D5359372E0A25205468697320466F6E7420536F667477617265206973206C6963656E73656420756E646572207468652053494C204F70656E20466F6E74204C6963656E73652C2056657273696F6E20312E312E0A252054686973206C6963656E736520697320696E20746865206163636F6D70616E79696E672066696C65204F464C2E7478742C20616E6420697320616C736F0A2520617661696C61626C6520776974682061204641512061743A20687474703A2F2F736372697074732E73696C2E6F72672F4F464C2E0A2525456E64436F6D6D656E74730A466F6E744469726563746F72792F434D535937206B6E6F776E7B2F434D5359372066696E64666F6E74206475702F556E697175654944206B6E6F776E7B6475700A2F556E69717565494420676574203530393636343820657120657863682F466F6E745479706520676574203120657120616E647D7B706F702066616C73657D6966656C73650A7B7361766520747275657D7B66616C73657D6966656C73657D7B66616C73657D6966656C73650A3131206469637420626567696E0A2F466F6E74547970652031206465660A2F466F6E744D6174726978205B302E3030312030203020302E30303120302030205D726561646F6E6C79206465660A2F466F6E744E616D65202F434D535937206465660A2F466F6E7442426F78207B2D3135202D393531203132353120373832207D726561646F6E6C79206465660A2F556E6971756549442035303936363438206465660A2F5061696E74547970652030206465660A2F466F6E74496E666F203920646963742064757020626567696E0A2F76657273696F6E20283030332E3030322920726561646F6E6C79206465660A2F4E6F746963652028436F70797269676874205C303530635C30353120313939372C203230303920416D65726963616E204D617468656D61746963616C20536F6369657479205C3035303C687474703A2F2F7777772E616D732E6F72673E5C3035312C207769746820526573657276656420466F6E74204E616D6520434D5359372E2920726561646F6E6C79206465660A2F46756C6C4E616D652028434D5359372920726561646F6E6C79206465660A2F46616D696C794E616D652028436F6D7075746572204D6F6465726E2920726561646F6E6C79206465660A2F57656967687420284D656469756D2920726561646F6E6C79206465660A2F4974616C6963416E676C65202D31342E3034206465660A2F6973466978656450697463682066616C7365206465660A2F556E6465726C696E65506F736974696F6E202D313030206465660A2F556E6465726C696E65546869636B6E657373203530206465660A656E6420726561646F6E6C79206465660A2F456E636F64696E67203235362061727261790A30203120323535207B3120696E6465782065786368202F2E6E6F74646566207075747D20666F720A6475702031202F706572696F6463656E7465726564207075740A647570203438202F7072696D65207075740A647570203932202F696E74657273656374696F6E207075740A64757020313036202F626172207075740A726561646F6E6C79206465660A63757272656E746469637420656E640A63757272656E7466696C652065657865630A443944363646363333423834364142323834424346384230343131423737324445354344303644464531424538393930353943353838333537343236443741300A374236383443303739413437443237313432363036344144313843423937353044384139383644314436374331423241454546384345373835434331394338310A444539363438394637343030343543354533343246303244413143394639463343313637363531453634364631413637434633373937383945333131454639310A353131443046363035423034354232373933353744364643383533374332333345374145453641344644424537334537354133394542323036443230413646360A313032313936314237343844343139454245454230323842353932313234453137344341353935433130384531323732354239383735353434393535434646440A303238423639384546373432424338433139463937394533354238453939434144444444433839434336433539373333463241323442433341463336414438360A313331393134374134413231394543423932443044394636323238423531413937433239353437303030464343384134443944414646314233454137363036370A433534393342363946373342383943384236313830344133344643454338323633343333333743434446464345313742463334334541383033344246393541410A313443353638363243324330353235363941464232333645314631373935463035313530433846323844464546364246344243424143423637384430303033360A333045453834464542343442314138343338313835454234353635344536383533433131353942303733453534323932443133354630393631413634453841350A414145343943344241394334343135364331323334323632313231323046393946334538423734323537353241354645333834414145463735354138343634420A353146303135463945323936373437374435374232323632374437354345463841414146304145424435303445423436443032383944464338443836433937320A463034324244383841393041353336313344443933443841374138343630453633443835463643313543303030433041414545344244353133304236453636380A384339423346334646443830343734354441314435454330414238354339364531373234464136374639333234433539323735343135313832414234384435370A393732324443463630323339364144344235433037354135413839413544303035433946453131323733453546424444443138303046313142424446364145430A363731314335363333413733414335444630333842413532314143343932453133384637464643374335343338464644333246454141313132384336364538330A304433414134303636354630354536324437454630304231423035393631363243343032413334423642414536333030443433463344464343383438363046350A433046304631434532384643363036343242424645394243393130324538303134363737344344433838463943323530444537363244323441333438344243440A314432364236443946453938314341354141423241344245444335323831313530343344433138443731303537333544373532384332433544443839413831320A373542354437423245354135383646424230433036314537303846393243313535324636344132393634393042443046323032343339383641343730374646390A384142334339313742384442393246313944434136423944344131444235373531354535314444383544354339443243414637413033364141334639453942310A354235453039394343303541393132364142323734433137443735434234464146373830353233363644324632314544414144463834423232413244363435410A334536354334424330463534304235443936303944383844443045344342454546383743313634343744343341354639383532384644343541444431304445360A343141454334313146443639323933303846304534463438413844394339454533383645393230443431433143433938413532303733303131444635424432380A353638334632383042354346374632374443353039333043383144333434464635413841393235384132303744323533314143323141373335423134313535420A433232433735324444323241413333433532443644344430353342334534364644344339313239303638444646353236393541334139313834443034453845430A393336393641334645433341454233383134443930313545433134433232454333414244353037304538433238413342343246353539364439343832313242340A414642393937384130413336313133354339453138434244433938453044314538424443313745323544444233443532453836313237453541414543433535440A464545363136393331393045333738393738454631424244344431414630303544353131433736303743434641344243424433454334323743414438323830390A423732354232354145384130334545383846383041373733324135373141323331374530423641304430373245453843453245423945303333434443433839390A423634434634464131433730384138383534343230363246303844334438444146343443303636454532373837313444313438364542373039443332373836350A413438334636323730394538394430383239314630343433323532303845424137353844443435393438313333344635443941453342423631423330323046320A413435333843464332433934424538344339323042453830383036464443454533393432333037333045303439333333413745313635303932303735313446440A363935423545304145413945344139373337333131414130423333423135463637363946463836354431414342363344433632303143334631303632413346440A314234343643313835373436303734353931374133363238394444353743393446453632343046344134304642444643313045393142393142373930323944390A394631423943373445384535414130313141304543424543363630323330414435393239463031443033323544313546444330303430343036463132343032310A303241453137364634433938424143313730364630334332423542343046333235413530434134363833423242423436303545363845373244304342444332440A393642334242434444303132303142363530413745373734344435384431453336443831464246373245304138373546463239423443313039413139353046430A393632314231384435383830363339324545453938343137393444464433394533433445323044343533383446453037463944343435463134334239323244310A414233353041413644464335314643463736374231343141333932443641384236333341414342434543394635364130434634304142303830323045453633450A303843433042453031423430453836333838413635463538363946324634443032324444344239313230333143423843454445444643323437333737323536390A354232384636364142373443443739303241303036314141333534374431334337463043364545454137423042443331363639344139344534443637323532300A454130343441423238443844303130373643343836434534353645444131383131463741434137354432373437333038304432374433453638314533354643360A343437303436313230433643433443313736373446304630353135373041373944434137343834384633463330304235384231393031383433304439393835380A434135353034303834443642423734434644423633354236383636393734413941463035444632303143363933353242323636334230363233453738323842390A354543354646413844384631304137433238303030463843363739423138303036374435343831443633313542463143343139344542313731433846334345320A344345333139393735423945393438443930374639463745454146303730383938343433393135353546333239453333314435324646313134363638423841340A383037303442334336414330434341413246354430343343453434453635454441383941304341383534434644434231314435343942374641373245444239300A443335333533433334413737314231464146393646383346434135323538414142363533383442414646434534343836393043313433324131463734394332300A353831373230353138354639373346413039384241383536353834373533453735454245424633383746433135353230323838354635423637313137444437450A373044314344383837313833433535373342364642363037443446364343394638423934423039423346334145433245463145364133323043463644303131320A363330343633323139343144314642334632313430423539333730414139333837453234443537394433383941313636413130433938393439374645393534390A333445314143324535343643433036433533303834363044424546334531414545423643424230464644414334353845363144453333393134383043463543440A333441363437443444453135423831313331423744314639454544344336383337413332453839423045414144364130354635463637353138363535453544420A323234443438333343454336304435444242444238413033464231413937333035383942423446304646353631393144313745373342393536324530433335360A423138383838324233364639353035463646343245423236343446454531323543324137443132323237414243384144423932344538384230413945384443320A373937363235323342304238384442424536414337393638413436424439453946304333463033463546363437323443413037373832313935463031463133300A333044424538393543323132453045453230313632443836334634364136373444383532333246413044454536394138444630313937393441463638373341440A394343324135454545463933393333313343413531394246393543303841444637413735423646353345444344433339383531443230453538423937434135370A413735323337313741413138323144454139344338413946384238323334364231364439324431354145444331364630303131413435413434423039444534370A303843424134364538353131443043354343383346393532454546413441434641374633443746413545313133454636423730453541424136463141443342310A453444334231354143364435433342433730413339343646343131413744393635443646413944374236433645434531394232433239413246463437363235310A454246304346334246363538413144383936333233373036313732373436463538423244453439463842374534333145323033303441343236393443434637330A313143344539453936323630434334343245323933384131453237454536373434433743414230313633344338323130434534303438384239434244373537430A343237374235453345343343373536303239314439343546393132384146314638353932343030333431384639363435384144444335424238454334333144350A414339303933443230444541363942393234353436313342433141383244414434464246384535363038343439344439443246464142443832413743393834370A313731464533364232363542353436463330373242303932333834304536433642423132434135334530354139394630453846443446353130393738323734360A374341423942333542363830353032333037333641453632344237383632443132343443374439424534443143414145323142313233443145383337323337370A463146454632363941394132454446303243453043433842463932464437454630393535363938374238413342463644384330413636334442364239373432420A453941433631413434393130364146314541374143414434304143364635393432374343353138363545364139304346324145454438443630333742413730450A344144444146363232434445383737433938433342323030364234373231464339424131384533304630373532424434414345333632323146354344313439370A384645444135443634334245324545303037393730413638453533443835393735313136453643433039463030333941303945424146304341344230454544360A413438354343304236394535323630333346443143313139304243353638363733394345313344314145384542434142433031464346463236313431383637430A343445443239313139364535343633363931323942394637353946444437444332314241463041353238464333344241394641383933373831333935333634340A433533394639444134453535453833444233443644413330394335363244413133333042313537393537423138463736313835343441423733384532354631360A463035313743443133433146313142423845413035364244433537354437374344433532364546343937363339444438394332303938363630433543343542320A443743463731354143354537363834374530443331373833363044414331424146364143414545373234353342383435423946383636323143313636383537420A303239434546354146453239443145444234434133414437443030384237353530413737394530303636443733313244443643374146453143304246464632350A374230363242304446333030333245413241324645334343343643393641334130424131383838443144324230353432344135394142453345453932384544380A423637463530374546413738414531323846353842353436333443374635333442334430463441464332334533384642353645423339434641343235464433370A383438353435454144303345444335413945373936434546423334354635323736313543373835393633463533363937324542443943464334413641344130370A354133314135303843413134374642423736324144443139384345333644463836373330464345324236343344314537444630424445383030444537414638390A343441333642303431393345343432333145303839313945453931413842353539363436444334444641464630414438393138393041304138384646413845460A423036364243423741464341343039433531383839453746454233334631394133434231323638424430454137344146323943313430314241424431364638370A414346374444363541383531334441393939354335303932433336413737344243343236303131333336304432394146374144463544323242354235384537450A413942454643333342394139314432433339374232374138313038373337364342363233333138413833363243334641394342453330323636373537323343320A453731313931304444423332384530454533464345323139463434464535323842373045353842384536434442344141423438323337444439333344393633390A453944344639454144414138443436353337443936344437354332374632313042304332343733434236304436354636314242443931414445303135373642460A373743343945333139333631333842304642413036364245393130444531423146304534464642354538313033384538363536414246463038444644393233450A364241324146454443453639393842424637303435333933433334383131353031353836413438343645354239343243384539394434433438314433414536300A323739364144424235323432443539463131313645424238323830313442443930334546353842323233444644313842464241414534443334383837364230360A434143313042374146304443323730453637303241334637354434444345463837324632434442393437304143394131444331414243423535363336443236460A394342364246323741304441454231463632414645433132463535463738433942353941433644413944423442343534343442304335383244423444423841340A423331454634414642373739383845393246433042323537333734423434303834303634393044394146434334393533313644364330384245433941373643370A313233373145313434313737313145463830324642373135314233463641323538304339373532374339433341304641414238443632464439393241413138460A454245423336463739313031383643443546373041353544464539333237353743323939443944323238393739363736394130304130433641424431384638320A453044344539354436343737453637423443303132444242443039384645323045324631354334313244443241443534373141363545414345303542334131410A304339433433304241454634383837463243434536363831313642383746464439444142344239423336303543443236453642313234383830353841464133300A383834333739314139354242333232444635433437333837463345433732333433383535443642323344373231343445423545423531353742384232333846440A364337314444444136344339353339463636413744443536394646463433444245344138463036303841334342443335344444394241423545334337353644440A393243334331423345313639443836413232333032393934333234383842433034413837453038413830383039463939363836373644463931353742314339310A323743363634414243434241393939374641443839363646373636423332353038363839394431464534343538314645303743393736383842334531354230430A323334413232363436433332424239363542394246443243443334383534443134383841414630323145313639424639434139363635434630343045323541380A313631353643383041324634373339374344333730414145444137333145304431344642454531453531413137444239373244393644424343453333463933370A354344424631413635304246314433353336424134434237413143414346443543423435374532333638413636304136324143323645363441363331423242410A364230384542453432453032443942314232453935424639463041364235394339364131323239363846443436413444313742413344303138434342413046390A383042413343314536433638333131314146463739333033434636344631443243434244373537314336453039444439423237423845313031424532313946300A453037353838304130453336373838354143393431343345373737444145343535423939303338333130304541444637383633303036303243324345323846320A344634343636324644463033424433394135313831393132443846313234334333364646383838383243464334423334433144344542424330314439364137440A394345353330333034324431423231303432453446454141343535463232413031333333464341443745344141434135443341353338363333313938354636420A394232343745433633313042423037353037333231424546334534454346433342393135414141364530323942333939393634344339383736343038363342300A354443463538434534373934393741464144313230384645464431373936453734343637453946373836374333313341333431324536393233463443393134340A433639454641313739363530353644463034334442343635424632463145313931373036443341414234374536414435433937363745344137334232394632440A453245353739443032363232333735363846383242333630414442364430323139423735333545464430324444303638384344443233443834464334463330380A354432443030313042314139463446303332314130304331353436373244323137303842363642393141444346393842414337413246393438343845394134450A383643433832454444303339394244394631334534333335394537314638303038364239423043334236443038383331443434373945443833453738393243340A393043343737424431463036444645424246363046323635313645454344454645343738374545413836383337353446324232353744304241413630374442410A333545433644313631384332464446333838313832374639324437393345434631353244373631463234323341393632313046353832444339423930313230460A323641333330323534313437313641354536463536443731324533314241424535303437454334383535423736374143363344373933393935433945303734420A364533354337453532353546424634433346313745374144374232413643354637343539373934464339343330364235383135333639313046323434424635410A333135384538323143453735463442303536354542453938354446323444414139324639433144383438454543364238384532314642364335313132353837320A313735324637333532323931393630453542443336463738414142424346364441413444303741463536453442363035384141423133443431424344414131340A433044363343363830374643443045324234423943433839324632323438343331373341373544433533413846304641333936393539433245324346453346350A394231433842363237393746333445374130424643463037383743373346454639383434323233344136313743463136313832393439383033354433304232390A414446454141424430423439364538413245373634443232444237373337463935304643353938324631433546344644343134433142303230324634304642410A363243383142384630453833364344373344373933363646443632333838423433374238314643363733343432454533344246323734353446373241303846330A333839453630434532384130353036303141343246423434393143363044433032454330303845364239444432343935353232424245433732393345323932330A313230353834453838343132444137313337333937423431413238373036423143433642423043383037303941324134424137393832324432343537353741340A334545343534313938393432454432333136464145423938314637363135453634323136373632304542444443354232373145323733323136454231313943360A344632463034313246304241364533424133393632313735393735373543363733393139344531463833393233324646303838464444464433363935413543420A394130453232303338393933383539364438424442313833313338453146373346363435313245344641423545313332384639423432333634453331313342380A303034424532434130423037344545323731424245303236304433314345353535443533354331364542423532383734374542414646463235334536353944410A334133373743424530423239363237364141434630323934434639304644414144423445414435453246363030453542324130313844454642383646463631430A383432393634383041343235363837434345333744363731343732353337453839374146443442384336413631373545314144444639414432344446433543330A413733453138414332443942323842444132463137443531444233353231393435383530444146304545343842304641433237313534344331423446334232440A353342464338444533324241333636464231464543304444364330423146454133373443424532423936463542323335413144383341323430444234343243370A313436303938304133453542393641453344353738344445324332444646413637314530413835364442324646343133304535393035463344353333383835360A433131413436384438363744304336454335383546314144334537313634423835393842423539393733423941393532464145383139463035324136353534440A454443333432424343423035323539303544314432374543423945453433383437423639414531313646343934434232444242414642323737334631413345310A433735464244463844363646413541423430303537353744363331413044393432344643444139314131443241433646434537434337413233453834433635420A334539324243363834463233343637444346383532314530453237434631343431433438374543364533424341304142353442423133374538333737363030390A383333443737324644323235453838413842443939324644363938313942334241393042414144314444463136453433323631393043433442463943333046320A414637434131464233384536333837443937343546433545313736423234384231353831424637413443413246434138453432334446333430454145323941410A374530374132354646383338463637333738463941364139413042343034453031453836453634464546373144443344353430443437313141454231393734440A453245304434383544414646433734424136423845394146444132343542433839393742423339424236424435324234393641303943363846374138453930300A384442333030373634333431363034304643454338354234303745413041393436383237373731464242454534394133444135353432434335313733413331410A303238304142384539323243323343314244443838443730363237454631323436333343333138453743394143424331344145323136424644343143304236420A334130313631373537393133434131463742363632363936334330393933364135324537334444394233443836444545453733433032393341363436464346310A323144344333334446463136373144413741353345373745323032333345444535313537313534394141434237393638363032434430334545363741434143410A423233313636314341394441324245433537393541383344464146363735453942303532433842444435313439304637383734433931454635454432453041360A424539434241424239384139353046374535354444413338323330333634333743313146363134453237444135424238424336443935354646453534423832350A303230313237354332433439413339303842454631444233443837373932444446464544323344453746443943464332383446363235354337374535344133390A433246444243443238463239333845344343313335383239414331383637434141353730353637343036324339363339464545464245343944363130383039310A374335383538354238303436344637453639393636443739333343373031394246333336423838423945304537303733413835454146323937423731423330330A333145454539313231333437413438324432384343453934324146353345393446383841393745463246313836304139324345323941313434393544363742370A443337453230374434324633383931453034323346354243464643414143303537464543363833363936454436464545464136354338464236463133313243350A323441313133303139324234313739463342303844413143393531443938383839344537464537434643323843353639393241314341383242463842444244410A453032314631364536333046463637323031424134444635463346344436414136354238333437464331353735433134324336433138363845383437324244320A434631393131333741453142333646333246443834444341443530363434414435354542413236393443393342444639383441354339453743393242373341300A323637363946303038333135333732363646443245373131414233463841464335463346444133433945363433394646433438433344314235353237464335360A314645444539393145363645383436354330453339354541443041323241324644433030314534343941423943354530454631383741314445394237343639360A424542364135323544424633413630444132464246313537393135304445453143354431423646353546463237303843453233323839383033434531323342440A433831453235444239363535314131334144373133443543374246444433463245314435433132343633413139353434324235313930394343313732344535300A413146364634454144423342373335353930384633364638383532314633333343344537433730423039343230394431463838334239363144464143333242430A384335413243414637374341354536414142373134434330414632423432464646364637333330314643373141464641394233334132313533463535433244420A433143313131383734444543333743423734364245433941334139413337413244443039384345374336364230464533383436304143443737413437443533430A313535304638353746464237333342354138443032464235363739304130393139304232394343423446344133303538423143383246304343354531423245420A324638453036463244453533314531454238313332364138454630463832383433413441433539443236374545453435373330383935373532383230424139330A413132394332324137384331414232384243463637414435444633373246454343394545363731394130324534393946443543413836363638384538363038390A374545384535393132303837453043343538384445333834323831313437383545304346454442314532454532344343303637443130374446444631453242440A423143344639433642373430463344454130424433313535383130303445383531454435413946363643344639453935444539374433353544423036463438320A413433423536354631323535413835373130423135413238314532463033344231433233464545364344463341303433373830434236414231384130313646310A394541464535343543413541354235414145323435394436394432313531453939443032394642354331363439423944413738344246444637443137373338350A344438423136423939323244313439464646364234463939333131443532424543394139464330393845373139323138304442423338373637444139423943360A453843464339383631353231394546334144344138313537443134433732424133463931433842373833383133383345304243413141353331393734394530380A443637443132303843363933413636343044314244364239323835414330443331313043424638463737343741443132353835313431433332343844304242350A424445383932463931413442333239314632314633303239343639333531384534363239413341444437433836343045343234464636313536303243363033450A314531344443423342313744333443303930424541443241353233453236304135393935323233323942363938373239413633354346423135424537453739450A364133344441433743334544353733343038323141344537413043374638384636344241413639424238304446413842363539463437353638373845333034340A453144433044393830413743463344413433423046434236363638303533344530433839343635464639334533453143323641413036443130313434423434370A333643323042313434313835423730363739334341363844313146323536413135354531314630313930334242363134323346463444333141353045464634380A384542423239423239333930353941444537333541354134424135394238433242444534413438413638304231453539304144373333463330343545464634380A313439444233304444364242353545323436413642443430453332433532343445384235314336303742334642344144444333454430353344324232334543420A413630334345363534464242444331463146393339383739313133383938414333333039324436304633363339364534444439343743443943334333303634420A323232323337433136344243324538383431414432314232393433313044364334434132303541423139433830324241373042313046354644454535373437380A363936464246374233373244324235413242463739393539303741424633383843323137384333383733303236464644434436374134353239423733353033310A454430423346323642363046334433383134363539303142373345313243343743303142313644464346423635333936344134423639313337364641304443350A354630324630353239354445433039313032374545334630353636423136313936333442433530453246373939383746443945374233454237313046303038380A433336463744373136343535424532413033463732323037433944444637464134433636353437463246344434324538303543334442413339333538303045370A423746353431344230414538304446434230464239313936344246443838443831463930443637454143374544423839414536424343413135323043463738330A454141413839443534423646314544464342334441463030373530393734424534354539303238434637464330393538333143343530383235384533314443310A333730463643314335463038344645324246413133323845453235464537384131343931364343333442313636453733354431423534433735454146444243460A354445304236304634364541454239453439394137453241383245464236363131444443443341413344443634353432443933303845343433383131454230380A353932433244413334353935383230363431344639374430393741313644344245423939463039333045423336453039323143323337364135393737393344360A383134340A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A636C656172746F6D61726B0A7B726573746F72657D69660A2525456E64466F6E74200A2525426567696E466F6E743A20434D535931300A252150532D41646F6265466F6E742D312E303A20434D53593130203030332E3030320A25255469746C653A20434D535931300A2556657273696F6E3A203030332E3030320A25254372656174696F6E446174653A204D6F6E204A756C2031332031363A31373A303020323030390A252543726561746F723A204461766964204D2E204A6F6E65730A25436F707972696768743A20436F707972696768742028632920313939372C203230303920416D65726963616E204D617468656D61746963616C20536F63696574790A25436F707972696768743A20283C687474703A2F2F7777772E616D732E6F72673E292C207769746820526573657276656420466F6E74204E616D6520434D535931302E0A25205468697320466F6E7420536F667477617265206973206C6963656E73656420756E646572207468652053494C204F70656E20466F6E74204C6963656E73652C2056657273696F6E20312E312E0A252054686973206C6963656E736520697320696E20746865206163636F6D70616E79696E672066696C65204F464C2E7478742C20616E6420697320616C736F0A2520617661696C61626C6520776974682061204641512061743A20687474703A2F2F736372697074732E73696C2E6F72672F4F464C2E0A2525456E64436F6D6D656E74730A466F6E744469726563746F72792F434D53593130206B6E6F776E7B2F434D535931302066696E64666F6E74206475702F556E697175654944206B6E6F776E7B6475700A2F556E69717565494420676574203530393636353120657120657863682F466F6E745479706520676574203120657120616E647D7B706F702066616C73657D6966656C73650A7B7361766520747275657D7B66616C73657D6966656C73657D7B66616C73657D6966656C73650A3131206469637420626567696E0A2F466F6E74547970652031206465660A2F466F6E744D6174726978205B302E3030312030203020302E30303120302030205D726561646F6E6C79206465660A2F466F6E744E616D65202F434D53593130206465660A2F466F6E7442426F78207B2D3239202D393630203131313620373735207D726561646F6E6C79206465660A2F556E6971756549442035303936363531206465660A2F5061696E74547970652030206465660A2F466F6E74496E666F203920646963742064757020626567696E0A2F76657273696F6E20283030332E3030322920726561646F6E6C79206465660A2F4E6F746963652028436F70797269676874205C303530635C30353120313939372C203230303920416D65726963616E204D617468656D61746963616C20536F6369657479205C3035303C687474703A2F2F7777772E616D732E6F72673E5C3035312C207769746820526573657276656420466F6E74204E616D6520434D535931302E2920726561646F6E6C79206465660A2F46756C6C4E616D652028434D535931302920726561646F6E6C79206465660A2F46616D696C794E616D652028436F6D7075746572204D6F6465726E2920726561646F6E6C79206465660A2F57656967687420284D656469756D2920726561646F6E6C79206465660A2F4974616C6963416E676C65202D31342E3034206465660A2F6973466978656450697463682066616C7365206465660A2F556E6465726C696E65506F736974696F6E202D313030206465660A2F556E6465726C696E65546869636B6E657373203530206465660A656E6420726561646F6E6C79206465660A2F456E636F64696E67203235362061727261790A30203120323535207B3120696E6465782065786368202F2E6E6F74646566207075747D20666F720A647570203638202F44207075740A726561646F6E6C79206465660A63757272656E746469637420656E640A63757272656E7466696C652065657865630A443944363646363333423834364142323834424346384230343131423737324445354344303644464531424538393930353943353838333537343236443741300A374236383443303739413437443237313432363036344144313843423937353044384139383644314436374331423241454546384345373835434331394338310A444539363438394637343030343543354533343246303244413143394639463343313637363531453634364631413637434633373937383945333131454639310A353131443046363035423034354232373933353744364643383533374332333345374145453641344644424537334537354133394542323036443230413646360A313032313936314237343844343139454245454230323842353932313234453137344341353935433130384531323732354239383735353434393535434646440A303238423639384546373432424338433139463937394533354238453939434144444444433839434336433539373333463241323442433341463336414438360A313331393134374134413231394543423932443044394636323238423531413937433239353437303030464343384135383142453534334437334631464544340A334430384335333639333133383030334330314531443231364231383531373945313835364532413035414136433636414142423638423745343430393032310A393141413944384534433546424244413535463142423642433637394541424130364245393739354442393230413633343343453933344230344437354446320A453043333042384644324534373546453044363644344141363538323138363443374444364143393933394130343039344545413833324541443333444237410A313145453844353935464230453534334430453830443331443538344239373837394233433742344138354343363335384134313334324437304144304239370A433134313233343231464538413744313331464230443033393030423339324644413041424146433235453934364432323531463135304543353935453835370A443137414534323444423736423433313336363038364633373742324130454546443339303945334641333545353138383646433331383938394331454632300A423646353939304631443339433232313237463041343742433834363146334146444638374439424441344236433144314346443735313346314533433344330A393342454637363441413833323331363334334639464538363941373230453441413837414537364641383741383333424243353839324445303542383637460A313046413232354532333342434641394242353146343641364446323241444345414343303143334344314635344339414546413235453932454641433030440A374532424134323743323534383342413432413139394634443245343344464345373941373135364637343137414346373845343146434139314536433945460A423933333435304438353142373341364142364145413745453443373130434235433134323730443136373446413333343638363635333739334643423331420A343931453837304433433242433635344432433144453436334543394241323944373337314141313037383830304546393344334636363236334132454242420A463537323336393742463734343842443044324533303135343442454346343937464434373542383544464546353241463446384638424534343543414245360A303139333138383036443130433539353231353746463846383238364331454537303135343543384636304546413835344541453636383335413230343641360A393135443339354631453033363645464530433033393135383346453030314646313644383241324532444135463537373534413243364636393330364533360A333536454346384546433346313138384144364643443234323745303538304339374135423639423445304530394238354545444531343246354144443246300A354445353144364442373242313237343132413044353731303643313943413439333034384134463831353132394142453736374435313731354231353135440A394332313036374342354243383837343142373239384338334541453336413836364446413837443839383146313739423143333132393246353642424236340A334334333037373934363841414630374338413842343933344531453737354645334633353138364244314641364545333638394331433735303637384146310A464246394232333139354131323443354339393146453637304143304338364644333944324230374239413331394537344546443439384234353832303235320A373230454344463732393446374230423133374345423836443333424643454238363036393835413332363046443636394534363143384245393432313643350A443433344644383835344634344545363645354132383941394639453332424333364146363435443533463936363532363032424145443431384338443732360A424430344131423436313735353146453444454635343038334434313446374443453030344536424232444339433245463743453233324232353442413243350A374443424433364332303732454434364646373131463132314137303145323238344246314237313842333136343338324238463435334436384641303337370A444645313036353033423834303144344442383746353430324133414339413434324641303630423036313041393532344435333043373135374332364235360A414339373046434331443536353546464646413339323436453634323043463937443038414446423742303538323236373942443430433633384444463045370A413937424645383931384236313141313435414339363543323033463134323838313246394433343041463439394233413931354232324245373938353934450A304635323031303946433831453435323138304145343542313730464639393943354643323736314336434543443837343241354136464339374631363734330A414434454643433635373241364433463345344533333043354342324646364645413438413542363444443344424539343342443939313844344131384531380A434243463539384145464242364142334344324342433942464436303939323732463635343346334535333245304532314536313442443238383042313032330A304143323334434237303538323742463031364442383445303045384332353546444546413031303141383432393239353430423742344141384130383942440A354546463035423732333536423642433337323738313738323342354344424231423936333130333030304437463241344532413134373246433345363134420A354342434236443644373834303233313733444546454246413846394544383745433141304139454539384341353943464339363443463934334443363833460A453945303044413731384334343235413730354136394439393938384543364631353235323543373930393132433245343641323338314135363934323441420A353444463437393842433244374537413336314537393931363431443442373536434532413746463441323834383932373039324335394332433442383830390A453133414238344642364231313145363830443746423946324646433243354336364230423530314534343437433245343643313045324636313234343736460A413134304334303443464532444339453031393942463631453033354345423438314434333831333941393633303933344535343144323631464644323930360A344341443939453230363535464137343641464238314544424235363031463546443642314436383332413031443538354532433535303533463641373337380A344441414343414337363038444244414441414537333244363642334537463837453739373536333337433141393631453533413436353142453743373746340A303338423839433837463635304335344132413930454237463144353235424233353346333333313835353145453844383441364138334337313845413541340A423241433046373330364231453039353831394238373031354139304341334544373339423039303631373832433238434442333642413442443545353330380A354342423730343134453431313231393344414334413146413330393936333237323330443145303231463343443831313545313244323339443933464644430A423634353931304542323945343044383330453742414632444232353546443743344537373635353742423338313537393137443939334541433234353833370A413342353135313437303433353734313537423833343244383239433732323843434541383433414243383944313738354139363732413539323346433443440A324633464632374536464341434638344532443331333643413243304644334546314545373335344344303443333842354642383734353533363436454432440A434544463745333632454144443034423138303531463230413846423044453138453135323338354239443035463938413341374546313737383234453234360A343535414245363945324637303045423738313835434346433037453342344336464133303131313235323844393737333637443330443044354435394544450A464145423730364444433937304139453239363233364337323542324235354230394239433333364238453233434241354642383639324435364633334230330A313632393445354643374641413432453936333935413537434535314341384444443737343432463134324532453537364237373833373346423331433831430A313638343042423432324341383237453330413831383239363438424446314341333637303045413332414438383844303937433146453041303542324439460A343833414545343032363944463039414630443141443344463830433435444443353943324130334642423636314337394238373835333733374336443335320A363736323642363537333231423136313938444244364442393841303932463137383738414534363938313231453130303645353344364639423041334245320A334642363838323845463835344130434442414136384233374142434136414434413344383039414146304241423136393741383146453539433938433437320A314533334344373041373541323243323439444431314437364332353735454433333730413235383932413136443246443536394344413730433133303737300A393346343933433744343744364639413534323441374135343242414437323642464333414232323544434542424536414334424530303646384337433045410A303531343234423038333035424632443935314142323938364141464541303445303738434137394233393935383542464630463141444345443032453135420A383736354542364246364138453444303930314546463243334141313034393234454144393633374133354438373745304335314133433337444137384344340A383634334338434536444344444533463131364136433233393046393438453533373142454235414432453837423431433546303146423543313936433433360A364532353641383844303832453346343645344546464246363035423245464631453944394144354545344444433332334131333743443934353145444545300A303646374438323839384437314641463233363243304643463146373236463937463832303330354237434532303732384341303843363335373530383341370A383442413238423744453242393136343332343735353130453237344331324646443136363041373137463531444143464446304131303244383532323445300A443644423630374242373235363941424238413742433641313033353443424243303137333245464533354237323036324446323639434232354541334445360A444336303342303443393043353931324432433338443741354143444344443346364631313644383834463044384335323846363944354434374241323044420A304139453538354337443843433343333234464538413144463135303237394637453846423433424442373230453632344535453939313830333243303243440A383032303633364145354333384441323438344237463442333431363345304430413536314234334238304539373734364443303543383731414236323045430A433544343731303145434544344137453235463239313138344245463842383030323441413742423435364331423833413930373635324233333144454133340A373534323236433339433638383945424545464441443038314530314546384645343737353139383736363738333646444534433842423841334644343430360A314536343342344541333742443337303733344431413244423137433246344237344234454437353039384234333336303146373541383843394133374130350A434342313537454636453332303233424641333339373346334536353541344435383238393133363939364643464136314545414244373037393142363532330A314646354445373141423841313730333839323331313841354545443844353943344335384432343646464139424232363437323334364234304338373431460A313533443139434146463230444432413836433644423839313534413633304642313736313932394643334630343438454532463038394331433935334530320A393035424138444537354431303141393832413631313035364334423233373539364331303935314444393842414238333842373432443343463744453731380A363137444237324535323638353833323233453337453032394431433846443346314432313639303135314637364237364335324337323543413133354341320A383636363535334538363343453138384246433942393941463536414332444235424645424542313246423536334430303234344542383945343738363537410A393841463245313232334331414243323541343530304538313139423836454233433236423841324633353035413345353631304638394237433334453237380A353346413041353441374634364438344133354546454333364145363630413945334333374545333836343130363730324445354146364334354142463634420A383838413441353133323331333843453737444239333535373646453642343832344236393432444638303632353039384345314235423332423233344631440A303532413944363033393639373131384139443739333739333737354438373239443835373441324537344437313039433742374532334243354532453837410A434138453031393230333935324134383932353434453141443344344544443232393731363131333538414232333045394132414244463030413238383530310A413031423637433432423333463642373843333935363244423530463436363342393232443942453044384131353033313141453434423833433146313239460A303733333733323345394132333231314545353845313630343345313237433646393537343031393137394635363335363438413031313236363637374235360A423544303230314134453134373042393532413135373942353741423233323943443443363135333935303233433635334637383444333642354545333637320A313044313931463239454135303843453834373633434134434537433243353232394533384532343132353541354341424344364337434241454439303141320A434135334235453234313131393231434444463833353738443333443436334437304544414341304534373044384635393233303346423642464436384234440A334633424532443743354543384242463130433930313131413333453230354632363439423536453834343346364641413643373231433636353735414531320A443443343046314634364346394539444136373541423544353834304439333837383043443945344144363733364543424542364134333937363133353836460A383439423531303438414335463934303545303345313435343041354535353832463631434443444235374544444639354138433637303546343333454531360A363438463039384330334445443841324144393441453344453230324436323942393432324142423033313331384434384632433835463944424641313742450A383437303841413342364339463831463435303846374135434237423636343641423837323245434638313738373742373744343733463537373535364441410A324241304142414346434635444541373439384334373332384538373330313941393536464242323530464439443838383544323144333638464137304342440A323730394432444134344545374139383639393633454142343837383935343139303644453439464145373835454345314631384132324337453745443230340A393736383839364237384539454237413242443645454331423236303833393430363536454344363839443932393432434338414630354342463832414544300A423435413744463444443741413635323646423539373332323536304239454433303837413635423545454631333731433332384130323134313142464533420A443942353038384232463141414533383146464544353244324431453032434430444137383638334533423036313731434245393442453937363030303544370A313335383933443743433244423039374636414336363444393539344346314336353046383444413830443245444530343830324442413333434533444146450A454237413337453841454641344644413632353246463231453836373344443938453637313234443544424337424143463336314535373037374237313933390A433144314642393233453445333543303735434431424342453045383044414541313332304435354234334541423435443942323643333636423237383738320A373531394644433438324439383833394246304446324537433341353641314331413346433045353741373543413431344636353336433146453845423741300A344144464545334245444130463533424538434635463634323330373834413739373133334538434434364243434233424633384243453338413733434345320A394530373341444537393246373132383233314444443146363345363135364144423236303943323030383337433245384132443933443241374243393137310A303530433730394137314534344533324231423033433932454235434631443342414231433338453032374443344544394145443633334439384344373438360A334637373341434638414533333236333143463241424536443630363630373539334645383632414445333138303339363445334634444333434533413237310A433736424444393543383743444233423837424332364643374131364435363745454336324536464630443437314234383533444238413934443443414346380A383433383234463831383038334631304538384435324643343235334538323033323932434234304631343134414537453531444437333437303037433334320A434437304538453946324432413133443731323133423834314444454141423230384144394541363434353931433135444542303834313635463944463234420A423931443342424545433245333445333845463136413043334630303730304137424443424246454432454330443039363031414436353338323838444235300A333437384230353142354531364236303441303334314645363231413538373138443936304436393944334641443238343331304443463534454231333137350A313941373541353339454539384538303441454132343638394433353430463046313239353141334330314641434345394137424146344430444146413934360A464636354134443241344333393936393630373237324336383836463434453930414245323743413341314631324132394439423332453630453845333446300A313743354645343344304536394139394139323244393839303942324242434431343545353941354537463534323642333938384637334230394135323546360A384244343931353636334331333031333233313830453736304245383143423837344230323046444133414536333334304534323631453446334534393439420A434330393636424443343432363139304245394635443737463736413732414439323536363245354645314345463943434142363846304244333344413030330A463131454239314143343530324642443641453438444130463944303743333542393642313033453337394238413833413035464537323846313731363139340A314636353046373542454241444232453338313033383846334532444337423139463142413945333239323546324644394631394634453837303146334534450A343036393132354437433430313134343734303639314537413436303032314134374231453237393937464331444441424543354244304545304232303139340A324435373943374436373237414131323430383332343242444134364438453131364532373531433546323938383531413632423630414542453832413932390A394239463234393242413335363930443145464431363231354238454631344537413338303342393343323846413431443937314230354236414633423539330A453734414431453638413546434531324138364536334237384246454138374433393439464431363446313232373741343638384245393633353637393143420A383637314334393336353630384633454445434331303933323141463932423443323943414630373344413341374437334539313344304438334641433545420A424438383444344336383630353634303444414141443646383246393446383033464131464230444438393038443144463038464238374138424238333032370A303444453043424231433646454236423531374642443743463036353132303037394536303843453431383933433242433936413334373832364343444644350A433639453136313231374632313237413539463141364632323033373634313631334631393146323244354234434443424343324545353631353632333430340A414241374245364335464534373534383136313542324143314132343132453534363838444432314534344343394146354631364536333441464341333839430A344437343042374235314242313431424641443130383045374337323643313630364132384544343932453642444539463830304546414344313531333930390A383445393843454236413042374132413646334531443144434333423235353237393545303933323637334535394543433536444444333741314435324241360A433346304539303539373841423536383934314131363346344345334141423543354231364638363031364543343742413646334637414141413737433342360A303943384333414244423644353134413736454344333743333741413838423538363036333042333430364234393446373732353937353539364638343737370A443943463438363836454339433544424343314437383531334635393143374331304142394431353342334434313432364237424636363842304430343530330A353642434236383632353834363243314443363130393537323442394633333132333136323632464437433141454336453534444537453541374244384546460A303335323939423846443841344137423046353134303446344137363046344438423443304642374133324641344232333833414236453943373846444544420A464536413537383844333841363730314231323336333043324136443832304136383431363646424243383344423137303639343934464244343131423333330A434233374532343931433542443033354133333836374136443341334434323043433331414346343341413037313832434141453637453430454336333636330A423637384637314434433645304543334130414146393034434433414136364530444535453343444530343945393432343942333941314330364533434539410A463937344232343834424232434441313432383242393531314535303542334338394639433830323231384145343044314137353431333335433537333644440A434435363544344239463443433738463341333933373337454442344642443044413239394532314343464542413534373845454630313346303535324138420A304242313146463436434344423738344538424443463733304131363336334536363537323034394534324336393538383645414234324139414439303934430A423633354446344235423942443942394145383435354446413345454643373736353331393046394138423145393342373238314332413231454137444441390A333334383437343542444637453344443633433741433636433238364339413541363938413545344437413931373130423746463934334642323336303942360A344234343246383343423739353738384641423545394346334637354435343837444132363137304534353631433739343143393130423038384333423836440A463834344230463334304346383237383641334643463334373034383436334542443230303632383141383136363237303635444441364344344433414335450A323032344243393643374438393633383142424235363739353145374131463239443445393533353132393842303030443239453546334430343438434235410A434644414531424144453934303342393033373143334130374432303839343841464130323241363943353139343334423638313330383641444635313844350A383845304239323037324134344241314233454242363330413133423741423930393932453835423644363733363143384439364633453044383236464633370A313742363745344231454237424144464439384437463446443137424543453734304144463133433134314542463041393143423130354441424233324645300A353530383644353641304433353838343144313546443334394536423935353132453445444634433433303231364646383543324142453939354534423430410A413630343443433838323041443838354330374530353242334639314332453941314431363342464644323130463742453935423932334532353030444235300A323037353130364442353431433236374244343530423235423637304345383042434430363844344442464632443832363334313735423631464244334243330A343036313331463434433744364631384433373544314632323730383239444446323944433134444242353841333041433139333234354431384445393146380A414238384142353438443831333836303542423541353030373332393535333445333134333636453236363635414537303438324238393045343130314436420A363045344633423337414243413133343644414145384644423844443943383332454646334537334241343730453242414345374238353135434234333338380A433237414639394646393332323137354346384434393437453642333834364146463531363345393732313536383437463538413636363630454338413341360A354642343743394636333742344342423443373342364130383042304346364644314539363635453932303332353430353730464643433734374336374335300A383232383131414144433430344243374543443136373345384141364333413246314438324633393433304235384332393134354532463142363739433436450A393445444337313138383346314534454138343131374135343735374538383935413430343031413236453134333742333941324636354341414444364530320A443731464138414637343533363638444336313346333236413333343446373441443741433637353639414633393933383535303041424441354544443342410A333433434335454444344235353834363736323638353045373532423939353946454631343534453533453741334443424332323535414438463641423446450A383934343535313138413631433538383430434236384139323541434341443735434541434538363344383036393136323238463036313431393141314344350A444339424145323536303138363135414133373235383334353139343439423041383842344633393636353445373430393943303037393330414442313332370A444431313942463739394645334230423232334531454441303446453244413741314338373931343345314333334236433633343446344241303333414436460A384538384333334445463139373737393642343534424142323439344339333046343932413531384538313938433730384137354646454638433439433332340A413731384142353942383839444544353231323239453734314646453533463938454245383842303430354144353233323534464433464134424245393644410A444131433237433143393739413044443445363143334231463443344445303145343246314334343335454543464330324439373939344243384146353237300A453743423134353844373645443032323943354646423441323342383731363031384639303530393730383935443531373232434445384632454133443934370A444646333734443834393135443543354431363436334136464643443037394431454434313643343334374246383331464630433441444642363132393544430A344435373835424230383532424634373243464339374543313734343931434146393631414239303632394630353545373544414136443938393845383635330A354243463337393831364341453436464541363245374245384539423935333436364535313832383137324334444244304531424241443143453238423542310A303242334533363430334245383042343941343734343641363637374643454434333846303144363045423130463437384338393532384641333337443044380A383844334643313233433037363530374143444146373833413941364532344544373342463234423645304631314331334535333244453546373045423032410A363036353146433245323633303032443339383642374232304343324141303833333042394643324532363736354344353232363639363941383645453330450A373145304234314236433143364441343233443341374531353533443246414632364546343044433138333039393332324433363245343936353639354335320A394643334535424437414244373433434443423731374442313033373241373232413339434535334641424234353445414445323137394334434246433031360A413845383933433238454635343943413136393243384438414446433437314443434445323636464234453937413146333033353830314633463033344434340A414536414441303139323635374538303738413144323734323030393346454241313131333333333134363538303231423930444134453741384434423832390A463137393535303130323044354646304144323535383443314436304446314144333133364530333135463330363634334630423534303736393736434332380A464231353034344242433837464432383136303834343042393332453038414335463531394332434141303938454235303443314237353241324131313632350A324543324239334632363645383242354543393937464538433043313542383737393241423434333733453034423634434545323137373939413435453634360A303941383744433835424643463637363041304639364435313045354136393837393736364333453939444639374145373434343336433737363039343531360A333737443943414539354143343831363530373638433745383445323135443833394239423633304646313246314437364432313044363430373833303733450A433437353435413434303945353641393538333636363939333932303032373345344633314246463538373744464530443338344642423044383538453945450A443145413038423835303539333042323930423638354244333946363843394534393146303331363933304346324333453736423535423331343845373233300A323738383135424430373030424142323337464441354546453036353336354442433146304434433746384644423435463238393936303445324443353738360A463232460A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030303030300A636C656172746F6D61726B0A7B726573746F72657D69660A2525456E64466F6E74200A5465584469637420626567696E203430323538343337203532303939313534203130303020363030203630302028544D507879706963544D502E647669290A407374617274202F4661203138395B2034332034332036355B7B207D20322034312E353131202F434D4D4935207266202F4662203134345B20300A33315B20302037395B7B207D20322038332E303232202F5859425449502D4D656469756D207266202F4663203134345B20302033315B20300A37395B7B207D20322038332E303232202F5859415449502D4D656469756D207266202F4664203138395B2036332036322036355B7B207D20320A38332E303232202F434D4D493130207266202F4665203231345B2033322033322034305B7B207D20322038332E303232202F434D5231300A7266202F4666203230365B2032382034395B7B207D20312034312E353131202F434D5235207266202F4667203235325B20333120335B7B207D20310A34312E353131202F434D535935207266202F4668203135335B2033322033355B2035302035302036355B7B207D20332035382E313135340A2F434D4D4937207266202F4669203230355B20333320333320375B2032362032362033395B2034317B207D20352035382E313135340A2F434D5237207266202F466A203134395B2032302031335B2034352034335B2031392034365B20323020315B7B207D20342035382E313135340A2F434D535937207266202F466B203138375B2036342036385B7B207D20312038332E303232202F434D5359313020726620656E640A2525456E6450726F6C6F670A2525426567696E53657475700A2525466561747572653A202A5265736F6C7574696F6E203630306470690A5465584469637420626567696E0A20656E640A2525456E6453657475700A5465584469637420626567696E2031203020626F7020466B203534302035343420612844297020466A20363036203531342061283029700A466920363034203537312061285C2829702046682866297020466720363639203535342061285C303033297020466920373033203537310A61285C3030305C29297020466A285C5C297020466828412970204666203836352035373920612831297020466520393031203534340A61285C2829702046642841297020466920393935203535362061283129702046652031303333203534342061285C29297020466B0A32353020772844297020466A2031333831203531342061283029702046692031333739203536372061285C303030297020466A285C5C29700A4668284229702046662031353135203537352061283129702046652031353531203534342061285C282970204664284229702046690A31363436203535362061283129702046652031363834203534342061285C2929702046682031313232203539322061286629702046670A31313631203536372061285C30303329702046632031303930203532332061286F2970204662286F2970203130393020353235203230300A34207620466B203632392038393320612844297020466A203639352038363320612830297020466820363933203931372061286629700A466720373332203930302061285C303033297020466920373637203931372061285C303030297020466520383132203839332061285C2829700A466428412970204669203930362039303520612832297020466520393434203839332061285C29297020466A20363539203730390A61285C3030316A29702046612036393920373137206128412970204666203734322037323920612831297020466320383033203631300A61284F2970204662284F29702038303120383036203420313937207620466B20313337382038393320612844297020466A20313434340A3836332061283029702046692031343432203931362061285C30303029702046652031343837203839332061285C282970204664284229700A46692031353832203930352061283229702046652031363230203839332061285C2929702046682031313232203934322061286629700A46672031313631203931372061285C30303329702046632031303031203837332061286F2970204662286F29702031303031203837340A3335332034207620466A2031333731203730392061285C3030316A297020466120313431312037313720612842297020466620313435340A3732392061283129702046632031353135203630302061284F2970204662284F29702031353134203830362034203230372076206479790A656F7020656E640A2525547261696C65720A0A7573657264696374202F656E642D686F6F6B206B6E6F776E7B656E642D686F6F6B7D69660A2525454F460A>|ps>||||>

        \;
      </center>

      (here expressions like <math|X\<cap\>\<Gamma\>> mean
      <math|\<assign\><around*|{|<around*|(|x,\<xi\>|)>\<in\>\<Gamma\><mid|\|>x\<in\>X|}>>)
    </lemma>

    <\proof>
      First of all, we need to show that all maps in the second diagram make
      sense. The lowest horizontal is definitely so, as implied directly by
      hypothesis and fact <reference|holomorphicity-preserving:fact-pullback>.
      The vertical arrows also make sense by fact
      <reference|holomorphicity-preserving:fact-pullback>, as we note that
      for inclusion <math|\<iota\>:X\<longhookrightarrow\>Y> the restriction
      <math|\<cal-D\><rprime|'><around*|(|Y|)>\<rightarrow\>\<cal-D\><rprime|'><around*|(|X|)>>
      can be seen as a pullback <math|\<iota\><rsup|\<ast\>>>. Moreover, for
      conic <math|\<Gamma\>> in <math|Y> we have
      <math|\<iota\><rsup|\<ast\>>\<Gamma\>=\<Gamma\>\<cap\>X> just from the
      definition. Finally, the top horizontal arrow makes sense, as
      <math|f<rsup|\<ast\>><around*|(|\<Gamma\>\<cap\>B<rsub|1>|)>=<around*|(|f<rsup|\<ast\>>\<Gamma\>|)>\<cap\>A<rsub|1>>
      (by the slight abuse of notation, in the latter expression <math|f>
      really stands for <math|f<mid|\|><rsub|A<rsub|1>>:A<rsub|1>\<rightarrow\>B<rsub|1>>).

      Finally, the whole diagram commutes as it definitely does so when we
      start with an element of <math|C<rsup|\<infty\>><around*|(|B<rsub|2>|)>\<subset\>\<cal-D\><rprime|'><rsub|\<Gamma\>><around*|(|B<rsub|2>|)>>,
      and then we can extend by continuity of pullback (fact
      <reference|holomorphicity-preserving:fact-pullback>) and approximation
      by smooth elements (fact <reference|holomorphicity-preserving:fact-p3>).
    </proof>

    <\lemma>
      <label|KR-normalization-recur:lem-pull-distrib-tensor>(``pullback and
      tensor's distributive law'') For <math|X<rsub|i>,Y<rsub|i>> open
      subsets of Euclidian space for <math|i=1,2> and
      <math|f<rsub|i>:X<rsub|i>\<rightarrow\>Y<rsub|i>>,
      <math|\<Gamma\><rsub|i>> conic closed in <math|Y<rsub|i>> such that
      <math|N<rsub|f<rsub|i>>\<cap\>\<Gamma\><rsub|i>= \<varnothing\>> and
      <math|u<rsub|i>\<in\>\<cal-D\><rprime|'><rsub|\<Gamma\><rsub|i>><around*|(|Y<rsub|i>|)>>,
      we have <math|N<rsub|f<rsub|1>\<times\>f<rsub|2>>\<cap\><around*|(|\<Gamma\><rsub|1>\<otimes\>\<Gamma\><rsub|2>|)>=
      \<varnothing\>> and <math|<around*|(|f<rsub|1>\<times\>f<rsub|2>|)><rsup|\<ast\>><around*|(|u<rsub|1>\<otimes\>u<rsub|2>|)>=<around*|(|f<rsub|1><rsup|\<ast\>>u<rsub|1>|)>\<otimes\><around*|(|f<rsub|2><rsup|\<ast\>>u<rsub|2>|)>>.
    </lemma>

    <\proof>
      First of all, let us prove that <math|N<rsub|f<rsub|1>\<times\>f<rsub|2>>\<cap\><around*|(|\<Gamma\><rsub|1>\<otimes\>\<Gamma\><rsub|2>|)>=
      \<varnothing\>>. For this it suffices to show that
      <math|N<rsub|f<rsub|1>\<times\>f<rsub|2>>=N<rsub|f<rsub|1>>\<times\>N<rsub|f<rsub|2>>>.
      But the latter is clear from the definition of <math|N<rsub|f>> given
      in fact <reference|holomorphicity-preserving:fact-pullback>.

      Now, as the result is true for <math|u<rsub|i>\<in\>C<rsup|\<infty\>><around*|(|Y<rsub|i>|)>>,
      it holds in general by continuity of the pullback and tensor given by
      facts <reference|holomorphicity-preserving:fact-pullback> and
      <reference|holomorphicity-preserving:fact-p1> respectively, using
      approximation provided by fact <reference|holomorphicity-preserving:fact-p3>.
    </proof>

    <\lemma>
      <label|KR-normalization-recur:lem-mult-distrib-tensor>(``tensor and
      multiplication distributive law'') Let
      <math|<around*|{|X<rsub|j>|}><rsub|j=1,2>> be open subsets of Euclidean
      space and <math|\<Gamma\><rsub|i><rsup|<rsub|j>>> closed conics in
      <math|X<rsub|j>> for <math|i=1,2>, such that for <math|j=1,2>, we have
      <math|<around*|(|\<Gamma\><rsub|1><rsup|j>\<otimes\>\<Gamma\><rsub|2><rsup|j>|)>\<cap\>N<rsub|\<Delta\><rsub|j>>=
      \<varnothing\>> where <math|\<Delta\><rsub|j>:X<rsub|j>\<rightarrow\>X<rsub|j>\<times\>X<rsub|j>>
      is diagonal embedding. Then for <math|u<rsub|i><rsup|j>\<in\>\<cal-D\><rprime|'><rsub|\<Gamma\><rsup|<rsub|j>><rsub|i>><around*|(|X<rsub|j>|)>>
      we have <math|<around*|(|u<rsub|1><rsup|1>\<otimes\>u<rsub|1><rsup|2>|)>\<cdot\><around*|(|u<rsub|2><rsup|1>\<otimes\>u<rsub|2><rsup|2>|)>=<around*|(|u<rsub|1><rsup|1>\<cdot\>u<rsub|2><rsup|1>|)>\<otimes\><around*|(|u<rsub|1><rsup|2>\<otimes\>u<rsub|2><rsup|2>|)>>,
      where <math|u\<cdot\>v\<assign\>\<Delta\><rsup|\<ast\>><around*|(|u\<otimes\>v|)>>.
    </lemma>

    <\proof>
      As <math|\<Delta\><rsub|X<rsub|1>\<times\>X<rsub|2>>=\<Delta\><rsub|1>\<times\>\<Delta\><rsub|2>>,
      we have the chain of equalities

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<around*|(|u<rsub|1><rsup|1>\<otimes\>u<rsub|1><rsup|2>|)>\<cdot\><around*|(|u<rsub|2><rsup|1>\<otimes\>u<rsub|2><rsup|2>|)>\<assign\>\<Delta\><rsub|X<rsub|1>\<times\>X<rsub|2>><rsup|\<ast\>><around*|(|<around*|{|u<rsub|1><rsup|1>\<otimes\>u<rsub|1><rsup|2>|}>\<otimes\><around*|{|u<rsub|2><rsup|1>\<otimes\>u<rsub|2><rsup|2>|}>|)>=<around*|(|\<Delta\><rsub|1><rsup|>\<times\>\<Delta\><rsub|2>|)><rsup|\<ast\>><around*|(|<around*|{|u<rsub|1><rsup|1>\<otimes\>u<rsub|1><rsup|2>|}>\<otimes\><around*|{|u<rsub|2><rsup|1>\<otimes\>u<rsub|2><rsup|2>|}>|)>=>|<cell|>>|<row|<cell|>|<cell|=\<Delta\><rsub|1><rsup|\<ast\>><around*|(|u<rsub|1><rsup|1>\<otimes\>u<rsub|1><rsup|2>|)>\<otimes\>\<Delta\><rsub|2><rsup|*\<ast\>><around*|(|u<rsub|2><rsup|1>\<otimes\>u<rsub|2><rsup|2>|)>=*<around*|(|u<rsub|1><rsup|1>\<cdot\>u<rsub|2><rsup|1>|)>\<otimes\><around*|(|u<rsub|1><rsup|2>\<otimes\>u<rsub|2><rsup|2>|)>,>|<cell|>>>>
      </eqnarray>

      the third following from the lemma <reference|KR-normalization-recur:lem-pull-distrib-tensor>,
      and these end the proof.
    </proof>

    <\lemma>
      <label|KR-normalization-recur:lem-mult-smth>Assume for
      <math|U\<subset\>\<bbb-R\><rsup|n>> open that
      <math|f<rsub|i>\<in\>\<cal-D\><rprime|'><rsub|\<Gamma\><rsub|i>><around*|(|U|)>>
      for <math|i=1,2>, such that <math|<around*|(|\<Gamma\><rsub|1>\<otimes\>\<Gamma\><rsub|2>|)>\<cap\>N<rsub|\<Delta\>>=
      \<varnothing\>> (where <math|\<Delta\>:U\<rightarrow\>U\<times\>U> is a
      diganal embedding; <math|N<rsub|\<Delta\>>> and
      <math|\<Gamma\><rsub|1>\<otimes\>\<Gamma\><rsub|2>> are as in fact
      <reference|holomorphicity-preserving:fact-pullback> prop.
      <reference|holomorphicity-preserving:prop-tensor-holo> respectively).
      Let <math|\<cal-D\><rprime|'><around*|(|U|)>\<ni\>h\<assign\>\<Delta\><rsup|\<ast\>><around*|(|f\<otimes\>g|)>>
      with pullback <math|\<Delta\><rsup|\<ast\>>> being well-defined by
      facts <reference|holomorphicity-preserving:fact-p1> and
      <reference|holomorphicity-preserving:fact-pullback>. Then, if for
      <math|V\<subset\>U>:open <math|f<mid|\|><rsub|V>\<in\>C<rsup|\<infty\>><around*|(|V|)>>,
      we have <math|h<mid|\|><rsub|V>=f<mid|\|><rsub|V>\<cdot\>g<mid|\|><rsub|V>>
      (in the sense of product of smooth function and distribution).
    </lemma>

    <\proof>
      As both tensor product and pullback commute with restriction (former
      follows by uniqueness part of fact <reference|holomorphicity-preserving:fact-tensor>;
      for latter, more precisely, we apply lemma
      <reference|KR-normalization-recur:lem-pull-comm-restr> with
      <math|<around*|(|A<rsub|1>,A<rsub|2>|)>:=<around*|(|V,U|)>>,
      <math|<around*|(|B<rsub|1>,B<rsub|2>|)>\<assign\><around*|(|V<rsup|2>,U<rsup|2>|)>>,
      <math|f\<assign\>\<Delta\>> and <math|\<Gamma\>\<assign\>\<Gamma\><rsub|1>\<otimes\>\<Gamma\><rsub|2>>),
      we can assume <math|f\<in\>C<rsup|\<infty\>><around*|(|U|)>> from the
      outset. Then, fact <reference|holomorphicity-preserving:fact-p3> allows
      us to pick <math|C<rsup|\<infty\>><around*|(|U|)>\<ni\>g<rsub|j>\<rightarrow\>g>
      in <math|\<cal-D\><rprime|'><rsub|\<Gamma\><rsub|2>><around*|(|U|)>>.
      Then fact <reference|holomorphicity-preserving:fact-p1> tells us that
      <math|C<rsup|\<infty\>><around*|(|U\<times\>U|)>\<ni\>f\<otimes\>g<rsub|j>\<rightarrow\>f\<otimes\>g>
      \ in <math|\<cal-D\><rprime|'><rsub|\<Gamma\><rsub|1>\<otimes\>\<Gamma\><rsub|2>><around*|(|U\<times\>U|)>>
      and consequently by fact <reference|holomorphicity-preserving:fact-pullback>
      <math|f\<cdot\>g<rsub|j>=\<Delta\><rsup|\<ast\>><around*|(|f\<otimes\>g<rsub|j>|)>\<rightarrow\>\<Delta\><rsup|\<ast\>><around*|(|f\<otimes\>g|)>>.
      But then as <math|g<rsub|j>\<rightarrow\>g> in
      <math|\<cal-D\><rprime|'><rsub|\<Gamma\><rsub|2>><around*|(|U|)>>,
      hence <math|g<rsub|j>\<rightarrow\>g> in
      <math|\<cal-D\><rprime|'><around*|(|U|)>>, we have
      <math|f\<cdot\>g<rsub|j>\<rightarrow\>f \<cdot\>g> with both sides in
      sense of product of smooth function and distribution, and since the
      sequence in <math|\<cal-D\><rprime|'><around*|(|U|)>> can have at most
      one limit, we are done.
    </proof>

    <\lemma>
      <label|KR-normalization-recur:lem-mult-comm-pull>Let
      <math|U\<subset\>\<bbb-R\><rsup|n>> open, and for <math|i=1,2>
      <math|\<Gamma\><rsub|i>\<subset\>U\<times\><around*|(|\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>>
      closed conic and <math|f<rsub|i>\<in\>\<cal-D\><rprime|'><rsub|\<Gamma\><rsub|i>><around*|(|U|)>>,
      such that <math|N<rsub|\<Delta\>>\<cap\><around*|(|\<Gamma\><rsub|1>\<otimes\>\<Gamma\><rsub|2>|)>=
      \<varnothing\>>. Suppose further that <math|\<psi\>:V\<rightarrow\>U>
      is a diffeomorphism. Then <math|N<rsub|\<Delta\>>\<cap\><around*|(|\<psi\><rsup|\<ast\>>\<Gamma\><rsub|1>\<otimes\>\<psi\><rsup|\<ast\>>\<Gamma\><rsub|2>|)>=
      \<varnothing\>> and <math|\<psi\><rsup|\<ast\>><around*|(|f<rsub|1>\<cdot\>f<rsub|2>|)>=<around*|(|\<psi\><rsup|\<ast\>>f<rsub|1>|)>\<cdot\><around*|(|\<psi\><rsup|\<ast\>>f<rsub|2>|)>>
      with product defined as in lemma <reference|KR-normalization-recur:lem-mult-distrib-tensor>.
    </lemma>

    <\proof>
      Let us first show that <math|N<rsub|\<Delta\>>\<cap\><around*|(|\<psi\><rsup|\<ast\>>\<Gamma\><rsub|1>\<otimes\>\<psi\><rsup|\<ast\>>\<Gamma\><rsub|2>|)>=
      \<varnothing\>>. Indeed, suppose this happens, which implies that for
      some <math|U\<times\><around*|(|\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>\<ni\><around*|(|x,\<xi\>|)>>
      we have <math|<around*|(|x,\<xi\>|)>\<in\>\<psi\><rsup|\<ast\>>\<Gamma\><rsub|1>>
      and <math|<around*|(|x,-\<xi\>|)>\<in\>\<psi\><rsup|\<ast\>>\<Gamma\><rsub|2>>.
      This implies that <math|<around*|(|f<around*|(|x|)>,f<rprime|'><around*|(|x|)><rsup|-T>\<xi\>|)>\<in\>\<Gamma\><rsub|1>>
      and <math|<around*|(|f<around*|(|x|)>,-f<rprime|'><around*|(|x|)><rsup|-T>\<xi\>|)>\<in\>\<Gamma\><rsub|2>>,
      hence <math|N<rsub|\<Delta\>>\<cap\><around*|(|\<Gamma\><rsub|1>\<otimes\>\<Gamma\><rsub|2>|)>\<neq\>\<varnothing\>>.
      This contradicts hypothesis and hence
      <math|N<rsub|\<Delta\>>\<cap\><around*|(|\<psi\><rsup|\<ast\>>\<Gamma\><rsub|1>\<otimes\>\<psi\><rsup|\<ast\>>\<Gamma\><rsub|2>|)>=
      \<varnothing\>>.

      The second statement follows by approximation by smooth functions (both
      pullback and tensor being continuous by facts
      <reference|holomorphicity-preserving:fact-pullback> and
      <reference|holomorphicity-preserving:fact-p1> respectively).
    </proof>
  <|hide-part>
    <section|Pullback-tensor-multiplication>
  </hide-part>

  <\hide-part|18>
    <section|Knapp-Stein operator>

    <subsection|Main results>

    <\proposition>
      <label|knappstein:prop-1>For <math|\<lambda\>\<in\>\<bbb-C\>>,
      <math|I<around*|(|\<lambda\>|)>\<assign\>\<cal-L\><rsub|\<lambda\>>\<assign\>G\<times\><rsub|\<lambda\>>\<bbb-C\><rsub|\<lambda\>>>
      for <math|G\<assign\>O<around*|(|p+1,q+1|)>>, <math|n\<assign\>p+q>,
      <math|P=M A N\<subset\>G> with <math|A\<assign\>exp<around*|(|t H|)>>,
      <math|H\<assign\>E<rsub|1,p+q+2>+E<rsub|p+q+2,1>> maximal parabolic and
      <math|P\<curvearrowright\>\<bbb-C\><rsub|\<lambda\>>> by
      <math|<around*|(|m exp<around*|(|t H|)>
      n,x|)>\<mapsto\>e<rsup|t\<lambda\>>x> we have:

      <\enumerate>
        <item><math|Hom<rsub|G><around*|(|I<around*|(|\<lambda\>|)>,I<around*|(|\<nu\>|)>|)>\<simeq\>\<cal-S\>ol<rsub|<around*|(|G,G|)>><around*|(|\<bbb-R\><rsup|n>;\<lambda\>,\<nu\>|)>>
        where <math|\<cal-S\>ol<rsub|<around*|(|G,G|)>><around*|(|\<bbb-R\><rsup|n>;\<lambda\>,\<nu\>|)>>
        denotes space of the generalied functions
        <math|F\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>|)>> that
        satisfy equations:

        <\eqnarray*>
          <tformat|<table|<row|<cell|>|<cell|E
          F=<around*|(|\<lambda\>-\<nu\>-n|)>F,<space|1em>E\<assign\><big|sum><rsub|i=1><rsup|n>x<rsub|i><frac|\<partial\>|\<partial\>x<rsub|i>>,>|<cell|>>|<row|<cell|>|<cell|F<around*|(|g\<cdot\>|)>=F<around*|(|\<cdot\>|)>,<space|1em>\<forall\>g\<in\>O<around*|(|p,q|)>,>|<cell|>>|<row|<cell|>|<cell|F<around*|(|<around*|(|-I<rsub|n>|)>\<cdot\>|)>=F<around*|(|\<cdot\>|)>,>|<cell|>>|<row|<cell|>|<cell|<around*|(|2\<nu\>\<epsilon\><rsub|j>x<rsub|j>+Q<frac|\<partial\>|\<partial\>x<rsub|j>>|)>F=0,<space|1em>1\<leqslant\>\<forall\>j\<leqslant\>n,<space|1em>\<epsilon\><rsub|j>\<assign\><choice|<tformat|<table|<row|<cell|+1,>|<cell|1\<leqslant\>j\<leqslant\>p>>|<row|<cell|-1,>|<cell|p+1\<leqslant\>j\<leqslant\>n>>>>>,<space|1em>Q\<assign\><big|sum><rsub|i=1><rsup|n>\<epsilon\><rsub|i>x<rsub|i><rsup|2>.>|<cell|>>>>
        </eqnarray*>

        <item>In previous item isomorphism
        <math|Hom<rsub|G><around*|(|I<around*|(|\<lambda\>|)>,I<around*|(|\<nu\>|)>|)><wide|\<rightarrow\>|~>\<cal-S\>ol<rsub|<around*|(|G,G|)>><around*|(|\<bbb-R\><rsup|n>;\<lambda\>,\<nu\>|)>>
        is given by composition

        <\equation*>
          Hom<rsub|G><around*|(|I<around*|(|\<lambda\>|)>,I<around*|(|\<nu\>|)>|)><wide|\<rightarrow\>|~>\<cal-D\><rprime|'><around*|(|<around*|(|G/P|)><rsup|2>,\<cal-L\><rsub|\<nu\>>\<boxtimes\>\<cal-L\><rsub|n-\<lambda\>>|)><rsup|\<Delta\><around*|(|G|)>><wide|\<rightarrow\>|~><around*|(|\<cal-D\><rprime|'><around*|(|G/P,\<cal-L\><rsub|n-\<lambda\>>|)>\<otimes\>\<bbb-C\><rsub|\<nu\>>|)><rsup|\<Delta\><around*|(|P|)>><wide|\<rightarrow\>|~>\<cal-S\>ol<rsub|<around*|(|G,G|)>><around*|(|\<bbb-R\><rsup|n>;\<lambda\>,\<nu\>|)>
        </equation*>

        where maps from left to right are:

        <\enumerate>
          <item>kernel, given by Schwartz kernel theorem
          <cite-detail|hormander1983analysis|thm. 5.2.1>;

          <item>induced by multiplication map
          <math|G<rsup|2>\<ni\><around*|(|g,g<rprime|'>|)>\<mapsto\><around*|(|g<rprime|'>|)><rsup|-1>g\<in\>G>;

          <item>restriction to open Bruhat cell
          <math|N<rsub|+>\<subset\>G/P>;
        </enumerate>
      </enumerate>
    </proposition>

    <\proposition>
      <label|knappstein:prop-holo>With notation as in
      <reference|knappstein:prop-1>, we have:

      <\enumerate>
        <item>for <math|Re<around*|(|\<lambda\>|)>\<gg\>0> we have:

        <\equation*>
          <around*|\||Q|\|><rsup|\<lambda\>-n>\<in\>\<cal-S\>ol<rsub|<around*|(|G,G|)>><around*|(|\<bbb-R\><rsup|n>,\<lambda\>,n-\<lambda\>|)>;
        </equation*>

        <item>For <math|N<rsub|0>> as in proposition
        <reference|q-norm:prop-1> or <reference|q-norm:prop-2> (whatever
        appropriate) we have <math|<around*|\||Q|\|><rsup|\<lambda\>-n>/N<rsub|0>>
        extending to holomorphic in <math|\<lambda\>\<in\>\<bbb-C\>>
        nonvanishing element of <math|\<cal-S\>ol<rsub|<around*|(|G,G|)>><around*|(|\<bbb-R\><rsup|n>;\<lambda\>,n-\<lambda\>|)>>.
        We will denote corresponding element of
        <math|Hom<rsub|G><around*|(|I<around*|(|\<lambda\>|)>,I<around*|(|n-\<lambda\>|)>|)>>
        (given by prop. <reference|knappstein:prop-1>) by
        <math|<wide|\<bbb-T\>|~><rsub|\<lambda\>>>.
      </enumerate>
    </proposition>

    <\proposition>
      <label|knappstein:prop-kfinite>For some
      <math|C<rsup|\<infty\>><around*|(|\<bbb-R\><rsup|p,q>|)>\<supset\><around*|{|F<rsub|n<rprime|'>,m<rprime|'>>|}><rsub|m<rprime|'>,n<rprime|'>\<in\>\<bbb-Z\><rsub|\<geqslant\>0><rsup|2>,<space|0.6spc>m<rprime|'>+n<rprime|'>\<in\>2\<bbb-Z\>>>
      linearly independent <math|K>-finite vectors, we have
      <math|<around*|\<langle\>|<around*|\||Q|\|><rsup|\<lambda\>-n>
      ,F<rsub|n<rprime|'>,m<rprime|'>>|\<rangle\>>=0> for <math|K>-finite
      vectors outside of span of <math|><math|<around*|{|F<rsub|n<rprime|'>,m<rprime|'>>|}><rsub|m<rprime|'>,n<rprime|'>\<in\>\<bbb-Z\><rsub|\<geqslant\>0><rsup|2>,<space|0.6spc>m<rprime|'>+n<rprime|'>\<in\>2\<bbb-Z\>>>
      and

      \;

      <\equation*>
        <around*|\<langle\>|<around*|\||Q|\|><rsup|\<lambda\>-n>
        ,F<rsub|n<rprime|'>,m<rprime|'>>|\<rangle\>>\<simeq\><frac|\<Gamma\><around*|(|<frac|\<lambda\>-n+1|2>|)>\<Gamma\><around*|(|\<lambda\>-<frac|n|2>|)>\<Gamma\><around*|(|<frac|-\<lambda\>+n|2>+<frac|m<rprime|'>+n<rprime|'>|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+n<rprime|'>-m<rprime|'>-q+1|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+m<rprime|'>-n<rprime|'>-p+1|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+n<rprime|'>+m<rprime|'>|2>|)>\<Gamma\><around*|(|<frac|-\<lambda\>+n|2>|)>>.
      </equation*>
    </proposition>

    <\proposition>
      <label|knappstein:prop-spherical>With
      <math|\<b-1\><rsub|\<lambda\>>\<in\>I<around*|(|\<lambda\>|)>> and
      <math|\<b-1\><rsub|\<nu\>>\<in\>J<around*|(|\<nu\>|)>> denoting
      respective spherical vectors and using <math|Op> notation to denote
      isomorphism <math|Op:\<cal-S\>ol<rsub|<around*|(|G,G|)>><around*|(|\<bbb-R\><rsup|n>;\<lambda\>,\<nu\>|)><wide|\<rightarrow\>|~>Hom<rsub|G><around*|(|I<around*|(|\<lambda\>|)>,I<around*|(|\<nu\>|)>|)>>,
      we have for <math|Re<around*|(|\<lambda\>-n|)>\<gtr\>0>

      <\equation*>
        Op<around*|(|<around*|\||Q|\|><rsup|\<lambda\>-n>|)>\<b-1\><rsub|\<lambda\>>\<simeq\><frac|\<Gamma\><around*|(|<frac|\<lambda\>-n+1|2>|)>\<Gamma\><around*|(|\<lambda\>-<frac|n|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>-q+1|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>-p+1|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>|2>|)>>\<b-1\><rsub|\<nu\>>.
      </equation*>
    </proposition>

    <\remark>
      Similarly, the latter result can be extended to giving eigenvalues of
      other <math|K>-types. It could also be found in <cite-detail|KO1|thm.
      3.9.1>, as it is shown there that symmetry breaking operator
      <math|\<bbb-C\><rsub|\<lambda\>>\<rightarrow\>\<bbb-C\><rsub|-\<lambda\>>>
      has its kernel on <math|<around*|(|\<bbb-S\><rsup|p>\<times\>\<bbb-S\><rsup|q>|)><rsup|2>>
      being equal (up to normalization) to
      <math|<around*|(|x,y|)>\<mapsto\><around*|\||Q<rsub|p+1,q+1><around*|(|x,y|)>|\|><rsup|\<lambda\>-n/2>>
      (where <math|Q<rsub|p+1,q+1>> denotes indefinite inner product on
      <math|\<bbb-R\><rsup|p+1,q+1>>) and its eigenvalues on <math|K>-finite
      vectors were computed.

      With the correspondence of proposition <reference|knappstein:prop-1>,
      this kernel is precisely <math|<around*|\||Q|\|><rsup|\<lambda\>-n/2>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>|)>\<nosymbol\>>.
      We note that in <cite|KO1> degenerate principal series
      <math|\<bbb-C\><rsub|\<lambda\>>> are parametrized differently, with
      the two parametrizations being connected by
      <math|\<bbb-C\><rsub|\<lambda\>-n/2>=I<around*|(|\<lambda\>|)>>.
    </remark>

    <subsection|Proofs>

    <\proof>
      (of prop. <reference|knappstein:prop-1>) the statement follows from
      <cite-detail|kobayashi2015symmetry|thm. 3.16> (note that requirement
      <math|P N<rsub|->P=G> is satisfied, as we've shown above that
      <math|P<rprime|'> N<rsub|->P=G> for
      <math|P<rprime|'>\<assign\>G<rprime|'>\<cap\>G\<subset\>P>).
    </proof>

    <\proof>
      (of prop. <reference|knappstein:prop-holo>) The first items follows by
      direct check of equations of proposition <reference|knappstein:prop-1>,
      as we have <math|<around*|\||Q|\|><rsup|\<lambda\>-n>\<in\>C<rsup|1><around*|(|\<bbb-R\><rsup|n>|)>>
      for <math|Re<around*|(|\<lambda\>|)>\<gg\>0>. The second item follows
      from propositions <reference|q-norm:prop-1>, <reference|q-norm:prop-2>
      and <cite-detail|kobayashi2015symmetry|prop. 3.18>.
    </proof>

    <\fact>
      <label|knappstein:fact-faraut><cite-detail|faraut1979distributions|appendix
      B> With <math|\<simeq\>> denoting proportionality up to finite
      nonvanishing multiple, <math|C<rsup|\<lambda\>><rsub|k><around*|(|\<cdot\>|)>>
      being Gegenbauer polynomials and <math|s\<in\>\<bbb-C\>>, we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|<frac|1|\<Gamma\><around*|(|<around*|(|s+1|)>/2|)>><big|int><rsub|\<sigma\><rsub|1>,\<sigma\><rsub|n>=-1><rsup|1><around*|\||ch<around*|(|t|)>\<sigma\><rsub|1>-sh<around*|(|t|)>\<sigma\><rsub|n>|\|><rsup|s>C<rsub|l><rsup|<around*|(|p-2|)>/2><around*|(|\<sigma\><rsub|1>|)>C<rsup|<around*|(|q-2|)>/2><rsub|m><around*|(|\<sigma\><rsub|n>|)><around*|(|1-\<sigma\><rsub|1><rsup|2>|)><rsup|<around*|(|p-3|)>/2><around*|(|1-\<sigma\><rsub|2><rsup|2>|)><rsup|<around*|(|p-3|)>/2>d\<sigma\><rsub|1><rsup|>d\<sigma\><rsub|2>\<simeq\>>|<cell|>>|<row|<cell|>|<cell|\<simeq\><frac|s<around*|(|s-2|)>\<ldots\><around*|(|s-m-l+2|)>|\<Gamma\><around*|(|<around*|(|s+l-m+p|)>/2|)>><around*|(|th
        t|)><rsup|m><around*|(|ch t|)><rsup|s><rsub|>
        <rsub|2>F<rsub|1><around*|(|<frac|-s+m+l|2>,<frac|-s-p+2+m-l|2>;m+<frac|q|2>;th<rsup|2>
        t|)>.>|<cell|>>>>
      </eqnarray*>
    </fact>

    <\proof>
      (of prop. <reference|knappstein:prop-kfinite>) Let's first take
      <math|F<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\><rprime|'>>>
      basis of <math|K>-finite vectors and compute
      <math|<around*|\<langle\>|<around*|\||Q|\|><rsup|\<lambda\>-n>,F<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\><rprime|'>><rsub|>|\<rangle\>>>.
      Writing this up in bipolar coordinates on <math|\<bbb-R\><rsup|p,q>>
      one arrives at an integral

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|r,s=0><rsup|\<infty\>><around*|\||r<rsup|2>-s<rsup|2>|\|><rsup|\<lambda\>-n>R<rsup|-\<lambda\>/2><around*|(|<frac|r|<sqrt|R>>|)><rsup|N><around*|(|<frac|s|<sqrt|R>>|)><rsup|M><around*|(|<frac|1-<around*|(|r<rsup|2>-s<rsup|2>|)>|<sqrt|R>>|)><rsup|n<rprime|'>><around*|(|<frac|1+<around*|(|r<rsup|2>-s<rsup|2>|)>|<sqrt|R>>|)><rsup|m<rprime|'>>d
        r d s\<times\>>|<cell|>>|<row|<cell|>|<cell|\<times\><big|int><rsub|\<bbb-S\><rsup|p>>\<psi\>
        <around*|(|\<omega\><rsub|p>|)>d\<omega\><rsub|p>\<times\><big|int><rsub|\<bbb-S\><rsup|q>>\<psi\><rprime|'><around*|(|\<omega\><rsub|q>|)>d\<omega\><rsub|q>.>|<cell|>>>>
      </eqnarray*>

      where <math|R\<assign\><around*|(|1-r<rsup|2>+s<rsup|2>|)><rsup|2>+4r<rsup|2>>.
      As <math|<around|(|\<psi\>,\<psi\><rprime|'>|)>\<in\><with|math-font|cal|H><rsup|N><around|(|<with|math-font|Bbb|S><rsup|p-1>|)>\<times\><with|math-font|cal|H><rsup|M><around|(|<with|math-font|Bbb|S><rsup|q-1>|)>\<nocomma\>>,
      we see that one of the last two multiplicands (hence, the whole
      integral) vanishes if <math|N\<gtr\>0> or <math|M\<gtr\>0>.

      Consequently, we are left with only the first multiplicand. Now, using
      the variable change <math|x=<around*|(|1+r<rsup|2>-s<rsup|2>|)>/<sqrt|R>>
      and <math|y=<around*|(|1-r<rsup|2>+s<rsup|2>|)>/<sqrt|R>>, the first
      multiplicand of the expression above can be rewritten as

      <\equation*>
        \<simeq\><big|int><rsub|x,y=-1><rsup|1><around*|\||x-y|\|><rsup|\<lambda\>-n>x<rsup|m<rprime|'>>y<rsup|n<rprime|'>><around*|(|1-x<rsup|2>|)><rsup|<around*|(|q-2|)>/2><around*|(|1-y<rsup|2>|)><rsup|<around*|(|p-2|)>/2>d
        x d y.
      </equation*>

      Now, if we let for <math|m<rprime|'>,n<rprime|'>\<in\>\<bbb-Z\><rsub|\<geqslant\>0><rsup|2>>
      with <math|m<rprime|'>+n<rprime|'>\<in\>2\<bbb-Z\>>,

      <\equation*>
        C<rsup|\<infty\>><around*|(|\<bbb-R\><rsup|p,q>|)>\<ni\>F<rsub|m<rprime|'>,n<rprime|'>>\<assign\>R<rsup|-\<lambda\>/2>C<rsub|n<rprime|'>><rsup|<around*|(|p-1|)>/2><around*|(|<frac|1-<around*|(|r<rsup|2>-s<rsup|2>|)>|<sqrt|R>>|)>C<rsub|m<rprime|'>><rsup|<around*|(|q-1|)>/2><around*|(|<frac|1+<around*|(|r<rsup|2>-s<rsup|2>|)>|<sqrt|R>>|)>
      </equation*>

      with <math|C<rsup|\<lambda\>><rsub|k><around*|(|\<cdot\>|)>> denoting
      Gegenbauer polynomials, the computations above imply all of the
      statements we need except of the formula for
      <math|<around*|\<langle\>|<around*|\||Q|\|><rsup|\<lambda\>-n>,F<rsub|m<rprime|'>,n<rprime|'>>|\<rangle\>>>.
      The latter, however, is readily given by fact
      <reference|knappstein:fact-faraut> upon letting
      <math|t\<rightarrow\>\<infty\>>, as we have
      <math|th<around*|(|+\<infty\>|)>=1>,

      <\equation*>
        <rsub|2>F<rsub|1><around*|(|a,b;c;1|)>=<frac|\<Gamma\><around*|(|c|)>\<Gamma\><around*|(|c-a-b|)>|\<Gamma\><around*|(|c-a|)>\<Gamma\><around*|(|c-b|)>>,<space|1em>Re<around*|(|c-a-b|)>\<gtr\>0
      </equation*>

      and <math|s<around*|(|s-2|)>\<ldots\><around*|(|s-N+2|)>\<simeq\>\<Gamma\><around*|(|-s/2+N/2|)>/\<Gamma\><around*|(|-s/2|)>>.
    </proof>

    \;
  <|hide-part>
    <section|Knapp-Stein operator>
  </hide-part>

  <\hide-part|19>
    <\bibliography|bib|alpha|todai_master.bib>
      <\bib-list|Hör83>
        <bibitem*|CP82><label|bib-chazarain2011introduction>Jacques Chazarain
        and Alain Piriou. <newblock><with|font-shape|italic|Introduction to
        the theory of linear partial differential equations>.
        <newblock>North-Holland Publishing Company, 1982.

        <bibitem*|Far79><label|bib-faraut1979distributions>J.<nbsp>Faraut.
        <newblock>Distributions sphériques sur les espaces hyperboliques.
        <newblock><with|font-shape|italic|J. Math. Pures Appl.>, 58:369--444,
        1979.

        <bibitem*|GS80><label|bib-gelfand1980distribution>I.<nbsp>M. Gelfand
        and G.<nbsp>E. Shilov. <newblock>Distribution theory, vol. 1, 1980.

        <bibitem*|Hör83><label|bib-hormander1983analysis>Lars Hörmander.
        <newblock><with|font-shape|italic|The Analysis of Linear Partial
        Differential Operators: Vol.: 1.: Distribution Theory and Fourier
        Analysis>. <newblock>Springer-Verlag, 1983.

        <bibitem*|HT93><label|bib-howe1993homogeneous>Roger<nbsp>E Howe and
        Eng-Chye Tan. <newblock>Homogeneous functions on light cones: the
        infinitesimal structure of some degenerate principal series
        representations. <newblock><with|font-shape|italic|Bulletin of the
        American Mathematical Society>, 28(1):1--74, 1993.

        <bibitem*|KØ03><label|bib-KO1>T.<nbsp>Kobayashi and B.<nbsp>Ørsted.
        <newblock>Analysis on the minimal representation of
        <with|font-family|rm|O><math|<around|(|p,q|)>>.<with|font-family|rm|I>.
        Realization via conformal geometry.
        <newblock><with|font-shape|italic|Adv. Math.>, 180:486--512, 2003.

        <bibitem*|KP13><label|bib-kobayashi2013differential>T.<nbsp>Kobayashi
        and M.<nbsp>Pevzner. <newblock>Differential symmetry breaking
        operators. I-General theory and F-method. II-Rankin-Cohen operators
        for symmetric pairs. <newblock><with|font-shape|italic|to appear in
        Selecta Mathematica>, 2013.

        <bibitem*|KS14><label|bib-Kobayashi201489>Toshiyuki Kobayashi and
        Birgit Speh. <newblock>Intertwining operators and the restriction of
        representations of rank-one orthogonal groups.
        <newblock><with|font-shape|italic|Comptes Rendus Mathematique>,
        352(2):89 -- 94, 2014.

        <bibitem*|KS15><label|bib-kobayashi2015symmetry>T.<nbsp>Kobayashi and
        B.<nbsp>Speh. <newblock>Symmetry breaking for representations of rank
        one orthogonal groups. <newblock><with|font-shape|italic|Memoirs of
        the American Mathematical Society>, 238(1126), 2015.

        <bibitem*|Tre67><label|bib-treves1967topological>F.<nbsp>Treves.
        <newblock><with|font-shape|italic|Topological vector spaces,
        distributions and kernels>. <newblock>Academic Press, New York, 1967.
      </bib-list>
    </bibliography>
  <|hide-part>
    <\bibliography|bib|alpha|todai_master.bib>
      <\bib-list|Hör83>
        <bibitem*|CP82><label|bib-chazarain2011introduction>Jacques Chazarain
        and Alain Piriou. <newblock><with|font-shape|italic|Introduction to
        the theory of linear partial differential equations>.
        <newblock>North-Holland Publishing Company, 1982.

        <bibitem*|Far79><label|bib-faraut1979distributions>J.<nbsp>Faraut.
        <newblock>Distributions sphériques sur les espaces hyperboliques.
        <newblock><with|font-shape|italic|J. Math. Pures Appl.>, 58:369--444,
        1979.

        <bibitem*|GS80><label|bib-gelfand1980distribution>I.<nbsp>M. Gelfand
        and G.<nbsp>E. Shilov. <newblock>Distribution theory, vol. 1, 1980.

        <bibitem*|Hör83><label|bib-hormander1983analysis>Lars Hörmander.
        <newblock><with|font-shape|italic|The Analysis of Linear Partial
        Differential Operators: Vol.: 1.: Distribution Theory and Fourier
        Analysis>. <newblock>Springer-Verlag, 1983.

        <bibitem*|HT93><label|bib-howe1993homogeneous>Roger<nbsp>E Howe and
        Eng-Chye Tan. <newblock>Homogeneous functions on light cones: the
        infinitesimal structure of some degenerate principal series
        representations. <newblock><with|font-shape|italic|Bulletin of the
        American Mathematical Society>, 28(1):1--74, 1993.

        <bibitem*|KØ03><label|bib-KO1>T.<nbsp>Kobayashi and B.<nbsp>Ørsted.
        <newblock>Analysis on the minimal representation of
        <with|font-family|rm|O><math|<around|(|p,q|)>>.<with|font-family|rm|I>.
        Realization via conformal geometry.
        <newblock><with|font-shape|italic|Adv. Math.>, 180:486--512, 2003.

        <bibitem*|KP13><label|bib-kobayashi2013differential>T.<nbsp>Kobayashi
        and M.<nbsp>Pevzner. <newblock>Differential symmetry breaking
        operators. I-General theory and F-method. II-Rankin-Cohen operators
        for symmetric pairs. <newblock><with|font-shape|italic|to appear in
        Selecta Mathematica>, 2013.

        <bibitem*|KS14><label|bib-Kobayashi201489>Toshiyuki Kobayashi and
        Birgit Speh. <newblock>Intertwining operators and the restriction of
        representations of rank-one orthogonal groups.
        <newblock><with|font-shape|italic|Comptes Rendus Mathematique>,
        352(2):89 -- 94, 2014.

        <bibitem*|KS15><label|bib-kobayashi2015symmetry>T.<nbsp>Kobayashi and
        B.<nbsp>Speh. <newblock>Symmetry breaking for representations of rank
        one orthogonal groups. <newblock><with|font-shape|italic|Memoirs of
        the American Mathematical Society>, 238(1126), 2015.

        <bibitem*|Tre67><label|bib-treves1967topological>F.<nbsp>Treves.
        <newblock><with|font-shape|italic|Topological vector spaces,
        distributions and kernels>. <newblock>Academic Press, New York, 1967.
      </bib-list>
    </bibliography>
  </hide-part>
</body>

<\initial>
  <\collection>
    <associate|language|american>
    <associate|page-type|letter>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|Assume-that-1|<tuple|14.2|27|#15>>
    <associate|Assume-that-2|<tuple|14.3|27|#15>>
    <associate|Assume-that-3|<tuple|14.4|27|#15>>
    <associate|Assume-that-4|<tuple|14.5|27|#15>>
    <associate|For-,-we|<tuple|12.5|28|#13>>
    <associate|KC-normalization-2:def-ftilde|<tuple|12.2|28|#13>>
    <associate|KC-normalization-2:lem-P|<tuple|15.7|?|#16>>
    <associate|KC-normalization-2:lem-Pcomputation|<tuple|12.11|33|#13>>
    <associate|KC-normalization-2:lem-kfin-00|<tuple|12.7|30|#13>>
    <associate|KC-normalization-2:lem-kfin-11|<tuple|12.8|30|#13>>
    <associate|KC-normalization-2:lem-kfinite|<tuple|12.9|31|#13>>
    <associate|KC-normalization-2:lem-kfinite-wrap|<tuple|12.10|33|#13>>
    <associate|KC-normalization-2:lem-normalization-q-even-p-1|<tuple|12.14|34|#13>>
    <associate|KC-normalization-2:lem-normalization-q-even-p-odd|<tuple|12.15|35|#13>>
    <associate|KC-normalization-2:lem-normalization-qodd|<tuple|12.13|34|#13>>
    <associate|KC-normalization-2:lem-normalization-qodd-aux-1|<tuple|12.12|33|#13>>
    <associate|KC-normalization-2:prop-normalization|<tuple|12.3|28|#13>>
    <associate|KC-normalization-2:prop-supp|<tuple|12.4|28|#13>>
    <associate|KC-normalization:prop-kfinite|<tuple|12.1|28|#13>>
    <associate|KC-normalization:prop-sol-extending|<tuple|9.4|?|#10>>
    <associate|KP-normalization-2:lem-aux-1|<tuple|79|?|#6>>
    <associate|KP-normalization-2:lem-holo-supp|<tuple|14.7|44|#15>>
    <associate|KP-normalization-2:lem-nonzero|<tuple|14.9|44|#15>>
    <associate|KP-normalization-2:lem-sets|<tuple|14.8|44|#15>>
    <associate|KP-normalization-2:lem-trivial|<tuple|14.10|44|#15>>
    <associate|KP-normalization-2:prop-1|<tuple|14.1|43|#15>>
    <associate|KP-normalization-2:prop-2|<tuple|14.2|43|#15>>
    <associate|KP-normalization-2:prop-3|<tuple|14.3|44|#15>>
    <associate|KP-normalization-2:prop-4|<tuple|14.5|44|#15>>
    <associate|KP-normalization-2:prop-5|<tuple|14.6|44|#15>>
    <associate|KP-normalization:lem-Mg0|<tuple|14.1|41|#17>>
    <associate|KR-normalization-even:fact-P-K|<tuple|15.4|?|#16>>
    <associate|KR-normalization-even:hypo-maxima|<tuple|2|?|#10>>
    <associate|KR-normalization-even:lem-2|<tuple|15.6|47|#16>>
    <associate|KR-normalization-even:lem-3|<tuple|16.7|?|#16>>
    <associate|KR-normalization-even:lem-Poddeven|<tuple|15.5|?|#16>>
    <associate|KR-normalization-even:lem-kfinite-00-aux|<tuple|15.12|50|#16>>
    <associate|KR-normalization-even:lem-kfinite-11|<tuple|17.11|?|#18>>
    <associate|KR-normalization-even:lem-kfinite-11-aux|<tuple|15.13|51|#16>>
    <associate|KR-normalization-even:prop-holo|<tuple|15.2|47|#16>>
    <associate|KR-normalization-even:prop-hypoA|<tuple|17.12|51|#18>>
    <associate|KR-normalization-even:prop-kfinite|<tuple|15.1|47|#16>>
    <associate|KR-normalization-recur-eq1|<tuple|10|?|#11>>
    <associate|KR-normalization-recur:eq-1|<tuple|10.1|24|#11>>
    <associate|KR-normalization-recur:eq-recur|<tuple|20.1|60|#21>>
    <associate|KR-normalization-recur:fact-pullback|<tuple|2|?|#4>>
    <associate|KR-normalization-recur:fact-smth-dense|<tuple|18.12|?|#19>>
    <associate|KR-normalization-recur:lem-mult-comm-pull|<tuple|16.5|56|#17>>
    <associate|KR-normalization-recur:lem-mult-distrib-tensor|<tuple|16.3|55|#17>>
    <associate|KR-normalization-recur:lem-mult-smth|<tuple|16.4|55|#17>>
    <associate|KR-normalization-recur:lem-nonvanishing-rr|<tuple|20.8|61|#21>>
    <associate|KR-normalization-recur:lem-nonvanishing-ss|<tuple|5.4|56|#6>>
    <associate|KR-normalization-recur:lem-pull-comm-restr|<tuple|16.1|54|#17>>
    <associate|KR-normalization-recur:lem-pull-distrib-tensor|<tuple|16.2|55|#17>>
    <associate|KR-normalization-recur:lem-recur|<tuple|20.1|60|#21>>
    <associate|KR-normalization-recur:lem-recur-crucial|<tuple|118|?|#11>>
    <associate|KR-normalization-recur:prop-1|<tuple|86|?|#10>>
    <associate|KR-normalization-recur:prop-2|<tuple|20.2|59|#21>>
    <associate|KR-normalization-recur:prop-3|<tuple|5.2|54|#6>>
    <associate|KR-normalization-recur:prop-4|<tuple|111|?|#11>>
    <associate|KR-normalization-recur:prop-func-eq|<tuple|20.3|60|#21>>
    <associate|KR-normalization-recur:prop-nonzero|<tuple|18.3|?|#19>>
    <associate|KR-normalization-recur:prop-supp|<tuple|5.3|54|#6>>
    <associate|Let--denote|<tuple|12.6|29|#13>>
    <associate|Ndiff|<tuple|4.1|7|#5>>
    <associate|P-def:def-9|<tuple|11.9|27|#12>>
    <associate|P-def:fact-gelfand|<tuple|11.1|25|#12>>
    <associate|P-def:lem-delta-max|<tuple|11.7|26|#12>>
    <associate|P-def:lem-delta-times-mero|<tuple|11.6|26|#12>>
    <associate|P-def:lem-laurent-distr|<tuple|11.2|25|#12>>
    <associate|P-def:lem-mero-addition|<tuple|11.3|25|#12>>
    <associate|P-def:lem-mero-supp|<tuple|11.8|26|#12>>
    <associate|P-def:lem-threeset|<tuple|11.11|27|#12>>
    <associate|P-def:rem-def-P|<tuple|11.5|26|#12>>
    <associate|Suppose-that-sets|<tuple|18|?|#2>>
    <associate|Suppose-there-exists|<tuple|14.6|27|#15>>
    <associate|The-following-holds|<tuple|14.1|26|#15>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|3.3|7>>
    <associate|auto-11|<tuple|4|9>>
    <associate|auto-12|<tuple|5|10>>
    <associate|auto-13|<tuple|5.1|10>>
    <associate|auto-14|<tuple|5.2|11>>
    <associate|auto-15|<tuple|5.3|11>>
    <associate|auto-16|<tuple|6|15>>
    <associate|auto-17|<tuple|7|16>>
    <associate|auto-18|<tuple|7.1|17>>
    <associate|auto-19|<tuple|7.2|17>>
    <associate|auto-2|<tuple|1.1|2>>
    <associate|auto-20|<tuple|7.3|17>>
    <associate|auto-21|<tuple|7.4|18>>
    <associate|auto-22|<tuple|8|19>>
    <associate|auto-23|<tuple|9|22>>
    <associate|auto-24|<tuple|9.1|23>>
    <associate|auto-25|<tuple|9.2|23>>
    <associate|auto-26|<tuple|9.3|24>>
    <associate|auto-27|<tuple|9.4|25>>
    <associate|auto-28|<tuple|9.5|25>>
    <associate|auto-29|<tuple|10|25>>
    <associate|auto-3|<tuple|1.2|2>>
    <associate|auto-30|<tuple|10.1|27>>
    <associate|auto-31|<tuple|10.2|28>>
    <associate|auto-32|<tuple|11|28>>
    <associate|auto-33|<tuple|11.1|28>>
    <associate|auto-34|<tuple|11.2|35>>
    <associate|auto-35|<tuple|11.3|35>>
    <associate|auto-36|<tuple|12|35>>
    <associate|auto-37|<tuple|12.1|36>>
    <associate|auto-38|<tuple|12.2|36>>
    <associate|auto-39|<tuple|12.3|38>>
    <associate|auto-4|<tuple|1.3|3>>
    <associate|auto-40|<tuple|13|42>>
    <associate|auto-41|<tuple|13.0.1|43>>
    <associate|auto-42|<tuple|13.1|43>>
    <associate|auto-43|<tuple|13.2|43>>
    <associate|auto-44|<tuple|13.2.1|44>>
    <associate|auto-45|<tuple|13.2.2|45>>
    <associate|auto-46|<tuple|14|46>>
    <associate|auto-47|<tuple|14.1|46>>
    <associate|auto-48|<tuple|14.2|46>>
    <associate|auto-49|<tuple|14.3|47>>
    <associate|auto-5|<tuple|1.4|4>>
    <associate|auto-50|<tuple|14.4|50>>
    <associate|auto-51|<tuple|15|52>>
    <associate|auto-52|<tuple|15.1|54>>
    <associate|auto-53|<tuple|15.2|54>>
    <associate|auto-54|<tuple|15.3|54>>
    <associate|auto-55|<tuple|15.4|54>>
    <associate|auto-56|<tuple|16|56>>
    <associate|auto-57|<tuple|17|56>>
    <associate|auto-58|<tuple|17.1|57>>
    <associate|auto-59|<tuple|17.2|?>>
    <associate|auto-6|<tuple|2|4>>
    <associate|auto-60|<tuple|17.6|?>>
    <associate|auto-61|<tuple|19.1|?>>
    <associate|auto-62|<tuple|19.2|?>>
    <associate|auto-63|<tuple|19.3|?>>
    <associate|auto-64|<tuple|19.4|?>>
    <associate|auto-65|<tuple|19.5|?>>
    <associate|auto-66|<tuple|19.5|?>>
    <associate|auto-67|<tuple|20.1|?>>
    <associate|auto-68|<tuple|20.5|?>>
    <associate|auto-69|<tuple|21|?>>
    <associate|auto-7|<tuple|3|4>>
    <associate|auto-70|<tuple|21.1|?>>
    <associate|auto-71|<tuple|21.5|?>>
    <associate|auto-8|<tuple|3.1|6>>
    <associate|auto-9|<tuple|3.2|7>>
    <associate|auto.1-1|<tuple|1|?|#1>>
    <associate|auto.1-10|<tuple|2.2.2|?|#1>>
    <associate|auto.1-2|<tuple|1.1|?|#1>>
    <associate|auto.1-3|<tuple|1.2|?|#1>>
    <associate|auto.1-4|<tuple|1.3|?|#1>>
    <associate|auto.1-5|<tuple|1.4|?|#1>>
    <associate|auto.1-6|<tuple|2.1|?|#1>>
    <associate|auto.1-7|<tuple|2.2|?|#1>>
    <associate|auto.1-8|<tuple|2.3|?|#1>>
    <associate|auto.1-9|<tuple|2.2.1|?|#1>>
    <associate|auto.10-1|<tuple|9|?|#10>>
    <associate|auto.10-2|<tuple|9.1|?|#10>>
    <associate|auto.10-3|<tuple|9.2|?|#10>>
    <associate|auto.10-4|<tuple|9.3|?|#10>>
    <associate|auto.10-5|<tuple|9.4|?|#10>>
    <associate|auto.10-6|<tuple|9.5|?|#10>>
    <associate|auto.11-1|<tuple|10|?|#11>>
    <associate|auto.11-2|<tuple|10.1|?|#11>>
    <associate|auto.11-3|<tuple|10.2|?|#11>>
    <associate|auto.11-4|<tuple|11.3|?|#11>>
    <associate|auto.11-5|<tuple|11.4|?|#11>>
    <associate|auto.11-6|<tuple|11.5|?|#11>>
    <associate|auto.12-1|<tuple|11|?|#12>>
    <associate|auto.12-2|<tuple|11.1|?|#12>>
    <associate|auto.12-3|<tuple|11.2|?|#12>>
    <associate|auto.12-4|<tuple|11.3|?|#12>>
    <associate|auto.12-5|<tuple|9.4|?|#12>>
    <associate|auto.12-6|<tuple|9.5|?|#12>>
    <associate|auto.12-7|<tuple|12|?|#12>>
    <associate|auto.13-1|<tuple|12|?|#13>>
    <associate|auto.13-2|<tuple|12.1|?|#13>>
    <associate|auto.13-3|<tuple|12.2|?|#13>>
    <associate|auto.13-4|<tuple|12.3|?|#13>>
    <associate|auto.13-5|<tuple|13.2.1|?|#13>>
    <associate|auto.13-6|<tuple|13.2.2|?|#13>>
    <associate|auto.14-1|<tuple|13|?|#14>>
    <associate|auto.14-2|<tuple|13.0.1|?|#14>>
    <associate|auto.14-3|<tuple|13.1|?|#14>>
    <associate|auto.14-4|<tuple|13.2|?|#14>>
    <associate|auto.14-5|<tuple|13.2.1|?|#14>>
    <associate|auto.14-6|<tuple|13.2.2|?|#14>>
    <associate|auto.15-1|<tuple|14|?|#15>>
    <associate|auto.15-2|<tuple|14.1|?|#15>>
    <associate|auto.15-3|<tuple|14.2|?|#15>>
    <associate|auto.15-4|<tuple|14.3|?|#15>>
    <associate|auto.15-5|<tuple|14.4|?|#15>>
    <associate|auto.15-6|<tuple|15.2.2|?|#15>>
    <associate|auto.16-1|<tuple|15|?|#16>>
    <associate|auto.16-2|<tuple|15.1|?|#16>>
    <associate|auto.16-3|<tuple|15.2|?|#16>>
    <associate|auto.16-4|<tuple|15.3|?|#16>>
    <associate|auto.16-5|<tuple|15.4|?|#16>>
    <associate|auto.16-6|<tuple|16.5|?|#16>>
    <associate|auto.17-1|<tuple|16|?|#17>>
    <associate|auto.17-2|<tuple|17|?|#17>>
    <associate|auto.17-3|<tuple|17.1|?|#17>>
    <associate|auto.17-4|<tuple|17.2|?|#17>>
    <associate|auto.17-5|<tuple|18|?|#17>>
    <associate|auto.17-6|<tuple|18|?|#17>>
    <associate|auto.18-1|<tuple|17|?|#18>>
    <associate|auto.18-2|<tuple|17.1|?|#18>>
    <associate|auto.18-3|<tuple|17.2|?|#18>>
    <associate|auto.18-4|<tuple|14.3|?|#18>>
    <associate|auto.18-5|<tuple|14.4|?|#18>>
    <associate|auto.18-6|<tuple|18.5|?|#18>>
    <associate|auto.19-1|<tuple|17.6|?|#19>>
    <associate|auto.19-2|<tuple|15.1|?|#19>>
    <associate|auto.19-3|<tuple|15.2|?|#19>>
    <associate|auto.19-4|<tuple|15.3|?|#19>>
    <associate|auto.19-5|<tuple|15.4|?|#19>>
    <associate|auto.19-6|<tuple|15.5|?|#19>>
    <associate|auto.2-1|<tuple|1|?|#2>>
    <associate|auto.2-10|<tuple|3.4|?|#2>>
    <associate|auto.2-11|<tuple|3.5|?|#2>>
    <associate|auto.2-12|<tuple|3.5|?|#2>>
    <associate|auto.2-2|<tuple|1.1|?|#2>>
    <associate|auto.2-3|<tuple|1.2|?|#2>>
    <associate|auto.2-4|<tuple|1.3|?|#2>>
    <associate|auto.2-5|<tuple|1.4|?|#2>>
    <associate|auto.2-6|<tuple|3.2.2|?|#2>>
    <associate|auto.2-7|<tuple|3.1|?|#2>>
    <associate|auto.2-8|<tuple|3.2|?|#2>>
    <associate|auto.2-9|<tuple|3.3|?|#2>>
    <associate|auto.20-1|<tuple|16|?|#20>>
    <associate|auto.20-2|<tuple|16.1|?|#20>>
    <associate|auto.20-3|<tuple|16.2|?|#20>>
    <associate|auto.20-4|<tuple|16.3|?|#20>>
    <associate|auto.20-5|<tuple|16.4|?|#20>>
    <associate|auto.20-6|<tuple|16.5|?|#20>>
    <associate|auto.21-1|<tuple|16.5|?|#21>>
    <associate|auto.21-2|<tuple|20.1|?|#21>>
    <associate|auto.21-3|<tuple|19.2|?|#21>>
    <associate|auto.21-4|<tuple|19.3|?|#21>>
    <associate|auto.21-5|<tuple|19.4|?|#21>>
    <associate|auto.21-6|<tuple|19.5|?|#21>>
    <associate|auto.22-1|<tuple|19.5|?|#22>>
    <associate|auto.22-2|<tuple|20.1|?|#22>>
    <associate|auto.23-1|<tuple|20.5|?|#23>>
    <associate|auto.3-1|<tuple|2|?|#3>>
    <associate|auto.3-2|<tuple|3.1|?|#3>>
    <associate|auto.3-3|<tuple|3.2|?|#3>>
    <associate|auto.3-4|<tuple|4.3|?|#3>>
    <associate|auto.3-5|<tuple|4.2.1|?|#3>>
    <associate|auto.3-6|<tuple|4.2.2|?|#3>>
    <associate|auto.4-1|<tuple|3|?|#4>>
    <associate|auto.4-2|<tuple|3.1|?|#4>>
    <associate|auto.4-3|<tuple|3.2|?|#4>>
    <associate|auto.4-4|<tuple|3.3|?|#4>>
    <associate|auto.4-5|<tuple|3.4|?|#4>>
    <associate|auto.4-6|<tuple|3.5|?|#4>>
    <associate|auto.4-7|<tuple|3.6|?|#4>>
    <associate|auto.5-1|<tuple|4|?|#5>>
    <associate|auto.5-2|<tuple|2.1|?|#5>>
    <associate|auto.5-3|<tuple|2.2|?|#5>>
    <associate|auto.5-4|<tuple|4.3|?|#5>>
    <associate|auto.5-5|<tuple|4.3|?|#5>>
    <associate|auto.5-6|<tuple|6.5|?|#5>>
    <associate|auto.6-1|<tuple|5|?|#6>>
    <associate|auto.6-2|<tuple|5.1|?|#6>>
    <associate|auto.6-3|<tuple|5.2|?|#6>>
    <associate|auto.6-4|<tuple|5.3|?|#6>>
    <associate|auto.6-5|<tuple|6.2.1|?|#6>>
    <associate|auto.6-6|<tuple|6.2.2|?|#6>>
    <associate|auto.7-1|<tuple|6|?|#7>>
    <associate|auto.7-2|<tuple|6.0.1|?|#7>>
    <associate|auto.7-3|<tuple|6.1|?|#7>>
    <associate|auto.7-4|<tuple|6.2|?|#7>>
    <associate|auto.7-5|<tuple|6.2.1|?|#7>>
    <associate|auto.7-6|<tuple|6.2.2|?|#7>>
    <associate|auto.8-1|<tuple|7|?|#8>>
    <associate|auto.8-2|<tuple|7.1|?|#8>>
    <associate|auto.8-3|<tuple|7.2|?|#8>>
    <associate|auto.8-4|<tuple|7.3|?|#8>>
    <associate|auto.8-5|<tuple|7.4|?|#8>>
    <associate|auto.8-6|<tuple|8.5|?|#8>>
    <associate|auto.9-1|<tuple|8|?|#9>>
    <associate|auto.9-2|<tuple|9.1|?|#9>>
    <associate|auto.9-3|<tuple|9.2|?|#9>>
    <associate|auto.9-4|<tuple|9.3|?|#9>>
    <associate|auto.9-5|<tuple|9.4|?|#9>>
    <associate|auto.9-6|<tuple|9.5|?|#9>>
    <associate|auto.KC-normalization:lem-sing-q-4-1|<tuple|9|?|#KC-normalization:lem-sing-q-4>>
    <associate|auto.KC-normalization:lem-sing-q-4-2|<tuple|9.1|?|#KC-normalization:lem-sing-q-4>>
    <associate|auto.KC-normalization:lem-sing-q-4-3|<tuple|9.2|?|#KC-normalization:lem-sing-q-4>>
    <associate|auto.KC-normalization:lem-sing-q-4-4|<tuple|9.3|?|#KC-normalization:lem-sing-q-4>>
    <associate|auto.KC-normalization:lem-sing-q-4-5|<tuple|9.4|?|#KC-normalization:lem-sing-q-4>>
    <associate|bib-KO1|<tuple|KØ03|57|#19>>
    <associate|bib-KO2|<tuple|KØ03|?>>
    <associate|bib-Kobayashi201489|<tuple|KS14|57|#19>>
    <associate|bib-chazarain2011introduction|<tuple|CP82|57|#19>>
    <associate|bib-faraut1979distributions|<tuple|Far79|57|#19>>
    <associate|bib-gelfand1980distribution|<tuple|GS80|57|#19>>
    <associate|bib-hormander1983analysis|<tuple|Hör83|57|#19>>
    <associate|bib-howe1993homogeneous|<tuple|HT93|57|#19>>
    <associate|bib-kobayashi2013differential|<tuple|KP13|57|#19>>
    <associate|bib-kobayashi2015symmetry|<tuple|KS15|57|#19>>
    <associate|bib-treves1967topological|<tuple|Tre67|57|#19>>
    <associate|def-P|<tuple|11.4|25|#12>>
    <associate|def-n-nots:def-n+invar|<tuple|2.2|1|#3>>
    <associate|def-n-nots:def-sol|<tuple|2.3|1|#3>>
    <associate|diffSBO:lem-aux|<tuple|8.1|16|#9>>
    <associate|diffSBO:prop-main|<tuple|8.2|16|#9>>
    <associate|eq|<tuple|3.1|?|#4>>
    <associate|eq-1|<tuple|13.1|42|#14>>
    <associate|eq-2|<tuple|13.2|42|#14>>
    <associate|eq-Nequiv|<tuple|2.1|1|#3>>
    <associate|eq:sing-q-dx|<tuple|7.1|13|#8>>
    <associate|eq:supp-p|<tuple|6.2|10|#7>>
    <associate|eq:supp-p-mero|<tuple|6.1|9|#7>>
    <associate|fact-1|<tuple|74|?|#6>>
    <associate|fact-2|<tuple|75|?|#6>>
    <associate|fact-horm-homog|<tuple|13.1|36|#14>>
    <associate|fact-horm1|<tuple|13.2|36|#14>>
    <associate|fact-horm2|<tuple|13.3|36|#14>>
    <associate|fact:homog-tempered|<tuple|3.9|5|#4>>
    <associate|fact:sing-q|<tuple|7.17|15|#8>>
    <associate|fact:sing-q-1|<tuple|7.8|12|#8>>
    <associate|fact:sing-q-2|<tuple|7.9|12|#8>>
    <associate|fact:sing-q-3|<tuple|7.10|12|#8>>
    <associate|fact:sing-q-4|<tuple|7.13|12|#8>>
    <associate|footnote-1|<tuple|1|?|#5>>
    <associate|footnote-11.1|<tuple|11.1|?|#12>>
    <associate|footnote-12.1|<tuple|12.1|25|#13>>
    <associate|footnote-13.1|<tuple|13.1|26|#14>>
    <associate|footnote-14.1|<tuple|14.1|?|#15>>
    <associate|footnote-16.1|<tuple|16.1|54|#17>>
    <associate|footnote-16.2|<tuple|16.2|?|#17>>
    <associate|footnote-17.1|<tuple|17.1|55|#17>>
    <associate|footnote-17.2|<tuple|17.2|55|#18>>
    <associate|footnote-18.1|<tuple|18.1|59|#19>>
    <associate|footnote-18.2|<tuple|18.2|59|#19>>
    <associate|footnote-19.1|<tuple|19.1|?|#20>>
    <associate|footnote-19.2|<tuple|19.2|?|#20>>
    <associate|footnote-2|<tuple|2|?|#12>>
    <associate|footnote-20.1|<tuple|20.1|?|#21>>
    <associate|footnote-3|<tuple|3|?|#17>>
    <associate|footnote-3.1|<tuple|3.1|4|#4>>
    <associate|footnote-4|<tuple|4|?|#17>>
    <associate|footnote-4.1|<tuple|4.1|?|#4>>
    <associate|footnote-4.2|<tuple|4.2|?|#5>>
    <associate|footnote-5|<tuple|5|?|#17>>
    <associate|footnote-5.1|<tuple|5.1|6|#6>>
    <associate|footnote-6.1|<tuple|6.1|?|#6>>
    <associate|footnote-7.1|<tuple|7.1|11|#8>>
    <associate|footnote-8.1|<tuple|8.1|?|#8>>
    <associate|footnote-9.1|<tuple|9.1|?|#10>>
    <associate|footnr-1|<tuple|1|?|#5>>
    <associate|footnr-11.1|<tuple|11.1|?|#12>>
    <associate|footnr-12.1|<tuple|12.1|25|#13>>
    <associate|footnr-13.1|<tuple|13.1|26|#14>>
    <associate|footnr-14.1|<tuple|14.1|?|#15>>
    <associate|footnr-16.1|<tuple|16.1|54|#17>>
    <associate|footnr-16.2|<tuple|16.2|?|#17>>
    <associate|footnr-17.1|<tuple|17.1|55|#17>>
    <associate|footnr-17.2|<tuple|17.2|55|#18>>
    <associate|footnr-18.1|<tuple|18.1|59|#19>>
    <associate|footnr-18.2|<tuple|18.2|59|#19>>
    <associate|footnr-19.1|<tuple|19.1|?|#20>>
    <associate|footnr-19.2|<tuple|19.2|?|#20>>
    <associate|footnr-2|<tuple|2|?|#12>>
    <associate|footnr-20.1|<tuple|20.1|?|#21>>
    <associate|footnr-3|<tuple|3|?|#17>>
    <associate|footnr-3.1|<tuple|3.1|4|#4>>
    <associate|footnr-4|<tuple|4|?|#17>>
    <associate|footnr-4.1|<tuple|4.1|?|#4>>
    <associate|footnr-4.2|<tuple|4.2|?|#5>>
    <associate|footnr-5|<tuple|5|?|#17>>
    <associate|footnr-5.1|<tuple|5.1|5|#6>>
    <associate|footnr-6.1|<tuple|6.1|?|#6>>
    <associate|footnr-7.1|<tuple|7.1|11|#8>>
    <associate|footnr-8.1|<tuple|8.1|?|#8>>
    <associate|footnr-9.1|<tuple|9.1|?|#10>>
    <associate|forre|<tuple|14.1|41|#17>>
    <associate|holomorphicity-preserving:def-holo-in-DG|<tuple|9.9|18|#10>>
    <associate|holomorphicity-preserving:eq-1|<tuple|9.1|21|#10>>
    <associate|holomorphicity-preserving:fact-1|<tuple|1|?|#4>>
    <associate|holomorphicity-preserving:fact-2|<tuple|4|?|#4>>
    <associate|holomorphicity-preserving:fact-basic|<tuple|9.19|19|#10>>
    <associate|holomorphicity-preserving:fact-completeness|<tuple|9.18|19|#10>>
    <associate|holomorphicity-preserving:fact-holo|<tuple|9.16|19|#10>>
    <associate|holomorphicity-preserving:fact-homog|<tuple|9.1|17|#10>>
    <associate|holomorphicity-preserving:fact-p1|<tuple|9.27|22|#10>>
    <associate|holomorphicity-preserving:fact-p2|<tuple|11.27|23|#12>>
    <associate|holomorphicity-preserving:fact-p3|<tuple|9.28|23|#10>>
    <associate|holomorphicity-preserving:fact-pullback|<tuple|9.5|18|#10>>
    <associate|holomorphicity-preserving:fact-tensor|<tuple|9.8|18|#10>>
    <associate|holomorphicity-preserving:fact-treves|<tuple|9.17|19|#10>>
    <associate|holomorphicity-preserving:lem-homog-ctt|<tuple|9.22|20|#10>>
    <associate|holomorphicity-preserving:lem-phi-satisfies|<tuple|9.20|19|#10>>
    <associate|holomorphicity-preserving:lem-t+-cts|<tuple|9.21|19|#10>>
    <associate|holomorphicity-preserving:lem-t+-smth|<tuple|9.25|21|#10>>
    <associate|holomorphicity-preserving:lem-t+-smth-aux|<tuple|9.24|21|#10>>
    <associate|holomorphicity-preserving:lem-t+ln-cts|<tuple|9.23|20|#10>>
    <associate|holomorphicity-preserving:lem-tensor-holo|<tuple|9.26|22|#10>>
    <associate|holomorphicity-preserving:prop-1|<tuple|3|?|#4>>
    <associate|holomorphicity-preserving:prop-2|<tuple|5|?|#4>>
    <associate|holomorphicity-preserving:prop-homog-cts|<tuple|9.11|18|#10>>
    <associate|holomorphicity-preserving:prop-homog-holo|<tuple|9.10|18|#10>>
    <associate|holomorphicity-preserving:prop-pullback-cts|<tuple|9.13|18|#10>>
    <associate|holomorphicity-preserving:prop-pullback-holo|<tuple|9.12|18|#10>>
    <associate|holomorphicity-preserving:prop-tensor-cts|<tuple|9.15|19|#10>>
    <associate|holomorphicity-preserving:prop-tensor-holo|<tuple|9.14|19|#10>>
    <associate|knappstein:fact-faraut|<tuple|17.6|3|#18>>
    <associate|knappstein:prop-1|<tuple|17.1|2|#18>>
    <associate|knappstein:prop-holo|<tuple|17.2|2|#18>>
    <associate|knappstein:prop-kfinite|<tuple|17.3|2|#18>>
    <associate|knappstein:prop-spherical|<tuple|17.4|3|#18>>
    <associate|lem-1|<tuple|14.1|42|#17>>
    <associate|lem-16|<tuple|14.1|44|#17>>
    <associate|lem-2|<tuple|14.2|43|#17>>
    <associate|lem-20|<tuple|6|?|#1>>
    <associate|lem-21|<tuple|14.8|44|#14>>
    <associate|lem-3|<tuple|6.4|7|#6>>
    <associate|lem-3-1|<tuple|6.5|8|#6>>
    <associate|lem-3-2|<tuple|6.4|8|#6>>
    <associate|lem-3-3|<tuple|6.5|8|#6>>
    <associate|lem-4|<tuple|13.12|38|#14>>
    <associate|lem-5|<tuple|15.8|48|#16>>
    <associate|lem-5n|<tuple|15.7|47|#16>>
    <associate|lem-6|<tuple|13.14|38|#14>>
    <associate|lem-7|<tuple|15.10|49|#16>>
    <associate|lem-8|<tuple|15.9|48|#16>>
    <associate|lem-9|<tuple|15.11|50|#16>>
    <associate|lem-assume-the-setting|<tuple|14.2|42|#17>>
    <associate|lem-holo-nonzero|<tuple|13.11|38|#14>>
    <associate|lem-holo-supp|<tuple|76|?|#6>>
    <associate|lem-mero-addition|<tuple|3|?|#1>>
    <associate|lem-mero-supp|<tuple|8|?|#1>>
    <associate|lem-n:odd-holo|<tuple|13.27|42|#14>>
    <associate|lem-n:odd-n/2|<tuple|13.28|42|#14>>
    <associate|lem-normalized-eq|<tuple|13.15|38|#14>>
    <associate|lem-pq2holo|<tuple|13.17|39|#14>>
    <associate|lem-r1|<tuple|13.21|40|#14>>
    <associate|lem-r1-e|<tuple|13.18|39|#14>>
    <associate|lem-r2|<tuple|13.23|41|#14>>
    <associate|lem-r3|<tuple|13.24|41|#14>>
    <associate|lem-r4|<tuple|13.22|40|#14>>
    <associate|lem-r5|<tuple|13.25|41|#14>>
    <associate|lem-r6|<tuple|13.19|40|#14>>
    <associate|lem-r6-e|<tuple|13.16|39|#14>>
    <associate|lem-r7|<tuple|13.26|42|#14>>
    <associate|lem-r8|<tuple|13.20|40|#14>>
    <associate|lem-restricted|<tuple|13.7|38|#14>>
    <associate|lem-span|<tuple|14.1|41|#17>>
    <associate|lem67:lem-Qpm|<tuple|3.10|5|#4>>
    <associate|lem67:lem-flip|<tuple|3.12|6|#4>>
    <associate|lem67:lem-geom|<tuple|3.5|4|#4>>
    <associate|lem67:lem-geom-aux|<tuple|3.4|4|#4>>
    <associate|lem67:lem-homoR|<tuple|4.7|?|#5>>
    <associate|lem67:lem-homogR|<tuple|3.8|5|#4>>
    <associate|lem67:lem-tensor|<tuple|3.7|5|#4>>
    <associate|lem67:lem-tensor-aux|<tuple|3.6|4|#4>>
    <associate|lem67:prop-67|<tuple|3.1|4|#4>>
    <associate|lem67:prop-dim1|<tuple|3.2|4|#4>>
    <associate|lem:sing-q-1|<tuple|7.2|11|#8>>
    <associate|lem:sing-q-2|<tuple|9.5|12|#10>>
    <associate|lem:sing-q-3|<tuple|7.1|11|#8>>
    <associate|lem:sing-q-6|<tuple|7.12|12|#8>>
    <associate|lem:sing-q-7|<tuple|7.16|14|#8>>
    <associate|lem:sing-q-8|<tuple|9.14|14|#10>>
    <associate|lem:supp-p|<tuple|6.2|9|#7>>
    <associate|prop-1|<tuple|13.4|?|#14>>
    <associate|prop-2|<tuple|13.5|?|#14>>
    <associate|prop-3|<tuple|14.1|41|#17>>
    <associate|prop-4|<tuple|14.1|41|#17>>
    <associate|prop-6|<tuple|14.1|41|#17>>
    <associate|prop-eqns-for-kernels|<tuple|3.5|?|#4>>
    <associate|prop-norm-1|<tuple|14.1|41|#17>>
    <associate|prop-norm-2|<tuple|14.1|41|#17>>
    <associate|prop-q=2|<tuple|15.3|46|#16>>
    <associate|prop-regular|<tuple|5.1|7|#6>>
    <associate|prop:supp-p|<tuple|6.1|9|#7>>
    <associate|q-norm:lem-nonzero-strong|<tuple|13.8|?|#14>>
    <associate|q-norm:prop-1|<tuple|13.4|36|#14>>
    <associate|q-norm:prop-2|<tuple|13.5|37|#14>>
    <associate|section:q-norm|<tuple|13|?|#14>>
    <associate|supp-Q:lem-flip|<tuple|7.14|14|#8>>
    <associate|supp-Q:lem-sing-q-4|<tuple|7.7|11|#8>>
    <associate|supp-Q:lem-sing-q-7-aux|<tuple|7.15|14|#8>>
    <associate|supp-Q:prop-onedim|<tuple|7.3|11|#8>>
    <associate|supp-Q:prop-sol-extending|<tuple|7.4|11|#8>>
    <associate|supp-Q:prop-supp-xnoq0|<tuple|7.5|11|#8>>
    <associate|supp-n-waves:lem-at-least|<tuple|10.3|24|#11>>
    <associate|supp-n-waves:lem-supp-xp|<tuple|10.2|24|#11>>
    <associate|supp-n-waves:lem-\|x\|-holo-in|<tuple|10.1|24|#11>>
    <associate|thm:sing-q|<tuple|2|11|#8>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      hormander1983analysis

      kobayashi2015symmetry

      hormander1983analysis

      gelfand1980distribution

      gelfand1980distribution

      gelfand1980distribution

      gelfand1980distribution

      kobayashi2015symmetry

      hormander1983analysis

      hormander1983analysis

      hormander1983analysis

      hormander1983analysis

      gelfand1980distribution

      hormander1983analysis

      gelfand1980distribution

      hormander1983analysis

      kobayashi2015symmetry

      kobayashi2013differential

      hormander1983analysis

      hormander1983analysis

      hormander1983analysis

      hormander1983analysis

      hormander1983analysis

      hormander1983analysis

      hormander1983analysis

      hormander1983analysis

      hormander1983analysis

      treves1967topological

      hormander1983analysis

      hormander1983analysis

      hormander1983analysis

      chazarain2011introduction

      hormander1983analysis

      hormander1983analysis

      gelfand1980distribution

      hormander1983analysis

      hormander1983analysis

      howe1993homogeneous

      kobayashi2015symmetry

      kobayashi2015symmetry

      kobayashi2015symmetry

      kobayashi2015symmetry

      howe1993homogeneous

      kobayashi2015symmetry

      Kobayashi201489

      gelfand1980distribution

      gelfand1980distribution

      hormander1983analysis

      hormander1983analysis

      hormander1983analysis

      hormander1983analysis

      gelfand1980distribution

      gelfand1980distribution

      gelfand1980distribution

      gelfand1980distribution

      hormander1983analysis

      kobayashi2015symmetry

      hormander1983analysis

      KO1

      KO1

      kobayashi2015symmetry

      kobayashi2015symmetry

      faraut1979distributions
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|1.1<space|2spc>Motivation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1.5fn>|1.2<space|2spc>Main results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1.5fn>|1.3<space|2spc>Organization of the paper
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1.5fn>|1.4<space|2spc>Acknowledgements
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Definition
      and notations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Lemma
      6.7> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|3.1<space|2spc>Main results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1.5fn>|3.2<space|2spc>Auxiliary results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1.5fn>|3.3<space|2spc>Proofs
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Non-equivalence
      of <with|mode|<quote|math>|N<rsub|+><rprime|'>>-invariance and
      <with|mode|<quote|math>|<with|math-font|<quote|Euler>|n><rprime|'><rsub|+>>-invariance>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>The
      kernel of regular symmetry breaking operator>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|5.1<space|2spc>Main results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1.5fn>|5.2<space|2spc>Auxiliary results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|1.5fn>|5.3<space|2spc>Proofs
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>The
      kernel of singular symmetry breaking operator supported on
      <with|mode|<quote|math>|<around*|{|x<rsub|p>=0|}>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>The
      kernel of singular symmetry breaking operator supported on
      <with|mode|<quote|math>|<around*|{|Q=0|}>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|7.1<space|2spc>Goal
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|1.5fn>|7.2<space|2spc>Main results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|1.5fn>|7.3<space|2spc>Auxiliary results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|1.5fn>|7.4<space|2spc>Proofs
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Differential
      SBO> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>Holomorphicity
      preserving> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|9.1<space|2spc>Goal and setting
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|1.5fn>|9.2<space|2spc>Facts
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>

      <with|par-left|<quote|1.5fn>|9.3<space|2spc>Main results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <with|par-left|<quote|1.5fn>|9.4<space|2spc>Auxilliary results and
      facts <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      <with|par-left|<quote|1.5fn>|9.5<space|2spc>Proofs
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>Supports
      and wavefronts> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|10.1<space|2spc>Goal and setting
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      <with|par-left|<quote|1.5fn>|10.2<space|2spc>Main results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|11<space|2spc>P-def>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|11.1<space|2spc>Setting and Goal
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>

      <with|par-left|<quote|1.5fn>|11.2<space|2spc>Main results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <with|par-left|<quote|1.5fn>|11.3<space|2spc>Combinatorial lemmas
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|12<space|2spc>KC-normalization-2>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|12.1<space|2spc>Main results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>>

      <with|par-left|<quote|1.5fn>|12.2<space|2spc>Auxiliary results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|1.5fn>|12.3<space|2spc>Proofs
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|13<space|2spc>Q-normalization>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40><vspace|0.5fn>

      <with|par-left|<quote|3fn>|13.0.1<space|2spc>Setting and goal
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>>

      <with|par-left|<quote|1.5fn>|13.1<space|2spc>Comments
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|1.5fn>|13.2<space|2spc>Main results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      <with|par-left|<quote|3fn>|13.2.1<space|2spc>Auxiliary results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>>

      <with|par-left|<quote|3fn>|13.2.2<space|2spc>Proofs
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|14<space|2spc>KP-normalization-2>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|14.1<space|2spc>Setting and goal
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>>

      <with|par-left|<quote|1.5fn>|14.2<space|2spc>Main results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>>

      <with|par-left|<quote|1.5fn>|14.3<space|2spc>Auxiliary results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>>

      <with|par-left|<quote|1.5fn>|14.4<space|2spc>Proofs
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|15<space|2spc>KR-normalization-even>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|15.1<space|2spc>Main results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>>

      <with|par-left|<quote|1.5fn>|15.2<space|2spc>Auxilliary results (I)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>>

      <with|par-left|<quote|1.5fn>|15.3<space|2spc>Auxiliary results (II)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>>

      <with|par-left|<quote|1.5fn>|15.4<space|2spc>Proofs
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-55>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|16<space|2spc>Pullback-tensor-multiplication>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|17<space|2spc>Knapp-Stein
      operator> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|17.1<space|2spc>Main results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58>>

      <with|par-left|<quote|1.5fn>|17.2<space|2spc>Proofs
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-59>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>