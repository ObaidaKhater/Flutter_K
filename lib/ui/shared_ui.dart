import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Expanded buildExpanded(int flex) {
  return Expanded(
    flex: flex,
    child: Container(),
  );
}

Widget buildContainer(BuildContext context, String text) {
  return Container(
    alignment: Alignment.center,
    // margin: EdgeInsets.symmetric(horizontal: 50.w),
    margin:
        EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 7),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Theme.of(context).accentColor,
      border: Border.all(width: 1.0.r, color: const Color(0xffffffff)),
    ),
    child: Text(
      text,
      style: TextStyle(fontSize: 25),
      textAlign: TextAlign.center,
    ),
  );
}
