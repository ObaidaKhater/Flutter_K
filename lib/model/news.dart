import 'package:flutter/cupertino.dart';

class News {
  String id;
  String title;
  String description;
  String imagePath;
  DateTime date;

  News(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.imagePath,
      @required this.date});
}
