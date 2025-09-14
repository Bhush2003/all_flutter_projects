import 'package:final_year_project/View/Screens/ForgotPassword/resetPasswodScreen.dart';
import 'package:final_year_project/View/Screens/Login/otpVerification.dart';
import 'package:final_year_project/View/controller/LoginController/Login_screen.dart';
import 'package:flutter/material.dart';

class OTPVerificationView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OTPVerificationViewState();
  }
}

class _OTPVerificationViewState extends State {
  final _controller = OTPVerificationController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter the OTP sent to your email"),
            SizedBox(height: 10),
            TextField(
              controller: _controller.otpController,
              decoration: InputDecoration(
                labelText: 'OTP',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ResetPasswordView() ));
              },
              child: Text('Verify'),
            ),
          ],
        ),
      ),
    );
  }
}
