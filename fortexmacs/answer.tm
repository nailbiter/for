<TeXmacs|1.99.4>

<style|<tuple|article|number-long-article|mystyle>>

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

  <\hide-part|1>
    <date|>
  </hide-part|>

  <\hide-part|2>
    <section|section <code|HEGL84>>

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
  <|hide-part>
    <section|section <code|HEGL84>>
  </hide-part>

  <\hide-part|3>
    <section|section <code|MRZoR8>>

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
  <|hide-part>
    <section|section <code|MRZoR8>>
  </hide-part>

  <\hide-part|4>
    <section|section <code|XAsFsU>>

    <\question>
      In the statement of Proposition 6.4, is it essential that
      <math|<around*|(|p,q|)>\<in\>\<bbb-N\><rsub|+>>?
    </question>

    <\answer>
      No, we can assume barely <math|p,q\<in\>\<bbb-C\>> (note that the
      domain-of-convergence part of Proposition 6.4 will change accordingly).
    </answer>
  <|hide-part>
    <section|section <code|XAsFsU>>
  </hide-part>

  <\hide-part|5>
    <section|section <code|GbW86M>>

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
  <|hide-part>
    <section|section <code|GbW86M>>
  </hide-part>

  <\hide-part|6>
    <section|section <code|CBYWzL>>

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
  <|hide-part>
    <section|section <code|CBYWzL>>
  </hide-part>

  <\hide-part|7>
    <section|section <code|ihDxFM>>

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
  <|hide-part>
    <section|section <code|ihDxFM>>
  </hide-part>

  <\hide-part|8>
    <section|section <code|h1uGiK>>

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
  <|hide-part>
    <section|section <code|h1uGiK>>
  </hide-part>

  <\hide-part|9>
    <section|section <code|oZgJin>>

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
  <|hide-part>
    <section|section <code|oZgJin>>
  </hide-part>

  <\hide-part|10>
    <section|section <code|1cltWd>>

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

    \;
  <|hide-part>
    <section|section <code|1cltWd>>
  </hide-part>

  <\hide-part|11>
    <section|section <code|mR99JZ>>

    <\question>
      Is the RHS of the Theorem <reference|thm-1> invariant under the
      <math|<around*|(|\<lambda\>,l,b|)>\<leftrightarrow\><around*|(|\<mu\>,m,b|)>>
      change?
    </question>

    I do not have alternative proof at the moment.
  <|hide-part>
    <section|section <code|mR99JZ>>
  </hide-part>

  <\hide-part|12>
    <section|section <code|1jKfH6>>

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
  <|hide-part>
    <section|section <code|1jKfH6>>
  </hide-part>

  <\hide-part|13>
    <section|section <code|l4vw7A>>

    <\question>
      Prove the arrows of the diagram:

      <image|intdep.jpg|1004px|332px||>\ 
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
  <|hide-part>
    <section|section <code|l4vw7A>>
  </hide-part>

  <\hide-part|14>
    <section|section <code|tKwSn7>>

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
  <|hide-part>
    <section|section <code|tKwSn7>>
  </hide-part>

  <\hide-part|15>
    <section|section <code|0eKuB3>>

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
      Note that in fact we can use computations above to give the expression
      in Gamma functions to the slightly more general integral:

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|a\<gtr\>0,<big|int><rsub|-\<infty\>><rsup|\<infty\>><big|int><rsub|-\<infty\>><rsup|\<infty\>><around*|\||x-a
        y|\|><rsup|2\<nu\>>e<rsup|-x<rsup|2>-y<rsup|2>>H<rsub|n><around*|(|x|)>H<rsub|m><around*|(|y|)>d
        x d y=\<ldots\>>|<cell|>>>>
      </eqnarray>
    </remark>
  <|hide-part>
    <section|section <code|0eKuB3>>
  </hide-part>

  <\hide-part|16>
    <section|section <code|bjirR9>>

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
  <|hide-part>
    <section|section <code|bjirR9>>
  </hide-part>

  <\hide-part|17>
    <section|section <code|mNhbiQ>>

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

    from which the equality of Question <reference|q14> essentially follows
    (it is the inner integral of the iterated integral). Also, from the proof
    in Question <reference|q15>, we see that the equality of Question
    <reference|q14> essentially follows by integration by parts from the
    well-known Mehta integral.
  <|hide-part>
    <section|section <code|mNhbiQ>>
  </hide-part>

  <\hide-part|18>
    <section|section <code|vm5x55>>

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
  <|hide-part>
    <section|section <code|vm5x55>>
  </hide-part>

  <\hide-part|19>
    <section|section <code|6lT7s5>>

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

    and the latter is equivalent to the formula in Corollary
    <reference|cor:2>.
  <|hide-part>
    <section|section <code|6lT7s5>>
  </hide-part>

  <\hide-part|20>
    <section|section <code|EYpmgz>>

    <\question>
      Is there any relation of the equality in Question <reference|q18> to
      some known results for <math|l,m\<neq\>0>?
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

    which is a generalization of <cite-detail|rainville1960special|Ch. 11,
    Sec. 110, (4)> (the result there contains expansion of <math|x<rsup|n>>
    for <math|n\<in\>\<bbb-N\>>).

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
  <|hide-part>
    <section|section <code|EYpmgz>>
  </hide-part>

  <\hide-part|21>
    <section|section <code|ytphG1>>

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
    \<mu\>\<gtr\>-<frac|1|2>> and <math|Re<around*|(|\<nu\>|)>\<gtr\>0> we
    can expand <math|<around*|\||s+t|\|><rsup|2\<nu\>>> into
    <math|<around*|{|C<rsub|n><rsup|\<lambda\>>\<otimes\>C<rsub|m><rsup|\<mu\>>|}><rsub|m,n\<in\>\<bbb-N\>>>.
    In fact, the coefficients of the expansion can be explicitly written in
    Gamma functions. More precisely,

    <\theorem>
      <label|thm:3>For <math|Re \<lambda\>,Re \<mu\>\<gtr\>-<frac|1|2>> and
      <math|Re<around*|(|\<nu\>|)>\<gtr\>0> the following holds:

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<around*|\||s+t|\|><rsup|2\<nu\>>sgn<rsup|<frac|1\<pm\>1|2>><around*|(|s+
        t|)>=<big|sum><rsub|l,m=0\<mid\>l+m\<equiv\><frac|1\<pm\>1|2>mod
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

      Similarly, to compute an expression for
      <math|a<rsub|l,m><around*|(|z|)>> for <math|l+m> odd, one should
      compute the integral

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s+t
        z|\|><rsup|2\<nu\>>sgn<around*|(|s-t
        z|)><around*|(|1-t<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-s<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>C<rsub|m><rsup|\<mu\>><around*|(|t|)>d
        s d t>|<cell|>>>>
      </eqnarray>

      for <math|l+m:> odd. It is computed similarly to the proof of Theorem
      1.1 in <samp|intpaper.pdf> and is essentially Rodrigues formula for
      Gegenbauer polynomials, integration by parts and Proposition 2.1 from
      <samp|intpaper.pdf>.
    </proof>

    Similarly, it can be seen from the recurrence relation that Hermite
    polynomials <math|H<rsub|n><around*|(|x|)>> have their degree equal to
    their index, hence their orthogonality implies that
    <math|<around*|{|H<rsub|l>\<otimes\>H<rsub|m>|}><rsub|l,m\<in\>\<bbb-N\>>>
    form the orthonormal basis of <math|L<rsup|2><around*|(|\<bbb-R\><rsup|2>,e<rsup|-x<rsup|2>-y<rsup|2>>d
    x d y|)>>. Taking the limit of the Theorem <reference|thm:4> and using
    the relation <math|\<lambda\><rsup|-<frac|n|2>>C<rsub|n><rsup|\<lambda\>><around*|(|<frac|x|<sqrt|\<lambda\>>>|)>\<rightarrow\><frac|H<rsub|n><around*|(|x|)>|n!>>,
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
      we see that the result of Corollary <reference|cor:3> can be extended
      to <math|z\<leqslant\>0>.
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
  <|hide-part>
    <section|section <code|ytphG1>>
  </hide-part>

  <\hide-part|22>
    <section|section <code|ZhyKBC>>

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

    Comparing the coefficients in both expansions, we get an expansion
    formula:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<around*|(|1-x<rsup|2>|)><rsup|<frac|2\<nu\>+\<mu\>|2>+<frac|1|4>>P<rsup|-2\<nu\>-\<mu\>-<frac|1|2>><rsub|\<mu\>+m-<frac|1|2>><around*|(|-x|)>\<cdot\><frac|\<Gamma\><around*|(|2\<nu\>+1|)><around*|(|m+\<mu\>|)>\<Gamma\><around*|(|\<mu\>|)>|2<rsup|1/2-\<mu\>><sqrt|\<pi\>>>=<around*|(|x+y|)><rsub|+><rsup|2\<nu\>>=<big|sum><rsub|l,m=0><rsup|\<infty\>>a<rsub|l,m>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>C<rsub|m><rsup|\<mu\>><around*|(|t|)>>|<cell|>>|<row|<cell|>|<cell|\<Rightarrow\><around*|(|1-x<rsup|2>|)><rsup|<frac|2\<nu\>+\<mu\>|2>+<frac|1|4>>P<rsup|-2\<nu\>-\<mu\>-<frac|1|2>><rsub|\<mu\>+m-<frac|1|2>><around*|(|-x|)>=<big|sum><rsub|l=0><rsup|\<infty\>>a<rsub|l>C<rsub|l><rsup|\<lambda\>><around*|(|x|)>>|<cell|>>|<row|<cell|>|<cell|a<rsub|l>=<frac|<sqrt|\<pi\>>2<rsup|-1/2-\<mu\>-2\<nu\>><around*|(|\<lambda\>+l|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+2\<nu\>+1|)>\<Gamma\><around*|(|\<lambda\>|)>|\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|l-m|2>+1|)>\<Gamma\><around*|(|1+\<nu\>-<frac|l+m|2>|)>\<Gamma\><around*|(|\<mu\>+\<nu\>-<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+<frac|l+m|2>+1|)>>>|<cell|>>|<row|<cell|>|<cell|\<Leftrightarrow\><around*|(|1-x<rsup|2>|)><rsup|\<alpha\>/2>P<rsup|-\<alpha\>><rsub|\<beta\>><around*|(|-x|)>=<big|sum><rsub|l=0><rsup|\<infty\>>a<rsub|l>C<rsub|l><rsup|\<lambda\>><around*|(|x|)>>|<cell|>>|<row|<cell|>|<cell|a<rsub|l>=<frac|<sqrt|\<pi\>>2<rsup|-\<alpha\>><around*|(|\<lambda\>+l|)>\<Gamma\><around*|(|\<lambda\>+\<alpha\>+<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>|)>|\<Gamma\><around*|(|\<lambda\>+<frac|\<alpha\>-\<beta\>|2>+<frac|l|2>+<frac|1|2>|)>\<Gamma\><around*|(|<tfrac|1|2>+<frac|\<alpha\>-\<beta\>|2>-<frac|l|2>|)>\<Gamma\><around*|(|<frac|\<alpha\>+\<beta\>|2>-<frac|l|2>+1|)>\<Gamma\><around*|(|\<lambda\>+<frac|\<alpha\>+\<beta\>|2>+<frac|l|2>+1|)>><eq-number><label|eq:unknown>>|<cell|>>>>
    </eqnarray>

    I do not know yet whether the latter formula is known.

    Nevertheless, the simple proof of it can be given as follows:

    <\proof>
      (of <math|<eqref|eq:unknown>>). First, the application of the
      equalities

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<frac|d|d
        x>C<rsub|n><rsup|\<lambda\>><around*|(|x|)>=2\<lambda\>C<rsub|n-1><rsup|\<lambda\>+1><around*|(|x|)>,>|<cell|>>|<row|<cell|>|<cell|<frac|d|d
        x><around*|(|<around*|(|1-x<rsup|2>|)><rsup|-\<mu\>/2>P<rsup|\<mu\>><rsub|\<nu\>><around*|(|x|)>|)>=-<around*|(|1-x<rsup|2>|)><rsup|-<frac|\<mu\>+1|2>>P<rsup|\<mu\>+1><rsub|\<nu\>><around*|(|x|)><math-ss|<cite-detail|olver2010nist|(14.17.11)>>>|<cell|>>>>
      </eqnarray>

      implies that if <math|<eqref|eq:unknown>> holds for
      <math|<around*|(|\<alpha\>,\<beta\>,\<lambda\>,l|)>>, then it holds for
      <math|<around*|(|\<alpha\>+1,\<beta\>,\<lambda\>+1,l-1|)>>, hence we
      see that it suffices to prove <math|<eqref|eq:unknown>> for <math|l=0>,
      which is equvilent to computation of the integral

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around*|(|1-x<rsup|2>|)><rsup|\<gamma\>>P<rsup|\<alpha\>><rsub|\<beta\>><around*|(|x|)>>|<cell|>>>>
      </eqnarray>

      which is done by the formula <cite-detail|kobayashi2011schrodinger|L2>.
    </proof>
  <|hide-part>
    <section|section <code|ZhyKBC>>
  </hide-part>

  <\hide-part|23>
    <section|section <code|nmVYJJ>>

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
        <verbatim|intpaper.pdf> \U the ideas are the same, so I omit them
        from the list
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
      analytic estimates, which are nontrivial. However, now I have the text
      of Selberg's 1944 paper, so I think I can do it, if
      necessary.<\footnote>
        Should I do it?
      </footnote>

      <item><math|<big|int><rsub|<around*|[|-1,1|]><rsup|2>><around*|\||x-y|\|><rsup|A><around*|(|1-x<rsup|2>|)><rsup|B><around*|(|1-y<rsup|2>|)><rsup|C>d
      x d y> can be proven directly, using the formula ET II 186(9), p.315
      from Gradshtein-Ryzhik:

      <\equation*>
        <big|int><rsub|0><rsup|u>x<rsup|\<nu\>-1><around*|(|x+\<alpha\>|)><rsup|\<lambda\>><around*|(|u-x|)><rsup|\<mu\>-1>d
        x=\<alpha\><rsup|\<lambda\>>u<rsup|\<mu\>+\<nu\>-1>B<around*|(|\<mu\>,\<nu\>|)><rsub|2>F<rsub|1><around*|(|-\<lambda\>,\<nu\>;\<mu\>+\<nu\>;-<frac|u|\<alpha\>>|)>.
      </equation*>
    </enumerate>
  <|hide-part>
    <section|section <code|nmVYJJ>>
  </hide-part>

  <\hide-part|24>
    <section|section <code|dAwnmw>>

    <\question>
      <label|q:23>Explain why I think the following diagrams are OK:

      <big-figure|<image|../forlatex/master_announcement2/howetan2d31m.eps|251px|221px||>|<label|fig:howetan2d31>Howe-Tan,
      diagram 2.31>

      <big-figure|<image|../forlatex/master_announcement2/howetan2d32m.eps|251px|219px||>|<label|fig:howetan2d32>Howe-Tan,
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

      Hence, Y+ , Y\<minus\> aren't even defined in strict mathematical
      sense.

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

    We note that the notation of <cite|howe1993homogeneous> and <cite|KO2>
    are connected via

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|Ind<rsub|P<rsub|max>><rsup|G><around*|(|\<varepsilon\>\<otimes\>\<bbb-C\><rsub|-a-<frac|p+q|2>+1>|)>=S<rsup|a\<varepsilon\>><around*|(|X<rsup|0>|)>,>|<cell|>>>>
    </eqnarray>

    hence Figure <reference|fig:howetan2d31> describes the socle filtration
    of <math|Ind<rsub|P<rsub|max>><rsup|G><around*|(|<around*|(|-1|)><rsup|a+1>\<otimes\>\<bbb-C\><rsub|-a-<frac|p+q|2>+1>|)>>.
    Now, substituting this in <math|<eqref|eqn:20-beplus>>, we get

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|b\<equiv\>b<around*|(|\<lambda\>,p,q|)>=<around*|(|-a-<frac|p+q|2>+1|)>-<frac|p-q|2>+1=-a-p+2,>|<cell|>>|<row|<cell|>|<cell|\<varepsilon\>=<around*|(|-1|)><rsup|-a-p+2>=<around*|(|-1|)><rsup|a+1><rsup|>,>|<cell|>>>>
    </eqnarray>

    hence the boundary <math|m-n\<leqslant\>-a-p+2> crosses the axis
    <math|m=0> and <math|n=a+p-2>, which is precisely as Figure
    <reference|fig:howetan2d31>.

    Next, consider the Figure <reference|fig:howetan2d32>. It describes the
    socle filtration <math|S<rsup|a\<varepsilon\>>,\<varepsilon\>=<around*|(|-1|)><rsup|a>>
    for <math|p\<in\>2\<bbb-N\>+1,q\<in\>2\<bbb-N\>,\<bbb-Z\>\<ni\>a\<gtr\>0>.
    Substituting this in <math|<eqref|eqn:20-beminus>>, we get

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|m-n\<leqslant\>-<around*|(|-a-<frac|p+q|2>+1|)>-<frac|p-q|2>-1=a+q-2,>|<cell|>>|<row|<cell|>|<cell|\<varepsilon\>=<around*|(|-1|)><rsup|a+p-2>=<around*|(|-1|)><rsup|a>,<rsup|>>|<cell|>>>>
    </eqnarray>

    hence the boundary <math|m-n\<leqslant\>a+q-2> crosses the axis
    <math|n=0> and <math|m=a+q-2>, which is precisely as Figure
    <reference|fig:howetan2d32>.
  <|hide-part>
    <section|section <code|dAwnmw>>
  </hide-part>

  <\hide-part|25>
    <section|section <code|dZZYM3>>

    <\question>
      With <math|Y<rsub|+,\<lambda\>><rsup|p,q>>
      (<math|Y<rsub|-,\<lambda\>><rsup|p,q>>) defined as in Question
      <reference|q:23>, for which <math|\<lambda\>\<in\>B<around*|(|p,q|)>>
      (<math|\<lambda\>\<in\>B<around*|(|q,p|)>>) can we claim that
      <math|Y<rsub|+,\<lambda\>><rsup|p,q>>
      (<math|Y<rsub|-,\<lambda\>><rsup|p,q>>) is isomorphic to the quotient
      of

      <\equation*>
        Ind<rsub|P<rsub|max>><rsup|G><around*|(|\<varepsilon\>\<otimes\>\<bbb-C\><rsub|-\<lambda\>>|)>
      </equation*>

      with <math|\<varepsilon\>=<around*|(|-1|)><rsup|b<around*|(|\<lambda\>,p,q|)>>>
      (<math|\<varepsilon\>=<around*|(|-1|)><rsup|b<around*|(|\<lambda\>,q,p|)>>>).
    </question>

    Inspecting diagrams in <verbatim|howetan_diagrams.pdf>, we conclude that
    this holds for all <math|\<lambda\>\<in\>B<around*|(|p,q|)>>
    (<math|\<lambda\>\<in\>B<around*|(|q,p|)>>).
  <|hide-part>
    <section|section <code|dZZYM3>>
  </hide-part>

  <\hide-part|26>
    <section|section <code|3Rnupa>>

    <\question>
      Verify that Proposition 2 in <samp|slides.pdf> is correct when
      <math|z=1> (i.e. that assumption on parameters implies that
      <math|<rsub|2>F<rsub|1><around*|(|;1|)>> convervges)
    </question>

    Indeed, we recall that provided <math|Re<around*|(|c|)>\<gtr\>Re<around*|(|a+b|)>>
    we have

    <\equation*>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|a,b>>|<row|<cell|c>>>>>;1|)>=<frac|\<Gamma\><around*|(|c|)>\<Gamma\><around*|(|c-a-b|)>|\<Gamma\><around*|(|c-a|)>\<Gamma\><around*|(|c-b|)>>.
    </equation*>

    Now, the hypotheses of Proposition 2 are:
    <math|Re<around*|(|\<lambda\>|)>,Re<around*|(|\<mu\>|)>\<gtr\>-<frac|1|2>,Re<around*|(|\<nu\>|)>\<gtr\>0>,
    while the hypergeometric function appearing there is

    <\equation*>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|l+m|2>-\<nu\>,<frac|m-l|2>-\<nu\>-\<lambda\>>>|<row|<cell|\<mu\>+m+1>>>>>;z<rsup|2>|)>,
    </equation*>

    hence we have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|Re<around*|(|<around*|(|\<mu\>+m+1|)>-<around*|(|<frac|l+m|2>-\<nu\>|)>-<around*|(|<frac|m-l|2>-\<nu\>-\<lambda\>|)>|)>>|<cell|>>|<row|<cell|>|<cell|=Re<around*|(|\<mu\>+1+2\<nu\>+\<lambda\>|)>\<gtr\>-<frac|1|2>+1+0+<around*|(|-<frac|1|2>|)>=0,>|<cell|>>>>
    </eqnarray>

    hence everything is ok.
  <|hide-part>
    <section|section <code|3Rnupa>>
  </hide-part>

  <\hide-part|27>
    <section|section <code|xChzVK>>

    <\question>
      Which special cases of Proposition 3 from <samp|slides.pdf> are known
      when <math|l,m\<gtr\>0>?
    </question>

    Below we will show that the special case
    <math|<around*|(|\<lambda\>,\<mu\>,\<nu\>|)>=<around*|(|1,0,-1/2|)>>
    follows from <cite|gradshteinryzhik>.

    Indeed, the equivalent form of Proposition 3 (with
    <math|<around*|\||s-t|\|><rsup|2\<nu\>>> replaced by
    <math|<around*|\||s-t|\|><rsup|2\<nu\>>sgn<around*|(|s-t|)>=:<around*|(|s-t|)><rsup|2\<nu\>>>)
    is

    <\equation*>
      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|s-t|)><rsup|2\<nu\>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>>C<rsup|\<lambda\>><rsub|l><around*|(|s|)><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsub|m><rsup|\<mu\>><around*|(|t|)>d
        s d t=>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+2\<nu\>+1|)>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)>\<Gamma\><around*|(|1+\<nu\>|)><around*|(|2\<mu\>|)><rsub|m><around*|(|2\<lambda\>|)><rsub|l>|\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|l-m|2>+1|)>\<Gamma\><around*|(|1+\<nu\>-<frac|l+m|2>|)>\<Gamma\><around*|(|\<mu\>+\<nu\>-<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+<frac|l+m|2>+1|)>m!l!><eq-number>.<label|eqn:q26-1>>|<cell|>>>>
      </eqnarray>
    </equation*>

    \;

    \;

    \;

    Now, we recall the definitons of Chebyshev polynomials of first and
    second kind:

    <\equation*>
      <stack|<tformat|<table|<row|<cell|T<rsub|n><around*|(|x|)>\<assign\><frac|n|2>lim<rsub|q\<rightarrow\>0><frac|1|q>C<rsup|q><rsub|n><around*|(|x|)>,>>|<row|<cell|U<rsub|n><around*|(|x|)>\<assign\>C<rsup|1><rsub|n>.>>>>>
    </equation*>

    Hence, if we take <math|\<lambda\>=1> in <math|<eqref|eqn:q26-1>>, we get

    <\equation*>
      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|s-t|)><rsup|2\<nu\>><around*|(|1-s<rsup|2>|)><rsup|<frac|1|2>>U<rsub|l><around*|(|s|)><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsub|m><rsup|\<mu\>><around*|(|t|)>d
        s d t>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+2\<nu\>+2|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)>\<Gamma\><around*|(|1+\<nu\>|)><around*|(|2\<mu\>|)><rsub|m>l|\<Gamma\><around*|(|\<nu\>+<frac|l-m|2>+2|)>\<Gamma\><around*|(|1+\<nu\>-<frac|l+m|2>|)>\<Gamma\><around*|(|\<mu\>+\<nu\>-<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<mu\>+\<nu\>+<frac|l+m|2>+2|)>4m!>>|<cell|>>>>
      </eqnarray>
    </equation*>

    Next, dividing by <math|\<mu\>> and taking <math|\<mu\>\<rightarrow\>0>
    we arrive at

    <\equation*>
      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|s-t|)><rsup|2\<nu\>><around*|(|1-s<rsup|2>|)><rsup|<frac|1|2>>U<rsub|l><around*|(|s|)><around*|(|1-t<rsup|2>|)><rsup|-<frac|1|2>>T<rsub|m><around*|(|t|)>d
        s d t>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)>\<Gamma\><around*|(|2\<nu\>+2|)><sqrt|\<pi\>|>\<Gamma\><around*|(|1+\<nu\>|)>l|4\<Gamma\><around*|(|\<nu\>+<frac|l-m|2>+2|)>\<Gamma\><around*|(|1+\<nu\>-<frac|l+m|2>|)>\<Gamma\><around*|(|\<nu\>-<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<nu\>+<frac|l+m|2>+2|)>>.>|<cell|>>>>
      </eqnarray>
    </equation*>

    Next, taking <math|l\<gtr\>m> for definitness (logic goes through with
    <math|l\<leqslant\>m> as well, with minor modifications) we arrive at

    \ 

    <\equation*>
      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|s-t|)><rsup|2\<nu\>><around*|(|1-s<rsup|2>|)><rsup|<frac|1|2>>U<rsub|l><around*|(|s|)><around*|(|1-t<rsup|2>|)><rsup|-<frac|1|2>>T<rsub|m><around*|(|t|)>d
        s d t>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)>\<Gamma\><around*|(|2\<nu\>+2|)><sqrt|\<pi\>|>\<Gamma\><around*|(|1+\<nu\>|)>l|4\<Gamma\><around*|(|\<nu\>+<frac|l-m|2>+2|)>\<Gamma\><around*|(|\<nu\>-<frac|l-m-1|2>+<frac|1|2>|)>\<Gamma\><around*|(|\<nu\>-<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<nu\>+<frac|l+m|2>+2|)>>>|<cell|>>|<row|<cell|>|<cell|=<frac|<around*|(|<frac|1|2>-\<nu\>|)><rsub|<frac|l-m-1|2>>\<Gamma\><around*|(|2\<nu\>+2|)><sqrt|\<pi\>|>\<Gamma\><around*|(|1+\<nu\>|)>l<around*|(|-1|)><rsup|<frac|l-m-1|2>>|4\<Gamma\><around*|(|\<nu\>+<frac|l-m|2>+2|)>\<Gamma\><around*|(|1+\<nu\>-<frac|l+m|2>|)>\<Gamma\><around*|(|\<nu\>+<frac|l+m|2>+2|)>>.>|<cell|>>>>
      </eqnarray>
    </equation*>

    Taking <math|\<nu\>=-1/2> in the latter equality, we arrive at

    <\equation*>
      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|s-t|)><rsup|-1><around*|(|1-s<rsup|2>|)><rsup|<frac|1|2>>U<rsub|l><around*|(|s|)><around*|(|1-t<rsup|2>|)><rsup|-<frac|1|2>>T<rsub|m><around*|(|t|)>d
        s d t>|<cell|>>|<row|<cell|>|<cell|<frac|\<pi\>l<around*|(|-1|)><rsup|<frac|l-m-1|2>>|4<around*|(|<frac|l-m|2>+<frac|1|2>|)>\<Gamma\><around*|(|<frac|1|2>-<frac|l+m|2>|)>\<Gamma\><around*|(|<frac|3|2>+<frac|l+m|2>|)>>.<eq-number><label|eqn:q26-3>>|<cell|>>>>
      </eqnarray>
    </equation*>

    On the other hand, the latter can be obtained by using formulae from
    <cite|gradshteinryzhik>. More precisely, we use

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around*|(|s-t|)><rsup|-1><around*|(|1-s<rsup|2>|)><rsup|<frac|1|2>>U<rsub|l><around*|(|s|)>d
      s=-\<pi\>T<rsub|l+1><around*|(|t|)>>|<cell|EH II
      187(48)>>|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around*|(|1-t<rsup|2>|)><rsup|-<frac|1|2>>T<rsub|m><around*|(|t|)>T<rsub|n><around*|(|t|)>d
      t=<choice|<tformat|<table|<row|<cell|0,>|<cell|m\<neq\>n,>>|<row|<cell|<frac|\<pi\>|2>,>|<cell|m=n\<gtr\>0,>>|<row|<cell|\<pi\>,>|<cell|m=n=0.>>>>>>|<cell|MO
      104>>>>
    </eqnarray>
  <|hide-part>
    <section|section <code|xChzVK>>
  </hide-part>

  <\hide-part|28>
    <section|section <code|gZ5ICQ>>

    <\question>
      Show that Carlson's theorem can be applied to prove the equality

      <\equation*>
        <\eqnarray>
          <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s-t|\|><rsup|2\<nu\>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>>C<rsup|\<lambda\>><rsub|l><around*|(|s|)><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsub|m><rsup|\<mu\>><around*|(|t|)>d
          s d t=>|<cell|>>|<row|<cell|>|<cell|=<frac|\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+2\<nu\>+1|)>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)>\<Gamma\><around*|(|1+\<nu\>|)><around*|(|2\<mu\>|)><rsub|m><around*|(|2\<lambda\>|)><rsub|l>|\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|l-m|2>+1|)>\<Gamma\><around*|(|1+\<nu\>-<frac|l+m|2>|)>\<Gamma\><around*|(|\<mu\>+\<nu\>-<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+<frac|l+m|2>+1|)>m!l!>.>|<cell|>>>>
        </eqnarray>
      </equation*>
    </question>

    More precisely, we need to show that the functions

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|f<rsub|1><around*|(|\<nu\>|)>\<assign\><big|iint><rsub|<around*|[|-1,1|]><rsup|2>><around*|\||s-t
      |\|><rsup|2\<nu\>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsup|\<mu\>><rsub|m><around*|(|t|)>d
      s d t,>|<cell|>>|<row|<cell|>|<cell|f<rsub|0><around*|(|\<nu\>|)>\<assign\><frac|\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+2\<nu\>+1|)>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)>\<Gamma\><around*|(|1+\<nu\>|)><around*|(|2\<mu\>|)><rsub|m><around*|(|2\<lambda\>|)><rsub|l>|\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|l-m|2>+1|)>\<Gamma\><around*|(|1+\<nu\>-<frac|l+m|2>|)>\<Gamma\><around*|(|\<mu\>+\<nu\>-<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+<frac|l+m|2>+1|)>m!l!>>|<cell|>>>>
    </eqnarray>

    with <math|Re<around*|(|\<lambda\>|)>,Re<around*|(|\<mu\>|)>\<gtr\>-<frac|1|2>>
    satisfy the following assumptions:

    <\enumerate>
      <item>Are analytic in <math|Re<around*|(|\<nu\>|)>\<gtr\>0> and
      continuous in <math|Re<around*|(|\<nu\>|)>\<geqslant\>0>;

      <item>There They satisfy <math|\<exists\>C,\<tau\>\<gtr\>0:<around*|\||f<rsub|0,1><around*|(|\<nu\>|)>|\|>\<leqslant\>C
      exp<around*|(|\<tau\><around*|\||\<nu\>|\|>|)>>;

      <item>There exist <math|C\<gtr\>0,c\<less\>\<pi\>> such that
      <math|<around*|\||f<rsub|0,1><around*|(|i y|)>|\|>\<leqslant\>C
      exp<around*|(|c<around*|\||y|\|>|)>>.
    </enumerate>

    The first item is clear for both functions. The second and third item are
    clear for <math|f<rsub|0><around*|(|\<nu\>|)>>, as we can even show that
    <math|f<rsub|0><around*|(|\<nu\>|)>> is uniformly bounded in
    <math|Re<around*|(|\<nu\>|)>\<geqslant\>0> in the light of the
    assymptotic approximation

    <\equation*>
      \<Gamma\><around*|(|z+a|)>/\<Gamma\><around*|(|z+b|)>\<sim\>z<rsup|a-b>,<space|1em>z\<rightarrow\>\<infty\>,<around*|\||ph<around*|(|z|)>|\|>\<leqslant\>\<pi\>-\<delta\><around*|(|\<less\>\<pi\>|)>.
    </equation*>

    Next, <math|f<rsub|1>> satisfies the third item, as
    <math|<around*|\||<around*|\||s-t|\|><rsup|2i
    y>|\|>=<around*|\||s-t|\|>\<leqslant\>2<rsup|>>.\ 

    Finally, <math|f<rsub|1>> satisfies the second item because

    <\equation*>
      <stack|<tformat|<table|<row|<cell|<around*|\||<big|iint><rsub|<around*|[|-1,1|]><rsup|2>><around*|\||s-t
      |\|><rsup|2\<nu\>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsup|\<mu\>><rsub|m><around*|(|t|)>d
      s d t|\|>>>|<row|<cell|\<leqslant\><big|iint><rsub|<around*|[|-1,1|]><rsup|2>><around*|\||s-t
      |\|><rsup|2<around*|\||\<nu\>|\|>><wide*|<around*|\||<around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>>C<rsub|l><rsup|\<lambda\>><around*|(|s|)><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsup|\<mu\>><rsub|m><around*|(|t|)>|\|>|\<wide-underbrace\>>d
      s d t>>|<row|<cell|independent of \<nu\>>>|<row|<cell|\<leqslant\>a<rsub|\<lambda\>,\<mu\>,m,l><big|iint><rsub|<around*|[|-1,1|]><rsup|2>><around*|\||s-t
      |\|><rsup|2<around*|\||\<nu\>|\|>>d s d
      t=4a<rsub|\<lambda\>,\<mu\>,m,l>4<rsup|<around*|\||\<nu\>|\|>>.>>>>>
    </equation*>
  <|hide-part>
    <section|section <code|gZ5ICQ>>
  </hide-part>

  <\hide-part|29>
    <section|section <code|GCsVoB>>

    <\question>
      Show that for every

      <\equation*>
        <around*|(|\<lambda\>,\<mu\>|)>\<in\>\<bbb-C\><rsup|2>\<mid\>0\<gtr\>Re<around*|(|\<lambda\>|)>,Re<around*|(|\<mu\>|)>\<gtr\>-<frac|1|2>
      </equation*>

      we can choose

      <\equation*>
        \<nu\>\<in\>\<bbb-C\>\<mid\>0\<gtr\>Re<around*|(|\<nu\>|)>\<gtr\>-<frac|1|2>,
      </equation*>

      so that both sides of equality

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s-t|\|><rsup|2\<nu\>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>d
        s d t>|<cell|>>|<row|<cell|>|<cell|=<frac|\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+2\<nu\>+1|)>|\<Gamma\><around*|(|\<lambda\>+\<nu\>+1|)>\<Gamma\><around*|(|\<mu\>+\<nu\>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+1|)>><eq-number><label|eq:14>>|<cell|>>>>
      </eqnarray>

      blow up.
    </question>

    Indeed, suppose <math|<around*|(|\<lambda\>,\<mu\>|)>> as above are given
    and we are to choose <math|\<nu\>>. As we have

    <\equation*>
      Re<around*|(|\<lambda\>+<frac|1|2>|)>,Re<around*|(|\<mu\>+<frac|1|2>|)>,Re<around*|(|\<nu\>+<frac|1|2>|)>,Re<around*|(|\<lambda\>+\<nu\>+1|)>,Re<around*|(|\<mu\>+\<nu\>+1|)>\<gtr\>0,
    </equation*>

    the Gamma-functions of these arguments cannot blow up, hence
    <math|RHS<eqref|eq:14>> blows up if and only if
    <math|\<Gamma\><around*|(|\<lambda\>+\<mu\>+2\<nu\>+1|)>/\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+1|)>>
    does.

    Now, we have <math|-1\<less\>Re<around*|(|\<lambda\>+\<mu\>|)>\<less\>0>,
    so that if we take <math|\<nu\>=<around*|(|-1-\<lambda\>-\<mu\>|)>/2>, we
    have <math|-1/2\<less\>Re<around*|(|\<nu\>|)>\<less\>0> and
    <math|\<lambda\>+\<mu\>+2\<nu\>+1=0>, so that
    <math|\<Gamma\><around*|(|\<lambda\>+\<mu\>+2\<nu\>+1|)>> blows up. On
    the other hand, we have <math|Re<around*|(|\<lambda\>+\<mu\>+\<nu\>+1|)>=Re<around*|(|<frac|\<lambda\>+\<mu\>+1|2>|)>\<gtr\>0>,
    hence <math|\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+1|)>> does not
    blow up, so the RHS of <math|<eqref|eq:14>> does. Hence the conclusion.
  <|hide-part>
    <section|section <code|GCsVoB>>
  </hide-part>

  <\hide-part|30>
    <section|section <code|uWdrjC>>

    <\question>
      Give a sufficient condition for the convergence for each statement in
      <verbatim|intpaper.pdf> together with a proof.
    </question>

    <\render-theorem|Claim>
      If <math|Re<around*|(|\<lambda\>|)>,Re<around*|(|\<mu\>|)>\<gtr\>-<frac|1|2>,Re<around*|(|\<nu\>|)>\<gtr\>0,-1\<leqslant\>z\<leqslant\>1>,
      the integral\ 

      <\equation*>
        <big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s-t
        z|\|><rsup|2\<nu\>>C<rsup|\<lambda\>><rsub|l><around*|(|s|)><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>>C<rsup|\<mu\>><rsub|m><around*|(|t|)><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>d
        s d t
      </equation*>

      in Theorem 1.2 converges.
    </render-theorem>

    <\proof>
      This is because <math|C<rsub|l><rsup|\<lambda\>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>>\<in\>L<rsup|1><around*|(|<around*|[|-1,1|]>|)>>,
      hence <math|C<rsup|\<lambda\>><rsub|l><around*|(|s|)><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>>C<rsup|\<mu\>><rsub|m><around*|(|t|)><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>\<in\>L<rsup|1><around*|(|<around*|[|-1,1|]><rsup|2>|)>>
      and <math|<around*|\||s-t z|\|><rsup|2\<nu\>>\<in\>C<around*|(|<around*|[|-1,1|]><rsup|2>|)>>
      and the product of integrable and continuous is integrable.
    </proof>

    <\corollary*>
      If <math|Re<around*|(|\<lambda\>|)>,Re<around*|(|\<mu\>|)>\<gtr\>-<frac|1|2>,Re<around*|(|\<nu\>|)>\<gtr\>0>,
      the integral in Theorem 1.1 converges.
    </corollary*>

    <\render-theorem|Claim>
      If <math|Re<around*|(|a|)>,Re<around*|(|b|)>\<gtr\>0,Re<around*|(|c|)>\<gtr\><frac|1|2>,-1\<leqslant\>z\<leqslant\>1>,the
      integral\ 

      <\equation*>
        <big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||s-t
        z|\|><rsup|2c-1><around*|(|1-s<rsup|2>|)><rsup|a-1><around*|(|1-t<rsup|2>|)><rsup|b-1>d
        s d t
      </equation*>

      in Proposition 2.1 of <verbatim|intpaper.pdf> converges.
    </render-theorem>

    <\proof>
      Indeed, as before we have <math|<around*|(|1-s<rsup|2>|)><rsup|a-1><around*|(|1-t<rsup|2>|)><rsup|b-1>\<in\>L<rsup|1><around*|(|<around*|[|-1,1|]><rsup|2>|)>>
      and <math|<around*|\||s-t z|\|><rsup|2c-1>>: continuous. And the
      product of <math|L<rsup|1>> and continuous is still continuous.
    </proof>

    <\render-theorem|Claim>
      If <math|Re a,Re b\<gtr\>0> and <math|<around*|\||z|\|>\<less\>1>, the
      integral\ 

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around*|(|1-t
        z|)><rsup|a-1><around*|(|1-t<rsup|2>|)><rsup|b-1>d t>|<cell|>>>>
      </eqnarray>

      in Lemma 3.1 converges.
    </render-theorem>

    <\proof>
      The variable change <math|s=<frac|t+1|2>> turns this integral into (up
      to nonzero finite multiple)

      <\equation*>
        <big|int><rsub|0><rsup|1>s<rsup|b-1><around*|(|1-s|)><rsup|b-1><around*|(|1-<frac|2z|z+1>s|)><rsup|a-1>d
        s
      </equation*>

      and then the answer follows from Euler's integral

      <\equation*>
        <stack|<tformat|<table|<row|<cell|B<around*|(|b,c-b|)>
        <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|a,b>>|<row|<cell|c>>>>>;z|)>=<big|int><rsub|0><rsup|1>x<rsup|b-1><around*|(|1-x|)><rsup|c-b-1><around*|(|1-z
        x|)><rsup|-a>,>>|<row|<cell|Re<around*|(|c|)>\<gtr\>Re<around*|(|b|)>\<gtr\>0,z\<nin\><around*|[|1,\<infty\>|]>.>>>>>
      </equation*>

      Note that <math|2z/<around*|(|z+1|)>\<geqslant\>1> cannot happen.
    </proof>

    <\render-theorem|Claim>
      If <math|<around*|\||\<zeta\>|\|>\<less\>1> and
      <math|Re<around*|(|d|)>\<gtr\>1;Re<around*|(|a|)>,Re<around*|(|b|)>\<gtr\>0>,
      the series

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|a|)><rsub|i><around*|(|1-a|)><rsub|i>|2<rsup|i>i!<around*|(|d|)><rsub|i>>
        <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|1-d-i|2>,<frac|2-d-i|2>>>|<row|<cell|b+<frac|1|2>>>>>>;\<zeta\>|)>>|<cell|>>>>
      </eqnarray>

      in Lemma 3.2 converges absolutely and equals

      <\equation*>
        =<frac|2<rsup|1-d><sqrt|\<pi\>>\<Gamma\><around*|(|d|)>|\<Gamma\><around*|(|<frac|a+d|2>|)>\<Gamma\><around*|(|<frac|1-a+d|2>|)>>
        <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|1-<frac|a+d|2>,<frac|1+a-d|2>>>|<row|<cell|b+<frac|1|2>>>>>>;\<zeta\>|)>.
      </equation*>
    </render-theorem>

    <\proof>
      We first show absolute convergence. Indeed, if we take any
      <math|z\<in\>\<bbb-C\>> such that <math|<around*|\||z|\|>\<less\>1> and
      <math|\<zeta\>=z<rsup|2>>, we have

      <\equation*>
        <stack|<tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\||<frac|<around*|(|a|)><rsub|i><around*|(|1-a|)><rsub|i>|2<rsup|i>i!<around*|(|d|)><rsub|i>>
        <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|1-d-i|2>,<frac|2-d-i|2>>>|<row|<cell|b+<frac|1|2>>>>>>;\<zeta\>|)>|\|>>>|<row|<cell|=<big|sum><rsub|i=0><rsup|\<infty\>><around*|\||<frac|<around*|(|a|)><rsub|i><around*|(|1-a|)><rsub|i>|2<rsup|i>i!<around*|(|d|)><rsub|i>>
        <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|<frac|1-d-i|2>,<frac|2-d-i|2>>>|<row|<cell|b+<frac|1|2>>>>>>;z<rsup|2>|)>|\|>>>|<row|<cell|=<big|sum><rsub|i=0><rsup|\<infty\>><around*|\||<frac|<around*|(|1-a|)><rsub|i><around*|(|a|)><rsub|i>|2<rsup|i>i!<around*|(|d|)><rsub|i>><big|int><rsub|-1><rsup|1><around*|(|1-t
        z|)><rsup|d-1+i><around*|(|1-t<rsup|2>|)><rsup|b-1>d
        t|\|>>>|<row|<cell|\<leqslant\><big|sum><rsub|i=0><rsup|\<infty\>><around*|\||<frac|<around*|(|1-a|)><rsub|i><around*|(|a|)><rsub|i>|2<rsup|i>i!<around*|(|d|)><rsub|i>>|\|><big|int><rsub|-1><rsup|1><around*|\||1-t
        z|\|><rsup|Re<around*|(|d|)>-1+i><around*|\||1-t<rsup|2>|\|><rsup|Re*<around*|(|b|)>-1>d
        t>>|<row|<cell|\<leqslant\><big|sum><rsub|i=0><rsup|\<infty\>><around*|\||<frac|<around*|(|1-a|)><rsub|i><around*|(|a|)><rsub|i>|2<rsup|i>i!<around*|(|d|)><rsub|i>>|\|>\<less\>\<infty\>.>>>>>
      </equation*>

      This proves the absolute convergence.

      Next, we prove the equality. It is clear that RHS is holomorphic in
      <math|<around*|\||\<zeta\>|\|>\<less\>1> Weierstrass M-test that LHS is
      also so. Hence, to prove the equality it suffices to compare
      derivatives in <math|\<zeta\>=0> of all orders. In other words, we need
      to show that for every <math|j\<in\>\<bbb-N\>> we have

      <\equation*>
        <big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|a|)><rsub|i><around*|(|1-a|)><rsub|i>|2<rsup|i>i!<around*|(|d|)><rsub|i>>
        <around*|(|<frac|1-d-i|2>|)><rsub|j><around*|(|<frac|2-d-i|2>|)><rsub|j>=<frac|2<rsup|1-d><sqrt|\<pi\>>\<Gamma\><around*|(|d|)><around*|(|1-<frac|a+d|2>|)><rsub|j><around*|(|<frac|1+a-d|2>|)><rsub|j>|\<Gamma\><around*|(|<frac|a+d|2>|)>\<Gamma\><around*|(|<frac|1-a+d|2>|)>>.
      </equation*>

      we can rewrite this equivalently as

      <\equation*>
        <stack|<tformat|<table|<row|<cell|\<Leftrightarrow\><big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|a|)><rsub|i><around*|(|1-a|)><rsub|i>|2<rsup|i+2j>i!<around*|(|d|)><rsub|i>>
        <around*|(|1-d-i|)><rsub|2j>=<frac|2<rsup|1-d><sqrt|\<pi\>>\<Gamma\><around*|(|d|)>|\<Gamma\><around*|(|<frac|a+d|2>-j|)>\<Gamma\><around*|(|<frac|1-a+d|2>-j|)>>>>|<row|<cell|\<Leftrightarrow\><big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|a|)><rsub|i><around*|(|1-a|)><rsub|i>|2<rsup|i+2j>i!>\<cdot\><frac|<around*|(|1-d|)><rsub|2j>|<around*|(|d-2j|)><rsub|i>>=<frac|2<rsup|1-d><sqrt|\<pi\>>\<Gamma\><around*|(|d|)>|\<Gamma\><around*|(|<frac|a+d|2>-j|)>\<Gamma\><around*|(|<frac|1-a+d|2>-j|)>>>>|<row|<cell|\<Leftrightarrow\><rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|a,1-a>>|<row|<cell|d-2j>>>>>;<frac|1|2>|)>=<frac|2<rsup|1-d+2j><sqrt|\<pi\>>\<Gamma\><around*|(|d-2j|)>|\<Gamma\><around*|(|<frac|a+d|2>-j|)>\<Gamma\><around*|(|<frac|1-a+d|2>-j|)>>,>>>>>
      </equation*>

      and as the latter is implied by the equality
      <math|<space|0.6spc><rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|a,1-a>>|<row|<cell|b>>>>>;<frac|1|2>|)>=<frac|2<rsup|1-b><sqrt|\<pi\>>\<Gamma\><around*|(|b|)>|\<Gamma\><around*|(|<frac|a+b|2>|)>\<Gamma\><around*|(|<frac|b-a+1|2>|)>>>
      (see <cite-detail|andrews1999special|Thm. 5.4>), we are done.
    </proof>
  <|hide-part>
    <section|section <code|uWdrjC>>
  </hide-part>

  <\show-part|31>
    <section|section <code|Vk7ZjF>>

    <\question>
      Explain, under which conditions and in which sense the series

      <\equation*>
        <stack|<tformat|<table|<row|<cell|<around*|\||s+t|\|><rsup|2\<nu\>>=b<around*|(|\<lambda\>,\<mu\>,\<nu\>|)><big|sum><rsub|<stack|<tformat|<table|<row|<cell|l,m=0>>|<row|<cell|l+m:even>>>>>>a<rsub|\<lambda\>,\<mu\>,\<nu\>><rsup|l,m>C<rsup|\<lambda\>><rsub|l><around*|(|s|)>C<rsup|\<mu\>><rsub|m><around*|(|t|)>,<eq-number><label|eqn:q30-1>>>|<row|<cell|b<around*|(|\<lambda\>,\<mu\>,\<nu\>|)>\<assign\>2<rsup|-2\<nu\>>\<Gamma\><around*|(|\<lambda\>+\<mu\>+2\<nu\>+1|)>\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|\<mu\>|)>\<Gamma\><around*|(|2\<nu\>+1|)>,>>|<row|<cell|a<rsub|\<lambda\>,\<mu\>,\<nu\>><rsup|l,m>\<assign\><frac|<around*|(|l+\<lambda\>|)><around*|(|m+\<mu\>|)>|\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<mu\>+\<nu\>-<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+<frac|l+m|2>+1|)>\<Gamma\><around*|(|\<nu\>+1-<frac|l+m|2>|)>>>>>>>
      </equation*>

      converges?
    </question>

    The following can be said:

    <subsection|Main statements>

    <\proposition>
      <label|prop:Vk7ZjF-1>The series <math|<eqref|eqn:q30-1>> converges to
      LHS in <math|L<rsup|2>> sense for <math|<around*|(|\<lambda\>,\<mu\>,\<nu\>|)>\<in\>\<bbb-R\><rsup|2>\<times\>\<bbb-C\>>,
      as long as <math|\<lambda\>,\<mu\>\<gtr\>-<frac|1|2>,Re<around*|(|\<nu\>|)>\<gtr\>0>.<\footnote>
        I am extremely embarassed for making this
        <with|font-series|bold|STUPID> mistake of not noticing that the
        condition <math|\<lambda\>,\<mu\>\<in\>\<bbb-R\>> should be met in
        order to talk about weight functions and <math|L<rsup|2>>-spaces.
        This is intolerable for PhD student (even for undergraduate) and I
        was unable to spot it for about 6-7 months. Intolerable. I am so
        sorry.
      </footnote><\footnote>
        Many statements in <verbatim|RIMS17-Alex-int.pdf> and
        <verbatim|intpaper.pdf> will need to be corrected. Should I proceed
        with their correction myself first?
      </footnote>
    </proposition>

    <\proposition>
      <label|prop:Vk7ZjF-2>The series on RHS of <math|<eqref|eqn:q30-1>>
      converges absolutely and uniformly on <math|<around*|[|-1,1|]><rsup|2>>
      for <math|<around*|(|\<lambda\>,\<mu\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|3>>,
      such that <math|<stack|<tformat|<table|<row|<cell|Re<around*|(|\<lambda\>+\<mu\>+2\<nu\>|)>\<gtr\>2<around*|\||\<lambda\>|\|>+2<around*|\||\<mu\>|\|>>>>>>>.

      Moreover, the latter condition is necessary in the sense that for
      generic

      <\equation*>
        <around*|(|\<lambda\>,\<mu\>,\<nu\>|)>\<in\><around*|{|\<bbb-R\><rsub|\<geqslant\>0><rsup|2>\<times\>\<bbb-C\>\<mid\>Re<around*|(|\<lambda\>+\<mu\>+2\<nu\>|)>\<leqslant\>2<around*|\||\<lambda\>|\|>+2<around*|\||\<mu\>|\|>|}>
      </equation*>

      the series does not converge absolutely at least for <math|s=t=1>.
    </proposition>

    <\remark>
      Note that for <math|\<lambda\>=0> Gegenbauer polynomials
      <math|<around*|{|C<rsub|l><rsup|\<lambda\>><around*|(|x|)>|}><rsub|l=0><rsup|\<infty\>>>
      do not form an orthogonal basis.
    </remark>

    <subsection|Auxiliary lemmas>

    <\lemma>
      <label|lem:Vk7ZjF-1>Let <math|k\<in\>\<bbb-N\><rsub|+>>. Suppose that
      <math|x,y\<in\>\<bbb-C\>> are such that
      <math|Re<around*|(|x+y|)>\<geqslant\>1>. Then
      <math|\<exists\>C=C<rsub|k,x,y>\<geqslant\>0>, such that

      <\equation*>
        \<forall\>\<alpha\>\<in\><frac|1|k>\<bbb-Z\>,<space|1em><around*|\||\<Gamma\><around*|(|x+\<alpha\>|)><rsup|-1>\<Gamma\><around*|(|y-\<alpha\>|)><rsup|-1>|\|>\<leqslant\>C.
      </equation*>
    </lemma>

    <\proof>
      First, we show that the statement for general <math|k> would follow
      from the special case <math|k=1>. Indeed, assuming that the latter
      holds, let <math|x,y\<in\>\<bbb-C\>> be given as in the statement.
      Then, let <math|<around*|{|x<rsub|i>\<assign\>x+<frac|i|k>|}><rsub|i=0><rsup|k-1>,<around*|{|y<rsub|i>\<assign\>y-<frac|i|k>|}><rsub|i=0><rsup|k-1>>
      we then have that <math|\<exists\>C\<geqslant\>0> such that

      <\equation*>
        \<forall\>n\<in\>\<bbb-Z\>,\<forall\>i\<in\><around*|{|0,\<ldots\>,k-1|}>,<space|1em><around*|\||\<Gamma\><around*|(|x<rsub|i>+n|)><rsup|-1>\<Gamma\><around*|(|y<rsub|i>-n|)><rsup|-1>|\|>\<leqslant\>C.<eq-number><label|eqn:Vk7ZjF-1>
      </equation*>

      Now, for any <math|\<alpha\>\<in\><frac|1|k>\<bbb-Z\>> we can write
      <math|\<alpha\>=n+<frac|i|k>> for some
      <math|n\<in\>\<bbb-Z\>,i\<in\><around*|{|0,\<ldots\>,k-1|}>> and
      <math|x+\<alpha\>=x<rsub|i>+n,y-\<alpha\>=y<rsub|i>-n>, hence the
      required result follows at once from <math|<eqref|eqn:Vk7ZjF-1>>.

      Hence, in subsequent we can assume that <math|k=1>. WLOG we can assume
      that <math|\<alpha\>\<in\>\<bbb-N\><rsub|+>>. We have

      <\equation*>
        <stack|<tformat|<table|<row|<cell|\<Gamma\><around*|(|x+\<alpha\>|)><rsup|-1>\<Gamma\><around*|(|y-\<alpha\>|)><rsup|-1>=<frac|\<Gamma\><around*|(|x+\<alpha\>|)><rsup|-1>|\<Gamma\><around*|(|1-y+\<alpha\>|)><rsup|-1>>\<cdot\>\<Gamma\><around*|(|1-y+\<alpha\>|)><rsup|-1>\<Gamma\><around*|(|y-\<alpha\>|)><rsup|-1>=<frac|\<Gamma\><around*|(|x+\<alpha\>|)><rsup|-1>|\<Gamma\><around*|(|1-y+\<alpha\>|)><rsup|-1>>\<cdot\><frac|sin<around*|(|\<pi\><around*|(|y-\<alpha\>|)>|)>|\<pi\>>>>|<row|<cell|=<frac|\<Gamma\><around*|(|x+\<alpha\>|)><rsup|-1>|\<Gamma\><around*|(|1-y+\<alpha\>|)><rsup|-1>>\<cdot\><frac|sin<around*|(|\<pi\>y|)>|\<pi\>>.>>>>>
      </equation*>

      Note that if <math|y\<in\>\<bbb-Z\>>, then the later expression is zero
      and we are done. Hence, in subsequent we may assume that
      <math|y\<nin\>\<bbb-Z\>>.<\footnote>
        I do this remark here, because formula
        <cite-detail|olver2010nist|5.11.12> used below does not make sense if
        <math|z+a\<in\>-\<bbb-N\>>.
      </footnote>

      Hence, it suffices to show that <math|sup<rsub|i\<in\>\<bbb-N\><rsub|+>><around*|\||<frac|\<Gamma\><around*|(|x+i|)><rsup|-1>|\<Gamma\><around*|(|1-y+i|)><rsup|-1>>|\|>\<less\>\<infty\>>.
      Now, the formula

      <\equation*>
        z\<rightarrow\>\<infty\>,<around*|\||ph
        z|\|>\<leqslant\>\<pi\>-\<delta\>\<less\>\<pi\>,<frac|\<Gamma\><around*|(|z+a|)>|\<Gamma\><around*|(|z+b|)>>\<sim\>z<rsup|a-b><space|1em><text|<cite-detail|olver2010nist|5.11.12>>
      </equation*>

      implies that\ 

      <\equation*>
        <around*|\||<frac|\<Gamma\><around*|(|x+i|)><rsup|-1>|\<Gamma\><around*|(|1-y+i|)><rsup|-1>>|\|>\<sim\><around*|\||i<rsup|-<around*|(|x-1+y|)>>|\|>\<rightarrow\><choice|<tformat|<table|<row|<cell|0>|<cell|<around*|(|Re<around*|(|x+y|)>\<gtr\>1|)>>>|<row|<cell|1>|<cell|<around*|(|Re<around*|(|x+y|)>=1|)>>>>>>\<less\>\<infty\>,
      </equation*>

      hence the conclusion.
    </proof>

    <\fact>
      <label|fact:Vk7ZjF-1><dueto|<cite-detail|MR3008847|(4.7)>>For
      <math|\<lambda\>\<gtr\>0> we have

      <\equation*>
        max<rsub|<around*|\||x|\|>\<leqslant\>1><around*|\||C<rsub|n><rsup|\<lambda\>><around*|(|x|)>|\|>=C<rsub|n><rsup|\<lambda\>><around*|(|1|)>\<sim\><frac|<around*|(|n-1|)><rsup|2\<lambda\>-1>|\<Gamma\><around*|(|2\<lambda\>|)>>,
      </equation*>

      where <math|a<rsub|n>\<sim\>b<rsub|n>> denotes the fact that
      <math|lim<rsub|n\<rightarrow\>\<infty\>><around*|(|a<rsub|n>/b<rsub|n>|)>=1>.
    </fact>

    <\lemma>
      <label|lem:Vk7ZjF-2>For <math|\<lambda\>\<in\>\<bbb-C\>> we have

      <\equation*>
        max<rsub|<around*|\||x|\|>\<leqslant\>1><around*|\||C<rsup|\<lambda\>><rsub|n><around*|(|x|)>|\|>\<leqslant\>C<rsub|n><rsup|<around*|\||\<lambda\>|\|>><around*|(|1|)>\<sim\><frac|<around*|(|n-1|)><rsup|2<around*|\||\<lambda\>|\|>-1>|\<Gamma\><around*|(|2<around*|\||\<lambda\>|\|>|)>>
      </equation*>

      where <math|a<rsub|n>\<sim\>b<rsub|n>> denotes the fact that
      <math|lim<rsub|n\<rightarrow\>\<infty\>><around*|(|a<rsub|n>/b<rsub|n>|)>=1>.
    </lemma>

    <\proof>
      Note that for <math|\<lambda\>\<in\>\<bbb-C\>> and
      <math|k\<in\>\<bbb-N\>>, <math|<around*|\||<around*|(|\<lambda\>|)><rsub|k>|\|>\<leqslant\><around*|(|<around*|\||\<lambda\>|\|>|)><rsub|k>>
      and recall the equality

      <\equation*>
        C<rsub|n><rsup|\<lambda\>><around*|(|cos*\<theta\>|)>=<big|sum><rsub|k=0><rsup|n><frac|<around*|(|\<lambda\>|)><rsub|k><around*|(|\<lambda\>|)><rsub|n-k>|k!<around*|(|n-k|)>!>cos<around*|(|n-2k|)>\<theta\>.<space|1em><text|<cite-detail|andrews2000special|(6.4.11)>>
      </equation*>

      Hence,

      <\equation*>
        <around*|\||C<rsub|n><rsup|\<lambda\>><around*|(|cos*\<theta\>|)>|\|>\<leqslant\><big|sum><rsub|k=0><rsup|n><around*|\||<frac|<around*|(|\<lambda\>|)><rsub|k><around*|(|\<lambda\>|)><rsub|n-k>|k!<around*|(|n-k|)>!>cos<around*|(|n-2k|)>\<theta\>|\|>\<leqslant\><big|sum><rsub|k=0><rsup|n><frac|<around*|(|<around*|\||\<lambda\>|\|>|)><rsub|k><around*|(|<around*|\||\<lambda\>|\|>|)><rsub|n-k>|k!<around*|(|n-k|)>!>=C<rsup|<around*|\||\<lambda\>|\|>><rsub|n><around*|(|1|)>
      </equation*>

      and the conclusion follows.
    </proof>

    <\lemma>
      <label|lem:Vk7ZjF-3>Let <math|a,b\<in\>\<bbb-C\>>. Then

      <\equation*>
        <frac|1|\<Gamma\><around*|(|a-n|)>\<Gamma\><around*|(|b+n|)>>=<choice|<tformat|<table|<row|<cell|\<Theta\><around*|(|<around*|\||n|\|><rsup|Re<around*|(|1-a-b|)>>|)>>|<cell|<around*|(|a,b\<nin\>\<bbb-Z\>|)>>>|<row|<cell|O<around*|(|<around*|\||n|\|><rsup|Re<around*|(|1-a-b|)>>|)>>|<cell|<around*|(|otherwise|)>>>>>>
      </equation*>

      where for <math|f,g> being functions of <math|n\<in\>\<bbb-Z\>> we
      write <math|f=\<Theta\><around*|(|g|)>> to denote that for some
      <math|c,C\<gtr\>0> we have <math|\<forall\>n\<in\>\<bbb-Z\>\\<around*|{|0|}>,c*<around*|\||g<around*|(|n|)>|\|>\<leqslant\><around*|\||f<around*|(|n|)>|\|>\<leqslant\>C<around*|\||g<around*|(|n|)>|\|>>;
      and we write <math|f=O<around*|(|g|)>> to denote the fact that for some
      <math|C\<geqslant\>0> we have <math|\<forall\>n\<in\>\<bbb-Z\>,<around*|\||f<around*|(|n|)>|\|>\<leqslant\>C<around*|\||g<around*|(|n|)>|\|>>.
    </lemma>

    <\proof>
      We first assume <math|a,b\<nin\>\<bbb-Z\>>. Then, we can writeVk7ZjF

      <\equation*>
        <stack|<tformat|<cwith|2|2|1|1|cell-halign|r>|<cwith|1|1|1|1|cell-halign|l>|<table|<row|<cell|<frac|1|\<Gamma\><around*|(|a-n|)>\<Gamma\><around*|(|b+n|)>>=<frac|sin<around*|(|\<pi\>a|)>|\<pi\>>\<cdot\><frac|\<Gamma\><around*|(|1-a+n|)>|\<Gamma\><around*|(|b+n|)>><eq-number><label|eqn:Vk7Zjf-3>>>|<row|<cell|=<frac|sin<around*|(|\<pi\>b|)>|\<pi\>>\<cdot\><frac|\<Gamma\><around*|(|1-b-n|)>|\<Gamma\><around*|(|a-n|)>><eq-number><label|eqn:Vk7Zjf-4>>>>>>
      </equation*>

      Now, the formula\ 

      <\equation*>
        z\<rightarrow\>\<infty\>,<around*|\||ph
        z|\|>\<leqslant\>\<pi\>-\<delta\>\<less\>\<pi\>,<frac|\<Gamma\><around*|(|z+a|)>|\<Gamma\><around*|(|z+b|)>>\<sim\>z<rsup|a-b><space|1em><text|<cite-detail|olver2010nist|5.11.12>>
      </equation*>

      and <math|<eqref|eqn:Vk7Zjf-3>,<eqref|eqn:Vk7Zjf-4>> above imply that

      <\equation*>
        <stack|<tformat|<table|<row|<cell|\<exists\>N\<in\>\<bbb-N\>;\<exists\>c,C\<gtr\>0>|<cell|\<forall\>n\<in\>\<bbb-Z\>>|<cell|<choice|<tformat|<table|<row|<cell|n\<gtr\>N>|<cell|\<Rightarrow\>>|<cell|c*n<rsup|1-a-b>\<leqslant\><around*|\||<frac|1|\<Gamma\><around*|(|a-n|)>\<Gamma\><around*|(|b+n|)>>|\|>\<leqslant\>C*n<rsup|1-a-b>>>|<row|<cell|-n\<less\>-N>|<cell|\<Rightarrow\>>|<cell|c*<around*|(|-n|)><rsup|1-a-b>\<leqslant\><around*|\||<frac|1|\<Gamma\><around*|(|a-n|)>\<Gamma\><around*|(|b+n|)>>|\|>\<leqslant\>C*<around*|(|-n|)><rsup|1-a-b>>>>>>>>>>>
      </equation*>

      and hence the conclusion follows for the <math|a,b\<nin\>\<bbb-Z\>>
      case.

      Now, suppose that <math|a\<in\>\<bbb-Z\>> hold. Then, for <math|n> big
      enough <math|<frac|1|\<Gamma\><around*|(|a-n|)>\<Gamma\><around*|(|b+n|)>>>
      vanishes, while the equality <math|<eqref|eqn:Vk7Zjf-4>> still holds,
      so for very small <math|n>, we have
      <math|<around*|\||<frac|1|\<Gamma\><around*|(|a-n|)>\<Gamma\><around*|(|b+n|)>>|\|>\<leqslant\>C*<around*|(|-n|)><rsup|1-a-b>>
      holding. This implies the conclusion for
      <math|a\<in\>\<bbb-Z\>,b\<nin\>\<bbb-Z\>> case. The case
      <math|b\<in\>\<bbb-Z\>> is handled similarly.
    </proof>

    <subsection|Proofs>

    <\proof>
      <dueto|Proposition <reference|prop:Vk7ZjF-1>>We note that
      <math|<around*|{|C<rsup|\<lambda\>><rsub|l><around*|(|s|)>C<rsup|\<mu\>><rsub|m><around*|(|t|)>|}><rsub|l,m=0><rsup|\<infty\>>>
      form an orthogonal basis in space <math|L<rsup|2><around*|(|<around*|[|-1,1|]><rsup|2>,<around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>|)>>,
      as long as <math|\<lambda\>,\<mu\>\<gtr\>-<frac|1|2>>. Therefore, the
      series <math|<eqref|eqn:q30-1>> converges in <math|L<rsup|2>> sense, as
      long as we can show that its LHS belongs to
      <math|L<rsup|2><around*|(|<around*|[|-1,1|]><rsup|2>,<around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>|)>>
      space. However, the latter is easily seen to be true, as long as
      <math|Re<around*|(|\<nu\>|)>\<gtr\>0>.
    </proof>

    <\definition>
      In the proof below we use the following notations for pairs of series
      <math|<big|sum><rsub|i\<in\>\<Iota\>>a<rsub|i>,<big|sum><rsub|i\<in\>\<Iota\>>b<rsub|i>>
      indexed both by the same countable set <math|\<Iota\>>.

      <\enumerate>
        <item>We write <math|<big|sum><rsub|i\<in\>\<Iota\>>a<rsub|i>\<lesssim\><big|sum><rsub|i\<in\>\<Iota\>>b<rsub|i>>
        and say that <math|<big|sum><rsub|i\<in\>I>b<rsub|i>>
        <underline|dominates> <math|<big|sum><rsub|i\<in\>\<Iota\>>a<rsub|i>>
        if <math|\<exists\>\<Iota\><rprime|'>\<subset\>\<Iota\>>: finite,
        <math|\<exists\>C\<gtr\>0> such that

        <\equation*>
          \<forall\>i\<in\>\<Iota\>\\\<Iota\><rprime|'>,<around*|\||a<rsub|i>|\|>\<leqslant\>C<around*|\||b<rsub|i>|\|>.
        </equation*>

        <item>We write <math|<big|sum><rsub|i\<in\>\<Iota\>>a<rsub|i>\<approx\><big|sum><rsub|i\<in\>\<Iota\>>b<rsub|i>>
        if <math|<big|sum><rsub|i\<in\>\<Iota\>>a<rsub|i>\<lesssim\><big|sum><rsub|i\<in\>\<Iota\>>b<rsub|i>>
        and <math|<big|sum><rsub|i\<in\>\<Iota\>>b<rsub|i>\<lesssim\><big|sum><rsub|i\<in\>\<Iota\>>a<rsub|i>>
      </enumerate>
    </definition>

    <\remark*>
      Note that if <math|<big|sum><rsub|i\<in\>\<Iota\>>b<rsub|i>\<gtrsim\>><math|<big|sum><rsub|i\<in\>\<Iota\>>a<rsub|i>>
      and <math|<big|sum><rsub|i\<in\>\<Iota\>>b<rsub|i>> is absolutely
      convergent, then so is <math|<big|sum><rsub|i\<in\>\<Iota\>>a<rsub|i>>.
    </remark*>

    <\proof>
      <dueto|Proposition <reference|prop:Vk7ZjF-2>>We proceed as follows

      <\equation*>
        <stack|<tformat|<table|<row|<cell|<big|sum><rsub|l,m=0\<mid\>l+m\<in\>2\<bbb-Z\>><rsup|\<infty\>><around*|\||<frac|<around*|(|l+\<lambda\>|)><around*|(|m+\<mu\>|)>C<rsup|\<lambda\>><rsub|l><around*|(|s|)>C<rsup|\<mu\>><rsub|m><around*|(|t|)>|\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<mu\>+\<nu\>-<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+<frac|l+m|2>+1|)>\<Gamma\><around*|(|\<nu\>+1-<frac|l+m|2>|)>>|\|>>>|<row|<cell|=<big|sum><rsub|l,m=0\<mid\>l+m\<in\>2\<bbb-Z\>,l=m><rsup|\<infty\>><around*|\||\<cdots\>|\|>+<big|sum><rsub|l,m=0\<mid\>l+m\<in\>2\<bbb-Z\>,l\<neq\>m><rsup|\<infty\>><around*|\||\<cdots\>|\|>>>|<row|<cell|<around*|(|<text|Lemmas
        <reference|lem:Vk7ZjF-3>, <reference|lem:Vk7ZjF-2>>|)>>>|<row|<cell|\<lesssim\><big|sum><rsub|l=0><rsup|\<infty\>>l<rsup|2<around*|\||\<lambda\>|\|>+2<around*|\||\<mu\>|\|>>l<rsup|Re<around*|(|-1-\<lambda\>-\<mu\>-2\<nu\>|)>>>>|<row|<cell|+<big|sum><rsub|l,m=0\<mid\>l+m\<in\>2\<bbb-Z\>,l\<neq\>m>l<rsup|2<around*|\||\<lambda\>|\|>>m<rsup|2<around*|\||\<mu\>|\|>><around*|\||<frac|l-m|2>|\|><rsup|Re<around*|(|-1-\<lambda\>-\<mu\>-2\<nu\>|)>><around*|\||<frac|l+m|2>|\|><rsup|Re<around*|(|-1-\<lambda\>-\<mu\>-2\<nu\>|)>>>>|<row|<cell|\<leqslant\><big|sum><rsub|l=0><rsup|\<infty\>>l<rsup|2<around*|\||\<lambda\>|\|>+2<around*|\||\<mu\>|\|>+Re<around*|(|-1-\<lambda\>-\<mu\>-2\<nu\>|)>>+<big|sum><rsub|l,m=0\<mid\>l+m\<in\>2\<bbb-Z\>,l\<neq\>m><around*|(|l+m|)><rsup|2<around*|\||\<lambda\>|\|>+2\<mu\>+Re<around*|(|-1-\<mu\>-\<lambda\>-2\<nu\>|)>><around*|\||l-m|\|><rsup|Re<around*|(|-1-\<lambda\>-\<mu\>-2\<nu\>|)>>>>|<row|<cell|<around*|(|\<because\><stack|<tformat|<table|<row|<cell|Re<around*|(|\<lambda\>+\<mu\>+2\<nu\>|)>\<gtr\>2<around*|\||\<lambda\>|\|>+2<around*|\||\<mu\>|\|>>>>>>|)>>>|<row|<cell|\<lesssim\><big|sum><rsub|l,m=0\<mid\>l+m\<in\>2\<bbb-Z\>,l\<neq\>m><around*|(|l+m|)><rsup|2<around*|\||\<lambda\>|\|>+2\<mu\>+Re<around*|(|-1-\<mu\>-\<lambda\>-2\<nu\>|)>><around*|\||l-m|\|><rsup|Re<around*|(|-1-\<lambda\>-\<mu\>-2\<nu\>|)>>>>|<row|<cell|<around*|(|\<because\>\<forall\>\<alpha\>\<in\>\<bbb-R\>\\<around*|{|-1|}>,lim<rsub|N\<rightarrow\>\<infty\>><frac|<big|sum><rsub|i=1><rsup|N>i<rsup|\<alpha\>>|N<rsup|max<around*|{|0,\<alpha\>+1|}>>>\<rightarrow\><space|0.2spc><rsup|\<exists\>>c<rsub|\<alpha\>>\<gtr\>0|)>>>|<row|<cell|\<lesssim\><big|sum><rsub|i=0><rsup|\<infty\>>i<rsup|2<around*|\||\<lambda\>|\|>+2\<mu\>+Re<around*|(|-1-\<mu\>-\<lambda\>-2\<nu\>|)>>i<rsup|max<around*|{|0,Re<around*|(|-\<lambda\>-\<mu\>-2\<nu\>|)>|}>>>>|<row|<cell|<around*|(|\<because\><stack|<tformat|<table|<row|<cell|Re<around*|(|\<lambda\>+\<mu\>+2\<nu\>|)>\<gtr\>2<around*|\||\<lambda\>|\|>+2<around*|\||\<mu\>|\|>>>>>>\<Rightarrow\>Re<around*|(|-\<lambda\>-\<mu\>-2\<nu\>|)>\<less\>0|)>>>|<row|<cell|=<big|sum><rsub|i=0><rsup|\<infty\>>i<rsup|2<around*|\||\<lambda\>|\|>+2\<mu\>+Re<around*|(|-1-\<mu\>-\<lambda\>-2\<nu\>|)>>\<less\>\<infty\>.>>>>>
      </equation*>

      Note that as the estimate was done independently of
      <math|<around*|(|s,t|)>>, the convergence is seen to be uniform on
      <math|<around*|(|s,t|)>\<in\><around*|[|-1,1|]><rsup|2>>.

      We now do the \PMoreover...\Q part. Indeed, let the triple

      <\equation*>
        <around*|(|\<lambda\>,\<mu\>,\<nu\>|)>\<in\><around*|{|\<bbb-R\><rsub|\<geqslant\>0><rsup|2>\<times\>\<bbb-C\>\<mid\>Re<around*|(|\<lambda\>+\<mu\>+2\<nu\>|)>\<leqslant\>2<around*|\||\<lambda\>|\|>+2<around*|\||\<mu\>|\|>|}>
      </equation*>

      be given. We can perturb it a little (here we use genericity), so to
      ensure that

      <\equation*>
        \<lambda\>+\<nu\>+1,\<mu\>+\<nu\>+1,\<lambda\>+\<mu\>+\<nu\>+1,\<nu\>+1\<nin\>\<bbb-Z\>;2\<lambda\>,2\<mu\>\<in\>-\<bbb-Z\>
      </equation*>

      We then observe that

      <\equation*>
        <stack|<tformat|<table|<row|<cell|<big|sum><rsub|l,m=0\<mid\>l+m\<in\>2\<bbb-Z\>><rsup|\<infty\>><around*|\||<frac|<around*|(|l+\<lambda\>|)><around*|(|m+\<mu\>|)>C<rsup|\<lambda\>><rsub|l><around*|(|1|)>C<rsup|\<mu\>><rsub|m><around*|(|1|)>|\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<mu\>+\<nu\>-<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+<frac|l+m|2>+1|)>\<Gamma\><around*|(|\<nu\>+1-<frac|l+m|2>|)>>|\|>>>|<row|<cell|<around*|(|<text|take
        only the <math|l=m> part; apply Lemma
        <reference|lem:Vk7ZjF-3>>|)>>>|<row|<cell|\<gtrsim\><big|sum><rsub|l=0><rsup|\<infty\>><around*|\||<around*|(|l+\<lambda\>|)><around*|(|l+\<mu\>|)>C<rsup|\<lambda\>><rsub|l><around*|(|1|)>C<rsup|\<mu\>><rsub|l><around*|(|1|)>|\|>l<rsup|Re<around*|(|-1-\<lambda\>-\<mu\>-2\<nu\>|)>>>>|<row|<cell|<around*|(|<text|<math|\<because\><around*|\||C<rsub|n><rsup|\<alpha\>><around*|(|1|)>|\|>=<around*|\||<binom|n+2\<alpha\>-1|n>|\|>\<sim\><frac|n<rsup|2Re<around*|(|\<alpha\>|)>-1>|<around*|\||\<Gamma\><around*|(|2\<alpha\>|)>|\|>>>>|)>>>|<row|<cell|\<gtrsim\><big|sum><rsub|l=0><rsup|\<infty\>>l<rsup|2<around*|\||\<lambda\>|\|>+2<around*|\||\<mu\>|\|>>l<rsup|Re<around*|(|-1-\<lambda\>-\<mu\>-2\<nu\>|)>>=<big|sum><rsub|l=0><rsup|\<infty\>>l<rsup|2<around*|\||\<lambda\>|\|>+2<around*|\||\<mu\>|\|>+Re<around*|(|-1-\<lambda\>-\<mu\>-2\<nu\>|)>>=\<infty\>.>>>>>
      </equation*>
    </proof>

    <section|section <verbatim|<code|A000Md>>>

    <\question>
      Investigate the convergence of the series

      <\equation*>
        <stack|<tformat|<table|<row|<cell|<around*|\||s+t|\|><rsup|2\<nu\>>=b<around*|(|\<lambda\>,\<mu\>,\<nu\>|)><big|sum><rsub|<stack|<tformat|<table|<row|<cell|l,m=0>>|<row|<cell|l+m:even>>>>>>a<rsub|\<lambda\>,\<mu\>,\<nu\>><rsup|l,m>C<rsup|\<lambda\>><rsub|l><around*|(|s|)>C<rsup|\<mu\>><rsub|m><around*|(|t|)>,>>|<row|<cell|b<around*|(|\<lambda\>,\<mu\>,\<nu\>|)>\<assign\>2<rsup|-2\<nu\>>\<Gamma\><around*|(|\<lambda\>+\<mu\>+2\<nu\>+1|)>\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|\<mu\>|)>\<Gamma\><around*|(|2\<nu\>+1|)>,>>|<row|<cell|a<rsub|\<lambda\>,\<mu\>,\<nu\>><rsup|l,m>\<assign\><frac|<around*|(|l+\<lambda\>|)><around*|(|m+\<mu\>|)>|\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<mu\>+\<nu\>-<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+<frac|l+m|2>+1|)>\<Gamma\><around*|(|\<nu\>+1-<frac|l+m|2>|)>>>>>>>
      </equation*>

      at <math|s=t=0>.
    </question>

    The following can be said:

    <\proposition>
      The series converges absolutely iff
      <math|Re<around*|(|\<lambda\>+\<mu\>+2\<nu\>|)>\<gtr\>0>.\ 
    </proposition>

    <\proof>
      We recall that <math|C<rsub|n><rsup|\<alpha\>><around*|(|0|)>=<choice|<tformat|<table|<row|<cell|0>|<cell|<around*|(|n:odd|)>>>|<row|<cell|<around*|(|-1|)><rsup|n/2><frac|\<Gamma\><around*|(|\<alpha\>+<frac|n|2>|)>|\<Gamma\><around*|(|\<alpha\>|)>\<Gamma\><around*|(|<frac|n|2>+1|)>>>|<cell|<around*|(|n:even|)>>>>>>>
      and proceed as follows: (here we use <math|\<approx\><rprime|'>> to
      denote the fact that <math|\<lesssim\>> holds and moreover that
      <math|\<approx\>> holds for generic
      <math|<around*|(|\<lambda\>\<comma\>\<mu\>,\<nu\>|)>>)

      <\equation*>
        <stack|<tformat|<table|<row|<cell|<big|sum><rsub|l,m=0\<mid\>l+m\<in\>2\<bbb-Z\>><rsup|\<infty\>><around*|\||<frac|<around*|(|l+\<lambda\>|)><around*|(|m+\<mu\>|)>C<rsup|\<lambda\>><rsub|l><around*|(|0|)>C<rsup|\<mu\>><rsub|m><around*|(|0|)>|\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<mu\>+\<nu\>-<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+<frac|l+m|2>+1|)>\<Gamma\><around*|(|\<nu\>+1-<frac|l+m|2>|)>>|\|>>>|<row|<cell|=<big|sum><rsub|l,m=0><rsup|\<infty\>><around*|\||<frac|<frac|\<Gamma\><around*|(|\<lambda\>+l+1|)>|\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|l+1|)>><frac|\<Gamma\><around*|(|\<mu\>+m+1|)>|\<Gamma\><around*|(|\<mu\>|)>\<Gamma\><around*|(|m+1|)>>|\<Gamma\><around*|(|\<lambda\>+\<nu\>+<around*|(|l-m|)>+1|)>\<Gamma\><around*|(|\<mu\>+\<nu\>-<around*|(|l-m|)>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+<around*|(|l+m|)>+1|)>\<Gamma\><around*|(|\<nu\>+1-<around*|(|l+m|)>|)>>|\|>>>|<row|<cell|\<approx\><rprime|'><big|sum><rsub|l,m=0><rsup|\<infty\>><around*|\||<frac|l<rsup|Re<around*|(|\<lambda\>|)>>m<rsup|Re<around*|(|\<mu\>|)>>|\<Gamma\><around*|(|\<lambda\>+\<nu\>+<around*|(|l-m|)>+1|)>\<Gamma\><around*|(|\<mu\>+\<nu\>-<around*|(|l-m|)>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+<around*|(|l+m|)>+1|)>\<Gamma\><around*|(|\<nu\>+1-<around*|(|l+m|)>|)>>|\|>>>|<row|<cell|=<big|sum><rsub|l,m=0,l=m><rsup|\<infty\>><around*|\||\<ldots\>|\|>+<big|sum><rsub|l,m=0,l\<neq\>m><rsup|\<infty\>><around*|\||\<ldots\>|\|>>>|<row|<cell|<around*|(|<text|Lemma
        <reference|lem:Vk7ZjF-3>>|)>>>|<row|<cell|\<approx\><rprime|'><big|sum><rsub|l=0><rsup|\<infty\>>l<rsup|Re<around*|(|\<lambda\>+\<mu\>|)>>l<rsup|Re<around*|(|-1-\<lambda\>-\<mu\>-2\<nu\>|)>>+<big|sum><rsub|l,m=0,l\<neq\>m><rsup|\<infty\>>l<rsup|Re<around*|(|\<lambda\>|)>>m<rsup|Re<around*|(|\<mu\>|)>><around*|(|l+m|)><rsup|Re<around*|(|-1-\<lambda\>-\<mu\>-2\<nu\>|)>><around*|(|l-m|)><rsup|Re<around*|(|-1-\<lambda\>-\<mu\>-2\<nu\>|)>>>>|<row|<cell|\<leqslant\><big|sum><rsub|l=0><rsup|\<infty\>>l<rsup|-1-2Re<around*|(|\<nu\>|)>>+<big|sum><rsub|l,m=0,l\<neq\>m><rsup|\<infty\>><around*|(|l+m|)><rsup|Re<around*|(|\<lambda\>|)><rsub|+>+Re<around*|(|\<mu\>|)><rsub|+>><around*|(|l+m|)><rsup|Re<around*|(|-1-\<lambda\>-\<mu\>-2\<nu\>|)>><around*|(|l-m|)><rsup|Re<around*|(|-1-\<lambda\>-\<mu\>-2\<nu\>|)>>>>|<row|<cell|\<lesssim\><big|sum><rsub|l=0><rsup|\<infty\>>l<rsup|-1-2Re<around*|(|\<nu\>|)>>+<big|sum><rsub|i=0><rsup|\<infty\>>i<rsup|Re<around*|(|\<lambda\>|)><rsub|+>+Re<around*|(|\<mu\>|)><rsub|+>+Re<around*|(|-1-\<lambda\>-\<mu\>-2\<nu\>|)>>i<rsup|max<around*|{|0,Re<around*|(|-\<lambda\>-\<mu\>-2\<nu\>|)>|}>>>>|<row|<cell|\<lesssim\><big|sum><rsub|l=0><rsup|\<infty\>>l<rsup|-1-2Re<around*|(|\<nu\>|)>>+<big|sum><rsub|i=0><rsup|\<infty\>>i<rsup|Re<around*|(|\<lambda\>|)><rsub|+>+Re<around*|(|\<mu\>|)><rsub|+>-1-Re<around*|(|\<lambda\>+\<mu\>+2\<nu\>|)><rsub|+>>>>|<row|<cell|Re<around*|(|\<lambda\>|)><rsub|+>+Re<around*|(|\<mu\>|)><rsub|+>+2Re<around*|(|\<nu\>|)><rsub|+>\<geqslant\>Re<around*|(|\<lambda\>+\<mu\>+2\<nu\>|)><rsub|+>>>|<row|<cell|\<lesssim\><big|sum><rsub|l,m=0\<mid\>l+m\<in\>2\<bbb-Z\>><around*|\||<frac|l-m|2>|\|><rsup|Re<around*|(|-1-\<lambda\>-\<mu\>-2\<nu\>|)>><around*|(|<frac|l+m|2>|)><rsup|Re<around*|(|-1-\<lambda\>-\<mu\>-2\<nu\>|)>>l<rsup|2\<lambda\>>m<rsup|2\<mu\>>
        >>|<row|<cell|\<lesssim\><big|sum><rsub|i=0><rsup|\<infty\>><choice|<tformat|<table|<row|<cell|ln<around*|(|i|)>>|<cell|<around*|(|Re<around*|(|\<lambda\>-\<mu\>-2\<nu\>|)>=0|)>>>|<row|<cell|i<rsup|max<around*|{|0,Re<around*|(|-\<lambda\>-\<mu\>-2\<nu\>|)>|}>>>|<cell|<around*|(|<text|otherwise>|)>>>>>>\<cdot\>i<rsup|Re<around*|(|-1-\<lambda\>-\<mu\>-2\<nu\>|)>>>>>>>
      </equation*>

      \;
    </proof>
  <|show-part>
    <section|section <code|Vk7ZjF>>
  </show-part>

  <\hide-part|32>
    <\bibliography|bib|alpha|answer.bib>
      <\bib-list|XWZ13>
        <bibitem*|AAR99><label|bib-andrews1999special>George<nbsp>E Andrews,
        Richard Askey, and Ranjan Roy. <newblock><with|font-shape|italic|Special
        Functions>, volume <with|font-series|bold|71> of
        <with|font-shape|italic|Encyclopedia of Mathematics and its
        Applications>. <newblock>Cambridge University Press, Cambridge, 1999.

        <bibitem*|AAR00><label|bib-andrews2000special>George<nbsp>E Andrews,
        Richard Askey, and Ranjan Roy. <newblock><with|font-shape|italic|Special
        functions>. <newblock>Cambridge University Press, Cambridge, 2000.

        <bibitem*|DF85><label|bib-dotsenko1985four>Vl<nbsp>S Dotsenko and
        Vladimir<nbsp>A Fateev. <newblock>Four-point correlation functions
        and the operator algebra in 2d conformal invariant theories with
        central charge <math|c\<leq\>1>. <newblock><with|font-shape|italic|Nuclear
        Physics B>, 251:691\U734, 1985.

        <bibitem*|GRJ00><label|bib-gradshteinryzhik>I.S.
        Gradshte<math|<wide|<text|\Y>|\<breve\>>>n, I.M. Ryzhik, and
        A.<nbsp>Jeffrey. <newblock><with|font-shape|italic|Table of
        Integrals, Series, and Products, Sixth edition>. <newblock>Academic
        Press, New York, 2000.

        <bibitem*|HT93><label|bib-howe1993homogeneous>R.<nbsp>E. Howe and
        E.-C. Tan. <newblock>Homogeneous functions on light cones: the
        infinitesimal structure of some degenerate principal series
        representations. <newblock><with|font-shape|italic|Bull. Amer. Math.
        Soc. (N. S.)>, 28(1):1\U74, 1993.

        <bibitem*|Kei09><label|bib-keiner2009computing>Jens Keiner.
        <newblock>Computing with expansions in gegenbauer polynomials.
        <newblock><with|font-shape|italic|SIAM Journal on Scientific
        Computing>, 31:2151\U2171, 2009.

        <bibitem*|KM11><label|bib-kobayashi2011schrodinger>Toshiyuki
        Kobayashi and Gen Mano. <newblock><with|font-shape|italic|The
        Schrödinger model for the minimal representation of the indefinite
        orthogonal group <math|O<around|(|p,q|)>>>, volume 213.
        <newblock>American Mathematical Society, 2011.

        <bibitem*|KØ03><label|bib-KO2>T.<nbsp>Kobayashi and B.<nbsp>Ørsted.
        <newblock>Analysis on the minimal representation of
        <with|font-family|rm|O><math|<around|(|p,q|)>>.<space|0.27em><with|font-family|rm|II>.
        Branching laws. <newblock><with|font-shape|italic|Adv. Math.>,
        180:513\U550, 2003. <newblock>Available at
        <slink|http://dx.doi.org/10.1016/S0001-8708(03)00013-6>.

        <bibitem*|MT03><label|bib-mackenzie2003hermite>Mark<nbsp>R Mackenzie
        and A<nbsp>Kiet Tieu. <newblock>Hermite neural network correlation
        and application. <newblock><with|font-shape|italic|IEEE transactions
        on signal processing>, 51(12):3210\U3219, 2003.

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

        <bibitem*|XWZ13><label|bib-MR3008847>Ziqing Xie, Li-Lian Wang, and
        Xiaodan Zhao. <newblock>On exponential convergence of Gegenbauer
        interpolation and spectral differentiation.
        <newblock><with|font-shape|italic|Math. Comp.>, 82(282):1017\U1036,
        2013.
      </bib-list>
    </bibliography>
  <|hide-part>
    <\bibliography|bib|alpha|answer.bib>
      <\bib-list|XWZ13>
        <bibitem*|AAR99><label|bib-andrews1999special>George<nbsp>E Andrews,
        Richard Askey, and Ranjan Roy. <newblock><with|font-shape|italic|Special
        Functions>, volume <with|font-series|bold|71> of
        <with|font-shape|italic|Encyclopedia of Mathematics and its
        Applications>. <newblock>Cambridge University Press, Cambridge, 1999.

        <bibitem*|AAR00><label|bib-andrews2000special>George<nbsp>E Andrews,
        Richard Askey, and Ranjan Roy. <newblock><with|font-shape|italic|Special
        functions>. <newblock>Cambridge University Press, Cambridge, 2000.

        <bibitem*|DF85><label|bib-dotsenko1985four>Vl<nbsp>S Dotsenko and
        Vladimir<nbsp>A Fateev. <newblock>Four-point correlation functions
        and the operator algebra in 2d conformal invariant theories with
        central charge <math|c\<leq\>1>. <newblock><with|font-shape|italic|Nuclear
        Physics B>, 251:691\U734, 1985.

        <bibitem*|GRJ00><label|bib-gradshteinryzhik>I.S.
        Gradshte<math|<wide|<text|\Y>|\<breve\>>>n, I.M. Ryzhik, and
        A.<nbsp>Jeffrey. <newblock><with|font-shape|italic|Table of
        Integrals, Series, and Products, Sixth edition>. <newblock>Academic
        Press, New York, 2000.

        <bibitem*|HT93><label|bib-howe1993homogeneous>R.<nbsp>E. Howe and
        E.-C. Tan. <newblock>Homogeneous functions on light cones: the
        infinitesimal structure of some degenerate principal series
        representations. <newblock><with|font-shape|italic|Bull. Amer. Math.
        Soc. (N. S.)>, 28(1):1\U74, 1993.

        <bibitem*|Kei09><label|bib-keiner2009computing>Jens Keiner.
        <newblock>Computing with expansions in gegenbauer polynomials.
        <newblock><with|font-shape|italic|SIAM Journal on Scientific
        Computing>, 31:2151\U2171, 2009.

        <bibitem*|KM11><label|bib-kobayashi2011schrodinger>Toshiyuki
        Kobayashi and Gen Mano. <newblock><with|font-shape|italic|The
        Schrödinger model for the minimal representation of the indefinite
        orthogonal group <math|O<around|(|p,q|)>>>, volume 213.
        <newblock>American Mathematical Society, 2011.

        <bibitem*|KØ03><label|bib-KO2>T.<nbsp>Kobayashi and B.<nbsp>Ørsted.
        <newblock>Analysis on the minimal representation of
        <with|font-family|rm|O><math|<around|(|p,q|)>>.<space|0.27em><with|font-family|rm|II>.
        Branching laws. <newblock><with|font-shape|italic|Adv. Math.>,
        180:513\U550, 2003. <newblock>Available at
        <slink|http://dx.doi.org/10.1016/S0001-8708(03)00013-6>.

        <bibitem*|MT03><label|bib-mackenzie2003hermite>Mark<nbsp>R Mackenzie
        and A<nbsp>Kiet Tieu. <newblock>Hermite neural network correlation
        and application. <newblock><with|font-shape|italic|IEEE transactions
        on signal processing>, 51(12):3210\U3219, 2003.

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

        <bibitem*|XWZ13><label|bib-MR3008847>Ziqing Xie, Li-Lian Wang, and
        Xiaodan Zhao. <newblock>On exponential convergence of Gegenbauer
        interpolation and spectral differentiation.
        <newblock><with|font-shape|italic|Math. Comp.>, 82(282):1017\U1036,
        2013.
      </bib-list>
    </bibliography>
  </hide-part>
