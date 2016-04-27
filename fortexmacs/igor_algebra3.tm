<TeXmacs|1.0.7.18>

<style|generic>

<\body>
  <section|Section 51>

  <\exercise*>
    Exercise 2
  </exercise*>

  We claim that <math|\<bbb-Q\><around*|(|<sqrt|2|4>,<sqrt|2|6>|)>=\<bbb-Q\><around*|(|<sqrt|2|12>|)>>.
  Indeed, let <math|\<omega\>\<assign\><sqrt|2|12>>, we have
  <math|<sqrt|2|4>=\<omega\><rsup|3>> and <math|<sqrt|2|6>=\<omega\><rsup|2>>
  and as <math|\<omega\><rsup|2>,\<omega\><rsup|3>\<in\>\<bbb-Q\><around*|(|<sqrt|2|4>,<sqrt|2|6>|)>>,
  we have <math|\<omega\>=\<omega\><rsup|3>/\<omega\><rsup|2>\<in\>\<bbb-Q\><around*|(|<sqrt|2|4>,<sqrt|2|6>|)>>
  as well. This ends the proof.

  <\exercise*>
    Exercise 8
  </exercise*>

  <\enumerate-alpha>
    <item>false; exercise 10 of this section shows that the finite extension
    <math|\<bbb-Z\><rsub|p><around*|(|y|)>:\<bbb-Z\><rsub|p><around*|(|y<rsup|p>|)>>
    is inseparable;

    <item>true; by theorem 51.14;

    <item>true; theorem 51.13;

    <item>false; polynomial <math|x<rsup|2>> over <math|\<bbb-R\>> has only
    one distinch zero of multiplicity two;

    <item>false; see prev. example;

    <item>true; definition of perfect field implies that for irred.
    polynomial <math|f\<in\>F<around*|[|x|]>> and arbitrary root
    <math|\<alpha\>> of it we have <math|F<around*|(|\<alpha\>|)>\<supset\>F>
    being separable extension, hence in particular <math|\<alpha\>> is
    separable, thus by remark after example 51.8 we have
    <math|irr<around*|(|\<alpha\>,F|)>=f> should have all of its roots being
    of multiplicity 1;

    <item>true; indeed, algebraically closed field cannot have any finite
    extensions other than the trivial one by definition (recall that every
    finite extension is automatically an algebraic one) and the latter one is
    separable;

    <item>true; as algebraic closure <math|<overline|F>> of <math|F> is an
    algebraic extension and algebraically closed field <math|<overline|F>> is
    perfect by the previous item;

    <item>true; by theorem 53.6;

    <item>true; by corollary 50.7 we have
    <math|<around*|\||G<around*|(|E/F|)>|\|>=<around*|{|E:F|}>> and then
    theorem 51.6 gives the desired.
  </enumerate-alpha>

  <\exercise*>
    Exercise 9
  </exercise*>

  As <math|\<alpha\>,\<beta\>> are separable, theorem 51.9 implies that if
  one will show that in tower <math|F\<subset\>F<around*|(|\<alpha\>|)>\<subset\>F<around*|(|\<alpha\>,\<beta\>|)>>
  every extension is separable, then <math|F\<subset\>F<around*|(|\<alpha\>,\<beta\>|)>>
  is separable, and hence by corollary 51.10 so are
  <math|\<alpha\>\<pm\>\<beta\>,\<alpha\>\<beta\>> and
  <math|\<alpha\>/\<beta\>> over <math|F>. Now, it only needs to be shown
  that <math|F<around*|(|\<alpha\>|)>\<subset\>F<around*|(|\<alpha\>,\<beta\>|)>=F<around*|(|\<alpha\>|)><around*|(|\<beta\>|)>>
  is separable, but <math|g\<assign\>irr<around*|(|F<around*|(|\<alpha\>|)>,\<beta\>|)>>
  should be a divisor of <math|f\<assign\>irr<around*|(|F,\<beta\>|)>>, and
  by remark after example 51.8 <math|f> (and hence its divisor <math|g>)
  should have all roots different, thus <math|F<around*|(|\<alpha\>|)>\<subset\>F<around*|(|\<alpha\>|)><around*|(|\<beta\>|)>>
  is separable and we are done.

  <\exercise*>
    Exercise 14
  </exercise*>

  <\enumerate-alpha>
    <item>
  </enumerate-alpha>
</body>

<\initial>
  <\collection>
    <associate|language|american>
    <associate|page-type|letter>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Section
      51> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>