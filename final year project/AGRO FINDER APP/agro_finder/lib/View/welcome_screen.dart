import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _WelcomeScreenState();
  }
}

class _WelcomeScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Image.asset("assets/welcome_screen_image/profile.png"),
          ),
          Text(
            "Agro Finder",
            style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "Find agricultural jobs",
            style: GoogleFonts.roboto(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          // Container(
          //   height: ,
          // )
        ],
      ),
    );
  }
}
