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

  String printLevel() {
    if (this.levelClass == LevelClass.Level1) return 'الحضانة';
    if (this.levelClass == LevelClass.Level2) return 'البستان';
    if (this.levelClass == LevelClass.Level3) return 'التمهيدي';
    return null;
  }
}
