import 'package:flutter/material.dart';

class LoginController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  
  void login(BuildContext context) {
    // Implement login logic here
  }
  
  void navigateToSignUp(BuildContext context) {
    Navigator.pushNamed(context, '/signup');
  }
}
