import 'package:animalapp/model/animal.dart';

class Wolf extends Animal {
  Wolf(int age, String name) : super(age, name);

  @override
  String talk() {
    return "howling";
  }
}
