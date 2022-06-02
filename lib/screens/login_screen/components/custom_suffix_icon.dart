import 'package:flutter/material.dart';

import '../../../size_config.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key? key,
    required this.icons,
  }) : super(key: key);

  final IconData icons;

  @override
  Widget build(BuildContext context) {
    final double iconPadding = getProportionateScreenWidth(20);
    return Padding(
      padding: EdgeInsets.fromLTRB(
          0, iconPadding / 2, iconPadding / 2, iconPadding / 2),
      child: Icon(icons, size: iconPadding * 1.4),
    );
  }
}
