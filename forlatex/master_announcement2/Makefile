.PHONY: all clean push commit p

OUTDIR=../foraux
ZIPNAME=master_announcement2
COMMIT_MSG=tex master_announcement2
COMMIT_MSG += $(WORKON)
TEXMACS=/Applications/TeXmacs-1.99.4.app/Contents/MacOS/TeXmacs
LATEXMK=latexmk -pdf  -outdir=$(OUTDIR) -f -g
TEXMACSDIR=~/for/fortexmacs

WORKON=https://trello.com/c/jUZS9cjM
PDFS=Z master_announcement2 #howetan_diagrams answer
AUX=master_announcement2_plain.tex

all: $(addprefix $(OUTDIR)/, $(addsuffix .pdf,$(PDFS))) $(addprefix $(OUTDIR)/, $(AUX)) $(OUTDIR)/master_announcement2_plain.tex
p: $(OUTDIR)/$(ZIPNAME).zip

clean:
	touch *.tex
	rm -rf $(OUTDIR)/$(ZIPNAME).zip $(addprefix $(OUTDIR)/, $(addsuffix .pdf,$(PDFS)))

$(OUTDIR)/Z.pdf : $(TEXMACSDIR)/Z.tm
	$(TEXMACS) --convert $< $@ --quit
master_announcement2.tex: tables.tex tablesB.tex
	touch master_announcement2.tex

$(OUTDIR)/master_announcement2_plain.tex : master_announcement2.tex tables.tex useless.tex
	latexpand $< --output $@
	cd $(OUTDIR) && pdflatex master_announcement2_plain.tex

%.eps: %.tex howetan_diagrams.tex
	latex $<
	dvips -E -o $@ $(basename $<).dvi

$(OUTDIR)/answer.pdf : ~/for/fortexmacs/answer.tm howetan2d32m.eps howetan2d31m.eps
	$(TEXMACS) --convert $< $@ --quit

$(OUTDIR)/%.pdf : ~/for/fortexmacs/%.tm
	$(TEXMACS) --convert $< $@ --quit

$(OUTDIR)/%.pdf : %.tex
	$(LATEXMK) $<

$(OUTDIR)/$(ZIPNAME).zip : $(addprefix $(OUTDIR)/, $(addsuffix .pdf,$(PDFS))) $(addprefix $(OUTDIR)/, $(AUX))
	cd $(OUTDIR) && rm -f $(ZIPNAME).zip && zip -9 $(ZIPNAME) $(addsuffix .pdf,$(PDFS)) $(AUX)
	unzip -l $@
	du -hs $@
	git commit --allow-empty -a -m "$(COMMIT_MSG)"
	
commit:
	git commit --allow-empty -a -m "$(COMMIT_MSG)"

push: all
	git push
