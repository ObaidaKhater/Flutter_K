import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomItemBoxKidMediaWidget extends StatelessWidget {
  String title;
  String imagePath;
  Function onTap;

  CustomItemBoxKidMediaWidget(
      {@required this.title, @required this.imagePath, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        width: double.infinity,
        height: 200.h,
        margin: EdgeInsets.symmetric(vertical: 7.h, horizontal: 7.w),
        child: Container(
          alignment: Alignment.bottomCenter,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.transparent,
                  Colors.transparent
                ]),
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Text(
              this.title,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(5.r),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(this.imagePath),
          ),
        ),
      ),
    );
  }
}
