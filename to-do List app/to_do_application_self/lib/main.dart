import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ToDoApp(),
    );
  }
}

class ToDoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ToDoApp();
  }
}

class _ToDoApp extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(111, 81, 255, 1),
      body: Column(
        children: [
          
          Padding(
            padding: const EdgeInsets.only(left: 29,top: 49),
            child: Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Container(
                height: 65,
                width: 148,
                child: Column(
                  children: [
                    Text("Good morning",
                    style: TextStyle(
                      fontSize: 22,
                      
                    ),),
                    Text("Bhushan",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),),
                    
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 41,
          ),
          Container(
            height: 618,
            width: double.infinity,
            // color: Color.fromRGBO(217, 217, 217, 1),
            decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),color: Color.fromRGBO(217, 217, 217, 1),),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 140),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),)),
                    child: Text("Create to do list",style: TextStyle(
                      fontSize: 18,
                    ),),
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                Container(
                  height: 578,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),),
                    color: Colors.black
                  ),
                  child: ListView.builder(itemBuilder:)

                  
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
