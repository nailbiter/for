.PHONY: all clean upload


#global const's
CVS=$(addsuffix .html,$(addprefix long/,eng jap) $(addprefix short/,eng jap)) short.txt
EXECPL=../../forlatex/bin/exec.pl
TEMPLATEDIR=templates
HTMLDIR=html
PERLDIR=scripts/pl
MAKEDIR=make
JSONDIR=json
CSVDIR=csv
MATHHTMLDIR=$(HTMLDIR)/math
CVGITHUBDIR=~/Downloads/nailbiter.github.io
#global var's
DATE=$(shell date)
#procedures
all: $(addprefix $(HTMLDIR)/,$(CVS)) $(addprefix $(MATHHTMLDIR)/,$(addsuffix .html,speeches publications_rev publications_unrev))
clean:
	rm -f CV.xhtml
upload: $(addprefix $(HTMLDIR)/,$(CVS))
	#rm -rf $(CVGITHUBDIR)/*
	cp -r html/* $(CVGITHUBDIR)
	cd $(CVGITHUBDIR) && git commit -a -m "$(DATE)" && git push
	#scp -r html/ inp9822058@alumni.cs.nctu.edu.tw:~/public_html/
	#scp CV_engstyle.html 
	#scp CV_files/css/CV_engstyle.css inp9822058@alumni.cs.nctu.edu.tw:~/public_html/CV_files/css

#main
include $(MAKEDIR)/main.makefile
include $(MAKEDIR)/cvmath.makefile
