import 'package:flutter/material.dart';
import 'package:gas_project/screens/profile_screen/complete_profile_screen.dart';

import '../../../components/default_button.dart';
import '../../../components/error_form.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../strings_save.dart';
import '../../login_screen/components/custom_suffix_icon.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email, password;
  bool? rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(20)),
            buildPasswordFormFelid(),
            SizedBox(height: getProportionateScreenHeight(20)),
            buildConfirmPasswordFormFelid(),
            SizedBox(height: getProportionateScreenHeight(20)),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenWidth(20)),
            DefaultButton(
              text: 'Continue',
              press: () {
                // if (_formKey.currentState!.validate()) {
                Navigator.of(context)
                    .pushNamed(CompleteProfileScreen.routeName);
                // }
              },
            ),
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
        suffixIcon: CustomSuffixIcon(icons: Icons.mail_outline_rounded),
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
        password = value;
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

  TextFormField buildConfirmPasswordFormFelid() {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Text('Confirm Password'),
        hintText: 'Re-enter your password',
        suffixIcon: CustomSuffixIcon(icons: Icons.lock_outline_rounded),
      ),
      onChanged: (value) {
        if (value == password) {
          setState(() {
            errors.remove(kMatchPassError);
          });
        }
      },
      validator: (value) {
        if (value != password && !errors.contains(kMatchPassError)) {
          setState(() {
            errors.add(kMatchPassError);
          });
          return '';
        }

        return null;
      },
    );
  }
}
