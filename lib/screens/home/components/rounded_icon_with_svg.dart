import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class RoundedIconWithSvg extends StatelessWidget {
  const RoundedIconWithSvg({
    Key? key,
    required this.svgSrc,
  }) : super(key: key);
  final String svgSrc;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.1), shape: BoxShape.circle),
        width: getProportionateScreenWidth(46),
        height: getProportionateScreenWidth(46),
        child: SvgPicture.asset(svgSrc));
  }
}
