#!/bin/sh

#usage: revpdf.sh FILENAME PAGENUM
#e.g. revpdf FILE.pdf 30

name="1"
for i in $(seq 2 $2)
do
    name=$i,$name
done

pdfjam $1 $name -o $(basename $1 .pdf)-rev.pdf
