import 'package:flutter/material.dart';
import 'package:gas_project/components/default_button.dart';
import 'package:gas_project/constants.dart';
import 'package:gas_project/models/product.dart';
import 'package:gas_project/size_config.dart';

import './product_images.dart';
import './product_description.dart';
import './top_rounded_container.dart';
import './color_dots.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ProductImages(product: product),
      TopRoundedContainer(
        color: Colors.white,
        child: ProductDescription(product: product, onPress: () {}),
      ),
      Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: TopRoundedContainer(
          color: const Color(0xFFF6F7F9),
          child: ColorDots(product: product),
        ),
      ),
      TopRoundedContainer(
        color: Colors.white,
        withMargin: false,
        child: Padding(
          padding: EdgeInsets.only(
              left: SizeConfig.screenWidth * 0.15,
              right: SizeConfig.screenWidth * 0.15,
              top: getProportionateScreenWidth(15),
              bottom: proportionateScreenWidthOf40),
          child: DefaultButton(
            text: 'Add to Cart',
            press: () {},
          ),
        ),
      ),
    ]);
  }
}
