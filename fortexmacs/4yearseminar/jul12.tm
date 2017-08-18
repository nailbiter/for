<TeXmacs|1.99.4>

<style|article>

<\body>
  <doc-data|<doc-title|4 year seminar, July 12>>

  <\definition*>
    <math|F>: field, <math|char F\<neq\>2>.
    <math|a,b\<in\>F<rsup|\<times\>>>. <math|F>-algebra <math|A> is called
    <underline|quaternion algebra> if\ 

    <\itemize>
      <item><math|dim<rsub|F>A=4>

      <item>Basis elements of <math|A> over <math|F>: <math|1,i,j,k> satisfy
      the following

      <\equation*>
        <stack|<tformat|<table|<row|<cell|i<rsup|2>=a\<cdot\>1,<space|1em>j<rsup|2>=b\<cdot\>1,<space|1em>i
        j=-j i=k>>|<row|<cell|i k=i\<cdot\>i j=i<rsup|2>j=>>>>>
      </equation*>
    </itemize>

    Such <math|A> is denoted <math|<around*|(|<frac|a,b|F>|)>>.
  </definition*>

  <\proposition*>
    \;

    <\enumerate>
      <item><math|<around*|(|<frac|a,b|F>|)>\<cong\><around*|(|<frac|b,a|F>|)>>

      <item><math|<tabular|<tformat|<table|<row|<cell|<around*|(|<frac|a,b|F>|)>>|<cell|\<cong\>>|<cell|<around*|(|<frac|b,-a
      b|F>|)>>>|<row|<cell|j>|<cell|\<mapsfrom\>>|<cell|i>>|<row|<cell|k>|<cell|\<mapsfrom\>>|<cell|j>>>>>>

      <item><math|\<forall\>x,y\<in\>F<rsup|\<times\>>>,
      <math|<tabular|<tformat|<table|<row|<cell|<around*|(|<frac|a,b|F>|)>>|<cell|\<cong\>>|<cell|<around*|(|<frac|a
      x<rsup|2>,b y<rsup|2>|F>|)>>>|<row|<cell|x
      i>|<cell|\<mapsfrom\>>|<cell|i>>|<row|<cell|y
      j>|<cell|\<mapsfrom\>>|<cell|j>>>>>>
    </enumerate>
  </proposition*>

  <\example*>
    \;

    <\itemize>
      <item>Let <math|F=\<bbb-C\>>. Then <math|\<forall\>a,b,a<rprime|'>,b<rprime|'>\<in\>\<bbb-C\><rsup|\<times\>>>
      we have <math|<around*|(|<frac|a,b|\<bbb-C\>>|)>\<cong\><around*|(|<frac|a<rprime|'>,b<rprime|'>|\<bbb-C\>>|)>\<cong\>\<cal-M\><around*|(|2,\<bbb-C\>|)>>

      <item>Let <math|F=\<bbb-R\>.> Then,

      <\equation*>
        <around*|(|<frac|a,b|\<bbb-R\>>|)>\<cong\><choice|<tformat|<table|<row|<cell|\<cal-M\><around*|(|2,\<bbb-R\>|)>>|<cell|<around*|(|<stack|<tformat|<table|<row|<cell|<text|<math|a\<gtr\>0>
        or>>>|<row|<cell|b\<gtr\>0>>>>>|)>>>|<row|<cell|<around*|(|<frac|-1,-1|\<bbb-R\>>|)>\<cong\>\<bbb-H\>>|<cell|<around*|(|<stack|<tformat|<table|<row|<cell|a\<less\>0,>>|<row|<cell|b\<less\>0>>>>>|)>>>>>>
      </equation*>
    </itemize>
  </example*>

  <\lemma*>
    When <math|a\<in\><around*|(|F<rsup|\<times\>>|)><rsup|2>>, we have

    <\equation*>
      <around*|(|<frac|a,b|F>|)>\<cong\>\<cal-M\><around*|(|2,F|)>
    </equation*>
  </lemma*>

  <\proof>
    Observe the following:

    <\equation*>
      <stack|<tformat|<table|<row|<cell|1\<mapsto\><around*|(|<tabular|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>>>>>|)>>>|<row|<cell|i\<mapsto\><around*|(|<tabular|<tformat|<table|<row|<cell|<sqrt|a>>|<cell|0>>|<row|<cell|0>|<cell|-<sqrt|a>>>>>>|)>>>|<row|<cell|j\<mapsto\><around*|(|<tabular|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|b>|<cell|0>>>>>|)>>>|<row|<cell|k\<mapsto\><around*|(|<tabular|<tformat|<table|<row|<cell|1>|<cell|<sqrt|a>>>|<row|<cell|-b<sqrt|a>>|<cell|1>>>>>|)>>>>>>
    </equation*>

    \;
  </proof>

  <\definition*>
    Let <math|A>: quaternion algebra over <math|F>. For

    <\equation*>
      x=x<rsub|0>+x<rsub|1>i+x<rsub|2>j+x<rsub|3>k\<in\>A
    </equation*>

    we defined the <underline|conjugate> of <math|x> as

    <\equation*>
      <wide|x|\<bar\>>\<assign\>x<rsub|0>-x<rsub|1>i-x<rsub|2>j-x<rsub|3>k
    </equation*>

    the <underline|reduced trace> and <underline|reduced norm> are defined
    respectively as

    <\equation*>
      <stack|<tformat|<table|<row|<cell|T<rsub|rd><around*|(|x|)>=x+<wide|x|\<bar\>>=2x<rsub|0>>>|<row|<cell|N<rsub|rd><around*|(|x|)>=x\<cdot\><wide|x|\<bar\>>=x<rsub|0><rsup|2>-x<rsub|1><rsup|2>a-x<rsub|2><rsup|2>b+x<rsub|3><rsup|2>a
      b>>>>>
    </equation*>
  </definition*>

  <\proposition*>
    \;

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|A>|<cell|\<longrightarrow\>>|<cell|\<cal-M\><around*|(|2,F<around*|(|<sqrt|a>|)>|)>>|<cell|:<text|homomorphism>>>|<row|<cell|i>|<cell|\<longmapsto\>>|<cell|<text|(as
      in Lemma)>>|<cell|>>|<row|<cell|j>|<cell|\<longmapsto\>>|<cell|<text|(as
      in Lemma)>>|<cell|>>|<row|<cell|j>|<cell|\<longmapsto\>>|<cell|<text|(as
      in Lemma)>>|<cell|>>>>>
    </equation*>
  </proposition*>

  <\proof>
    (omit)
  </proof>

  <\corollary*>
    <math|N<rsub|rd><around*|(|x y|)>=N<rsub|r d><around*|(|x|)>N<rsub|r
    d><around*|(|y|)>>
  </corollary*>

  <\corollary*>
    <math|A>: division algebra if and anly if
    <math|\<forall\>x\<in\>A,N<rsub|rd><around*|(|x|)>=0\<Rightarrow\>x=0>
  </corollary*>

  <\proof>
    <math|<around*|(|\<Leftarrow\>|)>> <math|\<forall\>x\<in\>A\\<around*|{|0|}>,N<rsub|rd><around*|(|x|)>\<neq\>0>.
    Therefore,\ 

    <\equation*>
      <frac|<wide|x|\<bar\>>|N<rsub|rd><around*|(|x|)>>\<cdot\>x=1,
    </equation*>

    and hence <math|x\<in\>A<rsup|\<times\>>>.

    <math|<around*|(|\<Rightarrow\>|)>> We take <math|x\<neq\>0>, hence
    <math|\<exists\>x<rsup|-1>\<in\>A> such that
    <math|x\<cdot\>x<rsup|-1>=1>. Hence,\ 

    <\equation*>
      <wide*|N<rsub|rd><around*|(|x|)>|\<wide-underbrace\>><rsub|\<neq\>0>\<cdot\>N<rsub|rd><around*|(|x<rsup|-1>|)>=1.
    </equation*>
  </proof>

  <\corollary*>
    <math|\<bbb-H\>=<around*|(|<frac|-1,-1|\<bbb-R\>>|)>> is a division
    algebra.
  </corollary*>

  <\proof>
    By previous corollary and observe that

    <\equation*>
      N<rsub|rd><around*|(|x<rsub|0>+x<rsub|1>i+x<rsub|2>j+x<rsub|3>k|)>=<big|sum><rsub|i=0><rsup|3>x<rsub|i><rsup|2>.
    </equation*>
  </proof>

  <\proposition*>
    <math|A>: not a division ring <math|\<Rightarrow\>A\<cong\>\<cal-M\><around*|(|2,F|)>>.
  </proposition*>

  <\proof>
    As <math|A> is not a division ring,\ 

    <\equation*>
      <stack|<tformat|<table|<row|<cell|\<exists\>h\<in\>A,h\<neq\>0,N<rsub|rd><around*|(|h|)>=0>>|<row|<cell|<text|write
      >h=x<rsub|0>+x<rsub|1>i+x<rsub|2>j+x<rsub|3>k>>|<row|<cell|\<Rightarrow\>x<rsub|0><rsup|2>-a
      x<rsub|1><rsup|2>-b<around*|(|x<rsub|2><rsup|2>-a
      x<rsub|3><rsup|2>|)>=0>>>>>
    </equation*>

    If we let <math|L=F<around*|(|i|)>> here, we have
    <math|<around*|[|L:F|]>=2> (as case <math|a\<in\><around*|(|F<rsup|\<times\>>|)><rsup|2>>
    is handled by previous result, we can assume
    <math|a\<nin\><around*|(|F<rsup|\<times\>>|)><rsup|2>>, hence
    <math|i\<in\>F>), and <math|A=L+L j>. Now, we can continue as

    <\equation*>
      <stack|<tformat|<table|<row|<cell|<around*|(|x<rsub|0>+x<rsub|1>i|)><around*|(|x<rsub|0>-x<rsub|1>i|)>-b<around*|(|x<rsub|2>+x<rsub|3>i|)><around*|(|x<rsub|2>-x<rsub|3>i|)>=0>>|<row|<cell|x<rsub|2>+x<rsub|3>i\<neq\>0>>|<row|<cell|<around*|(|<stack|<tformat|<table|<row|<cell|<text|if
      we suppose>>>|<row|<cell|x<rsub|2>+x<rsub|3>i=0\<Rightarrow\>>>|<row|<cell|x<rsub|0>+x<rsub|1>i=0>>|<row|<cell|\<Rightarrow\>h=0>>|<row|<cell|\<Rightarrow\><text|contradiction>>>>>>|)>>>|<row|<cell|q<rsub|0>+q<rsub|i>i\<assign\><frac|x<rsub|0>+x<rsub|1>i|x<rsub|2>+x<rsub|3>i>>>|<row|<cell|b=<around*|(|q<rsub|0>+q<rsub|1>i|)><around*|(|q<rsub|0>-q<rsub|1>i|)>=q<rsub|0><rsup|2>-q<rsub|1><rsup|2>a,>>|<row|<cell|<tabular|<tformat|<table|<row|<cell|A>|<cell|\<longrightarrow\>>|<cell|\<cal-M\><around*|(|2,F|)>>>|<row|<cell|i>|<cell|\<longmapsto\>>|<cell|<around*|(|<tabular|<tformat|<table|<row|<cell|0>|<cell|1>>|<row|<cell|a>|<cell|0>>>>>|)>>>|<row|<cell|j>|<cell|\<longmapsto\>>|<cell|<around*|(|<tabular|<tformat|<table|<row|<cell|q<rsub|0>>|<cell|-q<rsub|1>>>|<row|<cell|a
      q<rsub|1>>|<cell|-q<rsub|0>>>>>>|)>>>|<row|<cell|k>|<cell|\<longmapsto\>>|<cell|<around*|(|<tabular|<tformat|<table|<row|<cell|a
      q<rsub|1>>|<cell|-q<rsub|0>>>|<row|<cell|a q<rsub|0>>|<cell|-a
      q<rsub|1>>>>>>|)>>>>>>>>>>>
    </equation*>

    \;
  </proof>

  <\proposition*>
    When <math|F=\<bbb-Q\>> and\ 

    <\itemize>
      <item><math|b>: prime;

      <item>there is no <math|x>, such that
      <math|x<rsup|2>\<equiv\>a<around*|(|mod b|)>>.
    </itemize>

    Then, <math|<around*|(|<frac|a,b|\<bbb-Q\>>|)>>: division algebra.
  </proposition*>

  <\proof>
    Suppose not. Then,

    <\equation*>
      0\<neq\><rsup|\<exists\>>x=x<rsub|0>+x<rsub|1>i+x<rsub|2>j+x<rsub|3>k\<in\><around*|(|<frac|a,b|\<bbb-Q\>>|)>,
    </equation*>

    <\equation>
      x<rsub|0><rsup|2>-x<rsub|1><rsup|2>a-<around*|(|x<rsub|2><rsup|2>-x<rsub|3><rsup|2>a|)>b=0<label|eqn:1>
    </equation>

    We can assume <math|x<rsub|i>> are pairwise prime integers. By
    <math|<eqref|eqn:1>>, we have

    <\equation*>
      x<rsub|0><rsup|2>\<equiv\>x<rsub|1><rsup|2>a<space|1em><around*|(|mod
      b|)>
    </equation*>

    If we suppose <math|b> does not divide <math|x<rsub|1>>, we have in
    <math|\<bbb-F\><rsub|b>> <math|<around*|[|a|]>=<around*|(|<frac|<around*|[|x<rsub|0>|]>|<around*|[|x<rsub|1>|]>>|)><rsup|2>>and
    we have contradiction, hence <math|b\<mid\>x<rsub|1>>, hence
    <math|b\<mid\>x<rsub|0>>. Therefore

    <\equation*>
      x<rsub|2><rsup|2>\<equiv\>x<rsub|3><rsup|2>a<around*|(|mod b|)>
    </equation*>

    Similarly, we conclude that\ 

    <\equation*>
      b\<mid\>x<rsub|2>,b\<mid\>x<rsub|3>
    </equation*>

    and as we assumed <math|x<rsub|i>> to be pairwise prime, we are done.
  </proof>

  <\definition*>
    Let <math|K> be a finite extension of <math|\<bbb-Q\>>. We say <math|K>
    is <underline|totally real> if\ 

    <\equation*>
      \<forall\>\<varphi\>\<in\>Hom<rsub|\<bbb-Q\>><around*|(|K,\<bbb-C\>|)>,<space|1em>\<varphi\><around*|(|K|)>\<subset\>\<bbb-R\>.
    </equation*>
  </definition*>

  <\definition*>
    Let <math|K,L>: fields and <math|\<sigma\>:K\<rightarrow\>L> be a ring
    homomorphism. Let <math|A> be an algebra over <math|K>. By inducing
    <math|K>-algebra structure on <math|L> via <math|\<sigma\>>, we can form
    a tensor product of <math|L> and <math|A>, which we denote by

    <\equation*>
      A\<otimes\><rsub|\<sigma\>>L.
    </equation*>
  </definition*>

  <\proposition*>
    When <math|A=<around*|(|<frac|a,b|K>|)>>, we have

    <\equation*>
      A\<otimes\><rsub|\<sigma\>>L\<cong\><around*|(|<frac|\<sigma\><around*|(|a|)>,\<sigma\><around*|(|b|)>|L>|)>.
    </equation*>
  </proposition*>

  <\proposition*>
    Let <math|K>: totally real and <math|<around*|[|K:\<bbb-Q\>|]>=n\<geqslant\>2>.
    We have

    <\equation*>
      Hom<rsub|\<bbb-Q\>><around*|(|K,R|)>=<around*|{|<wide*|\<varphi\><rsub|1>|\<wide-underbrace\>><rsub|=id>,\<ldots\>,\<varphi\><rsub|n>|}>.
    </equation*>

    Then, if <math|A> is a quaternion algebra over <math|K>, we have

    <\equation*>
      <stack|<tformat|<table|<row|<cell|A\<otimes\><rsub|\<varphi\><rsub|1>>\<bbb-R\>\<cong\>\<cal-M\><around*|(|2,\<bbb-R\>|)>>>|<row|<cell|2\<leqslant\><rsup|\<forall\>>i\<leqslant\>n,<space|1em>A\<otimes\><rsub|\<varphi\><rsub|i>>\<bbb-R\>\<cong\><around*|(|<frac|-1,-1|\<bbb-R\>>|)><around*|(|=\<bbb-H\>|)>>>>>>
    </equation*>
  </proposition*>

  <\render-theorem|Proposition<math|<rprime|'>>>
    Let <math|K> be a finite extension over <math|\<bbb-Q\>>. Let <math|A>:
    be quadratic algebra over <math|K>. Then if
    <math|\<exists\>\<varphi\>\<in\>Hom<rsub|\<bbb-Q\>><around*|(|K,\<bbb-R\>|)>>
    such that <math|A\<otimes\><rsub|\<varphi\>>\<bbb-R\>\<cong\>\<bbb-H\>>,
    we have <math|A> being division algebra.
  </render-theorem>
</body>

<\initial>
  <\collection>
    <associate|magnification|1.2>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?|jun28.tm>>
    <associate|eqn:1|<tuple|1|?|jul5.tm>>
    <associate|footnote-1|<tuple|1|?|jul5.tm>>
    <associate|footnr-1|<tuple|1|?|jul5.tm>>
  </collection>
</references>