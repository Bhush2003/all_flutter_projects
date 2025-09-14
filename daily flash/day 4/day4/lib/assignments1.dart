import 'package:flutter/material.dart';

class Day4_1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Day4_1_State();
  }
}

class _Day4_1_State extends State {
  bool col = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {},
            child: Row(children: [
              Icon(
                Icons.abc_outlined,
              ),
              Text("bhushan"),
            ]),
            style: ButtonStyle(
              backgroundColor: (col)
                  ? MaterialStateProperty.all(Colors.black)
                  : MaterialStatePropertyAll(Colors.green),
              shadowColor: MaterialStateProperty.all(Colors.amber),
              shape: MaterialStateProperty.all(CircleBorder(
                  side: BorderSide(width: 3, color: Colors.red),
                  eccentricity: 1)),
            ),
            onHover: (value) {
              setState(() => col = value);
            },
          ),
        ),
      ),
    );
  }
}
