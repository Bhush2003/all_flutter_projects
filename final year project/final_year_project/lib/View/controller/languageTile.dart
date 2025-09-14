import 'package:final_year_project/View/Screens/HomeScreens/selectTheFarmerOrLabour.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class languageTile extends StatelessWidget {
  String languageName = "";
  Color colorOfContainer = Colors.orange;

  languageTile(
      {super.key, required this.languageName, required this.colorOfContainer});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) =>const SelectTheFarmerOrLabour()));
      },
      child: Container(
        height: 70,
        width: 120,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 3,
              color: colorOfContainer,
            )),
        child: Text(
          "$languageName",
          style: GoogleFonts.mukta(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
