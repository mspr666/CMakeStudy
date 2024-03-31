// vending_machine/include/vending_machine.h
#ifndef VENDING_MACHINE_H
#define VENDING_MACHINE_H

#include <memory>
#include <string>
#include <vector>
#include "product.h"

class VendingMachine {
public:
    virtual ~VendingMachine() {}
    virtual void addProduct(std::shared_ptr<Product> product) = 0;
    virtual void removeProduct(const std::string& productName) = 0;
    virtual std::shared_ptr<Product> getProduct(const std::string& productName) = 0;
    virtual bool buyProduct(const std::string& productName, double money) = 0;
    virtual std::vector<std::string> listProducts() const = 0;
};

#endif // VENDING_MACHINE_H

