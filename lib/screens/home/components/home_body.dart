import 'package:flutter/material.dart';

import '../../../constants.dart';

import './home_header.dart';
import './discount_banner.dart';
import './categories.dart';
import './special_offer_card.dart';
import './popular_products.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: proportionateScreenWidthOf30),
            const HomeHeader(),
            SizedBox(height: proportionateScreenWidthOf30),
            const DiscountBanner(),
            SizedBox(height: proportionateScreenWidthOf30),
            const Categories(),
            SizedBox(height: proportionateScreenWidthOf30),
            const SpecialOffers(),
            SizedBox(height: proportionateScreenWidthOf30),
            const PopularProducts(),
          ],
        ),
      ),
    );
  }
}
