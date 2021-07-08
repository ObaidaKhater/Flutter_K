import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTileWidget extends StatelessWidget {
  String title;
  String subtitle1;
  String subtitle2;

  CustomListTileWidget({
    @required this.title,
    @required this.subtitle1,
    @required this.subtitle2,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      title: Text(title, style: Theme.of(context).textTheme.headline3),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(subtitle1, style: Theme.of(context).textTheme.headline5),
          Text(subtitle2, style: Theme.of(context).textTheme.headline5),
        ],
      ),
      leading: CircleAvatar(
        radius: 27.r,
        backgroundColor: Theme.of(context).primaryColor,
        child: Text(
          title.substring(0, 1),
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
