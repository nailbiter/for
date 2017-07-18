.PHONY: all commit push clean p src
.SECONDARY: 

Fs=f1.tex f10.tex f11.tex f12.tex f13.tex f14.tex f15.tex f16.tex f17.tex f18.tex f19.tex f2.tex f20.tex f21.tex f22.tex f23.tex f24.tex f25.tex f26.tex f27.tex f28.tex f29.tex f3.tex f4.tex f5.tex f6.tex f7.tex f8.tex f9.tex 

ZIPNAME=august21talk
WORKON=$(ZIPNAME)
COMMIT_PREFIX=$()
PDFS=abstract-jap
AUX=
SRCS=abstract-jap.tex $(Fs) master_extract.tex tables.tex p_bigger_than_one_image_diagram_explanation.tex p_equal_to_one_image_diagram_explanation.tex bibliography.tex

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
src:  $(OUTDIR)/$(ZIPNAME)_s.zip

$(OUTDIR)/$(ZIPNAME)_s.zip : $(addprefix $(OUTDIR)/, $(addsuffix .pdf,$(PDFS))) $(addprefix $(OUTDIR)/, $(AUX)) $(addprefix $(OUTDIR)/, $(SRCS))
	cd $(OUTDIR) && rm -f $(ZIPNAME)_s.zip && zip -9 $(ZIPNAME)_s $(addsuffix .pdf,$(PDFS)) $(AUX) $(SRCS)
	unzip -l $@
	du -hs $@
	$(GITCOMMIT)

$(OUTDIR)/$(ZIPNAME).zip : $(addprefix $(OUTDIR)/, $(addsuffix .pdf,$(PDFS))) $(addprefix $(OUTDIR)/, $(AUX))
	cd $(OUTDIR) && rm -f $(ZIPNAME).zip && zip -9 $(ZIPNAME) $(addsuffix .pdf,$(PDFS)) $(AUX)
	unzip -l $@
	du -hs $@
	$(GITCOMMIT)

$(OUTDIR)/abstract-jap.pdf : $(SRCS)
	        $(XELATEX) $<

#standard rules
%.eps: %.tex
	echo 
	latex $<
	dvips -E -o $@ $(basename $<).dvi
$(OUTDIR)/%.pdf : $(TEXMACSDIR)/%.tm
	        $(TEXMACS) --convert $< $@ --quit
$(OUTDIR)/%.tex : %.tex
	cp $< $@
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

