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

  <comment|\<less\>*tag\<gtr\>>

  take me high my aeroplane

  <comment|\<less\>/tag\<gtr\>>eouoeuoeoeauenutoensu
</body>