.PHONY: all

#var's
ALPH=A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 
PYTHON=/Users/oleksiileontiev/anaconda3/bin/python3

all: ohne_plural.txt

Makefile.generated: downloader.pl
	perl $< --method makefile > $@

include Makefile.generated

ohne_plural.txt: ohne_plural.pref.txt $(addsuffix .html,$(ALPH)) parseandgen.py
	cat ohne_plural.pref.txt > $@
	$(PYTHON) parseandgen.py $(addsuffix .html, $(ALPH)) 1>>$@ 2>tmp/err.txt
