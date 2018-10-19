.PHONY: all

#var's
##commands
PREPROC=guile -s preprocessor.scm
LATEXMK=latexmk -pdf -f -g
##variables
EQUATIONS=\
	cond\
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
	rimspic2\
	script
SOURCES=main texmathcmds $(addsuffix .proto, $(EQUATIONS))

#rules
all: main.pdf
main.pdf: $(addsuffix .tex,$(SOURCES))
	$(LATEXMK) $<
texmathcmds.tex : wolfmacro.scm wolftable.scm
	guile -e maketexmathcmds $< > $@