</body>

<\initial>
  <\collection>
    <associate|magnification|1.2>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|10|9>>
    <associate|auto-11|<tuple|11|9>>
    <associate|auto-12|<tuple|12|10>>
    <associate|auto-13|<tuple|13|14>>
    <associate|auto-14|<tuple|14|15>>
    <associate|auto-15|<tuple|15|16>>
    <associate|auto-16|<tuple|16|16>>
    <associate|auto-17|<tuple|17|17>>
    <associate|auto-18|<tuple|18|17>>
    <associate|auto-19|<tuple|19|18>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-20|<tuple|20|20>>
    <associate|auto-21|<tuple|21|23>>
    <associate|auto-22|<tuple|22|24>>
    <associate|auto-23|<tuple|23|24>>
    <associate|auto-24|<tuple|23.1|24>>
    <associate|auto-25|<tuple|23.2|25>>
    <associate|auto-26|<tuple|24|26>>
    <associate|auto-27|<tuple|25|26>>
    <associate|auto-28|<tuple|26|27>>
    <associate|auto-29|<tuple|27|28>>
    <associate|auto-3|<tuple|3|2>>
    <associate|auto-30|<tuple|28|29>>
    <associate|auto-31|<tuple|29|30>>
    <associate|auto-32|<tuple|30|32>>
    <associate|auto-33|<tuple|30.1|32>>
    <associate|auto-34|<tuple|30.2|33>>
    <associate|auto-35|<tuple|30.3|34>>
    <associate|auto-36|<tuple|30.3|34>>
    <associate|auto-37|<tuple|1|?>>
    <associate|auto-4|<tuple|4|2>>
    <associate|auto-5|<tuple|5|3>>
    <associate|auto-6|<tuple|6|4>>
    <associate|auto-7|<tuple|7|4>>
    <associate|auto-8|<tuple|8|6>>
    <associate|auto-9|<tuple|9|8>>
    <associate|auto.10-1|<tuple|9|?|#10>>
    <associate|auto.11-1|<tuple|10|?|#11>>
    <associate|auto.12-1|<tuple|11|?|#12>>
    <associate|auto.13-1|<tuple|12|?|#13>>
    <associate|auto.14-1|<tuple|13|?|#14>>
    <associate|auto.15-1|<tuple|14|?|#15>>
    <associate|auto.16-1|<tuple|15|?|#16>>
    <associate|auto.17-1|<tuple|16|?|#17>>
    <associate|auto.18-1|<tuple|17|?|#18>>
    <associate|auto.19-1|<tuple|18|?|#19>>
    <associate|auto.2-1|<tuple|1|?|#2>>
    <associate|auto.20-1|<tuple|19|?|#20>>
    <associate|auto.21-1|<tuple|20|?|#21>>
    <associate|auto.22-1|<tuple|21|?|#22>>
    <associate|auto.23-1|<tuple|22|?|#23>>
    <associate|auto.24-1|<tuple|23|?|#24>>
    <associate|auto.24-2|<tuple|23.1|?|#24>>
    <associate|auto.24-3|<tuple|23.2|?|#24>>
    <associate|auto.25-1|<tuple|24|?|#25>>
    <associate|auto.26-1|<tuple|25|?|#26>>
    <associate|auto.27-1|<tuple|26|?|#27>>
    <associate|auto.28-1|<tuple|27|?|#28>>
    <associate|auto.29-1|<tuple|28|?|#29>>
    <associate|auto.3-1|<tuple|2|?|#3>>
    <associate|auto.30-1|<tuple|29|?|#30>>
    <associate|auto.31-1|<tuple|30|?|#31>>
    <associate|auto.31-2|<tuple|30.1|?|#31>>
    <associate|auto.31-3|<tuple|30.2|?|#31>>
    <associate|auto.31-4|<tuple|30.3|?|#31>>
    <associate|auto.31-5|<tuple|31|?|#31>>
    <associate|auto.32-1|<tuple|31.2|?|#32>>
    <associate|auto.4-1|<tuple|3|?|#4>>
    <associate|auto.5-1|<tuple|4|?|#5>>
    <associate|auto.6-1|<tuple|5|?|#6>>
    <associate|auto.7-1|<tuple|6|?|#7>>
    <associate|auto.8-1|<tuple|7|?|#8>>
    <associate|auto.9-1|<tuple|8|?|#9>>
    <associate|bib-KO2|<tuple|KØ03|35|#32>>
    <associate|bib-MR3008847|<tuple|XWZ13|35|#32>>
    <associate|bib-andrews1999special|<tuple|AAR99|34|#32>>
    <associate|bib-andrews2000special|<tuple|AAR00|35|#32>>
    <associate|bib-borel2013continuous|<tuple|BW13|?>>
    <associate|bib-dotsenko1985four|<tuple|DF85|35|#32>>
    <associate|bib-gradshteinryzhik|<tuple|GRJ00|35|#32>>
    <associate|bib-howe1993homogeneous|<tuple|HT93|35|#32>>
    <associate|bib-howe2012non|<tuple|HT12|?>>
    <associate|bib-keiner2009computing|<tuple|Kei09|35|#32>>
    <associate|bib-knapp2016representation|<tuple|Kna16|?>>
    <associate|bib-kobayashi1999lie|<tuple|KO05|?>>
    <associate|bib-kobayashi2011schrodinger|<tuple|KM11|35|#32>>
    <associate|bib-kobayashi2015symmetry|<tuple|KS15|25>>
    <associate|bib-lang2012sl2|<tuple|Lan12|?>>
    <associate|bib-mackenzie2003hermite|<tuple|MT03|35|#32>>
    <associate|bib-olver2010nist|<tuple|Olv10|35|#32>>
    <associate|bib-rainville1960special|<tuple|Rai60|35|#32>>
    <associate|bib-tarasov2003selberg|<tuple|TV03|35|#32>>
    <associate|bib-vogan1981representations|<tuple|VJ81|?>>
    <associate|bib-wallach1988real|<tuple|Wal88|?>>
    <associate|bib-wallach1988real2|<tuple|Wal92|?>>
    <associate|bib-warnaar2010sl3|<tuple|War10|35|#32>>
    <associate|cor|<tuple|13.2|14|#14>>
    <associate|cor:1|<tuple|28|?>>
    <associate|cor:2|<tuple|18.2|17|#19>>
    <associate|cor:3|<tuple|20.6|22|#21>>
    <associate|eq-1|<tuple|8.3|8|#9>>
    <associate|eq-2|<tuple|7.1|5|#8>>
    <associate|eq:14|<tuple|28.1|29|#29>>
    <associate|eq:q8-1|<tuple|8.2|6|#9>>
    <associate|eq:unknown|<tuple|21.2|23|#22>>
    <associate|eqn:20-beminus|<tuple|23.2|25|#24>>
    <associate|eqn:20-beplus|<tuple|23.1|25|#24>>
    <associate|eqn:Rod|<tuple|17|?>>
    <associate|eqn:Vk7ZjF-1|<tuple|30.2|?|#31>>
    <associate|eqn:Vk7Zjf-1|<tuple|30.4|?|#31>>
    <associate|eqn:Vk7Zjf-3|<tuple|30.3|?|#31>>
    <associate|eqn:Vk7Zjf-4|<tuple|30.4|?|#31>>
    <associate|eqn:cor:1|<tuple|14|?>>
    <associate|eqn:derst|<tuple|18|?>>
    <associate|eqn:herm1|<tuple|14.1|15|#15>>
    <associate|eqn:iF|<tuple|15|?>>
    <associate|eqn:lem3.2|<tuple|15|?>>
    <associate|eqn:main|<tuple|19.1|19|#20>>
    <associate|eqn:q26-1|<tuple|26.1|27|#27>>
    <associate|eqn:q26-2|<tuple|13|?>>
    <associate|eqn:q26-3|<tuple|26.2|28|#27>>
    <associate|eqn:q30-1|<tuple|30.1|32|#31>>
    <associate|eqn:stz|<tuple|16|?>>
    <associate|eqn:thm1|<tuple|9.1|9|#10>>
    <associate|eqn\<of\>Vk7Zjf-1|<tuple|30.3|?|#31>>
    <associate|eqn\<of\>Vk7Zjf-3|<tuple|30.3|?|#31>>
    <associate|fact:Vk7ZjF-1|<tuple|30.6|33|#31>>
    <associate|fig:howetan2d31|<tuple|23.1|24|#24>>
    <associate|fig:howetan2d32|<tuple|23.2|25|#24>>
    <associate|footnote-1|<tuple|1|20>>
    <associate|footnote-2|<tuple|2|20>>
    <associate|footnote-20.1|<tuple|20.1|20|#21>>
    <associate|footnote-20.2|<tuple|20.2|20|#21>>
    <associate|footnote-20.3|<tuple|20.3|?>>
    <associate|footnote-20.4|<tuple|20.4|?>>
    <associate|footnote-20.5|<tuple|20.5|?>>
    <associate|footnote-20.6|<tuple|20.6|?>>
    <associate|footnote-21.1|<tuple|21.1|?>>
    <associate|footnote-21.2|<tuple|21.2|?>>
    <associate|footnote-21.3|<tuple|21.3|?>>
    <associate|footnote-21.4|<tuple|21.4|?>>
    <associate|footnote-22.1|<tuple|22.1|24|#23>>
    <associate|footnote-22.2|<tuple|22.2|24|#23>>
    <associate|footnote-22.3|<tuple|22.3|?>>
    <associate|footnote-22.4|<tuple|22.4|?>>
    <associate|footnote-23.1|<tuple|23.1|25|#24>>
    <associate|footnote-23.2|<tuple|23.2|25|#24>>
    <associate|footnote-3|<tuple|3|24>>
    <associate|footnote-30.1|<tuple|30.1|?|#31>>
    <associate|footnote-30.2|<tuple|30.2|?|#31>>
    <associate|footnote-30.3|<tuple|30.3|?|#31>>
    <associate|footnote-4|<tuple|4|24>>
    <associate|footnote-5|<tuple|5|25>>
    <associate|footnote-6|<tuple|6|25>>
    <associate|footnr-1|<tuple|1|20>>
    <associate|footnr-2|<tuple|2|20>>
    <associate|footnr-20.1|<tuple|20.1|20|#21>>
    <associate|footnr-20.2|<tuple|20.2|20|#21>>
    <associate|footnr-20.3|<tuple|20.3|?>>
    <associate|footnr-20.4|<tuple|20.4|?>>
    <associate|footnr-20.5|<tuple|20.5|?>>
    <associate|footnr-20.6|<tuple|20.6|?>>
    <associate|footnr-21.1|<tuple|21.1|?>>
    <associate|footnr-21.2|<tuple|21.2|?>>
    <associate|footnr-21.3|<tuple|21.3|?>>
    <associate|footnr-21.4|<tuple|21.4|?>>
    <associate|footnr-22.1|<tuple|22.1|24|#23>>
    <associate|footnr-22.2|<tuple|22.2|24|#23>>
    <associate|footnr-22.3|<tuple|22.3|?>>
    <associate|footnr-22.4|<tuple|22.4|?>>
    <associate|footnr-23.1|<tuple|23.1|25|#24>>
    <associate|footnr-23.2|<tuple|23.2|25|#24>>
    <associate|footnr-3|<tuple|3|24>>
    <associate|footnr-30.1|<tuple|30.1|?|#31>>
    <associate|footnr-30.2|<tuple|30.2|?|#31>>
    <associate|footnr-30.3|<tuple|30.3|?|#31>>
    <associate|footnr-4|<tuple|4|24>>
    <associate|footnr-5|<tuple|5|25>>
    <associate|footnr-6|<tuple|6|25>>
    <associate|lem:Vk7ZjF-1|<tuple|30.5|33|#31>>
    <associate|lem:Vk7ZjF-2|<tuple|30.7|33|#31>>
    <associate|lem:Vk7ZjF-3|<tuple|30.8|?|#31>>
    <associate|main-thm|<tuple|5|?>>
    <associate|prop:2|<tuple|15|?>>
    <associate|prop:Vk7ZjF-1|<tuple|30.2|32|#31>>
    <associate|prop:Vk7ZjF-2|<tuple|30.3|32|#31>>
    <associate|q-ode|<tuple|11.1|9|#12>>
    <associate|q1|<tuple|1.1|1|#2>>
    <associate|q14|<tuple|14.1|15|#15>>
    <associate|q15|<tuple|15.1|16|#16>>
    <associate|q18|<tuple|18.1|17|#19>>
    <associate|q:20|<tuple|20.1|20|#21>>
    <associate|q:21|<tuple|21.1|23|#22>>
    <associate|q:23|<tuple|23.1|24|#24>>
    <associate|thm-1|<tuple|9.2|9|#10>>
    <associate|thm-2|<tuple|19.2|19|#20>>
    <associate|thm:3|<tuple|20.2|20|#21>>
    <associate|thm:4|<tuple|20.3|20|#21>>
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

      gradshteinryzhik

      gradshteinryzhik

      andrews1999special

      olver2010nist

      MR3008847

      andrews2000special
    </associate>
    <\associate|figure>
      <tuple|normal|Howe-Tan, diagram 2.31|<pageref|auto-24>>

      <tuple|normal|Howe-Tan, diagram 2.32|<pageref|auto-25>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|HEGL84>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|MRZoR8>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|XAsFsU>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|GbW86M>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|CBYWzL>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|ihDxFM>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|h1uGiK>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|oZgJin>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|1cltWd>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|mR99JZ>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|11<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|1jKfH6>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|12<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|l4vw7A>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|13<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|tKwSn7>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|14<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|0eKuB3>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|15<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|bjirR9>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|16<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|mNhbiQ>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|17<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|vm5x55>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|18<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|6lT7s5>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|19<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|EYpmgz>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|20<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|ytphG1>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|21<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|ZhyKBC>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|22<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|nmVYJJ>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|23<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|dAwnmw>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|24<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|dZZYM3>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|25<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|3Rnupa>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|26<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|xChzVK>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|27<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|gZ5ICQ>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|28<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|GCsVoB>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|29<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|uWdrjC>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|30<space|2spc>section
      <\surround|<vspace*|1fn><no-indent>|<htab|0fn|first><vspace|1fn>>
        <surround||<htab|5mm>|<with|font-family|<quote|tt>|language|<quote|verbatim>|par-first|<quote|0fn>|par-par-sep|<quote|0fn>|Vk7ZjF>>
      </surround>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32><vspace|0.5fn>

      <with|par-left|<quote|1tab>|30.1<space|2spc>Main statements
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>

      <with|par-left|<quote|1tab>|30.2<space|2spc>Auxiliary lemmas
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <with|par-left|<quote|1tab>|30.3<space|2spc>Proofs
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>