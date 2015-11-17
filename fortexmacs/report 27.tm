<TeXmacs|1.0.7.18>

<style|generic>

<\body>
  <block|<tformat|<twith|table-halign|l>|<cwith|3|3|1|1|cell-width|5cm>|<cwith|3|3|1|1|cell-hmode|exact>|<cwith|4|4|1|-1|cell-hyphen|c>|<cwith|4|4|1|1|cell-width|5cm>|<cwith|4|4|1|1|cell-hmode|min>|<twith|table-width|7.5cm>|<twith|table-hmode|exact>|<cwith|1|1|1|-1|cell-width|7.5cm>|<cwith|1|1|1|-1|cell-hmode|exact>|<cwith|1|1|1|1|cell-hyphen|t>|<cwith|2|2|2|2|cell-hyphen|t>|<cwith|3|3|2|2|cell-vcorrect|t>|<cwith|3|3|2|2|cell-hyphen|t>|<twith|table-valign|b>|<cwith|4|4|2|2|cell-valign|t>|<table|<row|<\cell>
    <with|font-series|bold|What had to be done>
  </cell>|<cell|<with|font-series|bold|What has been done>>>|<row|<cell|4.
  the eigenvalues of K-types for 2>|<\cell>
    <with|font-series|bold|not done> (only cannot answer the case when
    <math|q> is odd for kernel of singular symmetry breaking operator
    supported on <math|<around*|{|x<rsub|p>=0|}>>, see
    <samp|KP-normalization.pdf>)
  </cell>>|<row|<cell|3. the renormalization of 2>|<\cell>
    <with|font-series|bold|done> (see Prop. 5 of <samp|KP-normalization.pdf>,
    although I do not know whether it is the ``best'' possible and I don't
    know when it becomes zero)
  </cell>>|<row|<\cell>
    5. hierarchy of 1 and the two <math|>operators in 2 by residue formulae
    under some mild assumption of the parameter
  </cell>|<\cell>
    <with|font-series|bold|not done>
  </cell>>>>>

  \;

  <with|font-series|bold|What has been done (additional)>

  <\enumerate-numeric>
    <item>As I said originally, there two are two methods that can be
    employed normalize <math|K<rsub|\<lambda\>,\<nu\>><rsup|P>> in the ``best
    possible'' way and to determine where the normalized operator
    <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|P>> gets zero. The first
    consists of pairing <math|K<rsub|\<lambda\>,\<nu\>><rsup|P>> with
    <math|K>-finite vector and finding multiplier that makes all these
    pairings holomorphic. The second consists in applying an expansion

    <\equation>
      K<rsub|\<lambda\>,\<nu\>><rsup|P>\<assign\><big|sum><rsub|i=0><rsup|k><frac|<around*|(|-1|)><rsup|i><around*|(|2k|)>!<around*|(|\<nu\>|)><rsub|><rsup|i>|<around*|(|2k-2i|)>!i!>\<delta\><rsup|<around*|(|2k-2i|)>><around*|(|x<rsub|p>|)>\<otimes\>Q<rsub|i><label|eq-1>
    </equation>

    with

    <\equation*>
      Q<rsub|i>\<assign\><choice|<tformat|<table|<row|<cell|<around*|\||<wide|Q|~>|\|><rsup|-\<nu\>-2i>>|<cell|,i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>>>|<row|<cell|sgn<around*|(|<wide|Q|~>|)><around*|\||<wide|Q|~>|\|><rsup|-\<nu\>-2i>>|<cell|,i\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>>>>>
    </equation*>

    Here are relative pros and cons of these methods in tabular form

    <block*|<tformat|<table|<row|<cell|>|<cell|pairing with
    <math|K>-finite>|<cell|expanding in <math|\<delta\>\<otimes\><around*|(|<wide|Q<rsub|>|~><rsub|+><rsup|\<nu\>>\<pm\><wide|Q|~><rsub|-><rsup|\<nu\>>|)>>>>|<row|<cell|scope>|<cell|<math|q\<in\>2\<bbb-Z\>>>|<cell|all>>|<row|<cell|complexity>|<cell|<math|q\<rightarrow\>\<infty\>>>|<cell|<math|k\<rightarrow\>\<infty\>>>>|<row|<cell|extends
    to regular>|<cell|yes>|<cell|no>>>>>

    <item>Some additional work done in <samp|KP-normalization.pdf>.
  </enumerate-numeric>

  <with|font-series|bold|What I plan to do>

  <\enumerate>
    <item>Finish all proofs in <samp|KP-normalization.pdf>.

    <item>Prove several additional statements in
    <verbatim|KP-normalization.pdf>:

    <\enumerate>
      <item>I think, that I can show that
      <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|P>> in proposition 2 is
      nonzero

      <item>I want to show that <math|<around*|\||Q|\|><rsup|\<nu\>>> and
      <math|<around*|\||Q|\|><rsup|\<nu\>>sgn*<around*|(|Q|)>> are
      nowhere-vanishing distributions depending on
      <math|\<nu\>\<in\>\<bbb-C\>>.
    </enumerate>

    <item>Compare normalizations of <math|K<rsub|\<lambda\>,\<nu\>><rsup|P>>
    obtained using the expression (1) together with those obtained by
    analyzing pairing of <math|K<rsub|\<lambda\>,\<nu\>><rsup|P>> with
    <math|K>-finite vectors.\ 

    <\enumerate>
      <item>First start with <math|k=0> and <math|q=2> case.

      <item>Then, do the <math|q=2> and <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>>
      case.

      <item>Then, extend to all <math|q>.
    </enumerate>

    If done right, this'll give better answer to question 4 than we have at
    the moment.

    <item>Related to <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>:>

    <\enumerate>
      <item>See how support changes for different <math|\<lambda\>>

      <item>Dimensional argument to explicitly determine
      <math|\<cal-S\>ol<rsub|C><around*|(|\<bbb-R\><rsup|p,q>|)>>.
    </enumerate>
  </enumerate>

  <\with|font-series|bold>
    Questions
  </with>

  <\enumerate>
    <item>In one of the five questions You asked me long time ago, number 4
    was normalization. Did this question assumed that I know where the
    normalized operator gets zero? In other words, is the normalization I
    have now for <math|K<rsub|\<lambda\>,\<nu\>><rsup|P>> good enough, or it
    has to be improved?

    <item>If I understood correctly, You said that method used on
    Gelfand-Shilov to find poles and residues of
    <math|P<rsub|\<pm\>><rsup|\<nu\>>> can be used if singularities of the
    distribution being analytically continuated are transversal. As far as I
    understand, integral

    <\equation*>
      <big|int><rsub|-1><rsup|1><around*|(|1-y<rsup|2>|)><rsup|<around*|(|\<lambda\>+\<nu\>+N-q-2|)>/2>y<rsup|n<rprime|'>><big|int><rsub|-1><rsup|1><around*|(|1-x<rsup|2>|)><rsup|<around*|(|q-2|)>/2>x<rsup|m<rprime|'>><around*|\||x-y|\|><rsup|-\<nu\>>d
      x d y.
    </equation*>

    which I seek to normalize, has transversal singularities (these being
    <math|x=\<pm\>1>, <math|y=\<pm\>1> and <math|x=y>). But I still have no
    clear idea on how to proceed.
  </enumerate>

  <with|font-series|bold|Comments>

  (empty)
</body>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|docs-internal-guid-b6e7b8ae-fabf-ee0f-e89e-238b9e36d2a3|<tuple|?|1>>
    <associate|docs-internal-guid-b6e7b8ae-fac0-10b2-c1d9-4fa5f85155a1|<tuple|?|1>>
    <associate|docs-internal-guid-b6e7b8ae-fac0-2832-1c7c-738d1a8a5962|<tuple|?|1>>
    <associate|eq-1|<tuple|1|?>>
  </collection>
</references>