// product.h
#ifndef PRODUCT_H
#define PRODUCT_H
#include <string>

class Product {
public:
    virtual ~Product() {}
    virtual double getPrice() const = 0;
    virtual std::string getName() const = 0;
};

#endif // PRODUCT_H
