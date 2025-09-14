import 'dart:async';

import 'package:flutter/material.dart';
import 'package:to_do_list/View/Screens/Intro/Screen2.dart';
// import 'package:to_do_list/View/Screens/Intro/Screen2.dart';

class ToDoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ToDoAppState();
  }
}

class _ToDoAppState extends State {
  
  
  @override
  void initState() {
    super.initState();

    Timer(
        const Duration(seconds: 5),
        () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    Screen2())) //.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>Screen2()) )
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 0),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,MaterialPageRoute(builder: (context)=>Screen2())
              );
            },
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset("asset/intro/Vector.png"),
              SizedBox(
                height: 22,
              ),
              Container(
                height: 48,
                width: 164,
                child: const Text(
                  "JCTODO",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
