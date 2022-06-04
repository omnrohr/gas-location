import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gas_project/components/default_button.dart';
import 'package:gas_project/constants.dart';
import 'package:gas_project/models/cart.dart';
import 'package:gas_project/size_config.dart';

import './components/cart_body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static const String routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCartAppBar(context),
      body: CartBody(),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildCartAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            'Your cart',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            '${demoCarts.length} Items',
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(15),
          horizontal: getProportionateScreenWidth(30)),
      // height: 174,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: Offset(0.0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.15))
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                  height: proportionateScreenWidthOf40,
                  width: proportionateScreenWidthOf40,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset('assets/icons/receipt.svg'),
                ),
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        'Add Voucher code',
                        style: TextStyle(color: kPrimaryColor),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: kPrimaryColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: proportionateScreenWidthOf20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(TextSpan(text: 'Total:\n', children: [
                  TextSpan(
                      text: '\$337.3',
                      style: TextStyle(fontSize: 16, color: Colors.black))
                ])),
                SizedBox(
                    width: getProportionateScreenWidth(170),
                    child: DefaultButton(text: 'Checkout', press: () {})),
              ],
            )
          ],
        ),
      ),
    );
  }
}
