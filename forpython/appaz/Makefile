.PHONY: all

PYTHON=~/anaconda3/bin/python
all: images.zip
	unzip -l $<
	du -hs $<

images.zip:forappaz.py settings.json
	mkdir -p images
	rm -rf images/*
	$(PYTHON) $^
	zip -r images images
