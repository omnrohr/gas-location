import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class OTPForm extends StatefulWidget {
  const OTPForm({Key? key}) : super(key: key);

  @override
  State<OTPForm> createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  final _formKey = GlobalKey<FormState>();
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nexField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    obscureText: true,
                    onChanged: (value) {
                      nexField(value: value, focusNode: pin2FocusNode);
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                    focusNode: pin2FocusNode,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    obscureText: true,
                    onChanged: (value) {
                      nexField(value: value, focusNode: pin3FocusNode);
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                    focusNode: pin3FocusNode,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    obscureText: true,
                    onChanged: (value) {
                      nexField(value: value, focusNode: pin4FocusNode);
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                    focusNode: pin4FocusNode,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    obscureText: true,
                    onChanged: (value) {
                      pin4FocusNode.unfocus();
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.15,
            ),
            DefaultButton(
              text: 'Continue',
              press: () {},
            ),
          ],
        ));
  }
}
