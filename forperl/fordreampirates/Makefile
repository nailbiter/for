.PHONY: all


#global const's
FILENAME=/home/nailbiter/Dokumente/dreampirates/userApp/src/pages/live/LiveComponent.tsx
SCRIPTNAME=analyzeClassFile.pl 
#global var's
#procedures
all: out1.txt out2.txt

#main
out1.txt: $(FILENAME) $(SCRIPTNAME)
	./$(SCRIPTNAME) $(FILENAME) > $@

out2.txt: $(FILENAME) Makefile
	cat $(FILENAME) | grep "private\|public" > $@
