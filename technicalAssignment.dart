// Interface definition
abstract class Animal {
  void makeSound();
}

// Base class
class Mammal implements Animal {
  String name;
  int age;

  Mammal(this.name, this.age);

  @override
  void makeSound() {
    print('Mammal sound');
  }

  void eat() {
    print('$name is eating');
  }
}

// Subclass that overrides makeSound
class Dog extends Mammal {
  Dog(String name, int age) : super(name, age);

  @override
  void makeSound() {
    print('Woof woof!');
  }
}

void main() {
  // Initialize an instance of Dog directly
  final dog = Dog('Buddy', 3);

  // Demonstrate the use of a loop
  for (var i = 0; i < 3; i++) {
    dog.makeSound();
  }
}
