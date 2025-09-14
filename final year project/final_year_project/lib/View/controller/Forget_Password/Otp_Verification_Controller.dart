import 'package:flutter/material.dart';

class OTPVerificationController {
  final otpController = TextEditingController();

  void verifyOTP() {
    // Add logic for OTP verification here
    print('Verifying OTP: ${otpController.text}');
  }
}
