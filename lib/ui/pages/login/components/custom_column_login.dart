import 'package:flutter/material.dart';
import 'package:flutter_k/components/custom_expanded.dart';
import 'package:flutter_k/ui/pages/sigIn_pages/sigIn_page.dart';
import 'package:flutter_k/ui/pages/sigIn_pages/sigIn_with_pin_code_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomColumnLogin extends StatelessWidget {
  const CustomColumnLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        customExpanded(1),
        // expanded(context, 'تسجيل الدخول\nلأولياء الأمور'),
        ContainerLogin(
          text: 'تسجيل الدخول\nلأولياء الأمور',
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return SigInWithPinCodePage();
            }));
          },
        ),
        customExpanded(1),
        ContainerLogin(
          text: 'تسجيل الدخول\nللموظفين',
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return SignInPage();
            }));
          },
        ),
        customExpanded(1),
      ],
    );
  }

  Expanded expanded(BuildContext context, text) {
    return Expanded(
      flex: 4,
      child: GestureDetector(
        onTap: () {},
        child: customSharedContainerWithText(context, text),
      ),
    );
  }
}

class ContainerLogin extends StatelessWidget {
  final String text;
  final Function onTap;

  const ContainerLogin({Key key, this.text, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          // margin: EdgeInsets.symmetric(horizontal: 50.w),
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.blueGrey.shade100,
            border: Border.all(width: 1.0.r, color: const Color(0xffffffff)),
          ),
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
