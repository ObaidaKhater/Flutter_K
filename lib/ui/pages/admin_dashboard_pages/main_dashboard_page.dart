import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/admin_dashboard_pages/custom_drawer_widget.dart';

class MainDashboardPage extends StatelessWidget {
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
              child: CustomDrawerWidget(currentTab :currentTab),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.white,

            ),
          ),
        ],
      ),
    );
  }
}
