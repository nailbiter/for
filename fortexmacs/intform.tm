<TeXmacs|1.99.4>

<style|article>

<\body>
  <date>

  <\proposition>
    <label|prop-1>Suppose <math|u\<leqslant\>0>. Then the following holds:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|0><rsup|1><around*|(|1-w<rsup|2>|)><rsup|\<alpha\>>w<rsup|\<beta\>><around*|\||1-u
      w|\|><rsup|\<gamma\>>d w=>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>>>
    </eqnarray>
  </proposition>

  <\render-proof|Proof of Proposition <reference|prop-1>>
    We proceed as follows:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|0><rsup|1><around*|(|1-w<rsup|2>|)><rsup|\<alpha\>>w<rsup|\<beta\>><around*|\||1-u
      w|\|><rsup|\<gamma\>>d w=<big|int><rsub|0><rsup|1><around*|(|1-w<rsup|2>|)><rsup|\<alpha\>>w<rsup|\<beta\>><around*|(|1+<around*|(|-u|)>w|)><rsup|\<gamma\>>d
      w=>|<cell|>>|<row|<cell|>|<cell|=<frac|1|2><big|int><rsub|0><rsup|1><around*|(|1-w|)><rsup|\<alpha\>>w<rsup|<frac|\<beta\>-1|2>><around*|(|1-u<sqrt|w>|)><rsup|\<gamma\>>d
      w=<frac|1|2><big|sum><rsub|i=0><rsup|\<infty\>><binom|\<gamma\>|n><around*|(|-u|)><rsup|n><big|int><rsub|0><rsup|1><around*|(|1-w|)><rsup|\<alpha\>>w<rsup|<frac|\<beta\>-1+n|2>>d
      w>|<cell|>>|<row|<cell|>|<cell|=<frac|1|2><big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|(|\<gamma\>|)><rsub|n>|n!>u<rsup|n><frac|\<Gamma\><around*|(|\<alpha\>+1|)>\<Gamma\><around*|(|<frac|\<beta\>+1+n|2>|)>|\<Gamma\><around*|(|<frac|\<alpha\>+3+n+\<beta\>|2>|)>>=<frac|\<Gamma\><around*|(|\<alpha\>+1|)>\<Gamma\><around*|(||)>|2>
      <rsub|2>F<rsub|1><around*|(|;u|)>>|<cell|>>>>
    </eqnarray>
  </render-proof>
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|prop-1|<tuple|1|?|../../.TeXmacs/texts/scratch/no_name_18.tm>>
  </collection>
</references>