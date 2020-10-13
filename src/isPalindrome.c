#include"myutils.h"
int isPalindrome(int number)
{
    int anum=0,rem,cp;
    cp=number;
    while(cp>0)
    {
        rem=cp%10;
        rnum=anum*10+rem;
        cp=cp/10;
    }
    if(rnum==number)
        return 1;
    else
        return 0;
}
