import 'package:flutter/material.dart';
import 'package:gas_project/screens/login_success/login_success_screen.dart';
import '../../../components/default_button.dart';
import '../../../components/error_form.dart';
import '../../../screens/login_screen/components/no_account_text.dart';
import '../../../size_config.dart';

import '../../../constants.dart';
import '../../../strings_save.dart';
import '../../login_screen/components/custom_suffix_icon.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: proportionateScreenWidthOf20),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                'Forgot Password',
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(28),
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Please enter your email and we will send \nyou a link to return to your account',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              const ForgetPasswordFrom(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgetPasswordFrom extends StatefulWidget {
  const ForgetPasswordFrom({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordFrom> createState() => _ForgetPasswordFromState();
}

class _ForgetPasswordFromState extends State<ForgetPasswordFrom> {
  List<String> errors = [];
  String? email;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  label: Text('Email'),
                  hintText: 'Enter your email',
                  suffixIcon: CustomSuffixIcon(
                    icons: Icons.mail_outline_rounded,
                  ),
                ),
                onChanged: (value) {
                  if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                    setState(() {
                      errors.remove(kEmailNullError);
                    });
                  } else if (emailValidatorRegExp.hasMatch(value) &&
                      errors.contains(kInvalidEmailError)) {
                    setState(() {
                      errors.remove(kInvalidEmailError);
                    });
                  }
                },
                validator: (value) {
                  if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                    setState(() {
                      errors.add(kEmailNullError);
                    });
                  } else if (!emailValidatorRegExp.hasMatch(value) &&
                      !errors.contains(kInvalidEmailError)) {
                    setState(() {
                      errors.add(kInvalidEmailError);
                    });
                  }
                  return null;
                },
                onSaved: (newValue) => email = newValue,
              ),
            ],
          ),
        ),
        SizedBox(
          height: getProportionateScreenWidth(30),
        ),
        FormError(errors: errors),
        SizedBox(height: SizeConfig.screenHeight * 0.1),
        DefaultButton(
          text: 'Continue',
          press: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
              Navigator.of(context)
                  .pushReplacementNamed(LogInSuccessScreen.routName);
            }
          },
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.1),
        const NoAccountText(),
      ],
    );
  }
}
