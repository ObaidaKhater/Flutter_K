import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPinCodeWidget extends StatelessWidget {
  TextEditingController textController;

  CustomPinCodeWidget({@required this.textController});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: PinCodeTextField(
        appContext: context,
        length: 4,
        obscureText: false,
        animationType: AnimationType.scale,
        pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 50.h,
            fieldWidth: 40.w,
            activeFillColor: Colors.white,
            activeColor: Colors.green,
            inactiveFillColor: Colors.black.withOpacity(0.1),
            selectedFillColor: Theme.of(context).accentColor.withOpacity(0.4),
            disabledColor: Colors.amberAccent,
            inactiveColor: Colors.grey,
            selectedColor: Theme.of(context).primaryColor),
        animationDuration: Duration(milliseconds: 300),
        enableActiveFill: true,
        controller: this.textController,
        onCompleted: (v) {
          print("Completed");
        },
        onChanged: (String value) {},
      ),
    );
  }
}
