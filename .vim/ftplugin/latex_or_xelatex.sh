#! /bin/sh
echo "I'm alive!"
tmp_dir=~/for/forlatex/foraux

if [ -e Makefile ]
then
	#echo "Makefile"
	shift
	make $*
    exit
fi

test=`head -n1 "$1"`

if [  $test = '%japanese' ]
then
    latexmk -pdf -pdflatex='xelatex %O %S' -outdir=$tmp_dir $1
    echo jap
    exit
fi

if [  $test = '%simple' ]
then
    pdflatex -interaction batchmode "$1"
    echo simple
    exit
fi

if [  $test = '%platex' ]
then
    latexmk -latex='platex %O %S' -outdir=$tmp_dir $1
    fname=`echo $1 | cut -f1 -d'.'`
    echo -e "*.pdf: *.dvi\n\tdvipdfmx $<" | make -C $tmp_dir  -f - $fname.pdf
    echo platex
    exit
fi

if [  $test = '%postscript' ]
then
    latexmk -latex='latex %O %S' -outdir=foraux $1
    fname=`echo $1 | cut -f1 -d'.'`
    echo -e "$tmp_dir/$fname.ps: $tmp_dir/$fname.dvi\n\tdvips -o $tmp_dir/$fname.ps $<" | make -f - $tmp_dir/$fname.ps
    echo $test
    exit
fi

array=( $test )
if [ ${array[0]} = '%make' ]
then
    make  -f ${array[1]}
    echo make!
    exit
fi

latexmk -pdf -outdir=$tmp_dir $1
echo eng

