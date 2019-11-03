#include "506_Cyclic_Decimal.h"
#define MAX_N 20000

bool is_cyclic(int number){
    for(;number%2==0;number/=2);
    for(;number%5==0;number/=5);
    return number!=1;
}
void repeating(int number) {
    int record[2*MAX_N];
    for(int i=0,n=10;;i+=2,n=(n%number)*10) {
        record[i] = n/number;
        record[i+1]=n%number;
        for( int j = 0; j<i;j+=2 ) {
            if(record[j]==record[i] && record[j+1]==record[i+1]) {
                for( int k=j;k<i;k+=2 ) {
                    printf("%d",record[k]);
                }
                printf("\nThe repeating length is %d.\n",(i-j)/2);
                return;
            }
        }
    }
}
bool is_prime(int number) {

}
void prime_factor(int number) {
    printf("Not cyclic decimal.\n");
    for(;number%2==0;number/=2){
        printf("2 ");
    }
    for(;number%5==0;number/=5){
        printf("5 ");
    }
    printf("\n");
}
