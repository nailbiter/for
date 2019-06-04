#include<cstdio>
#include<iostream>
#include<fstream>

#define MAXN 50

using namespace std;

int main(void) {
//    printf("hi\n");
    ifstream file_input;
    file_input.open("example2.txt");
    if( !file_input ){
        cerr << "Unable to open file";
        exit(1);
    }

    int testnum = 0;
    file_input >> testnum;
    for(int testIndex = 0; testIndex < testnum; testIndex++) {
        int size = 0;
        file_input >> size;
//        size--;
        int edges[MAXN][MAXN] = {0};
        for(int j = 0; j < (size-1); j++) {
            int a = 0, b = 0;
            file_input >> a;
            file_input >> b;
            edges[b-1][a-1] = edges[a-1][b-1] = 1;
        }

        //Floyd–Warshall_algorithm
        int dist[MAXN][MAXN] = {0};
        for(int i = 0; i < size; i++) {
            for(int j = 0; j < size; j++) {
                if(edges[i][j]>0) {
                    dist[i][j] = edges[i][j];
                } else if(i==j) {
                    dist[i][j] = 0;
                } else {
                    dist[i][j] = MAXN+1;
                }
            }
        }

        for(int k = 0; k < size; k++) {
            for(int i = 0; i < size; i++) {
                for(int j = 0; j < size; j++) {
                    if(dist[i][j]>(dist[i][k]+dist[k][j])) {
                        dist[i][j] = (dist[i][k]+dist[k][j]);
                    }
                }
            }
        }

        int res = MAXN+1;
        for(int i = 0; i < size; i++) {
            int rres = 0;
            for(int j = 0; j < size; j++) {
                if(rres < dist[i][j]) {
                    rres = dist[i][j];
                }
            }
            if( res > rres ) {
                res = rres;
            }
        }
//        for(int j = 0; j < size; j++) {
//            for(int k = 0; k < size; k++) {
//                printf("%d ",dist[j][k]);
//            }
//            printf("\n");
//        }
//        printf("\n");
//        printf("res: %d\n",res);
        printf("Case #%d: %d\n",testIndex+1,res);
    }

    (file_input.close());
}
