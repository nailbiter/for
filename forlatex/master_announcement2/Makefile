.PHONY: all clean push commit

OUTDIR=../foraux
ZIPNAME=master_announcement2
#WORKON=https://trello.com/c/jUZS9cjM
WORKON=https://trello.com/c/lruJjZqc
COMMIT_MSG=tex master_announcement2
COMMIT_MSG += $(WORKON)
LATEXMK=latexmk -pdf  -outdir=$(OUTDIR) -f -g

all: $(OUTDIR)/$(ZIPNAME).zip

clean:
	touch *.tex
	rm -rf $(OUTDIR)/$(ZIPNAME).zip $(OUTDIR)/Z.pdf $(OUTDIR)/master_announcement2.pdf

master_announcement2.tex: tables.tex tablesB.tex
	touch master_announcement2.tex

$(OUTDIR)/Z.pdf : ~/for/fortexmacs/Z.pdf
	cp $< $@

$(OUTDIR)/%.pdf : %.tex
	$(LATEXMK) $<

master_announcement2.pdf: ../foraux/master_announcement2.pdf
	cp $< $@

$(OUTDIR)/$(ZIPNAME).zip : $(OUTDIR)/Z.pdf $(OUTDIR)/master_announcement2.pdf
	cd $(OUTDIR) && zip -9 master_announcement2 Z.pdf master_announcement2.pdf && unzip -l $(ZIPNAME).zip
	git commit --allow-empty -a -m "$(COMMIT_MSG)"
	
commit:
	git commit --allow-empty -a -m "$(COMMIT_MSG)"
push: all
	git push
