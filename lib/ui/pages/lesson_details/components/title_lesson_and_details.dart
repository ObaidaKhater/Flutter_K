import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants.dart';

class TitleLessonAndDetails extends StatelessWidget {
  const TitleLessonAndDetails({
    Key key,
    this.title,
    this.detail,
  }) : super(key: key);

  final String title;
  final String detail;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$title',
          style: Theme.of(context).textTheme.headline3,
        ),
        SizedBox(height: kDefaultPadding / 2.h),
        Text(
          '$detail',
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}
