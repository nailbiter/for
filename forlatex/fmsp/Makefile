.PHONY: all clean push commit

OUTDIR=../foraux
ZIPNAME=fmsp
WORKON=https://trello.com/c/BcqE7ImU
COMMIT_MSG="tex fmsp $(WORKON)"
LATEXMK=latexmk -pdflatex='xelatex %O %S' -pdf  -outdir=$(OUTDIR) -f -g

all: $(OUTDIR)/$(ZIPNAME).zip

clean:
	touch *.tex
	rm -rf $(OUTDIR)/$(ZIPNAME).zip $(OUTDIR)/Z.pdf $(OUTDIR)/master_announcement2.pdf

$(OUTDIR)/%.pdf : %.tex
	$(LATEXMK) $<

$(OUTDIR)/$(ZIPNAME).zip : $(OUTDIR)/28_04_17.pdf
	cd $(OUTDIR) && rm -f $(ZIPNAME).zip && zip -9 $(ZIPNAME).zip 28_04_17.pdf
	unzip -l $(OUTDIR)/$(ZIPNAME).zip
	git commit --allow-empty -a -m $(COMMIT_MSG)
	
commit:
	git commit --allow-empty -a -m $(COMMIT_MSG)
push: all
	git push
