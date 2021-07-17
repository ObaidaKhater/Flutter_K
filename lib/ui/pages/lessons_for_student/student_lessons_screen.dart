import 'package:flutter/material.dart';

import 'components/custom_column_student_lessons.dart';

class StudentLessonsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('الدروس', style: Theme.of(context).textTheme.headline1),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: CustomColumnStudentLessons(context: context),
    );
  }
}
