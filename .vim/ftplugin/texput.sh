#!/bin/sh

{
texname=.texput.tex
texnamenew=/tmp/texput.tex
echo '\\documentclass{article}' > $texnamenew
echo '\\usepackage{breqn}' >> $texnamenew
echo '\\begin{document}' >> $texnamenew
cat $1/$texname >> $texnamenew
echo '\end{document}' >> $texnamenew
pdflatex --interaction batchmode --output-directory /tmp $texnamenew
} > /dev/null
