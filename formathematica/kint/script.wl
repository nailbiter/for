F[l_, m_, n_, tol_] := 
  Block[{left = 
     NIntegrate[
      Abs[s - t]^(2*n)*(1 - s^2)^(l - 1/2)*(1 - t^2)^(m - 1/2), {s, -1, 1}, {t, -1, 1}, PrecisionGoal -> tol], 
    right = N[(
      Pi^(1/2)*Gamma[l + 1/2]*Gamma[m + 1/2]*Gamma[n + 1/2]*
       Gamma[l + m + 2*n + 1])/(
      Gamma[l + n + 1]*Gamma[m + n + 1]*Gamma[l + m + n + 1]), tol]}, 
   Abs[(left - right)/10^-tol]];

  (*list := {};
step := 0.3;
Do[AppendTo[list, F[l, m, n, tol]], {l, 2, 3, step}, {m, 2, 3, 
   step}, {n, 2, 3, step}, {tol, 6, 8}];

Print[Max[list]]*)
Print /@ TeXForm[Table[RandomInteger[10], {3}, {4}]] //TeXForm

(* generate high-precision samples of a mixed distribution *)
Export["out.tex",Table[RandomInteger[10], {3}, {4}]];
Export["out.tex",\[Alpha]]
Print /@ RandomVariate[MixtureDistribution[
	 {1,2},
 {NormalDistribution[1,2/10],
	 NormalDistribution[3,1/10]}],
 10, WorkingPrecision -> 50]
Print[ExportString[\[Alpha],"TeX"]]
