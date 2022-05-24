// ignore_for_file: avoid_print

import 'package:animalapp/model/animal.dart';
import 'package:animalapp/model/animals/cat.dart';
import 'package:animalapp/model/animals/dog.dart';
import 'package:flutter/material.dart';

class HomeScreenViewmodel {
  var cat1 = Cat(12, "Jolya");
  var cat2 = Cat(12, "Nora");
  var dog1 = Dog(5, "Jac");
  var dog2 = Dog(5, "Pepperstake");

  makeAnimalNoise(BuildContext context, Animal animal) {
    // print("============================");
    // print(animal.name);
    // print(animal.age);
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Type: ${animal.toString().replaceAll("Instance of", "")} \nName: ${animal.name} \nAge: ${animal.age} \nSound: ${animal.talk()}",
        ),
      ),
    );
  }
}
