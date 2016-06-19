<TeXmacs|1.99.4>

<style|article>

<\body>
  This is joint work with Toshiyuki Kobayashi aimed to extend the results of
  his earlier paper with Birgit Speh studying properties of symmetry breaking
  operators of <math|O(n,1)>. Symmetry breaking operators (SBOs) are
  <math|G<rprime|'>>-intertwining operators between the degenerate principal
  series representations <math|I<around*|(|\<lambda\>|)>> and
  <math|J<around*|(|\<nu\>|)>> of <math|G\<assign\>O<around*|(|p+1,q+1|)>>
  and its closed subgroup <math|G<rprime|'>\<assign\>O<around*|(|p,q+1|)>>
  respectively, parametrized by <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>.

  The results achieved are as follows:

  <\theorem>
    For <math|p,q\<geqslant\>1> the action
    <math|P<rprime|'>\<curvearrowright\>G/P\<simeq\>\<Xi\>/\<bbb-R\><rsup|\<times\>>\<simeq\><around*|(|\<bbb-S\><rsup|p>\<times\>\<bbb-S\><rsup|q>|)>/<around*|{|\<pm\>|}>>
    has 5 (if <math|p\<gtr\>1>) or 4 (if <math|p=1>) orbits, whose explicit
    form and closure relations are known.
  </theorem>

  <\theorem>
    For every <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>
    we have <math|Op:\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>\<simeq\>Hom<rsub|G<rprime|'>><around*|(|I<around*|(|\<lambda\>|)>,J<around*|(|\<nu\>|)>|)>>.
    Here <math|\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>>
    is the set of all <math|F\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>|)>>
    that satisfy a system of PDEs whose explicit form is known.
  </theorem>

  <\theorem>
    We have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<math|Re<around|(|\<lambda\>+\<nu\>-n|)>\<gtr\>0>,<math|Re(-\<nu\>)\<gtr\>0>\<Rightarrow\>K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>><around|(|x|)>\<assign\><around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n><around*|\||Q|\|><rsup|\<um\>\<nu\>>\<in\>\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>\<cap\>C<around*|(|\<bbb-R\><rsup|p,q>|)>>|<cell|>>|<row|<cell|>|<cell|\<lambda\>+\<nu\>-n=-1-2k\<in\>-1-2\<bbb-Z\><rsub|\<geqslant\>0>,Re<around*|(|-\<nu\>|)>\<less\>-2k\<Rightarrow\>K<rsub|\<lambda\>,\<nu\>><rsup|P>\<assign\>\<rho\><around*|(|\<delta\><rsup|<around*|(|2k|)>><around*|(|x<rsub|p>|)>\<times\><around*|\||Q|\|><rsup|-\<nu\>>|)>\<in\>\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>>|<cell|>>|<row|<cell|>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\>\<times\><around*|(|2\<bbb-Z\><rsub|\<geqslant\>0>+1|)>:Re<around*|(|\<lambda\>+\<nu\>-n|)>\<gtr\>0\<Rightarrow\>K<rsub|\<lambda\>,\<nu\>><rsup|C>\<assign\>\<rho\><around*|(|\<delta\><rsup|<around*|(|\<nu\>-1|)>><around*|(|Q|)>\<times\><around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>|)>\<in\>\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>>|<cell|>>|<row|<cell|>|<cell|supp<around*|(|K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>|)>=\<bbb-R\><rsup|n>,<space|1em>supp<around*|(|K<rsub|\<lambda\>,\<nu\>><rsup|P>|)>=<around*|{|x<rsub|p>=0|}>,<space|1em>supp<around*|(|K<rsub|\<lambda\>,\<nu\>><rsup|C>|)>=<around*|{|Q=0|}>.>|<cell|>>>>
    </eqnarray>

    Here for <math|F\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>\\<around*|{|0|}>|)>>
    homogeneous of degree <math|\<lambda\>\<nin\>-n-\<bbb-Z\><rsub|\<geqslant\>0>>
    we let <math|\<rho\><around*|(|F|)>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>|)>>
    be unique homogeneous of degree <math|\<lambda\>> generalized function,
    such that <math|\<rho\><around*|(|F|)><mid|\|><rsub|\<bbb-R\><rsup|n>\\<around*|{|0|}>>=F>
    (cf. <cite-detail|hormander1983analysis|thm. 3.2.3>) and <math|\<times\>>
    denotes product of generalized functions on
    <math|\<bbb-R\><rsup|n>\\<around*|{|0|}>> (cf.
    <cite-detail|hormander1983analysis|thm. 8.2.10>).
  </theorem>

  <\theorem>
    For <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>> and
    <math|\<cal-S\>ol<rsub|<around*|{|0|}>><around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>=<around*|{|F\<in\>\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)><mid|\|>supp<around*|(|F|)>\<subset\><around*|{|0|}>|}>>
    we have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|\<cal-S\>ol<rsub|<around*|{|0|}>><around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>=<choice|<tformat|<table|<row|<cell|\<bbb-C\>\<cdot\><wide|K|~><rsup|<around*|{|0|}>><rsub|\<lambda\>,\<nu\>>,>|<cell|\<lambda\>-\<nu\>\<in\>-2\<bbb-Z\><rsub|\<geqslant\>0>>>|<row|<cell|0,>|<cell|otherwise>>>>>,>|<cell|>>|<row|<cell|>|<cell|<wide|K|~><rsup|<around*|{|0|}>>\<assign\><wide|C|~><rsub|\<nu\>-\<lambda\>><rsup|\<lambda\>-<around*|(|n-1|)>/2><around*|(|-<wide|\<Delta\>|~><wide|\<delta\>|~><around*|(|x|)>,\<delta\><around*|(|x<rsub|p>|)>|)>>|<cell|>>>>
    </eqnarray>

    where <math|<wide|\<Delta\>|~>> is a <math|<around*|(|p-1,q|)>>-Laplacian,
    <math|<wide|\<delta\>|~>> is dirac delta on all variables except of
    <math|x<rsub|p>> and <math|C<rsup|\<alpha\>><rsub|k><around*|(|\<cdot\>,\<cdot\>|)>>
    is the 2-variable inflation of renormalized Gegenbauer polynomial, as in
    <cite-detail|kobayashi2015symmetry|(16.3)>.
  </theorem>

  <\theorem>
    For some particular <math|N<rsub|C>,N<rsub|P>> meromorphic on
    <math|\<bbb-C\><rsup|2>> (whose exact form depends on
    <math|<around*|(|p,q|)>> and is the ratio of several gamma functions) we
    have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>\<assign\><frac|K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>>,<space|1em><wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>\<assign\><frac|K<rsub|\<lambda\>,\<nu\>><rsup|C>|N<rsub|C>>,<space|1em><wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|P>\<assign\><frac|K<rsub|\<lambda\>,\<nu\>><rsup|P>|N<rsub|P>>>|<cell|>>>>
    </eqnarray>

    analytically extend to members of <math|\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>>
    for <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>,
    <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\>\<times\><around*|(|-1-2\<bbb-Z\><rsub|\<geqslant\>0>|)>>
    and <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>:\<lambda\>+\<nu\>-n\<in\>-1-2\<bbb-Z\><rsub|\<geqslant\>0>>
    respectively.

    Their support at every <math|<around*|(|\<lambda\>,\<nu\>|)>> can be
    computed. <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>,<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|P>\<neq\>0>
    for every <math|<around*|(|\<lambda\>,\<nu\>|)>>, while
    <math|<wide|K|~><rsup|\<bbb-R\><rsup|n>><rsub|\<lambda\>,\<nu\>><rsup|>>
    vanishes on a discrete subset of <math|\<bbb-C\><rsup|2>>, whose exact
    form is known.
  </theorem>

  <\theorem>
    For <math|p\<gtr\>1> we have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|\<cal-S\>ol<around*|(|\<bbb-R\><rsup|n>;\<lambda\>\<comma\>\<nu\>|)>=<choice|<tformat|<table|<row|<cell|\<bbb-C\><wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>\<oplus\>\<bbb-C\><wide|K|~><rsup|<around*|{|0|}>><rsub|\<lambda\>,\<nu\>>,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<in\>
      //,\<nu\>\<in\>L>>|<row|<cell|\<bbb-C\><wide|K|~><rsup|\<bbb-R\><rsup|n>><rsub|\<lambda\>,\<nu\>>,>|<cell|otherwise,>>>>>>|<cell|>>>>
    </eqnarray>

    where <math|<mid|\|><mid|\|>,//> and <math|L> are some particular subsets
    of <math|\<bbb-C\><rsup|2>>. Similar relation can be given for
    <math|p=1>.
  </theorem>

  <\theorem>
    For <math|1<rsub|\<lambda\>>\<in\>I<around*|(|\<lambda\>|)>,1<rsub|\<nu\>>\<in\>I<around*|(|\<nu\>|)>>
    being the spherical vectors and <math|Op:\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)><wide|\<rightarrow\>|~>Hom<rsub|G<rprime|'>><around*|(|I<around*|(|\<lambda\>|)>,J<around*|(|\<nu\>|)>|)>>,
    we have

    <\equation*>
      Op<around*|(|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>|)>1<rsub|\<lambda\>>=2<rsup|1-\<lambda\>><frac|\<pi\><rsup|n/2>|\<Gamma\><around*|(|<frac|\<lambda\>|2>|)>\<Gamma\><around*|(|-<frac|q|2>+<frac|\<lambda\>+1|2>|)>\<Gamma\><around*|(|<frac|q-\<nu\>+1|2>|)>>1<rsub|\<nu\>>.
    </equation*>

    Similar relations can be computed for other SBOs constructed above.
  </theorem>

  <\theorem>
    For <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>//\<assign\><around*|{|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2><mid|\|>\<lambda\>-\<nu\>=-2k\<in\>-2\<bbb-Z\><rsub|\<geqslant\>0>|}>>
    we have <math|<wide|K|~><rsup|\<bbb-R\><rsup|n>><rsub|\<lambda\>,\<nu\>>=q<rsub|<around*|{|0|}>><rsup|\<bbb-R\><rsup|n>><around*|(|\<lambda\>,\<nu\>|)><wide|K|~><rsup|<around*|{|0|}>><rsub|\<lambda\>,\<nu\>>>,
    where <math|q<rsup|\<bbb-R\><rsup|n>><rsub|<around*|{|0|}>><around*|(|\<lambda\>,\<nu\>|)>>
    and <math|q<rsup|\<bbb-R\><rsup|n>T><rsub|\<bbb-R\><rsup|n>><around*|(|\<lambda\>,\<nu\>|)>>'s
    closed form is known. Similar relations are computed for
    <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>,<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|P>>
    as well.
  </theorem>

  <\theorem>
    For <math|<wide|\<bbb-T\>|~><rsub|\<lambda\>>:I<around*|(|\<lambda\>|)>\<rightarrow\>I<around*|(|n-\<lambda\>|)>>
    be Knapp-Stein operator and <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>
    the following relations hold:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<wide|\<bbb-T\>|~><rsub|n-1-\<nu\>>\<circ\>Op<around*|(|<wide|K|~><rsub|\<lambda\>,n-1-\<nu\>><rsup|\<bbb-R\><rsup|n>>|)>=q<rsup|T\<bbb-R\><rsup|n>><rsub|\<bbb-R\><rsup|n>><around*|(|\<lambda\>,\<nu\>|)>Op<around*|(|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>|)>>|<cell|>>|<row|<cell|>|<cell|Op<around*|(|<wide|K|~><rsub|n-\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>|)>\<circ\><wide|\<bbb-T\>|~><rsub|\<lambda\>>=q<rsup|\<bbb-R\><rsup|n>T><rsub|\<bbb-R\><rsup|n>><around*|(|\<lambda\>,\<nu\>|)>Op<around*|(|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>|)>,>|<cell|>>>>
    </eqnarray>

    where <math|q<rsup|T\<bbb-R\><rsup|n>><rsub|\<bbb-R\><rsup|n>><around*|(|\<lambda\>,\<nu\>|)>>
    and <math|q<rsup|\<bbb-R\><rsup|n>T><rsub|\<bbb-R\><rsup|n>><around*|(|\<lambda\>,\<nu\>|)>>'s
    closed form is known. Similar relations can be computed for other SBOs
    constructed above.
  </theorem>

  <\bibliography|bib|alpha|todai_master.bib>
    <\bib-list|Hör83>
      <bibitem*|Hör83><label|bib-hormander1983analysis>L.<nbsp>Hörmander.
      <newblock><with|font-shape|italic|The Analysis of Linear Partial
      Differential Operators: Vol.: 1.: Distribution Theory and Fourier
      Analysis>. <newblock>Springer-Verlag, 1983.

      <bibitem*|KS15><label|bib-kobayashi2015symmetry>T.<nbsp>Kobayashi and
      B.<nbsp>Speh. <newblock>Symmetry breaking for representations of rank
      one orthogonal groups. <newblock><with|font-shape|italic|Memoirs of the
      American Mathematical Society>, 238(1126), 2015.
    </bib-list>
  </bibliography>
</body>

<\references>
  <\collection>
    <associate|auto-1|<tuple|9|2>>
    <associate|bib-hormander1983analysis|<tuple|Hör83|2>>
    <associate|bib-kobayashi2015symmetry|<tuple|KS15|2>>
    <associate|diffSBO:prop-main|<tuple|4|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      hormander1983analysis

      hormander1983analysis

      kobayashi2015symmetry
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>