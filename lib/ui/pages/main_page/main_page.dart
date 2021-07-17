import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/employment_policy/employment_policy_screen.dart';
import 'package:flutter_k/ui/pages/kindergarten_policy/kindergarten_policy_screen.dart';
import 'package:flutter_k/ui/pages/login/login_screen.dart';
import 'package:flutter_k/ui/pages/main_page/custom_item_column_widget.dart';
import 'package:flutter_k/ui/pages/main_page/custom_news_box_widget.dart';
import 'package:flutter_k/ui/pages/registration_steps/registration_steps_screen.dart';
import 'package:flutter_k/ui/pages/who_are_we/who_are_we_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          'الصفحة الرئيسية',
          style: Theme.of(context).textTheme.headline1,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.account_circle_outlined,
              color: Theme.of(context).backgroundColor,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: CustomNewsBoxWidget(),
          ),
          Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomItemColumnWidget(
                      title: 'من نحن',
                      icon: Icons.apartment,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => WhoAreWe()));
                      },
                    ),
                    CustomItemColumnWidget(
                      title: 'سياسات الروضة',
                      icon: Icons.assignment_rounded,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => KindergartedPolicy()));
                      },
                    ),
                    CustomItemColumnWidget(
                      title: 'أليه التسجيل',
                      icon: Icons.login_rounded,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RegistrationSteps()));
                      },
                    ),
                    CustomItemColumnWidget(
                      title: 'سياسة التوظيف',
                      icon: Icons.app_registration,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => EmploymentPolicy()));
                      },
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
