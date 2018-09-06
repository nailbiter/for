.PHONY: all

all: CV.xhtml

TEMPLATEDIR=templates
TEMPLATES=CV snip1 snip2
TEMPLATEEXT=template.xhtml

CV.xhtml: generate.pl \
	$(addprefix $(TEMPLATEDIR)/,$(addsuffix .$(TEMPLATEEXT),$(TEMPLATES)))
	perl $< > $@
