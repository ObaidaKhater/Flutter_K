import 'package:flutter/material.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_listTile_style_four_widget.dart';

class StudentLessonsForSemesterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          'الدروس لهذا الفصل',
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
      // TODO : Get List Student Lessons For Semester From (LessonData.getStudentLessonsForSemester)
      body: Container(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return CustomListTileStyleFourWidget(
                title: 'الدرس الاول',
                subtitle: 'الرساضيات',
                containerText: 'غير مسلم',
                onTap: () {
                  // TODO: Go TO Lesson Details Page
                },
              );
            }),
      ),
    );
  }
}
