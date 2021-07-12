import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final BuildContext context;
  const CustomContainer({
    Key key,
    this.text,
    this.context,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // margin: EdgeInsets.symmetric(horizontal: 50.w),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).accentColor,
        border: Border.all(width: 1.0.r, color: const Color(0xffffffff)),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline3,
        textAlign: TextAlign.center,
      ),
    );
  }
}
