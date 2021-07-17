import 'package:flutter/material.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_listTile_style_three_widget.dart';

class StudentsAssignedToDeliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          'الطلاب المكلف بتوصيلهم',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      // TODO : Get List Student From (DriverData.getStudentsAssignedToDeliver)
      body: Container(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return CustomListTileStyleThreeWidget(
                title: 'محمد علي محمد خاطر',
                subtitle1: 'غزة-الشجاعية-شارع مشتهى',
                subtitle2: '0593333225',
                onTap: null,
              );
            }),
      ),
    );
  }
}
