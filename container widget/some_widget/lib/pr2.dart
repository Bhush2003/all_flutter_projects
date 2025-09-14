import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body:Center( 
        child:Container(
          
          padding: const EdgeInsets.only(left:10,right:10,top:10,bottom:10),
          height: 200,
          width: 200,
          color: Colors.red,
        ),
        )
      ),
    );
  }
}
