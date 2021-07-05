import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/main_page/main_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600),
              headline2: TextStyle(
                  color: Colors.black,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold),
              subtitle1: TextStyle(
                color: Colors.white70,
                fontSize: 16.sp,
              ),
            )),
      ),
    );
  }
}