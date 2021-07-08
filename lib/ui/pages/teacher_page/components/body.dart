import 'package:flutter/material.dart';

import 'custom_left_column_teacher_screen.dart';
import 'custom_right_column_teacher_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          CustomRightColumnTeacherScreen(),
          CustomLeftColumnTeacherScreen(),
        ],
      ),
    );
  }
}
