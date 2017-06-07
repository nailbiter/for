<TeXmacs|1.99.4>

<style|article>

<\body>
  We want to make <math|X=\<Gamma\>\\\<cal-H\>>, where <math|H:>upper
  half-plane, <math|\<Gamma\>\<subset\>SL<rsub|2><around*|(|\<bbb-R\>|)>>:
  discrete subgoup.

  Note that

  <\equation*>
    Isom<around*|(|\<cal-H\>|)>\<cong\>PSL<around*|(|2,\<bbb-R\>|)>=SL<around*|(|2,\<bbb-R\>|)>/\<pm\>I
  </equation*>

  <\definition>
    We say <math|X>: <with|font-series|bold|hyperbolic space> iff:

    <\itemize>
      <item><math|X> is of finite volume;

      <item><math|\<Gamma\>> acts freely.
    </itemize>
  </definition>

  <with|font-series|bold|Today:> Make torsion-free subgroup of
  <math|PSL<around*|(|2,\<bbb-R\>|)>> (free <math|\<Rightarrow\>>
  torsion-free).

  More precisely, we construct:

  <\itemize>
    <item><math|<overline|\<Gamma\><rsub|a,b><around*|(|N|)>><space|1em><around*|(|N\<geqslant\>3|)>>

    <item><math|<overline|\<Gamma\><around*|(|N|)>><space|1em><around*|(|N\<geqslant\>2|)>>
  </itemize>

  Note that <math|\<Gamma\>\<assign\>\<Gamma\><around*|(|1|)>=SL<around*|(|2,\<bbb-Z\>|)>>.

  We start with <math|<overline|\<Gamma\><rsub|a,b><around*|(|N|)>>> induced
  by the following diagram:

  <\center>
    <image|may24d1.eps|600px|200px||>
  </center>

  <\proposition>
    <math|<overline|\<Gamma\><rsub|a,b><around*|(|N|)>>\<subset\>PSL<around*|(|2,\<bbb-R\>|)>>
    is torsion free if <math|N\<geqslant\>3>.
  </proposition>

  <\proof>
    Observe the following:

    <\center>
      <image|may24d2.eps|600px|200px||>
    </center>

    Hence, it suffices to show that

    <\equation*>
      \<star\>\<subset\>SO<around*|(|q,\<bbb-Z\>|)>\<cap\>Ker<around*|(|GL<around*|(|3,\<bbb-Z\>|)>\<rightarrow\>GL<around*|(|3,\<bbb-Z\>|)>/N\<bbb-Z\>|)>
    </equation*>

    is torsion-free.

    Hence, suffices to show that <math|Ker<around*|(|\<ldots\>|)>> is
    torsion-free. This follows from the next lemma:
  </proof>

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<table|<row|<cell|D<rsub|a,b><rprime|'><around*|(|\<bbb-R\>|)>/<around*|{|\<pm\>1|}>>|<cell|\<rightarrow\>>|<cell|SO<around*|(|q,\<bbb-R\>|)>>>|<row|<cell|\<alpha\>>|<cell|\<mapsto\>>|<cell|<around*|(|\<beta\>\<mapsto\>\<alpha\>\<beta\>\<alpha\><rsup|-1>|)>>>|<row|<cell|p+q
    i+r j+s k>|<cell|\<mapsto\>>|<cell|<around*|(|p+q i+r j+s
    k|)><around*|(|x i+y j+z k|)><around*|(|p-q i-r j-s k|)>>>>>>>|<cell|>>>>
  </eqnarray>

  <\lemma>
    For <math|n\<in\>\<bbb-N\><rsub|+>,l\<in\>\<bbb-Z\>,l\<geqslant\>3> we
    have for any <math|F\<subset\>GL<around*|(|n,\<bbb-Z\>|)>>:finite
    subgroup we have the following:

    <\equation*>
      <tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<table|<row|<cell|GL<around*|(|n,\<bbb-Z\>|)>>|<cell|<long-arrow|\<rubber-rightarrow\>|\<pi\>>>|<cell|GL<around*|(|n,\<bbb-Z\>|)>/l\<bbb-Z\>>>|<row|<cell|\<cup\>>|<cell|>|<cell|\<cup\>>>|<row|<cell|F>|<cell|<long-arrow|\<rubber-rightarrow\>|inj>>|<cell|\<pi\><around*|(|F|)>.>>>>>
    </equation*>
  </lemma>

  <\proof>
    Proceed by contradiction. Hence, assume that <math|\<pi\>\<mid\><rsub|F>>
    is not injective.

    By averaging we can set the <math|F>-invariant positive definite 2-form
    <math|q> on <math|\<bbb-R\><rsup|n>>. Now,

    <\enumerate>
      <item>Take <math|v\<in\>\<bbb-Z\><rsup|n>-<around*|{|0|}>> so that
      <math|q<around*|(|v|)>> is the smallest. Such <math|v> span
      <math|V\<subset\>\<bbb-R\><rsup|n>>;

      <item>Divide <math|q> by <math|min<rsub|v\<in\>\<bbb-Z\><rsup|n>-<around*|{|0|}>><around*|{|q<around*|(|v|)>|}>>
      on <math|V>;

      <item>This give us <math|F>-invariant positive form, hence we can talk
      about <math|V<rsup|\<perp\>>>.
    </enumerate>

    Take <math|F\<ni\>\<gamma\>\<neq\>1> so that
    <math|\<pi\><around*|(|\<gamma\>|)>=1>. We then have:

    <\itemize>
      <item><math|q<around*|(|\<gamma\><around*|(|v|)>|)>=1> (since <math|q>
      is <math|F>-invariant)

      <item>Note that <math|<around*|(|\<gamma\>-1|)>v\<in\>l\<bbb-Z\><rsup|n>.>
    </itemize>

    Hence, <math|\<gamma\><around*|(|v|)>> and <math|v>:

    <\enumerate>
      <item>have their difference belonging to <math|l\<bbb-Z\><rsup|n>>

      <item>both belong to <math|<around*|{|x\<mid\>q<around*|(|x|)>=1|}>>.
    </enumerate>

    Hence, contradiction.
  </proof>

  Now, we let <math|\<Gamma\>\<assign\>SL<around*|(|2,\<bbb-Z\>|)>> and we
  then have for <math|N\<in\>\<bbb-N\><rsub|+>>,

  <\equation*>
    \<Gamma\><around*|(|N|)>=<around*|{|\<gamma\>\<in\>\<Gamma\>\<mid\>\<gamma\>\<equiv\><around*|(|<tabular|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>>>>>|)>mod
    N|}>.
  </equation*>
</body>

<\initial>
  <\collection>
    <associate|magnification|1.2>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
  </collection>
</references>