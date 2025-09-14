import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/providerClassuser.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<providercountClass>(
      create: (BuildContext context) {
        return providercountClass();
      },
      child: MaterialApp(
        home: Provider1(),
      ),
    );
  }
}

class Provider1 extends StatefulWidget {
  const Provider1({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Provider1State();
  }
}

class _Provider1State extends State {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    print("Build");
    print("Build $i");
    final providercount = Provider.of<providercountClass>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Consumer<providercountClass>(builder: (BuildContext context, value, Widget? child) { 
          return  Text(value.i.toString());
         },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        providercount.setcount();
      }),
    );
  }
}
