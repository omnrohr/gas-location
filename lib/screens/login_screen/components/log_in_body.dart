import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../constants.dart';
import '../../../../strings_save.dart';
import '../../../components/default_button.dart';
import '../../../size_config.dart';

import '../../../components/error_form.dart';
import './custom_suffix_icon.dart';
import './sign_in_form.dart';
import './social_card.dart';

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
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.04,
            ),
            const SignInForm(),
            SizedBox(
              height: SizeConfig.screenHeight * 0.04,
            ),
            SizedBox(
              height: getProportionateScreenWidth(20),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        color: kPrimaryColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
