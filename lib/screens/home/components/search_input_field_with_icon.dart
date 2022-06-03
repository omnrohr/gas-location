import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SearchInputFieldWithIcon extends StatelessWidget {
  const SearchInputFieldWithIcon({
    Key? key,
    required this.hintText,
    required this.icon,
  }) : super(key: key);
  final String hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.6,
      // height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kSecondaryColor.withOpacity(0.1),
      ),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: hintText,
            prefixIcon: Icon(icon),
            contentPadding: EdgeInsets.symmetric(
                horizontal: proportionateScreenWidthOf20,
                vertical: getProportionateScreenWidth(9))),
      ),
    );
  }
}
