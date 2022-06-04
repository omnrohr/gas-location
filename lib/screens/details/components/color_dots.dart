import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';
import 'rounded_icon_btn.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ColorDots> createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int selectedColor = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: proportionateScreenWidthOf20),
      child: Row(
        children: [
          ...List.generate(
              widget.product.colors.length,
              (index) => ColorDot(
                    color: widget.product.colors[index],
                    isSelected: selectedColor == index,
                    onPress: () {
                      setState(() {
                        selectedColor = index;
                      });
                    },
                  )),
          const Spacer(),
          RoundedIconBtn(
              icon: Icons.remove,
              onPress: () {
                if (selectedColor == 0) {
                  setState(() {
                    selectedColor = widget.product.colors.length - 1;
                  });
                } else {
                  setState(() {
                    selectedColor -= 1;
                  });
                }
              }),
          SizedBox(width: getProportionateScreenWidth(15)),
          RoundedIconBtn(
              icon: Icons.add,
              onPress: () {
                if (selectedColor < widget.product.colors.length - 1) {
                  setState(() {
                    selectedColor += 1;
                  });
                } else {
                  setState(() {
                    selectedColor = 0;
                  });
                }
              }),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
    required this.onPress,
  }) : super(key: key);

  final Color color;
  final bool isSelected;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(right: 2),
        padding: const EdgeInsets.all(8),
        height: proportionateScreenWidthOf40,
        width: proportionateScreenWidthOf40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelected ? kPrimaryColor : Colors.transparent),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
