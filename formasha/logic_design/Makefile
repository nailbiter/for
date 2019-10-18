.PHONY: all

#global const's
LATEXMK=latexmk -pdf -f -g
PDFs=$(addprefix hw,$(shell seq 0 1 2))
#procedures
all: $(addsuffix .pdf,$(PDFs))


#main
%.pdf: %.tex
	$(LATEXMK) $<
