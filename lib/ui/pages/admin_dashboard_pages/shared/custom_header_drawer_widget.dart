import 'package:flutter/material.dart';

class CustomHeaderDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: NetworkImage(
            'https://img.icons8.com/bubbles/2x/admin-settings-male.png'),
      ),
      accountName: Text(
        'المدير',
        style: Theme.of(context).textTheme.headline1,
      ),
      accountEmail: Text(
        'حساب ادارة الروضة',
        style: Theme.of(context).textTheme.subtitle1,
      ),
      arrowColor: Colors.greenAccent,
    );
  }
}
