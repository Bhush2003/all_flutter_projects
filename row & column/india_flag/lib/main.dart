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
        backgroundColor: Colors.black,
        body:Center(
          child:Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Container(
              height: 500,
              width: 10,
              color: Colors.blue,
            )

          ]
        ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              //  crossAxisAlignment: CrossAxisAlignment.center,
            
          children: [
            Container(
              height: 100,
              width: 400,
              color: Colors.orange,
            ),
            Container(
              height: 100,
              width: 400,
              color: Colors.white,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image:NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/1024px-Ashoka_Chakra.svg.png")),
                
                  
                ),
              ),
            ),
            Container(
              height: 100,
              width: 400,
              color: Colors.green,
            ),
            
          ],

        ),
        

      ],),
    ),),);
  }
}
