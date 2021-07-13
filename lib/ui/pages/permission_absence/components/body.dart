import 'package:flutter/material.dart';
import 'package:flutter_k/constants.dart';
import 'package:flutter_k/ui/shared/shared_widget/large_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'progress_button.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            title(context),
            SizedBox(height: kDefaultPadding.h),
            textField(context),
            SizedBox(height: kDefaultPadding.h),
            button(),
          ],
        ),
      ),
    );
  }

  Center button() => Center(child: ProgressButtonAddAssignment());

  Column textField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'سبب الغياب',
          style: Theme.of(context).textTheme.headline3,
        ),
        LargeTextfield(),
      ],
    );
  }

  Text title(BuildContext context) {
    return Text(
      'ملاحظة يجب أخذ اذن غياب قبل 24 ساعة',
      style: TextStyle(
        color: Colors.red,
        fontSize: 19.sp,
        fontWeight: FontWeight.w600,
        fontFamily: 'cairo',
        decoration: TextDecoration.underline,
      ),
    );
  }
}
