PYTHON=~/anaconda3/bin/python3
.PHONY: all commit MAIN2

all : out.pdf MAIN2
SOURCES=out $(addprefix content,2 3 4 5) #6 7
PYSOURCES=main betterprint myprintutils
PYSOURCES2=main2 betterprint main2aux
MAIN2: $(addsuffix .py, $(PYSOURCES2))
	$(PYTHON) $< 5
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
