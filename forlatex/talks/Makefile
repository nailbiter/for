.PHONY: all
#all : test1.tex
all: ../foraux/suugakkai_17.pdf
	#sed 's/{\\comment{<\([^>]*\)>}}/\%<\1>/NewDelim' $< |tr 
test1.tex : ~/for/fortexmacs/master_master.tm
	/Applications/TeXmacs-1.99.4.app/Contents/MacOS/TeXmacs --convert $< $@ --quit
	perl -pe  's/\{\\comment\{<([^>]*)>\}\}/\%<\1>\n/g' $< 

TEXMACS=/Applications/TeXmacs-1.99.4.app/Contents/MacOS/TeXmacs

../foraux/suugakkai_17.pdf: suugakkai_17.tex suugakkai_16_aux/table1.tex  intdep.tex #diagram.tex
	latexmk -f -g -pdf -pdflatex='pdflatex -shell-escape -enable-pipes %O %S' -outdir=../foraux $<

intdep.tex: diagram.scm
	guile --no-auto-compile -e intdepdiag $< > $@

diagram.tex: diagram.scm
	guile -e symbreakdiag $< > $@

#      \end{array}$}&\input{|"guile  -e mp $HOME/for/forscheme/ma.scm '((App 0 1 0))' '((App 0 1 0))' '((App 0 3 0 K0)(App 0 1 0 Kt))'"}\\[0pt]

../foraux/suugakkai_16.pdf: suugakkai_16.tex suugakkai_16_aux/table1.tex
	latexmk -pdf -pdflatex='xelatex %O %S' -outdir=../foraux/ $<

suugakkai_16_aux/table1.tex : suugakkai_16_aux/table1.tm
	$(TEXMACS) --convert $< $@ --quit
	cat $@| grep -A100000 begin{document|tail -n +2|ghead -n -1 > $@

