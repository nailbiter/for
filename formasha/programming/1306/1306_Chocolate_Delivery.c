#include "1306_Chocolate_Delivery.h"
#include "stdio.h"
#include "stdlib.h"
#include "string.h"

#undef DEBUG

#ifdef DEBUG
#define PRINT_DL " #start print"
#else
#define PRINT_DL ""
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

TreeNode *InsertdOrder(TreeNode *head, char name[], char school[], char phone[], char major[], int grade, int room) {
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
TreeNode *DeleteOrder(TreeNode *head, char name[]) {
#ifdef DEBUG
    printf("# rm %s\n",name);
#endif
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
void SearchOrder(TreeNode *head, char name[]) {
    TreeNode *nova = malloc(sizeof(TreeNode));
    strncpy(nova->name,name,SIZE);

    TreeNode *ptr = head;
    for( ptr=head; ptr && cmpnodes(ptr,nova); ptr = cmpnodes(nova,ptr)<0 ? ptr->left : ptr->right);
#ifdef DEBUG
    printf("# search %s\n",name);
#endif
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
