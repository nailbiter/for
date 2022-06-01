#include "507_CNN_Layer.h"

#define MAX(x,y) (((x)<=(y))?(y):(x))
#define CONV_SIZE (ARRAY_SIZE-DETECTOR_ARRAY_SIZE+1)

void ConvolutionLayer(int array[ARRAY_SIZE][ARRAY_SIZE], int detector_array[DETECTOR_ARRAY_SIZE][DETECTOR_ARRAY_SIZE]) {
    for(int i = 0; i < CONV_SIZE ;i++) {
        for(int j = 0; j < CONV_SIZE; j++){
            int sum = 0;
            for(int i1 = 0; i1<DETECTOR_ARRAY_SIZE ; i1++) {
                for(int j1 = 0; j1<DETECTOR_ARRAY_SIZE; j1++ ) {
                    sum+=array[i1+i][j1+j]*detector_array[i1][j1];
                }
            }
          printf("%d ",sum);
        }
        printf("\n");
    }
    printf("\n");
}
void MaxPoolingLayer(int array[ARRAY_SIZE][ARRAY_SIZE], int pooling_size){
    for( int i = 0; i < ARRAY_SIZE; i+=pooling_size) {
        for(int j = 0; j < ARRAY_SIZE; j+=pooling_size) {
            int res = -255;
            for(int i1 = 0; i1+i<ARRAY_SIZE && i1<pooling_size; i1++) {
                for(int j1 = 0; j1+j<ARRAY_SIZE && j1<pooling_size; j1++) {
                    res = MAX(res,array[i1+i][j1+j]);
                }
            }
          printf("%d ",res);
        }
        printf("\n");
    }
    printf("\n");
}
void FullyConnectedLayer(int array[][ARRAY_SIZE]){
    for(int i = 0; i< ARRAY_SIZE; i++) {
        for(int j = 0;j<ARRAY_SIZE; j++) {
            printf("%d ",array[i][j]);
        }
    }
    printf("\n");
}
