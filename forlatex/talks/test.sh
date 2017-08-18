#! /bin/sh

echo -e "test1.tex : test.tm\n
	\t/Applications/TeXmacs-1.99.4.app/Contents/MacOS/TeXmacs --convert test.tm test1.tex --quit\n
	\tperl -i.orig -pe  's/\\{\\\\comment\\{<([^>]*)>\\}\}/\\%<\\1>\\n/g' $@" | make -f -  test1.tex

echo "hi"
