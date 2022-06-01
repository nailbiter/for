#include<stdio.h>
#include "506_Cyclic_Decimal.h"
 
int main() {
  int number;
  scanf("%d", &number);
 
  if (is_cyclic(number))
    repeating(number);
  else
    prime_factor(number);
}
