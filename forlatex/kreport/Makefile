.PHONY: all commit push clean p
.SECONDARY: 

ZIPNAME=report79
WORKON=$(ZIPNAME) aug22--sep1
COMMIT_PREFIX=reports
PDFS=report
AUX=reading_list.pdf

MATHEMATICA=/Applications/Mathematica.app/Contents/MacOS/MathematicaScript -script
TEXMACS=/Applications/TeXmacs-1.99.4.app/Contents/MacOS/TeXmacs
LATEXMK=latexmk -pdf  -outdir=$(OUTDIR) -f -g
XELATEX=latexmk -pdf -outdir=$(OUTDIR) -pdflatex='xelatex %O %S' -f -g
OUTDIR=../foraux
MATHEMATICADIR=~/for/formathematica/kint
TEXMACSDIR=~/for/fortexmacs
LOCAL_TEXMACSDIR=~/fortexmacs
COMMIT_MSG=$(COMMIT_PREFIX) $(WORKON)
GITCOMMIT=git commit --allow-empty -a -m "$(COMMIT_MSG)"

all: $(addprefix $(OUTDIR)/, $(addsuffix .pdf,$(PDFS))) $(addprefix $(OUTDIR)/, $(AUX))
p: $(OUTDIR)/$(ZIPNAME).zip
$(OUTDIR)/$(ZIPNAME).zip : $(addprefix $(OUTDIR)/, $(addsuffix .pdf,$(PDFS))) $(addprefix $(OUTDIR)/, $(AUX))
	cd $(OUTDIR) && rm -f $(ZIPNAME).zip && zip -9 $(ZIPNAME) $(addsuffix .pdf,$(PDFS)) $(AUX)
	unzip -l $@
	du -hs $@
	$(GITCOMMIT)

#texmacs targets
$(OUTDIR)/notes.pdf : $(LOCAL_TEXMACSDIR)/seminars/tambara_16-08-17/notes.tm
	$(TEXMACS) --convert $< $@ --quit
$(OUTDIR)/reading_list.pdf : $(TEXMACSDIR)/misc/toread/reading_list.tm
	$(TEXMACS) --convert $< $@ --quit
$(OUTDIR)/normalizations.pdf : $(LOCAL_TEXMACSDIR)/misc/normalizations.tm
	$(TEXMACS) --convert $< $@ --quit

#standard rules
%.eps: %.tex
	echo 
	latex $<
	dvips -E -o $@ $(basename $<).dvi

$(OUTDIR)/report.pdf : $(TEXMACSDIR)/report.tm bibliography.bib
	        $(TEXMACS) --convert $< $@ --quit
$(OUTDIR)/%.pdf : $(TEXMACSDIR)/%.tm
	        $(TEXMACS) --convert $< $@ --quit
$(OUTDIR)/%.pdf : %.tex
	$(LATEXMK) $<
$(OUTDIR)/%.pdf : %-jap.tex
	$(XELATEX) $<

#commands
commit:
	$(GITCOMMIT)
push:
	git push
clean:
	rm -f *.proto.tex script.tex *.pdf *.zip script_hypergeom.tex $(OUTDIR)/$(ZIPNAME).zip
	touch *.tex
