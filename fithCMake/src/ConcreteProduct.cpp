// ConcreteProduct.cpp
#include <memory>
#include "ConcreteProduct.h"

// ConcreteProduct 类的具体实现可以根据需要自行扩展或修改
// 这里提供一个简单的实现示例

// 实现 ConcreteProduct 类
ConcreteProduct::ConcreteProduct(std::string name, double price) : name(name), price(price) {}
double ConcreteProduct::getPrice() const { return price; }
std::string ConcreteProduct::getName() const { return name; }

// 在这里添加其他具体产品类的实现...

// 工厂函数，用于创建具体产品对象
std::shared_ptr<Product> createProduct(std::string name, double price) {
    return std::make_shared<ConcreteProduct>(name, price);
}

// 如果有其他具体产品类的实现，可以在这里添加
