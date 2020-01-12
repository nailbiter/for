#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include <assert.h>
 
#define SIZE 100
 
typedef struct TreeNode {
  char name[SIZE];
  char school[SIZE];
  char phone[SIZE];
  char major[SIZE];
  int grade;
  int room;
  struct TreeNode *left;
  struct TreeNode *right;
  int height;
} TreeNode;
 
TreeNode *InsertdOrder(TreeNode *head, char name[], char school[], char phone[], char major[], int grade, int room);
TreeNode *DeleteOrder(TreeNode *head, char name[]);
void SearchOrder(TreeNode *head, char name[]);
void PrintTree(TreeNode *head);
