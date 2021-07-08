import 'package:flutter/cupertino.dart';
import 'package:flutter_k/model/attendance_detection.dart';
import 'package:flutter_k/model/complaint.dart';
import 'package:flutter_k/model/location.dart';
import 'package:flutter_k/model/tuition_fees.dart';
import 'package:flutter_k/model/user.dart';

class Student extends User {
  String fullNameParent;
  String ssnParent;
  AttendanceDetection attendanceDetection;
  bool isDelivery;
  String idDriver;
  List<Complaint> complaints;
  TuitionFees tuitionFees;
  Location location;

  Student({
    @required String id,
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
    @required this.fullNameParent,
    @required this.ssnParent,
    @required this.location,
    @required this.tuitionFees,
    @required this.attendanceDetection,
    @required this.idDriver,
    @required this.complaints,
    @required this.isDelivery,
  }) : super(id, fullName, ssn, phoneNumber1, phoneNumber2, emilAddress,
            dateJone, dataBirthday, password, lastLogin, gender, nationality);
}
