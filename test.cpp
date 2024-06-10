#include <iostream>
#include <cassert>

class IProduct
{
public:
    virtual void init() const = 0;
    virtual void performTask() const = 0;
};
class IFactory
{
public:
    virtual IProduct* createConcreteProductA() const = 0;
    virtual IProduct* createConcreteProductB() const = 0;
};
class ConcreteFactory : public IFactory
{
public:
    ConcreteFactory();

    IProduct* createConcreteProductA() const override;
    IProduct* createConcreteProductB() const override;
};

// Предполагаемые определения классов IProduct, IFactory, ConcreteFactory
// ...

// Функция для тестирования фабрики и создания продукта A
void testConcreteFactoryCreateProductA() {
    ConcreteFactory factory;
    IProduct* productA = factory.createConcreteProductA();
    assert(productA != nullptr);
    std::cout << "Test passed: ConcreteFactory created ConcreteProductA" << std::endl;
    delete productA; // Освобождение ресурсов
}

// Функция для тестирования фабрики и создания продукта B
void testConcreteFactoryCreateProductB() {
    ConcreteFactory factory;
    IProduct* productB = factory.createConcreteProductB();
    assert(productB != nullptr);
    std::cout << "Test passed: ConcreteFactory created ConcreteProductB" << std::endl;
    delete productB; // Освобождение ресурсов
}

// Функция для тестирования интерфейса IProduct
void testIProductMethods() {
    // Создаем конкретный продукт для тестирования
    ConcreteFactory factory;
    IProduct* product = factory.createConcreteProductA();

    // Тестируем метод init
    product->init();
    std::cout << "Test passed: IProduct::init called successfully" << std::endl;

    // Тестируем метод performTask
    product->performTask();
    std::cout << "Test passed: IProduct::performTask called successfully" << std::endl;

    delete product; // Освобождение ресурсов
}

int main() {
    // Запуск классовых тестов
    testConcreteFactoryCreateProductA();
    testConcreteFactoryCreateProductB();
    testIProductMethods();

    std::cout << "All tests passed." << std::endl;
    return 0;
}
