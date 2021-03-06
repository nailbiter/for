.PHONY: all commit push clean p
.SECONDARY: script.proto.tex script_hypergeom.proto.tex
#.INTERMEDIATE: rimspic2.scm rimspic2.tex

MATHEMATICA=/Applications/Mathematica.app/Contents/MacOS/MathematicaScript -script
TEXMACS=/Applications/TeXmacs-1.99.4.app/Contents/MacOS/TeXmacs
LATEXMK=latexmk -pdf  -outdir=$(OUTDIR) -f -g
XELATEX=latexmk -pdf -outdir=$(OUTDIR) -pdflatex='xelatex %O %S' -f -g
OUTDIR=../foraux
COMMIT_MSG=ktasks $(WORKON)
MATHEMATICADIR=~/for/formathematica
TEXMACSDIR=~/for/fortexmacs
COMMIT_MSG=$(COMMIT_PREFIX) $(WORKON)
GITCOMMIT=git commit --allow-empty -a -m "$(COMMIT_MSG)"

PDFS=intpaper answer master_streamline  #report report_hypergeom
ZIPNAME=intpaper
AUX=sobolev_thm.pdf intpaper.tex erdelyi.pdf andrews.pdf intpaper.nb
include Makefile.conditions

WORKON=https://trello.com/c/jUZS9cjM

INTPAPER_SOURCES=$(addsuffix .tex, intpaper bibliography intpaperdep sec10 secLimitingCase example_Warnaar example_Tarasov example_DF example_Selberg conditions sobolev pfOfCol rimspic rimspic2)

all: $(addprefix $(OUTDIR)/, $(addsuffix .pdf,$(PDFS))) #$(OUTDIR)/ja.pdf
p: $(OUTDIR)/$(ZIPNAME).zip

$(OUTDIR)/%.nb : $(MATHEMATICADIR)/%.nb
	cp -f $< $@

$(OUTDIR)/intpaper.tex : $(INTPAPER_SOURCES)
	latexpand -o $@ $<
$(OUTDIR)/letter.pdf : letter.tex
	$(XELATEX) $<
commit:
	git commit --allow-empty -a -m "$(COMMIT_MSG)"

#conditions.tex : conditions.scm Makefile.conditions
#	guile -s $< > $@ $(CONDITIONS)

$(OUTDIR)/%.pdf : $(TEXMACSDIR)/%.tm
	        $(TEXMACS) --convert $< $@ --quit
$(OUTDIR)/intpaper.pdf : $(INTPAPER_SOURCES)
	latexmk -g -pdf -pdflatex='pdflatex --synctex=1 -shell-escape -enable-pipes %O %S' -outdir=$(OUTDIR) $<
#$(OUTDIR)/intpaper.pdf : $(TEXMACSDIR)/intpaper.tm $(TEXMACSDIR)/intpaper.bib $(TEXMACSDIR)/intdep.jpg
#	        $(TEXMACS) --convert $< $@ --quit
$(OUTDIR)/intdep.pdf : intdep.tex
	latexmk -g -pdf -pdflatex='pdflatex -shell-escape -enable-pipes %O %S' -outdir=$(OUTDIR) $<
$(TEXMACSDIR)/intdep.jpg : $(OUTDIR)/intdep.pdf
	$(error rebuild $@ from $^)

%.proto.tex : $(MATHEMATICADIR)/%.wl
	{ time $(MATHEMATICA) $< > $@ ; } 2> $(basename $<).time.txt

%.tex : %.proto.tex
	cat $< | awk 'BEGIN{count=0}/\\end{document}/{print "%</tag"count">";f=0;count++} f; /\\begin{document}/{print "%<*tag"count">"; f=1}' \
		|sed -E 's/\text{Abs}\[([^]]+)\]/\myabs{\1}/g'|sed -E 's/\text{Gamma}/\Gamma/g'\
		|sed -E 's/\\text{GegenbauerC}/C/g'\
		|sed -E 's/\text{Hypergeometric2F1}/\;_2F_1/g' > $@
#|sed -E 's/\text{Gamma}\[([^]]+)\]/\Gamma \\mybra{\1}/g' > $@

$(OUTDIR)/report.pdf : report.tex script.tex
	$(XELATEX) $<

$(OUTDIR)/report_hypergeom.pdf : report_hypergeom.tex script_hypergeom.tex $(MATHEMATICADIR)/script_hypergeom.wl
	head -n 2 script_hypergeom.time.txt|tail -n1 > script_hypergeom.time2.txt
	$(XELATEX) $<

$(OUTDIR)/$(ZIPNAME).zip: $(addprefix $(OUTDIR)/, $(addsuffix .pdf,$(PDFS))) $(addprefix $(OUTDIR)/, $(AUX))
	cd $(OUTDIR) && rm -f $(ZIPNAME).zip && zip -9 $(ZIPNAME) $(addsuffix .pdf,$(PDFS)) $(AUX)
	cd $(OUTDIR) && unzip -l $(ZIPNAME).zip
	du -hs $@
	rm -rf $(OUTDIR)/intpaper.tex
	$(GITCOMMIT)

push:
	git push
clean:
	rm -f *.proto.tex script.tex *.pdf *.zip script_hypergeom.tex
rimspic2.tex : rimspic2.scm macro.scm
	guile -s $< > $@
rimspic2.scm : rimspic2.proto.tex preprocessor.scm
	guile -s preprocessor.scm $< > $@
