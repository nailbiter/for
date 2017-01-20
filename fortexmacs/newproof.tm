<TeXmacs|1.99.4>

<style|<tuple|article|number-europe>>

<\body>
  <\remark>
    For simplicity we assume <math|p\<gtr\>1>.
  </remark>

  <\definition>
    <label|newpf:def>For <math|<around*|(|a<rprime|'>,b|)>\<in\>\<cal-I\>> we
    define the linear functional

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|\<Psi\><rsub|a<rprime|'>,b><rsup|>:\<bbb-C\><around*|[|t|]>\<rightarrow\>\<frak-M\><around*|(|\<lambda\>,\<nu\>|)>>|<cell|>>|<row|<cell|>|<cell|\<Psi\><rsub|a<rprime|'>,b><around*|(|P|)>\<equiv\>\<Psi\><rsub|a<rprime|'>,b><rsup|p,q><around*|(|P|)>\<assign\>>|<cell|>>|<row|<cell|>|<cell|\<assign\><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-u<rsup|2>|)><rsup|<frac|q-2|2>><around*|(|1-v<rsup|2>|)><rsup|<frac|\<lambda\>+\<nu\>-q|2>-1><around*|(|1-w<rsup|2>|)><rsup|<frac|p-3|2>><around*|\||w|\|><rsup|\<lambda\>+\<nu\>-n><around*|\||u-v|\|><rsup|-\<nu\>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<space|2em>\<times\><wide|C|~><rsup|<frac|p|2>-1><rsub|a<rprime|'>><around*|(|<frac|v|<sqrt|1-w<rsup|2><around*|(|1-v<rsup|2><rsup|>|)>>>|)><around*|(|1-w<rsup|2><around*|(|1-v<rsup|2><rsup|>|)>|)><rsup|<frac|a<rprime|'>|2>><wide|<wide|C|~>|~><rsup|<frac|q-1|2>><rsub|b><around*|(|u|)>P<around*|(|w<rsup|2><around*|(|1-v<rsup|2>|)>|)>d
      u d v u w,>|<cell|>>>>
    </eqnarray>
  </definition>

  <\proposition>
    <label|newpf:prop>

    <\enumerate>
      <item>Moreover, for <math|<around*|(|a<rprime|'>,b|)>\<in\>\<cal-I\>>
      and <math|N\<in\>\<bbb-N\>> we have <math|\<Psi\>
      <rsub|a<rprime|'>,b><around*|(|t<rsup|N>|)><around*|(|\<lambda\>,\<nu\>|)>>
      being equal to

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|<frac|p-2|2>|)>|\<Gamma\><around*|(|<frac|p-2|2>+<around*|[|<frac|a<rprime|'>|2>|]>|)>><frac|(p-2)<rsub|a<rprime|'>><around*|(|-1|)><rsup|<frac|a<rprime|'>-b|2>><around*|(|q|)><rsub|b>|a<rprime|'>!
        b!><around*|\<nobracket\>|\<times\>\<pi\>\<Gamma\><around*|(|<frac|p-1|2>|)>\<Gamma\><around*|(|q|)>2<rsup|1-q>|\<nobracket\>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|<frac|a<rprime|'>+b+\<nu\>|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>+N|)>\<Gamma\><around*|(|<frac|1+\<lambda\>+\<nu\>-n|2>+N|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|\<nu\>|2>|)>\<Gamma\><around*|(|<frac|1-a<rprime|'>+b-\<nu\>+q|2>|)>*<space|0.17em>\<Gamma\><around*|(|<frac|a<rprime|'>+b+\<lambda\>|2>+N|)>*<space|0.17em>\<Gamma\><around*|(|<frac|1+a<rprime|'>-b+\<lambda\>-q|2>+N|)>>;>|<cell|>>>>
      </eqnarray>

      <item>for <math|<around*|(|a,b|)>\<in\>\<cal-I\>> we have <math|
      \<Psi\><rsub|a<rprime|'>,b><around*|(|<wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a<rprime|'>><rsub|a-a<rprime|'>><around*|(|<sqrt|t>|)>|)><around*|(|\<lambda\>,\<nu\>|)>>
      being equal to

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<frac|<around*|(|<frac|p+1|2>|)><rsub|<around*|(|a-a<rprime|'>|)>/2>|\<Gamma\>*<around*|(|1+<frac|a-a<rprime|'>|2>|)>>
        <frac|(p-2)<rsub|a<rprime|'>><around*|(|-1|)><rsup|<frac|a<rprime|'>-b|2>><around*|(|q|)><rsub|b>|<around*|(|<frac|p-2|2>|)><rsub|<around*|[|a<rprime|'>/2|]>>a<rprime|'>!
        b!><around*|\<nobracket\>|\<times\>\<pi\>\<Gamma\><around*|(|<frac|p+1|2>|)>\<Gamma\><around*|(|<frac|p-1|2>|)>\<Gamma\><around*|(|q|)>2<rsup|1-q>|\<nobracket\>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|<frac|a<rprime|'>+b+\<nu\>|2>|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|1+\<lambda\>+\<nu\>-n|2>|)>|\<Gamma\><around*|(|<frac|\<nu\>|2>|)>\<Gamma\><around*|(|<frac|1-a<rprime|'>+b-\<nu\>+q|2>|)>\<Gamma\><around*|(|<frac|a<rprime|'>+b+\<lambda\>|2>|)>*<space|0.17em>\<Gamma\><around*|(|<frac|1+a<rprime|'>-b+\<lambda\>-q|2>|)>><space|0.6spc><rsub|4>F<rsub|3><around*|(|<stack|<tformat|<table|<row|<cell|<frac|\<lambda\>-\<nu\>|2>,<frac|a<rprime|'>-a|2>,<frac|\<lambda\>+\<nu\>-n+1|2>,<frac|p-1+a<rprime|'>+a|2>>>|<row|<cell|<frac|a<rprime|'>+b+\<lambda\>|2>,<frac|1|2>,<frac|1+a<rprime|'>-b+\<lambda\>-q|2>>>>>>;1|)>.>|<cell|>>>>
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

    Therefore, one needs to compute the integral (doing the variable change
    <math|w<rsup|2>\<rightsquigarrow\>w>)

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><big|int><rsub|0><rsup|1><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>><around*|(|1-w|)><rsup|\<beta\>-1/2>w<rsup|\<mu\>-1/2><around*|\||u-v|\|><rsup|-\<nu\>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<space|2em>\<times\>C<rsup|\<beta\>><rsub|a<rprime|'>><around*|(|<frac|v|<sqrt|1-w<around*|(|1-v<rsup|2><rsup|>|)>>>|)><around*|(|1-w<around*|(|1-v<rsup|2><rsup|>|)>|)><rsup|<frac|a<rprime|'>|2>>d
      w d u d v=,>|<cell|>>|<row|<cell|>|<cell|<around*|(|<frac|q-1|2>\<rightsquigarrow\>\<alpha\>,<space|1em><frac|\<lambda\>+\<nu\>-n+1+2N|2>\<rightsquigarrow\>\<mu\>,<space|1em><frac|p-2|2>\<rightsquigarrow\>\<beta\>|)>>|<cell|>>>>
    </eqnarray>

    Lemma <reference|newpf:lem-twoeq> tells that it equals to

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|=<around*|(|<stack|<tformat|<table|<row|<cell|a<rprime|'>+2\<beta\>-1>>|<row|<cell|a<rprime|'>>>>>>|)><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><big|int><rsub|0><rsup|1><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>><around*|(|1-w|)><rsup|\<beta\>-1/2>w<rsup|\<mu\>-1/2><around*|\||u-v|\|><rsup|-\<nu\>>\<times\>>|<cell|>>|<row|<cell|>|<cell|=<around*|(|<stack|<tformat|<table|<row|<cell|a<rprime|'>+2\<beta\>-1>>|<row|<cell|a<rprime|'>>>>>>|)><big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|-a<rprime|'>/2|)><rsub|i><around*|(|a<rprime|'>/2+\<beta\>|)><rsub|i>|<around*|(|\<beta\>+1/2|)><rsub|i>i!>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|<around*|[|-1,1|]><rsup|2>><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>+i><around*|\||u-v|\|><rsup|-\<nu\>><around*|[|<big|int><rsub|0><rsup|1><around*|(|1-w|)><rsup|\<beta\>+i-1/2>w<rsup|\<mu\>-1/2><around*|(|1-w<around*|(|1-v<rsup|2><rsup|>|)>|)><rsup|<frac|a<rprime|'>|2>-i>d
      w|]> d u d v=>|<cell|>>>>
    </eqnarray>

    Applying Lemma <reference|newpf:lem-crit> (with
    <math|\<beta\>+i\<rightsquigarrow\>\<beta\>>,
    <math|a<rprime|'>/2-i\<rightsquigarrow\>i>) and doing the variable change
    <math|\<mu\>+\<beta\>\<rightsquigarrow\>\<mu\><rprime|'>> we continue as

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|=<around*|(|<stack|<tformat|<table|<row|<cell|a<rprime|'>+2\<beta\>-1>>|<row|<cell|a<rprime|'>>>>>>|)><frac|\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)><sqrt|\<pi\>>\<Gamma\><around*|(|\<alpha\>+1|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>\<Gamma\><around*|(|\<beta\>+<frac|1|2>|)>|\<Gamma\><around*|(|<frac|3|2>+\<alpha\>-<frac|\<nu\>|2>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|-a<rprime|'>/2|)><rsub|i><around*|(|a<rprime|'>/2+\<beta\>|)><rsub|i>|i!><frac|\<Gamma\><around*|(|2+\<alpha\>+i+\<mu\><rprime|'>-\<nu\>|)>*|\<Gamma\><around*|(|<frac|3|2>+i+\<mu\><rprime|'>-<frac|\<nu\>|2>|)>\<Gamma\><around*|(|2+\<alpha\>+i+\<mu\><rprime|'>-<frac|\<nu\>|2>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<rsub|3>F<rsub|2><around*|(|<stack|<tformat|<table|<row|<cell|i-a<rprime|'>/2,\<mu\><rprime|'>-\<beta\>+1/2,2+\<alpha\>+i+\<mu\><rprime|'>-\<nu\>>>|<row|<cell|3/2+i+\<mu\><rprime|'>-\<nu\>/2,2+\<alpha\>+i+\<mu\><rprime|'>-\<nu\>/2>>>>>;1|)>.>|<cell|>>>>
    </eqnarray>

    Now, Lemma <reference|newpf:lem-indep> implies that the sum is
    independent of <math|\<beta\>>, so we can take
    <math|\<beta\>=-a<rprime|'>/2>, so to continue as

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|=<around*|(|<stack|<tformat|<table|<row|<cell|a<rprime|'>+2\<beta\>-1>>|<row|<cell|a<rprime|'>>>>>>|)><frac|\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)><sqrt|\<pi\>>\<Gamma\><around*|(|\<alpha\>+1|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>\<Gamma\><around*|(|\<beta\>+<frac|1|2>|)>|\<Gamma\><around*|(|<frac|3|2>+\<alpha\>-<frac|\<nu\>|2>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|2+\<alpha\>+\<mu\><rprime|'>-\<nu\>|)>*|\<Gamma\><around*|(|<frac|3|2>+\<mu\><rprime|'>-<frac|\<nu\>|2>|)>\<Gamma\><around*|(|2+\<alpha\>+\<mu\><rprime|'>-<frac|\<nu\>|2>|)>>
      <rsub|3>F<rsub|2><around*|(|<stack|<tformat|<table|<row|<cell|-a<rprime|'>/2,\<mu\><rprime|'>+a<rprime|'>/2+1/2,2+\<alpha\>+\<mu\><rprime|'>-\<nu\>>>|<row|<cell|3/2+\<mu\><rprime|'>-\<nu\>/2,2+\<alpha\>+\<mu\><rprime|'>-\<nu\>/2>>>>>;1|)>>|<cell|>>|<row|<cell|>|<cell|,>|<cell|>>>>
    </eqnarray>

    and finally the equality follows by the formula the formula
    <cite-detail|NIST:DLMF|http://dlmf.nist.gov/16.4#E3> yields the result.
  </proof>

  <\lemma>
    <label|newpf:lem-seconditem>The second item of Proposition
    <reference|newpf:prop> follows from the first one.
  </lemma>

  <\proof>
    First of all, assuming the first item, the second is evident, once one
    uses the equality

    <\equation*>
      <wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a<rprime|'>><rsub|a-a<rprime|'>><around*|(|<sqrt|t>|)>=<frac|<around*|(|-1|)><rsup|<frac|a-a<rprime|'>|2>>\<Gamma\><around*|(|<frac|a+a<rprime|'>|2>+<frac|p+1|2>|)>|\<Gamma\>*<around*|(|1+<frac|a-a<rprime|'>|2>|)>><space|0.6spc><rsub|2>F<rsub|1><around*|(|<frac|a<rprime|'>-a|2>,<frac|p-1+a<rprime|'>+a|2>;<frac|1|2>;t|)>
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
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-u<rsup|2>|)><rsup|<frac|q-2|2>><around*|(|1-v<rsup|2>|)><rsup|<frac|\<lambda\>+\<nu\>-q|2>-1+N><around*|(|1-w<rsup|2>|)><rsup|<frac|p-3|2>><around*|\||w|\|><rsup|\<lambda\>+\<nu\>-n+2N><around*|\||u-v|\|><rsup|-\<nu\>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<space|2em>\<times\><wide|C|~><rsup|<frac|p|2>-1><rsub|a<rprime|'>><around*|(|<frac|v|<sqrt|1-w<rsup|2><around*|(|1-v<rsup|2><rsup|>|)>>>|)><around*|(|1-w<rsup|2><around*|(|1-v<rsup|2><rsup|>|)>|)><rsup|<frac|a<rprime|'>|2>><wide|<wide|C|~>|~><rsup|<frac|q-1|2>><rsub|b><around*|(|u|)>d
      u d v u w.>|<cell|>>>>
    </eqnarray>

    From now on, we assume <math|b\<in\>2\<bbb-N\>> (the opposite case is
    handled similarly). We note that the only part of integral that depends
    on <math|u> is

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<around*|(|1-u<rsup|2>|)><rsup|<frac|q-2|2>><around*|\||u-v|\|><rsup|-\<nu\>><wide|<wide|C|~>|~><rsup|<frac|q-1|2>><rsub|b><around*|(|u|)>=>|<cell|>>|<row|<cell|>|<cell|=<frac|<around*|(|-2|)><rsup|b>|b!>\<cdot\>\<Gamma\><around*|(|<frac|q+1|2>+b|)>\<cdot\><frac|\<Gamma\><around*|(|b+q-1|)>|\<Gamma\><around*|(|q-1+2b|)>>\<cdot\><around*|\||u-v|\|><rsup|-\<nu\>><frac|d<rsup|b>|d
      u<rsup|b>><around*|(|1-u<rsup|2>|)><rsup|<frac|q-1|2>+b>,>|<cell|>>>>
    </eqnarray>

    we see that we can do integration by parts with respect to <math|u>, so
    to reduce to the case <math|b=0>, which is what we assume in subsequent.
  </proof>

  <\lemma>
    <label|newpf:lem-twoeq>The following holds:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><big|int><rsub|0><rsup|1><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>><around*|(|1-w|)><rsup|\<beta\>-1/2>w<rsup|\<mu\>-1/2><around*|\||u-v|\|><rsup|-\<nu\>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<space|2em>\<times\>C<rsup|\<beta\>><rsub|a<rprime|'>><around*|(|<frac|v|<sqrt|1-w<around*|(|1-v<rsup|2><rsup|>|)>>>|)><around*|(|1-w<around*|(|1-v<rsup|2><rsup|>|)>|)><rsup|<frac|a<rprime|'>|2>>d
      w d u d v=>|<cell|>>|<row|<cell|>|<cell|=<around*|(|<stack|<tformat|<table|<row|<cell|a<rprime|'>+2\<beta\>-1>>|<row|<cell|a<rprime|'>>>>>>|)><big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|-a<rprime|'>/2|)><rsub|i><around*|(|a<rprime|'>/2+\<beta\>|)><rsub|i>|<around*|(|\<beta\>+1/2|)><rsub|i>i!>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|<around*|[|-1,1|]><rsup|2>><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>+i><around*|\||u-v|\|><rsup|-\<nu\>><around*|[|<big|int><rsub|0><rsup|1><around*|(|1-w|)><rsup|\<beta\>+i-1/2>w<rsup|\<mu\>-1/2><around*|(|1-w<around*|(|1-v<rsup|2><rsup|>|)>|)><rsup|<frac|a<rprime|'>|2>-i>d
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
      <tformat|<table|<row|<cell|>|<cell|<around*|(|<stack|<tformat|<table|<row|<cell|a<rprime|'>+2\<beta\>-1>>|<row|<cell|a<rprime|'>>>>>>|)><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><big|int><rsub|0><rsup|1><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>><around*|(|1-w|)><rsup|\<beta\>-1/2>w<rsup|\<mu\>-1/2><around*|\||u-v|\|><rsup|-\<nu\>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-a<rprime|'>/2,a<rprime|'>/2+\<beta\>>>|<row|<cell|\<beta\>+1/2>>>>>;<frac|<around*|(|1-w|)><around*|(|1-v<rsup|2>|)>|1-w<around*|(|1-v<rsup|2><rsup|>|)>>|)><around*|(|1-w<around*|(|1-v<rsup|2><rsup|>|)>|)><rsup|<frac|a<rprime|'>|2>>d
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
    We note that beta-integral and Proposition 6.1 readily give the
    <math|i=0> case:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|<around*|[|-1,1|]><rsup|2>><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>><around*|\||u-v|\|><rsup|-\<nu\>><around*|[|<big|int><rsub|0><rsup|1><around*|(|1-w|)><rsup|\<beta\>-1/2>w<rsup|\<mu\>-1/2>d
      w|]>d u d v=F<around*|(|\<alpha\>,\<beta\>,\<mu\>,\<nu\>|)>:=>|<cell|>>|<row|<cell|>|<cell|\<assign\>\<Gamma\><around*|(|\<beta\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)>\<times\><frac|<sqrt|\<pi\>>\<Gamma\><around*|(|\<alpha\>+1|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>\<Gamma\><around*|(|2+\<alpha\>+\<beta\>+\<mu\>-\<nu\>|)>*|\<Gamma\><around*|(|<frac|3|2>+\<alpha\>-<frac|\<nu\>|2>|)>\<Gamma\><around*|(|<frac|3|2>+\<beta\>+\<mu\>-<frac|\<nu\>|2>|)>\<Gamma\><around*|(|2+\<alpha\>+\<beta\>+\<mu\>-<frac|\<nu\>|2>|)>>.>|<cell|>>>>
    </eqnarray>

    Now, for the general case, we employ the equality

    <\equation*>
      <around*|(|1-w<around*|(|1-v<rsup|2>|)>|)><rsup|i>=<rsub|1>F<rsub|0><around*|(|-i;;w<around*|(|1-v<rsup|2>|)>|)>,
    </equation*>

    and expand the latter hypergeometric in series, so to get

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|<around*|[|-1,1|]><rsup|2>><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>><around*|\||u-v|\|><rsup|-\<nu\>><around*|[|<big|int><rsub|0><rsup|1><around*|(|1-w|)><rsup|\<beta\>-1/2>w<rsup|\<mu\>-1/2><around*|(|1-w<around*|(|1-v<rsup|2><rsup|>|)>|)><rsup|i>d
      w|]> d u d v=>|<cell|>>|<row|<cell|>|<cell|=<big|sum><rsub|j=0><rsup|\<infty\>><frac|<around*|(|-i|)><rsub|j>|j!><big|int><rsub|<around*|[|-1,1|]><rsup|2>><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>+i><around*|\||u-v|\|><rsup|-\<nu\>><around*|[|<big|int><rsub|0><rsup|1><around*|(|1-w|)><rsup|\<beta\>-1/2>w<rsup|\<mu\>+i-1/2>d
      w|]> d u d v=>|<cell|>>|<row|<cell|>|<cell|=<big|sum><rsub|j=0><rsup|\<infty\>><frac|<around*|(|-i|)><rsub|j>|j!>F<around*|(|\<alpha\>,\<beta\>,\<mu\>+i,\<nu\>|)>=<frac|<sqrt|\<pi\>>\<Gamma\><around*|(|\<alpha\>+1|)>\<Gamma\><around*|(|\<beta\>+<frac|1|2>|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|3|2>+\<alpha\>-<frac|\<nu\>|2>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|\<times\><big|sum><rsub|j=0><rsup|\<infty\>><frac|<around*|(|-i|)><rsub|j>|j!><frac|\<Gamma\><around*|(|\<mu\>+i+<frac|1|2>|)>\<Gamma\><around*|(|2+\<alpha\>+\<beta\>+\<mu\>+i-\<nu\>|)>*|\<Gamma\><around*|(|<frac|3|2>+\<beta\>+\<mu\>+i-<frac|\<nu\>|2>|)>\<Gamma\><around*|(|2+\<alpha\>+\<beta\>+\<mu\>+i-<frac|\<nu\>|2>|)>>>|<cell|>>>>
    </eqnarray>

    and the rest follows.
  </proof>

  <\lemma>
    <label|newpf:lem-indep>The sum

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|-a<rprime|'>/2|)><rsub|i><around*|(|a<rprime|'>/2+\<beta\>|)><rsub|i>|i!><frac|\<Gamma\><around*|(|2+\<alpha\>+i+\<mu\><rprime|'>-\<nu\>|)>*|\<Gamma\><around*|(|<frac|3|2>+i+\<mu\><rprime|'>-<frac|\<nu\>|2>|)>\<Gamma\><around*|(|2+\<alpha\>+i+\<mu\><rprime|'>-<frac|\<nu\>|2>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<rsub|3>F<rsub|2><around*|(|<stack|<tformat|<table|<row|<cell|i-a<rprime|'>/2,\<mu\><rprime|'>-\<beta\>+1/2,2+\<alpha\>+i+\<mu\><rprime|'>-\<nu\>>>|<row|<cell|3/2+i+\<mu\><rprime|'>-\<nu\>/2,2+\<alpha\>+i+\<mu\><rprime|'>-\<nu\>/2>>>>>;1|)>>|<cell|>>>>
    </eqnarray>

    is independent of <math|\<beta\>>.
  </lemma>

  <\proof>
    Indeed, expanding the hypergeometric, we have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|sum><rsub|i,j=0><rsup|\<infty\>><frac|<around*|(|-a<rprime|'>/2|)><rsub|i+j>\<Gamma\><around*|(|2+\<alpha\>+i+\<mu\><rprime|'>-\<nu\>+j|)>*|\<Gamma\><around*|(|<frac|3|2>+i+j+\<mu\><rprime|'>-<frac|\<nu\>|2>|)>\<Gamma\><around*|(|2+\<alpha\>+i+j+\<mu\><rprime|'>-<frac|\<nu\>|2>|)>>\<times\><frac|<around*|(|a<rprime|'>/2+\<beta\>|)><rsub|i><around*|(|\<mu\><rprime|'>-\<beta\>+1/2|)><rsub|j>|i!j!>=>|<cell|>>|<row|<cell|>|<cell|<big|sum><rsub|l=0><rsup|\<infty\>><frac|<around*|(|-a<rprime|'>/2|)><rsub|l>\<Gamma\><around*|(|2+\<alpha\>+l+\<mu\><rprime|'>-\<nu\>|)>*|\<Gamma\><around*|(|<frac|3|2>+l+\<mu\><rprime|'>-<frac|\<nu\>|2>|)>\<Gamma\><around*|(|2+\<alpha\>+l+\<mu\><rprime|'>-<frac|\<nu\>|2>|)>><big|sum><rsub|i,j\<in\>\<bbb-N\>,i+j=l><frac|<around*|(|a<rprime|'>/2+\<beta\>|)><rsub|i><around*|(|\<mu\><rprime|'>-\<beta\>+1/2|)><rsub|j>|i!j!>.>|<cell|>>>>
    </eqnarray>

    And the independence of <math|\<beta\>> follows, once one realizes that

    <\equation*>
      <big|sum><rsub|i,j\<in\>\<bbb-N\>,i+j=l><frac|<around*|(|a<rprime|'>/2+\<beta\>|)><rsub|i><around*|(|\<mu\><rprime|'>-\<beta\>+1/2|)><rsub|j>|i!j!>
    </equation*>

    is the coefficient at <math|t<rsup|l>> of power series expansion of
    <math|<around*|(|1-t|)><rsup|a<rprime|'>/2+\<beta\>>\<cdot\><around*|(|1-t|)><rsup|\<mu\><rprime|'>-\<beta\>+1/2>>,
    and the latter expression is independent of <math|\<beta\>>.
  </proof>

  <\bibliography|bib|tm-plain|todai_master.bib>
    <\bib-list|1>
      <bibitem*|1><label|bib-NIST:DLMF>NIST Digital Library of Mathematical
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
    <associate|auto-1|<tuple|5|5|../../.TeXmacs/texts/scratch/no_name_23.tm>>
    <associate|bib-NIST:DLMF|<tuple|1|5|../../.TeXmacs/texts/scratch/no_name_23.tm>>
    <associate|newpf:def|<tuple|1|1|../../.TeXmacs/texts/scratch/no_name_23.tm>>
    <associate|newpf:lem-crit|<tuple|4|3|../../.TeXmacs/texts/scratch/no_name_23.tm>>
    <associate|newpf:lem-indep|<tuple|5|4|../../.TeXmacs/texts/scratch/no_name_23.tm>>
    <associate|newpf:lem-reduction-to-b0|<tuple|2|2|../../.TeXmacs/texts/scratch/no_name_23.tm>>
    <associate|newpf:lem-seconditem|<tuple|1|2|../../.TeXmacs/texts/scratch/no_name_23.tm>>
    <associate|newpf:lem-twoeq|<tuple|3|3|../../.TeXmacs/texts/scratch/no_name_23.tm>>
    <associate|newpf:lem1|<tuple|2|?|../../.TeXmacs/texts/scratch/no_name_23.tm>>
    <associate|newpf:prop|<tuple|1|1|../../.TeXmacs/texts/scratch/no_name_23.tm>>
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