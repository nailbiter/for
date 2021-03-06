#! /bin/sh
echo "I'm alive!"
tmp_dir=~/for/forlatex/foraux

if [ -e `dirname $1`/Makefile ]
then
	echo "Makefile"
    echo $1
    make -C `dirname $1`
	#shift
	#make $*
    exit
fi

test=`head -n1 "$1"`

if [  $test = '%japanese' ]
then
    latexmk -pdf -pdflatex='xelatex %O %S' -outdir=$tmp_dir $1
    cd $tmp_dir
    zip -9 $2 $2.pdf
    unzip -l $2.zip
    echo jap
    exit
fi

if [  $test = '%simple' ]
then
    pdflatex -interaction batchmode '$1'
    echo simple
    exit
fi

if [  $test = '%platex' ]
then
    latexmk -latex='platex -shell-escape -enable-pipes %O %S' -outdir=$tmp_dir $1
    fname=`echo $1 | cut -f1 -d'.'`
    echo fname = $fname
    echo 1 = $1
    echo -e "$fname.pdf: $fname.dvi\n\tdvipdfmx $<" | make -C $tmp_dir  -f - $fname.pdf
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

if [  $test = '%classic' ]
then
    latex  -output-directory=$tmp_dir $1
    fname=`echo $1 | cut -f1 -d'.'`
    echo -e "$tmp_dir/$fname.pdf: $tmp_dir/$fname.dvi\n\tdvipdf $< $tmp_dir/$fname.pdf " | make -f - $tmp_dir/$fname.pdf
    echo classic
    exit
fi

array=( $test )
if [ ${array[0]} = '%make' ]
then
    make  -f ${array[1]}
    echo make!
    exit
fi

if [ ${array[0]} = '%texmacs' ]
then
    #latexmk -pdf -outdir=$tmp_dir $1
    echo "textmacs!"
    fname=${array[1]}
    fname_tex=`echo $fname | cut -f1 -d'.' `
    fname_tex=."${fname_tex##*/}".tex
    echo -e ".PHONY: all\nall : $1 $fname_tex\n\tlatexmk -pdf -outdir=$tmp_dir $1\n$fname_tex : $fname\n\t/Applications/TeXmacs-1.99.4.app/Contents/MacOS/TeXmacs --convert $fname $fname_tex --quit\n\tperl -i.orig -pe " "'"'s/\\{\\\\comment\\{<([^>]*)>\\}\}/\\%<\\1>\\n/g'"'" " $fname_tex"|make -f -  all
    exit
fi

if [ ${array[0]} = '%mypipes' ]
then
    latexmk -g -pdf -pdflatex='pdflatex -shell-escape -enable-pipes %O %S' -outdir=$tmp_dir $1
    echo mypipes
    exit
fi

    latexmk -pdf -outdir=foraux $1

echo eng
