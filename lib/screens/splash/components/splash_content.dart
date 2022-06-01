import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.image,
  }) : super(key: key);
  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          title,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: oPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(256),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
