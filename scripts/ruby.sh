#!/bin/sh

line=`cat /dev/stdin`
echo '\\ruby'{$line}{`echo $line|~/bin/kakasi -i utf8 -JH`}
