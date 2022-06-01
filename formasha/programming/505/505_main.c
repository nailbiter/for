#include "505_Binary_Search_Tree_2.h"
int main() {
  int operator, value;
  int tree[100];
  for (int num = 0; num < 100; num++)
    tree[num] = -1; 
  while (scanf("%d", &operator) != EOF) {
    switch(operator) {
      case 0:
        scanf("%d", &value);
        InsertNode(&tree[0], value);
        break;
      case 1:
        scanf("%d", &value);
        SearchNode(&tree[0], value);
        break;
      case 2:
        PrintTree(&tree[0]);
        break;
    }   
  }
  return 0;
}
