import 'package:flutter/material.dart';
import 'package:gas_project/size_config.dart';
import 'components/splash_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: SplashBody(),
    );
  }
}
