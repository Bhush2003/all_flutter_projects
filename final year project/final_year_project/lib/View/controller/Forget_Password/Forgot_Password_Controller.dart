import 'package:flutter/material.dart';

class ForgotPasswordController {
  final emailOrPhoneController = TextEditingController();

  void sendOTP() {
    // Add logic for OTP generation and sending here
    print('OTP sent to ${emailOrPhoneController.text}');
  }
}
