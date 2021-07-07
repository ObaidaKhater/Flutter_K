import 'package:flutter/material.dart';
import 'package:flutter_k/components/custom_expanded.dart';

class CustomColumnStudentArea extends StatelessWidget {
  final BuildContext context;
  const CustomColumnStudentArea({
    Key key,
    this.context,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        customExpanded(1),
        Expanded(
          flex: 4,
          child: GestureDetector(
            onTap: () {},
            child: customSharedContainerWithText(context, 'ألعاب ويب'),
          ),
        ),
        customExpanded(1),
        Expanded(
          flex: 4,
          child: GestureDetector(
            onTap: () {},
            child: customSharedContainerWithText(context, 'تطبيقات العاب'),
          ),
        ),
        customExpanded(1),
        Expanded(
          flex: 4,
          child: GestureDetector(
            onTap: () {},
            child: customSharedContainerWithText(context, 'قصص وحكايا'),
          ),
        ),
        customExpanded(1),
      ],
    );
  }
}
