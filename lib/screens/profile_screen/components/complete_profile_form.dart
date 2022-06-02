import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../components/error_form.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../strings_save.dart';
import '../../login_screen/components/custom_suffix_icon.dart';

class CompleteProfileForam extends StatefulWidget {
  const CompleteProfileForam({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForam> createState() => _CompleteProfileForamState();
}

class _CompleteProfileForamState extends State<CompleteProfileForam> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? firstName, lastName, phoneNumber, address;

  void addError(String err) {
    if (errors.contains(err)) return;
    setState(() {
      errors.add(err);
    });
  }

  void removeError(String err) {
    if (!errors.contains(err)) return;
    setState(() {
      errors.remove(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildFirstNameFormField(),
            SizedBox(height: getProportionateScreenHeight(25)),
            buildLastNameFormField(),
            SizedBox(height: getProportionateScreenHeight(25)),
            buildPhoneNumberFormField(),
            SizedBox(height: getProportionateScreenHeight(25)),
            buildAddressFormField(),
            SizedBox(height: getProportionateScreenHeight(25)),
            FormError(errors: errors),
            SizedBox(height: SizeConfig.screenHeight * 0.03),
            DefaultButton(
              text: 'Continue',
              press: () {
                if (_formKey.currentState!.validate()) {}
              },
            ),
          ],
        ));
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Text('First name'),
        hintText: 'Enter your first name',
        suffixIcon: CustomSuffixIcon(icons: Icons.person_outline),
      ),
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNameNullError)) {
          removeError(kNameNullError);
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          removeError(kNameNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kNameNullError)) {
          addError(kNameNullError);
          return '';
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          addError(kNameNullError);
          return '';
        }
        return null;
      },
      onSaved: (newValue) => firstName = newValue,
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Text('Last name'),
        hintText: 'Enter your last name',
        suffixIcon: CustomSuffixIcon(icons: Icons.person_outline),
      ),
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNameNullError)) {
          removeError(kNameNullError);
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          removeError(kNameNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kNameNullError)) {
          addError(kNameNullError);
          return '';
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kEmailNullError)) {
          addError(kNameNullError);
          return '';
        }
        return null;
      },
      onSaved: (newValue) => lastName = newValue,
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Text('Phone number'),
        hintText: 'Enter your phone number',
        suffixIcon: CustomSuffixIcon(icons: Icons.phone_android_rounded),
      ),
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
          removeError(kPhoneNumberNullError);
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kPhoneNumberNullError)) {
          removeError(kPhoneNumberNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPhoneNumberNullError)) {
          addError(kPhoneNumberNullError);
          return '';
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kPhoneNumberNullError)) {
          addError(kPhoneNumberNullError);
          return '';
        }
        return null;
      },
      onSaved: (newValue) => phoneNumber = newValue,
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Text('Address'),
        hintText: 'Enter your address',
        suffixIcon: CustomSuffixIcon(icons: Icons.pin_drop_outlined),
      ),
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullError)) {
          removeError(kAddressNullError);
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          removeError(kAddressNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kAddressNullError)) {
          addError(kAddressNullError);
          return '';
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          addError(kAddressNullError);
          return '';
        }
        return null;
      },
      onSaved: (newValue) => address = newValue,
    );
  }
}
