.PHONY: all clean upload


#global const's
CVS=CV.xhtml CV_engstyle.html CV_jap.xhtml
TEMPLATEDIR=templates
HTMLDIR=html
PERLDIR=scripts/pl
MAKEDIR=make
JSONDIR=json
#global var's
#procedures
all: $(addprefix $(HTMLDIR)/,$(CVS)) $(addprefix $(HTMLDIR)/math/,$(addsuffix .html,speeches publications_rev publications_unrev))
clean:
	rm -f CV.xhtml
upload: $(addprefix $(HTMLDIR)/,$(CVS))
	scp -r html/ inp9822058@alumni.cs.nctu.edu.tw:~/public_html/
	#scp CV_engstyle.html 
	#scp CV_files/css/CV_engstyle.css inp9822058@alumni.cs.nctu.edu.tw:~/public_html/CV_files/css

#main
include $(MAKEDIR)/main.makefile
include $(MAKEDIR)/cvmath.makefile
