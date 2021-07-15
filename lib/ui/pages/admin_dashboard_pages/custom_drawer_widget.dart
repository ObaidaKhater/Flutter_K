import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/admin_dashboard_pages/add_kid_media_admin_page/add_kid_media_admin_page.dart';
import 'package:flutter_k/ui/pages/admin_dashboard_pages/add_teacher_admin_page/add_teacher_admin_page.dart';
import 'package:flutter_k/ui/pages/admin_dashboard_pages/custom_header_drawer_widget.dart';
import 'package:flutter_k/ui/pages/admin_dashboard_pages/custom_item_drawer_widget.dart';

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
            title: 'إضافة ملعمين',
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return AddTeacherAdminPage();
              }));
            }),
        CustomItemDrawerWidget(
            currentTab: this.currentTab,
            indexItem: 1,
            icon: Icons.person_add_alt_rounded,
            title: 'إضافة طلاب',
            onTap: () {}),
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
