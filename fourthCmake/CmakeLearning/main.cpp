#include <iostream>
#include "mylib.h"
#include "external_lib.h"

int main() {
	// 调用自定义库中的函数
	int result = add(3, 4);
	std::cout << "Result from MyLib: " << result << std::endl;

	// 调用外部库中的函数
	int ext_result = external_function(5, 6);
	std::cout << "Result from ExternalLib: " << ext_result << std::endl;

	return 0;
}
