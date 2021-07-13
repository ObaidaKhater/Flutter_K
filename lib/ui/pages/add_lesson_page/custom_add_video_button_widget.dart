import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAddVideoButtonWidget extends StatelessWidget {
  Function onTap;

  CustomAddVideoButtonWidget({@required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton.icon(
        onPressed: this.onTap,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(0),
          backgroundColor: MaterialStateProperty.all<Color>(
              Theme.of(context).accentColor.withOpacity(0.4)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        icon: Text(
          'إضافة فيديو',
          style: TextStyle(
              fontSize: 14.sp,
              color: Theme.of(context).primaryColor.withOpacity(0.7),
              fontFamily: 'cairo'),
        ),
        label: Icon(
          Icons.insert_link_rounded,
          size: 26.r,
          color: Theme.of(context).primaryColor.withOpacity(0.7),
        ),
      ),
    );
  }
}
