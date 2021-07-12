import 'package:flutter/material.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_listTile_style_three_widget.dart';

class StudentLessonsRequiredTodayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          'الدروس المطلوبة اليوم',
          style: Theme.of(context).textTheme.headline1,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Theme.of(context).backgroundColor,
          ),
          onPressed: () {
            // TODO: Go (Student Main Lessons Page)
          },
        ),
      ),
      // TODO : Get List Student Lessons Required Today From (LessonData.getStudentLessonsRequiredToday)
      body: Container(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return CustomListTileStyleThreeWidget(
                title: 'الدرس الاول',
                subtitle1: 'الرياضيات',
                subtitle2: 'الوقت المتبقي : 3 ساعات',
                onTap:(){
                  // TODO: Go TO Lesson Details Page
                },
              );
            }),
      ),
    );
  }
}
