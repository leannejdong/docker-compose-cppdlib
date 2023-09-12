#include <iostream>
extern  "C" void sayHi();

int main(){
	std::cout << "Calling the library function .." << std::endl;
	sayHi();
	return 0;
}:
