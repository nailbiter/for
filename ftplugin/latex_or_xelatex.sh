#! /bin/sh
echo "I'm alive!"
if [ -e Makefile ]
then
	#echo "Makefile"
	shift
	make $*
else
	if [ $(grep '^[^%]*usepackage{fontspec}' $1) ]
	then
		xelatex $1
	else
		if [ $(grep '^\\bibliography{'$2'}' $1) ]
		then
			pdflatex -output-directory ~/for/forlatex/foraux $1
			pdflatex -output-directory ~/for/forlatex/foraux $1
			bibtex $2
			pdflatex -output-directory ~/for/forlatex/foraux $1
		else
			pdflatex -output-directory ~/for/forlatex/foraux $1
		fi
			ln -s $HOME/for/forlatex/foraux/$2.pdf $HOME/for/forlatex
		exit
	fi
fi
