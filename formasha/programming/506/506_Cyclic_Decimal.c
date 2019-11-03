#include "506_Cyclic_Decimal.h"
#define MAX_N 20000

bool is_cyclic(int number){
    for(;number%2==0;number/=2);
    for(;number%5==0;number/=5);
    return number!=1;
}
void repeating(int number) {
    int record[MAX_N];
    for(int i=0,n=10;;i++,n=(n%number)*10) {
        record[i] = n/number;
        for( int j = 0; j<i;j++ ) {
            if(record[j]==record[i]) {
                for( int k=j;k<i;k++ ) {
                    printf("%d",record[k]);
                }
                printf("\nThe repeating length is %d.",i-j);
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
//        if((number/2)%2==0||(number/2)%5==0) {
//            printf(" ");
//        }
    }
    for(;number%5==0;number/=5){
        printf("5 ");
//        if((number/5)%2==0||(number/5)%5==0) {
//            printf(" ");
//        }
    }
    printf("\n");
}
