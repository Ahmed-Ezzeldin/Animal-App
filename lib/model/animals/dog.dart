import 'package:animalapp/model/animal.dart';

class Dog extends Animal {
  Dog(int age, String name) : super(age, name);

  @override
  String talk() {
    return "bark bark";
  }
}
