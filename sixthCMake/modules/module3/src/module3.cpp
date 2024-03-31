#include "module3.h"
#include "module1.h"
#include "module2.h"
#include <iostream>

void module3_function() {
    std::cout << "Module 3 function" << std::endl;
    module1_function();
    module2_function();
}
