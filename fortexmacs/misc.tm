<TeXmacs|1.99.4>

<style|generic>

<\body>
  Recall that

  <\equation*>
    <around*|(|I<rsub|N\<rightarrow\>L>\<phi\>|)><around*|(|\<eta\><rsub|0>,\<eta\>|)>\<assign\><around*|\||\<eta\>|\|><rsup|N>\<phi\><around*|(|<frac|\<eta\>|<around*|\||\<eta\>|\|>>|)><wide|<wide|C|~>|~><rsup|<frac|n-1|2>+N><rsub|L-N><around*|(|\<eta\><rsub|0>|)>
  </equation*>

  and that for <math|\<phi\>\<in\>\<cal-H\><rsup|N><around*|(|\<bbb-S\><rsup|n-1>|)>>

  <\equation*>
    <big|int><rsub|\<bbb-S\><rsup|n-1>><around*|\||\<omega\><rsub|n>|\|><rsup|\<lambda\>+\<nu\>-n>\<phi\>=0
  </equation*>

  unless <math|N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>> and
  <math|\<phi\><around*|\|||\|><wide|<wide|C|~>|~><rsup|n/2-1><rsub|N><around*|(|\<omega\><rsub|n>|)>>.
  We also have an embedding

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|\<psi\>:\<bbb-R\><rsup|p,q>\<ni\><around*|(|x,y|)>\<mapsto\><frac|<around*|(|1-r<rsup|2>+s<rsup|2>,2x,2y,1+r<rsup|2>-s<rsup|2>|)>|<sqrt|R>>\<in\>\<bbb-S\><rsup|p,q>>|<cell|>>|<row|<cell|>|<cell|R:=<around*|(|1-r<rsup|2>+s<rsup|2>|)><rsup|2>+4r<rsup|2>>|<cell|>>>>
  </eqnarray>

  For <math|<around*|(|a,b|)>\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> with
  <math|a+b\<in\>2\<bbb-Z\>>

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|\<forall\>N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>,<space|0.6spc><around*|\<langle\>|K,I<rsub|a\<rightarrow\>a+N><rsup|<around*|(|p|)>>\<cal-H\><rsup|a><around*|(|\<bbb-S\><rsup|p-1>|)>\<otimes\>\<cal-H\><rsup|b><around*|(|\<bbb-S\><rsup|q>|)>|\<rangle\>>=0\<Leftrightarrow\>>|<cell|>>|<row|<cell|>|<cell|\<Leftrightarrow\>\<forall\>N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>\<forall\>a<rprime|'>\<leqslant\>a\<forall\>b<rprime|'>\<leqslant\>b,<space|1em><around*|\<langle\>|K,I<rsub|a\<rightarrow\>a+N><rsup|<around*|(|p|)>>I<rsub|a<rprime|'>\<rightarrow\>a><rsup|<around*|(|0|)>>\<cal-H\><rsup|a<rprime|'>><around*|(|\<bbb-S\><rsup|p-2>|)>\<otimes\>I<rsup|<around*|(|q|)>><rsub|b<rprime|'>\<rightarrow\>b>\<cal-H\><rsup|b<rprime|'>><around*|(|\<bbb-S\><rsup|q-1>|)>|\<rangle\>>=0\<Leftrightarrow\>>|<cell|>>|<row|<cell|>|<cell|\<Leftrightarrow\>\<forall\>N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>,<space|1em><around*|\<langle\>|K,I<rsub|a\<rightarrow\>a+N><rsup|<around*|(|p|)>>I<rsub|0\<rightarrow\>a><rsup|<around*|(|0|)>>1\<otimes\>I<rsup|<around*|(|q|)>><rsub|0\<rightarrow\>b>1|\<rangle\>>=0\<Leftrightarrow\>>|<cell|>>|<row|<cell|>|<cell|I<rsub|a\<rightarrow\>a+N><rsup|<around*|(|p|)>>I<rsub|0\<rightarrow\>a><rsup|<around*|(|0|)>>=<big|sum><rsub|i=0><rsup|a+N>k<rsub|i,a,N>I<rsub|i\<rightarrow\>a+N><rsup|<around*|(|0|)>>I<rsub|0\<rightarrow\>i><rsup|<around*|(|p-1|)>>>|<cell|>>|<row|<cell|>|<cell|\<Leftrightarrow\>\<forall\>N\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>,<space|1em><big|sum><rsub|i=0<mid|\|>i\<in\>2\<bbb-Z\>><rsup|a+N>k<rsub|i,a,N><around*|\<langle\>|K,<around*|\||<frac|2r|<sqrt|R>>|\|><rsup|i><wide|<wide|C<rsup|>|~>|~><rsup|<frac|p-1|2>+i><rsub|a+N-i><around*|(|\<eta\><rsub|0>|)><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|i><around*|(|\<omega\><rsub|p>|)>\<otimes\><wide|<wide|C|~>|~><rsup|<frac|q-1|2>><rsub|b><around*|(|\<xi\><rsub|q+1>|)>|\<rangle\>>=0\<Leftrightarrow\>>|<cell|>>>>
  </eqnarray>

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<around*|\<langle\>|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n><around*|\||Q|\|><rsup|-\<nu\>>R<rsup|-\<lambda\>/2>,<around*|\||<frac|2r|<sqrt|R>>|\|><rsup|i><wide|<wide|C<rsup|>|~>|~><rsup|<frac|p-1|2>+i><rsub|a+N-i><around*|(|<frac|1-r<rsup|2>+s<rsup|2>|<sqrt|R>>|)><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|i><around*|(|\<omega\><rsub|p>|)>\<otimes\><wide|<wide|C|~>|~><rsup|<frac|q-1|2>><rsub|b><around*|(|<frac|1+r<rsup|2>-s<rsup|2>|<sqrt|R>>|)>|\<rangle\>>\<simeq\>>|<cell|>>|<row|<cell|>|<cell|\<simeq\><big|int><rsub|\<bbb-S\><rsup|p-1>><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|i><around*|(|\<omega\><rsub|p>|)><around*|\||\<omega\><rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>d\<omega\>\<times\>>|<cell|>>|<row|<cell|>|<cell|\<times\><big|int><rsub|x,y=-1><rsup|1><around*|\||x-y|\|><rsup|-\<nu\>><around*|(|1-x<rsup|2>|)><rsup|<around*|(|q-2|)>/2><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>-q|)>/2-1><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+i><rsub|a+N-i><around*|(|y|)><wide|<wide|C|~>|~><rsup|<frac|q-1|2>><rsub|b><around*|(|x|)>d
    x d y\<simeq\>>|<cell|>>|<row|<cell|>|<cell|\<simeq\><frac|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+2|2>|)>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n-i+2|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-i|2>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|\<times\><big|int><rsub|x,y=-1><rsup|1><around*|\||x-y|\|><rsup|-\<nu\>><around*|(|1-x<rsup|2>|)><rsup|<around*|(|q-2|)>/2><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+i+\<nu\>-q|)>/2-1><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+i><rsub|a+N-i><around*|(|y|)><wide|<wide|C|~>|~><rsup|<frac|q-1|2>><rsub|b><around*|(|x|)>d
    x d y>|<cell|>>>>
  </eqnarray>

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<wide|<wide|C|~>|~><rsup|\<alpha\>><rsub|2k><around*|(|0|)>=<frac|<rsup|><around*|(|-1|)><rsup|k>|k!>\<Gamma\><around*|(|\<alpha\>+k+1|)>>|<cell|>>|<row|<cell|>|<cell|C<rsup|\<mu\>><rsub|2k><around*|(|x|)>=<big|sum><rsub|j=0><rsup|k><around*|(|-1|)><rsup|j><frac|\<Gamma\><around*|(|2k-j+\<mu\>|)>|\<Gamma\><around*|(|\<mu\>|)>\<Gamma\><around*|(|j+1|)>\<Gamma\><around*|(|2k-2j+1|)>><around*|(|2t|)><rsup|2k-2j>>|<cell|>>>>
  </eqnarray>

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|\<phi\>=1\<in\>\<cal-H\><rsup|0><around*|(|\<bbb-S\><rsup|p-2>|)>>|<cell|>>|<row|<cell|>|<cell|<around*|\||\<eta\><rsub|0>,\<eta\>|\|><rsup|a><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|a><around*|(|<frac|\<eta\><rsub|0>|<around*|\||\<eta\><rsub|0>,\<eta\>|\|>>|)><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a><rsub|N><around*|(|\<eta\><rsub|p>|)>=<big|sum><rsub|i=0><rsup|a+N>k<rsub|i><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|i><around*|(|<frac|\<eta\><rsub|p>|<around*|\||\<eta\>,\<eta\><rsub|p>|\|>>|)><around*|\||\<eta\>,\<eta\><rsub|p>|\|><rsup|i><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+i><rsub|a+N-i><around*|(|\<eta\><rsub|0>|)>>|<cell|>>|<row|<cell|>|<cell|<around*|\||\<eta\><rsub|0>,\<eta\>|\|>=<sqrt|\<eta\><rsub|0><rsup|2>+<around*|\||\<eta\>|\|><rsup|2>>=<sqrt|1-\<eta\><rsub|p><rsup|2>>,<space|2em><around*|\||\<eta\>,\<eta\><rsub|p>|\|>=<sqrt|<around*|\||\<eta\>|\|><rsup|2>+\<eta\><rsub|p><rsup|2>>=<sqrt|1-\<eta\><rsub|0><rsup|2>>>|<cell|>>|<row|<cell|>|<cell|k<rsub|i,a,N>=0\<Leftarrow\>i\<in\>2\<bbb-Z\>+1>|<cell|>>|<row|<cell|>|<cell|<around*|(|1-\<eta\><rsub|p><rsup|2>|)><rsup|a/2><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|a><around*|(|<frac|\<eta\><rsub|0>|<sqrt|1-\<eta\><rsub|p><rsup|2>>>|)><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a><rsub|N><around*|(|\<eta\><rsub|p>|)>=<big|sum><rsub|i=0<mid|\|>i\<in\>2\<bbb-Z\>><rsup|a+N>k<rsub|i><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|i><around*|(|<frac|\<eta\><rsub|p>|<sqrt|1-\<eta\><rsub|0><rsup|2>>>|)><around*|(|1-\<eta\><rsub|0><rsup|2>|)><rsup|i/2><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+i><rsub|a+N-i><around*|(|\<eta\><rsub|0>|)>>|<cell|>>|<row|<cell|>|<cell|\<eta\><rsub|0>=0\<Rightarrow\><around*|(|1-\<eta\><rsub|p><rsup|2>|)><rsup|a/2><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|a><around*|(|0|)><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a><rsub|N><around*|(|\<eta\><rsub|p>|)>=<big|sum><rsub|i=0<mid|\|>i\<in\>2\<bbb-Z\>><rsup|a+N>k<rsub|i><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|i><around*|(|\<eta\><rsub|p>|)><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+i><rsub|a+N-i><around*|(|0|)>>|<cell|>>|<row|<cell|>|<cell|\<eta\><rsub|p>=0\<Rightarrow\><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|a><around*|(|\<eta\><rsub|0>|)><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a><rsub|N><around*|(|0|)>=<big|sum><rsub|i=0<mid|\|>i\<in\>2\<bbb-Z\>><rsup|a+N>k<rsub|i><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|i><around*|(|0|)><around*|(|1-\<eta\><rsub|0><rsup|2>|)><rsup|i/2><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+i><rsub|a+N-i><around*|(|\<eta\><rsub|0>|)>>|<cell|>>>>
  </eqnarray>

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1>C<rsup|\<mu\>+1/2><rsub|N><around*|(|x|)>C<rsup|\<mu\>><rsub|N-2k><around*|(|x|)><around*|(|1-x<rsup|2>|)><rsup|\<mu\>-1/2>dx=>|<cell|>>|<row|<cell|>|<cell|=<big|int><rsub|-1><rsup|1><frac|d<rsup|N-2k>|dx<rsup|N-2k>>C<rsup|\<mu\>+1/2><rsub|N><around*|(|x|)><around*|(|1-x<rsup|2>|)><rsup|\<mu\>+N-2k+2k-1/2>dx\<simeq\>>|<cell|>>|<row|<cell|>|<cell|\<simeq\><big|int><rsub|-1><rsup|1>C<rsub|2k><rsup|\<mu\>+1/2+N-2k><around*|(|1-x<rsup|2>|)><rsup|\<mu\>+N-2k-1/2>dx=>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|-1><rsup|1><around*|(|1-x<rsup|2>|)><rsup|-1/2><frac|d<rsup|2k>|d
    x<rsup|2k>><around*|(|1-x<rsup|2>|)><rsup|\<mu\>+N>>|<cell|>>>>
  </eqnarray>

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<around*|(|1-\<eta\><rsub|p><rsup|2>|)><rsup|a/2><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|a><around*|(|0|)><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+a><rsub|N><around*|(|\<eta\><rsub|p>|)>=<big|sum><rsub|i=0<mid|\|>i\<in\>2\<bbb-Z\>><rsup|a+N>k<rsub|i><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|i><around*|(|\<eta\><rsub|p>|)><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+i><rsub|a+N-i><around*|(|0|)>>|<cell|>>|<row|<cell|>|<cell|a=0\<Rightarrow\><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|0><around*|(|0|)><wide|<wide|C|~>|~><rsup|<frac|p-1|2>><rsub|N><around*|(|\<eta\><rsub|p>|)>=<big|sum><rsub|i=0<mid|\|>i\<in\>2\<bbb-Z\>><rsup|N>k<rsub|i><wide|<wide|C|~>|~><rsup|<frac|p-2|2>><rsub|i><around*|(|\<eta\><rsub|p>|)><wide|<wide|C|~>|~><rsup|<frac|p-1|2>+i><rsub|a+N-i><around*|(|0|)>>|<cell|>>>>
  </eqnarray>
</body>