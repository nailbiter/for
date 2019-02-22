.PHONY: all


#global const's
PERL=perl
PERLDIR=scripts/pl
FLAGDIR=flags
#global var's
#procedures

#main
all: $(addprefix $(FLAGDIR)/,$(addsuffix .txt,speeches publications_rev publications_unrev))

$(FLAGDIR)/%.txt : %.html $(PERLDIR)/upload.pl settings.json 
	./$(PERLDIR)/upload.pl settings.json $<
	mkdir -p $(dir $@)
	touch $@
