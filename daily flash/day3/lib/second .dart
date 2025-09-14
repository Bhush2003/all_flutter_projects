import "package:flutter/material.dart";

class Assign2 extends StatelessWidget {
  const Assign2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
          height: 300,
          width: 300,
          
          
          child:
           Padding(
            padding: const EdgeInsets.all(10),
            child: Row(children: [
              Container(
                height:300,
                width: 50,
                child: Image.asset("assets/igm.png",alignment: Alignment.bottomLeft,),
              ),
              Padding(
                padding: const EdgeInsets.all(55.0),
                child: const Text("Core2web"),
              ),
              Container(
                height:300,
                width: 50,
                child: Image.asset("assets/igm.png",alignment: Alignment.topRight,),
              ),
            ],)
           ))));
  }
}