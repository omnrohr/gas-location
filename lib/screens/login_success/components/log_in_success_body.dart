import 'package:flutter/material.dart';
import 'package:gas_project/components/default_button.dart';
import 'package:gas_project/size_config.dart';

class LogInSuccessBody extends StatelessWidget {
  const LogInSuccessBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        SizedBox(
          width: double.infinity,
          height: SizeConfig.screenHeight * 0.45,
          child: Image.asset(
            'assets/images/success.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.08,
        ),
        Text(
          'LogIn Success',
          style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.08,
        ),
        const Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(text: 'Back to home', press: () {}),
        ),
        const Spacer(),
      ],
    );
  }
}
