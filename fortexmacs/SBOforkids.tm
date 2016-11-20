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
    72=2<rsup|3>\<times\>3<rsup|2>.
  </equation*>

  The problem of computing prime decomposition for given number is important
  and difficult. So, insted one could consider \Pparametrized\Q version of
  this problem: for given number <math|x> (say, <math|x=>72) and given prime
  <math|p> (say, <math|p=>2) find the <with|font-series|bold|multiplicity> of
  <math|p> in <math|x> (3 in this case).

  It is apparent that multiplicity can be easily read off the prime
  decomposition. But remember, prime decomposition is difficult, so we want
  to compute <with|font-shape|italic|only> the multiplicity. It appears to be
  difficult to do without prime decomposition (yes, suppose you
  <with|font-shape|italic|do not> know the division).

  <section|The Story told in more difficult way>

  To proceed, we will do a strange thing: we will define multiplicity (and
  primality) in different way, which will allow us to formulate multiplicity
  independently of prime decomposition.

  Except of numbers <math|p> and <math|x> we will consider seemingly more
  difficult objects: the <with|font-shape|italic|x> of order <math|p> and
  <math|x>. Essentially, cyclic group of order <math|x> is just set
  <math|<around*|{|0,\<ldots\>,x-1|}>> equipped with addition modulo
  <math|x>. It is apparent that cyclic group is defined only by its size
  <math|x>, so we can denote it as <math|<around*|[|x|]>>. Given two groups
  <math|<around*|[|x|]>,<around*|[|y|]>> we will only consider maps
  <math|<around*|[|x|]>\<rightarrow\><around*|[|y|]>> that preserve addition.

  No, we reformulate the terms from previous section

  <\eqnarray>
    <tformat|<table|<row|<cell|>|<cell|<around*|[|x|]> is
    <with|font-series|bold|prime> if <around*|[|y|]>\<rightarrow\><around*|[|x|]>
    and injective implies y=1>|<cell|>>|<row|<cell|>|<cell|for
    <around*|[|x|]> and prime <around*|[|p|]>
    <with|font-series|bold|multiplicity> of <around*|[|p|]> in
    <around*|[|x|]> is number of injective maps
    <around*|[|p|]>\<rightarrow\><around*|[|x|]>>|<cell|>>>>
  </eqnarray>

  \;

  <section|The Morale>
</body>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|3|?>>
  </collection>
</references>