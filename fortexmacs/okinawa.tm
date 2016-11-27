<TeXmacs|1.99.4>

<style|<tuple|article|mystyle|number-europe|okinawa>>

<\body>
  <\with|font-base-size|12>
    <doc-data|<doc-title|Symmetry breaking of indefinite orthogonal groups
    <math|O<around*|(|p,q|)>>>>

    <section|Branching problem>

    Suppose <math|G\<supset\>G<rprime|'>> are reductive groups and
    <math|\<pi\>> is an irreducible representation of <math|G>. If we
    restrict <math|\<pi\>> to <math|G<rprime|'>>, it is no longer irreducible
    in general.

    <center|<value|m1>>

    \;

    <underline|Branching problem> (in a wider sense) =

    = Understand <math|\<pi\>\<mid\><rsub|G<rprime|'>>.>

    These are well-studied (e.g. combinatorial algorithm) for <math|\<pi\>>
    finitely-dimensional and <math|G>: compact. In this setting,
    <math|\<pi\>> always splits into a direct sum

    <\equation*>
      \<pi\>\<mid\><rsub|G<rprime|'>>=<big|oplus><rsub|\<tau\>\<in\><wide|G<rprime|'>|^>>m<around*|(|\<pi\>,\<tau\>|)>\<tau\>
    </equation*>

    of irreducibles <math|\<tau\>> of <math|G<rprime|'>>.

    However, when <math|dim \<pi\>=\<infty\>> and <math|G,G<rprime|'>> are
    non-compact, the situation becomes much more involved and was not studied
    seriously before Kobayashi's theory appeared in 90s. In particular,
    several examples that show that behaviour is very wild in general were
    constructed <cite|Kobayashi2008>.

    <underline|SBOs:> An idea to understand restriction
    <math|\<pi\>\<mid\><rsub|G<rprime|'>>> that is not discretely
    decomposable: compare it with irreducible representations <math|\<tau\>>
    of the subgroup <math|G<rprime|'>>, i.e. to study the space

    <\equation*>
      Hom<rsub|G<rprime|'>><around*|(|\<pi\>\<mid\><rsub|G<rprime|'>>,\<tau\>|)>
    </equation*>

    of <underline|symmetry breaking operators> (SBOs, for short).

    <section|<value|abc> program for branching>

    In <cite|kobayashi2015program> T. Kobayashi introduced the far-reaching
    program for studying branching of noncompact groups, which can be
    summarized as follows:

    <value|m2>

    <value|m3>

    <value|m4>

    The main theme of this work is Program <math|\<cal-C\>> for \Pstandard
    representations\Q with focus on:

    <\description>
      <item*|<math|<around*|(|\<cal-C\>1|)>>><math|>Construct SBOs;

      <item*|<math|<around*|(|\<cal-C\>2|)>>>Classify all SBOs;

      <item*|<math|<around*|(|\<cal-C\>3|)>>>Study functional equations among
      SBOs;

      <item*|<math|<around*|(|\<cal-C\>4|)>>>Find residue formulae for SBOs;

      <item*|<math|<around*|(|\<cal-C\>5|)>>>Find images of SBOs.
    </description>

    The subprogram <math|<around*|(|\<cal-C\>1|)>-<around*|(|\<cal-C\>5|)>>
    was proposed by Kobayashi-Speh in their book
    <cite|kobayashi2015symmetry>. Further, they gave a complete answer to
    <math|<around*|(|\<cal-C\>1|)>-<around*|(|\<cal-C\>5|)>> for real rank 1
    pair

    <\equation*>
      <around*|(|G,G<rprime|'>|)>=<around*|(|O<around*|(|n+1,1|)>,O<around*|(|n,1|)>|)>.
    </equation*>

    <with|font-series|bold|Goal>: extend this to higher rank case

    <\equation*>
      <around*|(|G,G<rprime|'>|)>=<around*|(|O<around*|(|p+1,q+1|)>,O<around*|(|p,q+1|)>|)>.
    </equation*>

    For \Pstandard\Q representations we work with
    <with|font-series|bold|spherical degenerate principal series
    representations>:

    <center|<value|m5>>

    where <math|P\<subset\>G> is the maximal parabolic subgroup with the Levi
    part

    <\equation*>
      M A\<simeq\>O<around*|(|p,q|)>\<times\><around*|{|\<pm\>1|}>\<times\>\<bbb-R\>,
    </equation*>

    <math|P<rprime|'>=P\<cap\>G<rprime|'>> is a maximal parabolic of
    <math|G<rprime|'>>.

    <frame|Conformal viewpoint:> Geometrically
    <math|I<around*|(|\<lambda\>|)>=C<rsup|\<infty\>><around*|(|X,\<cal-L\><rsub|\<lambda\>>|)>>
    arise from conformal geometry:

    <value|m6>

    <\remark*>
      Works <cite|kobayashi2013finite>,<cite|kobayashi2014classification>
      regarding the Program <math|\<cal-A\>> (a priori estimate) for this
      setting, imply that

      <\equation*>
        dim Hom<rsub|G<rprime|'>><around*|(|I<around*|(|\<lambda\>|)>,J<around*|(|\<nu\>|)>|)>
      </equation*>

      \ is uniformly bounded in <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>.
    </remark*>

    <section|Classification of SBOs>

    Use the strategy developed in <cite|kobayashi2015symmetry>. The geometry
    is a little more complicated.

    <with|font-series|bold|Distribution kernel for SBO:>

    <\fact>
      Applying the general statement of <cite|kobayashi2015symmetry> to our
      concrete setting we get:

      <value|m7>

      \;
    </fact>

    <\theorem>
      (description of double coset <math|P<rprime|'>\\G/P>) We set

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<value|defX>,>|<cell|>>|<row|<cell|>|<cell|<value|defY>,>|<cell|>>|<row|<cell|>|<cell|<value|defC>,>|<cell|>>|<row|<cell|>|<cell|<value|defo>.>|<cell|>>>>
      </eqnarray>

      <center|<value|m8>>

      \;
    </theorem>

    <\fact>
      (classification of differential SBO, see <cite|kobayashi2015branching>)
      For <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>//\<assign\><around*|{|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>\<mid\>\<nu\>-\<lambda\>\<in\>2\<bbb-N\>|}>>,
      let

      <center|<value|m9>>

      where <math|<wide|C|~><around|(|s,t|)>> is a polynomial of
      two-variables, obtained by inflation of the renormalized Gegenbauer
      polynomial, defined as in <cite-detail|kobayashi2015symmetry|(16.3)>.

      It is a differential SBO (i.e. <math|\<cal-S\>upp<around*|(|<wide|R|~><rsub|\<lambda\>,\<nu\>><rsup|<around*|{|<around*|[|o|]>|}>>|)>=<around*|{|0|}>>)
      and any differential SBO is proportional to it.
    </fact>

    <\theorem>
      (construction of regular SBO) For <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>
      with <math|Re<around*|(|\<nu\>|)>\<less\>0> and
      <math|Re<around*|(|\<lambda\>+\<nu\>-n|)>\<gtr\>0> the continuous
      function

      <\equation*>
        <value|m10>
      </equation*>

      is a member of <math|\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>>
      and we let

      <\equation*>
        R<rsub|\<lambda\>,\<nu\>><rsup|X>\<assign\>Op<around*|(|<value|m10>|)>.
      </equation*>
    </theorem>

    <\theorem>
      (normalization of regular SBO) <math|R<rsub|\<lambda\>,\<nu\>><rsup|X>>
      can be meromorphically extended to <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>.
      Moreover,

      <\equation*>
        <value|m11>
      </equation*>

      becomes an SBO dependending holomorphically on
      <math|<around*|(|\<lambda\>,\<nu\>|)>>. It then vanishes on a discrete
      set of <math|\<bbb-C\><rsup|2>> which we can determine.
    </theorem>

    <\theorem>
      (construction of singular SBOs) For <math|S=X,Y,C>, and the following
      operators <math|R<rsub|\<lambda\>,\<nu\>><rsup|S>> and
      <math|<wide|R|~><rsub|\<lambda\>,\<nu\>><rsup|X>> are symmetry breaking
      operators from <math|I<around*|(|\<lambda\>|)>\<mid\><rsub|G<rprime|'>>>
      to <math|J<around|(|\<nu\>|)>>, which depend holomorphically on
      <math|<around|(|\<lambda\>,\<nu\>|)>\<in\>D<rsub|S>> and are
      renormalizations of <math|<wide|R|~><rsub|\<lambda\>,\<nu\>><rsup|X>>.
      Moreover, <math|\<cal-S\>upp<around|(|R<rsub|\<lambda\>,\<nu\>><rsup|S>|)>\<subseteq\>S>
      with \P=\Q holding generically and are determined explicitly.

      <\center>
        <value|m12>
      </center>

      Let us explain the notation in the table.

      <\itemize>
        <item><value|m13>

        <item><value|m14>

        <item><value|m15>
      </itemize>
    </theorem>

    <\theorem>
      (dimension of SBO space) For all <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>,

      <\equation*>
        dim<around*|(|Hom<rsub|G<rprime|'>><around*|(|I<around*|(|\<lambda\>|)>,J<around*|(|\<nu\>|)>|)>|)>\<in\><around*|{|1,2|}>.
      </equation*>
    </theorem>

    <\theorem>
      (classification of SBOs)

      <center|<value|m16>>

      \;
    </theorem>

    <section|Solution to <math|<value|c3>-<value|c5>>>

    <\theorem>
      (spectrum for spherical vectors) Let
      <math|n\<assign\>p+q*<space|0.27em><around|(|p,q\<ge\>1|)>> as before.

      <center|<value|m17>>

      \;
    </theorem>

    <\remark*>
      <value|rmspher>
    </remark*>

    For <math|<around|(|\<lambda\>,\<nu\>|)>\<nin\>//>, we set

    <\equation*>
      <value|m18>
    </equation*>

    Then <math|<wide|R|~><rsub|\<lambda\>,\<nu\>><rsup|X>=<frac|1|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>>Op<around*|(|K<rsub|\<lambda\>,\<nu\>><rsup|X>|)>>.
    We recall that the left-hand side extends to a family of SBOs with
    holomorphic parameter <math|<around|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>.

    <\theorem*>
      (residue formula) Suppose <math|<around|(|\<lambda\>,\<nu\>|)>\<in\>//>,
      namely <math|l\<assign\><frac|1|2>*<around*|(|\<nu\>-\<lambda\>|)>\<in\>\<bbb-N\>>.
      Then we have

      <\equation*>
        <value|m19>
      </equation*>
    </theorem*>

    <\remark*>
      <value|rmres>
    </remark*>

    <\definition*>
      The <underline|Knapp-Stein operator> is a <math|G>-intertwining
      operator defined as

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<value|m20>>|<cell|>>>>
      </eqnarray>

      where <math|q<rsub|T><around*|(|\<lambda\>|)>> is explicitly given by
      Gamma factors. We compare the composition
      <math|R<rsub|n-\<lambda\>,\<nu\>><rsup|X>\<circ\><wide|\<bbb-T\>|~><rsub|\<lambda\>><rsup|G>>
      and <math|R<rsub|\<lambda\>,\<nu\>><rsup|X>>. They should be
      proportional to each other.

      <center|<value|m21>>

      For <math|G<rprime|'>=O<around*|(|p,q+1|)>> we similarly define
      <math|<wide|\<bbb-T\>|~><rsub|\<nu\>><rsup|G<rprime|'>>:J<around*|(|\<nu\>|)>\<rightarrow\>J<around*|(|n-1-\<nu\>|)>>.

      <center|<value|m22>>

      \;
    </definition*>

    <\theorem*>
      (functional identities) Let <math|n\<assign\>p+q> as before. We have:\ 

      <center|<value|m23>>

      where

      <center|<value|m24>>

      \;
    </theorem*>

    <\remark*>
      <value|rmfunc>
    </remark*>

    <\theorem*>
      (images of SBOs) We can compute images of every SBOs constructed above
      for every <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>.
    </theorem*>

    <\bibliography|bib|tm-alpha|todai_master.bib>
      <\bib-list|7>
        <bibitem*|CKØP11><label|bib-clerc2011generalized>J.-L.<nbsp>Clerc,
        T.<nbsp>Kobayashi, B.<nbsp>Ørsted<localize|, and
        >M.<nbsp>Pevzner.<newblock> Generalized Bernstein--Reznikov
        integrals.<newblock> <with|font-shape|italic|Mathematische Annalen>,
        349(2):395\U431, 2011.<newblock>

        <bibitem*|KM14><label|bib-kobayashi2014classification>T.<nbsp>Kobayashi<localize|
        and >T.<nbsp>Matsuki.<newblock> Classification of finite-multiplicity
        symmetric pairs.<newblock> <localize|In
        ><with|font-shape|italic|<with|font-family|rm|font-shape|right|font-series|medium|Special
        Issue in honour of Professor Dynkin for his 90th birthday>>,
        <localize|volume><nbsp>19, <localize|pages >457\U493. Springer,
        2014.<newblock>

        <bibitem*|KO13><label|bib-kobayashi2013finite>T.<nbsp>Kobayashi<localize|
        and >T.<nbsp>Oshima.<newblock> Finite multiplicity theorems for
        induction and restriction.<newblock> <with|font-shape|italic|Advances
        in Mathematics>, 248:921\U944, 2013.<newblock>

        <bibitem*|Kob08><label|bib-Kobayashi2008>Toshiyuki
        Kobayashi.<newblock> <with|font-shape|italic|Multiplicity-free
        Theorems of the Restrictions of Unitary Highest Weight Modules with
        respect to Reductive Symmetric Pairs>, <localize|pages
        >45\U109.<newblock> Birkhäuser Boston, Boston, MA, 2008.<newblock>

        <bibitem*|Kob15><label|bib-kobayashi2015program>T.<nbsp>Kobayashi.<newblock>
        A program for branching problems in the representation theory of real
        reductive groups.<newblock> <localize|In
        ><with|font-shape|italic|<with|font-family|rm|font-shape|right|font-series|medium|Special
        issue in honor of Vogan's 60th years birthday>>, <localize|volume>
        312, <localize|pages >277\U322. Birkhäuser, 2015.<newblock>

        <bibitem*|KS15><label|bib-kobayashi2015symmetry>T.<nbsp>Kobayashi<localize|
        and >B.<nbsp>Speh.<newblock> <with|font-shape|italic|Symmetry
        Breaking for Representations of Rank One Orthogonal Groups>,
        <localize|volume> <with|font-series|bold|238><localize| of
        ><with|font-shape|italic|Memoirs of the Amer. Math. Soc>.<newblock>
        American Mathematical Society, 2015.<newblock>

        <bibitem*|KØSS15><label|bib-kobayashi2015branching>Toshiyuki
        Kobayashi, Bent Ørsted, Petr Somberg<localize|, and
        >Vladim<math|<wide|<text|\Y>|\<acute\>>>r Sou£ek.<newblock> Branching
        laws for verma modules and applications in parabolic geometry.
        I.<newblock> <with|font-shape|italic|Advances in Mathematics>,
        285:1796\U1852, 2015.<newblock>
      </bib-list>
    </bibliography>
  </with>
</body>

<\initial>
  <\collection>
    <associate|info-flag|minimal>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|3>>
    <associate|auto-4|<tuple|4|5>>
    <associate|auto-5|<tuple|7|6>>
    <associate|bib-Kobayashi2008|<tuple|Kob08|6>>
    <associate|bib-bernstein2004estimates|<tuple|BR04|5>>
    <associate|bib-clerc2011generalized|<tuple|CKØP11|6>>
    <associate|bib-kobayashi2013finite|<tuple|KO13|6>>
    <associate|bib-kobayashi2014classification|<tuple|KM14|6>>
    <associate|bib-kobayashi2015branching|<tuple|KØSS15|6>>
    <associate|bib-kobayashi2015program|<tuple|Kob15|6>>
    <associate|bib-kobayashi2015symmetry|<tuple|KS15|6>>
    <associate|thm:spherical|<tuple|3|?|../../.TeXmacs/texts/scratch/no_name_9.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      Kobayashi2008

      kobayashi2015program

      kobayashi2015symmetry

      kobayashi2013finite

      kobayashi2014classification

      kobayashi2015symmetry

      kobayashi2015symmetry

      kobayashi2015branching

      kobayashi2015symmetry

      clerc2011generalized

      kobayashi2015symmetry

      kobayashi2015symmetry

      kobayashi2015program
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Branching
      problem> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc><with|mode|<quote|math>|\<cal-A\>\<cal-B\>\<cal-C\>>
      program for branching> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Classification
      of SBOs> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Solution
      to <with|mode|<quote|math>|<with|mode|<quote|math>|<around*|(|\<cal-C\>3|)>>-<with|mode|<quote|math>|<around*|(|\<cal-C\>5|)>>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>