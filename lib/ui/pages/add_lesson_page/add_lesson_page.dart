import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_k/model/subject.dart';
import 'package:flutter_k/model/teacher.dart';
import 'package:flutter_k/model/user.dart';
import 'package:flutter_k/ui/pages/add_lesson_page/custom_box_add_video_widget.dart';
import 'package:flutter_k/ui/pages/add_lesson_page/custom_dropdown_button_form_field_widget.dart';
import 'package:flutter_k/ui/pages/add_lesson_page/custom_select_classes-widget.dart';
import 'package:flutter_k/ui/pages/add_lesson_page/custom_text_form_field_widget.dart';
import 'package:flutter_k/ui/pages/sigIn_pages/custom_textField_widget.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_divider_widget.dart';

class AddLessonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          'الدروس المضافة',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextFormField(
                  labelText: 'عنوان الدرس',
                  maxLines: 1,
                  validator: (String value) {},
                  onSaved: (String value) {}),
              CustomTextFormField(
                  labelText: 'تفاصيل الدرس',
                  maxLines: 3,
                  validator: (String value) {},
                  onSaved: (String value) {}),
              SizedBox(height: 5),
              CustomBoxAddVideoWidget(),
              SizedBox(height: 20),
              CustomDropdownButtonFormFieldWidget(
                teacher: Teacher(
                    id: 'id',
                    fullName: 'fullName',
                    ssn: 'ssn',
                    phoneNumber1: 'phoneNumber1',
                    phoneNumber2: 'phoneNumber2',
                    emilAddress: 'emilAddress',
                    dateJone: DateTime.now(),
                    dataBirthday: DateTime.now(),
                    password: 'password',
                    lastLogin: DateTime.now(),
                    gender: Gender.male,
                    nationality: 'nationality',
                    subjects: [
                      Subject('id', 'الرياضيات', []),
                      Subject('id', 'اللغة العربية', []),
                      Subject('id', 'العلوم', []),
                    ]),
                validator: (String value) {},
                onSaved: (String value) {},
              ),
              SizedBox(height: 20),
              CustomDividerWidget(),
              SizedBox(height: 20),
              CustomSelectClassesWidget(teacher: Teacher(
                  id: 'id',
                  fullName: 'fullName',
                  ssn: 'ssn',
                  phoneNumber1: 'phoneNumber1',
                  phoneNumber2: 'phoneNumber2',
                  emilAddress: 'emilAddress',
                  dateJone: DateTime.now(),
                  dataBirthday: DateTime.now(),
                  password: 'password',
                  lastLogin: DateTime.now(),
                  gender: Gender.male,
                  nationality: 'nationality',
                  subjects: [
                    Subject('id', 'الرياضيات', []),
                    Subject('id', 'اللغة العربية', []),
                    Subject('id', 'العلوم', []),
                  ]),),

            ],
          ),
        ),
      ),
    );
  }
}
