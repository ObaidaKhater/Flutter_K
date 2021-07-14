import 'package:flutter/material.dart';

class CustomHeaderDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.red,
        backgroundImage: NetworkImage(
            'https://upload.wikimedia.org/wikipedia/ar/0/02/Crash_Bandicoot_On_the_Run%21.jpg'),
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
