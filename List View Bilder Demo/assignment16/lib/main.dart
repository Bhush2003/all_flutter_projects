import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  //const MainApp({super.key});
  List<String> ImageList=["https://tse3.mm.bing.net/th?id=OIP.EMQZGlI1d0bmWKZyInbXSgHaDt&pid=Api&P=0&h=180",
  "https://tse2.mm.bing.net/th?id=OIP.9Izv-aszItToTtEqRMSE0QHaE6&pid=Api&P=0&h=180",
  "https://tse1.mm.bing.net/th?id=OIP.24T00MDK-RUhFnm1Do5PFwHaFj&pid=Api&P=0&h=180",
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       appBar: AppBar(
        centerTitle: true,
        title: const Text("List Builder Demo"),
       ),
       body: ListView.builder(
        itemCount:ImageList.length,
        itemBuilder:(context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            child: Image.network(ImageList[index] ),
          );
        }),
        ),
      );
    
  }
}
