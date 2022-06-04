import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gas_project/components/rounded_button.dart';
import 'package:gas_project/constants.dart';
import 'package:gas_project/models/product.dart';
import 'package:gas_project/screens/details/components/rounded_icon_btn.dart';
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
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(product: product, onPress: () {}),
                TopRoundedContainer(
                    color: Color(0xFFF6F7F9),
                    child: ColorDots(product: product))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
