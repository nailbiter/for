.PHONY: all clean
TEXMACS=/Applications/TeXmacs-1.99.4.app/Contents/MacOS/TeXmacs
GIT=git commit --allow-empty -a -m

INTPAPER_COMMIT=https://trello.com/c/bQ1unvzG

all: intpaper.zip

%.pdf : %.tm
	$(TEXMACS) --convert $< $@ --quit

intpaper.zip: intpaper.pdf cor107599.pdf answer.pdf
	rm -rf intpaper.zip
	zip -9 intpaper $^
	$(GIT) "intpaper $(INTPAPER_COMMIT)"
	unzip -l intpaper.zip

clean:
	rm -rf *.zip
	#rm -rf *.pdf
