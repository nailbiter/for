;symbolname arity tex wolfFormatString wolfArgIndexes
(define wolftable
  (letrec((sec(lambda(n)(if(< n 0) '() (append (sec (- n 1))(list n))))))
  (list
    '(mysignedabsval 
       3 "\\left|#1\\right|^{#2}\\sgn^{#3}\\left(#1\\right)"
       "(If[EvenQ[~a],1,Sign[~a]])*(Abs[~a]^(~a))"
       (2 0 0 1))
    '( myinfdoublesumform
       4 
       "\\sum_{\\mbox{\\scalebox{0.7}
       {$\\begin{array}{c}#1,#2\\in\\Z\\\\#1\\equiv#2+#3\\mymod{2}
       \\end{array}$}}}#4"
       "(Sum[Block[{~a=2*i1+r,~a=2*i2},If[PossibleZeroQ[~a],1,2]*
       If[PossibleZeroQ[~a],1,2]*(~a)],{i1,0,NN},
       {i2,0,NN}]+
        Sum[Block[{~a=1+2*i1,~a=1+2*i2+r},If[PossibleZeroQ[~a],1,2]*If[PossibleZeroQ[~a],1,2]*
                    (~a)],{i1,0,NN},
       {i2,0,NN}])"
        (0 1 0 1 3 0 1 0 1 3))
    '(mydoubleprodform
       4 "\\prod_{#1,#2\\in#3}#4"
       "Product[~a,{~a,~a},{~a,~a}]" (3 0 2 1 2))
    '(mypmset 0 "\\{\\pm1\\}" "{-1,1}" ())
    '(myintform 
       9 "\\left(#1\\int\\int_{#3\\le#5<#6\\le#4}+#2\\int\\int_{#3\\le#6<#5\\le#4}
                 \\right)#8\\myabs{#5-#6}^{#7}#9d#5d#6"
      "NIntegrate[(~a)*(Piecewise[{{(~a)*(~a-~a)^(~a),~a-~a<0}},(~a)*(~a-~a)^(~a)])
                   *(~a),{~a,~a,~a},{~a,~a,~a}]"
       (7 0 5 4 6 4 5 1 4 5 6 8 4 2 3 5 2 3))
    (list 'mytFo 4 "{}_2F_1\\left( \\begin{array}[]{c}\\displaystyle
     #1,#2\\\\#3\\end{array};#4\\right)""Hypergeometric2F1[~a,~a,~a,~a]" (sec 3))
    '(myexp 1 "e^{#1}" "Exp[~a]" (0));;FIXME: can be removed by better parser
    (list 'myiint 7 "\\displaystyle\\int_{#1}^{#2}\\int_{#5}^{#6}#3{d}#4{d}#7"
      "NIntegrate[~a,{~a,~a,~a},{~a,~a,~a}]" '(2 3 0 1 6 4 5)) ;;??
    '(myHerm 2 "H_{#2}\\left(#1\\right)" "HermiteH[~a,~a]" (1 0))
    '(mycos 1 "\\cos\\left(#1\\right)" "Cos[~a]" (0))
    '(myucos 1 "\\cos {#1}" "Cos[~a]" (0))
    '(mysin 1 "\\sin\\left(#1\\right)" "Sin[~a]" (0))
    (list 'mydegw 2 "#1^{#2}" "(~a)^(~a)" '(0 1))
    (list 'mydeg 2 "\\left(#1\\right)^{#2}" "(~a)^(~a)" '(0 1))
    (list 'myfactw 1 "#1!" "Factorial[~a]" '(0))
    (list 'myPoch 2 "\\left(#1\\right)_{#2}" "Pochhammer[~a,~a]" '(0 1))
    (list 'myBeta 2 "B\\left(#1,#2\\right)" "Beta[~a,~a]" '(0 1))
    (list 'myint 4"\\displaystyle\\int_{#1}^{#2}#3{d}#4""NIntegrate[~a,{~a,~a,~a}]"
       '(2 3 0 1))
    (list 'mysum 4 "\\sum_{#4=#1}^{#2}#3" "NSum[~a,{~a,~a,~a}]" '(2 3 0 1))
    (list 'myGamma 1 "\\Gamma\\left( #1 \\right)" "Gamma[~a]" '(0))
    (list 'jx 0 "" "*" '())
    (list 'mydiff 3 "\\frac{d^{#1}}{d#2^{#1}}#3" "D[~a,{~a,~a}]" '(2 1 0))
    '(mypospart 
       2 "\\left( #1 \\right)_+^{#2}""Piecewise[{{0,~a<0}},(~a)^(~a)]" (0 0 1))
    '(invisibleone 0 "" "1" ());;FIXME: remove
    (list 'mymultline 3 "\\begin{multline}#1\\\\=#2\\label{#3}\\end{multline}"
          "left:=~a;~%right:=~a;" '(0 1));;FIXME: remove
    (list 'myeqn 3 "\\begin{equation}#1=#2\\label{#3}\\end{equation}"
          "left:=~a;~%right:=~a;~%" '(0 1));;FIXME: remove
    (list 'myuasgn 3 "\\begin{equation*}#1\\assign #2\\end{equation*}"
          "~a:=~a;~%" '(2 1));;FIXME: remove
    (list 'myu 0 "u_{\\ell}^\\lambda(s)" "u" '());;FIXME: remove
    (list 'mywassign 2 "#1" "~a:=~a" '(1 0));;FIXME: remove
    '(myabsval 2 "\\left|#1\\right|^{#2}" "Abs[~a]^(~a)" (0 1)))));;FIXME: remove
        

(define wolftable-extended
  (append
    wolftable
    (list 
      (list 'cdot 0 "" "*" '())
      (list 'pi 0 "" "Pi" '())
      (list 'zeta 0 "" "\\[Zeta]" '())
      (list 'ell 0 "" "\\[ScriptL]" '())
      (list 'varphi 0 "" "\\[Phi]" '())
      (list 'psi 0 "" "\\[Psi]" '())
      (list 'delta 0 "" "\\[Delta]" '())
      (list 'varepsilon 0 "" "\\[Epsilon]" '())
      (list 'psi 0 "" "\\[Psi]" '())
      (list 'infty 0 "" "\\[Infinity]" '())
      (list 'lambda 0 "" "\\[Lambda]" '())
      (list 'rho 0 "" "\\[Rho]" '())
      (list 'mu 0 "" "\\[Mu]" '())
      (list 'nu 0 "" "\\[Nu]" '())
      (list 'sqrt 1 "" "Sqrt[~a]" '(0))
      (list 'frac 2 "" "(~a)/(~a)" '(0 1)))))
