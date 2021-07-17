import 'package:flutter/material.dart';
import 'package:flutter_k/constants.dart';
import 'package:flutter_k/ui/pages/lesson_details/components/show_video.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: kDefaultPadding * 4.h),
            Text(
              'فيديو شرح طريقة استخدام التطبيق',
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(height: kDefaultPadding * 4.h),
            ShowVideo(),
          ],
        ),
      ),
    );
  }
}
