import 'package:flutter/material.dart';
import 'package:flutter_k/components/custom_expanded.dart';

class CustomColumnLogin extends StatelessWidget {
  const CustomColumnLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        customExpanded(1),
        expanded(context, 'تسجيل الدخول\nلأولياء الأمور'),
        customExpanded(1),
        expanded(context, 'تسجيل الدخول\nللموظفين'),
        customExpanded(1),
      ],
    );
  }

  Expanded expanded(BuildContext context, text) {
    return Expanded(
      flex: 4,
      child: GestureDetector(
        onTap: () {},
        child: customSharedContainerWithText(context, text),
      ),
    );
  }
}
