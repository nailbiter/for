.PHONY: all docs

#procedures
all: docs
docs: git.html make.html

#main
%.html:%.md
	pandoc -s -f gfm --css=$(HOME)/for/misc/formarkdown.css -V lang=en $< -o $@
