

import 'package:flutter/material.dart';

class Assign3 extends StatefulWidget {
  const Assign3({super.key});
  @override
  State createState() => Assign5_State();
}

class Assign5_State extends State {
  bool val = true;
  Color clr() {
    if (val == true) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(color: clr(),width: 5),
              ),
              child: const Center(child: Text("Click me")),
            ),
            onTap: () => setState(() {
                  val = !val;
                })),
      ),
    );
  }
}
