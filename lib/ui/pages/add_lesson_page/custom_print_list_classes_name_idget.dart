import 'package:flutter/material.dart';
import 'package:flutter_k/model/class.dart';

class CustomPrintListClassesNameWidget extends StatelessWidget {
  List<Class> classes;

  CustomPrintListClassesNameWidget({@required this.classes});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).accentColor.withOpacity(0.3),
      ),
      child: Column(
        children: this.classes.map((classModel) {
          return ListTile(
            title: Text(
              classModel.className,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            trailing: Icon(
              Icons.done_rounded,
              color: Colors.green,
            ),
          );
        }).toList(),
      ),
    );
  }
}
