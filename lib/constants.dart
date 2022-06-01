import 'package:flutter/material.dart';
import './size_config.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kBackgroundColor = Color(0xFFF9F8FD);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}

const Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  // 100: Color.fromRGBO(136, 14, 79, .2),
  // 200: Color.fromRGBO(136, 14, 79, .3),
  // 300: Color.fromRGBO(136, 14, 79, .4),
  // 400: Color.fromRGBO(136, 14, 79, .5),
  // 500: Color.fromRGBO(136, 14, 79, .6),
  // 600: Color.fromRGBO(136, 14, 79, .7),
  // 700: Color.fromRGBO(136, 14, 79, .8),
  // 800: Color.fromRGBO(136, 14, 79, .9),
  // 900: Color.fromRGBO(136, 14, 79, 1),
};

MaterialColor oPrimaryColor = const MaterialColor(0xFFFF7643, color);
