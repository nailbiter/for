#! /bin/sh
#echo "I'm alive!"
tmp_dir=foraux

if [ -e Makefile ]
then
	#echo "Makefile"
	shift
	make $*
    exit
fi

test=`head -n1 $1`
if [  $test = '%japanese' ]
then
    latexmk -pdf -pdflatex='xelatex %O %S' -outdir=foraux $1
    echo jap
    exit
fi

latexmk -pdf -outdir=$tmp_dir $1
echo eng
