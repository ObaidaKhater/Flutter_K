import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_k/ui/shared/shared_style/get_random_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTileStyleThreeWidget extends StatelessWidget {
  String title;
  String subtitle1;
  String subtitle2;
  Function onTap;

  CustomListTileStyleThreeWidget({
    @required this.title,
    @required this.subtitle1,
    @required this.subtitle2,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
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
        backgroundColor: RandomColor.randomColor.get(),
        child: Text(
          title.substring(0, 1),
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
