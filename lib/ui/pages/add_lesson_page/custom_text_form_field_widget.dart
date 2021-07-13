import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  String labelText;
  Function validator;
  Function onSaved;
  int maxLines;

  CustomTextFormField(
      {@required this.labelText,
      @required this.validator,
      @required this.onSaved,
      @required this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7),
      child: TextFormField(
        style: Theme.of(context).textTheme.headline6,
        onSaved: this.onSaved,
        validator: this.validator,
        maxLines: this.maxLines,
        decoration: InputDecoration(
          fillColor: Theme.of(context).accentColor.withOpacity(0.3),
          filled: true,
          labelText: this.labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
