import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Assignment18 extends StatefulWidget {
  @override
  State<Assignment18> createState() => _Assignment18();
}

class _Assignment18 extends State<Assignment18> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Aarogya Setu"),
        actions: [
          Icon(Icons.share_outlined),
          Icon(Icons.translate_outlined),
        ],
      ),
      body: ListView(
        children: [
          Text("More than 21.82 Core Indians are using Aarogya Setu App"),
           SizedBox(
                height: 5,
              ),
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Container(
                height: 80,
                width: 80,
                color: Colors.black,
                child: Container(
                  height: 80,
                  width: 80,
                  child: Image.network("https://tse4.mm.bing.net/th?id=OIP.A5kokgoYvRRZ-_WxSDQ23QHaHa&pid=Api&P=0&h=180"),
                  padding: EdgeInsets.all(0.5),
                  margin: EdgeInsets.all(0.5),
                  
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 80,
                width: 80,
                color: Colors.black,
                child: Container(
                  height: 80,
                  width: 80,
                  child: Image.network("https://tse4.mm.bing.net/th?id=OIP.wghWRDu82lIRWoPp40KfFQHaHa&pid=Api&P=0&h=180"),
                  padding: EdgeInsets.all(0.5),
                  margin: EdgeInsets.all(0.5),
                  
                ),
              ),SizedBox(
                width: 5,
              ),
              Container(
                height: 80,
                width: 80,
                color: Colors.black,
                child: Container(
                  height: 80,
                  width: 80,
                  child: Image.network("https://tse2.mm.bing.net/th?id=OIP.pd9vuM-4XICTgdLkV_K6jAHaHa&pid=Api&P=0&h=180"),
                  padding: EdgeInsets.all(0.5),
                  margin: EdgeInsets.all(0.5),
                  
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text("Create New ABHA"),
          Container(
            height: 300,
            width:200,
            child: Container(
              width: 300,
              height:200,
              child:Row(
                children: [
                  Column(
                    children: [
                      Text("Enabling longitudinal electronic"),
                      Text("helth record via Ayushman Bharat"),
                      Text("Helth Account(ABHA)"),
                    ],
                  ),Column(
                    children: [
                      Container(
                        height: 180,
                        width:180,
                        child: Image.network("https://tse4.mm.bing.net/th?id=OIP.wghWRDu82lIRWoPp40KfFQHaHa&pid=Api&P=0&h=180"),
                      )
                    ],
                  )
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}
