import 'package:flutter/material.dart';
import 'package:flutter_k/model/student.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_listTile_style_four_widget.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_row_text_item_widget.dart';
import 'package:flutter_k/ui/pages/student_details_page/custom_popMenu_button_student_widget.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_divider_widget.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class StudentDetailsPage extends StatelessWidget {
  Student student;

  StudentDetailsPage(this.student);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          this.student.fullName,
          style: Theme.of(context).textTheme.headline1,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Theme.of(context).backgroundColor,
          ),
          onPressed: () {
            // TODO: Go (Classes Details Page)
          },
        ),
        actions: [CustomPopMenuButtonStudentWidget()],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomRowTextItemWidget(
                    title: 'أسم الطالب',
                    value: this.student.fullName,
                  ),
                  CustomRowTextItemWidget(
                    title: 'الجنس',
                    value: this.student.printGender(),
                  ),
                  CustomRowTextItemWidget(
                    title: 'عنوان البريد الإلكتروني',
                    value: this.student.emilAddress,
                  ),
                  CustomRowTextItemWidget(
                    title: 'رقم الهاتف',
                    value: this.student.phoneNumber1,
                  ),
                  CustomRowTextItemWidget(
                    title: 'رقم الهاتف',
                    value: this.student.phoneNumber1,
                  ),
                ],
              ),
            ),
          ),
          Text('تكاليف الطالب', style: Theme.of(context).textTheme.headline3),
          CustomDividerWidget(),
          //TODO: Get List Homework To Student (StudentData.getAllHomework)
          Expanded(
              flex: 2,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return CustomListTileStyleFourWidget(
                        title: 'الدرس الاول',
                        subtitle: 'الرياضيات',
                        containerText: 'غير مقيم',
                        onTap: () {
                          //TODO : Go (Homework Details Page)
                        });
                  })),
        ],
      ),
    );
  }
}
