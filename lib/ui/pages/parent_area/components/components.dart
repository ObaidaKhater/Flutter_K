import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_container.dart';

SizedBox buildSizedBox(BuildContext context, String text) =>
    SizedBox(width: 200.w, height: 200.h, child: containerHere(context, text));

Widget containerHere(BuildContext context, String text) {
  return CustomContainer(context: context, text: text);
}
