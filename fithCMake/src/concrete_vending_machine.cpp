// vending_machine/src/concrete_vending_machine.cpp
#include "concrete_vending_machine.h"

ConcreteVendingMachine::~ConcreteVendingMachine() {}

void ConcreteVendingMachine::addProduct(std::shared_ptr<Product> product) {
    products[product->getName()] = product;
}

void ConcreteVendingMachine::removeProduct(const std::string& productName) {
    products.erase(productName);
}

std::shared_ptr<Product> ConcreteVendingMachine::getProduct(const std::string& productName) {
    auto it = products.find(productName);
    if (it != products.end()) {
        return it->second;
    }
    return nullptr;
}

bool ConcreteVendingMachine::buyProduct(const std::string& productName, double& money) {
    auto it = products.find(productName);
    if (it != products.end()) {
        double price = it->second->getPrice();
        if (money >= price) {
            // 购买成功，扣除相应金额并移除产品
            money -= price;
            removeProduct(productName);
            return true;
        }
    }
    return false;
}

std::vector<std::string> ConcreteVendingMachine::listProducts() const {
    std::vector<std::string> productList;
    for (const auto& pair : products) {
        productList.push_back(pair.first);
    }
    return productList;
}
