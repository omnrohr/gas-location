import 'package:flutter/material.dart';
import 'package:gas_project/constants.dart';

import '../../../size_config.dart';

class SectionWithTitle extends StatelessWidget {
  const SectionWithTitle({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);
  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: proportionateScreenWidthOf20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onPress,
            child: Text(
              title,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(18),
                  color: Colors.black),
            ),
          ),
          const Text('see more'),
        ],
      ),
    );
  }
}
