#include <iostream>
#include "Ch5.hpp"

int main() {
  int value = 25;
    
  std::cout << "Original value: " << value << std::endl;
    
  Doubler(value);
    
  std::cout << "Doubled value: " << value << std::endl;
    
  return 0;
}
