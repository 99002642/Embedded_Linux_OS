#include"bitmask.h"
int set(int bit,int n)
{
    bit |= (1 << n);
    return bit;
}
