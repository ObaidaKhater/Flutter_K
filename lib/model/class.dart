import 'package:flutter_k/model/student.dart';

enum LevelClass { Level1, Level2, Level3 }

class Class {
  String id;
  String className;
  LevelClass levelClass;
  List<Student> students;
  String englishTeacherId;
  String classNannyTeacherId;
  String schoolYear;

  Class(this.id, this.className, this.levelClass, this.students,
      this.englishTeacherId, this.classNannyTeacherId, this.schoolYear);
}
