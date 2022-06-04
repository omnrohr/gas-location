import 'package:flutter/material.dart';

import '../../../constants.dart';

class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    Key? key,
    required this.color,
    this.child,
    this.withMargin = true,
  }) : super(key: key);

  final Color color;
  final Widget? child;
  final bool withMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: withMargin ? proportionateScreenWidthOf20 : 0),
      padding: EdgeInsets.only(top: proportionateScreenWidthOf20),
      width: double.infinity,
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: child,
    );
  }
}
