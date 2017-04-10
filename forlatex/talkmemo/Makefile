.PHONY: all

OUTFOLDER=../foraux

all: $(OUTFOLDER)/talkmemo.zip 

pdfs=vocab.pdf checklist.pdf

$(OUTFOLDER)/%.pdf : %.tex
	#latexmk -pdf -outdir=$(OUTFOLDER) $<
	latexmk -pdf -pdflatex='xelatex %O %S' -outdir=$(OUTFOLDER) $<

$(OUTFOLDER)/talkmemo.zip : $(OUTFOLDER)/vocab.pdf $(OUTFOLDER)/checklist.pdf
	cd $(OUTFOLDER) && zip -9 talkmemo vocab.pdf checklist.pdf
	
