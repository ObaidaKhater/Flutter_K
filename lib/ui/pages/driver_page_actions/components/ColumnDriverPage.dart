import 'package:flutter/material.dart';
import 'package:flutter_k/components/custom_expanded.dart';
import 'package:flutter_k/ui/pages/driver_pages/students_assigned_to_deliver_page.dart';
import 'package:flutter_k/ui/pages/driver_pages/students_permissions_today_page.dart';

class CustomColumnDriverPage extends StatelessWidget {
  final BuildContext context;
  const CustomColumnDriverPage({
    Key key,
    this.context,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Expanded(
        //   flex: 4,
        //   child: GestureDetector(
        //     onTap: () {
        //       // Navigator.push(context,
        //       //     MaterialPageRoute(builder: (context) => WebGamePage()));
        //     },
        //     child: customSharedContainerWithText(
        //         context, 'بدء الرحلة المدرسية لليوم'),
        //   ),
        // ),
        Expanded(
          flex: 4,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StudentsAssignedToDeliver()));
            },
            child: customSharedContainerWithText(
                context, 'كشف الطلاب المكلف بتوصيلهم'),
          ),
        ),
        Expanded(
          flex: 4,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StudentsPermissionsToday()));
            },
            child:
                customSharedContainerWithText(context, 'اذونات الطلاب لليوم'),
          ),
        ),
      ],
    );
  }
}
