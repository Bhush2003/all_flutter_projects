import "package:flutter/material.dart";

class Assign1 extends StatelessWidget {
  const Assign1({super.key});
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
            child: Image.asset("assets/igm.png")
           ))));
  }
}
