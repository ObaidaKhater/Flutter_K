import 'package:flutter/material.dart';

import 'components/body.dart';

class PermissionAbsence extends StatefulWidget {
  const PermissionAbsence({Key key}) : super(key: key);

  @override
  _PermissionAbsenceState createState() => _PermissionAbsenceState();
}

class _PermissionAbsenceState extends State<PermissionAbsence> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('إذن غياب', style: Theme.of(context).textTheme.headline1),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
