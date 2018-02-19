PYTHON=/Users/nailbiter/anaconda2/bin/python2.7
.PHONY: out.pdf

out.pdf : out.tex content.tex
	latexmk -pdf $<
content.tex: test.py
	$(PYTHON) $< 9 > $@
