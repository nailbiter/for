.PHONY: all

PYTHON=~/anaconda3/bin/python
all: images.zip
	unzip -l $<
	du -hs $<

images.zip: forappaz.py settings.json
	mkdir -p $(basename $@)
	rm -rf $(basename $@)/*
	$(PYTHON) $^
	zip -r $(basename $@) $(basename $@)
