<TeXmacs|1.99.4>

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

  <date|>

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
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|l+m|2>-\<nu\>,<frac|l-m|2>-\<nu\>-\<mu\>>>|<row|<cell|\<lambda\>+l+1>>>>>;<frac|a<rsup|2>|b<rsup|2>>|)>|\<Gamma\><around*|(|\<lambda\>+l+1|)>\<Gamma\><around*|(|\<nu\>+<frac|m-l|2>+\<mu\>+1|)>>,>|<cell|<around*|\||a|\|>\<leqslant\><around*|\||b|\|>>>>>><eq-number><label|eqn:thm1>>|<cell|>>|<row|<cell|>|<cell|u<rsub|l><rsup|\<lambda\>><around*|(|s|)>\<assign\><frac|2<rsup|2\<lambda\>-1>l!\<Gamma\><around*|(|\<lambda\>|)>|\<Gamma\><around*|(|2\<lambda\>+l|)>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>,>|<cell|>>|<row|<cell|>|<cell|\<varepsilon\>,\<varepsilon\><rprime|'>=\<pm\>1;<space|1em>a,b\<in\>\<bbb-R\><rsub|\<geqslant\>0>;<space|1em><around*|(|l,m|)>\<in\><around*|{|\<bbb-N\><rsup|2>\<mid\>l+m\<in\>2\<bbb-N\>|}>;>|<cell|>>|<row|<cell|>|<cell|<around*|(|\<lambda\>,\<mu\>,\<nu\>|)>\<in\><around*|{|\<bbb-C\><rsup|3>\<mid\>Re<around*|(|<frac|\<nu\>-l-m|2>|)>,Re<around*|(|\<lambda\>+l|)>,Re<around*|(|\<mu\>+m|)>\<gtr\>-1/2|}>.>|<cell|>>>>
    </eqnarray>
  </theorem>

  <\question>
    Is the RHS of the Theorem <reference|thm-1> invariant under the
    <math|<around*|(|\<lambda\>,l,b|)>\<leftrightarrow\><around*|(|\<mu\>,m,b|)>>
    change?
  </question>

  I do not have alternative proof at the moment.

  <\question>
    <label|q-ode>Which ODE of the second order does
    <math|f<around*|(|x|)>\<assign\>u<rsub|l><rsup|\<lambda\>><around*|(|x|)>>
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

    <image|intdep.png|1004px|332px||>\ 
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
    t=>|<cell|>>|<row|<cell|>|<cell|=<big|prod><rsub|i=0><rsup|k-1><frac|\<Gamma\><around*|(|\<alpha\>+i\<gamma\>|)>\<Gamma\><around*|(|\<beta\>+i\<gamma\>|)>\<Gamma\><around*|(|1+<around*|(|i+1|)>\<gamma\>|)>|\<Gamma\><around*|(|\<alpha\>+\<beta\>+<around*|(|i+k-1|)>\<gamma\>|)>\<Gamma\><around*|(|\<gamma\>+1|)>>,>|<cell|>>|<row|<cell|>|<cell|Re<around*|(|\<alpha\>|)>,Re<around*|(|\<beta\>|)>\<gtr\>0,<around*|\||\<gamma\>|\|>\<ll\>1>|<cell|>>|<row|<cell|<around*|[|<math-up|S>|]><rprime|''>:>|<cell|<big|int><rsub|<around*|(|t<rsub|1>,t<rsub|2>|)>\<in\><around*|[|0,1|]><rsup|2>>t<rsub|1><rsup|\<alpha\>-1>t<rsub|2><rsup|\<alpha\>-1><around*|(|1-t<rsub|1>|)><rsup|\<alpha\>-1><around*|(|1-t<rsub|2>|)><rsup|\<alpha\>-1><around*|\||t<rsub|1>-t<rsub|2>|\|><rsup|2\<gamma\>>d
    t<rsub|1>d t<rsub|2>=>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><rsup|2><around*|(|\<alpha\>|)>|\<Gamma\><around*|(|2\<alpha\>+\<gamma\>|)>>\<cdot\><frac|\<Gamma\><rsup|2><around*|(|\<alpha\>+\<gamma\>|)>\<Gamma\><around*|(|1+2\<gamma\>|)>|\<Gamma\><around*|(|2\<alpha\>+2\<gamma\>|)>\<Gamma\><around*|(|1+\<gamma\>|)>>,>|<cell|>>|<row|<cell|<math-up|<cite-detail|warnaar2010sl3|(1.4)>:>>|<cell|<big|int><rsub|<around*|(|s,t|)>\<in\>C<rsub|\<beta\><rsub|1>,\<gamma\>><rsup|k<rsub|1>,k<rsub|2>><around*|[|0,1|]>>\<Pi\><rsup|\<alpha\><rsub|1>-1,\<beta\><rsub|1>-1><around*|(|t|)>\<Pi\><rsup|\<alpha\><rsub|2>-1,\<beta\><rsub|2>-1><around*|(|s|)>\<Delta\><rsup|2\<gamma\>><around*|(|t|)>\<Delta\><rsup|2\<gamma\>><around*|(|s|)>\<Delta\><rsup|-\<gamma\>><around*|(|t,s|)>d
    s d t>|<cell|>>|<row|<cell|>|<cell|=<big|prod><rsub|i=0><rsup|k<rsub|1>-1><frac|\<Gamma\><around*|(|\<alpha\><rsub|1>+i\<gamma\>|)>\<Gamma\><around*|(|\<beta\><rsub|1>+<around*|(|i-k<rsub|2>|)>\<gamma\>|)>\<Gamma\><around*|(|<around*|(|i+1|)>\<gamma\>|)>|\<Gamma\><around*|(|\<alpha\><rsub|1>+\<beta\><rsub|1>+<around*|(|i+k<rsub|1>-k<rsub|2>-1|)>\<gamma\>|)>\<Gamma\><around*|(|\<gamma\>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<big|prod><rsub|i=0><rsup|k<rsub|2>-1><frac|\<Gamma\><around*|(|\<alpha\><rsub|2>+i\<gamma\>|)>\<Gamma\><around*|(|\<beta\><rsub|2>+i\<gamma\>|)>\<Gamma\><around*|(|<around*|(|i+1|)>\<gamma\>|)>|\<Gamma\><around*|(|\<alpha\><rsub|2>+\<beta\><rsub|2>+<around*|(|i+k<rsub|2>-k<rsub|1>-1|)>\<gamma\>|)>\<Gamma\><around*|(|\<gamma\>|)>><big|prod><rsub|i=0><rsup|k<rsub|1>-1><frac|\<Gamma\><around*|(|\<alpha\><rsub|1>+\<alpha\><rsub|2>+<around*|(|i-1|)>\<gamma\>|)>|\<Gamma\><around*|(|\<alpha\><rsub|1>+\<alpha\><rsub|2>+<around*|(|i+k<rsub|2>-1|)>\<gamma\>|)>>,>|<cell|>>|<row|<cell|>|<cell|\<beta\><rsub|1>+\<beta\><rsub|2>=\<gamma\>+1>|<cell|>>|<row|<cell|>|<cell|Re<around*|(|\<alpha\><rsub|i>|)>,Re<around*|(|\<beta\><rsub|i>|)>\<gtr\>0,<around*|\||\<gamma\>|\|>\<ll\>1;<space|1em>1\<leqslant\>\<forall\>i\<leqslant\>min<around*|{|k<rsub|i>|}><rsub|i>:\<beta\><rsub|1>+<around*|(|i-k<rsub|2>-1|)>\<gamma\>\<nin\>\<bbb-Z\>>|<cell|>>|<row|<cell|<math-up|<cite|warnaar2010sl3>><rprime|''>:>|<cell|<big|int><rsub|<around*|(|s,t|)>\<in\>C<rsub|\<alpha\><rsub|1>,\<gamma\>><rsup|1,1><around*|[|0,1|]>>t<rsup|\<alpha\><rsub|1>-1><around*|(|1-t|)><rsup|\<alpha\><rsub|1>-1>s<rsup|\<alpha\><rsub|2>-1><around*|(|1-s|)><rsup|\<alpha\><rsub|2>-1><around*|\||t-s|\|><rsup|-\<gamma\>>d
    s d t=>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|\<alpha\><rsub|1>|)>\<Gamma\><around*|(|\<alpha\><rsub|1>-\<gamma\>|)>|\<Gamma\><around*|(|2\<alpha\><rsub|1>-\<gamma\>|)>>\<cdot\><frac|\<Gamma\><rsup|2><around*|(|\<alpha\><rsub|2>|)>|\<Gamma\><around*|(|2\<alpha\><rsub|2>-\<gamma\>|)>>\<cdot\><frac|\<Gamma\><around*|(|\<alpha\><rsub|1>+\<alpha\><rsub|2>-\<gamma\>|)>|\<Gamma\><around*|(|\<alpha\><rsub|1>+\<alpha\><rsub|1>|)>>=>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|\<alpha\><rsub|1>|)>\<Gamma\><around*|(|1-\<alpha\><rsub|2>|)>|\<Gamma\><around*|(|1+\<alpha\><rsub|1>-\<alpha\><rsub|2>|)>>\<cdot\><frac|\<Gamma\><rsup|2><around*|(|\<alpha\><rsub|2>|)>|\<Gamma\><around*|(|1+\<alpha\><rsub|2>-\<alpha\><rsub|1>|)>>\<cdot\><frac|1|\<Gamma\><around*|(|\<alpha\><rsub|1>+\<alpha\><rsub|2>|)>>;<space|1em>\<alpha\><rsub|1>+\<alpha\><rsub|2>=\<gamma\>+1,>|<cell|>>|<row|<cell|>|<cell|C<rsub|\<alpha\><rsub|1>,\<gamma\>><rsup|1,1><around*|[|0,1|]>=<around*|{|<around*|(|t,s|)>\<in\><around*|[|0,1|]><rsup|2>\<mid\>t\<less\>s|}>+<frac|sin<around*|(|\<pi\>\<alpha\><rsub|1>|)>|sin<around*|(|\<pi\>\<alpha\><rsub|2>|)>><around*|{|<around*|(|t,s|)>\<in\><around*|[|0,1|]><rsup|2>\<mid\>t\<gtr\>s|}>,>|<cell|>>|<row|<cell|<math-up|<cite-detail|tarasov2003selberg|(3.4)>:>>|<cell|<big|int><rsub|<around*|(|s,t|)>\<in\>C<rsub|\<gamma\>><rsup|k<rsub|1>,k<rsub|2>>>\<Pi\><rsup|\<alpha\>-1,\<beta\><rsub|1>-1><around*|(|t|)>\<Pi\><rsup|0,\<beta\><rsub|2>-1><around*|(|s|)>\<Delta\><rsup|2\<gamma\>><around*|(|t|)>\<Delta\><rsup|2\<gamma\>><around*|(|s|)>\<Delta\><rsup|-\<gamma\>><around*|(|t,s|)>d
    s d t=>|<cell|>>|<row|<cell|>|<cell|<big|prod><rsub|j=0><rsup|k<rsub|1>-1><frac|\<Gamma\><around*|(|\<alpha\>+j\<gamma\>|)>\<Gamma\><around*|(|\<gamma\>+j\<gamma\>|)>|\<Gamma\><around*|(|\<gamma\>|)>><big|prod><rsub|j=0><rsup|k<rsub|1>-k<rsub|2>-1><frac|\<Gamma\><around*|(|\<beta\><rsub|1>+j\<gamma\>|)>|\<Gamma\><around*|(|\<alpha\>+\<beta\><rsub|1>+<around*|(|2k<rsub|1>-k<rsub|2>-2-j|)>\<gamma\>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<big|prod><rsub|j=0><rsup|k<rsub|2>-1><frac|\<Gamma\><around*|(|\<beta\><rsub|2>+j\<gamma\>|)>\<Gamma\><around*|(|\<beta\><rsub|1>+\<beta\><rsub|2>-\<gamma\>+j\<gamma\>|)>\<Gamma\><around*|(|1-k<rsub|1>\<gamma\>+j\<gamma\>|)>\<Gamma\><around*|(|\<gamma\>+j\<gamma\>|)>|\<Gamma\><around*|(|\<beta\><rsub|2>+1+<around*|(|2k<rsub|2>-k<rsub|1>-2-j|)>\<gamma\>|)>\<Gamma\><around*|(|\<alpha\>+\<beta\><rsub|1>+\<beta\><rsub|2>+<around*|(|k<rsub|1>+k<rsub|2>-3-j|)>\<gamma\>|)>\<Gamma\><around*|(|\<gamma\>|)>>.>|<cell|>>|<row|<cell|>|<cell|Re<around*|(|\<alpha\><rsub|i>|)>,Re<around*|(|\<beta\><rsub|2>|)>\<gtr\>0,<around*|\||Re\<gamma\>|\|>\<ll\>1>|<cell|>>|<row|<cell|<math-up|<cite|tarasov2003selberg>><rprime|'>:>|<cell|<big|int><rsub|<around*|(|s,t|)>\<in\><around*|[|0,1|]><rsup|2>>s<rsup|\<alpha\><rsub|2>-1><around*|(|1-s|)><rsup|\<alpha\><rsub|2>-1><around*|(|t-s|)><rsub|-><rsup|-\<gamma\>>d
    s d t=<frac|\<Gamma\><around*|(|\<alpha\><rsub|2>|)>|<around*|(|1-\<gamma\>|)>>\<cdot\><frac|\<Gamma\><around*|(|1+\<alpha\><rsub|2>-\<gamma\>|)>|\<Gamma\><around*|(|1+2\<alpha\><rsub|2>-\<gamma\>|)>>,>|<cell|>>|<row|<cell|<math-up|<cite-detail|dotsenko1985four|(A.35)>:>>|<cell|<frac|1|n!m!><big|int><rsub|<around*|(|t,\<tau\>|)>\<in\><around*|[|0,1|]><rsup|n+m>>\<Pi\><rsup|\<alpha\><rprime|'>,\<beta\><rprime|'>><around*|(|t|)>\<Pi\><rsup|\<alpha\>,\<beta\>><around*|(|\<tau\>|)>\<Delta\><rsup|2\<rho\><rprime|'>><around*|(|t|)>\<Delta\><rsup|2\<rho\>><around*|(|\<tau\>|)>\<Delta\><rsup|-2><around*|(|t,\<tau\>|)>d
    td\<tau\>=>|<cell|>>|<row|<cell|>|<cell|\<rho\><rsup|2n
    m><big|prod><rsub|i,j=1><rsup|n,m><frac|1|j\<rho\>-i><big|prod><rsub|i=1><rsup|n><frac|\<Gamma\><around*|(|i\<rho\><rprime|'>|)>|\<Gamma\><around*|(|\<rho\><rprime|'>|)>><big|prod><rsub|j=1><rsup|m><frac|\<Gamma\><around*|(|j\<rho\>|)>|\<Gamma\><around*|(|\<rho\>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<big|prod><rsub|i,j=0><rsup|n,m><frac|1|<around*|(|\<alpha\>+j\<rho\>-i|)><around*|(|\<beta\>+j\<rho\>-i|)><around*|(|\<alpha\>+\<beta\>+\<rho\><around*|(|m-1+j|)>-<around*|(|n-1+i|)>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<big|prod><rsub|i=0><rsup|n-1><frac|\<Gamma\><around*|(|1+\<alpha\><rprime|'>+i\<rho\><rprime|'>|)>\<Gamma\><around*|(|1+\<beta\><rprime|'>+i\<rho\><rprime|'>|)>|\<Gamma\><around*|(|2-2m+\<alpha\><rprime|'>+\<beta\><rprime|'>+<around*|(|n-1+i|)>\<rho\><rprime|'>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<big|prod><rsub|j=0><rsup|m-1><frac|\<Gamma\><around*|(|1+\<alpha\>+j\<rho\>|)>\<Gamma\><around*|(|1+\<beta\>+j\<rho\>|)>|\<Gamma\><around*|(|2-2n+\<alpha\>+\<beta\>+<around*|(|m-1+j|)>\<rho\>|)>>,>|<cell|>>|<row|<cell|>|<cell|\<alpha\><rprime|'>=-\<rho\><rprime|'>\<alpha\>,\<beta\><rprime|'>=-\<rho\><rprime|'>\<beta\>,\<rho\><rprime|'>\<rho\>=1,>|<cell|>>|<row|<cell|>|<cell|Re<around*|(|\<rho\>|)>\<less\>0,<space|1em>Re<around*|(|\<alpha\>|)>,Re<around*|(|\<beta\>|)>\<gtr\><around*|(|n-1|)>+<around*|\||Re<around*|(|\<rho\>|)>|\|><around*|(|m-1|)>>|<cell|>>|<row|<cell|<math-up|<cite|dotsenko1985four>><rprime|'>:>|<cell|<big|int><rsub|<around*|(|t,\<tau\>|)>\<in\><around*|[|0,1|]><rsup|2>>t<rsup|\<alpha\><rprime|'>><around*|(|1-t|)><rsup|\<alpha\><rprime|'>>\<tau\><rsup|\<alpha\>><around*|(|1-\<tau\>|)><rsup|\<alpha\>><around*|\||t-\<tau\>|\|><rsup|-2>d
    td\<tau\>=<frac|<around*|(|\<alpha\>/\<alpha\><rprime|'>|)><rsup|2>|<around*|(|-\<alpha\>/\<alpha\><rprime|'>-1|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<frac|1|2\<alpha\><rsup|4>>\<times\><frac|\<Gamma\><rsup|2><around*|(|1+\<alpha\><rprime|'>|)>|\<Gamma\><around*|(|2\<alpha\><rprime|'>|)>>\<times\><frac|\<Gamma\><rsup|2><around*|(|1+\<alpha\>|)>|\<Gamma\><around*|(|2\<alpha\>|)>>=>|<cell|>>|<row|<cell|>|<cell|<frac|-\<pi\>/2|\<alpha\>+\<alpha\><rprime|'>>\<times\><frac|\<Gamma\><around*|(|1+\<alpha\><rprime|'>|)>|2<rsup|2\<alpha\><rprime|'>-1>\<Gamma\><around*|(|\<alpha\><rprime|'>+1/2|)>>\<times\><frac|\<Gamma\><around*|(|1+\<alpha\>|)>|2<rsup|2\<alpha\>-1>\<Gamma\><around*|(|\<alpha\>+1/2|)>>,>|<cell|>>|<row|<cell|>|<cell|\<Delta\><rsup|2\<gamma\>><around*|(|t|)>\<assign\><big|prod><rsub|1\<leqslant\>i\<less\>j\<leqslant\>k><around*|\||t<rsub|i>-t<rsub|j>|\|><rsup|2\<gamma\>>,>|<cell|>>|<row|<cell|>|<cell|\<Delta\><rsup|-\<gamma\>>*<around*|(|s,t|)>\<assign\><big|prod><rsub|i,j=1><rsup|k<rsub|1>,k<rsub|2>><around*|\||t<rsub|i>-s<rsub|j>|\|><rsup|-\<gamma\>>,>|<cell|>>|<row|<cell|>|<cell|\<Pi\><rsup|x,y><around*|(|t|)>\<assign\><big|prod><rsub|i=1><rsup|k>t<rsub|i><rsup|x><around*|(|1-t<rsub|i>|)><rsup|y>.>|<cell|>>>>
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

  <\question>
    What are the singular points of the ODE in Question <reference|q-ode>?
    What are exponents at these points?
  </question>

  Indeed, the ODE gets rewritten as:

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|f<rprime|''>+<frac|1-2\<lambda\>-<around*|(|2\<lambda\>+1|)>x|1-x<rsup|2>>f<rprime|'>+<frac|<around*|(|2x+1|)><around*|(|\<lambda\><rsup|2>-<frac|1|4>|)>+<around*|(|l+2\<lambda\>|)><around*|(|1-x<rsup|2>|)>|<around*|(|1-x<rsup|2>|)><rsup|2>>f=0,>|<cell|>>>>
  </eqnarray>

  thus one immediately sees that there are two candidates: <math|x=1> and
  <math|x=-1>. We expand the coefficients around <math|x=1> first:

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<frac|1-2\<lambda\>-<around*|(|2\<lambda\>+1|)>x|1-x<rsup|2>>=<frac|2\<lambda\>|x-1>+\<ldots\>,>|<cell|>>|<row|<cell|>|<cell|<frac|<around*|(|2x+1|)><around*|(|\<lambda\><rsup|2>-<frac|1|4>|)>+<around*|(|l+2\<lambda\>|)><around*|(|1-x<rsup|2>|)>|<around*|(|1-x<rsup|2>|)><rsup|2>>=<frac|3<around*|(|\<lambda\><rsup|2>-<frac|1|4>|)>/4|<around*|(|x-1|)><rsup|2>>+\<ldots\>>|<cell|>>>>
  </eqnarray>

  The indicial equation becomes:

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|r<around*|(|r-1|)>+2\<lambda\>r+<frac|3|4><around*|(|\<lambda\><rsup|2>-<frac|1|4>|)>=0\<Leftrightarrow\>r<rsup|2>+2<around*|(|\<lambda\>+<frac|1|2>|)>r+<frac|3<around*|(|\<lambda\><rsup|2>-1/4|)>|4>=0,>|<cell|>>>>
  </eqnarray>

  and the exponents are <math|r=-<around*|(|\<lambda\>+<frac|1|2>|)>\<pm\><frac|1|2><sqrt|<around*|(|\<lambda\>+<frac|7|2>|)><around*|(|\<lambda\>+<frac|1|2>|)>>>.

  Then, around the <math|x=-1>:

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<frac|1-2\<lambda\>-<around*|(|2\<lambda\>+1|)>x|1-x<rsup|2>>=<frac|1|x+1>+\<ldots\>,>|<cell|>>|<row|<cell|>|<cell|<frac|<around*|(|2x+1|)><around*|(|\<lambda\><rsup|2>-<frac|1|4>|)>+<around*|(|l+2\<lambda\>|)><around*|(|1-x<rsup|2>|)>|<around*|(|1-x<rsup|2>|)><rsup|2>>=<frac|-<around*|(|\<lambda\><rsup|2>-<frac|1|4>|)>/2|<around*|(|x+1|)><rsup|2>>+\<ldots\>,>|<cell|>>>>
  </eqnarray>

  The indicial equuation becomes:

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|r<around*|(|r-1|)>+r-<frac|1|2><around*|(|\<lambda\><rsup|2>-<frac|1|4>|)>=0,>|<cell|>>>>
  </eqnarray>

  and the exponents are <math|r=\<pm\><frac|<sqrt|<around*|(|\<lambda\>-1/2|)><around*|(|\<lambda\>+1/2|)>>|<sqrt|2>>>.

  Also, one sees that both singular points <math|x=\<pm\>1> are regular.

  <\corollary>
    <label|cor>

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|s-t|)><rsub|\<pm\>><rsup|2\<nu\>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>C<rsub|m><rsup|\<mu\>><around*|(|t|)>d
      s d t=>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|2\<lambda\>+l|)>\<Gamma\><around*|(|2\<mu\>+m|)><around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>>\<pi\><rsup|<frac|3|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>\<Gamma\><around*|(|\<mu\>+1+2\<nu\>+\<lambda\>|)>|2<rsup|2\<lambda\>+2\<mu\>-1>l!m!\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|\<mu\>|)>\<Gamma\><around*|(|\<nu\>+<frac|l-m|2>+\<lambda\>+1|)>\<Gamma\><around*|(|\<mu\>+1-<frac|l-m|2>+\<nu\>|)>\<Gamma\><around*|(|\<mu\>+1+\<nu\>+\<lambda\>+<frac|m+l|2>|)>>=>|<cell|>>|<row|<cell|>|<cell|<frac|<around*|(|2\<lambda\>|)><rsub|l><around*|(|2\<mu\>|)><rsub|m>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)><around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>>\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>\<Gamma\><around*|(|\<mu\>+1+2\<nu\>+\<lambda\>|)>|2l!m!\<Gamma\><around*|(|\<nu\>+<frac|l-m|2>+\<lambda\>+1|)>\<Gamma\><around*|(|\<mu\>+1-<frac|l-m|2>+\<nu\>|)>\<Gamma\><around*|(|\<mu\>+1+\<nu\>+\<lambda\>+<frac|m+l|2>|)>>.>|<cell|>>>>
    </eqnarray>
  </corollary>

  <\question>
    <label|q14>Use the Corollary <reference|cor> to evaluate the integral

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-\<infty\>><rsup|\<infty\>><big|int><rsub|-\<infty\>><rsup|\<infty\>><around*|\||x-y|\|><rsup|2\<nu\>>e<rsup|-x<rsup|2>-y<rsup|2>>H<rsub|n><around*|(|x|)>H<rsub|m><around*|(|y|)>.<eq-number><label|eqn:herm1>>|<cell|>>>>
    </eqnarray>
  </question>

  It equals to

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<frame|<around*|(|-\<nu\>|)><rsub|<frac|n+m|2>><around*|(|-1|)><rsup|<frac|n-m|2>>\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>2<rsup|\<nu\>+<frac|m+n|2>>.>>|<cell|>>>>
  </eqnarray>

  Indeed,\ 

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s-t|\|><rsup|2\<nu\>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>C<rsub|m><rsup|\<mu\>><around*|(|t|)>d
    s d t=>|<cell|>>|<row|<cell|>|<cell|<frac|<around*|(|2\<lambda\>|)><rsub|l><around*|(|2\<mu\>|)><rsub|m>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)><around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>>\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>\<Gamma\><around*|(|\<mu\>+1+2\<nu\>+\<lambda\>|)>|l!m!\<Gamma\><around*|(|\<nu\>+<frac|l-m|2>+\<lambda\>+1|)>\<Gamma\><around*|(|\<mu\>+1-<frac|l-m|2>+\<nu\>|)>\<Gamma\><around*|(|\<mu\>+1+\<nu\>+\<lambda\>+<frac|m+l|2>|)>>\<Rightarrow\>>|<cell|>>|<row|<cell|>|<cell|<around*|(|s\<rightarrow\><frac|x|<sqrt|\<lambda\>>>,t\<rightarrow\><frac|y|<sqrt|\<mu\>>>,\<mu\>\<rightarrow\>\<lambda\>|)>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|-<sqrt|\<lambda\>>><rsup|<sqrt|\<lambda\>>><big|int><rsub|-<sqrt|\<lambda\>>><rsup|<sqrt|\<lambda\>>><around*|\||x-y|\|><rsup|2\<nu\>><around*|(|1-<frac|x<rsup|2>|\<lambda\>>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-<frac|y<rsup|2>|\<lambda\>>|)><rsup|\<lambda\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|<frac|x|<sqrt|\<lambda\>>>|)>C<rsub|m><rsup|\<lambda\>><around*|(|<frac|y|<sqrt|\<lambda\>>>|)>d
    x d y=>|<cell|>>|<row|<cell|>|<cell|<frac|\<lambda\><rsup|1+\<nu\>><around*|(|2\<lambda\>|)><rsub|l><around*|(|2\<lambda\>|)><rsub|m>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)><rsup|2><around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>>\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>\<Gamma\><around*|(|1+2\<nu\>+2\<lambda\>|)>|l!m!\<Gamma\><around*|(|\<nu\>+<frac|l-m|2>+\<lambda\>+1|)>\<Gamma\><around*|(|\<lambda\>+1-<frac|l-m|2>+\<nu\>|)>\<Gamma\><around*|(|1+\<nu\>+2\<lambda\>+<frac|m+l|2>|)>>\<Rightarrow\>>|<cell|>>|<row|<cell|>|<cell|<around*|(|l\<rightarrow\>n<space|1em>;\<lambda\>\<rightarrow\>\<infty\>;<space|1em>\<lambda\><rsup|-<frac|n|2>>C<rsub|n><rsup|\<lambda\>><around*|(|<frac|x|<sqrt|\<lambda\>>>|)>\<rightarrow\><frac|H<rsub|n><around*|(|x|)>|n!>,<space|0.6spc><around*|(|1-<frac|x<rsup|2>|\<lambda\>>|)><rsup|\<lambda\>-<frac|1|2>>\<rightarrow\>e<rsup|-x<rsup|2>>|)>>|<cell|>>|<row|<cell|>|<cell|<frame|<big|int><rsub|-\<infty\>><rsup|\<infty\>><big|int><rsub|-\<infty\>><rsup|\<infty\>><around*|\||x-y|\|><rsup|2\<nu\>>e<rsup|-x<rsup|2>-y<rsup|2>>H<rsub|n><around*|(|x|)>H<rsub|m><around*|(|y|)>d
    x d y>=<around*|(|-\<nu\>|)><rsub|<frac|n+m|2>><around*|(|-1|)><rsup|<frac|n-m|2>>\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>>|<cell|>>|<row|<cell|>|<cell|lim<rsub|\<lambda\>\<rightarrow\>\<infty\>><frac|\<lambda\><rsup|1+\<nu\>-<frac|m+n|2>><around*|(|2\<lambda\>|)><rsub|n><around*|(|2\<lambda\>|)><rsub|m>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)><rsup|2>\<Gamma\><around*|(|1+2\<nu\>+2\<lambda\>|)>|\<Gamma\><around*|(|\<nu\>+<frac|n-m|2>+\<lambda\>+1|)>\<Gamma\><around*|(|\<lambda\>+1-<frac|n-m|2>+\<nu\>|)>\<Gamma\><around*|(|1+\<nu\>+2\<lambda\>+<frac|m+n|2>|)>>=>|<cell|>>|<row|<cell|>|<cell|<around*|(|\<Gamma\><around*|(|z+a|)>/\<Gamma\><around*|(|z+b|)>\<sim\>z<rsup|a-b>,<space|1em><around*|(|2\<lambda\>|)><rsub|n>\<sim\>2<rsup|n>\<lambda\><rsup|n>|)>>|<cell|>>|<row|<cell|>|<cell|<around*|(|-\<nu\>|)><rsub|<frac|n+m|2>><around*|(|-1|)><rsup|<frac|n-m|2>>\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>2<rsup|n+m>lim<rsub|\<lambda\>\<rightarrow\>\<infty\>><around*|(|\<lambda\><rsup|1+\<nu\>+<frac|m+n|2>>\<lambda\><rsup|<frac|1|2>-<around*|(|\<nu\>+<frac|n-m|2>+1|)>>\<lambda\><rsup|<frac|1|2>-1-<frac|n-m|2>+\<nu\>><around*|(|2\<lambda\>|)><rsup|1+2\<nu\>-1-\<nu\>-<frac|m+n|2>>|)>=>|<cell|>>|<row|<cell|>|<cell|<around*|(|-\<nu\>|)><rsub|<frac|n+m|2>><around*|(|-1|)><rsup|<frac|n-m|2>>\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>2<rsup|n+m>2<rsup|\<nu\>-<frac|m+n|2>>lim<rsub|\<lambda\>\<rightarrow\>\<infty\>><around*|(|\<lambda\><rsup|1+\<nu\>+<frac|m+n|2>>\<lambda\><rsup|-1>\<lambda\><rsup|\<nu\>-<frac|m+n|2>>|)>=>|<cell|>>|<row|<cell|>|<cell|<frame|<around*|(|-\<nu\>|)><rsub|<frac|n+m|2>><around*|(|-1|)><rsup|<frac|n-m|2>>\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>2<rsup|\<nu\>+<frac|m+n|2>>>.>|<cell|>>>>
  </eqnarray>

  <\remark>
    Note that in fact we can use computations above to give the expression in
    Gamma functions to the slightly more general integral:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|a\<gtr\>0,<big|int><rsub|-\<infty\>><rsup|\<infty\>><big|int><rsub|-\<infty\>><rsup|\<infty\>><around*|\||x-a
      y|\|><rsup|2\<nu\>>e<rsup|-x<rsup|2>-y<rsup|2>>H<rsub|n><around*|(|x|)>H<rsub|m><around*|(|y|)>d
      x d y=\<ldots\>>|<cell|>>>>
    </eqnarray>
  </remark>

  <\question>
    <label|q15>Check the correctness of the computations in Question
    <reference|q14>.
  </question>

  To this end, we provide the another proof of the equality of Question
  <reference|q14>:

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-\<infty\>><rsup|\<infty\>><big|int><rsub|-\<infty\>><rsup|\<infty\>><around*|\||x-y|\|><rsup|2\<nu\>>e<rsup|-x<rsup|2>-y<rsup|2>>H<rsub|n><around*|(|x|)>H<rsub|m><around*|(|y|)>d
    x d y=>|<cell|>>|<row|<cell|>|<cell|<around*|(|H<rsub|n><around*|(|x|)>=<around*|(|-1|)><rsup|n>e<rsup|x<rsup|2>><frac|d<rsup|n>|d
    x<rsup|n>>e<rsup|-x<rsup|2>>|)>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|-\<infty\>><rsup|\<infty\>><big|int><rsub|-\<infty\>><rsup|\<infty\>><around*|\||x-y|\|><rsup|2\<nu\>>e<rsup|-x<rsup|2>-y<rsup|2>><frac|\<partial\>|\<partial\>x<rsup|n>>e<rsup|-x<rsup|2>><frac|\<partial\>|\<partial\>x<rsup|m>>e<rsup|-x<rsup|2>>d
    x d y=>|<cell|>>|<row|<cell|>|<cell|<around*|(|integration by
    parts|)>>|<cell|>>|<row|<cell|>|<cell|<around*|(|-1|)><rsup|m><around*|(|-2\<nu\>|)><rsub|n+m><big|int><rsub|-\<infty\>><rsup|\<infty\>><big|int><rsub|-\<infty\>><rsup|\<infty\>><around*|\||x-y|\|><rsup|2\<nu\>-n-m>e<rsup|-x<rsup|2>-y<rsup|2>>d
    x d y=>|<cell|>>|<row|<cell|>|<cell|<around*|(|<math-up|Mehta's
    integral:><big|int><rsub|t\<in\>\<bbb-R\><rsup|n>>\<Delta\><rsup|2\<gamma\>><around*|(|t|)>e<rsup|-<around*|\||t|\|><rsup|2>/2>d
    t=<around*|(|2\<pi\>|)><rsup|n/2><big|prod><rsub|j=1><rsup|n><frac|\<Gamma\><around*|(|1+j\<gamma\>|)>|\<Gamma\><around*|(|1+\<gamma\>|)>>|)>>|<cell|>>|<row|<cell|>|<cell|<around*|(|-1|)><rsup|m><around*|(|-2\<nu\>|)><rsub|n+m>2<rsup|<frac|n+m|2>-\<nu\>>\<pi\><frac|\<Gamma\><around*|(|1+2\<nu\>-n-m|)>|\<Gamma\><around*|(|1+\<nu\>-<frac|n+m|2>|)>>=<frac|<around*|(|-1|)><rsup|m>2<rsup|<frac|n+m|2>-\<nu\>>\<pi\>\<Gamma\><around*|(|n+m-2\<nu\>|)>\<Gamma\><around*|(|1+2\<nu\>-n-m|)>|\<Gamma\><around*|(|-2\<nu\>|)>\<Gamma\><around*|(|1+\<nu\>-<frac|n+m|2>|)>>=>|<cell|>>|<row|<cell|>|<cell|<frac|<around*|(|-1|)><rsup|m>2<rsup|<frac|n+m|2>-\<nu\>>\<pi\>\<Gamma\><around*|(|1+2\<nu\>|)>|\<Gamma\><around*|(|1+\<nu\>-<frac|n+m|2>|)>>=<frac|<around*|(|-1|)><rsup|m><sqrt|\<pi\>>2<rsup|<frac|n+m|2>+\<nu\>>\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<nu\>+1|)>|\<Gamma\><around*|(|1+\<nu\>-<frac|n+m|2>|)>>=>|<cell|>>|<row|<cell|>|<cell|<frac|<around*|(|-1|)><rsup|<frac|n-m|2>><sqrt|\<pi\>>2<rsup|\<nu\>+<frac|n+m|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>\<Gamma\><around*|(|<frac|n+m|2>-\<nu\>|)>|\<Gamma\><around*|(|-\<nu\>|)>>=<around*|(|-\<nu\>|)><rsub|<frac|n+m|2>><around*|(|-1|)><rsup|<frac|n-m|2>>\<pi\><rsup|<frac|1|2>>2<rsup|\<nu\>+<frac|n+m|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>.>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>>>
  </eqnarray>

  <\question>
    Is the equality of the Question <reference|q14> can be found in some
    other published work?
  </question>

  I have not found explicit reference yet. Nevertheless,

  <\enumerate-numeric>
    <item>\PMathematica\Q software seems to not know this equality.\ 

    <item><cite|mackenzie2003hermite>
  </enumerate-numeric>

  Nevertheless, I have found reference <hlink|http://functions.wolfram.com/Polynomials/HermiteH/21/02/01/0008/|http://functions.wolfram.com/Polynomials/HermiteH/21/02/01/0008/>
  for the equality:

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-\<infty\>><rsup|\<infty\>>e<rsup|-<frac|z<rsup|2>|2>-<frac|1|2>*<around|(|z-\<zeta\>|)><rsup|2>>*H<rsub|n><around|(|z|)>*H<rsub|p>*<around|(|z-\<zeta\>|)>*<space|0.17em>d*z=*>|<cell|>>|<row|<cell|>|<cell|<frac|<sqrt|\<pi\>>*e<rsup|-<frac|\<zeta\><rsup|2>|4>>*<sqrt|2<rsup|n>*n!>*<sqrt|2<rsup|p>*p!>(-\<zeta\>)<rsup|p-n><sqrt|2<rsup|n-p>*\<Gamma\>*<around|(|n+1|)>*\<Gamma\>*<around|(|p+1|)>>*<space|0.17em><rsub|1><wide|F|~><rsub|1>*<around*|(|-n;-n+p+1;<frac|\<zeta\><rsup|2>|2>|)>|\<Gamma\>*<around|(|n+1|)>>,>|<cell|>>>>
  </eqnarray>

  from which the equality of Question <reference|q14> essentially follows (it
  is the inner integral of the iterated integral). Also, from the proof in
  Question <reference|q15>, we see that the equality of Question
  <reference|q14> essentially follows by integration by parts from the
  well-known Mehta integral.

  <\question>
    Compute special case <math|\<nu\>=0> of the equality
    <math|<eqref|eqn:thm1>> using beta-integrals.
  </question>

  Indeed,\ 

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|LHS<eqref|eqn:thm1>=>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|s,t=-1><rsup|1><around*|\||\<varepsilon\>s
    a+\<varepsilon\><rprime|'>t b|\|><rsup|2\<nu\>>u<rsub|l><rsup|\<lambda\>><around*|(|s|)>u<rsub|m><rsup|\<mu\>><around*|(|t|)>d
    s d t=>|<cell|>>|<row|<cell|>|<cell|<around*|(|\<nu\>=0|)>>|<cell|>>|<row|<cell|>|<cell|<frac|l!m!\<pi\>|<around*|(|2\<lambda\>|)><rsub|l><around*|(|2\<mu\>|)><rsub|m>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)>><big|int><rsub|s,t=-1><rsup|1><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>C<rsub|m><rsup|\<mu\>><around*|(|t|)>d
    s d t=>|<cell|>>|<row|<cell|>|<cell|<around*|(|\<delta\><rsup|x><rsub|y>\<assign\><choice|<tformat|<table|<row|<cell|0,>|<cell|x\<neq\>y>>|<row|<cell|1,>|<cell|x=y>>>>>,<space|1em><big|int><rsub|-1><rsup|1><around*|(|1-x<rsup|2>|)><rsup|\<alpha\>-1>d
    x=2<rsup|2\<alpha\>-1>B<around*|(|\<alpha\>,\<alpha\>|)>=<frac|<sqrt|\<pi\>>\<Gamma\><around*|(|\<alpha\>|)>|\<Gamma\><around*|(|\<alpha\>+<frac|1|2>|)>>|)>>|<cell|>>|<row|<cell|>|<cell|<frac|l!m!\<pi\><rsup|2>\<delta\><rsub|l><rsup|0>\<delta\><rsub|m><rsup|0>|<around*|(|2\<lambda\>|)><rsub|l><around*|(|2\<mu\>|)><rsub|m>\<Gamma\><around*|(|\<lambda\>+1|)>\<Gamma\><around*|(|\<mu\>+1|)>>=<frac|\<pi\><rsup|2>\<delta\><rsub|l><rsup|0>\<delta\><rsub|m><rsup|0>|\<Gamma\><around*|(|\<lambda\>+1|)>\<Gamma\><around*|(|\<mu\>+1|)>>;>|<cell|>>|<row|<cell|>|<cell|RHS<eqref|eqn:thm1>=>|<cell|>>|<row|<cell|>|<cell|<frame|<around*|(|-\<nu\>|)><rsub|<frac|l+m|2>>>\<times\>\<ldots\>=>|<cell|>>|<row|<cell|>|<cell|<around*|(|\<nu\>=0|)>>|<cell|>>|<row|<cell|>|<cell|\<delta\><rsup|0><rsub|l+m>RHS<eqref|eqn:thm1>=\<delta\><rsub|l><rsup|0>\<delta\><rsub|m><rsup|0>\<pi\><rsup|2><choice|<tformat|<table|<row|<cell|<frac|<rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|0,-\<lambda\>>>|<row|<cell|\<mu\>+1>>>>>;<frac|b<rsup|2>|a<rsup|2>>|)>|\<Gamma\><around*|(|\<mu\>+1|)>\<Gamma\><around*|(|\<lambda\>+1|)>>,>|<cell|<around*|\||b|\|>\<leqslant\><around*|\||a|\|>,>>|<row|<cell|<frac|
    <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|0,-\<mu\>>>|<row|<cell|\<lambda\>+1>>>>>;<frac|a<rsup|2>|b<rsup|2>>|)>|\<Gamma\><around*|(|\<lambda\>+1|)>\<Gamma\><around*|(|\<mu\>+1|)>>,>|<cell|<around*|\||a|\|>\<leqslant\><around*|\||b|\|>,>>>>>=<frac|\<pi\><rsup|2>\<delta\><rsub|l><rsup|0>\<delta\><rsub|m><rsup|0>|\<Gamma\><around*|(|\<lambda\>+1|)>\<Gamma\><around*|(|\<mu\>+1|)>>.>|<cell|>>>>
  </eqnarray>

  <\question>
    <label|q18>Can we use prove more general equality than that of
    <math|<eqref|eqn:herm1>> using the same techniques?
  </question>

  In fact, we can show

  <\corollary>
    <label|cor:2>

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-\<infty\>><rsup|\<infty\>><big|int><rsub|-\<infty\>><rsup|\<infty\>><around*|\||x-z
      y|\|><rsup|2\<nu\>>e<rsup|-x<rsup|2>-y<rsup|2>>H<rsub|l><around*|(|x|)>H<rsub|m><around*|(|y|)>d
      x d y=<around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>>2<rsup|l+m>\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)><around*|(|z<rsup|2>+1|)><rsup|\<nu\>-<frac|l+m|2>>z<rsup|m>.>|<cell|>>>>
    </eqnarray>
  </corollary>

  Indeed,

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s-t|\|><rsup|2\<nu\>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>C<rsub|m><rsup|\<mu\>><around*|(|t|)>d
    s d t=>|<cell|>>|<row|<cell|>|<cell|<frac|<around*|(|2\<lambda\>|)><rsub|l><around*|(|2\<mu\>|)><rsub|m>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)><around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>>\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>\<Gamma\><around*|(|\<mu\>+1+2\<nu\>+\<lambda\>|)>|l!m!\<Gamma\><around*|(|\<nu\>+<frac|l-m|2>+\<lambda\>+1|)>\<Gamma\><around*|(|\<mu\>+1-<frac|l-m|2>+\<nu\>|)>\<Gamma\><around*|(|\<mu\>+1+\<nu\>+\<lambda\>+<frac|m+l|2>|)>>\<Rightarrow\>>|<cell|>>|<row|<cell|>|<cell|<around*|(|s\<rightarrow\><frac|x|<sqrt|\<lambda\>>>,t\<rightarrow\><frac|y|<sqrt|\<mu\>>>,\<mu\>\<rightarrow\>z\<lambda\>,z\<gtr\>0|)>>|<cell|>>|<row|<cell|>|<cell|<frac|1|\<lambda\><sqrt|z>><big|int><rsub|-<sqrt|\<lambda\>>><rsup|<sqrt|\<lambda\>>><big|int><rsub|-<sqrt|z\<lambda\>>><rsup|<sqrt|z\<lambda\>>><around*|\||<frac|x-y/<sqrt|z>|<sqrt|\<lambda\>>>|\|><rsup|2\<nu\>><around*|(|1-<frac|x<rsup|2>|\<lambda\>>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-<frac|y<rsup|2>|z\<lambda\>>|)><rsup|z\<lambda\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|<frac|x<rsup|2>|\<lambda\>>|)>C<rsub|m><rsup|z\<lambda\>><around*|(|<frac|y<rsup|2>|z\<lambda\>>|)>d
    s d t=>|<cell|>>|<row|<cell|>|<cell|<frac|<around*|(|2\<lambda\>|)><rsub|l><around*|(|2z\<lambda\>|)><rsub|m>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|z\<lambda\>+<frac|1|2>|)><around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>>\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>\<Gamma\><around*|(|z\<lambda\>+1+2\<nu\>+\<lambda\>|)>|l!m!\<Gamma\><around*|(|\<nu\>+<frac|l-m|2>+\<lambda\>+1|)>\<Gamma\><around*|(|z\<lambda\>+1-<frac|l-m|2>+\<nu\>|)>\<Gamma\><around*|(|z\<lambda\>+1+\<nu\>+\<lambda\>+<frac|m+l|2>|)>>\<Rightarrow\>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|-<sqrt|\<lambda\>>><rsup|<sqrt|\<lambda\>>><big|int><rsub|-<sqrt|z\<lambda\>>><rsup|<sqrt|z\<lambda\>>><around*|\||x-<frac|y|<sqrt|z>>|\|><rsup|2\<nu\>><around*|(|1-<frac|x<rsup|2>|\<lambda\>>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-<frac|y<rsup|2>|z\<lambda\>>|)><rsup|z\<lambda\>-<frac|1|2>>\<lambda\><rsup|-<frac|n|2>>C<rsub|l><rsup|\<lambda\>><around*|(|<frac|x<rsup|2>|\<lambda\>>|)><around*|(|z\<lambda\>|)><rsup|-<frac|m|2>>C<rsub|m><rsup|z\<lambda\>><around*|(|<frac|y<rsup|2>|z\<lambda\>>|)>d
    s d t=>|<cell|>>|<row|<cell|>|<cell|<frac|\<lambda\><rsup|1+\<nu\>-<frac|m+n|2>>z<rsup|<frac|1-m|2>><around*|(|2\<lambda\>|)><rsub|l><around*|(|2z\<lambda\>|)><rsub|m>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|z\<lambda\>+<frac|1|2>|)><around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>>\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>\<Gamma\><around*|(|z\<lambda\>+1+2\<nu\>+\<lambda\>|)>|l!m!\<Gamma\><around*|(|\<nu\>+<frac|l-m|2>+\<lambda\>+1|)>\<Gamma\><around*|(|z\<lambda\>+1-<frac|l-m|2>+\<nu\>|)>\<Gamma\><around*|(|z\<lambda\>+1+\<nu\>+\<lambda\>+<frac|m+l|2>|)>>\<Rightarrow\>>|<cell|>>|<row|<cell|>|<cell|<around*|(|l\<rightarrow\>n<space|1em>;\<lambda\>\<rightarrow\>\<infty\>;<space|1em>\<lambda\><rsup|-<frac|n|2>>C<rsub|n><rsup|\<lambda\>><around*|(|<frac|x|<sqrt|\<lambda\>>>|)>\<rightarrow\><frac|H<rsub|n><around*|(|x|)>|n!>,<space|0.6spc><around*|(|1-<frac|x<rsup|2>|\<lambda\>>|)><rsup|\<lambda\>-<frac|1|2>>\<rightarrow\>e<rsup|-x<rsup|2>>|)>>|<cell|>>|<row|<cell|>|<cell|<frame|<big|int><rsub|-\<infty\>><rsup|\<infty\>><big|int><rsub|-\<infty\>><rsup|\<infty\>><around*|\||x-<frac|y|<sqrt|z>>|\|><rsup|2\<nu\>>e<rsup|-x<rsup|2>-y<rsup|2>>H<rsub|n><around*|(|x|)>H<rsub|m><around*|(|y|)>d
    x d y>=<around*|(|-\<nu\>|)><rsub|<frac|n+m|2>><around*|(|-1|)><rsup|<frac|n-m|2>>\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>z<rsup|<frac|1-m|2>>>|<cell|>>|<row|<cell|>|<cell|lim<rsub|\<lambda\>\<rightarrow\>\<infty\>><frac|\<lambda\><rsup|1+\<nu\>-<frac|m+n|2>><around*|(|2\<lambda\>|)><rsub|n><around*|(|2z\<lambda\>|)><rsub|m>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|z\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|1+2\<nu\>+<around*|(|z+1|)>\<lambda\>|)>|\<Gamma\><around*|(|\<nu\>+<frac|n-m|2>+\<lambda\>+1|)>\<Gamma\><around*|(|z\<lambda\>+1-<frac|n-m|2>+\<nu\>|)>\<Gamma\><around*|(|1+\<nu\>+<around*|(|z+1|)>\<lambda\>+<frac|m+n|2>|)>>=>|<cell|>>|<row|<cell|>|<cell|<around*|(|\<Gamma\><around*|(|z+a|)>/\<Gamma\><around*|(|z+b|)>\<sim\>z<rsup|a-b>,<space|1em><around*|(|2\<lambda\>|)><rsub|n>\<sim\>2<rsup|n>\<lambda\><rsup|n>|)>>|<cell|>>|<row|<cell|>|<cell|<around*|(|-\<nu\>|)><rsub|<frac|n+m|2>><around*|(|-1|)><rsup|<frac|n-m|2>>\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>2<rsup|n+m>z<rsup|<frac|1+m|2>>\<times\>>|<cell|>>|<row|<cell|>|<cell|lim<rsub|\<lambda\>\<rightarrow\>\<infty\>><around*|(|\<lambda\><rsup|1+\<nu\>+<frac|m+n|2>>\<lambda\><rsup|<frac|1|2>-<around*|(|\<nu\>+<frac|n-m|2>+1|)>><around*|(|z\<lambda\>|)><rsup|<frac|1|2>-1+<frac|n-m|2>-\<nu\>><around*|(|<around*|(|z+1|)>\<lambda\>|)><rsup|1+2\<nu\>-1-\<nu\>-<frac|m+n|2>>|)>=>|<cell|>>|<row|<cell|>|<cell|<around*|(|-\<nu\>|)><rsub|<frac|n+m|2>><around*|(|-1|)><rsup|<frac|n-m|2>>\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>2<rsup|n+m><around*|(|1+z|)><rsup|\<nu\>-<frac|m+n|2>>z<rsup|<frac|n|2>-\<nu\>>lim<rsub|\<lambda\>\<rightarrow\>\<infty\>><around*|(|\<lambda\><rsup|1+\<nu\>+<frac|m+n|2>>\<lambda\><rsup|-1>\<lambda\><rsup|\<nu\>-<frac|m+n|2>>|)>=>|<cell|>>|<row|<cell|>|<cell|<frame|<around*|(|-\<nu\>|)><rsub|<frac|n+m|2>><around*|(|-1|)><rsup|<frac|n-m|2>>\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>2<rsup|m+n><around*|(|1+z|)><rsup|\<nu\>-<frac|m+n|2>>z<rsup|<frac|n|2>-\<nu\>>>,>|<cell|>>>>
  </eqnarray>

  and the latter is equivalent to the formula in Corollary <reference|cor:2>.

  <\question>
    Is there any relation of the equality in Question <reference|q18> to some
    known results for <math|l,m\<neq\>0>?
  </question>

  Indeed, the equality in Question <reference|q18> is equivalent to

  \;

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-\<infty\>><rsup|\<infty\>><big|int><rsub|-\<infty\>><rsup|\<infty\>><around*|\||x-z
    y|\|><rsup|2\<nu\>>e<rsup|-x<rsup|2>-y<rsup|2>>H<rsub|l><around*|(|x|)>H<rsub|m><around*|(|y|)>d
    x d y=<around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>>2<rsup|l+m>\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)><around*|(|z<rsup|2>+1|)><rsup|\<nu\>-<frac|l+m|2>>z<rsup|m>.>|<cell|>>>>
  </eqnarray>

  Now, setting <math|<around*|(|z,m|)>=<around*|(|0,0|)>> we get

  \;

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-\<infty\>><rsup|\<infty\>><big|int><rsub|-\<infty\>><rsup|\<infty\>><around*|\||x|\|><rsup|2\<nu\>>e<rsup|-x<rsup|2>-y<rsup|2>>H<rsub|l><around*|(|x|)>d
    x d y=<around*|(|-\<nu\>|)><rsub|<frac|l|2>><around*|(|-1|)><rsup|<frac|l|2>>2<rsup|l>\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>\<Leftrightarrow\>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|-\<infty\>><rsup|\<infty\>><around*|\||x|\|><rsup|2\<nu\>>e<rsup|-x<rsup|2>>H<rsub|l><around*|(|x|)>d
    x =<around*|(|-\<nu\>|)><rsub|<frac|l|2>><around*|(|-1|)><rsup|<frac|l|2>>2<rsup|l>\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)>.>|<cell|>>>>
  </eqnarray>

  Using the orthogonality of the functions
  <math|<around*|{|e<rsup|-x<rsup|2>/2>H<rsub|n><around*|(|x|)>|}><rsub|n=0><rsup|\<infty\>>>,
  we deduce the expansion

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<around*|\||x|\|><rsup|2\<nu\>>=\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)><big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|(|-\<nu\>|)><rsub|n><around*|(|-1|)><rsup|n>|2<around*|(|2n|)>!<sqrt|\<pi\>>>H<rsub|2n><around*|(|x|)>,>|<cell|>>>>
  </eqnarray>

  which is a generalization of <cite-detail|rainville1960special|Ch. 11, Sec.
  110, (4)> (the result there contains expansion of <math|x<rsup|n>> for
  <math|n\<in\>\<bbb-N\>>).

  <\theorem>
    <label|thm-2>The following holds:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s-t
      z|\|><rsup|2\<nu\>>u<rsub|l><rsup|\<lambda\>><around*|(|s|)>u<rsub|m><rsup|\<mu\>><around*|(|t|)>d
      s d t>|<cell|>>|<row|<cell|>|<cell|=<frac|<around*|(|-\<nu\>|)><rsub|<frac|l+m|2>><around*|(|-1|)><rsup|<frac|l-m|2>>\<pi\><rsup|<frac|3|2>>\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)>z<rsup|m>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|l+m|2>-\<nu\>,<frac|m-l|2>-\<nu\>-\<lambda\>>>|<row|<cell|\<mu\>+m+1>>>>>;z<rsup|2>|)>|\<Gamma\><around*|(|\<mu\>+m+1|)>\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|l-m|2>+1|)>>,<eq-number><label|eqn:main>>|<cell|>>>>
    </eqnarray>
  </theorem>

  <new-page>

  <\question>
    <label|q:20>Is it possible to see Theorem <reference|thm-2>, Corollary
    <reference|cor> and <reference|cor:2> in another perspective?
  </question>

  Indeed, as for <math|Re<around*|(|\<lambda\>|)>\<gtr\>-<frac|1|2>><\footnote>
    I think we need to require <math|Re<around*|(|\<lambda\>|)>\<gtr\>-<frac|1|2>,\<lambda\>\<neq\>0>,
    not only <math|Re<around*|(|\<lambda\>|)>\<gtr\>-<frac|1|2>>. See
    <cite-detail|keiner2009computing|Sec. 3>
  </footnote> we have <math|\<forall\>n\<in\>\<bbb-N\>,deg<around*|(|C<rsup|\<lambda\>><rsub|n>|)>=n>
  (this can be seen from the recurrence relation), the orthogonality of
  Gegenbauer polynomials implies that <math|<around*|{|C<rsub|n><rsup|\<lambda\>>|}><rsub|n\<in\>\<bbb-N\>>>
  form an orthonormal basis of <math|L<rsup|2><around*|(|<around*|[|-1,1|]>,<around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>>d
  s|)>>. Consequently, if <math|Re<around*|(|\<lambda\>|)>,Re<around*|(|\<mu\>|)>\<gtr\>-<frac|1|2>>,
  we have that <math|<around*|{|C<rsub|l><rsup|\<lambda\>>\<otimes\>C<rsub|m><rsup|\<mu\>>|}><rsub|l,m\<in\>\<bbb-N\>>>
  form an orthonormal basis of <math|L<rsup|2><around*|(|<around*|[|-1,1|]><rsup|2>,<around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>d
  s d t|)>><\footnote>
    Is the statement better now?
  </footnote>. Consequently, for <math|Re \<lambda\>,Re
  \<mu\>\<gtr\>-<frac|1|2>> and <math|Re<around*|(|\<nu\>|)>\<gtr\>0> we can
  expand <math|<around*|\||s+t|\|><rsup|2\<nu\>>> into
  <math|<around*|{|C<rsub|n><rsup|\<lambda\>>\<otimes\>C<rsub|m><rsup|\<mu\>>|}><rsub|m,n\<in\>\<bbb-N\>>>.
  In fact, the coefficients of the expansion can be explicitly written in
  Gamma functions. More precisely,

  <\theorem>
    <label|thm:3>For <math|Re \<lambda\>,Re \<mu\>\<gtr\>-<frac|1|2>> and
    <math|Re<around*|(|\<nu\>|)>\<gtr\>0> the following holds:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<around*|\||s+t|\|><rsup|2\<nu\>>sgn<rsup|<frac|1\<pm\>1|2>><around*|(|s+
      z|)>=<big|sum><rsub|l,m=0\<mid\>l+m\<equiv\><frac|1\<pm\>1|2>mod
      2><rsup|\<infty\>>a<rsub|l,m>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>C<rsub|m><rsup|\<mu\>><around*|(|t|)>,>|<cell|>>|<row|<cell|>|<cell|a<rsub|l,m>=<frac|<around*|(|\<lambda\>+l|)><around*|(|\<mu\>+m|)>\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+2\<nu\>+1|)>\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|\<mu\>|)>|\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|l-m|2>+1|)><around*|(|1+\<nu\>|)><rsub|-<frac|l+m|2>>\<Gamma\><around*|(|\<mu\>+\<nu\>-<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+<frac|l+m|2>+1|)>>.>|<cell|>>>>
    </eqnarray>
  </theorem>

  <\proof>
    Follows from Theorem <reference|thm:4> upon taking <math|z=1>.
  </proof>

  Even more general result holds:

  <\theorem>
    <label|thm:4>For <math|Re \<lambda\>,Re \<mu\>\<gtr\>-<frac|1|2>>,
    <math|Re<around*|(|\<nu\>|)>\<gtr\>0> and
    <math|0\<leqslant\>z\<leqslant\>1> the following holds:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<around*|\||s+t
      z|\|><rsup|2\<nu\>>sgn<rsup|<frac|1\<pm\>1|2>><around*|(|s+t
      z|)>=<big|sum><rsub|l,m=0\<mid\>l+m\<equiv\><frac|1\<pm\>1|2>mod
      2><rsup|\<infty\>>a<rsub|l,m><around*|(|z|)>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>C<rsub|m><rsup|\<mu\>><around*|(|t|)>,>|<cell|>>|<row|<cell|>|<cell|a<rsub|l,m><around*|(|z|)>=<frac|\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|\<mu\>|)><around*|(|\<lambda\>+l|)>z<rsup|m>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|l+m|2>-\<nu\>,<frac|m-l|2>-\<nu\>-\<lambda\>>>|<row|<cell|\<mu\>+m+1>>>>>;z<rsup|2>|)>|<around*|(|1+\<nu\>|)><rsub|-<frac|l+m|2>><sqrt|\<pi\>>\<Gamma\><around*|(|\<mu\>+m|)>\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|l-m|2>+1|)>>,>|<cell|>>>>
    </eqnarray>
  </theorem>

  <\remark>
    Using the fact that <math|C<rsub|m><rsup|\<mu\>><around*|(|-t|)>=<around*|(|-1|)><rsup|m>C<rsub|m><rsup|\<mu\>><around*|(|t|)>>,
    we see that the result of Theorem <reference|thm:4> can be extended to
    <math|-1\<leqslant\>z\<less\>0>.
  </remark>

  <\example>
    Setting <math|z=0> we arrive at the equality

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<around*|\||s|\|><rsup|2\<nu\>>sgn<rsup|<frac|1\<pm\>1|2>><around*|(|s|)>=<big|sum><rsub|l=0\<mid\>l\<equiv\><frac|1\<pm\>1|2>mod
      2><rsup|\<infty\>><frac|\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>|)><around*|(|\<lambda\>+l|)>|<around*|(|1+\<nu\>|)><rsub|-<frac|l|2>><sqrt|\<pi\>>\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|l|2>+1|)>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>.>|<cell|>>>>
    </eqnarray>

    Now, taking <math|2\<nu\>=n\<in\>\<bbb-N\>> and taking the sign to be
    <math|+> or <math|-> depending on whether <math|n> is even or
    respectively odd, we arrive at the formula:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|s<rsup|n>=<big|sum><rsub|l=0><rsup|<around*|[|<frac|n|2>|]>><frac|2<rsup|-n>n!<around*|(|\<lambda\>+n-2l|)>|l!<around*|(|\<lambda\>|)><rsub|n-l+1>>C<rsub|n-2l><rsup|\<lambda\>><around*|(|s|)>,>|<cell|>>>>
    </eqnarray>

    which is equivalent to the one previously derived in
    <cite-detail|rainville1960special|Ÿ144, (36)>.
  </example>

  <\proof>
    Orthogonality of Gegenbauer polynomials

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>C<rsub|l<rprime|'>><rsup|\<lambda\><rprime|'>><around*|(|s|)>d
      s=<frac|<sqrt|\<pi\>>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)><around*|(|2\<lambda\>|)><rsub|l>|l!<around*|(|l+\<lambda\>|)>\<Gamma\><around*|(|\<lambda\>|)>>\<delta\><rsub|l><rsup|l<rprime|'>>>|<cell|>>>>
    </eqnarray>

    implies that for <math|l+m> even

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<frac|\<pi\>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)><around*|(|2\<lambda\>|)><rsub|l><around*|(|2\<mu\>|)><rsub|m>|l!m!<around*|(|l+\<lambda\>|)><around*|(|m+\<mu\>|)>\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|\<mu\>|)>>a<rsub|l,m><around*|(|z|)>>|<cell|>>|<row|<cell|>|<cell|=<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s-t
      z|\|><rsup|2\<nu\>><around*|(|1-t<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-s<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>C<rsub|m><rsup|\<mu\>><around*|(|t|)>d
      s d t.>|<cell|>>>>
    </eqnarray>

    Now, Theorem 1.1 of <samp|intpaper.pdf> essentially states that

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<frac|l!m!\<pi\>|\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)><around*|(|2\<lambda\>|)><rsub|l><around*|(|2\<mu\>|)><rsub|m>><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s+t
      z|\|><rsup|2\<nu\>><around*|(|1-t<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-s<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>C<rsub|m><rsup|\<mu\>><around*|(|t|)>d
      s d t>|<cell|>>|<row|<cell|>|<cell|=<frac|\<pi\><rsup|<frac|3|2>>\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)><around*|(|-z|)><rsup|m>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|l+m|2>-\<nu\>,<frac|m-l|2>-\<nu\>-\<lambda\>>>|<row|<cell|\<mu\>+m+1>>>>>;z<rsup|2>|)>|<around*|(|1+\<nu\>|)><rsub|-<frac|l+m|2>>\<Gamma\><around*|(|\<mu\>+m+1|)>\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|l-m|2>+1|)>>,>|<cell|>>>>
    </eqnarray>

    whereas the expression for <math|a<rsub|l,m><around*|(|z|)>> for
    <math|l+m> even follows.

    Similarly, to compute an expression for <math|a<rsub|l,m><around*|(|z|)>>
    for <math|l+m> odd, one should compute the integral

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s+t
      z|\|><rsup|2\<nu\>>sgn<around*|(|s-t
      z|)><around*|(|1-t<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-s<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>C<rsub|m><rsup|\<mu\>><around*|(|t|)>d
      s d t>|<cell|>>>>
    </eqnarray>

    for <math|l+m> odd. It is computed similarly to the proof of Theorem 1.1
    in <samp|intpaper.pdf> and is essentially Rodrigues formula for
    Gegenbauer polynomials, integration by parts and Proposition 2.1 from
    <samp|intpaper.pdf>.
  </proof>

  Similarly, it can be seen from the recurrence relation that Hermite
  polynomials <math|H<rsub|n><around*|(|x|)>> have their degree equal to
  their index, hence their orthogonality implies that
  <math|<around*|{|H<rsub|l>\<otimes\>H<rsub|m>|}><rsub|l,m\<in\>\<bbb-N\>>>
  form the orthonormal basis of <math|L<rsup|2><around*|(|\<bbb-R\><rsup|2>,e<rsup|-x<rsup|2>-y<rsup|2>>d
  x d y|)>>. Taking the limit of the Theorem <reference|thm:4> and using the
  relation <math|\<lambda\><rsup|-<frac|n|2>>C<rsub|n><rsup|\<lambda\>><around*|(|<frac|x|<sqrt|\<lambda\>>>|)>\<rightarrow\><frac|H<rsub|n><around*|(|x|)>|n!>>,
  we easily arrive at

  <\corollary>
    <label|cor:3>For <math|Re \<lambda\>,Re \<mu\>\<gtr\>-<frac|1|2>>,
    <math|Re<around*|(|\<nu\>|)>\<gtr\>0> and <math|z\<geqslant\>0> the
    following holds:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<around*|\||x+z
      y|\|><rsup|2\<nu\>>sgn<rsup|<frac|1\<pm\>1|2>><around*|(|x+z
      y|)>=<big|sum><rsub|l,m=0\<mid\>l+m\<equiv\><frac|1\<pm\>1|2>mod
      2><rsup|\<infty\>>a<rsub|l,m><around*|(|z|)>H<rsub|l><around*|(|x|)>H<rsub|m><around*|(|y|)>,>|<cell|>>|<row|<cell|>|<cell|a<rsub|l,m><around*|(|z|)>=<frac|\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)><around*|(|z<rsup|2>+1|)><rsup|\<nu\>-<frac|l+m|2>>z<rsup|m>|<around*|(|1+\<nu\>|)><rsub|-<frac|l+m|2>>\<pi\><rsup|<frac|1|2>>l!m!>.>|<cell|>>>>
    </eqnarray>
  </corollary>

  <\remark>
    Using the fact that <math|H<rsub|m><around*|(|-y|)>=<around*|(|-1|)><rsup|m>H<rsub|m><around*|(|y|)>>,
    we see that the result of Corollary <reference|cor:3> can be extended to
    <math|z\<leqslant\>0>.
  </remark>

  <\example>
    Setting <math|z=0> we arrive at the equality

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<around*|\||x|\|><rsup|2\<nu\>>sgn<rsup|<frac|1\<pm\>1|2>><around*|(|x|)>=<big|sum><rsub|l=0\<mid\>l\<equiv\><frac|1\<pm\>1|2>mod
      2><rsup|\<infty\>><frac|\<Gamma\><around*|(|<frac|1|2>+\<nu\>|)><around*|(|z<rsup|2>+1|)><rsup|\<nu\>-<frac|l|2>>|<around*|(|1+\<nu\>|)><rsub|-<frac|l|2>>\<pi\><rsup|<frac|1|2>>l!>H<rsub|l><around*|(|x|)>.>|<cell|>>>>
    </eqnarray>

    Now, taking <math|2\<nu\>=n\<in\>\<bbb-N\>> and taking the sign to be
    <math|+> or <math|-> depending on whether <math|n> is even or
    respectively odd, we arrive at the formul:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|x<rsup|n>=<big|sum><rsub|l=0><rsup|<around*|[|<frac|n|2>|]>><frac|2<rsup|-n>n!|l!<around*|(|n-2l|)>!>H<rsub|n-2l><around*|(|x|)>,>|<cell|>>>>
    </eqnarray>

    which is equivalent to the one previously derived in
    <cite-detail|rainville1960special|Ÿ110, (4)>.
  </example>

  <new-page>

  <\question>
    <label|q:21>How does the results of Question <reference|q:20> relate to
    <cite-detail|kobayashi2011schrodinger|(7.4.11)>?
  </question>

  The formula <cite-detail|kobayashi2011schrodinger|(7.4.11)> is equivalent
  to the expansion

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<around*|(|x+y|)><rsub|+><rsup|\<lambda\>>=<big|sum><rsub|k=0><rsup|\<infty\>>a<rsub|k><around*|(|x|)>C<rsup|\<nu\>><rsub|k><around*|(|y|)>,>|<cell|<eq-number>>>|<row|<cell|>|<cell|a<rsub|i><around*|(|x|)>=<frac|<sqrt|\<pi\>>\<Gamma\><around*|(|2\<nu\>+k|)>\<Gamma\><around*|(|\<lambda\>+1|)>|2<rsup|\<nu\>-1/2>k!>\<cdot\><around*|(|1-x<rsup|2>|)><rsup|<frac|\<lambda\>+\<nu\>|2>+<frac|1|4>>P<rsup|-\<lambda\>-\<nu\>-<frac|1|2>><rsub|\<nu\>+k-<frac|1|2>><around*|(|-x|)>\<cdot\><frac|<around*|(|k+\<nu\>|)>\<Gamma\><around*|(|\<nu\>|)>k!|2<rsup|1-2\<nu\>>\<pi\>\<Gamma\><around*|(|k+2\<nu\>|)>>>|<cell|>>|<row|<cell|>|<cell|=<around*|(|1-x<rsup|2>|)><rsup|<frac|\<lambda\>+\<nu\>|2>+<frac|1|4>>P<rsup|-\<lambda\>-\<nu\>-<frac|1|2>><rsub|\<nu\>+k-<frac|1|2>><around*|(|-x|)>\<cdot\><frac|\<Gamma\><around*|(|\<lambda\>+1|)><around*|(|k+\<nu\>|)>\<Gamma\><around*|(|\<nu\>|)>|2<rsup|1/2-\<nu\>><sqrt|\<pi\>>>,>|<cell|>>>>
  </eqnarray>

  while the Theorem <reference|thm:3> tells us that

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<around*|(|s+t|)><rsub|+><rsup|2\<nu\>>=<big|sum><rsub|l,m=0><rsup|\<infty\>>a<rsub|l,m>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>C<rsub|m><rsup|\<mu\>><around*|(|t|)>,>|<cell|>>|<row|<cell|>|<cell|a<rsub|l,m>=<frac|<around*|(|\<lambda\>+l|)><around*|(|\<mu\>+m|)>\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+2\<nu\>+1|)>\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|\<mu\>|)>|2\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|l-m|2>+1|)><around*|(|1+\<nu\>|)><rsub|-<frac|l+m|2>>\<Gamma\><around*|(|\<mu\>+\<nu\>-<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+<frac|l+m|2>+1|)>>.>|<cell|>>>>
  </eqnarray>

  Comparing the coefficients in both expansions, we get an expansion formula:

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<around*|(|1-x<rsup|2>|)><rsup|<frac|2\<nu\>+\<mu\>|2>+<frac|1|4>>P<rsup|-2\<nu\>-\<mu\>-<frac|1|2>><rsub|\<mu\>+m-<frac|1|2>><around*|(|-x|)>\<cdot\><frac|\<Gamma\><around*|(|2\<nu\>+1|)><around*|(|m+\<mu\>|)>\<Gamma\><around*|(|\<mu\>|)>|2<rsup|1/2-\<mu\>><sqrt|\<pi\>>>=<around*|(|x+y|)><rsub|+><rsup|2\<nu\>>=<big|sum><rsub|l,m=0><rsup|\<infty\>>a<rsub|l,m>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>C<rsub|m><rsup|\<mu\>><around*|(|t|)>>|<cell|>>|<row|<cell|>|<cell|\<Rightarrow\><around*|(|1-x<rsup|2>|)><rsup|<frac|2\<nu\>+\<mu\>|2>+<frac|1|4>>P<rsup|-2\<nu\>-\<mu\>-<frac|1|2>><rsub|\<mu\>+m-<frac|1|2>><around*|(|-x|)>=<big|sum><rsub|l=0><rsup|\<infty\>>a<rsub|l>C<rsub|l><rsup|\<lambda\>><around*|(|x|)>>|<cell|>>|<row|<cell|>|<cell|a<rsub|l>=<frac|<sqrt|\<pi\>>2<rsup|-1/2-\<mu\>-2\<nu\>><around*|(|\<lambda\>+l|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+2\<nu\>+1|)>\<Gamma\><around*|(|\<lambda\>|)>|\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|l-m|2>+1|)>\<Gamma\><around*|(|1+\<nu\>-<frac|l+m|2>|)>\<Gamma\><around*|(|\<mu\>+\<nu\>-<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+<frac|l+m|2>+1|)>>>|<cell|>>|<row|<cell|>|<cell|\<Leftrightarrow\><around*|(|1-x<rsup|2>|)><rsup|\<alpha\>/2>P<rsup|-\<alpha\>><rsub|\<beta\>><around*|(|-x|)>=<big|sum><rsub|l=0><rsup|\<infty\>>a<rsub|l>C<rsub|l><rsup|\<lambda\>><around*|(|x|)>>|<cell|>>|<row|<cell|>|<cell|a<rsub|l>=<frac|<sqrt|\<pi\>>2<rsup|-\<alpha\>><around*|(|\<lambda\>+l|)>\<Gamma\><around*|(|\<lambda\>+\<alpha\>+<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>|)>|\<Gamma\><around*|(|\<lambda\>+<frac|\<alpha\>-\<beta\>|2>+<frac|l|2>+<frac|1|2>|)>\<Gamma\><around*|(|<tfrac|1|2>+<frac|\<alpha\>-\<beta\>|2>-<frac|l|2>|)>\<Gamma\><around*|(|<frac|\<alpha\>+\<beta\>|2>-<frac|l|2>+1|)>\<Gamma\><around*|(|\<lambda\>+<frac|\<alpha\>+\<beta\>|2>+<frac|l|2>+1|)>><eq-number><label|eq:unknown>>|<cell|>>>>
  </eqnarray>

  I do not know yet whether the latter formula is known.

  Nevertheless, the simple proof of it can be given as follows:

  <\proof>
    (of <math|<eqref|eq:unknown>>). First, the application of the equalities

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<frac|d|d
      x>C<rsub|n><rsup|\<lambda\>><around*|(|x|)>=2\<lambda\>C<rsub|n-1><rsup|\<lambda\>+1><around*|(|x|)>,>|<cell|>>|<row|<cell|>|<cell|<frac|d|d
      x><around*|(|<around*|(|1-x<rsup|2>|)><rsup|-\<mu\>/2>P<rsup|\<mu\>><rsub|\<nu\>><around*|(|x|)>|)>=-<around*|(|1-x<rsup|2>|)><rsup|-<frac|\<mu\>+1|2>>P<rsup|\<mu\>+1><rsub|\<nu\>><around*|(|x|)><math-ss|<cite-detail|olver2010nist|(14.17.11)>>>|<cell|>>>>
    </eqnarray>

    implies that if <math|<eqref|eq:unknown>> holds for
    <math|<around*|(|\<alpha\>,\<beta\>,\<lambda\>,l|)>>, then it holds for
    <math|<around*|(|\<alpha\>+1,\<beta\>,\<lambda\>+1,l-1|)>>, hence we see
    that it suffices to prove <math|<eqref|eq:unknown>> for <math|l=0>, which
    is equvilent to computation of the integral

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around*|(|1-x<rsup|2>|)><rsup|\<gamma\>>P<rsup|\<alpha\>><rsub|\<beta\>><around*|(|x|)>>|<cell|>>>>
    </eqnarray>

    which is done by the formula <cite-detail|kobayashi2011schrodinger|L1>.
  </proof>

  <\question>
    Summarize four ways to prove Theorem <reference|thm:3>.
  </question>

  <\enumerate>
    <item>One way is shown in <verbatim|intpaper.pdf>, where Theorem
    <reference|thm:3> (more precisely, the equivalent integral equality) is
    easily obtained as a corollary of Theorem <reference|thm:4> (more
    precisely, the equivalent integral equality). It uses integral
    equalities;<\footnote>
      The previous proofs of Theorem <reference|thm:3> (the long ones) are
      essentially non-optimized versions of the one in
      <verbatim|intpaper.pdf> \U the ideas are the same, so I omit them from
      the list
    </footnote>

    <item>Prove <math|<eqref|eq:unknown>> as shown in Question
    <reference|q:21> and then use <cite-detail|kobayashi2011schrodinger|(7.4.11)>.
    This method is outlined in Question <reference|q:21> and mostly uses
    <cite|kobayashi2011schrodinger>;

    <item>Theorem <reference|thm:3> can be easily deduced from the closed
    expression for <math|<big|int><rsub|<around*|[|-1,1|]><rsup|2>><around*|\||x-y|\|><rsup|A><around*|(|1-x<rsup|2>|)><rsup|B><around*|(|1-y<rsup|2>|)><rsup|C>d
    x d y>. In turn, the latter could be deduced from the (straightforward)
    <math|A\<in\>2\<bbb-N\>> case, using Carlson's Theorem. This proof is
    incomplete, as application of Carlson's Theorem requires the proof of
    analytic estimates, which are nontrivial. However, now I have the text of
    Selberg's 1944 paper, so I think I can do it, if necessary.<\footnote>
      Should I do it?
    </footnote>

    <item><math|<big|int><rsub|<around*|[|-1,1|]><rsup|2>><around*|\||x-y|\|><rsup|A><around*|(|1-x<rsup|2>|)><rsup|B><around*|(|1-y<rsup|2>|)><rsup|C>d
    x d y> can be proven directly, using the formula ET II 186(9), p.315 from
    Gradshtein-Ryzhik:

    <\equation*>
      <big|int><rsub|0><rsup|u>x<rsup|\<nu\>-1><around*|(|x+\<alpha\>|)><rsup|\<lambda\>><around*|(|u-x|)><rsup|\<mu\>-1>d
      x=\<alpha\><rsup|\<lambda\>>u<rsup|\<mu\>+\<nu\>-1>B<around*|(|\<mu\>,\<nu\>|)><rsub|2>F<rsub|1><around*|(|-\<lambda\>,\<nu\>;\<mu\>+\<nu\>;-<frac|u|\<alpha\>>|)>.
    </equation*>
  </enumerate>

  <\question>
    <label|q:23>Explain why I think the following diagrams are OK:

    <big-figure|<image|howetan2d31.png|251px|221px||>|<label|fig:howetan2d31>Howe-Tan,
    diagram 2.31>

    <big-figure|<image|howetan2d32.png|251px|219px||>|<label|fig:howetan2d32>Howe-Tan,
    diagram 2.32>
  </question>

  <\note>
    More detailed (and hopefully, correct) versions of Figures
    <reference|fig:howetan2d31>,<reference|fig:howetan2d32> is attached as
    <verbatim|Ypm.pdf>.
  </note>

  In subsequent let us assume <math|p\<geqslant\>1,q\<geqslant\>2> for
  simplicity. Let us recall the definitions we have made in
  <verbatim|master_announcement2.pdf>:

  We define as in <cite|KO2><\footnote>
    I will study well-definedness of <math|Y<rsub|\<pm\>,\<lambda\>><rsup|p,q>>
    in the next version
  </footnote><\footnote>
    Regarding the well-definedness, you do not observe my instructions.

    Regardless of whether 3 definitions given are equivalent, still even
    well-definedness is not yet proven.

    Hence, Y+ , Y\<minus\> aren't even defined in strict mathematical sense.

    \;
  </footnote>

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|b\<equiv\>b<around*|(|\<lambda\>,p,q|)>\<assign\>\<lambda\>-<frac|p|2>+<frac|q|2>+1\<in\>\<bbb-Z\>,<eq-number><label|eqn:20-beplus>>|<cell|>>|<row|<cell|>|<cell|\<lambda\>\<in\>B<around*|(|p,q|)>\<assign\><choice|<tformat|<table|<row|<cell|<frac|2-p-q|2>+\<bbb-N\><rsub|+>,>|<cell|p\<in\>2\<bbb-N\><rsub|+>,q\<in\>2\<bbb-N\><rsub|+>+1,>>|<row|<cell|<frac|p-q|2>+\<bbb-Z\>,>|<cell|p\<in\>2\<bbb-N\><rsub|+>+1,q\<in\>2\<bbb-N\><rsub|+>,>>|<row|<cell|<around*|{|\<lambda\>\<in\>\<bbb-Z\>+<frac|p+q|2>\<mid\>\<lambda\>\<gtr\>-1|}>=A<rsub|0><around*|(|p,q|)>,>|<cell|otherwise>>>>>>|<cell|>>|<row|<cell|>|<cell|0\<rightarrow\>Y<rsub|+,\<lambda\>><rsup|p,q>\<longhookrightarrow\>Ind<rsub|P<rsub|max>><rsup|G><around*|(|\<varepsilon\>\<otimes\>\<bbb-C\><rsub|\<lambda\>>|)>,>|<cell|>>|<row|<cell|>|<cell|Y<rsub|+,\<lambda\>><rsup|p,q>\<mid\><rsub|K>=<big|oplus><rsub|<stack|<tformat|<table|<row|<cell|m-n\<geqslant\>b<around*|(|\<lambda\>,p,q|)>>>|<row|<cell|m-n\<equiv\>b<around*|(|\<lambda\>,p,q|)>
    mod 2>>>>>>\<cal-H\><rsup|m><around*|(|\<bbb-S\><rsup|p-1>|)>\<otimes\>\<cal-H\><rsup|n><around*|(|\<bbb-S\><rsup|q-1>|)>,>|<cell|>>|<row|<cell|>|<cell|\<varepsilon\>\<equiv\>\<varepsilon\><around*|(|\<lambda\>,p,q|)>=<around*|(|-1|)><rsup|b<around*|(|\<lambda\>,p,q|)>>,>|<cell|>>|<row|<cell|>|<cell|\<lambda\>\<in\>B<around*|(|q,p|)>\<assign\><choice|<tformat|<table|<row|<cell|<frac|2-p-q|2>+\<bbb-N\><rsub|+>,>|<cell|p\<in\>2\<bbb-N\><rsub|+>+1,q\<in\>2\<bbb-N\><rsub|+>,>>|<row|<cell|<frac|q-p|2>+\<bbb-Z\>,>|<cell|p\<in\>2\<bbb-N\><rsub|+>,q\<in\>2\<bbb-N\><rsub|+>+1,>>|<row|<cell|<around*|{|\<lambda\>\<in\>\<bbb-Z\>+<frac|p+q|2>\<mid\>\<lambda\>\<gtr\>-1|}>=A<rsub|0><around*|(|q,p|)>,>|<cell|otherwise>>>>>>|<cell|>>|<row|<cell|>|<cell|0\<rightarrow\>Y<rsub|-,\<lambda\>><rsup|p,q>\<longhookrightarrow\>Ind<rsub|P<rsub|max>><rsup|G><around*|(|\<varepsilon\>\<otimes\>\<bbb-C\><rsub|\<lambda\>>|)>,>|<cell|>>|<row|<cell|>|<cell|Y<rsub|-,\<lambda\>><rsup|p,q>\<mid\><rsub|K>=<big|oplus><rsub|<stack|<tformat|<table|<row|<cell|n-m\<geqslant\>b<around*|(|\<lambda\>,q,p|)>>>|<row|<cell|n-m\<equiv\>b<around*|(|\<lambda\>,q,p|)>
    mod 2>>>>>>\<cal-H\><rsup|m><around*|(|\<bbb-S\><rsup|p-1>|)>\<otimes\>\<cal-H\><rsup|n><around*|(|\<bbb-S\><rsup|q-1>|)>,<eq-number><label|eqn:20-beminus>>|<cell|>>|<row|<cell|>|<cell|\<varepsilon\>=<around*|(|-1|)><rsup|b<around*|(|\<lambda\>,q,p|)>>.>|<cell|>>>>
  </eqnarray>

  Now, let us first consider Figure <reference|fig:howetan2d31>. We recall
  that this diagram describes the socle filtration of
  <math|S<rsup|a\<varepsilon\>><around*|(|X<rsup|0>|)>> for

  <\equation*>
    \<varepsilon\>=<around*|(|-1|)><rsup|a+1>,<space|1em>p\<in\>2\<bbb-N\>+1,<space|1em>q\<in\>2\<bbb-N\>,<space|1em>\<bbb-Z\>\<ni\>a\<gtr\>4-<around*|(|p+q|)>.
  </equation*>

  We note that the notation of <cite|howe1993homogeneous> and <cite|KO2> are
  connected via

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|Ind<rsub|P<rsub|max>><rsup|G><around*|(|\<varepsilon\>\<otimes\>\<bbb-C\><rsub|-a-<frac|p+q|2>+1>|)>=S<rsup|a\<varepsilon\>><around*|(|X<rsup|0>|)>,>|<cell|>>>>
  </eqnarray>

  hence Figure <reference|fig:howetan2d31> describes the socle filtration of
  <math|Ind<rsub|P<rsub|max>><rsup|G><around*|(|<around*|(|-1|)><rsup|a+1>\<otimes\>\<bbb-C\><rsub|-a-<frac|p+q|2>+1>|)>>.
  Now, substituting this in <math|<eqref|eqn:20-beplus>>, we get

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|b\<equiv\>b<around*|(|\<lambda\>,p,q|)>=<around*|(|-a-<frac|p+q|2>+1|)>-<frac|p-q|2>+1=-a-p+2,>|<cell|>>|<row|<cell|>|<cell|\<varepsilon\>=<around*|(|-1|)><rsup|-a-p+2>=<around*|(|-1|)><rsup|a+1><rsup|>,>|<cell|>>>>
  </eqnarray>

  hence the boundary <math|m-n\<leqslant\>-a-p+2> crosses the axis <math|m=0>
  and <math|n=a+p-2>, which is precisely as Figure
  <reference|fig:howetan2d31>.

  Next, consider the Figure <reference|fig:howetan2d32>. It describes the
  socle filtration <math|S<rsup|a\<varepsilon\>>,\<varepsilon\>=<around*|(|-1|)><rsup|a>>
  for <math|p\<in\>2\<bbb-N\>+1,q\<in\>2\<bbb-N\>,\<bbb-Z\>\<ni\>a\<gtr\>0>.
  Substituting this in <math|<eqref|eqn:20-beminus>>, we get

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|m-n\<leqslant\>-<around*|(|-a-<frac|p+q|2>+1|)>-<frac|p-q|2>-1=a+q-2,>|<cell|>>|<row|<cell|>|<cell|\<varepsilon\>=<around*|(|-1|)><rsup|a+p-2>=<around*|(|-1|)><rsup|a>,<rsup|>>|<cell|>>>>
  </eqnarray>

  hence the boundary <math|m-n\<leqslant\>a+q-2> crosses the axis <math|n=0>
  and <math|m=a+q-2>, which is precisely as Figure
  <reference|fig:howetan2d32>.

  <\question>
    With <math|Y<rsub|+,\<lambda\>><rsup|p,q>>
    (<math|Y<rsub|-,\<lambda\>><rsup|p,q>>) defined as in Question
    <reference|q:23>, for which <math|\<lambda\>\<in\>B<around*|(|p,q|)>>
    (<math|\<lambda\>\<in\>B<around*|(|q,p|)>>) can we claim that
    <math|Y<rsub|+,\<lambda\>><rsup|p,q>>
    (<math|Y<rsub|-,\<lambda\>><rsup|p,q>>) is isomorphic to the quotient of

    <\equation*>
      Ind<rsub|P<rsub|max>><rsup|G><around*|(|\<varepsilon\>\<otimes\>\<bbb-C\><rsub|-\<lambda\>>|)>
    </equation*>

    with <math|\<varepsilon\>=<around*|(|-1|)><rsup|b<around*|(|\<lambda\>,p,q|)>>>
    (<math|\<varepsilon\>=<around*|(|-1|)><rsup|b<around*|(|\<lambda\>,q,p|)>>>).
  </question>

  <\bibliography|bib|alpha|intdep.bib>
    <\bib-list|War10>
      <bibitem*|DF85><label|bib-dotsenko1985four>Vl<nbsp>S Dotsenko and
      Vladimir<nbsp>A Fateev. <newblock>Four-point correlation functions and
      the operator algebra in 2d conformal invariant theories with central
      charge <math|c\<leq\>1>. <newblock><with|font-shape|italic|Nuclear
      Physics B>, 251:691\U734, 1985.

      <bibitem*|HT93><label|bib-howe1993homogeneous>R.<nbsp>E. Howe and E.-C.
      Tan. <newblock>Homogeneous functions on light cones: the infinitesimal
      structure of some degenerate principal series representations.
      <newblock><with|font-shape|italic|Bull. Amer. Math. Soc. (N. S.)>,
      28(1):1\U74, 1993.

      <bibitem*|Kei09><label|bib-keiner2009computing>Jens Keiner.
      <newblock>Computing with expansions in gegenbauer polynomials.
      <newblock><with|font-shape|italic|SIAM Journal on Scientific
      Computing>, 31:2151\U2171, 2009.

      <bibitem*|KM11><label|bib-kobayashi2011schrodinger>Toshiyuki Kobayashi
      and Gen Mano. <newblock><with|font-shape|italic|The Schrödinger model
      for the minimal representation of the indefinite orthogonal group
      <math|O<around|(|p,q|)>>>, volume 213. <newblock>American Mathematical
      Society, 2011.

      <bibitem*|KØ03><label|bib-KO2>T.<nbsp>Kobayashi and B.<nbsp>Ørsted.
      <newblock>Analysis on the minimal representation of
      <with|font-family|rm|O><math|<around|(|p,q|)>>.<space|0.27em><with|font-family|rm|II>.
      Branching laws. <newblock><with|font-shape|italic|Adv. Math.>,
      180:513\U550, 2003. <newblock>Available at
      <slink|http://dx.doi.org/10.1016/S0001-8708(03)00013-6>.

      <bibitem*|MT03><label|bib-mackenzie2003hermite>Mark<nbsp>R Mackenzie
      and A<nbsp>Kiet Tieu. <newblock>Hermite neural network correlation and
      application. <newblock><with|font-shape|italic|IEEE transactions on
      signal processing>, 51(12):3210\U3219, 2003.

      <bibitem*|Olv10><label|bib-olver2010nist>Frank<nbsp>WJ Olver.
      <newblock><with|font-shape|italic|NIST Handbook of Mathematical
      Functions Hardback and CD-ROM>. <newblock>Cambridge University Press,
      2010.

      <bibitem*|Rai60><label|bib-rainville1960special>Earl<nbsp>David
      Rainville. <newblock><with|font-shape|italic|Special functions>,
      volume<nbsp>8. <newblock>Macmillan New York, 1960.

      <bibitem*|TV03><label|bib-tarasov2003selberg>V<nbsp>Tarasov and
      Alexander Varchenko. <newblock>Selberg-type integrals associated with
      <math|<with|math-font|Euler|s*l><rsub|3>>.
      <newblock><with|font-shape|italic|Letters in Mathematical Physics>,
      65(3):173\U185, 2003.

      <bibitem*|War10><label|bib-warnaar2010sl3>S<nbsp>Ole Warnaar.
      <newblock>The <math|<with|math-font|Euler|s*l><rsub|3>> Selberg
      integral. <newblock><with|font-shape|italic|Advances in Mathematics>,
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
    <associate|auto-1|<tuple|1|23>>
    <associate|auto-2|<tuple|2|23>>
    <associate|auto-3|<tuple|24|24>>
    <associate|bib-KO2|<tuple|KØ03|?>>
    <associate|bib-dotsenko1985four|<tuple|DF85|24>>
    <associate|bib-howe1993homogeneous|<tuple|HT93|25>>
    <associate|bib-keiner2009computing|<tuple|Kei09|?>>
    <associate|bib-kobayashi2011schrodinger|<tuple|KM11|25>>
    <associate|bib-kobayashi2015symmetry|<tuple|KS15|25>>
    <associate|bib-mackenzie2003hermite|<tuple|MT03|25>>
    <associate|bib-olver2010nist|<tuple|Olv10|25>>
    <associate|bib-rainville1960special|<tuple|Rai60|25>>
    <associate|bib-tarasov2003selberg|<tuple|TV03|25>>
    <associate|bib-warnaar2010sl3|<tuple|War10|25>>
    <associate|cor|<tuple|1|14>>
    <associate|cor:2|<tuple|2|16>>
    <associate|cor:3|<tuple|3|20>>
    <associate|eq-1|<tuple|4|7>>
    <associate|eq-2|<tuple|1|5>>
    <associate|eq:q8-1|<tuple|3|6>>
    <associate|eq:unknown|<tuple|9|22>>
    <associate|eqn:20-beminus|<tuple|11|24>>
    <associate|eqn:20-beplus|<tuple|10|24>>
    <associate|eqn:herm1|<tuple|6|14>>
    <associate|eqn:main|<tuple|7|18>>
    <associate|eqn:thm1|<tuple|5|8>>
    <associate|fig:howetan2d31|<tuple|1|23>>
    <associate|fig:howetan2d32|<tuple|2|23>>
    <associate|footnote-1|<tuple|1|23>>
    <associate|footnote-2|<tuple|2|23>>
    <associate|footnote-3|<tuple|3|?>>
    <associate|footnote-4|<tuple|4|?>>
    <associate|footnote-5|<tuple|5|?>>
    <associate|footnote-6|<tuple|6|?>>
    <associate|footnr-1|<tuple|1|23>>
    <associate|footnr-2|<tuple|2|23>>
    <associate|footnr-3|<tuple|3|?>>
    <associate|footnr-4|<tuple|4|?>>
    <associate|footnr-5|<tuple|5|?>>
    <associate|footnr-6|<tuple|6|?>>
    <associate|q-ode|<tuple|11|8>>
    <associate|q1|<tuple|1|1>>
    <associate|q14|<tuple|14|14>>
    <associate|q15|<tuple|15|15>>
    <associate|q18|<tuple|18|16>>
    <associate|q:20|<tuple|20|19>>
    <associate|q:21|<tuple|21|22>>
    <associate|q:23|<tuple|23|?>>
    <associate|thm-1|<tuple|1|8>>
    <associate|thm-2|<tuple|2|18>>
    <associate|thm:3|<tuple|3|19>>
    <associate|thm:4|<tuple|4|19>>
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

      mackenzie2003hermite

      rainville1960special

      keiner2009computing

      rainville1960special

      rainville1960special

      kobayashi2011schrodinger

      kobayashi2011schrodinger

      olver2010nist

      kobayashi2011schrodinger

      kobayashi2011schrodinger

      kobayashi2011schrodinger

      KO2

      howe1993homogeneous

      KO2
    </associate>
    <\associate|figure>
      <tuple|normal|Howe-Tan, diagram 2.31|<pageref|auto-1>>

      <tuple|normal|Howe-Tan, diagram 2.32|<pageref|auto-2>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>