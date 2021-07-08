import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/lessons_for_student/student_lessons_screen.dart';
import 'package:flutter_k/ui/pages/study_fees/study_fees_screen.dart';
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StudentLessonsScreen()),
              );
            },
            child: buildSizedBox(context, 'الدروس'),
          ),
          GestureDetector(
            onTap: () {},
            child: buildSizedBox(context, 'طلب إذن غياب'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StudyFeesScreen()),
              );
            },
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
