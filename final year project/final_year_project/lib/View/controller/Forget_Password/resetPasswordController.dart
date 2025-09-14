import 'package:flutter/material.dart';

class ResetPasswordController {
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void resetPassword() {
    if (newPasswordController.text == confirmPasswordController.text) {
      // Add logic to reset password
      print('Password reset successfully');
    } else {
      print('Passwords do not match');
    }
  }
}
