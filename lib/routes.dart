import 'package:flutter/widgets.dart';
import 'package:gas_project/screens/login_screen/login_screen.dart';
import './screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  LogInScreen.routeName: (context) => const LogInScreen(),
};
