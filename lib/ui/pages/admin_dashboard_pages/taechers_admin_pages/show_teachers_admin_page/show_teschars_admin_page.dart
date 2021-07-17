import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/add_lesson_page/custom_text_form_field_widget.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_button_widget.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_listTile_style_two_widget.dart';

class ShowTeachersAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 10,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title:
                Text('المعلمين', style: Theme.of(context).textTheme.headline3),
            centerTitle: true,
          ),
          body: ListView(
            children: [
              CustomListTileStyleTwoWidget(
                title: 'محمد علي حسان',
                subtitle: 'الرياضيات,اللغة العربية ...',
                onTap: null,
              ),
              CustomListTileStyleTwoWidget(
                title: 'محمد خالد المغربي',
                subtitle: 'الرياضيات,اللغة العربية ...',
                onTap: null,
              ),
              CustomListTileStyleTwoWidget(
                title: 'مها حسن محمد سمارة',
                subtitle: 'اللغة الأنجليزية',
                onTap: null,
              ),
              CustomListTileStyleTwoWidget(
                title: 'غسان محمد علي البهتيني',
                subtitle: 'الرياضيات,اللغة العربية ...',
                onTap: null,
              ),
              CustomListTileStyleTwoWidget(
                title: 'أمجد علي محمد حسان',
                subtitle: 'اللغة الأنجليزية',
                onTap: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
