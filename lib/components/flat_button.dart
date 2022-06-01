import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class FlatButtonContainer extends StatelessWidget {
  const FlatButtonContainer(
      {Key? key,
      required this.onPress,
      required this.text,
      required this.fontSize})
      : super(key: key);
  final VoidCallback onPress;
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: oPrimaryColor,
      child: TextButton(
          onPressed: onPress,
          child: Text(
            text,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(fontSize),
                color: Colors.white,
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
