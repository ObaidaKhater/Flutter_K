import 'package:flutter/material.dart';
import 'package:flutter_k/model/attendance_detection.dart';
import 'package:flutter_k/model/class.dart';
import 'package:flutter_k/model/location.dart';
import 'package:flutter_k/model/student.dart';
import 'package:flutter_k/model/tuition_fees.dart';
import 'package:flutter_k/model/user.dart';
import 'package:flutter_k/ui/pages/classes_pages/class_details_page.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_listTile_style_two_widget.dart';

class ClassesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          'الفصول الدراسية',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      // TODO : Get List Classes To Teacher From (TeacherData.getAllClasses)
      body: Container(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return CustomListTileStyleTwoWidget(
                title: 'فصل A',
                subtitle: 'عدد الطلاب : 18',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClassDetailsPage(Class(
                              '1',
                              'class 1',
                              LevelClass.Level1,
                              [
                                Student(
                                    id: '',
                                    fullName: 'fullName',
                                    ssn: 'ssn',
                                    phoneNumber1: 'phoneNumber1',
                                    phoneNumber2: 'phoneNumber2',
                                    emilAddress: 'emilAddress',
                                    dateJone: DateTime.now(),
                                    dataBirthday: DateTime.now(),
                                    password: 'mo',
                                    lastLogin: DateTime.now(),
                                    gender: Gender.male,
                                    nationality: '',
                                    fullNameParent: '',
                                    ssnParent: 'ssnParent',
                                    location: Location('', ''),
                                    tuitionFees: TuitionFees([]),
                                    attendanceDetection:
                                        AttendanceDetection([]),
                                    idDriver: '',
                                    complaints: [],
                                    isDelivery: true)
                              ],
                              '3333',
                              '2222',
                              '1111'))));
                  //TODO: Go To (ClassDetailsPage)
                },
              );
            }),
      ),
    );
  }
}
