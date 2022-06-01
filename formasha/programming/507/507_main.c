#include "507_CNN_Layer.h"
 
int main() {        
  int pooling_size; 
  scanf("%d", &pooling_size);
  int array[ARRAY_SIZE][ARRAY_SIZE], detector_array[DETECTOR_ARRAY_SIZE][DETECTOR_ARRAY_SIZE];
  for (int i = 0; i < ARRAY_SIZE; i++)
    for (int j = 0; j < ARRAY_SIZE; j++)
      scanf("%d", &array[i][j]);
  for (int i = 0; i < DETECTOR_ARRAY_SIZE; i++)
    for (int j = 0; j < DETECTOR_ARRAY_SIZE; j++)
      scanf("%d", &detector_array[i][j]);
 
  ConvolutionLayer(array, detector_array);                                                                                              
  MaxPoolingLayer(array, pooling_size);
  FullyConnectedLayer(array);
 
  return 0;         
}
