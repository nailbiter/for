.PHONY: all

#global const's
LATEXMK=latexmk -pdf -f -g
PDFs=$(addprefix hw,$(shell seq 0 38)) snippet_1
#procedures
all: $(addsuffix .pdf,$(PDFs))


#main
%.pdf: %.tex
	$(LATEXMK) $<
