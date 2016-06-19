<TeXmacs|1.99.4>

<style|generic>

<\body>
  We compute as follows

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|N>x<rsub|1><rsup|2>dx<rsub|1>\<wedge\>dx<rsub|3>+x<rsub|2>dx<rsub|1>\<wedge\>dx<rsub|2>=>|<cell|>>|<row|<cell|>|<cell|=<big|int><rsub|<around*|{|x<rsub|1><rsup|2>+x<rsub|2><rsup|2>\<leqslant\>5|}>>x<rsub|1><rsup|2>dx<rsub|1>\<wedge\>d<around*|(|<sqrt|x<rsub|1><rsup|2>+x<rsub|2><rsup|2>>|)>+x<rsub|2>dx<rsub|1>\<wedge\>dx<rsub|2>=<rsub|>>|<cell|<around*|(|dx<rsub|1>\<wedge\>dx<rsub|1>=0|)>>>|<row|<cell|>|<cell|=<big|int><rsub|<around*|{|x<rsub|1><rsup|2>+x<rsub|2><rsup|2>\<leqslant\>5|}>>x<rsub|1><rsup|2>dx<rsub|1>\<wedge\><frac|x<rsub|2>|<sqrt|x<rsub|1><rsup|2>+x<rsub|2><rsup|2>>>dx<rsub|2>+x<rsub|2>dx<rsub|1>\<wedge\>dx<rsub|2>=0>|<cell|>>>>
  </eqnarray>

  the latter expression is zero because both
  <math|x<rsub|1><rsup|2>x<rsub|2>> and <math|x<rsub|2>> are odd in
  <math|x<rsub|2>>, while the region <math|<around*|{|x<rsub|1><rsup|2>+x<rsub|2><rsup|2>\<leqslant\>5|}>>
  is symmetric under <math|x<rsub|2>\<leftrightarrow\>-x<rsub|2>>.
</body>

<initial|<\collection>
</collection>>