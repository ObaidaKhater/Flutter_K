import 'package:flutter/material.dart';

class CustomRowTextItemWidget extends StatelessWidget {
  String title;
  String value;

  CustomRowTextItemWidget({@required this.title, this.value});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: this.title + ': ',
            style: Theme.of(context).textTheme.headline5,
          ),
          TextSpan(
            text: this.value,
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
    );
  }
}
