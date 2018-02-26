PYTHON=~/anaconda3/bin/python3
.PHONY: all commit

all : out.pdf
SOURCES=out content2 content3 #content4 content5 #content6 content7
PYSOURCES=main betterprint myprintutils
out.pdf: $(addsuffix .tex, $(SOURCES))
	latexmk -pdf out.tex
content2.tex: $(addsuffix .py, $(PYSOURCES))
	$(PYTHON) $< 2 > $@
content3.tex: $(addsuffix .py, $(PYSOURCES))
	$(PYTHON) $< 3 > $@
content4.tex: $(addsuffix .py, $(PYSOURCES))
	$(PYTHON) $< 4 > $@
content5.tex: $(addsuffix .py, $(PYSOURCES))
	$(PYTHON) $< 5 > $@
content6.tex: $(addsuffix .py, $(PYSOURCES))
	$(PYTHON) $< 6 > $@
content7.tex: $(addsuffix .py, $(PYSOURCES))
	$(PYTHON) $< 7 > $@
commit:
	git commit -a -m "python"
