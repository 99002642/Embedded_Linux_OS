#include"myutils.h"
int vsum(int numero,...)
{
    int ind;
    int first, a;
    
    va_list vlist;
    va_start(vlist,numero);
  
    int sum=0;
    
    for (ind = 1; ind <= numero; ind++) 
        sum+=va_arg(vlist,int);

    va_end(vlist);
    return sum;
}
