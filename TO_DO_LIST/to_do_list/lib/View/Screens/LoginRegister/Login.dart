import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/View/Screens/LoginRegister/Register.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 0),
      appBar: AppBar(
        leading: const Icon(Icons.keyboard_arrow_left_sharp),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 0),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 50),
              child: Container(
                width: double.infinity,
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(255, 255, 255, 0.87),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 53,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                left: 24,
              ),
              child: Text(
                "Username",
                style: TextStyle(
                    fontSize: 16, color: Color.fromRGBO(255, 255, 255, 0.87)),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Container(
                height: 48,
                width: 367,
                alignment: Alignment.center,
                child: TextFormField(
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1)
                  ),
                  strutStyle: const StrutStyle(
                    height: 0,
                  ),
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromRGBO(151, 151, 151, 1),
                      width: 2,
                      style: BorderStyle.solid,
                    )),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromRGBO(151, 151, 151, 1),
                      width: 1,
                      style: BorderStyle.solid,
                    )),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(151, 151, 151, 1),
                        width: 1,
                        style: BorderStyle.solid,
                      ),
                    ),
                    hintText: "Enter your Username",
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(151, 151, 151, 1),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                left: 24,
              ),
              child: Text(
                "Password",
                style: TextStyle(
                    fontSize: 16, color: Color.fromRGBO(255, 255, 255, 0.87)),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 48,
              width: 367,
              child: TextFormField(
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1)
                  ),
                strutStyle: const StrutStyle(
                  height: 0,
                ),
                decoration:  InputDecoration(
                  // counterStyle: TextStyle(
                  //   color: Colors.black,
                  // ),
                  // suffixIcon: IconButton(
                  //     onPressed: (){

                  //     }, icon: Icon(Icons.remove_red_eye)),
                  // prefixIcon: IconButton(onPressed:(){

                  // },
                  //  icon: Icon(Icons.password)
                  // ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Color.fromRGBO(151, 151, 151, 1),
                    width: 2,
                    style: BorderStyle.solid,
                  )),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Color.fromRGBO(151, 151, 151, 1),
                    width: 1,
                    style: BorderStyle.solid,
                  )),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(151, 151, 151, 1),
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                  ),
                  hintText: "* * * * * * * *",
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(151, 151, 151, 1),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 69,
            ),
            GestureDetector(
              child: Container(
                height: 48,
                width: 327,
                padding:
                    EdgeInsets.only(top: 13, bottom: 13, left: 142, right: 142),
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(134, 135, 231, 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
              ),
            ),
            SizedBox(
              height: 31,
            ),
            Image.asset("asset/Login_Ragister/Divider.png"),
            SizedBox(height: 29),
            Container(
              height: 48,
              width: 327,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: Color.fromRGBO(136, 117, 255, 1),
                  )),
              padding: EdgeInsets.only(left: 78),
              child: Row(
                children: [
                  Image.asset("asset/Login_Ragister/google.png"),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Login with Google",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(255, 255, 255, 0.87),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 48,
              width: 327,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: Color.fromRGBO(136, 117, 255, 1),
                  )),
              padding: EdgeInsets.only(
                left: 80,
                right: 28,
              ),
              child: Row(
                children: [
                  Image.asset("asset/Login_Ragister/apple.png"),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Register with Appel",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(255, 255, 255, 0.87),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 46,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 114),
              child: Row(
                children: [
                  Text(
                    "Don’t have an account? ",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(255, 255, 255, 0.87),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(255, 255, 255, 0.87),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
