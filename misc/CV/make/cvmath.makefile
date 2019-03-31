$(MATHHTMLDIR)/speeches.html: $(TEMPLATEDIR)/csv2html.html $(CSVDIR)/speeches.csv
	./$(EXECPL) converter --from $< --to $@ --data  $(CSVDIR)/speeches.csv TEMPLATE 2>log/$(notdir $@).log.txt
$(MATHHTMLDIR)/publications_rev.html: $(TEMPLATEDIR)/csv2html.html $(CSVDIR)/publications_rev.csv
	./$(EXECPL) converter --from $< --to $@ --data  $(CSVDIR)/publications_rev.csv TEMPLATE
$(MATHHTMLDIR)/publications_unrev.html: $(TEMPLATEDIR)/csv2html.html $(CSVDIR)/publications_unrev.csv
	./$(EXECPL) converter --from $< --to $@ --data  $(CSVDIR)/publications_unrev.csv TEMPLATE
