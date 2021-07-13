import 'package:flutter_k/model/student_solution.dart';

class Homework {
  String id;
  String title;
  String description;
  int homeworkGrade;
  DateTime startDate;
  DateTime endDate;
  List<StudentSolution> studentsSolutions;

  Homework(this.id, this.title, this.description, this.homeworkGrade,
      this.startDate, this.endDate, this.studentsSolutions);
}
