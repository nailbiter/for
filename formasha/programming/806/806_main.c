#include "806_Grade_Calculator.h"
 
int main() {
  char csv_text[10000];
  int size = 0;
  int row, column;
  scanf("%d", &row);
  scanf("%d", &column);
  while(scanf("%c", &(csv_text[size])) != EOF)
    size++;
  csv_text[size] = '\0';
  double variance_array[column], mean_array[column];
  for (int num = 0; num < column; num++) {
    variance_array[num] = 0;
    mean_array[num] = 0;
  }
  CalcVariance(csv_text, mean_array, variance_array, row, column);
 
  printf("mean: ");
  for (int num = 0; num < column; num++)
    printf("%lf ", mean_array[num]);
  printf("\nvariance: ");
  for (int num = 0; num < column; num++)
    printf("%lf ", variance_array[num]);
  printf("\n");
 
  return 0;
}
