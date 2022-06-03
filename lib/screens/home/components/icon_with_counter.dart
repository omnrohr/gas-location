import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.svgSrc,
    this.numOfProducts = 0,
    required this.onPress,
  }) : super(key: key);
  final String svgSrc;
  final int numOfProducts;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: getProportionateScreenWidth(46),
          height: getProportionateScreenWidth(46),
          decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1), shape: BoxShape.circle),
          child: IconButton(onPressed: onPress, icon: SvgPicture.asset(svgSrc)),
        ),
        if (numOfProducts != 0)
          Positioned(
            top: -3,
            right: 0,
            child: Container(
              width: getProportionateScreenWidth(16),
              height: getProportionateScreenWidth(16),
              decoration: BoxDecoration(
                  color: const Color(0XFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white)),
              child: Center(
                  child: Text(
                '$numOfProducts',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(10),
                  height: getProportionateScreenWidth(1),
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              )),
            ),
          ),
      ],
    );
  }
}
