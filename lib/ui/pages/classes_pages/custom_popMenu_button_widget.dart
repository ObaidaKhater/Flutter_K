import 'package:flutter/material.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_item_popMenu_button_widget.dart';

enum Actions { TakeAttendanceToday }

class CustomPopMenuButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Actions>(
      itemBuilder: (context) {
        return [
          PopupMenuItem<Actions>(
              child: CustomItemPopMenuButtonWidget(
                title: 'أخذ حضور الطلاب لليوم',
                icon: Icons.checklist,
              ),
              value: Actions.TakeAttendanceToday)
        ];
      },
      onSelected: (action){
        if(action == Actions.TakeAttendanceToday)
          // TODO : Go TO (Take Attendance Students Today Page)
          return null;
      },
    );
  }
}
