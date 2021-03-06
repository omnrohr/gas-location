import 'package:flutter/material.dart';
import 'package:gas_project/screens/details/details_screen.dart';

import '../../../constants.dart';
import '../../../models/product.dart';
import './product_card.dart';
import './section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionWithTitle(title: 'Popular Products', onPress: () {}),
        SizedBox(height: proportionateScreenWidthOf20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                  demoProducts.length,
                  (index) => ProductCard(
                      product: demoProducts[index],
                      onPress: () => Navigator.of(context).pushNamed(
                          DetailsScreen.routeName,
                          arguments: ProductDetailsArgument(
                              product: demoProducts[index])))),
            ],
          ),
        ),
        SizedBox(height: proportionateScreenWidthOf20),
      ],
    );
  }
}
