import 'package:flutter/material.dart';

class CustomDividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey.withOpacity(0.4),
      indent: 15,
      endIndent: 15,
      thickness: 1,
    );
  }
}
