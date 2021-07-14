import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonWidget extends StatelessWidget {
  Function onPressed;
  String title;

  CustomButtonWidget({@required this.title, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 45.h,
      child: ElevatedButton(
        onPressed: this.onPressed,
        child: Text(
          this.title,
          style: Theme.of(context).textTheme.headline4,
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          backgroundColor:
              MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
