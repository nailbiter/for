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
			pdflatex $1
			pdflatex $1
			bibtex $2
			pdflatex $1
		else
			pdflatex $1
		fi
		exit
	fi
fi
