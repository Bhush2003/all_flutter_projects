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
        appBar: AppBar(
          leading: Icon(Icons.ac_unit_outlined),
          centerTitle: true,
          title: Text("hi"),
          backgroundColor: Colors.pink,
          actions: [
            Icon(Icons.abc),
            Icon(Icons.access_time_outlined),
            Icon(Icons.access_alarm),
          ],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          )),
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.red, width: 10),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(
                  color: Colors.red,
                  spreadRadius: 10,
                  blurRadius: 10
                )]
          ),
        ),
      ),
    )
    );
  }
}
