import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    required this.image,
    required this.onPress,
  }) : super(key: key);
  final String image;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10),
            vertical: getProportionateScreenWidth(5)),
        padding: EdgeInsets.all(getProportionateScreenWidth(7)),
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(40),
        decoration: const BoxDecoration(
            color: Color(0XFFF5F6F9), shape: BoxShape.circle),
        child: SvgPicture.asset(image),
      ),
    );
  }
}
