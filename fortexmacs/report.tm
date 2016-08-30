<TeXmacs|1.99.4>

<style|<tuple|old-generic|american|mystyle>>

<\body>
  <section|report 51>

  <block|<tformat|<twith|table-halign|l>|<cwith|1|1|1|-1|cell-width|7.5cm>|<cwith|1|1|1|-1|cell-hmode|exact>|<twith|table-valign|b>|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|1|cell-width|>|<cwith|1|-1|1|1|cell-hmode|auto>|<cwith|1|-1|1|1|cell-hyphen|t>|<table|<row|<\cell>
    <with|font-series|bold|What had to be done>
  </cell>|<cell|<with|font-series|bold|What has been done>>>|<row|<\cell>
    Solve the problem for all cases when composition series of
    <math|I<around*|(|\<lambda\>|)>> consists of two components
  </cell>|<cell|<with|font-series|bold|not done>>>|<row|<\cell>
    Solve the problem for cases when composition series of
    <math|I<around*|(|\<lambda\>|)>> consists of three components without
    direct sums (e.g. <math|p=1,q\<in\>2\<bbb-Z\>,\<lambda\>\<in\>-2\<bbb-Z\><rsub|\<geqslant\>0>>
    or <math|n+2\<bbb-Z\><rsub|\<geqslant\>0>>)
  </cell>|<cell|<with|font-series|bold|not done> (but I have an idea of how
  to do this)>>>>>

  \;

  <with|font-series|bold|What has been done (additional)>

  <\enumerate-numeric>
    <item>Computed the image of <math|<wide|<wide|K|~>|~><rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>>
    for <math|p\<gtr\>1>;

    <item>Wrote the program that partially automatizes the work;

    <item>read chap. III and IV of Lang's SL2 book;

    <item>Divided the problem into finite number of cases (164). Of these I
    definitely can do 58 and probably can do 24 more. All others will require
    some sort of luck.
  </enumerate-numeric>

  <with|font-series|bold|What I plan to do during this week>:

  <\enumerate>
    <item>Prepare for talk at Professor Kohno's seminar;
  </enumerate>

  <with|font-series|bold|What I plan to do later>

  <\enumerate>
    <item>Make slides for September talk in Osaka

    <item>Normalize <math|K<rsub|\<lambda\>,\<nu\>><rsup|\<bbb-R\><rsup|n>>>
    with help of <math|K>-finite vectors

    <item>Better normalization for <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>>
    (optimize the proof using the fact that
    <math|2xy=<around*|(|x-y|)><rsup|2>-x<rsup|2>-y<rsup|2>>)

    <item>Work with <math|U<around*|(|p,q|)>>

    <item>Try to prove the theorem about <math|O<around*|(|p,q|)>> invariant
    polynomials
  </enumerate>

  <\with|font-series|bold>
    Questions
  </with>

  <\enumerate-numeric>
    <item>You said that in the article <cite|KO2> the characteristic of the
    <math|A<rsub|\<frak-q\>><around*|(|\<lambda\>|)>> module as a
    submodule/quotient of <math|I<around*|(|\<lambda\>|)>> is given. Indeed,
    I found it as a <cite-detail|KO2|fact 5.4>. Nevertheless, the
    characterization is given only under the <math|p+q\<in\>2\<bbb-Z\>>
    assumption. What is the corresponding characterization for
    <math|p+q\<in\>2\<bbb-Z\>+1>?

    <item>Am I right that it only suffices to compute the
    <math|m<around*|(|\<pi\>,A<rsub|\<frak-q\><rprime|'>><around*|(|\<nu\>|)>|)>>
    and <math|m<around*|(|A<rsub|\<frak-q\>><around*|(|\<lambda\>|)>,\<tau\>|)>>
    where <math|\<pi\>> and <math|\<tau\>> are irreps of <math|G> and
    <math|G<rprime|'>> respectively occuring as composition series of
    <math|I<around*|(|\<bbb-C\>|)>> and <math|J<around*|(|\<bbb-C\>|)>>
    respectively? I mean, is that true that I <with|font-shape|italic|do not>
    need to compute <with|font-shape|italic|all> multiplicities?
  </enumerate-numeric>

  <paragraph|Comments>

  <\bibliography|bib|tm-alpha|todai_master>
    <\bib-list|1>
      <bibitem*|KØ03><label|bib-KO2>Toshiyuki Kobayashi<localize| and >Bent
      Ørsted.<newblock> Analysis on the minimal representation of
      <math-up|O><math|<around|(|p,q|)>>.<with|font-family|rm|II>. branching
      laws.<newblock> <with|font-shape|italic|Advances in Mathematics>,
      180(2):513\U550, 2003.<newblock>
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
    <associate|auto-3|<tuple|1|1>>
    <associate|auto.2-1|<tuple|1|?|#2>>
    <associate|auto.2-2|<tuple|1|?|#2>>
    <associate|auto.3-1|<tuple|1|?|#3>>
    <associate|auto.3-2|<tuple|3|?|#3>>
    <associate|auto.3-3|<tuple|3.1|?|#3>>
    <associate|bib-KO2|<tuple|KØ03|?>>
    <associate|bib-grauert2012several|<tuple|GF12|?>>
    <associate|bib-knapp2013lie|<tuple|Kna13|?>>
    <associate|bib-wallach1988real|<tuple|Wal88|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      KO2

      KO2
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|report
      51> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
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