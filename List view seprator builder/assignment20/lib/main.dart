import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});
  @override
  State<StatefulWidget> createState() => _ListViewDemo();
}

class _ListViewDemo extends State {
  int y = 0;
  List<List<String>> imagelist = [
    [
      "https://tse2.mm.bing.net/th?id=OIP.SUe4w1Z2uM56Jio1VuqV0QHaEI&pid=Api&P=0&h=180",
      "https://tse1.mm.bing.net/th?id=OIP.oGn8EV_muX9FJoKhekwYmAHaE7&pid=Api&P=0&h=180"
      "https://tse2.mm.bing.net/th?id=OIP.ShWV8z7ob57Xr8JukJyEDwHaE8&pid=Api&P=0&h=180"
    ],
    [
      "https://tse4.mm.bing.net/th?id=OIP.eQvioKXtNM-nvQD9U7D8nwHaEK&pid=Api&P=0&h=180"
      "https://tse3.explicit.bing.net/th?id=OIP.-LZA8AyOekScasTovFKGugAAAA&pid=Api&P=0&h=180"
      "https://tse2.mm.bing.net/th?id=OIP.qbQTcUSVYu_H_wfhbPG4kgHaDc&pid=Api&P=0&h=180"
    ],
    [
      "https://tse3.mm.bing.net/th?id=OIF.CelxQuD1CyFdXAveG3OURg&pid=Api&P=0&h=180"
      "https://tse2.mm.bing.net/th?id=OIF.TMWR1qb8U5CPXX4FSFg8mg&pid=Api&P=0&h=180"
      "https://tse3.mm.bing.net/th?id=OIF.axswJlg39SntHDQVd1GQDg&pid=Api&P=0&h=180"
    ]
  ];
  @override
  Widget build(BuildContext context) {
    int x = 0;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cricket Player"),
      ),
      body: ListView.separated(
        itemCount: imagelist.length,
        itemBuilder: (BuildContext context, int idx) {
          return Container(
            height: 300,
            width: 300,
            margin: const EdgeInsets.all(10),
            child: Image.network(imagelist[x][y++]),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          x++;
          y = 0;
          return SizedBox(
            child: (x % 3 == 0)
                ? Center(
                    child: Text("====================="),
                  )
                : const Text(""),
          );
        },
      ),
    );
  }
}
