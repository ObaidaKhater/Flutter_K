import 'package:flutter/material.dart';
import 'package:flutter_k/model/attendance_detection.dart';
import 'package:flutter_k/model/class.dart';
import 'package:flutter_k/model/location.dart';
import 'package:flutter_k/model/student.dart';
import 'package:flutter_k/model/tuition_fees.dart';
import 'package:flutter_k/model/user.dart';
import 'package:flutter_k/ui/pages/add_lesson_page/add_lesson_page.dart';
import 'package:flutter_k/ui/pages/app_game_pages/app_game_page.dart';
import 'package:flutter_k/ui/pages/cartoon_video_pages/cartoon_video_page.dart';
import 'package:flutter_k/ui/pages/classes_pages/class_details_page.dart';
import 'package:flutter_k/ui/pages/classes_pages/classes_page.dart';
import 'package:flutter_k/ui/pages/driver_pages/students_permissions_today_page.dart';
import 'package:flutter_k/ui/pages/main_page/main_page.dart';
import 'package:flutter_k/ui/pages/parent_chat_page/parent_chat_page.dart';
import 'package:flutter_k/ui/pages/parent_news_page/parent_news_paga.dart';
import 'package:flutter_k/ui/pages/student_lessons_for_semester_page/student_lessons_for_semester_page.dart';
import 'package:flutter_k/ui/pages/student_lessons_required_today_page/student_lessons_required_today_page.dart';
import 'package:flutter_k/ui/pages/students_solutions_page/students_solutions_page.dart';
import 'package:flutter_k/ui/pages/web_game_pages/web_game_page.dart';
import 'package:flutter_k/ui/pages/sigIn_pages/pin_code_sign_page.dart';
import 'package:flutter_k/ui/pages/sigIn_pages/sigIn_page.dart';
import 'package:flutter_k/ui/pages/sigIn_pages/sigIn_with_pin_code_page.dart';
import 'package:flutter_k/ui/pages/student_details_page/student_details_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants.dart';
import 'ui/pages/lesson_details/lesson_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 739),
      builder: () => MaterialApp(
        // Main Page
        home: AddLessonPage(),
        // Edit Directionality
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        // Edit Languages To App
        supportedLocales: [
          Locale("ar", ""),
        ],
        theme: ThemeData(
            // appBarTheme: AppBarTheme(
            //   textTheme: TextTheme(
            //     headline1: TextStyle(
            //       color: kTextLightColor,
            //       fontSize: 21.sp,
            //       fontWeight: FontWeight.w600,
            //       fontFamily: 'cairo',
            //     ),
            //   ),
            // ),
            primaryColor: kPrimaryColor,
            accentColor: kAccentColor,
            backgroundColor: kBackgroundColor,
            textTheme: TextTheme(
              headline1: TextStyle(
                color: kTextLightColor,
                fontSize: 21.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'cairo',
              ),
              headline2: TextStyle(
                color: kTextDarkColor,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                fontFamily: 'cairo',
              ),
              subtitle1: TextStyle(
                color: kTextLightColor,
                fontSize: 16.sp,
                fontFamily: 'cairo',
              ),
              subtitle2: TextStyle(
                color: kTextDarkColor,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'cairo',
              ),
              headline3: TextStyle(
                color: kTextDarkColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'cairo',
              ),
              headline4: TextStyle(
                color: kTextLightColor,
                fontSize: 17.sp,
                // fontWeight: FontWeight.w600,
                fontFamily: 'cairo',
              ),
              headline5: TextStyle(
                color: kTextDarkColor.withOpacity(0.5),
                fontSize: 14.sp,
                fontFamily: 'cairo',
              ),
              headline6: TextStyle(
                color: kTextDarkColor.withOpacity(0.8),
                fontSize: 14.sp,
                fontFamily: 'cairo',
              ),
              overline: TextStyle(
                fontSize: 10.sp,
                color: Colors.black,
                fontFamily: 'cairo',
              ),
            )),
      ),
    );
  }
}
