#include "504_Sort.h"
#include "stdlib.h"

#define MAX_N 2147483647
#define MAX_N_DIGITS 10

int cmp_int(const void * a, const void * b){
	return ( *(int*)a - *(int*)b );
}
int cmp_char(const void * a, const void * b){
	return ( *(char*)a - *(char*)b );
}

int sort_int_inner(int a) {
    int digits[MAX_N_DIGITS];
    int i = 0;
    for(;a>0;i++,a/=10) {
        digits[i]=a%10;
    }
    qsort(digits, i, sizeof(int), cmp_int);
    int res = 0;
    for(int j=0;j<i;j++) {
        res = 10*res+digits[j];
    }
    return res;
}
void sort_int(int a){
    printf("%d\n",sort_int_inner(a));
}
void sort_float(float a){
    int int_part = (int)a;
    float frac_part = a-int_part;
    printf("%.3f\n",sort_int_inner(int_part)+frac_part);
}
void sort_double(double a) {
    int int_part = (int)a;
    double frac_part = a-int_part;
    printf("%.3lf\n",sort_int_inner(int_part)+frac_part);
}
void sort_void(void) {
    printf("Nothing to be sorted!\n");
}
void sort_array(int a[], int n) {
    qsort(a, n, sizeof(int), cmp_int);
    for(int i=0;i<n;i++) {
        printf("%d ",a[i]);
    }
    printf("\n");
}
