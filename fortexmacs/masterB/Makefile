.PHONY: all
all: master_streamlineB.pdf Bdep.pdf B.zip

master_streamlineB.pdf: master_streamlineB.tex
	latexmk -pdf $<

Bdep.pdf: Bdep.tex
	latexmk -pdf -pdflatex='pdflatex -shell-escape -enable-pipes %O %S'  $<

Bdep.tex : master_streamlineB.tex Bdep.scm
	time guile --no-auto-compile -s Bdep.scm master_streamlineB.tex > $@

B.zip: master_streamlineB.pdf Bdep.pdf
	zip B $<
