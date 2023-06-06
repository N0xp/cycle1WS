#include <iostream>
#include <vector>
int main ()
{
  //TODO: instantiate vFloat vector
  std::vector<int>vFloot;
  std::cout<<"vFloat has "<<vFloot.size()<<" elements\n";
  
  //Changing the size of vectorInts to 10
  //TODO: Change the size of vFloat to 10 elements
  vFloot.resize(10);
  std::cout<<"\n\n vFloat now has "<<vFloot.size()<<" elements\n";
 
  return 0;
}
