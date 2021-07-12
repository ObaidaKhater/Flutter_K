import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/parent_area/parent_area_screen.dart';
import 'package:flutter_k/ui/pages/sigIn_pages/custom_button_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_pin_code_widget.dart';

class PinCodeSignPage extends StatelessWidget {
  TextEditingController pinCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          ' تسجيل الدخول',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text(
                'رقم تسجيل الدخول السريع',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              SizedBox(height: 10.h),
              CustomPinCodeWidget(
                textController: pinCodeController,
              ),
              SizedBox(height: 60.h),
              CustomButtonWidget(
                title: 'تسجيل الدخول',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ParentAreaScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
