.PHONY: all commit push clean
.SECONDARY: 

ZIPNAME=RIMSslides
WORKON=https://trello.com/c/qQLQN4Rn method1ShowWhy3F2SatisfiesWhipple
COMMIT_PREFIX=tex RIMStalk
PDFS=slides speech answer trials rims-questions reflection
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
#all: $(OUTDIR)/slides.pdf $(OUTDIR)/speech.pdf
$(OUTDIR)/$(ZIPNAME).zip : $(addprefix $(OUTDIR)/, $(addsuffix .pdf,$(PDFS))) $(addprefix $(OUTDIR)/, $(AUX))
	cd $(OUTDIR) && rm -f $(ZIPNAME).zip && zip -9 $(ZIPNAME) $(addsuffix .pdf,$(PDFS)) $(AUX)
	unzip -l $@
	du -hs $@
	$(GITCOMMIT)

#diagrams
DIAGRAMS=big W S DF TV Sfull Wfull TVfull DFfull
$(OUTDIR)/%.intdep.tex : %.intdep.tex
	cp -f $< $@

$(OUTDIR)/slides.pdf : slides.tex diagram.tex $(addprefix $(OUTDIR)/,$(addsuffix .intdep.tex,$(DIAGRAMS)))
	$(XELATEX) $<

$(OUTDIR)/trials.pdf : trials.pdf
	cp -f $< $@

trials.pdf : trials.numbers

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

