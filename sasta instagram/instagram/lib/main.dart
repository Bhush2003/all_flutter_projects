import 'package:flutter/material.dart';
//import 'package:instagram/src/app.dart';

import 'assignment4.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment4(),
    );
  }
}
