import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import './section_title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionWithTitle(title: "Special for you", onPress: () {}),
        SizedBox(height: proportionateScreenWidthOf20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                imageSrc: 'assets/images/Image Banner 2.png',
                bgText: 'Smartphones',
                brandsCount: 18,
                onPress: () {},
              ),
              SpecialOfferCard(
                imageSrc: 'assets/images/Image Banner 3.png',
                bgText: 'Fashion',
                brandsCount: 24,
                onPress: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.imageSrc,
    required this.bgText,
    required this.brandsCount,
    required this.onPress,
  }) : super(key: key);
  final String imageSrc;
  final String bgText;
  final int brandsCount;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: proportionateScreenWidthOf20),
      child: InkWell(
        onTap: onPress,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(100),
          // this method also give the result
          // child: Container(
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(25),
          //         image: DecorationImage(
          //           image: AssetImage('assets/images/Image Banner 2.png'),
          //         )),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Stack(children: [
                Image.asset(
                  imageSrc,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0XFF343434).withOpacity(0.4),
                          Color(0XFF343434).withOpacity(0.15)
                        ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(15),
                      vertical: getProportionateScreenWidth(10)),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                            text: '$bgText\n',
                            style: TextStyle(
                                fontSize: proportionateScreenWidthOf20,
                                fontWeight: FontWeight.bold)),
                        TextSpan(text: '$brandsCount Brand'),
                      ],
                    ),
                  ),
                ),
              ])),
        ),
      ),
    );
  }
}
