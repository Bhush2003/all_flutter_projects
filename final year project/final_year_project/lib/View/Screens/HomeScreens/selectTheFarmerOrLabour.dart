import 'package:final_year_project/View/Screens/Login/LoginScreen.dart';
import 'package:final_year_project/View/controller/scaffoldBackground.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectTheFarmerOrLabour extends StatefulWidget {
  const SelectTheFarmerOrLabour({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SelectTheFarmerOrLabourState();
  }
}

class _SelectTheFarmerOrLabourState extends State{
  @override
  Widget build(BuildContext context) {
    return ScaffoldEveryScreen(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 120,
                ),
                Text("Select the option",style: GoogleFonts.mukta(
                  color: Color.fromRGBO(0,0,0,1),
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                  child: Container(
                    
                    height: 119,
                    width: 342,
                    alignment: Alignment.center,
                              
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Farmer",style: GoogleFonts.mukta(
                          fontSize: 24,
                          fontWeight: FontWeight.w500
                        ),),
                        Icon(Icons.arrow_right_alt_outlined,color: Colors.black)
                      ],
                    )
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                 GestureDetector(
                  onTap: () {

                  },
                   child: Container(
                               
                    height: 119,
                    width: 342,
                    alignment: Alignment.center,
                               
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Agricultural Labour",style: GoogleFonts.mukta(
                          fontSize: 24,
                          fontWeight: FontWeight.w500
                        ),),
                        Icon(Icons.arrow_right_alt_outlined,color: Colors.black)
                      ],
                    )
                                   ),
                 ),

              ],
            ),
          ],
        ),
      )
      
    );
  }
  
}
