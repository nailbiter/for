.PHONY: all commit push clean p
.SECONDARY: 

ZIPNAME=pja-opq-sbo
WORKON=papers
COMMIT_PREFIX=master_announcement
PDFS=pja-opq-sbo
AUX=pja-opq-sbo.tex pja00.cls

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
p:  $(OUTDIR)/$(ZIPNAME).zip

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
$(OUTDIR)/%.pdf : $(TEXMACSDIR)/%.tm
	        $(TEXMACS) --convert $< $@ --quit
$(OUTDIR)/%.pdf : %.tex
	$(LATEXMK) $<
$(OUTDIR)/%.pdf : %-jap.tex
	$(XELATEX) $<
$(OUTDIR)/pja-opq-sbo.dvi : pja-opq-sbo.tex
	platex -output-director=$(OUTDIR) $<
$(OUTDIR)/pja-opq-sbo.pdf : $(OUTDIR)/pja-opq-sbo.dvi
	cd $(OUTDIR) && dvipdfmx pja-opq-sbo
$(OUTDIR)/%.tex : %.tex
	cp $< $@
$(OUTDIR)/%.cls : %.cls
	cp $< $@

#commands
commit:
	$(GITCOMMIT)
push:
	git push
clean:
	#rm -f *.proto.tex script.tex *.pdf *.zip script_hypergeom.tex $(OUTDIR)/$(ZIPNAME).zip
	#touch *.tex
	rm $(OUTDIR)/pja-opq-sbo.*

