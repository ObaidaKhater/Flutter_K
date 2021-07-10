import 'package:flutter/material.dart';
import 'package:flutter_k/model/class.dart';
import 'package:flutter_k/ui/pages/classes_pages/class_details_page.dart';
import 'package:flutter_k/ui/pages/classes_pages/classes_page.dart';
import 'package:flutter_k/ui/pages/driver_pages/students_permissions_today_page.dart';
import 'package:flutter_k/ui/pages/sigIn_pages/pin_code_sign_page.dart';
import 'package:flutter_k/ui/pages/sigIn_pages/sigIn_page.dart';
import 'package:flutter_k/ui/pages/sigIn_pages/sigIn_with_pin_code_page.dart';
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
        home: ClassDetailsPage(Class('555', 'className', LevelClass.Level1, [], '33', '66', '1999')),
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
            )),
      ),
    );
  }
}
