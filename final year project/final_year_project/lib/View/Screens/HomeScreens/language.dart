import 'package:final_year_project/View/controller/languageTile.dart';
import 'package:final_year_project/View/controller/scaffoldBackground.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LanguageState();
  }
}

class _LanguageState extends State {
  final List<Map<String, dynamic>> languages = [
    {"name": "English", "color": Colors.green},
    {"name": "मराठी", "color": Colors.purple},
    {"name": "हिंदी", "color": Colors.orange},
    {"name": "বাংলা", "color": Colors.red},
    {"name": "ગુજરાતી", "color": Colors.teal},
    {"name": "മലയാളം", "color": Colors.blue},
    {"name": "தமிழ்", "color": Colors.purple},
    {"name": "తెలుగు", "color": Colors.cyan},
    {"name": "ಕನ್ನಡ", "color": Colors.amber},
    {"name": "پنجابی", "color": Colors.green},
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldEveryScreen(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Select a Language",
                style: GoogleFonts.mukta(
                  fontWeight: FontWeight.w600,
                  fontSize: 26,
                ),
              ),
              SizedBox(
                height: 50,
              ),

              SizedBox(
                height: 450,
                width: 350,
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 25,
                      crossAxisSpacing: 25,
                      childAspectRatio: 2.53,
                    ),
                    itemCount: languages.length,
                    itemBuilder: (context, index) {
                      return languageTile(languageName:  languages[index]["name"],colorOfContainer:  languages[index]["color"]);
                    }),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
