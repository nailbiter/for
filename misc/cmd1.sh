#!/bin/sh
guile  -e mp $HOME/for/forscheme/ma.scm '((App 0 1 0))' '((App 0 1 0))' '((App 0 3 0 K0)(App 0 1 0 Kt))' > 1.tex
guile -e mp $HOME/for/forscheme/ma.scm '((Apm 0 1 0)(Amp 0 2 0))' '((Apm 0 1 0)(Amp 0 0 0))' '((Apm 0 11 0 Kt)(Amp 0 3 0 K0))' >2.tex
guile  -e mp $HOME/for/forscheme/ma.scm '((Apm 0 11 0)(Apm 1 0 0))' '()' '((Apm 0 3 0 K0)(Apm 1 11 0 Kt))'>3.tex
guile  -e mp $HOME/for/forscheme/ma.scm '((App 1 3 1))' '((App 1 3 1))' '((App 1 2 1))'>4.tex
guile -e mp $HOME/for/forscheme/ma.scm '((Apm 1 0 1)(Amp 1 2 1))' '((Apm 1 3 1 K0)(Amp 1 2 1 Kt))' '((Apm 1 2 1 K0)(Amp 1 2 1 K0)(Amp 1 2 1 Kt))'>5.tex
guile -e mp $HOME/for/forscheme/ma.scm '((App 0 1 0)(Apm 0 0 0))' '((App 0 1 0)(Apm 0 0 0))' '((App 0 1 0 Kt)(Apm 0 3 0 K0))'>6.tex
guile -e mp $HOME/for/forscheme/ma.scm '((Amp 0 3 0))' '((Amp 0 11 0))' '((Amp 0 3 0))'>7.tex
guile -e mp $HOME/for/forscheme/ma.scm '((Apm 0 11 0))' '((Apm 0 11 0))' '((Apm 0 11 0 Kt)(Apm 0 3 0 K0))'>8.tex
guile -e mp $HOME/for/forscheme/ma.scm '((App 1 3 1)(Apm 1 0 1))' '((App 1 0 1)(Apm 1 2 1))' '((App 1 3 1)(Apm 1 0 1))'>9.tex
guile -e mp $HOME/for/forscheme/ma.scm '((App 0 1 0)(Amp 0 0 0))' '((App 0 1 0)(Amp 0 0 0))' '((App 0 1 0 Kt)(Amp 0 3 0 K0))'>10.tex
guile -e mp $HOME/for/forscheme/ma.scm '((Apm 0 3 0))' '((Apm 0 11 0))' '((Apm 0 3 0 K0)(Apm 0 11 0 Kt))'>11.tex
guile -e mp $HOME/for/forscheme/ma.scm '((Amp 0 11 0))' '((Amp 0 11 0))' '((Amp 0 3 0))'>12.tex
guile -e mp $HOME/for/forscheme/ma.scm '((App 1 0 1)(Amp 1 2 1))' '((App 1 0 1)(Amp 1 2 1))' '((App 1 3 1 K0)(Amp 1 2 1 Kt))'>13.tex
guile -e mp $HOME/for/forscheme/ma.scm '((App 0 1 0)(Apm 0 0 0)(Amp 0 0 0))' '((App 0 1 0)(Apm 0 0 0)(Amp 0 0 0))' '((App 0 1 0 Kt)(Apm 0 3 0 K0)(Amp 0 0 0))'>14.tex
guile -e mp $HOME/for/forscheme/ma.scm '((Apm 0 1 0)(Amp 0 2 0))' '((Apm 0 1 0)(Amp 0 0 0))' '((Apm 0 11 0 Kt)(Amp 0 3 0 K0))'>15.tex
guile  -e mp $HOME/for/forscheme/ma.scm '((Apm 0 11 0)(Apm 1 0 0))' '()' '((Apm 0 11 0 Kt)(Apm 1 3 0 K0))'>16.tex
guile -e mp $HOME/for/forscheme/ma.scm '((Apm 1 0 1)(Amp 1 2 1))' '((Apm 1 3 1 K0)(Amp 1 2 1 Kt))' '((Apm 1 2 1 K0)(Amp 1 2 1 Kt)(Amp 1 2 1 K0))'>17.tex
guile -e mp $HOME/for/forscheme/ma.scm '((App 1 0 1)(Apm 1 0 1)(Amp 1 2 1))' '((App 1 0 1)(Apm 1 3 1 K0)(Amp 1 2 1 Kt))' '((App 1 0 1)(Apm 1 2 1 K0)(Amp 1 2 1 Kt)(Amp 1 2 1 K0))'>18.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 		'((def 0 1))' '((Kt 0 1)(K0 0 2))'  >19.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 		'((def 1))' '((def 1))' >20.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	'((def 1))' '((Kt 1)(K0 1))' >21.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	'((def 1 2))' '((def 1 2))' >22.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	'((def 1 1))' '((Kt 1 1)(K0 1 2))' >23.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	'((def 0 2))' '((Kt 0 2)(K0 0 2))' >24.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	'((def 0 2))' '((def 0 2))' >25.tex
guile -e mp1 $HOME/for/forscheme/ma.scm	'((def 1))' '((Kt 1)(K0 1))' >26.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	'((def 1))' '((def 1))'  >27.tex
guile -e mp1 $HOME/for/forscheme/ma.scm '((def 1 1))' '((Kt 1 1)(K0 1 2))' >28.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	'((def 1 2))' '((def 1 2))' >29.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 		 '((def 0 1))' '()' '((K0 0 2)(Kt 0 1))'>30.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 		 '((def 1))' '((def 1))' '((def 1))'>31.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	 '((def 1))' '((def 1))' '((def 1))'>32.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	 '((def 1 1))' '((def 1 1))' '()'>33.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	 '((def 1 1))' '((def 1 1))' '()'>34.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	 '((def 0 2))' '()' '((K0 0 2)(Kt 0 2))'>35.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	 '((def 0 2))' '()' '((def 0 2))'>36.tex
guile -e mp1 $HOME/for/forscheme/ma.scm	 '((KC 1)(KY 1))' '((Kt 1)(K0 1))' '((def 1))'>37.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	 '((KC 1)(KY 1))' '((Kt 1)(K0 1))' '((def 1))'>38.tex
guile -e mp1 $HOME/for/forscheme/ma.scm  '((KY 1 1)(KC 1 1))' '((Kt 1 1)(K0 1 1))' '()'>39.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	 '((KY 1 1)(KC 1 2))' '((K0 1 2)(Kt 1 2))' '()'>40.tex
