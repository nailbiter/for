.PHONY: all clean upload

all: CV.xhtml CV_files/css/mystyle2.css CV_engstyle.html
clean:
	rm -f CV.xhtml

TEMPLATEDIR=templates
TEMPLATES=CV snip1 snip2
TEMPLATEEXT=template.xhtml

PERLKEYS=-I .
PERL=perl $(PERLKEYS)

CV.xhtml: generate.pl generateAux.pl json/data.json json/config_def.json\
	$(addprefix $(TEMPLATEDIR)/,$(addsuffix .$(TEMPLATEEXT),$(TEMPLATES)))
	$(PERL) $< --jsonfilename json/data.json --config json/config_def.json > $@
CV_files/css/mystyle2.css: generateCSS.pl
	$(PERL) $< > $@
CV_engstyle.html: generate.pl generateAux.pl\
	json/data.json json/config_engstyle.json \
	$(addsuffix .template.html,$(addprefix $(TEMPLATEDIR)/,snipli snipsec CV_engstyle))
	$(PERL) $< --jsonfilename json/data.json --config json/config_engstyle.json > $@
	make upload
upload:
	scp CV_engstyle.html inp9822058@alumni.cs.nctu.edu.tw:~/public_html/CV.html
	scp CV_files/css/CV_engstyle.css inp9822058@alumni.cs.nctu.edu.tw:~/public_html/CV_files/css
