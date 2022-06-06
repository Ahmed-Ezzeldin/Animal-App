// ignore_for_file: avoid_print

import 'package:animalapp/model/Singleton_class.dart';
import 'package:animalapp/viewmodel/home_screen_viewmodel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var viewModel = HomeScreenViewmodel();
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildButton(
              "Cat 1",
              () => viewModel.makeAnimalNoise(context, viewModel.cat1),
            ),
            buildButton(
              "Dog 1",
              () => viewModel.makeAnimalNoise(context, viewModel.dog1),
            ),
            buildButton(
              "Cat 2",
              () => viewModel.makeAnimalNoise(context, viewModel.cat2),
            ),
            buildButton(
              "Dog 2",
              () => viewModel.makeAnimalNoise(context, viewModel.dog2),
            ),
            const SizedBox(),
            const SizedBox(),
            ElevatedButton(
              child: const Text("Test Singleton"),
              onPressed: () {
                // ========================================= create instance by  ( Named Constructor )
                // var test1 = MySingleton.instance;
                // var test2 = MySingleton.instance;
                // ========================================= create instance by factory ( Default Constructor )
                var test1 = MySingleton();
                var test2 = MySingleton();

                print(">>>> ${test1.name}");
                print(">>>> ${test2.name}");
                test1.setName("Ahmed");
                print(">>>> ${test1.name}");
                print(">>>> ${test2.name}");
                test2.setName("Ahmed 2");
                print(">>>> ${test1.name}");
                print(">>>> ${test2.name}");
              },
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }

  Widget buildButton(String title, Function()? onPressed) {
    return ElevatedButton(
      child: SizedBox(
        width: 200,
        height: 50,
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
