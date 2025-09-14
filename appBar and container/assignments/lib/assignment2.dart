import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});
  @override
  State<StatefulWidget> createState() => _Assignment2();
}

class _Assignment2 extends State<Assignment2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text(
        "title",
      ),
      centerTitle: true,
      backgroundColor: Colors.red,
      actions: [
        Icon(Icons.access_alarm_sharp),
        Icon(Icons.access_time),
      ],
    ));
  }
}
