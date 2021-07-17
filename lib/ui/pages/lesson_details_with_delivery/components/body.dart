import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/lesson_details_with_delivery/components/teacher_evaluation.dart';
import 'package:flutter_k/ui/pages/lesson_details/components/title_lesson_and_details.dart';
import 'package:flutter_k/ui/pages/lesson_details/components/video_lesson.dart';
import '../../../../constants.dart';
import 'teacher_evaluation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TitleLessonAndDetails(
              title: 'تفاصيل الدرس',
              detail:
                  'الدرس هو فترة منظمة من الوقت يقصد فيه حدوث التعلم. وهو يتضمن طالبا أو أكثر (أيضا التلاميذ أو ... قد تختلف تفاصيل الخطة مع بعض كونها قائمة بسيطة من ما سيتم تدريسه في درس مع ما سيقوم به الآخرين بما يتضمنه ذلك من المزيد من التفاصيل.',
            ),
            divider(),
            VideoLesson(),
            // divider(),
            SizedBox(height: kDefaultPadding * 2.h),
            divider(),
            TeacherEvaluation(),
            SizedBox(height: kDefaultPadding.h),
            TitleLessonAndDetails(
              title: 'ملاحظات على التسليم من قبل المعلمة',
              detail:
                  'الدرس هو فترة منظمة من الوقت يقصد فيه حدوث التعلم. وهو يتضمن طالبا أو التفاصيل.',
            ),
          ],
        ),
      ),
    );
  }

  Divider divider() {
    return Divider(
      height: kDefaultPadding.h,
      thickness: 1,
      color: Colors.black38,
    );
  }
}
