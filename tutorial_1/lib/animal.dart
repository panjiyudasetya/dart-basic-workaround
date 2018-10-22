abstract class Animal {
  final String name;
  Animal(this.name) { }

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