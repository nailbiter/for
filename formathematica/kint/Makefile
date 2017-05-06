.PHONY: all commit push clean
.SECONDARY: script.proto.tex

MATHEMATICA=/Applications/Mathematica.app/Contents/MacOS/MathematicaScript -script
XELATEX=latexmk -pdf -pdflatex='xelatex %O %S'

all: report.zip

commit:
	git commit -a -m "ktasks https://trello.com/c/kJBbVkAA"

%.proto.tex : %.wl
	$(MATHEMATICA) $< > $@

%.tex : %.proto.tex
	cat $< | awk 'BEGIN{count=0}/\\end{document}/{print "%</tag"count">";f=0;count++} f; /\\begin{document}/{print "%<*tag"count">"; f=1}' \
		|sed -E 's/\text{Abs}\[([^]]+)\]/\myabs{\1}/g'|sed -E 's/\text{Gamma}/\Gamma/g' > $@
#|sed -E 's/\text{Gamma}\[([^]]+)\]/\Gamma \\mybra{\1}/g' > $@

template.pdf : template.tex script.tex
	$(XELATEX) $<

report.zip: template.pdf script.wl template.tex script.tex
	cp template.pdf report.pdf
	zip report report.pdf template.tex script.tex script.wl
	unzip -l report.zip

push:
	git push
clean:
	rm *.proto.tex script.tex
