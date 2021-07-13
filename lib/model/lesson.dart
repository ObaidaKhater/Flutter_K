
import 'package:flutter_k/model/homework.dart';

class Lesson {
  String id;
  String title;
  String description;
  String videoPath;
  bool isHomework;
  Homework homework;
  String idTeacherAdds;
  DateTime date;

  Lesson(this.id, this.title, this.description, this.isHomework, this.homework,
      this.idTeacherAdds, this.date);
}
