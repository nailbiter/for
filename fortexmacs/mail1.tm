<TeXmacs|1.0.7.18>

<style|letter>

<\body>
  It can be shown that on <math|\<frak-n\><rsub|->\<simeq\>\<bbb-R\><rsup|p,q>>
  <math|K>-finite vectors are of the form (in bipolar coordinates)

  <\equation*>
    F<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\>><around*|(|r\<omega\><rsub|p-1>,s\<omega\><rsub|q-1>|)>\<assign\>
  </equation*>

  <\equation*>
    R<around*|(|r,s|)><rsup|-<frac|\<lambda\>+N+M+n<rprime|'>+m<rprime|'>|2>>r<rsup|N>s<rsup|M><around*|(|1-r<rsup|2>+s<rsup|2>|)><rsup|n<rprime|'>><around*|(|1+r<rsup|2>-s<rsup|2>|)><rsup|m<rprime|'>>\<psi\><around*|(|\<omega\><rsub|p-1>|)>\<psi\><rprime|'><around*|(|\<omega\><rsub|q-1>|)>
  </equation*>

  where <math|R<around*|(|r,s|)>\<assign\><around*|(|1-r<rsup|2>+s<rsup|2>|)><rsup|2>+4r<rsup|2>>,
  <math|N,M,n<rprime|'>,m<rprime|'>\<in\>\<bbb-Z\><rsub|\<geq\>0>> such that
  <math|N+M+n<rprime|'>+m<rprime|'>\<in\>2\<bbb-Z\>>,
  <math|<around*|(|\<psi\>,\<psi\><rprime|'>|)>\<in\>\<cal-H\><rsup|N><around*|(|\<bbb-S\><rsup|p-1>|)>\<times\>\<cal-H\><rsup|M><around*|(|\<bbb-S\><rsup|q-1>|)>>.<em|>

  Now, the kernel of the regular operator on
  <math|\<frak-n\><rsub|->\<simeq\>\<bbb-R\><rsup|p,q>> can be shown to be of
  the form (<math|n\<assign\>p+q>)

  <\equation*>
    K<rsub|\<lambda\>\<comma\>\<nu\>><rsup|\<bbb-R\><rsup|p,q>><around*|(|x|)>\<assign\><around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n><around*|\||Q|\|><rsup|-\<nu\>>,<space|1em><around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>;<space|0.6spc>Re<around*|(|\<lambda\>+\<nu\>-n|)>,Re<around*|(|-\<nu\>|)>\<gtr\>0
  </equation*>

  Now, computations show that <math|<around*|\<langle\>|K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|p,q>>,F<rsub|N,M,n<rprime|'>,m<rprime|'>,\<psi\>,\<psi\><rprime|'>>|\<rangle\>>=0>
  if <math|M\<gtr\>0>, <math|N> is odd or if
  <math|\<psi\>\<perp\>\<cal-H\><rsup|N><around*|(|\<bbb-S\><rsup|p-1>|)><rsup|O<around*|(|p-1|)>>>.
  On contrary, if we let <math|\<psi\>\<assign\><wide|<wide|C|~>|~><rsup|p/2-1><rsub|N><around*|(|\<omega\><rsub|p-1><rsup|<around*|(|p|)>>|)>>,
  then we have (here and in subsequent <math|\<simeq\>> depends
  proportionality up to nonzero finite constant)

  <\equation*>
    <around*|\<langle\>|K<rsup|\<bbb-R\><rsup|p,q>><rsub|\<lambda\>,\<nu\>>,F<rsub|N,0,n<rprime|'>,m<rprime|'>,\<psi\>,1>|\<rangle\>>=R\<cdot\>S
  </equation*>

  where\ 

  <\equation*>
    S=<big|int><rsub|\<bbb-S\><rsup|p-1>><around*|\||\<omega\><rsub|p-1><rsup|<around*|(|p|)>>|\|><rsup|\<lambda\>+\<nu\>-n><wide|<wide|C|~>|~><rsup|p/2-1><rsub|N>d\<omega\><rsub|p-1>
  </equation*>

  has closed expression, obtained in <math|><cite|kobayashi2015symmetry>.
  <math|R>, in turn, is an integral in <math|<around*|(|r,s|)>\<in\>\<bbb-R\><rsup|2><rsub|\<geqslant\>0>>
  that after the coordinate change to <math|x\<assign\><around*|(|1+<around*|(|r<rsup|2>-s<rsup|2>|)><rsup|>|)>/<sqrt|R<around*|(|r,s|)>>>
  and <math|y\<assign\><around*|(|1-<around*|(|r<rsup|2>-s<rsup|2>|)>|)>/<sqrt|R<around*|(|r,s|)>>>
  becomes proportional to the following integral over
  <math|D\<assign\><around*|{|<around*|(|x,y|)>\<in\><around*|[|-1,1|]><rsup|2><space|0.6spc><mid|\|>x+y\<geqslant\>0|}>>

  <\equation*>
    <big|int><rsub|<around*|(|x,y|)>\<in\>D><around*|\||x-y|\|><rsup|-\<nu\>><around*|(|1-x<rsup|2>|)><rsup|<around*|(|q-2|)>/2><around*|(|1-y<rsup|2>|)><rsup|<wide|\<lambda\>|~>>x<rsup|m<rprime|'>>y<rsup|n<rprime|'>>d
    x d y,<space|1em><wide|\<lambda\>|~>\<assign\><frac|\<lambda\>+\<Nu\>+\<nu\>-q-2|2>
  </equation*>

  Finally, as we should have <math|m<rprime|'>+n<rprime|'>\<in\>2\<bbb-Z\>>
  (see above) this integral is proportional to

  <\equation*>
    <big|int><rsub|x=-1><rsup|1><big|int><rsub|y=-1><rsup|1><around*|\||x-y|\|><rsup|-\<nu\>><around*|(|1-x<rsup|2>|)><rsup|<around*|(|q-2|)>/2><around*|(|1-y<rsup|2>|)><rsup|<wide|\<lambda\>|~>>x<rsup|m<rprime|'>>y<rsup|n<rprime|'>>d
    x d y
  </equation*>

  The problem of normalizing <math|K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|p,q>>>
  therefore reduces to computing the poles of analytic continuation of the
  last expression. Now, I have the following questions:

  <\enumerate>
    <item>Do You have any suggestions about how to attack this problem?

    <item>Do You think this problem can be attacked with the approach used in
    Section 2.2 of Chapter III in Gelfand-Shilov, where they determined poles
    of <math|P<rsup|\<lambda\>>> (see <with|font-series|bold|gelfand.pdf>
    attached)

    <item>In the article ``Distributions Spériques sur les Spaces
    Hyperboliques'' by J. Faraut (see <with|font-series|bold|faraut.pdf
    >attached) he gives a formula for the closed exression of an integral

    <\equation*>
      <big|int><rsub|-1><rsup|1><big|int><rsub|-1><rsup|1><around*|\||ch<around*|(|t|)>\<sigma\><rsub|1>-sh<around*|(|t|)>\<sigma\><rsub|2>|\|><rsup|s-\<rho\>>C<rsup|<around*|(|p-2|)>/2><rsub|l><around*|(|\<sigma\><rsub|1>|)>C<rsup|<around*|(|q-2|)>/2><rsub|m><around*|(|\<sigma\><rsub|2>|)><around*|(|1-\<sigma\><rsub|1><rsup|2>|)><rsup|<around*|(|p-3|)>/2><around*|(|1-\<sigma\><rsub|2>|)><rsup|<around*|(|q-3|)>/2>d\<sigma\><rsub|1>d\<sigma\><rsub|2>
    </equation*>
  </enumerate>

  <\enumerate>
    Do You think the expression derived there would hold fol
    <math|p\<in\>\<bbb-C\>>, not only integer? Because if yes, it can be
    adapted to get a closed formula for an integral I've got. I didn't quite
    understand the derivation of Faraut, but I thought You may know.

    \;
  </enumerate>

  <\bibliography|bib|plain|todai_master.bib>
    <\bib-list|1>
      <bibitem*|1><label|bib-kobayashi2015symmetry>Toshiyuki Kobayashi and
      Birgit Speh. <newblock>Symmetry breaking for representations of rank
      one orthogonal groups. <newblock><with|font-shape|italic|Memoirs of the
      American Mathematical Society>, 238(1126), 2015.
    </bib-list>
  </bibliography>
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|3|1>>
    <associate|bib-kobayashi2015symmetry|<tuple|1|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      kobayashi2015symmetry
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>