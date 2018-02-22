PYTHON=~/anaconda3/bin/python3
.PHONY: all

all : out.pdf
SOURCES=out content5 content4 content6 content7 content2 content3
out.pdf: $(addsuffix .tex, $(SOURCES))
	latexmk -pdf out.tex
content2.tex: test.py betterprint.py
	$(PYTHON) $< 2 > $@
content3.tex: test.py betterprint.py
	$(PYTHON) $< 3 > $@
content4.tex: test.py betterprint.py
	$(PYTHON) $< 4 > $@
content5.tex: test.py betterprint.py
	$(PYTHON) $< 5 > $@
content6.tex: test.py betterprint.py
	$(PYTHON) $< 6 > $@
content7.tex: test.py betterprint.py
	$(PYTHON) $< 7 > $@
