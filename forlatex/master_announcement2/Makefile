all: ../foraux/master_announcement2.pdf master_announcement2.zip

../foraux/master_announcement2.pdf: master_announcement2.tex
	latexmk -pdf $< -outdir=../foraux

master_announcement2.zip: ../foraux/master_announcement2.pdf master_announcement2.tex
	cp ../foraux/master_announcement2.pdf .
	zip master_announcement2 master_announcement2.pdf master_announcement2.tex
	rm master_announcement2.pdf
