import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/lessons_for_teacher/teacher_lessons_screen.dart';
import 'package:flutter_k/ui/pages/parent_area/components/components.dart';

class CustomLeftColumnTeacherScreen extends StatelessWidget {
  const CustomLeftColumnTeacherScreen({
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
                MaterialPageRoute(builder: (context) => TeacherLessonsScreen()),
              );
            },
            child: buildSizedBox(context, 'الدروس'),
          ),
          GestureDetector(
            onTap: () {},
            child: buildSizedBox(context, 'صندوق الشكاوي والطلبات'),
          ),
        ],
      ),
    );
  }
}
