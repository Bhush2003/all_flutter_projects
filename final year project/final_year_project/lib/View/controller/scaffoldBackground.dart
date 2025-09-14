import 'package:flutter/material.dart';

Widget ScaffoldEveryScreen({required Widget child}){

  return  Container(
        
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(image: AssetImage("asset/Home/Union.png")),
        ),
        child: child,
      );
    

}