#! /bin/sh
if [ -e Makefile ]
then
	#echo "Makefile"
	shift
	make $*
else
#echo "g++"
	g++ -g -Wall -o $1.exe $1 -lm && ./$1.exe
	#rm $1.exe
#set makeprg=g++\ -o\ %<.exe\ %\ &&\ ./%<.exe
fi
