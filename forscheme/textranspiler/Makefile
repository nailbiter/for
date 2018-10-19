.PHONY: all

#var's
##commands
PREPROC=guile -s preprocessor.scm
LATEXMK=latexmk -pdf -f -g
MARKDOWN=markdown
##variables
EQUATIONS=\
	eqnDF\
	eqnEulerRep\
	eqnRod\
	eqnSelberg\
	eqnTarasov\
	eqnWarnaar\
	eqncor170599\
	eqncorHermite\
	eqniF\
	eqnlm0\
	eqnmehSpec\
	eqnpfProp\
	eqnstz\
	script
SOURCES=main texmathcmds $(addsuffix .proto, $(EQUATIONS)) cond preamble rimspic2 conditions

#rules
all: main.pdf README.html
main.pdf: $(addsuffix .tex,$(SOURCES))
	$(LATEXMK) $<
texmathcmds.tex : wolfmacro.scm wolftable.scm
	guile -e maketexmathcmds $< > $@
%.scm : %.proto.tex
	$(PREPROC) $< > $@
%.tex: %.scm macro.scm
	guile -s $< > $@
conditions.tex: conditions.scm
	guile -s $< Bversion > $@
README.html: README.md
	$(MARKDOWN) $< > $@
