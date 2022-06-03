import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gas_project/constants.dart';
import 'package:gas_project/models/product.dart';
import 'package:gas_project/size_config.dart';

import './product_images.dart';
import './product_description.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: ProductDescription(product: product, onPress: () {}),
        ),
      ],
    );
  }
}

class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    Key? key,
    required this.color,
    required this.child,
  }) : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: proportionateScreenWidthOf20),
      padding: EdgeInsets.only(top: proportionateScreenWidthOf20),
      width: double.infinity,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: child,
    );
  }
}
