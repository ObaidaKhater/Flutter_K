import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemColumnWidget extends StatelessWidget {
  String title;
  IconData icon;

  ItemColumnWidget({@required this.title, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline2,
      ),
      leading: Container(
        width: 60.w,
        height: 60.h,
        child: Icon(
          icon,
          color: Theme.of(context).backgroundColor,
          size: 35.r,
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
