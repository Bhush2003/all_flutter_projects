import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  int? _count = 0;
  void _printTableview() {
    setState(() {
      if(_count ==20){
      _count = 0;
      }else{
        _count=_count!+2;
      }
    });
  }

  Widget build(BuildContext con) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table of 2'),
        backgroundColor: Color.fromARGB(95, 2, 249, 56),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Click Button to Print Table'),
          const SizedBox(
            height: 20,
          ),
          Text(
            "$_count",
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: _printTableview, child: const Text('Print'))
        ],
      )),
    );
  }
}