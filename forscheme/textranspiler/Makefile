.PHONY: all docs

#var's
##commands
PREPROC=guile -s preprocessor.scm
LATEXMK=latexmk -pdf -f -g
MARKDOWN=markdown_py #-f +definitionlist
##variables
EQUATIONS=$(addprefix eqn,\
		DF EulerRep Rod Selberg Tarasov Warnaar cor170599 corHermite iF lm0 mehSpec pfProp stz)
SOURCES=main texmathcmds $(addsuffix .proto, $(EQUATIONS)) cond preamble rimspic2

#rules
all: main.pdf $(addsuffix .m,$(EQUATIONS))
docs: README.html
main.pdf: $(addsuffix .tex,$(SOURCES))
	$(LATEXMK) $<
texmathcmds.tex : wolfmacro.scm wolftable.scm
	guile -e maketexmathcmds $< > $@
%.scm : %.proto.tex
	$(PREPROC) $< > $@
%.tex: %.scm macro.scm
	guile -s $< > $@
README.html: README.md
	$(MARKDOWN) $< > $@
%.m : %.scm wolfmacro.scm wolftable.scm
	guile -s $< > $@
