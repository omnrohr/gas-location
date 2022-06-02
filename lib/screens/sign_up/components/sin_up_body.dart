import 'package:flutter/material.dart';
import 'package:gas_project/constants.dart';
import 'package:gas_project/screens/sign_up/components/sign_up_form.dart';

import '../../../size_config.dart';
import './social_media_auth.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.03),
            Text('Register Account', style: kBigTitleStyle()),
            const Text(
              'Complete your details or continue\n with social media.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.03),
            const SignUpForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.03),
            SizedBox(height: getProportionateScreenWidth(20)),
            const SocialMediaAuthentication(),
            const Text(
              'By Continuing you are confirm that you agree\nwith out Terms and conditions',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.03),
          ],
        ),
      ),
    );
  }
}
