#include "804_Caesar_Cipher_Decryption.h"    
#include <string.h>
#include <ctype.h>
#include <stdbool.h>                                                     
#define ALPHABET_NUMBER 5                                               
 
char GetHighestFrequencyAlphabet(char *ciphertext, int size){
    int amount[123]={0};
    for (int i=0; i<size;i++){
        if (isalpha(ciphertext[i])){
            int num = tolower(ciphertext[i]);
            amount[num]++;
        }
    }
    char mc='a';
    for (char i='b';i<='z';i++){
        if (amount[i]>amount[mc]) {
            mc=i;
        }
    } 
    return mc;
}           

void ShiftCipherText(char *ciphertext, char highest_frequency_alphabet, char alphabet, int size){
    int shift = highest_frequency_alphabet - alphabet;
    if (shift<0) shift+=26;
    int i=0;
    for (int i = 0;i<size;i++) {
        if (isalpha(ciphertext[i])) {
            if ( isupper(ciphertext[i]) && (ciphertext[i]-shift)<'A' ) {
                printf("%c", ciphertext[i]-shift+26); 
            }
            else if ( islower(ciphertext[i]) && (ciphertext[i]-shift)<'a' ) {
                printf("%c", ciphertext[i]-shift+26);
            } else {
                printf ("%c",ciphertext[i]-shift);
            }
        } else {
            printf("%c",ciphertext[i]);
        }
    }
//    if (alphabet!='i') {
        printf("\n");
//    }
}
