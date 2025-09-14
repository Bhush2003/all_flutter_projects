import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});
  @override
  State<StatefulWidget> createState() => _Assignment4();
}

class _Assignment4 extends State<Assignment4> {
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 200,
            color: Colors.blue,
          ),
          Container(
            height: 100,
            width: 200,
            color: Colors.green,
          )
        ],
        
      )
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      
      // alignment:MainAxisAlignment.center;
      // alignment:CrossAxisAlignment.center;
    ));
  }
}
