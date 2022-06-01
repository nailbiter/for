#include <string.h>
#include <math.h>
#include <stdlib.h>

#define MAXSIZE 10
#define SQR(x) ((x)*(x))

double CharToDouble(char *string) {
  return strtod(string,NULL);
}
void CalcVariance(char *csv_text, double *mean_array, double *variance_array, int row, int column){
    //  1. Using strtok to split the string
    int row_i = 0;
    double data[MAXSIZE][MAXSIZE];
	for (char *line=strtok(csv_text, "\n");line != NULL;line=strtok(line, "\n"),row_i++){
        int col_i = 0;
        double sum = 0;
        int len = strlen(line);
        for(char *token=strtok(line,",");token!=NULL;token=strtok(NULL, ","),col_i++){
            data[row_i][col_i] = CharToDouble(token);
        }
        line += (len+1);
    }

    //compute
    for(int i = 0; i < column; i++) {
        double sum = 0.0;
        for(int j = 0; j < row; j++) {
            sum += data[j][i];
        }
        mean_array[i] = sum / row;
        sum = 0.0;
        for(int j = 0; j < row; j++) {
            sum += SQR(mean_array[i]-data[j][i]);
        }
        variance_array[i] = sqrt(sum/row);
    }
}
 
