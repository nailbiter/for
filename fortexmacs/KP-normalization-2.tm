<TeXmacs|1.0.7.18>

<style|<tuple|article|mystyle>>

<\body>
  <section|Setting and goal>

  <section|Comments>

  <section|Main results>

  <\proposition>
    <label|prop-1>Let <math|Q> denote the <math|<around*|(|p,q|)>>-quadratic
    form with <math|p,q\<gtr\>0>. We also assume that
    <math|n\<assign\>p+q\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>. Let
    <math|F<rsup|<around*|(|0|)>><rsub|\<nu\>>\<assign\><around*|\||Q|\|><rsup|\<nu\>>>
    and <math|F<rsup|<around*|(|1|)>><rsub|\<nu\>>\<assign\><around*|\||Q|\|><rsup|\<nu\>>sgn<around*|(|Q|)>>
    be generalized functions for <math|Re<around*|(|\<nu\>|)>\<gtr\>0>.\ 

    Let further <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>\<assign\>F<rsub|\<nu\>><rsup|<around*|(|i|)>>/N<rsub|i>>
    for <math|i=0,1>, where <math|N<rsub|0>\<assign\>\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>\<Gamma\><around*|(|\<nu\>+n/2|)>>
    and <math|N<rsub|1>\<assign\>\<Gamma\><around*|(|<frac|\<nu\>+2|2>|)>\<Gamma\><around*|(|\<nu\>+n/2|)>>.
    Then, <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>> extends to
    holomorphic in <math|\<nu\>\<in\>\<bbb-C\>> distributions. Moreover,
    these are nonzero for <math|\<nu\>\<in\>\<bbb-C\>>.
  </proposition>

  <\proposition>
    <label|prop-2>Let the setting, <math|F<rsub|\<nu\>><rsup|<around*|(|i|)>>>
    and <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>> be as in
    proposition <reference|prop-1>, but assume that
    <math|n\<assign\>p+q\<in\>2\<bbb-Z\><rsub|\<gtr\>0>> and let\ 

    <\equation*>
      N<rsub|i>\<assign\><choice|<tformat|<table|<row|<cell|\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+n/2|2>|)>,>|<cell|i=0,n/2\<in\>2\<bbb-Z\>,p,q\<in\>2\<bbb-Z\>>>|<row|<cell|\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>\<Gamma\>*<around*|(|<frac|\<nu\>+n/2+1|2>|)>,>|<cell|i=0,n/2\<in\>2\<bbb-Z\>+1,p,q\<in\>2\<bbb-Z\>>>|<row|<cell|\<Gamma\><around*|(|<frac|\<nu\>+2|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+n/2+1|2>|)>,>|<cell|i=1,n/2\<in\>2\<bbb-Z\>,p,q\<in\>2\<bbb-Z\>>>|<row|<cell|\<Gamma\><around*|(|<frac|\<nu\>+2|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+n/2|2>|)>,>|<cell|i=1,n/2\<in\>2\<bbb-Z\>+1,p,q\<in\>2\<bbb-Z\>>>|<row|<cell|\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+n/2+1|2>|)>,>|<cell|i=0,n/2\<in\>2\<bbb-Z\>,p,q\<in\>2\<bbb-Z\>+1>>|<row|<cell|\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+n/2|2>|)>,>|<cell|i=0,n/2\<in\>2\<bbb-Z\>+1,p,q\<in\>2\<bbb-Z\>+1>>|<row|<cell|\<Gamma\><around*|(|<frac|\<nu\>+2|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+n/2|2>|)>,>|<cell|i=1,n/2\<in\>2\<bbb-Z\>,p,q\<in\>2\<bbb-Z\>+1>>|<row|<cell|\<Gamma\><around*|(|<frac|\<nu\>+2|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+n/2+1|2>|)>,>|<cell|i=1,n/2\<in\>2\<bbb-Z\>+1,p,q\<in\>2\<bbb-Z\>+1>>>>>
    </equation*>

    Then, <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>> extends to
    holomorphic in <math|\<nu\>\<in\>\<bbb-C\>> distributions. Moreover,
    these are nonzero for <math|\<nu\>\<in\>\<bbb-C\>>.
  </proposition>

  <section|Auxiliary results>

  <\lemma>
    <label|lem-restricted> Meromorphic distribution
    <math|Q<rsub|\<pm\>><rsup|\<nu\>><mid|\|><rsub|<around*|{|x\<neq\>0|}>>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>-<around*|{|0|}>|)>>
    has simple poles at <math|\<nu\>\<in\>> with residues given by\ 

    <\equation*>
      res<rsub|\<nu\>=-k><around*|(|Q<rsub|\<pm\>><rsup|\<nu\>><mid|\|><rsub|<around*|{|x\<neq\>0|}>>|)>=<choice|<tformat|<table|<row|<cell|<frac|<around*|(|-1|)><rsup|k-1>|<around*|(|k-1|)>!>\<delta\><rsup|<around*|(|k-1|)>><around*|(|Q|)>,>|<cell|+>>|<row|<cell|<frac|1|<around*|(|k-1|)>!>\<delta\><rsup|<around*|(|k-1|)>><around*|(|Q|)>,>|<cell|->>>>>
    </equation*>
  </lemma>

  <\proof>
    Follows if one views <math|Q<rsup|\<nu\>><rsub|\<pm\>><mid|\|><rsub|<around*|{|x\<neq\>0|}>>>
    as pullback of <math|x<rsub|\<pm\>><rsup|\<nu\>>> under
    <math|Q:\<bbb-R\><rsup|p,q>\<rightarrow\>\<bbb-R\>>, as we know residue
    and poles of <math|x<rsub|\<pm\>><rsup|\<nu\>>>. By the way, information
    on latter can be obtained in the same way we normalize
    <math|<around*|\||Q|\|><rsup|\<nu\>>> and
    <math|<around*|\||Q|\|><rsup|\<nu\>>sgn<around*|(|Q|)>> below.
  </proof>

  <\fact>
    <label|fact-gelfand-n:odd><cite-detail|gelfand1980distribution|sec.
    III.2.2> For <math|n\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1> we have:

    <\enumerate>
      <item><math|Q<rsub|\<pm\>><rsup|\<nu\>>> has at most simple pole at
      <math|\<nu\>=-n/2> with residue given as

      <\equation*>
        res<rsub|\<nu\>=-n/2><around*|(|Q<rsub|\<pm\>><rsup|\<nu\>>|)>=<choice|<tformat|<table|<row|<cell|<frac|<around*|(|-1|)><rsup|<frac|q|2>>\<pi\><rsup|<frac|1|2>n>|\<Gamma\><around*|(|<frac|n|2>|)>>\<delta\><around*|(|x|)>,>|<cell|+,p\<in\>2\<bbb-Z\>+1>>|<row|<cell|0,>|<cell|+,p\<in\>2\<bbb-Z\>>>|<row|<cell|0,>|<cell|-,p\<in\>2\<bbb-Z\>+1>>|<row|<cell|<frac|<around*|(|-1|)><rsup|<frac|p|2>>\<pi\><rsup|<frac|1|2>n>|\<Gamma\><around*|(|<frac|n|2>|)>>\<delta\><around*|(|x|)>,>|<cell|-,p\<in\>2\<bbb-Z\>>>>>>
      </equation*>
    </enumerate>
  </fact>

  <\fact>
    <label|fact-gelfand-n:even><cite-detail|gelfand1980distribution|sec.
    III.2.2> For <math|n\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>> we have:

    <\enumerate>
      <item>When <math|p,q\<in\>2\<bbb-Z\>+1\<nocomma\><rsup|>>,
      <math|Q<rsub|\<pm\>><rsup|\<nu\>>> has double pole at
      <math|\<nu\>=-n/2> with leading term <math|c<rsub|\<pm\>>> given by\ 

      <\equation*>
        c<rsub|\<pm\>>=<frac|\<pi\><rsup|n/2-1>|\<Gamma\><around*|(|n/2|)>>\<delta\><around*|(|x|)>\<times\><choice|<tformat|<table|<row|<cell|<around*|(|-1|)><rsup|<around*|(|q+1|)>/2>,>|<cell|+>>|<row|<cell|<around*|(|-1|)><rsup|<around*|(|p+1|)>/2>,>|<cell|->>>>>
      </equation*>

      <\equation*>
        \;
      </equation*>
    </enumerate>
  </fact>

  <\remark>
    It is quite possible, I think, to prove this fact with direct methods, by
    using simpler machinery, than that of <cite|gelfand1980distribution>.
  </remark>

  <\fact>
    <label|fact-horm-homog><cite-detail|hormander1983analysis|Thm. 3.2.3> If
    <math|u\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|n>-<around*|{|0|}>|)>>
    is homogeneous of degree <math|a\<in\>\<bbb-C\>\\<around*|(|-n-\<bbb-Z\><rsub|\<geqslant\>0>|)>>,
    it's homogeneous extension to <math|\<bbb-R\><rsup|n>> exists and is
    unique.
  </fact>

  <\fact>
    <label|fact-horm1><cite-detail|hormander1983analysis|Thm. 6.2.1> Let
    <math|p,q\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> with <math|n=p+q\<gtr\>2>.
    Let <math|Q> be <math|<around*|(|p,q|)>> quadratic form on
    <math|\<bbb-R\><rsup|p,q>> and <math|\<delta\><rsup|<around*|(|n/2-2|)>><around*|(|Q|)>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>>.
    The latter is homogeneous of degree <math|2-n> and hence, by fact
    <reference|fact-horm-homog>, it has unique extension to
    <math|\<bbb-R\><rsup|p,q>> which we'll also denote by
    <math|\<delta\><rsup|<around*|(|n/2-2|)>><around*|(|Q|)>>. Then, for
    <math|L\<assign\><big|sum><rsub|i=0><rsup|p><frac|\<partial\><rsup|2>|\<partial\>x<rsub|i><rsup|2>>-<big|sum><rsub|j=0><rsup|q><frac|\<partial\><rsup|2>|\<partial\>y<rsub|j><rsup|2>>>
    we have

    <\equation*>
      L \<delta\><rsup|<around*|(|n/2-2|)>><around*|(|Q|)>=4\<pi\><rsup|<around*|(|n/2-2|)>>sin<around*|(|<frac|\<pi\>p|2>|)>\<delta\><around*|(|x|)>
    </equation*>
  </fact>

  <\fact>
    <label|fact-horm2><cite-detail|hormander1983analysis|Thm. 6.2.1> Let
    <math|p,q\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> with <math|n=p+q\<gtr\>2>.
    Let <math|Q> be <math|<around*|(|p,q|)>> quadratic form on
    <math|\<bbb-R\><rsup|p,q>> and <math|<around*|(|Q\<pm\>i0|)><rsup|1-n/2>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>>
    be the pullbacks of <math|<around*|(|x\<pm\>i0|)><rsup|1-n/2>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\>|)>>
    under <math|Q:\<bbb-R\><rsup|p,q>\<rightarrow\>\<bbb-R\>>. The latter are
    homogeneous of degree <math|2-n> and hence, by fact
    <reference|fact-horm-homog>, it has unique extension to
    <math|\<bbb-R\><rsup|p,q>> which we'll also denote by
    <math|<around*|(|Q\<pm\>i0|)><rsup|1-n/2>>. Then, for
    <math|L\<assign\><big|sum><rsub|i=0><rsup|p><frac|\<partial\><rsup|2>|\<partial\>x<rsub|i><rsup|2>>-<big|sum><rsub|j=0><rsup|q><frac|\<partial\><rsup|2>|\<partial\>y<rsub|j><rsup|2>>>
    we have

    <\equation*>
      L <around*|(|Q\<pm\>i0|)><rsup|1-n/2>=<around*|(|2-n|)>c<rsub|n>e<rsup|\<mp\>\<pi\>i
      q/2>\<delta\><around*|(|x|)>,
    </equation*>

    where <math|c<rsub|n>> is the area of unit sphere in
    <math|\<bbb-R\><rsup|n>>.
  </fact>

  <\lemma>
    <label|lem-holo-nonzero>Let <math|Q<rsub|\<nu\>>> be restriction of one
    of <math|Q<rsub|\<pm\>><rsup|\<nu\>>>,
    <math|<around*|\||Q|\|><rsup|\<nu\>>> or
    <math|<around*|\||Q|\|><rsup|\<nu\>>sgn<around*|(|Q|)>> to open connected
    subset <math|A> of its domain of analyticity. Then
    <math|Q<rsub|\<nu\>>\<neq\>0> on <math|A>.
  </lemma>

  <\proof>
    The stronger result is proven in <verbatim|KP-normalization.pdf>.
  </proof>

  <\lemma>
    <label|lem-4>Let <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>> and
    <math|N<rsub|i>> be the same as in proposition <reference|prop-1>. Then
    <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>\<neq\>0> for
    <math|\<nu\>\<nin\><around*|{|\<frak-P\><around*|(|N<rsub|i>|)>\<neq\>0|}>>,
    the notation <math|\<frak-P\><around*|(|\<cdot\>|)>> being introduced in
    <verbatim|KP-normalization.pdf>.
  </lemma>

  <\proof>
    The holomorphicity part of proposition <reference|prop-1> implies that
    the set <math|<around*|{|\<frak-P\><around*|(|N<rsub|i>|)>\<neq\>0|}>> is
    the holomorphicity domain of <math|F<rsub|\<nu\>><rsup|<around*|(|i|)>>>.
    The required statement now follows from <reference|lem-holo-nonzero>.
  </proof>

  <\lemma>
    <label|lem-5>Let <math|L\<assign\><big|sum><rsub|i=0><rsup|p><frac|\<partial\><rsup|2>|\<partial\>x<rsub|i><rsup|2>>-<big|sum><rsub|j=0><rsup|q><frac|\<partial\><rsup|2>|\<partial\>y<rsub|j><rsup|2>>>
    and <math|\<delta\><rsup|<around*|(|k|)>><around*|(|Q|)>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>\\<around*|{|0|}>|)>>
    for <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>>. Then

    <\equation*>
      L\<delta\><rsup|<around*|(|k|)>><around*|(|Q|)>=4<around*|(|<frac|n|2>-<around*|(|k+2|)>|)>\<delta\><rsup|<around*|(|k+1|)>><around*|(|Q|)>
    </equation*>
  </lemma>

  <\proof>
    As shown in <cite-detail|gelfand1980distribution|sec. III.1.6, eq. (1)>,
    we have\ 

    <\equation*>
      <frac|\<partial\>|\<partial\>x<rsub|j>>\<delta\><rsup|<around*|(|k|)>><around*|(|Q|)>=<frac|\<partial\>Q|\<partial\>x<rsub|j>>\<delta\><rsup|<around*|(|k+1|)>><around*|(|Q|)>
    </equation*>

    and this implies that <math|L\<delta\><rsup|<around*|(|k|)>><around*|(|Q|)>=2n\<delta\><rsup|<around*|(|k+1|)>><around*|(|Q|)>+4Q\<delta\><rsup|<around*|(|k+2|)>><around*|(|Q|)>>.
    Now, as shown in <cite-detail|gelfand1980distribution|sec. III.1.6, eq.
    (6)>, the equality <math|Q\<delta\><rsup|<around*|(|k|)>><around*|(|Q|)>=-k\<delta\><rsup|<around*|(|k-1|)>><around*|(|Q|)>>
    holds and therefore <math|L\<delta\><rsup|<around*|(|k|)>><around*|(|Q|)>=<around*|(|2n-4<around*|(|k+2|)>|)>\<delta\><rsup|<around*|(|k+1|)>><around*|(|Q|)>>.
  </proof>

  <\lemma>
    <label|lem-6>For <math|L\<assign\><big|sum><rsub|i=0><rsup|p><frac|\<partial\><rsup|2>|\<partial\>x<rsub|i><rsup|2>>-<big|sum><rsub|j=0><rsup|q><frac|\<partial\><rsup|2>|\<partial\>y<rsub|j><rsup|2>>>
    and <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
    <math|L<rsup|k>\<delta\><around*|(|x|)>\<neq\>0>.
  </lemma>

  <\proof>
    Indeed, for fixed <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> it suffices
    to find <math|f\<in\>C<rsup|\<infty\>><around*|(|\<bbb-R\><rsup|p,q>|)>>
    such that <math|<around*|(|L<rsup|k>f|)><around*|(|0|)>\<neq\>0>, as then
    we can take <math|\<varphi\>\<in\>C<rsub|c><rsup|\<infty\>><around*|(|\<bbb-R\><rsup|p,q>|)>>
    such that <math|\<varphi\>=f> near <math|0> and thus
    <math|<around*|\<langle\>|L<rsup|k>\<delta\>,\<varphi\>|\<rangle\>>\<simeq\><around*|\<langle\>|\<delta\>,L<rsup|k>\<varphi\>|\<rangle\>>=<around*|(|L<rsup|k>\<varphi\>|)><around*|(|0|)>=<around*|(|L<rsup|k>f|)><around*|(|0|)>\<neq\>0>.

    In turn, it suffices to show that <math|L<rsup|k>Q<rsup|k>=const\<neq\>0>.
    Finally, this follows once one observes that <math|L
    Q<rsup|k>=<around*|(|2n+4<around*|(|k-1|)>|)>k Q<rsup|k-1><rsup|><rsup|>>
    and hence <math|L<rsup|k>Q<rsup|k>=k!\<Pi\><rsub|i=0><rsup|k-1><around*|(|2n+4i|)>>.
  </proof>

  <\lemma>
    <label|lem-normalized-eq>For <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>
    defined as in proposition <math|<reference|prop-2>>, we have for
    <math|L\<assign\><big|sum><rsub|i=0><rsup|p><frac|\<partial\><rsup|2>|\<partial\>x<rsub|i><rsup|2>>-<big|sum><rsub|j=0><rsup|q><frac|\<partial\><rsup|2>|\<partial\>y<rsub|j><rsup|2>>>
    <math|>and <math|\<nu\>\<in\>\<bbb-C\>> with
    <math|Re<around*|(|\<nu\>|)>\<gtr\>0>:

    <\equation*>
      L<rsup|2><wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|i|)>>=64<wide|F|~><rsup|<around*|(|i|)>><rsub|\<nu\>>\<times\><choice|<tformat|<table|<row|<cell|<around*|(|\<nu\>+2|)><around*|(|\<nu\>+<frac|n|2>+1|)>,>|<cell|i=0,>|<cell|n/2\<in\>2\<bbb-Z\>,>|<cell|p,q\<in\>2\<bbb-Z\>>>|<row|<cell|<around*|(|\<nu\>+2|)><around*|(|\<nu\>+<frac|n|2>|)>,>|<cell|i=0,>|<cell|n/2\<in\>2\<bbb-Z\>+1,>|<cell|p,q\<in\>2\<bbb-Z\>>>|<row|<cell|<around*|(|\<nu\>+1|)><around*|(|\<nu\>+<frac|n|2>|)>,>|<cell|i=1,>|<cell|n/2\<in\>2\<bbb-Z\>,>|<cell|p,q\<in\>2\<bbb-Z\>>>|<row|<cell|<around*|(|\<nu\>+1|)><around*|(|\<nu\>+<frac|n|2>+1|)>,>|<cell|i=1,>|<cell|n/2\<in\>2\<bbb-Z\>+1,>|<cell|p,q\<in\>2\<bbb-Z\>>>|<row|<cell|<around*|(|\<nu\>+2|)><around*|(|\<nu\>+<frac|n|2>|)>,>|<cell|i=0,>|<cell|n/2\<in\>2\<bbb-Z\>,>|<cell|p,q\<in\>2\<bbb-Z\>+1>>|<row|<cell|<around*|(|\<nu\>+2|)><around*|(|\<nu\>+<frac|n|2>+1|)>,>|<cell|i=0,>|<cell|n/2\<in\>2\<bbb-Z\>+1,>|<cell|p,q\<in\>2\<bbb-Z\>+1>>|<row|<cell|<around*|(|\<nu\>+1|)><around*|(|\<nu\>+<frac|n|2>+1|)>,>|<cell|i=1,>|<cell|n/2\<in\>2\<bbb-Z\>,>|<cell|p,q\<in\>2\<bbb-Z\>+1>>|<row|<cell|<around*|(|\<nu\>+1|)><around*|(|\<nu\>+<frac|n|2>|)>,>|<cell|i=1,>|<cell|n/2\<in\>2\<bbb-Z\>+1,>|<cell|p,q\<in\>2\<bbb-Z\>+1>>>>>
    </equation*>
  </lemma>

  <\proof>
    Follows by direct computations.
  </proof>

  <\lemma>
    <label|lem-r6-e>Proposition <reference|prop-2> holds when <math|p=q=1>
    and <math|i=0,1>.
  </lemma>

  <\proof>
    Let's first do <math|i=0> case. We have
    <math|L<rsup|2><wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|i|)>>=64<around*|(|\<nu\>+2|)><rsup|2><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>\<nosymbol\>>
    and hence to prove holomorphicity in suffices to show that distribution
    <math|L<rsup|2><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>> has double
    zero at <math|\<nu\>=0>. For this we compute terms of Taylor series of
    <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>> corresponding to
    <math|\<nu\><rsup|0>> and <math|\<nu\><rsup|1>>, and for this in turn, it
    is sufficient to compute <math|<wide|F|~><rsup|<around*|(|i|)>><rsub|0>\<simeq\>1>
    and <math|<around*|(|d/d\<nu\>|)><mid|\|><rsub|\<nu\>=0><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>.
    Now, it is obvious that <math|L<rsup|2><wide|F|~><rsup|<around*|(|i|)>><rsub|0>=0>,
    while the latter term requires some more work. It is definitely true for
    <math|Re<around*|(|\<nu\>|)>\<gg\>0> (and hence near <math|\<nu\>=0> by
    analytic continuation), that

    <\equation*>
      <frac|d|d\<nu\>><frac|<around*|\||x<rsup|2>-y<rsup|2>|\|><rsup|\<nu\>>|\<Gamma\><rsup|2><around*|(|<frac|\<nu\>+1|2>|)>>=<frac|ln<around*|\||x-y|\|>+ln<around*|\||x+y|\|>-\<Gamma\><rprime|'><around*|(|<frac|\<nu\>+1|2>|)>|\<Gamma\><rsup|3><around*|(|<frac|\<nu\>+1|2>|)>><around*|\||x<rsup|2>-y<rsup|2>|\|><rsup|\<nu\>>
    </equation*>

    (note that <math|ln<around*|\||x\<pm\>y|\|>\<in\>L<rsup|1><rsub|loc>>)
    and henceforth it suffices to show that
    <math|L<rsup|><around*|(|ln<around*|\||x\<pm\>y|\|>|)>=0>. Now, as in
    <math|<around*|(|a,b|)>\<assign\><around*|(|x+y,x-y|)>> coordinates
    <math|L> becomes <math|4<frac|\<partial\>|\<partial\>a><frac|\<partial\>|\<partial\>b>>,
    the latter is clear. This shows holomorphicity.

    Next, we need to show <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>\<nequiv\>0>
    for all <math|\<nu\>\<in\>\<bbb-C\>>. In the light of holomorphicity just
    shown and lemma <reference|lem-holo-nonzero>, it suffices to consider
    case <math|-\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1> only.

    Now, for <math|\<nu\>=-1> it is implied by recurrence relation that
    <math|<wide|F|~><rsub|1-2k><rsup|>\<simeq\>L<rsup|2k><around*|\||x<rsup|2>-y<rsup|2>|\|>>.
    Next, in <math|<around*|(|a,b|)>> coordinates as introduced above this
    gets written as <math|<around*|(|\<partial\>/\<partial\>a|)><rsup|2k><around*|\||a|\|>\<cdot\><around*|(|\<partial\>/\<partial\>b|)><rsup|2k><around*|\||b|\|>>
    and to see that it is nonzero it suffices to show that
    <math|<around*|(|\<partial\>/\<partial\>a|)><rsup|2k><around*|\||a|\|>\<neq\>0>.
    The latter, however, is known to be <math|\<simeq\>\<delta\><rsup|<around*|(|2k-2|)>><around*|(|a|)>\<neq\>0<rsup|>>.

    Computations for <math|i=1> follow essentially the same path, so we just
    highlight the main points. We have <math|L<rsup|2><wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|i|)>>=64<around*|(|\<nu\>+1|)><rsup|2><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>.
    For holomorphicity it suffices to show that kernel of <math|L<rsup|2>>
    contains <math|\<nu\><rsup|1>> term of Taylor series of
    <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>> at <math|\<nu\>=1>,
    which equals to

    <\equation*>
      <frac|d|d\<nu\>><mid|\|><rsub|\<nu\>=1><frac|<around*|\||x<rsup|2>-y<rsup|2>|\|><rsup|\<nu\>>sgn<around*|(|x<rsup|2>-y<rsup|2>|)>|\<Gamma\><rsup|2><around*|(|<frac|\<nu\>+2|2>|)>>=<frac|ln<around*|\||x-y|\|>+ln<around*|\||x+y|\|>-\<Gamma\><rprime|'><around*|(|<frac|\<nu\>+2|2>|)>|\<Gamma\><rsup|3><around*|(|<frac|\<nu\>+2|2>|)>><mid|\|><rsub|\<nu\>=1>\<times\><around*|(|x<rsup|2>-y<rsup|2>|)>
    </equation*>

    and so it suffices to show <math|L<rsup|2><around*|(|ln<around*|\||x\<pm\>y|\|><around*|(|x<rsup|2>-y<rsup|2>|)>|)>=0>,
    which in <math|<around*|(|a,b|)>> coordinates becomes
    <math|<around*|(|\<partial\>/\<partial\>a|)><rsup|2><around*|(|\<partial\>/\<partial\>a|)><rsup|2><around*|(|a
    b ln<around*|\||a|\|>|)>=><math|<around*|(|\<partial\>/\<partial\>a|)><rsup|2><around*|(|\<partial\>/\<partial\>a|)><rsup|2><around*|(|a
    b ln<around*|\||a|\|>|)>=0>, which is clear.\ 

    Finally, similarly to <math|i=0> case, it suffices to show that for
    <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>1>> we have
    <math|L<rsup|2k>sgn<around*|(|x<rsup|2>-y<rsup|2>|)>\<neq\>0>. Now, in
    <math|<around*|(|a,b|)>> coordinates this gets written as (due to
    multiplicativity of <math|sgn<around*|(|\<cdot\>|)>>)
    <math|<around*|(|\<partial\>/\<partial\>a|)><rsup|2k>sgn<around*|(|a|)>\<cdot\><around*|(|\<partial\>/\<partial\>b|)><rsup|2k>sgn<around*|(|b|)>><math|>,
    and <math|<around*|(|\<partial\>/\<partial\>a|)><rsup|2k>sgn<around*|(|a|)>\<simeq\>\<delta\><rsup|<around*|(|2k-2|)>><around*|(|a|)>\<neq\>0>.
  </proof>

  <\lemma>
    <label|lem-pq2holo>Assuming <math|p,q\<in\>2\<bbb-Z\><rsub|\<geqslant\>1>>,
    <math|Q<rsub|\<pm\>><rsup|\<nu\>>> only can have poles at points
    <math|\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>1>> and these are no more
    than simple.
  </lemma>

  <\proof>
    Letting <math|<wide|Q|~><rsup|\<nu\>><rsub|\<pm\>>\<assign\>Q<rsup|\<nu\>><rsub|\<pm\>>/\<Gamma\><around*|(|\<nu\>+1|)>>
    we have that relation <math|L Q<rsub|\<pm\>><rsup|\<nu\>+1>=\<pm\>4<around*|(|\<nu\>+1|)><around*|(|\<nu\>+n/2|)>Q<rsub|\<pm\>><rsup|\<nu\>>>
    implies that <math|L<wide|Q|~><rsub|\<pm\>><rsup|\<nu\>+1>=\<pm\>4<around*|(|\<nu\>+n/2|)><wide|Q|~><rsub|\<pm\>><rsup|\<nu\>>>.
    Hence, as lemma <reference|lem-restricted> together with fact
    <reference|fact-horm-homog> (the latter being applicable) imply, we have
    <math|<wide|Q|~><rsub|\<pm\>><rsup|1-n/2>\<simeq\>\<delta\><rsup|<around*|(|n/2-2|)>><around*|(|Q|)>\<in\>\<cal-D\><rprime|'><around*|(|\<bbb-R\><rsup|p,q>|)>>,
    fact <reference|fact-horm1> tells us that
    <math|L<rsup|><wide|Q|~><rsub|\<pm\>><rsup|1-n/2>=0> and this implies
    holomorphicity of <math|<wide|Q|~><rsub|\<pm\>><rsup|\<nu\>>>, which in
    turn implies the desired.
  </proof>

  <\lemma>
    <label|lem-r1-e>Let <math|p=q=2>, <math|L\<assign\><big|sum><rsub|i=0><rsup|p><frac|\<partial\><rsup|2>|\<partial\>x<rsub|i><rsup|2>>-<big|sum><rsub|j=0><rsup|q><frac|\<partial\><rsup|2>|\<partial\>y<rsub|j><rsup|2>>>.
    Then for <math|i=0> and <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>
    defined as in proposition <reference|prop-2> we have
    <math|<wide|F|~><rsup|<around*|(|0|)>><rsub|-2>\<simeq\>\<delta\><rsup|<around*|(|0|)>><around*|(|x|)>>.
  </lemma>

  <\proof>
    Lemma <reference|lem-pq2holo> implies that
    <math|Q<rsub|\<pm\>><rsup|\<nu\>>> only has poles at points
    <math|\<nu\>\<in\>-\<bbb-Z\><rsub|\<geqslant\>1>> and these are no more
    than simple.

    Then for <math|\<nu\>=\<nu\><rsub|0>\<in\>-\<bbb-Z\><rsub|\<geqslant\>1>>
    we can expand <math|Q<rsub|\<pm\>><rsup|\<nu\>>> in Laurent series
    <math|Q<rsup|\<nu\>><rsub|\<pm\>>=:<big|sum><rsub|k=-1><rsup|\<infty\>>Q<rsub|\<pm\>><rsup|<around*|(|\<nu\><rsub|0>;k|)>><around*|(|\<nu\>-\<nu\><rsub|0>|)><rsup|k>>.
    Now, analytic continuation of relation <math|L
    Q<rsub|\<pm\>><rsup|\<nu\>+1>=\<pm\>4<around*|(|\<nu\>+1|)><around*|(|\<nu\>+2|)>Q<rsub|\<pm\>><rsup|\<nu\>>>
    at <math|\<nu\>=-2> implies that <math|Q<rsub|\<pm\>><rsup|<around*|(|-2;k|)>>=\<mp\>L
    Q<rsub|\<pm\>><rsup|<around*|(|-1;k+1|)>>>. Hence, in particular
    <math|Q<rsub|\<pm\>><rsup|<around*|(|-2;-1|)>>=\<mp\>L
    Q<rsub|\<pm\>><rsup|<around*|(|-1;0|)>>>. We also note that
    <math|<wide|F|~><rsup|<around*|(|0|)>><rsub|-2>\<simeq\>Q<rsub|+><rsup|<around*|(|-2;-1|)>>+Q<rsub|->>.

    Now, as simple poles of <math|Q<rsub|+><rsup|\<nu\>>> and
    <math|Q<rsub|-><rsup|\<nu\>>> cancel at <math|\<nu\>=-1> when subtracted
    (one can compute the residues explicitly by using lemma
    <reference|lem-restricted> and fact <reference|fact-horm-homog>), we have
    <math|<around*|\||Q|\|><rsup|-1>sgn<around*|(|Q|)>=Q<rsub|+><rsup|<around*|(|-1;0|)>>-Q<rsub|-><rsup|<around*|(|-1;0|)>>>
    and by taking <math|L> of both sides and using discussion above we get
    <math|-L<around*|\||Q|\|><rsup|-1>sgn<around*|(|Q|)>=Q<rsub|+><rsup|<around*|(|-2;-1|)>>+Q<rsub|-><rsup|<around*|(|-2;-1|)>>>.

    On the other hand, as <math|2<around*|\||x|\|><rsup|-1>sgn<around*|(|x|)>=<around*|(|x+i0|)><rsup|-1>+<around*|(|x-i0|)><rsup|-1>>,
    fact <reference|fact-horm2> implies that
    <math|L<around*|\||Q|\|><rsup|-1>sgn<around*|(|Q|)>\<simeq\>\<delta\><rsup|<around*|(|0|)>><around*|(|x|)>>,
    as <math|1+e<rsup|2\<pi\>i q>\<neq\>0>, since <math|q=2>.
  </proof>

  <\lemma>
    <label|lem-r6>Proposition <reference|prop-2> holds when
    <math|<around*|(|i,n/2,p|)>\<in\><around*|{|0|}>\<times\><around*|(|2\<bbb-Z\>+1|)>\<times\><around*|(|2\<bbb-Z\>+1|)>>
  </lemma>

  <\proof>
    Let's start with proving holomorphicity of
    <math|<wide|F|~><rsup|<around*|(|i|)>><rsub|\<nu\>>>. As lemma
    <reference|lem-r6-e> handles the case <math|p=q=1>, we may proceed
    directly to <math|n/2\<geqslant\>3> case. We start with showing
    holomorphicity and in the light of the recurrence equation
    <math|L<rsup|2><wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|i|)>>=64<around*|(|\<nu\>+2|)><around*|(|\<nu\>+n/2+1|)><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>
    it suffices to show that <math|L<rsup|2><wide|F|~><rsup|<around*|(|i|)>><rsub|\<nu\>>=0>
    for <math|\<nu\>=0> and <math|\<nu\>=-n/2+1\<less\>0>. Now, the former is
    clear as <math|<wide|F|~><rsub|0><rsup|<around*|(|i|)>>\<simeq\>1>. For
    the latter we have to show that <math|L<rsup|2><around*|\||Q|\|><rsup|-n/2+1>=0>.

    Now, as <math|2<around*|\||x|\|><rsup|1-n/2>=<around*|(|x+i0|)><rsup|1-n/2>+<around*|(|x-i0|)><rsup|1-n/2><rsup|>\<nocomma\>>,
    fact <reference|fact-horm2> gives us <math|L<around*|\||Q|\|><rsup|-n/2+1>=0>,
    as <math|1+e<rsup|-2\<pi\>i q>=1+<around*|(|-1|)><rsup|q>=0>. This proves
    the holomorphicity.

    Hence, it remains to show that for <math|\<nu\>\<in\>\<bbb-C\>> we have
    <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>\<nequiv\>0> and in
    the light of holomorphicity shown and lemma <reference|lem-holo-nonzero>,
    it suffices to do so for <math|-\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1>.
    In the light of recurrence relation it suffices to show that for
    <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
    <math|L<rsup|2k><wide|F|~><rsub|-1><rsup|<around*|(|i|)>>\<neq\>0>.

    Now, lemma <reference|lem-restricted> together with fact
    <reference|fact-horm-homog> implies that
    <math|<wide|F|~><rsub|-1><rsup|<around*|(|i|)>>\<simeq\>\<delta\><rsup|<around*|(|0|)>><around*|(|Q|)>>
    and hence lemma <reference|lem-5> implies that
    <math|L<rsup|2k><wide|F|~><rsub|-1><rsup|<around*|(|i|)>>\<simeq\>\<delta\><rsup|<around*|(|2k|)>>>
    for <math|2k\<leqslant\>n/2-3>, while fact <math|<reference|fact-horm1>>
    implies that <math|L<rsup|n/2-1><wide|F|~><rsub|-1><rsup|<around*|(|i|)>>\<simeq\>L<rsup|2>\<delta\><rsup|<around*|(|n/2-3|)>>=L\<delta\><rsup|<around*|(|n/2-2|)>>\<simeq\>\<delta\><around*|(|x|)>>
    and hence lemma <reference|lem-6> grants the desired
    <math|L<rsup|2k><wide|F|~><rsub|-1><rsup|<around*|(|i|)>>\<neq\>0> for
    <math|2k\<gtr\>n/2-1> as well.
  </proof>

  <\lemma>
    <label|lem-r8>Proposition <reference|prop-2> holds when
    <math|<around*|(|i,n/2,p|)>\<in\><around*|{|1|}>\<times\><around*|(|2\<bbb-Z\>+1|)>\<times\><around*|(|2\<bbb-Z\>+1|)>>
  </lemma>

  <\proof>
    Case <math|n/2=1> is handled by lemma <reference|lem-r6-e> and in general
    proof goes similar to that of lemma <reference|lem-r6>, so we just
    highlight the main points. The recurrence relation is
    <math|L<rsup|2><wide|F|~><rsup|<around*|(|i|)>><rsub|\<nu\>+2>=64<around*|(|\<nu\>+1|)><around*|(|\<nu\>+n/2|)><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>
    and for holomorphicity the only nontrivial thing to show is that
    <math|L<rsup|2><wide|F|~><rsub|-n/2+2><rsup|<around*|(|i|)>>\<simeq\>L<rsup|2><around*|\||Q|\|><rsup|-n/2+2>sgn<around*|(|Q|)>=0>,
    but as <math|L<around*|\||Q|\|><rsup|-n/2+2>sgn<around*|(|Q|)>=L<around*|(|Q<rsub|+><rsup|-n/2+2>-Q<rsub|-><rsup|-n/2+2>|)>\<simeq\><around*|\||Q|\|><rsup|-n/2+1>>
    and then the desired is granted, as <math|L<around*|\||Q|\|><rsup|-n/2+1>=0>,
    as in the proof of lemma <reference|lem-r6>.\ 

    This shows holomorphicity, and for non-vanishing one again has to show
    that for <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
    <math|L<rsup|2k><wide|F|~><rsup|<around*|(|i|)>><rsub|-2>\<neq\>0>. As by
    lemma <math|<reference|lem-restricted>> and fact
    <reference|fact-horm-homog> <math|<wide|F|~><rsup|<around*|(|i|)>><rsub|-2>\<simeq\>\<delta\><rsup|<around*|(|1|)>><around*|(|Q|)>>,
    lemma <reference|lem-5> grants the desired for
    <math|2k\<leqslant\>n/2-2>, and for <math|2k=n/2> fact
    <reference|fact-horm1> implies that <math|L<rsup|2k><wide|F|~><rsub|0><rsup|<around*|(|i|)>>\<simeq\>L\<delta\><around*|(|x|)>>
    and for <math|2k\<gtr\>n/2> the desired is granted by lemma
    <reference|lem-6>.
  </proof>

  <\lemma>
    <label|lem-r1>Proposition <reference|prop-2> holds when
    <math|<around*|(|i,n/2,p|)>\<in\><around*|{|0|}>\<times\><around*|(|2\<bbb-Z\>|)>\<times\><around*|(|2\<bbb-Z\>|)>>
  </lemma>

  <\proof>
    We start with holomorphicity. As we have recurrence relation
    <math|L<rsup|2><wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|i|)>>=64<around*|(|\<nu\>+2|)><around*|(|\<nu\>+n/2+1|)><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>,
    it suffices to show that <math|L<rsup|2><wide|F|~><rsub|\<nu\>>=0> for
    <math|\<nu\>=0> (which is clear) and <math|\<nu\>=-n/2+1>. For the
    latter, we know from lemma <reference|lem-restricted> that when
    restricted to <math|<around*|{|x\<neq\>0|}>>,
    <math|<wide|F|~><rsup|<around*|(|i|)>><rsub|-n/2+1>=\<delta\><rsup|<around*|(|n/2-2|)>><around*|(|Q|)>>
    and as latter is homogeneous of degree <math|2-n>, fact
    <reference|fact-horm-homog> and fact <reference|fact-horm1> imply that
    <math|L<wide|F|~><rsup|<around*|(|i|)>><rsub|-n/2+1>=L\<delta\><rsup|<around*|(|n/2-2|)>><around*|(|Q|)>=0>.
    This shows holomorphicity.

    Now, to prove non-vanishing, we note that by lemma
    <reference|lem-restricted> \ and the fact that
    <math|<around*|\||Q|\|><rsup|\<nu\>>> has at most simple poles at
    <math|-\<nu\>\<in\>2\<bbb-Z\><rsub|\<geqslant\>0>+1> (which is implied by
    holomorphicity shown above) we have <math|<wide|F|~><rsub|-1-2k><rsup|<around*|(|i|)>><mid|\|><rsub|<around*|{|x\<neq\>0|}>>=\<delta\><rsup|<around*|(|2k|)>><around*|(|Q|)>\<neq\>0>
    in the light of the recurrence relation, it suffices to show that for
    <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
    <math|L<rsup|2k><wide|F|~><rsub|-n/2><rsup|<around*|(|i|)>>\<neq\>0>.
    Therefore, we need to compute <math|<wide|F|~><rsup|<around*|(|i|)>><rsub|-n/2>>.
    To be more precise, we shall show that the latter equals nonzero multiple
    of <math|\<delta\><rsup|<around*|(|0|)>><around*|(|x|)>> and then
    application of lemma <reference|lem-6> will end the proof.

    \ As case <math|p=q=2> is handled by lemma <reference|lem-r1-e>, we may
    assume <math|n/2\<geqslant\>4>. Recurrence relation implies that
    <math|L<rsup|2><wide|F|~><rsub|-n/2+2><rsup|<around*|(|i|)>>\<simeq\><wide|F|~><rsup|<around*|(|i|)>><rsub|-n/2>>
    and hence it suffices to compute <math|L<rsup|2><wide|F|~><rsub|-n/2+2><rsup|<around*|(|i|)>>\<simeq\>L<rsup|2><around*|\||Q|\|><rsup|-n/2+2>>.
    Now, relation <math|L Q<rsub|\<pm\>><rsup|\<nu\>+1>=\<pm\>4<around*|(|\<nu\>+1|)><around*|(|\<nu\>+n/2|)>Q<rsub|\<pm\>><rsup|\<nu\>>>
    implies that <math|L<rsup|2><around*|\||Q|\|><rsup|-n/2+2>\<simeq\>L<around*|\||Q|\|><rsup|-n/2+1>sgn<around*|(|Q|)>>
    and then application of fact <reference|fact-horm2> ends the proof, as
    for <math|n/2\<in\>2\<bbb-Z\>> we have
    <math|2<around*|\||x|\|><rsup|-n/2+1>sgn<around*|(|x|)>=<around*|(|x+i0|)><rsup|-n/2+1>+<around*|(|x-i0|)><rsup|-n/2+1>>.
  </proof>

  <\lemma>
    <label|lem-r4>Proposition <reference|prop-2> holds when
    <math|<around*|(|i,n/2,p|)>\<in\><around*|{|1|}>\<times\><around*|(|2\<bbb-Z\>+1|)>\<times\><around*|(|2\<bbb-Z\>|)>>
  </lemma>

  <\proof>
    We start with holomorphicity. Recurrence relation
    <math|L<rsup|2><wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|i|)>>=64<around*|(|\<nu\>+1|)><around*|(|\<nu\>+n/2+1|)><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>
    implies that we need to show <math|L<rsup|2><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>=0>
    for <math|\<nu\>=1> (clear) and <math|\<nu\>=-n/2+1>. For latter, we see
    that <math|<wide|F|~><rsup|<around*|(|i|)>><rsub|-n/2+1>\<simeq\>\<delta\><rsup|<around*|(|n/2-2|)>><around*|(|Q|)>>
    by lemma <reference|lem-restricted> and fact <reference|fact-horm-homog>.
    Then, application of fact <reference|fact-horm1> ends the proof of
    holomorphicity.

    Now, as in proof of lemma <reference|lem-r1>, lemma
    <reference|lem-restricted> and lemma <reference|lem-6> imply that we just
    need to show that <math|<wide|F|~><rsub|-n/2><rsup|<around*|(|i|)>>\<simeq\>Q<rsub|+><rsup|<around*|(|-n/2;-1|)>>-Q<rsub|-><rsup|<around*|(|-n/2;-1|)>>>
    in fact is <math|\<simeq\>\<delta\><rsup|<around*|(|0|)>><around*|(|x|)>>
    (we use notation for and facts about Laurent series from proof of lemma
    <reference|lem-pq2holo>). Now, application of recurrence <math|L
    Q<rsub|\<pm\>><rsup|\<nu\>>=\<pm\>4\<nu\><around*|(|\<nu\>+n/2-1|)>Q<rsub|\<pm\>><rsup|\<nu\>-1>>
    at <math|\<nu\>=1-n/2> tells us that <math|Q<rsub|\<pm\>><rsup|<around*|(|1-n/2;0|)>>=\<pm\>c\<cdot\>Q<rsub|\<pm\>><rsup|<around*|(|-n/2;1|)>>>
    and hence that <math|Q<rsub|+><rsup|<around*|(|-n/2;-1|)>>-Q<rsub|-><rsup|<around*|(|-n/2;-1|)>>\<simeq\>L<around*|\||Q|\|><rsup|1-n/2>>,
    as <math|<around*|\||Q|\|><rsup|\<nu\>>> is holo near
    <math|\<nu\>=1-n/2\<in\>2\<bbb-Z\>> (one sees this by computing residues
    of <math|Q<rsub|\<pm\>><rsup|\<nu\>>> at <math|\<nu\>=1-n/2> by lemma
    <reference|lem-restricted> and fact <reference|fact-horm-homog>). Now, as
    for <math|n/2\<in\>2\<bbb-Z\>+1> we have
    <math|2<around*|\||x|\|><rsup|1-n/2>=<around*|(|x+i0|)><rsup|1-n/2>+<around*|(|x+i0|)><rsup|1-n/2>>,
    the proof is finished by application of fact <reference|fact-horm2>.
  </proof>

  <\lemma>
    <label|lem-r2>Proposition <reference|prop-2> holds when
    <math|<around*|(|i,n/2,p|)>\<in\><around*|{|0|}>\<times\><around*|(|2\<bbb-Z\>+1|)>\<times\><around*|(|2\<bbb-Z\>|)>>
  </lemma>

  <\proof>
    We start with holomorphicity. The recurrence equation
    <math|L<rsup|2><wide|F|~><rsup|<around*|(|i|)>><rsub|\<nu\>+2>=64<around*|(|\<nu\>+2|)><around*|(|\<nu\>+n/2|)><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>
    implies that we need to show that <math|L<rsup|2><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>=0>
    for <math|\<nu\>=0> (clear) and <math|\<nu\>=-n/2+2>. Under the
    hypothesis taken we have <math|p,q\<geqslant\>2\<Rightarrow\>n/2\<geqslant\>2\<Rightarrow\>n/2\<geqslant\>3>,
    as <math|n/2\<in\>2\<bbb-Z\>+1>. Then we have
    <math|<wide|F|~><rsub|-n/2+2><rsup|<around*|(|i|)>>\<simeq\>\<delta\><rsup|<around*|(|n/2-3|)>><around*|(|Q|)>>
    by lemma <reference|lem-restricted> and by fact
    <reference|fact-horm-homog>. Then, <math|L<rsup|2><wide|F|~><rsub|-n/2+2><rsup|<around*|(|i|)>>\<simeq\>L<rsup|>\<delta\><rsup|<around*|(|n/2-2|)>><around*|(|Q|)>=0>
    the <math|\<simeq\>> by lemma <reference|lem-5> and the <math|=> by fact
    <reference|fact-horm1>. This shows holomorphicity.

    As in proof of lemma <reference|lem-r1>, lemma <reference|lem-restricted>
    and lemma <reference|lem-6> imply that it suffcies to show that
    <math|<wide|F|~><rsub|-n/2-1><rsup|<around*|(|i|)>>\<simeq\>Q<rsub|+><rsup|<around*|(|-n/2-1;-1|)>>+Q<rsub|-><rsup|<around*|(|-n/2-1;-1|)>>>
    in fact is <math|\<simeq\>L\<delta\><rsup|<around*|(|0|)>><around*|(|x|)>>
    (we use notation for and facts about Laurent series from proof of lemma
    <reference|lem-pq2holo>).\ 

    The latter, however, follows from <math|<wide|F|~><rsub|-n/2><rsup|<around*|(|i|)>>\<simeq\>Q<rsub|+><rsup|<around*|(|-n/2;-1|)>>-Q<rsub|-><rsup|<around*|(|-n/2;-1|)>>\<simeq\>\<delta\><rsup|<around*|(|0|)>><around*|(|x|)>>
    established in proof of lemma <reference|lem-r4> and recurrence <math|L
    Q<rsub|\<pm\>><rsup|\<nu\>>=\<pm\>4\<nu\><around*|(|\<nu\>+n/2-1|)>Q<rsub|\<pm\>><rsup|\<nu\>-1>>
    at <math|\<nu\>=-n/2>.
  </proof>

  <\lemma>
    <label|lem-r3>Proposition <reference|prop-2> holds when
    <math|<around*|(|i,n/2,p|)>\<in\><around*|{|1|}>\<times\><around*|(|2\<bbb-Z\>|)>\<times\><around*|(|2\<bbb-Z\>|)>>
  </lemma>

  <\proof>
    We start with proving holomorphicity. As recurrence equation is
    <math|L<rsup|2><wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|i|)>>=64<around*|(|\<nu\>+1|)><around*|(|\<nu\>+n/2|)><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>,
    it suffices to show that <math|L<rsup|2><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>=0>
    for <math|\<nu\>=1> (this is clear) and <math|\<nu\>=-n/2+2>. For
    <math|n/2\<geqslant\>4> case we have <math|<wide|F|~><rsup|<around*|(|i|)>><rsub|-n/2+2>\<simeq\>\<delta\><rsup|<around*|(|n/2-3|)>><around*|(|Q|)>>
    and thus by lemma <reference|lem-5> <math|L<rsup|2><wide|F|~><rsup|<around*|(|i|)>><rsub|-n/2+2>\<simeq\>L<rsup|2>\<delta\><rsup|<around*|(|n/2-3|)>><around*|(|Q|)>\<simeq\>L\<delta\><rsup|<around*|(|n/2-2|)>>=0>,
    the latter equality follows from fact <reference|fact-horm1>.\ 

    For <math|n/2=2> case, we need to show that
    <math|L<rsup|2>sgn<around*|(|Q|)>=0>. Now, employing lemma
    <reference|lem-pq2holo> and writing Laurent expansion
    <math|Q<rsup|\<nu\>><rsub|\<pm\>>=:<big|sum><rsub|k=-1><rsup|\<infty\>>Q<rsub|\<pm\>><rsup|<around*|(|\<nu\><rsub|0>;k|)>><around*|(|\<nu\>-\<nu\><rsub|0>|)><rsup|k>>
    for <math|\<nu\><rsub|0>\<in\>-\<bbb-Z\><rsub|\<geqslant\>1>>, we have
    recurrence relation <math|Q<rsub|\<pm\>><rsup|\<nu\>+1>=\<pm\>4<around*|(|\<nu\>+1|)><around*|(|\<nu\>+2|)>Q<rsub|\<pm\>><rsup|\<nu\>>>
    taken at <math|\<nu\>=-1> implying that <math|L
    Q<rsub|\<pm\>><rsup|<around*|(|0;0|)>>=\<pm\>c\<cdot\>Q<rsub|\<pm\>><rsup|<around*|(|-1;-1|)>>>
    for some <math|c\<neq\>0>. Therefore,
    <math|L<rsup|2>sgn<around*|(|Q|)>=L<around*|(|L
    Q<rsub|+><rsup|<around*|(|0;0|)>>-L Q<rsub|-><rsup|<around*|(|0;0|)>>|)>\<simeq\>L<around*|(|Q<rsub|+><rsup|<around*|(|-1;-1|)>>+Q<rsub|-><rsup|<around*|(|-1;-1|)>>|)>>,
    the latter being equal to <math|L> of residue of
    <math|<around*|\||Q|\|><rsup|\<nu\>>> at <math|\<nu\>=-1>. Now, lemma
    <reference|lem-restricted> together with the fact
    <math|<reference|fact-horm-homog> > together imply that the latter is
    proportional to <math|L> of <math|\<delta\><rsup|<around*|(|0|)>><around*|(|Q|)>>
    and hence fact <reference|fact-horm1> shows that it vanishes. This shows
    holomorphicity.

    Now, as in proof of lemma <reference|lem-r1>, lemma
    <reference|lem-restricted> and lemma <reference|lem-6> imply that we just
    need to show that <math|<wide|F|~><rsub|-n/2-1><rsup|<around*|(|i|)>>\<simeq\>Q<rsub|+><rsup|<around*|(|-n/2-1;-1|)>>-Q<rsub|-><rsup|<around*|(|-n/2-1;-1|)>>>
    in fact is <math|\<simeq\>L\<delta\><rsup|<around*|(|0|)>><around*|(|x|)>>.
    But then it was shown in the proof of lemma <reference|lem-r1> that
    <math|Q<rsub|+><rsup|<around*|(|-n/2;-1|)>>+Q<rsub|-><rsup|<around*|(|-n/2;-1|)>>\<simeq\>\<delta\><rsup|<around*|(|0|)>><around*|(|x|)>>
    and then application of equation <math|L
    Q<rsub|\<pm\>><rsup|\<nu\>>=\<pm\>4\<nu\><around*|(|\<nu\>+n/2-1|)>Q<rsub|\<pm\>><rsup|\<nu\>-1>>
    implies the desired.
  </proof>

  <\lemma>
    <label|lem-r5>Proposition <reference|prop-2> holds when
    <math|<around*|(|i,n/2,p|)>\<in\><around*|{|0|}>\<times\><around*|(|2\<bbb-Z\>|)>\<times\><around*|(|2\<bbb-Z\>+1|)>>
  </lemma>

  <\proof>
    Let's start with showing holomorphicity of
    <math|<wide|F|~><rsup|<around*|(|i|)>><rsub|\<nu\>>>. In the light of
    recurrence equation <math|L<rsup|2><wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|i|)>>=64<around*|(|\<nu\>+2|)><around*|(|\<nu\>+n/2|)><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>,
    we just need to show that <math|L<rsup|2><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>=0>
    for <math|\<nu\>=0> (which is obvious) and <math|\<nu\>=-n/2+2>. For the
    latter we need to show that <math|L<rsup|2><around*|\||Q|\|><rsup|2-n/2>=0>.
    Now, as <math|L Q<rsub|\<pm\>><rsup|\<nu\>>=\<pm\>4\<nu\><around*|(|\<nu\>-1+n/2|)>Q<rsub|\<pm\>><rsup|\<nu\>-1>>,
    we have <math|L<rsup|2><around*|\||Q|\|><rsup|2-n/2>\<simeq\>L
    Q<rsup|1-n/2>sgn<around*|(|Q|)>> and as
    2<math|x<rsup|1-n/2>sgn<around*|(|x|)>=<around*|(|x+i0|)><rsup|1-n/2>+<around*|(|x-i0|)><rsup|1-n/2>>,
    we have by fact <reference|fact-horm2> that
    <math|L<rsup|2>Q<rsup|1-n/2>sgn<around*|(|Q|)>=0>, as
    <math|1+<around*|(|-1|)><rsup|q>=0> and this proves holomorphicity.

    To prove non-vanishing, in the light of recurrence equation, it suffices
    to show that for <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
    <math|L<rsup|2k><wide|F|~><rsub|-1><rsup|<around*|(|i|)>>\<neq\>0>. Now,
    simiarly to proof of lemma <reference|lem-r6>, we have
    <math|<wide|F|~><rsub|-1><rsup|<around*|(|i|)>>=\<delta\><rsup|<around*|(|0|)>><around*|(|Q|)>>
    and then lemma <reference|lem-5> implies that
    <math|L<rsup|2k>\<delta\><rsup|<around*|(|0|)>><around*|(|Q|)>\<neq\>0>
    for <math|2k\<leqslant\>n/2-2> and for <math|2k=n/2-2> we have by fact
    <reference|fact-horm1> that <math|L<rsup|2k>\<delta\><rsup|<around*|(|0|)>><around*|(|Q|)>\<simeq\>L<rsup|2>\<delta\><rsup|<around*|(|n/2-2|)>><around*|(|Q|)>\<simeq\>L\<delta\><around*|(|x|)>>
    and next lemma <reference|lem-6> implies the conclusion for
    <math|2k\<gtr\>n/2-2>.
  </proof>

  <\lemma>
    <label|lem-r7>Proposition <reference|prop-2> holds when
    <math|<around*|(|i,n/2,p|)>\<in\><around*|{|1|}>\<times\><around*|(|2\<bbb-Z\>|)>\<times\><around*|(|2\<bbb-Z\>+1|)>>
  </lemma>

  <\proof>
    Again, we start with the holomorphicity. In the light of recurrence
    equation <math|L<rsup|2><wide|F<rsub|>|~><rsub|\<nu\>+2><rsup|<around*|(|i|)>>=64<around*|(|\<nu\>+1|)><around*|(|\<nu\>+n/2+1|)><wide|F|~><rsub|\<nu\>>>
    it suffices to show that <math|L<rsup|2><wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>
    has zeros at <math|\<nu\>=1> (this is clear, as
    <math|<wide|F|~><rsub|1><rsup|<around*|(|i|)>>=Q>) and
    <math|\<nu\>=-n/2+1>. For the latter, we need to show that
    <math|L<rsup|2><around*|\||Q|\|><rsup|-n/2+1>sgn<around*|(|Q|)>=0>, which
    is implied by fact <reference|fact-horm2> and the fact that
    <math|2<around*|\||x|\|><rsup|-n/2+1>sgn<around*|(|x|)>=<around*|(|x+i0|)><rsup|-n/2+1>+<around*|(|x-i0|)><rsup|-n/2+1>>
    when <math|n/2\<in\>2\<bbb-Z\>>. This proves horolomorphicity.

    In the light of the recurrence equation to finish the proof it suffices
    to show that for <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
    <math|L<rsup|2k><wide|F|~><rsub|-2><rsup|<around*|(|i|)>>\<neq\>0>. Now,
    lemma <reference|lem-restricted> implies that
    <math|F<rsup|<around*|(|i|)>><rsub|-2><mid|\|><rsub|<around*|{|x\<neq\>0|}>>=\<delta\><rsup|<around*|(|1|)>><around*|(|Q|)>>
    and hence in case <math|n/2=2> application of lemma <reference|lem-5>
    ends the proof. In turn, when <math|n/2\<geqslant\>4> we can use fact
    <reference|fact-horm-homog> and lemma <reference|lem-5> together to get
    the desired <math|L<rsup|2k><wide|F|~><rsub|-2><rsup|<around*|(|i|)>>\<neq\>0>
    for <math|2k\<leqslant\>n/2-4>. Then, for <math|2k=n/2-2> we have
    <math|L<rsup|2k><wide|F|~><rsub|-2><rsup|<around*|(|i|)>>\<simeq\>L<rsup|2>\<delta\><rsup|<around*|(|n/2-3|)>><around*|(|Q|)>\<simeq\>L\<delta\><rsup|<around*|(|n/2-2|)>><around*|(|Q|)>\<simeq\>\<delta\><rsup|<around*|(|0|)>><around*|(|x|)>>
    the last <math|\<simeq\>> following from fact <reference|fact-horm1>.
    Finally, lemma <reference|lem-6> implies the conclusion for
    <math|2k\<gtr\>n/2-2>.
  </proof>

  <section|Proofs>

  <\proof>
    (of prop. <reference|prop-1>) Let <math|L\<assign\><big|sum><rsub|i=0><rsup|p><frac|\<partial\><rsup|2>|\<partial\>x<rsub|i><rsup|2>>-<big|sum><rsub|j=0><rsup|q><frac|\<partial\><rsup|2>|\<partial\>y<rsub|j><rsup|2>>>.
    For <math|Re<around*|(|\<nu\>|)>\<gg\>0> we have

    <\equation*>
      L<rsup|2>F<rsub|\<nu\>+2><rsup|<around*|(|i|)>>=16<around*|(|\<nu\>+2|)><around*|(|\<nu\>+1|)><around*|(|\<nu\>+<frac|n|2>+1|)><around*|(|\<nu\>+<frac|n|2>|)>F<rsub|\<nu\>><rsup|<around*|(|i|)>>,<space|1em>i=0,1
    </equation*>

    Hence, by analytic continuation these equations also hold for
    <math|\<nu\>\<in\>\<bbb-C\>\\\<bbb-Z\><rsub|\<leqslant\>0>\\<around*|(|<frac|n|2>+\<bbb-Z\><rsub|\<leqslant\>0>|)>>.
    Similarly, for <math|\<nu\>\<in\>\<bbb-C\>-\<bbb-Z\><rsub|\<leqslant\>0>-<around*|(|<frac|n|2>+\<bbb-Z\><rsub|\<leqslant\>0>|)>>
    we have\ 

    <\equation>
      L<rsup|2><wide|F|~><rsup|<around*|(|0|)>><rsub|\<nu\>+2>=32<around*|(|\<nu\>+2|)><wide|F|~><rsub|\<nu\>><rsup|<around*|(|0|)>><label|eq-1>
    </equation>

    <\equation>
      L<rsup|2><wide|F|~><rsup|<around*|(|1|)>><rsub|\<nu\>+2>=32<around*|(|\<nu\>+1|)><wide|F|~><rsub|\<nu\>><rsup|<around*|(|1|)>><label|eq-2>
    </equation>

    To prove holomorphicity of <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>>
    for <math|i=0> and <math|i=1> in the light of equations above it suffices
    to show the holomorphicity at <math|\<nu\>=-2> and <math|\<nu\>=-1>
    respectively. However, for <math|\<nu\>=-2> we have
    <math|\<frak-P\><around*|(|N<rsub|0>|)><around*|(|\<nu\>|)>=0> and
    <math|<wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|0|)>>=<around*|\||Q|\|><rsup|0>\<equiv\>1>
    and hence <math|L<rsup|2><wide|F|~><rsup|<around*|(|0|)>><rsub|\<nu\>>\<equiv\>0>,
    hence left-hand side of equation <reference|eq-1> has zero at
    <math|\<nu\>=-2> and thus even divided by <math|\<nu\>-2> it remains
    holomorphic. Similarly, for <math|\<nu\>=-1> we have
    <math|\<frak-P\><around*|(|N<rsub|1>|)><around*|(|\<nu\>|)>=0> and
    <math|<wide|F|~><rsub|\<nu\>+2><rsup|<around*|(|1|)>>=Q> and as
    <math|L<rsup|2>Q\<equiv\>0>, we similarly have holomorphicity. Thus
    <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|i|)>>> are holomorphic for
    <math|i=0,1>.

    It still remains to show that <math|<wide|F|~><rsup|<around*|(|i|)>><rsub|\<nu\>>\<neq\>0>
    for <math|\<nu\>\<in\>\<bbb-C\>>. Now, for
    <math|\<nu\>\<nin\><around*|{|\<frak-P\><around*|(|N<rsub|i>|)>\<neq\>0|}>>
    this is granted by lemma <reference|lem-4>, so we can confine ourselves
    to <math|\<nu\>\<in\><around*|{|\<frak-P\><around*|(|N<rsub|i>|)>\<neq\>0|}>>
    case.

    Let's first consider <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|0|)>>>.
    We need to show it does not vanish for
    <math|\<nu\>\<in\><around*|(|-2\<bbb-Z\><rsub|\<geqslant\>0>-1|)>\<sqcup\><around*|(|-<frac|n|2>-\<bbb-Z\><rsub|\<geqslant\>0>|)>>.
    However, in the light of equation <math|<reference|eq-1>> it suffices to
    show that for <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>> we have
    <math|L<rsup|2k><wide|F|~><rsub|-1><rsup|<around*|(|0|)>>\<neq\>0> and
    <math|L<rsup|2k><wide|F|~><rsub|-n/2><rsup|<around*|(|0|)>>\<neq\>0>.
    Now, lemma <reference|lem-restricted> implies that
    <math|<wide|F|~><rsub|-1><rsup|<around*|(|0|)>><mid|\|><rsub|<around*|{|x\<neq\>0|}>>\<simeq\>\<delta\><rsup|<around*|(|0|)>><around*|(|Q|)>>
    and thus lemma <reference|lem-5> implies that
    <math|L<rsup|2k><wide|F|~><rsub|-1><rsup|<around*|(|0|)>>\<neq\>0>. Next,
    the first item of fact <reference|fact-gelfand-n:odd> implies that
    <math|<wide|F|~><rsub|-n/2><rsup|<around*|(|0|)>>\<simeq\>\<delta\><around*|(|x|)>>
    and therefore lemma <reference|lem-6> implies the desired
    <math|L<rsup|2k><wide|F|~><rsub|-n/2><rsup|<around*|(|0|)>>\<neq\>0>.

    Next, we consider <math|<wide|F|~><rsub|\<nu\>><rsup|<around*|(|1|)>>>.
    Similarly to previous paragraph, it suffices to show that
    <math|L<rsup|2k><wide|F|~><rsub|-2><rsup|<around*|(|1|)>>\<neq\>0> and
    <math|L<rsup|2k><wide|F|~><rsub|-n/2><rsup|<around*|(|1|)>>\<neq\>0> for
    <math|k\<in\>\<bbb-Z\><rsub|\<geqslant\>0>>. And these are similarly
    granted by fact <reference|fact-gelfand-n:odd> and lemmas
    <reference|lem-5>, <reference|lem-6> and <reference|lem-restricted>.
  </proof>

  <\proof>
    (of proposition <reference|prop-2>) The result is granted by lemmas
    <reference|lem-r6> to <reference|lem-r7>.
  </proof>

  <section|TODO>

  Prove 8 lemmas

  <\equation*>
    <block*|<tformat|<table|<row|<cell|>|<cell|i=0,>|<cell|n/2\<in\>2\<bbb-Z\>,>|<cell|p,q\<in\>2\<bbb-Z\>>|<cell|>|<cell|<around*|(|\<nu\>+2|)><around*|(|\<nu\>+<frac|n|2>+1|)>,>|<cell|\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+n/2|2>|)>,>>|<row|<cell|>|<cell|i=0,>|<cell|n/2\<in\>2\<bbb-Z\>+1,>|<cell|p,q\<in\>2\<bbb-Z\>>|<cell|>|<cell|<around*|(|\<nu\>+2|)><around*|(|\<nu\>+<frac|n|2>|)>,>|<cell|\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>\<Gamma\>*<around*|(|<frac|\<nu\>+n/2+1|2>|)>,>>|<row|<cell|>|<cell|i=1,>|<cell|n/2\<in\>2\<bbb-Z\>,>|<cell|p,q\<in\>2\<bbb-Z\>>|<cell|>|<cell|<around*|(|\<nu\>+1|)><around*|(|\<nu\>+<frac|n|2>|)>,>|<cell|\<Gamma\><around*|(|<frac|\<nu\>+2|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+n/2+1|2>|)>,>>|<row|<cell|>|<cell|i=1,>|<cell|n/2\<in\>2\<bbb-Z\>+1,>|<cell|p,q\<in\>2\<bbb-Z\>>|<cell|>|<cell|<around*|(|\<nu\>+1|)><around*|(|\<nu\>+<frac|n|2>+1|)>,>|<cell|\<Gamma\><around*|(|<frac|\<nu\>+2|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+n/2|2>|)>,>>|<row|<cell|>|<cell|i=0,>|<cell|n/2\<in\>2\<bbb-Z\>,>|<cell|p,q\<in\>2\<bbb-Z\>+1>|<cell|>|<cell|<around*|(|\<nu\>+2|)><around*|(|\<nu\>+<frac|n|2>|)>,>|<cell|\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+n/2+1|2>|)>,>>|<row|<cell|here>|<cell|i=0,>|<cell|n/2\<in\>2\<bbb-Z\>+1,>|<cell|p,q\<in\>2\<bbb-Z\>+1>|<cell|>|<cell|<around*|(|\<nu\>+2|)><around*|(|\<nu\>+<frac|n|2>+1|)>,>|<cell|\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+n/2|2>|)>,>>|<row|<cell|>|<cell|i=1,>|<cell|n/2\<in\>2\<bbb-Z\>,>|<cell|p,q\<in\>2\<bbb-Z\>+1>|<cell|>|<cell|<around*|(|\<nu\>+1|)><around*|(|\<nu\>+<frac|n|2>+1|)>,>|<cell|\<Gamma\><around*|(|<frac|\<nu\>+2|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+n/2|2>|)>,>>|<row|<cell|>|<cell|i=1,>|<cell|n/2\<in\>2\<bbb-Z\>+1,>|<cell|p,q\<in\>2\<bbb-Z\>+1>|<cell|>|<cell|<around*|(|\<nu\>+1|)><around*|(|\<nu\>+<frac|n|2>|)>,>|<cell|\<Gamma\><around*|(|<frac|\<nu\>+2|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+n/2+1|2>|)>,>>|<row|<cell|holo>|<cell|>|<cell|>|<cell|>|<cell|\<neq\>0>|<cell|>|<cell|>>>>>
  </equation*>

  After that,

  <\enumerate>
    <item>Gelfand fact about double poles may be needless

    <item>other gelfand fact may also be needless

    <item>collect facts in one section

    <item>Determine supports and clearly list poles (e.g. circled pole --
    suport at 0, squared -- suport on <math|<around*|{|Q=0|}>>) as corollary

    <item>write the report

    <\enumerate>
      <item>remark faster computation if start with
      <math|Q<rsub|\<pm\>><rsup|\<nu\>>>;
    </enumerate>

    <item>ask about meeting (ask about gelfand technique)
  </enumerate>

  <\bibliography|bib|plain|todai_master.bib>
    <\bib-list|1>
      <bibitem*|1><label|bib-gelfand1980distribution>IM<nbsp>Gelfand and
      GE<nbsp>Shilov. <newblock>Distribution theory, vol. 1, 1980.

      <bibitem*|2><label|bib-hormander1983analysis>Lars Hörmander.
      <newblock><with|font-shape|italic|The Analysis of Linear Partial
      Differential Operators: Vol.: 1.: Distribution Theory and Fourier
      Analysis>. <newblock>Springer-Verlag, 1983.
    </bib-list>
  </bibliography>
