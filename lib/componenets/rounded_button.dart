import 'package:flutter/material.dart';
import 'package:gas_project/size_config.dart';
import '../constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function() press;
  final Color color, textColor;
  final double? height;
  final double fontsSize;
  final double? border;
  const RoundedButton(
      {Key? key,
      required this.text,
      required this.press,
      this.color = kPrimaryColor,
      this.textColor = Colors.white,
      this.height,
      this.border = 29,
      required this.fontsSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      height: height ?? size.height * 0.055,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(border!),
        child: newElevatedButton(),
      ),
    );
  }

  //Used:ElevatedButton as FlatButton is deprecated.
  //Here we have to apply customizations to Button by inheriting the styleFrom

  Widget newElevatedButton() {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          // vertical: 20,
        ),
        textStyle: TextStyle(
          color: color,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: textColor, fontSize: getProportionateScreenWidth(fontsSize)),
      ),
    );
  }
}
