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
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding * 2, horizontal: kDefaultPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textField(context),
            SizedBox(height: kDefaultPadding.h),
            button()
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
          'تفاصيل الشكوى',
          style: Theme.of(context).textTheme.headline3,
        ),
        LargeTextfield(),
      ],
    );
  }
}
