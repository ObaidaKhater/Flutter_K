import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/parent_area/components/components.dart';

class CustomRightColumnTeacherScreen extends StatelessWidget {
  const CustomRightColumnTeacherScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          GestureDetector(
            child: buildSizedBox(context, 'الفصول الدراسية'),
          ),
          GestureDetector(
            onTap: () {},
            child: buildSizedBox(context, 'المحادثات'),
          ),
        ],
      ),
    );
  }
}