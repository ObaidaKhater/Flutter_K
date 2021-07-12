import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/lessons_for_student/components/custom_column_student_lessons.dart';

class StudentLessonsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      backgroundColor: Theme.of(context).backgroundColor,
      body: CustomColumnStudentLessons(context: context),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text('الدروس', style: Theme.of(context).textTheme.headline1),
    );
  }
}
