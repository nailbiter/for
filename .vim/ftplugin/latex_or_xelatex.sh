#! /bin/sh
#echo "I'm alive!"
tmp_dir=/tmp
if [ -e Makefile ]
then
	#echo "Makefile"
	shift
	make $*
else
	if [ ! -d "~/for/forlatex/docs" ]; then
		mkdir ~/for/forlatex/docs
	fi
	if [ $(grep '^[^%]*usepackage{fontspec}' $1) ]
	then
		xelatex $1
	else
		if [ $(grep '^\\bibliography{'$2'}' $1) ]
		then
			pdflatex -output-directory $tmp_dir $1
			pdflatex -output-directory $tmp_dir $1
			bibtex $2
			pdflatex -output-directory $tmp_dir $1
		else
			pdflatex -output-directory $tmp_dir $1
		fi
	fi
	ln -fs $tmp_dir/$2.pdf $HOME/for/forlatex/docs
fi
