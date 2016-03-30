<TeXmacs|1.0.7.18>

<style|article>

<\body>
  <\show-part|2>
    <section|report 38>

    <block|<tformat|<twith|table-halign|l>|<cwith|1|1|1|-1|cell-width|7.5cm>|<cwith|1|1|1|-1|cell-hmode|exact>|<twith|table-valign|b>|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|-1|1|1|cell-width|>|<cwith|1|-1|1|1|cell-hmode|auto>|<cwith|1|-1|1|1|cell-hyphen|t>|<table|<row|<\cell>
      <with|font-series|bold|What had to be done>
    </cell>|<cell|<with|font-series|bold|What has been done>>>|<row|<\cell>
      Determine functional equations and residue formulae for SBOs;
    </cell>|<cell|<with|font-series|bold|not done> (see below for
    discussion)>>|<row|<\cell>
      Check <math|U<around*|(|p+1,q+1|)>\<supset\>U<around*|(|p,q+1|)>>
      settings
    </cell>|<cell|<with|font-series|bold|not done>>>>>>

    \;

    <with|font-series|bold|What has been done (additional)>

    <\enumerate>
      <item>
    </enumerate>

    <with|font-series|bold|What I plan to do during this week>:

    <\enumerate>
      <item>Read the following books/articles:

      <\enumerate>
        <item>Volume 2 of Gelfand-Shilov

        <item>Grauert, Fritzsche ``Several Complex variables''

        <item>M. Atiyah ``Resolution of singularities and division of
        distributions''
      </enumerate>

      <item>Find the constant <math|c<rsub|\<lambda\>,\<nu\>>>, so that
      <math|A<rsub|\<lambda\>,\<nu\>>\<circ\>T<rsub|n-\<lambda\>,\<lambda\>>=c<rsub|\<lambda\>,\<nu\>>A<rsub|n-\<lambda\>,\<nu\>>>.
      This task can be divided into following:

      <\enumerate>
        <item>Show that <math|A<rsub|\<lambda\>,\<nu\>>\<circ\>T<rsub|n-\<lambda\>,\<lambda\>>=c<rsub|\<lambda\>,\<nu\>>A<rsub|n-\<lambda\>,\<nu\>>>
        holds for <math|<around*|(|\<lambda\>,\<nu\>|)>> ``sufficiently
        regular'' (<with|font-series|bold|done>);

        <item>Explain what convolution of two kernels means, at least for
        ``sufficiently regular'' parameters (perhaps, it cannot be defined
        for general distributions, but we can use special properties of
        kernels (e.g. homogeneity) to make sense of it);

        <item>Explain why composition <math|A<rsub|\<lambda\>,\<nu\>>\<circ\>T<rsub|n-\<lambda\>,\<lambda\>>>
        results in convolution of kernels;

        <item>Prove that Fourier transforms of kernels of
        <math|A<rsub|\<lambda\>,\<nu\>>> and
        <math|T<rsub|n-\<lambda\>,\<lambda\>>> can be multiplied and that
        Fourier transform of convolution of kernels equals to product of
        Fourier transforms;

        <item>Carry out the computations of <math|c<rsub|\<lambda\>,\<nu\>>>
        when restricted to <math|Q\<gtr\>0> open subset (as Fourier
        transforms of <math|A<rsub|\<lambda\>,\<nu\>>> and
        <math|T<rsub|n-\<lambda\>,\<lambda\>>> take simpler form there);

        <item>Using holomorphicity (meromorphicity?) argument, conclude that
        <math|A<rsub|\<lambda\>,\<nu\>>\<circ\>T<rsub|n-\<lambda\>,\<lambda\>>=c<rsub|\<lambda\>,\<nu\>>A<rsub|n-\<lambda\>,\<nu\>>>
        holds for all <math|<around*|(|\<lambda\>,\<nu\>|)>\<in\>\<bbb-C\><rsup|2>>.
      </enumerate>

      <item>Check <math|U<around*|(|p+1,q+1|)>\<supset\>U<around*|(|p,q+1|)>>
      settings for whether:

      <\enumerate>
        <item><math|P<rsub|><rprime|'>N<rsub|-> P=G> holds;

        <item>coset structure under the pullback;

        <item>whether homogeneity is in place;

        <item>cosets intersect transversally (cf. wavefronts) afar from
        origin.
      </enumerate>
    </enumerate>

    <with|font-series|bold|What I plan to do later>

    <\enumerate>
      <item>Determine functional equations and residue formulae for SBOs
    </enumerate>

    <\with|font-series|bold>
      Questions
    </with>

    <\enumerate>
      <item>Suppose we have homogeneous polynomial <math|g> in <math|p+q>
      variables <math|<around*|{|x<rsub|i>|}><rsub|i=1><rsup|p>> and
      <math|<around*|{|y<rsub|j>|}><rsub|j=1><rsup|q>>. Suppose it is
      invariant under <math|O<around*|(|p-1,q|)>> (acting on
      <math|\<bbb-R\><rsup|p,q>>, so that it fixes <math|x<rsub|p>>). Then it
      can be shown that <math|g> is in fact polynomial in <math|x<rsub|p>>
      and <math|<wide|Q|~>\<assign\><big|sum><rsub|i=1><rsup|p-1>x<rsub|i><rsup|2>-<big|sum><rsub|j=1><rsup|>y<rsub|j><rsup|2>>.
      How to prove this?
    </enumerate>

    <paragraph|Comments>
  <|show-part>
    <section|report 33>
  </show-part>

  <\hide-part|3>
    <section|generic report>

    \;

    <block|<tformat|<twith|table-halign|l>|<cwith|2|2|1|-1|cell-hyphen|c>|<cwith|2|2|1|1|cell-width|5cm>|<cwith|2|2|1|1|cell-hmode|min>|<twith|table-width|7.5cm>|<twith|table-hmode|exact>|<cwith|1|1|1|-1|cell-width|7.5cm>|<cwith|1|1|1|-1|cell-hmode|exact>|<cwith|1|1|1|1|cell-hyphen|t>|<twith|table-valign|b>|<cwith|2|2|2|2|cell-valign|t>|<table|<row|<\cell>
      <with|font-series|bold|What had to be done>
    </cell>|<cell|<with|font-series|bold|What has been done>>>|<row|<\cell>
      5. hierarchy of 1 and the two <math|>operators in 2 by residue formulae
      under some mild assumption of the parameter
    </cell>|<\cell>
      <with|font-series|bold|not done>
    </cell>>>>>

    \;

    <with|font-series|bold|What has been done (additional)>

    <\enumerate>
      <item>extended <math|<around*|\||Q|\|><rsup|-\<nu\>><around*|\||x<rsub|p>|\|><rsup|\<lambda\>+\<nu\>-n>>
      to <math|Re<around*|(|\<lambda\>-\<nu\>|)>\<gtr\>0>

      <item>proved hypothesis for <math|q\<in\>2\<bbb-Z\>>
    </enumerate>

    <with|font-series|bold|What I plan to do>:

    <\enumerate>
      <item><with|font-series|bold|put normalization of
      <math|K<rsub|\<lambda\>,\<nu\>><rsup|P>> in presentation, merge cases>
      <verbatim|(wednesday)>

      <item>master structure and writing plan <verbatim|(friday)>

      <item><with|font-series|bold|<with|font-shape|italic|Try to use
      recurrence relations, for crude normalization>>

      <\enumerate>
        <item><with|font-series|bold|<with|font-shape|italic|functional
        equation form>>

        <item>compute the 1 constant (cf Orsted, hypothesis) -\<gtr\> precise
        fctl eqn

        <item>final extension <verbatim|_(weekend)>

        <item>prove hypoNonzero

        <item>prove hypoA for <math|q\<in\>2\<bbb-Z\>+1>

        <\enumerate>
          <item><math|q=1> formula show to K
        </enumerate>
      </enumerate>

      <item>Related to <math|<wide|K|~><rsub|\<lambda\>,\<nu\>><rsup|C>:>

      <\enumerate>
        <item>{redo the proof with <math|\<frak-P\>> to simplify and verify
        it}

        <item><with|font-series|bold|<with|font-shape|italic|See how support
        changes for different <math|\<lambda\>>>>

        <item>Dimensional argument to explicitly determine
        <math|\<cal-S\>ol<rsub|C><around*|(|\<bbb-R\><rsup|p,q>|)>>.

        <item>Dimensional argument to explicitly determine
        <math|Sol<rsub|C\<cup\>P><around*|(|\<bbb-R\><rsup|p,q>|)>>
      </enumerate>

      <item><with|font-shape|italic|Answer question 5 above> (and confirm
      normalization of regular for <math|q=2>)

      <item>Ideas for regular normalization:

      <\enumerate>
        <item><with|font-series|bold|do <math|q=4>><with|font-series|bold|!!!>
      </enumerate>

      <item>_ideas for reg norm:

      <\enumerate>
        <item><with|font-series|bold|prove holomorphicity in
        <verbatim|KR-normalization>>

        <item>why do we have inconsistincies for
        <math|K<rsub|\<lambda\>,\<nu\>><rsup|C>> and
        <math|K<rsup|\<bbb-R\><rsup|n>><rsub|\<lambda\>,\<nu\>>>?

        <item>residue formula
      </enumerate>
    </enumerate>

    <\with|font-series|bold>
      Questions I'd like to get help with
    </with>

    <\enumerate>
      <item>incorrect thm in K-Speh

      <item><with|font-shape|italic|why did we do the recurrence relations
      business in K-Speh>?

      <item>pairing bullshit

      <item>Prop 3.2 why <math|T f\<in\>C<rsup|\<infty\>>> (perhaps if
      <math|f\<in\>\<cal-D\><rprime|'><around*|(|G/P,\<cal-L\><rsub|\<lambda\>>|)>>
      and <math|G>-invariant, then <math|f\<in\>C<rsup|\<infty\>>> cf.
      <cite-detail|hormander1983analysis|cor. 3.1.6>)

      <item>operator in K-Orsted I -- it's not holo, is it?

      <item><math|O<around*|(|1,q|)>\<supset\>O<around*|(|0,q|)>> case
    </enumerate>

    <\with|font-series|bold>
      Questions for myself
    </with>

    <\enumerate>
      <item>tesi me hard
    </enumerate>

    <with|font-series|bold|Comments>

    (empty)

    <surround|<assign|sone|<macro|<math|<mybra|<D><rprime|'><around|(|G\<times\><rsub|P><C><rsub|\<lambda\>-n>|)>\<otimes\><C><rsub|\<nu\>>><rsup|\<Delta\><around|(|P<rprime|'>|)>>>>><assign|Upp|<macro|<mysetn|(x,y)\<in\><R><rsup|p,q>|x\<neq\>0,<space|0.75spc>y\<neq\>0>>><assign|Stab|<macro|O(p,q)<rsub|e<rsub|p>>>><assign|sol*|<macro|1|<with|math-font|cal|S>ol(<arg|1>;\<lambda\>,\<nu\>)>><assign|sol|<macro|<sol*|<R><rsup|p,q>>>><assign|solXi|<macro|<sol*|\<Xi\>>>>||>

    <section|misc>

    <subsection|Comments>

    While doing this computation I've realized that conceptually it is not
    difficult indeed. Moreover, I believe these could be done faster if one
    would proceed in the following fashion:

    <\enumerate>
      <item>Choose normalizations <math|<wide|Q|~><rsub|\<pm\>><rsup|\<nu\>>\<assign\>Q<rsub|\<pm\>><rsup|\<nu\>>/\<Gamma\><around*|(|\<nu\>+1|)>/\<Gamma\><around*|(|\<nu\>+<frac|n|2>|)>>
      and show that these are holomorphic -- this is trivial to do, as
      recurrence relation becomes <math|L
      <wide|Q|~><rsub|\<pm\>><rsup|\<nu\>+1>=\<pm\>4<wide|Q|~><rsub|\<pm\>><rsup|\<nu\>>>.

      <item>See that these never vanish for <math|n\<in\>2\<bbb-Z\>+1> --
      hence <math|Q<rsub|\<pm\>><rsup|\<nu\>>> have only at most simple poles
      at points <math|-\<bbb-Z\><rsub|\<geqslant\>1>\<sqcup\><around*|(|-<frac|n|2>-\<bbb-Z\><rsub|\<geqslant\>0>|)>>.
      Moreover, residues can be computed explicitly via recurrence equations.

      <item>See that these never vanish for <math|p,q\<in\>2\<bbb-Z\>+1>.
      Hence, <math|Q<rsub|\<pm\>><rsup|\<nu\>>> has at most single poles for
      <math|-1,-2,\<ldots\>,-<frac|n|2>+1> and at most double poles for
      <math|\<nu\>=-<frac|n|2>,-<frac|n|2>-1,\<ldots\>> moreover residues can
      be computed for at most simple poles and for at most double poles we
      can compute leading term in Laurent series. Moreover, for at most
      double poles we can also compute residues by inspecting term
      corresponding to <math|\<nu\><rsup|1>> in Taylor expansion of
      <math|<wide|Q|~><rsub|\<pm\>><rsup|\<nu\>>> at <math|\<nu\>=-n/2+1>
      (which in turn is proportional to <math|\<nu\><rsup|0>> term of Laurent
      expansion of <math|Q<rsub|\<pm\><rsup|>><rsup|\<nu\>>> around the same
      point) and computing <math|L>'s of it.

      <item>Note that <math|<wide|Q|~><rsub|\<pm\>><rsup|\<nu\>>> is nonzero
      for <math|-1,-2,\<ldots\>,-<frac|n|2>+1>, but vanishes poles for
      <math|\<nu\>=-<frac|n|2>,-<frac|n|2>-1,\<ldots\>>, hence
      <math|Q<rsub|\<pm\>><rsup|\<nu\>>> has simple poles at both groups of
      points. Then residues at first group can be computed as before, while
      residues at the second can be computed by taking <math|L>'s of term
      corresponding to <math|\<nu\><rsup|1>> in Taylor expansion of
      <math|<wide|Q|~><rsub|\<pm\>><rsup|\<nu\>>> at <math|\<nu\>=-n/2+1>
      (which in turn is proportional to <math|\<nu\><rsup|0>> term of Laurent
      expansion of <math|Q<rsub|\<pm\><rsup|>><rsup|\<nu\>>> around the same
      point).

      <item>Use results of three previous steps to get data about
      <math|<around*|\||Q|\|><rsup|\<nu\>>> and
      <math|<around*|\||Q|\|><rsup|\<nu\>>sgn<around*|(|Q|)>>.
    </enumerate>

    Moreover, I should note that despite my initial feeling this method is
    ``robust''. That is, normalization in first step is quite ``natural'' one
    to guess. Despite it's not being the best possible, it can be later
    adjusted in course of steps 2-4.
  <|hide-part>
    <section|generic report>
  </hide-part>
</body>

<\initial>
  <\collection>
    <associate|language|american>
    <associate|page-type|letter>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto.2-1|<tuple|1|?|#2>>
    <associate|auto.2-2|<tuple|1|?|#2>>
    <associate|auto.3-1|<tuple|2|?|#3>>
    <associate|auto.3-2|<tuple|3|?|#3>>
    <associate|auto.3-3|<tuple|3.1|?|#3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      hormander1983analysis
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>report
      33> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto.2-1><vspace|0.5fn>

      <with|par-left|<quote|6fn>|Comments
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto.2-2><vspace|0.15fn>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>generic
      report> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto.3-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>misc>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto.3-2><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|3.1<space|2spc>Comments
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto.3-3>>
    </associate>
  </collection>
</auxiliary>