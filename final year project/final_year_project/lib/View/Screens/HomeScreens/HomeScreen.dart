import 'dart:async';

import 'package:final_year_project/View/controller/scaffoldBackground.dart';
import 'package:final_year_project/View/Screens/HomeScreens/language.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State {
  @override
  void initState() {
    super.initState();

    Timer(
        const Duration(seconds: 5),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Language())));
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldEveryScreen(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Image.asset("asset/Home/image_3.png"),
            const SizedBox(
              height: 228,
            ),
            Text("let’s Explore...",style: GoogleFonts.mukta(
              fontSize: 28,
            )),
          ],
      ),
    ));
  }
}
