
#include<iostream>
int main()
{
    float in1, in2;
    char operation;
    float answer;
    
    std::cout<<"Enter two numbers:\n";
    std::cin>>in1;
    std::cin>>in2;
    std::cout<<"Enter the operation '+','-','*','/':\n";
    std::cin>>operation;
    
    switch(operation)
    {
        case('+'):  {
                    answer=in1 + in2;
                    break;
                    }
         case('-'):  {
                    answer=in1 - in2;
                    break;
                    }  
        case('*'):  {
                    answer=in1 * in2;
                    break;
                    }    
        case('/'):  {
                    answer=in1 / in2;
                    break;
                    }  
        default:
                std::cout<<"Illegal operation";
    }
    
    std::cout<<in1<<operation<<in2<<" = "<<answer<<"\n";
        
    return 0;
}