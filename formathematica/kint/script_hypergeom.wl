RealParamRange:={1.45,1.55}
DeltaParamRange:=0.5;
IntParamRange:={0,10}
ZParamRange:={0,1}
iterCount:=6;
tolList:={6,7,8}

(* generate parameters *)
paramList={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
paramList[[1]]=RandomReal[RealParamRange];(* a>= b>= c*)
paramList[[2]]=RandomReal[RealParamRange]+RandomReal[{0,DeltaParamRange}];
paramList[[3]]=RandomReal[RealParamRange]+RandomReal[{0,DeltaParamRange}];
paramList[[4]]=RandomReal[RealParamRange];(* a>= b>= c*)
paramList[[5]]=RandomReal[RealParamRange]+RandomReal[{0,DeltaParamRange}];
paramList[[6]]=RandomReal[RealParamRange]+RandomReal[{0,DeltaParamRange}];
paramList[[7]]=RandomReal[RealParamRange];(* a>= b>= c*)
paramList[[8]]=RandomReal[RealParamRange]+RandomReal[{0,DeltaParamRange}];
paramList[[9]]=RandomReal[RealParamRange]+RandomReal[{0,DeltaParamRange}];
paramList[[10]]=RandomReal[RealParamRange];(* a>= b>= c*)
paramList[[11]]=RandomReal[RealParamRange]+RandomReal[{0,DeltaParamRange}];
paramList[[12]]=RandomReal[RealParamRange]+RandomReal[{0,DeltaParamRange}];
paramList[[13]]=RandomReal[RealParamRange];(* a>= b>= c*)
paramList[[14]]=RandomReal[RealParamRange]+RandomReal[{0,DeltaParamRange}];
paramList[[15]]=RandomReal[RealParamRange]+RandomReal[{0,DeltaParamRange}];
paramList[[16]]=RandomReal[RealParamRange];(* a>= b>= c*)
paramList[[17]]=RandomReal[RealParamRange]+RandomReal[{0,DeltaParamRange}];
paramList[[18]]=RandomReal[RealParamRange]+RandomReal[{0,DeltaParamRange}];


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
   \[Lambda]=paramList[[(i-1)*3+1]],
	\[Nu]=paramList[[(i-1)*3+2]],
	\[Mu]=paramList[[(i-1)*3+3]],
	z=RandomReal[ZParamRange],
	l=RandomInteger[IntParamRange],
    	mProto=RandomInteger[IntParamRange],
	m=mProto+If[Mod[l+mProto,2]==1,1,0]
},
Block[{LHS=NIntegrate[integrand,{s,-1,1},{t,-1,1},PrecisionGoal->tol],
    RHS=N[expr,tol]},AppendTo[list,Norm[LHS-RHS]/(10^(-tol))]]
],{tol,tolList}],{i,1,iterCount}]

Print[ExportString[Max[list],"TeX"]] (*0*)
Print[ExportString[With[{integrand=integrand},
    Defer[Integrate[integrand,{s,-1,1},{t,-1,1}]]],"TeX"]] (*1*)
Print[ExportString[expr,"TeX"]] (*2*)
Print[ExportString[StringJoin[
    "[",
    ToString[RealParamRange[[1]]],
    ", ",
    ToString[RealParamRange[[2]]]+2*DeltaParamRange,
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
