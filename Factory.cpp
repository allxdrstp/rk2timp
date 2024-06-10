#include <iostream>

class IProduct {
public:
    virtual void init() const = 0;
    virtual void performTask() const = 0;
    virtual ~IProduct() {} // Виртуальный деструктор для правильной работы полиморфизма
};

class IFactory {
public:
    virtual IProduct* createConcreteProductA() const = 0;
    virtual IProduct* createConcreteProductB() const = 0;
    virtual ~IFactory() {} // Виртуальный деструктор для правильной работы полиморфизма
};

class ConcreteProductA : public IProduct {
public:
    void init() const override {
        // Реализация метода init для ConcreteProductA
    }
    void performTask() const override {
        // Реализация метода performTask для ConcreteProductA
    }
};

class ConcreteProductB : public IProduct {
public:
    void init() const override {
        // Реализация метода init для ConcreteProductB
    }
    void performTask() const override {
        // Реализация метода performTask для ConcreteProductB
    }
};

class ConcreteFactory : public IFactory {
public:
    ConcreteFactory() {} // Добавлен пустой конструктор

    IProduct* createConcreteProductA() const override {
        return new ConcreteProductA();
    }

    IProduct* createConcreteProductB() const override {
        return new ConcreteProductB();
    }
};

int main() {
    IFactory* factory = new ConcreteFactory();
    IProduct* product;

    int option;
    std::cin >> option;

    if (option == 1) {
        product = factory->createConcreteProductA();
    } else {
        product = factory->createConcreteProductB();
    }

    product->init();
    product->performTask();

    delete product; // Освобождение ресурсов
    delete factory; // Освобождение ресурсов

    return 0;
}
