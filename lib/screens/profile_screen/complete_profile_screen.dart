import 'package:flutter/material.dart';
import './components/profile_body.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);
  static const String routeName = '/complete-profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up')),
      body: CompleteProfileBody(),
    );
  }
}
