.PHONY: all commit push

MATHEMATICA=/Applications/Mathematica.app/Contents/MacOS/MathematicaScript -format XML -script

all:
	$(MATHEMATICA) script.wl

commit:
	git commit -a -m "ktasks https://trello.com/c/kJBbVkAA"

push:
	git push
