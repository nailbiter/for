PYTHON=~/anaconda3/bin/python3
.PHONY: all

all : out.pdf
SOURCES=out content5 content4 content6
out.pdf: $(addsuffix .tex, $(SOURCES))
	latexmk -pdf out.tex
content4.tex: test.py betterprint.py
	$(PYTHON) $< 4 > $@
content6.tex: test.py
	$(PYTHON) $< 6 > $@
content5.tex: test.py
	$(PYTHON) $< 5 > $@
