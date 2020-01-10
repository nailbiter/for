.PHONY: all

#global const's
LATEXMK=latexmk -pdf -f -g
PDFs=$(addprefix hw,$(shell seq 0 11))
#procedures
all: $(addsuffix .pdf,$(PDFs))


#main
%.pdf: %.tex
	$(LATEXMK) $<
5.pdf: 5.tex
	$(LATEXMK) $<
