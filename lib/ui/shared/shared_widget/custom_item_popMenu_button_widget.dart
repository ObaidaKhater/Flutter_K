import 'package:flutter/material.dart';

class CustomItemPopMenuButtonWidget extends StatelessWidget {
  String title;
  IconData icon;

  CustomItemPopMenuButtonWidget({@required this.title, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        this.title,
        style: Theme.of(context).textTheme.headline6,
      ),
      leading: Icon(this.icon),
    );
  }
}
