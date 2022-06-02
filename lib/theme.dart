import 'package:flutter/material.dart';

import 'constants.dart';

// ThemeData theme() {
//   return ThemeData(
//     scaffoldBackgroundColor: Colors.white,
//     fontFamily: "Muli",
//     appBarTheme: appBarTheme(),
//     textTheme: textTheme(),
//     inputDecorationTheme: inputDecorationTheme(),
//     visualDensity: VisualDensity.adaptivePlatformDensity,
//   );
// }

// InputDecorationTheme inputDecorationTheme() {
//   OutlineInputBorder outlineInputBorder = OutlineInputBorder(
//     borderRadius: BorderRadius.circular(28),
//     borderSide: const BorderSide(color: kTextColor),
//     gapPadding: 10,
//   );
//   return InputDecorationTheme(
//     // If  you are using latest version of flutter then label text and hint text shown like this
//     // if you r using flutter less then 1.20.* then maybe this is not working properly
//     // if we are define our floatingLabelBehavior in our theme then it's not applied
//     floatingLabelBehavior: FloatingLabelBehavior.always,
//     contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
//     enabledBorder: outlineInputBorder,
//     focusedBorder: outlineInputBorder,
//     border: outlineInputBorder,
//   );
// }

// TextTheme textTheme() {
//   return const TextTheme(
//     bodyText1: TextStyle(color: kTextColor),
//     bodyText2: TextStyle(color: kTextColor),
//   );
// }

// AppBarTheme appBarTheme() {
//   return const AppBarTheme(
//     color: Colors.white,
//     elevation: 0,
//     brightness: Brightness.light,
//     iconTheme: IconThemeData(color: Colors.black),
//     textTheme: TextTheme(
//       headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
//     ),
//   );
// }

ThemeData theme() {
  return ThemeData(
    appBarTheme: appBarTheme(),
    primaryColor: oPrimaryColor,
    fontFamily: 'Muli',
    scaffoldBackgroundColor: kBackgroundColor,
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    inputDecorationTheme: inputDecorationTheme(),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: const BorderSide(color: kTextColor, width: 2),
      gapPadding: 10);
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    headline6: TextStyle(
      color: Colors.black87,
      fontFamily: 'Muli',
      fontWeight: FontWeight.w700,
      fontSize: 36,
    ),
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    titleTextStyle: TextStyle(
        color: Color(0XFF888888), fontSize: 18, fontWeight: FontWeight.w500),
    toolbarTextStyle: TextStyle(color: Color(0XFF888888)),
    iconTheme: IconThemeData(color: Colors.black),
    elevation: 0,
    centerTitle: true,
    backgroundColor: kBackgroundColor,
  );
}
