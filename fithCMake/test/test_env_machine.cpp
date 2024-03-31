#include <gtest/gtest.h>
#include "concrete_vending_machine.h"
#include "ConcreteProduct.h"

class MyTestFixture : public ::testing::Test {
protected:
    void SetUp() override {
        // 在每个测试用例执行前准备测试环境
    }

    void TearDown() override {
        // 在每个测试用例执行后清理测试环境
    }

    static void preparEnv() {
        machine = new ConcreteVendingMachine();
        ConcreteProduct* product1 = new ConcreteProduct("Coke", 1.5);
        ConcreteProduct* product2 = new ConcreteProduct("Water", 1.0);
        ConcreteProduct* product3 = new ConcreteProduct("Snack", 2.0);
        machine->addProduct(std::shared_ptr<Product>(product1));
        machine->addProduct(std::shared_ptr<Product>(product2));
        machine->addProduct(std::shared_ptr<Product>(product3));
    }

    static void destroyEnv() {
        if(machine == nullptr) {
            return;
        }
        delete machine;
        machine = nullptr;
    }

    static ConcreteVendingMachine* GetMachine(){
        return machine;
    }

private:
    static ConcreteVendingMachine* machine;
};

// 静态成员变量必须在类内声明、类外初始化，编译器报undefined reference to `MyTestFixture::machine'
ConcreteVendingMachine* MyTestFixture::machine = nullptr;

TEST_F(MyTestFixture, TestName) {
    MyTestFixture::preparEnv();
    ConcreteVendingMachine* machinePointer = MyTestFixture::GetMachine();
    double money = 10.0;
    machinePointer->buyProduct("Coke", money);
    EXPECT_EQ(machinePointer->listProducts().size(), 2);
    EXPECT_EQ(machinePointer->listProducts()[0], "Water");
    EXPECT_EQ(money, 8.5);
    MyTestFixture::destroyEnv();
}
