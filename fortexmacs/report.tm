<TeXmacs|1.99.4>

<style|<tuple|old-generic|american|mystyle>>

<\body>
  <section|report 52>

  <block|<tformat|<twith|table-halign|l>|<cwith|1|1|1|-1|cell-width|7.5cm>|<cwith|1|1|1|-1|cell-hmode|exact>|<twith|table-valign|b>|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|1|cell-width|>|<cwith|1|-1|1|1|cell-hmode|auto>|<cwith|1|-1|1|1|cell-hyphen|t>|<table|<row|<\cell>
    <with|font-series|bold|What had to be done>
  </cell>|<cell|<with|font-series|bold|What has been done>>>|<row|<\cell>
    Prepare for talk in Osaka
  </cell>|<cell|<with|font-series|bold|done>>>|<row|<\cell>
    \;
  </cell>|<cell|<with|font-series|bold|not done> (but I have an idea of how
  to do this)>>>>>

  \;

  <with|font-series|bold|What has been done (additional)>

  <\enumerate-numeric>
    <item>Delivered talk in Osaka (some thoughts about it are in Comments
    section)
  </enumerate-numeric>

  <with|font-series|bold|What I plan to do during this week>:

  <\enumerate>
    <item>Write 6 pages extract of the main results and show You the first
    draft (tuesday)

    <item>\ 
  </enumerate>

  <with|font-series|bold|What I plan to do later>

  The work is divided into several projects:

  <\enumerate-numeric>
    <item>Project 1: Streamline the work already done (see the proposal at
    the end of the report):

    <\enumerate-numeric>
      <item>Make the residue formulae look more meaningful
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

    <item>Project 3: Investigate the <math|I<around*|(|\<lambda\>\<otimes\>\<varepsilon\>|)>\<rightarrow\>J<around*|(|\<nu\>\<otimes\>\<varepsilon\><rprime|'>|)>>
    symmetry breaking:

    <\enumerate-numeric>
      <item>Generalize the theoretical part

      <item>Get the equations for kernels

      <item>Solve them

      <item>Compute images and morphisms between
      <math|A<rsub|\<frak-q\>><around*|(|\<lambda\>|)>>
    </enumerate-numeric>

    <item>Compute the bound on <math|Hom<rsub|G<rprime|'>><around*|(|I<around*|(|\<lambda\>|)>,J<around*|(|\<nu\>|)>|)>>
    multiplicity predicted by <cite|kobayashi2015classification> and compare
    it with the actually obtained:

    <\enumerate-numeric>
      <item>Read <cite|kobayashi2015classification> and
      <cite|kobayashi2014classification> carefully

      <item>Do the computations
    </enumerate-numeric>

    <item>Set up the equations that define kernels of SBO for
    <math|U<around*|(|p,q|)>> case
  </enumerate-numeric>

  <\with|font-series|bold>
    Questions
  </with>

  <\enumerate-numeric>
    <item>How to compute cohomology of flag variety <math|G/P>?

    <item>Is that true that all subquotients of <math|J<around*|(|\<nu\>|)>>
    appear as images of SBO?

    <item>You mentioned the \Pbad example\Q that the \Pgeneric\Q irrep of
    <math|SL<rsub|3>> restricted to some its subgoup has continuous spectrum
    with <math|\<infty\>>-multiplicity. Where can I read about the detailed
    construction?

    <item>Is that possible to get the copy of slides for Your talk in Kansai
    U (only for personal use)? I found the talk very inspiring and
    explaining, but I would love to see slides a couply of times more
  </enumerate-numeric>

  <paragraph|Comments>

  I've delivered talk in Osaka. Unfortunately, it did not go thet well. Some
  of my thoughts as to what the reason was are as follows (in order of
  descending priority):

  <\enumerate-numeric>
    <item>I was unable to convey to geometers the importance of the results
    obtained \U I'm planning to work on it before the talk in Hiroshima by
    reading Borel-Wallach

    <item>I've spoke too fast and forget to say a few things You suggests me
    to (perhaps, because being nervous)

    <item>I had some minor problems with mic (check that beforehand next
    time)
  </enumerate-numeric>

  One more thing. I think I can streamline the arguments done so far for
  <math|O<around*|(|p,q|)>> case by defining
  <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|P>> and
  <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>> (SBOs with generic
  support <math|Y> and <math|C> respectively defined for
  <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\\\\> and
  <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<mid\>\<mid\>> respectively)
  not a-priory, but as residues of regular SBO. This will save the (huge)
  work done in normalizing them and reduce it to just normalizing regular
  SBO. The latter, in turn, can be normalized by purely analytical means (ie.
  without invoking \PSBO is holomorphic on <math|K>-finite vectors
  <math|\<Rightarrow\>> it is holomorphic\Q theorem, whose rigorous proof
  takes some effort).

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
    <associate|page-type|letter>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1|1>>
    <associate|auto-3|<tuple|3|1>>
    <associate|auto.2-1|<tuple|1|?|#2>>
    <associate|auto.2-2|<tuple|1|?|#2>>
    <associate|auto.3-1|<tuple|1|?|#3>>
    <associate|auto.3-2|<tuple|3|?|#3>>
    <associate|auto.3-3|<tuple|3.1|?|#3>>
    <associate|bib-KO2|<tuple|KØ03|?>>
    <associate|bib-grauert2012several|<tuple|GF12|?>>
    <associate|bib-knapp2013lie|<tuple|Kna13|?>>
    <associate|bib-kobayashi2014classification|<tuple|KM14|?>>
    <associate|bib-kobayashi2015classification|<tuple|KO15|?>>
    <associate|bib-wallach1988real|<tuple|Wal88|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      kobayashi2015classification
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|report
      52> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
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