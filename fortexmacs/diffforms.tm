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

  <\hide-part|3>
    <section|Howe-Tan for differential forms|<label|sec:howetan>>

    For simplicity we use the following notation:

    <\equation*>
      <stack|<tformat|<table|<row|<cell|O<around*|(|p;q|)>\<assign\>O<around*|(|p|)>\<times\>O<around*|(|q|)>,>>|<row|<cell|SO<rsub|0><around*|(|p;q|)>\<assign\>SO<rsub|0><around*|(|p|)>\<times\>SO<rsub|0><around*|(|q|)>>>|<row|<cell|\<bbb-S\><rsup|p;q>\<assign\>\<bbb-S\><rsup|p>\<times\>\<bbb-S\><rsup|q>>>>>>
    </equation*>

    <subsection|Main results|>

    <\proposition>
      <label|prop:so>Suppose <math|p,q\<in\>\<bbb-N\>> and assume that
      <math|p\<geqslant\>q> for definiteness.

      <\description>
        <item*|<math|p\<gtr\>q=0> case>Then,
        <math|\<Omega\><rsup|k><around*|(|\<bbb-S\><rsup|p;q>|)>> is
        multiplicity-free as <math|O<around*|(|p+1;q+1|)>>-module. The only
        irrep's that occur are <math|\<tau\>\<otimes\><around*|(|\<pm\>|)>>,
        where <math|\<tau\>\<in\><wide|O|^><around*|(|p+1|)>> runs through
        the list in Lemma <reference|lem:howetan:ind-o> and
        <math|<around*|{|+,-|}>\<assign\><wide|O|^><around*|(|q|)>=<wide|O|^><around*|(|1|)>>.
      </description>

      In subsequent cases, we assume that <math|p\<geqslant\>q\<gtr\>0>.
      Then,\ 

      <\equation*>
        \<forall\>\<tau\>\<in\><wide|O|^><around*|(|p+1;q+1|)>,<space|1em><around*|[|\<Omega\><rsup|k><around*|(|\<bbb-S\><rsup|p;q>|)>:\<tau\>|]>\<leqslant\>2.
      </equation*>

      <\folded>
        \;
      <|folded>
        Moreover, the following irrep's occur in
        <math|\<Omega\><rsup|k><around*|(|\<bbb-S\><rsup|p;q>;\<bbb-C\>|)>\<mid\><rsub|SO<rsub|0><around*|(|p+1;q+1|)>>>
        together with corresponding multiplicities (see Fact
        <reference|fact:irreps-n-branch-so> for notation):

        <\equation*>
          <text|TODO>
        </equation*>
      </folded>
    </proposition>

    <\folded|>
      <\remark*>
        TODO
      </remark*>
    </folded>

    <subsection|Auxiliary Lemmas|>

    <\lemma>
      <label|prop:restr-connected>Suppose
      <math|G\<supset\>H,G<rprime|'>\<supset\>H<rprime|'>>: pairs of Lie
      groups, such that <math|G\<supset\>G<rprime|'>,H\<supset\>H<rprime|'>>
      and

      <\enumerate>
        <item><math|G<rsub|0>H=G>,

        <item><math|G<rsub|0>\<cap\>H=H<rsub|0>>,
      </enumerate>

      and <math|<around*|(|\<pi\>,V|)>> is the finitely-dimensional
      representation of <math|H>. Then, the map

      <\equation*>
        <tabular|<tformat|<table|<row|<cell|<around*|{|f\<in\>C<rsup|\<infty\>><around*|(|G,V|)>\<mid\>\<ldots\>|}>=:>|<cell|Ind<rsub|H><rsup|G><around*|(|V|)>>|<cell|\<rightarrow\>>|<cell|Ind<rsub|H<rsub|0>><rsup|G<rsub|0>><around*|(|V\<mid\><rsub|H<rsub|0>>|)>>|<cell|\<assign\><around*|{|f\<in\>C<rsup|\<infty\>><around*|(|G<rsub|0>,V|)>\<mid\>\<ldots\>|}>>>|<row|<cell|>|<cell|f>|<cell|\<mapsto\>>|<cell|f\<mid\><rsub|G<rsub|0>>>|<cell|>>>>>
      </equation*>

      is an isomorphism of <math|G<rsub|0>>-modules.
    </lemma>

    <\remark*>
      Note that this setting is satisfied by the pair

      <\equation*>
        <stack|<tformat|<table|<row|<cell|<around*|(|G,H|)>=<around*|(|O<around*|(|p+1;q+1|)>,O<around*|(|p;q|)>|)>,>>|<row|<cell|<around*|(|G<rsub|0>,H<rsub|0>|)>=<around*|(|SO<rsub|0><around*|(|p+1;q+1|)>,SO<rsub|0><around*|(|p;q|)>|)>.>>>>>
      </equation*>
    </remark*>

    <\proof>
      The assumption <math|G<rsub|0>H=G> ensures injectivity, while the
      <math|G<rsub|0>\<cap\>H=H<rsub|0>> ensures surjectivity.
    </proof>

    <\fact>
      <label|fact:irreps-n-branch-so><dueto|<cite|knapp2013lie>,Chap. IX>The
      following holds:

      <\enumerate>
        <item>

        <\eqnarray>
          <tformat|<table|<row|<cell|>|<cell|<tabular|<tformat|<table|<row|<cell|HV<around*|(|N|)>\<assign\><choice|<tformat|<table|<row|<cell|\<lambda\><rsub|1>\<geqslant\>\<lambda\><rsub|2>\<geqslant\>\<ldots\>\<geqslant\>\<lambda\><rsub|k-1>\<geqslant\><around*|\||\<lambda\><rsub|k>|\|>\<geqslant\>0,>|<cell|N=2k>>|<row|<cell|\<lambda\><rsub|1>\<geqslant\>\<lambda\><rsub|2>\<geqslant\>\<ldots\>\<geqslant\>\<lambda\><rsub|k>\<geqslant\>0,>|<cell|N=2k+1>>>>>>|<cell|<long-arrow|\<rubber-rightarrow\>|\<sim\>|\<tau\><rsub|N>>>|<cell|<wide|SO|^><around*|(|N|)>>>|<row|<cell|\<lambda\>=<around*|(|\<lambda\><rsub|i>|)>>|<cell|\<mapsto\>>|<cell|<around*|[|\<lambda\>|]>=\<tau\><rsub|N><around*|(|\<lambda\>|)>>>>>>>|<cell|>>>>
        </eqnarray>

        In particular, <math|<around*|[|a|]>=\<cal-H\><rsup|a>> and

        <\equation*>
          <stack|<tformat|<table|<row|<cell|\<Lambda\><rsup|i><around*|(|\<bbb-C\><rsup|N>|)>=<choice|<tformat|<table|<row|<cell|<around*|[|1<rsup|i>|]>>|<cell|<around*|(|i\<less\>N/2|)>>>|<row|<cell|<around*|[|1<rsup|N-i>|]>>|<cell|<around*|(|i\<gtr\>N/2|)>>>|<row|<cell|<around*|[|1<rsup|i-1>,1|]>\<oplus\><around*|[|1<rsup|i-1>,-1|]>>|<cell|<around*|(|i=N/2\<in\>\<bbb-N\><rsub|+>|)>>>>>><text|<cite-detail|knapp2013lie|Chap.
          V, Prob. 8\U10>>>>>>>
        </equation*>

        <item>We have

        <\equation*>
          <around*|[|<stack|<tformat|<table|<row|<cell|\<tau\><rsub|N+1><around*|(|a|)>>>>>>:\<tau\><rsub|N><around*|(|c|)>|]>=<choice|<tformat|<table|<row|<cell|1>|<cell|<around*|(|N=2n|)>>>|<row|<cell|>|<cell|<around*|(|a<rsub|1>\<geqslant\>c<rsub|1>\<geqslant\>a<rsub|2>\<geqslant\>c<rsub|2>\<geqslant\>\<ldots\>\<geqslant\>a<rsub|n-1>\<geqslant\>c<rsub|n-1>\<geqslant\>a<rsub|n>\<geqslant\><around*|\||c<rsub|n>|\|>|)>>>|<row|<cell|1>|<cell|<around*|(|N=2n-1|)>>>|<row|<cell|>|<cell|<around*|(|a<rsub|1>\<geqslant\>c<rsub|1>\<geqslant\>a<rsub|2>\<geqslant\>c<rsub|2>\<geqslant\>\<ldots\>\<geqslant\>a<rsub|n-1>\<geqslant\>c<rsub|n-1>\<geqslant\><around*|\||a<rsub|n>|\|>|)>>>|<row|<cell|0>|<cell|<around*|(|<text|otherwise>|)>>>>>>
        </equation*>
      </enumerate>
    </fact>

    <\lemma>
      <label|lem:howetan:so>Only the following irrep's of
      <math|SO<around*|(|N|)>> appear in <math|Ind<rsub|SO<around*|(|N|)>><rsup|SO<around*|(|N+1|)>>\<Lambda\><rsup|i><rsub|\<varepsilon\>><around*|(|\<bbb-C\><rsup|N>|)>>
      (all with multiplicity one):

      <\equation*>
        <choice|<tformat|<table|<row|<cell|<around*|{|<around*|[|a|]>|}><rsub|a\<in\>\<bbb-N\><rsub|+>>\<sqcup\><around*|{|<around*|[|0|]>|}>>|<cell|<around*|(|i\<in\><around*|{|0,N|}>|)>>|<cell|>>|<row|<cell|<around*|{|<around*|[|a:1<rsup|n-1>|]>|}><rsub|a\<in\>\<bbb-N\><rsub|+>>>|<cell|<around*|(|i=n|)>>|<cell|<around*|(|N=2n|)>>>|<row|<cell|<around*|{|<around*|[|a:1<rsup|j-1>|]>|}><rsub|a\<in\>\<bbb-N\><rsub|+>>\<sqcup\><around*|{|<around*|[|a:1<rsup|j>|]>|}><rsub|a\<in\>\<bbb-N\><rsub|+>>>|<cell|<around*|(|<text|otherwise,
        <math|j\<assign\>min<around*|{|i,N-i|}>>>|)>>|<cell|>>|<row|<cell|<around*|{|<around*|[|a:1<rsup|n-2>:\<varepsilon\><rprime|'>|]>|}><rsub|a\<in\>\<bbb-N\><rsub|+>,\<varepsilon\><rprime|'>\<in\><around*|{|\<pm\>1|}>>>|<cell|<around*|(|i\<in\><around*|{|n-1,n|}>\\<around*|{|0,2n-1|}>|)>,>|<cell|<around*|(|N=2n-1|)>>>|<row|<cell|<around*|{|<around*|[|a:1<rsup|j-1>|]>|}><rsub|a\<in\>\<bbb-N\><rsub|+>>\<sqcup\><around*|{|<around*|[|a:1<rsup|j>|]>|}><rsub|a\<in\>\<bbb-N\><rsub|+>>>|<cell|<around*|(|<text|otherwise,
        <math|j\<assign\>min<around*|{|i,N-i|}>>>|)>>|<cell|>>>>>
      </equation*>

      where <math|\<varepsilon\>\<in\><around*|{|\<pm\>1|}>=<around*|{|\<pm\>|}>>
      and

      <\equation*>
        \<Lambda\><rsup|i><rsub|\<varepsilon\>><around*|(|\<bbb-C\><rsup|N>|)>\<assign\><choice|<tformat|<table|<row|<cell|<around*|[|1<rsup|i-1>,\<varepsilon\>|]>>|<cell|<around*|(|i=n,N=2n\<in\>2\<bbb-N\><rsub|+>|)>>>|<row|<cell|\<Lambda\><rsup|i><around*|(|\<bbb-C\><rsup|N>|)>>|<cell|<around*|(|<text|otherwise>|)>.>>>>>
      </equation*>
    </lemma>

    <\proof>
      Fact <reference|fact:irreps-n-branch-so> and Frobenious reciprocity.
    </proof>

    <\lemma>
      <label|lem:howetan:case1>First case of proposition <reference|prop:so>
      holds.
    </lemma>

    <\proof>
      As it is clear that as <math|O<around*|(|p+1;q+1|)>>-modules

      <\equation*>
        <stack|<tformat|<table|<row|<cell|\<Omega\><rsup|k><around*|(|\<bbb-S\><rsup|p;q>;\<bbb-C\>|)>=Ind<rsub|O<around*|(|p;q|)>><rsup|O<around*|(|p+1;q+1|)>><around*|(|\<Lambda\><rsup|k><around*|(|\<bbb-C\><rsup|p+q>|)>|)>=<big|oplus><rsub|<stack|<tformat|<table|<row|<cell|i+j=k>>|<row|<cell|i,j\<geqslant\>0>>>>>>Ind<rsub|O<around*|(|p|)>><rsup|O<around*|(|p+1|)>><around*|(|\<Lambda\><rsup|i><around*|(|\<bbb-C\><rsup|p>|)>|)>\<otimes\>Ind<rsub|O<around*|(|q|)>><rsup|O<around*|(|q+1|)>><around*|(|\<Lambda\><rsup|j><around*|(|\<bbb-C\><rsup|q>|)>|)>>>|<row|<cell|<around*|(|<tabular|<tformat|<table|<row|<cell|\<tau\>:>|<cell|O<around*|(|1|)>>|<cell|\<curvearrowright\>>|<cell|\<bbb-C\><rsup|2>>>|<row|<cell|>|<cell|-1>|<cell|\<mapsto\>>|<cell|<around*|(|<around*|(|x,y|)>\<mapsto\><around*|(|y,x|)>|)>>>>>>|)>>>|<row|<cell|=<big|oplus><rsub|<stack|<tformat|<table|<row|<cell|i+j=k>>|<row|<cell|i\<geqslant\>0;j=0>>>>>>Ind<rsub|O<around*|(|p|)>><rsup|O<around*|(|p+1|)>><around*|(|\<Lambda\><rsup|i><around*|(|\<bbb-C\><rsup|p>|)>|)>\<otimes\><wide*|Ind<rsub|O<around*|(|q|)>><rsup|O<around*|(|q+1|)>><around*|(|1|)>|\<wide-underbrace\>><rsub|=\<tau\>>=Ind<rsub|O<around*|(|p|)>><rsup|O<around*|(|p+1|)>><around*|(|\<Lambda\><rsup|k><around*|(|\<bbb-C\><rsup|p>|)>|)>\<otimes\>\<tau\>.>>>>>
      </equation*>

      Now, Lemma <reference|lem:howetan:ind-o> together with the observation
      that <math|\<tau\>\<mid\><rsub|O<around*|(|1|)>>=<around*|(|+|)>\<oplus\><around*|(|-|)>>
      imply the result.
    </proof>

    <\fact>
      <label|fact:howetan:oreps><cite-detail|goodman2000representations|Sec.
      5.5.5> (\Pirreps of <math|O<around*|(|N|)>>\Q)

      <\enumerate>
        <item>We have

        <\equation*>
          <wide|O|^><around*|(|2k+1|)>=<around*|{|<around*|(|<around*|[|\<lambda\>|]><rsup|\<varepsilon\>>,V<rsup|\<lambda\>,\<varepsilon\>><rsup|>|)>|}><rsub|\<lambda\>\<in\>HV<around*|(|2k+1|)>,\<varepsilon\>=\<pm\>1>
        </equation*>

        where <math|<around*|[|\<lambda\>|]><rsup|\<varepsilon\>>> is
        characterized by <math|<around*|[|\<lambda\>|]><rsup|\<varepsilon\>>\<mid\><rsub|SO<around*|(|2k+1|)>>=<around*|[|\<lambda\>|]>>
        and <math|<around*|[|\<lambda\>|]><rsup|\<varepsilon\>><around*|(|-id<rsub|2k+1>|)>=\<varepsilon\>>.

        <item>We have

        <\equation*>
          <wide|O|^><around*|(|2k|)>=<around*|{|<around*|(|<around*|[|\<lambda\>|]><rsup|\<varepsilon\>>,V<rsup|\<lambda\>\<comma\>\<varepsilon\>><rsup|>|)>|}><rsub|\<lambda\>\<in\>HV<around*|(|2k|)>\<mid\>\<lambda\><rsub|k>=0,\<varepsilon\>=\<pm\>1>\<sqcup\><around*|{|<around*|(|<around*|[|\<lambda\>|]>,V<rsup|\<lambda\>><rsup|>|)>|}><rsub|\<lambda\>\<in\>HV<around*|(|2k|)>\<mid\>\<lambda\><rsub|k>\<gtr\>0>
        </equation*>

        where <math|<around*|[|\<lambda\>|]><rsup|\<varepsilon\>>> is
        characterized by <math|<around*|[|\<lambda\>|]><rsup|\<varepsilon\>>\<mid\><rsub|SO<around*|(|2k|)>>=<around*|[|\<lambda\>|]>>
        and <math|<around*|[|\<lambda\>|]><rsup|\<varepsilon\>><around*|(|g<rsub|0>|)>=\<varepsilon\>>,
        where

        <\equation*>
          g<rsub|0>\<assign\>diag<around*|(|1<rsub|k-1>,<around*|[|<tabular|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|0>>>>>|]>,1<rsub|k-1>|)>,
        </equation*>

        and <math|<around*|[|\<lambda\>|]>\<assign\>Ind<rsub|SO<around*|(|2k|)>><rsup|O<around*|(|2k|)>><around*|[|\<lambda\>|]>>
        (and <math|<around*|[|\<lambda\>|]>\<mid\><rsub|SO<around*|(|2k|)>>=<around*|[|\<lambda\>|]>\<oplus\><around*|[|\<lambda\><rsub|1>,\<ldots\>,\<lambda\><rsub|k-1>,-\<lambda\><rsub|k>|]>>).
      </enumerate>
    </fact>

    <\lemma>
      <label|lem:howetan:ind-o>Suppose <math|p\<gtr\>0>. Then, as
      <math|O<around*|(|p+1|)>> module, the representation
      <math|Ind<rsub|O<around*|(|p|)>><rsup|O<around*|(|p+1|)>><around*|(|\<Lambda\><rsup|k><around*|(|\<bbb-C\><rsup|p>|)>|)>>
      is multiplicity-free and contains the following irrep's (see Fact
      <reference|fact:howetan:oreps> for notation)<\footnote>
        TODO: eliminate ? marks
      </footnote>

      <\equation*>
        <choice|<tformat|<table|<row|<cell|<around*|{|<around*|[|a|]><rsup|<around*|(|-1|)><rsup|a>>|}><rsub|a\<in\>\<bbb-N\>>>|<cell|<around*|(|k=0|)>>|<cell|>|<cell|o>|<cell|<around*|(|0|)>>>|<row|<cell|<around*|{|<around*|[|a|]><rsup|<around*|(|-1|)><rsup|a+1>>|}><rsub|a\<in\>\<bbb-N\>>>|<cell|<around*|(|k=p|)>>|<cell|>|<cell|o>|<cell|<around*|(|0|)>>>|<row|<cell|<around*|{|<around*|[|a:1<rsup|n-1>|]><rsup|\<varepsilon\>>|}><rsub|a\<in\>\<bbb-N\><rsub|+>,\<varepsilon\>\<in\><around*|{|\<pm\>|}>>>|<cell|<around*|(|k=n|)>>|<cell|<around*|(|p=2n|)>>|<cell|o>|<cell|<around*|(|n-1|)>>>|<row|<cell|<around*|{|<around*|[|a:1<rsup|j-1>|]>|}><rsub|a\<in\>\<bbb-N\><rsub|+>>\<sqcup\><around*|{|<around*|[|a:1<rsup|j>|]>|}><rsub|a\<in\>\<bbb-N\><rsub|+>>>|<cell|<around*|(|<text|otherwise,
        <math|j\<assign\>min<around*|{|k,p-k|}>>>|)>>|<cell|>|<cell|?>|<cell|<around*|(|j-1|)>\<sqcup\><around*|(|j|)>>>|<row|<cell|<around*|{|<around*|[|a:1<rsup|n-1>|]>|}><rsub|a\<in\>\<bbb-N\><rsub|+>>>|<cell|<around*|(|k\<in\><around*|{|n-1,n|}>\\<around*|{|0,2n-1|}>|)>,>|<cell|<around*|(|p=2n-1|)>>|<cell|o>|<cell|<around*|(|n-1|)>>>|<row|<cell|<around*|{|<around*|[|a:1<rsup|j-1>|]>|}><rsub|a\<in\>\<bbb-N\><rsub|+>>\<sqcup\><around*|{|<around*|[|a:1<rsup|j>|]>|}><rsub|a\<in\>\<bbb-N\><rsub|+>>>|<cell|<around*|(|<text|otherwise,
        <math|j\<assign\>min<around*|{|k,p-k|}>>>|)>.>|<cell|>|<cell|?>|<cell|<around*|(|j-1|)>\<sqcup\><around*|(|j|)>>>>>>
      </equation*>
    </lemma>

    <\proof>
      First of all, Facts <reference|fact:irreps-n-branch-so> and
      <reference|fact:howetan:oreps> imply together that
      <math|\<Lambda\><rsup|k><around*|(|\<bbb-C\><rsup|p>|)>> is irreducible
      as <math|O<around*|(|p|)>>-module for all <math|k>. Then, Frobenious
      multiplicity and <cite-detail|zbMATH02248506|Fact 31> imply the
      multiplicity-freeness part. Now, in order to determine the
      decomposition in irrep's, we use Fact <reference|fact:howetan:oreps>
      and consider the restriction of <math|Ind<rsub|O<around*|(|p|)>><rsup|O<around*|(|p+1|)>><around*|(|\<Lambda\><rsup|k><around*|(|\<bbb-C\><rsup|p>|)>|)>>
      to <math|SO<around*|(|p|)>>. Then, Lemmas
      <reference|prop:restr-connected> and <reference|lem:howetan:ind-o>
      together with some manual inspection, imply the result.

      Let us give some more details:

      <\itemize>
        <item>The item <math|p=2n-1,k\<in\><around*|{|n-1,n|}>\\<around*|{|0,2n-1|}>>
        follows by Fact <reference|fact:howetan:oreps>;

        <item>The item <math|k=n,p=2n> follows:

        <\equation*>
          <stack|<tformat|<twith|table-halign|l>|<cwith|1|-1|2|2|cell-halign|l>|<table|<row|<cell|Ind<rsub|O<around*|(|p|)>><rsup|O<around*|(|p+1|)>><around*|(|\<Lambda\><rsup|k><around*|(|\<bbb-C\><rsup|p>|)>|)>\<mid\><rsub|SO<around*|(|p+1|)>>>|<cell|<around*|(|<text|Lemma
          <reference|prop:restr-connected>>|)>>>|<row|<cell|=Ind<rsub|SO<around*|(|2n|)>><rsup|SO<around*|(|2n+1|)>><around*|(|\<Lambda\><rsup|n><around*|(|\<bbb-C\><rsup|2n>|)>\<mid\><rsub|SO<around*|(|2n+1|)>>|)>>|<cell|<around*|(|<text|Fact
          <reference|fact:irreps-n-branch-so>>|)>>>|<row|<cell|=Ind<rsub|SO<around*|(|2n|)>><rsup|SO<around*|(|2n+1|)>><around*|(|<around*|[|1<rsup|n-1>,1|]>|)>\<oplus\>Ind<rsub|SO<around*|(|2n|)>><rsup|SO<around*|(|2n+1|)>><around*|(|<around*|[|1<rsup|n-1>,-1|]>|)>>|<cell|<around*|(|<text|Lemma
          <reference|lem:howetan:ind-o>>|)>>>|<row|<cell|<around*|(|<big|oplus><rsub|a\<in\>\<bbb-N\><rsub|+>><around*|[|a:1<rsup|n-1>|]>|)><rsup|\<oplus\>2>>|<cell|>>>>>
        </equation*>

        whereas answer follows by multiplicity-freeness of
        <math|Ind<rsub|O<around*|(|p|)>><rsup|O<around*|(|p+1|)>><around*|(|\<Lambda\><rsup|k><around*|(|\<bbb-C\><rsup|p>|)>|)>>
        shown above and Fact <reference|fact:howetan:oreps>.

        <item>Items <math|k=0> and <math|k=p> follows by the explicit
        decomposition formula for harmonic polynomials (see
        <cite|kobayashi2015symmetry>, for example).
      </itemize>

      \;
    </proof>

    <\lemma>
      <label|lem:howetan:mult2>Suppose the setting as in Proposition
      <reference|prop:so> and <math|p\<geqslant\>q\<gtr\>0>. Then

      <\equation*>
        \<forall\>\<tau\>\<in\><wide|O|^><around*|(|p+1;q+1|)>,<space|1em><around*|[|\<Omega\><rsup|k><around*|(|\<bbb-S\><rsup|p;q>|)>:\<tau\>|]>\<leqslant\>2.
      </equation*>
    </lemma>

    <\proof>
      TODO
    </proof>

    <subsection|Proofs|>

    <\proof>
      (of Proposition <reference|prop:so>) As the first case holds by Lemma
      <reference|lem:howetan:case1>, so in subsequent, we assume that
      <math|p\<geqslant\>q\<gtr\>0>.

      As it is clear that as <math|O<around*|(|p+1;q+1|)>>-module

      <\equation*>
        \<Omega\><rsup|k><around*|(|\<bbb-S\><rsup|p;q>;\<bbb-C\>|)>=Ind<rsub|O<around*|(|p;q|)>><rsup|O<around*|(|p+1;q+1|)>><around*|(|\<Lambda\><rsup|k><around*|(|\<bbb-C\><rsup|p+q>|)>|)>,
      </equation*>

      we note that the Remark after the Lemma
      <reference|prop:restr-connected> implies that we can consider instead
      the representation

      <\equation*>
        Ind<rsub|SO<rsub|0><around*|(|p;q|)>><rsup|SO<rsub|0><around*|(|p+1;q+1|)>><around*|(|\<Lambda\><rsup|k><around*|(|\<bbb-C\><rsup|p+q>|)>|)>=<big|oplus><rsub|<stack|<tformat|<table|<row|<cell|i+j=k>>|<row|<cell|i,j\<geqslant\>0>>>>>>Ind<rsub|SO<around*|(|p|)>><rsup|SO<around*|(|p+1|)>><around*|(|\<Lambda\><rsup|i><around*|(|\<bbb-C\><rsup|p>|)>|)>\<otimes\>Ind<rsub|SO<around*|(|q|)>><rsup|SO<around*|(|q+1|)>><around*|(|\<Lambda\><rsup|j><around*|(|\<bbb-C\><rsup|q>|)>|)>.
      </equation*>

      The fact that \ <math|\<forall\>\<tau\>\<in\><wide|O|^><around*|(|p+1;q+1|)>,<space|1em><around*|[|\<Omega\><rsup|k><around*|(|\<bbb-S\><rsup|p;q>|)>:\<tau\>|]>\<leqslant\>2>
      follows from Lemma <reference|lem:howetan:mult2>.
    </proof>
  <|hide-part>
    <section|Howe-Tan for differential forms|<label|sec:howetan>>
  </hide-part>

  <\show-part|4>
    <section|Symmetry breaking for full orthogonal groups
    <math|O<around*|(|N|)>>|>

    <subsection|Parametrization and explicit construction of irrep's of
    <math|O<around*|(|N|)>>|>

    \;

    <subsection|Characters of irrep's of <math|O<around*|(|N|)>>|>

    <\fact>
      <label|2:fact-irreps-of-on>The following holds:

      <\enumerate>
        <item><cite-detail|howe2005stable|1.1>The finitely-dimensional irreps
        of <math|O<around*|(|n|)>> are parametrized by the partitions
        <math|<around*|(|a<rsub|1>\<geq\>a<rsub|2>\<geq\>\<ldots\>\<geq\>a<rsub|n>\<geq\>0|)>>
        of the following two types (here <math|a<rsub|i>\<gtr\>0> and
        <math|k\<assign\>max<around*|{|k\<in\>\<bbb-N\>\<mid\>2k\<leqslant\>n|}>>):

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

    <cite|weyl2016classical>

    <subsection|Playground|>

    <subsection|Irreps of <math|SO<around*|(|n|)>> and
    <math|O<around*|(|n|)>>|>

    <\fact>
      <cite-detail|fulton2013representation|Ÿ19.5, Thm. 19.22> (\Pexplicit
      model for irreps of <math|O<around*|(|N|)>>\Q) Let
      <math|\<lambda\>\<in\>HV<around*|(|N|)>> such that if
      <math|\<lambda\>=2k>, then <math|\<lambda\><rsub|k>\<geqslant\>0>, and
      <math|d\<assign\><around*|\||\<lambda\>|\|>\<assign\><big|sum><rsub|i\<geqslant\>1>\<lambda\><rsub|i>>
      Make the following definitions:

      <\enumerate>
        <item>For <math|Q<around*|(|x,y|)>=<around*|\<langle\>|x,y|\<rangle\>>>
        being the canonical quadratic form on
        <math|V\<assign\>\<bbb-C\><rsup|N>> and pair
        <math|p,q\<mid\>1\<leqslant\>p\<less\>q\<leqslant\>d> we define a
        contraction

        <\equation*>
          <stack|<tformat|<table|<row|<cell|\<Phi\><rsub|d><rsup|p,q>:V<rsup|\<otimes\>d>\<rightarrow\>V<rsup|\<otimes\>d-2>>>|<row|<cell|v<rsub|1>\<otimes\>\<ldots\>\<otimes\>v<rsub|d>\<mapsto\>Q<around*|(|v<rsub|p>,v<rsub|q>|)>\<otimes\>v<rsub|1>\<otimes\>\<ldots\>\<otimes\><wide|v<rsub|p>|^>\<otimes\>\<ldots\>\<otimes\><wide|v<rsub|q>|^>\<otimes\>\<ldots\>\<otimes\>v<rsub|d>>>>>>
        </equation*>

        (here <math|<wide|v<rsub|p>|^>> means, for example, that
        <math|v<rsub|p>> is omitted). We let
        <math|V<rsup|<around*|[|d|]>>\<subset\>V<rsup|\<otimes\>d>> to be the
        intersection of kernel of all <math|\<Phi\><rsub|d><rsup|p,q>> for
        all possible <math|1\<leqslant\>p\<less\>q\<leqslant\>d>.

        <item><cite-detail|fulton2013representation|Ÿ4.1> To
        <math|\<lambda\>> we associate filled Young diagram. For example, to
        <math|<around*|(|3,3,2,1,1|)>> we associate\ 

        <center|<block|<tformat|<cwith|3|3|3|3|cell-tborder|1ln>|<cwith|2|2|3|3|cell-bborder|1ln>|<cwith|3|3|3|3|cell-lborder|1ln>|<cwith|3|3|2|2|cell-rborder|1ln>|<cwith|3|3|3|3|cell-rborder|0ln>|<cwith|4|4|3|3|cell-tborder|0ln>|<cwith|3|3|3|3|cell-bborder|0ln>|<cwith|4|4|3|3|cell-rborder|0ln>|<cwith|5|5|3|3|cell-tborder|0ln>|<cwith|4|4|3|3|cell-bborder|0ln>|<cwith|5|5|3|3|cell-bborder|0ln>|<cwith|5|5|3|3|cell-rborder|0ln>|<cwith|5|5|2|2|cell-bborder|0ln>|<cwith|5|5|2|2|cell-lborder|1ln>|<cwith|5|5|1|1|cell-rborder|1ln>|<cwith|5|5|2|2|cell-rborder|0ln>|<cwith|5|5|3|3|cell-lborder|0ln>|<cwith|4|4|2|2|cell-tborder|1ln>|<cwith|3|3|2|2|cell-bborder|1ln>|<cwith|4|4|2|2|cell-bborder|0ln>|<cwith|5|5|2|2|cell-tborder|0ln>|<cwith|4|4|2|2|cell-lborder|1ln>|<cwith|4|4|1|1|cell-rborder|1ln>|<cwith|4|4|2|2|cell-rborder|0ln>|<cwith|4|4|3|3|cell-lborder|0ln>|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|4>|<cell|5>|<cell|6>>|<row|<cell|7>|<cell|8>|<cell|>>|<row|<cell|9>|<cell|>|<cell|>>|<row|<cell|10>|<cell|>|<cell|>>>>>>

        We also associate

        <\equation*>
          <stack|<tformat|<table|<row|<cell|P<rsub|\<lambda\>>=<around*|{|g\<in\>\<frak-S\><rsub|d>\<mid\>g
          <math-up| preserves every row of
          diagram>|}>,>>|<row|<cell|Q<rsub|\<lambda\>>=<around*|{|g\<in\>\<frak-S\><rsub|d>\<mid\>g
          <math-up| preserves every column of diagram>|}>.>>>>>
        </equation*>

        <item><cite-detail|fulton2013representation|(4.2)> \ we introduce\ 

        <\equation*>
          <stack|<tformat|<table|<row|<cell|e<rsub|g>:V<rsup|d>\<rightarrow\>V<rsup|d>:<math-up|permutes
          components according to <math|g\<in\>\<frak-S\><rsub|d>>
          >>>|<row|<cell|a<rsub|\<lambda\>>\<assign\><big|sum><rsub|g\<in\>P>e<rsub|p>>>|<row|<cell|Im<around*|(|a<rsub|\<lambda\>>|)>=Sym<rsup|\<lambda\><rsub|1>>V\<otimes\>Sym<rsup|\<lambda\><rsub|2>>V\<otimes\>\<ldots\>\<otimes\>Sym<rsup|\<lambda\><rsub|k>>V\<subset\>V<rsup|\<otimes\>d>>>|<row|<cell|b<rsub|\<lambda\>>\<assign\><big|sum><rsub|g\<in\>Q>sgn<around*|(|g|)>e<rsub|g>>>|<row|<cell|Im<around*|(|b<rsub|\<lambda\>>|)>=<big|wedge><rsup|\<mu\><rsub|1>>V\<otimes\><big|wedge><rsup|\<mu\><rsub|2>>V\<otimes\>\<ldots\>\<otimes\><big|wedge><rsup|\<mu\><rsub|t>>\<subset\>V<rsup|\<otimes\>d>:<math-up|here
          <math|\<mu\>> is conjugate to <math|\<lambda\>>>>>|<row|<cell|c<rsub|\<lambda\>>\<assign\>a<rsub|\<lambda\>>\<circ\>b<rsub|\<lambda\>>>>>>>
        </equation*>
      </enumerate>

      Then,\ 

      <\equation*>
        S<rsub|<around*|[|\<lambda\>|]>>V:=Im<around*|(|c<rsub|\<lambda\>>:V<rsup|<around*|[|d|]>>\<rightarrow\>V<rsup|<around*|[|d-2|]>>|)>
      </equation*>

      is irrep of <math|SO<around*|(|N|)>> corresponding to <math|\<lambda\>>
      if <math|N>: odd or <math|N=2k,\<lambda\><rsub|k>=0> and splits into
      sum of irreps corresponding to <math|<around*|(|\<lambda\><rsub|1>,\<ldots\>,+\<lambda\><rsub|k>|)>,<around*|(|\<lambda\><rsub|1>,\<ldots\>,-\<lambda\><rsub|k>|)>>
      otherwise.
    </fact>

    <\remark>
      Note the following:

      <\enumerate>
        <item>As in <cite-detail|fulton2013representation|>, here we treat
        <math|Sym<rsup|d>V,<big|wedge><rsup|d>V> as subspaces of
        <math|V<rsup|\<otimes\>d>> (recall that originally they were defined
        as quotients) via the embeddings

        <\equation*>
          <stack|<tformat|<table|<row|<cell|<big|wedge><rsup|d>V>|<cell|\<hookrightarrow\>>|<cell|V<rsup|\<otimes\>d>,>>|<row|<cell|v<rsub|1>\<wedge\>\<ldots\>\<wedge\>v<rsub|d>>|<cell|\<mapsto\>>|<cell|<big|sum><rsub|\<sigma\>\<in\>\<frak-S\><rsub|d>>sgn<around*|(|\<sigma\>|)>v<rsub|\<sigma\><around*|(|1|)>>\<otimes\>\<ldots\>\<otimes\>v<rsub|\<sigma\><around*|(|d|)>>,>>|<row|<cell|Sym<rsup|d>V>|<cell|\<hookrightarrow\>>|<cell|V<rsup|\<otimes\>d>,>>|<row|<cell|v<rsub|1>\<cdot\>\<ldots\>\<cdot\>v<rsub|d>>|<cell|\<mapsto\>>|<cell|<big|sum><rsub|\<sigma\>\<in\>\<frak-S\><rsub|d>>v<rsub|\<sigma\><around*|(|1|)>>\<otimes\>\<ldots\>\<otimes\>v<rsub|\<sigma\><around*|(|d|)>>.>>>>>
        </equation*>
      </enumerate>
    </remark>

    <subsection|Characters of irreps of <math|SO<around*|(|N|)>>|>

    <\definition>
      Let <math|G=SO<around*|(|N|)>> and <math|\<tau\>> be irrep of <math|G>.
      We then let <math|D<rsub|\<tau\>><around*|(|g|)>\<assign\>tr<around*|(|\<tau\><around*|(|g|)>|)>>
      and <math|D<rsub|\<tau\>>> is then continuous function on <math|G>,
      which is invariant under <math|Ad<around*|(|G|)>>.

      <math|S T<rsub|N>> defined as below is the Cartan subgroup of <math|G>.
      In particular, <math|G=Ad<around*|(|G|)>S T<rsub|N>>.

      Hence, <math|D<rsub|\<tau\>><around*|(|g|)>> is determind by its values
      on

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|S
        T<rsub|N>\<assign\><choice|<tformat|<table|<row|<cell|<around*|[|<tabular|<tformat|<table|<row|<cell|cos\<theta\><rsub|1>>|<cell|sin\<theta\><rsub|1>>>|<row|<cell|-sin\<theta\><rsub|1>>|<cell|cos\<theta\><rsub|1>>>>>>|]>\<oplus\><around*|[|<tabular|<tformat|<table|<row|<cell|cos\<theta\><rsub|1>>|<cell|sin\<theta\><rsub|1>>>|<row|<cell|-sin\<theta\><rsub|1>>|<cell|cos\<theta\><rsub|1>>>>>>|]>\<oplus\>\<ldots\>\<oplus\><around*|[|<tabular|<tformat|<table|<row|<cell|cos\<theta\><rsub|k>>|<cell|sin\<theta\><rsub|k>>>|<row|<cell|-sin\<theta\><rsub|k>>|<cell|cos\<theta\><rsub|k>>>>>>|]>,>|<cell|N=2k>>|<row|<cell|<around*|[|<tabular|<tformat|<table|<row|<cell|cos\<theta\><rsub|1>>|<cell|sin\<theta\><rsub|1>>>|<row|<cell|-sin\<theta\><rsub|1>>|<cell|cos\<theta\><rsub|1>>>>>>|]>\<oplus\><around*|[|<tabular|<tformat|<table|<row|<cell|cos\<theta\><rsub|1>>|<cell|sin\<theta\><rsub|1>>>|<row|<cell|-sin\<theta\><rsub|1>>|<cell|cos\<theta\><rsub|1>>>>>>|]>\<oplus\>\<ldots\>\<oplus\><around*|[|<tabular|<tformat|<table|<row|<cell|cos\<theta\><rsub|k>>|<cell|sin\<theta\><rsub|k>>>|<row|<cell|-sin\<theta\><rsub|k>>|<cell|cos\<theta\><rsub|k>>>>>>|]>\<oplus\>1,>|<cell|N=2k+1>>>>>>|<cell|>>>>
      </eqnarray>

      Schur orthogonality relations imply that <math|D<rsub|\<tau\>>>
      characterizes <math|\<tau\>> up to equivalence class.
    </definition>

    <\footnote>
      TODO: explain how characters are characterized (as functions of
      <with|font-shape|italic|what>)
    </footnote>

    <\fact>
      <cite-detail|boerner1963representations|ŸVII.10> Let

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|s<around*|(|\<alpha\>|)>=2i
        sin<around*|(|2\<pi\>\<alpha\>|)>=e<rsup|2\<pi\>i\<alpha\>>-e<rsup|-2\<pi\>i\<alpha\>>,>|<cell|>>|<row|<cell|>|<cell|c<around*|(|\<alpha\>|)>=2cos<around*|(|2\<pi\>\<alpha\>|)>=e<rsup|2\<pi\>i\<alpha\>>+e<rsup|-2\<pi\>i\<alpha\>>.>|<cell|>>>>
      </eqnarray>

      Furthermore, for <math|<around*|{|\<tau\><rsub|j>\<in\>\<bbb-C\>:<around*|\||\<tau\><rsub|j>|\|>=1|}><rsub|j=1><rsup|p>,<around*|{|l<rsub|j>\<in\>\<bbb-Z\>|}><rsub|j=1><rsup|p>>
      we let

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|S<around*|(|<stack|<tformat|<table|<row|<cell|\<tau\><rsub|1>,\<ldots\>,\<tau\><rsub|p>>>|<row|<cell|l<rsub|1>,\<ldots\>,l<rsub|p>>>>>>|)>\<assign\><around*|\||<stack|<tformat|<table|<row|<cell|s<around*|(|l<rsub|1>\<tau\><rsub|1>|)>>|<cell|s<around*|(|l<rsub|2>\<tau\><rsub|1>|)>>|<cell|\<ldots\>>|<cell|s<around*|(|l<rsub|p>\<tau\><rsub|1>|)>>>|<row|<cell|s<around*|(|l<rsub|1>\<tau\><rsub|2>|)>>|<cell|s<around*|(|l<rsub|2>\<tau\><rsub|2>|)>>|<cell|\<ldots\>>|<cell|s<around*|(|l<rsub|p>\<tau\><rsub|2>|)>>>|<row|<cell|\<ldots\>>|<cell|\<ldots\>>|<cell|\<ddots\>>|<cell|\<ldots\>>>|<row|<cell|s<around*|(|l<rsub|1>\<tau\><rsub|p>|)>>|<cell|s<around*|(|l<rsub|2>\<tau\><rsub|p>|)>>|<cell|\<ldots\>>|<cell|s<around*|(|l<rsub|p>\<tau\><rsub|p>|)>>>>>>|\|>>|<cell|>>|<row|<cell|>|<cell|C<around*|(|<stack|<tformat|<table|<row|<cell|\<tau\><rsub|1>,\<ldots\>,\<tau\><rsub|p>>>|<row|<cell|l<rsub|1>,\<ldots\>,l<rsub|p>>>>>>|)>\<assign\><around*|\||<stack|<tformat|<table|<row|<cell|c<around*|(|l<rsub|1>\<tau\><rsub|1>|)>>|<cell|c<around*|(|l<rsub|2>\<tau\><rsub|1>|)>>|<cell|\<ldots\>>|<cell|c<around*|(|l<rsub|p>\<tau\><rsub|1>|)>>>|<row|<cell|c<around*|(|l<rsub|1>\<tau\><rsub|2>|)>>|<cell|c<around*|(|l<rsub|2>\<tau\><rsub|2>|)>>|<cell|\<ldots\>>|<cell|c<around*|(|l<rsub|p>\<tau\><rsub|2>|)>>>|<row|<cell|\<ldots\>>|<cell|\<ldots\>>|<cell|\<ddots\>>|<cell|\<ldots\>>>|<row|<cell|c<around*|(|l<rsub|1>\<tau\><rsub|p>|)>>|<cell|c<around*|(|l<rsub|2>\<tau\><rsub|p>|)>>|<cell|\<ldots\>>|<cell|c<around*|(|l<rsub|p>\<tau\><rsub|p>|)>>>>>>|\|>>|<cell|>>>>
      </eqnarray>

      <\description>
        <item*|Case a><math|O<around*|(|n|)>=O<around*|(|2p|)>>. Let

        <\equation*>
          r<rsub|1>=p-1,r<rsub|2>=p-2,\<ldots\>,r<rsub|p>=0.
        </equation*>

        Then the character of the irrep corresponding to
        <math|<around*|(|a<rsub|i>|)><rsub|i=1><rsup|p>\<in\>HV<around*|(|2p|)>>
        equals to:

        <\equation*>
          S<around*|(|<stack|<tformat|<table|<row|<cell|\<tau\><rsub|1>,\<ldots\>,\<tau\><rsub|p>>>|<row|<cell|a<rsub|1>,\<ldots\>,a<rsub|p>>>>>>|)>/S<around*|(|<stack|<tformat|<table|<row|<cell|\<tau\><rsub|1>,\<ldots\>,\<tau\><rsub|p>>>|<row|<cell|r<rsub|1>,\<ldots\>,r<rsub|p>>>>>>|)>
        </equation*>

        <item*|Case b><math|O<around*|(|n|)>=O<around*|(|2p+1|)>>. Let

        <\equation*>
          r<rsub|1>=p-<frac|1|2>,r<rsub|2>=p-<frac|3|2>,\<ldots\>,r<rsub|p>=<frac|1|2>.
        </equation*>

        Then the character of the irrep corresponding to
        <math|<around*|(|a<rsub|i>|)><rsub|i=1><rsup|p>\<in\>HV<around*|(|2p+1|)>>
        equals to:

        <\equation*>
          <around*|{|C<around*|(|<stack|<tformat|<table|<row|<cell|\<tau\><rsub|1>,\<ldots\>,\<tau\><rsub|p>>>|<row|<cell|a<rsub|1>,\<ldots\>,a<rsub|p>>>>>>|)>+S<around*|(|<stack|<tformat|<table|<row|<cell|\<tau\><rsub|1>,\<ldots\>,\<tau\><rsub|p>>>|<row|<cell|a<rsub|1>,\<ldots\>,a<rsub|p>>>>>>|)>|}>/C<around*|(|<stack|<tformat|<table|<row|<cell|\<tau\><rsub|1>,\<ldots\>,\<tau\><rsub|p>>>|<row|<cell|r<rsub|1>,\<ldots\>,r<rsub|p>>>>>>|)>
        </equation*>
      </description>
    </fact>

    <subsection|Branching in <math|SO<around*|(|N|)>>|>

    \;

    <subsection|Characters of irreps of <math|O<around*|(|N|)>>|>

    <subsection|General stuff|>

    <\proposition>
      <label|prop:cpt-maxtorus>Suppose <math|G> is compact group with
      semisimple Lie algebra<\footnote>
        it should be possible to remove this assumption at the cost of
        introducing induction argument, as in Thm. 4.36 of Knapp
      </footnote> (not necessarily connected) and <math|T> is its commutative
      subgroup such that:

      <\enumerate>
        <item><math|T\<cap\>G<rsub|0>> is the maximal torus of connected
        compact group <math|G<rsub|0>> (here <math|G<rsub|0>> is the identity
        component);

        <item><math|T> crosses every connected component of <math|G>.
      </enumerate>

      Then, <math|G=Ad<around*|(|G|)>T>.
    </proposition>

    <\remark>
      This proposition and its proof are inspired by
      <cite-detail|knapp2013lie|Thm. 4.36>.
    </remark>

    <\proof>
      (of Proposition <reference|prop:cpt-maxtorus>). We use the following
      notation:

      <\equation*>
        <stack|<tformat|<table|<row|<cell|y<rsup|x>\<assign\>x y
        x<rsup|-1>,<space|1em>T<rsup|g>\<assign\><around*|{|t<rsup|g>\<mid\>t\<in\>T|}>,<space|1em>>>>>>T<rsup|G>\<assign\>\<cup\><rsub|g\<in\>G>T<rsup|g>.
      </equation*>

      Let <math|Z<rsub|G>> be the center of <math|G>,
      <math|T<rsup|\<times\>>\<assign\>T-<around*|(|T\<cap\>Z<rsub|G>|)>,G<rsup|\<times\>>\<assign\>G-Z<rsub|G>>.
      We can show that <math|Z<rsub|G>> is finite by induction on number of
      components (<math|G>:compact <math|\<Rightarrow\>> has finitely many
      components): if <math|G=G<rsub|0>>, we are done by
      <cite-detail|knapp2013lie|Thm. 4.29>; otherwise if
      <math|Z<rsub|G>\<subset\>G<rsub|0>> we are also done, as
      <math|Z<rsub|G>\<cap\>G<rsub|0>\<subset\>Z<around*|(|G<rsub|0>|)>> and
      the latter is finite by <cite-detail|knapp2013lie|Thm. 4.29>; finally
      if <math|z\<in\>Z<rsub|G>-G<rsub|0>>, we can apply the inductive
      assumption to <math|G/Z> (here <math|Z\<subset\>Z<rsub|G>> is the
      finite subgroup generated by <math|z>) and note that <math|Z<rsub|G>>
      is mapped into <math|Z<around*|(|G/Z|)>> by the projecton map
      <math|G\<twoheadrightarrow\>G/Z>, which has finite kernel.

      Hence, <math|<around*|\||Z<rsub|G>|\|>\<less\>\<infty\>>. Moreover,
      semisimplicity of <math|Lie<around*|(|G|)>> implies that
      <math|dim<around*|(|G|)>\<geqslant\>3>, hence
      <math|G<rsup|\<times\>>\<subset\>G>: open dense. Also,
      <math|<around*|(|T<rsup|\<times\>>|)><rsup|G>> is easily seen to be
      nonempty. Also we note that <math|T<rsup|\<times\>>> still crosses
      every connected component of <math|G<rsup|\<times\>>> (which are the
      same as those of <math|G>). This follows, as
      <math|dim<around*|(|T|)>\<geqslant\>1>.

      It will then suffice to show that <math|<around*|(|T<rsup|*\<times\>>|)><rsup|G>\<subset\>G<rsup|\<times\>>>
      is open and closed. As <math|T<rsup|\<times\>>> crosses every component
      of <math|G>, it will imply that\ 

      <\equation*>
        <stack|<tformat|<table|<row|<cell|<around*|[|<tabular|<tformat|<table|<row|<cell|1>|<cell|>>|<row|<cell|>|<cell|-1>>>>>|]><around*|[|<tabular|<tformat|<table|<row|<cell|cos>|<cell|sin>>|<row|<cell|-sin>|<cell|cos>>>>>|]>=<around*|[|<tabular|<tformat|<table|<row|<cell|cos>|<cell|sin>>|<row|<cell|sin>|<cell|-cos>>>>>|]>>>|<row|<cell|<around*|[|<tabular|<tformat|<table|<row|<cell|cos>|<cell|sin>>|<row|<cell|-sin>|<cell|cos>>>>>|]><around*|[|<tabular|<tformat|<table|<row|<cell|1>|<cell|>>|<row|<cell|>|<cell|-1>>>>>|]>=<around*|[|<tabular|<tformat|<table|<row|<cell|cos>|<cell|-sin>>|<row|<cell|-sin>|<cell|-cos>>>>>|]>>>>>>
      </equation*>

      \;
    </proof>

    <\definition>
      For <math|G=O<around*|(|N|)>> we let
      <math|T\<assign\>T<rsub|N>\<assign\>>

      <\eqnarray>
        <tformat|<table|<row|<cell|>|<cell|<choice|<tformat|<table|<row|<cell|<around*|[|<tabular|<tformat|<table|<row|<cell|cos\<theta\><rsub|1>>|<cell|sin\<theta\><rsub|1>>>|<row|<cell|-sin\<theta\><rsub|1>>|<cell|\<varepsilon\><rsub|1>cos\<theta\><rsub|1>>>>>>|]>\<oplus\><around*|[|<tabular|<tformat|<table|<row|<cell|cos\<theta\><rsub|2>>|<cell|sin\<theta\><rsub|2>>>|<row|<cell|-sin\<theta\><rsub|2>>|<cell|\<varepsilon\><rsub|2>cos\<theta\><rsub|2>>>>>>|]>\<oplus\>\<ldots\>\<oplus\><around*|[|<tabular|<tformat|<table|<row|<cell|cos\<theta\><rsub|k>>|<cell|sin\<theta\><rsub|k>>>|<row|<cell|-sin\<theta\><rsub|k>>|<cell|\<varepsilon\><rsub|k>cos\<theta\><rsub|k>>>>>>|]>,>|<cell|N=2k>>|<row|<cell|<around*|[|<tabular|<tformat|<table|<row|<cell|cos\<theta\><rsub|1>>|<cell|sin\<theta\><rsub|1>>>|<row|<cell|-sin\<theta\><rsub|1>>|<cell|\<varepsilon\><rsub|1>cos\<theta\><rsub|1>>>>>>|]>\<oplus\><around*|[|<tabular|<tformat|<table|<row|<cell|cos\<theta\><rsub|2>>|<cell|sin\<theta\><rsub|2>>>|<row|<cell|-sin\<theta\><rsub|2>>|<cell|\<varepsilon\><rsub|2>cos\<theta\><rsub|2>>>>>>|]>\<oplus\>\<ldots\>\<oplus\><around*|[|<tabular|<tformat|<table|<row|<cell|cos\<theta\><rsub|k>>|<cell|sin\<theta\><rsub|k>>>|<row|<cell|-sin\<theta\><rsub|k>>|<cell|\<varepsilon\><rsub|k>cos\<theta\><rsub|k>>>>>>|]>\<oplus\>\<varepsilon\><rsub|k+1>,>|<cell|N=2k+1>>>>>>|<cell|>>>>
      </eqnarray>

      where <math|\<varepsilon\><rsub|i>=\<pm\>1>.
    </definition>

    <\proposition>
      We have <math|G=Ad<around*|(|G|)>T>.
    </proposition>

    <\proof>
      This is clear for <math|N> odd, as then given
      <math|g\<in\>O<around*|(|N|)>\\SO<around*|(|N|)>> we have
      <math|g\<cdot\><around*|(|-1<rsub|N>|)>\<in\>SO<around*|(|N|)>>, hence
      <math|g\<cdot\><around*|(|-1<rsub|N>|)>=Ad<around*|(|<rsup|\<exists\>>g<rprime|'>|)><around*|(|<rsup|\<exists\>>k|)>\<Rightarrow\>g=Ad<around*|(|g<rprime|'>|)><around*|(|*-1<rsub|N>\<cdot\>k|)>>.

      \;
    </proof>
  <|show-part>
    <section|Symmetry breaking for full orthogonal groups
    <math|O<around*|(|N|)>>|>
  </show-part>

  <\hide-part|5>
    <section|Playground|>
  <|hide-part>
    <section|Playground|>
  </hide-part>

  <\hide-part|6>
    <\bibliography|bib|tm-alpha|todai_master.bib>
      <\bib-list|9>
        <bibitem*|05><label|bib-zbMATH02248506>Toshiyuki Kobayashi.<newblock>
        Multiplicity-free representations and visible actions on complex
        manifolds.<newblock> <with|font-shape|italic|Publ. Res. Inst. Math.
        Sci.>, 41(3):497\U549, 2005.<newblock>

        <bibitem*|BMMC63><label|bib-boerner1963representations>Hermann
        Boerner, PG Murphy, J Mayer-Kalkschmidt<localize|, and >P
        Carr.<newblock> <with|font-shape|italic|Representations of groups:
        with special consideration for the needs of modern
        physics>.<newblock> North-Holland/Elsevier, 1963.<newblock>

        <bibitem*|FH13><label|bib-fulton2013representation>William
        Fulton<localize| and >Joe Harris.<newblock>
        <with|font-shape|italic|Representation theory: a first course>,
        <localize|volume> 129.<newblock> Springer Science & Business Media,
        2013.<newblock>

        <bibitem*|GW00><label|bib-goodman2000representations>Roe
        Goodman<localize| and >Nolan<nbsp>R Wallach.<newblock>
        <with|font-shape|italic|Representations and invariants of the
        classical groups>, <localize|volume><nbsp>68.<newblock> Cambridge
        University Press, 2000.<newblock>

        <bibitem*|HTW05><label|bib-howe2005stable>Roger Howe, Eng-Chye
        Tan<localize|, and >Jeb Willenbring.<newblock> Stable branching rules
        for classical symmetric pairs.<newblock>
        <with|font-shape|italic|Transactions of the American mathematical
        society>, 357(4):1601\U1626, 2005.<newblock>

        <bibitem*|KKP16><label|bib-kobayashi2016classification>Toshiyuki
        Kobayashi, Toshihisa Kubo<localize|, and >Michael Pevzner.<newblock>
        Classification of differential symmetry breaking operators for
        differential forms.<newblock> <with|font-shape|italic|Comptes Rendus
        Mathematique>, 354(7):671\U676, 2016.<newblock>

        <bibitem*|Kna13><label|bib-knapp2013lie>Anthony<nbsp>W
        Knapp.<newblock> <with|font-shape|italic|Lie groups beyond an
        introduction>, <localize|volume> 140.<newblock> Springer Science &
        Business Media, 2013.<newblock>

        <bibitem*|KS15><label|bib-kobayashi2015symmetry>T.<nbsp>Kobayashi<localize|
        and >B.<nbsp>Speh.<newblock> <with|font-shape|italic|Symmetry
        Breaking for Representations of Rank One Orthogonal Groups>,
        <localize|volume> <with|font-series|bold|238>.<newblock>
        <with|font-family|rm|font-shape|right|font-series|medium|Memoirs of
        the Amer. Math. Soc>, 2015.<newblock> Available at
        <slink|http://dx.doi.org/10.1090/memo/1126>.<newblock>

        <bibitem*|Wey16><label|bib-weyl2016classical>Hermann Weyl.<newblock>
        <with|font-shape|italic|The classical groups: their invariants and
        representations>.<newblock> Princeton university press,
        2016.<newblock>
      </bib-list>
    </bibliography>

    \;
  <|hide-part>
    <\bibliography|bib|tm-alpha|todai_master.bib>
      <\bib-list|9>
        <bibitem*|05><label|bib-zbMATH02248506>Toshiyuki Kobayashi.<newblock>
        Multiplicity-free representations and visible actions on complex
        manifolds.<newblock> <with|font-shape|italic|Publ. Res. Inst. Math.
        Sci.>, 41(3):497\U549, 2005.<newblock>

        <bibitem*|BMMC63><label|bib-boerner1963representations>Hermann
        Boerner, PG Murphy, J Mayer-Kalkschmidt<localize|, and >P
        Carr.<newblock> <with|font-shape|italic|Representations of groups:
        with special consideration for the needs of modern
        physics>.<newblock> North-Holland/Elsevier, 1963.<newblock>

        <bibitem*|FH13><label|bib-fulton2013representation>William
        Fulton<localize| and >Joe Harris.<newblock>
        <with|font-shape|italic|Representation theory: a first course>,
        <localize|volume> 129.<newblock> Springer Science & Business Media,
        2013.<newblock>

        <bibitem*|GW00><label|bib-goodman2000representations>Roe
        Goodman<localize| and >Nolan<nbsp>R Wallach.<newblock>
        <with|font-shape|italic|Representations and invariants of the
        classical groups>, <localize|volume><nbsp>68.<newblock> Cambridge
        University Press, 2000.<newblock>

        <bibitem*|HTW05><label|bib-howe2005stable>Roger Howe, Eng-Chye
        Tan<localize|, and >Jeb Willenbring.<newblock> Stable branching rules
        for classical symmetric pairs.<newblock>
        <with|font-shape|italic|Transactions of the American mathematical
        society>, 357(4):1601\U1626, 2005.<newblock>

        <bibitem*|KKP16><label|bib-kobayashi2016classification>Toshiyuki
        Kobayashi, Toshihisa Kubo<localize|, and >Michael Pevzner.<newblock>
        Classification of differential symmetry breaking operators for
        differential forms.<newblock> <with|font-shape|italic|Comptes Rendus
        Mathematique>, 354(7):671\U676, 2016.<newblock>

        <bibitem*|Kna13><label|bib-knapp2013lie>Anthony<nbsp>W
        Knapp.<newblock> <with|font-shape|italic|Lie groups beyond an
        introduction>, <localize|volume> 140.<newblock> Springer Science &
        Business Media, 2013.<newblock>

        <bibitem*|KS15><label|bib-kobayashi2015symmetry>T.<nbsp>Kobayashi<localize|
        and >B.<nbsp>Speh.<newblock> <with|font-shape|italic|Symmetry
        Breaking for Representations of Rank One Orthogonal Groups>,
        <localize|volume> <with|font-series|bold|238>.<newblock>
        <with|font-family|rm|font-shape|right|font-series|medium|Memoirs of
        the Amer. Math. Soc>, 2015.<newblock> Available at
        <slink|http://dx.doi.org/10.1090/memo/1126>.<newblock>

        <bibitem*|Wey16><label|bib-weyl2016classical>Hermann Weyl.<newblock>
        <with|font-shape|italic|The classical groups: their invariants and
        representations>.<newblock> Princeton university press,
        2016.<newblock>
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
    <associate|2:fact-irreps-of-on|<tuple|3.1|?|#4>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|4.2|?>>
    <associate|auto-11|<tuple|4.3|?>>
    <associate|auto-12|<tuple|4.4|?>>
    <associate|auto-13|<tuple|4.5|?>>
    <associate|auto-14|<tuple|4.2|?>>
    <associate|auto-2|<tuple|2|2>>
    <associate|auto-3|<tuple|2.1|?>>
    <associate|auto-4|<tuple|2.2|?>>
    <associate|auto-5|<tuple|2.3|?>>
    <associate|auto-6|<tuple|3|?>>
    <associate|auto-7|<tuple|3.1|?>>
    <associate|auto-8|<tuple|4|?>>
    <associate|auto-9|<tuple|4.1|?>>
    <associate|auto.2-1|<tuple|1|?|#2>>
    <associate|auto.3-1|<tuple|2|?|#3>>
    <associate|auto.3-2|<tuple|2.1|?|#3>>
    <associate|auto.3-3|<tuple|2.2|?|#3>>
    <associate|auto.3-4|<tuple|2.3|?|#3>>
    <associate|auto.3-5|<tuple|2.4|?|#3>>
    <associate|auto.3-6|<tuple|2.5|?|#3>>
    <associate|auto.4-1|<tuple|3|?|#4>>
    <associate|auto.4-2|<tuple|3.1|?|#4>>
    <associate|auto.4-3|<tuple|3.2|?|#4>>
    <associate|auto.4-4|<tuple|3.3|?|#4>>
    <associate|auto.4-5|<tuple|3.4|?|#4>>
    <associate|auto.4-6|<tuple|3.5|?|#4>>
    <associate|auto.4-7|<tuple|3.6|?|#4>>
    <associate|auto.4-8|<tuple|3.7|?|#4>>
    <associate|auto.4-9|<tuple|3.8|?|#4>>
    <associate|auto.5-1|<tuple|4|?|#5>>
    <associate|auto.5-2|<tuple|4.1|?|#5>>
    <associate|auto.5-3|<tuple|4.2|?|#5>>
    <associate|auto.5-4|<tuple|4.3|?|#5>>
    <associate|auto.5-5|<tuple|4.4|?|#5>>
    <associate|auto.5-6|<tuple|4.5|?|#5>>
    <associate|auto.6-1|<tuple|4|?|#6>>
    <associate|bib-KO2|<tuple|KØ03|?|#6>>
    <associate|bib-KOBAYASHI2013921|<tuple|KO13|?>>
    <associate|bib-boerner1963representations|<tuple|BMMC63|?|#6>>
    <associate|bib-dotsenko1985four|<tuple|DF85|?|#6>>
    <associate|bib-fulton2013representation|<tuple|FH13|?|#6>>
    <associate|bib-goodman2000representations|<tuple|GW00|?|#6>>
    <associate|bib-gradshteinryzhik|<tuple|GRJ00|?|#6>>
    <associate|bib-howe1993homogeneous|<tuple|HT93|?|#6>>
    <associate|bib-howe2005stable|<tuple|HTW05|?|#6>>
    <associate|bib-keiner2009computing|<tuple|Kei09|?|#6>>
    <associate|bib-knapp2013lie|<tuple|Kna13|?|#6>>
    <associate|bib-kobayashi2011schrodinger|<tuple|KM11|?|#6>>
    <associate|bib-kobayashi2015symmetry|<tuple|KS15|?|#6>>
    <associate|bib-kobayashi2016classification|<tuple|KKP16|2|#6>>
    <associate|bib-mackenzie2003hermite|<tuple|MT03|?|#6>>
    <associate|bib-olver2010nist|<tuple|Olv10|?|#6>>
    <associate|bib-rainville1960special|<tuple|Rai60|?|#6>>
    <associate|bib-tarasov2003selberg|<tuple|TV03|?|#6>>
    <associate|bib-warnaar2010sl3|<tuple|War10|?|#6>>
    <associate|bib-weyl2016classical|<tuple|Wey16|?|#6>>
    <associate|bib-zbMATH02248506|<tuple|05|?|#6>>
    <associate|fact-1|<tuple|1.1|?>>
    <associate|fact:howetan:oreps|<tuple|2.2|?|#3>>
    <associate|fact:irreps-n-branch-so|<tuple|2.1|?|#3>>
    <associate|footnote-1|<tuple|1|?>>
    <associate|footnote-2|<tuple|2|?>>
    <associate|footnote-2.1|<tuple|2.1|?|#3>>
    <associate|footnote-3.1|<tuple|3.1|?|#4>>
    <associate|footnote-3.2|<tuple|3.2|?|#4>>
    <associate|footnote-4.1|<tuple|4.1|?|#5>>
    <associate|footnote-4.2|<tuple|4.2|?|#5>>
    <associate|footnr-2.1|<tuple|2.1|?|#3>>
    <associate|footnr-3.1|<tuple|3.1|?|#4>>
    <associate|footnr-3.2|<tuple|3.2|?|#4>>
    <associate|footnr-4.1|<tuple|4.1|?|#5>>
    <associate|footnr-4.2|<tuple|4.2|?|#5>>
    <associate|lem:howetan:case1|<tuple|2.3|?|#3>>
    <associate|lem:howetan:ind-o|<tuple|2.4|?|#3>>
    <associate|lem:howetan:mult2|<tuple|2.5|?|#3>>
    <associate|lem:howetan:so|<tuple|2.2|?|#3>>
    <associate|prop:cpt-maxtorus|<tuple|3.2|?|#4>>
    <associate|prop:restr-connected|<tuple|2.1|?|#3>>
    <associate|prop:so|<tuple|2.1|?|#3>>
    <associate|sec:howetan|<tuple|2|?|#3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      kobayashi2016classification

      kobayashi2016classification

      kobayashi2016classification

      knapp2013lie

      knapp2013lie

      goodman2000representations

      zbMATH02248506

      kobayashi2015symmetry

      howe2005stable

      howe2005stable

      weyl2016classical

      fulton2013representation

      fulton2013representation

      fulton2013representation

      fulton2013representation

      boerner1963representations

      knapp2013lie

      knapp2013lie

      knapp2013lie
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>First
      section> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Howe-Tan
      for differential forms> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Main results
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Auxiliary Lemmas
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>Proofs
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Symmetry
      breaking for full orthogonal groups
      <with|mode|<quote|math>|O<around*|(|N|)>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Playground
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Playground>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1<space|2spc>Irreps of
      <with|mode|<quote|math>|SO<around*|(|n|)>> and
      <with|mode|<quote|math>|O<around*|(|n|)>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|4.2<space|2spc>Characters of irreps of
      <with|mode|<quote|math>|SO<around*|(|N|)>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|4.3<space|2spc>Branching in
      <with|mode|<quote|math>|SO<around*|(|N|)>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|4.4<space|2spc>Characters of irreps of
      <with|mode|<quote|math>|O<around*|(|N|)>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|4.5<space|2spc>General stuff
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>