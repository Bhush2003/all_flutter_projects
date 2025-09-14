import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Assignment4();
}

class _Assignment4 extends State<Assignment4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset("assets/images/instagram_logo.png"),
        actions: [
          Icon(Icons.favorite_border_outlined),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.front_hand_outlined)
        ],
      ),
      body: Column(
        
        children: [
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                height: 80,
                width: 80,
                //color: Colors.black,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: NetworkImage("https://tse4.mm.bing.net/th?id=OIP.jwYhdRF2gDdFLN6f8HjSMwHaHL&pid=Api&P=0&h=180"))
                ),
              )
              
            ],
          )
        ],
      ),

       
    );
  }
}
