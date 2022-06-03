import 'package:flutter/material.dart';
import 'package:gas_project/constants.dart';
import 'package:gas_project/size_config.dart';

import './otp_form.dart';

class OTPBody extends StatelessWidget {
  const OTPBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: proportionateScreenWidthOf20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text('OTP Verification', style: kBigTitleStyle()),
              const Text('We sent you code to + 1 898 860***',
                  textAlign: TextAlign.center),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              const OTPForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              InkWell(
                onTap: () {},
                child: const Text('Resend OTP Code',
                    style: TextStyle(decoration: TextDecoration.underline)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('This code will expire in '),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.00),
          duration: const Duration(seconds: 31),
          builder: (context, value, _) => Text(
            '00:${(value as double).toInt()}',
            style: const TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}
