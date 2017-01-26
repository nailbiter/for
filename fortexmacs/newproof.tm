<TeXmacs|1.99.5>

<style|<tuple|article|number-europe>>

<\body>
  <date|>

  <\proposition>
    <label|newpf:prop>Let <math|\<cal-I\>\<assign\><around*|{|<around*|(|a,b|)>\<in\>\<bbb-N\><rsup|2>\<mid\>a+b\<in\>2\<bbb-N\>|}>>.

    <\enumerate>
      <item>For <math|<around*|(|a,b|)>\<in\>\<cal-I\>> and
      <math|\<alpha\>,\<beta\>,\<mu\>,\<nu\>\<in\>\<bbb-C\>> we have

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>><around*|(|1-w|)><rsup|\<beta\>-<frac|1|2>>w<rsup|\<mu\>-<frac|1|2>><around*|\||u-v|\|><rsup|-\<nu\>><wide|C|~><rsup|\<beta\>><rsub|a><around*|(|v,1-w<around*|(|1-v<rsup|2><rsup|>|)>|)><wide|C|~><rsup|\<alpha\>+<frac|1|2>><rsub|b><around*|(|u,1|)>d
        u v w=>|<cell|>>|<row|<cell|>|<cell|=<frac|2<rsup|a+b>\<Gamma\><around*|(|\<beta\>+<frac|1|2>+<around*|[|<frac|a+1|2>|]>|)>\<Gamma\><around*|(|\<alpha\>+1+<around*|[|<frac|b+1|2>|]>|)><around*|(|-1|)><rsup|<frac|a-b|2>><sqrt|\<pi\>>|a!
        b!>\<times\>>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|<frac|a+b+\<nu\>|2>|)>\<Gamma\><around*|(|\<mu\>-\<nu\>+\<alpha\>+\<beta\>+2|)>\<Gamma\><around*|(|\<mu\>+1/2|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|\<nu\>|2>|)>\<Gamma\><around*|(|<frac|3-a+b-\<nu\>+2\<alpha\>|2>|)>*<space|0.17em>\<Gamma\><around*|(|<frac|a+b+2\<mu\>-\<nu\>+2\<alpha\>+2\<beta\>+4|2>|)>\<Gamma\><around*|(|<frac|a-b+2\<mu\>-\<nu\>+2\<beta\>+3|2>|)>>.>|<cell|>>>>
      </eqnarray>

      <item>For <math|N\<in\>\<bbb-N\>> we have furthermore

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>><around*|(|1-w|)><rsup|\<beta\>-<frac|1|2>>w<rsup|\<mu\>-<frac|1|2>><around*|\||u-v|\|><rsup|-\<nu\>><wide|C|~><rsup|\<beta\>><rsub|a<rprime|'>><around*|(|v,1-w<around*|(|1-v<rsup|2><rsup|>|)>|)><wide|C|~><rsup|\<alpha\>+<frac|1|2>><rsub|b><around*|(|u,1|)><wide|C|~><rsup|\<beta\>+<frac|1|2>+a><rsub|2N><around*|(|<sqrt|w<around*|(|1-v<rsup|2>|)>>|)>d
        u v w=>|<cell|>>|<row|<cell|>|<cell|=<frac|2<rsup|a+b>\<Gamma\><around*|(|\<beta\>+<frac|1|2>+<around*|[|<frac|a+1|2>|]>|)>\<Gamma\><around*|(|\<alpha\>+1+<around*|[|<frac|b+1|2>|]>|)><around*|(|-1|)><rsup|<frac|a-b|2>+N><sqrt|\<pi\>>|a!
        b!N!>\<times\>>|<cell|>>|<row|<cell|>|<cell|\<times\><frac|\<Gamma\><around*|(|<frac|a+b+\<nu\>|2>|)>\<Gamma\><around*|(|\<mu\>-\<nu\>+\<alpha\>+\<beta\>+2|)>\<Gamma\><around*|(|\<mu\>+1/2|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|\<nu\>|2>|)>\<Gamma\><around*|(|<frac|3-a+b-\<nu\>+2\<alpha\>|2>|)>*<space|0.17em>\<Gamma\><around*|(|<frac|a+b+2\<mu\>-\<nu\>+2\<alpha\>+2\<beta\>+4|2>|)>\<Gamma\><around*|(|<frac|a-b+2\<mu\>-\<nu\>+2\<beta\>+3|2>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|\<times\>
        <rsub|4>F<rsub|3><around*|(|<stack|<tformat|<table|<row|<cell|-N,\<mu\>+<frac|1|2>,\<mu\>-\<nu\>+\<alpha\>+\<beta\>+2,\<beta\>+<frac|1|2>+a+N>>|<row|<cell|<frac|a+b+2\<mu\>-\<nu\>+2\<alpha\>+2\<beta\>+4|2>,<frac|a-b+2\<mu\>-\<nu\>+2\<beta\>+3|2>,<frac|1|2>>>>>>;1|)>.>|<cell|>>>>
      </eqnarray>
    </enumerate>
  </proposition>

  <\proof>
    Lemma <reference|newpf:lem-seconditem> implies that we can concentrate on
    the first item.

    For simplicity, we concentrate on case <math|b\<in\>2\<bbb-N\>> (other
    parity is done similarly).

    Lemma <reference|newpf:lem-reduction-to-b0> tells that we can assume
    <math|b=0>.

    Therefore, one needs to compute the integral

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><big|int><rsub|0><rsup|1><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>><around*|(|1-w|)><rsup|\<beta\>-1/2>w<rsup|\<mu\>-1/2><around*|\||u-v|\|><rsup|-\<nu\>><wide|C|~><rsup|\<beta\>><rsub|a<rprime|'>><around*|(|v,1-w<around*|(|1-v<rsup|2><rsup|>|)>|)>d
      w d u d v=>|<cell|>>>>
    </eqnarray>

    Lemma <reference|newpf:lem-twoeq> tells that it equals to

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|=<around*|(|<stack|<tformat|<table|<row|<cell|a+2\<beta\>-1>>|<row|<cell|a>>>>>|)><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><big|int><rsub|0><rsup|1><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>><around*|(|1-w|)><rsup|\<beta\>-1/2>w<rsup|\<mu\>-1/2><around*|\||u-v|\|><rsup|-\<nu\>>\<times\>>|<cell|>>|<row|<cell|>|<cell|=<around*|(|<stack|<tformat|<table|<row|<cell|a+2\<beta\>-1>>|<row|<cell|a>>>>>|)><big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|-a/2|)><rsub|i><around*|(|a/2+\<beta\>|)><rsub|i>|<around*|(|\<beta\>+1/2|)><rsub|i>i!>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|<around*|[|-1,1|]><rsup|2>><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>+i><around*|\||u-v|\|><rsup|-\<nu\>><around*|[|<big|int><rsub|0><rsup|1><around*|(|1-w|)><rsup|\<beta\>+i-1/2>w<rsup|\<mu\>-1/2><around*|(|1-w<around*|(|1-v<rsup|2><rsup|>|)>|)><rsup|<frac|a|2>-i>d
      w|]> d u d v=>|<cell|>>>>
    </eqnarray>

    Applying Lemma <reference|newpf:lem-crit> (with
    <math|\<beta\>+i\<rightsquigarrow\>\<beta\>>,
    <math|a/2-i\<rightsquigarrow\>i>) and doing the variable change
    <math|\<mu\>+\<beta\>\<rightsquigarrow\>\<mu\><rprime|'>> we continue as

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|=<around*|(|<stack|<tformat|<table|<row|<cell|a+2\<beta\>-1>>|<row|<cell|a<rprime|'>>>>>>|)><frac|\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)><sqrt|\<pi\>>\<Gamma\><around*|(|\<alpha\>+1|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>\<Gamma\><around*|(|\<beta\>+<frac|1|2>|)>|\<Gamma\><around*|(|<frac|3|2>+\<alpha\>-<frac|\<nu\>|2>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|-a/2|)><rsub|i><around*|(|a/2+\<beta\>|)><rsub|i>|i!><frac|\<Gamma\><around*|(|2+\<alpha\>+i+\<mu\><rprime|'>-\<nu\>|)>*|\<Gamma\><around*|(|<frac|3|2>+i+\<mu\><rprime|'>-<frac|\<nu\>|2>|)>\<Gamma\><around*|(|2+\<alpha\>+i+\<mu\><rprime|'>-<frac|\<nu\>|2>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<rsub|3>F<rsub|2><around*|(|<stack|<tformat|<table|<row|<cell|i-a/2,\<mu\><rprime|'>-\<beta\>+1/2,2+\<alpha\>+i+\<mu\><rprime|'>-\<nu\>>>|<row|<cell|3/2+i+\<mu\><rprime|'>-\<nu\>/2,2+\<alpha\>+i+\<mu\><rprime|'>-\<nu\>/2>>>>>;1|)>.>|<cell|>>>>
    </eqnarray>

    Now, Lemma <reference|newpf:lem-indep> implies that the sum is
    independent of <math|\<beta\>>, so we can take <math|\<beta\>=-a/2>, so
    to continue as

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|=<around*|(|<stack|<tformat|<table|<row|<cell|a+2\<beta\>-1>>|<row|<cell|a<rprime|'>>>>>>|)><frac|\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)><sqrt|\<pi\>>\<Gamma\><around*|(|\<alpha\>+1|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>\<Gamma\><around*|(|\<beta\>+<frac|1|2>|)>|\<Gamma\><around*|(|<frac|3|2>+\<alpha\>-<frac|\<nu\>|2>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|2+\<alpha\>+\<mu\><rprime|'>-\<nu\>|)>*|\<Gamma\><around*|(|<frac|3|2>+\<mu\><rprime|'>-<frac|\<nu\>|2>|)>\<Gamma\><around*|(|2+\<alpha\>+\<mu\><rprime|'>-<frac|\<nu\>|2>|)>>
      <rsub|3>F<rsub|2><around*|(|<stack|<tformat|<table|<row|<cell|-a/2,\<mu\><rprime|'>+a/2+1/2,2+\<alpha\>+\<mu\><rprime|'>-\<nu\>>>|<row|<cell|3/2+\<mu\><rprime|'>-\<nu\>/2,2+\<alpha\>+\<mu\><rprime|'>-\<nu\>/2>>>>>;1|)>>|<cell|>>|<row|<cell|>|<cell|,>|<cell|>>>>
    </eqnarray>

    and finally the equality follows by the formula the formula
    <cite-detail|NIST:DLMF|http://dlmf.nist.gov/16.4#E3> yields the result.
  </proof>

  <\lemma>
    <label|newpf:lem-seconditem>The second item of Proposition
    <reference|newpf:prop> follows from the first one.
  </lemma>

  <\proof>
    First of all, assuming the first item, making the substitution
    <math|\<mu\>\<rightsquigarrow\>\<mu\>+i>, we get

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>><around*|(|1-w|)><rsup|\<beta\>-<frac|1|2>>w<rsup|\<mu\>-<frac|1|2>><around*|\||u-v|\|><rsup|-\<nu\>><wide|C|~><rsup|\<beta\>><rsub|a><around*|(|v,1-w<around*|(|1-v<rsup|2><rsup|>|)>|)><wide|C|~><rsup|\<alpha\>+<frac|1|2>><rsub|b><around*|(|u,1|)>\<cdot\><around*|(|w<around*|(|1-v<rsup|2>|)>|)><rsup|i>d
      u v w=>|<cell|>>|<row|<cell|>|<cell|=<frac|2<rsup|a+b>\<Gamma\><around*|(|\<beta\>+<frac|1|2>+<around*|[|<frac|a+1|2>|]>|)>\<Gamma\><around*|(|\<alpha\>+1+<around*|[|<frac|b+1|2>|]>|)><around*|(|-1|)><rsup|<frac|a-b|2>><sqrt|\<pi\>>|a!
      b!>\<times\>>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|<frac|a+b+\<nu\>|2>|)>\<Gamma\><around*|(|\<mu\>-\<nu\>+\<alpha\>+\<beta\>+2+i|)>\<Gamma\><around*|(|\<mu\>+i+1/2|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|\<nu\>|2>|)>\<Gamma\><around*|(|<frac|3-a+b-\<nu\>+2\<alpha\>|2>|)>*<space|0.17em>\<Gamma\><around*|(|<frac|a+b+2\<mu\>-\<nu\>+2\<alpha\>+2\<beta\>+4|2>+i|)>\<Gamma\><around*|(|<frac|a-b+2\<mu\>-\<nu\>+2\<beta\>+3|2>+i|)>>.>|<cell|>>>>
    </eqnarray>

    the second is evident, once one uses the equality

    <\equation*>
      <wide|C|~><rsup|\<beta\>+<frac|1|2>+a><rsub|2N><around*|(|<sqrt|w<around*|(|1-v<rsup|2>|)>>|)>=<frac|<around*|(|-1|)><rsup|N>|N!><space|0.6spc><rsub|2>F<rsub|1><around*|(|-N,\<beta\>+<frac|1|2>+a+N;<frac|1|2>;w<around*|(|1-v<rsup|2>|)>|)>
    </equation*>

    and the expansion in series of <math|<rsub|2>F<rsub|1>>-hypergeometric
    function. Thus, we concentrate on the first item.
  </proof>

  <\lemma>
    <label|newpf:lem-reduction-to-b0>In order to prove the first item of
    Proposition <reference|newpf:prop> for all <math|b\<in\>2\<bbb-N\>>, it
    suffices to prove the case <math|b=0>.
  </lemma>

  <\proof>
    It is necessary to given an expression for an integral

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>><around*|(|1-w|)><rsup|\<beta\>-<frac|1|2>>w<rsup|\<mu\>-<frac|1|2>><around*|\||u-v|\|><rsup|-\<nu\>><wide|C|~><rsup|\<beta\>><rsub|a><around*|(|v,1-w<around*|(|1-v<rsup|2><rsup|>|)>|)><wide|C|~><rsup|\<alpha\>+<frac|1|2>><rsub|b><around*|(|u,1|)>d
      u v w.>|<cell|>>>>
    </eqnarray>

    We note that the only part of integral that depends on <math|u> is

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|\||u-v|\|><rsup|-\<nu\>><wide|C|~><rsup|\<alpha\>+<frac|1|2>><rsub|b><around*|(|u|)>=>|<cell|>>|<row|<cell|>|<cell|=<frac|<around*|(|-2|)><rsup|b>\<Gamma\><around*|(|n+2\<alpha\>+1|)>|b!\<Gamma\><around*|(|2n+2\<alpha\>+1|)>>\<cdot\><frac|d<rsup|n>|d
      u<rsup|n>><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>+n>,>|<cell|>>>>
    </eqnarray>

    we see that we can do integration by parts with respect to <math|u>, so
    to reduce to the case <math|b=0>.
  </proof>

  <\lemma>
    <label|newpf:lem-twoeq>The following holds:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><big|int><rsub|0><rsup|1><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>><around*|(|1-w|)><rsup|\<beta\>-1/2>w<rsup|\<mu\>-1/2><around*|\||u-v|\|><rsup|-\<nu\>>\<times\>C<rsup|\<beta\>><rsub|a><around*|(|v,1-w<around*|(|1-v<rsup|2>|)>|)>d
      w d u d v=>|<cell|>>|<row|<cell|>|<cell|<around*|(|<stack|<tformat|<table|<row|<cell|a+2\<beta\>-1>>|<row|<cell|a>>>>>|)><big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|-a/2|)><rsub|i><around*|(|a/2+\<beta\>|)><rsub|i>|<around*|(|\<beta\>+1/2|)><rsub|i>i!>\<times\>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|<around*|[|-1,1|]><rsup|2>><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>+i><around*|\||u-v|\|><rsup|-\<nu\>><around*|[|<big|int><rsub|0><rsup|1><around*|(|1-w|)><rsup|\<beta\>+i-1/2>w<rsup|\<mu\>-1/2><around*|(|1-w<around*|(|1-v<rsup|2><rsup|>|)>|)><rsup|<frac|a|2>-i>d
      w|]> d u d v>|<cell|>>>>
    </eqnarray>
  </lemma>

  <\proof>
    The well-known equality for Gegenbauer polynomials of even index

    <\equation*>
      C<rsup|\<lambda\>><rsub|2k><around*|(|x|)>=<binom|2k+2\<lambda\>-1|2k>
      <rsub|2>F<rsub|1><around*|(|-k,k+\<lambda\>;\<lambda\>+<frac|1|2>;1-x<rsup|2>|)>,
    </equation*>

    implies that the LHS equals to

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<around*|(|<stack|<tformat|<table|<row|<cell|a+2\<beta\>-1>>|<row|<cell|a>>>>>|)><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><big|int><rsub|0><rsup|1><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>><around*|(|1-w|)><rsup|\<beta\>-1/2>w<rsup|\<mu\>-1/2><around*|\||u-v|\|><rsup|-\<nu\>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-a/2,a/2+\<beta\>>>|<row|<cell|\<beta\>+1/2>>>>>;<frac|<around*|(|1-w|)><around*|(|1-v<rsup|2>|)>|1-w<around*|(|1-v<rsup|2><rsup|>|)>>|)><around*|(|1-w<around*|(|1-v<rsup|2><rsup|>|)>|)><rsup|<frac|a|2>>d
      w d u d v,>|<cell|>>>>
    </eqnarray>

    and one then just expands the hypergeometric function in power series.\ 
  </proof>

  <\lemma>
    <label|newpf:lem-crit>The following holds:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|<around*|[|-1,1|]><rsup|2>><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>><around*|\||u-v|\|><rsup|-\<nu\>><around*|[|<big|int><rsub|0><rsup|1><around*|(|1-w|)><rsup|\<beta\>-1/2><around*|(|1-w<around*|(|1-v<rsup|2><rsup|>|)>|)><rsup|i>w<rsup|\<mu\>-1/2>d
      w|]> d u d v=>|<cell|>>|<row|<cell|>|<cell|=<frac|<sqrt|\<pi\>>\<Gamma\><around*|(|\<alpha\>+1|)>\<Gamma\><around*|(|\<beta\>+<frac|1|2>|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|3|2>+\<alpha\>-<frac|\<nu\>|2>|)>><frac|\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)>\<Gamma\><around*|(|2+\<alpha\>+\<beta\>+\<mu\>+i-\<nu\>|)>*|\<Gamma\><around*|(|<frac|3|2>+\<beta\>+\<mu\>-<frac|\<nu\>|2>|)>\<Gamma\><around*|(|2+\<alpha\>+\<beta\>+\<mu\>+i-<frac|\<nu\>|2>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|\<times\><rsub|3>F<rsub|2><around*|(|<stack|<tformat|<table|<row|<cell|-i,\<mu\>+1/2,2+\<alpha\>+\<beta\>+\<mu\>+i-\<nu\>>>|<row|<cell|3/2+\<beta\>+\<mu\>+i-\<nu\>/2,2+\<alpha\>+\<beta\>+\<mu\>+i-\<nu\>/2>>>>>;1|)>.>|<cell|>>>>
    </eqnarray>
  </lemma>

  <\proof>
    The integral expression for hypergeometric function

    <\equation*>
      <big|int><rsub|0><rsup|1><around*|(|1-x|)><rsup|\<alpha\>><around*|(|1-z
      x|)><rsup|\<beta\>>x<rsup|\<gamma\>>=B<around*|(|\<gamma\>+1,\<alpha\>+1|)><rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-\<beta\>,\<gamma\>+1>>|<row|<cell|\<alpha\>+\<gamma\>+2>>>>>;z|)>
    </equation*>

    together with power series expansion of hypergeometric implies that the
    LHS equals to

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|B<around*|(|\<mu\>+<frac|1|2>,\<beta\>+<frac|1|2>|)><big|sum><rsub|j=0><rsup|\<infty\>><frac|<around*|(|-i|)><rsub|j><around*|(|\<mu\>+<frac|1|2>|)><rsub|j>|j!<around*|(|\<mu\>+\<beta\>+1|)><rsub|j>><big|int><rsub|<around*|[|-1,1|]><rsup|2>><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>+i><around*|\||u-v|\|><rsup|-\<nu\>>d
      u d v=>|<cell|>>|<row|<cell|>|<cell|<frac|B<around*|(|\<mu\>+<frac|1|2>,\<beta\>+<frac|1|2>|)>\<Gamma\><around*|(|1+\<beta\>+\<mu\>|)><sqrt|\<pi\>>\<Gamma\><around*|(|1+\<alpha\>|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|3|2>+\<alpha\>-<frac|\<nu\>|2>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<big|sum><rsub|j=0><rsup|\<infty\>><frac|<around*|(|-i|)><rsub|j><around*|(|\<mu\>+<frac|1|2>|)><rsub|j>|j!><frac|\<Gamma\><around*|(|2+j+\<alpha\>+\<beta\>+\<mu\>-\<nu\>|)>|\<Gamma\><around*|(|<frac|3|2>+j+\<beta\>+\<mu\>-<frac|\<nu\>|2>|)>\<Gamma\><around*|(|2+j+\<alpha\>+\<beta\>+\<mu\>-<frac|\<nu\>|2>|)>>>|<cell|>>>>
    </eqnarray>

    \;

    and the rest is just the definition of <math|<rsub|3>F<rsub|2>>.
  </proof>

  <\lemma>
    <label|newpf:lem-indep>The sum

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|-a/2|)><rsub|i><around*|(|a/2+\<beta\>|)><rsub|i>|i!><frac|\<Gamma\><around*|(|2+\<alpha\>+i+\<mu\><rprime|'>-\<nu\>|)>*|\<Gamma\><around*|(|<frac|3|2>+i+\<mu\><rprime|'>-<frac|\<nu\>|2>|)>\<Gamma\><around*|(|2+\<alpha\>+i+\<mu\><rprime|'>-<frac|\<nu\>|2>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<rsub|3>F<rsub|2><around*|(|<stack|<tformat|<table|<row|<cell|i-a/2,\<mu\><rprime|'>-\<beta\>+1/2,2+\<alpha\>+i+\<mu\><rprime|'>-\<nu\>>>|<row|<cell|3/2+i+\<mu\><rprime|'>-\<nu\>/2,2+\<alpha\>+i+\<mu\><rprime|'>-\<nu\>/2>>>>>;1|)>>|<cell|>>>>
    </eqnarray>

    is independent of <math|\<beta\>>.
  </lemma>

  <\proof>
    Indeed, expanding the hypergeometric, we have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|sum><rsub|i,j=0><rsup|\<infty\>><frac|<around*|(|-a/2|)><rsub|i+j>\<Gamma\><around*|(|2+\<alpha\>+i+\<mu\><rprime|'>-\<nu\>+j|)>*|\<Gamma\><around*|(|<frac|3|2>+i+j+\<mu\><rprime|'>-<frac|\<nu\>|2>|)>\<Gamma\><around*|(|2+\<alpha\>+i+j+\<mu\><rprime|'>-<frac|\<nu\>|2>|)>>\<times\><frac|<around*|(|a/2+\<beta\>|)><rsub|i><around*|(|\<mu\><rprime|'>-\<beta\>+1/2|)><rsub|j>|i!j!>=>|<cell|>>|<row|<cell|>|<cell|<big|sum><rsub|l=0><rsup|\<infty\>><frac|<around*|(|-a/2|)><rsub|l>\<Gamma\><around*|(|2+\<alpha\>+l+\<mu\><rprime|'>-\<nu\>|)>*|\<Gamma\><around*|(|<frac|3|2>+l+\<mu\><rprime|'>-<frac|\<nu\>|2>|)>\<Gamma\><around*|(|2+\<alpha\>+l+\<mu\><rprime|'>-<frac|\<nu\>|2>|)>><big|sum><rsub|i,j\<in\>\<bbb-N\>,i+j=l><frac|<around*|(|a/2+\<beta\>|)><rsub|i><around*|(|\<mu\><rprime|'>-\<beta\>+1/2|)><rsub|j>|i!j!>.>|<cell|>>>>
    </eqnarray>

    And the independence of <math|\<beta\>> follows, once one realizes that

    <\equation*>
      <big|sum><rsub|i,j\<in\>\<bbb-N\>,i+j=l><frac|<around*|(|a/2+\<beta\>|)><rsub|i><around*|(|\<mu\><rprime|'>-\<beta\>+1/2|)><rsub|j>|i!j!>
    </equation*>

    is the coefficient at <math|t<rsup|l>> of power series expansion of
    <math|<around*|(|1-t|)><rsup|a/2+\<beta\>><around*|(|1-t|)><rsup|\<mu\><rprime|'>-\<beta\>+1/2>>,
    and the latter expression is independent of <math|\<beta\>>.
  </proof>

  <\bibliography|bib|tm-plain|todai_master.bib>
    <\bib-list|2>
      <bibitem*|1><label|bib-kobayashi2015symmetry>T.<nbsp>Kobayashi<localize|
      and >B.<nbsp>Speh.<newblock> <with|font-shape|italic|Symmetry Breaking
      for Representations of Rank One Orthogonal Groups>, <localize|volume>
      <with|font-series|bold|238><localize| of
      ><with|font-shape|italic|<with|font-family|rm|font-shape|right|font-series|medium|Memoirs
      of the Amer. Math. Soc>>.<newblock> 2015.<newblock> Available at
      <slink|http://dx.doi.org/10.1090/memo/1126>.<newblock>

      <bibitem*|2><label|bib-NIST:DLMF>NIST Digital Library of Mathematical
      Functions.<newblock> http://dlmf.nist.gov/, Release 1.0.10 of
      2015-08-07.<newblock>
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
    <associate|auto-1|<tuple|5|4>>
    <associate|bib-NIST:DLMF|<tuple|2|4>>
    <associate|bib-kobayashi2015symmetry|<tuple|1|4>>
    <associate|newpf:def|<tuple|1|1>>
    <associate|newpf:lem-crit|<tuple|4|3>>
    <associate|newpf:lem-indep|<tuple|5|4>>
    <associate|newpf:lem-reduction-to-b0|<tuple|2|2>>
    <associate|newpf:lem-seconditem|<tuple|1|2>>
    <associate|newpf:lem-twoeq|<tuple|3|3>>
    <associate|newpf:prop|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      NIST:DLMF
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>