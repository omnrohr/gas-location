import 'package:flutter/material.dart';
import 'package:gas_project/screens/login_screen/login_screen.dart';

import './components/log_in_success_body.dart';

class LogInSuccessScreen extends StatelessWidget {
  const LogInSuccessScreen({Key? key}) : super(key: key);
  static const String routName = '${LogInScreen.routeName}/login-success';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text('Login Success'),
      ),
      body: const LogInSuccessBody(),
    );
  }
}
