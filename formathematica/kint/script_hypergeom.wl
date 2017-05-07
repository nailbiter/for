RealParamMin:=1.45
DeltaParamRange:=0.025;
IntParamRange:={0,10}
ZParamRange:={0,1}
iterCount:=6;
tolList:={6,7,8}

(* generate parameters *)
paramList={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
base=0;
paramList[[base+1]]=
	RandomReal[
	{RealParamMin+0*DeltaParamRange,
	RealParamMin+1*DeltaParamRange}];
paramList[[base+2]]=
	RandomReal[
	{RealParamMin+1*DeltaParamRange,
	RealParamMin+2*DeltaParamRange}];
paramList[[base+3]]=
	RandomReal[
	{RealParamMin+2*DeltaParamRange,
	RealParamMin+3*DeltaParamRange}];
base=base+3;
paramList[[base+1]]=
	RandomReal[
	{RealParamMin+0*DeltaParamRange,
	RealParamMin+1*DeltaParamRange}];
paramList[[base+3]]=
	RandomReal[
	{RealParamMin+1*DeltaParamRange,
	RealParamMin+2*DeltaParamRange}];
paramList[[base+2]]=
	RandomReal[
	{RealParamMin+2*DeltaParamRange,
	RealParamMin+3*DeltaParamRange}];
base=base+3;
paramList[[base+2]]=
	RandomReal[
	{RealParamMin+0*DeltaParamRange,
	RealParamMin+1*DeltaParamRange}];
paramList[[base+1]]=
	RandomReal[
	{RealParamMin+1*DeltaParamRange,
	RealParamMin+2*DeltaParamRange}];
paramList[[base+3]]=
	RandomReal[
	{RealParamMin+2*DeltaParamRange,
	RealParamMin+3*DeltaParamRange}];
base=base+3;
paramList[[base+2]]=
	RandomReal[
	{RealParamMin+0*DeltaParamRange,
	RealParamMin+1*DeltaParamRange}];
paramList[[base+3]]=
	RandomReal[
	{RealParamMin+1*DeltaParamRange,
	RealParamMin+2*DeltaParamRange}];
paramList[[base+1]]=
	RandomReal[
	{RealParamMin+2*DeltaParamRange,
	RealParamMin+3*DeltaParamRange}];
base=base+3;
paramList[[base+3]]=
	RandomReal[
	{RealParamMin+0*DeltaParamRange,
	RealParamMin+1*DeltaParamRange}];
paramList[[base+1]]=
	RandomReal[
	{RealParamMin+1*DeltaParamRange,
	RealParamMin+2*DeltaParamRange}];
paramList[[base+2]]=
	RandomReal[
	{RealParamMin+2*DeltaParamRange,
	RealParamMin+3*DeltaParamRange}];
base=base+3;
paramList[[base+3]]=
	RandomReal[
	{RealParamMin+0*DeltaParamRange,
	RealParamMin+1*DeltaParamRange}];
paramList[[base+2]]=
	RandomReal[
	{RealParamMin+1*DeltaParamRange,
	RealParamMin+2*DeltaParamRange}];
paramList[[base+1]]=
	RandomReal[
	{RealParamMin+2*DeltaParamRange,
	RealParamMin+3*DeltaParamRange}];

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
	RealParamMin
    ", ",
    RealParamMin+2*DeltaParamRange],
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
