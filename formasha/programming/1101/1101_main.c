#include "1101_wallet.h"
int main() {
  int input, operation, drink, salary;
  scanf("%d", &input);
  Wallet my_wallet = {0, 0, 0, 0, 0, 0, input};
  Wallet *ptr = &my_wallet;
  while(scanf("%d", &operation) != EOF) {
    switch(operation) {
    case 1:
      Show(ptr);
      break;
    case 2:
      scanf("%d", &drink);
      Purchase(ptr, drink);
      break;
    case 3:
      Change(ptr);
      break;
    case 4:
      scanf("%d", &salary);
      Salary(ptr, salary);
      break;
    default:
      break;
    }
  }
}
