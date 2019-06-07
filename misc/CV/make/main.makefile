$(PERLDIR)/generate.pl:$(PERLDIR)/generateAux.pl
	touch $@
$(HTMLDIR)/CV_jap.xhtml: $(PERLDIR)/generate.pl \
	$(PERLDIR)/generateAux_jap.pl \
	$(addprefix $(JSONDIR)/,$(addsuffix .json,data_jap config_jap)) \
	$(addprefix $(TEMPLATEDIR)/,$(addsuffix .template.xhtml, CV snip1 snip2))
	./$< --plugin $(PERLDIR)/generateAux_jap.pl\
		--jsonfilename $(JSONDIR)/data_jap.json --config $(JSONDIR)/config_jap.json > $@ 2> log/CV_jap.log.txt
$(HTMLDIR)/CV.xhtml: $(PERLDIR)/generate.pl \
	$(PERLDIR)/generateAux_eng.pl \
	json/data.json json/config_def.json \
	$(addprefix $(TEMPLATEDIR)/,$(addsuffix .template.xhtml, CV snip1 snip2))
	./$< --plugin $(PERLDIR)/generateAux_eng.pl\
		--jsonfilename json/data.json --config json/config_def.json > $@ 2> log/CV.log.txt
$(HTMLDIR)/CV_engstyle.html: $(PERLDIR)/generate.pl\
	$(HTMLDIR)/CV_files/css/mystyle2.css \
	json/data.json json/config_engstyle.json \
	$(addsuffix .template.html,$(addprefix $(TEMPLATEDIR)/,snipli snipsec CV_engstyle))
	./$< --jsonfilename json/data.json --plugin $(PERLDIR)/generateAux_eng.pl --config json/config_engstyle.json > $@
$(HTMLDIR)/CV_files/css/mystyle2.css: $(PERLDIR)/generateCSS.pl
	./$< > $@
