<TeXmacs|1.99.5>

<style|generic>

<\body>
  <\question>
    How does the statement of Proposition 6.4

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-u<rsup|2>|)><rsup|<frac|q-2|2>><around*|(|1-v<rsup|2>|)><rsup|<frac|\<lambda\>+\<nu\>-q|2>-1><around*|(|1-w<rsup|2>|)><rsup|<frac|p-3|2>><around*|\||w|\|><rsup|\<lambda\>+\<nu\>-n><around*|\||u-v|\|><rsup|-\<nu\>>\<times\>>>|<row|<cell|<space|2em>\<times\><wide|C|~><rsup|<frac|p|2>-1><rsub|a<rprime|'>><around*|(|<frac|v|<sqrt|1-w<rsup|2><around*|(|1-v<rsup|2><rsup|>|)>>>|)><around*|(|1-w<rsup|2><around*|(|1-v<rsup|2><rsup|>|)>|)><rsup|<frac|a<rprime|'>|2>><wide|<wide|C|~>|~><rsup|<frac|q-1|2>><rsub|b><around*|(|u|)><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a<rprime|'>><rsub|a-a<rprime|'>><around*|(|<sqrt|w<rsup|2><around*|(|1-v<rsup|2>|)>>|)>d
      u d v d w,>>>>>
    </equation*>

    if in the integral we do variable change
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
</body>

<\initial>
  <\collection>
    <associate|magnification|1.2>
  </collection>
</initial>