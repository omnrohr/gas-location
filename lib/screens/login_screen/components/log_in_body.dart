import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../constants.dart';
import '../../../../strings_save.dart';
import '../../../components/default_button.dart';
import '../../../size_config.dart';

import '../../../components/error_form.dart';
import './custom_suffix_icon.dart';
import './sign_in_form.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
          const SignInForm(),
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenHeight(40),
            width: getProportionateScreenWidth(40),
            decoration: const BoxDecoration(
                color: Color(0XFFF5F6F9), shape: BoxShape.circle),
            child: SvgPicture.asset('assets/icons/facebook-2.svg'),
          ),
        ],
      ),
    );
  }
}
