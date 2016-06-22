<TeXmacs|1.99.4>

<style|<tuple|article|mystyle>>

<\body>
  <\lemma>
    <label|images:lem-hypo>For <math|a\<in\>\<bbb-Z\><rsub|\<geqslant\>0>,p\<in\>\<bbb-Z\><rsub|\<geqslant\>1>>
    let's define

    <\equation*>
      \<bbb-C\><around*|[|x,y|]>\<ni\>P<rsub|a><rsup|<around*|(|p|)>>\<assign\>C<rsup|p/2><rsub|a><around*|(|<sqrt|<frac|1-x|1-y>>|)><around*|(|1-y|)><rsup|a/2>\<times\><choice|<tformat|<table|<row|<cell|1,>|<cell|a\<in\>2\<bbb-Z\>>>|<row|<cell|<around*|(|1-y|)><rsup|-1/2>,>|<cell|a\<in\>2\<bbb-Z\>+1.>>>>>
    </equation*>

    Let's further define linear <math|\<varphi\>:\<bbb-C\><around*|[|x,y|]>\<rightarrow\>\<bbb-C\>>
    via

    <\equation*>
      \<varphi\><around*|[|x<rsup|i>y<rsup|j>|]><around*|(|a<rsub|0>,a<rsub|1>,a<rsub|2>,p|)>\<assign\><frac|\<Gamma\>*<around*|(|j+<frac|a<rsub|1>|2>|)>*<space|0.17em>\<Gamma\>*<around*|(|j+i+<frac|a<rsub|0>|2>|)>*<space|0.17em>\<Gamma\>*<around*|(|<frac|-1+a<rsub|1>+p|2>+j+i|)>|\<Gamma\>*<around*|(|j+i+<frac|a<rsub|2>|2>|)>*<space|0.17em>\<Gamma\>*<around*|(|<frac|-1+a<rsub|1>+p|2>+j|)>*<space|0.17em>\<Gamma\>*<around*|(|<frac|2+a<rsub|0>+a<rsub|1>-a<rsub|2>+p|2>+j+i|)>>.
    </equation*>

    Then,

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|\<varphi\><around*|[|P<rsub|a><rsup|<around*|(|p|)>>|]><around*|(|a<rsub|0>,a<rsub|1>,a<rsub|2>,p|)>=>|<cell|>>|<row|<cell|>|<cell|=<choice|<tformat|<table|<row|<cell|<frac|\<Gamma\><around*|(|<frac|a<rsub|0>|2>|)>*<space|0.17em>\<Gamma\><around*|(|<frac|a<rsub|1>|2>|)>*<space|0.17em>\<Gamma\><around*|(|<frac|2+a<rsub|0>-a<rsub|2>|2>|)>*<space|0.17em><around*|(|-1|)><rsup|<frac|a-1|2>>*<space|0.17em>\<Gamma\>*<around*|(|a+p-2|)>*<space|0.17em>\<Gamma\><around*|(|<frac|1+a<rsub|1>-a<rsub|2>+p+a|2>|)>|\<Gamma\>*<around*|(|p-2|)>*<space|0.17em>\<Gamma\><around*|(|<frac|2+a<rsub|1>-a<rsub|2>+p|2>|)>*<space|0.17em>\<Gamma\>*<around*|(|-<frac|1-a<rsub|2>-a|2>|)>*<space|0.17em>\<Gamma\><around*|(|<frac|3+a<rsub|0>-a<rsub|2>-a|2>|)>*<space|0.17em>\<Gamma\>*<around*|(|a+1|)>*<space|0.17em>\<Gamma\><around*|(|<frac|1+a<rsub|0>+a<rsub|1>-a<rsub|2>+p+a|2>|)>>,>|<cell|a\<in\>2\<bbb-Z\>+1>>|<row|<cell|<frac|\<Gamma\><around*|(|<frac|a<rsub|0>|2>|)>*<space|0.17em>\<Gamma\><around*|(|<frac|a<rsub|1>|2>|)>*<space|0.17em>\<Gamma\>*<around*|(|-<frac|-2-a<rsub|0>+a<rsub|2>|2>|)>*<space|0.17em>\<Gamma\>*<around*|(|a+p-2|)>*<space|0.17em>\<Gamma\><around*|(|<frac|a<rsub|1>-a<rsub|2>+p+a|2>|)><around*|(|-1|)><rsup|a/2>|\<Gamma\><around*|(|a+1|)>*\<Gamma\><around*|(|<frac|a+a<rsub|2>|2>|)>*<space|0.17em>\<Gamma\>*<around*|(|p-2|)>*<space|0.17em>\<Gamma\><around*|(|<frac|a<rsub|1>-a<rsub|2>+p|2>|)>*<space|0.17em>\<Gamma\><around*|(|<frac|a+a<rsub|0>+a<rsub|1>-a<rsub|2>+p|2>|)>*<space|0.17em>\<Gamma\>*<around*|(|-<frac|-2-a<rsub|0>+a<rsub|2>+a|2>|)>>,>|<cell|a\<in\>2\<bbb-Z\>>>>>>>|<cell|>>>>
    </eqnarray>
  </lemma>
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|images:lem-hypo|<tuple|1|?|../../.TeXmacs/texts/scratch/no_name_2.tm>>
  </collection>
</references>