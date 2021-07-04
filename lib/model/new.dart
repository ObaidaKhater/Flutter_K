import 'package:flutter/cupertino.dart';

class New {
  String id;
  String title;
  String description;
  String imagePath;
  DateTime date;

  New(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.imagePath,
      @required this.date});
}
