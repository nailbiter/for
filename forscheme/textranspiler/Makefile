.PHONY: all docs clean

#var's
##commands
PREPROC=guile -s preprocessor.scm
LATEXMK=latexmk -pdf -f -g
MARKDOWN=markdown_py
GUILE=guile -s
##variables
EQNFOLDER=equations
EQUATIONS=$(addprefix eqn,\
		DF EulerRep Rod Selberg Tarasov Warnaar cor170599 corHermite iF lm0 mehSpec pfProp stz)
SOURCES=main texmathcmds $(addprefix $(EQNFOLDER)/,$(addsuffix .proto, $(EQUATIONS))) cond preamble rimspic2

#rules
all: main.pdf $(addsuffix .m,$(EQUATIONS))
docs: README.html
main.pdf: $(addsuffix .tex,$(SOURCES))
	$(LATEXMK) $<
texmathcmds.tex: generateTex.scm commands/commands.txt
	$(GUILE) $^ > $@
%.scm : %.proto.tex
	$(PREPROC) $< > $@
%.scm : $(EQNFOLDER)/%.proto.tex
	$(PREPROC) $< > $@
%.tex: %.scm macro.scm
	$(GUILE) $< > $@
README.html: README.md
	$(MARKDOWN) $< > $@
%.m : %.scm wolfmacro.scm $(addprefix commands/commands, .txt 2.txt) aux.scm
	guile -s $< > $@
clean:
	rm -rf `cat .gitignore`
