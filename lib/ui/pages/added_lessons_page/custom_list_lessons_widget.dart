import 'package:flutter/material.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_listTile_style_four_widget.dart';

class CustomListLessonsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return CustomListTileStyleFourWidget(
            title: 'عنوان الدرس',
            subtitle: 'الرياضيات',
            containerText: '11/7 | 9:20',
            onTap: () {},
          );
        },
      ),
    );
  }
}
