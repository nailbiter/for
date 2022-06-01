.PHONY: test

DIFFKEY=-wBb
test: .out0.txt
	diff $(DIFFKEY) -s out0.txt .out0.txt

.out%.txt:in%.txt 804_Caesar_Cipher_Decryption
	cat in$*.txt|./804_Caesar_Cipher_Decryption > $@
804_Caesar_Cipher_Decryption: 804_Caesar_Cipher_Decryption.c 804_Caesar_Cipher_Decryption.h 804_main.c
	gcc -o $@ -std=c99 $(filter %.c,$^)
