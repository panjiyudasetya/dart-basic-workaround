import 'package:tutorial_1/animal.d.dart';

void main() => testAnimalInheritance();

void testAnimalInheritance() {
  var animals = [new Bird('Pigeon'), new Sheep('Shaun'), new Fish('Whale')];
  for (Animal animal in animals) {
    animal.eat();
    print('My lifespan is ' + animal.lifespan().toString() + ' years.');
    if (animal is Flyable) {
      (animal as Flyable).fly();
      print("");
      continue;
    }
    if (animal is Runable) {
      (animal as Runable).run();
      print("");
      continue;
    }
    if (animal is Swimable) {
      (animal as Swimable).swim();
      print("");
      continue;
    }
  }
}

class Fish extends Animal implements Swimable {
  Fish(String name) : super(name);

  @override
  void eat() {
    print('$name, I\'ll eat plankton now');
  }

  @override
  int lifespan() {
    return 10;
  }

  @override
  void swim() {
    print('Yipiii! Look, I can swim freely');
  }
}

class Sheep extends Animal implements Runable {
  Sheep(String species) : super(species);

  @override
  void eat() {
    print('$name eating grass right now!');
  }

  @override
  int lifespan() {
    return 5;
  }

  @override
  void run() {
    print('Mbeeek, okaay I\'ll run!');
  }
}

class Bird extends Animal implements Flyable {
  
  Bird(String species) : super(species);

  @override
  void eat() {
    print('$name eating worm right now!');
  }

  @override
  void fly() {
    print('I\'m flying right now!');
  }

  @override
  int lifespan() {
    return 3;
  }
}