import 'package:flutter/material.dart';

import 'components/body.dart';

class ComplaintsScreen extends StatefulWidget {
  const ComplaintsScreen({Key key}) : super(key: key);

  @override
  _ComplaintsScreenState createState() => _ComplaintsScreenState();
}

class _ComplaintsScreenState extends State<ComplaintsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تقديم شكوى', style: Theme.of(context).textTheme.headline1),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
