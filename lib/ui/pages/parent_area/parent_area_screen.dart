import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class ParentAreaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Body(),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text('صفحة أولياء الأمور',
          style: Theme.of(context).textTheme.headline1),
    );
  }
}
