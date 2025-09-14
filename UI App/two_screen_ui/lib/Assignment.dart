import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Assignment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Assignment();
  }
}

class _Assignment extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          actions: [Icon(Icons.notifications)],
          primary: false,
          // toolbarHeight: 130,
          backgroundColor: Color.fromRGBO(205, 218, 218,1),
          shadowColor: Color.fromRGBO(205, 218, 218,1),
        ),
        backgroundColor: Color.fromRGBO(205, 218, 218,1),
        body: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(205, 218, 218, 1)),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 91,
                width: 210,
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text("Welcome to New",style: GoogleFonts.jost(fontSize: 26)),
                          Text("Educourse",style: GoogleFonts.jost(fontWeight:FontWeight.w700,fontSize: 37),),
                        ],
                      ),
                    ),
                  ],
                )
                ),
                 SizedBox(
                  height: 20,
                 ),
                   Container(
                        height: 57,
                        width: 320,
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(27)),
                        child: TextField(
                          decoration: InputDecoration.collapsed(hintText: "",border: InputBorder.none),
                        ),
                      ),
                SizedBox(
                  height: 20,
                 ),
                 Container(

                 )
                

            ],
          ),

        ),
      ),
    );
  }
}
