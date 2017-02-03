<TeXmacs|1.99.4>

<style|<tuple|generic|mystyle>>

<\body>
  <\proposition*>
    The following holds:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D>sin<rsup|2\<mu\>+m+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)><around*|\||cos
      <around|(|\<theta\>|)>-cos <around|(|\<psi\>|)>*sin
      <around|(|\<varphi\>|)>|\|><rsup|b><wide|v|~><rsup|\<lambda\>><rsub|l><around*|(|\<theta\>|)><wide|v|~><rsup|\<mu\>><rsub|m><around*|(|\<psi\>|)>d\<theta\>d\<psi\>d\<varphi\>=<htab|5mm>>|<cell|>>|<row|<cell|>|<cell|=<frac|2<rsup|m+l-1><around*|(|-1|)><rsup|<frac|m-l|2>><sqrt|\<pi\>>\<Gamma\><around*|(|\<mu\>+<frac|1|2>+<around*|[|<frac|m|2>|]>|)>\<Gamma\><around*|(|\<lambda\>+<around*|[|<frac|l|2>|]>+<frac|1|2>|)>|a!
      b!><around*|\<nobracket\>||\<nobracket\>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|<frac|m+l-b|2>|)>\<Gamma\><around*|(|<frac|a+2b+2\<mu\>+2\<lambda\>+3|2>|)>\<Gamma\><around*|(|<frac|a+1|2>|)>\<Gamma\><around*|(|<frac|1+b|2>|)>|\<Gamma\><around*|(|<frac|-b|2>|)>\<Gamma\><around*|(|<frac|m+l+a+b+2\<mu\>+2\<lambda\>+3|2>|)>\<Gamma\><around*|(|<frac|2-m+l+b+2\<lambda\>|2>|)>*\<Gamma\><around*|(|<frac|m-l+a+b+2\<mu\>+3|2>|)>>,>|<cell|>>|<row|<cell|>|<cell|<wide|v|~><rsup|\<lambda\>><rsub|l><around*|(|\<theta\>|)>\<assign\><frac|\<Gamma\><around*|(|\<lambda\>|)>|\<Gamma\><around*|(|\<lambda\>+<around*|[|<frac|l+1|2>|]>|)>>sin<rsup|2\<lambda\>><around*|(|\<theta\>|)>C<rsup|\<lambda\>><rsub|l><around*|(|cos<around*|(|\<theta\>|)>|)>,>|<cell|>>|<row|<cell|>|<cell|D\<assign\><around*|{|<around*|(|\<theta\>,\<psi\>,\<varphi\>|)>\<in\><around*|[|0,\<pi\>|]><rsup|2>\<times\><around*|[|0,<frac|\<pi\>|2>|]>|}>,<space|1em>\<lambda\>,\<mu\>,a,b\<in\>\<bbb-C\>,<space|1em>l,m\<in\>\<bbb-N\>\<mid\>l+m\<in\>2\<bbb-N\>.>|<cell|>>>>
    </eqnarray>
  </proposition*>

  <\lemma>
    <label|lem1>The following holds:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D<rprime|'>>sin<rsup|2\<mu\>+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)><around*|\||s-t*sin
      <around|(|\<varphi\>|)>|\|><rsup|b><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>d
      s d t d\<varphi\>=<htab|5mm>>|<cell|>>|<row|<cell|>|<cell|=<frac|<sqrt|\<pi\>>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)>\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>|2><around*|\<nobracket\>||\<nobracket\>>\<cdot\><frac|\<Gamma\><around*|(|<frac|a+2b+2\<mu\>+2\<lambda\>+3|2>|)>\<Gamma\><around*|(|<frac|a+1|2>|)>\<Gamma\><around*|(|<frac|1+b|2>|)>|\<Gamma\><around*|(|<frac|a+b+2\<mu\>+2\<lambda\>+3|2>|)>\<Gamma\><around*|(|<frac|2+b+2\<lambda\>|2>|)>*\<Gamma\><around*|(|<frac|a+b+2\<mu\>+3|2>|)>>,<eq-number><label|eq-1>>|<cell|>>|<row|<cell|>|<cell|D<rprime|'>\<assign\><around*|{|<around*|(|s,t,\<varphi\>|)>\<in\><around*|[|-1,1|]><rsup|2>\<times\><around*|[|0,<frac|\<pi\>|2>|]>|}>,<space|1em>\<lambda\>,\<mu\>,a,b\<in\>\<bbb-C\>.>|<cell|>>>>
    </eqnarray>
  </lemma>

  <\lemma>
    <label|lem2>The following holds:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|s,t=-1><rsup|1><around*|\||s
      a-t b|\|><rsup|\<nu\>><around*|(|1-s<rsup|2>|)><rsup|A><around*|(|1-t<rsup|2>|)><rsup|B>d
      s d t=<frac|<around*|\||a|\|><rsup|\<nu\>>\<Gamma\><around*|(|B+1|)>\<Gamma\><around*|(|A+1|)><sqrt|\<pi\>>\<Gamma\><around*|(|<frac|1+\<nu\>|2>|)>|\<Gamma\><around*|(|B+<frac|3|2>|)>\<Gamma\><around*|(|<frac|\<nu\>|2>+A+<frac|3|2>|)>>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-<frac|\<nu\>|2>,-<frac|1+\<nu\>|2>-A>>|<row|<cell|B+<frac|3|2>>>>>>;<frac|b<rsup|2>|a<rsup|2>>|)>,>|<cell|>>|<row|<cell|>|<cell|a,b\<in\>\<bbb-R\>,<around*|\||a|\|>\<gtr\><around*|\||b|\|>;<space|1em>A,B,\<nu\>\<in\>\<bbb-C\>.>|<cell|>>>>
    </eqnarray>
  </lemma>

  <\proof>
    (of Proposition, assuming Lemma <reference|lem1>) We first make the
    change of variable

    <\equation*>
      cos<around*|(|\<theta\>|)>\<rightsquigarrow\>s,cos<around*|(|\<psi\>|)>\<rightsquigarrow\>t
    </equation*>

    to get:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|\<lambda\>|)>\<Gamma\><around*|(|\<mu\>|)>|\<Gamma\><around*|(|\<lambda\>+<around*|[|<frac|l+1|2>|]>|)>\<Gamma\><around*|(|\<mu\>+<around*|[|<frac|m+1|2>|]>|)>><big|int><rsub|D<rprime|'>>sin<rsup|2\<mu\>+m+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)><around*|\||s-t\<cdot\>*sin
      <around|(|\<varphi\>|)>|\|><rsup|b><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>C<rsup|\<lambda\>><rsub|l><around*|(|s|)>C<rsup|\<mu\>><rsub|m><around*|(|t|)>=>|<cell|>>|<row|<cell|>|<cell|=<frac|<around*|(|-2|)><rsup|l+m>\<Gamma\><around*|(|l+\<lambda\>|)>\<Gamma\><around*|(|l+2\<lambda\>|)>\<Gamma\><around*|(|\<mu\>+m|)>\<Gamma\><around*|(|m+2\<mu\>|)>|\<Gamma\><around*|(|\<lambda\>+<around*|[|<frac|l+1|2>|]>|)>\<Gamma\><around*|(|\<mu\>+<around*|[|<frac|m+1|2>|]>|)>l!m!\<Gamma\><around*|(|2l+2\<lambda\>|)>\<Gamma\><around*|(|2m+2\<mu\>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|D<rprime|'>>sin<rsup|2\<mu\>+m+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)><around*|\||s-t\<cdot\>*sin
      <around|(|\<varphi\>|)>|\|><rsup|b><frac|d|d
      s<rsup|l>><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>+l-<frac|1|2>><frac|d|d
      t<rsup|m>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>+m-<frac|1|2>>=>|<cell|>>|<row|<cell|>|<cell|<around*|(|integration
      by parts;<space|0.6spc>note that l+m\<in\>2\<bbb-N\>|)>>|<cell|>>|<row|<cell|>|<cell|=<frac|<around*|(|-2|)><rsup|l+m>\<Gamma\><around*|(|l+\<lambda\>|)>\<Gamma\><around*|(|l+2\<lambda\>|)>\<Gamma\><around*|(|\<mu\>+m|)>\<Gamma\><around*|(|m+2\<mu\>|)>|\<Gamma\><around*|(|\<lambda\>+<around*|[|<frac|l+1|2>|]>|)>\<Gamma\><around*|(|\<mu\>+<around*|[|<frac|m+1|2>|]>|)>l!m!\<Gamma\><around*|(|2l+2\<lambda\>|)>\<Gamma\><around*|(|2m+2\<mu\>|)>>\<times\>>|<cell|>>|<row|<cell|>|<cell|<around*|(|-1|)><rsup|l>\<cdot\><around*|(|b-l-m+1|)><rsub|l+m><big|int><rsub|D<rprime|'>>sin<rsup|2\<mu\>+2m+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)><around*|\||s-t\<cdot\>*sin
      <around|(|\<varphi\>|)>|\|><rsup|b-l-m><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>+l-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>+m-<frac|1|2>>>|<cell|>>>>
    </eqnarray>

    Now, making the parameter change <math|\<mu\>+m\<rightsquigarrow\>\<mu\>,\<lambda\>+l\<rightsquigarrow\>l,b-l-m\<rightsquigarrow\>b>
    we see that integral is precisely that of Lemma <reference|lem1>.
  </proof>

  <\proof>
    (of Lemma <reference|lem1>, using Fact)
  </proof>

  <\proof>
    (of Lemma <reference|lem1>, using Lemma <reference|lem2>) We then proceed
    as:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|D<rprime|'>>sin<rsup|2\<mu\>+1><around|(|\<varphi\>|)>cos<rsup|a><around|(|\<varphi\>|)><around*|\||s-t*sin
      <around|(|\<varphi\>|)>|\|><rsup|b><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>=>|<cell|>>|<row|<cell|>|<cell|<around*|(|cos\<varphi\>\<rightsquigarrow\>r,d
      r=-sin\<varphi\>d\<varphi\>,sin<rsup|2><around*|(|\<varphi\>|)>\<rightsquigarrow\>1-r<rsup|2>|)>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|<around*|[|0,1|]>\<times\><around*|[|-1,1|]><rsup|2>><around*|(|1-r<rsup|2>|)><rsup|\<mu\>>r<rsup|a><around*|\||s-t*<sqrt|1-r<rsup|2>>|\|><rsup|b><around*|(|1-s<rsup|2>|)><rsup|\<lambda\>-<frac|1|2>><around*|(|1-t<rsup|2>|)><rsup|\<mu\>-<frac|1|2>>d
      r d s d t=>|<cell|>>|<row|<cell|>|<cell|<around*|(|Lemma<space|0.6spc><reference|lem2>|)>>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)><sqrt|\<pi\>>\<Gamma\><around*|(|<frac|1+b|2>|)>|\<Gamma\><around*|(|\<mu\>+1|)>\<Gamma\><around*|(|<frac|b|2>+\<lambda\>+1|)>><big|int><rsub|-1><rsup|1><around*|(|1-r<rsup|2>|)><rsup|\<mu\>>r<rsup|a>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-<frac|b|2>,-\<lambda\>-<frac|b|2>>>|<row|<cell|\<mu\>+1>>>>>;1-r<rsup|2>|)>d
      r=>|<cell|>>|<row|<cell|>|<cell|<around*|(|expanding<space|0.6spc>series|)>>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)><sqrt|\<pi\>>\<Gamma\><around*|(|<frac|1+b|2>|)>\<Gamma\><around*|(|<frac|a+1|2>|)>|2\<Gamma\><around*|(|<frac|b|2>+\<lambda\>+1|)>\<Gamma\><around*|(|<frac|a+3+2\<mu\>|2>|)>>\<cdot\><rsub|3>F<rsub|2><around*|(|<stack|<tformat|<table|<row|<cell|-<frac|b|2>,\<lambda\>-<frac|b|2>,\<mu\>+1>>|<row|<cell|\<mu\>+1,<frac|a+3+2\<mu\>|2>>>>>>;1|)>=>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|\<lambda\>+<frac|1|2>|)>\<Gamma\><around*|(|\<mu\>+<frac|1|2>|)><sqrt|\<pi\>>\<Gamma\><around*|(|<frac|1+b|2>|)>\<Gamma\><around*|(|<frac|a+1|2>|)>|2\<Gamma\><around*|(|<frac|b|2>+\<lambda\>+1|)>\<Gamma\><around*|(|<frac|a+3+2\<mu\>|2>|)>>\<cdot\><rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-<frac|b|2>,-\<lambda\>-<frac|b|2>>>|<row|<cell|<frac|a+3+2\<mu\>|2>>>>>>;1|)>=>|<cell|>>>>
    </eqnarray>

    and the application of the formula <math|<rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|a,b>>|<row|<cell|c>>>>>;1|)>=<frac|\<Gamma\><around*|(|c|)>\<Gamma\><around*|(|c-a-b|)>|\<Gamma\><around*|(|c-a|)>\<Gamma\><around*|(|c-b|)>>>
    ends the proof.
  </proof>

  <\proof>
    (of Lemma <reference|lem2>) First of all, note that by dividing both
    sides by <math|<around*|\||a|\|><rsup|\<nu\>>> we can readily assume that
    <math|a=1> and <math|-1\<less\>b\<less\>1>. We then proceed as follows:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|s,t=-1><rsup|1><around*|\||s
      -t b|\|><rsup|\<nu\>><around*|(|1-s<rsup|2>|)><rsup|A><around*|(|1-t<rsup|2>|)><rsup|B>d
      s d t=>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|t=-1><rsup|1><around*|(|<big|int><rsub|-1><rsup|t
      b><around*|(|t b-s|)><rsup|\<nu\>><around*|(|1-s<rsup|2>|)><rsup|A>d
      s+<big|int><rsub|t b><rsup|1><around*|(|s-t
      b|)><rsup|\<nu\>><around*|(|1-s<rsup|2>|)><rsup|A>d
      s|)><around*|(|1-t<rsup|2>|)><rsup|B>d
      t=>|<cell|>>|<row|<cell|>|<cell|<around*|(|t
      b-s\<rightsquigarrow\>w,s-t b\<rightsquigarrow\>w<rprime|'>|)>>|<cell|>>|<row|<cell|>|<cell|<big|int><rsub|t=-1><rsup|1><around*|(|<big|int><rsub|0><rsup|t
      b+1>w<rsup|\<nu\>><around*|(|w+1-t b|)><rsup|A><around*|(|1+t
      b-w|)><rsup|A>d w+<big|int><rsub|0><rsup|1-t
      b>w<rprime|'><rsup|\<nu\>><around*|(|1-t
      b-w<rprime|'>|)><rsup|A><around*|(|1+t b+w<rprime|'>|)><rsup|A>d
      w<rprime|'>|)><around*|(|1-t<rsup|2>|)><rsup|B>d t=>|<cell|>>>>
    </eqnarray>

    Now, the formula <cite-detail|gradshteinryzhik|ET II 186(9), p.315>:

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|0><rsup|u>x<rsup|\<nu\>-1><around*|(|x+\<alpha\>|)><rsup|\<lambda\>><around*|(|u-x|)><rsup|\<mu\>-1>d
      x=\<alpha\><rsup|\<lambda\>>u<rsup|\<mu\>+\<nu\>-1>B<around*|(|\<mu\>,\<nu\>|)><rsub|2>F<rsub|1><around*|(|-\<lambda\>,\<nu\>;\<mu\>+\<nu\>;-<frac|u|\<alpha\>>|)>,>|<cell|>>|<row|<cell|>|<cell|<around*|\||arg<around*|(|<frac|u|a>|)>|\|>\<less\>\<pi\>,Re<around*|(|\<mu\>|)>\<gtr\>0,Re<around*|(|\<nu\>|)>\<gtr\>0.>|<cell|>>>>
    </eqnarray>

    allows us to continue as

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|=B<around*|(|\<nu\>+1,A+1|)><big|int><rsub|t=-1><rsup|1>>|<cell|>>|<row|<cell|>|<cell|<around*|(|<around*|(|1-t
      b|)><rsup|A><around*|(|1+t b|)><rsup|A+\<nu\>+1>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-A,\<nu\>+1>>|<row|<cell|A+\<nu\>+2>>>>>;<frac|t
      b+1|t b-1>|)>+<around*|(|1+t b|)><rsup|A><around*|(|1-t
      b|)><rsup|A+\<nu\>+1> <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-A,\<nu\>+1>>|<row|<cell|A+\<nu\>+2>>>>>;<frac|t
      b-1|t b+1>|)>|)><around*|(|1-t<rsup|2>|)><rsup|B>d
      t=>|<cell|>>|<row|<cell|>|<cell|<around*|(|<math-up|<cite-detail|NIST:DLMF|http://dlmf.nist.gov/15.8.E1>>:<space|1em><rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|a,b>>|<row|<cell|c>>>>>;z|)>=<around*|(|1-z|)><rsup|-a>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|a,c-b>>|<row|<cell|c>>>>>;<frac|z|z-1>|)>,<space|1em><around*|\||ph<around*|(|1-z|)>|\|>\<less\>\<pi\>|)>>|<cell|>>|<row|<cell|>|<cell|=2<rsup|A>B<around*|(|\<nu\>+1,A+1|)><big|int><rsub|t=-1><rsup|1>>|<cell|>>|<row|<cell|>|<cell|<around*|(|<around*|(|1+t
      b|)><rsup|A+\<nu\>+1> <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-A,A+1>>|<row|<cell|A+\<nu\>+2>>>>>;<frac|t
      b+1|2>|)>+<around*|(|1-t b|)><rsup|A+\<nu\>+1>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-A,A+1>>|<row|<cell|A+\<nu\>+2>>>>>;<frac|1-t
      b|2>|)>|)><around*|(|1-t<rsup|2>|)><rsup|B>d
      t=>|<cell|>>|<row|<cell|>|<cell|<around*|(|<math-up|<math|t\<rightsquigarrow\>-t>
      in the first integral>|)>>|<cell|>>|<row|<cell|>|<cell|=2<rsup|A+1>B<around*|(|\<nu\>+1,A+1|)><big|int><rsub|t=-1><rsup|1><around*|(|1-t
      b|)><rsup|A+\<nu\>+1> <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-A,A+1>>|<row|<cell|A+\<nu\>+2>>>>>;<frac|1-t
      b|2>|)><around*|(|1-t<rsup|2>|)><rsup|B>d
      t=>|<cell|>>|<row|<cell|>|<cell|2<rsup|A+1>B<around*|(|\<nu\>+1,A+1|)><big|sum><rsub|i=0><rsup|\<infty\>>
      <frac|<around*|(|-A|)><rsub|i><around*|(|A+1|)><rsub|i>|i!<around*|(|A+\<nu\>+2|)><rsub|i>>2<rsup|-i>
      <big|int><rsub|t=-1><rsup|1><around*|(|1-t
      b|)><rsup|A+\<nu\>+1+i><around*|(|1-t<rsup|2>|)><rsup|B>d
      t=>|<cell|>>|<row|<cell|>|<cell|<around*|(|<math-up|expand
      <math|<around*|(|1-t b|)><rsup|A+\<nu\>+1+1>> in series in <math|t
      b>>|)>>|<cell|>>|<row|<cell|>|<cell|=2<rsup|A+1>B<around*|(|\<nu\>+1,A+1|)><big|sum><rsub|i=0><rsup|\<infty\>>
      <frac|<around*|(|-A|)><rsub|i><around*|(|A+1|)><rsub|i>|i!<around*|(|A+\<nu\>+2|)><rsub|i>>2<rsup|-i>
      <big|sum><rsub|j=0><rsup|\<infty\>><frac|<around*|(|-A-\<nu\>-i-1|)><rsub|2j>|<around*|(|2j|)>!>b<rsup|2j><big|int><rsub|t=-1><rsup|1>t<rsup|2j><around*|(|1-t<rsup|2>|)><rsup|B>d
      t=>|<cell|>>|<row|<cell|>|<cell|2<rsup|A+1>B<around*|(|\<nu\>+1,A+1|)><big|sum><rsub|i=0><rsup|\<infty\>>
      <frac|<around*|(|-A|)><rsub|i><around*|(|A+1|)><rsub|i>|i!<around*|(|A+\<nu\>+2|)><rsub|i>>2<rsup|-i>
      <big|sum><rsub|j=0><rsup|\<infty\>><frac|<around*|(|-A-\<nu\>-i-1|)><rsub|2j>|<around*|(|2j|)>!>B<around*|(|j+<frac|1|2>,B+1|)>b<rsup|2j>=>|<cell|>>|<row|<cell|>|<cell|<around*|(|<around*|(|x|)><rsub|2j>=4<rsup|j><around*|(|x/2|)><rsub|j><around*|(|<around*|(|x+1|)>/2|)><rsub|j>|)>>|<cell|>>|<row|<cell|>|<cell|2<rsup|A+1>B<around*|(|\<nu\>+1,A+1|)>\<Gamma\><around*|(|B+1|)><sqrt|\<pi\>><big|sum><rsub|i,j=0><rsup|\<infty\>>
      <frac|<around*|(|-A|)><rsub|i><around*|(|A+1|)><rsub|i>|i!<around*|(|A+\<nu\>+2|)><rsub|i>>2<rsup|-i><frac|<around*|(|-A-\<nu\>-i-1|)><rsub|2j>|4<rsup|j>j!\<Gamma\><around*|(|j+B+<frac|3|2>|)>>b<rsup|2j>=>|<cell|>>|<row|<cell|>|<cell|2<rsup|A+1>\<Gamma\><around*|(|\<nu\>+1|)>\<Gamma\><around*|(|A+1|)>\<Gamma\><around*|(|B+1|)><sqrt|\<pi\>><big|sum><rsub|i,j=0><rsup|\<infty\>>
      <frac|<around*|(|-A|)><rsub|i><around*|(|A+1|)><rsub|i>\<Gamma\><around*|(|-A-\<nu\>-i-1+2j|)>|i!\<Gamma\><around*|(|A+\<nu\>+2+i|)>\<Gamma\><around*|(|-A-\<nu\>-i-1|)>>\<cdot\><frac|2<rsup|-i>|4<rsup|j>j!\<Gamma\><around*|(|j+B+<frac|3|2>|)>>b<rsup|2j>=>|<cell|>>|<row|<cell|>|<cell|<around*|(|\<Gamma\><around*|(|1-x|)>\<Gamma\><around*|(|x|)>=<frac|\<pi\>|sin<around*|(|\<pi\>x|)>>|)>>|<cell|>>|<row|<cell|>|<cell|2<rsup|A+1>\<Gamma\><around*|(|\<nu\>+1|)>\<Gamma\><around*|(|A+1|)>\<Gamma\><around*|(|B+1|)><sqrt|\<pi\>><big|sum><rsub|i,j=0><rsup|\<infty\>><frac|<around*|(|-A|)><rsub|i><around*|(|A+1|)><rsub|i>|i!\<Gamma\><around*|(|A+\<nu\>+2+i-2j|)>>\<cdot\><frac|2<rsup|-i>|4<rsup|j>j!\<Gamma\><around*|(|j+B+<frac|3|2>|)>>b<rsup|2j>=>|<cell|>>|<row|<cell|>|<cell|<around*|(|<math-up|summation
      in <math|i>>|)>>|<cell|>>|<row|<cell|>|<cell|2<rsup|A+1>\<Gamma\><around*|(|\<nu\>+1|)>\<Gamma\><around*|(|A+1|)>\<Gamma\><around*|(|B+1|)><sqrt|\<pi\>><big|sum><rsub|j=0><rsup|\<infty\>>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-A,A+1>>|<row|<cell|A+\<nu\>+2-2j>>>>>;<frac|1|2>|)>\<cdot\><frac|b<rsup|2j>|4<rsup|j>j!\<Gamma\><around*|(|j+B+<frac|3|2>|)>\<Gamma\><around*|(|A+\<nu\>+2-2j|)>>=>|<cell|>>|<row|<cell|>|<cell|<around*|(|<math-up|<cite-detail|NIST:DLMF|http://dlmf.nist.gov/15.4.E30>:><space|0.6spc><rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|a,1-a>>|<row|<cell|b>>>>>;<frac|1|2>|)>=<frac|2<rsup|1-b><sqrt|\<pi\>>\<Gamma\><around*|(|b|)>|\<Gamma\><around*|(|<frac|a+b|2>|)>\<Gamma\><around*|(|<frac|b-a+1|2>|)>>|)>>|<cell|>>|<row|<cell|>|<cell|<frac|2<rsup|-\<nu\>>\<Gamma\><around*|(|\<nu\>+1|)>\<Gamma\><around*|(|A+1|)>\<Gamma\><around*|(|B+1|)>\<pi\>|\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>\<Gamma\><around*|(|<frac|2A+\<nu\>+3|2>|)>><big|sum><rsub|j=0><rsup|\<infty\>><frac|1|\<Gamma\><around*|(|<frac|\<nu\>+2|2>-j|)>\<Gamma\><around*|(|<frac|2A+\<nu\>+3|2>-j|)>>\<cdot\><frac|b<rsup|2j>|j!\<Gamma\><around*|(|j+B+<frac|3|2>|)>>=>|<cell|>>|<row|<cell|>|<cell|<around*|(|<around*|(|x|)><rsub|-j>=<around*|(|-1|)><rsup|j>/<around*|(|1-x|)><rsub|j>|)>>|<cell|>>|<row|<cell|>|<cell|<frac|2<rsup|-\<nu\>>\<Gamma\><around*|(|\<nu\>+1|)>\<Gamma\><around*|(|A+1|)>\<Gamma\><around*|(|B+1|)>\<pi\>|\<Gamma\><around*|(|<frac|\<nu\>+2|2>|)>\<Gamma\><around*|(|<frac|2A+\<nu\>+3|2>|)>\<Gamma\><around*|(|B+<frac|3|2>|)>><big|sum><rsub|j=0><rsup|\<infty\>><frac|<around*|(|-\<nu\>|)><rsub|j><around*|(|-<frac|2A+\<nu\>+1|2>|)><rsub|j>b<rsup|2j>|j!<around*|(|B+<frac|3|2>|)><rsub|j>>=>|<cell|>>|<row|<cell|>|<cell|<around*|(|\<Gamma\><around*|(|2x|)>=2<rsup|2x-1>\<Gamma\><around*|(|x|)>\<Gamma\><around*|(|x+1/2|)>/<sqrt|\<pi\>>|)>>|<cell|>>|<row|<cell|>|<cell|<frac|\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>\<Gamma\><around*|(|A+1|)>\<Gamma\><around*|(|B+1|)><sqrt|\<pi\>>|\<Gamma\><around*|(|<frac|2A+\<nu\>+3|2>|)>\<Gamma\><around*|(|B+<frac|3|2>|)>>
      <rsub|2>F<rsub|1><around*|(|<stack|<tformat|<table|<row|<cell|-\<nu\>,-A-<frac|\<nu\>+1|2>>>|<row|<cell|B+<frac|3|2>>>>>>;b<rsup|2>|)><rsub|>.>|<cell|>>>>
    </eqnarray>
  </proof>

  <\bibliography|bib|tm-plain|todai_master.bib>
    <\bib-list|2>
      <bibitem*|1><label|bib-gradshteinryzhik>I.S.<nbsp>Gradshten,
      I.M.<nbsp>Ryzhik<localize|, and >A.<nbsp>Jeffrey.<newblock>
      <with|font-shape|italic|Table of Integrals, Series, and Products, Sixth
      edition>.<newblock> Academic Press, New York, 2000.<newblock>

      <bibitem*|2><label|bib-NIST:DLMF>NIST Digital Library of Mathematical
      Functions.<newblock> http://dlmf.nist.gov/, Release 1.0.10 of
      2015-08-07.<newblock>
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
    <associate|auto-1|<tuple|2|4>>
    <associate|bib-NIST:DLMF|<tuple|2|4>>
    <associate|bib-gradshteinryzhik|<tuple|1|4>>
    <associate|eq-1|<tuple|1|1>>
    <associate|lem1|<tuple|1|1>>
    <associate|lem2|<tuple|2|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      gradshteinryzhik

      NIST:DLMF

      NIST:DLMF
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>