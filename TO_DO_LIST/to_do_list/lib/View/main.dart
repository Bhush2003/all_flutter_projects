import 'package:flutter/material.dart';
import 'package:to_do_list/View/Screens/Intro/Screen1.dart';


dynamic database;
void main() async {
  
  return runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: ToDoApp(),
    );
  }
}

