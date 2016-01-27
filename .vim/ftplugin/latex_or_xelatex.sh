#! /bin/sh
#echo "I'm alive!"
tmp_dir=foraux

if [ -e Makefile ]
then
	#echo "Makefile"
	shift
	make $*
else
	if [ $(grep 'xeCJK\|fontspec' $1) ]
    then
        latexmk -pdf -pdflatex='xelatex %O %S' -outdir=foraux $1
    else
        latexmk -pdf -outdir=$tmp_dir $1
    fi
fi
