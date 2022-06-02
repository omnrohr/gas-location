import 'package:flutter/widgets.dart';
import 'package:gas_project/screens/forget_password/forget_password_screen.dart';
import 'package:gas_project/screens/login_screen/login_screen.dart';
import 'package:gas_project/screens/login_success/login_sucess_screen.dart';
import 'package:gas_project/screens/otp_screen/otp_verification_screen.dart';
import 'package:gas_project/screens/profile_screen/complete_profile_screen.dart';
import 'package:gas_project/screens/sign_up/sign_up_screen.dart';
import './screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  LogInScreen.routeName: (context) => const LogInScreen(),
  ForgetPasswordScreen.routeName: (context) => const ForgetPasswordScreen(),
  LogInSuccessScreen.routName: (context) => const LogInSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OTPVerificationScreen.routeName: (context) => const OTPVerificationScreen(),
};
