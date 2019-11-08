#include "504_Sort.h"
#define SIZE 10
 
int main() {
  int a = 0;
  float b = 0;
  double c = 0;
  int arr[SIZE] = {0};
  scanf("%d%f%lf", &a, &b, &c);
  for (int i = 0; i < SIZE; i++) {
    scanf("%d", &arr[i]);
  }
  sort_int(a);
  sort_float(b);
  sort_double(c);
  sort_void();
  sort_array(arr, SIZE);
  return 0;
}
