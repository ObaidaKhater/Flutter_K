import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/driver_pages/custom_listTile_widget.dart';

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
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Theme.of(context).backgroundColor,
          ),
          onPressed: () {
            // TODO: Go (Main Driver Page)
          },
        ),
      ),
      // TODO : Get List Student From (DriverData.getStudentsAssignedToDeliver)
      body: Container(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return CustomListTileWidget(
                title: 'محمد علي محمد خاطر',
                subtitle1: 'غزة-الشجاعية-شارع مشتهى',
                subtitle2: '0593333225',
              );
            }),
      ),
    );
  }
}
