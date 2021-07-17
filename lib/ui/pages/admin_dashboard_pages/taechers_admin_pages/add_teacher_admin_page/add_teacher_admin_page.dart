import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/add_lesson_page/custom_text_form_field_widget.dart';
import 'package:flutter_k/ui/pages/admin_dashboard_pages/taechers_admin_pages/add_teacher_admin_page/custom_select_teacher_gender_widget.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_button_widget.dart';

class AddTeacherAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 10,
      child: Container(
        margin: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'إضافة معلم',
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                  labelText: 'الأسم رباعي',
                  validator: (value) {
                    if (value.length == 0) return 'يرجى إدخال الأسم بشكل صحيح';
                    return null;
                  },
                  onSaved: (onSaved) {},
                  maxLines: 1),
              CustomTextFormField(
                  labelText: 'رقم الهوية',
                  validator: (value) {
                    if (value.length == 0)
                      return 'يرجى إدخال رقم الهوية بشكل صحيح';
                    return null;
                  },
                  onSaved: (onSaved) {},
                  maxLines: 1),
              CustomTextFormField(
                  labelText: 'رقم الهاتف الاول',
                  validator: (value) {
                    if (value.length == 0)
                      return 'يرجى إدخال رقم الهاتف الاول بشكل صحيح';
                    return null;
                  },
                  onSaved: (onSaved) {},
                  maxLines: 1),
              CustomTextFormField(
                  labelText: 'رقم الهاتف الثاني',
                  validator: (value) {
                    if (value.length == 0)
                      return 'يرجى إدخال رقم الهاتف الثاني بشكل صحيح';
                    return null;
                  },
                  onSaved: (onSaved) {},
                  maxLines: 1),
              CustomTextFormField(
                  labelText: 'البريد الإلكتروني',
                  validator: (value) {
                    if (value.length == 0)
                      return 'يرجى إدخال البريد الإلكتروني بشكل صحيح';
                    return null;
                  },
                  onSaved: (onSaved) {},
                  maxLines: 1),
              CustomTextFormField(
                  labelText: 'كلمةالمرور',
                  validator: (value) {
                    if (value.length == 0)
                      return 'يرجى إدخال كلمةالمرور بشكل صحيح';
                    return null;
                  },
                  onSaved: (onSaved) {},
                  maxLines: 1),
              CustomTextFormField(
                  labelText: 'الجنسية',
                  validator: (value) {
                    if (value.length == 0)
                      return 'يرجى إدخال الجنسية بشكل صحيح';
                    return null;
                  },
                  onSaved: (onSaved) {},
                  maxLines: 1),
              CustomSelectTeacherGenderWidget(),
              SizedBox(height: 20),
              CustomButtonWidget(title: 'إضافة', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
