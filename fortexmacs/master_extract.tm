<TeXmacs|1.99.4>

<style|<tuple|article|std-latex>>

<\body>
  <\hide-preamble>
    <assign|*|<macro|<myralph>>>

    <assign|*|<macro|<@myralph>>>

    <assign|mynorm|<macro|1|\<\|\|\><arg|1>\<\|\|\>>>

    <assign|myabs|<macro|1|<left|\|><arg|1><right|\|>>>

    <assign|lfrac|<macro|1|2|<mybra|<arg|1>/<arg|2>>>>

    <assign|myset|<macro|1|<left|{><arg|1><right|}>>>

    <assign|mysca|<macro|1|2|<left|\<less\>><arg|1>,<arg|2><right|\<gtr\>>>>

    <assign|mysetn|<macro|1|2|<left|{><arg|1><mid|\|> <arg|2><right|}>>>

    <assign|myfincol|<macro|1|2|<left|{><arg|1><right|}><rsub|i=1><rsup|<arg|2>>>>

    <assign|mysfrac|<macro|1|2|<rsup|<arg|1>>/<rsub|<arg|2>>>>

    <assign|mycol|<macro|1|2|<left|{><arg|1><right|}><rsub|<arg|2>>>>

    <assign|mysetg|<macro|1|<left|\<less\>><left|{><arg|1><right|}><right|\<gtr\>>>>

    <assign|myvec|<macro|1|<overrightharp|<math|<arg|1>>>>>

    <assign|myvecprodexpanded|<macro|1|2|3|4|5|6|<det|<tformat|<table|<row|<cell|<math-bf|i>>|<cell|<math-bf|j>>|<cell|<math-bf|k>>>|<row|<cell|<arg|1>>|<cell|<arg|2>>|<cell|<arg|3>>>|<row|<cell|<arg|4>>|<cell|<arg|5>>|<cell|<arg|6>>>>>>=
    <det|<tformat|<table|<row|<cell|<arg|2>>|<cell|<arg|3>>>|<row|<cell|<arg|5>>|<cell|<arg|6>>>>>><math-bf|i>
    -<det|<tformat|<table|<row|<cell|<arg|1>>|<cell|<arg|3>>>|<row|<cell|<arg|4>>|<cell|<arg|6>>>>>><math-bf|j>
    +<det|<tformat|<table|<row|<cell|<arg|1>>|<cell|<arg|2>>>|<row|<cell|<arg|4>>|<cell|<arg|5>>>>>><math-bf|k>>>

    <assign|mybra|<macro|1|<left|(><arg|1><right|)>>>

    <assign|mycbra|<macro|1|<left|{><arg|1><right|}>>>

    <assign|mysbra|<macro|1|<left|[><arg|1><right|]>>>

    <assign|myabra|<macro|1|<left|\<less\>><arg|1><right|\<gtr\>>>>

    <assign|myceil|<macro|1|<left|lceil><arg|1><right|rceil>>>

    <assign|myfloor|<macro|1|<left|lfloor><arg|1><right|rfloor>>>

    <\assign|mypic>
      <\macro|1|2>
        <big-figure||>
      </macro>
    </assign>

    <\assign|mypicwtitle>
      <\macro|1|2|3>
        <big-figure|<next-line><arg|3>|>
      </macro>
    </assign>

    <assign|myexplain|<macro|1|(<with|font-shape|italic|<arg|1>>)>>

    <assign|myr|<macro|1|<with|math-font|Bbb|R><rsup|<arg|1>>>>

    <assign|mys|<macro|1|<with|math-font|Bbb|S><rsup|<arg|1>>>>

    <assign|mybramatii|<macro|1|2|3|4|<left|(><tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|r>|<cwith|1|-1|2|2|cell-rborder|0ln>|<table|<row|<cell|<arg|1>>|<cell|<arg|2>>>|<row|<cell|<arg|3>>|<cell|<arg|4>>>>>><right|)>>>

    <assign|mybramatiii|<macro|1|2|3|4|5|6|7|8|9|<left|(><tabular*|<tformat|<cwith|1|-1|1|1|cell-halign|l>|<cwith|1|-1|1|1|cell-lborder|0ln>|<cwith|1|-1|2|2|cell-halign|l>|<cwith|1|-1|3|3|cell-halign|l>|<cwith|1|-1|3|3|cell-rborder|0ln>|<table|<row|<cell|<arg|1>>|<cell|<arg|2>>|<cell|<arg|3>>>|<row|<cell|<arg|4>>|<cell|<arg|5>>|<cell|<arg|6>>>|<row|<cell|<arg|7>>|<cell|<arg|8>>|<cell|<arg|9>>>>>><right|)>>>

    <assign|C|<macro|<with|math-font|Bbb|C>>>

    <assign|F|<macro|<with|math-font|Bbb|F>>>

    <assign|Z|<macro|<with|math-font|Bbb|Z>>>

    <assign|R|<macro|<with|math-font|Bbb|R>>>

    <assign|N|<macro|<with|math-font|Bbb|N>>>

    <assign|Q|<macro|<with|math-font|Bbb|Q>>>

    <assign|Sp|<macro|<with|math-font|Bbb|S>>>

    <\assign|myprobshort>
      <\macro|1|2>
        <myprob|<dueto|<arg|1>><arg|2>>
      </macro>
    </assign>

    <assign|diffsm|<macro|<long-arrow|\<rubber-rightarrow\>|\<sim\>>>>

    <assign|lim|<macro|<oldlim>>>

    <assign|int|<macro|<oldint>>>

    <assign|min|<macro|<with|math-display|true|<oldmin>>>>

    <assign|max|<macro|<with|math-display|true|<oldmax>>>>

    <assign|sum|<macro|<with|math-display|true|<oldsum>>>>

    <assign|sup|<macro|<with|math-display|true|<oldsup>>>>

    <assign|Re|<macro|<math-up|Re>>>

    <assign|Im|<macro|<math-up|Im>>>

    <assign|Ker|<macro|<math-up|Ker>>>

    <assign|supp|<macro|<math-up|supp>>>

    <assign|Diff|<macro|<math-up|Diff>>>

    <assign|End|<macro|<math-up|End>>>

    <new-theorem|mythm|Theorem>

    <new-theorem|mylem|Lemma>

    <new-theorem|myprop|Proposition>

    <new-theorem|mycor|Corollary>

    <new-theorem|myprob|Problem>

    <new-theorem|myfact|Fact>

    <assign|myqed|<macro|<no-break><ifvmode><else>
    <ifdim><lastskip>\<less\>1.5em <lastskip>
    <space|<tex-len|.5em|0em|0.5em>><fi><no-break><vrule>height0.75em
    width0.5em depth0.25em<fi>>>

    <assign|myqed|<macro|<math|\<blacksquare\>>>>

    <assign|qedsymbol|<macro|<math|\<blacksquare\>>>>

    <assign|myproof*|<macro|1|body|<trivlist|<\surround>
      <item*|<space|><with|font-series|bold|<arg|1>>>
    <|surround|<myqed>>
      <arg|body>
    </surround>>>><assign|myproof|<macro|body|<myproof*|Proof.|<arg|body>>>>

    <\assign|proofexplanation>
      <\macro|1>
        <with|font-series|bold|(<arg|1>)>
      </macro>
    </assign>
  </hide-preamble>

  ;<comment|\<less\>*tagsetting\<gtr\>>

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|M\<assign\><around*|{|<around*|(|<tabular*|<tformat|<table|<row|<cell|\<epsilon\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|A>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|\<epsilon\>>>>>>|)><mid|\|><stack|<tformat|<table|<row|<cell|A\<in\>O<around|(|p,q|)>>>|<row|<cell|\<epsilon\>=\<pm\>1>>>>>|}>>|<cell|>>|<row|<cell|>|<cell|N<rsub|+>\<assign\><around*|{|n<rsub|+><around*|(|b|)>\<assign\>I<rsub|n+2>+<around*|(|<tabular|<tformat|<table|<row|<cell|-<frac|1|2>Q<around*|(|b|)>>|<cell|-<space|0.2spc><rsup|t><space|-0.2spc><around*|(|I<rsub|p,q>b|)>>|<cell|<frac|1|2>Q<around*|(|b|)>>>|<row|<cell|b>|<cell|0>|<cell|-b>>|<row|<cell|-<frac|1|2>Q<around*|(|b|)>>|<cell|-<space|0.2spc><rsup|t><space|-0.2spc><around*|(|I<rsub|p,q>b|)>>|<cell|<frac|1|2>Q<around*|(|b|)>>>>>>|)><mid|\|>b\<in\>\<bbb-R\><rsup|p+q>|}>\<simeq\>\<bbb-R\><rsup|p+q>>|<cell|>>|<row|<cell|>|<cell|N<rsub|->\<assign\><around*|{|n<rsub|-><around*|(|w|)>\<assign\>I<rsub|n+2>+<around*|(|<tabular|<tformat|<table|<row|<cell|-<frac|1|2>Q<around*|(|b|)>>|<cell|-<space|0.2spc><rsup|t><space|-0.2spc><around*|(|I<rsub|p,q>b|)>>|<cell|-<frac|1|2>Q<around*|(|b|)>>>|<row|<cell|b>|<cell|0>|<cell|b>>|<row|<cell|<frac|1|2>Q<around*|(|b|)>>|<cell|<space|0.2spc><rsup|t><space|-0.2spc><around*|(|I<rsub|p,q>b|)>>|<cell|<frac|1|2>Q<around*|(|b|)>>>>>>|)><mid|\|>b\<in\>\<bbb-R\><rsup|p+q>|}>\<simeq\>\<bbb-R\><rsup|p+q>>|<cell|>>|<row|<cell|>|<cell|A\<assign\><mysetn|a<around|(|t|)>\<assign\><around*|(|<tabular*|<tformat|<table|<row|<cell|cosh
    <around|(|t|)>>|<cell|0>|<cell|sinh <around|(|t|)>>>|<row|<cell|0>|<cell|I<rsub|p+q>>|<cell|0>>|<row|<cell|sinh
    <around|(|t|)>>|<cell|0>|<cell|cosh <around|(|t|)>>>>>>|)>|t\<in\>\<bbb-R\>>\<simeq\>\<bbb-R\>.>|<cell|>>|<row|<cell|>|<cell|I<rsub|p,q>\<assign\>diag<around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|p>,<wide*|-1,\<ldots\>,-1|\<wide-underbrace\>><rsub|q>|)>,<space|1em>Q<around*|(|x|)>\<assign\><space|0.2spc><rsup|t><space|-0.2spc>x
    I<rsub|p,q>x,<space|0.6spc>x\<in\>\<bbb-R\><rsup|p+q>>|<cell|>>>>
  </eqnarray>

  <comment|\<less\>/tagsetting\<gtr\>>

  <comment|\<less\>*table\<gtr\>>

  <block*|<tformat|<cwith|1|-1|1|-1|cell-halign|l>|<twith|table-lsep|0>|<twith|table-width|1par>|<twith|table-hmode|exact>|<twith|table-halign|l>|<cwith|3|3|1|4|cell-halign|l>|<cwith|3|3|1|4|cell-halign|l>|<table|<row|<cell|>|<cell|<math|Op:\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>\<rightarrow\>Hom<rsub|G<rprime|'>><around*|(|I<around*|(|\<lambda\>|)>,J<around*|(|\<nu\>|)>|)>>>|<cell|defined
  for>|<cell|<math|\<cal-S\><around*|(|\<cdot\>|)>=>>>|<row|<cell|<math|R<rsub|\<lambda\>,\<nu\>><rsup|X>=>>|<cell|<math|Op<around*|(|<frac|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n><around*|\||Q|\|><rsup|-\<nu\>>|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>>|)>>>|<cell|<math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>>|<cell|<math|<choice|<tformat|<table|<row|<cell|X,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<nin\>\<mid\>\<mid\>\<cup\>\\\\\<cup\>//>>|<row|<cell|C,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<mid\>\<mid\>-\\\\-//>>|<row|<cell|Y,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\\\\-\<mid\>\<mid\>-//>>|<row|<cell|\<varnothing\>,>|<cell|p=1,<space|0.6spc><around*|(|\<lambda\>,\<nu\>|)>\<in\>\<mid\>\<mid\>\<cap\>\\\\-//>>|<row|<cell|Y\<cap\>C,>|<cell|p\<gtr\>1,<space|0.6spc><around*|(|\<lambda\>,\<nu\>|)>\<in\>\<mid\>\<mid\>\<cap\>\\\\-//.>>|<row|<cell|\<varnothing\>,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<in\>//\<cap\>\<mid\>\<mid\>\<mid\>>>|<row|<cell|<around*|{|<around*|[|0|]>|}>,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<in\>//-\<mid\>\<mid\>\<mid\>>>>>>>>>|<row|<cell|<math|<wide|R|~><rsup|X><rsub|\<lambda\>,\<nu\>>=>>|<cell|<math|Op<around*|(|<frac|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n><around*|\||Q|\|><rsup|-\<nu\>>|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>>|)>>>|<cell|<math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<mid\>\<mid\>\<mid\>>>|<cell|<math|<choice|<tformat|<table|<row|<cell|X,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<nin\>\<mid\>\<mid\>\<cup\>\\\\>>|<row|<cell|C,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<mid\>\<mid\>-\\\\>>|<row|<cell|Y,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\\\\-\<mid\>\<mid\>>>|<row|<cell|\<varnothing\>,>|<cell|p=1,<space|0.6spc><around*|(|\<lambda\>,\<nu\>|)>\<in\>\<mid\>\<mid\>\<cap\>\\\\>>|<row|<cell|Y\<cap\>C,>|<cell|p\<gtr\>1,<space|0.6spc><around*|(|\<lambda\>,\<nu\>|)>\<in\>\<mid\>\<mid\>\<cap\>\\\\.>>>>>>>>>>><newline>

  <block*|<tformat|<cwith|1|-1|1|-1|cell-halign|l>|<twith|table-lsep|0>|<twith|table-width|1par>|<twith|table-hmode|exact>|<twith|table-halign|l>|<cwith|2|2|1|4|cell-halign|l>|<cwith|2|2|1|4|cell-halign|l>|<table|<row|<cell|>|<cell|<math|Op:\<cal-S\>ol<around*|(|\<bbb-R\><rsup|p,q>;\<lambda\>,\<nu\>|)>\<rightarrow\>Hom<rsub|G<rprime|'>><around*|(|I<around*|(|\<lambda\>|)>,J<around*|(|\<nu\>|)>|)>>>|<cell|defined
  for>|<cell|<math|\<cal-S\><around*|(|\<cdot\>|)>=>>>|<row|<cell|<math|R<rsub|\<lambda\>,\<nu\>><rsup|Y>=>>|<cell|<math|Op<around*|(|<frac|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n><around*|\||Q|\|><rsup|-\<nu\>>q<rsub|Y><rsup|X><around*|(|\<lambda\>,\<nu\>|)>|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>>|)>>>|<cell|<math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\\\\>>|<cell|<math|Y>
  (generically, and always <math|\<neq\>\<varnothing\>>)>>|<row|<cell|<math|R<rsub|\<lambda\>,\<nu\>><rsup|C>=>>|<cell|<math|Op<around*|(|<frac|<around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n><around*|\||Q|\|><rsup|-\<nu\>>q<rsub|C><rsup|X><around*|(|\<lambda\>,\<nu\>|)>|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>>|)>>>|<cell|<math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<mid\>\<mid\>>>|<cell|<math|<choice|<tformat|<table|<row|<cell|<around*|{|<around*|[|0|]>|}>,>|<cell|p=1,q\<in\>2\<bbb-Z\>+1,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<in\>//>>|<row|<cell|C,>|<cell|p=1,q\<in\>2\<bbb-Z\>+1,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<nin\>//>>|<row|<cell|<around*|{|<around*|[|0|]>|}>,>|<cell|p=1,q\<in\>2\<bbb-Z\>,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<in\>//\<cap\>\\\\>>|<row|<cell|C,>|<cell|p=1,q\<in\>2\<bbb-Z\>,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<nin\>//\<cap\>\\\\>>|<row|<cell|<around*|{|<around*|[|0|]>|}>,>|<cell|p\<gtr\>1,q\<in\>2\<bbb-Z\>+1,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<in\>//>>|<row|<cell|C,>|<cell|p\<gtr\>1,q\<in\>2\<bbb-Z\><rsub|>+1,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<nin\>//\<cup\>\\\\>>|<row|<cell|C\<cap\>Y,>|<cell|p\<gtr\>1,q\<in\>2\<bbb-Z\><rsub|>+1,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\\\\-//>>|<row|<cell|C,>|<cell|p\<gtr\>1,q\<in\>2\<bbb-Z\>,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<nin\>\\\\>>|<row|<cell|C\<cap\>Y,>|<cell|p\<gtr\>1,q\<in\>2\<bbb-Z\>,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\\\\>>>>>>>>|<row|<cell|<math|R<rsub|\<lambda\>,\<nu\>><rsup|<around*|{|0|}>>=>>|<cell|<math|Op<around*|(|<wide|C|~><rsub|\<nu\>-\<lambda\>><rsup|\<lambda\>-<frac|n-1|2>><around*|(|\<Delta\><rsub|\<bbb-R\><rsup|p-1,q>>\<delta\><rsub|\<bbb-R\><rsup|p+q-1>>,\<delta\><around*|(|x<rsub|p>|)>|)>|)>>>|<cell|<math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>//>>|<cell|<math|<around*|{|<around*|[|0|]>|}>>>>>>>

  <comment|\<less\>/table\<gtr\>>

  <comment|\<less\>*residue\<gtr\>>

  <\equation*>
    q<rsub|C><rsup|X><around*|(|\<lambda\>,\<nu\>|)>:=<choice|<tformat|<table|<row|<cell|1,>|<cell|q\<in\>2\<bbb-Z\>+1,p\<gtr\>1>>|<row|<cell|\<Gamma\><rsup|><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>,>|<cell|q\<in\>2\<bbb-Z\>,p=1\<comma\>\<nu\>\<leqslant\>q-\<nu\>>>|<row|<cell|\<Gamma\><rsup|><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>,>|<cell|q\<in\>2\<bbb-Z\>,p=1\<comma\>\<nu\>\<gtr\>q-\<nu\>>>|<row|<cell|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>,>|<cell|q\<in\>2\<bbb-Z\>,p\<gtr\>1>>|<row|<cell|\<Gamma\><around*|(|<frac|\<lambda\>+\<nu\>-n+1|2>|)>,>|<cell|q\<in\>2\<bbb-Z\>+1,p=1>>>>>
  </equation*>

  <\equation*>
    q<rsub|Y><rsup|X><around*|(|\<lambda\>,\<nu\>|)>:=<choice|<tformat|<table|<row|<cell|1,>|<cell|n\<in\>2\<bbb-Z\>,p\<gtr\>1>>|<row|<cell|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>\<Gamma\><rsup|-1><around*|(|<frac|1|2><around*|(|max<around*|{|2,<around*|(|<frac|\<lambda\>+\<nu\>|2>|)><rprime|'>|}>-\<nu\>|)>|)>,>|<cell|n-1,q\<in\>2\<bbb-Z\>,p\<gtr\>1;<space|0.6spc>a<rprime|'>\<assign\>min<around*|{|x<mid|\|>a\<leqslant\>x\<in\>2\<bbb-Z\>|}>>>|<row|<cell|\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>\<Gamma\><rsup|-1><around*|(|<frac|<around*|(|<frac|\<lambda\>+\<nu\>|2>|)><rprime|'>-\<nu\>|2>|)>,>|<cell|n,q\<in\>2\<bbb-Z\>+1,p\<gtr\>1;<space|0.6spc>a<rprime|'>\<assign\>min<around*|{|x<mid|\|>a\<leqslant\>x\<in\>2\<bbb-Z\>+1|}>>>|<row|<cell|\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>,>|<cell|p=1,n\<in\>2\<bbb-Z\><around*|(|\<Leftrightarrow\>q\<in\>2\<bbb-Z\>+1|)>>>|<row|<cell|\<Gamma\><around*|(|<frac|1-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|\<lambda\>-\<nu\>|2>|)>/\<Gamma\><around*|(|max<around*|{|<frac|\<lambda\>+\<nu\>|2>,0|}>-\<nu\>|)>,>|<cell|p=1,n\<in\>2\<bbb-Z\>+1<around*|(|\<Leftrightarrow\>q\<in\>2\<bbb-Z\>|)>.>>>>>
  </equation*>

  <comment|\<less\>/residue\<gtr\>>

  <comment|\<less\>*classification\<gtr\>>

  <\equation*>
    p=1\<Rightarrow\>Hom<rsub|G<rprime|'>><around*|(|I<around*|(|\<lambda\>|)>,J<around*|(|\<nu\>|)>|)>=<choice|<tformat|<table|<row|<cell|\<bbb-C\>R<rsup|X><rsub|\<lambda\>,\<nu\>>,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>-<around*|(|//\<cap\>\<mid\>\<mid\>\<mid\>|)>-<around*|(|\<mid\>\<mid\>\<cap\>\\\\|)>>>|<row|<cell|\<bbb-C\><wide|R|~><rsup|X><rsub|\<lambda\>,\<nu\>>\<oplus\>\<bbb-C\>R<rsup|<around*|{|0|}>><rsub|\<lambda\>,\<nu\>>,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<in\><around*|(|//\<cap\>\<mid\>\<mid\>\<mid\>|)>-<around*|(|\<mid\>\<mid\>\<cap\>\\\\|)>>>|<row|<cell|\<bbb-C\>R<rsup|P><rsub|\<lambda\>,\<nu\>>\<oplus\>\<bbb-C\>R<rsup|C><rsub|\<lambda\>,\<nu\>>,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<in\><around*|(|\<mid\>\<mid\>\<cap\>\\\\|)>-
    //>>|<row|<cell|\<bbb-C\>R<rsup|<around*|{|0|}>><rsub|\<lambda\>,\<nu\>>,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<mid\>\<mid\>\<cap\>\\\\\<cap\>//>>>>>
  </equation*>

  <\equation*>
    p\<gtr\>1\<Rightarrow\>Hom<rsub|G<rprime|'>><around*|(|I<around*|(|\<lambda\>|)>,J<around*|(|\<nu\>|)>|)>=<choice|<tformat|<table|<row|<cell|\<bbb-C\><wide|R|~><rsup|X><rsub|\<lambda\>,\<nu\>>\<oplus\>\<bbb-C\>R<rsup|<around*|{|0|}>><rsub|\<lambda\>,\<nu\>><rsub|\<lambda\>,\<nu\>>,>|<cell|<around*|(|\<lambda\>,\<nu\>|)>\<in\>
    //\<cap\>\<mid\>\<mid\>\<mid\>>>|<row|<cell|\<bbb-C\>R<rsup|X><rsub|\<lambda\>,\<nu\>>,>|<cell|otherwise>>>>>
  </equation*>

  <comment|\<less\>/classification\<gtr\>>

  <comment|\<less\>*functional\<gtr\>>

  \;

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<wide|\<bbb-T\>|~><rsub|n<rprime|'>-\<nu\>>\<circ\>R<rsup|X><rsub|\<lambda\>,n<rprime|'>-\<nu\>>=q<rsup|T
    X><rsub|X><around*|(|\<lambda\>,\<nu\>|)>R<rsup|X><rsub|\<lambda\>,\<nu\>>>|<cell|>>|<row|<cell|>|<cell|R<rsub|n-\<lambda\>,\<nu\>><rsup|X>\<circ\><wide|\<bbb-T\>|~><rsub|\<lambda\>>=q<rsup|X
    T><rsub|X><around*|(|\<lambda\>,\<nu\>|)>R<rsub|\<lambda\>,\<nu\>><rsup|X>>|<cell|>>|<row|<cell|>|<cell|q<rsup|T
    X><rsub|X><around*|(|\<lambda\>,\<nu\>|)>\<assign\>\<pi\><rsup|<frac|n-1|2>><choice|<tformat|<table|<row|<cell|<frac|<sqrt|\<pi\>>2<rsup|1-q+\<nu\>>|\<Gamma\><around*|(|<frac|q-\<nu\>|2>|)>\<Gamma\><around*|(|<frac|\<nu\>+1|2>|)>>,>|<cell|p=1>>|<row|<cell|<frac|sin<around*|(|\<pi\><frac|p-\<nu\>|2>|)>|\<pi\>>\<times\><frac|<sqrt|\<pi\>>2<rsup|2-n+\<nu\>>|\<Gamma\><around*|(|<frac|n-1-\<nu\>|2>|)>>,>|<cell|n-1\<in\>1+2\<bbb-Z\>>>|<row|<cell|<frac|sin<around*|(|\<pi\><frac|p-\<nu\>|2>|)>|\<pi\>>\<times\><frac|\<Gamma\><around*|(|<frac|n/2-\<nu\>|2>|)>|\<Gamma\><around*|(|<frac|n-1-\<nu\>|2>|)>>,>|<cell|<frac|n-1|2>+p-1\<in\>2\<bbb-Z\>>>|<row|<cell|<frac|sin<around*|(|\<pi\><frac|p-\<nu\>|2>|)>|\<pi\>>\<times\><frac|\<Gamma\><around*|(|<frac|n/2-\<nu\>-1|2>|)>|\<Gamma\><around*|(|<frac|n-1-\<nu\>|2>|)>>,>|<cell|<frac|n-1|2>+p-1\<in\>1+2\<bbb-Z\>>>>>>>|<cell|>>|<row|<cell|>|<cell|q<rsup|X
    T><rsub|X><around*|(|\<lambda\>,\<nu\>|)>\<assign\><frac|2<rsup|2\<lambda\>-n>\<pi\><rsup|-n/2>|\<Gamma\><around*|(|<frac|n-\<lambda\>|2>|)>>\<times\><frac|sin<around*|[|\<pi\><frac|p-\<lambda\>+1|2>|]>|\<pi\>>\<times\><choice|<tformat|<table|<row|<cell|2<rsup|1-\<lambda\>><sqrt|\<pi\>>,>|<cell|n\<in\>2\<bbb-Z\>+1>>|<row|<cell|\<Gamma\><around*|(|<frac|\<lambda\>-n/2+1|2>|)>,>|<cell|n/2+p\<in\>2\<bbb-Z\>>>|<row|<cell|\<Gamma\><around*|(|<frac|\<lambda\>-n/2|2>|)>,>|<cell|n/2+p\<in\>2\<bbb-Z\>+1>>>>>>|<cell|>>>>
  </eqnarray>

  <comment|\<less\>/functional\<gtr\>>

  <comment|\<less\>*Add\<gtr\>>

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|\<frak-I\>\<assign\><around*|{|*<around*|(|x,y|)>\<in\>\<bbb-N\><rsup|2>\<mid\>x+y\<in\>2\<bbb-Z\>|}>>|<cell|>>|<row|<cell|>|<cell|A<rsup|0><around*|(|a|)>\<assign\><around*|{|<around*|(|x,y|)>\<in\>\<frak-I\><mid|\|>x+y\<leqslant\>a|}>,<space|0.6spc>A<rsup|3><around*|(|a|)>\<assign\><around*|{|<around*|(|x,y|)>\<in\>\<frak-I\><mid|\|>x+y\<gtr\>a|}>>|<cell|>>|<row|<cell|>|<cell|A<rsup|12><around*|(|a|)>\<assign\><around*|{|<around*|(|x,y|)>\<in\>\<frak-I\><mid|\|>-a-p+1\<leqslant\>x-y\<leqslant\>a+q-1|}>,<space|0.6spc>A<rsup|13><around*|(|a|)>\<assign\><around*|{|<around*|(|x,y|)>\<in\>\<frak-I\><mid|\|>x-y\<leqslant\>a+q-1,x+y\<gtr\>a|}>>|<cell|>>|<row|<cell|>|<cell|A<rsup|1><around*|(|a|)>:=<around*|{|<around*|(|x,y|)>\<in\>\<frak-I\><mid|\|>x-y\<gtr\>a+q-1|}>,<space|0.6spc>A<rsup|2><around*|(|a|)>:=<around*|{|<around*|(|x,y|)>\<in\>\<frak-I\><mid|\|>-a-p+1\<gtr\>x-y|}>>|<cell|>>|<row|<cell|>|<cell|A<rsup|123><around*|(|a|)>\<assign\>A<rsup|12><around*|(|a|)>\<cap\>A<rsup|3><around*|(|a|)>,<space|1em>A<rsup|23><around*|(|a|)>\<assign\><around*|{|<around*|(|x,y|)>\<in\>\<frak-I\><mid|\|>-a-p+1\<leqslant\>x-y,x+y\<gtr\>a|}>>|<cell|>>>>
  </eqnarray>

  <comment|\<less\>/Add\<gtr\>>

  <comment|\<less\>*imagesX\<gtr\>>

  for <math|p\<gtr\>1>:

  <\enumerate>
    <item>Suppose <math|p\<in\>2\<bbb-Z\>+1> and <math|q\<in\>2\<bbb-Z\>>.
    Then <math|\<nu\>\<in\>2\<bbb-Z\>,0\<less\>\<nu\>\<less\>n-1\<Rightarrow\>R<rsub|\<lambda\>,\<nu\>><rsup|X>:onto>.
    Otherwise,<newline>

    <block*|<tformat|<table|<row|<cell|<math|\<nu\>\<leqslant\><frac|p+q+1|2>-2>>|<cell|<math|\<nu\>\<in\>2\<bbb-Z\>+1>>>|<row|<cell|<math|<around*|(|//\<cup\>\\\\|)><rsup|c>>>|<cell|<math|A<rsup|12><around*|(|-\<nu\>|)>\<cup\>A<rsup|2><around*|(|-\<nu\>|)>>>>|<row|<cell|<math|\\\\-
    //>>|<cell|<math|A<rsup|12><around*|(|-\<nu\>|)>>>>|<row|<cell|<math|//\<Rightarrow\>//\<cap\>\\\\,k\<geqslant\>l>>|<cell|<math|\<varnothing\>>>>>>><space|0.6spc><block*|<tformat|<table|<row|<cell|<math|\<nu\>=<frac|n-1|2>>>|<cell|<math|\<nu\>\<in\>2\<bbb-Z\>+1>>>|<row|<cell|<math|<around*|(|//\<cup\>\\\\|)><rsup|c>>>|<cell|<math|A<rsup|2><around*|(|-\<nu\>|)>>>>|<row|<cell|<math|//\<cap\>\\\\,k=l><math|>>|<cell|<math|\<varnothing\>>>>>>><space|0.6spc><block*|<tformat|<table|<row|<cell|<math|<frac|n+1|2>\<leqslant\>\<nu\>>>|<cell|<math|n-3\<less\>\<nu\>\<in\>2\<bbb-Z\>>>|<cell|<math|\<nu\>\<in\>2\<bbb-Z\>+1>>>|<row|<cell|<math|<around*|(|//\<cup\>\\\\|)><rsup|c>>>|<cell|<math|full>>|<cell|<math|A<rsup|2><around*|(|\<nu\>-n<rprime|'>|)>>>>|<row|<cell|<math|//\<cap\>\\\\,k\<less\>l><math|>>|<cell|<math|A<rsup|3><around*|(|\<nu\>-n<rprime|'>|)>>>|<cell|<math|\<varnothing\>>>>|<row|<cell|<math|//
    -\\\\>>|<cell|<math|full>>|<cell|<math|\<varnothing\>>>>>>>

    <item>Suppose <math|p,q\<in\>2\<bbb-Z\>+1>(<math|\<Rightarrow\>\\\\\<cap\>//\<cap\><around*|{|\<nu\>\<in\>\<bbb-Z\>|}>=
    \<varnothing\>>).<newline>

    <block*|<tformat|<table|<row|<cell|<math|\<nu\>\<leqslant\>0>>|<cell|<math|\<nu\>\<in\>2\<bbb-Z\>>>|<cell|<math|\<nu\>\<in\>2\<bbb-Z\>+1>>>|<row|<cell|<math|<around*|(|//\<cup\>\\\\|)><rsup|c>>>|<cell|<math|A<rsup|0><around*|(|-\<nu\>|)>>>|<cell|<math|full>>>|<row|<cell|<math|\\\\
    - //><math|>>|<cell|<math|A<rsup|0><around*|(|-\<nu\>|)>>>|<cell|<math|A<rsup|1><around*|(|\<nu\>-n<rprime|'>|)>>>>|<row|<cell|<math|//
    -\\\\>>|<cell|<math|\<varnothing\>>>|<cell|<math|full>>>>>><space|1em><block*|<tformat|<table|<row|<cell|<math|0\<less\>\<nu\>>>|<cell|<math|\<nu\>\<in\>2\<bbb-Z\>>>|<cell|<math|\<nu\>\<in\>2\<bbb-Z\>+1>>>|<row|<cell|<math|<around*|(|//\<cup\>\\\\|)><rsup|c>>>|<cell|<math|A<rsup|2><around*|(|\<nu\>-n<rprime|'>|)>>>|<cell|<math|full>>>|<row|<cell|<math|\\\\
    - //><math|>>|<cell|<math|A<rsup|2><around*|(|\<nu\>-n<rprime|'>|)>>>|<cell|<math|A<rsup|1><around*|(|\<nu\>-n<rprime|'>|)>>>>|<row|<cell|<math|//
    -\\\\>>|<cell|<math|\<varnothing\>>>|<cell|<math|full>>>>>>

    <item>Suppose <math|p,q\<in\>2\<bbb-Z\>>
    (<math|\<Rightarrow\>\\\\\<cap\>//\<cap\><around*|{|\<nu\>\<in\>\<bbb-Z\>|}>=
    \<varnothing\>>)<newline>

    <block*|<tformat|<table|<row|<cell|<math|\<nu\>\<leqslant\>0>>|<cell|<math|\<nu\>\<in\>2\<bbb-Z\>>>|<cell|<math|\<nu\>\<in\>2\<bbb-Z\>+1>>>|<row|<cell|<math|<around*|(|//\<cup\>\\\\|)><rsup|c>>>|<cell|<math|A<rsup|0><around*|(|-\<nu\>|)>>>|<cell|<math|A<rsup|2><around*|(|\<nu\>-n<rprime|'>|)>>>>|<row|<cell|<math|\\\\
    - //><math|>>|<cell|<math|A<rsup|0><around*|(|-\<nu\>|)>>>|<cell|<math|A<rsup|2><around*|(|\<nu\>-n<rprime|'>|)>>>>|<row|<cell|<math|//
    -\\\\>>|<cell|<math|\<varnothing\>>>|<cell|<math|\<varnothing\>>>>>>><space|1em><block*|<tformat|<table|<row|<cell|<math|0\<less\>\<nu\>>>|<cell|<math|\<nu\>\<in\>2\<bbb-Z\>>>|<cell|<math|\<nu\>\<in\>2\<bbb-Z\>+1>>>|<row|<cell|<math|<around*|(|//\<cup\>\\\\|)><rsup|c>>>|<cell|<math|full>>|<cell|<math|A<rsup|2><around*|(|\<nu\>-n<rprime|'>|)>>>>|<row|<cell|<math|\\\\
    - //><math|>>|<cell|<math|A<rsup|1><around*|(|\<nu\>-n<rprime|'>|)>>>|<cell|<math|A<rsup|2><around*|(|\<nu\>-n<rprime|'>|)>>>>|<row|<cell|<math|//
    -\\\\>>|<cell|<math|full>>|<cell|<math|\<varnothing\>>>>>>>

    <item>Suppose <math|p\<in\>2\<bbb-Z\>,q\<in\>2\<bbb-Z\>+1>. Then for
    <math|\<nu\>\<in\>2\<bbb-Z\>+1\<Rightarrow\>J<around*|(|\<nu\>|)>:irred\<Rightarrow\>R<rsub|\<lambda\>,\<nu\>><rsup|X>:onto>.
    For <math|\<nu\>\<in\>2\<bbb-Z\>><newline>

    <block*|<tformat|<table|<row|<cell|<math|\<nu\>\<leqslant\>0>>|<cell|<math|\<nu\>\<in\>2\<bbb-Z\>>>>|<row|<cell|<math|<around*|(|//\<cup\>\\\\|)><rsup|c>>>|<cell|<math|A<rsup|0><around*|(|-\<nu\>|)>>>>|<row|<cell|<math|\\\\-
    //>>|<cell|<math|A<rsup|0><around*|(|-\<nu\>|)>>>>|<row|<cell|<math|//\<cap\>\\\\,k\<gtr\>l>>|<cell|<math|\<varnothing\>>>>>>><space|1em><block*|<tformat|<table|<row|<cell|<math|0\<less\>\<nu\>\<leqslant\><frac|p+q+1|2>-2>>|<cell|<math|\<nu\>\<in\>2\<bbb-Z\>>>>|<row|<cell|<math|<around*|(|//\<cup\>\\\\|)><rsup|c>>>|<cell|<math|A<rsup|12><around*|(|-\<nu\>|)>\<cup\>A<rsup|2><around*|(|-\<nu\>|)>>>>|<row|<cell|<math|\\\\-
    //>>|<cell|<math|A<rsup|12><around*|(|-\<nu\>|)>>>>|<row|<cell|<math|//\<cap\>\\\\,k\<gtr\>l>>|<cell|<math|\<varnothing\>>>>|<row|<cell|CS>|<cell|<math|A<rsup|12><around*|(|-\<nu\>|)>\<cup\>A<rsup|1><around*|(|-\<nu\>|)>\<cup\>A<rsup|2><around*|(|-\<nu\>|)>>>>>>><space|1em><block*|<tformat|<table|<row|<cell|<math|<frac|p+q-1|2>\<leqslant\>\<nu\>>>|<cell|<math|\<nu\>\<in\>2\<bbb-Z\>>>>|<row|<cell|<math|<around*|(|//\<cup\>\\\\|)><rsup|c>>>|<cell|<math|A<rsup|2><around*|(|\<nu\>-n<rprime|'>|)>>>>|<row|<cell|<math|//\<cap\>\\\\,k\<less\>l><math|>>|<cell|<math|\<varnothing\>>>>|<row|<cell|<math|//
    -\\\\>>|<cell|<math|\<varnothing\>>>>>>>
  </enumerate>

  for <math|p=1>:<newline>

  <block*|<tformat|<twith|table-halign|l>|<twith|table-width|50pt>|<twith|table-hmode|exact>|<cwith|1|-1|1|1|cell-hmode|auto>|<cwith|1|-1|1|1|cell-width|>|<table|<row|<cell|<math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>>>|<cell|<math|<around*|(|//\<cup\>\\\\|)><rsup|c>>>|<cell|<math|//-\\\\>>|<cell|<math|\\\\-//>>|<cell|<math|//\<cap\>\\\\,k\<less\>l>>|<cell|<math|//\<cap\>\\\\,k\<geqslant\>l>>>|<row|<cell|<math|\<nu\>\<in\>2\<bbb-Z\>,\<nu\>\<leqslant\>0>>|<cell|<math|F<around*|(|-\<nu\>|)>>>|<cell|<math|\<varnothing\>>>|<cell|<math|F<around*|(|-\<nu\>|)>>>|<cell|<math|\<times\>>>|<cell|<math|\<varnothing\>>>>|<row|<cell|<math|\<nu\>\<in\>2\<bbb-Z\>,0\<less\>\<nu\>\<less\>q>>|<cell|<math|full>>|<cell|<math|<choice|<tformat|<table|<row|<cell|q\<in\>2\<bbb-Z\>\<Rightarrow\>full>>|<row|<cell|q\<in\>2\<bbb-Z\>+1\<Rightarrow\>\<varnothing\>>>>>>>>|<cell|<math|full>>|<cell|<math|full>>|<cell|<math|full>>>|<row|<cell|<math|\<nu\>\<in\>2\<bbb-Z\>,q\<leqslant\>\<nu\>>>|<cell|<math|<choice|<tformat|<table|<row|<cell|q\<in\>2\<bbb-Z\>\<Rightarrow\>full>>|<row|<cell|q\<in\>2\<bbb-Z\>+1\<Rightarrow\>T<around*|(|\<nu\>-n<rprime|'>|)>>>>>>>>|<cell|<math|<choice|<tformat|<table|<row|<cell|q\<in\>2\<bbb-Z\>\<Rightarrow\>full>>|<row|<cell|q\<in\>2\<bbb-Z\>+1\<Rightarrow\>\<varnothing\>>>>>>>>|<cell|<math|T<around*|(|\<nu\>-n<rprime|'>|)>>>|<cell|<math|T<around*|(|\<nu\>-n<rprime|'>|)>>>|<cell|<math|\<times\>>>>|<row|<cell|<math|\<nu\>\<in\>2\<bbb-Z\>+1,\<nu\>\<leqslant\>0>>|<cell|<math|full>>|<cell|<math|<choice|<tformat|<table|<row|<cell|q\<in\>2\<bbb-Z\>+1\<Rightarrow\>full>>|<row|<cell|q\<in\>2\<bbb-Z\>\<Rightarrow\>\<varnothing\>>>>>>>>|<cell|<math|full>>|<cell|<math|\<times\>>>|<cell|<math|\<varnothing\>>>>|<row|<cell|<math|\<nu\>\<in\>2\<bbb-Z\>+1,0\<less\>\<nu\>\<less\>q>>|<cell|<math|full>>|<cell|<math|<choice|<tformat|<table|<row|<cell|q\<in\>2\<bbb-Z\>+1\<Rightarrow\>full>>|<row|<cell|q\<in\>2\<bbb-Z\>\<Rightarrow\>\<varnothing\>>>>>>>>|<cell|<math|\<varnothing\>>>|<cell|<math|\<varnothing\>>>|<cell|<math|full>>>|<row|<cell|<math|\<nu\>\<in\>2\<bbb-Z\>+1,q\<leqslant\>\<nu\>>>|<cell|<math|<choice|<tformat|<table|<row|<cell|q\<in\>2\<bbb-Z\>+1\<Rightarrow\>full>>|<row|<cell|q\<in\>2\<bbb-Z\>\<Rightarrow\>T<around*|(|\<nu\>-n<rprime|'>|)>>>>>>>>|<cell|<math|<choice|<tformat|<table|<row|<cell|q\<in\>2\<bbb-Z\>+1\<Rightarrow\>full>>|<row|<cell|q\<in\>2\<bbb-Z\>\<Rightarrow\>\<varnothing\>>>>>>>>|<cell|<math|\<varnothing\>>>|<cell|<math|\<varnothing\>>>|<cell|<math|\<times\>>>>>>>

  <comment|\<less\>/imagesX\<gtr\>>

  <comment|\<less\>*Aq\<gtr\>>

  <block*|<tformat|<table|<row|<cell|<math|p=1,q\<in\>2\<bbb-Z\>>>|<cell|<math|\<pi\><rsup|p,q+1><rsub|-,\<nu\>-q/2>,\<nu\>\<in\>q+2\<bbb-N\>>>|<cell|<math|\<pi\><rsup|p,q+1><rsub|-,\<nu\>-q/2>,\<nu\>\<in\>q+1+2\<bbb-N\>>>>|<row|<cell|<math|\<pi\><rsub|+,n/2-\<lambda\>><rsup|p+1,q+1>,\<lambda\>\<in\>q-1-2\<bbb-N\>>>|<cell|<math|0>>|<cell|<math|0>>>|<row|<cell|<math|\<pi\><rsub|-,n/2-\<lambda\>><rsup|p+1,q+1>,\<lambda\>\<in\>2\<bbb-N\>>>|<cell|<math|0>>|<cell|<math|1\<Leftrightarrow\><around*|(|\<lambda\>,\<nu\>|)>\<nin\>\\\\>>>>>><math|<newline>><math|>

  <math|<block*|<tformat|<table|<row|<cell|p=1,q\<in\>2\<bbb-Z\>+1>|<cell|\<pi\><rsup|p,q+1><rsub|-,\<nu\>-q/2>,\<nu\>\<in\>q+2\<bbb-N\>>|<cell|\<pi\><rsup|p,q+1><rsub|-,\<nu\>-q/2>,\<nu\>\<in\>q+1+2\<bbb-N\>>>|<row|<cell|<math|\<pi\><rsup|p+1,q+1><rsub|+,n/2-\<lambda\>>,2\<bbb-Z\>\<ni\>\<lambda\>\<leqslant\><frac|q-1|2>>>|<cell|<math|0>>|<cell|<math|0>>>|<row|<cell|\<pi\><rsub|-,n/2-\<lambda\>><rsup|p+1,q+1>,2\<bbb-Z\>\<ni\>\<lambda\>\<leqslant\><frac|q-1|2>>|<cell|<math|0>>|<cell|1\<Leftrightarrow\><around*|(|\<lambda\>,\<nu\>|)>\<nin\>\\\\>>>>>>

  <newline>

  <math|<block*|<tformat|<table|<row|<cell|p,q\<in\>2\<bbb-Z\>>|<cell|<math|\<pi\><rsup|p,q+1><rsub|+,\<nu\>-n<rprime|'>/2>,2\<bbb-Z\>\<ni\>\<nu\>\<gtr\>0>>|<cell|<math|\<pi\><rsup|p,q+1><rsub|-,\<nu\>-n<rprime|'>/2>,\<nu\>\<in\>2\<bbb-Z\>+1>>>|<row|<cell|<math|\<pi\><rsup|p+1,q+1><rsub|+,n/2-\<lambda\>>,2\<bbb-Z\>+1\<ni\>\<lambda\>\<leqslant\>n/2>>|<cell|<math|1\<Leftrightarrow\><around*|(|\<lambda\>,\<nu\>|)>\<in\>\\\\>>|<cell|<math|1\<Leftrightarrow\>\<lambda\>\<gtr\>\<nu\>\<Leftrightarrow\><around*|(|\<lambda\>,\<nu\>|)>\<nin\>//>>>|<row|<cell|<math|\<pi\><rsup|p+1,q+1><rsub|-,n/2-\<lambda\>>,2\<bbb-Z\>+1\<ni\>\<lambda\>\<leqslant\>n/2>>|<cell|<math|0>>|<cell|<math|1\<Leftrightarrow\><around*|(|\<lambda\>,\<nu\>|)>,<around*|(|n-\<lambda\>,\<nu\>|)>\<in\>//>>>>>><newline>>

  <math|<block*|<tformat|<table|<row|<cell|p\<in\>2\<bbb-Z\>,q\<in\>2\<bbb-Z\>+1>|<cell|<math|\<pi\><rsup|p,q+1><rsub|+,\<nu\>-n<rprime|'>/2>,2\<bbb-Z\>\<ni\>\<nu\>\<geqslant\>n<rprime|'>/2>>|<cell|<math|\<pi\><rsup|p,q+1><rsub|-,\<nu\>-n<rprime|'>/2>,2\<bbb-Z\>\<ni\>\<nu\>\<geqslant\>n<rprime|'>/2>>>|<row|<cell|<math|\<pi\><rsup|p+1,q+1><rsub|+,n/2-\<lambda\>>,\<lambda\>\<in\>2\<bbb-Z\>>>|<cell|<math|0>>|<cell|<math|1\<Leftrightarrow\><around*|(|\<lambda\>,\<nu\>|)>\<nin\>//>>>|<row|<cell|<math|\<pi\><rsup|p+1,q+1><rsub|-,n/2-\<lambda\>>,\<lambda\>\<in\>n-2\<bbb-N\><rsub|+>>>|<cell|<math|0>>|<cell|<math|1\<Leftrightarrow\><around*|(|n-\<lambda\>,\<nu\>|)>\<in\>//>>>>>>>

  <newline>

  <block*|<tformat|<table|<row|<cell|<math|p\<in\>2\<bbb-Z\>+1,q\<in\>2\<bbb-Z\>>>|<cell|<math|\<pi\><rsup|p,q+1><rsub|+,\<nu\>-n<rprime|'>/2>,2\<bbb-Z\>+1\<ni\>\<nu\>\<geqslant\>n<rprime|'>/2>>|<cell|<math|\<pi\><rsup|p,q+1><rsub|-,\<nu\>-n<rprime|'>/2>,2\<bbb-Z\>+1\<ni\>\<nu\>\<geqslant\>n<rprime|'>/2>>>|<row|<cell|<math|\<pi\><rsup|p+1,q+1><rsub|+,n/2-\<lambda\>>,\<lambda\>\<in\>n-2\<bbb-N\><rsub|+>>>|<cell|<math|0>>|<cell|<math|1\<Leftrightarrow\><around*|(|\<lambda\>,\<nu\>|)>\<nin\>//\<Leftrightarrow\>\<lambda\>\<gtr\>\<nu\>>>>|<row|<cell|<math|\<pi\><rsup|p+1,q+1><rsub|-,n/2-\<lambda\>>,\<lambda\>\<in\>2\<bbb-Z\>>>|<cell|<math|0>>|<cell|<math|1\<Leftrightarrow\><around*|(|n-\<lambda\>,\<nu\>|)>\<in\>//>>>>>><newline>

  <math|<block*|<tformat|<table|<row|<cell|p,q\<in\>2\<bbb-Z\>+1>|<cell|<math|\<pi\><rsup|p,q+1><rsub|+,\<nu\>-n<rprime|'>/2>,\<nu\>\<in\>2\<bbb-Z\>+1>>|<cell|<math|\<pi\><rsup|p,q+1><rsub|-,\<nu\>-n<rprime|'>/2>,\<nu\>\<in\>2\<bbb-N\>>>>|<row|<cell|<math|\<pi\><rsup|p+1,q+1><rsub|+,n/2-\<lambda\>>,\<lambda\>\<in\>2\<bbb-Z\>,\<lambda\>\<leqslant\>n/2>>|<cell|<math|1\<Leftrightarrow\><around*|(|\<lambda\>,\<nu\>|)>\<in\>\\\\>>|<cell|<math|0>>>|<row|<cell|<math|\<pi\><rsup|p+1,q+1><rsub|-,n/2-\<lambda\>>,,\<lambda\>\<in\>2\<bbb-Z\>,\<lambda\>\<leqslant\>n/2>>|<cell|<math|0>>|<cell|<math|1\<Leftrightarrow\><around*|(|n-\<lambda\>,\<nu\>|)>\<in\>//>>>>>>>

  <comment|\<less\>/Aq\<gtr\>>

  \;
</body>

<\references>
  <\collection>
    <associate|Aq:prop-ee|<tuple|2|?>>
    <associate|Aq:prop-eo|<tuple|1|?>>
    <associate|Aq:prop-oo|<tuple|1|?>>
    <associate|Aq:prop-p1q1mod4|<tuple|1|?>>
    <associate|def-n-nots:eq-A|<tuple|1|?|../forlatex/talks/test.tm>>
    <associate|def-n-nots:eq-N+|<tuple|1|?|../forlatex/talks/test.tm>>
    <associate|def-n-nots:eq:N-|<tuple|1|?|../forlatex/talks/test.tm>>
    <associate|sol-MO:prop-main|<tuple|?|?>>
  </collection>
</references>