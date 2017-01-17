<TeXmacs|1.99.4>

<style|generic>

<\body>
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
      <tformat|<table|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|\<mu\>|)>\<Gamma\><around*|(|\<lambda\>|)><around*|(|\<lambda\>+l/2|)>\<Gamma\><around*|(|\<nu\>|)>\<Gamma\><around*|(|\<nu\>+n/2|)>|\<Gamma\><around*|(|\<mu\>|)>><around*|(|-1|)><rsup|b>\<times\>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|0><rsup|\<pi\>><big|int><rsub|0><rsup|\<pi\>/2><big|int><rsub|0><rsup|\<pi\>/2>sin<rsup|-m><around*|(|\<varphi\>|)>cos<rsup|a>\<varphi\><around*|\||cos\<theta\>-cos\<psi\>sin\<varphi\>|\|><rsup|-b>v<rsup|\<lambda\>><rsub|l><around*|(|\<theta\>|)>v<rsub|m><rsup|\<mu\>><around*|(|\<psi\>|)>v<rsub|n><rsup|\<nu\>><around*|(|\<varphi\>|)>d\<psi\>d\<varphi\>d\<theta\>=>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|<frac|m+l+b|2>|)>\<Gamma\><around*|(|<frac|1-b|2>|)>\<Gamma\><around*|(|<frac|a+2\<lambda\>+2\<mu\>+3-2b|2>|)>\<Gamma\><around*|(|<frac|1+a|2>|)>|\<Gamma\><around*|(|<frac|b|2>|)>\<Gamma\><around*|(|<frac|2-m+l-b+2\<lambda\>|2>|)>\<Gamma\><around*|(|<frac|m+l+a+2\<lambda\>+2\<mu\>+3-b|2>|)>*<space|0.17em>\<Gamma\><around*|(|<frac|m-l+a+2\<mu\>+3-b|2>|)>>>|<cell|>>|<row|<cell|>|<cell|<frac|<around*|(|\<mu\>+<frac|3|2>|)><rsub|n/2>(2\<mu\>)<rsub|m+n><around*|(|-1|)><rsup|<frac|m-l|2>><around*|(|2\<lambda\>+1|)><rsub|l>|\<Gamma\>*<around*|(|1+n/2|)>\<Gamma\>(m+1)\<Gamma\><around*|(|l+1|)>><around*|\<nobracket\>|\<times\>\<pi\>\<Gamma\><around*|(|\<mu\>+<frac|3|2>|)><wide|\<Gamma\>|~><around*|(|\<mu\>+<frac|1|2>|)>\<Gamma\><around*|(|2\<lambda\>+1|)>2<rsup|-1-2\<lambda\>>|\<nobracket\>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<space|0.6spc><rsub|4>F<rsub|3><around*|(|<stack|<tformat|<table|<row|<cell|<frac|a+2\<lambda\>+2\<mu\>+3-2b|2>,-<frac|n|2>,<frac|a+1|2>,\<mu\>+n/2>>|<row|<cell|<frac|m+l+a+2\<lambda\>+2\<mu\>+3-b|2>,<frac|1|2>,<frac|m-l+a+2\<mu\>+3-b|2>>>>>>;1|)>.>|<cell|>>>>
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
    Are any particular cases of the equation in question 6 are known?
  </question>

  To my current knowledge, the known cases are:

  <\enumerate>
    <item>The partial case <math|l=m=n=0> is Proposition 6.1;
  </enumerate>

  <\question>
    In order to compute the images of SBOs, which integral was used?
  </question>

  In <math|<around*|(|u,v,w|)>>-varibles, it is the integral

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-u<rsup|2>|)><rsup|<frac|q-2|2>><around*|(|1-v<rsup|2>|)><rsup|<frac|\<lambda\>+\<nu\>-q|2>-1+N><around*|(|1-w<rsup|2>|)><rsup|<frac|p-3|2>><around*|\||w|\|><rsup|\<lambda\>+\<nu\>-n+N><around*|\||u-v|\|><rsup|-\<nu\>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<space|2em>\<times\><wide|C|~><rsup|<frac|p|2>-1><rsub|a<rprime|'>><around*|(|<frac|v|<sqrt|1-w<rsup|2><around*|(|1-v<rsup|2><rsup|>|)>>>|)><around*|(|1-w<rsup|2><around*|(|1-v<rsup|2><rsup|>|)>|)><rsup|<frac|a<rprime|'>|2>><wide|<wide|C|~>|~><rsup|<frac|q-1|2>><rsub|b><around*|(|u|)>d
    u d v d w.>|<cell|>>>>
  </eqnarray>
</body>

<\initial>
  <\collection>
    <associate|magnification|1.2>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|q1|<tuple|1|1>>
  </collection>
</references>