.PHONY: all mf clean

#global const's
MAKEFILEDIR=makefiles
EXECPL=../forlatex/bin/exec.pl
TEMPLATEDIR=templates
JSONDIR=json
#global var's
DATELINE=$(YEAR)-$(MONTH)-$(DATE)
#procedures
all: $(MAKEFILEDIR)/generated.makefile
	make -f $<
mf: $(MAKEFILEDIR)/generated.makefile
clean:
	rm -rf pdfs/bookmark_*.pdf
	echo "{}" > /private/tmp/IbPuSbZRToIMghbZNoRk.json

#main
$(MAKEFILEDIR)/generated.makefile: $(TEMPLATEDIR)/generated.template.makefile $(JSONDIR)/dates.json $(JSONDIR)/consts.json
	./$(EXECPL) converter --from $< --to $@ --data $(JSONDIR)/dates.json --data $(JSONDIR)/consts.json TEMPLATE 2>log/$(notdir $@).log.txt
