import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/admin_dashboard_pages/add_kid_media_admin_page/add_kid_media_admin_page.dart';

import 'package:flutter_k/ui/pages/admin_dashboard_pages/shared/custom_header_drawer_widget.dart';
import 'package:flutter_k/ui/pages/admin_dashboard_pages/shared/custom_item_drawer_widget.dart';
import 'package:flutter_k/ui/pages/admin_dashboard_pages/students_admin_pages/main_students_admin_page.dart';
import 'package:flutter_k/ui/pages/admin_dashboard_pages/taechers_admin_pages/add_teacher_admin_page/add_teacher_admin_page.dart';
import 'package:flutter_k/ui/pages/admin_dashboard_pages/taechers_admin_pages/main_teachers_admin_page.dart';

class CustomDrawerWidget extends StatelessWidget {
  int currentTab;

  CustomDrawerWidget({@required this.currentTab});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeaderDrawerWidget(),
        CustomItemDrawerWidget(
            currentTab: this.currentTab,
            indexItem: 0,
            icon: Icons.supervised_user_circle,
            title: 'إدارة ملعمين',
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return MainTeachersAdminPage();
              }));
            }),
        CustomItemDrawerWidget(
            currentTab: this.currentTab,
            indexItem: 1,
            icon: Icons.person_add_alt_rounded,
            title: 'إدارة الطلاب',
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return MainStudentsAdminPage();
              }));
            }),
        CustomItemDrawerWidget(
            currentTab: this.currentTab,
            indexItem: 2,
            icon: Icons.videocam_rounded,
            title: 'إضافة ميديا',
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return AddKidMediaAdminPage();
              }));
            }),
      ],
    );
  }
}
