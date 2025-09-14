import 'package:final_year_project/View/Screens/Login/otpVerification.dart';
import 'package:final_year_project/View/controller/Forget_Password/Forgot_Password_Controller.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ForgotPasswordViewState();
  }
}

class _ForgotPasswordViewState extends State {
  final _controller = ForgotPasswordController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller.emailOrPhoneController,
              decoration: InputDecoration(
                labelText: 'Email or Mobile Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OTPVerificationScreen() ));
              },
              child: Text('OTP Verification'),
            ),
          ],
        ),
      ),
    );
  }
}
