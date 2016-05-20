<TeXmacs|1.0.7.18>

<style|generic>

<\body>
  <\exercise*>
    28-1. Determine all irreducible elements of
    <math|\<bbb-Z\><around*|[|i|]>>\ 
  </exercise*>

  We recall that for <math|a+b i\<in\>\<bbb-Z\><around*|[|i|]>> the norm
  <math|N<around*|(|a+b i|)>\<assign\>a<rsup|2>+b<rsup|2>\<in\>\<bbb-Z\><rsub|\<geqslant\>0>>
  is multiplicative. We say <math|a,b\<in\>\<bbb-Z\><around*|[|i|]>> are
  associated if <math|a=\<pm\>b> or <math|a=\<pm\>i b>.

  We first claim that odd positive prime number <math|p> is irreducible in
  <math|\<bbb-Z\><around*|[|i|]>> iff <math|p\<equiv\>3 mod 4>. Indeed, if
  <math|p=<around*|(|a+b i|)><around*|(|c+d i|)>> is reducible, then
  <math|p<rsup|2>=N<around*|(|p|)>=N<around*|(|a+b i|)>N<around*|(|c+d i|)>>
  and thus reducibility assumption implies that <math|N<around*|(|a+b
  i|)>=a<rsup|2>+b<rsup|2>=p> and as <math|p> was assumed to be odd, <math|a>
  and <math|b> should be of different parity, hence <math|p\<equiv\>1 mod 4>.
  Conversely, assume that <math|p\<equiv\>1 mod 4>. Let <math|p=4k+1> and
  <math|a\<assign\><around*|(|2k|)>!>. We now have the following chain of
  congruences modulo <math|p>

  <\equation*>
    a<rsup|2>+1=a\<times\>a+1\<equiv\>1\<cdot\>2\<cdot\>\<ldots\>\<cdot\>2k\<times\><around*|(|2k+1|)>\<cdot\>\<ldots\>\<cdot\>4k+1\<equiv\>
  </equation*>

  Now, note that under multiplication <math|\<bbb-Z\><rsub|p><rsup|\<times\>>=<around*|{|1,2,\<ldots\>,4k|}>>
  is a cyclic group of <math|4k> elements and it has only two solutions for
  equation <math|x<rsup|2>=1>, which 1 and <math|4k>. Now,
  <math|\<bbb-Z\><rsub|p><rsup|\<times\>>> is isomorphic to
  <math|\<bbb-Z\>/4k\<bbb-Z\>> under addition and (as equation
  <math|x\<cdot\>x=1> is indepedent of isomorphism class) <math|1> and
  <math|4k> are mapped to <math|4k\<bbb-Z\>> and <math|2k+4k\<bbb-Z\>>
  respectively and the latter group has sum of its elements equal to
  <math|2k+4k\<bbb-Z\>>, hence pulling this back to
  <math|\<bbb-Z\><rsub|p><rsup|\<times\>>> we have that latter has product of
  its elements equal to <math|4k> and therefore the chain of congruences
  above continues as

  <\equation*>
    \<equiv\>4k+1\<equiv\>0 mod p,
  </equation*>

  hence <math|a<rsup|2>+1=<around*|(|a+i|)><around*|(|a-i|)>> is divisible
  <math|p> and thus if latter would be irreducible, it would have to divide
  <math|a+i> or <math|a-i>, which is clearly a contradiction and hence
  <math|p> is reducible. This proves the claim.

  Accidentally, we observe the following: let <math|p\<equiv\>1 mod 4> be
  positive prime and <math|\<xi\>> its irreducible divisor, not associated to
  1. Then, <math|N<around*|(|\<xi\>|)><mid|\|>N<around*|(|p|)>=p<rsup|2>> and
  hence <math|N<around*|(|\<xi\>|)>=N<around*|(|x+i
  y|)>=x<rsup|2>+y<rsup|2>=p> and therefore <math|p=<around*|(|x+i
  y|)><around*|(|x-i y|)>> and the both multiples are irreducible.

  We now end the proof with proving the following: the only irreducible
  elements of <math|\<bbb-Z\><around*|[|i|]>> are positive prime
  <math|p\<equiv\>3 mod 4>, <math|x\<pm\>i y> such that
  <math|x<rsup|2>+y<rsup|2>> is odd prime <math|\<equiv\>1 mod 4> and
  <math|1\<pm\>i> together with their associates.

  It is clear that these numbers are irreducibles by the arguments above. In
  particular, <math|1\<pm\>i> are irreducibles, as if
  <math|\<xi\><mid|\|>1\<pm\>i>, then <math|N<around*|(|\<xi\>|)><mid|\|>N<around*|(|1\<pm\>i|)>=2>
  and hence <math|N<around*|(|\<xi\>|)>=1> or 2 and in any case we see that
  <math|1\<pm\>i> are irreducibles. Conversely, let <math|\<xi\>> be
  irreducible and <math|N<around*|(|\<xi\>|)>=\<xi\>\<cdot\><wide|\<xi\>|\<bar\>>=p<rsub|1>p<rsub|2>\<ldots\>p<rsub|k>>
  be the decomposition of its norm in prime factors. Now, as <math|\<xi\>> is
  irreducible, it should divide one of <math|p<rsub|i>=:p>. Now, if
  <math|p=2>, we should have <math|\<xi\>=1\<pm\>i>. If <math|p> is odd, then
  by claim above (as <math|\<xi\><mid|\|>p>) it should be that
  <math|p\<equiv\>1 mod 4> and hence <math|\<xi\>=x+i y> with
  <math|x<rsup|2>+y<rsup|2>=p> and this ends the proof.

  <\exercise*>
    17-1
  </exercise*>

  This is theorem 35.16 in textbook

  <\exercise*>
    17-2
  </exercise*>

  Suppose we do have a composition series
  <math|<around*|{|0|}>=H<rsub|0>\<less\>H<rsub|1>\<less\>
  \<ldots\>\<less\>H<rsub|n-1>\<less\>H<rsub|n>=\<bbb-R\>>. We now note that
  as <math|<around*|{|0|}>> is finite and <math|\<bbb-R\>> is not, there
  should be some <math|i>, where <math|H<rsub|i>> is finite,
  <math|H<rsub|i+1>> is not and <math|H<rsub|i>\<vartriangleleft\>H<rsub|i+1>>.
  We then have that <math|G\<assign\>H<rsub|i+1>/H<rsub|i>> is simple
  infinite abelian. However, the latter is a contradiction, as one can take
  an arbitrary <math|G\<ni\>x\<neq\>1>, and consider the subgroup generated
  by it <math|H\<assign\><around*|{|x<rsup|k>|}><rsub|k\<in\>\<bbb-Z\>>>. We
  can either have <math|H=G\<simeq\>\<bbb-Z\>> and it cannot be simple, or
  <math|H> is a proper normal subgroup of <math|G>, thus also contradicting
  the simplicity.

  <\exercise*>
    18-1
  </exercise*>

  This is done in example 37.14. The number of <math|3>-Sylow subgroups
  (which are of size 9) by third Sylow theorem can be either 4 or 1. And as
  in the latter case we are done, we assume the former and let
  <math|H,K\<subset\>G> be two 3-Sylow subgroups. Now, as <math|#<around*|(|H
  K|)>=#H\<times\>#K/#<around*|(|H\<cap\>K|)>>, and <math|#<around*|(|H
  K|)>\<leqslant\>#G=36>. Thus, <math|H\<cap\>K\<vartriangleleft\>H,K> and
  hence <math|N<around*|(|H\<cap\>K|)>\<supset\>K,H>, hence
  <math|N<around*|(|H\<cap\>K|)>> is multiple <math|\<gtr\>1> of <math|9> and
  should divide 36 at the same time. The only option is 18, hence
  <math|N\<assign\>N<around*|(|H\<cap\>K|)>> is of index 2 in <math|G>, hence
  is normal. This shows that <math|G> is not simple.

  <\exercise*>
    18-2
  </exercise*>

  This is theorem 37.4 of textbook.\ 

  <\exercise*>
    18-3
  </exercise*>

  This is theorem 37.6 of textbook.

  <\exercise*>
    18-4
  </exercise*>

  Let <math|H> be subgroup of <math|G> and let's assume that it is proper
  (otherwise, we are done). We then have by lemma 36.6 of textbook that
  <math|<around*|(|N<around*|(|H|)>:H|)>=<around*|(|G:H|)> mod p> and hence
  <math|p\<mid\><around*|(|N<around*|(|H|)>:H|)>>, thus
  <math|<around*|(|N<around*|(|H|)>:H|)>\<gtr\>1> and this implies the claim.

  <\exercise*>
    18-5
  </exercise*>

  This follows from exercise 18-2, as it implies that
  <math|Z<around*|(|G|)>\<subset\>G> is non-trivial subgroup, and it is
  normal by definition.

  <\exercise*>
    18-6
  </exercise*>

  This is theorem 37.1 of textbook.

  <\exercise*>
    19-1. Prove that every group of order 21 is cyclic
  </exercise*>

  We claim that this is not true and construct a counter-example below.

  We note that for the additive group <math|<around*|(|\<bbb-Z\>/7\<bbb-Z\>,+|)>>,
  its group of automorphisms <math|Aut<around*|(|\<bbb-Z\>/7\<bbb-Z\>,+|)>>
  is isomorphic (via <math|Aut<around*|(|\<bbb-Z\>/7\<bbb-Z\>,+|)>\<ni\>\<varphi\>\<mapsto\>\<varphi\><around*|(|1+7\<bbb-Z\>|)>\<in\><around*|(|<around*|(|\<bbb-Z\>/7\<bbb-Z\>|)><rsup|\<times\>>,\<times\>|)>>)
  to <math|<around*|(|<around*|(|\<bbb-Z\>/7\<bbb-Z\>|)><rsup|\<times\>>,\<times\>|)>>:
  multiplicative group of the <with|font-shape|italic|field>
  <math|\<bbb-Z\>/7\<bbb-Z\>> with multiplication. The latter, however, is
  known to be cyclic group of 6 elements, isomorphic to
  <math|<around*|(|\<bbb-Z\>/6\<bbb-Z\>,+|)>>. We note that it is easy to
  verify that the generator of <math|<around*|(|<around*|(|\<bbb-Z\>/7\<bbb-Z\>|)><rsup|\<times\>>,\<times\>|)>>
  is <math|5+7\<bbb-Z\>>.

  Therefore, we see that we can construct a non-trivial homomorphism
  <math|\<tau\>:<around*|(|\<bbb-Z\>/3\<bbb-Z\>,+|)>\<mapsto\>Aut<around*|(|\<bbb-Z\>/7\<bbb-Z\>,+|)>\<simeq\><around*|(|\<bbb-Z\>/6\<bbb-Z\>,+|)>>,
  which can be given be <math|\<tau\><around*|(|1+3\<bbb-Z\>,<around*|(|1+7\<bbb-Z\>|)>|)>=<around*|(|5+7\<bbb-Z\>|)><rsup|2>=4+7\<bbb-Z\>>
  and then extended by group structure. This allows us to consider the
  semidirect product <math|<around*|(|\<bbb-Z\>/7\<bbb-Z\>,+|)>\<rtimes\><rsub|\<tau\>><around*|(|\<bbb-Z\>/3\<bbb-Z\>,+|)>>.
  More, concretely, we define group structure on
  <math|<around*|(|\<bbb-Z\>/7\<bbb-Z\>,+|)>\<times\><around*|(|\<bbb-Z\>/3\<bbb-Z\>,+|)>>
  as follows:

  <\equation*>
    <around*|(|x+7\<bbb-Z\>,y+3\<bbb-Z\>|)>\<times\><around*|(|x<rprime|'>+7\<bbb-Z\>,y<rprime|'>+3\<bbb-Z\>|)>\<assign\><around*|(|x+\<tau\><around*|(|y,x<rprime|'>|)>+7\<bbb-Z\>,y
    +y<rprime|'>+3\<bbb-Z\>|)>
  </equation*>

  The resulting group is of order 21 and not cyclic, as
  <math|\<bbb-Z\>/3\<bbb-Z\>> (seen as its subgroup) acts on
  <math|\<bbb-Z\>/7\<bbb-Z\>> by adjoint action in a non-trivial way, hence
  their elements do not commute.

  <\exercise*>
    23-1. If <math|F\<leqslant\>E\<leqslant\>K> and <math|K> is separable
    over <math|F>, <math|E> is sep over <math|F> and <math|K> over <math|E>
  </exercise*>

  This is theorem 51.9 of textbook.

  <\exercise*>
    26-1. <math|<around*|[|E:F|]>=2\<Leftrightarrow\>E=F<around*|(|\<alpha\>|)>>
    for some <math|\<alpha\>\<nin\>F> with <math|\<alpha\><rsup|2>\<in\>F>
  </exercise*>

  The <math|\<Leftarrow\>> part is clear, as minimal polynomial of
  <math|\<alpha\>> over <math|F> cannot be linear (since
  <math|\<alpha\>\<nin\>F>), hence the only option is
  <math|x<rsup|2>-\<alpha\><rsup|2>\<in\>F<around*|[|x|]>>, and thus
  <math|<around*|[|E:F|]>=deg<around*|(|x<rsup|2>-\<alpha\><rsup|2>|)>=2>.
  Conversely, suppose that <math|<around*|[|E:F|]>=2> and let
  <math|<around*|{|1,\<alpha\>|}>> be a basis for <math|E> over <math|F>.
  Note that as <math|<around*|{|1,\<alpha\>|}>> are linearly independent over
  <math|F>, <math|\<alpha\>\<nin\>F>.

  \ We then should have <math|\<alpha\><rsup|2>=a+b\<cdot\>\<alpha\>> for
  <math|a,b\<in\>F> and we let <math|\<beta\>\<assign\>\<alpha\>-b/2\<nosymbol\>>.
  We then have that <math|\<beta\>\<nin\>F> and easy computations show that
  <math|\<beta\><rsup|2>=a+b<rsup|2>/4\<in\>F> and
  <math|<around*|{|1,\<beta\>|}>> still span <math|E> over <math|F>.
  Therefore, <math|E=F<around*|(|\<beta\>|)>>, <math|\<beta\>\<nin\>F> and
  <math|\<beta\><rsup|2>\<in\>F> as required.
</body>

<\initial>
  <\collection>
    <associate|language|american>
    <associate|page-type|letter>
  </collection>
</initial>