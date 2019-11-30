.PHONY: all test

all: test
test: out0.txt .out0.txt
	diff $^

#main
806_Grade_Calculator: 806_main.c 806_Grade_Calculator.c 806_Grade_Calculator.h
	gcc -Werror $(filter %.c,$^) -std=c99 -o $@ -lm
.out%.txt: in%.txt 806_Grade_Calculator
	cat $< | ./806_Grade_Calculator > $@
