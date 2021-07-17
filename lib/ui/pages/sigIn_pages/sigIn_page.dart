import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/admin_dashboard_pages/taechers_admin_pages/main_teachers_admin_page.dart';
import 'package:flutter_k/ui/pages/driver_page_actions/driver_page_actions_screen.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_button_widget.dart';
import 'package:flutter_k/ui/pages/sigIn_pages/custom_textField_widget.dart';
import 'package:flutter_k/ui/pages/teacher_page/teacher_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String userName = '';
  String password = '';

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
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextFieldWidget(
                  labelText: 'أسم المستخدم',
                  icon: Icons.person_rounded,
                  notShowText: false,
                  textInputType: TextInputType.name,
                  validatorFunction: validatorUserNameFunction,
                  onSavedFunction: onSavedUserNameFunction,
                ),
                SizedBox(height: 20.h),
                CustomTextFieldWidget(
                  labelText: 'كلمة المرور',
                  icon: Icons.vpn_key_rounded,
                  notShowText: true,
                  textInputType: TextInputType.name,
                  validatorFunction: validatorPasswordFunction,
                  onSavedFunction: onSavedPasswordFunction,
                ),
                SizedBox(height: 60.h),
                CustomButtonWidget(
                  title: 'تسجيل الدخول',
                  onPressed: () {
                    _formKey.currentState.save();
                    if (userName.length != 0 && password.length != 0) {
                      if (userName == 'Drive' && password == '1234567') {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DriverPageActions()));
                      } else if (userName == 'Admin' && password == '1234567') {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MainTeachersAdminPage()));
                      }
                    }
                    //TODO: we have two user type ( teacher and driver)
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => TeacherScreen()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String validatorUserNameFunction(String value) {
    if (value.length == 0) return 'يرجى إدخال اسم المستخدم بشكل صحيح';
    return null;
  }

  String validatorPasswordFunction(String value) {
    if (value.length <= 6) return 'يرجى إدخال كلمة المرور بشكل صحيح';
    return null;
  }

  onSavedUserNameFunction(String value) {
    if (_formKey.currentState.validate()) return userName = value;
  }

  onSavedPasswordFunction(String value) {
    if (_formKey.currentState.validate()) return password = value;
  }
}
