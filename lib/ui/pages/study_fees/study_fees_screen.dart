import 'package:flutter/material.dart';

import 'components/custom_column_study_fees.dart';

class StudyFeesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Theme.of(context).backgroundColor,
      body: CustomColumnStudyFees(context: context),
    );
  }

  AppBar appBar() {
    return AppBar(
      centerTitle: true,
      title: Text('الرسوم الدراسية'),
    );
  }
}
