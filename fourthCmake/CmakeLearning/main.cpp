#include <iostream>
#include "mylib.h"
#include "external_lib.h"

int main() {
	// �����Զ�����еĺ���
	int result = add(3, 4);
	std::cout << "Result from MyLib: " << result << std::endl;

	// �����ⲿ���еĺ���
	int ext_result = external_function(5, 6);
	std::cout << "Result from ExternalLib: " << ext_result << std::endl;

	return 0;
}
