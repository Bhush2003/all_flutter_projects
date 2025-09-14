import 'package:final_year_project/View/controller/LoginController/Login_Controller.dart';
import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  final LoginController controller;
  const EmailTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(18),
      ),
      child: TextField(
        controller: controller.emailController,
        textAlign: TextAlign.justify,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: 'Email',
        ),
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget{

  final LoginController controller;

  const PasswordTextField({super.key,required this.controller});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        
        border: Border.all(),
        borderRadius: BorderRadius.circular(18),
      ),
      child: TextField(
        obscureText: true,

        controller: controller.passwordController,
        textAlign: TextAlign.justify,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: 'Password',
        ),
      ),
    );
  }
  
}

// class String
