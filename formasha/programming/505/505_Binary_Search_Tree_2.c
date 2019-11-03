#include "505_Binary_Search_Tree_2.h"

#define SIZE 100

void InsertNode(int tree[], int value) {
    for(int i=0;;i=value<tree[i]?2*i+1:2*i+2){
        if(tree[i]==-1) {
            tree[i] = value;
            return;
        }
    }
}
void SearchNode(int tree[], int value) {
    for(int i=0;;i=value<tree[i]?2*i+1:2*i+2) {
        if(tree[i]==-1) {
            printf("Not found until %d\n",i);
            return;
        }
        if( tree[i]==value ){
            printf("Found in %d\n",i);
            return;
        }
    }
}
void PrintTree(int tree[]) {
    for(int i = 0; i < SIZE; i++) {
        printf("%d ",tree[i]);
    }
    printf("\n");
}
