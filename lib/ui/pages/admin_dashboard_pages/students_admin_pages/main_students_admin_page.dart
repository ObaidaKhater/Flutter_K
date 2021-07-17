import 'package:flutter/material.dart';

import 'package:flutter_k/ui/pages/admin_dashboard_pages/shared/custom_drawer_widget.dart';
import 'package:flutter_k/ui/pages/admin_dashboard_pages/students_admin_pages/add_student_admin_page/add_student_admin_page.dart';
import 'package:flutter_k/ui/pages/admin_dashboard_pages/students_admin_pages/show_students_admin_page/show_students_admin_page.dart';
import 'package:flutter_k/ui/pages/admin_dashboard_pages/taechers_admin_pages/add_teacher_admin_page/add_teacher_admin_page.dart';

import 'package:flutter_k/ui/pages/admin_dashboard_pages/taechers_admin_pages/show_teachers_admin_page/show_teschars_admin_page.dart';

class MainStudentsAdminPage extends StatelessWidget {
  int currentTab = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            color: Color(0xFF3a3f52),
            child: CustomDrawerWidget(currentTab: currentTab),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            color: Color(0xFFeaedf2),
            child: GridView(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 700,
              ),
              children: [
                AddStudentAdminPage(),
                ShowStudentsAdminPage()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
