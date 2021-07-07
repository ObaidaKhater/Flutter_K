import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/student_area/components/custom_culmn_student_area.dart';
import 'package:flutter_k/ui/pages/student_area/components/custom_popupmenu_student_area.dart';

class StudentAreaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('منطقة الطالب'),
        actions: [
          CustomPopupMenuStudentArea(),
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: CustomColumnStudentArea(
        context: context,
      ),
    );
  }
}
