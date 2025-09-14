import 'package:flutter/material.dart';
import 'package:palindrom1/assignment1.dart';

//import 'package:pelendrom/src/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Assignment1());
  }
}

