import 'package:flutter/material.dart';
import 'package:gas_project/screens/sign_up/sign_up_screen.dart';

import '../../../constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?"),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(SignUpScreen.routeName);
          },
          child: const Text(
            'Sign Up',
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
