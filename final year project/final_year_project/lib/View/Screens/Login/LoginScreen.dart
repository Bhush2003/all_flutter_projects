import 'package:final_year_project/View/Screens/ForgotPassword/Forget_Password_Screen.dart';
import 'package:final_year_project/View/Screens/Login/signUpScreen.dart';

import 'package:final_year_project/View/Screens/UserDefineWidget/MyTextField.dart';
import 'package:final_year_project/View/controller/LoginController/Login_Controller.dart';
import 'package:final_year_project/View/controller/scaffoldBackground.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State {
  final controller = LoginController();

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
                Container(
                  padding: EdgeInsets.all(10),
                  height: 435,
                  width: 345,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,

                    ),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Log In",style: GoogleFonts.mukta(
                        fontSize: 36,
                        fontWeight: FontWeight.w600
                      ),),
                      SizedBox(
                        height: 40,
                      ),
                      EmailTextField(controller: controller),
                      SizedBox(
                        height: 30,
                      ),
                      PasswordTextField(controller: controller),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(value: false, onChanged: (val) {}),
                          Text('Remember me'),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context)=>ForgotPasswordView()));
                              },
                              child: Text('Forgot Password?')),
                        ],
                      ),
                      // GestureDetector(
                      //   onTap: (){
                      //     Navigator.of(context).push(
                      //         MaterialPageRoute(builder: (context) => SignUpScreen()));
                      //   },
                      //   child: Container(
                      //     height: 40,
                      //     width: 246,
                      //     child: Text("Log in",style: TextStyle(
                      //       color: Colors.white,
                      //       fontSize: 18,
                      //     ),),
                      //   ),
                      // ),
                      
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => SignUpScreen()));
                        },
                        child: Text('Log In'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Don't have an account? Sign Up"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
