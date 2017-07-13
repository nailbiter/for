<TeXmacs|1.99.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Report on reading <cite|kobayashi2017symmetry> and
  <cite|speh14symmetry>>>

  This note is the result of reading <cite|kobayashi2017symmetry> and
  <cite|speh14symmetry>. In my current understanding, paper
  <cite|kobayashi2017symmetry> explains how the (unpublished) results
  regarding the symmetry breaking <math|SO<around*|(|n+1,1|)>\<downarrow\>SO<around*|(|n,1|)>>
  due to the authors of <cite|kobayashi2017symmetry> are related to
  Gross-Prasad conjecture:

  <\conjecture>
    (naive version of GGP, <cite-detail|speh14symmetry|pp. 31\U33>)

    Let <math|G\<supset\>H> be orthogonal groups (that is, of the form
    <math|SO<around*|(|m,n|)>>). Having <math|\<tau\>> being the tempered
    representation of <math|G>, we can define the <strong|packet><\footnote>
      in terminology of <cite|kobayashi2017symmetry>, are these Vogan packets
      or Langlands <math|L>-packets?
    </footnote> <math|\<cal-A\><rsub|G><around*|(|\<tau\>|)>> containing it,
    which is the union of several representations
    <math|<around*|(|\<tau\><rsub|i>,G<rsub|i>|)>> where <math|G<rsub|i>> are
    orthogonal groups with the same complexification as <math|G>.

    Similarly, we can define the packet <math|A<rsub|H><around*|(|\<tau\><rsub|H>|)>>
    containing the tempered representation <math|\<tau\><rsub|H>> of
    <math|H>.

    We then define the subset of <strong|compatible> representations
    <math|\<cal-A\>\<subset\>\<cal-A\><rsub|G><around*|(|\<tau\>|)>\<times\>\<cal-A\><rsub|H><around*|(|\<tau\><rsub|H>|)>>.
    Now, the conjecture states that

    <\equation*>
      \<exists\>!<around*|(|\<pi\><rsub|G>,\<pi\><rsub|H>|)>\<in\>\<cal-A\>\<mid\>Hom<rsub|H><around*|(|\<pi\><rsub|G>,\<pi\><rsub|H>|)>=1.
    </equation*>
  </conjecture>

  <section|Notes on reading <cite|kobayashi2017symmetry>>

  In Section I the general introduction is given.

  In Subsection II.1 the notation for groups and subgroups is explained.

  In Subsection II.2 the notation for principal series is introduced. In
  particular

  <\equation*>
    <stack|<tformat|<table|<row|<cell|I<rsub|\<delta\>><around*|(|i,\<lambda\>|)>\<assign\>Ind<rsub|P><rsup|G><around*|(|<big|wedge><rsup|i>\<bbb-C\><rsup|n>\<otimes\>\<delta\>\<otimes\>e<rsup|\<lambda\>\<cdot\>>|)>,<space|1em>\<delta\>\<in\><around*|{|\<pm\>|}>,\<lambda\>\<in\>\<bbb-C\>,0\<leqslant\>i\<leqslant\>n,>>|<row|<cell|J<rsub|\<varepsilon\>><around*|(|j,\<nu\>|)>\<assign\>Ind<rsub|P><rsup|G><around*|(|<big|wedge><rsup|j>\<bbb-C\><rsup|n-1>\<otimes\>\<varepsilon\>\<otimes\>e<rsup|\<nu\>\<cdot\>>|)>>>>>>
  </equation*>

  It is also mentioned that if <math|2i=n>, we have direct sum decomposition
  <math|I<rsub|\<delta\>><around*|(|<frac|n|2>,\<lambda\>|)>=I<rsub|\<delta\>><rsup|<around*|(|+|)>><around*|(|<frac|n|2>,\<lambda\>|)>\<oplus\>I<rsub|\<delta\>><rsup|<around*|(|-|)>><around*|(|<frac|n|2>,\<lambda\>|)>>.
  Also, the <math|\<frak-Z\><around*|(|\<frak-g\>|)>><nbhyph>infinitesimal
  characters of these induced representations
  <math|I<rsub|\<delta\>><around*|(|i,\<lambda\>|)>> and
  <math|I<rsub|\<delta\>><rsup|<around*|(|\<pm\>|)>><around*|(|<frac|n|2>,\<lambda\>|)>>
  is computed and given as

  <\equation*>
    <around*|(|<frac|n|2>,<frac|n|2>-1,\<ldots\>,<frac|n|2>-i+1,<wide|<frac|n|2>-1|^>\<comma\><frac|n|2>-i-1,\<ldots\>,<frac|n|2>-<around*|[|<frac|n|2>|]>,\<lambda\>-<frac|n|2>|)>.
  </equation*>

  In Subsection III.3 the Theorem II.1 is presented, which fully explains the
  symmetry breaking between <math|I<rsub|\<delta\>><around*|(|i,\<lambda\>|)>>
  and <math|J<rsub|\<varepsilon\>><around*|(|j,\<nu\>|)>>. Note that the
  character of the trivial one-dimensional representation equals to

  <\equation*>
    \<rho\>=<around*|(|<frac|n|2>,<frac|n|2>-1,\<ldots\>,<frac|n|2>-<around*|[|<frac|n|2>|]>|)>.
  </equation*>

  Subsection III.1 the description of all irreducible admissible
  representations with trivial character <math|\<rho\>> is given. It turns
  that they are given as:

  <\equation*>
    <stack|<tformat|<table|<row|<cell|<choice|<tformat|<table|<row|<cell|<around*|{|\<Pi\><rsub|\<ell\>,\<delta\>>,\<delta\>=\<pm\>|}>\<cup\><around*|{|\<Pi\><rsub|<frac|n+1|2>,+>|}>>|<cell|n:odd>>|<row|<cell|<around*|{|\<Pi\><rsub|\<ell\>,\<delta\>>:0\<leqslant\>\<ell\>\<leqslant\><frac|n|2>,\<delta\>=\<pm\>|}>>|<cell|n:even>>>>>>>|<row|<cell|<text|here
    >\<Pi\><rsub|\<ell\>,\<delta\>>\<assign\><choice|<tformat|<table|<row|<cell|I<rsub|\<delta\>><around*|(|\<ell\>|)><rsup|\<flat\>>>|<cell|<around*|(|0\<leqslant\>\<ell\>\<leqslant\>n|)>>>|<row|<cell|I<rsub|-\<delta\>><around*|(|\<ell\>|)><rsup|#>>|<cell|<around*|(|1\<leqslant\>\<ell\>\<leqslant\>n+1|)>>>>>>>>|<row|<cell|I<rsub|\<delta\>><around*|(|i|)><rsup|\<flat\>>,I<rsub|\<delta\>><around*|(|i|)><rsup|#><text|
    are the unique subquotients>>>|<row|<cell|<text|of
    <math|I<rsub|\<delta\>><around*|(|i,i|)>> containing
    <math|<big|wedge><rsup|i><around*|(|\<bbb-C\><rsup|n+1>|)>\<otimes\>\<delta\>>
    and <math|<big|wedge><rsup|i><around*|(|\<bbb-C\><rsup|n+1>|)>\<otimes\><around*|(|-\<delta\>|)>>
    of <math|O<around*|(|n+1|)>\<simeq\>K> respectively.>>>>>>
  </equation*>

  Their properties are also listed.

  Subsection III.2 introduced Theorem III.2, which is a mere corollary of
  Theorem III.1 giving data on the dimension of SBO space. It is then
  rephrased as Theorem III.3, which is a pictorial representation.

  Subsection III.3 introduces Propositions III.4 and III.5, the latter of
  which states that\ 

  <\equation*>
    <around*|(|\<Pi\><rsub|i,\<varepsilon\>>|)><rsub|K>\<simeq\>A<rsub|\<frak-q\><rsub|i>><around*|(|\<chi\><rsub|n+1-2i,1><rsup|\<varepsilon\>>|)>=\<cal-R\><rsub|\<frak-q\><rsub|i>><rsup|S<rsub|i>><around*|(|\<b-1\>\<boxtimes\>\<chi\><rsub|n+1-2i,1><rsup|\<varepsilon\>>|)>.
  </equation*>

  Subsection III.4 gives another reformulation of Theorem III.1 as Theorem
  III.9. This reformulation resembles the classical branching law for
  finite-dimensional representations.

  Section IV's main goal is to sketch the proof how Theorem III.1 allows one
  to confirm Gross-Prasad conjectures for tempered representations with
  infinitesimal character <math|\<rho\>>. The branching
  <math|SO<around*|(|2m+1,|)>\<supset\>SO<around*|(|2m,1|)>\<supset\>SO<around*|(|2m-1,1|)>>
  is given pictorially as

  <center|<image|diagram.png|251px|128px||>>

  All the depicted diagrams have infinitesimal character <math|\<rho\>>, the
  same as trivial representation. All of the representations listed are
  <math|\<Pi\><rsub|i,\<varepsilon\>>> as defined above, but we use different
  symbols in order to distinguish the representations of the different
  groups. Note that <math|\<pi\><rsub|m>> is discrete series, while others
  are not.

  Subsections IV.1 and IV.2 list the data related to Vogan packets containing
  <math|\<pi\><rsub|m>,\<Pi\><rsub|m,\<pm\>>> and
  <math|\<varpi\><rsub|m,\<pm\>>>. Each of these packets (we denote them
  <math|V P<around*|(|\<pi\><rsub|m>|)>,V
  P<around*|(|\<Pi\><rsub|m,\<delta\>>|)>> and <math|V
  P<around*|(|\<varpi\><rsub|m,\<delta\>>|)>> respectively) has cardinality
  <math|2<rsup|m>> and is indexed by characters of
  <math|<around*|(|\<bbb-Z\><rsub|2>|)><rsup|m>>.

  Subsection IV.4 explains how Theorem III.1 confirms the
  <math|\<Pi\><rsub|m,<around*|(|-1|)><rsup|m+1>>\<downarrow\>\<pi\><rsub|m>>
  Gross-Prasad conjecture.

  Subsection IV.5 explains how Theorem III.1 confirms the
  <math|\<pi\><rsub|m>\<downarrow\>\<varpi\><rsub|m,<around*|(|-1|)><rsup|m>>>
  Gross-Prasad conjecture.

  <section|Typographical errors and questions>

  While reading <cite|kobayashi2017symmetry>, the following questions occured
  to me:

  <\enumerate>
    <item>On page 6 of <cite|kobayashi2017symmetry> it is claimed that we
    will be mainly intersted in setting

    <\equation>
      <around*|(|G,G<rprime|'>|)>=<around*|(|SO<around*|(|n+1,1|)>,SO<around*|(|n,1|)>|)>,<label|eqn:set-1>
    </equation>

    while say, <cite|kobayashi2015symmetry> and <cite|kobayashi2016conformal>
    use the setting

    <\equation>
      <around*|(|G,G<rprime|'>|)>=<around*|(|O<around*|(|n+1,1|)>,O<around*|(|n,1|)>|)>.<label|eqn:set-2>
    </equation>

    It was claimed that one can easily pass from <math|O> to <math|SO>, as
    explained in <cite-detail|kobayashi2016conformal|Sec. 2.5>. However, what
    is really explained there is how to pass from <math|O> to
    <math|SO<rsub|0>> (the connected subgroup). Is there any kind of mistake?

    <item>With reference to my previous question, when I investigate symmetry
    breaking on differential forms, should I consider the setting
    <math|<eqref|eqn:set-1>> or <math|<eqref|eqn:set-2>>?
  </enumerate>

  The following typos were found in <cite|kobayashi2017symmetry>:

  <\enumerate>
    <item>p. 6, \PTo simplify the notation we also <strong|use will use>
    <math|\<varepsilon\>,\<delta\>\<in\><around*|{|\<pm\>|}>>\Q;

    <item>
  </enumerate>

  <\bibliography|bib|alpha|/Users/nailbiter/for/forlatex/report_on_reading_kspeh_17/bibliography.bib>
    <\bib-list|KKP16>
      <bibitem*|KKP16><label|bib-kobayashi2016conformal>Toshiyuki Kobayashi,
      Toshihisa Kubo, and Michael Pevzner.
      <newblock><with|font-shape|italic|Conformal symmetry breaking operators
      for differential forms on spheres>, volume 2170. <newblock>Springer,
      2016.

      <bibitem*|KS15><label|bib-kobayashi2015symmetry>Toshiyuki Kobayashi and
      Birgit Speh. <newblock><with|font-shape|italic|Symmetry breaking for
      representations of rank one orthogonal groups>, volume 238.
      <newblock>American Mathematical Society, 2015.

      <bibitem*|KS17><label|bib-kobayashi2017symmetry>Toshiyuki Kobayashi and
      Birgit Speh. <newblock>Symmetry breaking for orthogonal groups and a
      conjecture by B. Gross and D. Prasad.
      <newblock><with|font-shape|italic|arXiv preprint arXiv:1702.00263>,
      2017.

      <bibitem*|Spe14><label|bib-speh14symmetry>Birgit Speh.
      <newblock>Symmetry breaking and the Gross Prasad conjectures for
      orthogonal groups. <newblock>Available at
    </bib-list>
  </bibliography>
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|2|?>>
    <associate|bib-kobayashi2015symmetry|<tuple|KS15|?>>
    <associate|bib-kobayashi2016conformal|<tuple|KKP16|?>>
    <associate|bib-kobayashi2017symmetry|<tuple|KS17|?>>
    <associate|bib-speh14symmetry|<tuple|Spe14|?>>
    <associate|eqn:1|<tuple|1|?>>
    <associate|eqn:2|<tuple|2|?>>
    <associate|eqn:set-1|<tuple|1|?>>
    <associate|eqn:set-2|<tuple|2|?>>
    <associate|footnote-1|<tuple|1|?>>
    <associate|footnr-1|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      kobayashi2017symmetry

      speh14symmetry

      kobayashi2017symmetry

      speh14symmetry

      kobayashi2017symmetry

      kobayashi2017symmetry

      speh14symmetry

      kobayashi2017symmetry

      kobayashi2017symmetry

      kobayashi2017symmetry

      kobayashi2017symmetry

      kobayashi2015symmetry

      kobayashi2016conformal

      kobayashi2016conformal

      kobayashi2017symmetry
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Notes
      on reading [<write|bib|kobayashi2017symmetry><reference|bib-kobayashi2017symmetry>]>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Typographical
      errors and questions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>