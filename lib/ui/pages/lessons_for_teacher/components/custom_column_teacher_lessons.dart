import 'package:flutter/material.dart';
import 'package:flutter_k/components/custom_expanded.dart';
import 'package:flutter_k/ui/pages/students_solutions_page/students_solutions_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomColumnTeacherLessons extends StatelessWidget {
  final BuildContext context;
  const CustomColumnTeacherLessons({
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
            onTap: () {},
            child: customSharedContainerWithText(context, 'أضافة درس'),
          ),
        ),
        SizedBox(
          height: 200.h,
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StudentsSolutionsPage()),
              );
            },
            child: customSharedContainerWithText(context, 'تصليح الدروس'),
          ),
        ),
        SizedBox(
          height: 200.h,
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
            onTap: () {},
            child: customSharedContainerWithText(context, 'الدروس المضافة'),
          ),
        ),
      ],
    );
  }
}
