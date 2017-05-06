paramRange:={2,3}
iterCount:=1000;
tolList:={6,7,8};

integrand:=Abs[s - t]^(2*\[Nu])*(1 - s^2)^(\[Lambda] - 1/2)*(1 - t^2)^(\[Mu] - 1/2);
expr:=Pi^(1/2)*Gamma[\[Lambda] + 1/2]*Gamma[\[Mu]+1/2]*Gamma[\[Nu] + 1/2]*Gamma[\[Lambda] + \[Mu] + 2*\[Nu] + 1]/(Gamma[\[Lambda] + \[Nu]+1]*Gamma[\[Mu]+\[Nu]+1]*Gamma[\[Lambda] + \[Mu] + \[Nu] + 1]);

(*F[l_, m_, n_, tol_] := 
  Block[{left = 
     NIntegrate[
      Abs[s - t]^(2*n)*(1 - s^2)^(l - 1/2)*(1 - t^2)^(m - 1/2), {s, -1, 1}, {t, -1, 1}, PrecisionGoal -> tol], 
    right = N[(
      Pi^(1/2)*Gamma[l + 1/2]*Gamma[m + 1/2]*Gamma[n + 1/2]*
       Gamma[l + m + 2*n + 1])/(
      Gamma[l + n + 1]*Gamma[m + n + 1]*Gamma[l + m + n + 1]), tol]}, 
   Abs[(left - right)/10^-tol]];*)


list := {}
  (*
Do[AppendTo[list, F[l, m, n, tol]], {l, 2, 3, step}, {m, 2, 3, 
   step}, {n, 2, 3, step}, {tol, 6, 8}];
*)

Do[Do[Block[{\[Lambda]=RandomReal[paramRange],\[Nu]=RandomReal[paramRange],\[Mu]=RandomReal[paramRange]},
Block[{LHS=NIntegrate[integrand,{s,-1,1},{t,-1,1},PrecisionGoal->tol],RHS=N[expr,tol]},AppendTo[list,(LHS-RHS)/(10^(-tol))]]]
,{tol,tolList}],
		{i,1,iterCount}]

Print[ExportString[Max[list],"TeX"]] (*0*)
Print[ExportString[With[{integrand=integrand},Defer[Integrate[integrand,{s,-1,1},{t,-1,1}]]],"TeX"]] (*1*)
Print[ExportString[expr,"TeX"]] (*2*)
Print[ExportString[StringJoin["(",ToString[paramRange[[1]]],", ",ToString[paramRange[[2]]],")"],"TeX"]] (*3*)
Print[ExportString[iterCount,"TeX"]] (*4*)
Print[ExportString[tolList,"TeX"]] (*5*)
