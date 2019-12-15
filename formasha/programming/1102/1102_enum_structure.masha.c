#include <stdio.h>
#include <ctype.h>
int main(){
    int index=0;
    char target;
    char new;
    scanf ("%c", &target);
    if (isdigit(target)) {
        index=target-48;
        scanf ("%c",&target);
        scanf ("%c",&target);
    }
    scanf ("%c",&new);
    //printf ("index %d, target %c\n", index,target);
    int i;
    for (i=index; new!=target;i++){
        scanf ("%c",&new);  
        if (new==' ') scanf ("%c",&new);
        //printf ("%c is %d, %c not %c\n",new,i,new,target);
    }
    printf ("%d\n",i-1);
    return 0;  
}
