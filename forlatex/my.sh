guile  -e mp $HOME/for/forscheme/ma.scm '((App 0 1 0))' '((App 0 1 0))' '((App 0 3 0 K0)(App 0 1 0 Kt))' > f1.tex
guile -e mp $HOME/for/forscheme/ma.scm '((Apm 0 1 0)(Amp 0 2 0))' '((Apm 0 1 0)(Amp 0 0 0))' '((Apm 0 11 0 Kt)(Amp 0 3 0 K0))' > f2.tex
guile  -e mp $HOME/for/forscheme/ma.scm '((Apm 0 11 0)(Apm 1 0 0))' '()' '((Apm 0 3 0 K0)(Apm 1 11 0 Kt))' > f3.tex
guile  -e mp $HOME/for/forscheme/ma.scm '((App 1 3 1))' '((App 1 3 1))' '((App 1 2 1))' > f4.tex
guile -e mp $HOME/for/forscheme/ma.scm '((Apm 1 0 1)(Amp 1 2 1))' '((Apm 1 3 1 K0)(Amp 1 2 1 Kt))' '((Apm 1 2 1 K0)(Amp 1 2 1 K0)(Amp 1 2 1 Kt))' > f5.tex
guile -e mp $HOME/for/forscheme/ma.scm '((App 0 1 0)(Apm 0 0 0))' '((App 0 1 0)(Apm 0 0 0))' '((App 0 1 0 Kt)(Apm 0 3 0 K0))' > f6.tex
guile -e mp $HOME/for/forscheme/ma.scm '((Amp 0 3 0))' '((Amp 0 11 0))' '((Amp 0 3 0))' > f7.tex
guile -e mp $HOME/for/forscheme/ma.scm '((Apm 0 11 0))' '((Apm 0 11 0))' '((Apm 0 11 0 Kt)(Apm 0 3 0 K0))' > f8.tex
guile -e mp $HOME/for/forscheme/ma.scm '((App 1 3 1)(Apm 1 0 1))' '((App 1 0 1)(Apm 1 2 1))' '((App 1 3 1)(Apm 1 0 1))' > f9.tex
guile -e mp $HOME/for/forscheme/ma.scm '((App 0 1 0)(Amp 0 0 0))' '((App 0 1 0)(Amp 0 0 0))' '((App 0 1 0 Kt)(Amp 0 3 0 K0))' > f10.tex
guile -e mp $HOME/for/forscheme/ma.scm '((Apm 0 3 0))' '((Apm 0 11 0))' '((Apm 0 3 0 K0)(Apm 0 11 0 Kt))' > f11.tex
guile -e mp $HOME/for/forscheme/ma.scm '((Amp 0 11 0))' '((Amp 0 11 0))' '((Amp 0 3 0))' > f12.tex
guile -e mp $HOME/for/forscheme/ma.scm '((App 1 0 1)(Amp 1 2 1))' '((App 1 0 1)(Amp 1 2 1))' '((App 1 3 1 K0)(Amp 1 2 1 Kt))' > f13.tex
guile -e mp $HOME/for/forscheme/ma.scm '((App 0 1 0)(Apm 0 0 0)(Amp 0 0 0))' '((App 0 1 0)(Apm 0 0 0)(Amp 0 0 0))' '((App 0 1 0 Kt)(Apm 0 3 0 K0)(Amp 0 0 0))' > f14.tex
guile -e mp $HOME/for/forscheme/ma.scm '((Apm 0 1 0)(Amp 0 2 0))' '((Apm 0 1 0)(Amp 0 0 0))' '((Apm 0 11 0 Kt)(Amp 0 3 0 K0))' > f15.tex
guile  -e mp $HOME/for/forscheme/ma.scm '((Apm 0 11 0)(Apm 1 0 0))' '()' '((Apm 0 11 0 Kt)(Apm 1 3 0 K0))' > f16.tex
guile -e mp $HOME/for/forscheme/ma.scm '((Apm 1 0 1)(Amp 1 2 1))' '((Apm 1 3 1 K0)(Amp 1 2 1 Kt))' '((Apm 1 2 1 K0)(Amp 1 2 1 Kt)(Amp 1 2 1 K0))' > f17.tex
guile -e mp $HOME/for/forscheme/ma.scm '((App 1 0 1)(Apm 1 0 1)(Amp 1 2 1))' '((App 1 0 1)(Apm 1 3 1 K0)(Amp 1 2 1 Kt))' '((App 1 0 1)(Apm 1 2 1 K0)(Amp 1 2 1 Kt)(Amp 1 2 1 K0))' > f18.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 		'((def 0 1))' '((Kt 0 1)(K0 0 2))' '((def 0 1))' '()' '((K0 0 2)(Kt 0 1))' > f19.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 		'((def 1))' '((def 1))' '((def 1))' '((def 1))' '((def 1))' > f20.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	'((def 1))' '((Kt 1)(K0 1))' '((def 1))' '((def 1))' '((def 1))' > f21.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	'((def 1 2))' '((def 1 2))' '((def 1 1))' '((def 1 1))' '()' > f22.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	'((def 1 1))' '((Kt 1 1)(K0 1 2))' '((def 1 1))' '((def 1 1))' '()' > f23.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	'((def 0 2))' '((Kt 0 2)(K0 0 2))' '((def 0 2))' '()' '((K0 0 2)(Kt 0 2))' > f24.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	'((def 0 2))' '((def 0 2))' '((def 0 2))' '()' '((def 0 2))' > f25.tex
guile -e mp1 $HOME/for/forscheme/ma.scm	'((def 1))' '((Kt 1)(K0 1))' '((KC 1)(KY 1))' '((Kt 1)(K0 1))' '((def 1))' > f26.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	'((def 1))' '((def 1))' '((KC 1)(KY 1))' '((Kt 1)(K0 1))' '((def 1))' > f27.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	'((def 1 1))' '((Kt 1 1)(K0 1 2))' '((KY 1 1)(KC 1 1))' '((Kt 1 1)(K0 1 1))' '()' > f28.tex
guile -e mp1 $HOME/for/forscheme/ma.scm 	'((def 1 2))' '((def 1 2))' '((KY 1 1)(KC 1 2))' '((K0 1 2)(Kt 1 2))' '()' > f29.tex
