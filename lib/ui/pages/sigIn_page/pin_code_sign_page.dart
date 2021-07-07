import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/sigIn_page/custom_button_widget.dart';
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
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Theme.of(context).backgroundColor,
          ),
          onPressed: () {
            // TODO: Go (Main Page)
          },
        ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text('رقم تسجيل الدخول السريع'),
              SizedBox(height: 10.h),
              CustomPinCodeWidget(
                textController: pinCodeController,
              ),
              SizedBox(height: 60.h),
              CustomButtonWidget(
                title: 'تسجيل الدخول',
                onPressed: () {
                  //TODO: Login
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
