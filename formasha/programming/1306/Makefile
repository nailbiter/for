.PHONY: all


#global const's
CFLAGS=-std=c99
STEM_NAME=Chocolate_Delivery
STEM_NUM=1306
#procedures
all: $(addprefix .out,$(addsuffix .txt,$(shell seq 0 1)))
	parallel --jobs 1 diff -s {} '{= s/.out(\d+)(.*)/out$$1.txt/ =}' ::: $^

#main
.out%.txt: in%.txt $(STEM_NUM)_$(STEM_NAME)
	cat $< | ./$(STEM_NUM)_$(STEM_NAME) > $@
$(STEM_NUM)_$(STEM_NAME): $(STEM_NUM)_$(STEM_NAME).c $(STEM_NUM)_main.c
	gcc -o $@ $(CFLAGS) $(filter %.c,$^)
