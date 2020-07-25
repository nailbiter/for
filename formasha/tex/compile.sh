#!/bin/sh

latexmk -pdf  -outdir=. -pdflatex="pdflatex -shell-escape %O %S" -f -g slides.tex
