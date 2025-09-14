import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       body: Center(
        child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.red, width: 10),
                borderRadius: BorderRadius.circular(30),
                
          ),
          child: Text("Hi i am bhushan",textAlign: TextAlign.center),
        ),
       )
      ),
    );
  }
}
