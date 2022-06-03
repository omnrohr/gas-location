import 'package:flutter/material.dart';
import 'package:gas_project/size_config.dart';

import '../../../constants.dart';
import './complete_profile_form.dart';

class CompleteProfileBody extends StatelessWidget {
  const CompleteProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: proportionateScreenWidthOf20),
          child: Column(
            children: [
              Text('Complete your profile', style: kBigTitleStyle()),
              const Text('Complete your details or continue\nwith social media',
                  textAlign: TextAlign.center),
              SizedBox(height: proportionateScreenWidthOf20),
              const CompleteProfileForm(),
              SizedBox(height: proportionateScreenWidthOf20),
              const Text(
                'By Continuing you are confirm that you agree\nwith out Terms and conditions',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
