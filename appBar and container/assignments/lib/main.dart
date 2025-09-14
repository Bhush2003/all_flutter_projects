import 'package:assignments/assignment1.dart';
import 'package:assignments/assignment2.dart';
import 'package:assignments/assignment3.dart';
import 'package:assignments/assignment4.dart';
import 'package:assignments/assignment5.dart';
import 'package:assignments/assignment6.dart';
import 'package:assignments/assignment7.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: Assignment1(),

    );
  }
}
