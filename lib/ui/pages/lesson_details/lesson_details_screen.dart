import 'package:flutter/material.dart';

import 'components/body.dart';

class LessonDatails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الدرس الأول',
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
