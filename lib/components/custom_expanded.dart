import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Expanded customExpanded(int flex) {
  return Expanded(
    flex: flex,
    child: Container(),
  );
}

Widget customSharedContainerWithText(BuildContext context, String text) {
  return Container(
    alignment: Alignment.center,
    // margin: EdgeInsets.symmetric(horizontal: 50.w),
    margin: EdgeInsets.all(16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.blueGrey.shade100,
      border: Border.all(width: 1.0.r, color: const Color(0xffffffff)),
    ),
    child: Text(
      text,
      style: Theme.of(context).textTheme.headline3,
      textAlign: TextAlign.center,
    ),
  );
}
