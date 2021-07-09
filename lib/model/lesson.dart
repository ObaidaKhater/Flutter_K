import 'package:flutter_k/model/details.dart';

class Lesson {
  String id;
  String title;
  Details details;
  bool isHomework;
  String idTeacherAdds;
  DateTime date;

  Lesson(this.id, this.title, this.details, this.isHomework, this.idTeacherAdds,
      this.date);
}
