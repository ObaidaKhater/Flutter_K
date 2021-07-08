import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomItemColumnWidget extends StatelessWidget {
  String title;
  IconData icon;

  CustomItemColumnWidget({@required this.title, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline2,
      ),
      leading: Container(
        width: 55.w,
        height: 55.h,
        child: Icon(
          icon,
          color: Theme.of(context).backgroundColor,
          size: 33.r,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: Theme.of(context).primaryColor),
      ),
      onTap: (){
        // TODO: Go To Page
      },
    );
  }
}