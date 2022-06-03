import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    required this.onPress,
  }) : super(key: key);

  final Product product;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: proportionateScreenWidthOf20),
          child: Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold, fontSize: 23),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            width: getProportionateScreenWidth(64),
            decoration: BoxDecoration(
                color:
                    product.isFavorite ? Color(0XFFFFe6E6) : Color(0xFFF5F6F9),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            child: SvgPicture.asset(
              'assets/icons/Heart Icon_2.svg',
              color: product.isFavorite ? Color(0XFFFF4848) : Color(0XFFDBDEE4),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: proportionateScreenWidthOf20,
              right: getProportionateScreenWidth(64)),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: proportionateScreenWidthOf20, vertical: 10),
          child: InkWell(
            onTap: onPress,
            child: Row(
              children: [
                Text(
                  'See More Details..',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kPrimaryColor,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
