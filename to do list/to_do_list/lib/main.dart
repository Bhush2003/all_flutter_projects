import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(ToDoList());

class ToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ToDoList1();
  }
}

class ToDoList1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ToDoList1();
}

class _ToDoList1 extends State {
  List list = [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
    Color.fromRGBO(250, 232, 232, 1),
  ];
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "To-Do List",
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.w700,
              fontSize: 26,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: count,
          itemBuilder: (context, index) {
            return Container(
              height: 112,
              width: 230,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 52,
                        width: 52,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          //image: DecorationImage(image: AssetImage("D:/flutter projects/class Assignment class/to do list/to_do_list/lib/assets/Image/iconImage.jpg")),
                        ),
                        child: Image.asset("assets/iconImage.jpg"),
                      ),
                      Text("10 july 2023"),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Lorem Ipsum is simply setting industry. ",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      Container(
                          height: 44,
                          width: 243,
                          child: Text(
                            """
                      Simply dummy text of the printing and typesetting
                      industry Lorem Ipsum has been the industry's 
                      standard dummy text ever since the 1500s""",
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ))
                    ],
                  )
                ],
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            count++;
          });
        }),
      ),
    );
  }
}
