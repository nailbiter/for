#include<cstdio>
#include<iostream>
#include<fstream>

using namespace std;

#define MAXFLAV 10
#define COMPARE(x) if(diff>(abs(budget-(x))) || (diff==abs(budget-(x)) && (x)<res)) {\
        diff = abs(budget-(x));\
        res=x;\
    }

int main(void) {
    ifstream file_input;
    file_input.open("example1.txt");

    int testCaseNum = 0;
    file_input >> testCaseNum;
    for(int testCaseIndex = 0; testCaseIndex < testCaseNum; testCaseIndex++) {
        int budget = 0;
        file_input >> budget;

        int flavorPrices[MAXFLAV] = {0}, optionPrices[MAXFLAV] = {0};
        int flavN = 0;
        file_input >> flavN;
        for(int i = 0; i < flavN; i++) {
            std::string useless;
            file_input >> useless;
            file_input >> flavorPrices[i];
        }

        int optionN = 0;
        file_input >> optionN;
        for(int i = 0; i < optionN; i++) {
            std::string name;
            file_input >> name;
            file_input >> optionPrices[i];
        }

        int diff = 10000 + 1;
        int res = 0;
        for(int flavor = 0; flavor <flavN; flavor++) {
            COMPARE(flavorPrices[flavor]);

            for(int i = 0; i < optionN; i++) {
                COMPARE(flavorPrices[flavor]+optionPrices[i])
            }

            for(int i = 0; i < optionN; i++) {
                for(int j = i+1; j < optionN; j++) {
                    COMPARE(flavorPrices[flavor]+optionPrices[i]+optionPrices[j]);
                }
            }
        }
        printf("Case #%d: %d\n",testCaseIndex+1,res);
    }

    file_input.close();
}
