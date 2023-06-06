#include <iostream>
 #include <string>
 #include <sstream>

 int main ()
 {
   std::string stringLength, stringWidth;
   float length = 0;
   float width = 0;
   float area = 0;
   std::cout << "Enter the length of the room: ";
   std::getline (std::cin,stringLength);
   std::stringstream(stringLength) >> length;
   std::cout << "Enter width: ";
   std::getline (std::cin,stringWidth);
   std::stringstream(stringWidth) >> width;
   area = length * width;
   std::cout << "\nThe area of the room is: " << area << std::endl;
   return 0;
}