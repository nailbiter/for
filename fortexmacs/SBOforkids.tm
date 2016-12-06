<TeXmacs|1.99.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Branching Problems and Symmetry Breaking Operators for
  Kids>>

  <section|The Story>

  We will talk about the positive numbers. There are numbers which are
  <with|font-series|bold|prime>, like <math|2,3,5,7,11> and those that are
  not, like <math|4,6,8,9> or, say 72. All of the numbers can be constructed
  from the prime ones by the means of <with|font-series|bold|prime
  decomposition>, say

  <\equation*>
    72=2<rsup|3>\<cdot\>3<rsup|2>.
  </equation*>

  The problem of computing prime decomposition for given number is important
  and difficult. So, insted one could consider \Pparametrized\Q version of
  this problem: for given number <math|x> (say, <math|x=>72) and given prime
  <math|p> (say, <math|p=>2) find whether <math|p> divides <math|x>.

  It is apparent that this can be easily read off the prime decomposition.
  But remember, prime decomposition is difficult, so we want to determine
  <with|font-shape|italic|only> this.

  <section|The (same) Story (told more difficult)>

  To proceed, we will do a strange thing: we will define divisibility by
  primes (and primality) in different way, which will allow us to formulate
  multiplicity independently of prime decomposition.

  Except of numbers <math|p> and <math|x> we will consider seemingly more
  difficult objects: the <with|font-shape|italic|x> of order <math|p> and
  <math|x>. Essentially, cyclic group of order <math|x> is just set
  <math|<around*|{|0,\<ldots\>,x-1|}>> equipped with addition modulo
  <math|x>. It is apparent that cyclic group is defined only by its size
  <math|x>, so we can denote it as <math|<around*|[|x|]>>. Given two groups
  <math|<around*|[|x|]>,<around*|[|y|]>> we will only consider maps
  <math|<around*|[|x|]>\<rightarrow\><around*|[|y|]>> that preserve addition.

  We will call these maps by a somewhat fancy name
  <with|font-series|bold|Simple Symmetry Breaking Operators>, here \Psymmetry
  breaking\Q referring to the fact that they shift modulo addition by
  <math|x> (see it as some kind of \Psymmetry\Q) to that by <math|y>, they
  somehow \Pbreak\Q this \Psymmetry\Q.

  No, we reformulate the terms from previous section

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<around*|[|x|]> is
    <with|font-series|bold|prime> if <around*|[|y|]>\<rightarrow\><around*|[|x|]>
    and injective implies y=1>|<cell|>>>>
  </eqnarray>

  Now, here comes reason we went into all these complications:

  <\proposition*>
    Let <math|<around*|[|x|]>>: group and <math|<around*|[|p|]>>: prime. We
    then have

    <\equation*>
      p divides x\<Leftrightarrow\>#<around*|{|<around*|[|p|]>\<rightarrow\><around*|[|x|]>|}>\<gtr\>1\<Leftrightarrow\>\<exists\>injective
      <around*|[|p|]>\<rightarrow\><around*|[|x|]>
    </equation*>
  </proposition*>

  So we can actually <with|font-series|bold|use> number of maps
  <math|<around*|[|p|]>\<rightarrow\><around*|[|x|]>> to understand whether
  or not <math|p> divides <math|x> and this procedure has nothing to do with
  computing prime decomposition of <math|<around*|[|x|]>> (which, in fact, is
  much more difficult).

  <section|The Morale>

  The representations are a lot like numbers, just much more difficult. For
  every fixed group we can talk of:

  <center|<block*|<tformat|<table|<row|<cell|Concept in Representation
  Theory>|<cell|...think of this as>>|<row|<cell|irreducible representations,
  or irreps>|<cell|prime numbers>>|<row|<cell|representations>|<cell|numbers>>|<row|<cell|branching
  laws>|<cell|prime decomposition>>|<row|<cell|Symmetry Breaking
  Operators>|<cell|Simple Symmetry Breaking Operators (see above)>>>>>>

  As above, in general computing branching laws is difficult. If the group
  <math|G> is compact, the situation is somehow well-known: more precisely,
  it is shown that all (reasonable) irreps of <math|G> have to be
  finitely-dimensional, and we can handle the branching problems pretty well.

  However, when <math|G> is not compact, interesting infinitely dimensional
  irreps occur, and trying (naturally) to study branching of these, one finds
  himself surronded by many difficulties. Trying to simplify the setting we
  might try to ask whether given irreducible representation \Poccurs\Q in a
  given representation (as above we asked whether given prime <math|p>
  \Poccurs\Q in a given number <math|x>). And as above, the amount of
  symmetry breaking operators allows us to measure \Phow much\Q does it
  really occur.<strong|>
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|3|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>The
      Story> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>The
      (same) Story (told more difficult)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>The
      Morale> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>