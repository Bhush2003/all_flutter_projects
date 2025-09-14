import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});
  @override
  State<StatefulWidget> createState() => _Assignment5();
}

class _Assignment5 extends State<Assignment5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "title",
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: [
          Icon(Icons.access_alarm_sharp),
          Icon(Icons.access_time),
        ],
      ),
      body:Center (child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(height:150,width:150,
              "https://tse2.mm.bing.net/th?id=OIP.OgSegX-8aOULVIPSGuBQRAHaHa&pid=Api&P=0&h=180",),

              SizedBox(
                height: 10,
                width:10,
              ),
          Image.network(height:150,width:150,
              "https://tse2.mm.bing.net/th?id=OIP.OgSegX-8aOULVIPSGuBQRAHaHa&pid=Api&P=0&h=180"),
              SizedBox(
                height: 10,
                width:10,
              ),
          Image.network(height:150,width:150,
              "https://tse2.mm.bing.net/th?id=OIP.OgSegX-8aOULVIPSGuBQRAHaHa&pid=Api&P=0&h=180"),
        ],
      ),
    )
    );
  }
}
