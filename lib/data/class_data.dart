import 'package:flutter_k/model/class.dart';

class ClassData {
  ClassData._();
  static ClassData classData = ClassData._();

  List<Class> getTeacherClasses(String idTeacher) {
    return[
      Class('id', 'className1', LevelClass.Level1, [], 'englishTeacherId', 'classNannyTeacherId',' schoolYear'),
      Class('id', 'className2', LevelClass.Level1, [], 'englishTeacherId', 'classNannyTeacherId',' schoolYear'),
      Class('id', 'className3', LevelClass.Level1, [], 'englishTeacherId', 'classNannyTeacherId',' schoolYear'),
      Class('id', 'className4', LevelClass.Level1, [], 'englishTeacherId', 'classNannyTeacherId',' schoolYear'),
      Class('id', 'className5', LevelClass.Level1, [], 'englishTeacherId', 'classNannyTeacherId',' schoolYear'),
    ];
  }



}
