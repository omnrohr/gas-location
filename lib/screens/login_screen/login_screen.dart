import 'package:flutter/material.dart';
import 'package:gas_project/constants.dart';
import 'package:gas_project/screens/login_screen/components/log_in_body.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  static const String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Sign In'),
        ),
        body: LogInBody(),
      ),
    );
  }
}
