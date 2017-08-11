.PHONY: all

OUTFOLDER=../foraux

all: $(OUTFOLDER)/talkmemo.zip 

$(OUTFOLDER)/%.pdf : %.tex
	#latexmk -pdf -outdir=$(OUTFOLDER) $<
	latexmk -pdf -pdflatex='xelatex %O %S' -outdir=$(OUTFOLDER) $<

$(OUTFOLDER)/talkmemo.zip : $(OUTFOLDER)/vocab_oral.pdf $(OUTFOLDER)/checklist.pdf $(OUTFOLDER)/vocab_written.pdf $(OUTFOLDER)/manner-jap.pdf
	cd $(OUTFOLDER) && zip -9 talkmemo vocab_oral.pdf checklist.pdf vocab_written.pdf
