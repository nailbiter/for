<TeXmacs|1.99.4>

<style|article>

<\body>
  <doc-data|<doc-title|4 year seminar, July 5>>

  <\theorem*>
    Let:

    <\itemize>
      <item><math|\<Gamma\>\<subset\>SL<around*|(|2,\<bbb-R\>|)>>: discrete
      subgroup.\ 

      <item><math|\<Gamma\>\\\<cal-H\>>: not compact

      <item><math|\<Gamma\>\\\<cal-H\>>: finite volume
    </itemize>

    <math|\<rightsquigarrow\>\<Gamma\>>'s fundamental domain can be described
    as (not-disjoint) union

    <\equation*>
      D=<wide*|D<rsub|0>|\<wide-underbrace\>><rsub|<math-up|relatively
      compact>>\<cup\><wide*|V<around*|(|x<rsub|1>|)>\<cup\>\<ldots\>\<cup\>V<around*|(|x<rsub|t>|)>|\<wide-underbrace\>><rsub|<math-up|representatives
      of each equivalence class of <math|\<Gamma\>>'s cusps>>
    </equation*>

    <\center>
      <image|jul5d1.jpg|502px|248px||>

      \;
    </center>
  </theorem*>

  <\definition*>
    Let:

    <\itemize>
      <item><math|\<Gamma\>\<subset\>SL<around*|(|2,\<bbb-R\>|)>>: discrete

      <item><math|z<rsub|0>\<in\>\<cal-H\>>: not <math|\<Gamma\>>'s fixed
      point of <math|\<Gamma\>>
    </itemize>

    We fix

    <\equation*>
      D<around*|(|z<rsub|0>|)>\<assign\><around*|{|z\<in\>\<cal-H\>\<mid\>r<around*|(|z<rsub|0>,z|)>\<leqslant\>r<around*|(|\<gamma\>z<rsub|0>,z|)>\<forall\>\<gamma\>\<in\>\<Gamma\>|}>
    </equation*>
  </definition*>

  <\render-theorem|Fact>
    We have:

    <\enumerate>
      <item>

      <\itemize>
        <item><math|<big|cup><rsub|\<gamma\>\<in\>\<Gamma\>>\<gamma\>D<around*|(|z<rsub|0>|)>=\<cal-H\>>

        <item><math|\<gamma\>\<neq\>\<gamma\><rprime|'>\<Rightarrow\><wide*|<wide|\<gamma\>D<around*|(|z<rsub|0>|)>|\<abovering\>>|\<wide-underbrace\>><rsub|<wide|U
        |\<abovering\>><math-up|denotes interior of
        <math|U>>>\<cap\><wide|\<gamma\>D<around*|(|z<rsub|0>|)>|\<abovering\>>=\<varnothing\>>
      </itemize>

      <item><math|D<around*|(|z<rsub|0>|)>>'s boundary is piecewise geodesic
    </enumerate>
  </render-theorem>

  <\lemma*>
    Suppose <math|\<Gamma\>\\\<cal-H\>>: not compact. Then,

    <math|\<rightsquigarrow\>> geodesic <math|f<around*|(|t|)><space|0.6spc><around*|(|0\<leqslant\>t\<less\>\<infty\>|)>>
    going from <math|z<rsub|0>> is contained in
    <math|D<around*|(|z<rsub|0>|)>>
  </lemma*>

  <\proof>
    Since <math|D<around*|(|z<rsub|0>|)>>: not compact, there is sequence of
    points <math|<around*|{|z<rsub|n>|}>> is <math|D<around*|(|z<rsub|0>|)>>
    such that\ 

    <\equation*>
      r<around*|(|z<rsub|n>,z<rsub|0>|)><long-arrow|\<rubber-rightarrow\>|n\<rightarrow\>\<infty\>>\<infty\>
    </equation*>

    <center|<image|jul5d2.jpg|502px|241px||>>

    First, move <math|z<rsub|0>\<mapsto\>i> by using element
    <math|g\<in\>SL<around*|(|2,\<bbb-R\>|)>>. By changing <math|\<Gamma\>>
    to <math|g\<Gamma\>g<rsup|-1>>, we may assume <math|z<rsub|0>=i>.

    <math|\<rightsquigarrow\>> <math|i> and <math|z<rsub|n>> can be connected
    by geodesic <math|l<rsub|n><around*|(|t|)>,0\<leqslant\>t\<leqslant\>t<rsub|n>>.
    Hence, <math|\<exists\>k<rsub|n>\<in\>SO<around*|(|2|)>>, such that
    <math|l<rsub|n><around*|(|t|)>=k<rsub|n>\<cdot\>i e<rsup|t>>.

    As <math|SO<around*|(|2|)>> is compact, by taking the appropriate
    subsequence of <math|k<rsub|n>>, we may assume
    <math|k<rsub|n>\<rightarrow\><space|0.6spc><rsup|\<exists\>>k\<in\>SO<around*|(|2|)>>,
    and we take <math|t<rsub|n>> correspondingly

    For each <math|n> we have <math|0\<leqslant\>t\<leqslant\>t<rsub|n>>,
    <math|l<rsub|n><around*|(|t|)>=k<rsub|n>i
    e<rsup|t><long-arrow|\<rubber-rightarrow\>|n\<rightarrow\>\<infty\>>k i e
    <rsup|t>>, hence as <math|D<around*|(|z<rsub|0>|)>>: closed, we conclude
    that <math|k i e<rsup|t>> is contained in <math|D<around*|(|i|)>>.
  </proof>

  From now on, we assume that geodesic <math|i e <rsup|t>> is contained in
  <math|D<around*|(|i|)>>

  <\render-theorem|Fact>
    Suppose that

    <\itemize>
      <item>Hypothesis is as above

      <item><math|\<Gamma\>\\\<cal-H\>>: has finite volume
    </itemize>

    Then, the set <math|\<Gamma\>\<cap\><around*|{|\<pm\><around*|(|<tabular|<tformat|<table|<row|<cell|1>|<cell|a>>|<row|<cell|0>|<cell|1>>>>>|)>\<mid\>a\<in\>\<bbb-R\>|}>>
    is strictly bigger than <math|<around*|{|\<pm\>1|}>>.
  </render-theorem>

  <\definition*>
    <math|N\<assign\><around*|{|<around*|(|<tabular|<tformat|<table|<row|<cell|1>|<cell|a>>|<row|<cell|0>|<cell|1>>>>>|)>\<mid\>a\<in\>\<bbb-R\>|}>>
  </definition*>

  <\lemma*>
    To <math|\<lambda\>\<in\>\<bbb-R\><rsub|\<gtr\>0>>, we let
    <math|D<around*|(|\<infty\>|)>\<assign\>D<around*|(|i|)>\<cap\><around*|{|z\<mid\>Im
    z\<gtr\>\<lambda\>|}>>. Then <math|\<exists\>\<mu\>,\<mu\><rprime|'>\<in\>\<bbb-R\>>
    such that\ 

    <\equation*>
      D<around*|(|\<infty\>|)>=<around*|{|z\<mid\>m\<leqslant\>Re
      z\<leqslant\>\<mu\><rprime|'>,Im z\<gtr\>\<lambda\>|}>.
    </equation*>
  </lemma*>

  <\proof>
    \;

    <center|<image|jul5d3.jpg|502px|248px||>>

    From Fact above, we conclude that there exists
    <math|<wide*|\<pm\>|\<wide-underbrace\>><rsub|<math-up|either <math|+> or
    <math|->>><around*|(|<tabular|<tformat|<table|<row|<cell|1>|<cell|\<mu\>>>|<row|<cell|0>|<cell|1>>>>>|)>\<in\>\<Gamma\>>
    <math|<around*|(|\<mu\>\<neq\>0|)>>, hence as
    <math|D<around*|(|i|)>\<subset\><around*|{|<around*|\||Re<around*|(|\<cdot\>|)>|\|>\<leqslant\><frac|\<mu\>|2>|}>>.
    Now, for every <math|\<gamma\>\<in\>\<Gamma\>> we let

    <\equation*>
      C<rsub|\<gamma\>>\<assign\><around*|{|z\<in\>\<cal-H\>\<mid\>r<around*|(|z,\<gamma\>i|)>\<leqslant\>r<around*|(|z,i|)>|}>.
    </equation*>

    <center|<image|jul5d4.jpg|502px|248px||>>

    <math|\<exists\>z\<in\>C<rsub|\<gamma\>>> such that <math|<around*|\||Re
    z|\|>\<leqslant\><frac|\<mu\>|2>,Im z=1>, hence
    <math|r<around*|(|i,\<gamma\>i|)>\<leqslant\>2<wide*|r<around*|(|i,j|)>|\<wide-underbrace\>><rsub|<math-up|bounded
    from above>>>

    <\equation*>
      <stack|<tformat|<table|<row|<cell|<around*|{|\<gamma\>\<mid\>C<rsub|\<gamma\>>\<cap\><around*|{|z\<mid\><around*|\||Re
      z|\|>\<leqslant\><frac|\<mu\>|2>,Im
      z\<geqslant\>1|}>\<neq\>\<varnothing\>|}>>>|<row|<cell|\<cap\>>>|<row|<cell|<around*|{|\<gamma\>\<mid\>r<around*|(|i,\<gamma\>i|)>\<leqslant\>M|}>:finite>>>>>
    </equation*>

    <\itemize>
      <item><math|\<forall\>C,C<rprime|'>\<subset\><rsup|cpt>\<cal-H\>,<around*|{|\<gamma\>\<mid\>\<gamma\>C\<cap\>C<rprime|'>\<neq\>\<varnothing\>|}>:finite>

      <item><math|SL<around*|(|2,\<bbb-R\>|)><long-arrow|\<rubber-rightarrow\>|p>\<cal-H\>,\<exists\>B,B<rprime|'>\<subset\><rsup|cpt>SL<around*|(|2,\<bbb-R\>|)>\<mid\>p<around*|(|B|)>=C,p<around*|(|B<rprime|'>|)>=C<rprime|'>>

      <item><math|\<gamma\>C\<cap\>C<rprime|'>\<neq\>\<varnothing\>\<Leftrightarrow\><space|0.6spc><rsup|\<exists\>>g\<in\>B,<rsup|\<exists\>>g<rprime|'>\<in\>B,<around*|(|g<rprime|'>|)><rsup|-1>\<gamma\>g\<in\>SO<around*|(|2|)>\<Leftrightarrow\>\<gamma\>\<in\>B<rprime|'>SO<around*|(|2|)>B<rsup|-1>\<cap\>\<Gamma\>>
    </itemize>
  </proof>

  <\corollary*>
    <math|D<around*|(|i|)>> contains the geodesics
    <math|l<around*|(|t|)>,<space|0.6spc><around*|(|0\<leqslant\>t\<less\>\<infty\>|)>>,
    where

    <\equation*>
      <stack|<tformat|<table|<row|<cell|l<around*|(|t|)>=k i
      e<rsup|t><space|1em><around*|(|k\<in\>SO<around*|(|2|)>|)>,>>|<row|<cell|x\<assign\>k<around*|(|\<infty\>|)>>>|<row|<cell|D<around*|(|x|)>\<assign\>D<around*|(|i|)>\<cap\>k<around*|{|z\<mid\>Im
      z\<gtr\>\<lambda\>|}>>>>>>
    </equation*>

    Then, <math|\<exists\>\<mu\>\<gtr\>0,\<lambda\>> big enough, so that
    <math|D<around*|(|x|)>=k<around*|{|z\<mid\><around*|\||Re
    z|\|>\<leqslant\>\<mu\>,Im z\<gtr\>\<lambda\>|}>>.
  </corollary*>

  <center|<image|jul5d5.jpg|502px|248px||>>

  <\lemma*>
    There are finitely many geodesics that enter from <math|i> and are
    contained in <math|D<around*|(|i|)>>.
  </lemma*>

  <\proof>
    Suppose that there are infinitely many. Then there exist
    <math|SO<around*|(|2|)>\<ni\>k<rsub|n>\<rightarrow\>k\<in\>SO<around*|(|2|)>>,
    such that for every <math|k<rsub|n>i e<rsup|t>,k i
    e<rsup|t>\<in\>D<around*|(|i|)>>.

    If we multiply by <math|k<rsup|-1>>, then WLOG we may take

    <\equation*>
      <stack|<tformat|<table|<row|<cell|k<rsub|n>=<around*|(|<tabular|<tformat|<table|<row|<cell|\<alpha\><rsub|n>>|<cell|\<beta\><rsub|n>>>|<row|<cell|-\<beta\><rsub|n>>|<cell|\<alpha\><rsub|n>>>>>>|)>>>|<row|<cell|k<rsub|n><around*|(|\<infty\>|)>=-<frac|\<alpha\><rsub|n>|\<beta\><rsub|n>>,>>|<row|<cell|k<rsub|n>\<rightarrow\>1\<Rightarrow\><around*|\||<frac|\<alpha\><rsub|n>|\<beta\><rsub|n>>|\|>\<rightarrow\>\<infty\>>>|<row|<cell|D<around*|(|i|)>\<subset\><around*|{|z\<mid\><around*|\||Re
      z|\|>\<leqslant\><space|0.6spc><rsup|\<exists\>>M|}>\<Rightarrow\><text|for
      big <math|n> >\<exists\>t,k<rsub|n>i
      e<rsup|t>\<nin\>D<around*|(|i|)>.>>>>>
    </equation*>

    \;
  </proof>

  <\lemma*>
    If we label geodesics in <math|D<around*|(|i|)>> as
    <math|<around*|{|z<rsub|i><around*|(|t|)>|}><rsub|i=1><rsup|s>> with
    <math|x<rsub|i>\<assign\>z<rsub|i><around*|(|\<infty\>|)>>, then

    <\equation*>
      D<rsub|0>\<assign\>D<around*|(|i|)>-<big|cup><rsub|i=1><rsup|s>D<around*|(|x<rsub|i>|)>\<rightsquigarrow\>D<rsub|0>:<text|relatively<\footnote>
        the discussions appeared whether <math|D<rsub|0>> is really compact,
        or just barely relatively compact. It seems that it is really
        compact.
      </footnote> compact>
    </equation*>
  </lemma*>

  <\proof>
    Suppose <math|D<rsub|0>>: not compact. <math|\<rightsquigarrow\>> by the
    same reasoning as in previous Lemma, <math|\<exists\>h<rsub|n>\<in\>SO<around*|(|2|)>,<space|0.6spc><rsup|\<exists\>><around*|{|t<rsub|n>|}>:t<rsub|n>\<rightarrow\>\<infty\>,h<rsub|n>i
    e<rsup|t<rsub|n>>\<in\>D<rsub|0>,h<rsub|n>\<rightarrow\><space|0.6spc><rsup|\<exists\>>h\<in\>SO<around*|(|2|)>>

    (<math|h i e<rsup|t>\<in\>D<around*|(|i|)><space|0.6spc><around*|(|0\<leqslant\>t\<less\>\<infty\>|)>\<rightsquigarrow\>h<around*|(|\<infty\>|)>:<text|one
    of >x<rsub|i><text|'s>>)

    <\equation*>
      <stack|<tformat|<table|<row|<cell|h<rsub|n>=<around*|(|<tabular|<tformat|<table|<row|<cell|\<alpha\><rsub|n>>|<cell|\<beta\><rsub|n>>>|<row|<cell|-\<beta\><rsub|n>>|<cell|\<alpha\><rsub|n>>>>>>|)>,\<lambda\><rsub|n>=e<rsup|t<rsub|n>>>>|<row|<cell|h<rsub|n>i
      e<rsup|t<rsub|n>>=<frac|\<alpha\><rsub|n>\<lambda\><rsub|n>i+\<beta\><rsub|n>|-\<beta\><rsub|n>\<lambda\><rsub|n>i+\<alpha\><rsub|n>>=<frac|\<alpha\><rsub|n>\<beta\><rsub|n><around*|(|\<lambda\><rsub|n><rsup|2>-1|)>+\<lambda\><rsub|n>i<around*|(|\<alpha\><rsub|n><rsup|2>+\<beta\><rsub|n><rsup|2>|)>|\<alpha\><rsub|n><rsup|2>+\<beta\><rsub|n><rsup|2>\<lambda\><rsub|n><rsup|2>>=<frac|\<alpha\><rsub|n>\<beta\><rsub|n><around*|(|\<lambda\><rsub|n><rsup|2>-1|)>+\<lambda\><rsub|n>i|\<beta\><rsub|n><rsup|2><around*|(|\<lambda\><rsub|n><rsup|2>-1|)>+1>.>>>>>
    </equation*>

    It suffices to show that imaginary part of the latter tends to
    <math|\<infty\>>:

    <\itemize>
      <item><math|<tabular|<tformat|<table|<row|<cell|h<rsub|n>\<rightarrow\>1>>>>>\<Rightarrow\>\<alpha\><rsub|n>\<rightarrow\>1,\<beta\><rsub|n>\<rightarrow\>0,\<lambda\><rsub|n>\<rightarrow\>\<infty\>;>

      <item><math|<around*|\||Re<around*|(|h<rsub|n>i
      e<rsup|n>|)>|\|>\<leqslant\><space|0.2spc><rsup|\<exists\>>\<mu\>>,
      hence by taking <math|n> big enough, as we have
      <math|<around*|\||\<alpha\><rsub|n>|\|>\<geqslant\><frac|1|2>>, we have

      <\equation*>
        <stack|<tformat|<table|<row|<cell|<around*|\||<frac|\<alpha\><rsub|n>\<beta\><rsub|n><around*|(|\<lambda\><rsub|n><rsup|2>-1|)>|\<beta\><rsub|n><rsup|2><around*|(|\<lambda\><rsub|n><rsup|2>-1|)>+1>|\|>\<leqslant\>\<mu\>>>|<row|<cell|<frac|1|2>\<cdot\><frac|<around*|\||\<beta\><rsub|n>|\|><around*|(|\<lambda\><rsub|n><rsup|2>-1|)>|\<beta\><rsub|n><rsup|2><around*|(|\<lambda\><rsub|n><rsup|2>-1|)>+1>\<Rightarrow\><around*|\||\<beta\><rsub|n>|\|><around*|(|\<lambda\><rsub|n><rsup|2>-1|)>\<leqslant\>2<around*|(|\<beta\><rsub|n><rsup|2><around*|(|\<lambda\><rsub|n><rsup|2>-1|)>+1|)>\<mu\>>>|<row|<cell|<around*|\||\<beta\><rsub|n>|\|><around*|(|\<lambda\><rsub|n><rsup|2>-1|)><around*|(|1-2<around*|\||\<beta\><rsub|n>|\|>\<mu\>|)>\<leqslant\>2\<mu\>>>|<row|<cell|<around*|\||\<beta\><rsub|n>|\|><around*|(|\<lambda\><rsub|n><rsup|2>-1|)>\<leqslant\><frac|2\<mu\>|1-2<around*|\||\<beta\><rsub|n>|\|>\<mu\>>>>|<row|<cell|\<Rightarrow\>\<beta\><rsub|n><rsup|2><around*|(|\<lambda\><rsub|n><rsup|2>-1|)>+1\<leqslant\><frac|2\<mu\>|1-2<around*|\||\<beta\><rsub|n>|\|>\<mu\>>+1>>>>>
      </equation*>

      diagram
    </itemize>

    \;
  </proof>
</body>

<\initial>
  <\collection>
    <associate|magnification|1.2>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?|jun28.tm>>
    <associate|footnote-1|<tuple|1|?|jun28.tm>>
    <associate|footnr-1|<tuple|1|?|jun28.tm>>
  </collection>
</references>