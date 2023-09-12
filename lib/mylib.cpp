#include <iostream>

extern "C" {
	void sayHi(){
		std::cout << "Hello from my library!" << std::endl;
	}

}

