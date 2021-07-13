import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/added_lessons_page/custom_list_lessons_widget.dart';

class AddedLessonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
          title: Text(
            'الدروس المضافة',
            style: Theme.of(context).textTheme.headline1,
          ),
          bottom: TabBar(
              labelStyle: Theme.of(context).textTheme.subtitle1,
              indicatorColor: Colors.white,
              tabs: [
            Tab(text: 'الرياضيات'),
            Tab(text: 'اللغة العربية'),
            Tab(text: 'العلوم'),
          ]),
        ),
        body: TabBarView(
          children: [
            CustomListLessonsWidget(),
            CustomListLessonsWidget(),
            CustomListLessonsWidget(),
          ],
        ),
      ),
    );
  }
}
