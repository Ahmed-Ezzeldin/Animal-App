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
