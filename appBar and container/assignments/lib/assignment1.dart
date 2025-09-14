import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Assignment1();
}

class _Assignment1 extends State<Assignment1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("title"),backgroundColor: Colors.red,
      
      actions: [
        Icon(Icons.access_alarm_sharp),
        Icon(Icons.access_time),
      ],)

    );
  }
}
