<TeXmacs|1.99.5>

<style|<tuple|generic|mystyle>>

<\body>
  <\proposition*>
    The following holds:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D>sin<rsup|2\<mu\>+m+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)><around*|\||cos
      <around|(|\<theta\>|)>-cos <around|(|\<psi\>|)>*sin
      <around|(|\<varphi\>|)>|\|><rsup|b><wide|v|~><rsup|\<lambda\>><rsub|l><around*|(|\<theta\>|)><wide|v|~><rsup|\<mu\>><rsub|m><around*|(|\<psi\>|)>d\<theta\>d\<psi\>d\<varphi\>=<htab|5mm>>|<cell|>>|<row|<cell|>|<cell|=<frac|2<rsup|m+l-1><around*|(|-1|)><rsup|<frac|m-l|2>><sqrt|\<pi\>>\<Gamma\><around*|(|\<mu\>+<frac|1|2>+<around*|[|<frac|m|2>|]>|)>\<Gamma\><around*|(|\<lambda\>+<around*|[|<frac|l|2>|]>+<frac|1|2>|)>|a!
      b!><around*|\<nobracket\>||\<nobracket\>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|<frac|m+l-b|2>|)>\<Gamma\><around*|(|<frac|a+2b+2\<mu\>+2\<lambda\>+3|2>|)>\<Gamma\><around*|(|<frac|a+1|2>|)>\<Gamma\><around*|(|<frac|1+b|2>|)>|\<Gamma\><around*|(|<frac|-b|2>|)>\<Gamma\><around*|(|<frac|m+l+a+b+2\<mu\>+2\<lambda\>+3|2>|)>\<Gamma\><around*|(|<frac|2-m+l+b+2\<lambda\>|2>|)>*\<Gamma\><around*|(|<frac|m-l+a+b+2\<mu\>+3|2>|)>>,>|<cell|>>|<row|<cell|>|<cell|<wide|v|~><rsup|\<lambda\>><rsub|l><around*|(|\<theta\>|)>\<assign\><frac|\<Gamma\><around*|(|\<lambda\>|)>|\<Gamma\><around*|(|\<lambda\>+<around*|[|<frac|l+1|2>|]>|)>>sin<rsup|2\<lambda\>><around*|(|\<theta\>|)>C<rsup|\<lambda\>><rsub|l><around*|(|cos<around*|(|\<theta\>|)>|)>,>|<cell|>>|<row|<cell|>|<cell|D\<assign\><around*|{|<around*|(|\<theta\>,\<psi\>,\<varphi\>|)>\<in\><around*|[|0,\<pi\>|]><rsup|2>\<times\><around*|[|0,<frac|\<pi\>|2>|]>|}>,<space|1em>\<lambda\>,\<mu\>,a,b\<in\>\<bbb-C\>,<space|1em>l,m\<in\>\<bbb-N\>\<mid\>l+m\<in\>2\<bbb-N\>.>|<cell|>>>>
    </eqnarray>
  </proposition*>

  <\lemma>
    <label|lem1>The following holds:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D<rprime|'>>sin<rsup|2\<mu\>+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)><around*|\||s-t*sin
      <around|(|\<varphi\>|)>|\|><rsup|b><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>d
      s d t d\<varphi\>=<htab|5mm>>|<cell|>>|<row|<cell|>|<cell|=<frac|<sqrt|\<pi\>>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>|2><around*|\<nobracket\>||\<nobracket\>>\<cdot\><frac|\<Gamma\><around*|(|<frac|a+2b+2\<mu\>+2\<lambda\>+3|2>|)>\<Gamma\><around*|(|<frac|a+1|2>|)>\<Gamma\><around*|(|<frac|1+b|2>|)>|\<Gamma\><around*|(|<frac|a+b+2\<mu\>+2\<lambda\>+3|2>|)>\<Gamma\><around*|(|<frac|2+b+2\<lambda\>|2>|)>*\<Gamma\><around*|(|<frac|a+b+2\<mu\>+3|2>|)>>,<eq-number><label|eq-1>>|<cell|>>|<row|<cell|>|<cell|D<rprime|'>\<assign\><around*|{|<around*|(|s,t,\<varphi\>|)>\<in\><around*|[|-1,1|]><rsup|2>\<times\><around*|[|0,<frac|\<pi\>|2>|]>|}>,<space|1em>\<lambda\>,\<mu\>,a,b\<in\>\<bbb-C\>.>|<cell|>>>>
    </eqnarray>
  </lemma>

  <\lemma>
    <label|lem2>The following holds:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|s,t=-1><rsup|1><around*|\||s
      a-t b|\|><rsup|\<nu\>><around*|(|1-s<rsup|2>|)><rsup|A><around*|(|1-t<rsup|2>|)><rsup|B>d
      s d t=<frac|<around*|\||a|\|><rsup|\<nu\>>\<Gamma\><around*|(|B+1|)>\<Gamma\><around*|(|A+1|)><sqrt|\<pi\>>\<Gamma\><around*|(|<frac|1+\<nu\>|2>|)>|\<Gamma\><around*|(|B+<frac|3|2>|)>\<Gamma\><around*|(|<frac|\<nu\>|2>+A+<frac|3|2>|)>>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-<frac|\<nu\>|2>,-<frac|1+\<nu\>|2>-A>>|<row|<cell|B+<frac|3|2>>>>>>;<frac|b<rsup|2>|a<rsup|2>>|)>,>|<cell|>>|<row|<cell|>|<cell|a,b\<in\>\<bbb-R\>,<around*|\||a|\|>\<gtr\><around*|\||b|\|>;<space|1em>A,B,\<nu\>\<in\>\<bbb-C\>.>|<cell|>>>>
    </eqnarray>
  </lemma>

  <\proof>
    (of Proposition, assuming Lemma <reference|lem1>) We first make the
    change of variable

    <\equation*>
      cos<around*|(|\<theta\>|)>\<rightsquigarrow\>s,cos<around*|(|\<psi\>|)>\<rightsquigarrow\>t
    </equation*>

    to get:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|\<mu\>|)>|\<Gamma\><around*|(|\<lambda\>+<around*|[|<frac|l+1|2>|]>|)>\<Gamma\><around*|(|\<mu\>+<around*|[|<frac|m+1|2>|]>|)>><big|int><rsub|D<rprime|'>>sin<rsup|2\<mu\>+m+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)><around*|\||s-t\<cdot\>*sin
      <around|(|\<varphi\>|)>|\|><rsup|b><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsup|\<lambda\>><rsub|l><around*|(|s|)>C<rsup|\<mu\>><rsub|m><around*|(|t|)>=>|<cell|>>|<row|<cell|>|<cell|=<frac|<around*|(|-2|)><rsup|l+m>\<Gamma\><around*|(|l+\<lambda\>|)>\<Gamma\><around*|(|l+2\<lambda\>|)>\<Gamma\><around*|(|\<mu\>+m|)>\<Gamma\><around*|(|m+2\<mu\>|)>|\<Gamma\><around*|(|\<lambda\>+<around*|[|<frac|l+1|2>|]>|)>\<Gamma\><around*|(|\<mu\>+<around*|[|<frac|m+1|2>|]>|)>l!m!\<Gamma\><around*|(|2l+2\<lambda\>|)>\<Gamma\><around*|(|2m+2\<mu\>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|D<rprime|'>>sin<rsup|2\<mu\>+m+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)><around*|\||s-t\<cdot\>*sin
      <around|(|\<varphi\>|)>|\|><rsup|b><frac|d|d
      s<rsup|l>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>+l-<frac|1|2>><frac|d|d
      t<rsup|m>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>+m-<frac|1|2>>=>|<cell|>>|<row|<cell|>|<cell|<around*|(|integration
      by parts;<space|0.6spc>note that l+m\<in\>2\<bbb-N\>|)>>|<cell|>>|<row|<cell|>|<cell|=<frac|<around*|(|-2|)><rsup|l+m>\<Gamma\><around*|(|l+\<lambda\>|)>\<Gamma\><around*|(|l+2\<lambda\>|)>\<Gamma\><around*|(|\<mu\>+m|)>\<Gamma\><around*|(|m+2\<mu\>|)>|\<Gamma\><around*|(|\<lambda\>+<around*|[|<frac|l+1|2>|]>|)>\<Gamma\><around*|(|\<mu\>+<around*|[|<frac|m+1|2>|]>|)>l!m!\<Gamma\><around*|(|2l+2\<lambda\>|)>\<Gamma\><around*|(|2m+2\<mu\>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<around*|(|-1|)><rsup|l>\<cdot\><around*|(|b-l-m+1|)><rsub|l+m><big|int><rsub|D<rprime|'>>sin<rsup|2\<mu\>+2m+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)><around*|\||s-t\<cdot\>*sin
      <around|(|\<varphi\>|)>|\|><rsup|b-l-m><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>+l-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>+m-<frac|1|2>>>|<cell|>>>>
    </eqnarray>

    Now, making the parameter change <math|\<mu\>+m\<rightsquigarrow\>\<mu\>,\<lambda\>+l\<rightsquigarrow\>l,b-l-m\<rightsquigarrow\>b>
    we see that integral is precisely that of Lemma <reference|lem1>.
  </proof>

  <\proof>
    (of Lemma <reference|lem1>) We then proceed as:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D<rprime|'>>sin<rsup|2\<mu\>+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)><around*|\||s-t*sin
      <around|(|\<varphi\>|)>|\|><rsup|b><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>=>|<cell|>>|<row|<cell|>|<cell|<around*|(|cos\<varphi\>\<rightsquigarrow\>r,d
      r=-sin\<varphi\>d\<varphi\>,sin<rsup|2><around*|(|\<varphi\>|)>\<rightsquigarrow\>1-r<rsup|2>|)>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|<around*|[|0,1|]>\<times\><around*|[|-1,1|]><rsup|2>><around*|(|1-r<rsup|2>|)><rsup|\<mu\>>r<rsup|a><around*|\||s-t*<sqrt|1-r<rsup|2>>|\|><rsup|b><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>d
      r d s d t=>|<cell|>>|<row|<cell|>|<cell|<around*|(|Lemma<space|0.6spc><reference|lem2>|)>>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)><sqrt|\<pi\>>\<Gamma\><around*|(|<frac|1+b|2>|)>|\<Gamma\><around*|(|\<mu\>+1|)>\<Gamma\><around*|(|<frac|b|2>+\<lambda\>+1|)>><big|int><rsub|-1><rsup|1><around*|(|1-r<rsup|2>|)><rsup|\<mu\>>r<rsup|a>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-<frac|b|2>,-\<lambda\>-<frac|b|2>>>|<row|<cell|\<mu\>+1>>>>>;1-r<rsup|2>|)>d
      r=>|<cell|>>|<row|<cell|>|<cell|<around*|(|expanding<space|0.6spc>series|)>>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)><sqrt|\<pi\>>\<Gamma\><around*|(|<frac|1+b|2>|)>\<Gamma\><around*|(|<frac|a+1|2>|)>|2\<Gamma\><around*|(|<frac|b|2>+\<lambda\>+1|)>\<Gamma\><around*|(|<frac|a+3+2\<mu\>|2>|)>>\<cdot\><rsub|3>F<rsub|2><around*|(|<stack|<tformat|<table|<row|<cell|-<frac|b|2>,\<lambda\>-<frac|b|2>,\<mu\>+1>>|<row|<cell|\<mu\>+1,<frac|a+3+2\<mu\>|2>>>>>>;1|)>=>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)><sqrt|\<pi\>>\<Gamma\><around*|(|<frac|1+b|2>|)>\<Gamma\><around*|(|<frac|a+1|2>|)>|2\<Gamma\><around*|(|<frac|b|2>+\<lambda\>+1|)>\<Gamma\><around*|(|<frac|a+3+2\<mu\>|2>|)>>\<cdot\><rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-<frac|b|2>,-\<lambda\>-<frac|b|2>>>|<row|<cell|<frac|a+3+2\<mu\>|2>>>>>>;1|)>=>|<cell|>>>>
    </eqnarray>

    and the application of the formula <math|<rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|a,b>>|<row|<cell|c>>>>>;1|)>=<frac|\<Gamma\><around*|(|c|)>\<Gamma\><around*|(|c-a-b|)>|\<Gamma\><around*|(|c-a|)>\<Gamma\><around*|(|c-b|)>>>
    ends the proof.
  </proof>

  <\fact>
    <label|fact><with|font-series|bold|(Carlson's theorem)> Suppose
    <math|f:<around*|{|z\<in\>\<bbb-C\>\<mid\>Re<around*|(|z|)>\<gtr\>0|}>\<rightarrow\>\<bbb-C\>>
    is holomorphic and bounded. Then if <math|f<around*|(|z|)>=0> for
    <math|\<forall\>z\<in\>\<bbb-N\><rsub|+>>, then <math|f> is constantly
    zero.
  </fact>

  <\proof>
    (of Lemma <reference|lem2>) We fix <math|a,b\<in\>\<bbb-R\>> as in the
    statement and <math|A,B\<in\>\<bbb-C\>> with the additional condition
    that <math|Re<around*|(|A|)>\<gtr\>0,Re<around*|(|B|)>\<gtr\>0>
    (holomorphic rigidity implies that we can even assume
    <math|B\<in\>\<bbb-R\>>) and consider the function

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|F<around*|(|\<nu\>|)>\<assign\><big|int><rsub|s,t=-1><rsup|1><around*|\||s
      a-t b|\|><rsup|\<nu\>><around*|(|1-s<rsup|2>|)><rsup|A><around*|(|1-t<rsup|2>|)><rsup|B>d
      s d t->|<cell|>>|<row|<cell|>|<cell|<frac|<around*|\||a|\|><rsup|\<nu\>>\<Gamma\><around*|(|B+1|)>\<Gamma\><around*|(|A+1|)><sqrt|\<pi\>>\<Gamma\><around*|(|<frac|1+\<nu\>|2>|)>|\<Gamma\><around*|(|B+<frac|3|2>|)>\<Gamma\><around*|(|<frac|\<nu\>|2>+A+<frac|3|2>|)>>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-<frac|\<nu\>|2>,-<frac|1+\<nu\>|2>-A>>|<row|<cell|B+<frac|3|2>>>>>>;<frac|b<rsup|2>|a<rsup|2>>|)>>|<cell|>>>>
    </eqnarray>

    defined for <math|b\<in\>\<bbb-C\>> such that
    <math|Re<around*|(|b|)>\<gtr\>0>. Note that
    <math|F<around*|(|\<cdot\>|)>> is holomorphic: in particular,
    hypergeometric is so due to the <math|Re<around*|(|B|)>\<gtr\>0> and
    <math|<around*|\||b|\|>\<less\><around*|\||a|\|>> assumptions; integral
    is holomorphic, as we can directly take the derivative under the integral
    by the Lebesgue Dominated convergence. Further, Lemma <reference|lem3>
    tells us that for appropriate <math|c,b\<gtr\>0> we have
    <math|F<rprime|'><around*|(|\<nu\>|)>\<assign\>F<around*|(|\<nu\>|)>/c<rsup|b>>
    being bounded for <math|Re<around*|(|\<nu\>|)>\<gtr\>b>, hence we see
    that Fact <reference|fact> (applied to
    <math|F<rprime|'><around*|(|\<cdot\>|)>>) above implies that we can prove
    the equality for <math|\<nu\>\<in\>2\<bbb-N\>>.

    So we let <math|\<nu\>=2n\<in\>2\<bbb-N\>> and proceed as:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|s,t=-1><rsup|1><around*|(|s
      a-t b|)><rsup|2n><around*|(|1-s<rsup|2>|)><rsup|A><around*|(|1-t<rsup|2>|)><rsup|B>d
      s d t=<big|sum><rsub|i=0><rsup|n><frac|<around*|(|-2n|)><rsub|i>|<around*|(|1|)><rsub|2i>>b<rsup|2i>a<rsup|2n-2i><big|int><rsub|s,t=-1><rsup|1>t<rsup|2i>s<rsup|2n-2i><around*|(|1-s<rsup|2>|)><rsup|A><around*|(|1-t<rsup|2>|)><rsup|B>d
      s d t=>|<cell|>>|<row|<cell|>|<cell|a<rsup|2n><big|sum><rsub|i=0><rsup|n><frac|<around*|(|-n|)><rsub|i><around*|(|1/2-n|)><rsub|i>|<around*|(|1/2|)><rsub|i>i!>\<cdot\><frac|\<Gamma\><around*|(|i+<frac|1|2>|)>\<Gamma\><around*|(|B+1|)>|\<Gamma\><around*|(|B+i+<frac|3|2>|)>>\<cdot\><frac|\<Gamma\><around*|(|n-i+<frac|1|2>|)>\<Gamma\><around*|(|B+1|)>|\<Gamma\><around*|(|n-i+B+<frac|3|2>|)>>\<cdot\><around*|(|<frac|b<rsup|2>|a<rsup|2>>|)><rsup|i>=>|<cell|>>|<row|<cell|>|<cell|<frac|a<rsup|2n>\<Gamma\><around*|(|B+1|)>\<Gamma\><around*|(|A+1|)><sqrt|\<pi\>>\<Gamma\><around*|(|n+<frac|1|2>|)>|\<Gamma\><around*|(|B+<frac|3|2>|)>\<Gamma\><around*|(|n+A+<frac|3|2>|)>><big|sum><rsub|i=0><rsup|n><frac|<around*|(|-n|)><rsub|i><around*|(|1/2-n|)><rsub|i>|i!>\<cdot\><frac|1|<around*|(|B+<frac|3|2>|)><rsub|i>>\<cdot\><frac|<around*|(|n+<frac|1|2>|)><rsub|-i>|<around*|(|n+A+<frac|3|2>|)><rsub|-i>>\<cdot\><around*|(|<frac|b<rsup|2>|a<rsup|2>>|)><rsup|i>=>|<cell|>>|<row|<cell|>|<cell|<frac|a<rsup|2n>\<Gamma\><around*|(|B+1|)>\<Gamma\><around*|(|A+1|)><sqrt|\<pi\>>\<Gamma\><around*|(|n+<frac|1|2>|)>|\<Gamma\><around*|(|B+<frac|3|2>|)>\<Gamma\><around*|(|n+A+<frac|3|2>|)>><big|sum><rsub|i=0><rsup|n><frac|<around*|(|-n|)><rsub|i>|i!>\<cdot\><frac|<around*|(|-<frac|1|2>-n-A|)><rsub|i>|<around*|(|B+<frac|3|2>|)><rsub|i>>\<cdot\><around*|(|<frac|b<rsup|2>|a<rsup|2>>|)><rsup|i>=>|<cell|>>|<row|<cell|>|<cell|<frac|a<rsup|2n>\<Gamma\><around*|(|B+1|)>\<Gamma\><around*|(|A+1|)><sqrt|\<pi\>>\<Gamma\><around*|(|n+<frac|1|2>|)>|\<Gamma\><around*|(|B+<frac|3|2>|)>\<Gamma\><around*|(|n+A+<frac|3|2>|)>>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-n,-<frac|1|2>-n-A>>|<row|<cell|B+<frac|3|2>>>>>>;<frac|b<rsup|2>|a<rsup|2>>|)>=>|<cell|>>|<row|<cell|>|<cell|<frac|<around*|\||a|\|><rsup|\<nu\>>\<Gamma\><around*|(|B+1|)>\<Gamma\><around*|(|A+1|)><sqrt|\<pi\>>\<Gamma\><around*|(|<frac|1+\<nu\>|2>|)>|\<Gamma\><around*|(|B+<frac|3|2>|)>\<Gamma\><around*|(|<frac|\<nu\>|2>+A+<frac|3|2>|)>>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-<frac|\<nu\>|2>,-<frac|1+\<nu\>|2>-A>>|<row|<cell|B+<frac|3|2>>>>>>;<frac|b<rsup|2>|a<rsup|2>>|)>.>|<cell|>>>>
    </eqnarray>
  </proof>

  <\lemma>
    <label|lem3>Let <math|B\<gtr\>0>. Then

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|F<around*|(|\<nu\>|)>\<assign\><big|int><rsub|s,t=-1><rsup|1><around*|\||s
      a-t b|\|><rsup|\<nu\>><around*|(|1-s<rsup|2>|)><rsup|A><around*|(|1-t<rsup|2>|)><rsup|B>d
      s d t->|<cell|>>|<row|<cell|>|<cell|<frac|<around*|\||a|\|><rsup|\<nu\>>\<Gamma\><around*|(|B+1|)>\<Gamma\><around*|(|A+1|)><sqrt|\<pi\>>\<Gamma\><around*|(|<frac|1+\<nu\>|2>|)>|\<Gamma\><around*|(|B+<frac|3|2>|)>\<Gamma\><around*|(|<frac|\<nu\>|2>+A+<frac|3|2>|)>>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-<frac|\<nu\>|2>,-<frac|1+\<nu\>|2>-A>>|<row|<cell|B+<frac|3|2>>>>>>;<frac|b<rsup|2>|a<rsup|2>>|)>>|<cell|>>>>
    </eqnarray>

    be defined for <math|Re<around*|(|\<nu\>|)>\<gtr\>0>. We then have
    <math|F<around*|(|\<nu\>|)>=O<around*|(|c<rsup|Re<around*|(|\<nu\>|)>>|)>>
    for some appropriate <math|c>. More precisely, there exists <math|c,C,b>
    such that for <math|Re<around*|(|\<nu\>|)>\<gtr\>b> we have
    <math|<around*|\||F<around*|(|\<nu\>|)>|\|>\<less\>C\<cdot\>e<rsup|Re<around*|(|\<nu\>|)>>>.
  </lemma>

  <\proof>
    First, it is clear that <math|<around*|\||a|\|><rsup|\<nu\>>=O<around*|(|<around*|\||\<nu\>|\|><rsup|Re<around*|(|\<nu\>|)>>|)>>.
    We next see that

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<around*|\||<big|int><rsub|s,t=-1><rsup|1><around*|\||s
      a-t b|\|><rsup|\<nu\>><around*|(|1-s<rsup|2>|)><rsup|A><around*|(|1-t<rsup|2>|)><rsup|B>d
      s d t|\|>\<leqslant\>4<around*|(|<around*|\||a|\|>+<around*|\||b|\|>|)><rsup|\<nu\>>,>|<cell|>>>>
    </eqnarray>

    hence the first addend is clearly <math|O<around*|(|<around*|(|<around*|\||a|\|>+<around*|\||b|\|>|)><rsup|Re<around*|(|\<nu\>|)>>|)>>.
    Similarly, Stirling's approximation implies that

    <\equation*>
      <frac|\<Gamma\><around*|(|B+1|)>\<Gamma\><around*|(|A+1|)><sqrt|\<pi\>>\<Gamma\><around*|(|<frac|1+\<nu\>|2>|)>|\<Gamma\><around*|(|B+<frac|3|2>|)>\<Gamma\><around*|(|<frac|\<nu\>|2>+A+<frac|3|2>|)>>=O<around*|(|c<rsup|Re<around*|(|\<nu\>|)>>|)>
      for appropriate<space|0.6spc>c\<gtr\>0.
    </equation*>

    Finally, series expansion tells us that

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<around*|\||
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-<frac|\<nu\>|2>,-<frac|1+\<nu\>|2>-A>>|<row|<cell|B+<frac|3|2>>>>>>;<frac|b<rsup|2>|a<rsup|2>>|)>|\|>\<leqslant\><rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|<around*|\||\<nu\>|\|>|2>,<around*|\||A|\|>+<frac|<around*|\||\<nu\>|\|>|2>>>|<row|<cell|B+<frac|3|2>>>>>>;<frac|b<rsup|2>|a<rsup|2>>|)>\<leqslant\>>|<cell|>>>>
    </eqnarray>

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-<frac|\<nu\>|2>,-<frac|1+\<nu\>|2>-A>>|<row|<cell|B+<frac|3|2>>>>>>;<frac|b<rsup|2>|a<rsup|2>>|)>=<around*|(|1-b<rsup|2>/a<rsup|2>|)><rsup|B+2+\<nu\>+A>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|B+<frac|\<nu\>+3|2>,A+B+<frac|\<nu\>+4|2>>>|<row|<cell|B+<frac|3|2>>>>>>;<frac|b<rsup|2>|a<rsup|2>>|)>>|<cell|>>>>
    </eqnarray>
  </proof>

  Fix the <math|Re<around*|(|a|)>,Re<around*|(|\<mu\>|)>,Re<around*|(|\<lambda\>|)>\<gtr\>0>
  and consider the function of <math|b> defined as

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|F<around*|(|b|)>\<equiv\>F<rsub|a,\<mu\>,\<lambda\>><around*|(|b|)>\<assign\>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|D<rprime|'>>sin<rsup|2\<mu\>+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)><around*|\||s-t*sin
    <around|(|\<varphi\>|)>|\|><rsup|b><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>d
    s d t d\<varphi\>->|<cell|>>|<row|<cell|>|<cell|-<frac|<sqrt|\<pi\>>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>|2><around*|\<nobracket\>||\<nobracket\>>\<cdot\><frac|\<Gamma\><around*|(|<frac|a+2b+2\<mu\>+2\<lambda\>+3|2>|)>\<Gamma\><around*|(|<frac|a+1|2>|)>\<Gamma\><around*|(|<frac|1+b|2>|)>|\<Gamma\><around*|(|<frac|a+b+2\<mu\>+2\<lambda\>+3|2>|)>\<Gamma\><around*|(|<frac|2+b+2\<lambda\>|2>|)>*\<Gamma\><around*|(|<frac|a+b+2\<mu\>+3|2>|)>>,>|<cell|>>>>
  </eqnarray>

  defined for <math|b>, such that <math|Re<around*|(|b|)>\<gtr\>0>. Now,
  <math|F<around*|(|\<cdot\>|)>> is holomorphic, as the second addend is
  clearly so (<math|\<Gamma\><around*|(|\<cdot\>|)>> is holomorphic on right
  half-plane) and the integral is holomorphic in <math|b>, as we can
  differentiate under the sign of integral, using the Lebesgue dominated
  convergence theorem. Hence, to prove the Lemma it suffices to show that
  <math|F<around*|(|\<cdot\>|)>> is constantly zero on
  <math|<around*|{|z\<in\>\<bbb-C\>\<mid\>Re<around*|(|z|)>\<gtr\>C|}>> for
  <math|C> big enough. Now, to apply Fact <reference|fact> it suffices to
  show that <math|F<around*|(|*\<cdot\>|)>> is bounded. For the first addend,
  we have an estimate

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<around*|\||<big|int><rsub|D<rprime|'>>sin<rsup|2\<mu\>+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)><around*|\||s-t*sin
    <around|(|\<varphi\>|)>|\|><rsup|b><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>d
    s d t d\<varphi\>|\|>\<leqslant\>4\<cdot\><frac|\<pi\>|2>\<cdot\>2<rsup|Re<around*|(|b|)>>,>|<cell|>>>>
  </eqnarray>

  while for the second addend, the Stirling approximation implies that the
  second addend is bounded. Hence, the Fact applies to the function
  <math|F<rprime|'><around*|(|b|)>\<assign\>F<around*|(|b|)>/2<rsup|b>>
  instead of <math|F<around*|(|\<cdot\>|)>> and <math|C> big enough..
</body>

<\initial>
  <\collection>
    <associate|magnification|1.2>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|eq-1|<tuple|1|1>>
    <associate|fact|<tuple|3|2>>
    <associate|lem1|<tuple|1|1>>
    <associate|lem2|<tuple|2|1>>
    <associate|lem3|<tuple|4|?>>
  </collection>
</references>