.PHONY: all docs

#procedures
all: docs main
	./main
docs: git.html make.html

#main
%.html:%.md
	pandoc -s -f gfm --css=$(HOME)/for/misc/formarkdown.css -V lang=en $< -o $@
%.md: %.template.md
	tpage --interpolate $< > $@
%.o: %.c header.h
	gcc -o $@ -std=c99 $(filter %.c,$^) -c
main:main.o code.o
	gcc -o $@ $^
