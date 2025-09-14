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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Portfolio"),
      ),
      body: Column(
        children: [
          (_counter>=1)?Text("Name:- Bhushan Badriprasad Chaudhari"):Text(""),
          (_counter>=2)?Container(
            height: 100,
            width: 100,
            child:Image.network("https://media.licdn.com/dms/image/C4E03AQEpztkH7t63ww/profile-displayphoto-shrink_100_100/0/1658861116474?e=1712188800&v=beta&t=DU7wyCYtQgPUDs4VBMn00L4yiF0C4G_Tei901P3l8TE"),
          ):Container(),
          (_counter>=3)?Text("College:- Zeal College of engineering and research"):Text(""),
          (_counter>4)?Container(
            height: 100,
            width: 100,
            child:Image.network("https://tse3.mm.bing.net/th?id=OIP.WpH39tVq2XEDjQOL3v8azwHaHa&pid=Api&P=0&h=180"),
          ):Container(),
          (_counter>5)?Text("Dream Company:-Farmer's Partner"):Text(""),
          (_counter>=6)?Container(
            margin: EdgeInsets.all(10),
            height: 100,
            width: 100,
            child:Text("Download ...")
          ):Container(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child:Text("Next")
        
      ),    );
  }
}
