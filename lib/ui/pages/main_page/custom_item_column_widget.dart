import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomItemColumnWidget extends StatelessWidget {
  String title;
  IconData icon;

  Function onTap;

  CustomItemColumnWidget({
    @required this.title,
    @required this.icon,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline3,
      ),
      leading: Container(
        width: 45.w,
        height: 45.h,
        child: Icon(
          icon,
          color: Theme.of(context).backgroundColor,
          size: 25.r,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: Theme.of(context).primaryColor),
      ),
      onTap: onTap,
    );
  }
}
