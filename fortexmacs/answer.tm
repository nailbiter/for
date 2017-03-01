<TeXmacs|1.99.5>

<style|<tuple|article|number-europe>>

<\body>
  <\hide-preamble>
    \;

    <assign|enumerate|<\macro|body>
      <\with|enumerate-level|<plus|<value|enumerate-level>|2>>
        <compound|<merge|enumerate-|<enumerate-reduce|<value|enumerate-level>>>|<arg|body>>
      </with>
    </macro>>

    \;
  </hide-preamble>

  '<date|>

  <\question>
    <label|q1>How does the statement of Proposition 6.4

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-u<rsup|2>|)><rsup|<frac|q-2|2>><around*|(|1-v<rsup|2>|)><rsup|<frac|\<lambda\>+\<nu\>-q|2>-1><around*|(|1-w<rsup|2>|)><rsup|<frac|p-3|2>><around*|\||w|\|><rsup|\<lambda\>+\<nu\>-n><around*|\||u-v|\|><rsup|-\<nu\>>\<times\>>>|<row|<cell|<space|2em>\<times\><wide|C|~><rsup|<frac|p|2>-1><rsub|a<rprime|'>><around*|(|<frac|v|<sqrt|1-w<rsup|2><around*|(|1-v<rsup|2><rsup|>|)>>>|)><around*|(|1-w<rsup|2><around*|(|1-v<rsup|2><rsup|>|)>|)><rsup|<frac|a<rprime|'>|2>><wide|<wide|C|~>|~><rsup|<frac|q-1|2>><rsub|b><around*|(|u|)><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a<rprime|'>><rsub|a-a<rprime|'>><around*|(|<sqrt|w<rsup|2><around*|(|1-v<rsup|2>|)>>|)>d
      u d v d w,>>>>>
    </equation*>

    changes, if in the integral we do variable change
    <math|<around*|(|u,v,w|)>\<rightarrow\><around*|(|u,v,z|)>> with
    <math|z=<sqrt|1-w<rsup|2><around*|(|1-v<rsup|2>|)>>>?
  </question>

  <\answer>
    It becomes:\ 
  </answer>

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D><around*|(|1-u<rsup|2>|)><rsup|<frac|q-2|2>><around*|(|z<rsup|2>-v<rsup|2>|)><rsup|<frac|p-3|2>><around*|(|1-z<rsup|2>|)><rsup|<frac|\<lambda\>+\<nu\>-n-1|2>><around*|\||u-v|\|><rsup|-\<nu\>><wide|C|~><rsup|<frac|p|2>-1><rsub|a<rprime|'>><around*|(|<frac|v|z>|)>z<rsup|a<rprime|'>+1><wide|<wide|C|~>|~><rsup|<frac|q-1|2>><rsub|b><around*|(|u|)><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a<rprime|'>><rsub|a-a<rprime|'>><around*|(|<sqrt|1-z<rsup|2>>|)>=>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|<frac|a<rprime|'>+b+\<nu\>|2>|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|1+\<lambda\>+\<nu\>-n|2>|)>|\<Gamma\><around*|(|<frac|\<nu\>|2>|)>\<Gamma\><around*|(|<frac|1-a<rprime|'>+b-\<nu\>+q|2>|)>\<Gamma\><around*|(|<frac|a<rprime|'>+b+\<lambda\>|2>|)>*<space|0.17em>\<Gamma\><around*|(|<frac|1+a<rprime|'>-b+\<lambda\>-q|2>|)>>\<times\><wide|c|~><rsub|p,q,a<rprime|'>,a,b>>|<cell|>>|<row|<cell|>|<cell|<space|0.6spc><rsub|4>F<rsub|3><around*|(|<stack|<tformat|<table|<row|<cell|<frac|\<lambda\>-\<nu\>|2>,<frac|a<rprime|'>-a|2>,<frac|\<lambda\>+\<nu\>-n+1|2>,<frac|p-1+a<rprime|'>+a|2>>>|<row|<cell|<frac|a<rprime|'>+b+\<lambda\>|2>,<frac|1|2>,<frac|1+a<rprime|'>-b+\<lambda\>-q|2>>>>>>;1|)>>|<cell|>>>>
  </eqnarray>

  where

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|D\<assign\><around*|{|<around*|(|u,v,z|)>\<in\><around*|[|-1,1|]>\<times\><around*|[|0,1|]><rsup|2>\<mid\>v\<leqslant\>z|}>,>|<cell|>>|<row|<cell|>|<cell|<wide|c|~><rsub|p,q,a<rprime|'>,a,b>:=c<rsub|p,q,a<rprime|'>,a,b>/2.>|<cell|>>>>
  </eqnarray>

  and <math|c<rsub|p,q,a<rprime|'>,a,b>\<neq\>0> is the constant depending
  only on <math|<around*|(|p,q,a<rprime|'>,a,b|)>>, the one mentioned in
  Proposition 6.4.

  <\question>
    How does the equality of Question 1 changes if we use unnormalized
    Gegenbauer polynomials?
  </question>

  Recall that

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<wide|<wide|C|~>|~><rsup|\<mu\>><rsub|N><around*|(|t|)>=<around*|(|\<mu\>+<frac|N|2>|)>\<Gamma\><around*|(|\<mu\>|)>C<rsup|\<mu\>><rsub|N><around*|(|t|)>>|<cell|>>|<row|<cell|>|<cell|<wide|C|~><rsub|N><rsup|\<mu\>><around*|(|t|)>=<frac|\<Gamma\><around*|(|\<mu\>|)>|\<Gamma\><around*|(|\<mu\>+<around*|[|<frac|N|2>|]>|)>>C<rsup|\<mu\>><rsub|N><around*|(|t|)>.>|<cell|>>>>
  </eqnarray>

  Hence

  <\equation*>
    <tabular|<tformat|<table|<row|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-u<rsup|2>|)><rsup|<frac|q-2|2>><around*|(|1-v<rsup|2>|)><rsup|<frac|\<lambda\>+\<nu\>-q|2>-1><around*|(|1-w<rsup|2>|)><rsup|<frac|p-3|2>><around*|\||w|\|><rsup|\<lambda\>+\<nu\>-n><around*|\||u-v|\|><rsup|-\<nu\>>\<times\>>>|<row|<cell|<space|2em>\<times\><wide|C|~><rsup|<frac|p|2>-1><rsub|a<rprime|'>><around*|(|<frac|v|<sqrt|1-w<rsup|2><around*|(|1-v<rsup|2><rsup|>|)>>>|)><around*|(|1-w<rsup|2><around*|(|1-v<rsup|2><rsup|>|)>|)><rsup|<frac|a<rprime|'>|2>><wide|<wide|C|~>|~><rsup|<frac|q-1|2>><rsub|b><around*|(|u|)><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a<rprime|'>><rsub|a-a<rprime|'>><around*|(|<sqrt|w<rsup|2><around*|(|1-v<rsup|2>|)>>|)>d
    u d v d w=>>|<row|<cell|=<frac|\<Gamma\><around*|(|<frac|p-2|2>|)>\<Gamma\><around*|(|<frac|q-1|2>|)><around*|(|<frac|q-1+b|2>|)>\<Gamma\><around*|(|<frac|p-1|2>+a<rprime|'>|)><around*|(|<frac|p-1|2>+<frac|a+a<rprime|'>|2>|)>|\<Gamma\><around*|(|<frac|p-2|2>+<around*|[|<frac|a<rprime|'>|2>|]>|)>>\<times\>>>|<row|<cell|\<times\><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-u<rsup|2>|)><rsup|<frac|q-2|2>><around*|(|1-v<rsup|2>|)><rsup|<frac|\<lambda\>+\<nu\>-q|2>-1><around*|(|1-w<rsup|2>|)><rsup|<frac|p-3|2>><around*|\||w|\|><rsup|\<lambda\>+\<nu\>-n><around*|\||u-v|\|><rsup|-\<nu\>>\<times\>>>|<row|<cell|<space|2em>\<times\>C<rsup|<frac|p|2>-1><rsub|a<rprime|'>><around*|(|<frac|v|<sqrt|1-w<rsup|2><around*|(|1-v<rsup|2><rsup|>|)>>>|)><around*|(|1-w<rsup|2><around*|(|1-v<rsup|2><rsup|>|)>|)><rsup|<frac|a<rprime|'>|2>><wide|<wide|C|~>|~><rsup|<frac|q-1|2>><rsub|b><around*|(|u|)><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a<rprime|'>><rsub|a-a<rprime|'>><around*|(|<sqrt|w<rsup|2><around*|(|1-v<rsup|2>|)>>|)>d
    u d v d w.>>>>>
  </equation*>

  Therefore, the equality in Question 1 becomes

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D><around*|(|1-u<rsup|2>|)><rsup|<frac|q-2|2>><around*|(|z<rsup|2>-v<rsup|2>|)><rsup|<frac|p-3|2>><around*|(|1-z<rsup|2>|)><rsup|<frac|\<lambda\>+\<nu\>-n-1|2>><around*|\||u-v|\|><rsup|-\<nu\>>C<rsup|<frac|p|2>-1><rsub|a<rprime|'>><around*|(|<frac|v|z>|)>z<rsup|a<rprime|'>+1>C<rsup|<frac|q-1|2>><rsub|b><around*|(|u|)>C<rsup|<frac|p-1|2>+a<rprime|'>><rsub|a-a<rprime|'>><around*|(|<sqrt|1-z<rsup|2>>|)>=>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|<frac|a<rprime|'>+b+\<nu\>|2>|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|1+\<lambda\>+\<nu\>-n|2>|)>|\<Gamma\><around*|(|<frac|\<nu\>|2>|)>\<Gamma\><around*|(|<frac|1-a<rprime|'>+b-\<nu\>+q|2>|)>\<Gamma\><around*|(|<frac|a<rprime|'>+b+\<lambda\>|2>|)>*<space|0.17em>\<Gamma\><around*|(|<frac|1+a<rprime|'>-b+\<lambda\>-q|2>|)>>\<times\><frac|\<Gamma\><around*|(|<frac|p-2|2>|)>\<Gamma\><around*|(|<frac|q-1|2>|)><around*|(|<frac|q-1+b|2>|)>\<Gamma\><around*|(|<frac|p-1|2>+a<rprime|'>|)><around*|(|<frac|p-1|2>+<frac|a+a<rprime|'>|2>|)>|\<Gamma\><around*|(|<frac|p-2|2>+<around*|[|<frac|a<rprime|'>|2>|]>|)>>\<times\><wide|c|~><rsub|p,q,a<rprime|'>,a,b>>|<cell|>>|<row|<cell|>|<cell|<space|0.6spc><rsub|4>F<rsub|3><around*|(|<stack|<tformat|<table|<row|<cell|<frac|\<lambda\>-\<nu\>|2>,<frac|a<rprime|'>-a|2>,<frac|\<lambda\>+\<nu\>-n+1|2>,<frac|p-1+a<rprime|'>+a|2>>>|<row|<cell|<frac|a<rprime|'>+b+\<lambda\>|2>,<frac|1|2>,<frac|1+a<rprime|'>-b+\<lambda\>-q|2>>>>>>;1|)>>|<cell|>>>>
  </eqnarray>

  <\question>
    In the statement of Proposition 6.4, is it essential that
    <math|<around*|(|p,q|)>\<in\>\<bbb-N\><rsub|+>>?
  </question>

  <\answer>
    No, we can assume barely <math|p,q\<in\>\<bbb-C\>> (note that the
    domain-of-convergence part of Proposition 6.4 will change accordingly).
  </answer>

  <\question>
    What does the integral in Question <reference|q1> becomes if we do
    variable substitution

    <\equation*>
      <choice|<tformat|<table|<row|<cell|u=\<theta\>,>>|<row|<cell|<frac|v|z>=cos\<psi\>,>>|<row|<cell|z=cos\<varphi\>?>>>>>
    </equation*>
  </question>

  <\answer>
    As we have

    <\equation*>
      <frac|\<partial\><around*|(|u,v,z|)>|\<partial\><around*|(|\<theta\>,\<psi\>,\<varphi\>|)>>=<det|<tformat|<table|<row|<cell|cos\<theta\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-cos\<varphi\>sin\<psi\>>|<cell|-sin\<varphi\>cos\<psi\>>>|<row|<cell|0>|<cell|0>|<cell|-sin\<varphi\>>>>>>=cos<around*|(|\<theta\>|)>sin<around*|(|\<varphi\>|)>cos<around*|(|\<varphi\>|)>sin<around*|(|\<psi\>|)>,
    </equation*>

    it becomes:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-\<pi\>/2><rsup|\<pi\>/2><big|int><rsub|0><rsup|\<pi\>/2><big|int><rsub|0><rsup|\<pi\>/2>cos<rsup|q-1><around*|(|\<theta\>|)>cos<rsup|p-1+a<rprime|'>><around*|(|\<varphi\>|)>sin<rsup|p-2><around*|(|\<psi\>|)>sin<rsup|\<lambda\>+\<nu\>-n>\<varphi\><around*|\||sin\<theta\>-cos\<psi\>cos\<varphi\>|\|><rsup|-\<nu\>>>|<cell|>>|<row|<cell|>|<cell|<wide|<wide|C|~>|~><rsup|<frac|q-1|2>><rsub|b><around*|(|sin\<theta\>|)><wide|C|~><rsup|<frac|p|2>-1><rsub|a<rprime|'>><around*|(|cos\<psi\>|)><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a<rprime|'>><rsub|a-a<rprime|'>><around*|(|sin\<varphi\>|)>d\<psi\>d\<varphi\>d\<theta\>.>|<cell|>>>>
    </eqnarray>
  </answer>

  <\definition>
    We let <math|<wide|\<Gamma\>|~><around*|(|x|)>\<assign\>\<Gamma\><around*|(|x|)>>
    if <math|x\<nin\>-\<bbb-N\>> and <math|\<assign\>1> otherwise.
  </definition>

  <\question>
    What becomes to previous question when we introduce the following
    notation:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|v<rsub|l><rsup|\<lambda\>><around*|(|\<theta\>|)>\<assign\><around*|(|sin\<theta\>|)><rsup|2\<lambda\>>C<rsup|\<lambda\>><rsub|l><around*|(|cos\<theta\>|)>>|<cell|>>|<row|<cell|>|<cell|<frac|q-1|2>\<rightsquigarrow\>\<lambda\>,>|<cell|b\<rightsquigarrow\>l,>>|<row|<cell|>|<cell|<frac|p|2>-1\<rightsquigarrow\>\<mu\>,>|<cell|a<rprime|'>\<rightsquigarrow\>m,>>|<row|<cell|>|<cell|<frac|p-1|2>+a<rprime|'>\<rightsquigarrow\>\<nu\>,>|<cell|a-a<rprime|'>\<rightsquigarrow\>n,>>|<row|<cell|>|<cell|\<lambda\>+\<nu\>-<around*|(|p+q|)>\<rightsquigarrow\>a,>|<cell|\<nu\>\<rightsquigarrow\>b?>>>>
    </eqnarray>
  </question>

  <\answer>
    We have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|n\<rightsquigarrow\>2\<lambda\>+2\<mu\>+3>|<cell|>>|<row|<cell|>|<cell|\<lambda\>-\<nu\>\<rightsquigarrow\>a+2\<lambda\>+2\<mu\>+3-2b>|<cell|>>|<row|<cell|>|<cell|\<lambda\>\<rightsquigarrow\>a+2\<lambda\>+2\<mu\>+3-b>|<cell|>>>>
    </eqnarray>

    Hence, it becomes

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|\<nu\>|)>\<Gamma\><around*|(|\<nu\>+n/2|)><around*|(|-1|)><rsup|b>\<times\>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|0><rsup|\<pi\>><big|int><rsub|0><rsup|\<pi\>/2><big|int><rsub|0><rsup|\<pi\>/2>sin<rsup|-m><around*|(|\<varphi\>|)>cos<rsup|a>\<varphi\><around*|\||cos\<theta\>-cos\<psi\>sin\<varphi\>|\|><rsup|-b>v<rsup|\<lambda\>><rsub|l><around*|(|\<theta\>|)>v<rsub|m><rsup|\<mu\>><around*|(|\<psi\>|)>v<rsub|n><rsup|\<nu\>><around*|(|\<varphi\>|)>d\<psi\>d\<varphi\>d\<theta\>=>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|<frac|m+l+b|2>|)>\<Gamma\><around*|(|<frac|1-b|2>|)>\<Gamma\><around*|(|<frac|a+2\<lambda\>+2\<mu\>+3-2b|2>|)>\<Gamma\><around*|(|<frac|1+a|2>|)>|\<Gamma\><around*|(|<frac|b|2>|)>\<Gamma\><around*|(|<frac|2-m+l-b+2\<lambda\>|2>|)>\<Gamma\><around*|(|<frac|m+l+a+2\<lambda\>+2\<mu\>+3-b|2>|)>*<space|0.17em>\<Gamma\><around*|(|<frac|m-l+a+2\<mu\>+3-b|2>|)>>>|<cell|>>|<row|<cell|>|<cell|<frac|(2\<mu\>)<rsub|m+n><around*|(|-1|)><rsup|<frac|m-l|2>>|\<Gamma\>*<around*|(|1+n/2|)>\<Gamma\>(m+1)\<Gamma\><around*|(|l+1|)>><around*|\<nobracket\>|\<times\>\<pi\>\<Gamma\><around*|(|\<mu\>+<frac|3|2>+<frac|n|2>|)><wide|\<Gamma\>|~><around*|(|\<mu\>+<frac|1|2>|)>\<Gamma\><around*|(|2\<lambda\>+l|)>2<rsup|-2\<lambda\>>|\<nobracket\>>\<times\>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<space|0.6spc><rsub|4>F<rsub|3><around*|(|<stack|<tformat|<table|<row|<cell|<frac|a+2\<lambda\>+2\<mu\>+3-2b|2>,-<frac|n|2>,<frac|a+1|2>,\<mu\>+n/2>>|<row|<cell|<frac|m+l+a+2\<lambda\>+2\<mu\>+3-b|2>,<frac|1|2>,<frac|m-l+a+2\<mu\>+3-b|2>>>>>>;1|)>.>|<cell|>>>>
    </eqnarray>
  </answer>

  The conditions are:

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|\<lambda\>,\<mu\>,\<nu\>\<in\>\<bbb-C\>;<space|1em>a,b\<in\>\<bbb-C\>;<space|1em>l,m\<in\>\<bbb-N\>,n\<in\>2\<bbb-N\>;>|<cell|>>|<row|<cell|>|<cell|l+m\<in\>2\<bbb-N\>,<space|1em>\<nu\>-\<mu\>=m+<frac|1|2>.>|<cell|>>>>
  </eqnarray>

  <\remark>
    Note that all the manipulatons done in Question 5 and prior to it make
    sense only under the assumption <math|p\<gtr\>1> (nevertheless, for
    <math|p=1> similar manipulations can be introduced).
  </remark>

  <\question>
    Are any particular cases of the

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>><around*|(|1-w|)><rsup|\<beta\>-<frac|1|2>><around*|\||w|\|><rsup|\<mu\>-<frac|1|2>><around*|\||u-v|\|><rsup|-\<nu\>><wide|C|~><rsup|\<beta\>><rsub|a<rprime|'>><around*|(|v,1-w<around*|(|1-v<rsup|2><rsup|>|)>|)><wide|<wide|C|~>|~><rsup|\<alpha\>-<frac|1|2>><rsub|b><around*|(|u|)>d
      u d v d w,>|<cell|>>|<row|<cell|>|<cell|D\<assign\><around*|{|<around*|(|u,v,w|)>\<in\><around*|[|-1,1|]><rsup|2>\<times\><around*|[|0,1|]>|}>.>|<cell|>>|<row|<cell|>|<cell|\<alpha\>,\<beta\>,\<mu\>,\<nu\>\<in\>\<bbb-C\>;<space|1em>a<rprime|'>,b\<in\>\<bbb-N\>\<mid\>a+b\<in\>2\<bbb-N\>.>|<cell|>>>>
    </eqnarray>

    Now, the known special cases of the latter integral are a

    quation in question 6 are known?
  </question>

  To my current knowledge, the known cases are:

  <\enumerate>
    <item>The partial case <math|l=m=n=0> is Proposition 6.1;
  </enumerate>

  <\definition>
    For <math|x,y\<in\>\<bbb-C\>> we let

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|B<around*|(|x,y|)>\<assign\><frac|\<Gamma\><around*|(|x|)>\<Gamma\><around*|(|y|)>|\<Gamma\><around*|(|x+y|)>><big|int><rsub|0><rsup|1><around*|(|1-t|)><rsup|x-1>t<rsup|y-1>d
      t.>|<cell|>>>>
    </eqnarray>
  </definition>

  <\question>
    How does the first equality in Question 8 changes if we do variable
    change:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<around*|[|<stack|<tformat|<table|<row|<cell|u>>|<row|<cell|v>>|<row|<cell|z>>>>>|]>\<rightsquigarrow\><around*|[|<stack|<tformat|<table|<row|<cell|\<theta\>=arccos<around*|(|u|)>>>|<row|<cell|\<psi\>=arccos<around*|(|<frac|v|<sqrt|1-w<around*|(|1-v<rsup|2>|)>>>|)>>>|<row|<cell|\<varphi\>=arcsin<around*|(|<sqrt|1-w<around*|(|1-v<rsup|2>|)>>|)>>>>>>|]>?>|<cell|>>>>
    </eqnarray>
  </question>

  <\answer>
    The inverse transform and Jacobial are

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|u=cos<around*|(|\<theta\>|)>,<space|1em>v=sin<around*|(|\<varphi\>|)>cos<around*|(|\<psi\>|)>,<space|1em>w=<frac|cos<rsup|2><around*|(|\<varphi\>|)>|1-cos<rsup|2>\<psi\>sin<rsup|2>\<varphi\>>>|<cell|>>|<row|<cell|>|<cell|<frac|\<partial\><around*|(|u,v,\<omega\>|)>|\<partial\><around*|(|\<theta\>,\<psi\>,\<varphi\>|)>>=<frac|2cos<around*|(|\<varphi\>|)>sin<around*|(|\<theta\>|)>sin<rsup|2><around*|(|\<varphi\>|)>sin<around*|(|\<psi\>|)>|1-cos<rsup|2><around*|(|\<psi\>|)>sin<rsup|2><around*|(|\<varphi\>|)>>>|<cell|>>>>
    </eqnarray>

    Hence the equality becomes is:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D>sin<rsup|2\<beta\>+a<rprime|'>+1><around|(|\<varphi\>|)>cos<rsup|2\<mu\>><around|(|\<varphi\>|)><around*|\||cos
      <around|(|\<theta\>|)>-cos <around|(|\<psi\>|)>*sin
      <around|(|\<varphi\>|)>|\|><rsup|-\<nu\>><wide|v|~><rsup|\<beta\>><rsub|a<rprime|'>><around*|(|\<psi\>|)><wide|v|~><rsup|\<alpha\>+<frac|1|2>><rsub|b><around*|(|\<theta\>|)>=>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|\<alpha\>+<frac|1|2>+<around*|[|<frac|b+1|2>|]>|)>\<Gamma\><around*|(|\<beta\>|)>|\<Gamma\><around*|(|\<beta\>+<around*|[|<frac|a<rprime|'>+1|2>|]>|)>><frac|(2\<beta\>)<rsub|a<rprime|'>><around*|(|-1|)><rsup|<frac|a<rprime|'>-b|2>><around*|(|2\<alpha\>+1|)><rsub|b>|a<rprime|'>!
      b!><around*|\<nobracket\>|\<times\>\<pi\>\<Gamma\><around*|(|\<beta\>+<frac|1|2>|)>\<Gamma\><around*|(|2\<alpha\>+1|)>2<rsup|-1-2\<alpha\>>|\<nobracket\>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|<frac|a<rprime|'>+b+\<nu\>|2>|)>\<Gamma\><around*|(|\<mu\>-\<nu\>+\<alpha\>+\<beta\>+2|)>\<Gamma\><around*|(|\<mu\>+1/2|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|\<nu\>|2>|)>\<Gamma\><around*|(|<frac|3-a<rprime|'>+b-\<nu\>+2\<alpha\>|2>|)>*<space|0.17em>\<Gamma\><around*|(|<frac|a<rprime|'>+b+2\<mu\>-\<nu\>+2\<alpha\>+2\<beta\>+4|2>|)>\<Gamma\><around*|(|<frac|a<rprime|'>-b+2\<mu\>-\<nu\>+2\<beta\>+3|2>|)>>,>|<cell|>>>>
    </eqnarray>

    where <math|<wide|v|~><rsub|l><rsup|\<lambda\>><around*|(|\<theta\>|)>\<assign\><around*|(|sin\<theta\>|)><rsup|2\<lambda\>><wide|C|~><rsup|\<lambda\>><rsub|l><around*|(|cos\<theta\>|)>>
    and <math|D\<assign\><around*|{|<around*|(|\<theta\>,\<psi\>,\<varphi\>|)>\<in\><around*|[|0,\<pi\>|]>\<times\><around*|[|0,<frac|\<pi\>|2>|]><rsup|2>|}>>.

    If we further do the substitutions

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|a<rprime|'>\<rightsquigarrow\>a,<space|1em>\<alpha\>+<frac|1|2>\<rightsquigarrow\>\<beta\>,<space|1em>\<beta\>\<rightsquigarrow\>\<alpha\>,>|<cell|>>>>
    </eqnarray>

    it becomes

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D>sin<rsup|2\<alpha\>+a+1><around|(|\<varphi\>|)>cos<rsup|2\<mu\>><around|(|\<varphi\>|)><around*|\||cos
      <around|(|\<theta\>|)>-cos <around|(|\<psi\>|)>*sin
      <around|(|\<varphi\>|)>|\|><rsup|-\<nu\>><wide|v|~><rsup|\<alpha\>><rsub|a><around*|(|\<psi\>|)><wide|v|~><rsup|\<beta\>><rsub|b><around*|(|\<theta\>|)>=<htab|5mm>>|<cell|>>|<row|<cell|>|<cell|=<frac|2<rsup|a+b-1>\<Gamma\><around*|(|\<alpha\>+<frac|1|2>+<around*|[|<frac|a|2>|]>|)><around*|(|-1|)><rsup|<frac|a-b|2>><sqrt|\<pi\>>\<Gamma\><around*|(|\<beta\>+<around*|[|b/2|]>+<frac|1|2>|)>|a!
      b!><around*|\<nobracket\>||\<nobracket\>>>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|<frac|a+b+\<nu\>|2>|)>\<Gamma\><around*|(|\<mu\>-\<nu\>+\<alpha\>+\<beta\>+3/2|)>\<Gamma\><around*|(|\<mu\>+1/2|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|\<nu\>|2>|)>\<Gamma\><around*|(|<frac|a+b+2\<mu\>-\<nu\>+2\<alpha\>+2\<beta\>+3|2>|)>\<Gamma\><around*|(|<frac|2-a+b-\<nu\>+2\<beta\>|2>|)>*\<Gamma\><around*|(|<frac|a-b+2\<mu\>-\<nu\>+2\<alpha\>+3|2>|)>>,>|<cell|>>>>
    </eqnarray>

    or using the beta function defined above,

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D>sin<rsup|2\<alpha\>+a+1><around|(|\<varphi\>|)>cos<rsup|2\<mu\>><around|(|\<varphi\>|)><around*|\||cos
      <around|(|\<theta\>|)>-cos <around|(|\<psi\>|)>*sin
      <around|(|\<varphi\>|)>|\|><rsup|-\<nu\>><wide|v|~><rsup|\<alpha\>><rsub|a><around*|(|\<psi\>|)><wide|v|~><rsup|\<beta\>><rsub|b><around*|(|\<theta\>|)>=<htab|5mm>>|<cell|>>|<row|<cell|>|<cell|=<frac|2<rsup|a+b-1>\<Gamma\><around*|(|\<alpha\>+<frac|1|2>+<around*|[|<frac|a|2>|]>|)><around*|(|-1|)><rsup|<frac|a-b|2>><sqrt|\<pi\>>\<Gamma\><around*|(|\<beta\>+<around*|[|<frac|b|2>|]>+<frac|1|2>|)>|a!
      b!><around*|\<nobracket\>||\<nobracket\>>>|<cell|>>|<row|<cell|>|<cell|<frac|B<around*|(|<frac|a+b+\<nu\>|2>,\<mu\>-\<nu\>+\<alpha\>+\<beta\>+3/2|)>\<Gamma\><around*|(|\<mu\>+1/2|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|\<nu\>|2>|)>\<Gamma\><around*|(|<frac|2-a+b-\<nu\>+2\<beta\>|2>|)>*\<Gamma\><around*|(|<frac|a-b+2\<mu\>-\<nu\>+2\<alpha\>+3|2>|)>>.>|<cell|>>>>
    </eqnarray>

    Finally, making the substitution:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|\<beta\>\<rightsquigarrow\>\<lambda\>,b\<rightsquigarrow\>l,\<alpha\>\<rightsquigarrow\>\<mu\>,a\<rightsquigarrow\>m,\<mu\>\<rightsquigarrow\>a/2,\<nu\>\<rightsquigarrow\>b,>|<cell|>>>>
    </eqnarray>

    we get

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D>sin<rsup|2\<mu\>+m+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)><around*|\||cos
      <around|(|\<theta\>|)>-cos <around|(|\<psi\>|)>*sin
      <around|(|\<varphi\>|)>|\|><rsup|-b><wide|v|~><rsup|\<lambda\>><rsub|l><around*|(|\<theta\>|)><wide|v|~><rsup|\<mu\>><rsub|m><around*|(|\<psi\>|)>d\<theta\>d\<psi\>d\<varphi\>=<htab|5mm>>|<cell|>>|<row|<cell|>|<cell|=<frac|2<rsup|m+l-1><around*|(|-1|)><rsup|<frac|m-l|2>><sqrt|\<pi\>>\<Gamma\><around*|(|\<mu\>+<frac|1|2>+<around*|[|<frac|m|2>|]>|)>\<Gamma\><around*|(|\<lambda\>+<around*|[|<frac|l|2>|]>+<frac|1|2>|)>|a!
      b!><around*|\<nobracket\>||\<nobracket\>>\<times\><eq-number><label|eq-2>>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|<frac|m+l+b|2>|)>\<Gamma\><around*|(|<frac|a-2b+2\<mu\>+2\<lambda\>+3|2>|)>\<Gamma\><around*|(|<frac|a+1|2>|)>\<Gamma\><around*|(|<frac|1-b|2>|)>|\<Gamma\><around*|(|<frac|b|2>|)>\<Gamma\><around*|(|<frac|m+l+a-b+2\<mu\>+2\<lambda\>+3|2>|)>\<Gamma\><around*|(|<frac|2-m+l-b+2\<lambda\>|2>|)>*\<Gamma\><around*|(|<frac|m-l+a-b+2\<mu\>+3|2>|)>>.>|<cell|>>>>
    </eqnarray>

    or

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D>sin<rsup|2\<mu\>+m+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)><around*|\||cos
      <around|(|\<theta\>|)>-cos <around|(|\<psi\>|)>*sin
      <around|(|\<varphi\>|)>|\|><rsup|-b><wide|v|~><rsup|\<lambda\>><rsub|l><around*|(|\<theta\>|)><wide|v|~><rsup|\<mu\>><rsub|m><around*|(|\<psi\>|)>d\<theta\>d\<psi\>d\<varphi\>=<htab|5mm>>|<cell|>>|<row|<cell|>|<cell|=<frac|2<rsup|m+l-1><around*|(|-1|)><rsup|<frac|m-l|2>><sqrt|\<pi\>>\<Gamma\><around*|(|\<mu\>+<frac|1|2>+<around*|[|<frac|m|2>|]>|)>\<Gamma\><around*|(|\<lambda\>+<around*|[|<frac|l|2>|]>+<frac|1|2>|)>|a!
      b!><around*|\<nobracket\>||\<nobracket\>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<frac|B<around*|(|<frac|m+l+b|2>,<frac|a-2b+2\<mu\>+2\<lambda\>+3|2>|)>\<Gamma\><around*|(|<frac|a+1|2>|)>\<Gamma\><around*|(|<frac|1-b|2>|)>|\<Gamma\><around*|(|<frac|b|2>|)>\<Gamma\><around*|(|<frac|2-m+l-b+2\<lambda\>|2>|)>*\<Gamma\><around*|(|<frac|m-l+a-b+2\<mu\>+3|2>|)>>.>|<cell|>>|<row|<cell|>|<cell|\<lambda\>,\<mu\>,a,b\<in\>\<bbb-C\>;<space|1em>l,m\<in\>\<bbb-N\>\<mid\>l+m\<in\>2\<bbb-N\>>|<cell|>>>>
    </eqnarray>
  </answer>

  <\question>
    Which specializations of integral in Question 7 are previously known?
  </question>

  <\definition>
    For <math|\<mu\>\<in\>\<bbb-C\>,N\<in\>\<bbb-N\>>, let polynomial
    <math|<wide|C|~><rsub|N><rsup|\<mu\>><around*|(|s,t|)>> be defined as

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<wide|C|~><rsub|N><rsup|\<mu\>><around*|(|s,t|)>\<assign\><frac|\<Gamma\><around*|(|\<mu\>|)>|\<Gamma\><around*|(|\<mu\>+<around*|[|<frac|N+1|2>|]>|)>>C<around*|(|<frac|s|<sqrt|t>>|)>t<rsup|N/2>.>|<cell|>>>>
    </eqnarray>
  </definition>

  <\answer>
    For simplicity, we shall use the <math|<around*|(|u,v,w|)>>-variables
    from Question 1:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-u<rsup|2>|)><rsup|<frac|q-2|2>><around*|(|1-v<rsup|2>|)><rsup|<frac|\<lambda\>+\<nu\>-q|2>+N-1><around*|(|1-w<rsup|2>|)><rsup|<frac|p-3|2>><around*|\||w|\|><rsup|\<lambda\>+\<nu\>-n+2N><around*|\||u-v|\|><rsup|-\<nu\>><wide|C|~><rsup|<frac|p|2>-1><rsub|a<rprime|'>><around*|(|v,<sqrt|1-w<rsup|2><around*|(|1-v<rsup|2><rsup|>|)>>|)><wide|<wide|C|~>|~><rsup|<frac|q-1|2>><rsub|b><around*|(|u|)>d
      u d v d w.>|<cell|>>>>
    </eqnarray>

    We also do the parameter and variable substitutions,

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|w<rsup|2>\<rightsquigarrow\>w,<frac|\<lambda\>+\<nu\>-n|2>+N\<rightsquigarrow\>\<mu\>,<frac|p-2|2>\<rightsquigarrow\>\<beta\>,<frac|q-2|2>\<rightsquigarrow\>\<alpha\>>|<cell|>>>>
    </eqnarray>

    so to get

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>><around*|(|1-w|)><rsup|\<beta\>-<frac|1|2>><around*|\||w|\|><rsup|\<mu\>-<frac|1|2>><around*|\||u-v|\|><rsup|-\<nu\>><wide|C|~><rsup|\<beta\>><rsub|a<rprime|'>><around*|(|v,1-w<around*|(|1-v<rsup|2><rsup|>|)>|)><wide|C|~><rsup|\<alpha\>+<frac|1|2>><rsub|b><around*|(|u,1|)>d
      u v w=>|<cell|>>|<row|<cell|>|<cell|<frac|2<rsup|a<rprime|'>+b>\<Gamma\><around*|(|\<beta\>+<frac|1|2>+<around*|[|<frac|a<rprime|'>+1|2>|]>|)>\<Gamma\><around*|(|\<alpha\>+1+<around*|[|<frac|b+1|2>|]>|)><around*|(|-1|)><rsup|<frac|a<rprime|'>-b|2>><sqrt|\<pi\>>|a<rprime|'>!
      b!>\<cdot\><frac|B<around*|(|<frac|a<rprime|'>+b+\<nu\>|2>,\<mu\>-\<nu\>+\<alpha\>+\<beta\>+2|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|\<nu\>|2>|)>\<Gamma\><around*|(|<frac|3-a<rprime|'>+b-\<nu\>+2\<alpha\>|2>|)>\<Gamma\><around*|(|<frac|a<rprime|'>-b+2\<mu\>-\<nu\>+2\<beta\>+3|2>|)>><label|eq:q8-1><eq-number>>|<cell|>>|<row|<cell|>|<cell|D\<assign\><around*|{|<around*|(|u,v,w|)>\<in\><around*|[|-1,1|]><rsup|2>\<times\><around*|[|0,1|]>|}>.>|<cell|>>|<row|<cell|>|<cell|\<alpha\>,\<beta\>,\<mu\>,\<nu\>\<in\>\<bbb-C\>;<space|1em>a<rprime|'>,b\<in\>\<bbb-N\>\<mid\>a+b\<in\>2\<bbb-N\>.>|<cell|>>>>
    </eqnarray>

    We further do the substitutions:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|a<rprime|'>\<rightsquigarrow\>m,\<alpha\>+<frac|1|2>\<rightsquigarrow\>\<lambda\>,\<mu\>\<rightsquigarrow\>a/2,\<beta\>\<rightsquigarrow\>\<mu\>,b\<rightsquigarrow\>l,\<nu\>\<rightsquigarrow\>b>|<cell|>>>>
    </eqnarray>

    to get

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D><around*|(|1-u<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-v<rsup|2>|)><rsup|<frac|a|2>+\<mu\>><around*|(|1-w|)><rsup|\<mu\>-<frac|1|2>><around*|\||w|\|><rsup|<frac|a-1|2>><around*|\||u-v|\|><rsup|-b><wide|C|~><rsup|\<mu\>><rsub|m><around*|(|v,1-w<around*|(|1-v<rsup|2><rsup|>|)>|)><wide|C|~><rsup|\<lambda\>><rsub|l><around*|(|u,1|)>d
      u v w=>|<cell|>>|<row|<cell|>|<cell|<frac|2<rsup|m+l>\<Gamma\><around*|(|\<mu\>+<frac|1|2>+<around*|[|<frac|m|2>|]>|)>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>+<around*|[|<frac|l|2>|]>|)><around*|(|-1|)><rsup|<frac|m-l|2>><sqrt|\<pi\>>|m!l!>\<cdot\><frac|B<around*|(|<frac|m+l+b|2>,<frac|a|2>-b+\<lambda\>+\<mu\>+<frac|3|2>|)>\<Gamma\><around*|(|<frac|a+1|2>|)>\<Gamma\><around*|(|<frac|1-b|2>|)>|\<Gamma\><around*|(|<frac|b|2>|)>\<Gamma\><around*|(|<frac|2-m+l-b+2\<lambda\>|2>|)>\<Gamma\><around*|(|<frac|m-l+a-b+2\<mu\>+3|2>|)>><eq-number>>|<cell|>>|<row|<cell|>|<cell|D\<assign\><around*|{|<around*|(|u,v,w|)>\<in\><around*|[|-1,1|]><rsup|2>\<times\><around*|[|0,1|]>|}>.>|<cell|>>|<row|<cell|>|<cell|\<lambda\>,\<mu\>,a,b\<in\>\<bbb-C\>;<space|1em>m,l\<in\>\<bbb-N\>\<mid\>m+l\<in\>2\<bbb-N\>.>|<cell|>>>>
    </eqnarray>

    Now, the known special cases of the latter integral are as follows:

    (in parameters of Question 8):

    <\enumerate-numeric>
      <item><math|m=l=0>: product of beta-integral and integral from
      Proposition 6.1 (first item):

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-u<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-v<rsup|2>|)><rsup|<frac|a|2>+\<mu\>><around*|\||u-v|\|><rsup|-b>d
        u d v\<times\><big|int><rsub|0><rsup|1><around*|(|1-w|)><rsup|\<mu\>-<frac|1|2>><around*|\||w|\|><rsup|<frac|a-1|2>>d
        w=>|<cell|>>|<row|<cell|>|<cell|<frac|<sqrt|\<pi\>>*\<Gamma\>*<around|(|\<lambda\>+<frac|1|2>|)>*\<Gamma\><around*|(|<frac|1-b|2>|)>*\<Gamma\>*<around|(|\<lambda\>+\<mu\>+<frac|a|2>-b+<frac|3|2>|)>|\<Gamma\>*<around*|(|\<lambda\>-<frac|b|2>+1|)>*\<Gamma\>*<around*|(|\<mu\>+<frac|a-b|2>+<frac|3|2>|)>*\<Gamma\>*<around*|(|\<lambda\>+\<mu\>+<frac|a-b|2>+<frac|3|2>|)>>\<cdot\>B<around*|(|\<mu\>+<frac|1|2>,<frac|a+1|2>|)>>|<cell|>>>>
      </eqnarray>

      <item><math|m=l=1>: product of beta-integral (we let
      <math|B<around*|(|x,y|)>\<assign\><big|int><rsub|0><rsup|1>t<rsup|x-1><around*|(|1-n|)><rsup|y-1>d
      t>)) and integral from Proposition 6.1 (second item):

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|4<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-u<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-v<rsup|2>|)><rsup|<frac|a|2>+\<mu\>>
        u v<around*|\||u-v|\|><rsup|-b>d u d
        v<big|int><rsub|0><rsup|1><around*|(|1-w|)><rsup|\<mu\>-<frac|1|2>><around*|\||w|\|><rsup|<frac|a-1|2>>d
        w=>|<cell|>>|<row|<cell|>|<cell|<frac|4<around*|(|-b|)>|2\<lambda\>+1><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-u<rsup|2>|)><rsup|\<lambda\>+<frac|1|2>><around*|(|1-v<rsup|2>|)><rsup|<frac|a|2>+\<mu\>>
        \ v<around*|\||u-v|\|><rsup|-b-1>sgn<around*|(|u-v|)>d u d
        v<big|int><rsub|0><rsup|1><around*|(|1-w|)><rsup|\<mu\>-<frac|1|2>><around*|\||w|\|><rsup|<frac|a-1|2>>d
        w=>|<cell|>>|<row|<cell|>|<cell|=<frac|4b|2\<lambda\>+1>\<cdot\><frac|\<Gamma\><around*|(|<frac|1-b|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|a|2>+1|)>\<Gamma\><around*|(|\<lambda\>+<frac|3|2>|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>-b+<frac|a|2>+<frac|3|2>|)>|\<Gamma\><around*|(|\<mu\>-<frac|a-b+3|2>|)>\<Gamma\><around*|(|\<lambda\>-<frac|b|2>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+<frac|a-b+5|2>|)>>\<cdot\>B<around*|(|\<mu\>+<frac|1|2>,<frac|a+1|2>|)>>|<cell|>>>>
      </eqnarray>
    </enumerate-numeric>

    (in parameters of Question 7):

    <\enumerate-numeric>
      <item><math|m=l=0>: product of beta-integral and integral from
      Proposition 6.1 (first item):

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D>sin<rsup|2\<mu\>+m+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)><around*|\||cos
        <around|(|\<theta\>|)>-cos <around|(|\<psi\>|)>*sin
        <around|(|\<varphi\>|)>|\|><rsup|-b>sin<rsup|2\<lambda\>><around*|(|\<theta\>|)>sin<rsup|2\<mu\>><around*|(|\<psi\>|)>d\<theta\>d\<psi\>d\<varphi\>=>|<cell|>>|<row|<cell|>|<cell|<frac|<sqrt|\<pi\>>*\<Gamma\>*<around|(|\<lambda\>+<frac|1|2>|)>*\<Gamma\><around*|(|<frac|1-b|2>|)>*\<Gamma\>*<around|(|\<lambda\>+\<mu\>+<frac|a|2>-b+<frac|3|2>|)>|2\<Gamma\>*<around*|(|\<lambda\>-<frac|b|2>+1|)>*\<Gamma\>*<around*|(|\<mu\>+<frac|a-b|2>+<frac|3|2>|)>*\<Gamma\>*<around*|(|\<lambda\>+\<mu\>+<frac|a-b|2>+<frac|3|2>|)>>\<cdot\>B<around*|(|\<mu\>+<frac|1|2>,<frac|a+1|2>|)>>|<cell|>>>>
      </eqnarray>

      <item><math|m=l=1>: product of beta-integral (we let
      <math|B<around*|(|x,y|)>\<assign\><big|int><rsub|0><rsup|1>t<rsup|x-1><around*|(|1-n|)><rsup|y-1>d
      t>)) and integral from Proposition 6.1 (second item):

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D>sin<rsup|2\<mu\>+m+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)><around*|\||cos
        <around|(|\<theta\>|)>-cos <around|(|\<psi\>|)>*sin
        <around|(|\<varphi\>|)>|\|><rsup|-b>cos<around*|(|\<theta\>|)>cos<around*|(|\<psi\>|)>sin<rsup|2\<lambda\>><around*|(|\<theta\>|)>sin<rsup|2\<mu\>><around*|(|\<psi\>|)>d\<theta\>d\<psi\>d\<varphi\>>|<cell|>>|<row|<cell|>|<cell|=<frac|2b|2\<lambda\>+1>\<cdot\><frac|\<Gamma\><around*|(|<frac|1-b|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|a|2>+1|)>\<Gamma\><around*|(|\<lambda\>+<frac|3|2>|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>-b+<frac|a|2>+<frac|3|2>|)>|\<Gamma\><around*|(|\<mu\>-<frac|a-b+3|2>|)>\<Gamma\><around*|(|\<lambda\>-<frac|b|2>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+<frac|a-b+5|2>|)>>\<cdot\>B<around*|(|\<mu\>+<frac|1|2>,<frac|a+1|2>|)>>|<cell|>>>>
      </eqnarray>

      <item><math|b=0>: going to coordinates of the Question 7, it becomes
      the product of three beta integrals

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D>sin<rsup|2\<mu\>+m+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)><wide|v|~><rsup|\<mu\>><rsub|m><around*|(|\<psi\>|)><wide|v|~><rsup|\<lambda\>><rsub|l><around*|(|\<theta\>|)>=>|<cell|>>|<row|<cell|>|<cell|=<frac|\<pi\>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>|2>\<cdot\><around*|\<nobracket\>||\<nobracket\>><frac|\<Gamma\><around*|(|<frac|a+1|2>|)>|\<Gamma\><around*|(|<frac|2+2\<lambda\>|2>|)>*<space|0.17em>\<Gamma\><around*|(|<frac|a+2\<mu\>+3|2>|)>>\<cdot\><choice|<tformat|<table|<row|<cell|1,>|<cell|l=m=0,>>|<row|<cell|0,>|<cell|otherwise.>>>>><eq-number><label|eq-1>>|<cell|>>>>
      </eqnarray>

      <\proof>
        This equality is obtained by substitution of <math|\<nu\>=0> in
        <math|<eqref|eq-2>>. On the other hand, we can evaluate the LHS of
        <math|<eqref|eq-1>> as:

        <\eqnarray>
          <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D>sin<rsup|2\<mu\>+m+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)><wide|v|~><rsup|\<mu\>><rsub|m><around*|(|\<psi\>|)><wide|v|~><rsup|\<lambda\>><rsub|l><around*|(|\<theta\>|)>=>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|\<mu\>|)>|\<Gamma\><around*|(|\<mu\>+<around*|[|<frac|m+1|2>|]>|)>\<Gamma\><around*|(|\<lambda\>+<around*|[|<frac|l+1|2>|]>|)>><big|int><rsub|0><rsup|\<pi\>/2>sin<rsup|2\<mu\>+m+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)>d\<varphi\><big|int><rsub|0><rsup|\<pi\>>sin<rsup|2\<mu\>><around*|(|\<psi\>|)>C<rsup|\<mu\>><rsub|m><around*|(|cos\<psi\>|)>d\<psi\><big|int><rsub|0><rsup|\<pi\>>sin<rsup|2\<lambda\>><around*|(|\<theta\>|)>C<rsup|\<lambda\>><rsub|l><around*|(|cos\<theta\>|)>d\<theta\>>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|\<mu\>|)>|\<Gamma\><around*|(|\<mu\>+<around*|[|<frac|m+1|2>|]>|)>\<Gamma\><around*|(|\<lambda\>+<around*|[|<frac|l+1|2>|]>|)>><big|int><rsub|0><rsup|1><around*|(|1-t<rsup|2>|)><rsup|\<mu\>+<frac|m|2>>t<rsup|a>d
          t<big|int><rsub|-1><rsup|1><around*|(|1-s<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsub|m><rsup|\<mu\>><around*|(|s|)>d
          s<big|int><rsub|-1><rsup|1><around*|(|1-v<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|v|)>d
          v=>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|\<mu\>|)>|\<Gamma\><around*|(|\<mu\>+<around*|[|<frac|m+1|2>|]>|)>\<Gamma\><around*|(|\<lambda\>+<around*|[|<frac|l+1|2>|]>|)>>\<cdot\><frac|\<Gamma\><around*|(|\<mu\>+<frac|m|2>+1|)>\<Gamma\><around*|(|<frac|a+1|2>|)>|2\<Gamma\><around*|(|\<mu\>+<frac|m|2>+<frac|a+3|2>|)>><choice|<tformat|<table|<row|<cell|<frac|<sqrt|\<pi\>>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)>|\<Gamma\><around*|(|\<mu\>+1|)>>,>|<cell|m=0>>|<row|<cell|0,>|<cell|m\<gtr\>0>>>>><choice|<tformat|<table|<row|<cell|<frac|<sqrt|\<pi\>>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>|\<Gamma\><around*|(|\<lambda\>+1|)>>,>|<cell|l=0>>|<row|<cell|0,>|<cell|l\<gtr\>0>>>>>=>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|<frac|a+1|2>|)>|2\<Gamma\><around*|(|\<mu\>+<frac|a+3|2>|)>>\<cdot\><frac|\<pi\>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>|\<Gamma\><around*|(|\<lambda\>+1|)>
          >\<cdot\><choice|<tformat|<table|<row|<cell|1,>|<cell|l=m=0,>>|<row|<cell|0,>|<cell|otherwise.>>>>>>|<cell|>>>>
        </eqnarray>

        Which is precisely the same as RHS of <math|<eqref|eq-1>>.
      </proof>
    </enumerate-numeric>
  </answer>

  <\question>
    How does the formula

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|s,t=-1><rsup|1><around*|\||s
      a-t b|\|><rsup|\<nu\>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>><wide|C|~><rsub|l><rsup|\<lambda\>><around*|(|s|)><wide|C|~><rsub|m><rsup|\<mu\>><around*|(|t|)>d
      s d t=>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|\<lambda\>+<frac|1|2>+<around*|[|<frac|l|2>|]>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>+<around*|[|<frac|m|2>|]>|)>sgn<rsup|l><around*|(|a|)>b<rsup|m>2<rsup|l+m><around*|(|-<frac|\<nu\>|2>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>><around*|\||a|\|><rsup|\<nu\>-m><sqrt|\<pi\>>\<Gamma\><around*|(|<frac|1+\<nu\>|2>|)>|l!m!\<Gamma\><around*|(|\<mu\>+m+1|)>\<Gamma\><around*|(|<frac|\<nu\>+l-m|2>+\<lambda\>+1|)>>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|l+m-\<nu\>|2>,<frac|m-\<nu\>-l|2>-\<lambda\>>>|<row|<cell|\<mu\>+m+1>>>>>;<frac|b<rsup|2>|a<rsup|2>>|)>>|<cell|>>|<row|<cell|>|<cell|a,b\<in\>\<bbb-R\>,<around*|\||a|\|>\<geqslant\><around*|\||b|\|>;<space|1em>\<lambda\>,\<mu\>,\<nu\>\<in\>\<bbb-C\>;<space|1em>l,m\<in\>\<bbb-N\>\<mid\>l+m\<in\>2\<bbb-N\>.>|<cell|>>>>
    </eqnarray>

    change, if we use the usual Gegenbauer polynomials?
  </question>

  It becomes

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|s,t=-1><rsup|1><around*|\||s
    a-t b|\|><rsup|\<nu\>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>C<rsub|m><rsup|\<mu\>><around*|(|t|)>d
    s d t=>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|l+2\<lambda\>|)>\<Gamma\><around*|(|m+2\<mu\>|)>sgn<rsup|l><around*|(|a|)>b<rsup|m><around*|(|-<frac|\<nu\>|2>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>><around*|\||a|\|><rsup|\<nu\>-m>\<pi\><rsup|3/2>4<rsup|1-\<mu\>-\<lambda\>>\<Gamma\><around*|(|<frac|1+\<nu\>|2>|)>|l!m!\<Gamma\><around*|(|\<mu\>+m+1|)>\<Gamma\><around*|(|<frac|\<nu\>+l-m|2>+\<lambda\>+1|)>\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|\<mu\>|)>>
    <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|l+m-\<nu\>|2>,<frac|m-\<nu\>-l|2>-\<lambda\>>>|<row|<cell|\<mu\>+m+1>>>>>;<frac|b<rsup|2>|a<rsup|2>>|)>>|<cell|>>|<row|<cell|>|<cell|a,b\<in\>\<bbb-R\>,<around*|\||a|\|>\<geqslant\><around*|\||b|\|>;<space|1em>\<lambda\>,\<mu\>,\<nu\>\<in\>\<bbb-C\>;<space|1em>l,m\<in\>\<bbb-N\>\<mid\>l+m\<in\>2\<bbb-N\>.>|<cell|>>>>
  </eqnarray>

  \;

  In the subsequent questions we use consider the Theorem:

  \;

  <\theorem>
    <label|thm-1> The following holds:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|s,t=-1><rsup|1><around*|\||\<varepsilon\>s
      a+\<varepsilon\><rprime|'>t b|\|><rsup|2\<nu\>>u<rsub|l><rsup|\<lambda\>><around*|(|s|)>u<rsub|m><rsup|\<mu\>><around*|(|t|)>d
      s d t=\<varepsilon\><rsup|l><around*|(|\<varepsilon\><rprime|'>|)><rsup|m><around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l+m|2>>\<pi\><rsup|3/2>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>\<times\>,>|<cell|>>|<row|<cell|>|<cell|\<times\><choice|<tformat|<table|<row|<cell|<frac|<around*|\||a|\|><rsup|2\<nu\>><around*|(|b/a|)><rsup|m>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|l+m|2>-\<nu\>,<frac|m-l|2>-\<nu\>-\<lambda\>>>|<row|<cell|\<mu\>+m+1>>>>>;<frac|b<rsup|2>|a<rsup|2>>|)>|\<Gamma\><around*|(|\<mu\>+m+1|)>\<Gamma\><around*|(|\<nu\>+<frac|l-m|2>+\<lambda\>+1|)>>,>|<cell|<around*|\||b|\|>\<leqslant\><around*|\||a|\|>>>|<row|<cell|<frac|<around*|\||b|\|><rsup|2\<nu\>><around*|(|a/b|)><rsup|m>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|l+m|2>-\<nu\>,<frac|l-m|2>-\<nu\>-\<mu\>>>|<row|<cell|\<lambda\>+l+1>>>>>;<frac|a<rsup|2>|b<rsup|2>>|)>|\<Gamma\><around*|(|\<lambda\>+l+1|)>\<Gamma\><around*|(|\<nu\>+<frac|m-l|2>+\<mu\>+1|)>>,>|<cell|<around*|\||a|\|>\<leqslant\><around*|\||b|\|>>>>>>>|<cell|>>|<row|<cell|>|<cell|u<rsub|l><rsup|\<lambda\>><around*|(|s|)>\<assign\><frac|2<rsup|2\<lambda\>-1>l!\<Gamma\><around*|(|\<lambda\>|)>|\<Gamma\><around*|(|2\<lambda\>+l|)>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>,>|<cell|>>|<row|<cell|>|<cell|\<varepsilon\>,\<varepsilon\><rprime|'>=\<pm\>1;<space|1em>a,b\<in\>\<bbb-R\><rsub|\<geqslant\>0>;<space|1em><around*|(|l,m|)>\<in\><around*|{|\<bbb-N\><rsup|2>\<mid\>l+m\<in\>2\<bbb-N\>|}>;>|<cell|>>|<row|<cell|>|<cell|<around*|(|\<lambda\>,\<mu\>,\<nu\>|)>\<in\><around*|{|\<bbb-C\><rsup|3>\<mid\>Re<around*|(|<frac|\<nu\>-l-m|2>|)>,Re<around*|(|\<lambda\>+l|)>,Re<around*|(|\<mu\>+m|)>\<gtr\>-1/2|}>.>|<cell|>>>>
    </eqnarray>
  </theorem>

  <\question>
    Is the RHS of the Theorem <reference|thm-1> invariant under the
    <math|<around*|(|\<lambda\>,l,b|)>\<leftrightarrow\><around*|(|\<mu\>,m,b|)>>
    change?
  </question>

  I do not have alternative proof at the moment.

  <\question>
    Which ODE of the second order does <math|f<around*|(|x|)>\<assign\>u<rsub|l><rsup|\<lambda\>><around*|(|x|)>>
    satisfy?
  </question>

  It satisfies

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<around*|(|1-x<rsup|2>|)><rsup|2>f<rprime|''>+<around*|(|1-x<rsup|2>|)><around*|(|<around*|(|1-2\<lambda\>|)>-<around*|(|2\<lambda\>+1|)>x|)>f<rprime|'>+<around*|(|<around*|(|2x+1|)><around*|(|\<lambda\><rsup|2>-1/4|)>+l<around*|(|l+2\<lambda\>|)><around*|(|1-x<rsup|2>|)>|)>f=0.>|<cell|>>>>
  </eqnarray>

  \;

  Indeed, recall that the Gegenbauer polynomial
  <math|y<around*|(|x|)>\<assign\>C<rsup|\<lambda\>><rsub|l><around*|(|x|)>>
  satisfies the ODE:

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<around*|(|1-x<rsup|2>|)>y<rprime|''>-<around*|(|2\<lambda\>+1|)>x
    y<rprime|'>+n<around*|(|n+2\<lambda\>|)>y=0.>|<cell|>>>>
  </eqnarray>

  Hence, substituting <math|<around*|(|1-x<rsup|2>|)><rsup|1/2-\<lambda\>>f>
  in the latter ODE, we get

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<around*|(|1-x<rsup|2>|)><frac|d<rsup|2>|d
    x<rsup|2>><around*|(|<around*|(|1-x<rsup|2>|)><rsup|1/2-\<lambda\>>f|)>-<around*|(|2\<lambda\>+1|)>x<frac|d|d
    x><around*|(|<around*|(|1-x<rsup|2>|)><rsup|1/2-\<lambda\>>f|)>+l<around*|(|l+2\<lambda\>|)><around*|(|1-x<rsup|2>|)><rsup|1/2-\<lambda\>>f=0\<Leftrightarrow\>>|<cell|>>|<row|<cell|>|<cell|<around*|(|1-x<rsup|2>|)><rsup|3/2-\<lambda\>>f<rprime|''>+<around*|(|1-2\<lambda\>|)><around*|(|1-x<rsup|2>|)><rsup|1/2-\<lambda\>>f<rprime|'>+2<around*|(|\<lambda\><rsup|2>-<frac|1|4>|)>x<around*|(|1-x<rsup|2>|)><rsup|-1/2-\<lambda\>>f-<around*|(|2\<lambda\>+1|)>x<around*|(|1-x<rsup|2>|)><rsup|1/2-\<lambda\>>f<rprime|'>+l<around*|(|l+2\<lambda\>|)><around*|(|1-x<rsup|2>|)><rsup|1/2-\<lambda\>>f+<around*|(|1-x<rsup|2>|)><rsup|-1/2-\<lambda\>><around*|(|\<lambda\><rsup|2>-<frac|1|4>|)>f=0\<Leftrightarrow\>>|<cell|>>|<row|<cell|>|<cell|<around*|(|1-x<rsup|2>|)><rsup|3/2-\<lambda\>>f<rprime|''>+>|<cell|>>|<row|<cell|>|<cell|<around*|(|1-x<rsup|2>|)><rsup|1/2-\<lambda\>><around*|[|<around*|(|1-2\<lambda\>|)>-<around*|(|2\<lambda\>+1|)>x|]>f<rprime|'>+>|<cell|>>|<row|<cell|>|<cell|<around*|(|1-x<rsup|2>|)><rsup|-1/2-\<lambda\>><around*|(|<around*|(|\<lambda\><rsup|2>-<frac|1|4>|)>+l<around*|(|l+2\<lambda\>|)><around*|(|1-x<rsup|2>|)>+2<around*|(|\<lambda\><rsup|2>-<frac|1|4>|)>x|)>f=0\<Leftrightarrow\>>|<cell|>>|<row|<cell|>|<cell|<around*|(|1-x<rsup|2>|)><rsup|2>f<rprime|''>+<around*|(|1-x<rsup|2>|)><around*|(|<around*|(|1-2\<lambda\>|)>-<around*|(|2\<lambda\>+1|)>x|)>f<rprime|'>+<around*|(|<around*|(|2x+1|)><around*|(|\<lambda\><rsup|2>-1/4|)>+l<around*|(|l+2\<lambda\>|)><around*|(|1-x<rsup|2>|)>|)>f=0.>|<cell|>>>>
  </eqnarray>

  <\question>
    Prove the arrows of the diagram:

    <image|intdep.png|753px|249px||>\ 
  </question>

  We list the formulæ:

  <\eqnarray>
    <tformat|<table|<row|<cell|<around*|[|KLg|]>:>|<cell|<big|int><rsub|<around*|(|s,t|)>\<in\><around*|[|-1,1|]><rsup|2>><around*|\||\<varepsilon\>s
    a+\<varepsilon\><rprime|'>t b|\|><rsup|2\<nu\>>u<rsub|l><rsup|\<lambda\>><around*|(|s|)>u<rsub|m><rsup|\<mu\>><around*|(|t|)>d
    s d t=>|<cell|>>|<row|<cell|>|<cell|\<varepsilon\><rsup|l><around*|(|\<varepsilon\><rprime|'>|)><rsup|m><around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l+m|2>>\<pi\><rsup|3/2>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>max
    <rsup|2\<nu\>><around*|{|<around*|\||a|\|>,<around*|\||b|\|>|}>\<times\>>|<cell|>>|<row|<cell|>|<cell|\<times\><choice|<tformat|<table|<row|<cell|<frac|<around*|(|b/a|)><rsup|m>
    <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|l+m|2>-\<nu\>,<frac|m-l|2>-\<nu\>-\<lambda\>>>|<row|<cell|\<mu\>+m+1>>>>>;<frac|b<rsup|2>|a<rsup|2>>|)>|\<Gamma\><around*|(|\<mu\>+m+1|)>\<Gamma\><around*|(|\<nu\>+<frac|l-m|2>+\<lambda\>+1|)>>,>|<cell|<around*|\||b|\|>\<leqslant\><around*|\||a|\|>,>>|<row|<cell|<frac|<around*|(|a/b|)><rsup|m>
    <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|l+m|2>-\<nu\>,<frac|l-m|2>-\<nu\>-\<mu\>>>|<row|<cell|\<lambda\>+l+1>>>>>;<frac|a<rsup|2>|b<rsup|2>>|)>|\<Gamma\><around*|(|\<lambda\>+l+1|)>\<Gamma\><around*|(|\<nu\>+<frac|m-l|2>+\<mu\>+1|)>>,>|<cell|<around*|\||a|\|>\<leqslant\><around*|\||b|\|>,>>>>>>|<cell|>>|<row|<cell|<around*|[|KL|]>:>|<cell|<big|int><rsub|<around*|(|u,v|)>\<in\><around*|[|-1,1|]><rsup|2>><around*|\||u-v|\|><rsup|-\<nu\>><around*|(|1-u<rsup|2>|)><rsup|A><around*|(|1-v<rsup|2>|)><rsup|B>d
    u d v=>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)><space|0.25spc><sqrt|\<pi\>>*<space|0.25spc>\<Gamma\>*<around*|(|A+1|)>*<space|0.25spc>\<Gamma\>*<around*|(|B+1|)>*<space|0.25spc>\<Gamma\>*<around*|(|B+A-\<nu\>+2|)>|\<Gamma\><around*|(|<frac|2*<space|0.25spc>A-\<nu\>+3|2>|)>*<space|0.25spc>\<Gamma\><around*|(|<frac|2*<space|0.25spc>B-\<nu\>+3|2>|)>*<space|0.25spc>\<Gamma\><around*|(|<frac|2*<space|0.25spc>B+2*<space|0.25spc>A-\<nu\>+4|2>|)>>,>|<cell|>>|<row|<cell|<around*|[|<math-up|S>|]>:>|<cell|<big|int><rsub|t\<in\><around*|[|0,1|]><rsup|k>>\<Pi\><rsup|\<alpha\>-1,\<beta\>-1><around*|(|t|)>\<Delta\><rsup|2\<gamma\>><around*|(|t|)>d
    t=>|<cell|>>|<row|<cell|>|<cell|=<big|prod><rsub|i=0><rsup|k-1><frac|\<Gamma\><around*|(|\<alpha\>+i\<gamma\>|)>\<Gamma\><around*|(|\<beta\>+i\<gamma\>|)>\<Gamma\><around*|(|1+<around*|(|i+1|)>\<gamma\>|)>|\<Gamma\><around*|(|\<alpha\>+\<beta\>+<around*|(|i+k-1|)>\<gamma\>|)>\<Gamma\><around*|(|\<gamma\>+1|)>>,>|<cell|>>|<row|<cell|<around*|[|<math-up|S>|]><rprime|''>:>|<cell|<big|int><rsub|<around*|(|t<rsub|1>,t<rsub|2>|)>\<in\><around*|[|0,1|]><rsup|2>>t<rsub|1><rsup|\<alpha\>-1>t<rsub|2><rsup|\<alpha\>-1><around*|(|1-t<rsub|1>|)><rsup|\<alpha\>-1><around*|(|1-t<rsub|2>|)><rsup|\<alpha\>-1><around*|\||t<rsub|1>-t<rsub|2>|\|><rsup|2\<gamma\>>d
    t<rsub|1>d t<rsub|2>=>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><rsup|2><around*|(|\<alpha\>|)>|\<Gamma\><around*|(|2\<alpha\>+\<gamma\>|)>>\<cdot\><frac|\<Gamma\><rsup|2><around*|(|\<alpha\>+\<gamma\>|)>\<Gamma\><around*|(|1+2\<gamma\>|)>|\<Gamma\><around*|(|2\<alpha\>+2\<gamma\>|)>\<Gamma\><around*|(|1+\<gamma\>|)>>,>|<cell|>>|<row|<cell|<math-up|<cite|warnaar2010sl3>:>>|<cell|<big|int><rsub|<around*|(|s,t|)>\<in\>C<rsub|\<beta\><rsub|1>,\<gamma\>><rsup|k<rsub|1>,k<rsub|2>><around*|[|0,1|]>>\<Pi\><rsup|\<alpha\><rsub|1>-1,\<beta\><rsub|1>-1><around*|(|t|)>\<Pi\><rsup|\<alpha\><rsub|2>-1,\<beta\><rsub|2>-1><around*|(|s|)>\<Delta\><rsup|2\<gamma\>><around*|(|t|)>\<Delta\><rsup|2\<gamma\>><around*|(|s|)>\<Delta\><rsup|-\<gamma\>><around*|(|s,t|)>d
    s d t=>|<cell|>>|<row|<cell|>|<cell|=<big|prod><rsub|i=0><rsup|k<rsub|1>-1><frac|\<Gamma\><around*|(|\<alpha\><rsub|1>+i\<gamma\>|)>\<Gamma\><around*|(|\<beta\><rsub|1>+<around*|(|i-k<rsub|2>|)>\<gamma\>|)>\<Gamma\><around*|(|<around*|(|i+1|)>\<gamma\>|)>|\<Gamma\><around*|(|\<alpha\><rsub|1>+\<beta\><rsub|1>+<around*|(|i+k<rsub|1>-k<rsub|2>-1|)>\<gamma\>|)>\<Gamma\><around*|(|\<gamma\>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<big|prod><rsub|i=0><rsup|k<rsub|2>-1><frac|\<Gamma\><around*|(|\<alpha\><rsub|2>+i\<gamma\>|)>\<Gamma\><around*|(|\<beta\><rsub|2>+i\<gamma\>|)>\<Gamma\><around*|(|<around*|(|i+1|)>\<gamma\>|)>|\<Gamma\><around*|(|\<alpha\><rsub|2>+\<beta\><rsub|2>+<around*|(|i+k<rsub|2>-k<rsub|1>-1|)>\<gamma\>|)>\<Gamma\><around*|(|\<gamma\>|)>><big|prod><rsub|i=0><rsup|k<rsub|1>-1><frac|\<Gamma\><around*|(|\<alpha\><rsub|1>+\<alpha\><rsub|2>+<around*|(|i-1|)>\<gamma\>|)>|\<Gamma\><around*|(|\<alpha\><rsub|1>+\<alpha\><rsub|2>+<around*|(|i+k<rsub|2>-1|)>\<gamma\>|)>>,>|<cell|>>|<row|<cell|>|<cell|\<beta\><rsub|1>+\<beta\><rsub|2>=\<gamma\>+1>|<cell|>>|<row|<cell|<math-up|<cite|warnaar2010sl3>><rprime|''>:>|<cell|<big|int><rsub|<around*|(|s,t|)>\<in\>C<rsub|\<alpha\><rsub|1>,\<gamma\>><rsup|1,1><around*|[|0,1|]>>t<rsup|\<alpha\><rsub|1>-1><around*|(|1-t|)><rsup|\<alpha\><rsub|1>-1>s<rsup|\<alpha\><rsub|2>-1><around*|(|1-s|)><rsup|\<alpha\><rsub|2>-1><around*|\||t-s|\|><rsup|-\<gamma\>>d
    s d t=>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|\<alpha\><rsub|1>|)>\<Gamma\><around*|(|\<alpha\><rsub|1>-\<gamma\>|)>|\<Gamma\><around*|(|2\<alpha\><rsub|1>-\<gamma\>|)>>\<cdot\><frac|\<Gamma\><rsup|2><around*|(|\<alpha\><rsub|2>|)>|\<Gamma\><around*|(|2\<alpha\><rsub|2>-\<gamma\>|)>>\<cdot\><frac|\<Gamma\><around*|(|\<alpha\><rsub|1>+\<alpha\><rsub|2>-\<gamma\>|)>|\<Gamma\><around*|(|\<alpha\><rsub|1>+\<alpha\><rsub|1>|)>>=>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|\<alpha\><rsub|1>|)>\<Gamma\><around*|(|1-\<alpha\><rsub|2>|)>|\<Gamma\><around*|(|1+\<alpha\><rsub|1>-\<alpha\><rsub|2>|)>>\<cdot\><frac|\<Gamma\><rsup|2><around*|(|\<alpha\><rsub|2>|)>|\<Gamma\><around*|(|1+\<alpha\><rsub|2>-\<alpha\><rsub|1>|)>>\<cdot\><frac|1|\<Gamma\><around*|(|\<alpha\><rsub|1>+\<alpha\><rsub|2>|)>>,>|<cell|>>|<row|<cell|>|<cell|\<alpha\><rsub|1>+\<alpha\><rsub|2>=\<gamma\>+1,<space|1em>C<rsub|\<alpha\><rsub|1>,\<gamma\>><rsup|1,1><around*|[|0,1|]>=<around*|{|<around*|(|t,s|)>\<in\><around*|[|0,1|]><rsup|2>\<mid\>t\<less\>s|}>+<frac|sin<around*|(|\<pi\>\<alpha\><rsub|1>|)>|sin<around*|(|\<pi\>\<alpha\><rsub|2>|)>><around*|{|<around*|(|t,s|)>\<in\><around*|[|0,1|]><rsup|2>\<mid\>t\<gtr\>s|}>,>|<cell|>>|<row|<cell|<math-up|<cite|tarasov2003selberg>:>>|<cell|<big|int><rsub|<around*|(|s,t|)>\<in\>C<rsub|\<gamma\>><rsup|k<rsub|1>,k<rsub|2>>>\<Pi\><rsup|\<alpha\><rsub|1>-1,0><around*|(|t|)>\<Pi\><rsup|\<alpha\><rsub|2>-1,\<beta\><rsub|2>-1><around*|(|s|)>\<Delta\><rsup|2\<gamma\>><around*|(|t|)>\<Delta\><rsup|2\<gamma\>><around*|(|s|)>\<Delta\><rsup|-\<gamma\>><around*|(|s,t|)>d
    s d t=>|<cell|>>|<row|<cell|>|<cell|<big|prod><rsub|i=0><rsup|k<rsub|1>-1><frac|\<Gamma\><around*|(|\<alpha\><rsub|1>+i\<gamma\>|)>\<Gamma\><around*|(|1+<around*|(|i-k<rsub|2>|)>\<gamma\>|)>\<Gamma\><around*|(|<around*|(|i+1|)>\<gamma\>|)>|\<Gamma\><around*|(|\<alpha\><rsub|1>+1+<around*|(|i+k<rsub|1>-k<rsub|2>-1|)>\<gamma\>|)>\<Gamma\><around*|(|\<gamma\>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<big|prod><rsub|i=0><rsup|k<rsub|2>-1><frac|\<Gamma\><around*|(|\<alpha\><rsub|2>+i\<gamma\>|)>\<Gamma\><around*|(|\<beta\><rsub|2>+i\<gamma\>|)>\<Gamma\><around*|(|<around*|(|i+1|)>\<gamma\>|)>|\<Gamma\><around*|(|\<alpha\><rsub|2>+\<beta\><rsub|2>+<around*|(|i+k<rsub|2>-k<rsub|1>-1|)>\<gamma\>|)>\<Gamma\><around*|(|\<gamma\>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<big|prod><rsub|i=0><rsup|k<rsub|1>-1><frac|\<Gamma\><around*|(|\<alpha\><rsub|1>+\<alpha\><rsub|2>+<around*|(|i-1|)>\<gamma\>|)>|\<Gamma\><around*|(|\<alpha\><rsub|1>+\<alpha\><rsub|2>+\<beta\><rsub|2>+<around*|(|i+k<rsub|2>-2|)>\<gamma\>|)>><big|prod><rsub|i=0><rsup|k<rsub|1>-1><frac|\<Gamma\><around*|(|\<alpha\><rsub|2>+\<beta\><rsub|2>+<around*|(|i+k<rsub|2>-k<rsub|1>-1|)>\<gamma\>|)>|\<Gamma\><around*|(|\<alpha\><rsub|2>+<around*|(|i+k<rsub|2>-k<rsub|1>|)>\<gamma\>|)>>>|<cell|>>|<row|<cell|<math-up|<cite|tarasov2003selberg>><rprime|'>:>|<cell|<big|int><rsub|<around*|(|s,t|)>\<in\><around*|[|0,1|]><rsup|2>>s<rsup|\<alpha\><rsub|2>-1><around*|(|1-s|)><rsup|\<alpha\><rsub|2>-1><around*|(|t-s|)><rsub|-><rsup|-\<gamma\>>d
    s d t=<frac|\<Gamma\><around*|(|\<alpha\><rsub|2>|)>|<around*|(|1-\<gamma\>|)>>\<cdot\><frac|\<Gamma\><around*|(|1+\<alpha\><rsub|2>-\<gamma\>|)>|\<Gamma\><around*|(|1+2\<alpha\><rsub|2>-\<gamma\>|)>>,>|<cell|>>|<row|<cell|<math-up|<cite|dotsenko1985four>:>>|<cell|<frac|1|n!m!><big|int><rsub|<around*|(|t,\<tau\>|)>\<in\><around*|[|0,1|]><rsup|n+m>>\<Pi\><rsup|\<alpha\><rprime|'>,\<beta\><rprime|'>><around*|(|t|)>\<Pi\><rsup|\<alpha\>,\<beta\>><around*|(|\<tau\>|)>\<Delta\><rsup|2\<rho\><rprime|'>><around*|(|t|)>\<Delta\><rsup|2\<rho\>><around*|(|\<tau\>|)>\<Delta\><rsup|-2><around*|(|t,\<tau\>|)>d
    td\<tau\>=>|<cell|>>|<row|<cell|>|<cell|\<rho\><rsup|2n
    m><big|prod><rsub|i,j=1><rsup|n,m><frac|1|j\<rho\>-i><big|prod><rsub|i=1><rsup|n><frac|\<Gamma\><around*|(|i\<rho\><rprime|'>|)>|\<Gamma\><around*|(|\<rho\><rprime|'>|)>><big|prod><rsub|j=1><rsup|m><frac|\<Gamma\><around*|(|j\<rho\>|)>|\<Gamma\><around*|(|\<rho\>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<big|prod><rsub|i,j=0><rsup|n,m><frac|1|<around*|(|\<alpha\>+j\<rho\>-i|)><around*|(|\<beta\>+j\<rho\>-i|)><around*|(|\<alpha\>+\<beta\>+\<rho\><around*|(|m-1+j|)>-<around*|(|n-1+i|)>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<big|prod><rsub|i=0><rsup|n-1><frac|\<Gamma\><around*|(|1+\<alpha\><rprime|'>+i\<rho\><rprime|'>|)>\<Gamma\><around*|(|1+\<beta\><rprime|'>+i\<rho\><rprime|'>|)>|\<Gamma\><around*|(|-2-2m+\<alpha\><rprime|'>+\<beta\><rprime|'>+<around*|(|n-1+i|)>\<rho\><rprime|'>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<big|prod><rsub|j=0><rsup|m-1><frac|\<Gamma\><around*|(|1+\<alpha\>+i\<rho\>|)>\<Gamma\><around*|(|1+\<beta\>+i\<rho\>|)>|\<Gamma\><around*|(|2-2n+\<alpha\>+\<beta\>+<around*|(|m-1+i|)>\<rho\>|)>>,>|<cell|>>|<row|<cell|>|<cell|\<alpha\><rprime|'>=-\<rho\><rprime|'>\<alpha\>,\<beta\><rprime|'>=-\<rho\><rprime|'>\<beta\>,\<rho\><rprime|'>\<rho\>=1,>|<cell|>>|<row|<cell|<math-up|<cite|dotsenko1985four>><rprime|'>:>|<cell|<big|int><rsub|<around*|(|t,\<tau\>|)>\<in\><around*|[|0,1|]><rsup|2>>t<rsup|\<alpha\><rprime|'>><around*|(|1-t|)><rsup|\<alpha\><rprime|'>>\<tau\><rsup|\<alpha\>><around*|(|1-\<tau\>|)><rsup|\<alpha\>><around*|\||t-\<tau\>|\|><rsup|-2>d
    td\<tau\>=<frac|<around*|(|\<alpha\>/\<alpha\><rprime|'>|)><rsup|2>|<around*|(|-\<alpha\>/\<alpha\><rprime|'>-1|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<frac|1|2\<alpha\><rsup|4>>\<times\><frac|\<Gamma\><rsup|2><around*|(|1+\<alpha\><rprime|'>|)>|\<Gamma\><around*|(|2\<alpha\><rprime|'>|)>>\<times\><frac|\<Gamma\><rsup|2><around*|(|1+\<alpha\>|)>|\<Gamma\><around*|(|2\<alpha\>|)>>=>|<cell|>>|<row|<cell|>|<cell|<frac|-\<pi\>/2|\<alpha\>+\<alpha\><rprime|'>>\<times\><frac|\<Gamma\><around*|(|1+\<alpha\><rprime|'>|)>|2<rsup|2\<alpha\><rprime|'>-1>\<Gamma\><around*|(|\<alpha\><rprime|'>+1/2|)>>\<times\><frac|\<Gamma\><around*|(|1+\<alpha\>|)>|2<rsup|2\<alpha\>-1>\<Gamma\><around*|(|\<alpha\>+1/2|)>>,>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|\<Delta\><rsup|2\<gamma\>><around*|(|t|)>\<assign\><big|prod><rsub|1\<leqslant\>i\<less\>j\<leqslant\>k><around*|\||t<rsub|i>-t<rsub|j>|\|><rsup|2\<gamma\>>,>|<cell|>>|<row|<cell|>|<cell|\<Delta\><rsup|-\<gamma\>>*<around*|(|s,t|)>\<assign\><big|prod><rsub|i,j=1><rsup|k<rsub|1>,k<rsub|2>><around*|\||t<rsub|i>-s<rsub|j>|\|><rsup|-\<gamma\>>,>|<cell|>>|<row|<cell|>|<cell|\<Pi\><rsup|x,y><around*|(|t|)>\<assign\><big|prod><rsub|i=1><rsup|k>t<rsub|i><rsup|x><around*|(|1-t<rsub|i>|)><rsup|y>.>|<cell|>>>>
  </eqnarray>

  We then prove some arrows of the diagram:

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<frame|<math-up|[S]>\<Rightarrow\><math-up|[S]><rprime|''>:>obvious>|<cell|>>|<row|<cell|>|<cell|<frame|<math-up|[KL]>\<Rightarrow\><math-up|[S]><rprime|''>:><big|int><rsub|<around*|(|u,v|)>\<in\><around*|[|-1,1|]><rsup|2>><around*|\||u-v|\|><rsup|-\<nu\>><around*|(|1-u<rsup|2>|)><rsup|A><around*|(|1-v<rsup|2>|)><rsup|A>d
    u d v=>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)><space|0.25spc><sqrt|\<pi\>>*\<Gamma\><rsup|2><around*|(|A+1|)>\<Gamma\><around*|(|2A-\<nu\>+2|)>|\<Gamma\><rsup|2><around*|(|<frac|<space|0.25spc>2A-\<nu\>+3|2>|)>\<Gamma\><around*|(|<frac|4A-\<nu\>+4|2>|)>>\<Leftrightarrow\>>|<cell|>>|<row|<cell|>|<cell|<around*|(|u\<rightarrow\>2t<rsub|1>-1,v\<rightarrow\>2t<rsub|2>-1,\<nu\>\<rightarrow\>-2\<gamma\>,A\<rightarrow\>\<alpha\>-1|)>>|<cell|>>|<row|<cell|>|<cell|2<rsup|2\<gamma\>-2+4\<alpha\>><big|int><rsub|<around*|(|t<rsub|1>,t<rsub|2>|)>\<in\><around*|[|0,1|]><rsup|2>><around*|\||t<rsub|1>-t<rsub|2>|\|><rsup|2\<gamma\>>t<rsub|1><rsup|\<alpha\>-1><around*|(|1-t<rsub|1>|)><rsup|\<alpha\>-1>t<rsub|2><rsup|\<alpha\>-1><around*|(|1-t<rsub|2>|)><rsup|\<alpha\>-1>d
    t<rsub|1>d t<rsub|2>=>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|<frac|1+2\<gamma\>|2>|)><space|0.25spc><sqrt|\<pi\>>*\<Gamma\><rsup|2><around*|(|\<alpha\>|)>\<Gamma\><around*|(|2\<alpha\>+2\<gamma\>|)>|\<Gamma\><rsup|2><around*|(|<frac|<space|0.25spc>2\<alpha\>+1+2\<gamma\>|2>|)>\<Gamma\><around*|(|<frac|4\<alpha\>+2\<gamma\>|2>|)>>\<Leftrightarrow\>>|<cell|>>|<row|<cell|>|<cell|2<rsup|2\<gamma\>-2+4\<alpha\>><big|int><rsub|<around*|(|t<rsub|1>,t<rsub|2>|)>\<in\><around*|[|0,1|]><rsup|2>>\<ldots\>d
    t<rsub|1>d t<rsub|2>=<frac|2<rsup|-2\<gamma\>>\<pi\>\<Gamma\><around*|(|2\<gamma\>+1|)>\<Gamma\><rsup|2><around*|(|\<alpha\>|)>\<Gamma\><around*|(|2\<alpha\>+2\<gamma\>|)>|\<Gamma\><around*|(|\<gamma\>+1|)>\<Gamma\><rsup|2><around*|(|<frac|<space|0.25spc>2\<alpha\>+1+2\<gamma\>|2>|)>\<Gamma\><around*|(|<frac|4\<alpha\>+2\<gamma\>|2>|)>>\<Leftrightarrow\>>|<cell|>>|<row|<cell|>|<cell|2<rsup|2\<gamma\>-1+2\<alpha\>><big|int><rsub|<around*|(|t<rsub|1>,t<rsub|2>|)>\<in\><around*|[|0,1|]><rsup|2>>\<ldots\>d
    t<rsub|1>d t<rsub|2>=<frac|<sqrt|\<pi\>>\<Gamma\><around*|(|2\<gamma\>+1|)>*\<Gamma\><rsup|2><around*|(|\<alpha\>|)>\<Gamma\><around*|(|\<alpha\>+\<gamma\>|)>|\<Gamma\><around*|(|\<gamma\>+1|)>\<Gamma\><around*|(|2\<alpha\>+\<gamma\>|)>\<Gamma\><around*|(|<frac|2<space|0.25spc>\<alpha\>+1+2\<gamma\>|2>|)>>\<Leftrightarrow\>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|<around*|(|t<rsub|1>,t<rsub|2>|)>\<in\><around*|[|0,1|]><rsup|2>>\<ldots\>d
    t<rsub|1>d t<rsub|2>=<frac|\<Gamma\><around*|(|2\<gamma\>+1|)>*\<Gamma\><rsup|2><around*|(|\<alpha\>|)>\<Gamma\><rsup|2><around*|(|\<alpha\>+\<gamma\>|)>|\<Gamma\><around*|(|\<gamma\>+1|)>\<Gamma\><around*|(|2\<alpha\>+\<gamma\>|)>\<Gamma\><around*|(|2\<alpha\>+2\<gamma\>|)>>\<Leftrightarrow\><math-up|[S]><rprime|''>;>|<cell|>>|<row|<cell|>|<cell|<frame|<math-up|<cite|warnaar2010sl3>>\<Rightarrow\><math-up|<cite|warnaar2010sl3>><rprime|''>:>obvious>|<cell|>>|<row|<cell|>|<cell|<frame|<math-up|[KL]>\<Rightarrow\><math-up|<cite|warnaar2010sl3>>:>
    <math-up| in fact, similarly to [KL] we can prove a bit more
    general:>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|<around*|(|u,v|)>\<in\><around*|{|<around*|[|-1,1|]><rsup|2>\<mid\>\<pm\><around*|(|u-v|)>\<gtr\>0|}>><around*|\||u-v|\|><rsup|-\<nu\>><around*|(|1-u<rsup|2>|)><rsup|A><around*|(|1-v<rsup|2>|)><rsup|B>d
    u d v=>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|<around*|(|u,v|)>\<in\><around*|[|-1,1|]><rsup|2>><around*|(|u-v|)><rsub|\<pm\>><rsup|-\<nu\>><around*|(|1-u<rsup|2>|)><rsup|A><around*|(|1-v<rsup|2>|)><rsup|B>d
    u d v=>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)><space|0.25spc><sqrt|\<pi\>>*<space|0.25spc>\<Gamma\>*<around*|(|A+1|)>*<space|0.25spc>\<Gamma\>*<around*|(|B+1|)>*<space|0.25spc>\<Gamma\>*<around*|(|B+A-\<nu\>+2|)>|2\<Gamma\><around*|(|<frac|2*<space|0.25spc>A-\<nu\>+3|2>|)>*<space|0.25spc>\<Gamma\><around*|(|<frac|2*<space|0.25spc>B-\<nu\>+3|2>|)>*<space|0.25spc>\<Gamma\><around*|(|<frac|2*<space|0.25spc>B+2*<space|0.25spc>A-\<nu\>+4|2>|)>><space|2em><around*|(|KL\<pm\>|)>,>|<cell|>>|<row|<cell|>|<cell|<math-up|and
    similarly for [KLg]. Using that, we proceed
    as:>>|<cell|>>|<row|<cell|>|<cell|LHS<around*|(|<math-up|<cite|warnaar2010sl3>><rprime|''>|)>=<big|int><rsub|<around*|(|s,t|)>\<in\>C<rsub|\<alpha\><rsub|1>,\<gamma\>><rsup|1,1><around*|[|0,1|]>>t<rsup|\<alpha\><rsub|1>-1><around*|(|1-t|)><rsup|\<alpha\><rsub|1>-1>s<rsup|\<alpha\><rsub|2>-1><around*|(|1-s|)><rsup|\<alpha\><rsub|2>-1><around*|\||t-s|\|><rsup|-\<gamma\>>d
    s d t=>|<cell|>>|<row|<cell|>|<cell|<around*|(|t\<rightarrow\><frac|1+u|2>,s\<rightarrow\><frac|1+v|2>;<space|1em>C<rsub|\<alpha\><rsub|1>,\<gamma\>><rsup|1,1><around*|[|0,1|]>=<around*|{|<around*|(|t,s|)>\<in\><around*|[|0,1|]><rsup|2>\<mid\>t\<less\>s|}>+<frac|sin<around*|(|\<pi\>\<alpha\><rsub|1>|)>|sin<around*|(|\<pi\>\<alpha\><rsub|2>|)>><around*|{|<around*|(|t,s|)>\<in\><around*|[|0,1|]><rsup|2>\<mid\>t\<gtr\>s|}>|)>>|<cell|>>|<row|<cell|>|<cell|<frac|1|2<rsup|2\<alpha\><rsub|1>+2\<alpha\><rsub|2>-2-\<gamma\>>><rsup|><big|int><rsub|<around*|(|u,v|)>\<in\><around*|[|-1,1|]><rsup|2>><around*|(|1-u<rsup|2>|)><rsup|\<alpha\><rsub|1>-1><around*|(|1-v<rsup|2>|)><rsup|\<alpha\><rsub|2>-1><around*|(|<around*|(|u-v|)><rsub|+><rsup|-\<gamma\>>+<frac|sin<around*|(|\<pi\>\<alpha\><rsub|1>|)>|sin<around*|(|\<pi\>\<alpha\><rsub|2>|)>><around*|(|u-v|)><rsub|-><rsup|-\<gamma\>>|)>d
    u d v=>|<cell|>>|<row|<cell|>|<cell|<around*|(|<around*|[|KL\<pm\>|]>|)>>|<cell|>>|<row|<cell|>|<cell|<frac|1|2<rsup|2\<alpha\><rsub|1>+2\<alpha\><rsub|2>-1-\<gamma\>>><rsup|>\<cdot\><frac|\<Gamma\><around*|(|<frac|1-\<gamma\>|2>|)><space|0.25spc><sqrt|\<pi\>>*<space|0.25spc>\<Gamma\>*<around*|(|\<alpha\><rsub|1>|)>*<space|0.25spc>\<Gamma\>*<around*|(|\<alpha\><rsub|2>|)>*<space|0.25spc>\<Gamma\>*<around*|(|\<alpha\><rsub|1>+\<alpha\><rsub|2>-\<gamma\>|)>|\<Gamma\><around*|(|<frac|2*\<alpha\><rsub|1>-\<gamma\>+1|2>|)>*<space|0.25spc>\<Gamma\><around*|(|<frac|2*<space|0.25spc>\<alpha\><rsub|2>-\<gamma\>+1|2>|)>*<space|0.25spc>\<Gamma\><around*|(|<frac|2*<space|0.25spc>\<alpha\><rsub|1>+2*<space|0.25spc>\<alpha\><rsub|2>-\<gamma\>|2>|)>>\<cdot\><frac|2sin<around*|(|\<pi\><frac|\<alpha\><rsub|1>+\<alpha\><rsub|2>|2>|)>sin<around*|(|\<pi\><frac|1-\<alpha\><rsub|1>+\<alpha\><rsub|2>|2>|)>|sin<around*|(|\<pi\>\<alpha\><rsub|2>|)>>=>|<cell|>>|<row|<cell|>|<cell|<around*|(|\<alpha\><rsub|1>+\<alpha\><rsub|2>=\<gamma\>+1|)>>|<cell|>>|<row|<cell|>|<cell|<frac|1|2<rsup|\<alpha\><rsub|1>+\<alpha\><rsub|2>>><rsup|>\<cdot\><frac|\<Gamma\><around*|(|<frac|2-\<alpha\><rsub|1>-\<alpha\><rsub|2>|2>|)><space|0.25spc><sqrt|\<pi\>>*<space|0.25spc>\<Gamma\>*<around*|(|\<alpha\><rsub|1>|)>*<space|0.25spc>\<Gamma\>*<around*|(|\<alpha\><rsub|2>|)>|\<Gamma\><around*|(|<frac|\<alpha\><rsub|1>-\<alpha\><rsub|2>+2|2>|)>*<space|0.25spc>\<Gamma\><around*|(|<frac|\<alpha\><rsub|1>-\<alpha\><rsub|2>+2|2>|)>*<space|0.25spc>\<Gamma\><around*|(|<frac|\<alpha\><rsub|1>+\<alpha\><rsub|2>+1|2>|)>>\<cdot\><frac|2sin<around*|(|\<pi\><frac|\<alpha\><rsub|1>+\<alpha\><rsub|2>|2>|)>sin<around*|(|\<pi\><frac|1-\<alpha\><rsub|1>+\<alpha\><rsub|2>|2>|)>|sin<around*|(|\<pi\>\<alpha\><rsub|2>|)>>=>|<cell|>>|<row|<cell|>|<cell|<frac|1|2<rsup|\<alpha\><rsub|1>+\<alpha\><rsub|2>>><rsup|>\<cdot\><frac|<space|0.25spc>\<pi\><rsup|3/2>*<space|0.25spc>\<Gamma\>*<around*|(|\<alpha\><rsub|1>|)>*<space|0.25spc>\<Gamma\>*<around*|(|\<alpha\><rsub|2>|)>|\<Gamma\><around*|(|<frac|\<alpha\><rsub|1>-\<alpha\><rsub|2>+2|2>|)>*<space|0.25spc>\<Gamma\><around*|(|<frac|\<alpha\><rsub|1>-\<alpha\><rsub|2>+2|2>|)>*<space|0.25spc>\<Gamma\><around*|(|<frac|\<alpha\><rsub|1>+\<alpha\><rsub|2>+1|2>|)>>\<cdot\><frac|2sin<around*|(|\<pi\><frac|1-\<alpha\><rsub|1>+\<alpha\><rsub|2>|2>|)>|\<Gamma\><around*|(|<frac|\<alpha\><rsub|1>+\<alpha\><rsub|2>|2>|)>sin<around*|(|\<pi\>\<alpha\><rsub|2>|)>>=>|<cell|>>|<row|<cell|>|<cell|<frac|1|2<rsup|\<alpha\><rsub|1>+\<alpha\><rsub|2>>><rsup|>\<cdot\><frac|\<pi\><rsup|1/2>*<space|0.25spc>\<Gamma\>*<around*|(|\<alpha\><rsub|1>|)>*<space|0.25spc>\<Gamma\><rsup|2>*<around*|(|\<alpha\><rsub|2>|)>\<Gamma\><around*|(|1-\<alpha\><rsub|2>|)>|\<Gamma\><around*|(|<frac|\<alpha\><rsub|1>-\<alpha\><rsub|2>+2|2>|)>*<space|0.25spc>\<Gamma\><around*|(|<frac|\<alpha\><rsub|1>-\<alpha\><rsub|2>+2|2>|)>*<space|0.25spc>\<Gamma\><around*|(|<frac|\<alpha\><rsub|1>+\<alpha\><rsub|2>+1|2>|)>>\<cdot\><frac|2sin<around*|(|\<pi\><frac|1-\<alpha\><rsub|1>+\<alpha\><rsub|2>|2>|)>|\<Gamma\><around*|(|<frac|\<alpha\><rsub|1>+\<alpha\><rsub|2>|2>|)>>=>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\>*<around*|(|\<alpha\><rsub|1>|)>*<space|0.25spc>\<Gamma\><rsup|2>*<around*|(|\<alpha\><rsub|2>|)>\<Gamma\><around*|(|1-\<alpha\><rsub|2>|)>|\<Gamma\><around*|(|\<alpha\><rsub|1>-\<alpha\><rsub|2>+1|)>*<space|0.25spc>\<Gamma\><around*|(|\<alpha\><rsub|2>-\<alpha\><rsub|1>+1|)>*<space|0.25spc>\<Gamma\><around*|(|\<alpha\><rsub|1>+\<alpha\><rsub|2>|)>>=RHS<around*|(|<math-up|<cite|warnaar2010sl3>><rprime|''>|)>;>|<cell|>>|<row|<cell|>|<cell|<frame|<math-up|<cite|tarasov2003selberg>>\<Rightarrow\><math-up|<cite|tarasov2003selberg>><rprime|'>>:obvious;>|<cell|>>|<row|<cell|>|<cell|<frame|<math-up|[KL]>\<Rightarrow\><math-up|<cite|tarasov2003selberg>><rprime|'>>:LHS<around*|(|<math-up|<cite|tarasov2003selberg>><rprime|'>|)>=<big|int><rsub|<around*|(|s,t|)>\<in\><around*|[|0,1|]><rsup|2>>s<rsup|\<alpha\><rsub|2>-1><around*|(|1-s|)><rsup|\<alpha\><rsub|2>-1><around*|(|t-s|)><rsub|-><rsup|-\<gamma\>>d
    s d t=>|<cell|>>|<row|<cell|>|<cell|<around*|(|t\<rightarrow\><frac|1+u|2>,s\<rightarrow\><frac|1+v|2>|)>>|<cell|>>|<row|<cell|>|<cell|<frac|1|2<rsup|2\<alpha\><rsub|2>-\<gamma\>>><big|int><rsub|<around*|(|u,v|)>\<in\><around*|[|-1,1|]><rsup|2>><around*|(|1-v<rsup|2>|)><rsup|\<alpha\><rsub|2>-1><around*|(|u-v|)><rsub|-><rsup|-\<gamma\>>d
    u d v=>|<cell|>>|<row|<cell|>|<cell|<around*|(|<math-up|[KL]>|)>>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|<frac|1-\<gamma\>|2>|)><space|0.25spc><sqrt|\<pi\>><space|0.25spc>\<Gamma\>*<around*|(|\<alpha\><rsub|2>|)>*<space|0.25spc>\<Gamma\>*<around*|(|\<alpha\><rsub|2>+1-\<gamma\>|)>|2<rsup|2\<alpha\><rsub|2>-\<gamma\>+1>\<Gamma\><around*|(|<frac|3-\<gamma\>|2>|)>*<space|0.25spc>\<Gamma\><around*|(|<frac|2*<space|0.25spc>\<alpha\><rsub|2>-\<gamma\>+1|2>|)>*<space|0.25spc>\<Gamma\><around*|(|<frac|2*<space|0.25spc>\<alpha\><rsub|2>+2-\<gamma\>|2>|)>>=<frac|<space|0.25spc>\<Gamma\>*<around*|(|\<alpha\><rsub|2>|)>*<space|0.25spc>\<Gamma\>*<around*|(|\<alpha\><rsub|2>+1-\<gamma\>|)>|<around*|(|1-\<gamma\>|)><space|0.25spc>\<Gamma\><around*|(|2*<space|0.25spc>\<alpha\><rsub|2>-\<gamma\>+1|)>>=RHS<around*|(|<math-up|<cite|tarasov2003selberg>><rprime|'>|)>;>|<cell|>>|<row|<cell|>|<cell|<frame|<math-up|<cite|dotsenko1985four>>\<Rightarrow\><math-up|<cite|dotsenko1985four>><rprime|'>>:obvious>|<cell|>>|<row|<cell|>|<cell|<frame|<math-up|[KL]>\<Rightarrow\><math-up|<cite|dotsenko1985four>><rprime|'>>:LHS<around*|(|<math-up|<cite|dotsenko1985four>><rprime|'>|)>=<big|int><rsub|<around*|(|t,\<tau\>|)>\<in\><around*|[|0,1|]><rsup|2>>t<rsup|\<alpha\><rprime|'>><around*|(|1-t|)><rsup|\<alpha\><rprime|'>>\<tau\><rsup|\<alpha\>><around*|(|1-\<tau\>|)><rsup|\<alpha\>><around*|\||t-\<tau\>|\|><rsup|-2>d
    td\<tau\>=>|<cell|>>|<row|<cell|>|<cell|<around*|(|t\<rightarrow\><frac|1+u|2>,s\<rightarrow\><frac|1+v|2>|)>>|<cell|>>|<row|<cell|>|<cell|<frac|1|2<rsup|2\<alpha\><rprime|'>+2\<alpha\>>><big|int><rsub|<around*|(|u,v|)>\<in\><around*|[|-1,1|]><rsup|2>><around*|(|1-u<rsup|2>|)><rsup|\<alpha\><rprime|'>><around*|(|1-v|)><rsup|\<alpha\>><around*|\||u-v|\|><rsup|-2>d
    u d v=>|<cell|>>|<row|<cell|>|<cell|<around*|(|<math-up|[KL]>|)>>|<cell|>>|<row|<cell|>|<cell|<frac|1|2<rsup|2\<alpha\><rprime|'>+2\<alpha\>>><frac|\<Gamma\><around*|(|-1/2|)><sqrt|\<pi\>>\<Gamma\><around*|(|\<alpha\>+1|)>\<Gamma\><around*|(|\<alpha\><rprime|'>+1|)>|\<Gamma\><around*|(|\<alpha\>+1/2|)>\<Gamma\><around*|(|\<alpha\><rprime|'>+1/2|)><around*|(|\<alpha\><rprime|'>+\<alpha\>|)>>=<frac|1|2<rsup|2\<alpha\><rprime|'>+2\<alpha\>>><frac|-2\<pi\>\<Gamma\><around*|(|\<alpha\>+1|)>\<Gamma\><around*|(|\<alpha\><rprime|'>+1|)>|\<Gamma\><around*|(|\<alpha\>+1/2|)>\<Gamma\><around*|(|\<alpha\><rprime|'>+1/2|)><around*|(|\<alpha\><rprime|'>+\<alpha\>|)>>>|<cell|>>|<row|<cell|>|<cell|<frac|-\<pi\>/2|\<alpha\>+\<alpha\><rprime|'>>\<times\><frac|\<Gamma\><around*|(|1+\<alpha\><rprime|'>|)>|2<rsup|2\<alpha\><rprime|'>-1>\<Gamma\><around*|(|\<alpha\><rprime|'>+1/2|)>>\<times\><frac|\<Gamma\><around*|(|1+\<alpha\>|)>|2<rsup|2\<alpha\>-1>\<Gamma\><around*|(|\<alpha\>+1/2|)>>=RHS<around*|(|<math-up|<cite|dotsenko1985four>><rprime|'>|)>.>|<cell|>>>>
  </eqnarray>

  <\bibliography|bib|alpha|intdep.bib>
    <\bib-list|War10>
      <bibitem*|DF85><label|bib-dotsenko1985four>Vl<nbsp>S Dotsenko and
      Vladimir<nbsp>A Fateev. <newblock>Four-point correlation functions and
      the operator algebra in 2d conformal invariant theories with central
      charge <math|c\<leq\>1>. <newblock><with|font-shape|italic|Nuclear
      Physics B>, 251:691\U734, 1985.

      <bibitem*|TV03><label|bib-tarasov2003selberg>V<nbsp>Tarasov and
      Alexander Varchenko. <newblock>Selberg-type integrals associated with
      sl 3. <newblock><with|font-shape|italic|Letters in Mathematical
      Physics>, 65(3):173\U185, 2003.

      <bibitem*|War10><label|bib-warnaar2010sl3>S<nbsp>Ole Warnaar.
      <newblock>The sl3 selberg integral.
      <newblock><with|font-shape|italic|Advances in Mathematics>,
      224(2):499\U524, 2010.
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
    <associate|auto-1|<tuple|12|13>>
    <associate|bib-dotsenko1985four|<tuple|DF85|13>>
    <associate|bib-tarasov2003selberg|<tuple|TV03|13>>
    <associate|bib-warnaar2010sl3|<tuple|War10|13>>
    <associate|eq-1|<tuple|4|7>>
    <associate|eq-2|<tuple|1|5>>
    <associate|eq:q8-1|<tuple|3|6>>
    <associate|q1|<tuple|1|1>>
    <associate|thm-1|<tuple|1|8>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      warnaar2010sl3

      warnaar2010sl3

      tarasov2003selberg

      tarasov2003selberg

      dotsenko1985four

      dotsenko1985four

      warnaar2010sl3

      warnaar2010sl3

      warnaar2010sl3

      warnaar2010sl3

      warnaar2010sl3

      tarasov2003selberg

      tarasov2003selberg

      tarasov2003selberg

      tarasov2003selberg

      tarasov2003selberg

      dotsenko1985four

      dotsenko1985four

      dotsenko1985four

      dotsenko1985four

      dotsenko1985four
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>