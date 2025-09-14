import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});
  @override
  State<StatefulWidget> createState() => _Assignment3();
}

class _Assignment3 extends State<Assignment3> {
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
    ),
    body:Center(
      // widthFactor: 360,
      // heightFactor: 200,
      child: Container(
        height: 360,
        width:200,
        color: Colors.black,
      )
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      
      // alignment:MainAxisAlignment.center;
      // alignment:CrossAxisAlignment.center;
    ));
  }
}
