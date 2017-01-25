<TeXmacs|1.99.4>

<style|<tuple|old-generic|american|mystyle>>

<\body>
  <section|report 64>

  <block|<tformat|<twith|table-halign|l>|<cwith|1|1|1|-1|cell-width|7.5cm>|<cwith|1|1|1|-1|cell-hmode|exact>|<twith|table-valign|b>|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|1|cell-width|>|<cwith|1|-1|1|1|cell-hmode|auto>|<cwith|1|-1|1|1|cell-hyphen|t>|<table|<row|<\cell>
    <with|font-series|bold|What had to be done>
  </cell>|<cell|<with|font-series|bold|What has been done>>>|<row|<\cell>
    Project 3: Investigate the <math|I<around*|(|\<lambda\>\<otimes\>\<varepsilon\>|)>\<rightarrow\>J<around*|(|\<nu\>\<otimes\>\<varepsilon\><rprime|'>|)>>
    symmetry breaking (thu)
  </cell>|<cell|<with|font-series|bold|not done>>>|<row|<\cell>
    Work on for <math|U<around*|(|p,q|)>> case (sat)
  </cell>|<cell|<with|font-series|bold|not done>>>|<row|<\cell>
    image of <math|A<rsup|1>> under SBOs
  </cell>|<cell|<with|font-series|bold|not done>>>>>>

  \;

  <with|font-series|bold|What has been done (additional)>

  <\enumerate-numeric>
    <item>Confirmed that I can readily handle 16 of the 29 cases for the
    image of <math|A<rsup|1>> under the SBOs;

    <item>With a lot of Your help, did some work on the integral equality
    paper:

    <\enumerate>
      <item>Brought the second equality to two beautiful forms:

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D>sin<rsup|2\<mu\>+m+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)><around*|\||cos
        <around|(|\<theta\>|)>-cos <around|(|\<psi\>|)>*sin
        <around|(|\<varphi\>|)>|\|><rsup|-b><wide|v|~><rsup|\<lambda\>><rsub|l><around*|(|\<theta\>|)><wide|v|~><rsup|\<mu\>><rsub|m><around*|(|\<psi\>|)>d\<theta\>d\<psi\>d\<varphi\>=<htab|5mm>>|<cell|>>|<row|<cell|>|<cell|=<frac|2<rsup|m+l-1><around*|(|-1|)><rsup|<frac|m-l|2>><sqrt|\<pi\>>\<Gamma\><around*|(|\<mu\>+<frac|1|2>+<around*|[|<frac|m|2>|]>|)>\<Gamma\><around*|(|\<lambda\>+<around*|[|<frac|l|2>|]>+<frac|1|2>|)>|a!
        b!><around*|\<nobracket\>||\<nobracket\>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<frac|B<around*|(|<frac|m+l+b|2>,<frac|a-2b+2\<mu\>+2\<lambda\>+3|2>|)>\<Gamma\><around*|(|<frac|a+1|2>|)>\<Gamma\><around*|(|<frac|1-b|2>|)>|\<Gamma\><around*|(|<frac|b|2>|)>\<Gamma\><around*|(|<frac|2-m+l-b+2\<lambda\>|2>|)>*\<Gamma\><around*|(|<frac|m-l+a-\<nu\>+2\<mu\>+3|2>|)>>;>|<cell|>>|<row|<cell|>|<cell|D=<around*|{|<around*|(|\<theta\>,\<psi\>,\<varphi\>|)>\<in\><around*|[|0,\<pi\>|]><rsup|2>\<times\><around*|[|0,<frac|\<pi\>|2>|]>|}>;\<mu\>,a,b,\<lambda\>\<in\>\<bbb-C\>,l,m\<in\>\<bbb-N\>\<mid\>l+m\<in\>2\<bbb-N\>>|<cell|>>>>
      </eqnarray>

      or, equivalently

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D><around*|(|1-u<rsup|2>|)><rsup|\<alpha\>><around*|(|1-v<rsup|2>|)><rsup|\<mu\>+\<beta\>><around*|(|1-w|)><rsup|\<beta\>-<frac|1|2>><around*|\||w|\|><rsup|\<mu\>-<frac|1|2>><around*|\||u-v|\|><rsup|-\<nu\>><wide|C|~><rsup|\<beta\>><rsub|a<rprime|'>><around*|(|v,1-w<around*|(|1-v<rsup|2><rsup|>|)>|)><wide|C|~><rsup|\<alpha\>+<frac|1|2>><rsub|b><around*|(|u,1|)>d
        u v w=>|<cell|>>|<row|<cell|>|<cell|=<frac|2<rsup|a<rprime|'>+b><around*|(|-1|)><rsup|<frac|a<rprime|'>-b|2>><sqrt|\<pi\>>\<Gamma\><around*|(|\<beta\>+<frac|1|2>+<around*|[|<frac|a<rprime|'>+1|2>|]>|)>\<Gamma\><around*|(|\<alpha\>+1+<around*|[|<frac|b+1|2>|]>|)>|a<rprime|'>!
        b!>\<times\>>|<cell|>>|<row|<cell|>|<cell|<frac|B<around*|(|<frac|a<rprime|'>+b+\<nu\>|2>,\<mu\>-\<nu\>+\<alpha\>+\<beta\>+2|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|\<nu\>|2>|)>\<Gamma\><around*|(|<frac|3-a<rprime|'>+b-\<nu\>+2\<alpha\>|2>|)>*\<Gamma\><around*|(|<frac|a<rprime|'>-b+2\<mu\>-\<nu\>+2\<beta\>+3|2>|)>>.>|<cell|>>|<row|<cell|>|<cell|D\<assign\><around*|{|<around*|(|u,v,w|)>\<in\><around*|[|-1,1|]><rsup|2>\<times\><around*|[|0,1|]>|}>.>|<cell|>>|<row|<cell|>|<cell|\<alpha\>,\<beta\>,\<mu\>,\<nu\>\<in\>\<bbb-C\>;<space|1em>a<rprime|'>,b\<in\>\<bbb-N\>\<mid\>a+b\<in\>2\<bbb-N\>.>|<cell|>>>>
      </eqnarray>

      <item>Found three specializations of these integrals;
    </enumerate>
  </enumerate-numeric>

  <with|font-series|bold|What I plan to do during this week>:

  <\enumerate>
    <item>Image of <math|A<rsup|1>>:

    <\enumerate>
      <item>Write up the 16 cases I can handle

      <item>Compute the image of <math|A<rsup|1>> under SBOs for as many
      cases as possible (13 remains)
    </enumerate>

    <item>Reading:

    <\enumerate>
      <item>Reading: read Lang's \PSL2\Q;

      <item>Read \PHidden Symmetries\Q

      <item>Read \PCONFORMAL SYMMETRY BREAKING OPERATORS FOR ANTI-DE SITTER
      SPACES\Q
    </enumerate>

    <item>Project 3: Investigate the <math|I<around*|(|\<lambda\>\<otimes\>\<varepsilon\>|)>\<rightarrow\>J<around*|(|\<nu\>\<otimes\>\<varepsilon\><rprime|'>|)>>
    symmetry breaking (thu):

    <\enumerate-numeric>
      <item>Slightly generalize the theoretical part

      <item>Set up the equations for <math|\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>;\<lambda\><rsup|\<varepsilon\>>,\<nu\><rsup|\<varepsilon\><rprime|'>>|)>>
      where <math|\<varepsilon\>,\<varepsilon\><rprime|'>\<in\><around*|{|\<pm\>|}>>
      (they're the same, with the only change being
      <math|F<around*|(|-\<cdot\>|)>=F<around*|(|\<cdot\>|)>> becoming
      <math|F<around*|(|-\<cdot\>|)>=\<varepsilon\>\<varepsilon\><rprime|'>F<around*|(|\<cdot\>|)>>)

      <item>Classify <math|\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>-<around*|{|0|}>;\<lambda\>\<otimes\>\<varepsilon\>,\<nu\>\<otimes\>\<varepsilon\><rprime|'>|)>>
    </enumerate-numeric>
  </enumerate>

  <with|font-series|bold|What I plan to do later>

  The work is divided into several projects:

  <\enumerate-numeric>
    <item>Project 3: Investigate the <math|I<around*|(|\<lambda\>\<otimes\>\<varepsilon\>|)>\<rightarrow\>J<around*|(|\<nu\>\<otimes\>\<varepsilon\><rprime|'>|)>>
    symmetry breaking:

    <\enumerate-numeric>
      <item>Generalize the theoretical part

      <item>Set up the equations for <math|\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>;\<lambda\><rsup|\<varepsilon\>>,\<nu\><rsup|\<varepsilon\><rprime|'>>|)>>
      where <math|\<varepsilon\>,\<varepsilon\><rprime|'>\<in\><around*|{|\<pm\>|}>>
      (they're the same, with the only change being
      <math|F<around*|(|-\<cdot\>|)>=F<around*|(|\<cdot\>|)>> becoming
      <math|F<around*|(|-\<cdot\>|)>=\<varepsilon\>\<varepsilon\><rprime|'>F<around*|(|\<cdot\>|)>>)

      <item>Classify <math|\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>-<around*|{|0|}>;\<lambda\><rsup|\<varepsilon\>>,\<nu\><rsup|\<varepsilon\><rprime|'>>|)>>

      <item>Define <math|R<rsub|\<lambda\>,\<nu\>><rsup|Y,C>> as residues,
      compute their support

      <item>Classify <math|\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>;\<lambda\><rsup|\<varepsilon\>>,\<nu\><rsup|\<varepsilon\><rprime|'>>|)>>

      <item>Compute images and morphisms between
      <math|A<rsub|\<frak-q\>><around*|(|\<lambda\>|)>>
    </enumerate-numeric>

    <item>Set up the equations that define kernels of SBO for
    <math|U<around*|(|p,q|)>> case:

    <\enumerate-numeric>
      <item>Check the geometry

      <item>Set up the equations for SBO kernels
    </enumerate-numeric>

    <item>Project 2: Determine for which <math|P\<subset\>G>: parabolic of
    <math|G=O<around*|(|p+1,q+1|)>> (or <math|=U<around*|(|p+1,q+1|)>,Sp<around*|(|p+1,q+1|)>>)
    we have <math|P<rprime|'>N<rsub|->P=G> holding:

    <\enumerate-numeric>
      <item>Classify the conjugacy classes of parabolic subgroups of
      <math|G=O<around*|(|p,q|)>> (in particular, am I right that conjugacy
      class is single for every given dimension)

      <item>Roughly understand the geometry of
      <math|P<rprime|'>\<curvearrowright\>G/P> action

      <item>See whether <math|P<rprime|'>N<rsub|->P=G> holds

      <item>Do this for <math|G=U<around*|(|p,q|)>,Sp<around*|(|p,q|)>>
    </enumerate-numeric>
  </enumerate-numeric>

  <\with|font-series|bold>
    Questions
  </with>

  (empty)

  <paragraph|Comments>

  I want to thank You once again for Your help during this week. I apologize
  that I make silly computational mistakes, I'll try to improve. I will also
  make my responses faster.

  <\bibliography|bib|tm-alpha|todai_master>
    <\bib-list|1>
      <bibitem*|KO15><label|bib-kobayashi2015classification>Toshiyuki
      Kobayashi<localize| and >Yoshiki Oshima.<newblock> Classification of
      symmetric pairs with discretely decomposable restrictions of
      (\<frak-g\>, k)-modules.<newblock> <with|font-shape|italic|Journal für
      die reine und angewandte Mathematik (Crelles Journal)>,
      2015(703):201\U223, 2015.<newblock>
    </bib-list>
  </bibliography>
</body>

<\initial>
  <\collection>
    <associate|magnification|1.2>
    <associate|page-type|letter>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1|3>>
    <associate|auto-3|<tuple|1|3>>
    <associate|auto-4|<tuple|1|?>>
    <associate|bib-kobayashi2015classification|<tuple|KO15|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|report
      64> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|4tab>|Comments
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.15fn>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>