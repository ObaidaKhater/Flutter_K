import 'package:flutter/material.dart';

class CustomCheckboxListTileWidget extends StatelessWidget {
  bool value;
  Function onChanged;

  CustomCheckboxListTileWidget(
      {@required this.value, @required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CheckboxListTile(
        value: this.value,
        onChanged: this.onChanged,
        activeColor: Theme.of(context).primaryColor.withOpacity(0.8),
        title: Text('> إضافة تكليف',style: Theme.of(context).textTheme.subtitle2,),
      ),
    );
  }
}
