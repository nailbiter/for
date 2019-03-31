.PHONY: all


#global const's
PERL=perl
PERLDIR=scripts/pl
FLAGDIR=flags
HTMLDIR=html
CSVDIR=csv
#global var's
#procedures

#main
all: $(addprefix $(FLAGDIR)/,$(addsuffix .txt,speeches publications_rev publications_unrev)) \
	$(addprefix $(HTMLDIR)/,$(addsuffix .html,speeches publications_rev publications_unrev)) \

$(FLAGDIR)/%.txt : $(HTMLDIR)/%.html $(PERLDIR)/upload.pl settings.json 
	./$(PERLDIR)/upload.pl settings.json $<
	mkdir -p $(dir $@)
	touch $@
$(HTMLDIR)/%.html: $(CSVDIR)/%.csv $(PERLDIR)/converter.pl
	mkdir -p $(dir $@)
	./$(PERLDIR)/converter.pl $< $@
