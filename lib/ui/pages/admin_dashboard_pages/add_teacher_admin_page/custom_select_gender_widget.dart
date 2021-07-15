import 'package:flutter/material.dart';
import 'package:flutter_k/model/user.dart';

class CustomSelectGenderWidget extends StatefulWidget {
  @override
  _CustomSelectGenderWidgetState createState() =>
      _CustomSelectGenderWidgetState();
}

class _CustomSelectGenderWidgetState extends State<CustomSelectGenderWidget> {
  Gender genderType = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: RadioListTile(
                activeColor: Theme.of(context).primaryColor,
                title:
                    Text('ذكر', style: Theme.of(context).textTheme.headline6),
                value: Gender.male,
                groupValue: genderType,
                onChanged: (value) {
                  genderType = value;
                  setState(() {});
                }),
          ),
          Expanded(
            child: RadioListTile(
                activeColor: Theme.of(context).primaryColor,
                title:
                    Text('أنثى', style: Theme.of(context).textTheme.headline6),
                value: Gender.female,
                groupValue: genderType,
                onChanged: (value) {
                  genderType = value;
                  setState(() {});
                }),
          )
        ],
      ),
    );
  }
}
