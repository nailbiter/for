#include <stdio.h>                                                       
#include <string.h>                                                      
#define ALPHABET_NUMBER 5                                                
 
char GetHighestFrequencyAlphabet(char *ciphertext, int size);            
// This function will return the highest frequency alphabet in ciphertext
void ShiftCipherText(char *ciphertext, char highest_frequency_alphabet, char alphabet, int size);
// This function will return nothing but print ciphertext after shift.
