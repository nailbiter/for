.PHONY: all


#global const's
BOGUS=HHOOMMEE
MAINCLASS=App
FLAGDIR=flags
include Makefile.sources
#global var's
RUN=java -classpath $(subst $(BOGUS),$(shell echo ~),$(shell cat cp.txt)) $(MAINCLASS)
#procedures
all: $(FLAGDIR)/compiled.txt cp.txt
	$(RUN)

#main
$(FLAGDIR)/compiled.txt: $(SOURCES)
	mvn compile
	mkdir -p $(dir $@)
	touch $@
cp.txt: src/main/pl/parseCp.pl pom.xml
	mvn exec:exec -Dexec.executable="echo" -Dexec.args="%classpath" | perl  $< --bogus $(BOGUS) > $@
