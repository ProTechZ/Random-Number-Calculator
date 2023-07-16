import 'package:flutter/material.dart';
import 'package:random_number_calculator/random_num.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const Scaffold(
        body: RandomNumber(),
      ),
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
      ),
    );
  }
}
