.PHONY: all clean

all: CV.xhtml CV_files/css/mystyle2.css
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
