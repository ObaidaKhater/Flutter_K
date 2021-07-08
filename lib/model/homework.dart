import 'package:flutter_k/model/details.dart';
import 'package:flutter_k/model/student_solution.dart';

class Homework{
  String id;
  String title;
  List<Details> details;
  int homeworkGrade;
  DateTime startDate;
  DateTime endDate;
  List<StudentSolution> studentsSolutions;

  Homework(this.id, this.title, this.details, this.homeworkGrade,
      this.startDate, this.endDate,this.studentsSolutions);
}