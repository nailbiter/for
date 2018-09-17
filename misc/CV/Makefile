.PHONY: all clean

all: CV.xhtml
clean:
	rm -f CV.xhtml

TEMPLATEDIR=templates
TEMPLATES=CV snip1 snip2
TEMPLATEEXT=template.xhtml

PERLKEYS=-I .
PERL=perl $(PERLKEYS)

CV.xhtml: generate.pl generateAux.pl\
	$(addprefix $(TEMPLATEDIR)/,$(addsuffix .$(TEMPLATEEXT),$(TEMPLATES)))
	$(PERL) $< > $@
