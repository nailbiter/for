.PHONY: all commit push clean
.SECONDARY: script.proto.tex script_hypergeom.proto.tex

MATHEMATICA=/Applications/Mathematica.app/Contents/MacOS/MathematicaScript -script
TEXMACS=/Applications/TeXmacs-1.99.4.app/Contents/MacOS/TeXmacs
LATEXMK=latexmk -pdf  -outdir=$(OUTDIR) -f -g
XELATEX=latexmk -pdf -outdir=$(OUTDIR) -pdflatex='xelatex %O %S' -f -g
OUTDIR=../foraux
COMMIT_MSG=ktasks $(WORKON)
MATHEMATICADIR=~/for/formathematica/kint
TEXMACSDIR=~/for/fortexmacs

ZIPNAME=intpaper

WORKON=https://trello.com/c/jUZS9cjM
PDFS=intpaper answer #report report_hypergeom
AUX=

all: $(OUTDIR)/$(ZIPNAME).zip

commit:
	git commit --allow-empty -a -m "$(COMMIT_MSG)"

$(OUTDIR)/%.pdf : $(TEXMACSDIR)/%.tm
	        $(TEXMACS) --convert $< $@ --quit

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
	git commit --allow-empty -a -m "$(COMMIT_MSG)"

push:
	git push
clean:
	rm -f *.proto.tex script.tex *.pdf *.zip script_hypergeom.tex
