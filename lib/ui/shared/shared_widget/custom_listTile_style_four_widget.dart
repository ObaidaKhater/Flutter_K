import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_k/ui/shared/shared_style/get_random_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTileStyleFourWidget extends StatelessWidget {
  String title;
  String subtitle;
  String containerText;
  Function onTap;

  CustomListTileStyleFourWidget({
    @required this.title,
    @required this.subtitle,
    @required this.containerText,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      title: Text(this.title, style: Theme.of(context).textTheme.headline3),
      subtitle:
          Text(this.subtitle, style: Theme.of(context).textTheme.headline5),
      trailing: Container(
        width: 60.w,
        height: 20.h,
        child: Center(
          child: Text(
            this.containerText,
            style: Theme.of(context).textTheme.overline,
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.15),
            borderRadius: BorderRadius.circular(15)),
      ),
      leading: CircleAvatar(
        radius: 27.r,
        backgroundColor: RandomColor.randomColor.get(),
        child: Text(
          this.title.substring(0, 1),
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
