.PHONY: all
TEXMACS=/Applications/TeXmacs-1.99.4.app/Contents/MacOS/TeXmacs

../foraux/suugakkai_17.pdf: suugakkai_17.tex suugakkai_16_aux/table1.tex
	latexmk -pdf -pdflatex='xelatex %O %S' -outdir=../foraux/ $<

../foraux/suugakkai_16.pdf: suugakkai_16.tex suugakkai_16_aux/table1.tex
	latexmk -pdf -pdflatex='xelatex %O %S' -outdir=../foraux/ $<

suugakkai_16_aux/table1.tex : suugakkai_16_aux/table1.tm
	$(TEXMACS) --convert $< $@ --quit
	cat $@| grep -A100000 begin{document|tail -n +2|ghead -n -1 > $@

