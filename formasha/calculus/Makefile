.PHONY: all

#global const's
LATEXMK=latexmk -pdf -f -g
PDFs=hw0
#procedures
all: $(addsuffix .pdf,$(PDFs))


#main
%.pdf: %.tex
	$(LATEXMK) $<
