#! /bin/sh
#echo "I'm alive!"
tmp_dir=foraux

if [ -e Makefile ]
then
	#echo "Makefile"
	shift
	make $*
else
	if [ ! -d "$tmp_dir" ]; then
		mkdir $tmp_dir
	fi
	if [ ! -d "~/for/forlatex/docs" ]; then
		mkdir ~/for/forlatex/docs
	fi

	if [ $(grep '^[^%]*usepackage{fontspec}' $1) ]
	then
		xelatex $1
	else
		if [ $(grep -c '^\\bibliography' $1) -ne 0 ]
		then
			echo "bibtex"
			#awk -e "/[0-9]+\.[0-9]*/ { print }" $1
			#bibtex `cat $1 | sed -nr 's/\\bibliography\{(.*)\}/\1/p'`
			#exit
			pdflatex -halt-on-error -output-directory $tmp_dir $1
			bibtex $tmp_dir/$2
			pdflatex -halt-on-error -output-directory $tmp_dir $1
			pdflatex -halt-on-error -output-directory $tmp_dir $1
		else
			echo "no bibtex"
			pdflatex -output-directory $tmp_dir $1
		fi
	fi
	ln -fs $tmp_dir/$2.pdf $HOME/for/forlatex/docs
fi
