import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants.dart';
import 'ui/pages/lesson_details_with_delivery/lesson_details_with_delivery_screen.dart';

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
        home: LessonDatailsWithDelivery(),
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
