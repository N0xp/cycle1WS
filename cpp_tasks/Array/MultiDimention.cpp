/* 1- creat a program that will take 4x4 array 
2- the user must enter the value of the array 
3- create a vector variable 
4- make a DOT product between the Vectro and the Array 
*/

#include <iostream>

int main()
{
    // create the variable of the array 
    const int row = 4;
    const int col = 4;
    
    int arr[row][col];
    int vector[row], product[row];
    int sum =0;
    // enter the value of the array for the user 
        for(int i=0;i<row;i++)
            for(int j=0;j<row;j++)
            {
            std::cout<<"arr["<<i<<"]["<<j<<"] = \n";
            std::cin>>arr[i][j];
            }
    //creat he vetor variable 
    for(int i=0; i<row; i++)
    {
        std::cout<<"vector["<<i<<"] = \n";
        std::cin>>vector[i];
    }
    // Dot product algorithem 
    for(int i=0;i<row;i++)
    {
        for(int j=0; j<row;j++)
        {
            sum = (arr[i][j] * vector[i]) + sum;
        }
        product[i] = sum;
        sum=0;
    }
    // print out the Dot product of the Array 
    for(int i=0;i<row;i++)
    {
        std::cout<<"product["<<i<<"] = "<<product[i]<<"\n";
    }
    return 0;
}