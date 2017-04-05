<TeXmacs|1.99.4>

<style|<tuple|article|mystyle>>

<\body>
  <date|>

  <\definition>
    <label|def:1><cite-detail|kobayashi1993|p.265>

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|U<rsub|\<pm\>><around*|(|\<lambda\>|)>\<equiv\>U<rsub|\<pm\>><rsup|SO<rsub|0><around*|(|p,q|)>><around*|(|\<lambda\>|)>\<assign\><around*|(|\<cal-R\><rsub|\<frak-q\><rsub|\<pm\>>><rsup|\<frak-g\>>|)><rsup|p-2><around*|(|\<bbb-C\><rsub|\<pm\>\<lambda\>f<rsub|1>>|)>,>|<cell|>>|<row|<cell|>|<cell|\<frak-q\><rsub|\<pm\>>=\<frak-q\><around*|(|\<pm\>f<rsub|1>|)>.>|<cell|>>>>
    </eqnarray>
  </definition>

  <\fact>
    <cite-detail|KO2|Fact 5.4> For <math|p,q\<in\>\<bbb-N\>,p\<gtr\>1> we
    have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|\<pi\><rsub|+,\<lambda\>><rsup|p,q><rsub|>=\<cal-R\><rsub|\<frak-q\>><rsup|p-2><around*|(|\<bbb-C\><rsub|\<lambda\>f<rsub|1>>|)>>|<cell|>>>>
    </eqnarray>
  </fact>

  <\remark>
    <label|rmk:1>As mentioned in <cite-detail|KO2|p. 525>
    <math|\<pi\><rsub|-,\<lambda\>><rsup|p,q>\<in\><wide|O<around*|(|p,q|)>|^>>
    corresponds to <math|\<pi\><rsub|+,\<lambda\>><rsup|q,p>\<in\><wide|O<around*|(|q,p|)>|^>>.
  </remark>

  <\remark>
    Parametrization of one-dimensional representations
    <math|\<bbb-C\><rsub|\<lambda\>>> of maximal parabolic <math|P> of
    <math|G=O<around*|(|p+1,q+1|)>> is same in <cite|kobayashi1993> and
    <cite|KO2>. As mentioned in <verbatim|master_streamline.pdf>, it is
    related to that of <cite|kobayashi2015symmetry> via

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|I<around*|(|\<lambda\>|)>=\<bbb-C\><rsub|\<lambda\>-n/2>,n\<assign\>p+q.>|<cell|>>>>
    </eqnarray>
  </remark>

  <\fact>
    <label|fact:1><cite-detail|kobayashi1993|Thm. 3.3> Let
    <math|p\<geqslant\>2,s\<geqslant\>1,q-s\<geqslant\>1,\<lambda\>\<in\>\<bbb-Z\>+<frac|p+q|2>,\<lambda\>\<gtr\>0>.
    We then have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|U<rsub|+><rsup|SO<rsub|0><around*|(|p,q|)>><around*|(|\<lambda\>|)>\<mid\><rsub|SO<rsub|0><around*|(|p,s|)>\<times\>SO<around*|(|q-s|)>>\<simeq\><big|oplus><rsub|a,k\<in\>\<bbb-N\>>U<rsub|+><rsup|SO<rsub|0><around*|(|p,s|)>><around*|(|\<lambda\>+<frac|q-s|2>+a+2k|)>\<boxtimes\>\<cal-H\><rsup|a><around*|(|\<bbb-R\><rsup|q-s>|)>.>|<cell|>>>>
    </eqnarray>
  </fact>

  Taking <math|q-s=1> and interchanging <math|p,q> in Fact <reference|fact:1>
  we get (using Remark <reference|rmk:1>):

  <\corollary>
    <label|cor:1>Let <math|\<lambda\>\<in\>\<bbb-Z\>+<frac|p+q|2>,\<lambda\>\<gtr\>0>.
    We then have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|\<pi\><rsub|-,\<lambda\>><rsup|p,q>\<mid\><rsub|SO<rsub|0><around*|(|p-1,q|)>>=<big|oplus><rsub|k\<in\>\<bbb-N\>>\<pi\><rsub|-,\<lambda\>+<frac|1|2>+2k><rsup|p-1,q>.>|<cell|>>>>
    </eqnarray>

    Or equivalently,

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|Hom<rsub|O<around*|(|p-1,q|)>><around*|(|\<pi\><rsub|-,\<lambda\>><rsup|p,q>,\<pi\><rsub|-,\<nu\>><rsup|p-1,q>|)>=<choice|<tformat|<table|<row|<cell|1,>|<cell|\<lambda\>-\<nu\>\<in\>-<frac|1|2>-2\<bbb-N\>>>|<row|<cell|0,>|<cell|otherwise>>>>>>|<cell|>>|<row|<cell|>|<cell|Hom<rsub|O<around*|(|p-1,q|)>><around*|(|\<pi\><rsub|-,\<lambda\>><rsup|p,q>,\<pi\><rsub|+,\<nu\>><rsup|p-1,q>|)>=0>|<cell|>>>>
    </eqnarray>
  </corollary>

  <\remark>
    For <math|p\<gtr\>1> this perfectly agrees with the Theorem 0.1 of
    <verbatim|master_announcement.pdf>.
  </remark>

  <\bibliography|bib|tm-plain|todai_master.bib>
    <\bib-list|3>
      <bibitem*|1><label|bib-KO2>T.<nbsp>Kobayashi<localize| and
      >B.<nbsp>Ørsted.<newblock> Analysis on the minimal representation of
      <math-up|O><math|<around|(|p,q|)>>.<space|0.27em><with|font-family|rm|II>.
      Branching laws.<newblock> <with|font-shape|italic|<with|font-family|rm|font-shape|right|font-series|medium|Adv.
      Math.>>, 180(2):513\U550, 2003.<newblock> Available at
      <slink|http://dx.doi.org/10.1016/S0001-8708(03)00013-6>.<newblock>

      <bibitem*|2><label|bib-kobayashi1993>Toshiyuki Kobayashi.<newblock> The
      restriction of <math|A<rsub|q><around*|(|\<lambda\>|)>> to reductive
      subgroups.<newblock> <with|font-shape|italic|Proc. Japan Acad. Ser. A
      Math. Sci.>, 69(7):262\U267, 1993.<newblock>

      <bibitem*|3><label|bib-kobayashi2015symmetry>T.<nbsp>Kobayashi<localize|
      and >B.<nbsp>Speh.<newblock> <with|font-shape|italic|Symmetry Breaking
      for Representations of Rank One Orthogonal Groups>, <localize|volume>
      <with|font-series|bold|238>.<newblock>
      <with|font-family|rm|font-shape|right|font-series|medium|Memoirs of the
      Amer. Math. Soc>, 2015.<newblock> Available at
      <slink|http://dx.doi.org/10.1090/memo/1126>.<newblock>
    </bib-list>
  </bibliography>
</body>

<\initial>
  <\collection>
    <associate|magnification|1.2>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|7|?>>
    <associate|bib-KO2|<tuple|1|?>>
    <associate|bib-kobayashi1993|<tuple|2|?>>
    <associate|bib-kobayashi2015symmetry|<tuple|3|?>>
    <associate|cor:1|<tuple|6|?>>
    <associate|def:1|<tuple|1|?>>
    <associate|fact:1|<tuple|5|?>>
    <associate|rmk:1|<tuple|3|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      kobayashi1993

      KO2

      kobayashi1993

      KO2

      kobayashi2015symmetry

      kobayashi1993
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>