.PHONY: all clean push commit

OUTDIR=../foraux
ZIPNAME=fouryearseminar
COMMIT_MSG=tex fouryearseminar
LATEXMK=latexmk -g -f -pdf -pdflatex='xelatex %O %S' -outdir=$(OUTDIR)
GIT=git add $(addsuffix .tex, $(PDFS)) *.bib Makefile && git commit --allow-empty -a -m "$(COMMIT_MSG)"
PDFS=may24

all: $(OUTDIR)/$(ZIPNAME).zip

clean:
	touch *.tex
	rm -rf $(OUTDIR)/$(ZIPNAME).zip $(OUTDIR)/Z.pdf $(OUTDIR)/master_announcement2.pdf

$(OUTDIR)/%.pdf : %.tex
	$(LATEXMK) $<
	$(GIT)

$(OUTDIR)/$(ZIPNAME).zip : $(addprefix $(OUTDIR)/,$(addsuffix .pdf, $(PDFS)))	
	cd $(OUTDIR) && rm -f $(ZIPNAME).zip && zip -9 $(ZIPNAME) $(addsuffix .pdf, $(PDFS)) && unzip -l $(ZIPNAME).zip

commit:
	$(GIT)
push: all
	git push
