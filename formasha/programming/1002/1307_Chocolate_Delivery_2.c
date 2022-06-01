#include "1307_Chocolate_Delivery_2.h"
#include "stdio.h"
#include "stdlib.h"
#include "string.h"

#undef DEBUG

#ifdef DEBUG
#define PRINT_DL " #start print"
#define COMMENT(s) (s)
#else
#define PRINT_DL ""
#define COMMENT(s)
#endif

int cmpnodes(TreeNode *a, TreeNode *b) {
    return strncmp(a->name,b->name,SIZE);
}
typedef struct TreeNodePtrPair {
    TreeNode *left;
    TreeNode *right;
} TreeNodePtrPair;

TreeNodePtrPair _findMaxRemoveAndReturn(TreeNode *head) {
    TreeNodePtrPair res;

    if(!head) {
        exit(1);
    }

    if( !head->right ) {
        res.left = head;
        res.right = NULL;
        return res;
    }

    TreeNode *ptr = head;
    for( ;ptr->right->right; ptr=ptr->right );
    res.left = ptr->right;
    ptr->right=NULL;
    res.right=head;
    return res;
}
TreeNode *_DeleteOrder(TreeNode *head, char name[]) {
    COMMENT(printf("# rm %s\n",name));
    TreeNode *nova = malloc(sizeof(TreeNode));
    strncpy(nova->name,name,SIZE);

    if( !head ) {
        return NULL;
    } else if(!cmpnodes(head,nova)) {
        TreeNode *res = NULL;
        if( !head->left && !head->right ) {
            res = NULL;
        } else if( !head->left && head->right ) {
            res = head->right;
        } else if( head->left && !head->right ) {
            res = head->left;
        } else {
            TreeNodePtrPair pair = _findMaxRemoveAndReturn(head->left);
            res = pair.left;
            res->left = pair.right;
            res->right = head->right;
        }
        free(head);
        return res;
    }


    TreeNode *ptr = head;
    TreeNode *next = NULL;
    for( next = cmpnodes(nova,ptr)<0 ? ptr->left : ptr->right; next && cmpnodes(next,nova); ptr=next,next = cmpnodes(nova,ptr)<0 ? ptr->left : ptr->right);

    if( next ) {
        if( !next->left && !next->right ) {
            if(cmpnodes(nova,ptr)<0) {
                ptr->left = NULL;
            } else {
                ptr->right = NULL;
            }
        } else if( !next->left && next->right ) {
            if(cmpnodes(nova,ptr)<0) {
                ptr->left = next->right;
            } else {
                ptr->right = next->right;
            }
        } else if( next->left && !next->right ) {
            if(cmpnodes(nova,ptr)<0) {
                ptr->left = next->left;
            } else {
                ptr->right = next->left;
            }
        } else {
            TreeNode *pptr = next->left;
            for(;pptr->right;pptr = pptr->right);
            if(cmpnodes(nova,ptr)<0) {
                ptr->left = pptr->right;
            } else {
                ptr->right = pptr->right;
            }
            pptr->right = NULL;
        }
        free(next);
    }
    return head;
}
TreeNode *_InsertdOrder(TreeNode *head, char name[], char school[], char phone[], char major[], int grade, int room) {
    fprintf(stderr,"insert %s\n",name);

    TreeNode *nova = malloc(sizeof(TreeNode));
    strncpy(nova->name,name,SIZE);
    strncpy(nova->school,school,SIZE);
    strncpy(nova->phone,phone,SIZE);
    strncpy(nova->major,major,SIZE);
    nova->grade = grade;
    nova->room = room;
    nova->left = nova->right = NULL;

    if( !head ) {
        return nova;
    } else {
        TreeNode *ptr = head;
        for( TreeNode *next = cmpnodes(nova,ptr)<0 ? ptr->left : ptr->right; next; ptr=next,next = cmpnodes(nova,ptr)<0 ? ptr->left : ptr->right);
        if( cmpnodes(nova,ptr)<0 ) {
            ptr->left = nova;
        } else {
            ptr->right = nova;
        }
        return head;
    }
}

int Max(int num1, int num2) {
    if (num1 >= num2)
        return num1;
    else
        return num2;
}

int Height(TreeNode *node) {
    if (node == NULL)
        return 0;
    return node->height;
}

void _RecomputeHeights(TreeNode* node,int startHeight) {
    if(node) {
        node->height = startHeight;
        _RecomputeHeights(node->left,startHeight+1);
        _RecomputeHeights(node->right,startHeight+1);
    }
}

TreeNode *LeftRotate(TreeNode *node) {
    int height = node->height;
    TreeNode *rl = node->right->left
        ,*r = node->right
        ;
    r->left = node;
    node->right = rl;
    _RecomputeHeights(r,height);
    return r;
}

TreeNode *RightRotate(TreeNode *node) {
    int height = node->height;
    TreeNode *lr = node->left->right
        ,*l = node->left
        ;
    l->right = node;
    node->left = lr;
    _RecomputeHeights(l,height);
    return l;
}

TreeNode *BalanceTree(TreeNode *node) {
    if (node == NULL)
        return node;
    if (node->left == NULL && node->right == NULL) {
        node->height = 1;
        return node;
    }

    // Recursion
    if (node->left != NULL)
        node->left = BalanceTree(node->left);
    if (node->right != NULL)
        node->right = BalanceTree(node->right);

    int balance = Height(node->left) - Height(node->right);

    if (balance > 1) {
        if (Height(node->left->left) >= Height(node->left->right)) // Left Left Case
            return RightRotate(node);
        else { // Left Right Case
            node->left = LeftRotate(node->left);
            return RightRotate(node);
        }
    } else if (balance < -1) {
        if (Height(node->right->right) >= Height(node->right->left)) // Right Right Case
            return LeftRotate(node);
        else { // Right Left Case
            node->right = RightRotate(node->right);
            return LeftRotate(node);
        }
    } else
        node->height = Max(Height(node->left), Height(node->right)) + 1;
    return node;
}

TreeNode *InsertdOrder(TreeNode *head, char name[], char school[], char phone[], char major[], int grade, int room) {
    head = _InsertdOrder(head,name,school,phone,major,grade,room);
    head = BalanceTree(head);
    return head;
}
TreeNode *DeleteOrder(TreeNode *head, char name[]) {
    head = _DeleteOrder(head,name);
    head = BalanceTree(head);
    return head;
}
void SearchOrder(TreeNode *head, char name[]) {
    TreeNode *nova = malloc(sizeof(TreeNode));
    strncpy(nova->name,name,SIZE);

    TreeNode *ptr = head;
    for( ptr=head; ptr && cmpnodes(ptr,nova); ptr = cmpnodes(nova,ptr)<0 ? ptr->left : ptr->right);
    COMMENT(printf("# seach %s\n",name));
    if( !ptr ) {
        printf("Not Found!!\n");
    } else {
        printf("name: %s\n",ptr->name);
        printf("school: %s\n",ptr->school);
        printf("phone: %s\n",ptr->phone);
        printf("major: %s\n",ptr->major);
        printf("grade: %d\n",ptr->grade);
        printf("room: %d\n",ptr->room);
    }
}
void _PrintTree(TreeNode *head) {
    if( !head ) {
        printf("NULL\n");
    } else {
        printf("%s\n",head->name);
        _PrintTree(head->left);
        _PrintTree(head->right);
    }
}
void PrintTree(TreeNode *head) {
    if( !head ) {
        printf("NULL%s\n",PRINT_DL);
    } else {
        printf("%s%s\n",head->name,PRINT_DL);
        _PrintTree(head->left);
        _PrintTree(head->right);
    }
}
