import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: proportionateScreenWidthOf20,
          vertical: getProportionateScreenWidth(15)),
      margin: EdgeInsets.symmetric(
        horizontal: proportionateScreenWidthOf20,
      ),
      width: double.infinity,
      // height: 90,
      decoration: BoxDecoration(
          color: const Color(0XFF4A3298),
          borderRadius: BorderRadius.circular(20)),
      child: const Text.rich(TextSpan(
          text: 'A summer surprise\n',
          style: const TextStyle(color: Colors.white),
          children: [
            TextSpan(
                text: 'CashBack 20%',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
          ])),
    );
  }
}
