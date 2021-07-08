import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/driver_pages/students_assigned_to_deliver_page.dart';
import 'package:flutter_k/ui/pages/driver_pages/students_permissions_today_page.dart';
import 'package:flutter_k/ui/pages/main_page/main_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'ui/pages/sigIn_page/sigIn_with_pin_code_page.dart';

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
        home: MainPage(),
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
            primaryColor: Color(0xFF0063B2),
            accentColor: Color(0xFF9CC3D5),
            backgroundColor: Colors.white,
            textTheme: TextTheme(
              headline1: TextStyle(
                color: Colors.white,
                fontSize: 21.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'cairo',
              ),
              headline2: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                fontFamily: 'cairo',
              ),
              subtitle1: TextStyle(
                color: Colors.white70,
                fontSize: 16.sp,
                fontFamily: 'cairo',
              ),
              subtitle2: TextStyle(
                color: Colors.black,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'cairo',
              ),
              headline4: TextStyle(
                color: Colors.white,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'cairo',
              ),
              headline3: TextStyle(
                color: Colors.black,
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'cairo',
              ),
              headline5: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 14.sp,
                fontFamily: 'cairo',
              ),
            )),
      ),
    );
  }
}
