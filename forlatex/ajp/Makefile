.PHONY: all clean push commit

OUTDIR=../foraux
COMMIT_MSG="ajp"
LATEXMK=latexmk -g -f -pdf -pdflatex='xelatex %O %S' -outdir=$(OUTDIR)

all: $(OUTDIR)/motions.pdf

clean:
	touch *.tex
	rm -rf $(OUTDIR)/motions.pdf

$(OUTDIR)/%.pdf : %.tex
	$(LATEXMK) $<
	git commit --allow-empty -a -m $(COMMIT_MSG)
	
commit:
	git commit --allow-empty -a -m $(COMMIT_MSG)
push: all
	git push
