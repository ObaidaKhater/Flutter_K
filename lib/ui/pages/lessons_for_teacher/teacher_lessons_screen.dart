import 'package:flutter/material.dart';

import 'components/custom_column_teacher_lessons.dart';

class TeacherLessonsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Theme.of(context).backgroundColor,
      body: CustomColumnTeacherLessons(
        context: context,
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      centerTitle: true,
      title: Text('صفحة الدروس'),
    );
  }
}
