#include <stdio.h>
#include <string.h>
#include <math.h>
 
void CalcVariance(char *csv_text, double *mean_array, double *variance_array, int row, int column);
/*{
  1. Using strtok to split the string
  2. Using CharToDouble to convert string to double
  3. Calculating mean and varianc
}*/
 
double CharToDouble(char *string);
