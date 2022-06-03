import 'package:flutter/material.dart';
import './components/otp_body.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({Key? key}) : super(key: key);
  static const String routeName = 'otp-verification';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification'),
      ),
      body: const OTPBody(),
    );
  }
}
