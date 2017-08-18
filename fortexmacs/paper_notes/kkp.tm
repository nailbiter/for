<TeXmacs|1.99.4>

<style|article>

<\body>
  Conformal Symmetry Breaking Operators for Differential Forms on Spheres

  <chapter|Introduction>

  Geometric viewpoint:

  <\render-theorem|Setting (general)>
    Let <around*|(|<math|X>,g|)>: oriented pseudo-Riemannian manifold,
    <math|G\<subset\>Conf<around*|(|X|)>>. Then,
    <math|\<exists\>\<Omega\>\<in\>C<rsup|\<infty\>><around*|(|G\<times\>X,\<bbb-R\><rsub|\<gtr\>0>|)>>,
    such that\ 

    <\equation*>
      \<forall\><around*|(|h,x|)>\<in\>G\<times\>X,L<rsub|h><rsup|\<ast\>>g<rsub|h\<cdot\>x>=\<Omega\><around*|(|h,x|)><rsup|2>g<rsub|x>.
    </equation*>

    For <math|u\<in\>\<bbb-C\>,\<delta\>\<in\>\<bbb-Z\>/2\<bbb-Z\>>, this
    induces the representation\ 

    <\equation*>
      \<varpi\><rsub|u,\<delta\>><rsup|<around*|(|i|)>><around*|(|h|)>\<alpha\>\<assign\><wide*|or<around*|(|h|)><rsup|\<delta\>>|\<wide-underbrace\>><rsub|<text|orientation
      bundle>>\<Omega\><around*|(|h<rsup|-1>,\<cdot\>|)><rsup|u>L<rsub|h<rsup|-1>><rsup|\<ast\>>\<alpha\>,<space|1em><around*|(|h,\<alpha\>|)>\<in\>G\<times\>\<cal-E\><rsup|i><around*|(|X|)>.
    </equation*>

    Suppose that <math|Y\<subset\>X>: orientable, such that
    <math|g\<mid\><rsub|Y>>: non-degenerate. Let
    <math|G<rprime|'>\<assign\><around*|{|h\<in\>G\<mid\>h\<cdot\>Y=Y|}>>.
    Then, we can similarly define <math|\<varpi\><rsub|\<nu\>,\<varepsilon\>><rsup|<around*|(|j|)>>>:
    representation of <math|G<rprime|'>> on the space
    <math|\<cal-E\><rsup|j><around*|(|Y|)>>.
  </render-theorem>

  <render-theorem|Problem A|Find the necessary and sufficient conditions on
  <math|<around*|(|i,j,u,\<nu\>,\<delta\>,\<varepsilon\>|)>>, so that
  <math|G<rprime|'>>-invariant operators <math|\<varpi\><rsub|u,\<delta\>><rsup|<around*|(|i|)>>\<rightarrow\>\<varpi\><rsub|\<nu\>,\<varepsilon\>><rsup|<around*|(|j|)>>>
  exists. More precisely, determine their dimension.>

  <render-theorem|Problem B|Explicitly construct the basis of
  <math|Diff<rsub|G<rprime|'>><around*|(|\<varpi\><rsub|u,\<delta\>><rsup|<around*|(|i|)>>,\<varpi\><rsub|\<nu\>,\<varepsilon\>><rsup|<around*|(|j|)>>|)>>.>

  <\example*>
    \;

    <\enumerate>
      <item><math|X=Y,i=j=0,G=G<rprime|'>=Conf<around*|(|X|)>>

      <\equation*>
        <text|Yamabe operator>\<assign\>\<Delta\>+<frac|n-2|4<around*|(|n-1|)>>\<kappa\>\<in\>Diff<rsub|Conf<around*|(|X|)>><around*|(|\<varpi\><rsup|0><rsub|<frac|n|2>-1,\<delta\>>,\<varpi\><rsup|0><rsub|<frac|n|2>+1,\<delta\>>|)>
      </equation*>

      <item>

      <\equation*>
        Rest<rsub|Y>\<in\>Diff<rsub|Conf<around*|(|X;Y|)>><around*|(|\<varpi\><rsup|<around*|(|i|)>><rsub|u,0>,\<varpi\><rsub|u,0><rsup|<around*|(|i|)>>|)>
      </equation*>

      <item>If <math|Y\<subset\>X>: of codimension 1,\ 

      <\equation*>
        <stack|<tformat|<table|<row|<cell|Rest<rsub|Y>\<circ\>\<iota\><rsub|N<rsub|Y><around*|(|X|)>>\<in\>Diff<rsub|Conf<around*|(|X;Y|)>><around*|(||)>>>|<row|<cell|Conf<around*|(|X;Y|)>\<assign\><around*|{|g\<in\>Conf<around*|(|X|)>\<mid\>g\<cdot\>Y=Y|}>>>>>>
      </equation*>

      <item>
    </enumerate>
  </example*>
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|1<space|2spc>Introduction>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>
    </associate>
  </collection>
</auxiliary>