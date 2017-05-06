RealParamRange:={1.5,1.5}
IntParamRange:={0,10}
ZParamRange:={0,1}
iterCount:=5;
tolList:={6,7,8}

u:=(2^(2 \[Lambda] - 1)*l!*Gamma[\[Lambda]])/
    Gamma[2*\[Lambda] + l]*
    (1 - s^2)^(\[Lambda] - 1/2)*GegenbauerC[l, \[Lambda], s];
integrand := Abs[s - t*z]^(2 \[Nu])*u*
    Block[{\[Lambda] = \[Mu], l = m, s = t}, u];
expr := 1/(Gamma[\[Mu] + m + 1]*Gamma[\[Lambda] + \[Nu] + (l - m)/2 + 1])*
    Pochhammer[-\[Nu], (l + m)/2]*
    (-1)^((l - m)/2)*Pi^(3/2)*
    Gamma[\[Nu] + 1/2]*z^m*
    Hypergeometric2F1[(l + m)/2 - \[Nu], (m - l)/2 - \[Nu] - \[Lambda],
    \[Mu] + m + 1, z^2];

list := {}
   Do[Do[Block[{
   \[Lambda]=RandomReal[RealParamRange],
	\[Nu]=RandomReal[RealParamRange],
	\[Mu]=RandomReal[RealParamRange],
	z=RandomReal[ZParamRange],
	l=RandomInteger[IntParamRange],
    	mProto=RandomInteger[IntParamRange],
	m=mProto+If[Mod[l+mProto,2]==1,1,0]
},
Block[{LHS=NIntegrate[integrand,{s,-1,1},{t,-1,1},PrecisionGoal->tol],
    RHS=N[expr,tol]},AppendTo[list,(LHS-RHS)/(10^(-tol))]]
],{tol,tolList}],{i,1,iterCount}]

Print[ExportString[Max[list],"TeX"]] (*0*)
Print[ExportString[With[{integrand=integrand},
    Defer[Integrate[integrand,{s,-1,1},{t,-1,1}]]],"TeX"]] (*1*)
Print[ExportString[expr,"TeX"]] (*2*)
Print[ExportString[StringJoin[
    "[",
    ToString[RealParamRange[[1]]],
    ", ",
    ToString[RealParamRange[[2]]],
    "]"],"TeX"]] (*3*)
Print[ExportString[iterCount,"TeX"]] (*4*)
Print[ExportString[tolList,"TeX"]] (*5*)
Print[ExportString[StringJoin[
    "[",
    ToString[ZParamRange[[1]]],
    ", ",
    ToString[ZParamRange[[2]]],"]"],"TeX"]] (*6*)
Print[ExportString[StringJoin[
    "[",
    ToString[IntParamRange[[1]]],
    ", ",
    ToString[IntParamRange[[2]]],"]"],"TeX"]] (*7*)
