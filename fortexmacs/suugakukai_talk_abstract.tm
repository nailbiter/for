<TeXmacs|1.99.4>

<style|article>

<\body>
  This is joint work with Toshiyuki Kobayashi aimed to extendthe results of
  his earlier paper with Birgit Speh studying properties of symmetry breaking
  operators of <math|O(n,1)>. Symmetry breaking operators (SBOs) are
  <math|G<rprime|'>>-intertwining operators between the degenerate principal
  series representations of <math|G\<assign\>O<around*|(|p+1,q+1|)>> and its
  closed subgroup <math|G<rprime|'>\<assign\>O<around*|(|p,q+1|)>>
  parametrized each by one complex parameter.

  The results achieved are as follows:

  <\enumerate>
    <item>I gave complete classification of the <math|P<rprime|'>\\G/P> orbit
    decomposition of flag variety <math|G/P> of <math|G> under the action of
    <math|P<rprime|'>> (maximal parabolic subgroup of <math|G<rprime|'>>).
    That is, I was able to describe all orbits for every <math|p,q> and
    derive the closure relations;

    <item>As shown in <cite|kobayashi2015symmetry>, Schwartz kernel theorem
    tells us that SBO are characterized by their distribution kernels, which
    can then be associated to <math|P<rprime|'>>-covariant generalized
    functions on <math|G/P> flag manifold, which in turn are characterized by
    their restriction to the open Bruhat cell, and the latter are no more
    than a generalized functions over the Euclidean space
    <math|\<bbb-R\><rsup|p+q>> satisfying a particular system of PDEs (whose
    solution set we'll call <math|\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p+q>;\<lambda\>,\<nu\>|)>>),
    which I was able to explicitly write down;

    <item>Now, as <math|P<rprime|'>>-covariant distributions on <math|G/P>
    should have <math|P<rprime|'>>-invariant support, the first result allows
    us to preduct what support can members of
    <math|\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p+q>;\<lambda\>,\<nu\>|)>>
    have. Now, for values of parameters <math|<around*|(|\<lambda\>,\<nu\>|)>>
    sufficiently regular, I was able to construct families of solutions
    corresponding to every support possible;

    <item>As representations we are dealing with depend on a pair of complex
    parameters, so do the SBOs. Having constructed them for regular values of
    parameters, one then has to determine whether the extension to the whole
    parameter space is possible. Moreover, as for parameters regular enough
    the dependence turns out to be holomorphic, one finds himself using
    theory of generalized functions depending on holomorphic (meromorphic)
    parameter in order to carry out the extension. In doing so, poles usually
    occur and one is interested in determining their precise location and
    multiplicity, so to carry out the normalization, after which dependence
    on parameters becomes holomorphic. I was able to normalize all SBOs
    except of the regular one. Moreover, I investigated residues at poles and
    determined their support;

    <item>Having constructed enough holomorphic families of SBOs as a result
    of Project D, I was able to show that they span space of SBOs for every
    value of parameters. Hence, I was able to give the explicit basis for
    <math|Hom<rsub|G<rprime|'>><around*|(|I<around*|(|\<lambda\>|)>,J<around*|(|\<nu\>|)>|)>>
    for every <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>;

    <item>As spherical vectors are mapped to spherical vectors under SBOs and
    spaces of spherical vectors are one-dimensional, one naturally becomes
    interested in multiplicity factors. Using integral formulae, I was able
    to explicitly compute these;

    <item>Similar to the <cite|kobayashi2015symmetry>, it turns out that
    generically all SBOs are (proportional to the) residues of a regular
    family <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>>
    and I was able to precisely prove this fact and compute the
    proportionality coefficients. Similarly, for Knapp-Stein intertwining
    operators <math|<wide|\<bbb-T\>|~><rsub|\<lambda\>>:I<around*|(|\<lambda\>|)>\<rightarrow\>I<around*|(|n-\<lambda\>|)>>,
    we have that operators <math|<wide|\<bbb-T\>|~><rsub|n-1-\<nu\>>\<circ\><wide|K|~><rsub|\<lambda\>,n-1-\<nu\>><rsup|\<bbb-R\><rsup|n>>>
    and <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>>. I
    was able to determine precisely proportionality coefficients and derive
    similar relations for other families of SBO. The exact form of these
    relations contains vast amount of representation-theoretic information.
  </enumerate>

  <\bibliography|bib|alpha|todai_master.bib>
    <\bib-list|KS15>
      <bibitem*|KS15><label|bib-kobayashi2015symmetry>T.<nbsp>Kobayashi and
      B.<nbsp>Speh. <newblock>Symmetry breaking for representations of rank
      one orthogonal groups. <newblock><with|font-shape|italic|Memoirs of the
      American Mathematical Society>, 238(1126), 2015.
    </bib-list>
  </bibliography>
</body>

<\references>
  <\collection>
    <associate|auto-1|<tuple|7|1>>
    <associate|bib-kobayashi2015symmetry|<tuple|KS15|1>>
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