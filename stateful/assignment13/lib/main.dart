import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;
  void _count() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            (count>=0) ? Column(
            children:[
            Container(
              height: 500,
              width: 10,
              color: Colors.black,
            )
          ],
        ):Column(),
            Column(
            
          children: [
            (count>=1)?Container(
              height: 100,
              width: 400,
              color: Colors.orange,
            ):Container(),
            (count>=2)?Container(
              height: 100,
              width: 400,
              color: Colors.white,
              child: (count>=3)?Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image:NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/1024px-Ashoka_Chakra.svg.png")),
                
                  
                ),
              ):Container(),
            ):Container(),
            (count>=4) ? Container(
              height: 100,
              width: 400,
              color: Colors.green,
            ):Container(),
            
          ],

        ),
        

      ],),
    
      floatingActionButton: FloatingActionButton(
        onPressed: _count,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),);
  }
}
