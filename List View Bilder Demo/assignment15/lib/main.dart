import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("list view Demo"),
        ),
        body: ListView(
          children: [
            Container(
              margin:const EdgeInsets.all(10),
              child:Image.network("https://tse4.mm.bing.net/th?id=OIP.1d6tBbNiJTFQNEK_k0sSjQHaFj&pid=Api&P=0&h=180"),
            ),
            Container(
              margin:const EdgeInsets.all(10),
              child:Image.network("https://tse4.mm.bing.net/th?id=OIP.Ce2m8qM-qT6o1vVpH-0OrAHaEo&pid=Api&P=0&h=180"),
            )
          ],
        )
      ),
    );
  }
}
