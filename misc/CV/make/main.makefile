$(HTMLDIR)/CV.xhtml: $(JSONDIR)/data.json \
	$(PERLDIR)/generateAux_eng.pl \
	$(addprefix $(TEMPLATEDIR)/,$(addsuffix .template.xhtml, CV snip1 snip2))
	./$(EXECPL) converter --from $(TEMPLATEDIR)/CV.template.xhtml --to $@ --data $(PERLDIR)/generateAux_eng.pl --data $(JSONDIR)/data.json TEMPLATE 2>log/$(notdir $@).log.txt
$(HTMLDIR)/CV_jap.xhtml: $(JSONDIR)/data_jap.json \
	$(PERLDIR)/generateAux_jap.pl \
	$(addprefix $(TEMPLATEDIR)/,$(addsuffix .template.xhtml, CV snip1 snip2))
	./$(EXECPL) converter --from $(TEMPLATEDIR)/CV.template.xhtml --to $@ --data $(JSONDIR)/data_jap.json \
		--data $(PERLDIR)/generateAux_jap.pl \
		TEMPLATE 2>log/$(notdir $@).log.txt

$(HTMLDIR)/CV_engstyle.html: $(HTMLDIR)/CV_files/css/mystyle2.css \
	$(addsuffix .template.html,$(addprefix $(TEMPLATEDIR)/,snipli snipsec CV_engstyle))
	./$(EXECPL) converter --from $(TEMPLATEDIR)/CV_engstyle.template.html --to $@ --data $(JSONDIR)/data.json TEMPLATE 2>log/$(notdir $@).log.txt
$(HTMLDIR)/CV_files/css/mystyle2.css: $(PERLDIR)/generateCSS.pl
	./$< > $@
