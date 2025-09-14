import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoApp(),
    );
  }
}

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State createState() => _ToDoApp();
}

class _ToDoApp extends State {
  int count = 0;
  void bottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 500,
          // width: 100,
          color: Colors.grey,
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Title",
                ),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Column(
        children: [
          const Padding(
            padding: const EdgeInsets.only(left: 29.0, top: 45.0),
            child: SizedBox(
              height: 65,
              width: 148,
              child: Column(
                children: [
                  Text(
                    "Good Morning",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "Bhushan",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
                height: 650,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                    height: 560,
                    color: Colors.white,
                    child: ListView.builder(
                      itemCount: count,
                      itemBuilder: (context, index) {
                        var container = Container(
                          height: 112,
                          width: 230,
                          child: ScrollAction.getDirectionalIncrement.(
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
                                      child: Image.network(
                                          "https://tse4.mm.bing.net/th?id=OIP.TMi5M4oBtQ2qQcZ3HvMfCwHaHa&pid=Api&P=0&h=180"),
                                    ),
                                    Text("10 july 2023"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Lorem Ipsum is simply setting industry. ",
                                      // style: GoogleFonts.quicksand(
                                      //   fontWeight: FontWeight.w600,
                                      //   fontSize: 14,
                                      // ),
                                    ),
                                    Container(
                                        height: 46,
                                        width: 243,
                                        child: Text(
                                          "Simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                          // style: GoogleFonts.quicksand(
                                          //   fontWeight: FontWeight.w600,
                                          //   fontSize: 12,
                                          // ),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                        return container;
                      },
                    ),
                  ),
                )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //  bottomSheet;
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
