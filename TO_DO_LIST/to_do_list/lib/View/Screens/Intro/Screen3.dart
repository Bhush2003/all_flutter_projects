import 'package:flutter/material.dart';
import 'package:to_do_list/View/Screens/LoginRegister/Login.dart';

class Screen3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Screen3State();
  }
}

class Screen3State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 0),
      appBar: AppBar(
        leading: const Icon(Icons.keyboard_arrow_left_sharp),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 0),
      ),
      body: Stack(children: [
        const Positioned(
          top: 139,
          left: 62,
          child: SizedBox(
            height: 38,
            width: 320,
            child: Text(
              "Welcome to JCTodo",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 32,
                color: Color.fromRGBO(255, 255, 255, 0.87),
              ),
            ),
          ),
        ),
        const Positioned(
          top: 203,
          left: 54,
          child: SizedBox(
            height: 48,
            width: 310,
            child: Text(
              "You can organize your daily tasks by adding your tasks into separate categories",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color.fromRGBO(255, 255, 255, 0.87),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Positioned(
          top: 621,
          left: 48,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            child: Container(
              height: 48,
              width: 327,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 138, top: 12, right: 138, bottom: 12),
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Color.fromRGBO(136, 117, 255, 1),
              ),
            ),
          ),
        ),
        Positioned(
          top: 697,
          left: 48,
          child: GestureDetector(
            child: Container(
              height: 48,
              width: 327,
              alignment: Alignment.center,
              child: Text(
                "Create account",
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 16,
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Color.fromRGBO(255, 255, 255, 0),
                  border: Border.all(
                    color: Color.fromRGBO(142, 124, 255, 1),
                  )),
            ),
          ),
        )
      ]),
    );
  }
}
