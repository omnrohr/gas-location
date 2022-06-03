import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key? key,
    required this.icons,
  }) : super(key: key);

  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, proportionateScreenWidthOf20 / 2,
          proportionateScreenWidthOf20 / 2, proportionateScreenWidthOf20 / 2),
      child: Icon(icons, size: proportionateScreenWidthOf20 * 1.4),
    );
  }
}
