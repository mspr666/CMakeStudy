// ConcreteProduct.h
#include <memory>
#include "product.h"

// Product 类的具体实现可以根据需要自行扩展或修改
// 这里提供一个简单的实现示例

// 实现 ConcreteProduct 类
class ConcreteProduct : public Product {
public:
    ConcreteProduct(std::string name, double price);
    double getPrice() const override;
    std::string getName() const override;
private:
    std::string name;
    double price;
};

std::shared_ptr<Product> createProduct(std::string name, double price);