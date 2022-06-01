#include "804_Caesar_Cipher_Decryption.h"
 
int main() {                           
  int size = 0;                        
  char ciphertext[10000], alphabet_array[ALPHABET_NUMBER] = {'e', 't', 'a', 'o', 'i'};                                                                  
  while(scanf("%c", &(ciphertext[size])) != EOF)
    size++;                            
  ciphertext[size] = '\0';           
 
  char highest_frequency_alphabet;  
  highest_frequency_alphabet = GetHighestFrequencyAlphabet(ciphertext, size);
  for (int num = 0; num < ALPHABET_NUMBER; num++)
    ShiftCipherText(ciphertext, highest_frequency_alphabet, alphabet_array[num], size);
 
  return 0;                            
}
