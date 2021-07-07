import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/sigIn_page/custom_button_widget.dart';
import 'package:flutter_k/ui/pages/sigIn_page/custom_pin_code_widget.dart';
import 'package:flutter_k/ui/pages/sigIn_page/custom_textField_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SigInWithPinCodePage extends StatefulWidget {
  @override
  _SigInWithPinCodePageState createState() => _SigInWithPinCodePageState();
}

class _SigInWithPinCodePageState extends State<SigInWithPinCodePage> {
  TextEditingController userNameController;
  TextEditingController passwordController;
  TextEditingController pinCodeController;
  final userNameFormKey = GlobalKey<FormState>();
  final passwordFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    userNameController = TextEditingController();
    passwordController = TextEditingController();
    pinCodeController = TextEditingController();
  }

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
              Form(
                key: userNameFormKey,
                child: CustomTextFieldWidget(
                  textEditingController: userNameController,
                  labelText: 'أسم المستخدم',
                  icon: Icons.person_rounded,
                  notShowText: false,
                  textInputType: TextInputType.name,
                ),
              ),
              SizedBox(height: 10.h),
              Form(
                key: passwordFormKey,
                child: CustomTextFieldWidget(
                  textEditingController: passwordController,
                  labelText: 'كلمة المرور',
                  icon: Icons.vpn_key_rounded,
                  notShowText: true,
                  textInputType: TextInputType.name,
                ),
              ),
              SizedBox(height: 30.h),
              Text('رقم تسجيل الدخول السريع'),
              SizedBox(height: 10.h),
              CustomPinCodeWidget(
                textController: pinCodeController,
              ),
              SizedBox(height: 50.h),
              CustomButtonWidget(
                title: 'تسجيل الدخول',
                onPressed: () {
                  userNameFormKey.currentState.validate();
                  passwordFormKey.currentState.validate();

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
