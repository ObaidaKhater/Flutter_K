import 'package:flutter/material.dart';

class CustomItemPopMenuButtonWidget extends StatelessWidget {
  String title;
  IconData icon;
  Function onTap;

  CustomItemPopMenuButtonWidget(
      {@required this.title, @required this.icon, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: this.onTap,
      title: Text(
        this.title,
        style: Theme.of(context).textTheme.headline6,
      ),
      leading: Icon(this.icon),
    );
  }
}