</body>

<\initial>
  <\collection>
    <associate|language|american>
    <associate|page-type|letter>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|1>>
    <associate|auto-4|<tuple|4|1>>
    <associate|auto-5|<tuple|5|6>>
    <associate|auto-6|<tuple|6|6>>
    <associate|auto-7|<tuple|6|7>>
    <associate|bib-gelfand1980distribution|<tuple|1|7>>
    <associate|bib-hormander1983analysis|<tuple|2|7>>
    <associate|eq-1|<tuple|1|6>>
    <associate|eq-2|<tuple|2|6>>
    <associate|fact-gelfand-n:even|<tuple|5|2>>
    <associate|fact-gelfand-n:odd|<tuple|4|1>>
    <associate|fact-horm-homog|<tuple|7|2>>
    <associate|fact-horm1|<tuple|8|2>>
    <associate|fact-horm2|<tuple|9|2>>
    <associate|fact-horm3|<tuple|7|?>>
    <associate|lem-10|<tuple|10|?>>
    <associate|lem-4|<tuple|11|2>>
    <associate|lem-5|<tuple|12|2>>
    <associate|lem-6|<tuple|13|2>>
    <associate|lem-9|<tuple|9|?>>
    <associate|lem-holo-nonzero|<tuple|10|2>>
    <associate|lem-normalized-eq|<tuple|14|3>>
    <associate|lem-pq2holo|<tuple|16|3>>
    <associate|lem-r1|<tuple|20|4>>
    <associate|lem-r1-e|<tuple|17|4>>
    <associate|lem-r1-nonzero|<tuple|20|?>>
    <associate|lem-r2|<tuple|22|5>>
    <associate|lem-r3|<tuple|23|5>>
    <associate|lem-r4|<tuple|21|5>>
    <associate|lem-r5|<tuple|24|5>>
    <associate|lem-r6|<tuple|18|4>>
    <associate|lem-r6-e|<tuple|15|3>>
    <associate|lem-r7|<tuple|25|5>>
    <associate|lem-r8|<tuple|19|4>>
    <associate|lem-restricted|<tuple|3|1>>
    <associate|prop-1|<tuple|1|1>>
    <associate|prop-2|<tuple|2|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      gelfand1980distribution

      gelfand1980distribution

      gelfand1980distribution

      hormander1983analysis

      hormander1983analysis

      hormander1983analysis

      gelfand1980distribution

      gelfand1980distribution
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Setting
      and goal> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Comments>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Main
      results> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc>Auxiliary
      results> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc>Proofs>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>TODO>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>