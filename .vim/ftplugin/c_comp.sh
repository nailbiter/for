#! /bin/sh
if [ -e Makefile ]
then
	#echo "Makefile"
	shift
	make $*
else
#echo "g++"
	flags="-lm -lgmp -lpthread"
	g++ -g -Wall -o $1.exe $1 $flags && ./$1.exe
	#rm $1.exe
#set makeprg=g++\ -o\ %<.exe\ %\ &&\ ./%<.exe
fi
