.PHONY: all clean push commit

ZIPNAME=fouryearseminar
COMMIT_MSG=tex fouryearseminar
PDFS=jun7

MATHEMATICA=/Applications/Mathematica.app/Contents/MacOS/MathematicaScript -script
TEXMACS=/Applications/TeXmacs-1.99.4.app/Contents/MacOS/TeXmacs
LATEXMK=latexmk -pdf  -outdir=$(OUTDIR) -f -g
XELATEX=latexmk -pdf -outdir=$(OUTDIR) -pdflatex='xelatex %O %S' -f -g
OUTDIR=../foraux
MATHEMATICADIR=~/for/formathematica/kint
TEXMACSDIR=~/for/fortexmacs/4yearseminar
GIT=git add $(addsuffix .tex, $(PDFS)) *.bib Makefile && git commit --allow-empty -a -m "$(COMMIT_MSG)"

all: $(OUTDIR)/$(ZIPNAME).zip
#all: $(TEXMACSDIR)/jun7d1.eps

clean:
	touch *.tex
	rm -rf $(OUTDIR)/$(ZIPNAME).zip $(OUTDIR)/Z.pdf $(OUTDIR)/master_announcement2.pdf

$(OUTDIR)/%.pdf : %.tex
	$(LATEXMK) $<
	$(GIT)

$(OUTDIR)/jun7.pdf : $(TEXMACSDIR)/jun7.tm $(TEXMACSDIR)/jul7d1.png
	$(TEXMACS) --convert $< $@ --quit
$(OUTDIR)/may31.pdf : $(TEXMACSDIR)/may31.tm $(TEXMACSDIR)/may31d1.png
	$(TEXMACS) --convert $< $@ --quit

$(OUTDIR)/may24.pdf : $(TEXMACSDIR)/may24.tm $(TEXMACSDIR)/may24d1.png $(TEXMACSDIR)/may24d2.png
	$(TEXMACS) --convert $< $@ --quit

$(TEXMACSDIR)/%.png: %.tex
	echo 
	latex -output-directory=$(dir $@) $<
	dvipng $(basename $@).dvi -o $@

$(TEXMACSDIR)/%.eps: %.tex
	echo 
	latex $<
	dvips -E -o $@ $(basename $<).dvi

$(OUTDIR)/%.pdf : $(TEXMACSDIR)/4yearseminar/%.tm
	$(TEXMACS) --convert $< $@ --quit

$(OUTDIR)/$(ZIPNAME).zip : $(addprefix $(OUTDIR)/,$(addsuffix .pdf, $(PDFS)))	
	cd $(OUTDIR) && rm -f $(ZIPNAME).zip && zip -9 $(ZIPNAME) $(addsuffix .pdf, $(PDFS)) && unzip -l $(ZIPNAME).zip

commit:
	$(GIT)
push: all
	git push
