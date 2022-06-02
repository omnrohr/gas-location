import 'package:flutter/material.dart';
import './components/forgot_password_body.dart';

class ForgetPasswordScreen extends StatelessWidget {
  static const String routeName = '/forget-password';

  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Forgot Password'),
        ),
        body: const ForgotPasswordBody(),
      ),
    );
  }
}
