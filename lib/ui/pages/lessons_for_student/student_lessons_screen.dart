import 'package:flutter/material.dart';

import 'components/custom_column_student_lessons.dart';

class StudentLessonsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Theme.of(context).backgroundColor,
      body: CustomColumnStudentLessons(context: context),
    );
  }

  AppBar appBar() {
    return AppBar(
      centerTitle: true,
      title: Text('الدروس'),
    );
  }
}
