<TeXmacs|1.0.7.18>

<style|generic>

<\body>
  <section|section 54>

  <\problem*>
    problem 9
  </problem*>

  <\enumerate-alpha>
    <item><math|y<rsub|1><rsup|2>+y<rsub|2><rsup|2>+y<rsub|3><rsup|2>=<around*|(|y<rsub|1>+y<rsub|2>+y<rsub|3>|)><rsup|2>-2<around*|(|y<rsub|1>y<rsub|2>+y<rsub|1>y<rsub|3>+y<rsub|2>y<rsub|3>|)>>

    <item><math|<frac|y<rsub|1>|y<rsub|2>>+<frac|y<rsub|2>|y<rsub|1>>+\<ldots\>=<frac|y<rsub|3><rsup|2>y<rsub|1>y<rsub|2><around*|(|y<rsub|1><rsup|2>+y<rsub|2><rsup|2>|)>+y<rsub|2><rsup|2>y<rsub|1>y<rsub|3><around*|(|y<rsub|1><rsup|2>+y<rsub|3><rsup|2>|)>+\<ldots\>|<around*|(|y<rsub|1>y<rsub|2>y<rsub|3>|)><rsup|2>>=<frac|y<rsub|3><around*|(|y<rsub|1><rsup|2>+y<rsub|2><rsup|2>|)>+y<rsub|2><around*|(|y<rsub|1><rsup|2>+y<rsub|3><rsup|2>|)>+\<ldots\>|y<rsub|1>y<rsub|2>y<rsub|3>>=<frac|<around*|(|y<rsub|1>y<rsub|2>+y<rsub|2>y<rsub|3>+y<rsub|1>y<rsub|3>|)><around*|(|y<rsub|1>+y<rsub|2>+y<rsub|3>|)>-3y<rsub|1>y<rsub|2>y<rsub|3>|y<rsub|1>y<rsub|2>y<rsub|3>>>
  </enumerate-alpha>

  <\problem*>
    problem 10
  </problem*>

  <\enumerate-alpha>
    <item>As <math|\<alpha\><rsub|1>+\<alpha\><rsub|2>+\<alpha\><rsub|3>=4>,
    we have the required polynomial being <math|x-4>

    <item>The required polynomial, if we write it as <math|x<rsup|3>+a
    x<rsup|2>+b x+c>, should have <math|a=-\<alpha\><rsub|1><rsup|2>-\<alpha\><rsub|2><rsup|2>-\<alpha\><rsub|3><rsup|2>>,
    <math|b=\<alpha\><rsub|1><rsup|2>\<alpha\><rsub|2><rsup|2>+\<alpha\><rsub|1><rsup|2>\<alpha\><rsub|3><rsup|2>+\<alpha\><rsub|2><rsup|2>\<alpha\><rsub|3><rsup|2>>
    and <math|c=-<around*|(|\<alpha\><rsub|1>\<alpha\><rsub|2>\<alpha\><rsub|3>|)><rsup|3>>.
    Now, as

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|\<alpha\><rsub|1>+\<alpha\><rsub|2>+\<alpha\><rsub|3>=4>|<cell|>>|<row|<cell|>|<cell|\<alpha\><rsub|1>\<alpha\><rsub|2>+\<alpha\><rsub|1>\<alpha\><rsub|3>+\<alpha\><rsub|2>\<alpha\><rsub|3>=6>|<cell|>>|<row|<cell|>|<cell|\<alpha\><rsub|1>\<alpha\><rsub|2>\<alpha\><rsub|3>=2>|<cell|>>>>
    </eqnarray>

    we have

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|a=-\<alpha\><rsub|1><rsup|2>-\<alpha\><rsub|2><rsup|2>-\<alpha\><rsub|3><rsup|2>=-<around*|(|\<alpha\><rsub|1>+\<alpha\><rsub|2>+\<alpha\><rsub|3>|)><rsup|2>+2<around*|(|\<alpha\><rsub|1>\<alpha\><rsub|2>+\<ldots\>|)>=-4>|<cell|>>|<row|<cell|>|<cell|b=<around*|(|\<alpha\><rsub|1>\<alpha\><rsub|2>+\<alpha\><rsub|2>\<alpha\><rsub|3>+\<alpha\><rsub|1>\<alpha\><rsub|3>|)><rsup|2>-2\<alpha\><rsub|1>\<alpha\><rsub|2>\<alpha\><rsub|3><around*|(|\<alpha\><rsub|1>+\<alpha\><rsub|2>+\<alpha\><rsub|3>|)>=20>|<cell|>>|<row|<cell|>|<cell|c=-8>|<cell|>>>>
    </eqnarray>

    and the required polynomial is <math|x<rsup|3>-4x<rsup|2>+20x-8>.
  </enumerate-alpha>

  <section|section 55>

  <\problem*>
    7
  </problem*>

  Exercise 10 (done below) implies that

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|\<bbb-Z\><rsub|2><around*|[|x|]>\<ni\>\<Phi\><rsub|3>=<frac|x<rsup|3>-1|x-1>=x<rsup|2>+x+1>|<cell|>>|<row|<cell|>|<cell|\<bbb-Z\><rsub|3><around*|[|x|]>\<ni\>\<Phi\><rsub|8>=<frac|x<rsup|8>-1|x<rsup|4>-1>=x<rsup|4>+1>|<cell|>>>>
  </eqnarray>

  <\problem*>
    9
  </problem*>

  <\enumerate-alpha>
    <item>false; this fact is mentioned in the textbook

    <item>true; this is just the definition given in the textbook

    <item>false; as Theorem 55.4 that size of group is
    <math|\<varphi\><around*|(|n|)>>, not <math|n>

    <item>true; again, by Theorem 55.4

    <item>true; by Theorem 55.4

    <item>false; as <math|5> divides 25, but its square also does so;

    <item>true; as 17 is Fermat prime;

    <item>false; as 2 is not Fermat prime, but regular 2-gon (aka. ``line
    segment'') is constructible

    <item>false; not all of them are primes to begin with

    <item>true; this is the part of definition
  </enumerate-alpha>

  <\problem*>
    10
  </problem*>

  It is easy to see that right-hand side divides left-hand side. Indeed, let
  <math|d\<mid\>n> be arbitrary and consider <math|\<Phi\><rsub|d>>. It is
  known that <math|\<Phi\><rsub|d>\<mid\>x<rsup|d>-1>, but as
  <math|x<rsup|d>-1\<mid\>x<rsup|n>-1> (since for <math|y=x<rsup|d>> and
  <math|k> such that <math|n=k d> we have
  <math|x<rsup|n>-1=y<rsup|k>-1=<around*|(|y-1|)><around*|(|1+y<rsup|2>+y<rsup|3>+\<ldots\>+y<rsup|k-1>|)>=<around*|(|x<rsup|d>-1|)><around*|(|1+y<rsup|2>+y<rsup|3>+\<ldots\>+y<rsup|k-1>|)>>;
  note that this works even in characteristic <math|p\<neq\>0>, as we assume
  <math|p> does not divide <math|n>) and thus
  <math|\<Phi\><rsub|d><mid|\|>x<rsup|n>-1>. This shows that right-hand
  divides left-hand.

  Conversely, let <math|\<xi\>> be a root of <math|x<rsup|n>-1>. As roots of
  <math|x<rsup|n>-1> in its splitting field form cyclic group, <math|\<xi\>>
  generates a cyclic subgroup <math|C> of it of order <math|d<mid|\|>n>.
  Then, <math|\<xi\>> is the root of <math|x<rsup|d>-1> and moreover all
  elements of <math|C> are roots of <math|x<rsup|d>-1> as well, since they
  exhaust all roots. As <math|\<xi\>> is then a generator, by definition
  <math|\<Phi\><rsub|d><around*|(|\<xi\>|)>=0> and hence <math|\<xi\>> is the
  root of right-hand side as well. Hence, left-hand side divides right-hand
  side

  As both left-hand and right-hand sides are monic polynomials, we are done.

  <\problem*>
    11
  </problem*>

  We shall use the previous exercise. It implies that

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|\<Phi\><rsub|1>=x-1>|<cell|>>|<row|<cell|>|<cell|\<Phi\><rsub|2>=<frac|x<rsup|2>-1|x-1>=x+1>|<cell|>>|<row|<cell|>|<cell|\<Phi\><rsub|3>=<frac|x<rsup|3>-1|x-1>=x<rsup|2>+x+1>|<cell|>>|<row|<cell|>|<cell|\<Phi\><rsub|4>=<frac|x<rsup|4>-1|x<rsup|2>-1>=x<rsup|2>+1>|<cell|>>|<row|<cell|>|<cell|\<Phi\><rsub|5>=<frac|x<rsup|5>-1|x-1>=x<rsup|4>+x<rsup|3>+x<rsup|2>+x+1>|<cell|>>|<row|<cell|>|<cell|\<Phi\><rsub|6>=<frac|x<rsup|6>-1|<around*|(|x-1|)><around*|(|x<rsup|2>+x+1|)><around*|(|x+1|)>>=x<rsup|2>-x+1>|<cell|>>>>
  </eqnarray>

  <section|section 56>

  <\exercise*>
    exercise 2
  </exercise*>

  Yes, as making substitution <math|t=x<rsup|2>> we can bring it to quartic
  and then just take square roots.

  <\exercise*>
    exercise 3
  </exercise*>

  <\enumerate-alpha>
    <item>true; this is the definition

    <item>true; this is the consequence of theorem 56.4

    <item>true; by lemma 56.3

    <item>false; as <math|<sqrt|\<pi\>>> is not transcendental over
    <math|\<bbb-Q\><around*|(|\<pi\>|)>> (its a root of
    <math|x<rsup|2>-\<pi\>\<in\>\<bbb-Q\><around*|(|\<pi\>|)><around*|[|x|]>>)

    <item>true; in fact let <math|F\<subset\>E> be finite extension of finite
    field. Now, as we know that <math|G<around*|(|E/\<bbb-Z\><rsub|p>|)>> is
    cyclic (generator is <math|z\<mapsto\>z<rsup|n>> with
    <math|n=<around*|[|E:\<bbb-Z\><rsub|p>|]>>), the
    <math|G<around*|(|E/F|)>\<subset\>G<around*|(|E/\<bbb-Z\><rsub|p>|)>> is
    also cyclic and hence solvablue

    <item>false; quintic <math|x<rsup|5>> is solvable by radicals over
    <math|\<bbb-R\>>

    <item>true; mentioned in the text

    <item>false; by taking all field operations and square roots we can only
    arrive at extension <math|E> of base field <math|F> whose degree
    <math|<around*|[|E:F|]>=2<rsup|k>>, while e.g. for cubic
    <math|x<rsup|3>-1> its splitting field has degree 3 over <math|\<bbb-R\>>

    <item>false; <math|x<rsup|3>>'s zeros are attainable by these operations

    <item>true; the equivalent condition for polynomial to being solvable by
    radicals is to have solvable Galois group, while the latter condition is
    formulated in terms of subnormal series
  </enumerate-alpha>
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|3|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|section
      54> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|section
      55> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>