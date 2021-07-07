import 'package:flutter/material.dart';
import 'components.dart';

class CustomLeftColumnParentArea extends StatelessWidget {
  const CustomLeftColumnParentArea({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: buildSizedBox(context, 'الأخبار'),
          ),
          GestureDetector(
            onTap: () {},
            child: buildSizedBox(context, 'المحادثات'),
          ),
          GestureDetector(
            onTap: () {},
            child: buildSizedBox(context, 'تتبع مكان الطفل'),
          ),
          GestureDetector(
            onTap: () {},
            child: buildSizedBox(context, 'تقييم الطالب'),
          ),
          GestureDetector(
            onTap: () {},
            child: buildSizedBox(context, 'كشف حضور الطالب'),
          ),
        ],
      ),
    );
  }
}
