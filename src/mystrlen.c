#include "mystring.h"
int mystrlen(char str[])
{
    //printf("Enter a string: \n");
    //scanf("%s",str);
    int len;
    for(len=0; str[len]!='\0'; ++len);
    printf("\n Length of the given string: %d",len);
    return len;
}
