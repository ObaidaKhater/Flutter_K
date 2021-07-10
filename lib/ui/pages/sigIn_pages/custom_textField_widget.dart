import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFieldWidget extends StatelessWidget {
  String labelText;
  bool notShowText;
  IconData icon;
  TextInputType textInputType;
  Function validatorFunction;
  Function onSavedFunction;

  CustomTextFieldWidget({
    @required this.labelText,
    @required this.notShowText,
    @required this.icon,
    @required this.textInputType,
    @required this.validatorFunction,
    @required this.onSavedFunction,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.subtitle2,
      obscureText: notShowText,
      keyboardType: textInputType,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon),
      ),
      validator: validatorFunction,
      onSaved:onSavedFunction,
    );
  }
}
