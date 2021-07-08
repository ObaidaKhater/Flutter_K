import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class TeacherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Body(),
    );
  }

  AppBar appBar() {
    return AppBar(
      centerTitle: true,
      title: Text('صفحة المعلمين'),
      actions: [
        TextButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.exit_to_app,
            color: Colors.black,
          ),
          label: Text(
            'تسجيل خروج',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
