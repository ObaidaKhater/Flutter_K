import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/add_lesson_page/custom_text_form_field_widget.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_button_widget.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_listTile_style_one_widget.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_listTile_style_two_widget.dart';

class ShowStudentsAdminPage extends StatelessWidget {
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
            title: Text('الطلاب', style: Theme.of(context).textTheme.headline3),
            centerTitle: true,
          ),
          body: ListView(
            children: [
              CustomListTileStyleOneWidget(
                title: 'محمد علي محمد',
                onTap: null,
              ),
              CustomListTileStyleOneWidget(
                title: 'علي محمد حسان',
                onTap: null,
              ),
              CustomListTileStyleOneWidget(
                title: 'محمد عصام الوحيدي',
                onTap: null,
              ),
              CustomListTileStyleOneWidget(
                title: 'ليان محمد عيسى',
                onTap: null,
              ),
              CustomListTileStyleOneWidget(
                title: 'براء علي حمد',
                onTap: null,
              ),
              CustomListTileStyleOneWidget(
                title: 'محسن غسان علي',
                onTap: null,
              ),
              CustomListTileStyleOneWidget(
                title: 'فضل علي حمد',
                onTap: null,
              ),
              CustomListTileStyleOneWidget(
                title: 'براء محمد حسان',
                onTap: null,
              ),
              CustomListTileStyleOneWidget(
                title: 'محسن غسان الوحيدي',
                onTap: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
