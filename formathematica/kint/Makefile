.PHONY: all commit push clean
.SECONDARY: script.proto.tex script_hypergeom.proto.tex

MATHEMATICA=/Applications/Mathematica.app/Contents/MacOS/MathematicaScript -script
XELATEX=latexmk -pdf -pdflatex='xelatex %O %S'

all: report.zip

commit:
	git commit -a -m "ktasks https://trello.com/c/kJBbVkAA"

%.proto.tex : %.wl
	time $(MATHEMATICA) $< > $@

%.tex : %.proto.tex
	cat $< | awk 'BEGIN{count=0}/\\end{document}/{print "%</tag"count">";f=0;count++} f; /\\begin{document}/{print "%<*tag"count">"; f=1}' \
		|sed -E 's/\text{Abs}\[([^]]+)\]/\myabs{\1}/g'|sed -E 's/\text{Gamma}/\Gamma/g'\
		|sed -E 's/\\text{GegenbauerC}/C/g'\
		|sed -E 's/\text{Hypergeometric2F1}/\;_2F_1/g' > $@
#|sed -E 's/\text{Gamma}\[([^]]+)\]/\Gamma \\mybra{\1}/g' > $@

report.pdf : report.tex script.tex
	$(XELATEX) $<

report_hypergeom.pdf : report_hypergeom.tex script_hypergeom.tex script_hypergeom.wl
	$(XELATEX) $<

report.zip: report.pdf script.wl report.tex script.tex report_hypergeom.tex report_hypergeom.pdf script_hypergeom.tex script_hypergeom.wl
	zip report $^
	unzip -l report.zip
	make commit

push:
	git push
clean:
	rm -f *.proto.tex script.tex *.pdf *.zip
