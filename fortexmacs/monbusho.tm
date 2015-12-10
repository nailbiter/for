<TeXmacs|1.0.7.18>

<style|generic>

<\body>
  <subparagraph|Theme>

  The general branching problem is an attempt to understand how given
  irreducible representation of group G is ``built'' from the irreducible
  representations of its subgroup G'. Pursuing this question, one is lead to
  symmetry breaking operators (SBOs), which are the G'-intertwining operators
  going from given representation of G to a given representation of G'. One
  is interested not only in dimension of space of these operators (which
  roughly describes ``how many times'' given representation of G' can be
  included in given representation of G), but also may further want to be
  able to construct explicitly these operators in some geometric models of
  representations. The latter strongly connects the whole subject with
  analysis and geometry. The case where both groups G and G' are reductive is
  perhaps of the most interest and crucial and one thus lead to symmetry
  breaking between reductive groups.

  The latter problem, as set up by professor Kobayashi, besides being
  fundamental and natural question to ask, has relation to a wide range of
  fields, including not only representation theory, but also geometry and
  number theory. Moreover, in this case one has at his disposal
  well-developed and powerful theory of reductive groups.

  <subparagraph|Research status>

  In the course of my work, I was able to do the following.\ 

  <\enumerate>
    <item>I gave complete classification of P'/G/P orbit decomposition
    decomposition of flag variety G/P of G under the action of P' (maximal
    parabolic subgroup of G'). That is, I was able to
    <with|font-series|bold|compute the number of orbits> for every p,q and
    <with|font-series|bold|describe them geometrically>. This information is
    extensively used in subsequent computations, as one observes that kernels
    of SBOs (as given by Schwartz kernel theorem), that initially are
    generalized functions on product of flag manifolds of G and G', can in
    fact be seen as generalized functions on G/P satisfiying some
    P'-covariance. Hence their support should be P'-invariant closed subsets
    of G/P, which can be easily listed once P'/G/P is known. One might also
    mention that these orbit decompositions can be seen as generalizations of
    Iwasawa decomposition (if one takes G'=K, being maximal compact) and
    Bruhat decomposition (if one takes G'=G).

    <item>As shown in <cite|kobayashi2015symmetry>, Schwartz kernel theorem
    tells us that SBO are characterized by their kernels, which can be
    associated to some P'-covariant generalized functions on G/P flag
    manifold. It further turns out that these are also characterized by their
    restriction to open Bruhat cell, and hence may be seen as generalized
    functions on Euclidean space that satisfy system of PDEs together with
    some invariance conditions. As explained above, there are only few known
    possibilities for their supports and I for values of parameters regular
    enough I was able to <with|font-series|bold|construct explicitly these
    kernels> having support in every possible set predicted by orbit
    decomposition.

    <item>Having constructed kernels for values of parameters regular enough,
    one is then interested in extending them to the whole parameter space. As
    kernels constructed in fact turn out to have holomorphic dependence on
    parameter, one finds himself using theory of generalized functions
    depending on holomorphic (meromorphic) parameter in order to carry out
    the extension. In doing so, usually poles occur and one is interested in
    determining their precise location and multiplicity, so to carry out the
    normalization, after which dependence on parameters becomes holomorphic.
    I <with|font-series|bold|was able to normalize kernels of the three (out
    of four) families of SBOs>, including differential operators. Moreover,
    <with|font-series|bold|I investigated residues at poles and determined
    their support>.
  </enumerate>

  The four families mentioned span solution space in the sense that for every
  value of parameters one might find basis for solution space with basis
  elements belonging every to these families with no two belonging to the
  same family. The families, in turn, are characterized by the support of
  kernels. In particular, one family consists of kernel of differential SBOs,
  and is supported at origin, while other two are supported on subsets of
  Euclidean space and corresponds to kernels of singular SBOs \U all these
  families are one-dimensional for codimension 1 subset of parameter space
  and vanish otherwise. This is in perfect agreement with the fact that
  dimension of SBOs is generically one.

  <subparagraph|Publications>

  <\itemize-dot>
    <item>''A new criterion for the roughness of exponential dichotomy on R''
    (with Petro Feketa), accepted for publication in Miskolc Mathematical
    Notes
  </itemize-dot>

  <subparagraph|Research plan (short term)>

  Unfortunately, kernel of regular SBO attempts to be more difficult to
  normalize and investigate, and thus it forms a natural basis for a future
  work. Having normalized all other SBOs and seeing them as residues of
  regular SBO (which is done with the help of residue formula one can write),
  with some much effort one might be able to normalize regular SBO as well.
  Moreover, structure of poles appears to be simple and similar to that of
  other three families. Besides that, other further possible directions are
  as follows:

  <\enumerate>
    <item>Following <cite|kobayashi2015symmetry>, one might want to
    investigate various functional identities between kernels of SBOs.

    <item>Again following <cite|kobayashi2015symmetry>, after one completely
    understands the structure of SBO space for every point of parameter
    space, it may in turn be used to get further information about
    representations corresponding to induction from maximal parabolic, such
    as composition series. One may then investigate of how images/kernels of
    various SBOs match up with the composition series structure.
  </enumerate>

  <subparagraph|Research plan (middle and long term)>

  <\enumerate>
    <item>One might try to solve similar problem, instead taking the
    induction from minimal parabolic subgroup, thus arriving at principal
    series. Computations appear to be more complicated, as number of cosets
    P'/G/P increases with p and q, but still might be manageable.

    <item>One might ask similar question for other pairs of reductive groups
    (as techniques of [KS1] and [KS2] in fact apply to a wide range of
    problems). In particular, symmetry breaking between infinite-dimensional
    representations of general linear groups GL(n) and GL(n-1) and orthogonal
    O(n) and O(n-1) will be of interest related to study of automorphic forms
    in number theory (see <cite|gan2011symplectic>).

    <item>One can broaden his perspective by employing theories of D-modules
    and PDE to this problem. On the one hand, they might suggest some new
    techniques and benefit from gaining rich source of examples/problems
    provided by symmetry breaking. On the other hand, obtained results
    phrased in terms of these theories may provide of alternative ways of
    looking on/solving problems in these areas.
  </enumerate>

  <section|copypaste and TODO>

  Additional information is provided by the fact that the geometry of orbit
  decomposition of flag manifold of G under the action of P' (maximal
  parabolic subgroup of G') implies that these distributions may only have
  some predetermined supports (finitely many, 8 for generic p,q). Latter
  problem of finding such generalized functions can then be attacked by a
  wide range of techniques from analysis, including theory of partial
  differential equations, generalized functions and generalized functions
  depending on meromorphic parameter, the latter connecting us with the
  theory of meromorphic functions and complex analysis and allowing one to
  employ striking properties of the latter, the most notable being rigidity
  of meromorphic functions. As the solution space of equations on Euclidean
  space mentioned above forms finite-dimensional vectors space, one is also
  interested in finding explicit formulas for basis elements of it.

  <\bibliography|bib|alpha|todai_master.bib>
    <\bib-list|GGP11>
      <bibitem*|GGP11><label|bib-gan2011symplectic>Wee<nbsp>Teck Gan,
      Benedict<nbsp>H Gross, and Dipendra Prasad. <newblock>Symplectic local
      root numbers, central critical L-values, and restriction problems in
      the representation theory of classical groups.
      <newblock><with|font-shape|italic|Astérisque>, pages No--pp, 2011.

      <bibitem*|Juh09><label|bib-juhl2009families>Andreas Juhl.
      <newblock><with|font-shape|italic|Families of conformally covariant
      differential operators, Q-curvature and holography>, volume 275.
      <newblock>Springer Science & Business Media, 2009.

      <bibitem*|KP><label|bib-kobayashi2013differential>Toshiyuki Kobayashi
      and Michael Pevzner. <newblock>Differential symmetry breaking
      operators. I-General theory and F-method. II-Rankin-Cohen Operators for
      Symmetric Pairs. <newblock><with|font-shape|italic|to appear in Selecta
      Mathematica>.

      <bibitem*|KS15><label|bib-kobayashi2015symmetry>Toshiyuki Kobayashi and
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
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|3|?>>
    <associate|auto-4|<tuple|4|?>>
    <associate|auto-5|<tuple|5|?>>
    <associate|auto-6|<tuple|1|?>>
    <associate|auto-7|<tuple|1|?>>
    <associate|bib-gan2011symplectic|<tuple|GGP11|?>>
    <associate|bib-juhl2009families|<tuple|Juh09|?>>
    <associate|bib-kobayashi2013differential|<tuple|KP|?>>
    <associate|bib-kobayashi2015symmetry|<tuple|KS15|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      kobayashi2015symmetry

      juhl2009families

      kobayashi2013differential

      kobayashi2015symmetry

      gan2011symplectic

      kobayashi2015symmetry
    </associate>
    <\associate|toc>
      Theme <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.15fn>

      Research status <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.15fn>

      Publications <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.15fn>

      Research plan (short term) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.15fn>

      Research plan (middle and long term)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.15fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|copypaste
      and TODO> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>