import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_progress_button/flutter_progress_button.dart';

class ProgressButtonAddAssignment extends StatefulWidget {
  const ProgressButtonAddAssignment({Key key}) : super(key: key);

  @override
  _ProgressButtonAddAssignmentState createState() =>
      _ProgressButtonAddAssignmentState();
}

class _ProgressButtonAddAssignmentState
    extends State<ProgressButtonAddAssignment> {
  @override
  Widget build(BuildContext context) {
    return ProgressButton(
      defaultWidget: const Text(
        'تقديم الطلب',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'cairo',
        ),
      ),
      progressWidget: const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
      color: Colors.blue,
      borderRadius: 50,
      width: 170.w,
      height: 35.h,
      onPressed: () async {
        int score =
            await Future.delayed(const Duration(milliseconds: 4000), () => 42);
      },
    );
  }
}
