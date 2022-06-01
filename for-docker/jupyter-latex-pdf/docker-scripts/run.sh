#!/bin/sh
TEXFILE_FN=/tmp/notebook.tex

jupyter-nbconvert notebooks/notebook.ipynb --to latex --stdout > $TEXFILE_FN
DIR=`dirname $TEXFILE_FN`
BASE=`basename $TEXFILE_FN`
cd $DIR
#echo $DIR
#echo $BASE
python3 /tex-japanese-postprocess.py $TEXFILE_FN
xelatex $BASE
#pwd
#ls
cp -f notebook.pdf /pdfs/notebook.pdf
