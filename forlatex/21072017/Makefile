.PHONY: all commit push clean
.SECONDARY: 

ZIPNAME=RIMSslides
WORKON=https://trello.com/c/qQLQN4Rn
COMMIT_PREFIX=tex RIMStalk
PDFS=slides speech
AUX=
#https://previews.123rf.com/images/aelita2/aelita21008/aelita2100800038/7524873-antique-page-wanted-dead-or-alive-vintage-wanted-poster-Stock-Photo.jpg

MATHEMATICA=/Applications/Mathematica.app/Contents/MacOS/MathematicaScript -script
TEXMACS=/Applications/TeXmacs-1.99.4.app/Contents/MacOS/TeXmacs
LATEXMK=latexmk -pdf  -outdir=$(OUTDIR) -f -g
XELATEX=latexmk -pdf -outdir=$(OUTDIR) -pdflatex='xelatex %O %S' -f -g
OUTDIR=../foraux
MATHEMATICADIR=~/for/formathematica/kint
TEXMACSDIR=~/for/fortexmacs
COMMIT_MSG=$(COMMIT_PREFIX) $(WORKON)
GITCOMMIT=git commit --allow-empty -a -m "$(COMMIT_MSG)"

all: $(OUTDIR)/$(ZIPNAME).zip
$(OUTDIR)/$(ZIPNAME).zip : $(addprefix $(OUTDIR)/, $(addsuffix .pdf,$(PDFS))) $(addprefix $(OUTDIR)/, $(AUX))
	cd $(OUTDIR) && rm -f $(ZIPNAME).zip && zip -9 $(ZIPNAME) $(addsuffix .pdf,$(PDFS)) $(AUX)
	unzip -l $@
	du -hs $@
	$(GITCOMMIT)

#intdep.tex: diagram.scm
#	guile --no-auto-compile -e intdepdiag $< > $@
#slides.tex : 
#	touch $@
$(OUTDIR)/slides.pdf : slides.tex diagram.tex $(OUTDIR)/intdep.tex
	$(XELATEX) $<
diagram.tex: diagram.scm
	guile -e symbreakdiag $< > $@

#standard rules
%.eps: %.tex
	echo 
	latex $<
	dvips -E -o $@ $(basename $<).dvi
$(OUTDIR)/%.pdf : $(TEXMACSDIR)/%.tm
	        $(TEXMACS) --convert $< $@ --quit
$(OUTDIR)/%.pdf : %.tex
	$(XELATEX) $<

#commands
commit:
	$(GITCOMMIT)
push:
	git push
clean:
	rm -f *.proto.tex script.tex *.pdf $(OUTDIR)/$(ZIPNAME).zip $(addprefix $(OUTDIR)/, $(addsuffix .pdf,$(PDFS))) $(addprefix $(OUTDIR)/, $(AUX))
	touch *.tex

