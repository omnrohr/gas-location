import 'package:flutter/material.dart';
import 'package:gas_project/strings_save.dart';
import './constants.dart';
import './screens/splash/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        primaryColor: oPrimaryColor,
        fontFamily: 'Muli',
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SplashScreen(),
    );
  }
}
