<TeXmacs|1.99.4>

<style|seminar>

<\body>
  <chapter*|Chapter 4: Spherical functions>

  We let\ 

  <\equation*>
    <stack|<tformat|<table|<row|<cell|C<rsub|c><around*|(|G//K|)>\<assign\><around*|{|f\<in\>C<rsub|c><around*|(|G|)>\<mid\>\<forall\>k<rsub|1,2>\<in\>K,x\<in\>G,f<around*|(|k<rsub|1>x
    k<rsub|2>|)>=f<around*|(|x|)>|}>,>>|<row|<cell|f<rsup|K><around*|(|x|)>\<assign\><big|int><rsub|K>f<around*|(|x
    k|)>d k,<space|1em><rsup|K>f\<assign\><text|similarly>.>>|<row|<cell|\<pi\>:G\<curvearrowright\>H:Hilbert\<rightsquigarrow\>P<rsub|K>:H\<rightarrow\>H<rsup|K>\<assign\><around*|{|v\<in\>H\<mid\>\<forall\>k\<in\>K,k
    v=v|}>>>|<row|<cell|P<rsub|K>v=<big|int><rsub|K>\<pi\><around*|(|k|)>v d
    k. >>>>>
  </equation*>

  <\theorem>
    Let:

    <\enumerate>
      <item><math|G>: locally compact unimodular;

      <item><math|K\<subset\>G>: compact;

      <item><math|\<tau\>:G\<rightarrow\>G>: antiautomorphism of order 2,
      such that\ 

      <\equation*>
        \<forall\>x\<in\>G<space|1em>\<exists\>k<rsub|1,2>\<in\>K,<space|1em>x<rsup|\<tau\>>=k<rsub|1>x
        k<rsub|2>.
      </equation*>
    </enumerate>

    Then <math|C<rsub|c><around*|(|G//K|)>>: commutative algebra (with
    respect to convolution <math|\<ast\>>).
  </theorem>

  <\remark*>
    This can be applied to the setting

    <\equation*>
      <around*|(|G,K,\<tau\>|)>=<around*|(|SL<rsub|2><around*|(|\<bbb-R\>|)>,SO<around*|(|2|)>,\<tau\>:x\<mapsto\>x<rsup|T>|)>.
    </equation*>
  </remark*>

  <\proof>
    Note that for the modular function we have

    <\equation*>
      1=\<Delta\><around*|(|\<tau\><rsup|2>|)>=\<Delta\><around*|(|\<tau\>|)><rsup|2>\<Rightarrow\>\<Delta\><around*|(|\<tau\>|)>=1.
    </equation*>

    Then, we proceed as

    <\equation*>
      <stack|<tformat|<table|<row|<cell|<around*|(|f\<ast\>g|)><around*|(|x|)>=<big|int><rsub|G>f<around*|(|x
      y<rsup|-1>|)>g<around*|(|y|)>\<mathd\>y>>|<row|<cell|=<big|int><rsub|G>f<around*|(|y|)>g<around*|(|y*x|)>\<mathd\>y=<big|int><rsub|G>g<around*|(|x<rsup|\<tau\>>y<rsup|\<tau\>>|)>f<around*|(|y<rsup|\<tau\>>|)>\<mathd\>y>>|<row|<cell|=>>|<row|<cell|>>|<row|<cell|=<big|int><rsub|G>g<around*|(|x*y<rsup|-1>|)>f<around*|(|y|)>\<mathd\>x=<around*|(|g\<ast\>f|)><around*|(|x|)>>>>>>
    </equation*>

    <\equation*>
      <stack|<tformat|<table|<row|<cell|<around*|(|f\<ast\>g|)><around*|(|x|)>=<big|int><rsub|G>f<around*|(|x
      y<rsup|-1>|)>g<around*|(|y|)>d y>>|<row|<cell|<around*|(|<text|<math|\<Delta\><around*|(|\<tau\>|)>=1>>|)>>>|<row|<cell|=<big|int><rsub|G>f<around*|(|y<rsup|-\<tau\>>x<rsup|\<tau\>>|)>g<around*|(|y<rsup|\<tau\>>|)>d
      y>>|<row|<cell|<around*|(|y\<rightarrow\>y
      x|)>>>|<row|<cell|=<big|int><rsub|G>f<around*|(|y<rsup|-\<tau\>>|)>g<around*|(|x<rsup|\<tau\>>y<rsup|\<tau\>>|)>d
      y>>|<row|<cell|<around*|(|\<forall\>f\<in\>C<rsub|c><around*|(|G//K|)>\<forall\>x\<in\>G,f<around*|(|x<rsup|\<tau\>>|)>=f<around*|(|x|)>|)>>>|<row|<cell|=<big|int><rsub|G>f<around*|(|y<rsup|-1>|)>g<around*|(|y
      x|)>d y=<big|int><rsub|G>f<around*|(|y<rsup|>|)>g<around*|(|y<rsup|-1>
      x|)>d y>>>>>
    </equation*>

    \;
  </proof>
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|?>>
    <associate|auto-2|<tuple|1|?|../../../.TeXmacs/texts/scratch/no_name_32.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|Chapter
      4: Spherical functions> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>
    </associate>
  </collection>
</auxiliary>