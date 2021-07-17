import 'package:flutter/material.dart';

import 'components/body.dart';

class HelpButton extends StatefulWidget {
  const HelpButton({Key key}) : super(key: key);

  @override
  _HelpButtonState createState() => _HelpButtonState();
}

class _HelpButtonState extends State<HelpButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('المساعدة', style: Theme.of(context).textTheme.headline1),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
