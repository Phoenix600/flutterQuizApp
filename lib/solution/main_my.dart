import 'package:flutter/material.dart';
import 'package:quizzapp/solution/gradient_container_my.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      body: GradientContainer.one(),
    ));
  }
}
