<TeXmacs|1.0.7.18>

<style|article>

<\body>
  In <cite|kobayashi2015symmetry> the following statement was shown:

  <\proposition>
    <cite-detail|kobayashi2015symmetry|prop 3.19> Let
    <math|\<Omega\><rsub|><rprime|'>\<subset\>\<Omega\><rsub|>> be two open
    domains in <math|\<frak-a\><rsub|\<bbb-C\>><rsup|\<ast\>>\<times\><around*|(|\<frak-a\><rsub|\<bbb-C\>><rprime|'>|)><rsup|*\<ast\>>>.
    Suppose we are given a family of continuous
    <math|G<rprime|'>>-homomorphisms

    <\equation*>
      T<rsub|\<lambda\>,\<nu\>>:C<rsup|\<infty\>><around*|(|G/P,\<cal-V\><rsub|\<lambda\>>|)>\<rightarrow\>C<rsup|\<infty\>><around*|(|G<rprime|'>/P<rprime|'>,\<cal-W\><rsub|\<nu\>>|)>
    </equation*>

    for <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<Omega\><rprime|'>>.
    Denote by <math|K<rsub|\<lambda\>,\<nu\>>> the restriction of
    distribution kernel to open Bruhat cell and suppose that
    <math|K<rsub|\<lambda\>,\<nu\>>> depends holomorphically on
    <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<Omega\><rprime|'>>.\ 

    Suppose further that <math|K<rsub|\<lambda\>,\<nu\>>> extends
    meromorphically to <math|Hom<around*|(|V,W|)>>-valued distribution on
    <math|\<frak-n\><rsub|->> and for dense subspace
    <math|Z\<subset\>C<rsup|\<infty\>><around*|(|K/M,\<cal-V\>|)>> we have
    for every <math|\<varphi\>\<in\>Z>, <math|T<rsub|\<lambda\>,\<nu\>>\<varphi\>>
    being holomorphic on <math|\<Omega\>>.\ 

    Then, <math|T<rsub|\<lambda\>,\<nu\>>> extends to holomorphic
    distribution on <math|\<Omega\>>.
  </proposition>

  <with|font-series|bold|I want to ask whether one can prove the following
  statement>:

  <\proposition>
    Let <math|\<nu\><rsub|0>\<in\><around*|(|\<frak-a\><rsub|\<bbb-C\>><rsup|><rprime|'>|)><rsup|\<ast\>>>,
    <math|\<Omega\>\<subset\>\<frak-a\><rsub|\<bbb-C\>><rsup|\<ast\>>> be an
    open domain and <math|D\<subset\>\<Omega\>> be discrete. Suppose we are
    given a family of continuous <math|G<rprime|'>>-homomorphism

    <\equation*>
      T<rsub|\<lambda\>,\<nu\><rsub|0>>:C<rsup|\<infty\>><around*|(|G/P,\<cal-V\><rsub|\<lambda\>>|)>\<rightarrow\>C<rsup|\<infty\>><around*|(|G<rprime|'>/P<rprime|'>,\<cal-W\><rsub|\<nu\>>|)>
    </equation*>

    for <math|\<lambda\>\<in\>\<Omega\>\\D> and
    <math|K<rsub|\<lambda\><rsub|>,\<nu\><rsub|0>>> is holomorphic in
    <math|\<lambda\>\<in\>\<Omega\>\\D>.

    Suppose further that for dense subspace
    <math|Z\<subset\>C<rsup|\<infty\>><around*|(|K/M,\<cal-V\>|)>> we have
    for every <math|\<varphi\>\<in\>Z>, <math|T<rsub|\<lambda\>,\<nu\><rsub|0>>\<varphi\>>
    being holomorphic for <math|\<lambda\>\<in\>\<Omega\>>.

    Then, <math|T<rsub|\<lambda\>,\<nu\>>> extends to holomorphic
    distribution on <math|\<Omega\>>.
  </proposition>

  I need this statement for one of my proofs, so if You think it might be
  wrong, please tell me. I cannot prove it so far, since I still don't really
  understand these vector bundles depending on holo parameter. However, what
  I can prove is the following:

  <\proposition>
    Suppose <math|\<Omega\>\<subset\>\<bbb-C\>> is an open domain and
    <math|D\<subset\>\<Omega\>> is discrete. suppose
    <math|K<rsub|\<lambda\>>\<in\>\<cal-D\><rprime|'><around*|(|X|)>> is holo
    in <math|\<lambda\>\<in\>D> and for <math|Z\<subset\>C<rsup|\<infty\>><rsub|0><around*|(|X|)>>
    dense we have for every <math|\<varphi\>\<in\>Z>
    <math|<around*|\<langle\>|K<rsub|\<lambda\>>,\<varphi\>|\<rangle\>>>
    being holomorphic at <math|\<Omega\>>. Then, <math|K<rsub|\<lambda\>>>
    extends to holomorphic in <math|\<lambda\>\<in\>\<Omega\>> distribution.
  </proposition>

  <\proof>
    Suppose <math|\<lambda\><rsub|0>\<in\>D> and let
    <math|K<rsub|\<lambda\>>=<big|sum><rsub|i=-\<infty\>><rsup|\<infty\>>K<rsub|i>\<cdot\><around*|(|\<lambda\>-\<lambda\><rsub|0>|)><rsup|i>>
    be Laurent expansion with\ 

    <\equation*>
      <around*|\<langle\>|K<rsub|i>,\<varphi\>|\<rangle\>>\<assign\><frac|1|2\<pi\>i><big|int><rsub|\<Gamma\>><frac|<around*|\<langle\>|K<rsub|\<gamma\>>,\<varphi\>|\<rangle\>>|<around*|(|\<gamma\>-\<lambda\><rsub|0>|)><rsup|i+1>>d\<gamma\>
    </equation*>

    Then hypothesis implies that for <math|i\<leqslant\>0> we have
    <math|K<rsub|i><mid|\|><rsub|Z>=0>, hence continuity implies that
    <math|K<rsub|i>=0> and thus <math|K<rsub|\<lambda\>>> is holo at
    <math|\<lambda\><rsub|0>\<in\>D>.
  </proof>

  <\bibliography|bib|alpha|todai_master.bib>
    <\bib-list|KS15>
      <bibitem*|KS15><label|bib-kobayashi2015symmetry>T.<nbsp>Kobayashi and
      B.<nbsp>Speh. <newblock>Symmetry breaking for representations of rank
      one orthogonal groups. <newblock><with|font-shape|italic|Memoirs of the
      American Mathematical Society>, 238(1126), 2015.
    </bib-list>
  </bibliography>
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|3|?>>
    <associate|bib-kobayashi2015symmetry|<tuple|KS15|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      kobayashi2015symmetry

      kobayashi2015symmetry
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>