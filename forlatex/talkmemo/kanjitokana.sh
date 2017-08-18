#!/bin/sh

var=`echo $1 | mecab|sed '$ d'|awk -F , '{print $8;}'|tr -d '\n' `
echo \\kana{$1}{$var}
