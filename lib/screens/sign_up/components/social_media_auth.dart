import 'package:flutter/material.dart';

import '../../login_screen/components/social_card.dart';

class SocialMediaAuthentication extends StatelessWidget {
  const SocialMediaAuthentication({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialCard(
          image: 'assets/icons/facebook-2.svg',
          onPress: () {},
        ),
        SocialCard(
          image: 'assets/icons/google-icon.svg',
          onPress: () {},
        ),
        SocialCard(
          image: 'assets/icons/twitter.svg',
          onPress: () {},
        ),
      ],
    );
  }
}
