#include <stdio.h>
#include <math.h>
typedef struct wallet{
  int thousand;
  int five_hundred;
  int hundred;
  int fifty;
  int ten;
  int five;
  int one;
}Wallet;
void Show(Wallet *input);//show the money in this wallet.
void Purchase(Wallet *input, int choice);//Buy the drink then change the money in the wallet.
void Change(Wallet *input);//change the money in the wallet into the bigger bills.
void Salary(Wallet *input, int salary);//earn the salary and put it into the wallet.
