.PHONY: all


#global const's
CFLAGS=-std=c99 -O2
#procedures
all: $(addprefix .out,$(addsuffix .masha.txt,$(shell seq 0 2)))
	parallel --jobs 1 diff -s {} '{= s/.out(\d+)(.*)/out$$1.txt/ =}' ::: $^

#main
.out%.masha.txt: in%.txt 1102_enum_structure.masha
	cat $< | 1102_enum_structure.masha > $@
1102_enum_structure.%: 1102_enum_structure.%.c
	gcc -o $@ $(CFLAGS) $(filter %.c,$^)
