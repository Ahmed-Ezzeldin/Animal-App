import 'package:animalapp/model/animal.dart';

class Cat extends Animal {
  Cat(int age, String name) : super(age, name);

  @override
  talk() {
    return "meow meow";
  }
}
