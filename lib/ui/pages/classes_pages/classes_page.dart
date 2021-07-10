import 'package:flutter/material.dart';
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
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Theme.of(context).backgroundColor,
          ),
          onPressed: () {
            // TODO: Go (Main Teacher Page)
          },
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
                onTap: (){
                  //TODO: Go To (ClassDetailsPage)
                },
              );
            }),
      ),
    );
  }
}
