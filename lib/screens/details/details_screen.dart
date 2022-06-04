import 'package:flutter/material.dart';
import './../../screens/details/components/product_details_body.dart';

import '../../models/product.dart';
import './components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  static const String routeName = '/product-details';

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArgument argument =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArgument;
    return Scaffold(
      backgroundColor: const Color(0XFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          AppBar().preferredSize.height,
        ),
        child: const CustomAppBar(rating: 4.5),
      ),
      body: ProductDetailsBody(
        product: argument.product,
      ),
    );
  }
}

class ProductDetailsArgument {
  final Product product;
  ProductDetailsArgument({required this.product});
}
