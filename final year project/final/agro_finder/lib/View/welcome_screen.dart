import 'dart:async';

import 'package:agro_finder/View/language.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _WelcomeScreenState();
  }
}

class _WelcomeScreenState extends State {
  @override
  initState() {
    super.initState();
    Timer(Duration(seconds: 5),()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LanguageSelectionScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/welcome_screen_image/home page.png"),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
