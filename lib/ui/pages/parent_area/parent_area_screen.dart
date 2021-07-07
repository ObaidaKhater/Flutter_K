import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class ParentAreaScreen extends StatelessWidget {
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
      title: Text('صفحة أولياء الأمور'),
    );
  }
}
