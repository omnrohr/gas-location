import 'package:flutter/material.dart';
import 'package:gas_project/screens/login_success/login_sucess_screen.dart';
import '../../../screens/forget_password/forget_password_screen.dart';

import '../../../components/default_button.dart';
import '../../../components/error_form.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../strings_save.dart';
import './custom_suffix_icon.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email, password;
  bool? rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: proportionateScreenWidthOf20),
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: proportionateScreenHeightOf20),
            buildPasswordFormFelid(),
            SizedBox(height: proportionateScreenHeightOf20),
            FormError(errors: errors),
            SizedBox(height: proportionateScreenHeightOf20),
            Row(
              children: [
                Checkbox(
                    activeColor: kPrimaryColor,
                    value: rememberMe,
                    onChanged: (value) {
                      setState(() {
                        rememberMe = value;
                      });
                    }),
                const Text('Remember me'),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(ForgetPasswordScreen.routeName);
                  },
                  child: const Text('Forgot Password',
                      style: TextStyle(decoration: TextDecoration.underline)),
                ),
              ],
            ),
            SizedBox(height: proportionateScreenWidthOf20),
            DefaultButton(
              text: 'Continue',
              press: () {
                // if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.of(context)
                    .pushReplacementNamed(LogInSuccessScreen.routName);
                // }
              },
            )
          ],
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
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
        // return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return '';
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return '';
        }
        return null;
      },
      onSaved: (newValue) => email = newValue,
    );
  }

  TextFormField buildPasswordFormFelid() {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Text('Password'),
        hintText: 'Enter your password',
        suffixIcon: CustomSuffixIcon(
          icons: Icons.lock_outline_rounded,
        ),
      ),
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return '';
        } else if (value.length < 8 &&
            value.isNotEmpty &&
            !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return '';
        }
        return null;
      },
      onSaved: (newValue) => password = newValue,
    );
  }
}
