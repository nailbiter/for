#include "1101_wallet.h"
void Show(Wallet *input){
    printf("$1000:%d\n", input->thousand);
    printf("$500:%d\n", input->five_hundred);
    printf("$100:%d\n", input->hundred);
    printf("$50:%d\n", input->fifty);
    printf("$10:%d\n", input->ten);
    printf("$5:%d\n", input->five);
    printf("$1:%d\n", input->one);
}
void Purchase(Wallet *input, int choice){
    int drink;
    int money=input->thousand*1000+input->five_hundred*500+input->hundred*100+input->fifty*50+input->ten*10+input->five*5+input->one;
    switch (choice){
        case 1:
        drink=49;
        break;
        case 2:
        drink=48500;
        break;
        case 3:
        drink=2410;
        break;
        case 4:
        drink=167;
        break;
        case 5:
        drink=1000;
        break;
    }
    if (drink>money){
        printf ("Not enough!\n");    
    }
    else {
        //1000s
        if (input->thousand*1000>drink){
            input->thousand-=drink/1000+1;
            drink%=1000;
            Salary(input,(1000-drink));
            drink=0;           
        }
        else {
            drink-=input->thousand*1000;
            input->thousand=0;
        }
        //500s
        if ((input->five_hundred*500>drink)&&(drink>0)){
            input->five_hundred-=drink/500+1;
            drink%=500;
            Salary(input,(500-drink));
            drink=0;           
        }
        else {
            drink-=input->five_hundred*500;
            input->five_hundred=0;
        }
        //100s       
        if ((input->hundred*100>drink)&&(drink>0)){
            input->hundred-=drink/100+1;
            drink%=100;
            Salary(input,100-drink);
            drink=0;           
        }
        else {
            drink-=input->hundred*100;
            input->hundred=0;
        }
        //50
        if ((input->fifty*50>drink)&&(drink>0)){
            input->fifty-=drink/50+1;
            drink%=50;
            Salary(input,50-drink);
            drink=0;           
        }
        else {
            drink-=input->fifty*50;
            input->fifty=0;
        }
        //10s
        if ((input->ten*10>drink)&&(drink>0)){
            input->ten-=drink/10+1;    
            drink%=10;
            Salary (input,10-drink);
            drink=0;
        }
        else {
            drink-=input->ten*10;
            input->ten=0;    
        }
        //5s
        if ((input->five*5>drink)&&(drink>0)){
            input->five-=drink/5+1;    
            drink%=5;
            Salary (input,5-drink);
            drink=0;
        }
        else {
            drink-=input->five*5;
            input->five=0;    
        }
        //1s
        if (drink>0){
            input->one-=drink;
        }
        //printf ("%d %d %d %d %d %d %d rest %d",th,fh,h,ft,t,f,o,rest);
    }
}

void Change(Wallet *input){
    int salary;
    salary=input->thousand*1000+input->five_hundred*500+input->hundred*100+input->fifty*50+input->ten*10+input->five*5+input->one;
    input->thousand=0;
    input->five_hundred=0; 
    input->hundred=0;    
    input->fifty=0;    
    input->ten=0;    
    input->five=0;    
    input->one=0;

    Salary(input,salary);
}

void Salary(Wallet *input, int salary){
    input->thousand+=salary/1000;
    salary%=1000;    
    input->five_hundred+=salary/500;
    salary%=500;    
    input->hundred+=salary/100;
    salary%=100;    
    input->fifty+=salary/50;
    salary%=50;    
    input->ten+=salary/10;
    salary%=10;    
    input->five+=salary/5;
    salary%=5;    
    input->one+=salary;
} 
