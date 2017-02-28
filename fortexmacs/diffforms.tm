<TeXmacs|1.99.4>

<style|<tuple|article|mystyle|structured-section|number-europe|number-long-article>>

<\body>
  <\hide-part|1>
    <date|>
  </hide-part|>

  <\hide-part|2>
    <section|First section|>

    <\proposition>
      Let <math|G\<assign\>O<around*|(|p+1,q+1|)>,p\<in\>\<bbb-N\><rsub|+>,q\<in\>\<bbb-N\>,n\<assign\>p+q>.
      Then, for <math|u\<in\>\<bbb-C\>,\<delta\>\<in\>\<bbb-Z\>/2\<bbb-Z\>>
      we have

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|\<varpi\><rsub|u,\<delta\>><rsup|<around*|(|i|)>>\<simeq\><choice|<tformat|<table|<row|<cell|I<around*|(|i,u+i|)><rsub|i>,>|<cell|\<delta\>=0,>>|<row|<cell|I<around*|(|n-i,u+i|)><rsub|n-i>,>|<cell|\<delta\>=1,>>>>>>|<cell|>>|<row|<cell|>|<cell|I<around*|(|i,\<lambda\>|)><rsub|\<alpha\>>\<assign\>Ind<rsub|P><rsup|G><around*|(|\<wedge\><rsup|i><around*|(|\<bbb-C\><rsup|p,q>|)>\<boxtimes\><around*|(|-1|)><rsup|\<alpha\>>\<boxtimes\>\<bbb-C\><rsub|\<lambda\>>|)>.>|<cell|>>>>
      </eqnarray>
    </proposition>

    <\remark>
      TODO: which <math|K>-types occur?
    </remark>

    <\proof>
      TODO
    </proof>

    <\proposition>
      For <math|G<rprime|'>\<assign\>O<around*|(|p,q+1|)>>, we have
      <math|Hom<rsub|G<rprime|'>><around*|(|I<around*|(|i,\<lambda\>|)><rsub|\<alpha\>>,J<around*|(|j,\<nu\>|)><rsub|\<beta\>>|)>>
      is isomorphic to the space of members <math|F> of
      <math|\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>|)>\<otimes\>Hom<rsub|\<bbb-C\>><around*|(|\<wedge\><rsup|i><around*|(|\<bbb-C\><rsup|p,q>|)>,\<wedge\><rsup|j><around*|(|\<bbb-C\><rsup|p-1,q>|)>|)>>,
      which satisfy:

      <\enumerate>
        <item><math|F> is <math|\<lambda\>-\<nu\>-n>-homogeneous;

        <item><math|F> is <math|O<around*|(|p-1,q|)>>-invariant;

        <item><math|F<around*|(|<around*|(|-1|)>\<cdot\>|)>=<around*|(|-1|)><rsup|\<delta\>>F<around*|(|\<cdot\>|)>>;

        <item><math|N<rprime|'><rsub|+>>-invariance (TODO).
      </enumerate>

      \ 
    </proposition>

    <\proof>
      TODO
    </proof>

    <\fact>
      <label|1:fact-1>

      <\enumerate>
        <item><cite-detail|kobayashi2016classification|Prop.
        5.6><math|Hom<rsub|O<around*|(|n-1|)>><around*|(|\<wedge\><rsup|i><around*|(|\<bbb-C\><rsup|n>|)>,\<wedge\><rsup|j><around*|(|\<bbb-C\><rsup|n-1>|)>\<otimes\>Pol<around*|(|\<bbb-C\><rsup|n>|)>|)>\<neq\>0\<Leftrightarrow\>-1\<leqslant\>j-i\<leqslant\>2>;

        <item><cite-detail|kobayashi2016classification|Lemma 5.6>
        <math|Hom<rsub|O<around*|(|n|)>><around*|(|\<wedge\><rsup|i><around*|(|\<bbb-C\><rsup|n>|)>,\<wedge\><rsup|j><around*|(|\<bbb-C\><rsup|n>|)>\<otimes\>\<cal-H\><rsup|k><around*|(|\<bbb-C\><rsup|n>|)>|)>\<neq\>0\<Rightarrow\>-1\<leqslant\>j-i\<leqslant\>1.>
      </enumerate>
    </fact>

    <\proposition>
      <label|1:prop-q0>For <math|q=0> we have
      <math|Hom<rsub|G<rprime|'>><around*|(|I<around*|(|i,\<lambda\>|)><rsub|\<alpha\>>,J<around*|(|j,\<nu\>|)><rsub|\<beta\>>|)>=0>
      unless <math|-2\<leqslant\>j-i\<leqslant\>1>.
    </proposition>

    <\proof>
      Indeed, suppose <math|j\<nin\><around*|{|i-2,i-1,i,i+1|}>> and
      <math|Hom<rsub|G<rprime|'>><around*|(|I<around*|(|i,\<lambda\>|)><rsub|\<alpha\>>,J<around*|(|j,\<nu\>|)><rsub|\<beta\>>|)>\<ni\>F\<neq\>0>.
      Classification in <cite|kobayashi2016classification> implies that
      <math|supp<around*|(|F|)>> is bigger than <math|<around*|{|0|}>>, thus
      it's restriction to <math|\<bbb-R\><rsup|p,q>-<around*|{|0|}>> induces
      the homorphism

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|H\<in\>Hom<rsub|O<around*|(|p-1|)>><around*|(|C<rsup|\<infty\>><rsub|o><around*|(|\<bbb-R\><rsup|p>-<around*|{|0|}>|)>,\<wedge\><rsup|i><around*|(|\<bbb-R\><rsup|p>|)>\<otimes\>\<wedge\><rsup|j><around*|(|\<bbb-R\><rsup|p-1>|)>|)>,>|<cell|>>>>
      </eqnarray>

      and <math|H=0\<Leftrightarrow\>F=0>. As <math|F> is also homogeneous,
      we can consider it's projection to <math|\<bbb-S\><rsup|p-1>>, which
      induces the homorphism

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|H\<mid\><rsub|\<bbb-S\><rsup|p-1>>\<in\>Hom<rsub|O<around*|(|p-1|)>><around*|(|C<rsup|\<infty\>><around*|(|\<bbb-S\><rsup|p-1>|)>,\<wedge\><rsup|i><around*|(|\<bbb-R\><rsup|p>|)>\<otimes\>\<wedge\><rsup|j><around*|(|\<bbb-R\><rsup|p-1>|)>|)>,>|<cell|>>>>
      </eqnarray>

      and again, <math|H\<mid\><rsub|\<bbb-S\><rsup|p-1>>=0\<Leftrightarrow\>F=0>.

      Now, taking any polynomial <math|p\<in\>Pol<around*|(|\<bbb-R\><rsup|p>|)>>,
      taking its restriction <math|p\<mid\><rsub|\<bbb-S\><rsup|p-1>>> to
      <math|\<bbb-S\><rsup|p-1>>, and computing
      <math|H\<mid\><rsub|\<bbb-S\><rsup|p-1>><around*|(|p\<mid\><rsub|\<bbb-S\><rsup|p-1>>|)>>
      gives us the member of <math|Hom<rsub|O<around*|(|p-1|)>><around*|(|Pol<around*|(|\<bbb-R\><rsup|p>|)>,\<wedge\><rsup|i><around*|(|\<bbb-R\><rsup|p>|)>\<otimes\>\<wedge\><rsup|j><around*|(|\<bbb-R\><rsup|p-1>|)>|)>>,
      which should be zero by Fact <reference|1:fact-1>. This implies that
      <math|H\<mid\><rsub|\<bbb-S\><rsup|p-1>><around*|(|Pol<around*|(|\<bbb-R\><rsup|p>|)>\<mid\><rsub|\<bbb-S\><rsup|p-1>>|)>=0>,
      and by Stone-Weierstrass theorem, this implies that
      <math|H\<mid\><rsub|\<bbb-S\><rsup|p-1>>=0>, which implies <math|F=0>
      and ends the proof.
    </proof>

    <\proposition>
      <label|1:prop-qb1>We have <math|Hom<rsub|G<rprime|'>><around*|(|I<around*|(|i,\<lambda\>|)><rsub|\<alpha\>>,J<around*|(|j,\<nu\>|)><rsub|\<beta\>>|)>=0>
      unless <math|-3\<leqslant\>j-i\<leqslant\>2>.
    </proposition>

    <\proof>
      Assume <math|-3\<leqslant\>j-i\<leqslant\>2> does not hold. More
      precisely, we will show that\ 

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<around*|(|\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>|)>\<otimes\>Hom<around*|(|\<wedge\><rsup|i><around*|(|\<bbb-R\><rsup|p,q>|)>,\<wedge\><rsup|j><around*|(|\<bbb-R\><rsup|p-1,q>|)>|)>|)><rsup|O<around*|(|p-1|)>\<times\>O<around*|(|q|)>>=0.>|<cell|>>>>
      </eqnarray>

      For this (approximating generalized functions by polynomials) it
      suffices to show that

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<around*|(|Pol<around*|(|\<bbb-R\><rsup|p,q>|)>\<otimes\>Hom<around*|(|\<wedge\><rsup|i><around*|(|\<bbb-R\><rsup|p,q>|)>,\<wedge\><rsup|j><around*|(|\<bbb-R\><rsup|p-1,q>|)>|)>|)><rsup|O<around*|(|p-1|)>\<times\>O<around*|(|q|)>>=0.>|<cell|>>>>
      </eqnarray>

      To see the latter, we note that

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<around*|(|Pol<around*|(|\<bbb-R\><rsup|p,q>|)>\<otimes\>Hom<around*|(|\<wedge\><rsup|i><around*|(|\<bbb-R\><rsup|p,q>|)>,\<wedge\><rsup|j><around*|(|\<bbb-R\><rsup|p-1,q>|)>|)>|)><rsup|O<around*|(|p-1|)>\<times\>O<around*|(|q|)>>=>|<cell|>>|<row|<cell|>|<cell|<big|sum><rsub|i<rprime|'>,j<rprime|'>=0><rsup|i,j><around*|(|Pol<around*|(|\<bbb-R\><rsup|p,q>|)>\<otimes\>Hom<around*|(|\<wedge\><rsup|i<rprime|'>><around*|(|\<bbb-R\><rsup|p>|)>\<otimes\>\<wedge\><rsup|i-i<rprime|'>><around*|(|\<bbb-R\><rsup|q>|)>,\<wedge\><rsup|j<rprime|'>><around*|(|\<bbb-R\><rsup|p-1>|)>\<otimes\>\<wedge\><rsup|j-j<rprime|'>><around*|(|\<bbb-R\><rsup|q>|)>|)>|)><rsup|O<around*|(|p-1|)>\<times\>O<around*|(|q|)>>=>|<cell|>>|<row|<cell|>|<cell|<big|sum><rsub|i<rprime|'>,j<rprime|'>=0><rsup|i,j><around*|(|Pol<around*|(|\<bbb-R\><rsup|p>|)>\<otimes\>Pol<around*|(|\<bbb-R\><rsup|q>|)>\<otimes\><around*|(|\<wedge\><rsup|i<rprime|'>><around*|(|\<bbb-R\><rsup|p>|)>\<otimes\>\<wedge\><rsup|i-i<rprime|'>><around*|(|\<bbb-R\><rsup|q>|)>|)>\<otimes\><around*|(|\<wedge\><rsup|j<rprime|'>><around*|(|\<bbb-R\><rsup|p-1>|)>\<otimes\>\<wedge\><rsup|j-j<rprime|'>><around*|(|\<bbb-R\><rsup|q>|)>|)>|)><rsup|O<around*|(|p-1|)>\<times\>O<around*|(|q|)>>=>|<cell|>>|<row|<cell|>|<cell|<big|sum><rsub|i<rprime|'>,j<rprime|'>=0><rsup|i,j><around*|(|Pol<around*|(|\<bbb-R\><rsup|p>|)>\<otimes\>\<wedge\><rsup|i<rprime|'>><around*|(|\<bbb-R\><rsup|p>|)>\<otimes\>\<wedge\><rsup|j<rprime|'>><around*|(|\<bbb-R\><rsup|p-1>|)>|)><rsup|O<around*|(|p-1|)>>\<otimes\><around*|(|Pol<around*|(|\<bbb-R\><rsup|q>|)>\<otimes\>\<wedge\><rsup|i-i<rprime|'>><around*|(|\<bbb-R\><rsup|q>|)>\<otimes\>\<wedge\><rsup|j-j<rprime|'>><around*|(|\<bbb-R\><rsup|q>|)>|)><rsup|O<around*|(|q|)>>=>|<cell|>>>>
      </eqnarray>

      and the first and respectively second item of Fact <reference|1:fact-1>
      imply that if <math|-3\<leqslant\>j-i\<leqslant\>2> does not hold,
      every term in the latter sum should be zero.
    </proof>
  <|hide-part>
    <section|First section|>
  </hide-part>

  <\show-part|3>
    <section|Howe-Tan for differential forms|>

    <date|>

    <\fact>
      <label|2:fact-irreps-of-on>The following holds:

      <\enumerate>
        <item><cite-detail|howe2005stable|1.1>The finitely-dimensional irreps
        of <math|O<around*|(|n|)>> are parametrized by the partitions
        <math|<around*|(|a<rsub|1>\<geq\>a<rsub|2>\<geq\>\<ldots\>\<geq\>a<rsub|n>\<geq\>0|)>>
        of the following two types (here <math|a<rsub|i>\<gtr\>0> and
        <math|k\<in\>\<bbb-N\>\<mid\>2k\<leqslant\>n>):

        <\eqnarray>
          <tformat|<table|<row|<cell|>|<cell|<math-up|Type
          I:><around*|(|a<rsub|1>,a<rsub|2>,\<ldots\>,a<rsub|k>,<wide*|0,0,\<ldots\>,0|\<wide-underbrace\>><rsub|n-k>|)>,>|<cell|>>|<row|<cell|>|<cell|<math-up|Type
          II:> <around*|(|a<rsub|1>,a<rsub|2>,\<ldots\>,a<rsub|k>,<wide*|1,1,\<ldots\>,1|\<wide-underbrace\>><rsub|n-2k>,<wide*|0,0,\<ldots\>,0|\<wide-underbrace\>><rsub|k>|)>.>|<cell|>>>>
        </eqnarray>

        In particular, <math|\<wedge\><rsup|i><around*|(|\<bbb-C\><rsup|n>|)>>
        corresponds to <math|<around*|(|1<rsup|i>|)>> and
        <math|\<cal-H\><rsup|i><around*|(|\<bbb-C\><rsup|n>|)>> to
        <math|<around*|(|i|)>>.

        <item><cite-detail|howe2005stable|2.2.2> Let the partition
        <math|\<lambda\>> representing the finitely-dimensional irrep
        <math|\<tau\><rsub|\<lambda\>>> of <math|O<around*|(|n|)>>. We then
        have
      </enumerate>
    </fact>

    <\proposition>
      Using the parametrization of Fact <reference|2:fact-irreps-of-on>, we
      have

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|>|<cell|>>>>
      </eqnarray>
    </proposition>

    <\proof>
      Fact <reference|2:fact-irreps-of-on> and Frobenius reciprocity.
    </proof>
  <|show-part>
    <section|Howe-Tan for differential forms|>
  </show-part>

  <\hide-part|4>
    <\bibliography|bib|alpha|todai_master.bib>
      <\bib-list|HTW05>
        <bibitem*|HTW05><label|bib-howe2005stable>Roger Howe, Eng-Chye Tan,
        and Jeb Willenbring. <newblock>Stable branching rules for classical
        symmetric pairs. <newblock><with|font-shape|italic|Transactions of
        the American mathematical society>, 357(4):1601\U1626, 2005.

        <bibitem*|KKP16><label|bib-kobayashi2016classification>Toshiyuki
        Kobayashi, Toshihisa Kubo, and Michael Pevzner.
        <newblock>Classification of differential symmetry breaking operators
        for differential forms. <newblock><with|font-shape|italic|Comptes
        Rendus Mathematique>, 354(7):671\U676, 2016.
      </bib-list>
    </bibliography>
  <|hide-part>
    <\bibliography|bib|alpha|todai_master.bib>
      <\bib-list|HTW05>
        <bibitem*|HTW05><label|bib-howe2005stable>Roger Howe, Eng-Chye Tan,
        and Jeb Willenbring. <newblock>Stable branching rules for classical
        symmetric pairs. <newblock><with|font-shape|italic|Transactions of
        the American mathematical society>, 357(4):1601\U1626, 2005.

        <bibitem*|KKP16><label|bib-kobayashi2016classification>Toshiyuki
        Kobayashi, Toshihisa Kubo, and Michael Pevzner.
        <newblock>Classification of differential symmetry breaking operators
        for differential forms. <newblock><with|font-shape|italic|Comptes
        Rendus Mathematique>, 354(7):671\U676, 2016.
      </bib-list>
    </bibliography>
  </hide-part>
</body>

<\initial>
  <\collection>
    <associate|magnification|1.2>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1:fact-1|<tuple|1.1|1|#2>>
    <associate|1:prop-q0|<tuple|1.3|1|#2>>
    <associate|1:prop-qb1|<tuple|1.4|2|#2>>
    <associate|2:fact-irreps-of-on|<tuple|2.1|?|#3>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|2.1|?>>
    <associate|auto.2-1|<tuple|1|?|#2>>
    <associate|auto.3-1|<tuple|2|?|#3>>
    <associate|auto.4-1|<tuple|2.1|?|#4>>
    <associate|bib-howe2005stable|<tuple|HTW05|?|#4>>
    <associate|bib-kobayashi2016classification|<tuple|KKP16|2|#4>>
    <associate|fact-1|<tuple|1.1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      kobayashi2016classification

      kobayashi2016classification

      kobayashi2016classification

      howe2005stable

      kobayashi2016classification
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>First
      section> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Howe-Tan
      for differential forms> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>