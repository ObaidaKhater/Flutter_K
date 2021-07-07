import 'package:flutter/material.dart';

import '../../shared_ui.dart';

Column buildColumn(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      buildExpanded(1),
      Expanded(
        flex: 4,
        child:GestureDetector(
          onTap: (){},
          child: buildContainer(context, 'تسجيل الدخول\nلأولياء الأمور'),
        ),
      ),
      buildExpanded(1),
      Expanded(flex: 1, child: Container()),
      Expanded(
        flex: 4,
        child: GestureDetector(
          onTap: () {},
          child: buildContainer(context, 'تسجيل الدخول\nللموظفين'),
        ),
      ),
      buildExpanded(1),
    ],
  );
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Theme.of(context).primaryColor,
    title: Text('تسجيل الدخول'),
    centerTitle: true,
  );
}

