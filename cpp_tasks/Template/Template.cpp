#include <iostream>

template <typename T>
T addingnumber(T num1, T num2){
    return num1+num2;
}

int main()
{
    int a = 10;
    int b = 7;
    std::cout<<addingnumber(a,b);
    return 0;
}


