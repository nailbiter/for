.PHONY: all


#procedures
all: .out0.masha.txt .out1.masha.txt .out2.masha.txt
	parallel --jobs 1 diff -s {} '{= s/.out(\d+)(.*)/out$$1.txt/ =}' ::: $^

#main
.out%.masha.txt: in%.txt 1101_wallet.masha
	cat $< | 1101_wallet.masha > $@
1101_wallet.%: 1101_wallet.%.c 1101_wallet.h 1101_main.c
	gcc -o $@ -std=c99 $(filter %.c,$^)
