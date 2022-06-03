import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

import 'login_in_form.dart';
import './social_card.dart';
import './no_account_text.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.04,
            ),
            Text(
              'Welcome Back',
              style: TextStyle(
                fontSize: getProportionateScreenWidth(28),
              ),
            ),
            Text(
              'Sign in with your email and password\nor continue with social media',
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.04,
            ),
            const SignInForm(),
            SizedBox(
              height: SizeConfig.screenHeight * 0.04,
            ),
            SizedBox(
              height: proportionateScreenWidthOf20,
            ),
            Row(
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
            ),
            const NoAccountText()
          ],
        ),
      ),
    );
  }
}
