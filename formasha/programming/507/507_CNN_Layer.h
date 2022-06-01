#include <stdio.h>
#define ARRAY_SIZE 10
#define DETECTOR_ARRAY_SIZE 3
 
void ConvolutionLayer(int[ARRAY_SIZE][ARRAY_SIZE], int[DETECTOR_ARRAY_SIZE][DETECTOR_ARRAY_SIZE]);
void MaxPoolingLayer(int[ARRAY_SIZE][ARRAY_SIZE], int);
void FullyConnectedLayer(int[][ARRAY_SIZE]);
