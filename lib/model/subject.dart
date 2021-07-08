import 'package:flutter_k/model/lesson.dart';

class Subject{
  String id;
  String nameSubject;
  List<Lesson> lessons;

  Subject(this.id, this.nameSubject, this.lessons);
}