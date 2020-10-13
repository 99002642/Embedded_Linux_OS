#include"myutils.h"
long factorial(int number)
{
   int fac;
   long int result=1;
   if(number==0)
   return 1;
   else
   {
    for( fac = 1 ; fac <= number ; fac++ )
        result = result*fac;
    return result;
   }
}
