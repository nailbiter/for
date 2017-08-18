<TeXmacs|1.99.4>

<style|article>

<\body>
  <doc-data|<doc-title|4 year seminar, July 19>>

  Recall,

  <\definition*>
    <math|F>: field, <math|char F\<neq\>2>. <math|F>-algebra is called
    <underline|quaternion algebra> if

    <\enumerate>
      <item><math|dim<rsub|F>A=4>

      <item><math|A> has basis <math|1,i,j,k> such that for
      <math|a,b\<in\>F<rsup|\<times\>>> we have\ 

      <\equation*>
        i<rsup|2>=a,<space|1em>j<rsup|2>=b,<space|1em>i j=-j i=k
      </equation*>
    </enumerate>

    We write such <math|A> as <math|<around*|(|<frac|a,b|F>|)>>.
  </definition*>

  <\definition*>
    Let <math|A> be unitary ring, <math|F>: field. We say <math|A> is an
    <underline|<math|F>-algebra> if there is
    <math|\<varphi\>:F\<rightarrow\>A>: ring homomorphism such that
    <math|\<varphi\><around*|(|F|)>\<subset\>Z<around*|(|A|)>>.
  </definition*>

  <\proposition*>
    Let <math|A> be a quadratic algebra over <math|F>. Then, it is either

    <\enumerate>
      <item><math|M<around*|(|2,F|)>> or

      <item>division algebra.
    </enumerate>
  </proposition*>

  <\definition*>
    Let <math|F>: field. Suppose <math|<around*|[|F:\<bbb-Q\>|]>=n> and
    <underline|<math|\<cal-O\><rsub|F>>: be <math|F>-integral elements>, that
    is

    <\equation*>
      \<cal-O\><rsub|F>\<assign\><around*|{|x\<in\>F\<mid\>\<bbb-Z\>-integral|}>.
    </equation*>
  </definition*>

  Below, we let\ 

  <\equation*>
    <stack|<tformat|<table|<row|<cell|A=<around*|(|<frac|a,b|\<bbb-Q\>>|)>,<space|1em><around*|(|a,b\<in\>\<bbb-Z\><rsub|\<gtr\>0>|)>>>|<row|<cell|A\<supset\>\<cal-O\>=<around*|{|x+y
    i+z j+w k\<mid\>x,y,z,w\<in\>\<bbb-Z\>|}>>>|<row|<cell|<tabular|<tformat|<table|<row|<cell|\<rightsquigarrow\>A\<otimes\><rsub|\<bbb-Q\>>\<bbb-R\>>|<cell|<long-arrow|\<rubber-rightarrow\>|\<cong\>>>|<cell|M<around*|(|2,\<bbb-R\>|)>>>|<row|<cell|\<cup\>>|<cell|>|<cell|\<cup\>>>|<row|<cell|<around*|{|N<rsub|rel>=1|}>>|<cell|<long-arrow|\<rubber-rightarrow\>|\<cong\>>>|<cell|SL<around*|(|2,\<bbb-R\>|)>>>|<row|<cell|\<cup\>>|<cell|>|<cell|\<cup\>>>|<row|<cell|\<cal-O\><rsup|1>>|<cell|\<longrightarrow\>>|<cell|\<Gamma\><rsub|a,b>>>>>>>>>>>
  </equation*>

  We say a subring <math|\<cal-O\>> is an <underline|order> over <math|F> if,

  <\enumerate>
    <item><math|1\<in\>\<cal-O\>>

    <item><math|\<cal-O\>> is finitely-dimensional
    <math|\<cal-O\><rsub|F>>-module

    <item>A basis of <math|\<cal-O\>> as an <math|\<cal-O\><rsub|F>>-module,
    is the same as of <math|A> over <math|F>.
  </enumerate>

  <\lemma*>
    Order exists and is unique.
  </lemma*>

  <\proof>
    Let the basis of <math|A> be denoted by
    <math|e<rsub|1>=1,e<rsub|2>,e<rsub|3>,e<rsub|4>> and\ 

    <\equation*>
      e<rsub|i>e<rsub|j>=<big|sum><rsub|k=1><rsup|4><wide*|\<alpha\><rsub|i j
      k>|\<wide-underbrace\>><rsub|\<in\>F>e<rsub|k>
    </equation*>

    <math|\<rightsquigarrow\>F> is <math|\<cal-O\><rsub|F>>'s field of
    fractions, hence\ 

    <\equation*>
      <stack|<tformat|<table|<row|<cell|\<exists\>N\<in\>\<cal-O\><rsub|F>,<space|1em>\<forall\>i,j,k<space|1em>N\<alpha\><rsub|i
      j k>\<in\>\<cal-O\><rsub|F>.>>|<row|<cell|e<rsub|1><rprime|'>=1,e<rsub|i><rprime|'>=N
      e<rsub|i><space|1em><around*|(|i=2,3,4|)>>>|<row|<cell|\<cal-O\>=\<cal-O\><rsub|F>e<rsub|1><rprime|'>+\<cal-O\><rsub|F>e<rsub|2><rprime|'>+\<cal-O\><rsub|F>e<rsub|3><rprime|'>+\<cal-O\><rsub|F>e<rsub|4><rprime|'>>>>>>
    </equation*>

    Hence, <math|\<cal-O\>> is closed under the product operation.
  </proof>

  <\definition*>
    Let <math|\<cal-O\>> be order in <math|A> over <math|F>. We let

    <\equation*>
      \<cal-O\><rsup|1>=<around*|{|x\<in\>\<cal-O\>\<mid\>N<rsub|red><around*|(|x|)>=1|}>
    </equation*>
  </definition*>

  <\lemma*>
    <math|x\<in\>\<cal-O\>\<Rightarrow\><wide|x|\<bar\>>\<in\>\<cal-O\>>.
  </lemma*>

  <\proof>
    Observe:

    <\itemize>
      <item>suffices to show that <math|x\<in\>\<cal-O\>\<cap\>F>

      <item>when <math|x\<in\>\<cal-O\>\\F>,

      if we let <math|E=F<around*|(|x|)>>, we have

      <\equation*>
        <stack|<tformat|<table|<row|<cell|<wide*|\<cal-O\><rsub|F><around*|[|x|]>|\<wide-underbrace\>><rsub|<text|finitely
        generated <math|\<cal-O\><rsub|F>>-mod>>\<subset\><wide*|\<cal-O\>|\<wide-underbrace\>><rsub|<text|finitely
        dimensional>>>>|<row|<cell|\<Rightarrow\>x:<text|integral over
        <math|F>>>>|<row|<cell|T<rsub|red><around*|(|x|)>=Tr<rsub|E/F><around*|(|x|)>\<in\>\<cal-O\><rsub|F>>>|<row|<cell|<wide|x|\<bar\>>=<wide*|T<rsub|red><around*|(|x|)>|\<wide-underbrace\>><rsub|\<in\>\<cal-O\><rsub|F>\<subset\>\<cal-O\>>-<wide*|x|\<wide-underbrace\>><rsub|\<in\>\<cal-O\>>.>>>>>
      </equation*>
    </itemize>

    \;
  </proof>

  <\corollary*>
    <math|\<cal-O\><rsup|1>> is a group.
  </corollary*>

  <\proposition*>
    Let <math|\<cal-O\><rsub|1,2>> be orders in <math|A>. Then they are
    <underline|commensurable> (recall that <math|G,G<rprime|'>> are called
    <underline|commensurable> if <math|<around*|[|G:G\<cap\>G<rprime|'>|]>\<less\>\<infty\>,<around*|[|G<rprime|'>:G\<cap\>G<rprime|'>|]>\<less\>\<infty\>>.)
  </proposition*>

  <\proof>
    <math|\<cal-O\><rsub|2>> has a basis <math|<around*|{|e<rsub|i>|}><rsub|i=1><rsup|4>>
    as a <math|\<cal-O\>>-module. and <math|\<cal-O\><rsub|1>> has basis
    <math|<around*|{|f<rsub|i>|}>>. Then we have

    <\equation*>
      <stack|<tformat|<table|<row|<cell|e<rsub|i>=<big|sum><rsub|k=1><rsup|4><wide*|a<rsub|i
      k>|\<wide-underbrace\>><rsub|\<in\>F>f<rsub|k>.>>|<row|<cell|\<rightsquigarrow\><rsup|\<exists\>>N\<in\>\<cal-O\><rsub|F>>>|<row|<cell|N
      e<rsub|i>\<in\>\<cal-O\><rsub|1>>>|<row|<cell|\<rightsquigarrow\>N
      O<rsub|2>\<subset\>\<cal-O\><rsub|1>>>|<row|<cell|\<cal-O\><rprime|'>=<around*|{|x\<in\>\<cal-O\><rsub|2><rsup|1>\<mid\>x\<equiv\>1<around*|(|mod
      N\<cal-O\><rsub|2>|)>|}>>>>>>
    </equation*>

    Then <math|\<cal-O\><rprime|'>> is a group
    (<math|\<because\><around*|(|1+<wide*|N
    x|\<wide-underbrace\>><rsub|\<in\>\<cal-O\><rsub|2>>|)><around*|(|1+<wide*|N
    y|\<wide-underbrace\>><rsub|\<in\>\<cal-O\><rsub|2>>|)>=1+N<around*|(|<wide*|x+y+N
    x y|\<wide-underbrace\>><rsub|\<in\>\<cal-O\><rsub|2>>|)>>).

    <\equation*>
      <stack|<tformat|<table|<row|<cell|\<cal-O\><rprime|'>\<subset\>\<cal-O\><rsub|1><rsup|1>\<cap\>\<cal-O\><rsub|2><rsup|1>>>|<row|<cell|\<because\>\<forall\><wide*|1|\<wide-underbrace\>><rsub|\<in\>\<cal-O\><rsub|1>>+<wide*|N
      x|\<wide-underbrace\>><rsub|\<in\>N
      \<cal-O\><rsub|2>\<subset\>\<cal-O\><rsub|1>>>>|<row|<cell|<around*|\||\<cal-O\><rsub|F>/<around*|(|N|)>|\|>\<less\>\<infty\>\<Rightarrow\>>>|<row|<cell|<around*|\||\<cal-O\><rsub|2>/N\<cal-O\><rsub|2>|\|>\<less\>\<infty\>>>|<row|<cell|\<rightsquigarrow\><around*|[|\<cal-O\><rsub|2><rprime|'>:\<cal-O\><rprime|'>|]>\<less\>\<infty\>>>|<row|<cell|\<therefore\><around*|[|\<cal-O\><rsub|2><rprime|'>:\<cal-O\><rsub|1><rprime|'>\<cap\>\<cal-O\><rsub|2><rprime|'>|]>\<less\>\<infty\>>>>>>
    </equation*>

    \;
  </proof>

  <\definition*>
    Let <math|F>: algebraic field, <math|F\<subset\>\<bbb-R\>> and <math|F>
    satisfy the following:

    <\itemize>
      <item><math|<around*|[|F:\<bbb-Q\>|]>=n>

      <item><math|Hom<rsub|\<bbb-Q\>><around*|(|F,\<bbb-C\>|)>=<around*|{|\<varphi\><rsub|1>=id,\<varphi\><rsub|2>,\<ldots\>,\<varphi\><rsub|n>|}>>

      <item><math|\<forall\>i,\<varphi\><rsub|i><around*|(|\<bbb-Q\>|)>\<subset\>\<bbb-R\>>
    </itemize>

    Such <math|F> is called <underline|totally real algebraic field.>
  </definition*>

  <\definition*>
    Let <math|F>: totally real and <math|A>: quadratic algebra over <math|F>.
    Suppose <math|A> satisfies:

    <\itemize>
      <item><math|A\<otimes\><rsub|\<varphi\><rsub|1>>\<bbb-R\>\<cong\>\<cal-M\><around*|(|2,\<bbb-R\>|)>>

      <item><math|A\<otimes\><rsub|\<varphi\><rsub|i>>\<bbb-R\>\<cong\>\<bbb-H\>=<around*|(|<frac|-1,-1|\<bbb-R\>>|)><space|1em><around*|(|2\<leqslant\>i\<leqslant\>n|)>>
    </itemize>

    And <math|\<cal-O\>>: order in <math|A> over <math|F>. We then have

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|<tabular|<tformat|<table|<row|<cell|A\<otimes\>\<varphi\><rsub|1>\<bbb-R\>>|<cell|\<cong\>>|<cell|\<cal-M\><around*|(|2,\<bbb-R\>|)>>>|<row|<cell|\<cup\>>|<cell|>|<cell|\<cup\>>>|<row|<cell|\<cal-O\><rsup|1>>|<cell|>|<cell|SL<around*|(|2,\<bbb-R\>|)>>>|<row|<cell|>|<cell|\<searrow\>>|<cell|\<cup\>>>|<row|<cell|>|<cell|>|<cell|\<bullet\>:<text|we
      will write this as <math|\<Gamma\><around*|(|A,\<cal-O\>|)>>>.>>>>>>>>>>
    </equation*>
  </definition*>

  <\proposition*>
    Let <math|\<Gamma\><around*|(|A,\<cal-O\>|)>> be discrete.
  </proposition*>

  <\proof>
    Observe that

    <\itemize>
      <item><math|F\<otimes\><rsub|\<bbb-Q\>>\<bbb-R\>\<cong\>\<bbb-R\><rsup|n>>

      <item><math|A\<otimes\><rsub|\<bbb-Q\>>\<bbb-R\>\<cong\><wide*|A<rsub|1>\<times\>\<ldots\>\<times\>A<rsub|n>|\<wide-underbrace\>><rsub|<text|<math|A<rsub|i>>'s
      are quadr. alg. over <math|\<bbb-R\>>>>\<cong\>\<cal-M\><around*|(|2,\<bbb-R\>|)>\<times\>\<bbb-H\>\<times\>\<ldots\>\<times\>\<bbb-H\>>

      <item><math|\<cal-O\>>'s basis as a <math|\<bbb-Z\>>-module

      <item><math|A>'s basis as a <math|\<bbb-Q\>>-vector space

      <item><math|A\<otimes\><rsub|\<bbb-Q\>>\<bbb-R\>>'s basis as a
      <math|\<bbb-R\>>-vector space
    </itemize>

    <math|\<cal-O\><rprime|'>s> image in <math|A\<otimes\><rsub|\<bbb-Q\>>\<bbb-R\>>
    is discrete

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|A\<otimes\><rsub|\<bbb-Q\>>\<bbb-R\>>|<cell|\<cong\>>|<cell|\<cal-M\><around*|(|2,\<bbb-R\>|)>\<times\>\<bbb-H\>\<times\>\<ldots\>\<times\>\<bbb-H\>>|<cell|>|<cell|>>|<row|<cell|\<cup\>>|<cell|>|<cell|\<cup\>>|<cell|>|<cell|>>|<row|<cell|<around*|{|N<rsub|red>=1|}>>|<cell|<long-arrow|\<rubber-rightarrow\>|\<cong\>|\<varphi\>>>|<cell|SL<around*|(|2,\<bbb-R\>|)>\<times\><wide*|\<bbb-H\><rsup|1>\<times\>\<ldots\>\<times\>\<bbb-H\><rsup|1>|\<wide-underbrace\>><rsub|<text|compact>>>|<cell|<long-arrow|\<rubber-rightarrow\>|<text|onto>>>|<cell|SL<around*|(|2,\<bbb-R\>|)>>>|<row|<cell|\<cup\><space|0.6spc>:<text|discrete>>|<cell|>|<cell|\<cup\><text|
      :discrete>>|<cell|>|<cell|\<cap\>>>|<row|<cell|\<cal-O\><rsup|1>>|<cell|\<longrightarrow\>>|<cell|\<varphi\><around*|(|\<cal-O\><rsup|1>|)>>|<cell|\<rightarrow\>>|<cell|\<Gamma\><around*|(|A,O|)>>>>>>
    </equation*>

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
    <associate|eqn:1|<tuple|1|?|jul12.tm>>
    <associate|footnote-1|<tuple|1|?|jul5.tm>>
    <associate|footnr-1|<tuple|1|?|jul5.tm>>
  </collection>
</references>