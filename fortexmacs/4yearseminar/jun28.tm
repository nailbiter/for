<TeXmacs|1.99.4>

<style|article>

<\body>
  <doc-data|<doc-title|4 year seminar, June 28>>

  <\definition*>
    <math|SL<rsub|2><around*|(|\<bbb-Z\>|)>\<supset\>\<Gamma\><around*|(|<wide*|N|\<wide-underbrace\>><rsub|\<in\>\<bbb-Z\><rsub|\<gtr\>0>>|)>>:
    subgroup defined as

    <\equation*>
      \<Gamma\><around*|(|N|)>=<around*|{|g\<in\>SL<around*|(|2,\<bbb-Z\>|)>\<mid\>g\<equiv\><around*|(|<tabular|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>>>>>|)><around*|(|mod
      N|)>|}>.
    </equation*>
  </definition*>

  <\theorem*>
    (<math|N\<geqslant\>2>). If we fix

    <\equation*>
      X<around*|(|N|)>=\<Gamma\><around*|(|N|)>\\<wide*|\<cal-H\><rsup|\<ast\>>|\<wide-underbrace\>><rsub|\<cal-H\>\<cup\><around*|{|\<Gamma\><around*|(|N|)><math-up|'s
      cusp>|}>>,
    </equation*>

    then the genus <math|g<rsub|N>> of <math|X<around*|(|N|)>> is given as

    <\equation*>
      g<rsub|N>=<choice|<tformat|<table|<row|<cell|0>|<cell|<around*|(|N=2|)>>>|<row|<cell|1+<frac|N<rsup|2><around*|(|N-6|)>|24><big|prod><rsub|p\<mid\>N><around*|(|1-<frac|1|p<rsup|2>>|)>>|<cell|<around*|(|N\<geqslant\>3|)>>>>>>
    </equation*>
  </theorem*>

  <\render-theorem|Notation>
    For subgroup <math|SL<around*|(|2\<comma\>\<bbb-R\>|)>\<supset\>G> we
    will denote its image in <math|PSL<around*|(|2,\<bbb-R\>|)>> by
    <math|<overline|G>>.
  </render-theorem>

  (below we assume <math|N\<geqslant\>2>)

  <\remark*>
    <math|\<Gamma\><around*|(|N|)>=Ker<around*|(|SL<around*|(|2,\<bbb-Z\>|)>\<rightarrow\>SL<around*|(|2,\<bbb-Z\>/N\<bbb-Z\>|)>|)>>.

    <space|3em><math|<around*|(|\<rightsquigarrow\>\<Gamma\><around*|(|N|)>\<vartriangleleft\>SL<around*|(|2,\<bbb-Z\>|)>|)>>
  </remark*>

  <\proposition*>
    (let <math|\<Gamma\>=SL<around*|(|2,\<bbb-Z\>|)>>) We have

    <\enumerate>
      <item><math|<wide*|<around*|[|\<Gamma\>:\<Gamma\><around*|(|N|)>|]>|\<wide-underbrace\>><rsub|=\<mu\><rsub|N>>=N<rsup|3><big|prod><rsub|p\<mid\>N><around*|(|1-p<rsup|-2>|)>>

      <item><math|<wide*|<around*|[|<wide|\<Gamma\>|\<bar\>>:<wide|\<Gamma\><around*|(|N|)>|\<bar\>>|]>|\<wide-underbrace\>><rsub|=<wide|\<mu\><rsub|N>|\<bar\>>>=<choice|<tformat|<table|<row|<cell|\<mu\><rsub|N>/2>|<cell|<around*|(|N\<geqslant\>3|)>>>|<row|<cell|\<mu\><rsub|N>>|<cell|<around*|(|N=2|)>>>>>>>
    </enumerate>
  </proposition*>

  <\proof>
    (of item 1.)<math|\<Gamma\><around*|(|N|)>=Ker<around*|(|<wide*|\<Gamma\>\<rightarrow\>SL<around*|(|2,\<bbb-Z\>/N\<bbb-Z\>|)>|\<wide-underbrace\>><rsub|<math-up|onto
    map>>|)>>, hence <math|\<mu\><rsub|N>=<around*|\||SL<around*|(|2,\<bbb-Z\>/N\<bbb-Z\>|)>|\|>>.

    If we rewrite <math|N>'s prime factorization as
    <math|N=<big|prod><rsub|k>p<rsub|k><rsup|s<rsub|k>>>, we have

    <\equation*>
      SL<around*|(|2,\<bbb-Z\>/N\<bbb-Z\>|)>\<cong\><big|prod><rsub|k><wide*|SL<around*|(|2,\<bbb-Z\>/p<rsub|k><rsup|s<rsub|k>>\<bbb-Z\>|)>|\<wide-underbrace\>><rsub|<math-up|only
      need to compute this>>.
    </equation*>

    Now,

    <\equation*>
      SL<around*|(|2,\<bbb-Z\>/p<rsub|k><rsup|s<rsub|k>>\<bbb-Z\>|)>=Ker<around*|(|det:GL<around*|(|2,\<bbb-Z\>/p<rsub|k><rsup|s<rsub|k>>\<bbb-Z\>|)>\<twoheadrightarrow\><around*|(|\<bbb-Z\>/p<rsub|k><rsup|s<rsub|k>>\<bbb-Z\>|)><rsup|\<times\>>|)>
    </equation*>

    <\itemize>
      <item><math|<around*|\||<around*|(|\<bbb-Z\>/p<rsub|k><rsup|s<rsub|k>>\<bbb-Z\>|)><rsup|\<times\>>|\|>=p<rsub|k><rsup|s<rsub|k>>-p<rsub|k><rsup|s<rsub|k>-1>=p<rsub|k><rsup|s<rsub|k>><around*|(|1-p<rsub|k><rsup|-1>|)>>.
      For brevity, we let\ 

      <\equation*>
        K\<assign\>Ker<around*|(|det:GL<around*|(|2,\<bbb-Z\>/p<rsub|k><rsup|s<rsub|k>>\<bbb-Z\>|)>\<twoheadrightarrow\><around*|(|\<bbb-Z\>/p<rsub|k><rsup|s<rsub|k>>\<bbb-Z\>|)><rsup|\<times\>>|)>
      </equation*>

      and thus\ 

      <item>we need to compute <math|<around*|\||K|\|>>. Now,
      <math|<around*|\||Ker<around*|(|\<bbb-Z\>/p<rsub|k><rsup|s<rsub|k>>\<bbb-Z\>\<rightarrow\>\<bbb-Z\>/p<rsub|k>\<bbb-Z\>|)>|\|>=p<rsub|k><rsup|s<rsub|k>-1>>
      and by considering 4 components of 2-by-2 matrix, we conclude that

      <\equation*>
        <around*|\||K|\|>=p<rsub|k><rsup|4<around*|(|s<rsub|k>-1|)>>.
      </equation*>

      <\remark*>
        Let <math|\<cal-M\><rsub|2><around*|(|\<bbb-Z\>/p<rsub|k><rsup|s<rsub|k>>\<bbb-Z\>|)><long-arrow|\<rubber-rightarrow\>|f>\<cal-M\><rsub|2><around*|(|\<bbb-Z\>/p<rsub|k>\<bbb-Z\>|)>>
        and\ 

        <math|f<rsup|-1><around*|(|<around*|(|<tabular|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>>>>>|)>|)>\<subset\>GL<around*|(|2,\<bbb-Z\>/p<rsub|k><rsup|s<rsub|k>>\<bbb-Z\>|)>>.
      </remark*>

      <item>We compute <math|<around*|\||GL<around*|(|2,\<bbb-Z\>/p<rsub|k>\<bbb-Z\>|)>|\|>>.
      For <math|\<cal-M\><rsub|2><around*|(|\<bbb-Z\>/p<rsub|k>\<bbb-Z\>|)>\<ni\><around*|(|v,w|)>>
      we have <math|<around*|(|v,w|)>\<in\>GL<around*|(|2,\<bbb-Z\>/p<rsub|k>\<bbb-Z\>|)>\<Leftrightarrow\>v,w\<neq\>0>
      and <math|v,w> are linearly independent. Hence,

      <\equation*>
        <around*|\||GL<around*|(|2,\<bbb-Z\>/p<rsub|k>\<bbb-Z\>|)>|\|>=<around*|(|p<rsub|k><rsup|2>-1|)><around*|(|p<rsub|k><rsup|2>-p<rsub|k>|)>.
      </equation*>

      Therefore,\ 

      <\equation*>
        <stack|<tformat|<table|<row|<cell|<around*|\||GL<around*|(|2,\<bbb-Z\>/p<rsub|k><rsup|s<rsub|k>>\<bbb-Z\>|)>|\|>=<around*|\||K|\|>
        <around*|\||GL<around*|(|2,\<bbb-Z\>/p<rsub|k>\<bbb-Z\>|)>|\|>>>|<row|<cell|=p<rsub|k><rsup|4<around*|(|s<rsub|k>-1|)>><around*|(|p<rsub|k><rsup|2>-1|)><around*|(|p<rsub|k><rsup|2>-p<rsub|k>|)>=p<rsub|k><rsup|4s<rsub|k>><around*|(|1-p<rsub|k><rsup|-2>|)><around*|(|1-p<rsub|k><rsup|-1>|)>,>>|<row|<cell|<around*|\||SL<around*|(|2,\<bbb-Z\>/p<rsub|k><rsup|s<rsub|k>>\<bbb-Z\>|)>|\|>=<frac|<around*|\||GL<around*|(|2,\<bbb-Z\>/p<rsub|k><rsup|s<rsub|k>>\<bbb-Z\>|)>|\|>|<around*|\||<around*|(|\<bbb-Z\>/p<rsub|k><rsup|s<rsub|k>>\<bbb-Z\>|)><rsup|\<times\>>|\|>>=<frac|p<rsub|k><rsup|4s<rsub|k>><around*|(|1-p<rsub|k><rsup|-2>|)><around*|(|1-p<rsub|k><rsup|-1>|)>|p<rsub|k><rsup|s<rsub|k>><around*|(|1-p<rsub|k><rsup|-1>|)>>>>|<row|<cell|=p<rsub|k><rsup|3s<rsub|k>><around*|(|1-p<rsub|k><rsup|-2>|)>,>>|<row|<cell|<around*|\||SL<around*|(|2,\<bbb-Z\>/N\<bbb-Z\>|)>|\|>=<big|prod><rsub|k><around*|\||SL<around*|(|2,\<bbb-Z\>/p<rsub|k><rsup|s<rsub|k>>\<bbb-Z\>|)>|\|>=<big|prod><rsub|k>p<rsub|k><rsup|3s<rsub|k>><around*|(|1-p<rsub|k><rsup|-2>|)>>>|<row|<cell|<around*|(|N=<big|prod><rsub|k>p<rsub|k><rsup|s<rsub|k>>|)>>>|<row|<cell|=N<rsup|3><big|prod><rsub|p\<mid\>N><around*|(|1-p<rsup|-2>|)>.>>>>>
      </equation*>
    </itemize>

    \;
  </proof>

  About the isomorphism\ 

  <\equation*>
    <stack|<tformat|<table|<row|<cell|SL<around*|(|2,\<bbb-Z\>/N\<bbb-Z\>|)>\<simeq\><big|prod><rsub|k>SL<around*|(|2,\<bbb-Z\>/p<rsub|k><rsup|s<rsub|k>>\<bbb-Z\>|)>,>>|<row|<cell|\<bbb-Z\>/N\<bbb-Z\>\<simeq\><big|prod><rsub|k>\<bbb-Z\>/p<rsub|k><rsup|s<rsub|k>>\<bbb-Z\>,>>|<row|<cell|GL<around*|(|2,\<bbb-Z\>/N\<bbb-Z\>|)>\<simeq\><big|prod><rsub|k>GL<around*|(|2,\<bbb-Z\>/p<rsub|k><rsup|s<rsub|k>>\<bbb-Z\>|)>.>>>>>
  </equation*>

  If <math|A,B>: commutative rings\ 

  <\equation*>
    <stack|<tformat|<table|<row|<cell|GL<around*|(|2,A\<times\>B|)>\<simeq\>GL<around*|(|2,A|)>\<times\>GL<around*|(|2,B|)>>>|<row|<cell|<around*|(|<tabular|<tformat|<table|<row|<cell|<around*|(|a<rsub|1>,b<rsub|1>|)>>|<cell|<around*|(|a<rsub|2>,b<rsub|2>|)>>>|<row|<cell|>|<cell|>>>>>|)>\<leftrightarrow\><around*|(|<around*|(|<tabular|<tformat|<table|<row|<cell|a<rsub|1>>|<cell|a<rsub|2>>>|<row|<cell|>|<cell|>>>>>|)>,<around*|(|<tabular|<tformat|<table|<row|<cell|b<rsub|1>>|<cell|b<rsub|2>>>|<row|<cell|>|<cell|>>>>>|)>|)>>>>>>
  </equation*>

  And then we use

  <\equation*>
    <tabular|<tformat|<table|<row|<cell|GL<around*|(|2,A\<times\>B|)>>|<cell|\<simeq\>>|<cell|GL<around*|(|2,A|)>\<times\>GL<around*|(|2,B|)>>>|<row|<cell|\<longdownarrow\>det>|<cell|\<curvearrowright\>>|<cell|\<longdownarrow\>det\<times\>det>>|<row|<cell|<around*|(|A\<times\>B|)><rsup|\<times\>>>|<cell|\<cong\>>|<cell|A<rsup|\<times\>>\<times\>B<rsup|\<times\>>>>|<row|<cell|\<ni\>1>|<cell|\<leftrightarrow\>>|<cell|\<ni\><around*|(|1,1|)>>>>>>
  </equation*>

  <\proof>
    (of item 2.)\ 

    <\equation*>
      <stack|<tformat|<table|<row|<cell|-I\<in\>SL<around*|(|2,\<bbb-Z\>|)>>>|<row|<cell|-I\<in\>\<Gamma\><around*|(|N|)>\<Leftrightarrow\>N=2>>|<row|<cell|<wide|\<mu\><rsub|N>|\<bar\>>=<around*|[|<wide|\<Gamma\>|\<bar\>>:<wide|\<Gamma\><around*|(|N|)>|\<bar\>>|]>=<choice|<tformat|<table|<row|<cell|<frac|\<mu\><rsub|N>|2>>|<cell|<around*|(|N\<geqslant\>3|)>>>|<row|<cell|\<mu\><rsub|N>>|<cell|<around*|(|N=2|)>>>>>>>>>>>
    </equation*>

    <\render-theorem|Fact>
      When <math|SL<around*|(|2,\<bbb-Z\>|)>> acts on <math|\<cal-H\>>, the
      fundamental domain is

      <\equation*>
        D=<around*|{|z\<in\>\<cal-H\>\<mid\>-<frac|1|2>\<leqslant\>Re
        z\<leqslant\><frac|1|2>,<around*|\||z|\|>\<leqslant\>1|}>
      </equation*>

      <center|<image|jun28d1.jpg|502px|248px||>>

      \;
    </render-theorem>

    <\definition*>
      <math|\<Gamma\>\<subset\>SL<around*|(|2,\<bbb-R\>|)>>: Fuchs group. We
      say <math|x\<in\><wide|\<bbb-R\>|^><around*|(|\<bbb-R\>\<cup\><around*|{|\<infty\>|}>|)>>
      is a <with|font-series|bold|cusp> of <math|\<Gamma\>>, if <math|x> is
      fixed by some parabolic element of <math|\<Gamma\>>.

      Recall that we say <math|g\<in\>SL<around*|(|2,\<bbb-R\>|)>> is
      <with|font-series|bold|parabolic> if
      <math|<around*|\||tr<around*|(|g|)>|\|>=2>, which in turn happens if
      and only if it is conjugate with translation
      <math|z\<mapsto\>z+v,<around*|(|v\<in\>\<bbb-R\>|)>>.

      We say <math|g\<in\>SL<around*|(|2,\<bbb-R\>|)>> is
      <with|font-series|bold|hyperbolic> if and only if
      <math|<around*|\||tr<around*|(|g|)>|\|>\<gtr\>2> if and only if
      <math|g> is conjugate to <math|z\<mapsto\>k
      z,k\<in\>\<bbb-R\><rsub|\<gtr\>0>>.

      We say <math|g\<in\>SL<around*|(|2,\<bbb-R\>|)>> is
      <with|font-series|bold|elliptic> if and only if
      <math|<around*|\||tr<around*|(|g|)>|\|>\<less\>2> if and only if
      <math|z\<mapsto\><wide*|k<around*|(|\<theta\>|)>|\<wide-underbrace\>><rsub|<math-up|rotation>>z>.
    </definition*>
  </proof>

  <\definition*>
    We say <math|<wide*|G|\<wide-underbrace\>><rsub|<math-up|group>>\<curvearrowright\><wide*|X|\<wide-underbrace\>><rsub|<math-up|top.
    space>>> is <with|font-series|bold|properly discontinuous> if and only if
    <math|\<forall\>x\<in\>X,<around*|{|g<around*|(|x|)>\<mid\>g\<in\>G|}>:>locally
    finite.
  </definition*>

  Note that if <math|X>: Hausdorff and <math|G\<curvearrowright\>X> is
  properly discontinuous, then <math|G\\X>: Hausdorff.

  <\definition*>
    <math|G\<curvearrowright\>X>: <with|font-series|bold|properly
    discontinuous action> if and only if <math|x,y\<in\>X> such that <math|G
    x\<neq\>G y>, there exist <math|X\<supset\><rsup|\<exists\>>U<rsup|open>\<ni\>x,X\<supset\><rsup|\<exists\>>V<rsup|open>\<ni\>y>,
    such that <math|G U\<cap\>G V=\<varnothing\>>.
  </definition*>

  Example of not properly discontinuous action

  <\equation*>
    <stack|<tformat|<table|<row|<cell|X=\<bbb-R\><rsup|2>\\<around*|{|0|}>>>|<row|<cell|G=\<bbb-Z\>>>|<row|<cell|1:<around*|(|<stack|<tformat|<table|<row|<cell|x>>|<row|<cell|y>>>>>|)>\<mapsto\><around*|(|<stack|<tformat|<table|<row|<cell|2x>>|<row|<cell|<frac|y|2>>>>>>|)>>>>>>
  </equation*>

  <center|<image|jun28d2.jpg|502px|248px||>>

  <\render-theorem|Fact>
    \;

    <\enumerate>
      <\itemize>
        <item><math|<around*|{|\<Gamma\><math-up|'s
        cusp>|}>=\<bbb-Q\>\<cup\><around*|{|\<infty\>|}>>,

        <item>All <math|\<Gamma\>>'s cusps are mutually equivalent, that is
        they can be connected by elements of <math|\<Gamma\>>.
      </itemize>
    </enumerate>
  </render-theorem>

  <\lemma*>
    <math|<around*|[|<wide*|\<Gamma\><rsub|\<infty\>>|\<wide-underbrace\>><rsub|G<rsub|x>=<around*|{|g\<in\>G\<mid\>g<around*|(|x|)>=x|}>>:\<Gamma\><around*|(|N|)><rsub|\<infty\>>|]>=N.>
  </lemma*>

  <\proof>
    \;

    <\equation*>
      <stack|<tformat|<table|<row|<cell|\<Gamma\><rsub|\<infty\>>=<around*|{|<around*|(|<tabular|<tformat|<table|<row|<cell|1>|<cell|m>>|<row|<cell|0>|<cell|1>>>>>|)>\<mid\>m\<in\>\<bbb-Z\>|}>,>>|<row|<cell|\<Gamma\><around*|(|N|)><rsub|\<infty\>>=\<Gamma\><rsub|\<infty\>>\<cap\>\<Gamma\><around*|(|N|)>=<around*|{|<around*|(|<tabular|<tformat|<table|<row|<cell|1>|<cell|m
      N>>|<row|<cell|0>|<cell|1>>>>>|)>\<mid\>m\<in\>\<bbb-Z\>|}>.>>>>>
    </equation*>

    \;
  </proof>

  <\render-theorem|Fact>
    <math|<around*|{|\<Gamma\><around*|(|N|)><math-up|'s
    cusp>|}>=<around*|{|\<Gamma\><math-up|'s cusp>|}>>
  </render-theorem>

  <\corollary*>
    Number of equivalence classes of cusps of <math|\<Gamma\><around*|(|N|)>>
    is <math|<frac|<wide|\<mu\><rsub|N>|\<bar\>>|N>>.
  </corollary*>

  <\equation*>
    <stack|<tformat|<table|<row|<cell|G\<supset\>G<rprime|'>,G\<curvearrowright\>X,x\<in\>X>>|<row|<cell|<tabular|<tformat|<table|<row|<cell|<around*|\||G
    x/G<rprime|'>|\|>>|<cell|=>|<cell|<frac|<around*|[|G:G<rprime|'>|]>|<around*|[|G<rsub|x>:G<rsub|x><rprime|'>|]>>>>|<row|<cell|G/G<rprime|'>>|<cell|>|<cell|G<rsub|x>/G<rsub|x><rprime|'>\<times\><around*|(|G
    x/G<rprime|'>|)>>>>>>>>|<row|<cell|<wide*|X<around*|(|N|)>|\<wide-underbrace\>><rsub|<math-up|<math|\<Gamma\>>'s
    fundamental domain>>=\<Gamma\><around*|(|N|)>\\<wide*|\<cal-H\><rsup|\<ast\>>|\<wide-underbrace\>><rsub|\<cal-H\>\<cup\>\<bbb-Q\>\<cup\><around*|{|\<infty\>|}>>>>>>>
  </equation*>

  <math|<overline|\<mu\><rsub|N>>> can be seen as splitted in triangular
  shape

  <center|<image|jun28d3.jpg|502px|248px||>>

  with face being <math|<wide|\<mu\><rsub|N>|\<bar\>>>, edge
  (<math|<frac|3|2><wide|\<mu\><rsub|N>|\<bar\>>>), vertex
  (<math|<wide|V|\<bar\>>=<wide|V|\<bar\>><rsub|1>+<wide|V|\<bar\>><rsub|2>>)
  and count it in that way.

  <center|<image|jun28d4.jpg|502px|248px||>>

  <\equation*>
    <stack|<tformat|<table|<row|<cell|<stack|<tformat|<table|<row|<cell|6<wide|V|\<bar\>>>>>>><rsub|1>=2<wide|\<mu\><rsub|N>|\<bar\>>>>|<row|<cell|N<wide|V|\<bar\>><rsub|2>=<wide|\<mu\><rsub|N>|\<bar\>>>>|<row|<cell|\<rightsquigarrow\><wide|V|\<bar\>>=<wide|\<mu\><rsub|N>|\<bar\>><around*|(|<frac|1|3>+<frac|1|N>|)>>>>>>
  </equation*>
</body>

<\initial>
  <\collection>
    <associate|magnification|1.2>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|footnote-1|<tuple|1|?|may31.tm>>
    <associate|footnr-1|<tuple|1|?|may31.tm>>
  </collection>
</references>