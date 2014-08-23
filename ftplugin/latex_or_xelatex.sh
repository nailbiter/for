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
		pdflatex $1
	fi
fi
