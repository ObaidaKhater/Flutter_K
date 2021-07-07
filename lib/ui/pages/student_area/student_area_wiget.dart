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
        child: InkWell(
          onTap: () {},
          child: buildContainer(context, 'ألعاب ويب'),
        ),
      ),
      buildExpanded(1),
      Expanded(
        flex: 4,
        child: InkWell(
          onTap: () {},
          child: buildContainer(context, 'تطبيقات العاب'),
        ),
      ),
      buildExpanded(1),
      Expanded(
        flex: 4,
        child: InkWell(
          onTap: () {},
          child: buildContainer(context, 'قصص وحكايا'),
        ),
      ),
      buildExpanded(1),
    ],
  );
}