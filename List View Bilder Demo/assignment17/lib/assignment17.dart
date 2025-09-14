import "package:flutter/material.dart";

class ImageApp extends StatefulWidget{
  const ImageApp({super.key});

  @override
  State<ImageApp> createState() => _ImageAppState();
}

class _ImageAppState extends State<ImageApp>{
  int index = 0;
  List<int> ls = List.empty(growable: true);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Changing Image App"),
      ),

      body: ListView.builder(
        itemCount: ls.length,
        itemBuilder: (context, index){
          return Container(
            height: 20,
            width: 50,
            color: Colors.orange,
            child: Text("$index"),
          );
        }
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(
            (){
              index++;
              ls.add(index);
          }
          );
          
        },
        child: const Text("Next"),
      ),
    );
  }
}