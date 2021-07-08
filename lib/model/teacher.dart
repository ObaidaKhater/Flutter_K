import 'package:flutter/cupertino.dart';
import 'package:flutter_k/model/subject.dart';
import 'package:flutter_k/model/user.dart';

class Teacher extends User {
  List<Subject> subjects;

  Teacher(
      {@required String id,
      @required String fullName,
      @required String ssn,
      @required String phoneNumber1,
      @required String phoneNumber2,
      @required String emilAddress,
      @required DateTime dateJone,
      @required DateTime dataBirthday,
      @required String password,
      @required DateTime lastLogin,
      @required Gender gender,
      @required String nationality,
      @required this.subjects})
      : super(id, fullName, ssn, phoneNumber1, phoneNumber2, emilAddress,
            dateJone, dataBirthday, password, lastLogin, gender, nationality);
}
