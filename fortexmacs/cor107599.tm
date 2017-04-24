<TeXmacs|1.99.4>

<style|article>

<\body>
  <\corollary>
    For <math|\<rho\>\<in\>\<bbb-C\>> with <math|Re\<rho\>\<gtr\>0> and
    <math|r\<in\><around*|{|0,1|}>>,

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<around*|\||cos\<varphi\>+cos\<psi\>|\|><rsup|\<rho\>>sgn<rsup|r><around*|(|cos\<varphi\>+cos\<psi\>|)>>|<cell|>>|<row|<cell|>|<cell|=<big|sum><rsub|<stack|<tformat|<table|<row|<cell|l,m=0>>|<row|<cell|l\<equiv\>m+r
      mod 2>>>>>><rsup|\<infty\>><frac|H<around*|(|l|)>H<around*|(|m|)>2<rsup|2-\<rho\>>\<Gamma\><around*|(|\<rho\>+1|)><rsup|2>|<big|prod><rsub|\<delta\>,\<varepsilon\>\<in\><around*|{|\<pm\>1|}>>\<Gamma\><around*|(|1+<frac|1|2><around*|(|\<rho\>+\<delta\>l+\<varepsilon\>m|)>|)>>cos
      l\<varphi\> cos m\<psi\>.>|<cell|>>>>
    </eqnarray>
  </corollary>

  <\proof>
    We shall use the Theorem 3 of <verbatim|answer.pdf>:

    <\render-theorem|Theorem 3>
      <label|thm:3>For <math|Re \<lambda\>,Re \<mu\>\<gtr\>-<frac|1|2>> and
      <math|Re<around*|(|\<nu\>|)>\<gtr\>0> the following holds:

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<around*|\||s+t|\|><rsup|2\<nu\>>sgn<rsup|<frac|1\<pm\>1|2>><around*|(|s+
        z|)>=<big|sum><rsub|l,m=0\<mid\>l+m\<equiv\><frac|1\<pm\>1|2>mod
        2><rsup|\<infty\>>a<rsub|l,m>C<rsub|l><rsup|\<lambda\>><around*|(|s|)>C<rsub|m><rsup|\<mu\>><around*|(|t|)>,>|<cell|>>|<row|<cell|>|<cell|a<rsub|l,m>=<frac|<around*|(|\<lambda\>+l|)><around*|(|\<mu\>+m|)>\<Gamma\><around*|(|\<nu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+2\<nu\>+1|)>\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|\<mu\>|)>|\<pi\><rsup|<frac|1|2>>\<Gamma\><around*|(|\<lambda\>+\<nu\>+<frac|l-m|2>+1|)><around*|(|1+\<nu\>|)><rsub|-<frac|l+m|2>>\<Gamma\><around*|(|\<mu\>+\<nu\>-<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<lambda\>+\<mu\>+\<nu\>+<frac|l+m|2>+1|)>>.<eq-number><label|eqn:cor:1>>|<cell|>>>>
      </eqnarray>
    </render-theorem>

    We recall that for the Chebyshev polynomials
    <math|T<rsub|n><around*|(|x|)>> of the first kind the following holds:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|T<rsub|n><around*|(|cos\<varphi\>|)>=cos
      n\<varphi\>,<eq-number><label|eqn:2>>|<cell|>>|<row|<cell|>|<cell|T<rsub|n><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|lim<rsub|\<lambda\>\<rightarrow\>0><around*|(|\<lambda\>+<frac|n|2>|)>\<Gamma\><around*|(|\<lambda\>|)>C<rsub|n><rsup|\<lambda\>><around*|(|x|)>,>|<cell|n\<geqslant\>1,>>|<row|<cell|C<rsub|n>,>|<cell|n=0.>>>>><eq-number><label|eqn:3>>|<cell|>>>>
    </eqnarray>

    Taking <math|\<lambda\>,\<mu\>\<rightarrow\>0> in
    <math|<eqref|eqn:cor:1>> and using <math|<eqref|eqn:3>>, we arrive at:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<around*|\||s+t|\|><rsup|2\<nu\>>sgn<rsup|r><around*|(|s+
      z|)>,>|<cell|>>|<row|<cell|>|<cell|=<big|sum><rsub|<stack|<tformat|<table|<row|<cell|l,m=0>>|<row|<cell|l+m\<equiv\>r
      mod 2>>>>>><rsup|\<infty\>><frac|H<around*|(|l|)>H<around*|(|m|)>2<rsup|2-2\<nu\>>\<Gamma\><around*|(|2\<nu\>+1|)><rsup|2>|\<Gamma\><around*|(|\<nu\>+<frac|l-m|2>+1|)>\<Gamma\><around*|(|1+\<nu\>-<frac|l+m|2>|)>\<Gamma\><around*|(|\<nu\>-<frac|l-m|2>+1|)>\<Gamma\><around*|(|\<nu\>+<frac|l+m|2>+1|)>>T<rsub|l><around*|(|s|)>T<rsub|m><around*|(|s|)>,>|<cell|>>>>
    </eqnarray>

    where Heaviside step function <math|H<around*|(|x|)>> is defined as:

    <\equation*>
      H<around*|(|x|)>\<assign\><choice|<tformat|<table|<row|<cell|0,>|<cell|x\<less\>0,>>|<row|<cell|1/2,>|<cell|x=0,>>|<row|<cell|1,>|<cell|x\<gtr\>0.>>>>>
    </equation*>

    Upon substituting <math|\<nu\>\<rightarrow\>\<rho\>/2,s\<rightarrow\>cos\<varphi\>,t\<rightarrow\>cos\<psi\>>
    and using <math|<eqref|eqn:3>>, the result follows.
  </proof>
</body>

<\references>
  <\collection>
    <associate|eqn:|<tuple|3|?|../../.TeXmacs/texts/scratch/no_name_25.tm>>
    <associate|eqn:2|<tuple|2|?|../../.TeXmacs/texts/scratch/no_name_25.tm>>
    <associate|eqn:3|<tuple|3|?|../../.TeXmacs/texts/scratch/no_name_25.tm>>
    <associate|eqn:cor:1|<tuple|1|?|../../.TeXmacs/texts/scratch/no_name_25.tm>>
    <associate|thm:3|<tuple|1|?|../../.TeXmacs/texts/scratch/no_name_25.tm>>
  </collection>
</references>