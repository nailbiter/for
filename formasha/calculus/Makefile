.PHONY: all

#global const's
LATEXMK=latexmk -pdf -f -g
PDFs=$(addprefix hw,$(shell seq 0 42)) snippet_1
#procedures
all: $(addsuffix .pdf,$(PDFs))


#main
%.pdf: %.tex
	$(LATEXMK) $<
