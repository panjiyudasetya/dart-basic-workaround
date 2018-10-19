abstract class Animal {
  String name;
  Animal(String name) {
    this.name = name;
  }
  void eat();
  int lifespan();
}

abstract class Flyable {
  void fly();
}

abstract class Runable {
  void run();
}

abstract class Swimable {
  void swim();
}