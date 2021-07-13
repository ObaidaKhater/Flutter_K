import 'package:flutter/material.dart';
import 'package:flutter_k/components/custom_expanded.dart';

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
        Expanded(
          flex: 4,
          child: GestureDetector(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => WebGamePage()));
            },
            child: customSharedContainerWithText(
                context, 'بدء الرحلة المدرسية لليوم'),
          ),
        ),
        Expanded(
          flex: 4,
          child: GestureDetector(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => AppGamePage()));
            },
            child: customSharedContainerWithText(
                context, 'كشف الطلاب المكلف بتوصيلهم'),
          ),
        ),
        Expanded(
          flex: 4,
          child: GestureDetector(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => CartoonVideoPage()));
            },
            child:
                customSharedContainerWithText(context, 'اذونات الطلاب لليوم'),
          ),
        ),
      ],
    );
  }
}
