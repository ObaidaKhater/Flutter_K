import 'package:flutter/material.dart';
import 'components.dart';

class CustomRightColumnParentArea extends StatelessWidget {
  const CustomRightColumnParentArea({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              print('wow');
            },
            child: buildSizedBox(context, 'الدروس'),
          ),
          GestureDetector(
            onTap: () {},
            child: buildSizedBox(context, 'طلب إذن غياب'),
          ),
          GestureDetector(
            onTap: () {},
            child: buildSizedBox(context, 'الرسوم الدراسية'),
          ),
          GestureDetector(
            onTap: () {},
            child: buildSizedBox(context, 'صندوق الشكاوي'),
          ),
          GestureDetector(
            onTap: () {},
            child: buildSizedBox(context, 'استطلاع الرأي'),
          ),
        ],
      ),
    );
  }
}
