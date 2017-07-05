<TeXmacs|1.99.4>

<style|article>

<\body>
  <doc-data|<doc-title|4 year seminar, June 7>>

  Create Fuchs groups:

  <\itemize>
    <item><math|\<Gamma\><rsub|a,b><space|0.6spc><around*|(|a,b\<in\>\<bbb-N\>|)>>

    <item><math|D<rsub|a,b><around*|(|\<bbb-R\>|)>\<assign\>\<bbb-R\>+\<bbb-R\>i+\<bbb-R\>j+\<bbb-R\>k>,
    with

    <\equation*>
      <choice|<tformat|<table|<row|<cell|i<rsup|2>=a>>|<row|<cell|j<rsup|2>=b>>|<row|<cell|i
      j=k=-j i>>>>>
    </equation*>

    We have <math|\<Phi\>:D<rsub|a,b><around*|(|\<bbb-R\>|)><long-arrow|\<rubber-rightarrow\>|\<sim\>>M<rsub|2><around*|(|\<bbb-R\>|)>>,
    <math|i\<mapsto\><around*|(|<tabular|<tformat|<table|<row|<cell|<sqrt|a>>|<cell|0>>|<row|<cell|0>|<cell|-<sqrt|a>>>>>>|)>,j\<mapsto\><around*|(|<tabular|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|b>|<cell|0>>>>>|)>>.
    We have that <math|D<rsub|a,b><around*|(|\<bbb-R\>|)>\<supset\>D<rsub|a,b><rsup|1><around*|(|\<bbb-R\>|)>\<assign\><around*|{|\<alpha\>\<mid\>N<rsub|red><around*|(|\<alpha\>|)>=1|}>>,
    where

    <\equation*>
      N<rsub|red><around*|(|x<rsub|0>+x<rsub|1>i+x<rsub|2>j+x<rsub|3>k|)>=x<rsub|0><rsup|2>-a
      x<rsub|1><rsup|2>-b x<rsub|2><rsup|2>+ab x<rsub|3><rsup|2>
    </equation*>

    We have

    <center|<image|jul7d1.eps|300px|150px||>>

    \;
  </itemize>

  On <math|\<bbb-R\><rsup|3>> we define quadratic form

  <\equation*>
    q<around*|(|x<rsub|1>,x<rsub|2>,x<rsub|3>|)>\<assign\>-a
    x<rsub|1><rsup|2>-b x<rsub|2><rsup|2>+a b x<rsub|3><rsup|2>.
  </equation*>

  We let <math|D<rsub|a,b><around*|(|\<bbb-R\>|)>\<supset\><around*|{|x<rsub|1>i+x<rsub|2>j+x<rsub|3>k|}>=:P>.
  We then have <math|P\<cong\>\<bbb-R\><rsup|3>> and
  <math|q=N<rsub|red>\<mid\><rsub|P>>.

  We let

  <\equation*>
    <tabular|<tformat|<table|<row|<cell|s:D<rsub|a,b><rprime|'><around*|(|\<bbb-R\>|)>>|<cell|\<rightarrow\>>|<cell|GL<around*|(|3,\<bbb-R\>|)>>>|<row|<cell|\<uplus\>>|<cell|>|<cell|\<uplus\>>>|<row|<cell|<around*|{|\<alpha\>|}>>|<cell|\<mapsto\>>|<cell|<around*|{|\<beta\>\<rightarrow\>\<alpha\>\<beta\>\<alpha\><rsup|-1>|}>:preserves
    q>>>>>
  </equation*>

  We have <math|Im s\<subset\>O<around*|(|q,\<bbb-R\>|)>,Ker
  s=<around*|{|\<pm\>1|}>>.

  <with|font-series|bold|Fact>. <math|Im s=SO<rsub|0><around*|(|q,\<bbb-R\>|)>>.

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<tabular|<tformat|<table|<row|<cell|SO<rsub|0><around*|(|q,\<bbb-R\>|)>>|<cell|<long-arrow|\<rubber-leftarrow\>|\<cong\>>>|<cell|\<circ\>/<around*|{|\<pm\>1|}>>|<cell|\<twoheadleftarrow\>>|<cell|D<rsub|a,b><rsup|1><around*|(|\<bbb-R\>|)>>|<cell|<long-arrow|\<rubber-rightarrow\>|\<cong\>>>|<cell|SL<around*|(|2,\<bbb-R\>|)>>>|<row|<cell|\<cup\>>|<cell|>|<cell|\<cup\>>|<cell|>|<cell|\<cup\>>|<cell|>|<cell|\<cup\>>>|<row|<cell|SO<around*|(|q,\<bbb-Z\>|)>=SO<rsub|0>>|<cell|\<leftarrow\>>|<cell|\<circ\>/<around*|{|\<pm\>1|}>>|<cell|\<twoheadleftarrow\>>|<cell|D<rsub|a,b><rsup|1><around*|(|\<bbb-Z\>|)>>|<cell|\<rightarrow\>>|<cell|\<Gamma\><rsub|a,b>>>>>>>|<cell|>>>>
  </eqnarray>

  <\proposition*>
    If we denote <math|D<rsub|a,b><rsup|1><around*|(|\<bbb-R\>|)>/<around*|{|\<pm\>1|}><long-arrow|\<rubber-rightarrow\>|\<cong\>>SO<rsub|0><around*|(|q,\<bbb-R\>|)>>
    by <math|\<Psi\>>,

    we have <math|D<rsub|a,b><rsup|1><around*|(|\<bbb-Z\>|)>/<around*|{|\<pm\>1|}>=\<Psi\><rsup|-1><around*|(|SO<around*|(|q,\<bbb-Z\>|)>|)>>.
  </proposition*>

  <\proof>
    <math|\<subset\>> is OK, <math|\<supset\>> is still not clear.
  </proof>

  <\remark*>
    Generators of <math|SL<around*|(|2,\<bbb-Z\>|)>> are

    <\equation*>
      <around*|(|<tabular|<tformat|<table|<row|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>>>>>|)>,<around*|(|<tabular|<tformat|<table|<row|<cell|0>|<cell|-1>>|<row|<cell|1>|<cell|0>>>>>|)>.
    </equation*>
  </remark*>

  <math|\<Gamma\><rsub|a,b>>:cocpt <math|\<Leftrightarrow\>SO<rsub|0><around*|(|q,\<bbb-R\>|)>/SO<rsub|0><around*|(|q,\<bbb-Z\>|)>\<subset\>GL<around*|(|3,\<bbb-R\>|)>/GL<around*|(|3,\<bbb-Z\>|)>:cpt>.

  <\theorem*>
    TFAE:

    <\enumerate>
      <item><math|D<rsub|a,b><around*|(|\<bbb-Q\>|)>>:divisible
      (<math|\<Leftrightarrow\>> the only real solution of eqn
      <math|x<rsub|0><rsup|2>-a x<rsub|1><rsup|2>-b x<rsub|2><rsup|2>+a b
      x<rsub|3><rsup|2>=0> is <math|<around*|(|0,0,0|)>>);

      <item><math|\<Gamma\><rsub|a,b>:>cocompact.
    </enumerate>
  </theorem*>

  <\remark*>
    In fact we proved the contrapositive of <math|\<Rightarrow\>>, not
    <math|\<Rightarrow\>> directly.
  </remark*>

  <\theorem*>
    (Hermite-Mahler criterion)

    <\equation*>
      \<cal-L\><rsub|n>\<assign\>GL<around*|(|n,\<bbb-R\>|)>/GL<around*|(|n,\<bbb-Z\>|)>.
    </equation*>

    Then <math|\<cal-L\><rsub|n>\<supset\>M>: relatively compact if and only
    if there exist <math|C,\<varepsilon\>\<gtr\>0> such that the volume
    (height) of element of <math|M> is bounded by C from above (by
    <math|\<varepsilon\>> from below).
  </theorem*>

  <\remark>
    For <math|<around*|[|X|]>\<in\>M> (<math|X\<in\>GL<around*|(|n,\<bbb-R\>|)>>)
    we let its volume

    <\equation*>
      V<around*|(|<around*|[|X|]>|)>\<assign\><around*|\||det<around*|(|X|)>|\|>,
    </equation*>

    and height

    <\equation*>
      H<around*|(|<around*|[|X|]>|)>\<assign\>min<rsub|v\<in\>\<bbb-Z\><rsup|n>/<around*|{|0|}>><around*|\||X
      v|\|>.
    </equation*>

    Easy to see that these are well-def.
  </remark>

  <\proof>
    <math|\<Leftarrow\>>. We first show that <math|M> is closed. Indeed,

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|GL<around*|(|3,\<bbb-R\>|)>/GL<around*|(|3,\<bbb-Z\>|)>>|<cell|\<ni\>>|<cell|<around*|[|X|]>>>|<row|<cell|\<cong\>>|<cell|>|<cell|\<longleftrightarrow\>>>|<row|<cell|\<cal-L\><rsub|3>>|<cell|\<ni\>>|<cell|<around*|{|X
      v\<mid\>v\<in\>\<bbb-Z\><rsup|3>|}>\<subset\>\<bbb-R\><rsup|3>:lattice>>>>>
    </equation*>

    Next, we show that <math|M> is bounded. Let
    <math|U\<assign\><around*|{|x\<mid\><around*|\||q<around*|(|x|)>|\|>\<less\>1|}>\<subset\>\<bbb-R\><rsup|3>>.
    Then,

    <\enumerate>
      <item><math|U\<ni\>0> is a neghborhood;

      <item>does not contain other points of lattice, than <math|0>.
    </enumerate>

    <math|\<Rightarrow\>>. We do not prove it at this point.
  </proof>
</body>

<\initial>
  <\collection>
    <associate|magnification|1.2>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|footnote-1|<tuple|1|?|may31.tm>>
    <associate|footnr-1|<tuple|1|?|may31.tm>>
  </collection>
</references>