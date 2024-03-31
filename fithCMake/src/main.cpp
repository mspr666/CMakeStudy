// vending_machine/src/main.cpp
#include <iostream>
#include "ConcreteProduct.h"
#include "concrete_vending_machine.h"

int main() {
    // 创建一个具体自助售卖机对象
    ConcreteVendingMachine vendingMachine;

    // 添加一些产品到售卖机
    vendingMachine.addProduct(std::make_shared<ConcreteProduct>("Coke", 1.5));
    vendingMachine.addProduct(std::make_shared<ConcreteProduct>("Water", 1.0));
    vendingMachine.addProduct(std::make_shared<ConcreteProduct>("Snack", 2.0));

    // 列出售卖机中的产品
    std::cout << "Available products: ";
    for (const auto& productName : vendingMachine.listProducts()) {
        std::cout << productName << std::endl;
    }
    std::cout << std::endl;

    // 购买产品
    std::string productName = "Coke";
    double money = 2.0;
    if (vendingMachine.buyProduct(productName, money)) {
        std::cout << "You have purchased " << productName << "." << std::endl;
    } else {
        std::cout << "Failed to purchase " << productName << ". Insufficient funds." << std::endl;
    }

    return 0;
}
