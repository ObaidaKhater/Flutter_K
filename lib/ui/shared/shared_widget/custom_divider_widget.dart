import 'package:flutter/material.dart';

class CustomDividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.black.withOpacity(0.3),
      indent: 15,
      endIndent: 15,
      thickness: 1.5,
    );
  }
}
