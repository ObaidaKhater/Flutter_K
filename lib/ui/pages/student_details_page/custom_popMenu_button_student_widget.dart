import 'package:flutter/material.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_item_popMenu_button_widget.dart';

enum Actions { AttendanceSheet, MarkSheet }

class CustomPopMenuButtonStudentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Actions>(
      itemBuilder: (context) {
        return [
          PopupMenuItem<Actions>(
              child: CustomItemPopMenuButtonWidget(
                title: 'كشف الحضور',
                icon: Icons.checklist,
              ),
              value: Actions.AttendanceSheet),
          PopupMenuItem<Actions>(
              child: CustomItemPopMenuButtonWidget(
                title: 'كشف العلامات',
                icon: Icons.list_alt,
              ),
              value: Actions.AttendanceSheet),
        ];
      },
      onSelected: (action) {
        if (action == Actions.AttendanceSheet)
          print('');
        // TODO : (Show Attendance Sheet to Student)
        else if (action == Actions.MarkSheet)
          print('');
        // TODO : (Show Mark Sheet to Student)
          return null;
      },
    );
  }
}
