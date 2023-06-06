/**
 * make search alforithem 
 * if the inter number is -1 return no output 
*/

#include <iostream>
using namespace std;


int main()
{
    int mainArray[6]={1,2,3,4,5,6};
    int position,userVal;
    cout<<"enter a number to search";
    cin>>userVal;
    while(1)
    {
        if(userVal == -1)
         {
            break;
         }
         for(int i = 0; i < 10; i++)
         {
             if(userVal == mainArray[i])
             {
                 position = i;
                 break;
             }
             position = -1;
         }
         if(position != -1)
         {
            cout<<userVal<<" is at location "<<position<<" in the array.\n";
         }
         else
         {
             std::cout<<position<<" is not in the array.\n";
         }
    }
        return 0;
    }
