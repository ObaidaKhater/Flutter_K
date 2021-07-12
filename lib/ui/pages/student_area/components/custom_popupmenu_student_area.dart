import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/login/login_screen.dart';
import 'package:flutter_k/ui/pages/parent_area/parent_area_screen.dart';
import 'package:flutter_k/ui/pages/sigIn_pages/pin_code_sign_page.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_item_popMenu_button_widget.dart';

enum Actions { ParentArea, SignOut }

class CustomPopupMenuStudentArea extends StatelessWidget {
  const CustomPopupMenuStudentArea({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Actions>(
      itemBuilder: (BuildContext context) => <PopupMenuEntry<Actions>>[
        PopupMenuItem<Actions>(
          child: CustomItemPopMenuButtonWidget(
              title: 'منطقة ولي الأمر',
              icon: Icons.person,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PinCodeSignPage()),
                );
              }),
        ),
        PopupMenuItem<Actions>(
          child: CustomItemPopMenuButtonWidget(
              title: 'تسجيل خروج',
              icon: Icons.exit_to_app,
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                    (route) => false);
              }),
        ),
      ],
    );
  }
}
