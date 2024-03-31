// test_vending_machine.cpp
#include <gtest/gtest.h>
#include "concrete_vending_machine.h"
#include "ConcreteProduct.h"

TEST(VendingMachineTest, AddProduct) {
    ConcreteVendingMachine vendingMachine;
    auto product = std::make_shared<ConcreteProduct>("Coke", 1.5);
    vendingMachine.addProduct(product);
    EXPECT_EQ(vendingMachine.listProducts().size(), 1);
    EXPECT_EQ(vendingMachine.listProducts()[0], "Coke");
    EXPECT_EQ(vendingMachine.getProduct("Coke"), product);
}

// 更多测试用例...
