<TeXmacs|1.99.4>

<style|generic>

<\body>
  <\problem>
    \;
  </problem>

  Assuming <math|T=a e<rsup|1>\<wedge\>e<rsup|2>+b
  e<rsup|1>\<wedge\>e<rsup|3>+c e<rsup|2>\<wedge\>e<rsup|3>>, we have that
  <math|T<around*|(|e<rsub|1>,e<rsub|2>|)>=a>,
  <math|T<around*|(|e<rsub|1>,e<rsub|3>|)>=b> and
  <math|T<around*|(|e<rsub|2>,e<rsub|3>|)>=c>, so we thus just need to
  compute the latter.\ 

  Next, we recall that for two vectors <math|x,y> the area of parallelogram
  spanned by them is <math|<around*|\||x\<times\>y|\|>> and for two vectors
  <math|x<rprime|'>,y<rprime|'>> in span of <math|<around*|{|x,y|}>> we have
  ordered list <math|<around*|(|x<rprime|'>,y<rprime|'>|)>> having the same
  orientation as <math|<around*|(|x,y|)>> iff
  <math|x<rprime|'>\<times\>y<rprime|'>> is a positive multiple of
  <math|x\<times\>y>. Hence,\ 

  <\equation>
    T<around*|(|x,y|)>=sgn<around*|(|<frac|P<around*|(|x|)>\<times\>P<around*|(|y|)>|v<rsub|1>\<times\>v<rsub|2>>|)><around*|\||P<around*|(|x|)>\<times\>P<around*|(|y|)>|\|><label|eq>
  </equation>

  We further note that as <math|w\<assign\>v<rsub|1>\<times\>v<rsub|2>=<around*|(|-2,-1,1|)><rsup|T>\<perp\>v<rsub|1>,v<rsub|2>>,
  we have <math|P<around*|(|x|)>=x-<frac|<around*|\<langle\>|x,w|\<rangle\>>|<around*|\||w|\|><rsup|2>>w>
  and hence

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|P<around*|(|e<rsub|1>|)>=<around*|(|1/3,-1/3,1/3|)><rsup|T>>|<cell|>>|<row|<cell|>|<cell|P<around*|(|e<rsub|2>|)>=<around*|(|-1/3,5/6,1/6|)><rsup|T>>|<cell|>>|<row|<cell|>|<cell|P<around*|(|e<rsub|3>|)>=<around*|(|1/3,1/6,5/6|)><rsup|T>.>|<cell|>>>>
  </eqnarray>

  And thus <math|<eqref|eq>> implies that\ 

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|T<around*|(|e<rsub|1>,e<rsub|2>|)>=<around*|\||<around*|(|-1/3,-1/6,1/6|)><rsup|T>|\|>=<frac|1|<sqrt|6>>>|<cell|>>|<row|<cell|>|<cell|T<around*|(|e<rsub|1>,e<rsub|3>|)>=<around*|\||<around*|(|-1/3,-1/6,1/6|)><rsup|T>|\|>=<frac|1|<sqrt|6>>>|<cell|>>|<row|<cell|>|<cell|T<around*|(|e<rsub|2>,e<rsub|3>|)>=-<around*|\||<around*|(|2/3,1/3,-1/3|)><rsup|T>|\|>=<frac|<sqrt|2>|<sqrt|3>>>|<cell|>>>>
  </eqnarray>

  and hence <math|T=<frac|1|<sqrt|6>>e<rsup|1>\<wedge\>e<rsup|2>+<frac|1|<sqrt|6>>e<rsup|1>\<wedge\>e<rsup|3>+<frac|<sqrt|2>|<sqrt|3>>e<rsup|2>\<wedge\>e<rsup|3>>.

  <\problem>
    \;
  </problem>

  We first note that anti-symmetry of <math|\<Phi\>> implies that if
  <math|\<sigma\>> is some permutation of
  <math|<around*|{|1,2,\<ldots\>,n|}>> then
  <math|\<Phi\><around*|(|v<rsub|\<sigma\><around*|(|1|)>>,v<rsub|\<sigma\><around*|(|2|)>>,\<ldots\>,v<rsub|\<sigma\><around*|(|n|)>>|)>=sgn<around*|(|\<sigma\>|)>\<Phi\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>>
  and that <math|\<Phi\><around*|(|\<ldots\>,v,\<ldots\>,v,\<ldots\>|)>=-\<Phi\><around*|(|\<ldots\>,v,\<ldots\>,v,\<ldots\>|)>=0>.
  Now, if we let <math|v<rsub|i>=<big|sum><rsub|j>v<rsub|i><rsup|j>e<rsub|j>>
  we have

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|\<Phi\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>=<big|sum><rsub|i<rsub|1>,\<ldots\>,i<rsub|n>=1><rsup|n>v<rsup|1><rsub|i<rsub|1>>v<rsup|2><rsub|i<rsub|2>>\<ldots\>v<rsub|i<rsub|n>><rsup|n>\<Phi\><around*|(|e<rsub|i<rsub|1>>,e<rsub|i<rsub|2>>,\<ldots\>,e<rsub|i<rsub|n>>|)>=>|<cell|>>>>
  </eqnarray>

  now, by the observation above, if the list
  <math|<around*|(|i<rsub|1>,\<ldots\>,i<rsub|n>|)>> has repeating elements,
  we have <math|\<Phi\><around*|(|e<rsub|i<rsub|1>>,e<rsub|i<rsub|2>>,\<ldots\>,e<rsub|i<rsub|n>>|)>=0>
  and hence only those lists contribute to the sum, that form permutation of
  <math|<around*|{|1,\<ldots\>,n|}>> and we call the set of such permutations
  by name <math|\<frak-S\><rsub|n>>. Thus, we continue:

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|=<big|sum><rsub|\<sigma\>\<in\>\<frak-S\><rsub|n>>v<rsup|1><rsub|\<sigma\><around*|(|1|)>>v<rsup|2><rsub|\<sigma\><around*|(|2|)>>\<ldots\>v<rsup|n><rsub|\<sigma\><around*|(|n|)>>\<Phi\><around*|(|e<rsub|\<sigma\><around*|(|1|)>>,e<rsub|\<sigma\><around*|(|2|)>>,\<ldots\>,e<rsub|\<sigma\><around*|(|n|)>>|)>=>|<cell|>>|<row|<cell|>|<cell|=<big|sum><rsub|\<sigma\>\<in\>\<frak-S\><rsub|n>>sgn<around*|(|\<sigma\>|)>v<rsup|1><rsub|\<sigma\><around*|(|1|)>>v<rsup|2><rsub|\<sigma\><around*|(|2|)>>\<ldots\>v<rsup|n><rsub|\<sigma\><around*|(|n|)>>\<Phi\><around*|(|e<rsub|1>,\<ldots\>,e<rsub|n>|)>=\<Phi\><around*|(|e<rsub|1>,\<ldots\>,e<rsub|n>|)>det<around*|(|<around*|(|v<rsup|i><rsub|j>|)><rsub|i,j>|)>>|<cell|>>>>
  </eqnarray>

  and the properties of determinant now imply the required statement.
</body>

<\references>
  <\collection>
    <associate|eq|<tuple|1|?|../../.TeXmacs/texts/scratch/no_name_1.tm>>
  </collection>
</references>