import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Assignment1();
}

class _Assignment1 extends State<Assignment1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Row( 
        children : [Container(
        height: 100,
        width: 100,
        color: Colors.red,
      )],
    ));
  }
}
