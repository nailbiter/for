.PHONY: all clean

OUTDIR=../foraux
ZIPNAME=master_announcement2

all: $(OUTDIR)/$(ZIPNAME).zip

clean:
	rm -rf *.zip *.pdf

master_announcement2.tex: tables.tex
	touch master_announcement2.tex

$(OUTDIR)/Z.pdf : ~/for/fortexmacs/Z.pdf
	cp $< $@

$(OUTDIR)/%.pdf : %.tex
	latexmk -pdf  -outdir=$(OUTDIR) $<

master_announcement2.pdf: ../foraux/master_announcement2.pdf
	cp $< $@

$(OUTDIR)/$(ZIPNAME).zip : $(OUTDIR)/Z.pdf $(OUTDIR)/master_announcement2.pdf
	cd $(OUTDIR) && zip -9 master_announcement2 Z.pdf master_announcement2.pdf && unzip -l $(ZIPNAME).zip
