import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFieldWidget extends StatelessWidget {
  String labelText;
  bool notShowText;
  IconData icon;
  TextInputType textInputType;
  TextEditingController textEditingController;


  CustomTextFieldWidget({
    @required this.labelText,
    @required this.notShowText,
    @required this.icon,
    @required this.textInputType,
    @required this.textEditingController,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      style: Theme.of(context).textTheme.subtitle2,
      obscureText: notShowText,
      keyboardType: textInputType,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon),
      ),
      validator: (value) {
        if (value.isEmpty) return 'يرجى إدخال هذا الحقل.';
        return null;
      },
    );
  }
}
