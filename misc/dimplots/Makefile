.PHONY: all clean
all: dimplots.pdf	
dimplots.pdf: dimplots.tex diag1.tex
	pdflatex dimplots.tex
diag1.tex : genplot.scm
	guile -e diag1 $< > $@
clean: 
	rm dimplots.pdf
