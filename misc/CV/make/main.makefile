#short
$(HTMLDIR)/short/eng.html: $(JSONDIR)/data.json \
	$(PERLDIR)/generateAux_eng.pl \
	$(addprefix $(TEMPLATEDIR)/,$(addsuffix .template.xhtml, CV snip1 snip2))
	./$(EXECPL) converter --from $(TEMPLATEDIR)/CV.template.xhtml --to $@ --data $(PERLDIR)/generateAux_eng.pl --data $(JSONDIR)/data.json TEMPLATE 2>log/$(notdir $@).log.txt
$(HTMLDIR)/short/jap.html: $(JSONDIR)/data_jap.json \
	$(PERLDIR)/generateAux_jap.pl \
	$(addprefix $(TEMPLATEDIR)/,$(addsuffix .template.xhtml, CV snip1 snip2))
	./$(EXECPL) converter --from $(TEMPLATEDIR)/CV.template.xhtml --to $@ --data $(JSONDIR)/data_jap.json \
		--data $(PERLDIR)/generateAux_jap.pl \
		TEMPLATE 2>log/$(notdir $@).log.txt
#long
$(HTMLDIR)/long/eng.html: $(HTMLDIR)/CV_files/css/mystyle2.css $(JSONDIR)/data.json\
	$(addsuffix .template.html,$(addprefix $(TEMPLATEDIR)/,snipli snipsec CV_engstyle))
	./$(EXECPL) converter --from $(TEMPLATEDIR)/CV_engstyle.template.html --to $@ --data $(JSONDIR)/data.json TEMPLATE 2>log/$(notdir $@).log.txt
$(HTMLDIR)/long/jap.html: $(HTMLDIR)/CV_files/css/mystyle2.css $(JSONDIR)/data_jap.json\
	$(addsuffix .template.html,$(addprefix $(TEMPLATEDIR)/,snipli snipsec CV_engstyle))
	./$(EXECPL) converter --from $(TEMPLATEDIR)/CV_engstyle.template.html --to $@ --data $(JSONDIR)/data.json TEMPLATE 2>log/$(notdir $@).log.txt
