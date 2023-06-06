#include "FunctionWithReturn.hpp"

int main()
{
    int m1 = 33; 
    int m2 = 66;
    int total = sum(m1, m2);
    printEquation(m1, m2,total,'+');
    return 0;
}