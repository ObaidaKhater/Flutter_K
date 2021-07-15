import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/admin_dashboard_pages/add_kid_media_admin_page/custom_add_cartoon_video_widget.dart';
import 'package:flutter_k/ui/pages/admin_dashboard_pages/add_kid_media_admin_page/custom_add_game_app_widget.dart';
import 'package:flutter_k/ui/pages/admin_dashboard_pages/add_kid_media_admin_page/custom_add_web_game_widget.dart';
import 'package:flutter_k/ui/pages/admin_dashboard_pages/add_teacher_admin_page/custom_add_teacher_widget.dart';
import 'package:flutter_k/ui/pages/admin_dashboard_pages/custom_drawer_widget.dart';

class AddTeacherAdminPage extends StatelessWidget {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Color(0xFF3a3f52),
              child: CustomDrawerWidget(currentTab: currentTab),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Color(0xFFeaedf2),
              child: CustomAddTeacherWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
