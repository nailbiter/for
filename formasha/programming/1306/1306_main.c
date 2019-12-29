#include "1306_Chocolate_Delivery.h"
 
int main() {
  int operation;
  TreeNode *head = NULL;
  char name[SIZE];
  char school[SIZE];
  char phone[SIZE];
  char major[SIZE];
  int grade;
  int room;
  while (scanf("%d", &operation) != EOF) {
    switch(operation) {
      case 0: // Insert node
        scanf("%s%s%s%s%d%d", name, school, phone, major, &grade, &room);
        head = InsertdOrder(head, name, school, phone, major, grade, room);
        break;
      case 1: // Delete node
        scanf("%s", name);
        head = DeleteOrder(head, name);
        break;
      case 2: // Search node
        scanf("%s", name);
        SearchOrder(head, name);
        break;
      case 3: // Print tree
        PrintTree(head);
    }                                                                                                                                                 
  }
  return 0;
}
