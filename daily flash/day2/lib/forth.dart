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
            padding: EdgeInsets.all(5),
            height: 100,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.red, width: 5),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
                
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Container(child: Text("Bhushan")),
          ),
        ),
       )
      ),
    );
  }
}
