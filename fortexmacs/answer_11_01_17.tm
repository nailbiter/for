<TeXmacs|1.99.5>

<style|generic>

<\body>
  <\question>
    How changes the expression of the integral

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|<big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|(|1-u<rsup|2>|)><rsup|<frac|q-2|2>><around*|(|1-v<rsup|2>|)><rsup|<frac|\<lambda\>+\<nu\>-q|2>-1><around*|(|1-w<rsup|2>|)><rsup|<frac|p-3|2>><around*|\||w|\|><rsup|\<lambda\>+\<nu\>-n><around*|\||u-v|\|><rsup|-\<nu\>>\<times\>>>|<row|<cell|<space|2em>\<times\><wide|C|~><rsup|<frac|p|2>-1><rsub|a<rprime|'>><around*|(|<frac|v|<sqrt|1-w<rsup|2><around*|(|1-v<rsup|2><rsup|>|)>>>|)><around*|(|1-w<rsup|2><around*|(|1-v<rsup|2><rsup|>|)>|)><rsup|<frac|a<rprime|'>|2>><wide|<wide|C|~>|~><rsup|<frac|q-1|2>><rsub|b><around*|(|u|)><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a<rprime|'>><rsub|a-a<rprime|'>><around*|(|<sqrt|w<rsup|2><around*|(|1-v<rsup|2>|)>>|)>d
      u d v d w,>>>>>
    </equation*>
  </question>

  under the variable change <math|<around*|(|u,v,w|)>\<rightarrow\><around*|(|u,v,z|)>>
  with <math|z=<sqrt|1-w<rsup|2><around*|(|1-v<rsup|2>|)>>>?

  <\answer>
    It becomes two times

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<tabular|<tformat|<table|<row|<cell|<big|int><rsub|D><around*|(|1-u<rsup|2>|)><rsup|<frac|q-2|2>><around*|(|z<rsup|2>-v<rsup|2>|)><rsup|<frac|p-3|2>><around*|(|1-z<rsup|2>|)><rsup|<frac|\<lambda\>+\<nu\>-n-1|2>><around*|\||u-v|\|><rsup|-\<nu\>>\<times\><wide|C|~><rsup|<frac|p|2>-1><rsub|a<rprime|'>><around*|(|<frac|v|z>|)>z<rsup|a<rprime|'>+1><wide|<wide|C|~>|~><rsup|<frac|q-1|2>><rsub|b><around*|(|u|)><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a<rprime|'>><rsub|a-a<rprime|'>><around*|(|<sqrt|1-z<rsup|2>>|)>
      d u d v d z>>>>>>|<cell|>>>>
    </eqnarray>

    where

    <\equation*>
      D\<assign\><around*|{|<around*|(|u,v,z|)>\<in\><around*|[|-1,1|]>\<times\><around*|[|0,1|]><rsup|2>\<mid\>w\<leqslant\>z|}>
    </equation*>
  </answer>

  <\question>
    How does the integral 6.4's statements changes if we use unnormalized
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
    u d v d w=>>>>>
  </equation*>

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|>>>>
  </eqnarray>
</body>

<\initial>
  <\collection>
    <associate|magnification|1.2>
  </collection>
</initial>