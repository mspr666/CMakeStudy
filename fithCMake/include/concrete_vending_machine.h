// vending_machine/include/concrete_vending_machine.h
#ifndef CONCRETE_VENDING_MACHINE_H
#define CONCRETE_VENDING_MACHINE_H

#include <unordered_map>
#include "vending_machine.h"

class ConcreteVendingMachine : public VendingMachine {
public:
    virtual ~ConcreteVendingMachine();
    void addProduct(std::shared_ptr<Product> product) override;
    void removeProduct(const std::string& productName) override;
    std::shared_ptr<Product> getProduct(const std::string& productName) override;
    bool buyProduct(const std::string& productName, double& money) override;
    std::vector<std::string> listProducts() const override;

private:
    std::unordered_map<std::string, std::shared_ptr<Product>> products;
};

#endif // CONCRETE_VENDING_MACHINE_H
