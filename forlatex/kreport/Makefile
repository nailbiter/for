.PHONY: all commit push clean p
.SECONDARY: 

ZIPNAME=report76
WORKON=$(ZIPNAME) jul31--aug8
COMMIT_PREFIX=...
PDFS=report
AUX=lecture.pdf manner-jap.pdf checklist.pdf

MATHEMATICA=/Applications/Mathematica.app/Contents/MacOS/MathematicaScript -script
TEXMACS=/Applications/TeXmacs-1.99.4.app/Contents/MacOS/TeXmacs
LATEXMK=latexmk -pdf  -outdir=$(OUTDIR) -f -g
XELATEX=latexmk -pdf -outdir=$(OUTDIR) -pdflatex='xelatex %O %S' -f -g
OUTDIR=../foraux
MATHEMATICADIR=~/for/formathematica/kint
TEXMACSDIR=~/for/fortexmacs
COMMIT_MSG=$(COMMIT_PREFIX) $(WORKON)
GITCOMMIT=git commit --allow-empty -a -m "$(COMMIT_MSG)"

all: $(addprefix $(OUTDIR)/, $(addsuffix .pdf,$(PDFS))) $(addprefix $(OUTDIR)/, $(AUX))
p: $(OUTDIR)/$(ZIPNAME).zip
$(OUTDIR)/$(ZIPNAME).zip : $(addprefix $(OUTDIR)/, $(addsuffix .pdf,$(PDFS))) $(addprefix $(OUTDIR)/, $(AUX))
	cd $(OUTDIR) && rm -f $(ZIPNAME).zip && zip -9 $(ZIPNAME) $(addsuffix .pdf,$(PDFS)) $(AUX)
	unzip -l $@
	du -hs $@
	$(GITCOMMIT)


#standard rules
%.eps: %.tex
	echo 
	latex $<
	dvips -E -o $@ $(basename $<).dvi
$(OUTDIR)/kurashiki_reflection.pdf : /Users/nailbiter/fortexmacs/seminars/kurashiki_24-07-17/reflection.tm
	        $(TEXMACS) --convert $< $@ --quit

$(OUTDIR)/report.pdf : $(TEXMACSDIR)/report.tm bibliography.bib
	        $(TEXMACS) --convert $< $@ --quit
$(OUTDIR)/lecture.pdf : ../../../fortexmacs/seminars/kobayashi_19-07-17/lecture.tm
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


