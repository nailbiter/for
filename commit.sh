cd ~/for
git add forlatex/*.tex
git add forlatex/*.jpg
git add forlatex/*.sty
git add forlatex/*.png

git add gospels/*.tex
git add gospels/*.txt
git add gospels/*.scm

git add forscheme/*.scm
git add forscheme/*.exe

git add tests/*.txt

git add tests/server_side/*.c
git add tests/server_side/*.cpp

git add forplots/*.gplot
git add forplots/*.dat

git add proj_JSFC/*.js
git add proj_JSFC/*.html

git add scripts/*.sh

./scripts/export_lyxs.sh
exit;#FIXME

git commit -a -m "Commit"
git push origin master

if [ $1 == "push" ]
then
	ssh nailbiter@insomnia247.nl "cd for && git pull"
	exit
fi
