abstract class Vehicle {
  String brand;
  String model;

  Vehicle(this.brand, this.model);

  void start();
  void stop();
}

class Car extends Vehicle {
  int numberOfDoors;

  Car(String brand, String model, this.numberOfDoors) : super(brand, model);

  @override
  void start() {
    print("$brand $model started.");
  }

  @override
  void stop() {
    print("$brand $model stopped.");
  }
}

class Motorcycle extends Vehicle {
  int engineCapacity;

  Motorcycle(String brand, String model, this.engineCapacity) : super(brand, model);

  @override
  void start() {
    print("$brand $model engine roared to life.");
  }

  @override
  void stop() {
    print("$brand $model engine came to a halt.");
  }
}

void main() {
  Car car = Car("Toyota", "Camry", 4);
  Motorcycle motorcycle = Motorcycle("Honda", "CBR1000RR", 1000);

  car.start();
  car.stop();

  motorcycle.start();
  motorcycle.stop();
}