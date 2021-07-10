import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_k/ui/shared/shared_style/get_random_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTileStyleTwoWidget extends StatelessWidget {
  String title;
  String subtitle;
  Function onTap;

  CustomListTileStyleTwoWidget({
    @required this.title,
    @required this.subtitle,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 7.h),
      title: Text(title, style: Theme.of(context).textTheme.headline3),
      subtitle:Text(subtitle, style: Theme.of(context).textTheme.headline5),
      leading: CircleAvatar(
        radius: 27.r,
        backgroundColor: RandomColor.randomColor.get(),
        child: Text(
          title.substring(0, 1),
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      onTap: onTap,
    );
  }
}
