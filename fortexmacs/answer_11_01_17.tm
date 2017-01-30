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
</body>

<\initial>
  <\collection>
    <associate|magnification|1.2>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|eq-1|<tuple|4|7>>
    <associate|eq-2|<tuple|1|5>>
    <associate|eq-3|<tuple|5|7>>
    <associate|eq:q8-1|<tuple|3|6>>
    <associate|q1|<tuple|1|1>>
  </collection>
</references>