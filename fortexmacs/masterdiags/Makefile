.PHONY: all
all: b1.eps

b1.eps: b1.tex
	echo 
	latex $<
	dvips -E -o $@ $(basename $<).dvi
