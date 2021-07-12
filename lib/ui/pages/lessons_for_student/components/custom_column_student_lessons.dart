import 'package:flutter/material.dart';
import 'package:flutter_k/components/custom_expanded.dart';
import 'package:flutter_k/ui/pages/student_lessons_for_semester_page/student_lessons_for_semester_page.dart';
import 'package:flutter_k/ui/pages/student_lessons_required_today_page/student_lessons_required_today_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomColumnStudentLessons extends StatelessWidget {
  final BuildContext context;
  const CustomColumnStudentLessons({
    Key key,
    this.context,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 200.h,
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StudentLessonsRequiredTodayPage()));
            },
            child:
                customSharedContainerWithText(context, 'الدروس المطلوبة اليوم'),
          ),
        ),
        SizedBox(
          height: 200.h,
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StudentLessonsForSemesterPage()));
            },
            child: customSharedContainerWithText(context, 'الدروس لهذا الفصل'),
          ),
        ),
      ],
    );
  }
}
