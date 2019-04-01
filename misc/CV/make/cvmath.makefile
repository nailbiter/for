$(MATHHTMLDIR)/speeches.html: $(TEMPLATEDIR)/speeches.html $(CSVDIR)/speeches.csv
	./$(EXECPL) converter --from $< --to $@ --data  $(CSVDIR)/$(notdir $(basename $@)).csv TEMPLATE 2>log/$(notdir $@).log.txt
$(MATHHTMLDIR)/publications_rev.html: $(TEMPLATEDIR)/publications_rev.html $(CSVDIR)/publications_rev.csv
	./$(EXECPL) converter --from $< --to $@ --data  $(CSVDIR)/$(notdir $(basename $@)).csv TEMPLATE 2>log/$(notdir $@).log.txt
$(MATHHTMLDIR)/publications_unrev.html: $(TEMPLATEDIR)/publications_unrev.html $(CSVDIR)/publications_unrev.csv
	./$(EXECPL) converter --from $< --to $@ --data  $(CSVDIR)/$(notdir $(basename $@)).csv TEMPLATE 2>log/$(notdir $@).log.txt
