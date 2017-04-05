.PHONY: all clean
all: ../foraux/master_announcement2.pdf master_announcement2.zip

clean:
	rm -rf *.zip *.pdf

master_announcement2.tex: tables.tex
	touch master_announcement2.tex

../foraux/master_announcement2.pdf: master_announcement2.tex
	latexmk -pdf $< -outdir=../foraux

Z.pdf : ~/for/fortexmacs/Z.pdf
	cp $< $@

master_announcement2.pdf: ../foraux/master_announcement2.pdf
	cp $< $@

master_announcement2.zip: master_announcement2.pdf master_announcement2.tex Z.pdf
	zip master_announcement2 $^
	unzip -l $@
