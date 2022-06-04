import 'package:flutter/material.dart';
import 'package:gas_project/constants.dart';
import 'package:gas_project/screens/cart/cart_screen.dart';

import './icon_with_counter.dart';
import './search_input_field_with_icon.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: proportionateScreenWidthOf20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchInputFieldWithIcon(
            hintText: 'Search product',
            icon: Icons.search,
          ),
          // RoundedIconWithSvg(svgSrc: 'assets/icons/Cart Icon.svg'),
          IconBtnWithCounter(
              svgSrc: 'assets/icons/Cart Icon.svg',
              onPress: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              }),
          IconBtnWithCounter(
              svgSrc: 'assets/icons/Bell.svg',
              numOfProducts: 3,
              onPress: () {}),
        ],
      ),
    );
  }
}
