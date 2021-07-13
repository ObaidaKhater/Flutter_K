import 'package:flutter/material.dart';
import 'package:flutter_k/model/class.dart';
import 'package:flutter_k/ui/pages/classes_pages/custom_popMenu_button_class_widget.dart';
import 'package:flutter_k/ui/pages/student_details_page/student_details_page.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_row_text_item_widget.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_divider_widget.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_listTile_style_one_widget.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_listTile_style_two_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClassDetailsPage extends StatelessWidget {
  Class classModel;

  ClassDetailsPage(this.classModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          this.classModel.className,
          style: Theme.of(context).textTheme.headline1,
        ),
        actions: [CustomPopMenuButtonClassWidget()],
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
                    title: 'أسم الفصل',
                    value: this.classModel.className,
                  ),
                  CustomRowTextItemWidget(
                    title: 'مستوى الفصل',
                    value: this.classModel.printLevel(),
                  ),
                  CustomRowTextItemWidget(
                    title: 'عدد طلاب الفصل',
                    value: this.classModel.students.length.toString(),
                  ),
                  CustomRowTextItemWidget(
                    title: 'السنة الدراسية',
                    value: this.classModel.schoolYear,
                  ),
                ],
              ),
            ),
          ),
          Text('طلاب الفصل', style: Theme.of(context).textTheme.headline3),
          CustomDividerWidget(),
          Expanded(
              flex: 2,
              child: ListView.builder(
                  itemCount: this.classModel.students.length,
                  itemBuilder: (context, index) {
                    return CustomListTileStyleOneWidget(
                        title: this.classModel.students[index].fullName,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StudentDetailsPage(
                                      this.classModel.students[index])));
                          //TODO : Go (Student Details Page)
                        });
                  })),
        ],
      ),
    );
  }
}
