import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/students_solutions_page/custom_listTile_item_solution_widget.dart';

class StudentsSolutionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          'تصليح الدروس',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      // TODO : Get List Students Solutions From (TeacherData.getStudentsSolutions)
      body: Container(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return CustomListTileItemSolutionWidget(
                title: 'محمد علي حسان',
                subtitle1: 'الرياضيات',
                subtitle2: 'عنوان الدرس',
                containerText: '5/12',
                onTap: (){},
              );
            }),
      ),
    );
  }
}
