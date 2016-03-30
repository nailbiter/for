<TeXmacs|1.0.7.18>

<style|generic>

<\body>
  <section|section 37>

  <\exercise>
    exercise 4
  </exercise>

  By fundamental theorem for finitely generated abelian groups, it suffices
  to show that any <math|G> of order <math|<around*|(|5|)><around*|(|7|)><around*|(|47|)>>
  is abelian. Now, third Sylow theorem implies that it has normal subgroup
  <math|H> of order 47. Moreover, theorem 37.7 implies that <math|G/H> (of
  order 35) is cyclic, hence commutator <math|K> of <math|G> is a subgroup of
  <math|H>. Now, the latter implies that <math|K> has order either 1 or 47
  and it suffices to show that order of <math|K> cannot be 47.

  Now, the third Sylow theorem also implies that <math|G> has one normal
  subgroup <math|H<rprime|'>> of order 5 and theorem 37.7 implies that
  <math|G/H<rprime|'>> (of order <math|<around*|(|7|)><around*|(|47|)>>) is
  cyclic. Hence, <math|K\<subset\>H<rprime|'>> and thus <math|K> cannot be of
  order 47.

  <\exercise>
    exercise 5
  </exercise>

  We note that <math|96=2<rsup|5>\<cdot\>3>. Now, let <math|G> be an
  arbitrary group of order 96. The third Sylow theorem implies that the
  number of Sylow 2-subgroups in <math|G> (each of size 32) is either 1 (and
  we are done in this case, as then the unique 2-Sylow should be normal) or
  3. Assuming the latter, we can take two such 2-Sylow subgroups, say
  <math|H> and <math|K> and consider <math|H\<cap\>K>. We claim that
  <math|H\<cap\>K> is of size 16. Indeed, the other possibilities for its
  size are 1, 2, 4 or 8 and lemma 37.8 then implies that <math|H K> should
  have size 1024, 512, 256 or 128 respectively. Now, each of the latter are
  impossible, as <math|G> itself has only 96 elements. Hence,
  <math|<around*|\||H\<cap\>K|\|>=32> and thus <math|H\<cap\>K> is normal in
  <math|H> and <math|K> (as a subgroup of index 2), thus
  <math|N<around*|[|H\<cap\>K|]>\<supset\>H,K>, hence the size of
  <math|N<around*|[|H\<cap\>K|]>> is <math|\<gtr\>1> multiple of 32 and a
  divisor of 96, hence the only option is <math|N<around*|[|H\<cap\>K|]>=G>,
  thus <math|H\<cap\>K\<subset\>G> is normal and we are done.

  <\exercise>
    exercise 6
  </exercise>

  We note that <math|160=2<rsup|5>\<cdot\>5> and we let <math|G> be arbitrary
  group of order 160. Again, the third Sylow theorem implies that <math|G>
  has either one 2-Sylow subgroup (in which case it's normal and we're done)
  or 5 of them (each of size 32). Similarly, assuming the latter, we take
  <math|H,K> to be two different <math|2>-Sylow subgroups (each of size 32).
  As in previous exercise, we are done if <math|H\<cap\>K> has size 16. But
  the other possibilities are 1, 2, 4 or 8 with <math|H K> consequently being
  of size 1024, 512, 256 or 128. Assuming the latter (the only nontrivial
  case left), we can use the first Sylow theorem to take groups
  <math|H<rsub|i>,K<rsub|i>>, such that

  <\equation*>
    H\<cap\>K\<vartriangleleft\>H<rsub|i>\<vartriangleleft\>H,<space|1em>H\<cap\>K\<vartriangleleft\>K<rsub|i>\<vartriangleleft\>K,<space|1em><around*|\||H<rsub|i>|\|>=<around*|\||K<rsub|i>|\|>=16.
  </equation*>

  It is clear that <math|H<rsub|i>\<neq\>K<rsub|i>> (as
  <math|<around*|\||H\<cap\>K|\|>=8>). Hence,
  <math|N<rsub|G><around*|[|H\<cap\>K|]>> (which contains both
  <math|H<rsub|i>> and <math|K<rsub|i>>) should have order which is
  <math|\<gtr\>1> multiple of 16 and at the same time is divisor of 160. The
  only options are 32, 80 and 160. Now, if
  <math|<around*|\||N<rsub|G><around*|[|H\<cap\>K|]>|\|>=160>, we should have
  <math|N<rsub|G><around*|[|H\<cap\>K|]>=G>, hence
  <math|H\<cap\>K\<vartriangleleft\>G>. Next, when
  <math|<around*|\||N<rsub|G><around*|[|H\<cap\>K|]>|\|>=80>, we have
  <math|N<rsub|G><around*|[|H\<cap\>K|]>> being the subgroup of index 2 in
  <math|G>, hence it should be normal. Finally, we assume
  <math|<around*|\||N<rsub|G><around*|[|H\<cap\>K|]>|\|>=32>. In this case
  <math|N\<assign\>N<rsub|G><around*|[|H\<cap\>K|]>> is 2-Sylow subgroup of
  <math|G>. Moreover, <math|H\<cap\>N\<supset\>H<rsub|i>>, while
  <math|H\<cap\>N\<neq\>H>, since <math|N\<supset\>K<rsub|i>> and
  <math|H\<nsupset\>K<rsub|i>>. Hence, <math|<around*|\||H\<cap\>N|\|>=16>,
  thus we have two 2-Sylow subgroups having intersection of size 16. The
  logic of the previous exercise then applies.

  <\exercise>
    exercise 7
  </exercise>

  Example 37.12 shows that an arbitrary <math|G> of order 15 has a normal
  subgroup of size either 3 or 5. In case of former, we take the normal
  subgroup <math|N> of size 3 and arbitrary 5-Sylow <math|H>. We see that
  <math|N H\<assign\><around*|{|n h<mid|\|>n\<in\>N,h\<in\>H|}>> has size 15
  (by lemma 37.8) and is a subgroup (indeed,
  <math|n<rsub|1>h<rsub|1>n<rsub|2>h<rsub|2>=n<rsub|1>h<rsub|1>n<rsub|2>h<rsub|1><rsup|-1><around*|(|h<rsub|1>h<rsub|2>|)>=n<rsub|1>n<rsub|2><rprime|'>h<rsub|1>h<rsub|2>\<in\>N
  H>). This gives the desired subgroup.

  <\exercise>
    exercise 8
  </exercise>

  <\enumerate-alpha>
    <item>Indeed, suppose <math|x\<nin\><around*|{|\<tau\>a<rsub|1>,\<tau\>a<rsub|2>,\<ldots\>,\<tau\>a<rsub|m>|}>>
    and let's see how <math|\<tau\>\<sigma\>\<tau\><rsup|-1>> acts on it. We
    have <math|\<tau\><rsup|-1>x\<nin\><around*|{|a<rsub|1>,a<rsub|2>,\<ldots\>,a<rsub|m>|}>>,
    thus <math|\<sigma\>\<tau\><rsup|-1>x=\<tau\><rsup|-1>x> and therefore
    <math|\<tau\>\<sigma\><rsup|-1>\<tau\>> fixes <math|x>. Conversely,
    suppose that <math|x=\<tau\>a<rsub|i>>. Then,
    <math|\<tau\>\<sigma\>\<tau\><rsup|-1>x=\<tau\>\<sigma\>a<rsub|i>=\<tau\>a<rsub|i+1>>.
    Hence, the claim follows.

    <item>Indeed, suppose <math|\<sigma\>=<around*|(|a<rsub|1>,\<ldots\>,a<rsub|m>|)>>
    and <math|\<sigma\><rprime|'>=<around*|(|b<rsub|1>,\<ldots\>,b<rsub|m>|)>>
    are the two cycles of the same length. Then, we can take the permutation
    <math|\<tau\>>, so that <math|\<tau\>a<rsub|i>=b<rsub|i>> and the
    previous claim implies that <math|\<tau\>\<sigma\>\<tau\><rsup|-1>=\<sigma\><rprime|'>>.

    <item>Similarly to the previous item, given two permutations
    <math|\<sigma\>=\<Pi\><rsub|i>\<sigma\><rsub|i>> and
    <math|\<sigma\><rprime|'>=\<Pi\><rsub|i>\<sigma\><rsub|i><rprime|'>>,
    where <math|\<sigma\><rsub|i>=<around*|(|a<rsub|i><rsup|<around*|(|1|)>>,a<rsub|i><rsup|<around*|(|2|)>>,\<ldots\>,a<rsub|i><rsup|<around*|(|r<rsub|i>|)>>|)>>
    and <math|\<sigma\><rprime|'><rsub|i>=<around*|(|b<rsub|i><rsup|<around*|(|1|)>>,\<ldots\>,b<rsub|i><rsup|<around*|(|r<rsub|i>|)>>|)>>
    are both cycles of length <math|r<rsub|i>>, we can take permutation
    <math|\<tau\>>, so that <math|\<tau\>a<rsub|i><rsup|<around*|(|j|)>>=b<rsub|i><rsup|<around*|(|j|)>>>
    and the item a) then ends the proof.

    <item>As it is known, every permutation of <math|n> elements can be
    uniquely (up to the order) decomposed into the product of disjoint
    cycles. Taking the length of these cycles, we get the mapping from the
    permutation space to the space of partitions of <math|n>. Now, this map
    factors through the conjugation equivalence relation, for conjugation
    does not change the length of the cycle by the item a). Hence, we have a
    map from equivalence classes to the partitions. The latter map is
    injective, for the previous item implies that if two permutations consist
    of cycles of the same lengths (that is, they are mapped to the same
    partition), then they are conjugate. Finally, this map is onto, as given
    the partition <math|n=\<Sigma\><rsub|i=1><rsup|m>r<rsub|i>> of <math|n>
    we can easily produce product of cycles corresponding to it (take
    <math|\<sigma\>:=\<Pi\><rsub|i>\<sigma\><rsub|i>>, where
    <math|\<sigma\><rsub|i>:=<around*|(|n<rsub|i>,\<ldots\>,n<rsub|i>+r<rsub|i>-1|)>>
    with <math|n<rsub|i>:=<big|sum><rsub|j=1><rsup|i-1>r<rsub|j>>). This
    establishes the bijection between partitions of <math|n> and conjugation
    equivalence classes. This implies the required claim.

    <item>Trivially, <math|p<around*|(|1|)>=1>. As we have\ 

    <\eqnarray>
      <tformat|<table|<row|<cell|>|<cell|2=2=1+1>|<cell|>>|<row|<cell|>|<cell|3=3=1+2=1+1+1>|<cell|>>|<row|<cell|>|<cell|4=4=1+3=2+1+1=1+1+1+1>|<cell|>>|<row|<cell|>|<cell|5=5>|<cell|>>|<row|<cell|>|<cell|6=6>|<cell|>>|<row|<cell|>|<cell|7=>|<cell|>>>>
    </eqnarray>
  </enumerate-alpha>

  Exercise 37: 4, 5, 6, 7, 8

  <section|section 48>

  Exercise 48: 9, 10, 11, 12, 13, 14`
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
    <associate|auto-2|<tuple|2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|section
      37> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>