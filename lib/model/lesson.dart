import 'package:flutter_k/model/details.dart';
import 'package:flutter_k/model/homework.dart';

class Lesson {
  String id;
  String title;
  Details details;
  bool isHomework;
  Homework homework;
  String idTeacherAdds;
  DateTime date;

  Lesson(this.id, this.title, this.details, this.isHomework, this.homework,
      this.idTeacherAdds, this.date);
}
