
import 'package:flutter/material.dart';
import 'package:final_year_project/View/controller/LoginController/Login_screen.dart';

class OTPVerificationScreen extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return _OTPVerificationScreenState();
  }
}

class _OTPVerificationScreenState extends State {
  final controller = OTPVerificationController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Enter the OTP sent to your mobile'),
            TextField(
              controller: controller.otpController,
              keyboardType: TextInputType.number,
              maxLength: 6,
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () => controller.verifyOTP(context),
              child: Text('Verify'),
            ),
          ],
        ),
      ),
    );
  }
}
