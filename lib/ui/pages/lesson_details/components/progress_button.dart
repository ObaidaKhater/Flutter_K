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
      defaultWidget: const Text('تسليم الواجب',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'cairo',
          )),
      progressWidget: const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
      color: Colors.blue,
      borderRadius: 50,
      width: 200.w,
      height: 48.h,
      onPressed: () async {
        int score =
            await Future.delayed(const Duration(milliseconds: 4000), () => 42);
      },
    );
  }
}
