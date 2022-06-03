import 'package:flutter/material.dart';

import '../../../size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key,
    required this.icon,
    required this.onPress,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: FlatButton(
          padding: EdgeInsets.zero,
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          onPressed: onPress,
          child: Icon(
            icon,
            color: Colors.black,
          )),
    );
  }
}
